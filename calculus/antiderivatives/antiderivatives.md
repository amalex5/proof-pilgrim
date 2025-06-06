---
title: antiderivatives
usemathjax: true
layout: post
---



**The year is not over yet**. We have one last thing to do. We have learned how to differentiate---now we must learn how to antidifferentiate. This problem is interesting enough in the context of differentiation. Now that we've learned that integration is really just the same thing as antidifferentiation, it has taken on added urgency.

But perhaps I should be a bit clearer with my pronouns: *you* must learn how to antidifferentiate, since I am already fairly good at it. Here's what we'll do: I'll give you 200--odd antiderivative problems (ranging widely in difficulty and generality), and you'll figure out how to do them. All by yourselves. I will do nothing but sit and observe. And you will do this because during finals week, I will give you a very hard test on antidifferentiation.

Now, in principle, each of you is more than capable of teaching yourselves how to antidifferentiate. You are all already quite good at taking derivatives, so with sufficient play you should be able to figure out how to move in the opposite direction. Put differently, you know how to do this: 
$$\text{function} \longrightarrow \text{derivative}$$
and now you need to figure out how to do this:
$$\text{function} \longleftarrow \text{derivative}$$
so that you can understand the full correspondence:
$$\text{function} \longleftrightarrow \text{derivative}$$
Some of you may be able to do all of the problems I give you with little difficulty. Others might have more trouble. If you discover that you are good at this stuff, that doesn't mean you can simply relax for the next week and a half while your colleagues flounder. You have the obligation to help your classmates who are struggling---to teach them and help them understand the material. If you do not, I will be very disappointed. And you may be disappointed, too, when you see your semester evaluation, because I will be evaluating you in this unit not simply on how well you do on the test, but on how well you operate as a class.

Exactly how you organize the unit is up to you. You might want to split up the problems so you discuss some predetermined fraction of them each day, you might want to designate a few people each day to present problems and run the class, you might want to have a Hobbesian free-for-all... you are welcome to do whatever you feel will be  most efficacious. The point is, you will need take the initiative yourselves. As I said *supra*, a large part of how I evaluate you will be on your ability to function as a cohesive and directed whole.

My hope is that this short unit will be neither nasty nor brutish. I think it will be fun and challenging, and a good way to end the year.

## Some Technical Notes 

In the problems I give you, I'll use the symbol $\int$ to represent an antiderivative. For example^[For now, don't worry about what the $dx$ means---we'll talk plenty next year about it. Just think of it as being part of the notation and telling you to take the antiderivative with respect to $x$. It's the same $dx$ that shows up in a derivative $\displaystyle \frac{dy}{dx}$---what it is, basically, is an infinitesimally small change in $x$---some value of $x$ that is not equal to zero but is smaller than every other real number. This should seem paradoxical. After all, didn't we say, when discussing limits, that you couldn't do that? Well, yes, we did, and this is the paradox that haunted calculus for 200 years before Karl Weierstrass and his friends fixed it in the mid-to-late 19th century. They did this by purging the idea of the infinitesimal from calculus (but without destroying calculus in the process). Then in the late 1950s, a guy at UCLA named Abraham Robinson showed that these infinitely small numbers actually *do* exist---that what seems to be a paradox isn't---and, anyway, for a good treatment of this, read David Foster Wallace's *Everything and More: A Compact History of $\infty$* (one of my favorite popular math books) or "Infinitesimally Yours," by Jim Holt, *New York Review of Books*, 20 May 1999.]

$$\int 2x \, dx = \text{"the antiderivative of $2x$"} = x^2$$

Of course, $\displaystyle \int 2x \,dx$ could be $x^2 + 5$, too, or even $x^2 + 3,429,836.8345$. So really we should just write:

$$\int 2x \,dx = x^2 + C$$

where $C$ can be any real number (i.e., is some constant). That way we can capture *every* antiderivative, and not just one. Formally, I would define this notation as follows: given some function $f(x)$ and its derivative $f'(x)$, the following relationship holds: 

$$\displaystyle \int f'(x) \, dx = f(x) + C$$

