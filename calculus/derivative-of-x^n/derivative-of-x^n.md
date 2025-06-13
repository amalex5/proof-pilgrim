---
title: the derivative of $x^n$ is $nx^{n-1}$
usemathjax: true
layout: post
---



We've taken lots of derivatives. We've started to notice a pattern. Visually, we've seen that the slope of a polynomial appears to be one degree less than the polynomial itself. Algebraically, we've done tedious calculations with Fermat's Difference Quotient, and have figured out:
$$\frac{d}{dx}\left(x^2\right) = 2x \hspace{2cm} \frac{d}{dx}\left(x^3\right) = 3x^2 \hspace{2cm} \frac{d}{dx}\left(x^4\right) = 4x^3 \hspace{2cm}\text{etc.}$$
Is this pattern more than just a coincidence? Is it true, in the general case, that for any value of $n$:
$$ \frac{d}{dx}\left(x^n\right) \,\overset{???}{=}\,   nx^{n-1}$$
If this is true, it'd make our lives a lot easier. We wouldn't have to go through that unpleasant Fermat's Difference Quotient rigamarole every time we want to take a derivative---we could just apply this formula. But is it true? *We need to prove it.*

To prove it, we'd need to expand $(x+h)^n$, for any/every $n$. That's a little weird. How do we multiply something out not $2$, $3$, $4$, or some specific number of times, but $n$ times? That's the crux. The key is to use this idea called the **binomial theorem** (and relatedly, **Pascal's Triangle**), which gives us a formula for all the terms of something like that:
$$(a+b)^n \,=\, \sum_{k=0}^{k=n}{n\choose {n-k}}a^{n-k}b^{k} $$
In this case, instead of $a$ and $b$, we have $x$ and $h$. And to actually work things out, we have to break up the sum a bit, and extract the $k=0$ and $k=1$ terms. (You might remember that we did stuff like this in the fall when we were talking about infinite series. Likewise, hopefully you remember the binomial theorem from Math 2!)

I want to explain this proof in three ways, of increasing rigor. (Like doing three different attempts at a painting, and with the painting getting better each time!)

1.  First, let's quickly run through calculating the derivatives of $x^2$ through $x^5$, doing every step simultaneously, so we can see what's the same and what's different about doing it for each power.
2. Then, let's try to generalize to the derivative of $x^n$ in a hand-wavey sort of way.
3. Finally, let's do the full formal rigorous proof, using the binomial theorem. 

My hope is that this way we can *understand* what's going on. The big scary binomial theorem will then just be a formalization of our existing understanding and intuition. As always in math, our goal is *understanding*---not mindless symbol-manipulation.


## Way \#1: A bunch of specific examples, color-coded

