@interface NUSlideViewAnimator
- (CGAffineTransform)fromViewTransformForDirection:(SEL)direction;
- (CGAffineTransform)toViewTransformForDirection:(SEL)direction;
- (CGRect)bounds;
- (NUSlideViewAnimator)initWithBounds:(CGRect)bounds;
- (unint64_t)animationOptionsForAnimationFactory:(id)factory;
- (void)setMediaTimingFunction:(id)function;
- (void)translateFromView:(id)view toView:(id)toView direction:(unint64_t)direction completion:(id)completion;
@end

@implementation NUSlideViewAnimator

- (NUSlideViewAnimator)initWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8.receiver = self;
  v8.super_class = NUSlideViewAnimator;
  result = [(NUSlideViewAnimator *)&v8 init];
  if (result)
  {
    result->_animating = 0;
    result->_duration = 0.75;
    result->_bounds.origin.x = x;
    result->_bounds.origin.y = y;
    result->_bounds.size.width = width;
    result->_bounds.size.height = height;
    result->_translateBoundsPadding = 1.0;
  }

  return result;
}

- (void)translateFromView:(id)view toView:(id)toView direction:(unint64_t)direction completion:(id)completion
{
  viewCopy = view;
  toViewCopy = toView;
  completionCopy = completion;
  [MEMORY[0x277CCACC8] isMainThread];
  [(NUSlideViewAnimator *)self setAnimating:1];
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  objc_msgSend_toViewTransformForDirection_(self);
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  objc_msgSend_fromViewTransformForDirection_(self);
  v31[0] = v35;
  v31[1] = v36;
  v31[2] = v37;
  [toViewCopy setTransform:v31];
  animationFactory = [(NUSlideViewAnimator *)self animationFactory];
  v13 = [(NUSlideViewAnimator *)self animationOptionsForAnimationFactory:animationFactory];

  v14 = MEMORY[0x277D75D18];
  [(NUSlideViewAnimator *)self duration];
  v16 = v15;
  animationFactory2 = [(NUSlideViewAnimator *)self animationFactory];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __69__NUSlideViewAnimator_translateFromView_toView_direction_completion___block_invoke;
  v25[3] = &unk_2799A33C8;
  v26 = toViewCopy;
  v27 = viewCopy;
  v28 = v32;
  v29 = v33;
  v30 = v34;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__NUSlideViewAnimator_translateFromView_toView_direction_completion___block_invoke_2;
  v21[3] = &unk_2799A33F0;
  selfCopy = self;
  v24 = completionCopy;
  v22 = v27;
  v18 = completionCopy;
  v19 = v27;
  v20 = toViewCopy;
  [v14 _animateWithDuration:v13 delay:animationFactory2 options:v25 factory:v21 animations:v16 completion:0.0];
}

uint64_t __69__NUSlideViewAnimator_translateFromView_toView_direction_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v6 = *MEMORY[0x277CBF2C0];
  v7 = v3;
  v8 = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:&v6];
  v4 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = v4;
  v8 = *(a1 + 80);
  return [*(a1 + 40) setTransform:&v6];
}

uint64_t __69__NUSlideViewAnimator_translateFromView_toView_direction_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v6[0] = *MEMORY[0x277CBF2C0];
  v6[1] = v3;
  v6[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v6];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))();
  }

  return [*(a1 + 40) setAnimating:0];
}

- (void)setMediaTimingFunction:(id)function
{
  functionCopy = function;
  if (functionCopy)
  {
    v4 = [[NUAnimationFactory alloc] initWithMediaTimingFunction:functionCopy];
    [(NUSlideViewAnimator *)self setAnimationFactory:v4];
  }

  else
  {
    [(NUSlideViewAnimator *)self setAnimationFactory:0];
  }
}

- (CGAffineTransform)fromViewTransformForDirection:(SEL)direction
{
  [(NUSlideViewAnimator *)self bounds];
  Height = CGRectGetHeight(v16);
  [(NUSlideViewAnimator *)self translateBoundsPadding];
  v9 = v8;
  [(NUSlideViewAnimator *)self bounds];
  Width = CGRectGetWidth(v17);
  result = [(NUSlideViewAnimator *)self translateBoundsPadding];
  if (a4 > 1)
  {
    v14 = Width + v12;
    if (a4 == 2)
    {
      v14 = -v14;
    }

    else if (a4 != 3)
    {
      return result;
    }

    v13 = 0.0;
  }

  else
  {
    v13 = Height + v9;
    if (a4)
    {
      if (a4 != 1)
      {
        return result;
      }

      v13 = -v13;
    }

    v14 = 0.0;
  }

  return CGAffineTransformMakeTranslation(retstr, v14, v13);
}

- (CGAffineTransform)toViewTransformForDirection:(SEL)direction
{
  [(NUSlideViewAnimator *)self bounds];
  Height = CGRectGetHeight(v16);
  [(NUSlideViewAnimator *)self translateBoundsPadding];
  v9 = v8;
  [(NUSlideViewAnimator *)self bounds];
  Width = CGRectGetWidth(v17);
  result = [(NUSlideViewAnimator *)self translateBoundsPadding];
  if (a4 > 1)
  {
    v14 = Width + v12;
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        return result;
      }

      v14 = -v14;
    }

    v13 = 0.0;
  }

  else
  {
    v13 = Height + v9;
    if (a4)
    {
      if (a4 != 1)
      {
        return result;
      }
    }

    else
    {
      v13 = -v13;
    }

    v14 = 0.0;
  }

  return CGAffineTransformMakeTranslation(retstr, v14, v13);
}

- (unint64_t)animationOptionsForAnimationFactory:(id)factory
{
  if (factory)
  {
    return 393216;
  }

  else
  {
    return 0;
  }
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end