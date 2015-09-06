---
layout: page
title: FAQ
permalink: /faq/
---

# Frequently Asked Questions

If your question is no answered below, please
[create an issue](https://github.com/ReScience/ReScience/issues) on GitHub and
ask it there.

## Can I help ?

Yes ! You can:

 * Become a reviewer by contacting the [editor](../board) in your field
 * [Submit](../write) paper for the work you've already replicated
 * Spread the word about Re**Science** in your community
   ([twitter](http://twitter.com/ReScienceEds), mailing lists, blogs, etc.)
 * Help improving this website by
   [forking it](https://github.com/ReScience/rescience.github.io/fork) and
   propose modifications (through PR)
 * [Opening an issue](https://github.com/ReScience/ReScience/issues) if you
   have any unanswered question.
 * [Website](https://github.com/ReScience/rescience.github.io) would certainly
   needs the help of a [Jekyll](http://jekyllrb.com) expert and the eye of a
   designer (but keep in mind we want to keep a simple & clean website where
   content is the primary focus)...

## Are there any publication fees ?

No. Re**Science** promotes open access and relies on the benevolent work of
editors and reviewers. And the free hosting by github.


## Can I submit a paper using proprietary tools such as Matlab ?

No. If we aim at replicability, we have to make sure the proposed
implementation allows anyone to re-run and understand the code without any
barriers. Proprietary software constitutes such a barrier because of their
price and their closed nature.


## Can I submit the replication of my own research ?

No, because if you made some errors in the first implementation of your
researches, there are some chances you'll made the same errors in a
replication. But more importantly, we aim at the cross-fertilization of
research and trying to replicate the work of your peers might pave the way for
a future collaboration or gives rise to new ideas once you fully understand the
research. Note that this restriction also applies to the work of your closest
collaborators (supervisor, students, lab members, etc.)


## If my submission is rejected, can I resubmit it ?

Yes and no. It depends on the reason your submission was rejected. If the
original research you've replicated has been already replicated (in
Re**Science** or elsewhere), it is unlikely we'll reconsider it, even if you
think your implementation is better. However, if your submission has ben
rejected because reviewers cannot make it run, you're encouraged to re-submit
later, once all the problems that have been identified have been solved.


## What if I do not manage to replicate a research result ?

From time to time, a given research may not be replicable at all. To declare a
research non-replicable, we need to take extra precaution. Reviewers will
carefully read your submission and will challenge everyone (including the
original authors) to try to spot errors in your implementation using the issue
tracking tools. If no errors have been found, your work will be accepted and
the original research will be declared non-replicable.


## What is the preferred implementation ?

We favor a Python implementation because this language offers a
[scientific stack](http://www.scipy.org) that can handle research in most
domains of sciences (see for example [Scipy 2015](http://scipy2015.scipy.org)
and [EuroScipy 2015](https://www.euroscipy.org/2015/) conferences) and is
easier to use.  Furthermore, using the Python language might allow us to use
the [IPython](http://ipython.org) notebook and the upcoming
[Jupyter](https://jupyter.org) environments. However, you're free to submit
implementations using other languages or tools if they are mainstream in your
domain of research.

## I'm a student, can I submit ?

**Yes ! Students are strongly encouraged to submit their work**. Even if the
Re**Science** publishing model is a bit different from other academic journals,
this will give them a first experience at peer-reviewed publishing where they
have to use a rigorous approach and address reviewers' comments. Furthermore,
such a contribution to open science can be a plus in their CV.


## How do I know if my implementation is successful ?

This depends mainly on the original paper introducing the research. Results
might be presented in a qualitative or quantitative way and you'll have to
adapt your implementation to clearly state why you think your implementation is
a faithful replication of the original paper.


## What kind of research can I replicate ?

Any computational research in any domain of science as long as there is an
editor from the [Board](../Board) that can edit your proposal. The editorial
board is slowly growing to address any proposals but if you think no editor is
able to edit your proposal, you can also propose an external editor (who must
have a GitHub account).


## Do ReScience has a DOI (Digital Object Identifier) ?

Each published article in Re**Science** get a DOI thanks to the
[Zenodo](https://zenodo.org/about) service.


## What is the preferred format for the accompanying article ?

We use **exclusively** the Markdown language because the article will later be
layouted using [pandoc](http://johnmacfarlane.net/pandoc/). We know this is a
constraint but this is the price to pay to offer a green-access journal.
Editors and reviewers are benevolent and we want to minimize their workload.