Let's calculate the derivatives of $x^2$ through $x^5$. If we plug $x^2$, $x^3$, $x^4$, and $x^5$ into Fermat's Difference Quotient, we get:
$$\frac{\left(x+h\right)^2 - x^2}{h}$$
$$\frac{\left(  x+h\right)^3 - x^3}{h}$$
$$\frac{\left(x+h\right)^4 - x^4}{h}$$
$$\frac{\left( x+h\right)^5 - x^5}{h}$$
Then we can expand the $(x+h)^n$. I'll add some colors to help distinguish similar parts, and help make the changes from line to line clearer. If we expand those powers---and I'm definitely not showing all the work---we get:
$$\frac{\left( x^2 + {\color{blue}2xh} {\color{red} + h^2}\right) - x^2}{h}$$
$$\frac{\left(  x^3 + {\color{blue}3x^2h} {\color{red}+ 3xh^2 + h^3}\right) - x^3}{h}$$
$$\frac{\left( x^4 + {\color{blue}4x^3h }{\color{red}+ 6x^2h^2 + 4xh^3 + h^4}\right) - x^4}{h}$$
$$\frac{\left( x^5 + {\color{blue}5x^4h }{\color{red}+ 10x^3h^2 + 10x^2h^3 + 5xh^4 + h^5}\right) - x^5}{h}$$
So I'm coloring the highest power of $x$, $x^n$, in black, the next-highest power, $x^{n-1}$, in blue, and all the smaller powers in red. Then we can cancel out the $+x^n$ and the $-x^n$:
$$\frac{\left( \cancel{x^2} + {\color{blue}2xh} {\color{red} + h^2}\right) - \cancel{x^2}}{h}$$
$$\frac{\left(  \cancel{x^3} + {\color{blue}3x^2h} {\color{red}+ 3xh^2 + h^3}\right) - \cancel{x^3}}{h}$$
$$\frac{\left( \cancel{x^4} + {\color{blue}4x^3h }{\color{red}+ 6x^2h^2 + 4xh^3 + h^4}\right) - \cancel{x^4}}{h}$$
$$\frac{\left( \cancel{x^5} + {\color{blue}5x^4h }{\color{red}+ 10x^3h^2 + 10x^2h^3 + 5xh^4 + h^5}\right) - \cancel{x^5}}{h}$$
So we get:
$$\frac{ {\color{blue}2xh} {\color{red} + h^2} }{h}$$
$$\frac{ {\color{blue}3x^2h} {\color{red}+ 3xh^2 + h^3} }{h}$$
$$\frac{ {\color{blue}4x^3h }{\color{red}+ 6x^2h^2 + 4xh^3 + h^4} }{h}$$
$$\frac{ {\color{blue}5x^4h }{\color{red}+ 10x^3h^2 + 10x^2h^3 + 5xh^4 + h^5} }{h}$$
Then we can divide the $h$'s:
$$\frac{ {\color{blue}2x\cancel{h}} {\color{red} + \cancel{h}^2} }{\cancel{h}}$$
$$\frac{ {\color{blue}3x^2\cancel{h}} {\color{red}+ 3x\cancel{h}^2 + \cancel{h}^3} }{\cancel{h}}$$
$$\frac{ {\color{blue}4x^3\cancel{h} }{\color{red}+ 6x^2\cancel{h}^2 + 4x\cancel{h}^3 + \cancel{h}^4} }{\cancel{h}}$$
$$\frac{ {\color{blue}5x^4\cancel{h} }{\color{red}+ 10x^3\cancel{h}^2 + 10x^2\cancel{h}^3 + 5x\cancel{h}^4 + \cancel{h}^5 }}{\cancel{h}}$$
So we get:
$$ {\color{blue}2x} {\color{red} + h} $$
$$ {\color{blue}3x^2} {\color{red}+ 3xh + h^2} $$
$$ {\color{blue}4x^3 }{\color{red}+ 6x^2h + 4xh^2 + h^3} $$
$${\color{blue}5x^4 }{\color{red}+ 10x^3h + 10x^2h^2 + 5xh^3 +h^4 } $$
And then, if we make $h$ go to zero, we can just get:
$${\color{blue}2x}$$
$$ {\color{blue}3x^2}  $$
$$ {\color{blue}4x^3 } $$
$${\color{blue}5x^4 } $$
So, that's how we find the derivative/slope of $x^2$, $x^3$, $x^4$, and $x^5$, respectively. 
\begin{align*}
\left(x^2\right)' &= {\color{blue}2x} \\
\left(x^3\right)' &= {\color{blue}3x^2}  \\
\left(x^4\right)' &= {\color{blue}4x^3 } \\
\left(x^5\right)' &= {\color{blue}5x^4 } 
\end{align*}

## Way \#2: Somewhat generalized, but still hand-wavey

The thing is, these are just four examples. If we want to prove that this formula is true for *all* $n$, we can't just do a bunch of examples. We have to actually calculate the derivative of $x^n$!

So in general, if we plug $x^n$ into Fermat's Difference Quotient, we get:
$$\frac{(x+h)^n-x^n}{h}$$
Then if we expand $(x+h)^n$, we get something like:
$$\frac{\left(x^n \,+\, {\color{blue}nx^{n-1}h} \,+\, \left({\color{red}\substack{\text{a bunch of cross terms}\\\text{with $x$'s and $h$'s}}}\right)\,\right) -x^n}{h}$$
We could use the binomial theorem to actually find out what those cross terms are, but those are the terms that have an $h$ in them and will eventually all just go to $0$, so we'll leave them like that. Note that I'm deliberately keeping the same color-coding, in case you want to compare to the previous iteration of this proof.

