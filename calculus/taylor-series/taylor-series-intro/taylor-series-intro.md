---
title: "Everything Is Polynomic: Adventures With Taylor Series"
usemathjax: true
layout: post
---


> *We shall not cease from exploration,* <br>
> *And the end of all our exploring,* <br>
> *Will be to arrive where we started* <br>
> *And know the place for the first time.* <br>
> <span style='text-align:right;'>---T.S. Eliot, *Little Gidding*</span>

<div style='height:5em'></div>


The English philosopher/mathematician Alfred North Whitehead^[He's really cool. 1861--1947.] once remarked that "all of Western philosophy is a series of footnotes to Plato."^[I hate using quotes without citation, but I don't actually know what this is from. It might well be apocryphal.] My feelings about Taylor series are similar, but the chronology is reversed. In a sense, all of the math we've done up until now---all of the complicated proofs and convoluted arguments---we could have done much more simply, and much more cleanly, using Taylor series.  If you glance at the problems in the back, you should get an idea of their wide-ranging versatility and utility. If the world is made only of polynomials, it really is a much simpler place.




growing polynomials
approximating functions
generalizing ideas of straightness
safety



The core assertion/paradox/weirdness/etc. behind calculus is:

$$\begin{array}{l}
\text{if we zoom in {\color{blue}infinitely far}, everything becomes {\color{blue}straight}}
\end{array}$$
Or, put differently:
$$\begin{array}{l}
\text{if we zoom in {\color{blue}far enough}, everything becomes {\color{blue}straight}}
\end{array}$$
Or:
$$\begin{array}{l}
\text{if we zoom in {\color{blue}far enough}, everything becomes {\color{blue}a first-degree polynomial}}
\end{array}$$
In a sense, Taylor's theorem generalizes this paradox/assertion/conclusion/observation. It generalizes it from just about lines to about arbitrary-degree polynomials. Taylor's theorem says:
$$\begin{array}{l}
\text{\small if we zoom in far enough, everything becomes a zeroth-degree polynomial} \\
\text{\small if we zoom in far enough, everything becomes a first-degree polynomial} \\
\text{\small if we zoom in far enough, everything becomes a quadratic polynomial} \\
\text{\small if we zoom in far enough, everything becomes a cubic polynomial} \\
\text{\small if we zoom in far enough, everything becomes a quartic polynomial} \\
\text{\small if we zoom in far enough, everything becomes a fifth-degree polynomial} \\
\text{\small if we zoom in far enough, everything becomes a sixth-degree polynomial} \\
\hfill \vdots \hfill
\end{array}$$
Or, put more simply:
$$
\left.
\begin{array}{r}
\text{\small if we zoom in far enough, everything becomes a zeroth-degree polynomial} \\
\text{\small if we zoom in far enough, everything becomes a first-degree polynomial} \\
\text{\small if we zoom in far enough, everything becomes a quadratic polynomial} \\
\text{\small if we zoom in far enough, everything becomes a cubic polynomial} \\
\text{\small if we zoom in far enough, everything becomes a quartic polynomial} \\
\text{\small if we zoom in far enough, everything becomes a fifth-degree polynomial} \\
\text{\small if we zoom in far enough, everything becomes a sixth-degree polynomial} \\
\hfill \vdots \hfill
\end{array}
\right\} \substack{\text{\large  if we zoom in far enough,}\\\text{\large  everything becomes an}\\\text{\large $n$th-degree polynomial}\\\text{\large  for any/all $n$}}
$$
I.e., just:
$$\begin{array}{l}
\text{if we zoom in {\color{blue}far enough}, everything becomes {\color{blue}an $n$th-degree polynomial}} \\
\hfill \text{(for any/all $n$)} \hfill
\end{array}$$





I've built up lots of anticipation for Taylor series---too much, I worry, since I don't want to make it seem anticlimactic---but we're finally here. Let's go.

<div style='height:5em'></div>



We can turn ANY FUNCTION into an INFINITELY-LONG POLYNOMIAL, by using this formula:
\begin{align*}
\text{a polynomialized function} =& \text{   (the value of the function, when $x=0$)}\\ \\
&+(\text{the slope of the function, at $x=0$})\cdot x \\ \\
&+\left(\frac{\text{the slope of the slope of the function, at $x=0$}}{2}\right)\cdot x^2  \\ \\
&+\left(\frac{\text{the slope of the slope of the slope of the function, at $x=0$}}{6}\right)\cdot x^3 \\ \\
&+\left(\frac{\substack{\text{the slope of the slope of}\\\text{the slope of the function}}\text{ at $x=0$}}{24}\right)\cdot x^4 \\ \\
&\quad\vdots \\ \\
&+\left(\frac{\overbrace{\text{the slope of the slope of the slope of }\cdots}^{n\text{ times}} \text{ the function}\text{, at }x=0}{n!}\right)\cdot x^n \\ \\
&\quad\vdots \\ \\
&\quad\text{ON AND ON INFINITELY!}
\end{align*}

