@interface _UIPopoverShapeLayerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation _UIPopoverShapeLayerView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if (objc_msgSend_isEqualToString_(@"path"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIPopoverShapeLayerView;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end