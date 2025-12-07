@interface ReviewSummaryCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation ReviewSummaryCollectionViewCell

- (_TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(type metadata accessor for ReviewSummaryView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for ReviewSummaryCollectionViewCell(0);
  v2 = v12.receiver;
  [(ReviewSummaryCollectionViewCell *)&v12 layoutSubviews];
  contentView = [v2 contentView];
  sub_100009D34();
  sub_1007477B4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView] setFrame:{v5, v7, v9, v11}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  traitCollection = [(ReviewSummaryCollectionViewCell *)selfCopy traitCollection];
  v7.n128_f64[0] = width;
  v8 = sub_1002AE008(traitCollection, v7, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end