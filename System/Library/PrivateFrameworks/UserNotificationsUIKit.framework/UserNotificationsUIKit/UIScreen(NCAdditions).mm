@interface UIScreen(NCAdditions)
+ (CGAffineTransform)nc_transformForScreenOriginRotation:()NCAdditions;
+ (uint64_t)nc_counterTransformForActiveInterfaceOrientation;
+ (uint64_t)nc_transformForInterfaceOrientation:()NCAdditions;
- (void)nc_bounds;
@end

@implementation UIScreen(NCAdditions)

- (void)nc_bounds
{
  [self _referenceBounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = objc_opt_class();
  [*MEMORY[0x277D76620] activeInterfaceOrientation];
  if (v9)
  {
    objc_msgSend_nc_transformForInterfaceOrientation_(v9);
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  v11.origin.x = v2;
  v11.origin.y = v4;
  v11.size.width = v6;
  v11.size.height = v8;
  CGRectApplyAffineTransform(v11, &v10);
}

+ (CGAffineTransform)nc_transformForScreenOriginRotation:()NCAdditions
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  v6 = v5;
  v8 = v7;

  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeTranslation(&v10, v6 * 0.5, v8 * 0.5);
  CGAffineTransformRotate(&v11, &v10, a2);
  v10 = v11;
  return CGAffineTransformTranslate(self, &v10, v6 * -0.5, v8 * -0.5);
}

+ (uint64_t)nc_transformForInterfaceOrientation:()NCAdditions
{
  switch(a3)
  {
    case 1:
      v3 = 0.0;
      break;
    case 3:
      v3 = 1.57079633;
      break;
    case 4:
      v3 = -1.57079633;
      break;
    default:
      v3 = 3.14159265;
      if (a3 != 2)
      {
        v3 = 0.0;
      }

      break;
  }

  return [self nc_transformForScreenOriginRotation:v3];
}

+ (uint64_t)nc_counterTransformForActiveInterfaceOrientation
{
  [*MEMORY[0x277D76620] activeInterfaceOrientation];

  return objc_msgSend_nc_transformForInterfaceOrientation_(self);
}

@end