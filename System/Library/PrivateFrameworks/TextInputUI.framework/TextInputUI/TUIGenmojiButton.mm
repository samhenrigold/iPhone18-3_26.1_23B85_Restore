@interface TUIGenmojiButton
- (BOOL)showText;
- (TUIGenmojiButton)initWithAction:(id)action;
- (TUIGenmojiButton)initWithCoder:(id)coder;
- (TUIGenmojiButton)initWithFrame:(CGRect)frame;
- (void)setShowText:(BOOL)text;
@end

@implementation TUIGenmojiButton

- (BOOL)showText
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___TUIGenmojiButton_viewModel);
  KeyPath = swift_getKeyPath();
  sub_190005098(&qword_1EAD34D60, type metadata accessor for GenmojiButtonView.ViewModel, &unk_1900C0644);
  selfCopy = self;

  sub_1900B0BF0();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;

  LOBYTE(selfCopy) = v3->internalTextComposerClient[0];
  v3, v13, v14, v15, v16, v17, v18, v19;
  return selfCopy;
}

- (void)setShowText:(BOOL)text
{
  selfCopy = self;
  sub_1900029E4(text);
}

- (TUIGenmojiButton)initWithAction:(id)action
{
  v3 = _Block_copy(action);
  v4 = swift_allocObject();
  *v4->internalTextComposerClient = v3;
  return sub_190002BF4(sub_190005088, v4);
}

- (TUIGenmojiButton)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR___TUIGenmojiButton_viewModel;
  type metadata accessor for GenmojiButtonView.ViewModel(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  _s11TextInputUI31DefaultKeyboardSettingsProviderC22__observationRegistrar33_DA9299E8CEE167062A5E24FB32D1EB0511Observation0rI0Vvpfi_0();
  *(&self->super.super.super.isa + v4) = v5;
  result = sub_1900B1930();
  __break(1u);
  return result;
}

- (TUIGenmojiButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end