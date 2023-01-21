---
title: "Deciding user session sample size"
date: 2023-01-20T09:21:46Z
hero: /images/hero-3.jpg
excerpt: "The more data the better, that is usually the tip for mobile app developers. Little consideration is taken in the amount of 
effort and/or the user acquisition cost to gather this data. "
timeToRead: 5
authors:
  - Daniel
draft: false
---

Deciding user session sample size for mobile indie apps.
==========================================================

The more data the better, that is usually the tip for mobile app developers. Little consideration is taken in the amount of 
effort and/or the user acquisition cost to gather this data. This luxury is especially costly for indie developers.
In this article, we will present an idea of how to estimate a lower bound on sample sizes when releasing new versions. 

There are several examples where knowing this would be beneficial for an indie developer. For example:
* How many days would I need to wait before I tell how many user sessions per day a new version has?
* Does it have an impact on proceeds or not?
* Has a feature been used more or less?
* When can I estimate the retention?

> “Most introductory statistics courses teach us what are called parametric statistical methods. 
> The reliability of a parametric statistical method depends on the validity of an underlying probability 
> distribution and a small set of its characteristics, which are referred to as parameters. However, if 
> the underlying probability distribution and parameter(s) that we suspect to be correct do not accurately 
> describe the population from which a sample is to be drawn, this will likely provide misleading information 
> into important characteristics of various sample estimates. Under these circumstances, confidence intervals 
> are not valid and hypotheses tests are not reliable.” - James J. Cochran - What is the bootstrap? [^1]

A rule of thumb for sample sizes is: Where 𝛿 is the minimum effect you wish to detect and is the sample variance you expect. [^2]

So how do you go about finding a lower bound for your sample sizes? Without the underlying probability distribution? 
Let’s try finding it out by a first principals approach.
To solve this we make one constraint or assumption: Between new versions, we assume you do not change any parameters that would 
alter the feature we want to analyze. Let a set of tuples (c, d) where c denotes version (arbitrary categorical variable like v2.1.0) 
and d denotes an observable quantity (for example number of sessions per user).

Given this assumption we can then do a simulation, increasing the user session data per version until the average of the data remains 
relatively stable. To determine the sample size needed, the developer must specify the desired margin of error. But given 
that we have the versions, we can set that the desired margin of error is just big enough to concern the difference between the versions, 
but still only requiring the smallest amount of user sessions for that purpose. Given that a randomly selected population between 
many versions variance should be higher than a randomly selected population within a version or the sample size is not big enough. 
We, therefore, seek to find the difference, D, of the mode of the variances in the versions, V, and the mode of variances between 
the versions, R. We then increase the sample size, S, until D with a 95% confidence interval is higher than zero.

[^1]: James J. Cochran - What is the bootstrap? https://www.significancemagazine.com/science/608-what-is-the-bootstrap
[^2]: Evan Miller - How Not To Run an A/B Test, https://www.evanmiller.org/how-not-to-run-an-ab-test.html
