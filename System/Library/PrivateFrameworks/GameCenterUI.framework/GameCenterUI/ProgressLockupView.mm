@interface ProgressLockupView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation ProgressLockupView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_24E169BB4(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E169CC0();
}

@end