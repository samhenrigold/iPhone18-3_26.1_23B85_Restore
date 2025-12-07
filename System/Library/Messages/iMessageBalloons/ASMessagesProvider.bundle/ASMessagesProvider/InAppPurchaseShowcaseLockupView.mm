@interface InAppPurchaseShowcaseLockupView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation InAppPurchaseShowcaseLockupView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_4926E8();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_492A50(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end