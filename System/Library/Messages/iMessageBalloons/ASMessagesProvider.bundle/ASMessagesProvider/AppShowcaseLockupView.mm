@interface AppShowcaseLockupView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation AppShowcaseLockupView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_66BEB4();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6.n128_f64[0] = width;
  v7 = sub_66744C(v6, height);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end