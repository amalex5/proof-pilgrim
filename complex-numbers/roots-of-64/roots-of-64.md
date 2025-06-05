---
title: When It's 64
usemathjax: true
layout: post
---


**Can you find all the sixth roots of $64$?** Put differently, can you find all the solutions to $x^6=64$? It's pretty easy to find two of them (hint: *two* of them), but actually there are *six* roots in total. This is because of the **fundamental theorem of algebra**, which you've probably seen in some form or another, which says that an $n$th degree polynomial has exactly $n$ complex roots. No more, no less (though sometimes the roots can have multiplicities). Sometimes all of those roots are imaginary; sometimes they're all real; sometimes they're a mix. You're pretty familiar with this when it comes to quadratics, i.e., second-degree polynomials: they either have two real roots, one real root that happens twice, or two imaginary roots. Either way, they always have exactly two complex roots!

So: can you find *all* the roots of $64$? (Graph them, too, when you're done, using the axes on the back. Do you notice anything?) Here's my suggestion: if you do it the same way we found the roots of $i$, by setting the roots equal to $a+bi$, you'll be in for some unpleasantness:

\begin{align*}
\sqrt[6]{64} &=a+bi \\
64 & = (a+bi)^6 \\
&\text{eeeek}
\end{align*}

Instead, one of the nice things about this problem is that if we just take some generic complex number $x$, set it equal to the sixth roots, and rearrange:

\begin{align*}
\sqrt[6]{64} &= x \\
64 &= x^6 \\
 x^6-64 &= 0
\end{align*}

... then we get this nice equation which we can factor! We can factor it all the way out to get six factors (and thus six roots), but you may need to remind yourself of some fun factoring formulas!

Also---and this is important---**graph all these roots** once you're done! (Write up all your work reasonably nicely on this sheet and the reverse.) (This is a classic *Art of Problem Solving* problem that I stole!)