Additionally, unless otherwise specified, I represent constant quantities in these problems with single letters (e.g. $a$, $b$, $n$) and functions with function-notation (e.g. $a(x)$, $b(t)$, $f(x)$, $r(\theta)$). Some of your answers may have to include arbitrary constants or functions---that's OK. You are welcome to ask me if you have additional questions of this sort, but if you have questions on how to actually do the problems, I will probably be quite reticient. 

<style>
  hr.integral-hr {
    border: none;
    height: auto;
    background-color: transparent;
    margin-bottom: 2em;
  }
  hr.integral-hr::before {
    content: "∫∫∫∫∫∫∫∫∫∫∫∫∫∫";
    display: block;
    text-align: center;
    color: lightgray;
    font-size: 300%;
    background-color: transparent;
}
.spaced-antiderivatives li {
  margin-bottom: 5em;
}
</style>


<div style='height:10em;'></div>

<hr class="integral-hr" />

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems spaced-antiderivatives'>
<li>  $\displaystyle \int 2x \, dx$ </li>
<li>  $\displaystyle \int 3x^2 \, dx$ </li>
<li>  $\displaystyle \int 4x^3 \, dx$ </li>
<li>  $\displaystyle \int 17x^{16} \, dx$ </li>
<li>  $\displaystyle \int 0 \, dx$ </li>
<li>  $\displaystyle \int 1 \, dx$ </li>
<li>  $\displaystyle \int 332 \, dx$ </li>
<li>  $\displaystyle \int 5x \, dx$ </li>
<li>  $\displaystyle \int 6x^2 \, dx$ </li>
<li>  $\displaystyle \int 4x^5 \, dx$ </li>
<li>  $\displaystyle \int 22x^{47} \, dx$  </li>
<li> ** $\displaystyle \int ax^n \, dx$ </li>
<li> $\displaystyle \int -x^{-2}\, dx$ </li>
<li>  $\displaystyle \int \frac{-1}{x^2} \, dx$ </li>
<li>  $\displaystyle \int -2x^{-3} \, dx$ </li>
<li>  $\displaystyle \int \frac{-2}{x^3} \, dx$ </li>
<li>  $\displaystyle \int -3x^{-4} \, dx$ </li>
<li>  $\displaystyle \int \frac{-3}{x^4} \, dx$ </li>
<li>  $\displaystyle \int x^{-n} \, dx$ </li>
<li>  $\displaystyle \int \frac{1}{x^{n}} \, dx$ </li>
<li>  $\displaystyle \int \frac{5}{x^3} \, dx$ </li>
<li>  $\displaystyle \int \frac{7}{3x^4} \, dx$ </li>
<li>  $\displaystyle \int \frac{b}{x^n} \, dx$ </li>
<li>  $\displaystyle \int \frac{-12}{7x^6} \, dx$ </li>
<li>  $\displaystyle \int \frac{9}{x^8} \, dx$ </li>
<li>  $\displaystyle \int \frac{5}{67x^{98}} + x^5\, dx$ </li>
<li> $\displaystyle \int \frac{1}{2}x^{-1/2}\, dx$ </li>
<li>  $\displaystyle \int \frac{1}{2\sqrt{x}} \, dx$ </li>
<li>  $\displaystyle \int \frac{3}{\sqrt{x}}\, dx$ </li>
<li>  $\displaystyle \int \frac{3}{2}x^{1/2} \, dx$ </li>
<li>  $\displaystyle \int \frac{3}{2}\sqrt{x} \, dx$ </li>
<li>  $\displaystyle \int \frac{-1}{2}x^{-3/2} \, dx$ </li>
<li>  $\displaystyle \int \frac{-3}{2}x^{-5/2} \, dx$ </li>
<li>  $\displaystyle \int 5\sqrt{x} \, dx$ </li>
<li>  $\displaystyle \int \frac{1}{3}x^{-2/3} \, dx$ </li>
<li>  $\displaystyle \int \frac{1}{3\sqrt[3]{x^2}} \, dx$ </li>
<li>  $\displaystyle \int \frac{-1}{3}x^{-4/3} \, dx$ </li>
<li>  $\displaystyle \int x^{-3} + x^2 \, dx$ </li>
<li>  $\displaystyle \int \sqrt{x} + \frac{1}{\sqrt{x}} \, dx$ </li>
<li>  $\displaystyle \int x^{-5} \, dx$ </li>
<li>  $\displaystyle \int ax^2 + bx + c \, dx$ \vspace{.5cm} </li>
<li> $\displaystyle \int ax^3 - \frac{1}{ax} \, dx$ </li>
<li>  $\displaystyle \int af'(x) \, dx$ </li>
<li>  $\displaystyle \int f'(x) + g'(x) \, dx$ </li>
<li>  $\displaystyle \int x^5 + 3x^8 - 12x^7 + 14 \, dx$ </li>
<li> $\displaystyle \int \left[ \sum_{k=0}^{k=n} a_k x^k\,\right] dx$ (where all of the $a_k$, i.e., $a_0,a_1,a_2$, etc., are constants) </li>
<li>  $\displaystyle \int 5\sqrt{x} - 3x^6 + 23x^4 + \pi \, dx$ </li>
<li>  $\displaystyle \int x^3 + 3\sqrt[5]{x} + 8x^{2/3} + bx + a \, dx$ \vspace{.5cm}
</ol>
</div>