If you want to write this with fancy big-sigma $\Sigma$ sum notation, you can write it all as:

$$\sum_{n=0}^{n=\infty}\frac{\overbrace{\text{the slope of the slope of the slope of }\cdots}^{n\text{ times}} \text{ the function}\text{, at }x=0}{n!}\,\cdot\, x^n$$

In this formula $x=a$ is some $x$-value of the function. It's kind of like we're *growing* the polynomial around that point---the more and more terms we add, the more and more this longer and longer polynomial looks like the function. 

So, in class, we saw that if we want to write sine as polynomial, we can write it like:
$$\sin x = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \frac{x^9}{9!} -\cdots$$
And we saw that the more and more terms we added on, it was like we were *growing* the polynomial! We were growing it outward from the origin!

If we wanted to grow it outwards from somewhere else, we could just shift it left or right. So, for example, if you wanted to turn sine into a polynomial, but grow it outwards from, say, $3\pi$, you could write:
$$\sin x = (x-3\pi) - \frac{(x-3\pi)^3}{3!} + \frac{(x-3\pi)^5}{5!} - \frac{(x-3\pi)^7}{7!} + \frac{(x-3\pi)^9}{9!} -\cdots$$

The big formula---**Taylor's Formula** or **Taylor's Theorem** if you want to look it up---for polynomializing a function by growing it outwards from $x=a$ would then look like:

$$\sum_{n=0}^{n=\infty}\frac{\overbrace{\text{the slope of the slope of the slope of }\cdots}^{n\text{ times}} \text{ the function}\text{, at }x=a}{n!}\,\cdot\, (x-a)^n$$



By the way, it's not strictly true that we can turn *any* function into a polynomial; there are some caveats. But that's the big idea! *Everything is a polynomial*.