Canceling out the $x^n$s, we have:
$$\frac{\cancel{x^n} + {\color{blue}nx^{n-1}h} + {\color{red} \text{ (a bunch of cross terms with $x$'s and $h$'s)}} -\cancel{x^n}}{h}$$
$$\frac{ {\color{blue}nx^{n-1}h} + {\color{red} \text{ (a bunch of cross terms with $x$'s and $h$'s)}}}{h}$$
Dividing through the $h$:
$$\frac{ {\color{blue}nx^{n-1}\cancel{h}} + {\color{red} \text{ (a bunch of cross terms with $x$'s and $\cancel{h}$'s)} }}{\cancel{h}}$$
$$ {\color{blue}nx^{n-1}} + {\color{red} \text{ (a bunch of cross terms with $x$'s and $h$'s, but with the $h$ power down by $1$) }} $$
So then as $h$ goes to $0$, this just turns into:
$$ {\color{blue}nx^{n-1}}$$
Hooray! We've gotten to $nx^{n-1}$! 


## Way \#3: The big serious proof, with lots of scary symbols

Okay, let's do this for real! Let's do the same proof we just did---but instead of hand-waving and including things like "a bunch of cross terms with $x$'s and $h$'s," let's do it really formally. 

What, exactly, are those "cross terms with $x$'s and $h$'s"? Using the **binomial theorem**, we can figure them out! You may remember learning it last year when you studied combinatorics in Math 2. The binomial theorem tells us how to combine things:
$$(a+b)^n \,=\, \sum_{k=0}^{k=n}{n\choose {n-k}}a^{n-k}b^{k} $$
So, if instead of $a$ and $b$, we have $x$ and $h$, this becomes:
$$(x+h)^n = \sum_{k=0}^{k=n}{n\choose {n-k}}x^{n-k}h^{k}$$
Now, this looks very scary. There's a giant Greek letter in the middle of the page. But it's not scary. All we're going to do in this proof is do *the same thing* we did to find the derivatives of $x^2$, $x^3$, $x^4$, and $x^5$. The only difference is that we're going to use a slightly fancier tool---a giant $\Sigma$ rather than normal arithmetic.

It is the difference between using a hammer to crush a small stone, and using a jackhammer to tear apart asphalt. The jackhammer looks huge and expensive and scary, and it runs on gasoline, not adenosine triphosphate, and you have to borrow it from your cousin in the demolition business. But in principle, it is no different than the hammer. It operates by exactly the same mechanism: hitting things with a blunt object. It is the same with the binomial theorem: it looks different, but it's really just the same thing. There are some extra things we need to do as a result of its presence (get a permit, fill it with gas, put on safety glasses, etc.) but the core idea of the proof is identical. We are going to expand $(x+h)^n$, simplify it, cancel $x$'s and $h$'s out, and then send $h$ to zero. 

