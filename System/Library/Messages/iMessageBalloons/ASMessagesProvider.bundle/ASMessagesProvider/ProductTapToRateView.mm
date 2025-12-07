@interface ProductTapToRateView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18ASMessagesProvider20ProductTapToRateView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation ProductTapToRateView

- (_TtC18ASMessagesProvider20ProductTapToRateView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_rateAction;
  v5 = sub_BD88(&qword_93FAE0, &qword_77ED78);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_isSingleColumn) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_32B00();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_330D8(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end