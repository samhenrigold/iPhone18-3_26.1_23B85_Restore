@interface PKTextInputFeedbackRect
+ (PKTextInputFeedbackRect)rectWithFrame:(CGFloat)frame;
- (CGRect)rect;
@end

@implementation PKTextInputFeedbackRect

+ (PKTextInputFeedbackRect)rectWithFrame:(CGFloat)frame
{
  objc_opt_self();
  v9 = objc_alloc_init(PKTextInputFeedbackRect);
  v9->_rect.origin.x = a2;
  v9->_rect.origin.y = frame;
  v9->_rect.size.width = a4;
  v9->_rect.size.height = a5;

  return v9;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end