So, let's start. If we plug $x^n$ into Fermat's Difference Quotient, we get:
$$\frac{ \left( x+h \right)^n - x^n}{h}$$
Then if we expand $(x+h)^n$ using the binomial theorem, we get:
$$\frac{ \left( \sum\limits_{k=0}^{k=n}{n\choose {n-k}}x^{n-k}h^{k} \right) - x^n}{h}$$
We want to do the same thing we've done in the previous versions of the proof. We want to have the $+x^n$ cancel out with the $-x^n$.  But we don't have an $+x^n$ here. We just have this big giant scary binomial theorem. Yet, within that big giant scary binomial theorem is contained a $+x^n$! It's the first term,  i.e., the $k=0$ term. We'll have to extract it so that we can see it. We have:
$$\frac{ \left( \overbrace{\sum\limits_{k=0}^{k=n}{n\choose {n-k}}x^{n-k}h^{k} }^{\text{the terms from $k=0$ to $k=n$}}\right) - x^n}{h}$$
Pulling out the $k=0$ term, we get:
$$\frac{ \left( \overbrace{{n\choose {n-0}}x^{n-0}h^{0} }^{\text{the $k=0$ term}} \,\,+ \overbrace{ \sum\limits_{k=1}^{k=n}{n\choose {n-k}}x^{n-k}h^{k} }^{\text{the terms from $k=1$ to $k=n$}}\right) - x^n}{h}$$
Simplifying this a bit, we have:
$$\frac{ \overbrace{{n\choose {n}}x^{n} }^{\text{the $k=0$ term}} \,\,+ \overbrace{\sum\limits_{k=1}^{k=n}{n\choose {n-k}}x^{n-k}h^{k} }^{\text{the terms from $k=1$ to $k=n$}} \quad-\quad x^n}{h}$$
What's $n\choose n$? It's just the number of ways to select $n$ things from a set of $n$ things. There's only one way! So this becomes:
$$\frac{ x^{n} \,\,+ \overbrace{\sum\limits_{k=1}^{k=n}{n\choose {n-k}}x^{n-k}h^{k} }^{\text{the terms from $k=1$ to $k=n$}} \quad-\quad x^n}{h}$$
Yay! There's our $x^n$. Before we cancel it out with the $-x^n$, let's pull out the $nx^{n-1}$ term, too. That's the term that we ultimately want to be the last thing standing at the end of the proof---that's the derivative. The $nx^{n-1}$ will come out of the $k=1$ term, so let's pull that out. And then we can color things the same way we were coloring them before! (I attempted to use blue and gold, the California state color scheme, but the gold/yellow was completely illegible.) If we extract the $k=1$ term from the sum, we have:
$$\displaystyle \frac{ \overbrace{x^{n}}^{\text{the $k=0$ term}} + \overbrace{ {\color{blue} {n\choose {n-1}}x^{n-1}h^{1}} }^{\text{the $k=1$ term}} \,\,+ \overbrace{ {\color{red} \sum\limits_{k=2}^{k=n}{n\choose {n-k}}x^{n-k}h^{k} } }^{\text{the terms from $k=2$ to $k=n$}} \quad-\quad x^n}{h}$$
Just to summarize what we have so far:
$$\frac{ \overbrace{\left( x^{n} +  {\color{blue} {n\choose {n-1}}x^{n-1}h^{1}}  \,\,+  {\color{red} \sum\limits_{k=2}^{k=n}{n\choose {n-k}}x^{n-k}h^{k} } \right)}^{=(x+h)^n\text{, but expanded}}\quad-\quad x^n}{h}$$
Let's simplify this a bit. $h^1$ is just $h$. What about ${n\choose {n-1}}$? That's just the number of ways we can pick $n-1$ things from a set of $n$ things. There are $n$ ways we systematically exclude each thing. So this becomes:
$$\frac{ x^{n} + {\color{blue} nx^{n-1}h } \,\,+ \overbrace{ {\color{red}  \sum\limits_{k=2}^{k=n}{n\choose {n-k}}x^{n-k}h^{k} } }^{\text{the terms from $k=2$ to $k=n$}} - x^n}{h}$$
Yay, there's $nx^{n-1}$!!! Now we can cancel out the $+x^n$ and the $-x^n$:
$$\frac{ \cancel{x^{n}} + {\color{blue} nx^{n-1}h} \,\,+{\color{red} \sum\limits_{k=2}^{k=n}{n\choose {n-k}}x^{n-k}h^{k} }- \cancel{x^n}}{h}$$
$$\frac{ {\color{blue} nx^{n-1}h} \,\,+{\color{red} \sum\limits_{k=2}^{k=n}{n\choose {n-k}}x^{n-k}h^{k} } } {h}$$
And we can divide through the $h$:
$$\frac{ {\color{blue} nx^{n-1}\cancel{h}} \,\,+{\color{red} \sum\limits_{k=2}^{k=n}{n\choose {n-k}}x^{n-k}\cancel{h}^{k} } } {\cancel{h}}$$
$$ {\color{blue} nx^{n-1} } \,\,+{\color{red} \sum\limits_{k=2}^{k=n}{n\choose {n-k}}x^{n-k}h^{k-1} }  $$
What happens as $h$ goes to $0$? Well, there's no $h$ in $nx^{n-1}$, so that doesn't change. But there's always an $h$ in that big sum. We have $h^{k-1}$, and $k$ starts at $2$, so there's always at least one $h$. So this becomes:
$$ {\color{blue} nx^{n-1} } \,\,+\underbrace{{\color{red} \sum\limits_{k=2}^{k=n}{n\choose {n-k}}x^{n-k}0^{k-1} }}_{\text{so all this $=0$}}  $$
So we have just:
$$ {\color{blue} nx^{n-1} } $$
Yes! That's it! We've proven it!!!!
$$\boxed{\Large \,\, \left(x^n\right)' = nx^{n-1} \,\, }$$
So, there we have it. This is a long proof! It requires a lot of familiarity and flexibility with iterated sums, as well as familiarity with the binomial theorem.


## Problem

OK, by "problem" here I mean both "a problem for you to do," *and* "a problem with the proof we just did!"

Here's the issue. To be pedantic, we didn't calculate the derivative of $x^n$ for $n$ being any real number. We didn't discuss what kind of number $n$ was. Was $n$ real? Was it an integer? Was it rational? Imaginary? We just blazed through that part. (**Implicit typing**, the computer scientists would say.) imaginary, integer, rational---we just, like, blazed through it. 

Thinking about what we did with more nuance, we only proved that $\left(x^n\right)' = nx^{n-1}$ when $n$ is some positive integer. That's because we used the binomial theorem. The binomial theorem is only true for positive integers. It's a theorem about *counting* and *combinations*---it's a theorem about *positive integers*. But actually, we'd like to prove this for $n$ being also a negative integer (what's the derivative of $x^{-1}$, i.e. $1/x$?) or $n$ being a fraction (what's the derivative of $x^{1/2}$, i.e. $\sqrt{x}$?), or even for $n$ being an irrational number (what's the derivative of $x^\pi$?). 

