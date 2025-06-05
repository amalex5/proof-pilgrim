---
title: Dffrntn Shrtcts
usemathjax: true
layout: post
---


We've been calculating slopes. Or, to use a fancier word, we've been taking derivatives. What do we know about how these creatures behave?

For starters, we know Fermat's difference quotient:

$$\text{the derivative of the function } f(x) \text{ is } \quad \lim_{h \rightarrow 0} \frac{f(x+h)-f(x)}{h}$$


That's how we came up with this algebraic idea of a slope/derivative in the first place. *Everything else we know about derivatives comes out of this equation*. Fermat's difference quotient is the burning oil rig from which the unrefined petroleum that is our knowledge of derivatives gushes forth, billions of barrels per second, about to spontaneously ignite and cause awful smoke that will lower global surface temperatures by a fraction of a degree for the next year, because as Plutarch reminds us, "the mind is not a vessel to be filled; it is a fire to be lighted."

Anyway, what else? We spent a long time proving that the derivative of $x^n$ is $nx^{n-1}$: 

$$\text{in Leibniz notation: } \frac{d}{dx}\left[ x^n \right] = nx^{n-1}$$

$$\text{or, in Lagrange notation: } \left(x^n\right)' = nx^{n-1}$$

So, for example, if we want to find the derivative of $x^{12}$, we *could* use Fermat's difference quotient:

$$\frac{d}{dx}\left(x^{12}\right) = \lim_{h \rightarrow 0} \frac{(x+h)^{12}-x^{12}}{h}$$

But then we'd have to spend all weekend multiplying out $(x+h)^{12}$, and that's simply drudgery. It's not interesting. It doesn't require actual *thinking*. It's boring! It's tedious! Far better to simply use the shortcut we proved, and find in a few moments that the derivative is just:

$$\frac{d}{dx}\left[x^{12} \right] = 12x^{11}$$

This isn't cheating! It is a real shortcut! We proved it! It comes out of the definition of the derivative! It *is* Fermat's difference quotient, but just applied to a specific situation (that of $x^n$) and cleaned up a bit. Analogously, you *could* walk from here to Boston in order to hang out with your friend in Cambridge, but why spend months doing that when you could simply fly?^[For perfectly good reasons to do that, see, e.g., *The Places in Between*, *The Roads to Sata*, or any number of other books about long-distance walking.] You'd achieve your objective much quicker.

We know some other shortcuts, too. What if we want to take the derivative of, say, $5x^2$? We can't use our $x^n$ law (at least not directly), because this *doesn't* look like $x^n$. There's that $5$ in the way. However, we also proved that we can pull constants out of a derivative:

$$\text{in Leibniz notation: } \frac{d}{dx}\Big[ k \cdot f(x) \Big] = k\cdot \frac{df}{dx}$$

$$\text{or, in Lagrange notation: } \Big(k\cdot f(x)\Big)' = k\cdot f'(x)$$

So we can use both of these laws together to take the derivative of $5x^2$. First we'll use our constant multiple rule:
\begin{align*}
\frac{d}{dx}\!\left[5x^2\right] &= 5\cdot \frac{d}{dx}\!\left[x^2\right] 
\end{align*}

And THEN---with the $5$ out of the way---then we can use our $x^n$ rule:
\begin{align*}
 &= 5\cdot 2x \\
 & = 10x
 \end{align*}

What if we want to find the derivative of, say $x^{12} + x^5$? Again, we don't want  to have to write it as $\displaystyle \lim_{h\rightarrow 0} \frac{\left( (x+h)^{12} + (x+h)^5\right) - \left(x^{12}+x^5\right)}{h}$ and simplify, because that would be truly awful. Thankfully, we also proved that we can split derivatives up along addition. Thus, if we want to find the derivative of $x^{12} + x^5$, it's sufficient to find the derivatives of $x^{12}$ and $x^5$ individually, and then add them:

\begin{align*}
\frac{d}{dx}\Big(x^{12} + x^5\Big) &= \frac{d}{dx}\Big(x^{12}\Big) + \frac{d}{dx}\Big(x^5\Big) \\ \\
& = 12x^{11} + 5x^4
\end{align*}

More generally, we have this rule:

\begin{align*}
\text{in Leibniz notation: }  \frac{d}{dx}\Big[ f(x) + g(x) \Big] &= \frac{df}{dx} + \frac{dg}{dx} \\ \\
\text{or, in Lagrange notation: } \Big(\,f(x) + g(x)\,\Big)' &= f'(x) + g'(x)
\end{align*}

Note that the fact that we can split it up along addition is hardly unique to this "take the derivative" function.^[Of course differentiation is a function! It's just a function into which we usually give and get other functions, rather than numbers.] Compare it with how other functions treat addition:

* We can split the "multiply by five" function along addition: $5( a + b) = 5a + 5b$
* We can't split square roots up along addition: $\sqrt{a+b} \,\ne \sqrt{a} + \sqrt{b}$
* We can't split squaring along addition: $(a+b)^2 \ne a^2 + b^2$

    Or rather, we *can* split it up, but in a weird way: $(a+b)^2 = a^2 + 2ab + b^2$
* We can't split logs up along addition: $\ln(a+b) \ne \ln(a)+ \ln(b)$
* We can't split trig functions up along addition:  $\sin(a + b) \neq \sin(a)+\sin(b)$

    Or rather, we *can*, but in a weird way:  $\sin(a + b) = \sin(a)\cos(b) + \cos(a)\sin(b)$
* We can't split exponentials up along addition:  $e^{a+b} \neq e^a + e^b$

    Or rather, we *can*, but in a weird way:  $e^{a+b} = e^a\cdot e^b$

Want a cool math word? **Homomorphic** (and **homomorphism**). Basically, a homomorphism is a function that preserves algebraic structure. For example, square-rooting is homomorphic with respect to the operation of multiplication (because  $\sqrt{a\cdot b} = \sqrt{a}\cdot\sqrt{b}$), but not homomorphic w.r.t. addition (because $\sqrt{a+b} \,\ne \sqrt{a} + \sqrt{b}$).

Incidentally, because we know that a) derivatives split up along addition, and b) we can pull constants out of derivatives, we know that c) derivatives must split up along subtraction, too. Subtraction, after all, is just the same as adding a negative, and a negative is the same as a positive multiplied by $-1$:

