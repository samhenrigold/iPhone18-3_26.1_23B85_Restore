@interface FootnoteView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18ASMessagesProvider12FootnoteView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation FootnoteView

- (_TtC18ASMessagesProvider12FootnoteView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_chevronView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLightensOnHighlight) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_isHighlighted) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6.n128_f64[0] = width;
  v7 = sub_14EE6C(v6, height);
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
  sub_14F128();
}

@end