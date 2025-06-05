---
title: Multiplication by $i$ as Rotation
usemathjax: true
layout: post
---

In class, we did a bunch of problems, and realized something totally amazing and totally crazy: multiplying numbers by $i$ rotates them!!! Normally we think of algebra and geometry as being separate countries---maybe they interact through various treaties and at UN conferences---but now, we're seeing *numbers that are geometrical*. 

What we found---and let's make this totally clear---was:

<div class='callout-box' style='width:75%'>
**Multiplying a number by $i$ rotates it $90^\circ$ a.k.a $\frac{\pi}{2}$** <br>

*(around the origin, counterclockwise, in the complex plane)*
</div>

Or, more generally:

<div class='callout-box' style='width:75%'>
**Multiplying a number by $i^n$ rotates it by $(90n)^\circ$ a.k.a $\frac{n\pi}{2}$** <br>

*(around the origin, counterclockwise, in the complex plane)*
</div>

We still have some questions. For instance, what if we multiply a number by a complex number that's not just a power of $i$ (like $2i$ or $3+i$)? How does that affect the rotation? And what if we want to rotate a complex number around a point that's not the origin? We'll deal with one of those right now. (The rest, eventually!)

What if we want to rotate a point around another point that's *not* the origin? (At least, not necessarily the origin.) I wanted to write some more problems for you to help you figure out how to do this, or at least include some pictures in these notes; lacking that, let me at least sketch out the idea.

Suppose we want to rotate the point $z$ around the point $w$ by $90^\circ$. $z$ and $w$ could be complex, imaginary, real, whatever. We can start this by shifting everything so that $w$ is the "new origin":

$$z-w$$

Then we rotate *that*, using the same method of multiplying by $i$:

$$(z-w)\cdot i$$

Now it's rotated, but it's in the wrong place, so we can move it back by shifting everything by $+w$:

$$(z-w)\cdot i + w$$

Ta-da! 

So, for example, suppose we want to rotate the point $7$ around the point $3$ by $90^\circ$. If you draw a picture, you can figure out that we should end up with $3+4i$. Does this formula work? We have:

\begin{align*}
&\left((7+0i)-(3+0i)\right)i + (3+0i) \\
=&\,4i + 3 \\
=&\,3+4i
\end{align*}

<div class='callout-box' style='width:75%'>
To rotate $z$ around $w$ by $(90n)^\circ$ a.k.a $\frac{n\pi}{2}$: <br>
subtract $w$, then rotate, than add $w$ back, i.e.:<br>
$$(z-w)\cdot i^n + w$$
</div>


## Problems


For each of the following points, rotate it by the given amount around the given point (counterclockwise, unless otherwise indicated), showing the result both algebraically (simplify it as much as you can) and visually. Graph the new point, the original point, and the center of rotation, and maybe draw in a nice little circle-of-rotation, too, visualizing what it would look like if you rotated that point all $2\pi$ around its center of rotation, and didn't destroy the evidence.)

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems'>
<li> $4$, by $90^\circ$, around the origin
<li> $-4$, by $90^\circ$, around the origin
<li> $8$, by $90^\circ$, around the origin
<li> $302$, by $90^\circ$, around the origin
<li> $-27$, by $180^\circ$, around the origin
<li> $45$, by $180^\circ$, around the origin
<li> $2$, by $180^\circ$, around the origin
<li> $i$, by $180^\circ$, around the origin
<li> $-i$, by $180^\circ$, around the origin
<li> $3+2i$, by $180^\circ$, around the origin
<li> $7$, by $\pi/2$ radians, around the origin
<li> $7$, by $\pi/2$ radians, around $3$
<li> $7$, by $\pi/2$ radians, around $-3$
<li> $-8-4i$, by $7\pi/3$ radians, around $7$
<li> $7i$, by $0^\circ$, around the origin
<li> $12$, by $-270^\circ$, around $12$
<li> $3i$, by $\pi/6$ radians, around $-5$
<li> $-3+7i$, by $2\pi/3$ radians, around $i$
<li> $2+3i$, by $2\pi/3$ radians, around $-6i$
<li> $-2i$, by $13\pi/6$ radians, around $3$
<li> $12$, by $270^\circ$, around $-6+2i$
<li> $-7$, by $90^\circ$, around $3$
<li> $-7$, by $\pi/4$ radians, around $7$
<li> $7$, by $\pi/3$ radians, around the origin
<li> $7i$, by $\pi/3$ radians, around the origin
<li> $-6i$, by $0^\circ$, around $-4$
<li> $-8-4i$, by $7\pi/6$ radians, around $2+3i$
<li> $3$, by $0^\circ$, around $2+3i$
<li> $7i$, by $-270^\circ$, around $-8-4i$
<li> $-2i$, by $0^\circ$, around $-6+2i$
<li> $-6+2i$, by $8\pi/3$ radians, around the origin
<li> $3$, by $-4\pi$ radians, around $3+2i$
<li> $-5$, by $0^\circ$, around $-4$
<li> $-8-4i$, by $-90^\circ$, around $-6i$
<li> $3+2i$, by $13\pi/6$ radians, around $i$
<li> $9-4i$, by $-5\pi/6$ radians, around $-5$
<li> $-6i$, by $-90^\circ$, around $-8-4i$
<li> $-6+2i$, by $180^\circ$, around $-4$
<li> $9+4i$, by $2\pi$ radians, around $5-7i$
<li> $7i$, by $7\pi/6$ radians, around the origin
<li> $-8-4i$, by $-5\pi/4$ radians, around $3$
<li> $-5$, by $-9\pi/4$ radians, around $3+2i$
<li> $9-4i$, by $5\pi/4$ radians, around the origin
<li> $3i$, by $-13\pi/6$ radians, around $-4$
<li> $9-4i$, by $0^\circ$, around the origin
<li> $-2i$, by $7\pi/6$ radians, around $-6i$
<li> $-5$, by $5\pi/4$ radians, around the origin
<li> $-3+7i$, by $0^\circ$, around $5+7i$
<li> $7i$, by $-7\pi/4$ radians, around $12$
<li> $3i$, by $0^\circ$, around $9-4i$
<li> $i$, by $0^\circ$, around $12$
<li> $-7$, by $7\pi/6$ radians, around $7$
<li> $-5$, by $\pi/3$ radians, around the origin
</ol>
</div>

