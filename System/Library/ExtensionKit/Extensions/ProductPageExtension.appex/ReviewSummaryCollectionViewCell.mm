@interface ReviewSummaryCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension31ReviewSummaryCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation ReviewSummaryCollectionViewCell

- (_TtC20ProductPageExtension31ReviewSummaryCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension31ReviewSummaryCollectionViewCell_itemLayoutContext;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC20ProductPageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(type metadata accessor for ReviewSummaryView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_10077156C();
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
  sub_1000ACA5C();
  sub_10076422C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [*&v2[OBJC_IVAR____TtC20ProductPageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView] setFrame:{v5, v7, v9, v11}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  traitCollection = [(ReviewSummaryCollectionViewCell *)selfCopy traitCollection];
  v7 = sub_1003D8880(traitCollection, width, height);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end