<hr class="integral-hr" />

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems spaced-antiderivatives'>
<li> **$\displaystyle \int \cos(x) \, dx$ </li>
<li> **$\displaystyle \int \sin(x) \, dx$ </li>
<li> $\displaystyle \int -\pi\sin(\pi x) \, dx$ </li>
<li> $\displaystyle \int 3\sin(x) \, dx$ </li>
<li> $\displaystyle \int \sin(3x) \, dx$ </li>
<li> $\displaystyle \int \sin(\pi x) - 3\sin(3x) \, dx$ </li>
<li> $\displaystyle \int \frac{\pi}{2}\cos\left(\frac{\pi}{2} x\right) \, dx$ </li>
<li> $\displaystyle \int \frac{1}{\cos^2{x}} \, dx$ </li>
<li> $\displaystyle \int \sin(x + 3\pi) \, dx$ </li>
<li> $\displaystyle \int \cos\left(x - \frac{2}{3}\pi\right) \, dx$ </li>
<li> $\displaystyle \int 2x\cos(x^2)\,dx$ </li>
<li> $\displaystyle \int 2x\cos(x)\,dx$ </li>
<li> $\displaystyle \int \frac{\sin(x)}{x} \,  dx$ </li>
</ol>
</div>

<hr class="integral-hr" />

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems spaced-antiderivatives'>
<li>  $\displaystyle \int 2x\cos(x^2) \, dx$  </li>
<li>  $\displaystyle \int 3x^2\cos(x^3) \, dx$  </li>
<li> $\displaystyle \int -5x^4\sin(x^5) \, dx$  </li>
<li> $\displaystyle \int 323(4x^3 + 3x^2)(x^4 + x^3)^{322} \, dx$  </li>
<li> $\displaystyle \int 9(6x^5 + 2x)(x^6 + x^2)^{8}\, dx$  </li>
<li> $\displaystyle \int 15x^4(x^5 + 12)^{2} \, dx$  </li>
<li> $\displaystyle \int 35x^6(x^7 + 3)^5 \, dx$  </li>
<li> $\displaystyle \int 4x^3\cos(x^4 + 2\pi) \, dx$  </li>
<li> $\displaystyle \int (k + 1) \cdot f'(x)\cdot (\,f(x)\,)^k \, dx$  </li>
<li> $\displaystyle \int f'(x) \cdot (\, f(x) \,)^n \, dx$  </li>
<li> $\displaystyle \int (4x^3 + 7x^6)f'(x^4 + x^7) \, dx$ </li>
<li>  **** $\displaystyle \int g'(x) \cdot f'(\, g(x) \,) \, dx$  </li>
<li> $\displaystyle \int x\sin(2x^2)\, dx$  </li>
<li> $\displaystyle \int (1- \cos(t/2))^2\sin(t/2)\, dt$  </li>
<li> $\displaystyle \int 28(7x - 2)^{-5} \, dx$  </li>
<li> $\displaystyle \int x^3(x^4 - 1)^2 \, dx$  </li>
<li> $\displaystyle \int \frac{9r}{\sqrt{1 - r^2}} \, dr$  </li>
<li> $\displaystyle \int 12(y^4 + 4y^2 + 1)^2(y^3 + 2y) \, dy$  </li>
<li> $\displaystyle \int \frac{1}{\sqrt{5x + 8}} \, dx$  </li>
<li> $\displaystyle \int \sqrt{3 - 2s}  \, ds$  </li>
<li> $\displaystyle \int (2x + 1)^3 \, dx$  </li>
<li> $\displaystyle \int \frac{3}{(2 - x)^2} \, dx$  </li>
<li> $\displaystyle \int \theta\sqrt[4]{1 - \theta^2} \, d\theta$  </li>
<li> $\displaystyle \int g(x)g'(x) \, dx$  </li>
<li> $\displaystyle \int \frac{4y}{\sqrt{2y^2 + 1}} \, dy$  </li>
<li> $\displaystyle \int x^{1/2}\sin(x^{3/2} + 1)\, dx$  </li>
<li> $\displaystyle \int \sin^5\left(\frac{x}{3}\right)\cos\left(\frac{x}{3}\right)\, dx$  </li>
<li> $\displaystyle \int r^2\left(\frac{r^3}{18} - 1\right)^5\, dr$  </li>
<li> $\displaystyle \int r^4\left(7 - \frac{r^5}{10}\right)\, dr$  </li>
<li> $\displaystyle \int x^{1/3}\sin(x^{4/3} - 8)\, dx$  </li>
<li> $\displaystyle \int \frac{3}{x^2}\left(1 - \frac{1}{x}\right)^3\, dx$  </li>
<li> $\displaystyle \int \frac{(1 + \sqrt{x})^3}{\sqrt{x}} \, dx$  </li>
<li> $\displaystyle \int \frac{1}{t^2}\cos\left(\frac{1}{t} - 1\right)\, dt$  </li>
<li> $\displaystyle \int x\sqrt{1 - x^2} \, dx$  </li>
<li> $\displaystyle \int -5x^4\sin(x^4) \, dx$  </li>
<li> $\displaystyle \int \frac{10\sqrt{v}}{(1 + v^{3/2})^2} \, dv$  </li>
<li> $\displaystyle \int \frac{4x}{\sqrt{x^2 + 1}}\, dx$  </li>
<li> $\displaystyle \int \frac{x^3}{\sqrt{x^4 - 9}} \, dx$  </li>
<li> $\displaystyle \int \frac{g(x)}{(g(x))^2} \, dx$  </li>
<li> $\displaystyle \int \frac{\cos(z)}{\sqrt{4 + 3\sin(z)}} \, dz$  </li>
<li> $\displaystyle \int \cos^{-3}(2\theta)\sin(2\theta)\, d\theta$  </li>
<li> $\displaystyle \int \tan^{-5}\left(\frac{\theta}{6}\right)\frac{1}{\cos^2(\frac{\theta}{6})} \, d\theta$ 
 </li>
