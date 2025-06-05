---
title:  Can you find all the possible solutions to this equation?
usemathjax: true
layout: post
---


$$\Huge a^{1+\log_{10}(a)} = 100$$

<div style='height:3em'></div>

When I ran this as a test question in Fall 2019, perhaps a third to half of the 50ish kids managed to figure out one of the solutions. Of those who did, nearly all of them found it by some variant on guess-and-check. Only one (two?) people found *both* solutions. These are my notes on the problem!

So. If we stare at this equation for long enough, and test random numbers, or semi-random numbers, we might realize that $a=10$ works as a solution. We can verify it works by plugging it in:
\begin{align*}
&a^{1+\log_{10}(a)} \\
&=10^{1+\log_{10}(10)} \\
&=10^{1+1} \\
&=10^{2} \\
&=100
\end{align*}
So, indeed, $a=10$ is one solution to this equation. But there are two problems here. **First of all**, the "stare at it" method is not a great one. I mean, sometimes it works, and apparently it worked for a lot of people in this case. If you don't have any better ideas, then by all means, stare at it and test random numbers. Guess and check all you want! Appeal to the mathematical muses---to their benevolence, and to their charity! Sometimes the gods of mathematics are generous, and will bequeath us with an answer. And for many of the kids, that worked in this case.

HOWEVER, we DON'T want to have to rely on the benevolence and charity of the gods. They are fickle. Sometimes they give, and sometimes they take away. We want to be Nietzscheans here---we want to make an end-run around the gods! We'd like to have some sort of *procedure* and *system* and *algorithm* for solving problems. We'd like to have a *set of rules* that *always works*. 

It's sort of like how when we factor quadratic equations, sometimes it's fine to just, like, look at it and come up with a factorization:
\begin{align*}
x^2 + 9x + 14 &= (x \,+\, ???)(x \,+\,???) \\
&=\text{ hmmm hmmm hmmm}\\
&=\text{ A BLINDING INSIGHT FROM THE GODS!!!!}\\
&= (x+2)(x+7)
\end{align*}
But if the gods are ever parsimonious, we know that we have a MACHINE that will answer our prayers. We have a FORMULA that ALWAYS WORKS---the quadratic formula!
\begin{align*}
x^2 + 9x + 14 &= \left(x - \frac{-9 + \sqrt{9^2-4\cdot1\cdot14}}{2\cdot1}\right)\left(x- \frac{-9 - \sqrt{9^2-4\cdot1\cdot14}}{2\cdot1}\right) \\
&= \left(x - \frac{-9 + \sqrt{81-56}}{2}\right)\left(x- \frac{-9 - \sqrt{81-56}}{2}\right) \\
&= \left(x - \frac{-9 + \sqrt{25}}{2}\right)\left(x- \frac{-9 - \sqrt{25}}{2}\right) \\
&= \left(x - \frac{-9 + 5}{2}\right)\left(x- \frac{-9 -5}{2}\right) \\
&= \left(x - \frac{-4}{2}\right)\left(x- \frac{-14}{2}\right) \\
&= (x+2)(x+7)
\end{align*}
Thanks to the mightiness of the quadratic formula, we no longer have to rely on the benevolence and charity of the mathematical gods when trying to factor quadratics!!! We can factor them---ANY of them---with CERTAINTY---with CONFIDENCE---just using this machine. No need to hope that the gods are generous. **The gods are dead. We killed them.**

<div style='height:3em'></div>

Back to the problem at hand:
$$a^{1+\log_{10}(a)} = 100$$
We want to solve this problem in a *systematic* way. We'd prefer not to solve it via guess-and-check, or via the "stare at it really hard" method. We don't want to have to rely on the whims of the gods. We don't want to hope that the muse sings to us.

> *I have heard the mermaids singing, each to each.* 
>
> *I do not think they will sing to me.*

Relatedly, there's a **second problem** here. Namely: this equation actually has two solutions!!! The mathematical gods may have been kind enough to give us (or to give some of you) ONE of them---but only two of you found both solutions. 

So, is there a way we can solve this equation, that's systematic and procedural and algebraic, that doesn't require us to appeal to the mathematical gods, and which will beget both solutions? Can we use algebra and our knowledge of logarithms to solve this?

