@interface FootnoteView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension12FootnoteView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation FootnoteView

- (_TtC20ProductPageExtension12FootnoteView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_isHighlighted) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6.n128_f64[0] = width;
  v7 = sub_1001336D4(v6, height);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100133990();
}

@end