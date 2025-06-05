---
title: Hilariously Hideous Complex Fractions
usemathjax: true
layout: post
---


Our problem sets so far have included two hilariously hideous complex fractions (both problems I stole from *The Art of Problem Solving*):

$$\left(i-i^{-1}\right)^{-1}\quad\text{aka}\quad \frac{1}{\,\, i-\frac1i \,\,}$$

and

$$\frac{1}{\,\,1+\frac{1}{\,\,1-\frac{1}{1+i}\,\,}\,\,}$$

These, at least to me, have begotten the question: **what if we keep going?** What if we nest these sorts of fractions inside fractions inside fractions inside fractions, on and on, *ad infinitum*? I'm curious because sometimes when we do things an infinite number of times, we get just a finite number. Maybe you've seen the cool thing that happens when we add together $\frac12$, $\frac14$, $\frac18$, and all the successive powers of $2$: we get just $2$!

$$1 + \frac12 + \frac14 + \frac18 + \frac{1}{16} + \quad\cdots \quad = 2$$

Sometimes when we do things an infinite number of times, we get cool patterns, like if we raise $-1$ or $i$ to powers:

$$(-1)^n = +1, -1, +1, -1, +1, -1, \cdots$$

$$i^n = +1, +i, -1, -i, +1, +i, \cdots$$

So cool stuff can happen when we do things an infinite number of times. What about here? Like, for example, let's take this second complex fraction. There's an innermost "$1+i$", and outside of that, we're just alternatingly adding and subtracting it from $1$ and reciprocating. So what if we do that yet *another* time?

$$\frac{1} { 1 - {\color{blue} \frac{1}{\,\,1+\frac{1}{\,\,1-\frac{1}{1+i}\,\,}\,\,}}\,\,}$$

(I put the previous fraction in blue there.) What if we do that *again*?

$$\frac{1}{1 + {\color{red}\frac{1} {  1 - {\color{blue} \frac{1}{\,\,1+\frac{1}{\,\,1-\frac{1}{1+i}\,\,}\,\,}}\,\,}}\,\,}$$

Et cetera! What happens? What do we get? If we keep fractioning forever and ever, is there a pattern? Does this converge on a single number? (**Converge** is the fancy math word!) Is it just chaos? 

I genuinely don't know! I'm going to try to figure it out this weekend, too. I hope it's something cool (and that it's something that I can figure out!) But if it's not, that's OK, too... 

(If you want to try something else cool that's similar---like, e.g., see what happens with the first fraction problem if we keep nesting it in similar fractions---please feel free to! We're just asking questions and *playing* with the math...)