A lot of you *did* try to do this in an algebraic/systematic way, and that was great. Most of you who took such an approach started by taking the $\log_a$ of both sides. That was a great idea! It's systematic and algebraic. So, let's see what happens when we do that. We have:
$$a^{1+\log_{10}(a)} = 100$$
Taking the $\log_a$ of both sides, we get:
$$\log_a\left(a^{1+\log_{10}(a)}\right) = \log_a(100)$$
On the left side, the $\log_a$ and $a^\text{stuff}$ cancel out, so this becomes:
$$1+\log_{10}(a) = \log_a(100)$$
Hooray! The $a^\text{stuff}$ is gone. That's an accomplishment. It's why I assume most of you chose to take the $\log_a$. But we're not done---we want to solve this for $a$. As our next step, I guess we could move the $1$ over:
$$\log_{10}(a) = \log_a(100) - 1$$
And then raise both sides by $10$ to get rid of the $\log_{10}$:
$$10^{\log_{10}(a) }= 10^{\log_a(100) - 1}$$
$$a= 10^{\log_a(100) - 1}$$
So we have an equation for $a$... but $a$ is also on the right side. We haven't really solved for $a$. Aaaagh. How do we get rid of that $\log_a$ on the right side?!?? No clue. 

We wanted to make an end run around the gods. Instead we made an Enron around the gods^[I thank Zach Moss for inspiring this wordplay.]


<div style='height:3em'></div>

This method was a good attempt, but it doesn't lead us to the solution (to either solution). However, a lot of the thinking was right---we want to somehow solve this algebraically and systematically. Let's try it again. What if, instead of taking the $\log_a$, we take a DIFFERENT log? This is just stabbing in the dark here, but notice that this equation also involves a $\log_{10}$, so what if we use that? We start with:
$$a^{1+\log_{10}(a)} = 100$$
And then taking the $\log_{10}$ of both sides, we get:
$$\log_{10}\left(a^{1+\log_{10}(a)}\right) = \log_{10}(100)$$
On the right side, $\log_{10}(100)$ just becomes $2$:
$$\log_{10}\left(a^{1+\log_{10}(a)}\right) =2$$
On the left side, $\log_{10}$ and $a^\text{stuff}$ won't cancel out---the bases are different ($10$ and $a$), so they're not inverses. BUT!!! We have $a$ raised to a bunch of stuff. We can use that law about how an exponent inside ANY logarithm can move to the outside, as a coefficient!!!
$$\text{this law: }\log_a\left(b^c\right) = c\log_a(b)$$
Applying that, and pulling out the exponent on the $a$, we get:

$$\big(1+\log_{10}(a)\big) \cdot \log_{10}\left(a\right) =2$$
This doesn't seem THAT promising, but at least the $\log_{10}$'s are gone! Let's multiply this out:

$$ \log_{10}\left(a\right)  + \big(\log_{10}(a)\big)^2 =2$$
Re-arranging:
$$  \big(\log_{10}(a)\big)^2 +\log_{10}\left(a\right)  - 2 =0$$
What do we do with this? It looks complicated. So many details! 

Hmm. I have bad vision. I squint a lot. If I'm not wearing glasses, that line is all blurry, and just looks like:
$$(\text{SOMETHING})^2 + (\text{SOMETHING}) - 2 = 0$$
But... that's a quadratic! Beneath all the specific details, this is really just a quadratic! It's just:
$$x^2 + x - 2 = 0$$
The "$x$" in a quadratic can be anything. It can be a single variable/number, or it can be something more complicated! In this case, "$x$" is $\log_{10}(a)$. 

Here's part of the moral of the story here: *sometimes blurriness brings clarity.* Sometimes we need to step back and squint and see *fewer* details. Sometimes we miss the forest for the trees. If we're too obsessed with the details, we miss the big picture.

