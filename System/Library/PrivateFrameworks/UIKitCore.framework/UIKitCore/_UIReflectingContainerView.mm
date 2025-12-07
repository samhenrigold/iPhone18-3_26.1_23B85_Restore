@interface _UIReflectingContainerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation _UIReflectingContainerView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = _UIReflectingContainerView;
  if ([(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(keyCopy);
  }

  return isEqualToString;
}

@end