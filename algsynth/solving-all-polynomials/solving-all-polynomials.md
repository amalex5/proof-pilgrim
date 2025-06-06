---
title: Finding the roots of all polynomials!
usemathjax: true
layout: post
---



## The Linear Formula


The line, aka the degree $1$ polynomial:
$$y =ax + b$$
has a single root at an $x$-coordinate of:
\begin{align*}
\text{root: } -\frac{b}{a}
\end{align*}

PIOCTURE


Usually we wouldn't even use all this fancy language! It's just a line! And we probably wouldn't even think to come up with a formula for the root---i.e., the $x$-intercept---because it's so easy to do the two steps of algebra to get it, for any specific line. But that's OK!

## The Quadratic Formula 

The parabola, a.k.a. the degree $2$ polynomial:
$$y= ax^2+bx+c$$
has two roots at the $x$-coordinates of:
\begin{align*}
\text{root \#1: }  \frac{-b+\sqrt{b^2-4ac}}{2a} \\ \\
\text{root \#2: } \frac{-b-\sqrt{b^2-4ac}}{2a}
\end{align*}



PICTURE


## The Cubic Formula

The cubic polynomial (a.k.a. the degree 3 polynomial):
$$y= ax^3 + bx^2 + cx + d$$
has three roots at the $x$-coordinates of:

\begin{align*}
\text{root \#1: }  
-\frac{b}{3 a}  &-\frac{1}{3 a} \sqrt[3]{\tfrac12\left[2 b^3-9 a b c+27 a^2 d+\sqrt{\left(2 b^3-9 a b c+27 a^2 d\right)^2-4 \left(b^2-3 a c\right)^3}\right]  \quad}\\
&-\frac{1}{3 a} \sqrt[3]{\tfrac12\left[2 b^3-9 a b c+27 a^2 d-\sqrt{\left(2 b^3-9 a b c+27 a^2 d\right)^2-4 \left(b^2-3 a c\right)^3}\right] \quad}  \\ \\
\text{root \#2: }  
-\frac{b}{3 a}  &+\frac{1+i \sqrt{3}}{6 a} \sqrt[3]{\tfrac12\left[2 b^3-9 a b c+27 a^2 d+\sqrt{\left(2 b^3-9 a b c+27 a^2 d\right)^2-4 \left(b^2-3 a c\right)^3}\right]\quad }  \\
&+\frac{1-i \sqrt{3}}{6 a} \sqrt[3]{\tfrac12\left[2 b^3-9 a b c+27 a^2 d-\sqrt{\left(2 b^3-9 a b c+27 a^2 d\right)^2-4 \left(b^2-3 a c\right)^3}\right]\quad}  \\ \\
\text{root \#3: } 
-\frac{b}{3 a}  &+\frac{1-i \sqrt{3}}{6 a} \sqrt[3]{\tfrac12\left[2 b^3-9 a b c+27 a^2 d+\sqrt{\left(2 b^3-9 a b c+27 a^2 d\right)^2-4 \left(b^2-3 a c\right)^3}\right]\quad }  \\
&+\frac{1+i \sqrt{3}}{6 a} \sqrt[3]{\tfrac12\left[2 b^3-9 a b c+27 a^2 d-\sqrt{\left(2 b^3-9 a b c+27 a^2 d\right)^2-4 \left(b^2-3 a c\right)^3}\right] \quad}  
\end{align*}


PICTURE


## The Quartic Formula

The quartic polynomial (a.k.a. the degree 4 polynomial):
$$y = ax^4 + bx^3 + cx^2 + dx + e$$
as four roots at $x$-coordinates... printed on a separate PDF, because as rendered by LaTeX, the formula is $72$ inches wide.


PICTURE



## The Quintic Formula

The quintic polynomial (a.k.a. the degree 5 polynomial):
$$y= ax^5+ bx^4 + cx^3 + dx^2 + ex + g$$
has five roots at the $x$-coordinates of... well... somewhere. But THERE IS NO FORMULA for the roots. Not as in "no one has figured out the formula yet because of how hard and complicated it is;" meaning, it's LITERALLY IMPOSSIBLE to come up with a formula. 

This was proved in the early 1800s by a French kid named Evariste Galois. The set of ideas he came up with are now called "Galois theory," and are some of my favorite ideas in math. He developed these ideas when he was just a teenager.

If you remember our geometric constructions unit in Math 1, we talked about how it's impossible to make a perfect $7$-gon using a compass and straight-edge. The reason you can't do that is basically the same as the reason you can't factor/solve a fifth-degree-or-higher polynomial: they're both because of Galois theory, and these very general ideas about symmetry. 