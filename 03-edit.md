---
layout: page
menutitle: EDIT
permalink: /edit/
---


# The review process

A submission takes the form of a
[Pull Request](https://help.github.com/articles/using-pull-requests/) which is
a mechanism in GitHub to request the integration of a contribution into an existing
repository. We use this mechanism for our review process because it allows an open
exchange between reviewers and authors with precise references to the
submitted files. If you are unfamiliar with GitHub, do not hesitate to ask the editor
in charge of handling the submission for advice. It may also help to look at an
example of a full [submission](https://github.com/ReScience/ReScience-submission/pull/3)
with a completed review process.

When you start a review, the first step is to clone the author's repository
to your own computer so that you can inspect and run the code that is part
of the submission. Each time an author updates the manuscript or code in
reaction to a reviewer's comments, you'll then have to update your local copy
using the `git pull` command.


## Reviewer guidelines

The main criterion for acceptance is the actual replication of the research
with a clear statement by the authors explaining why they think they have
replicated the paper (same figures, same graphics, same behavior,
etc.). However, keep in mind that the clarity of the code is an important
criterion as well. Uncommented or obfuscated code is as bad as no code at all. A code
without an accompanying article is also a criterion for rejection since we're
not human compilers (well at least not all of us). The role of the reviewer is
thus to verify it the proposed submission is actually replicable. This means:

1. You should be able to run the proposed implementation on your computer.
2. You should obtain the same results as indicated in the accompanying paper.
3. These results must correspond to the original paper.

The goal of the review is to help the author to meet Re**Science** quality
standards. More specifically, since Re**Science** targets replication of
original research, there is no need to judge the relevance or novelty of the
research. The review should concentrate on how easy it would be for
another researcher to run the proposed implementation. This should be viewed in
light of the standards in the field. If a given tool/library/software is
mainstream in your field, it is ok to use them, but if a brand-new standalone
implementation is proposed, this is not a reason for rejection either.

Reviewers unfamiliar with git should have a look at http://git-lectures.github.io


# The editing process

The role of a scientific editor is to manage a submission from start to end, i.e.
from the initial acknowledgment request by the editor-in-chief to the final
[publication](../read) (with DOI). As an editor, your goal is to help authors improve their
submission in order to meet the journal's quality standards and to ensure that anyone
can re-use the published code. Depending on the specific domain, an editor might
request the article to follow best practices of the domain. For example,
in computational neuroscience, it may be desirable for models to be formally
described using the proposal of
[Nordlie et al, 2009](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000456). You
can have a look at what a full
[submission](https://github.com/ReScience/ReScience-submission/pull/3) looks
like.


## Editor guidelines

* When a pull request (PR) has been assigned to you, you have to acknowledge
   the PR (as a comment in the PR discussion). Depending on your decision, you
   can either **reject** and close the PR (and motivate such decision) or
   **accept** it and assign one or two reviewers (depending if you intend to
   review the PR yourself or not). You alert the reviewers in the PR
   acknowledgment (use the @ alert syntax). If you think you cannot handle the
   submission within a reasonable delay, you should re-assign the PR to another editor
   after having obtained his or her agreement.

* You have to edit the initial PR text to add some information:

  ```
  **EDITOR**

  * [ ] Editor acknowledgment
  * [ ] Review 1 started
  * [ ] Review 2 started
  * [ ] Review 1 decision [accept/reject]
  * [ ] Review 2 decision [accept/reject]
  * [ ] Editor decision [accept/reject]
  ```

   You'll need to ask reviewers to add their GitHub login after `review 1
   started` or `review 2 started`.  For example `review 1 started (@rougier)`

* During the review, reviewers are free to interact with the authors in the PR to ask for
  clarification or change in any file that is part of the submission.

* Don't forget to update PR labels according to the status of submission

* The main criterion for acceptance is the actual replication of the research
  with a clear statement by the authors explaining why they think they have
  replicated the paper (same figures, same graphics, same behavior,
  etc.). However, keep in mind that the clarity of the code is an important
  criterion. Uncommented or obfuscated code is as bad as no code at all. A code
  without the accompanying article is also a criterion for rejection since
  we're not human compilers (well not all of us at least).

* Don't forget to check that there is a license in the code repository. Authors can
  choose whatever open license they prefer (see
  [the Debian Free Software Guidelines](https://www.debian.org/social_contract#guidelines))
  but they need to choose one.

* If both reviewers agree, the paper can be accepted.


# The publication process

The publication is currently far from automatic and requires a number of steps
that are listed here:
  
  * Lock the conversation on the original PR
  * Ask the author(s) for keywords if they haven't provided them already.
  * **[Import](https://import.github.com/)** the authors' repository into the
    ReScience archives (https://github.com/ReScience-Archives) using the naming
    convention "Author(s)-YEAR"
  * Add a new remote (named `rescience`) in your local copy of the repository
    that points to the newly imported repository (the one on
    [ReScience-Archives](https://github.com/ReScience-Archives))
  * Update article metadata:
    - Editor name
    - Reviewer 1 name
    - Reviewer 2 name
    - Submission date
    - Publication date
    - Article repository
    - Code repository
    - Notebook repository (if necessary)
    - Data repository (if necessary)
    - Volume, issue and year
    - Article number (after reserving the number in the [dedicated GitHub
      issue](https://github.com/ReScience/ReScience/issues/48)).
  * If the article name is not `Author(s)-YEAR.md`, rename it
  * Rebuild the PDF and checks everything is ok
  * Merge the rescience branch into master
  * Push these changes onto the `rescience` remote repository
  * Make a new release throught the github interface
    - Release version number is 1.0
    - Release name is Author(s)-YEAR-1.0
   
  * Download the zip file and rename it to `Author(s)-YEAR-1.0.zip`
  * Upload this zip file to [Zenodo](https://zenodo.org/deposit/?c=rescience).
    You will have to fill several fields:
    - Name of the journal is ReScience
    - Under "Communities" add "ReScience journal" 
    - Under "Contributors" add yourself with role "Editor".
    - Don't forget keywords
  
  * Add the `04-Published` label to the PR
  * Announce publication in the PR (and quote the DOI, see
    [#3](https://github.com/ReScience/ReScience-submission/pull/3) for example)
  * Make a PR to update
    [rescience.github.io/read](http://rescience.github.io/read/).  
    This means creating a new post based on this [model](https://raw.githubusercontent.com/rougier/rescience.github.io/master/_posts/2015-08-14-Topalidou-Rougier.md)
  * Make a PR to update [Rescience/Volume X - Issue Y.md](https://github.com/ReScience/ReScience)
  * Close the PR without merging
  * Inform the editors-in-chief about the new publication
  * If you're uncertain at any step of the procedure, ask
    the editors-in-chiefs for advice.
