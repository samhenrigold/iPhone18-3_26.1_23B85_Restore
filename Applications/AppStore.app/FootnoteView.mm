@interface FootnoteView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore12FootnoteView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation FootnoteView

- (_TtC8AppStore12FootnoteView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore12FootnoteView_chevronView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore12FootnoteView_isHighlighted) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_10007AC80(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10007AF3C(selfCopy, v2);
}

@end