---
title: what's the derivative of inverse tangent?
usemathjax: true
layout: post
---





what's the derivative of inverse tangent?

## visually

sketch tanbgent

sketch its inverse

sketch its dericative

sketch its derivative inverse


## algebraically

$$\tan^\text{inv}\big( \tan\theta) = \theta$$

$$\frac{d}{d\theta} \left[\, \tan^\text{inv}\big( \tan\theta) \,\right] = \frac{d}{d\theta} \left[\, \theta \,\right]$$

$$\frac{d}{d\theta} \left[\, \tan^\text{inv}\big( \tan\theta) \,\right] = 1 $$


$$\, \tan^{\text{inv}'}\big( \tan\theta) \cdot \frac{d}{d\theta}\left[ \tan\theta \right] = 1 $$

$$\, \tan^{\text{inv}'}\big( \tan\theta) \cdot \frac{1}{\cos^2(\theta)} = 1 $$

$$\, \tan^{\text{inv}'}\big( \tan\theta) = \cos^2\theta $$


$$\, \tan^{\text{inv}'}\big( \tan\theta) = \frac{1}{\tan^2(\theta) + 1}$$

$$\, \tan^{\text{inv}'}\big( \tan\theta) = \frac{1}{\left(\tan\theta\right)^2 + 1}$$


$$\, \tan^{\text{inv}'}( x) = \frac{1}{x^2 + 1}$$



does this look basically like what we sketched? yeah!




## let's generalize!

the ideas weren't specific to tangent. well, the pytha

we started out with just a general property of an inverse fxn

$$f^\text{inv}\big(\, f(x) \, \big) = x$$


$$\frac{d}{dx} \left[\, f^\text{inv}\big(\, f(x) \, \big) \,\right] = \frac{d}{dx} \left[\, x \,\right]$$

$$\frac{d}{dx} \left[\, f^\text{inv}\big(\, f(x) \, \big) \,\right] = 1$$

$$f^{\text{inv}'}\big(\, f(x) \, \big) \cdot \frac{d}{dx}\Big[\, f(x) \,\Big] = 1$$

$$f^{\text{inv}'}\big(\, f(x) \, \big) \cdot f'(x) = 1$$

$$f^{\text{inv}'}\big(\, f(x) \, \big) = \frac{1}{f'(x)}$$

not a heklpful form yet

we want $f^{\text{inv}'}(x)$, not $f^{\text{inv}'}\big(\, f(x) \, \big)$

set $x=f^\text{inv}(x)$


$$f^{\text{inv}'}\big(\, f(\underbrace{x}_{=f^\text{inv}(x)}) \, \big) = \frac{1}{f'(\underbrace{x}_{=f^\text{inv}(x)})}$$


$$f^{\text{inv}'}\big(\, f(f^\text{inv}(x)) \, \big) = \frac{1}{f'(f^\text{inv}(x))}$$


$$f^{\text{inv}'}\big(\, x \, \big) = \frac{1}{\,\, f'\big(\, f^\text{inv}(x) \,\big) \,\,}$$


## okay cool example?

i think this is 