Anyway, can we solve this using the quadratic equation?!?!?!? Or, even easier, maybe we can just factor it by hand??!? It looks a lot like:
$$x^2 + x - 2 = 0$$
and we can factor that as:
$$(x-1)(x+2) = 0$$
But in this case, our "variable" isn't $x$; it's $\log_{10}(a)$. So really, we have:
$$\big( \log_{10}(a) - 1\big)\big( \log_{10}(a) +2\big) = 0$$
So we get two equations out of this:
$$\underbrace{\big( \log_{10}(a) -1\big)}_{ \log_{10}(a) -1 \,= \,0} \underbrace{\big( \log_{10}(a) +2\big)}_{\log_{10}(a) +2 \,=\, 0} = 0$$
Let's solve them! Let's do the left one first. We have:
$$\underbrace{\big( \log_{10}(a) -1\big)}_{ \substack{ \log_{10}(a) -1 \,= \,0 \\ \log_{10}(a) \,= \, 1 \\\\  10^{\log_{10}(a)} \,= \, 10^1 \\\\ a \,=\, 10^1 \\\\ a\,=\,10 }} \big( \log_{10}(a) +2\big) = 0$$
So we get that $a$ can be $10$! That's great---that's what we already found. It's some nice confirmation that this procedure works. We found that $a$ can be $10$, without having to rely on the benevolence of the gods! What about the other factor? Let's find out what that tells us. 
$$\big( \log_{10}(a) - 1\big) \underbrace{\big( \log_{10}(a) + 2\big)}_{\substack{\log_{10}(a) + 2 \,=\, 0 \\\\ \log_{10}(a) \,=\, -2 \\\\  10^{\log_{10}(a)} \,=\, 10^{-2} \\\\ a \,=\, 10^{-2}\\\\ a \,=\, \frac{1}{100} }} = 0$$
So $a$ can be $1/100$!!! That's the other, missing solution!!!

Let's check just to make sure it works. We'll plug $a=1/100=10^{-2}$ back into the original equation. We'll plug it back into the left side of the equation, and after some simplification, we should get the right side (i.e., $100$):
\begin{align*}
&a^{1+\log_{10}(a)} \\
&=\left(10^{-2}\right)^{1+\log_{10}\left(10^{-2}\right)} \\
&=\left(10^{-2}\right)^{1+(-2)} \\
&=\left(10^{-2}\right)^{-1} \\
&=10^{(-2)(-1)} \\
&=10^{2} \\
&=100
\end{align*}
We get $100$, which is the right side of the equation, which is what we wanted. So $a=\frac{1}{100}$ does indeed work as another solution!

<div class='callout-box'>
$$ a^{1+\log_{10}(a)} = 100$$
$$\text{begets}$$
$$a = \Bigg\{10, \, \frac{1}{100}\Bigg\}$$
</div>

<div style='height:3em'></div>

There are **two big ideas** here:

<ul>
<li> **First**, we can have **logarithms trapped inside quadratics**!!! All the equations we've seen with logs so far have been **linear**, meaning there's been no exponent on the logarithm term (or, put more precisely, the exponent has been an invisible $1$). But, as my friend Veronica says, the $x$ in a quadratic can be anything---even a logarithm! 

Here's another fun quadratic equation with logs\footnote{basically stolen from  \url{https://www.priklady.eu/en/mathematics/logarithmic-equations/quadratic-logarithmic-equations.alej}}. Can you solve it???
$$1+\log_2\left(x^3\right) = \frac{20}{\log_2\left(x^2\right)}$$
Why stop at a quadratic??? Could you make up a cubic equation with logs??? A quartic? A quintic? Or even, like, this bad boy, which I just wrote^[AN ANDREW ALEXANDER ORIGINAL!!!] ^[I should probably acknowledge here that the original problem that these notes are about I found by doing a Google image search for "hard logs problems" as I was writing that test.], and which I'm very pleased with:

 $$ \log_5(x) = \frac{ \quad\frac{28}{\log_5(x)} + 4\quad}{\log_5(x)} - 7$$
 </li>

<li> **Second**, following David Hilbert (a contemporary of Nietzsche, more-or-less), we must **kill the mathematical gods**. We cannot rely on them. We must replace them with machines---machines we create and we control. Only then will we achieve our goal---to have total power over mathematics.^[In case the irony is not overwhelmingly clear, I am very much a Platonist, and not a Nietzschean.] </li>
</ol>