<li> $\displaystyle \int (4y - y^2 +4y^3 +1)^{-2/3}(12y^2 - 2y +4)\, dy$  </li>
<li> $\displaystyle \int (y^3 + 6y^2 - 12y +9)^{-1/2}(y^2 + 4y -4) \, dy$ </li>
<li> $\displaystyle \int \sqrt{x^4 + 1} \, dx$ </li>
<li> $\displaystyle \int \frac{b^3x^3}{\sqrt{1-a^4x^4}} \, dx$  </li>
<li> $\displaystyle \int \frac{x^{n-1}}{\sqrt{a + bx^n}} \, dx$  </li>
<li> $\displaystyle \int y^2\left(1 - \frac{y^3}{a^2}\right)^{-2} \, dy$  </li>
<li> $\displaystyle \int \sqrt{1 + \sin(x)}\cos(x) \, dx$  </li>
<li> $\displaystyle \int x\sin^3(x^2)\cos(x^2) \, dx$ </li>
<li> $\displaystyle \int k'(x)\cdot g'(k(x))\cdot f'(g(k(x))) \, dx$ </li>
</ol>
</div>

<hr class="integral-hr" />

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems spaced-antiderivatives'>
<li>$\displaystyle \int e^x \, dx$ </li>
<li> $\displaystyle \int 2e^{2x} \, dx$ </li>
<li> $\displaystyle \int 276e^{276x} \, dx$ </li>
<li> $\displaystyle \int \cos(x)e^{\sin(x)} \, dx$ </li>
<li> $\displaystyle \int 2xe^{x^2} \, dx$ </li>
<li> $\displaystyle \int (5x^4 + 3x^2)e^{x^5 + x^3} \, dx$
</li>
<li>  ** $\displaystyle \int g'(x)e^{g(x)} \, dx$ </li>
<li> $\displaystyle \int 8e^{x+1} \, dx$ </li>
<li> $\displaystyle \int e^{3x} + 5e^{-x} \, dx$ </li>
<li> $\displaystyle \int 2e^{x} - 3e^{-2x} \, dx$ </li>
<li> $\displaystyle \int 2te^{-t^2} \, dt$ </li>
<li> $\displaystyle \int t^3e^{t^4} \, dt$ </li>
<li> $\displaystyle \int \frac{e^{\tan(\theta)}}{\cos^2(\theta)} \, d\theta$ </li>
<li> $\displaystyle \int 5^x \, dx$ </li>
<li> $\displaystyle \int 2^x \cos(x^3) \, dx$ </li>
<li> $\displaystyle \int \frac{1}{\ln(k)}k^x \, dx$
</li>
<li> **$\displaystyle \int a^x \, dx$ </li>
<li> $\displaystyle \int 1.3^x \, dx$ </li>
<li> $\displaystyle \int x2^{x^2} \, dx$ </li>
<li> $\displaystyle \int 7^{\cos(t)}\sin(t) \, dt$ </li>
<li> $\displaystyle \int \frac{{(\frac{1}{3}})^{\tan(t)}}{\cos^2(t)} \, dt$
</li>
<li> **$\displaystyle \int \frac{1}{x} \, dx$ </li>
<li> $\displaystyle \int \frac{1}{2x}\, dx$ </li>
<li> $\displaystyle \int \frac{1}{x + 4}\, dx$ </li>
<li> $\displaystyle \int \frac{1}{x - 2}\, dx$ </li>
<li> $\displaystyle \int \frac{1}{3x + 8}\, dx$ </li>
<li> $\displaystyle \int \frac{1}{3x - 2}\, dx$ </li>
<li> $\displaystyle \int \frac{2x}{x^2 - 25}\, dx$ </li>
<li> $\displaystyle \int \frac{8x}{4x^2 - 5}\, dx$ </li>
<li> $\displaystyle \int \frac{4\sin(\theta)}{1 - 4\cos(\theta)}\, d\theta$
</li>
<li>  **$\displaystyle \int   \frac{f'(x)}{f(x)} \, dx$ </li>
<li> $\displaystyle \int \frac{-\sin(\theta)}{\cos(\theta) - 2}\, d\theta$ </li>
<li> $\displaystyle \int \frac{\sin(\theta)}{\cos(\theta)}\, d\theta$
</li>
<li>  ** $\displaystyle \int \tan(\theta) d\theta$ </li>
<li> $\displaystyle \int \tan\left(\frac{\pi t}{2}\right) dt$ </li>
<li> $\displaystyle \int \frac{5}{x}(8 + \ln(x))^4\, dx$ </li>
<li> $\displaystyle \int   19\frac{3x^2 + 2}{x}(x^3 + 2x + \ln(x))^{18}\, dx$ </li>
<li> $\displaystyle \int   \frac{1}{x}f'(\ln(x))\,dx$ </li>
<li> $\displaystyle \int f'[(\, \ln(\, g(x)\,)\,]\frac{g'(x)}{g(x)} \, dx$ </li>
<li>  $\displaystyle \int \frac{1}{x}\cdot 2 \cdot \left(\ln(x)\right)^1\,dx$</li>
<li> $\displaystyle \int   \frac{\ln(x)}{x}\, dx$ </li>
<li> $\displaystyle \int   \frac{\ln(x)}{3x}\, dx$ </li>
<li> $\displaystyle \int   \frac{4}{x(\ln(x))^2}\, dx$ </li>
<li> $\displaystyle \int  \frac{(\ln(x))^2}{7x}\, dx$ </li>
<li> $\displaystyle \int  \frac{(\ln(x))^{2/3}}{x}\, dx$
</li>
<li>  $\displaystyle \int \frac{\log_7(x)}{\ln(7)}\,dx$</li>
<li>  $\displaystyle \int \frac{\log_k(x)}{\ln(k)}\,dx$</li>
<li>  ** $\displaystyle \int \log_k(x)\,dx$</li>
<li>  $\displaystyle \int   \frac{e^r}{1 + e^r} \, dr$ </li>
<li> $\displaystyle \int  \frac{\log_7(x)}{x} \, dx$
</li>
<li>  $\displaystyle \int   \frac{\log_k(x)}{x} \, dx$ </li>
<li> $\displaystyle \int xe^{x} \, dx$ </li>
<li> $\displaystyle \int \ln(x) \, dx$ </li>
</ol>
</div>