Given some function $f(x)$ (of which we can take derivatives and such), and some $x$-value of the function $a$, then we can write $f(x)$ as a (possibly-infinitely-long) polynomial in this way:
$$f(x) = f(a) + f'(a)(x-a) + \frac{f''(a)}{2!}(x-a)^2 + \frac{f'''(a)}{3!}(x-a)^3 + \frac{f''''(a)}{4!}(x-a)^4 + \cdots$$
or, written in $\Sigma$-form:
$$f(x) = \sum_{k=0}^{\infty}\frac{f^{(k)}(a)}{k!}(x-a)^k$$
This is called the **Taylor series** or **Taylor expansion** of $f(x)$. Sometimes it is also called the Taylor series/expansion **around $a$** or **in terms of $x-a$**. Taylor series where $a=0$ (which is a common choice for $a$, since it tends to make the algebra easier) are often called **Maclaurin series**. If we approximate a function using a Taylor series of finite length---i.e., if we have a function that should be an infinitely-long polynomial, but we approximate it with a finitely-long one---we call that the **Taylor approximation** of $f(x)$, or the **Taylor polynomial of order $n$**, where $n$ is the number of terms in the Taylor series we've written out. 

(Note that in these notes, when I write something like $f^{(2)}(x)$ (or $f^{(n)}(x)$), I mean the second (or $n$th) derivative of $f(x)$.)

Let's use this to try writing $\sin x$ as a polynomial. For $a$, let's choose $a=0$. (The choice of $a$ doesn't matter; it could be any number. I'm choosing $0$ because we'll have to plug $a$ into the various derivatives of $\sin x$---i.e., we'll have to plug $a$ into $\sin x $ and $\cos x$---and it's a lot easier to find $\sin(0)$ and $\cos(0)$ than it is to find, say, $\sin(43\pi/13.2)$ (were I to choose $a=43\pi/13.2$.) The formula is a tad messy, so to make things a bit clearer, let's build it term-by-term. We've got a lot of derivatives to take and plug things into and compile, so I'm going to show things step-by-step in a table. In this table, I've listed the term index (on the left-hand column), the relevant derivative, the derivative with $a$ plugged in, and finally, the term itself. 

\vspace{1pc}

\begin{longtable}{l | l l l}
$k$ & $f^{(k)}(x)$ & $f^{(k)}(a)$ & $\displaystyle \frac{f^{(k)}(a)}{k!}(x-a)^k$ \\ \\\hline\hline
$0$ & $\sin(x)$ & $\sin(0) = 0$ & $\displaystyle \frac{0}{0!}(x-0)^0 = 0$ \\ \\
$1$ & $\cos(x)$ & $\cos(0) = 1$ & $\displaystyle \frac{1}{1!}(x-0)^1 = x$ \\ \\
$2$ & $-\sin(x)$ & $-\sin(0) = 0$ & $\displaystyle \frac{0}{2!}(x-0)^2 = 0$ \\ \\
$3$ & $-\cos(x)$ & $-\cos(0) = -1$ & $\displaystyle \frac{-1}{3!}(x-0)^3 = -\frac{1}{3!}x^3$ \\ \\
$4$ & $\sin(x)$ & $\sin(0) = 0$ & $\displaystyle \frac{0}{4!}(x-0)^4 = 0$ \\\\
$5$ & $\cos(x)$ & $\cos(0) = 1$ & $\displaystyle \frac{1}{5!}(x-0)^5 = \frac{1}{5!}x^5$ \\\\
$6$ & $-\sin(x)$ & $-\sin(0) = 0$ & $\displaystyle \frac{0}{6!}(x-0)^6 = 0$ \\\\
$7$ & $-\cos(x)$ & $-\cos(0) = -1$ & $\displaystyle \frac{-1}{7!}(x-0)^7 = -\frac{1}{7!}x^7$ \\\\
$8$ & $\sin(x)$ & $\sin(0) = 0$ & $\displaystyle \frac{0}{8!}(x-0)^8 = 0$ \\\\
$9$ & $\cos(x)$ & $\cos(0) = 1$ & $\displaystyle \frac{1}{9!}(x-0)^9 = \frac{1}{9!}x^9$ \\\\
$\vdots$ & $\vdots$ & $\vdots$ & $\vdots$ 
\end{longtable}
So then, if I just add together all the terms in the rightmost column, I'll get the Taylor series for $\sin x$! I'll have:
$$\sin(x) = 0 + x+0- \frac{1}{3!}x^3 +0 + \frac{1}{5!}x^5 + 0 -\frac{1}{7!}x^7 + 0 +\frac{1}{9!}x^9 - \cdots$$
or just:
$$\sin(x) = x- \frac{1}{3!}x^3 + \frac{1}{5!}x^5 -\frac{1}{7!}x^7 +\frac{1}{9!}x^9 - \cdots$$
There it is! We can write $\sin(x)$ as this infinitely-long polynomial, with alternating adding and substracting odd polynomials. If we like, we can represent in $\Sigma$-form:
$$\sin(x) = \sum_{k=0}^{\infty} \frac{(-1)^{n+1}}{(2n+1)!}x^{2n+1}$$

\vspace{2pc}
\noindent {\bf \large Save Yourself The Trouble}

What if I want to write the Taylor series of, say, $x^{20}\sin(x)$? The obvious way to do it would be to plug things into Taylor's formula. But that will get real nasty real fast, since we'll have to do the product rule (to find the first derivative), and then to find the second derivative we'll have to do the product rule twice (because we get two terms), and then for the third derivative we'll have to do the product rule four times, and so on. Once we're past the 20th derivative the $x^{20}$ remnants will start to go away and we'll be fine, but until then, it'll be a huge mess. 
\begin{longtable}{l | l}
$k$ & $f^{(k)}(x)$  \\ \hline\hline
$0$ & $x^{20}\sin(x)$ \\
$1$ & $20x^{19}\sin(x) + x^{20}\cos(x)$ \\
$2$ & $20\cdot19x^{19}\sin(x) + 20x^{19}\cos(x) + 20x^{19}\cos(x) + x^{20}(-\sin x)$ \\
$3$ & etc.
\end{longtable}
Why go to all that work? We know how to write $\sin(x)$ as a series---why don't we just multiply the whole thing by $x^{20}$?
\begin{align*}
x^{20}\sin(x) &=x^{20}\cdot \left(x - \frac{1}{3!}x^3 + \frac{1}{5!}x^5 - \frac{1}{7!}x^7 + \frac{1}{9!}x^9 + \cdots \right) \\
 &= x^{21} - \frac{1}{3!}x^{23} + \frac{1}{5!}x^{25} - \frac{1}{7!}x^{27} + \frac{1}{9!}x^{29} + \cdots \\
&= \sum_{k=0}^{\infty} \frac{(-1)^{n+1}}{(2n+1)!}x^{2n+21} 
\end{align*}

Likewise, what if you want to find the Taylor series of $\sin(5x)$? Again, you {\em could} brute-force it---you could plug this into Taylor's formula. And, actually, it'd be a lot easier than in the previous example---you'd just get a bunch of $5$'s piling up as a result of the chain rule. But still. Here's my idea: you already know the Taylor series of $\sin(x)$. So why not just replace $x$ with $5x$? We'd have: 
\begin{align*}
\sin(5x) &= 5x - \frac{1}{3!}(5x)^3 + \frac{1}{5!}(5x)^5 - \frac{1}{7!}(5x)^7 + \frac{1}{9!}(5x)^9 + \cdots \\
&= 5x - \frac{5^3}{3!}x^3 + \frac{5^5}{5!}x^5 - \frac{5^7}{7!}x^7 + \frac{5^9}{9!}x^9 + \cdots \\  
&= \sum_{k=0}^{\infty} \frac{(-1)^{n+1}5^{2n+1}}{(2n+1)!}x^{2n+1} 
\end{align*}



## Antidifferentiation Awesomeness

Here's a cool application of Taylor series. So, antiderivatives are a pain, right? And sometimes they're not just hard; they're {\em impossible}. Like, literally, you can prove that it's impossible to antidifferentiate some functions. Classic examples: $$\int \! \frac{\sin x}{x} \,dx \quad\text{ and }\quad \int \!  \sqrt{1+x^4}\,dx$$
But really... these are only impossible to antidifferentiate {\em if you think finitely}. Here's what I mean: We know we can write sine using a Taylor series:
$$\sin(x) = x - \frac{1}{3!}x^3 + \frac{1}{5!}x^5 - \frac{1}{7!}x^7 + \frac{1}{9!}x^9 + \cdots$$
So then we should be able to write $\sin(x)/x$ like this:
\begin{align*}
\frac{\sin(x)}{x} &= \left(\frac{1}{x}\right)\sin(x) \\
 &= \left(\frac{1}{x}\right)\cdot\left(x - \frac{1}{3!}x^3 + \frac{1}{5!}x^5 - \frac{1}{7!}x^7 + \frac{1}{9!}x^9 + \cdots \right) \\
 \intertext{}
 &= 1 - \frac{1}{3!}x^2 + \frac{1}{5!}x^4 - \frac{1}{7!}x^6 + \frac{1}{9!}x^8 + \cdots \\
&= \sum_{k=0}^{\infty} \frac{(-1)^{n+1}}{(2n+1)!}x^{2n} 
\end{align*}
But wait... this is just a polynomial. We can antidifferentiate polynomails. That's {\em easy}. We must just have:
\begin{align*}
\int \! \frac{\sin x}{x}\,dx &= \int \! 1 - \frac{1}{3!}x^2 + \frac{1}{5!}x^4 - \frac{1}{7!}x^6 + \frac{1}{9!}x^8 +\cdots \,dx \\
&= x - \frac{1}{3!\cdot 3}x^3 + \frac{1}{5!\cdot5}x^5 - \frac{1}{7!\cdot 7}x^7 + \frac{1}{9!\cdot 9}x^9 +\cdots + C \\
&= \sum_{k=0}^{\infty} \frac{(-1)^{n+1}}{(2n+1)!\cdot(2n+1)}x^{2n+1} 
\end{align*}
WOW!!!!! We can take an antiderivative of this supposedly-impossible-to-antidifferentiate function. That's really, really cool.



## Whence Taylor Series: The Proof 

We should probably understand why Taylor series exist before we go much further. The basic idea is that a Taylor series is really just a tricked-out version of integration by parts. When we were doing integration by parts, we discussed how to quickly do multiple integrations-by-parts (in the case of, e.g., $\int x^5\sin(x)dx$), and I probably made some analogy to the effect of, ``If integration by parts is a machine gun, using a table is an {\em anti-aircraft gun}!!!'' Taylor series continues this analogy: it makes integrating by parts or using a table seem like small-arms fire. Taylor series, by comparison, is an {\em aircraft carrier}. 

Imagine we have some function $h(x)$ and some point $a$. Then, as we've discussed, we can write it as:
$$h(x)= h(a) + (x-a)h'(a)  + \frac{1}{2!}(x-a)^2h''(a) + \frac{1}{3!}(x-a)^3h'''(a)  +\frac{1}{4!}(x-a)^4h''''(a) + \cdots$$
(Note that I'm calling this function $h(x)$ and not $f(x)$; that's because in the proof I want to use the integration-by-parts formula, which already has a function labelled as $f(x)$, and I don't want to get it confused. Also, I wrote it in a slightly-switched around order, but multiplication doesn't care about order ($ab=ba$), so that's no big deal.) Let's prove this. 

Where should we start? How about at the beginning---with the fundamentals? Part II of the Fundamental Theorem of Calculus says that for any function $h(x)$, we must have:
$$\int_a^x \! h'(t) \, dt = h(x) - h(a)$$
Of course, I can rearrange this so that it just looks like:
$$h(x) = h(a) + \int_a^x \! h'(t) \, dt$$
And we're on our way! We've already started creating a Taylor polynomial---$h(a)$ is the first term.  Now I want to start hitting up $\int h'(t)dt$ with integration by parts. Remember that the integration by parts formula looks like this:
$$\int\! f(x)g'(x)\,dx = f(x)g(x) - \int\! f'(x)g(x)\,dx$$
Of course, in our Taylor formula so far, we have an integral that only has one part. It only has $h'(t)$. But really it has {\em two} parts---because it's $h'(t)$ multiplied by $1$:
$$h(x) = h(a) + \int_a^x \! 1\cdot h'(t) \, dt$$
So let's choose $1$ to be our $g'(x)$ (or, well, $g'(t)$), and $h'(t)$ to be our $f(t)$:
$$h(x) = h(a) + \int_a^x \! \underbrace{1}_{\mathclap{g'(t)}}\cdot \underbrace{h'(t)}_{f(t)} \, dt$$
And then we can list the various stuff we need to integrate by parts. (One of these is kind of weird and maybe surprising. I'll explain in a moment.)

 \begin{table}[h] \centering
\begin{tabular}{l  c}
$\,g(t) = -(x-t)$ &	\hspace{.3cm} $f(t) = h'(t)$   \\
$g'(t) = 1$ &	\hspace{.3cm} $f'(t) = h''(t)$  \\
\end{tabular}
\end{table}

The $f$ and $f'$ should make sense---$f$ is $h'$, so $f'$ is $h''$. But what you should be immediately suspicious of is my choice of $g(t)$. $g'(t)$ was $1$, so shouldn't $g(t)$---which is just the antiderivative of $g'(t)$---be $t$? 

Yes and no. Allow me, first, to prove to you that, in fact, $-(x-t)$ {\em is} an antiderivative of $1$. The key step here is realizing that we're taking the derivative/antiderivative {\em in terms of $t$}, and that $x$ is {\em constant} with respect to $t$. If I take the derivative of $-(x-t)$, I get:
\begin{align*}
\frac{d}{dt}\left[ -(x-t)\right] &= \frac{d}{dt}\left[ -x + t \right] \\
& = \frac{d}{dt}\left[ -x \right]  + \frac{d}{dt}\left[t \right] \\
&= 0 + 1 \\
&= 1
\end{align*}
Does this make sense? The derivative of $-(x-t)$ is $1$; therefore, the antiderivative of $1$ is $-(x-t)$. So if I put this stuff together and integrate by parts, I get:
$$h(x) = h(a) + \left[-(x-t)h'(t) - \int\! -(x-t)h''(t)\,dt \right]_a^x$$
$$h(x) = h(a) + \left[-(x-t)h'(t)\right]_a^x + \left[ - \int\! -(x-t)h''(t)\,dt \right]_a^x$$
And then if I evaluate that (i.e., plug in the $x$ and $a$):
$$h(x) = h(a) + (-(x-x)h'(x) - [-(x-a)h'(a)] ) - \int_a^x\! -(x-t)h''(t)\,dt $$
We've got a whole bunch of nested negatives---let's distribute them and clean this up.
$$h(x) = h(a) -(\underbrace{x-x}_{=0})h'(x)+ (x-a)h'(a)  + \int_a^x\! (x-t)h''(t)\,dt $$
Also, that second term has $(x-x)$, which is just zero, and so the entire term goes away:
$$h(x) = h(a) + 0+ (x-a)h'(a)  + \int_a^x\! (x-t)h''(t)\,dt $$
$$h(x) = h(a) + (x-a)h'(a)  + \int_a^x\! (x-t)h''(t)\,dt $$
It looks like the first two terms of a Taylor series! Let's keep going! Let's integrate THIS by parts!
$$h(x) = h(a) + (x-a)h'(a)  + \int_a^x\! \underbrace{(x-t)}_{g'(t)}\cdot\underbrace{h''(t)}_{f(t)}\,dt $$
\begin{center} \begin{tabular}{l  c}
$\,\displaystyle g(t) = -\frac{1}{2}(x-t)^2$ &	\hspace{.3cm} $f(t) = h''(t)$   \\
$g'(t) = (x-t)$ &	\hspace{.3cm} $f'(t) = h'''(t)$  \\
\end{tabular} \end{center}
so we have:
\begin{align*}
h(x) & = h(a) + (x-a)h'(a)  + \left[ -\frac{1}{2}(x-t)^2h''(t) - \int\! -\frac{1}{2}(x-t)^2h'''(t) \,dt   \right]_a^x \\ \\
&= h(a) + (x-a)h'(a)  + \left( -\frac{1}{2}(x-x)^2h''(x) - (-\frac{1}{2}(x-a)^2h''(a))\right) - \int_a^x\! -\frac{1}{2}(x-t)^2h'''(t) \,dt   \\ \\ 
& = h(a) + (x-a)h'(a)  + \left( -\frac{1}{2}(\underbrace{x-x}_{=0})^2h''(x) - (-\frac{1}{2}(x-a)^2h''(a))\right) - \int_a^x\! -\frac{1}{2}(x-t)^2h'''(t) \,dt   \\ \\
& = h(a) + (x-a)h'(a)  + \left( 0 - (-\frac{1}{2}(x-a)^2h''(a))\right) - \int_a^x\! -\frac{1}{2}(x-t)^2h'''(t) \,dt   \\ \\
&= h(a) + (x-a)h'(a)  + \frac{1}{2}(x-a)^2h''(a) - \int_a^x\! -\frac{1}{2}(x-t)^2h'''(t) \,dt   \\ \\
&= h(a) + (x-a)h'(a)  + \frac{1}{2}(x-a)^2h''(a) + \int_a^x\! \frac{1}{2}(x-t)^2h'''(t) \,dt 
\end{align*}
I guess one of the annoying things about this proof is all the nested negatives---negatives of negatives of negatives. So be sure you keep track of those. Anyway, roll on! Let's integrate the NEXT integral by parts!!!
$$h(x)= h(a) + (x-a)h'(a)  + \frac{1}{2}(x-a)^2h''(a) + \int_a^x\! \underbrace{\frac{1}{2}(x-t)^2}_{g'(t)}\cdot\underbrace{h'''(t)}_{f(t)} \,dt $$
\begin{center} \begin{tabular}{l  c}
$\,\displaystyle g(t) = -\frac{1}{2\cdot3}(x-t)^3$ &	\hspace{.3cm} $f(t) = h'''(t)$   \\
$\displaystyle g'(t) = \frac{1}{2}(x-t)^2$ &	\hspace{.3cm} $f'(t) = h''''(t)$  \\
\end{tabular} \end{center}
$$h(x)= h(a) + (x-a)h'(a)  + \frac{1}{2}(x-a)^2h''(a) +\left[ -\frac{1}{2\cdot3}(x-t)^3h'''(t) -  \int \! -\frac{1}{2\cdot3}(x-t)^3f'(t) = h''''(t) \right]_a^x $$
I'm sort of running out of space on the page, but you get the idea: I plug in $x$ and $a$, I get an $(x-x)$ term that goes away, I blast through a bunch of negatives, and end up with something like:
$$h(x)= h(a) + (x-a)h'(a)  + \frac{1}{2}(x-a)^2h''(a) + \frac{1}{2\cdot3}(x-a)^3h'''(a) -  \int_a^x \! -\frac{1}{2\cdot3}(x-t)^3h''''(t)\,dt $$
So, as you can see, a Taylor polynomial is forming! We are growing a Taylor series, bit by bit. Instead of giving it sun and water, we are giving it integration by parts. All we do is integrate by parts forever, and we get a Taylor series! So this shows you where the formula comes from, which as far as I am concerned is sufficient proof\footnote{One note: strictly speaking, we haven't proven that this pattern actually continues---I mean, obviously it does, but saying ``obviously it does!'' isn't a {\em proof}. If we were to prove that this pattern {\em does} continue indefinitely/infinitely, we'd have to use a technique known as {\em induction} (or {\em mathematical induction}). Look it up on the internet or in a book if you're curious.}. \includegraphics[scale=.25]{andrewproof.png} 

\vspace{5pc}

\centerline{\bf \Large Taylor Series Quick Reference}
{\Large
\begin{itemize}
\item $\displaystyle \sin(x)= $
\item $\displaystyle \cos(x) = $
\item $\displaystyle e^x= $
\item $\displaystyle \ln(x) = $
\item $\displaystyle (1+x)^p = $
\end{itemize}
}


## Problems

Use Taylor's formula (the formula) to find the Taylor series of the following functions. (Write them out to at least the 5th nonzero term and also express them in $\Sigma$ form. If I don't give you a value for $a$, choose one yourself.)
\begin{multicols}{2}
\setlength{\columnseprule}{.5pt}
\begin{problems}

\item $f(x) = \cos(x)$, with $a=0$
\item $f(x) = \sqrt{x}$, around $a=2$
\item $f(x) = e^x$, with $a=0$
\item $f(x) = \ln(x)$, around $x=1$
\item $f(x) = (1+x)^p$, with $a=0$

\item $f(x) = e^{2x}$
\item $f(x) = \sin(2x)$
\item $f(x) = \ln(1+x)$
\item $f(x) = e^x + x + \sin(x)$
\item $f(x) = e^{-3x}$
\item $f(x) = \sqrt{x}$, around $a=4$
\item $f(x) = \sqrt{1+x}$
\item $\displaystyle f(x) = \frac{1}{(1+x)^2}$

\item $f(x) = \cos(x)$, with $a=\pi$
\item $f(x) = \cos(\pi x)$, with $a=1/2$
\item $f(x) = \sin(x)$, with $a=\pi$
\item $f(x) = \sin(x)$, with $a=\pi/6$

\item$f(x) = e^x$, with $a=1$
\item$f(x) = e^{x^2}$
\item $f(x) = x^2$, with $a=0$
\item $f(x) =  x^2$, with $a=1$
\item $f(x) = 1 + x^2 + x^3$
\item $f(x) = 2 - x + 3x^2 - x^3$, $a=-1$
\item $f(x) = 2x^5 + x^2 - 3x - 5$, with $a=1$
\item $f(x) = x^{-1}$, around $x=-1$
\item $\displaystyle f(x) = \frac{x}{(1+x)^2}$
\item $\displaystyle f(x) = \frac{x+5}{(1+x)^2}$

\item $f(x) = e^{kx}$
\item $f(x) = \cos(kx)$

\item $f(x) = x\sin(x)$
\item $f(x) = xe^x$
\item $f(x) = 2xe^{x^2}$
\item $f(x) = x^2\cos(x^3)$

\end{problems}
\end{multicols}

\vspace{1pc}



\setlength{\columnseprule}{.5pt}
\begin{problems} \setcounter{enumi}{33}
\item We've already seen that we can use our geometric series theorem to write the Taylor series of $1/(1+x)$. That is to say, we've seen:
$$ \frac{1}{1-x}= \sum_{k=0}^{\infty} x^n =1+x+x^2+x^3+x^4+\cdots $$
Show that you get the same result using Taylor's formula (i.e., the formula for a Taylor series). That is to say, use the function $f(x) = 1/(1-x)$ and see what the formula gives you as its Taylor series.
\item Find the Taylor series of $\displaystyle f(x) = \frac{1}{1+x}$ How does this relate to the Taylor series expalnsion of $\ln(1+x)$? (How does $\ln(1+x)$ relate to $\frac{1}{1+x}$?)
\end{problems}

\vspace{1pc}

\noindent Find the Taylor series of each of the following rational functions:
\begin{multicols}{3}
\setlength{\columnseprule}{.5pt}
\begin{problems}\setcounter{enumi}{35}
\item $\displaystyle f(x) = \frac{1}{1-x^2}$
\item $\displaystyle f(x) = \frac{1}{1-x^3}$
\item $\displaystyle f(x) = \frac{1}{(1-x)^2}$ (ooh)
\end{problems}
\end{multicols}

\vspace{2pc}

\noindent In 1974, the philosopher Thomas Nagel published a seminal essay on the philosophy of mind entitled ``What is it like to be a bat?''\footnote{Google it! Read it!} His thesis, simply put, was that we cannot know what it is like to be a bat, because if we did, we would either be a strange bat-human hybrid (and thus not really a bat) or a bat (and thus we wouldn't be ourselves). In the following problems, I would like you to ask yourselves: ``What is it like to be a calculator?''

\begin{problems}\setcounter{enumi}{38}

\item Come up with an approximation (to, say, three decimal places) of $\sin(\pi/60)$. (Suggestion: you know how to write $\sin(x)$... what if $x$ is a specific number and not just ``$x$''? Use a calculator to do the arithmetic.)

\item Similarly, use a Taylor series to approximate $\cos(62\degree)$. (Note that this is just $\cos(\pi/3 + \pi/90)$, so do you think that you would get a better approximation using $\cos(x)$ expanded around $0$ or around $\pi/3$?)

\item Estimate $\sin(35\degree)$

\item Here's a similar question: what's $e$? As in, what is its decimal approximation? Rather than just punching ``$e$'' into your calculator and having it tell you, estimate it yourself! Use a Taylor series to approximate it; write it out to at least a half-dozen terms and then find the decimal.

\item Can you approximate $e^2$ (to, say, three significant figures)?

\item Approximate $\sqrt{38}$ (again, to three or four decimal places).

\item Estimate $\ln(1.4)$.

\item Use a Taylor series to estimate $\sin(0)$. (Obviously, you know that this is $0$---but I want you to see what the Taylor series tells you.) Do the same for $\cos(0)$.

\item On a similar but somewhat more interesting note, try using a Taylor series to estimate $\sin(\pi)$. Do the same for $\cos(\pi)$. How close to the exact answers do you get after one term? two terms? three terms? four terms? ten terms?

\end{problems}

\vspace{1pc}

\noindent More fun with Taylor series!
\begin{problems}\setcounter{enumi}{47}
\item It is a well-known trig identity that $\cos(-x) = \cos(x)$ (i.e., that a horizontal reflection of a cosine gives you just a cosine---that cosine is symmetric around the $y$-axis). Prove this using a Taylor series. (You could prove it in other ways, but I want you to prove it using a T.S.)
\item Likewise, use a Taylor series to prove that $-\sin(x) = \sin(-x)$ (i.e., that a vertical reflection of sine is equivalent to a horizontal reflection).  
\end{problems}

\vspace{1pc}

\noindent Even more fun with Taylor series! Below are two limits which you can't do just by plugging in $0$, since you'd get a divide-by-zero error. Ordinarily our workaround would be to use L'Hopital's rule. But we can do a Taylor series, too! Evaluate the following limits using both 1) L'Hopital's rule and 2) a Taylor series.
\begin{multicols}{2}
\setlength{\columnseprule}{.5pt}
\begin{problems}\setcounter{enumi}{49}
\item $\displaystyle \lim_{x\rightarrow 0} \frac{1-\cos x}{x^2}$
\item $\displaystyle \lim_{x\rightarrow 0} \frac{\sin(x) - x}{x^2}$
\end{problems}
\end{multicols}


\vspace{1pc}
\begin{problems}\setcounter{enumi}{51}
\item A few weeks ago, when we were talking about series, I told you that it was far harder to figure out what a series converges to than to figure out whether it converges. Like with antiderivatives, all we have are a smattering of {\em ad hoc}, particular formulas---there is no general method. So in this problem, I'm going to give you another equation for what a certain series converges to, and you're going to prove why it's true. Here's the formula:
$$\sum_{n=1}^\infty \frac{n}{(n+1)!} = 1$$
It takes a little bit of work to do this. My suggestion is to find the Taylor series of $\displaystyle f(x) = \frac{e^x-1}{x}$, take a derivative, and play with it a bit. Keep in mind that you have three ways to write this function---you can write it as $(e^x-1)/x$, you can write it as a written-out polynomial, and you can write it in $\Sigma$-form. This is a cool proof, but don't give up if you can't do it in thirty seconds. Muse about it! (Also, don't let it escape your notice that the formula starts with $n=1$, whereas our Taylor series usually start with $n=0$.)

\item Here's another weird, unexpected, and counterintuitive series formula: 
$$\sum_{n=1}^\infty \frac{1}{n!(n+2)} = \frac{1}{2}$$
I want you to prove this, too. Try finding the Taylor series of $f(x) = xe^x$, taking an integral, and playing with it for a bit.
\end{problems}

\vspace{3pc}

\begin{problems}\setcounter{enumi}{53}
\item Differentiate the Taylor series for $\sin(x)$, $\cos(x)$, and $e^x$ term-by-term, and compare your results with the Taylor series for $\cos(x)$, $-\sin(x)$, and $e^x$, respectively. 
\item Integrate the Taylor series for $\sin(x)$, $\cos(x)$, and $e^x$ term-by-term, and compare your results with the Taylor series for $-\cos(x)$, $\sin(x)$, and $e^x$, respectively. 
\end{problems}

\vspace{2pc}

\noindent Making antiderivatives with Taylor series!
\begin{problems}\setcounter{enumi}{55}
\item Integrate $\displaystyle\int \! \sin(x^2)\,dx$. Then estimate $\displaystyle\int_0^1 \sin(x^2)\,dx$. (Do it to at least three significant figures---just keep adding up the terms until they settle down to at least three sig. figs.)
\item Likewise, estimate $\displaystyle\int_0^{0.1} \! \frac{\sin x}{x}\,dx$
\item Estimate $\displaystyle\int_0^{0.1} \sqrt{1+x^4}\,dx$
\item Estimate $\displaystyle\int_0^{0.1} x^2e^{-x^2}\,dx$
\item Estimate $\displaystyle\int_0^1 \! \frac{1-\cos x}{x^2}\,dx$
\end{problems}




\end{document}