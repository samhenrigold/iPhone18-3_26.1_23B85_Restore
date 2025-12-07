@interface InstallPageInstallingOfferView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore30InstallPageInstallingOfferView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation InstallPageInstallingOfferView

- (_TtC8AppStore30InstallPageInstallingOfferView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_progressView) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_animationCompletionHandler);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1004985C8(width, height);
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
  sub_1004988D0();
}

@end