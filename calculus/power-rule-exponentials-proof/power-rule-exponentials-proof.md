---
title: the derivative of $x^n$ is $nx^{n-1}$ (take three)
usemathjax: true
layout: post
---

Time and again we've proven that the derivative of $x^n$ is equal to $nx^{n-1}$:
$$\Large \left(x^n\right)' = nx^{n-1}$$
Well, we've proven it twice. But both times, our arguments have assumed that $n$ is a positive integer. Yet this theorem is, in fact, true for $n$ being *any real number*. Our previous proofs, tedious and complicated as they've been, haven't proven that fact. 

So let's get real. No more beating around the bush. No more absurd arguments using overcomplicated tools. No more giant sigmas and pi's and generalizations of simpler theorems, all just to prove a *weak* version of the power rule (we've only proved it for positive integers $n$!). Now we mean business. James Bond doesn't carry a blunderbuss. We're not re-enacting the Revolutionary War. It's time to get serious. Here's a proof that's simple, comprehensive, and deadly.

We've learned how to take derivatives of exponentials and logarithms:
$$\left(e^x\right)' = e^x \quad\text{and} \quad \left(\,\ln x \,\right)' = \frac{1}{x}$$
This is our secret weapon. Know the fun algebra trick of "doing something by doing nothing"? Like those steps in arguments where we "add zero" or "multiply by one," but in a special way that makes things look usefully different? There's a version of that we can do here with exponents and logs. An exponential and its logarithm are inverses, so if we take the logarithm of something exponentiated, it's as if we've done nothing, and vice versa:
$$e^{\ln(\text{blah})} = \text{blah} \quad \text{and} \quad \ln\left(e^{\text{blah}}\right) = \text{blah}$$
So here, we have:
$$x^n = e^{\ln\left( x^n \right) } \quad\text{and}\quad x^n = \ln\left(e^{\left(x^n\right)}\right)$$
So then if we try to take the derivative of $x^n$, we can just rewrite it as an exponential and use our exponential derivative wisdom:
\begin{align*}
\,\, {\Large \left(\,x^n\,\right)' } \,\, &= \left(\, e^{\ln\left(x^n\right)} \right)'
\end{align*}
Because we can pull exponents out in front of logs, this is:
\begin{align*}
&= \left(\, e^{n\cdot \ln\left(x\right)} \right)'
\end{align*}
Then if we take the derivative (and use the chain rule), we get:
\begin{align*}
&= \, e^{n\cdot \ln\left(x\right)}\cdot \big( n\cdot \ln\left(x\right)  \big)' \\
&= \, e^{n\cdot \ln\left(x\right)}\cdot n \cdot \big( \ln x  \big)' \\
&= \, e^{n\cdot \ln\left(x\right)}\cdot n \cdot \frac{1}{x}
\end{align*}
OK, this formula looks great, but it's definitely not $nx^{n-1}$... *yet.* Did we do something wrong? Hmm. Let's try REVERSING all this algebra. First, let's take $n\ln(x)$ and run that exponents-in-front-of-logs rule in reverse to turn it into $\ln\left(x^n\right)$:
\begin{align*}
&= \,e^{\ln\left(x^n\right)}\cdot n \cdot \frac{1}{x}
\end{align*}
And now we're back with $e^{\ln\left(x^n\right)}$, which is just a more complicated version of $x^n$, so let's rewrite it back to that:
\begin{align*}
&= \, x^n\cdot n \cdot \frac{1}{x} \\ \\
&= \, \frac{nx^n}{x}\\ \\
&=\,\, {\Large nx^{n-1}}
\end{align*}
In my Math 3 class, we tediously derive the cubic and quartic roots of $i$ in rectangular form---pages and pages of algebra, quadratic equations inside quadratic equations, Keystone Cops-style sign chasing---before realizing how much easier it is to understand complex numbers if we think about them in terms of their angle and radius. Calculating the cubic and quartic roots of $i$ in polar, then, takes just a couple lines. To my surprise, David Freifeld---this was years ago---remarked that he actually preferred the rectangular derivation. "I felt so much more *emotionally invested*." Perhaps that's our situation here.

## Problem 
\noindent We did this proof by rewriting $x^n$ in this absurd way, putting it inside a log inside an exponential:
$$x^n = e^{\ln\left( x^n \right)}$$
But we could have rewritten $x^n$ in the opposite way, putting it inside an exponential inside a log:
$$x^n = \ln\left(e^{\left(x^n\right)}\right)$$
If we start with that, can we still do this proof? How is it different? Similar? 