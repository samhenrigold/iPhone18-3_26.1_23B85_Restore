@interface AccountActionSectionFooterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension30AccountActionSectionFooterView)initWithCoder:(id)coder;
- (void)buttonTapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)tintColorDidChange;
@end

@implementation AccountActionSectionFooterView

- (_TtC20ProductPageExtension30AccountActionSectionFooterView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_tapGestureRecognizer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_isCentered) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_text);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_buttonAction);
  *v4 = 0;
  v4[1] = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100700924();
}

- (void)buttonTapped
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_buttonAction);
  if (v2)
  {
    v3 = *&self->titleLabel[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_buttonAction];
    selfCopy = self;
    v5 = sub_10001CE50(v2, v3);
    v2(v5);

    sub_1000167E0(v2, v3);
  }
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_100700D88();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10070101C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_text);
  v6 = *&self->titleLabel[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_text];

  selfCopy = self;
  [(AccountActionSectionFooterView *)selfCopy layoutMargins];
  sub_100701570(v5, v6, selfCopy, width, v8, v9, v10, v11);
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

@end