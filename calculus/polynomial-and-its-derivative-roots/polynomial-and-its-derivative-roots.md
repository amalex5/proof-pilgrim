---
title:  polynomials, their derivatives, and their roots
usemathjax: true
layout: post
---


a polynomial and its derivative

the only roots a polynomial and its derivative have in common are repeated roots

if a root of a polynomial has multiplicity 1, then the derivative doesn't have a root there





This is especially fun for me because it relates to 1VC problems I've tried to write where both some function and its derivative have nice integer-valued (or otherwise nice) roots!!! But it's surprisingly tricky to do so, beyond having repeated roots (e.g., if we have a factor of $(x-\text{blah})^\text{even}$ in a function, then $\text{blah}$ will be a root not just of the original function but also of the derivative.

This isn't a particularly linear algebra problem; it's more of a calculus problem, but still! It's in Axler. I DID ask Claude if there was a more linalg-themed proof, but Claude basically did what I did, except used words like ``basis'' and ``span'' a few times.

First of all, let's think of this visually. VISUALLY, if we know what polynomials look like, this theorem is obvious. A polynomial with a bunch of linear factors looks like:

PIC

OK, this is a real-valued polynomial and Axler states this theorem as being over any complex-valued polynomial, but that doesn't make a difference... eh. ANYWAY, we can clearly obviously trivially see that the derivative of that polynomial is never zero at any of the roots. The only way it'd be zero at a root would be if the root were flattish, i.e., if the root were repeated, like if it were an even-powered root or an odd-greater-than-one-powered root:

PIC

So, visually, a polynomial's derivative can't have roots at the roots of the original polynomial's linear factors. Lots of ways we could phrase or state this theorem! The only way a polynomial can share roots with its derivative is if those roots are repeated! And so forth.

\vspace{5pc}

But how do we prove this *algebraically* and * symbolically*? It's going to involve the product rule! We need to think about a factored polynomial, and a factored polynomial is a bunch of stuff multiplied together... so time for the product rule!

The product rule, if we're thinking about two functions multiplied together, is:
$$(fg)' = f'g + fg'$$
I'm dropping the "of $x$" part there, to make it easier to read.

It's actually just TWO things multiplied together!!! It's actually just:
\begin{align*}
\Big(\, f(x)g(x)h(x) \,\Big) &= \Big(\, \underbrace{\big(\, f(x)g(x) \,\big)}_{\text{one thing}} \cdot\underbrace{h(x)}_{\mathclap{\text{another thing}}} \,\Big)
\end{align*}
So if we want to take the derivative of three things multiplied together, we just have to apply the product rule twice!
\begin{align*}
\Big(\, f(x)g(x)h(x) \,\Big)' &= \Big(\, \underbrace{\big(\, f(x)g(x) \,\big)}_{\text{one thing}} \cdot\underbrace{h(x)}_{\mathclap{\text{another thing}}} \,\Big)' \\ \\
&= \big(\, f(x)g(x) \,\big)' h(x) + \big(\, f(x)g(x) \,\big) h'(x)  \quad\quad\text{product rule!} \\ \\
&= \big(\, f'(x)g(x) + f(x)g'(x) \,\big)' h(x) + \big(\, f(x)g(x) \,\big) h'(x) \quad\quad\text{product rule again!} \\ \\
&= f'(x)g(x)h(x) + f(x)g'(x)h(x) + f(x)g(x) h'(x)  \quad\quad\text{algebra}
\end{align*}
Actually, you know what? All these "of $x$"'s are making this cluttered and harder to see. Let's drop the "$(x)$" part and redo this:


cluttered



 If we have *three* things multiplied together, then we can think of those three things as really being two things, and recursively apply the product rule twice:
\begin{align*}
    (fgh)' &= (fg)'h + fg(h)' \\
    &= (f'g + fg')h + fgh' \\
    &= f'gh + fg'h + fgh'
\end{align*}
If we have four things, we can do the same process:
\begin{align*}
    (fghk)' &= (fgh)'k + fgh(k)' \\
    &= (f'gh + fg'h + fgh')k +  fgh(k)' \\
    &= f'ghk + fg'hk + fgh'k + fghk' 
\end{align*}
Five:
\begin{align*}
    (fghkj)' &= (fghk)'j + fghk(j)' \\
    &= (f'ghk + fg'hk + fgh'k + fghk' )'j + fghk(j)' \\
    &= f'ghkj + fg'hkj + fgh'kj + fghk'j + fghkj'
\end{align*}
See what's happening? We get as many terms as we have factors, and in each term one of the factors gets differentiated (and the last one stays the same). It's like we take the derivative of this product, and it BLOOMS into a whole bunch of terms, like taking a deck of cards and splaying them out dramatically, or some other great metaphor/imagery, with the kaleidoscopic symmetry that each one of the blooms is identical to the original thing... EXCEPT that one of the factors gets differentiated! 

If you want to write this in a REALLY FORMAL and REALLY SCARY way, you could write it as:
$$\left( f_1f_2\cdots f_n \right)' = \sum_{m=1}^{m=n} \left( f_m'\prod_{\substack{k=1\\k\neq m}}^{k=n} f_k  \right)$$
Genuinely, this is not saying anything than what I just said above in English; it's just the same pattern as we can see emerging... just written in scary computer code. Or, hey, let's make it even scarier, by tossing in ANOTHER GODZILLA PI:
$$\left( \prod_{k=1}^{k=n} f_k \right)' = \sum_{m=1}^{m=n} \left( f_m' \prod_{\substack{k=1\\k\neq m}}^{k=n} f_k \right)$$
Scare your friends! Dress up as this for Halloween! Don't dress up as the standard basis vectors---dress up as the product rule!!

