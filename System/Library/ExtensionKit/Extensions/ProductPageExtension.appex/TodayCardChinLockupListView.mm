@interface TodayCardChinLockupListView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation TodayCardChinLockupListView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003A3FFC();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_1003A4884(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end