@interface VFXNodeComponent
- (VFXNodeComponent)initWithType:(int64_t)type component:(id)component;
@end

@implementation VFXNodeComponent

- (VFXNodeComponent)initWithType:(int64_t)type component:(id)component
{
  componentCopy = component;
  v12.receiver = self;
  v12.super_class = VFXNodeComponent;
  v7 = [(VFXNodeComponent *)&v12 init];
  v9 = v7;
  if (v7)
  {
    objc_msgSend_setType_(v7, v8, type);
    objc_msgSend_setComponent_(v9, v10, componentCopy);
  }

  return v9;
}

@end