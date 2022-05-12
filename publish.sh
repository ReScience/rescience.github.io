#! /bin/bash

TGT_BRANCH=master  # Branch containing the static website
SRC_BRANCH=sources # Branch containing source files for the website
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
BUILD_DIR=$(mktemp -d)


# Switch to sources branch
echo -n "Switching to source branch ($SRC_BRANCH)... "
if ! git checkout -q $SRC_BRANCH; then
    echo "failed"
    exit 0
fi
echo "success"


# Check if there are any pending changes
echo -n "Checking repository status... "
if [ -n "$(git status --untracked-files=no --porcelain)" ]; then
    echo "dirty"
    echo " → Please commit pending changes before publishing."
    exit 0
fi
echo "clean"


# Repository is clean we can proceed
COMMIT_DATE=$(git log --pretty=format:'%cd' -n 1)
COMMIT_HASH=$(git log --pretty=format:'%h' -n 1)
echo "Commit to be published: $COMMIT_HASH ($COMMIT_DATE)"


# Website building
echo "Building static website" 
bundle exec jekyll build -d $BUILD_DIR
if ! [ -d "$BUILD_DIR" ]; then
    echo "Building has failed, aborting."
    exit 0
fi
echo ""

# Switch to target branch
echo -n "Switching to target branch ($TGT_BRANCH)... "
if ! git checkout -q $TGT_BRANCH; then
    echo "failed"
    exit 0
fi
echo "success"


# Publishing
echo -n "Publishing... "
ls | xargs rm -r 
mv $BUILD_DIR/* .
git add . 
git commit -q -m "Publishing from sources branch, commit $COMMIT_HASH ($COMMIT_DATE)"
if git push -q origin master; then
    echo "success"
else
    echo "failed"
fi
echo ""

# Cleanup
git checkout -q $CURRENT_BRANCH
rm -rf $BUILD_DIR
