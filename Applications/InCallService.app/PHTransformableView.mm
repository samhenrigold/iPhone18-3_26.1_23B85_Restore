@interface PHTransformableView
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
@end

@implementation PHTransformableView

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  objc_msgSend_transform(self, a2);
  if (CGAffineTransformIsIdentity(&v7))
  {
    v6.receiver = self;
    v6.super_class = PHTransformableView;
    [(PHTransformableView *)&v6 setCenter:x, y];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  objc_msgSend_transform(self, a2);
  if (CGAffineTransformIsIdentity(&v9))
  {
    v8.receiver = self;
    v8.super_class = PHTransformableView;
    [(PHTransformableView *)&v8 setFrame:x, y, width, height];
  }
}

@end