@interface SBSystemApertureViewControllerRotationTransitionContext
+ (CGAffineTransform)transformForRotationToInterfaceOrientation:(SEL)orientation;
- (CGAffineTransform)_affineTransform;
- (SBSystemApertureViewControllerRotationTransitionContext)initWithTargetOrientation:(int64_t)orientation;
@end

@implementation SBSystemApertureViewControllerRotationTransitionContext

+ (CGAffineTransform)transformForRotationToInterfaceOrientation:(SEL)orientation
{
  switch(a4)
  {
    case 1:
      v4 = 0.0;
      break;
    case 3:
      v4 = 1.57079633;
      break;
    case 4:
      v4 = -1.57079633;
      break;
    default:
      v4 = 3.14159265;
      if (a4 != 2)
      {
        v4 = 0.0;
      }

      break;
  }

  return CGAffineTransformMakeRotation(retstr, v4);
}

- (SBSystemApertureViewControllerRotationTransitionContext)initWithTargetOrientation:(int64_t)orientation
{
  v9.receiver = self;
  v9.super_class = SBSystemApertureViewControllerRotationTransitionContext;
  v3 = [(_UIViewControllerTransitionContext *)&v9 init];
  if (v3)
  {
    v4 = objc_opt_class();
    if (v4)
    {
      objc_msgSend_transformForRotationToInterfaceOrientation_(v4);
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
      v6 = 0u;
    }

    *(v3 + 184) = v7;
    *(v3 + 200) = v8;
    *(v3 + 168) = v6;
  }

  return v3;
}

- (CGAffineTransform)_affineTransform
{
  v3 = *&self[3].ty;
  *&retstr->a = *&self[3].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].b;
  return self;
}

@end