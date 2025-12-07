@interface SurfaceLayer
- (id)actionForKey:(id)key;
@end

@implementation SurfaceLayer

- (id)actionForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"contents"))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SurfaceLayer;
  return [(SurfaceLayer *)&v6 actionForKey:key];
}

@end