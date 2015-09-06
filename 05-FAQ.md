---
layout: page
title: FAQ
permalink: /faq/
---

# Frequently Asked Questions

If your question is not answered below, please
[create an issue](https://github.com/ReScience/ReScience/issues) on GitHub and
ask it there.

## Can I help ?

Yes ! You can:

 * Become a reviewer by contacting the [editor](../board) in your field
 * [Submit](../write) paper for the work you've already replicated
 * Spread the word about Re**Science** in your community
   ([twitter](http://twitter.com/ReScienceEds), mailing lists, blogs, etc.)
 * [Star the project](https://github.com/ReScience/ReScience) on github
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

## Are there any publication fees ?

No. Re**Science** promotes open access and relies on the volunteer work of
editors and reviewers. And the free hosting by github.


## Can I submit a paper using proprietary tools such as Matlab ?

No. If we aim at replicability, we have to make sure the proposed
implementation allows anyone to re-run and understand the code without any
barriers. Proprietary software constitutes such a barrier because of their
price and their closed nature.


## Can I submit the replication of my own research ?

No. Mistakes in the implementation of research questions and methods are often
due to biases authors invariably have, consciously or not. One's biases will
inevitably carry over to how one approaches a replication. Perhaps even more importantly,
we aim at the cross-fertilization of research and trying to replicate the work of one's
peers might pave the way for a future collaboration, or may give rise to new ideas as
a result of the replication effort.

Note that this restriction also applies to the work of your closest
collaborators (supervisor, students, lab members, etc.)


## If my submission is rejected, can I resubmit it ?

This depends on the reason your submission was rejected. If the
original research has already been replicated previously (in
Re**Science** or elsewhere), it is unlikely we'll consider another replication, even if you
think your implementation is better. However, if your submission has ben
rejected because reviewers cannot make it run, you are encouraged to re-submit
once the identified problems have been solved.


## What if I fail to replicate a research result ?

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

## I'm a student, can I submit ?

**Yes ! Students are strongly encouraged to submit their work**. Although the
Re**Science** publishing model is a bit different from other academic journals,
it can give students a first experience at peer-reviewed scholarly publishing, including
meeting standards of scientific rigor and addressing reviewers' comments. Publishing
in Re**Science** is also a way to actively contribute to open science while adding to one's
publication record.


## How do I know if my replication is successful ?

This depends mainly on the original paper introducing the research results to be
replicated. Results might be presented in a qualitative or quantitative way and you'll have to
clearly state why you think your implementation of a method or protocol is a faithful replication
of the original results.


## What kind of research can I replicate ?

Any computational research in any domain of science as long as there is an
editor from the [Board](../Board) who has the expertise to edit your submission. The editorial
board is growing to increase the scientific domains being covered. If no editor is
able to edit your submission, you can also propose a guest editor (who must
be willing to work with our GitHub-based editorial processes).


## Does ReScience issue DOIs (Digital Object Identifiers) ?

Re**Science** itself does not, but every article published in Re**Science** receives a DOI from, and is
indexed in [Zenodo](https://zenodo.org/about).


## What is the preferred format for the accompanying article ?

We use **exclusively** Markdown format, from which articles are converted to
HTML, PDF, and other formats using [pandoc](http://johnmacfarlane.net/pandoc/).

We realize that this may impose some limitations on formatting possibilities.
However, it is the tradeoff we chose to be able to offer a green open-access journal.
All editors and reviewers are volunteers, and we want to minimize their workload.
