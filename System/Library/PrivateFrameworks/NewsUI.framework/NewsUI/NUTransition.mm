@interface NUTransition
+ (id)animation;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation NUTransition

+ (id)animation
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NUTransition;
  v2 = objc_msgSendSuper2(&v4, sel_animation);
  [v2 setDelegate:v2];

  return v2;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  completion = [(NUTransition *)self completion];

  if (completion)
  {
    completion2 = [(NUTransition *)self completion];
    completion2[2](completion2, finishedCopy);
  }

  [(NUTransition *)self setDelegate:0];
}

@end