@interface ProductTapToRateCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension34ProductTapToRateCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation ProductTapToRateCollectionViewCell

- (_TtC22SubscribePageExtension34ProductTapToRateCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension34ProductTapToRateCollectionViewCell_productTapToRateView;
  type metadata accessor for ProductTapToRateView(0);
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002ACC1C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_10002BDA0(width, height);
  v8 = v7;
  isHidden = [*(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension34ProductTapToRateCollectionViewCell_separatorView) isHidden];

  if (isHidden)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 + 24.0;
  }

  v11 = v6;
  result.height = v10;
  result.width = v11;
  return result;
}

@end