<hr class="integral-hr" />

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems spaced-antiderivatives'>
<li>  $\displaystyle \int 1 + 2x + 3x^2 + 4x^3 \, dx$ </li>
<li> $\displaystyle \int x^3 + 4x^7 - 2x^4 + 6 \, dx$ </li>
<li> $\displaystyle \int ax^n + x^n + 3x^b - g \, dx$ </li>
<li> $\displaystyle \int 1/2 \cdot x^{-1/2} + 1/3 \cdot x^{-2/3} + 1/12 \cdot x^{-11/12} \, dx$ </li>
<li> $\displaystyle \int x^{4/5} - x^{3/4} + x^{-1/3} + 5x^{2/7} \, dx$ </li>
<li> $\displaystyle \int \sqrt[5]{x^4} - \sqrt[4]{3} + \frac{1}{\sqrt[3]{x}} + 5\sqrt[7]{x^2} \, dx$ </li>
<li> $\displaystyle \int g'(x) \cdot f'(\, g(x) \,)  \, dx$ </li>
<li> $\displaystyle \int 3x^2\cdot8(x^3 + 5)^7 \, dx$ </li>
<li> $\displaystyle \int \cos(x) \cdot 4(\, \sin(x) + 3)^3 \, dx$ </li>
<li> $\displaystyle \int (3x^2 + 8x^7 - 1) \cdot 26(x^3 + x^8 - x)^{25} \, dx$ </li>
<li> $\displaystyle \int (5x^4 - 9x^2 - 720x^{79})(x^5 - 3x^3 - 9x^{80})^{11} \, dx$ </li>
<li> $\displaystyle \int 3(\cos(x) + 10x^9)(\sin(x) + x^{10})^4 \, dx$ </li>
<li> $\displaystyle \int (2x + 5)(x^2 + 5x)^7 \, dx$ </li>
<li> $\displaystyle \int (3 - x)^{10} \, dx$ </li>
<li> $\displaystyle \int -2x\sqrt{4 - x^2} \, dx$ </li>
<li> $\displaystyle \int \sqrt{7x + 9} \, dx$ </li>
<li> $\displaystyle \int \frac{x^3}{(1 + x^4)^{1/3}} \, dx$ </li>
<li> $\displaystyle \int e^{5x + 2} \, dx$ </li>
<li> $\displaystyle \int 4\cos(3x) \, dx$ </li>
<li> $\displaystyle \int \frac{\sin(\ln(x)\,)}{x}s \, dx$ </li>
<li> $\displaystyle \int \frac{3x + 6}{x^2 + 4x - 3} \, dx$ </li>
<li> $\displaystyle \int x 3^{x^2 + 1} \, dx$ </li>
<li> $\displaystyle \int x^2e^{-4x^3} \, dx$ </li>
<li> $\displaystyle \int (\cos(x)\,)^3\sin(x) \, dx$ </li>
<li> $\displaystyle \int x^3\cos(5x^4) \, dx$ </li>
<li> $\displaystyle \int (3x + 4)^{100} \, dx$ </li>
<li> $\displaystyle \int \frac{\cos(x)}{1 + \sin^2(x)} \, dx$ </li>
<li> $\displaystyle \int \frac{(2 - \sqrt{x})^5}{\sqrt{x}} \, dx$ </li>
<li> $\displaystyle \int \frac{1}{\cos^2(2x - 3)} \, dx$ </li>
<li> $\displaystyle \int \frac{x^{n-1}}{\sqrt{a + bx^n}} \, dx$ </li>
<li> $\displaystyle \int x^3(x^2 + 1)^{1/8} \, dx$ </li>
<li> $\displaystyle \int e^x e^x \, dx$ </li>
<li> $\displaystyle \int \frac{\ln(ax)}{x} \, dx$ </li>
</ol>
</div>

