@interface HUGraphicsUtilities
+ (void)setRearrangingAnimation:(BOOL)animation layer:(id)layer frame:(CGRect)frame;
@end

@implementation HUGraphicsUtilities

+ (void)setRearrangingAnimation:(BOOL)animation layer:(id)layer frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layerCopy = layer;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = CGRectGetHeight(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v11 = CGRectGetWidth(v16);
  if (v10 > v11)
  {
    v11 = v10;
  }

  v12 = 1.0 / (v11 / 100.0);
  if (v12 > 1.0)
  {
    v12 = 1.0;
  }

  sub_20D0F0088(animation, layerCopy, v12);
}

@end