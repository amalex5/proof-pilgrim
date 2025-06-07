---
title:  complex nummies derivation of sine/cosine sum-and-difference formulas
usemathjax: true
layout: post
---




> *Write $e^{i\alpha}\cdot e^{i\beta}$ in terms of $\cos\alpha$, $\cos\beta$, $\sin\alpha$, and $\sin\beta$. (Does this relate to anything we did in December?)*


Huh. What does Andrew want us to do here? No idea. I guess let's just grind away! If we write $e^{i\alpha}\cdot e^{i\beta}$ in rectolar form (the $\cos + i\sin$ form), we get:
\begin{align*}
    e^{i\alpha}\cdot e^{i\beta} &= \left(\cos\alpha + i\sin\alpha \right)\left( \cos\beta + i\sin\beta \right)
\end{align*}
OK. I guess we can FOIL this and see what happens?
\begin{align*}
    &= \cos(\alpha)\cos(\beta) + i\sin(\beta)\cos(\alpha) + i\sin(\alpha)\cos(\beta) + i\sin(\alpha)i\sin(\beta) \\
    &= \cos(\alpha)\cos(\beta) + i\sin(\beta)\cos(\alpha) + i\sin(\alpha)\cos(\beta) + i^2\sin(\alpha)\sin(\beta) \\
    &= \cos(\alpha)\cos(\beta) + i\sin(\beta)\cos(\alpha) + i\sin(\alpha)\cos(\beta) - \sin(\alpha)\sin(\beta) 
    \end{align*}
Hmm... this looks gross. I don't know where this is going. Maybe let's sort it into real and imaginary parts?
\begin{align*}
        &= \Big( \cos(\alpha)\cos(\beta) - \sin(\alpha)\sin(\beta) \Big) + \Big( \sin(\beta)\cos(\alpha) + \sin(\alpha)\cos(\beta) \Big) i
        \end{align*}
Huh. Those real and imaginary parts look familiar. They remind me of something... but what? Hmm. Let's think about the left side of the equation some more. It's:
\begin{align*}
     e^{i\alpha}\cdot e^{i\beta} &= \Big( \cos(\alpha)\cos(\beta) - \sin(\alpha)\sin(\beta) \Big) + \Big( \sin(\beta)\cos(\alpha) + \sin(\alpha)\cos(\beta) \Big) i
     \end{align*}
Which, by exponent rules, is:
\begin{align*}
     e^{i\alpha + i\beta}  &= \Big( \cos(\alpha)\cos(\beta) - \sin(\alpha)\sin(\beta) \Big) + \Big( \sin(\beta)\cos(\alpha) + \sin(\alpha)\cos(\beta) \Big) i  \\
    e^{i(\alpha + \beta)} &= \Big( \cos(\alpha)\cos(\beta) - \sin(\alpha)\sin(\beta) \Big) + \Big( \sin(\beta)\cos(\alpha) + \sin(\alpha)\cos(\beta) \Big) i
    \end{align*}
But... that's just the angle $\alpha+\beta$. The left side looks like a complex number with radius $1$ and angle $\alpha+\beta$. So if we rewrite the left side in rectolar form, we get:
\begin{align*}
      \cos(\alpha + \beta) + i\sin(\alpha+\beta)&= \Big( \cos(\alpha)\cos(\beta) - \sin(\alpha)\sin(\beta) \Big) + \Big( \sin(\beta)\cos(\alpha) + \sin(\alpha)\cos(\beta) \Big) i
      \end{align*}
But now we can separate out the real and imaginary parts! I'll highlight the <span style='color: red;'>reals</span> in <span style='color: red;'>red</span> and the <span style='color: purple;'>imaginaries</span> in <span style='color: purple;'>indigo</span>:
\begin{align*}
      {\color{red} \cos(\alpha + \beta) }+ i{\color{purple} \sin(\alpha+\beta) }&= \Big( {\color{red} \cos(\alpha)\cos(\beta) - \sin(\alpha)\sin(\beta) } \Big) + \Big({\color{purple} \sin(\beta)\cos(\alpha) + \sin(\alpha)\cos(\beta) }\Big) i 
\end{align*}
So we get two equations here! From the real parts, we get:
$$   {\color{red} \cos(\alpha + \beta) } = {\color{red} \cos(\alpha)\cos(\beta) - \sin(\alpha)\sin(\beta) }$$
And from the imaginary parts:
$${\color{purple} \sin(\alpha+\beta) } = {\color{purple} \sin(\beta)\cos(\alpha) + \sin(\alpha)\cos(\beta) } $$
But these are those beautiful sum-and-difference identities we spent so long working out back in December!!! We spent like a whole week in class, doing this really cool and really long proof, involving geometry and algebra and the Pythagorean theorem and the Pythagorean identity and ALL TONS OF STUFF, to get:
\begin{align*}
&\text{\bf The Sum and Difference Identities:} \\
&\sin(\alpha + \beta) =  \sin(\alpha)\cos(\beta) + \cos(\alpha)\sin(\beta) \\
&\sin(\alpha - \beta) =  \sin(\alpha)\cos(\beta) - \cos(\alpha)\sin(\beta)  \\
&\cos(\alpha + \beta) = \cos(\alpha)\cos(\beta) - \sin(\alpha)\sin(\beta)  \\
&\cos(\alpha - \beta) = \cos(\alpha)\cos(\beta)  + \sin(\alpha)\sin(\beta)
\end{align*}
And now we've gotten them (or two of them, but we can get the other two pretty easily) just from doing some algebra with complex numbers! A totally different route to the same result. 

What do you think? Do you like this more, or less, than the way we did it in December? What's different? What's similar? I'm genuinely curious! I want to hear your responses! Those of you who were with me in December, I really do want your compare-and-contrast thoughts and feelings (FEELINGS, yes!) about these two VERY DIFFERENT proofs of the same theorem!