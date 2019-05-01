---
layout: page
menutitle: EDIT
permalink: /edit/
---


# The reviewing process

A submission takes the form of an issue. If you're unfamiliar with GitHub, do
not hesitate to ask advices and informations to the editor in charge of editing
the submission. Reviewers unfamiliar with git should have a look at
http://git-lectures.github.io. 

To review a submission, you'll first have to clone the author's repository onto
your desktop environment and each time an author update the manuscript or code
to get reviewer's comment into account, you'll have to update your local copy
using the `git pull` command.

## Reviewer guidelines

### Successful replications

Most articles in ReScience C report a successful replication of the
results (figures, tables, ...) of previously published research work.
A full replication covers all the results of the original work, whereas
a partial replication covers only a subset of the results.

The main criteria for acceptance of a successful replication are

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
it meets the ReScience C quality standards. Since ReScience C
targets replication of already published research, there is no need to
judge the relevance or novelty of the work. Every replication that
meets the criteria listed above is welcome in ReScience C.
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

A replication attempt can lead to the finding that the results of the original
paper cannot be reproduced, suggesting a critical mistake or ommission in the
original work that cannot be fixed. The failure can concern some or all of the
results.  ReScience C accepts reports on replication failures, but requires a
particularly careful examination by the reviewers. The authors must describe in
detail why they believe that the original work is mistaken, and the reviewers
must be convinced by the reasoning offered by the authors.

Authors who are confronted with replication failure are strongly encouraged
to contact the authors of the original work and try to explore the causes
of the replication failure in collaboration with them. This is, however, not
a requirement for publication in ReScience C.


# The editing process

The role of a scientific editor is to manage a submission from start to end,
i.e.  from the initial acknowledgment request by the editor-in-chief to the
final publication. As an editor, your goal is to help authors improve their
submission in order to meet the journal's quality standards and to ensure that
anyone can re-use the published code. Depending on the specific domain, an
editor might request the article to follow best practices of the domain.


## Editor guidelines

* When a new [submission](https://github.com/rescience-c/submissions/issues) is
  made (i.e. a new issue has been opened), you can assign yourself in order to
  be the editor or you can accept an invitation to edit the submission.
* Once you've accepted, you can either **reject** the submission and close the
  issue (you'll have to motivate such decision) or **accept** the
  submission. You'll then need to find and invite at least two reviewers (from
  within the same issue)
* Once you've found the two reviewers, you can open a
  [review](https://github.com/rescience-c/reviews/issues/new/choose) issue,
  fill-in information and invite both author(s) and reviewers to join the
  issue. 
* During the review, reviewers are free to interact with the authors to ask for
  clarification or change in any file that is part of the submission.
* The main criterion for acceptance is either:
  * Replication of the original research with a clear statement by the authors
    explaining why they think they have replicated the paper (same figures,
    same graphics, same behavior, etc.).
  * Non-replication of the original research with a clear statement by the
    authors explaining why they believe that it cannot be replicated .
  * Source code without any accompanying article is also a criterion for
    rejection since we're not human compilers (well not all of us at least).
* Don't forget to check that there is a license in the code repository. Authors
  can choose whatever open license they prefer (see [the Debian Free Software
  Guidelines](https://www.debian.org/social_contract#guidelines)) but they need
  to choose one.
* If both reviewers agree, the paper can be accepted.


# The publication process

The publication is now almost automatic but still requires some manual steps
that are given in the [README](https://github.com/rescience-c/articles) of the
articles repository.  

After publication, you can try to contact the editor and the authors of the
original article to tell them about the successful (or unsuccessful) replication
of their work.  

You can also tweet about the new paper, with CC to @ReScienceEds.  

Finally, you can close the issue.  