<hr class="integral-hr" />

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems spaced-antiderivatives'>
<li>  $\displaystyle \int 325 + 4x^8 + 9x^34 + 7x^6 - \frac{3}{4}x^5 - 3 \, dx$  </li>
<li> $\displaystyle \int \sqrt[3]{x} - \frac{2}{x^2} + 5x^{3/2} - \frac{1}{\sqrt{4x}} + \frac{1}{5} \, dx$  </li>
<li> $\displaystyle \int \frac{1}{x} + \frac{1}{x^2} + \frac{1}{x^3} + \frac{1}{x^4} + \frac{1}{x^n} \, dx$  </li>
<li> $\displaystyle \int g'(x) \cdot f'(\, g(x) \,)  \, dx$  </li>
<li> $\displaystyle \int (5x^4 + 12x^{11})\cdot37(x^5 + x^{12})^{36}\, dx$  </li>
<li> $\displaystyle \int (3x^2 + 16x)\cdot \frac{1}{x^3 + 8x^2 + 56} \, dx$  </li>
<li> $\displaystyle \int \cos(x + 3) \cdot 4(\, \sin(x + 3) \,)^{3} \, dx$  </li>
<li> $\displaystyle \int (2x + 2) \cdot e^{x^2 + 2x + 3} \, dx$  </li>
<li> $\displaystyle \int \frac{3x^2 + 3}{x^3 + 3x} \, dx$  </li>
<li> $\displaystyle \int  (3x^2 + 8x^7 -1)\cdot 26(x^3 + x^8 - x)^{25} \, dx$  </li>
<li> $\displaystyle \int \frac{\sin(\ln(ax))}{x} \, dx$  </li>
<li> $\displaystyle \int (x^4 + 2x^9)\sin(x^5 + x^{10})\cos(x^5 + x^{10}) \, dx$  </li>
<li> $\displaystyle \int \frac{2\sin(x) + 4x}{\cos(x) + x^2} \, dx$  </li>
<li> $\displaystyle \int (x + 5)^{22} \, dx$  </li>
<li> $\displaystyle \int (7x^6 + 20x^3)(x^7 + 5x^4)^{3/4} \, dx$  </li>
<li> $\displaystyle \int e^{-x^2}\, dx$ </li>
</ol>
</div>

<hr class="integral-hr" />

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems spaced-antiderivatives'>
<li> $\displaystyle \int 2x\cos(x) \, dx$  </li>
<li> $\displaystyle \int xe^x \, dx$  </li>
<li> $\displaystyle \int 2x\ln(x) \, dx$  </li>
<li> $\displaystyle \int f'(x)g(x) \, dx$  </li>
<li> $\displaystyle \int x^2e^x \, dx$  </li>
<li> $\displaystyle \int \ln(x) \, dx$  </li>
<li> $\displaystyle \int 1\cdot\ln(x) \, dx$  </li>
<li> $\displaystyle \int x^5\sin(x) \, dx$  </li>
<li> $\displaystyle \int e^x\cos(x) \,  dx$  </li>
</ol>
</div>