This is going to be helpful! Well, no, not these giant scary sigmas and pis... but a general knowledge and familiarity and facility with how the product rule works with arbitrary number of factors.

If we have the slightly special case in which each of the constituent factors is a linear factor like $(x-5)$, rather than an arbitrary function, things get slightly simpler, because the derivative of a linear factor is just $1$. So the formula (which, really, guys, doesn't matter; I'm just putting it in for fun; I really do think that this formula is more obfuscatory than revelatory) becomes:
\begin{align*}
    \left(\, \prod_{k=1}^{k=m} \left(x-r_k\right) \, \right)' &= \sum_{m=1}^{m=n} \left( \left(x-r_m\right)' \prod_{\substack{k=1\\k\neq m}}^{k=n} \left(x-r_k\right) \right) \\ \\
    &= \sum_{m=1}^{m=n} \left( 1\cdot  \prod_{\substack{k=1\\k\neq m}}^{k=n} \left(x-r_k\right) \right) \\ \\
    &= \sum_{m=1}^{m=n} \left( \prod_{\substack{k=1\\k\neq m}}^{k=n} \left(x-r_k\right) \right)
\end{align*}

\vspace{3pc}

Let's get into the actual proof. It has two directions. First one:

\vspace{2pc}

$$\boxed{\big(\text{$p$ has $m$ distinct zeros}\big)\implies \big(\text{$p$ and its derivative $p'$ have no zeros in common}\big)}$$


OK, so if $p$ has $m$ distinct zeroes, and is of degree $m$, that means we can write $p$ as the product of a bunch of linear factors (well, of exactly $m$ linear factors):
$$p(x) = \left(x-r_1\right)\left(x-r_2\right)\left(x-r_3\right)\cdots\left(x-r_m\right)$$
I guess I'm using "$x$" rather than $z$ here even though $p$ is in $\mathbb{C}$; it's fine; it doesn't make a difference. So anyway, we have $m$ roots, $r_1$, $r_2$, etc., through $r_m$. None of the roots are repeated (they're all multiplicity $1$); equivalently, they're all distinct (so $r_1\neq r_2$, or, to but it really formally, $i\neq j \implies r_i \neq r_j$.)

Let's take the derivative of $p$ and see where IT has roots! (Or rather, where it *doesn't* have roots, which is what we'll actually figure out.)

Differentiating $p$, we get:

\begin{align*}
p'(x) \quad&=\quad
\begin{matrix}
    {\color{red} \left(x-r_1\right)'}\left(x-r_2\right)\left(x-r_3\right)\cdots\left(x-r_m\right) \\
   + \\
   \left(x-r_1\right){\color{red} \left(x-r_2\right)'}\left(x-r_3\right)\cdots\left(x-r_m\right) \\
   + \\
      \left(x-r_1\right)\left(x-r_2\right){\color{red} \left(x-r_3\right)'}\cdots\left(x-r_m\right) \\
   + \\
\vdots \\
  +\\
  \left(x-r_1\right)\left(x-r_2\right)\left(x-r_3\right)\cdots{\color{red} \left(x-r_m\right)' }
\end{matrix}  \\ \\ \\ \\
&=\quad 
\begin{matrix}
   {\color{red} 1} \cdot \left(x-r_2\right)\left(x-r_3\right)\cdots\left(x-r_m\right) \\
   + \\
   \left(x-r_1\right)\cdot \phantom{\left(x-r_2\right)}\llap{\color{red}1} \cdot \left(x-r_3\right)\cdots\left(x-r_m\right) \\
   + \\
      \left(x-r_1\right)\left(x-r_2\right)\cdot \phantom{\left(x-r_3\right)}\mathclap{\color{red}1}\cdots\left(x-r_m\right) \\
   + \\
\vdots \\
  +\\
  \left(x-r_1\right)\left(x-r_2\right)\left(x-r_3\right)\cdots \phantom{\left(x-r_m\right)}\mathclap{\color{red}1} 
\end{matrix} \\ \\
&=\quad 
\begin{matrix}
    \left(x-r_2\right)\left(x-r_3\right)\cdots\left(x-r_m\right) \\
   + \\
   \left(x-r_1\right) \left(x-r_3\right)\cdots\left(x-r_m\right) \\
   + \\
      \left(x-r_1\right)\left(x-r_2\right)\cdots\left(x-r_m\right) \\
   + \\
\vdots \\
  +\\
  \left(x-r_1\right)\left(x-r_2\right)\left(x-r_3\right)\cdots
\end{matrix}
\end{align*}
It's like we start with a function with a bunch of factors---say $m$ factors---and we differentiate it and it turns into a sum of $m$ terms, where each of those $m$ terms looks exactly like the original function, EXCEPT it's missing one of the factors!!! (So the full derivative is $m$ terms, each of which has $m-1$ factors).
$$p'(x) \quad=\quad 
\left.
\begin{array}{c}
    \overbrace{\left(x-r_2\right)\left(x-r_3\right)\cdots\left(x-r_m\right)}^{m-1\text{ factors}} \\
   + \\
   \left(x-r_1\right) \left(x-r_3\right)\cdots\left(x-r_m\right) \\
   + \\
      \left(x-r_1\right)\left(x-r_2\right)\cdots\left(x-r_m\right) \\
   + \\
\vdots \\
  +\\
  \left(x-r_1\right)\left(x-r_2\right)\left(x-r_3\right)\cdots
\end{array}
\right\} \text{$m$ terms in total}
$$
Or, put differently:
$$p'\left(x\right)
\quad=\quad 
\begin{matrix}
   (\text{the original $p(x)$ function, but missing one of the factors}) \\
   + \\
  (\text{the original $p(x)$ function, but missing a different factor}) \\
   + \\
     (\text{the original $p(x)$ function, but missing yet another factor}) \\
   + \\
\vdots \\
  +\\
  (\text{the original $p(x)$ function, but missing the last factor}) 
\end{matrix}$$
Alternatively, since for simple linear factors like the ones we're dealing with, they're the same as the roots, we can describe the missing thing from each term as being one of the roots:
$$p'\left(x\right)
\quad=\quad 
\begin{matrix}
   (\text{the original $p(x)$ function, but missing the $r_1$ root}) \\
   + \\
  (\text{the original $p(x)$ function, but missing the $r_2$ root}) \\
   + \\
     (\text{the original $p(x)$ function, but missing the $r_3$ root}) \\
   + \\
\vdots \\
  +\\
  (\text{the original $p(x)$ function, but missing the $r_m$ root}) 
\end{matrix}$$
OK, so we have our derivative. What happens when we plug the original roots $r_1$, $r_2$, $r_3$, etc., in? We want to show/find out that we never get zero when we do so---that the $r_i$ aren't roots of the derivative.

Just for fun, let's try plugging in $r_1$ and seeing what happens. We'll get:
$$p'\left(r_1\right)
\quad=\quad 
\begin{matrix}
    \left(r_1-r_2\right)\left(r_1-r_3\right)\cdots\left(r_1-r_m\right) \\
   + \\
   {\color{blue} \left(r_1-r_1\right)} \left(r_1-r_3\right)\cdots\left(r_1-r_m\right) \\
   + \\
      {\color{blue} \left(r_1-r_1\right)}\left(r_1-r_2\right)\cdots\left(r_1-r_m\right) \\
   + \\
\vdots \\
  +\\
  {\color{blue} \left(r_1-r_1\right)}\left(r_1-r_2\right)\left(r_1-r_3\right)\cdots
\end{matrix}$$
It looks like a bunch of junk. And it kinda is! Except, in almost all the terms, we'll have an $\left(r_1-r_1\right)$ factor, which will just go to zero, and so will zero out that term:
\begin{align*}
\quad=\quad 
&\begin{matrix}
    \left(r_1-r_2\right)\left(r_1-r_3\right)\cdots\left(r_1-r_m\right) \\
   + \\
   {\color{blue} \cancel{\left(r_1-r_1\right)}} \left(r_1-r_3\right)\cdots\left(r_1-r_m\right) \\
   + \\
     {\color{blue} \cancel{\left(r_1-r_1\right)}}\left(r_1-r_2\right)\cdots\left(r_1-r_m\right) \\
   + \\
\vdots \\
  +\\
  {\color{blue} \cancel{\left(r_1-r_1\right)}}\left(r_1-r_2\right)\left(r_1-r_3\right)\cdots
\end{matrix} \\ \\ \\ \\
\quad=\quad 
&\begin{matrix}
    \left(r_1-r_2\right)\left(r_1-r_3\right)\cdots\left(r_1-r_m\right) \\
   + \\
   {\color{blue} 0}\cdot \left(r_1-r_3\right)\cdots\left(r_1-r_m\right) \\
   + \\
    {\color{blue} 0} \cdot \left(r_1-r_2\right)\cdots\left(r_1-r_m\right) \\
   + \\
\vdots \\
  +\\
  {\color{blue} 0} \cdot \left(r_1-r_2\right)\left(r_1-r_3\right)\cdots
\end{matrix} \\ \\ \\ \\
\quad=\quad 
&\begin{matrix}
    \left(r_1-r_2\right)\left(r_1-r_3\right)\cdots\left(r_1-r_m\right) \\
   + \\
   0 \\
   + \\
    0\\
   + \\
\vdots \\
  +\\
  0 
\end{matrix}
\\ \\ \\ \\
\quad=\quad 
& \left(r_1-r_2\right)\left(r_1-r_3\right)\cdots\left(r_1-r_m\right)
\end{align*}
There will be only one term that DOESN'T get zero'd out. It's the term in which the $\left(x-r_1\right)$ factor got differentiated down to $1$ and disappeared! In other words, we have: 
$$p'\left(r_1\right)
\quad=\quad 
\begin{matrix}
   (\text{the original $p(x)$ function, but missing the $r_1$ root, becomes NONzero}) \\
   + \\
  (\text{the original $p(x)$ function, but missing the $r_2$ root, becomes $0$}) \\
   + \\
     (\text{the original $p(x)$ function, but missing the $r_3$ root, becomes $0$}) \\
   + \\
\vdots \\
  +\\
  (\text{the original $p(x)$ function, but missing the $r_m$ root, becomes $0$}) 
\end{matrix}$$
So we're left with just:
$$p'\left(r_1\right) = \left(r_1-r_2\right)\left(r_1-r_3\right)\cdots\left(r_1-r_m\right) $$
Are we sure that remaining term isn't zero? Is there any way it could be zero??? Well, $r_1\neq r_2$, so the first factor can't be zero:
$$p'\left(r_1\right) = \underbrace{\left(r_1-r_2\right)}_{\neq 0}\left(r_1-r_3\right)\cdots\left(r_1-r_m\right) $$
And $r_2\neq r_3$, so the second factor can't be zero:
$$p'\left(r_1\right) = \underbrace{\left(r_1-r_2\right)}_{\neq 0}\underbrace{\left(r_1-r_3\right)}_{\neq 0}\cdots\left(r_1-r_m\right) $$
And so on and so forth, all the way through the last factor:
$$p'\left(r_1\right) = \underbrace{\left(r_1-r_2\right)}_{\neq 0}\underbrace{\left(r_1-r_3\right)}_{\neq 0}\cdots\underbrace{\left(r_1-r_m\right)}_{\neq 0}$$
All of the $r_i$ are distinct, which means that they're never equal, which means we can never subtract them and get zero! So whatever $p'\left(r_1\right)$ is, it's something that's not zero!!!
$$p'\left(r_1\right) = \text{(something that's not $0$)}$$
Or:
$$p'\left(r_1\right) \neq 0$$
So:
$$r_1\text{ isn't a root of }p'$$
\begin{align*}
    p'\left(r_1\right) =&\quad \text{(nonzero for the term where the $r_1$ root got differentiated away)} \\
    &+ \text{(zero for all the terms that still have a root at $r_1$)}
\end{align*}
And there's nothing special about $r_1$ here!!! We could have plugged in $r_2$, or $r_3$, or any of the $r_i$, and we'd also have gotten something that's nonzero!!!
\begin{align*}
    p'\left(r_i\right) =&\quad \text{(nonzero for the term where the $r_i$ root got differentiated away)} \\
    &+ \text{(zero for all the terms that still have a root at $r_i$)}
\end{align*}
So in other words:
$$p'\left(r_i\right) = \text{(something that's not $0$)}$$
So:
$$r_i\text{ isn't a root of }p'$$
So none of the $r_i$ are roots of $p'$. 


$$\boxed{\big(\text{$p$ has $m$ distinct zeros}\big) \impliedby \big(\text{$p$ and its derivative $p'$ have no zeros in common}\big)}$$




generalization