This theorem *is* true for $n$ being any real number. But actually proving that is tough. There's a really pretty, and extremely simple proof that proves this for any real number---but it involves the derivatives of logarithms of exponentials, and we definitely don't know how to do that yet!

However, we *can* at least prove it right now, for *negative* integers. Perhaps we can generalize our binomial-theorem-based proof to negative values of $n$?

Imagine that we want to prove this:
$$\displaystyle\frac{d}{dx}\left( x^n\right) = nx^{n-1},\quad\quad \text{ for negative integer $n$}$$ 
This is the same as proving:
$$\displaystyle\frac{d}{dx}\left(\frac{1}{x^n}\right) = \frac{-n}{x^{n+1}} = -nx^{-n-1},\quad\quad \text{ for positive integer $n$}$$
And that seems like something we might know how to do! If $n$ is now a positive integer, we can use the binomial theorem. So, by the definition of a derivative, the derivative of $1/x^n$ is:
$$\displaystyle\frac{d}{dx}\left(\frac{1}{x^n}\right) =  \frac{\,\,\frac{1}{(x+h)^n} - \frac{1}{x^n}\,\,}{h}$$
which, plugging in the binomial theorem, is
$$\large =\quad \displaystyle\frac{\quad\quad \displaystyle\frac{1}{\quad \displaystyle\sum_{k=0}^{k=n}  {n \choose n-k}x^{n-k}h^{k}\quad} \,\,-\,\, \displaystyle\frac{1}{\quad x^n\quad} \quad\quad }{\huge h}$$
Can you keep going, and finish this proof??? It'll get messy---*fractions*, man---but you can do it!

When your relatives ask during Thanksgiving dinner what you're doing in school ("What grade are you in now? 9th?"), you can pause for a moment, as if to wonder how to explain your work to the laity, and then say, "I'm trying to use the binomial theorem to differentiate $x^n$ for negative $n$." And you will sound like a graduate-student-in-the-making.

If you do write it up, please take the time to write it up *nicely*---don't hand in a paper full of scratch work. Use sentences, explain your methodology, and justify each of your steps in both English prose and in mathematical symbols.