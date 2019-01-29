---
layout: page
menutitle: EDIT
permalink: /edit/
---


# The reviewing process

A submission takes the form of a
[Pull Request](https://help.github.com/articles/using-pull-requests/) which is
a mechanism in GitHub to request the integration of some code into a
repository. We use this mechanism as the primary source for the review because
it allows to precisely comment each source and to exchange with the author. If
you're unfamiliar with GitHub, do not hesitate to ask advices and informations
to the editor in charge of editing the submission. You can have a look at what
a full [submission](https://github.com/ReScience/ReScience-submission/pull/3)
looks like. Reviewers unfamiliar with git should have a look at
http://git-lectures.github.io

To review a submission, you'll first have to clone the author's repository onto
your desktop environment and each time an author update the manuscript or code
to get reviewer's comment into account, you'll have to update your local copy
using the `git pull` command.

## Reviewer guidelines

### Successful replications

Most articles in Re**Science** reports the successful replication of the
results (figures, tables, ...) of previously published research work.
A full replication covers all the results of the original work, whereas
a partial replication covers only a subset of the results.

The main criteria for acceptance are

 1. The actual replication of the research. The reviewer must evaluate
    the authors' claims about a successful replication, applying the
    standards of the field.

 2. Reproducibility of the replication. The reviewers must be able
    to run the proposed implementation on their computer, and obtain
    the same results as the authors with the limits of the state of
    of the art of the field.

 3. Clarity of the code and the instructions for running it.
    Uncommented or obfuscated code is as bad as no code at all.

 4. Clarity and completeness of the accompanying article, in which the
    authors should clearly state why they think they have replicated
    the paper (same figures, same graphics, same behavior, etc.) and
    explain any obstacles they have encountered during the replication
    work.

The primary goal of the review is not to decide whether to accept or
reject a submission, but to help the authors improve their work until
it meets the Re**Science** quality standards. Since Re**Science**
targets replication of already published research, there is no need to
judge the relevance or novelty of the work. Every replication that
meets the criteria listed above is welcome in Re**Science**.
Rejection remains of course a possiblity, in the case that the
authors are not able or willing to improve their submission as
deemed necessary by the reviewers.

When evaluating the criteria for acceptance, reviewers need to apply
the standards of their field of research. There are no absolute
criteria for two results/figures being equal, so both the success and
the reproducibility of the replication must be judged according to
the degree of equality that can be achieved given the state of the
art of the field. The clarity of the code and instructions must also
be judged in the light of the conventions of the field. As a general
goal, any competent researcher in the field should understand the
paper and be able to understand and run the code. The use of
software packages that are mainstream in the field is encouraged,
but not strictly required. The less well-known a software package
is, the more explanation authors should provide concerning its
capabilities and use.

### Failed replications

A replication attempt can lead to the finding that the results of the
original paper cannot be reproduced, suggesting a mistake or ommission
in the original work. The failure can concern some or all of the results.
Re**Science** accepts reports on replication failures, but requires a
particularly careful examination by the reviewers. The authors must describe
in detail why they believe that the original work is mistaken, and the
reviewers must be convinced by the reasoning offered by the authors.

Authors who are confronted with replication failure are strongly encouraged
to contact the authors of the original work and try to explore the causes
of the replication failure in collaboration with them. This is, however, not
a requirement for publication in Re**Science**.


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
  * Rebuild the PDF and check everything is OK
  * Merge the rescience branch into master
  * Push these changes onto the `rescience` remote repository
  * Make a [new release](https://help.github.com/articles/creating-releases/):
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
  * Make a PR to the [Web site repository](https://github.com/ReScience/rescience.github.io)
    in order to update the page [rescience.github.io/read](http://rescience.github.io/read/). 
    This requires creating a new post (directory `_posts`) based on this
    [model](https://raw.githubusercontent.com/rougier/rescience.github.io/master/_posts/2015-08-14-Topalidou-Rougier.md)
    because the page is composed from the posts of type `article`.
  * Make a PR to update [Rescience/Volume X - Issue Y.md](https://github.com/ReScience/ReScience)
  * Close the PR without merging
  * Inform the editors-in-chief about the new publication
  * If you're uncertain at any step of the procedure, ask
    the editors-in-chief for advice.
