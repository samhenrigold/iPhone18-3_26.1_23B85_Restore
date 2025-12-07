@interface InstallPageInstallingOfferView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18ASMessagesProvider30InstallPageInstallingOfferView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation InstallPageInstallingOfferView

- (_TtC18ASMessagesProvider30InstallPageInstallingOfferView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_progressView) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_animationCompletionHandler);
  *v3 = 0;
  v3[1] = 0;
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
  v7 = sub_531ADC(v6, height);
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
  sub_531DE4();
}

@end