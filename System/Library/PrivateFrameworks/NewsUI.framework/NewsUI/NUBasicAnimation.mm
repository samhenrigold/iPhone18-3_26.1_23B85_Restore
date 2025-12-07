@interface NUBasicAnimation
+ (id)animationWithKeyPath:(id)path;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation NUBasicAnimation

+ (id)animationWithKeyPath:(id)path
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___NUBasicAnimation;
  v3 = objc_msgSendSuper2(&v5, sel_animationWithKeyPath_, path);
  [v3 setDelegate:v3];

  return v3;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  completion = [(NUBasicAnimation *)self completion];

  if (completion)
  {
    completion2 = [(NUBasicAnimation *)self completion];
    completion2[2](completion2, finishedCopy);
  }
}

@end