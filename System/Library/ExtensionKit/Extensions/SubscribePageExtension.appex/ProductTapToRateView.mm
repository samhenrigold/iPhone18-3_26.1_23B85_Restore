@interface ProductTapToRateView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension20ProductTapToRateView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation ProductTapToRateView

- (_TtC22SubscribePageExtension20ProductTapToRateView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_rateAction;
  v5 = sub_10000C518(&qword_1009235F8, &qword_1007A68B8);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_isSingleColumn) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10002B7C8();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_10002BDA0(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end