\begin{align*}
\frac{d}{dx}\Big[ f(x) - g(x)\Big] &= \frac{d}{dx}\Big[ f(x) + (-1)g(x)\,\Big] \quad\quad\text{(algebra)}  \\ \\
&=  \frac{d}{dx}\Big[ f(x) \Big] + \frac{d}{dx}\Big[ (-1)g(x) \Big] \quad\quad\text{(we can split derivatives up along addition)} \\ \\
&= \frac{d}{dx}\Big[ f(x) \Big] + (-1)\cdot \frac{d}{dx}\Big[g(x) \Big] \quad\quad\text{(and we can pull constants out)} \\ \\
&= \frac{d}{dx}\Big[ f(x) \Big] - \frac{d}{dx}\Big[g(x) \Big] \quad\quad\text{(algebra)}
\end{align*}

Or, in Lagrange (prime) notation:

\begin{align*}
\Big( f(x) - g(x)\, \Big)' &= \Big( f(x) + (-1)g(x)\, \Big)' \quad\quad\text{(algebra)} \\ \\
&=  f'(x)+ \Big(\, (-1)\cdot g(x) \,\Big)'\quad\quad\text{(we can split derivatives up along addition)} \\ \\
&= f'(x)+ (-1)\cdot g'(x) \quad\quad\text{(and we can pull constants out)} \\ \\
&= f'(x) - g'(x) \quad\quad\text{(algebra)}
\end{align*}

What all of these properties combined mean is that **we can take the derivative of any polynomial!!!** We just need to differentiate each term (leaving the constant in place):

\begin{align*}
\frac{d}{dx}\Big(7x^{10} + 3x^9 - 2x^{13} + 5\Big) &= \frac{d}{dx}\left(7x^{10}\right) + \frac{d}{dx}\left(3x^9\right) - \frac{d}{dx}\left(2x^{13}\right) + \frac{d}{dx}(5) \\ \\
&= 7\cdot\frac{d}{dx}\left(x^{10}\right) + 3\cdot\frac{d}{dx}\left(x^9\right) - 2\cdot\frac{d}{dx}\left(x^{13}\right) + \frac{d}{dx}(5) \\ \\
&= 7\cdot 10x^9 + 3\cdot9x^8 - 2\cdot13x^{12} + 0 \\ \\
&= 70x^9 + 27x^8 - 26x^{12}
\end{align*}

Here's another example:

\begin{align*}
\frac{d}{dx}\Big( 10x^{15} - 12x^4 + 5x^3 + 2x - 7\Big) &= 10\cdot15x^{14} - 12\cdot4x^3 + 5\cdot3x^2 + 2x^0 - 0 \\ \\
&= 150x^{14} - 48x^3 + 15x^2 + 2
\end{align*}

More generally:

$$\Big(ax^n+bx^m+cx^p + \cdots \Big)' = anx^{n-1} + bmx^{m-1}+ pcx^{p-1} + \cdots$$

So that's it for polynomials! We can take the derivative of any polynomial! Calculus: conquered!!! Except not. There are lots of things that aren't polynomials. $\tan(x)$ isn't a polynomial, though we might be curious as to what it's derivative is. $e^x$ isn't a polynomial. Rational functions aren't polynomials. Logarithms aren't. Trig functions aren't. And so forth! What are their derivatives? Do we have to go back to the definition of a derivative, or can we find other shortcuts?

Here are some more questions:

* We know how to take the derivative of two functions added together---what if we have two functions multiplied together? like $x^2\sin(x)$? what's its derivative? is it $2x\cos(x)$? or $x^2\cos(x)$? or $2x\sin(x)$? or something else altogether???
\item What if we want to find the derivative of two functions divided, like $\displaystyle \frac{x^2}{\sin(x)}$? Is it $\displaystyle \frac{2x}{\cos(x)}$? (Hint: No.)
* What if we want to find the derivative of one function inside another function, like $\sin(x^2)$? What if we want to find the derivative of one function raised to another function, like $(\sin x)^{x^2}$? Or even more simply, what if we want to find the derivative of something like $e^x$ or $5^x$, or maybe $5^{\sin x}$? And what about logarithms? What's the derivative of $\log_k(x)$? 
* And what if we put all this stuff together??!? What if we want to find the derivative of: $$\frac{5x^7 - x^2\sin(x) + e^x - \tan(x)}{\log_7(x) + (x^2 + 3x)^{34} - \cos(x^8)}$$
If we don't have any shortcuts, our life would be totally miserable, because we'd have to work out:
$$\lim_{h\rightarrow 0} \left[  \frac{ \,\,\frac{5(x+h)^7 - (x+h)^2\sin(x+h) + e^{x+h} - \tan(x+h)}{\log_7(x+h) + ((x+h)^2 + 3(x+h))^{34} - \cos\left((x+h)^8\right)}  -   \frac{5x^7 - x^2\sin(x) + e^x - \tan(x)}{\log_7(x) + \left(x^2 + 3x\right)^{34} - \cos\left(x^8\right)} \,\,}{h} \right]$$


We're going to need more shortcuts.


## The derivative of two functions multiplied together

Here's a question: what's the derivative of $x^2\sin(x)$? 

$$\Big(\, x^2\sin(x) \,\Big)' \quad=\quad ???$$

We know that the derivative of $x^2$ is $2x$; we know that the derivative of $\sin(x)$ is $\cos(x)$; is the derivative of $x^2\sin(x)$ just $2x\cos(x)$? 

$$\Big(\,x^2\sin(x) \,\Big)' \quad\stackrel{???}{=}\quad 2x\cos(x)$$

More generally... is the derivative of two things multiplied together just the derivative of each of the two things multiplied? We know that we can split derivatives up along addition:

$$\Big(\,f(x) + g(x)\,\Big)' = f'(x) + g'(x)$$

Can we also split derivatives up along multiplication?

$$\Big(\, f(x)\cdot g(x)\,\Big)' \quad\stackrel{???}{=}\quad f'(x) \,\,\cdot\,\,g'(x)$$

We know that we can split derivatives up along addition because we proved it. But, without proving it, that's not an obvious result. Likewise, it's not obvious that we can split derivatives up along multiplication. Maybe we can; maybe we can't. 

Another way we can think about this is: how does this take-the-derivative function treat multiplication? Compare to how other functions treat multiplication:

* We can split square roots up along multiplication: $\sqrt{ab} = \sqrt{a} \cdot \sqrt{b}$
* We can split squaring along multiplication: $(ab)^2 = a^2\cdot b^2$
* We can't split the "multiply by five" function along multiplication: $5( ab) \ne 5a \cdot 5b$
* We can split logs up along multiplication, but in a weird way: $\ln(ab) = \ln(a)+ \ln(b)$
* We can't split trig functions up along multiplication^[There *is*, actually, some formula for $\sin(ab)$, but it's really weird. The point is that, like with logs, multiplication inside a trig function doesn't transform into multiplication outside a trig function.]: $\sin(ab) \ne \sin(a)\cdot\cos(b)$
* We can't split exponentials up along multiplication: $e^{ab} \ne e^a\cdot e^b$

As it turns out, we *can't* split derivatives up along multiplication:

$$\Big(\, f(x)\cdot g(x)\,\Big)' \quad\neq \quad f'(x) \,\cdot\,g'(x)$$

At least not cleanly. Rather, the derivative of two things multiplied together (we'll prove this in a moment) is:
\begin{align*}
\text{in Leibniz notation: } \frac{d}{dx}\Big[ f(x)\cdot g(x) \Big] &= \frac{df}{dx}\!\cdot\! g(x) \,+\, f(x)\!\cdot\!\frac{dg}{dx} \\\\
\text{or, in Lagrange notation: } \Big(\,f(x)\cdot g(x)\,\Big)' &= f'(x)g(x) + f(x)g'(x) 
\end{align*}

It's the derivative of the first thing, times the second thing, and then plus the original first thing times the derivative of the second thing.\footnote{Were we to continue thinking about abstract mathematical structures, rather than the particular mathematical structure that is calculus, we might ask: are there other functions that treat multiplication the same way derivatives do? are there other functions $f(x)$ such that $f(ab) = f(a)\!\cdot \!b + a\!\cdot \!f(b)$?}

So, for instance, if we return to our example of $x^2\sin(x)$, its derivative is:
\begin{align*}
\frac{d}{dx}\Big[ x^2\sin(x) \Big] &= \left(x^2\right)'\cdot \sin(x) \,\,+\,\, x^2\cdot(\sin x)' \\ \\
&= 2x\sin(x) + x^2\cos(x)
\end{align*}
This rule, by the way, gets called the **product rule**. You can call it the "multiplicative rule," too, if you like, or "the one about the derivative of $f(x)$ times $g(x)$," but this is the name most people give it. 

Let's prove it! The proof is relatively straightforward, but with one caveat. All we really need to do is plug $f(x)g(x)$ into Fermat's difference quotient and work things out. EXCEPT there's one weird step, where in order to break it up into two pieces---into $f'(x)g(x)$ PLUS $f(x)g'(x)$---we need to add zero. And by "add zero" I mean "add a special form of zero such that the equation doesn't actually *change* (because how can it change when we're adding nothing?) but which enables us to look at it in a new and useful way.* In this case, our zero will be:

$$0 = f(x)g(x+h) - f(x)g(x+h)$$

You'll see it come up in a moment. Now, let's start the proof!
\begin{align*}
\Big[ f(x)g(x) \Big]' & = \lim_{h\rightarrow 0} \frac{f(x+h)g(x+h)-f(x)g(x)}{h} \quad\quad \text{(definition of a derivative)} \\ \\
& =  \lim_{h\rightarrow 0}\left[ \frac{f(x+h)g(x+h)  \overbrace{-f(x)g(x+h) + f(x)g(x+h)}^{=\,0} -f(x)g(x)}{h}\right] \quad\quad \text{(adding zero!)}  \\ \\
&= \lim_{h\rightarrow 0}\left[ \frac{f(x+h)g(x+h)- f(x)g(x+h)}{h} + \frac{f(x)g(x+h) -f(x)g(x)}{h}\right] \quad\quad \text{(splitting up fraction)} \\  \\
&\displaystyle = \lim_{h\rightarrow 0}\left[ \frac{f(x+h)- f(x)}{h}g(x+h) + f(x)\frac{g(x+h) -g(x)}{h}\right] \quad\quad \text{(factor $g(x+h)$ out of first fraction)} \\ \\
&\displaystyle = \lim_{h\rightarrow 0}\left[ \frac{f(x+h)- f(x)}{h}g(x+h)\right] + \lim_{h\rightarrow 0}\left[f(x)\frac{g(x+h) -g(x)}{h}\right] \quad\quad \text{(can split limits up along addition)} \\ \\
&= \lim_{h\rightarrow 0}\!\!\left[ \frac{f(x+h)- f(x)}{h}\right]\!\!\cdot\!\! \lim_{h\rightarrow 0}\left[g(x+h)\right] + \lim_{h\rightarrow 0}\left[f(x)\right]\!\!\cdot\!\! \lim_{h\rightarrow 0}\!\!\left[\frac{g(x+h) -g(x)}{h}\right] \quad\quad\text{(can split limits up along multiplication)} \\ \\
&= \underbrace{\lim_{h\rightarrow 0}\!\!\left[ \frac{f(x+h)- f(x)}{h}\right]}_{=f'(x)} \cdot \underbrace{\lim_{h\rightarrow 0}\!\!\left[g(x+h)\right]}_{=g(x)} + \underbrace{\lim_{h\rightarrow 0}\!\!\left[f(x)\right]}_{=f(x)}\cdot \underbrace{\lim_{h\rightarrow 0}\!\!\left[\frac{g(x+h) -g(x)}{h}\right]}_{=g'(x)} \\ \\
& = f'(x) \!\cdot \!g(x) + f(x)\!\cdot\! g'(x)  \\ \\
& \includegraphics[scale=.25]{andrewproof.png} 
\end{align*}


## The derivative of two functions divided

What if we want to find the derivative of two things divided, like $x^2/\sin(x)$? Like with multiplication, differentiation does weird things to fractions, so the derivative isn't just $2x/\cos(x)$:

$$\left(\frac{x^2}{\sin x}\right)' \neq \frac{\left(x^2\right)' }{\left(\sin x\right)'} \quad\text{a/k/a}\quad \frac{2x}{\cos x}$$

Actually, it works out to be:

$$\left( \frac{x^2}{\sin(x)} \right)' = \frac{2x\sin(x) - x^2\cos(x)}{(\sin x)^2}$$

But, actually, wait---let's not do this yet. Let's save this theorem for a few pages from now. There are two ways to prove it, and one of them (the way I prefer) requires knowing how to do something we haven't done yet. So let's actually talk about a different question.

## The derivative of one function inside another function

What's the derivative of one function inside another? What if, for instance, we want to find the derivative of $\sin\left( x^4\right)$, with $x^4$ on the inside and $\sin(x)$ (or $\sin(\text{stuff})$) on the outside? Or the derivative of $(\sin x )^4$, with $\sin x$ on the inside and $x^4$ (or $(\text{stuff})^4$) on the outside? Or what about, say, $\left(x^3 + x^9\right)^{22}$? Or $e^{x^2}$ (where $e^\text{stuff}$ is on the outside and $x^2$ is on the inside)? 

\begin{align*}
\frac{d}{dx}\Big[\sin\left(x^4\right)\Big] &= \,??? \\ \\
\frac{d}{dx}\Big[(\sin x)^4\Big] &= \,??? \\ \\
\frac{d}{dx}\Big[ \left(x^3 + x^9\right)^{22}\Big] &= \,??? \\ \\
\frac{d}{dx}\Big[ e^{x^2} \Big] &= ???
\end{align*}

Is the derivative of $\sin\left(x^4\right)$ just $\cos\left(4x^3\right)$? No. As it turns out, its derivative is: $\cos\left(x^4\right)\cdot4x^3$. Or, more generally:

$$\Big(\,f\big(g(x)\big)\,\Big)' = f'\Big(\,g(x)\,\Big)\cdot g'(x)$$

So it's just the derivative of the outside function, with the same insides, and then times the derivative of the inside. This is known as the **chain rule** (etymology unknown to me).

So for example:

* \begin{align*}\frac{d}{dx}\Big[ \sin\left(x^4\right) \Big] &= \cos\left(x^4\right)\cdot \left(x^4\right)' \quad\quad\text{(derivative of sine is cosine)} \\
&= \cos\left(x^4\right)\cdot4x^3 \\
\end{align*}

* \begin{align*}\frac{d}{dx}\Big[ (\sin x )^4 \Big] &= 4(\sin x)^3\cdot (\sin x)' \\
&= 4(\sin x)^3\cdot \cos(x) \\
\end{align*}

* \begin{align*}\frac{d}{dx}\Big[ \left(x^3 + x^9 \right)^{22} \Big] &= 22\left(x^3 + x^9\right)^{21}\cdot \left(x^3 + x^9\right)' \\
&= 22\left(x^3 + x^9\right)^{21}\cdot \left(3x^2 + 9x^8\right) \\
\end{align*}

* \begin{align*}\frac{d}{dx}\left[ e^{x^2} \right] &= e^{x^2}\cdot \left(x^2\right)' \quad\quad \text{($e^x$ is its own derivative)} \\
&= e^{x^2}\cdot 2x
\end{align*}


Let's prove it. To do this proof, we'll use a slightly different version of Fermat's difference quotient. Usually we write the FDQ so that only $h$ is in the denominator:
$$f'(x) = \lim_{h\rightarrow 0} \frac{f(x+h) - f(x)}{h}$$
but when we originally constructed it\footnote{``To construct'' here means ``to derive'', especially when coming from geometry; what I mean in this sense is that we ``constructed'' the equation by translating this geometric thing into algebra.} we just had $\Delta y$ in the top and $\Delta x$ in the bottom; the actual change in $x$, going from a point $x$ and ending at a point $x+h$, is $(x+h) - x$. So we could also define the derivative like this:
$$f'(x) = \lim_{h\rightarrow 0} \frac{f(x+h) - f(x)}{(x+h) - x}$$
Obviously, these two are exactly the same, because $(x+h) - x = h$. But my point is, it's this latter version that will be somewhat more helpful in proving the chain rule. 

So. Let's do this. If we want to take the derivative of $f\Big(\,g(x)\,\Big)$ I guess we could, for lack of any other obvious starting point, consider what the FDQ is:

$$\left[ f(\,(g(x)\,)\right]' = \lim_{h\rightarrow 0} \frac{f(\,g(x+h)\,)-f(\,g(x)\,)}{h}$$

Or, written differently: 

$$\left[ f(\,(g(x)\,)\right]' = \lim_{h\rightarrow 0} \frac{f(\,g(x+h)\,)-f(\,g(x)\,)}{(x+h) - x}$$

Here's the trick in this proof: we multiply by $1$:

$$ = \lim_{h\rightarrow 0} \frac{f(\,g(x+h)\,)-f(\,g(x)\,)}{(x+h) - x}\cdot \underbrace{\frac{g(x+h)-g(x)}{g(x+h)-g(x)}}_{=1}$$

A common trick, as you've seen. If we multiply by $1$, we don't actually change anything---we just look at it in a different way. Anyway, from here, the proof is straightforward (even there's a lot of writing). All we really need to do is fiddle with this equation so that we eventually get $f'(g(x))\cdot g'(x)$. For starters, we can combine these two fractions:

$$= \lim_{h\rightarrow 0} \frac{(\, f(\,g(x+h)\,)-f(\,g(x)\,)\,)\cdot(g(x+h)-g(x)\,)}{(\, (x+h) - x\,)\cdot(\,g(x+h)-g(x)\,)}$$
and rearrange:
$$= \lim_{h\rightarrow 0} \frac{(\, f(\,g(x+h)\,)-f(\,g(x)\,)\,)\cdot(g(x+h)-g(x)\,)}{(\,g(x+h)-g(x)\,) \cdot (\, (x+h) - x\,)}$$
split up into two fractions again:
$$= \lim_{h\rightarrow 0} \frac{f(\,g(x+h)\,)-f(\,g(x)\,)}{g(x+h)-g(x)}\cdot \frac{g(x+h)-g(x)}{(x+h) -x}$$
and, since we can split limits up along multiplication (you might not know this, you might have to trust me, since we're hand-waving over limits in our abbreviated version of calculus, but we can), we have:
$$= \lim_{h\rightarrow 0} \frac{f(\,g(x+h)\,)-f(\,g(x)\,)}{g(x+h)-g(x)}\cdot \lim_{h \rightarrow 0} \frac{g(x+h)-g(x)}{(x+h) -x}$$
BUT WAIT! Those two things look like derivatives!!!
$$= \underbrace{\lim_{h\rightarrow 0} \frac{f(\,g(x+h)\,)-f(\,g(x)\,)}{g(x+h)-g(x)}}_{=f'(g(x))}\cdot \underbrace{\lim_{h \rightarrow 0} \frac{g(x+h)-g(x)}{(x+h) -x}}_{=g'(x)}$$
So we just have:
$$= f'\Big(\,g(x)\,\Big)\cdot g'(x)$$
$$\includegraphics[scale=.25]{andrewproof.png} $$


Yay! One additional comment, in case you didn't like the last step. If you're not convinced that $\displaystyle \lim_{h\rightarrow 0} \frac{f(\,g(x+h)\,)-f(\,g(x)\,)}{g(x+h)-g(x)}$ actually is $f'(g(x))$, consider this: we know that this is the derivative of $f$ is:  $$f'(x) \displaystyle = \lim_{h \rightarrow 0} \frac{f(x+h)-f(x)}{h}$$
or, written differently:  $$f'(x) \displaystyle = \lim_{h \rightarrow 0} \frac{f(x+h)-f(x)}{(x+h) - x}$$
but $f'$ is itself a function of $x$, so instead of plugging in $x$,why not plug in a triangle: $$f'(\Delta) \displaystyle = \lim_{h \rightarrow 0} \frac{f(\Delta +h)-f(\Delta)}{(\Delta +h) - \Delta}$$
or Patrick:  $$f'(\text{Patrick}) \displaystyle = \lim_{h \rightarrow 0} \frac{f(\text{Patrick} +h)-f(\text{Patrick})}{(\text{Patrick} +h) - \text{Patrick}}$$
or another function of $x$, like $\sqrt{x}$:  $$f'(\sqrt{x}) = \lim_{h \rightarrow 0} \frac{f(\sqrt{x+h})-f(\sqrt{x})}{(\sqrt{x+h}) - \sqrt{x}}$$
or ANY other function of $x$, like $g(x)$:  $$f'(g(x)) \displaystyle = \lim_{h \rightarrow 0} \frac{f(\,g(x+h)\,)-f(\,g(x)\,)}{g(x+h)-g(x)}$$
I hope that helps.


## The derivative of two functions divided (for real this time)

Question that's still pending: what is the derivative of one function divided by another function? what is the derivative of, say,  $x^2/\sin(x)$? Here's the answer (the formula is called the **quotient rule**):
\begin{align*}
\text{in Leibniz notation: } \frac{d}{dx}\left[ \frac{f(x)}{g(x)} \right] \quad&=\quad \frac{\frac{df}{dx}\cdot g(x) - f(x)\cdot\frac{dg}{dx}}{\Big(g(x)\Big)^2} \\ \\
\text{or, in Lagrange notation: } \left(\,\frac{f(x)}{g(x)}\,\right)' \quad&=\quad \frac{f'(x)g(x) - f(x)g'(x)}{\Big(g(x)\Big)^2} 
\end{align*}
There are two different ways we could prove this. The way I prefer uses the chain rule. You see, you don't need to know the quotient rule at all, because *division doesn't exist*---it's just multiplication of something that's been raised to the $-1$. (In the same way that subtraction doesn't exist---it's just adding a number that's been multiplied by $-1$.) If we want to take the derivative of $x^2/\sin(x)$, for example: 

\begin{align*}
\left[ \frac{x^2}{\sin(x)} \right]'&= \left[ \left(x^2\right)(\sin x)^{-1}\right]' \quad\quad\text{(algebra/properties of exponents)}  \\ \\
&= \frac{d}{dx}\left(x^2\right)\cdot (\sin x)^{-1} \quad+\quad x^2 \cdot \frac{d}{dx}(\sin x)^{-1} \quad\quad\text{(product rule)} \\ \\
&= 2x\cdot (\sin x)^{-1} \quad+\quad x^2 \cdot \frac{d}{dx}(\sin x)^{-1} \quad\quad\text{(derivative of $x^2$)} \\ \\
&= 2x\cdot (\sin x)^{-1} \quad+\quad x^2 \cdot (-1)(\sin x)^{-2}\cdot \frac{d}{dx}(\sin x) \quad\quad\text{(chain rule!)} \\ \\
&= 2x\cdot (\sin x)^{-1} \quad+\quad x^2 \cdot (-1)(\sin x)^{-2}\cdot \cos (x) \quad\quad\text{(chain rule, continued)} \\ \\
&= 2x(\sin x)^{-1} \quad-\quad x^2(\sin x)^{-2}\cdot \cos (x) \quad\quad\text{(algebra)} \\ \\
&= \frac{2x}{\sin x} \quad-\quad \frac{x^2\cos x}{(\sin x)^{2}} \quad\quad\text{(algebra)} \\ \\
&= \frac{2x\sin(x) \quad-\quad x^2\cos(x)}{(\sin x)^{2}} \quad\quad\text{(combining fractions)}
\end{align*}


Excellent! Now, the other way of proving the chain rule is to go back to first principles---rather than use shortcuts we already know (chain rule/product rule) to create another shortcut (quotient rule), we simply build a new shortcut from scratch. That is to say, from Fermat's difference quotient. If you've already seen the FDQ-based proofs of the additive rule, the constant multiple rule, the $x^n$ rule\footnote{which, by the way, tends to get called the ``power rule'' by people other than me}, the product rule, the chain rule, etc., then the proof of the quotient rule is pretty straightforward. We take $f(x)/g(x)$, we plug it into the FDQ, we rearrange, we maybe do some algebra tricks (there's an adding-zero step), and eventually, after enough obnoxious manipulation, we end up with the familiar form of the quotient rule. The proof (or this version of the proof) is a homework problem, but I'll be nice and get you started:

\begin{align*}\left[ \frac{f(x)}{g(x)}\right]' &= \lim_{h\rightarrow 0} \frac{\,\,\frac{f(x+h)}{g(x+h)}-\frac{f(x)}{g(x)}\,\,}{h} \quad\quad\text{(definition of a derivative)} \\ \\
&= \lim_{h\rightarrow 0} \frac{\,\,\frac{f(x+h)g(x) - f(x)g(x+h)}{g(x+h)g(x)}\,\,}{h} \quad\quad\text{(combining fractions)} \\ \\
&= \lim_{h\rightarrow 0}\left[ \frac{\,\,\frac{f(x+h)g(x) \overbrace{-f(x)g(x) + f(x)g(x)}^{=0}   - f(x)g(x+h)}{g(x+h)g(x)}\,\,}{h}\right] \quad\quad\text{(adding zero)} \\ \\
\end{align*}

And keep going from here! You'll need to break the fractions up and factor things and do some limit things, and it'll be a lot of writing, but eventually you should end up with the quotient rule. 


## The bigger picture: abstraction and coming up with general formulas

All of these rules we've been proving and using---they're really just shortcuts to Fermat's difference quotient. These rules are all **specific cases** of the more **general case** of Fermat's difference quotient. The FDQ gives us a formula for the derivative of *any* function; the product rule (e.g.) gives us a formula for the derivative of a function that looks like two things multiplied together. 

But there's really nothing special about this set of rules. There's no reason why we couldn't have come up with more rules (or fewer). All of these rules are just riffs, variations, and mash-ups of the one fundamental equation:
$$\displaystyle \lim_{h \rightarrow 0}\frac{f(x+h)-f(x)}{h}$$
I've discussed the rules I've discussed in these notes merely because I think that they'll be the most helpful in your calculus adventures.

This is a way of leading into my story. Yenyen Gatela noticed that she had a lot of homework problems that looked like some number over $x^n$:
$$\text{for example: } \frac{d}{dx}\!\left[\frac{5}{x^3} \right], \,\,\frac{d}{dx}\!\left[\frac{52}{x^6} \right] \text{, etc.}$$
So she wondered: rather than do each of these problems by hand, could she come up with a shortcut? could she find some equation for the derivative of $\displaystyle \frac{a}{x^n}$ (where $a$ and $n$ are any constant)? She had a bunch of specific cases ($5/x^3$, $52/x^6$, etc.);  could she come up with a more general case ($a/x^n$)? Based on her experience, she guessed that it was this:
$$\frac{d}{dx}\left( \frac{a}{x^n} \right) = \frac{-an}{x^{n+1}}$$
And she was able to prove this without too much trouble: 
\begin{align*}
\frac{d}{dx}\left[ \frac{a}{x^n} \right] & = \frac{d}{dx}[ ax^{-n} ] & \text{(laws of exponents)}  \\ \\
&= a\cdot \frac{d}{dx}[ x^{-n}]  & \text{(constant multiple rule)} \\ \\
&= a\cdot (-n)\cdot x^{-n-1} &\text{(the }x^n \text{ rule)}  \\ \\
&=-anx^{-n-1} & \text{(algebra)}\\ \\
&=-anx^{-(n+1)} &\text{(more algebra)}\\ \\
&= \frac{-an}{x^{n+1}} & \text{(laws of exponents)}
\end{align*}
Awesome! You see, that is what *all* of you should be doing. You should all be noticing similarities between problems and using them to come up with more general rules---rules which are themselves but servants to the FDQ. 



## Problems

Find the derivative of the function, then find the second derivative (i.e., the derivative of the derivative):

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems'>
<li> $f(x) = 1 - x$ </li>
<li> $f(x) = 2(1+x)$ </li>
<li> $f(x) = 11x^5 - 6x^3 + 8$ </li>
<li> $f(x) = -x^2 + 3$ </li>
<li> $f(x) = x^2 + x + 8$ </li>
<li> $f(x) = 3x^7 - 7x^3 + 21x^2$ </li>
<li> $\displaystyle f(x) = \frac{4x^3}{3} - x$ </li>
<li> $\displaystyle f(x) = \frac{x^3}{3} + \frac{x^2}{2} + \frac{x}{4}$ </li>
<li> $f(x) = 3x^{-2}$ </li>
<li> $\displaystyle f(x) = \frac{3}{x^2}$ </li>
<li> $f(x) = -2x^{-1}$ </li>
<li> $\displaystyle f(x) = \frac{-2}{x}$ </li>
<li> $\displaystyle f(x) = \frac{1}{x}$ </li>
<li> $\displaystyle f(x) = \frac{4}{x^2}$ </li>
<li> $f(x) = ax^2 + bx + c$, with $a,b.c$ constant </li>
<li> $\displaystyle f(x) = \frac{x^2 + 2}{x^3}$ </li>
<li> $f(x) = (x^2 - 1)(x - 3)$ </li>
<li> $\displaystyle f(x) = x - \frac{1}{x}$ </li>
<li> $\displaystyle f(x) = \frac{x^3}{1-x}$ </li>
<li> $f(x) = 6x^2 - 10x - 5x^{-1}$ </li>
<li> $f(x) = 4 - 2x - x^{-3}$ </li>
<li> $\displaystyle f(x) = \frac{1}{3x^2} - \frac{5}{2x}$ </li>
<li> $\displaystyle f(x) = \frac{1}{6x^2} + \frac{7}{12x^3}$ </li>
<li> $\displaystyle f(x) = 9x + 1 + \frac{1}{x}$ </li>
<li> $\displaystyle f(x) = \frac{12}{x} - \frac{4}{x^3} + \frac{1}{x^4}$ </li>
<li> $f(x) = x^{1/2}$ </li>
<li> $f(x) = \sqrt{x}$ </li>
<li> $f(x) = x^{1/3}$ </li>
<li> $f(x) = \sqrt[3]{x}$ </li>
<li> $f(x) = 5\sqrt{x}$ </li>
<li> $\displaystyle f(x) = \frac{10}{\sqrt{x}}$ </li>
<li> $f(x) = x^{1/n}$, with $n$ constant </li>
<li> $f(x) = \sqrt[n]{x}$ </li>
<li> $\displaystyle f(x) = \left(x^3-2x \right)\left(2x+5 \right)$ </li>
<li> $\displaystyle f(x) = \left(9x^8 - 8x^9 \right)\left(x+\frac{1}{x} \right)$ </li>
<li> $\displaystyle f(x) = \left(1+\frac{1}{x} \right)\left(1+\frac{1}{x^2} \right)$ </li>
<li> $\displaystyle f(x) = \left(x^2 \right)\left( x-1\right)$ </li>
<li> $f(x) = x^5\sin(x)$ </li>
<li> $f(x) = 5x^9\cos(x)$ </li>
<li> $\displaystyle f(x) = \frac{x^2 - 1}{2x + 3}$ </li>
<li> $\displaystyle f(x) = \frac{7x^4+11}{x+1}$ </li>
<li> $\displaystyle f(x) = \frac{x^3+3x}{x^2-1}$ </li>
<li> $\displaystyle f(x) = \frac{6-1/x}{x-2}$ </li>
<li> $\displaystyle f(x) = \frac{1+x^4}{x^2}$ </li>
<li> $\displaystyle f(x) = \frac{ax-b}{cx-d}$, with $a,b,c,d$ constants </li>
<li> $\displaystyle f(x) = \frac{ax^2+bx+c}{cx^2+bx+a}$,  with $a,b,c,d$ constants </li>
<li> $\displaystyle f(x) = \frac{x^3+7}{x}$ </li>
<li> $\displaystyle f(x) = \frac{x^2+5x-1}{x^2}$ </li>
<li> $\displaystyle f(x) = \frac{(x-1)(x^2 + x + 1)}{x^3}$ </li>
<li> $\displaystyle f(x) = \frac{(x^2+x)(x^2-x+1)}{x^4}$ </li>
<li> $f(x) = xh(x)$ </li>
<li> $\displaystyle f(x) = h(x) - \frac{1}{h(x)}$ </li>
<li> $f(x) = 3x^2g(x) - 5x$ </li>
<li> $\displaystyle f(x) = g(x) + \frac{x}{g(x)}$ </li>
<li> $f(x) = (h(x))^2$ </li>
<li> $f(x) = h(x^2+1)$ </li>
<li> $\displaystyle f(x) = h\left(\frac{x-1}{x+1}\right)$ </li>
<li> $f(x) = ( h(x) )^2 + 1$ </li>
<li> $\displaystyle f(x) = \frac{h(x)-1}{h(x)+1}$ </li>
<li> $f(x) = \sin(x)$ </li>
<li> $f(x) = \cos(x)$ </li>
<li> $f(x) = \tan(x)$  (hint: how can you rewrite $\tan(x)$?) </li>
<li> $f(x) = -10x + 3\cos(x)$ </li>
<li> $f(x) = 6x^2 - \sin(x)$ </li>
<li> $\displaystyle f(x) = 4 + \frac{2}{x} - \cos(x)$ </li>
<li> $\displaystyle f(x) = \frac{3}{x} + 5\sin(x)$ </li>
<li> $\displaystyle f(x) = \frac{x^2}{\tan(x)} - \frac{1}{x^2}$ </li>
<li> $\displaystyle f(x) = x\sin(x) + \cos(x)$ </li>
<li> $\displaystyle f(x) = \frac{4}{\cos(x)} + \frac{1}{\sin(x)}$ </li>
<li> $\displaystyle f(x) = x^2\sin(x) + 2x\cos(x)$ </li>
</ol>
</div>

<div style='height:3em;'></div>

Find the derivative of each of the following functions:

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems'>
<li> $f(x) = (2x+1)^{400}$ </li>
<li> $f(x) = (4-3x)^9$ </li>
<li> $f(x) = (x^2+1)^{-3}$ </li>
<li> $f(x) = (x+x^3)^{-2}$ </li>
<li> $\displaystyle f(x) = \frac{1}{5x-7}$ </li>
<li> $\displaystyle f(x) = \frac{2}{x^2+6}$ </li>
<li> $\displaystyle f(x) = (1-\frac{x}{7})^{-7}$ </li>
<li> $\displaystyle f(x) = \left(\frac{x}{2} - 1\right)^{-10}$ </li>
<li> $\displaystyle f(x) = \left( \frac{x^2}{8} + x- \frac{1}{x}\right)^4$ </li>
<li> $\displaystyle f(x) = \left( \frac{x}{5} + \frac{1}{5x}\right)^5$ </li>
<li> $\displaystyle f(x) = (\sin(x) )^4 + (\cos(x))^{-2}$ </li>
<li> $f(x) = x^5 - 25\sin(x/5)$ </li>
<li> $f(x) = 2\cos(x/2) + x^2/4$ </li>
<li> $f(x) = x\tan(3x) + 7$ </li>
<li> $\displaystyle f(x) = \frac{2x}{\cos(2x)}$ </li>
<li> $\displaystyle f(x) = \frac{1}{21}(3x-2)^7 + \left(4 - \frac{1}{2x^2}\right)^{-1}$ </li>
<li> $\displaystyle f(x) = (5-2x)^{-3} + \frac{1}{8}\left( \frac{2}{x} + 1\right)^4$ </li>
<li> $f(x) = x^3(2x-5)^4$ </li>
<li> $f(x) = (1-x)(3x^2-5)^5$ </li>
<li> $f(x) = (4x+3)^4(x+1)^{-3}$ </li>
<li> $f(x) = \sin\left(3x^2+7x\right)$ </li>
<li> $f(x) = 3\cos\left(x^7-\frac{2}{x}\right)$ </li>
<li> $f(x) = (2x-5)^{-1}(x^2-5x)^6$ </li>
<li> $\displaystyle f(x) = \left(\frac{\sin(x)}{1+\cos(x)}\right)^2$ </li>
<li> $\displaystyle f(x) = \left(\frac{1+\cos(x)}{\sin(x)}\right)^{-1}$ </li>
<li> $\displaystyle f(x) = \left(\frac{x}{x-1} \right)^{-3}$ </li>
<li> $\displaystyle f(x) = \left(\frac{x}{x-1} \right)^{2} - \frac{4}{x-1}$ </li>
<li> $\displaystyle f(x) = \sin^3(x)\tan(4x)$ </li>
<li> $\displaystyle f(x) = \frac{\cos^4(x)}{\tan(x)}$ </li>
<li> $\displaystyle f(x) = \left(\frac{x}{x-1} \right)^{-3}$ </li>
<li> $\displaystyle f(x) = \frac{x^3+x^2+x+1}{x^3-x^2+x-1}$ </li>
<li> $\displaystyle f(x) = \frac{x^3+x^2+x-1}{x^3-x^2+x+1}$ </li>
</ol>
</div>

<div style='height:3em;'></div>

Find the indicated derivatives:

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems'>
<li> $\displaystyle\frac{d}{dx}\left[x\frac{d}{dx}(x-x^2) \right]$ </li>
<li> $\displaystyle\frac{d^2}{dx^2}\left[(x^2-3x)\frac{d}{dx}(x+x^{-1}) \right]$ </li>
<li> $\displaystyle\frac{d^4}{dx^4}\left[3x-x^4 \right]$ </li>
<li> $\displaystyle\frac{d^5}{dx^5}\left[ax^4+bx^3+cx^2+dx+e \right]$, with $a,b,c,d,e$ constant </li>
</ol>
</div>

<div style='height:3em;'></div>

Find all the derivatives of the following functions (i.e., the first derivative, the second derivative, the third derivative, etc., etc., etc., *ad infinitum*)

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems'>
<li> $\displaystyle f(x) = x^2 - x$ </li> 
<li> $\displaystyle f(x) = \frac{x^3}{3} + \frac{x^2}{2} - 5$ </li> 
<li> $\displaystyle f(x) = \frac{x^4}{2} - \frac{3}{2}x^2 - x$ </li> 
<li> $\displaystyle f(x) = \frac{x^5}{120}$ </li> 
<li> $\displaystyle f(x) = x^n$, with $n$ constant  </li> 
</ol>
</div>


<div style='height:3em;'></div>

Find a formula for the $n$th derivative:
<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems'>
<li> $\displaystyle f(x) = \frac{1}{x}$ </li>
<li> $\displaystyle f(x) = \frac{1}{1-x}$ </li>
<li> $\displaystyle f(x) = \frac{x}{1+x}$ </li>
<li> $\displaystyle f(x) = \frac{1}{bx+c}$, with $a,b,c$ constant </li>
</ol>
</div>

<div style='height:3em;'></div>


There are lots of functions that we can sketch pretty easily. But there are others that we can't sketch so easily. Luckily, the derivative gives us a new bit of information that can help us see functions! For the following functions:

a.  Where is the slope of the function $0$?
b.  Where is the function increasing (i.e., where is the slope positive)?
c.  Where is the function decreasing (i.e., where is the slope negative)?

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems'>
<li> $f(x) = x^3$ </li>
<li> $f(x) = x^4$ </li>
<li> $f(x) = x^2 + 4$ </li>
<li> $\displaystyle f(x) = x + \frac{1}{x}$ </li>
<li> $f(x) = x^3 + 3x^2 - 2$ </li>
<li> $f(x) = 2x^3 - 12x^2 + 7$ </li>
<li> $f(x) = 2x^3 - 3x^2 - 12x + 1$ </li>
<li> $\displaystyle f(x) = x^2 - \frac{1}{x}$ </li>
<li> $\displaystyle f(x) = x + \frac{4}{x^2}$ </li>
<li> $f(x) = (1+x^2)^{-2}$ </li>
<li> $f(x) = (1-x^2)^2$ </li>
</ol>
</div>

<div style='height:3em;'></div>

Find a function with the given derivative (and then check your answer by differentiating):

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems'>
<li> $f'(x) = 3x^2 + 2x + 1$ </li>
<li> $f'(x) = 4x^3 - 2x + 4$ </li>
<li> $\displaystyle f'(x) = 2x^2 - 3x - \frac{1}{x^2}$ </li>
<li> $\displaystyle f'(x) = x^4 + 2x^3 + \frac{1}{2\sqrt{x}}$ </li>
<li> $f'(x) = 2\cos(x) - 3\sin(x)$ </li>
<li> $f'(x) = 2x\cos(x^2) - 2\sin(2x)$ </li>
<li> $f'(x) = 4(x^2+1)^3(2x)$ </li>
<li> $f'(x) = 2x(x^2-1)$ </li>
<li> $f'(x) = 2(x^3-2)(3x^2)$ </li>
<li> $\displaystyle \frac{dy}{dx} = 3x^2(x^3+2)^2$ </li>
</ol>
</div>

<div style='height:3em;'></div>


<ol class='problems'>
<li> Finish the Fermat's difference quotient-based proof of the quotient rule, as started on page 9.</li>

<li> Consider the function $f(x) = x^n$, where $n$ is a positive integer. Find the $k$th derivative of $f$, when:

a. $k=n$,

b. $k>n$, and 

c. $k<n$. </li>

<li> What's the second derivative of a product? That is, what is $[f(x)g(x)]''$? What about the third derivative? the fourth derivative? fifth? what about the $k$th derivative? </li>

<li> Find the derivative of $f(x)\cdot g(x)\cdot h(x)$. In other words, find:
$$\Big( f(x)\cdot g(x)\cdot h(x)\Big)'$$ </li>

<li> Find the values of $x$ where the slope of $f(x) = ax^2 + bx + c$ is zero. </li>

<li> Find the conditions/values of $a$, $b$, and $c$ such that the function $f(x) = ax^3 + bx^2 + cx + d$

* has a slope of zero at two distinct points
* has a slope of zero at one point
* never has a slope of zero

</li>

<li> Find $\displaystyle\frac{d^{999}}{dx^{999}} \Big[\cos(x)\Big]$ </li>
<li> Find $\displaystyle\frac{d^{725}}{dx^{725}}\Big[\sin(x)\Big]$ </li>
<li> Find $\displaystyle\frac{d}{dx}\Bigg[\sin\Bigg(\sin\bigg(\sin\Big(\cos\big(x^2 + 5x\big)\Big)\bigg)\Bigg)\Bigg]$ </li>
<li> Find $\displaystyle \frac{d}{dx}\bigg[ f\Big(g\big(h(x)\big)\Big)\bigg]$ </li>
<li> Imagine you have $n$ functions, $f_1$, $f_2$, $f_3$, all the way up to $f_n$, and they're all inside of each other, like a giant Russian nesting doll, so that we have:
$$g(x) = f_1\Big(f_2\big(f_3(\cdots f_n(x) \cdots) \big)\Big)$$
What's the derivative of $g(x)$? </li>

<li> Consider the function $f(x)$. Use the chain rule to show that a) if $f(x)$ is even, then $f'(x)$ is odd, and b) if $f(x)$ is odd, then $f'(x)$ is even. (If you don't remember the definitions of even and odd functions, look them up on the internet or in a book.) </li>

<li>When I was in high school, I wrote the following entry in my diary:

> I had a dream last night about taking the limit of the function $3x^2$. I figured that because in a term $mx$, $m$ is the slope, and you could basically reduce that term to $(3x)x$, then the equation of the slope-thingy would be $3x$. Also, I tried to teach myself how to optimize equations today. It was easy to find the maximum (vertex) of a simple quadratic equation. Then, I tried to play around with $\frac{x^2+2x}{x^3+3x}$. That was one long equation. And it didn't help that I suck at division. So I gave up and went back to learning about hybrid orbitals for chemistry.

Critique my logic and language. Was I actually trying to take the "limit" of $3x^2$? What did I apparently mean by "slope-thingy"? Is my method for finding the "slope-thingy" a valid one? Why or why not? Explain. Then find the "slope-thingy" of $\displaystyle \frac{x^2+2x}{x^3+3x}$.</li>
</ol>