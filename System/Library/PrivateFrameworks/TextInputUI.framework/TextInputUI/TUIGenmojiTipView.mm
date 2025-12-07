@interface TUIGenmojiTipView
- (TUIGenmojiTipView)initWith:(id)with;
- (TUIGenmojiTipView)initWithCoder:(id)coder;
- (TUIGenmojiTipView)initWithFrame:(CGRect)frame;
- (void)setHostingController:(id)controller;
@end

@implementation TUIGenmojiTipView

- (void)setHostingController:(id)controller
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___TUIGenmojiTipView_hostingController);
  *(&self->super.super.super.isa + OBJC_IVAR___TUIGenmojiTipView_hostingController) = controller;
  controllerCopy = controller;
}

- (TUIGenmojiTipView)initWith:(id)with
{
  v3 = _Block_copy(with);
  v4 = swift_allocObject();
  *v4->internalTextComposerClient = v3;
  sub_18FFFB5BC(sub_18FFFC2CC, v4);
  return result;
}

- (TUIGenmojiTipView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR___TUIGenmojiTipView_viewModel;
  type metadata accessor for TipView.ViewModel(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  _s11TextInputUI31DefaultKeyboardSettingsProviderC22__observationRegistrar33_DA9299E8CEE167062A5E24FB32D1EB0511Observation0rI0Vvpfi_0();
  *(&self->super.super.super.isa + v4) = v5;
  result = sub_1900B1930();
  __break(1u);
  return result;
}

- (TUIGenmojiTipView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end