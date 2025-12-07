@interface ParameterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation ParameterView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2745F9014();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v6 = sub_2745F90C8(selfCopy, v5, width);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end