@interface TodayCardThreeLineOverlayView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TodayCardThreeLineOverlayView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10002862C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1000289B8(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1000292C8(change);
}

@end