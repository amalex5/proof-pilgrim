---
title: some alternate proofs of basic derivative rules
usemathjax: true
layout: post
---


Probably our most basic derivative rule is the additive rule---the theorem that says that $\displaystyle \frac{d}{dx}\left[ f(x)+g(x)\right] = f'(x)+g'(x)$. Sensibly enough, we proved this by starting with Fermat's difference quotient. The FDQ is our fundamental definition of a derivative, and it's not too hard to plug $f(x)+g(x)$ into it, rearrange things a bit, and get $f'(x)+g'(x)$. But---as we discovered during one 11th grade class---we can prove it entirely differently. We can prove it using *only* our knowledge of the derivatives of logs and exponentials, and the chain rule. The idea is that $f(x)+g(x)$ is equal to $\ln\left(e^{f(x)+g(x)}\right)$, by basic properties of logs, so if I want to take the derivative of the former, I can just take the derivative of the latter:
\begin{align*}
\frac{d}{dx}\left[ f(x)+g(x)\right] &= \frac{d}{dx}\left[ \ln(e^{f(x)+g(x)})\right]
\end{align*}
But we can use properties of exponents to rewrite this as:
\begin{align*}
&= \frac{d}{dx}\left[ \ln\left(e^{f(x)}e^{g(x)}\right)\right]
\end{align*}
So we just do the derivative of a log:
\begin{align*}
&=  \frac{1}{e^{f(x)}e^{g(x)}}\cdot\frac{d}{dx}\left[ e^{f(x)}e^{g(x)}\right]
\end{align*}
And the chain rule "derivative of the inside" part we can evaluate using the product rule:
\begin{align*}
&=  \frac{1}{e^{f(x)}e^{g(x)}}\cdot\left( f'(x)e^{f(x)}e^{g(x)}+g'(x)e^{g(x)}e^{f(x)}\right)
\end{align*}
But then we can factor out the $f'(x)+g'(x)$:
\begin{align*}
&=   \frac{1}{e^{f(x)}e^{g(x)}}\cdot\left(f'(x)+g'(x)\right)\cdot\left( e^{f(x)}e^{g(x)}\right)
\end{align*}
And then everything else cancels:
\begin{align*}
&=  f'(x)+g'(x)\\
& \includegraphics[scale=.25]{andrewproof.png}
\end{align*}
Woah! So we've used a couple of derivative laws in here---we've used the laws about the derivative of an exponential, the derivative of a log, the chain rule, and the product rule. None of those rules are proved using the addditive rule, so our logic isn't circular. So from just two or three applications of the FDQ, we can get all these other things! We don't have to keep using the FDQ! Think of it as analagous to the two different ways in which we derived the derivative of $x^n$: we did it using the FDQ (which required that nasty binomial expansion), and we did it using logs and exponentials. Or compare to the two ways of proving the quotient rule: we proved it first using the FDQ, and then using a combination of the product rule and the chain rule. We can base all of our shortcuts on the FDQ, or we can try to base our shortcuts on other shortcuts based on shortcuts based on the FDQ.


## Problem

Without using Fermat's difference quotient, prove the product rule. Then prove the constant multiple rule. For some extra credit, write the proofs up nicely and turn them in before break.

Another fun thing to do would be to draw a "dependency chart" for our various theorems: can you visually represent which derivative rules are based on which other derivative rules (like a family tree, but a family in which Fermat's difference quotient is the ultimate patriarch and everyone else is related through incestuous logic that spans and skips generations)?
