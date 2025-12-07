@interface _UIRefreshControlModernReplicatorView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation _UIRefreshControlModernReplicatorView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = _UIRefreshControlModernReplicatorView;
  if ([(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy]|| (objc_msgSend_isEqualToString_(keyCopy) & 1) != 0 || (objc_msgSend_isEqualToString_(keyCopy) & 1) != 0)
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