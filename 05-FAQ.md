---
layout: page
menutitle: FAQ
permalink: /faq/
---

# Frequently Asked Questions

If your question is not answered below, please
[create an issue](https://github.com/ReScience/ReScience/issues) on GitHub and
ask it there.

## Can I help?

Yes ! You can:

 * Become a reviewer by [filling your information](https://github.com/ReScience/ReScience/issues/27) and [watch](https://github.com/ReScience/ReScience-submission/subscription) for new submission
 * [Submit](../write) paper for the work you've already replicated
 * Spread the word about Re**Science** in your community
   ([twitter](http://twitter.com/ReScienceEds), mailing lists, blogs, etc.)
 * [Star the project](https://github.com/ReScience/ReScience) on GitHub
 * Help improving this website by
   [forking it](https://github.com/ReScience/rescience.github.io/fork) and
   propose modifications (through PR)
 * [Opening an issue](https://github.com/ReScience/ReScience/issues) if you
   have any unanswered question.
 * The [Website](https://github.com/ReScience/rescience.github.io) could certainly
   use the help of a [Jekyll](http://jekyllrb.com) expert and the eye of a
   designer (but keep in mind we want to keep a simple & clean website where
   content is the primary focus)...
 * Print stickers from the
   [Re**Science** material repository](https://github.com/ReScience/ReScience-material)
   (and possibly send some to us...)


## What's the difference between replication and reproduction?

There is no concensus yet on what exactly these two terms mean, so
here is how we understand and use them.

Reproduction of a computational study means running the same
computation on the same input data, and then checking if the results
are the same, or at least "close enough" when it comes to numerical
approximations. Reproduction can be considered as software testing at
the level of a complete study.

Replication of a scientific study (computational or other) means
repeating a published protocol, respecting its spirit and intentions
but varying the technical details. For computational work, this would
mean using different software, running a simulation from different
initial conditions, etc. The idea is to change something that everyone
believes shouldn't matter, and see if the scientific conclusions are
affected or not.

Reproduction verifies that a computation was recorded with enough
detail that it can be analyzed later or by someone else. Replication
explores which details matter for reaching a specific scientific
conclusion. A replication attempt is most useful if reproducibility
has already been verified. Otherwise, if replication fails, leads to
different conclusions, you cannot trace back the differences in the
results to the underlying code and data.

In the ideal world, the reproducibility of computational studies would
be checked automatically before publication. In the real world, most
published studies do not even claim to be reproducible, because the code
or the input data are not made public. Given this situation,
a Re**Science** publication provides two important services: by replicating
the original work, it provides an independent implementation of the
original computational protocol, and by making this new implementation
public, it is reproducible and thus a safer basis for future research
to build on.


## Are there any publication fees?

No. Re**Science** promotes open access and relies on the volunteer work of
editors and reviewers. And the free hosting by GitHub.


## Can I submit a paper using proprietary tools such as Matlab?

No. If we aim at replicability, we have to make sure the proposed
implementation allows anyone to re-run and understand the code without any
barriers. Proprietary software constitutes such a barrier because of their
price and their closed nature.
An implementation specifically targeting a free alternative such as
[Octave](https://www.gnu.org/software/octave/) will be accepted though.


## Is it mandatory to have an open-source license on the code?

Yes. The code accompanying Re**Science** articles will be archived at
[Zenodo](https://zenodo.org/) along with the article and data, entirely under open
licenses. This is part of the open access principle underlying Re**Science**. For the
choice of a license for the code, we refer to the [the Debian Free Software
Guidelines](https://www.debian.org/social_contract#guidelines).


## Can I submit the replication of my own research?

No. Mistakes in the implementation of research questions and methods are often
due to biases authors invariably have, consciously or not. One's biases will
inevitably carry over to how one approaches a replication. Perhaps even more importantly,
we aim at the cross-fertilization of research and trying to replicate the work of one's
peers might pave the way for a future collaboration, or may give rise to new ideas as
a result of the replication effort.


## Can I suggest a replication?

Yes. If you want to suggest an article for a replication, just
[open a new issue](https://github.com/ReScience/call-for-replication/issues/new)
in the [call for replication repository](https://github.com/ReScience/call-for-replication) and give the reference of the original
article and possibly the reason you would like to see this article replicated
(please refrain from suggesting your own work). Note that you're also
encouraged to register as a reviewer such that you can review the replication
you've been proposing if someone actually takes up the challenge.

If you're looking for some challenge, you can also look at the
[current list of suggestions](https://github.com/ReScience/call-for-replication/issues).


## If my submission is rejected, can I resubmit it?

This depends on the reason your submission was rejected. If the
original research has already been replicated previously (in
Re**Science** or elsewhere), it is unlikely we'll consider another replication, even if you
think your implementation is better. However, if your submission has ben
rejected because reviewers cannot make it run, you are encouraged to re-submit
once the identified problems have been solved.


## What if I fail to replicate a research result?

Some research may not be replicable. Before declaring a
research result non-replicable, we require extra caution to be taken. In addition
to scrutiny of your submission by reviewers and editors, we will contact the
authors of the original research, and issue a challenge to the Re**Science**
community to spot and report (using the issue tracker) errors in your implementation.
If no errors are found, your work will be accepted and
the original research will be declared non-replicable.


## Is there a preferred implementation language?

We favor a Python implementation because this language offers a
[scientific programming stack](http://www.scipy.org) that can handle research in many
domains of science (see for example the [Scipy 2015](http://scipy2015.scipy.org)
and [EuroScipy 2015](https://www.euroscipy.org/2015/) conferences). Python is
also often reported by scientists to easier to learn and use than other languages.
Furthermore, using Python might allow us to use
the [IPython](http://ipython.org) notebook and the upcoming
[Jupyter](https://jupyter.org) environments.

However, other languages or tools are acceptable if they are mainstream in the
respective domain of research.

## I'm a student, can I submit?

**Yes ! Students are strongly encouraged to submit their work**. Although the
Re**Science** publishing model is a bit different from other academic journals,
it can give students a first experience at peer-reviewed scholarly publishing, including
meeting standards of scientific rigor and addressing reviewers' comments. Publishing
in Re**Science** is also a way to actively contribute to open science while adding to one's
publication record.


## How do I know if my replication is successful?

This depends mainly on the original paper introducing the research results to be
replicated. Results might be presented in a qualitative or quantitative way and you'll have to
clearly state why you think your implementation of a method or protocol is a faithful replication
of the original results.


## What kind of research can I replicate?

Any computational research in any domain of science as long as there is an
editor from the [Board](../board) who has the expertise to edit your submission. The editorial
board is growing to increase the scientific domains being covered. If no editor is
able to edit your submission, you can also propose a guest editor (who must
be willing to work with our GitHub-based editorial processes).


## Does ReScience issue DOIs (Digital Object Identifiers)?

Re**Science** itself does not, but every article published in Re**Science** receives a DOI from, and is
indexed in [Zenodo](https://zenodo.org/collection/user-rescience).


## What is the preferred format for the accompanying article?

We use **exclusively** Markdown format, from which articles are converted to
HTML, PDF, and other formats using [pandoc](http://johnmacfarlane.net/pandoc/).

We realize that this may impose some limitations on formatting possibilities.
However, it is the tradeoff we chose to be able to offer a green open-access journal.
All editors and reviewers are volunteers, and we want to minimize their workload.
