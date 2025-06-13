---
title: When It's 64 solution notes!
usemathjax: true
layout: post
---


## The terrible way:
OK, here's the *terrible* way to attempt to find all the six sixth roots of $64$. We can assume the sixth roots of $64$ are some complex number $a+bi$ (much like we assumed that the cube root of $i$ was some complex number $a+bi$), and do the algebra. Without showing all the work---let alone the ending of this argument---we might have something like:
\begin{align*}
\sqrt[6]{64} &= a+bi\\
64 &= (a+bi)^6 \\ \\
\text{... much expansion later ...} \\ \\
64 &= a^6 + 6a^5bi + 15a^4b^2i^2 + 20a^3b^3i^3 + 15a^2b^4i^4 + 6ab^5i^5 + b^6i^6 \\ \\
\text{... dealing with the powers of $i$ ...} \\ \\
64 &= a^6 + 6a^5bi - 15a^4b^2 - 20a^3b^3i + 15a^2b^4 + 6ab^5i - b^6 \\ \\
\text{... collecting into components ...} \\ \\
64 +0i &= \left(a^6 - 15a^4b^2 + 15a^2b^4 - b^6\right) \,+\, \left(6a^5b - 20a^3b^3 + 6ab^5\right)i 
\end{align*}
so we get:
$$\overbrace{64 = a^6 - 15a^4b^2 + 15a^2b^4 - b^6 }^{\text{from the real parts}} \quad\text{and}\quad \overbrace{0 =6a^5b - 20a^3b^3 + 6ab^5 }^{\text{from the imaginary parts}} $$
HAHAHA NOT SOLVING THAT.


## The less-terrible way

Instead, let's write this as:
$$64 = x^6$$
Or:
$$x^6 - 64 = 0$$
Which is:
$$\left(x^3\right)^2 - 8^2 = 0$$
That's difference of squares!!! We know the fun difference-of-squares factoring foruma: 
$$\boxed{\text{difference of squares: } a^2-b^2 = (a-b)(a+b)}$$
We can apply it here! So this is:
$$\left(x^3 - 8\right)\left(x^3 + 8\right) = 0$$
Now we have a sum and difference of cubes, $a^3-b^3$:
$$\left(x^3 - 2^3\right)\left(x^3 + 2^3\right) = 0$$
There's a formula for that, too! You probably don't know it offhand (I certainly don't have it memorized), but it's good to know that there *is* such a formula and you could look it up if you like. There's a sum of cubes formula, too
$$\boxed{\text{difference of cubes: }\quad a^3-b^3 = (a-b)\left(a^2 + ab + b^2\right)}$$
Applying difference of cubes to the leftmost factor, we get:
$$\left(x^3 - 2^3\right){\color{lightgray} \left(x^3 + 2^3\right) }= 0$$
$$(x-2)\left(x^2 + 2x + 4\right) {\color{lightgray} \cdot \left(x^3 + 2^3\right) } = 0$$
Then, look, on the right, we have a *sum* of cubes! $a^3+b^3$!!! There's a formula for that, too:
$$\boxed{\text{sum of cubes: }\quad a^3+b^3 = (a+b)\left(a^2-ab+b^2\right)}$$
Applying sum of cubes to the rightmost factor, we get:
$$ {\color{lightgray}  (x-2)\left(x^2 + 2x + 4\right)\cdot } \left(x^3 + 2^3\right) = 0$$
$${\color{lightgray} (x-2)\left(x^2 + 2x + 4\right)} (x+2)\left(x^2 - 2x + 4\right) = 0$$
We still have these two gross quadratics! We can't factor them by hand, but we *can* factor them with the quadratic equation:
$${\color{lightgray}  (x-2)} \left(x^2 + 2x + 4\right) {\color{lightgray} (x+2)}\left(x^2 - 2x + 4\right) = 0$$
$${\color{lightgray}  (x-2)}\left( x - \frac{-2 \pm \sqrt{4 - 4\!\cdot\!1\!\cdot\!4}}{2} \right) {\color{lightgray}  (x+2) }\left(x - \frac{2 \pm \sqrt{4 - 4\!\cdot\!1\!\cdot\!4}}{2} \right) = 0$$
Simplifying, this is:
$$(x-2)\left( x - \left( 1 \pm i\sqrt{3} \right) \right) (x+2)\left(x -\left( -1 \pm i\sqrt{3} \right)   \right) = 0$$
And then if we blow up each plus-or-minus into two factors, we get:
$$\Big(x-{\color{red}2}\Big)\Big( x - {\color{red} ( 1 + i\sqrt{3} )} \Big)\Big( x - {\color{red} ( 1 - i\sqrt{3} )} \Big) \Big(x+{\color{red} 2} \Big)\Big(x -{\color{red} ( -1 + i\sqrt{3} )}   \Big) \Big(x -{\color{red} ( -1 - i\sqrt{3} )}   \Big) = 0$$
I'll show each root seperately under each corresponding factor:
$$\underbrace{\Big(x- 2\Big)}_{x=+2}\underbrace{\Big( x -  ( 1 + i\sqrt{3} ) \Big)}_{x=1+i\sqrt3}\underbrace{\Big( x - ( 1 - i\sqrt{3} ) \Big)}_{x=1-i\sqrt3} \underbrace{\Big(x+2\Big)}_{x=-2}\underbrace{\Big(x - ( -1 + i\sqrt{3} ) \Big)}_{x=-1+i\sqrt3}  \underbrace{\Big(x -( -1 - i\sqrt{3} ) \Big)}_{x=-1-i\sqrt3}   = 0$$
Yay! So we get:
\begin{align*}
\text{all six sixth roots of $64$ } = \sqrt[6]{64} &= \begin{cases} 2,\\
 1+i\sqrt3, \\ 
 1-i\sqrt3, \\ 
 -2,\\ 
 -1+i\sqrt3, \\
 -1-i\sqrt3
 \end{cases}
 \end{align*}

PICTURE
