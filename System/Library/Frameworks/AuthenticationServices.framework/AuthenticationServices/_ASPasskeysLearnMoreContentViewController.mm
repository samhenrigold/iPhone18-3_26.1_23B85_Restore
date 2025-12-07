@interface _ASPasskeysLearnMoreContentViewController
- (_ASPasskeysLearnMoreContentViewController)init;
- (id)_contentBodyAttributedString;
- (id)_passkeySymbolHeaderImage;
- (void)_setUpContentBodyText;
- (void)viewDidLoad;
@end

@implementation _ASPasskeysLearnMoreContentViewController

- (_ASPasskeysLearnMoreContentViewController)init
{
  v3 = +[_ASPasskeysLearnMoreContent titleString];
  v4 = +[_ASPasskeysLearnMoreContent subtitleString];
  v7.receiver = self;
  v7.super_class = _ASPasskeysLearnMoreContentViewController;
  v5 = [(_ASPasskeysLearnMoreContentViewController *)&v7 initWithTitle:v3 detailText:v4 symbolName:0];

  return v5;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = _ASPasskeysLearnMoreContentViewController;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  [(_ASPasskeysLearnMoreContentViewController *)self _setUpContentBodyText];
  headerView = [(_ASPasskeysLearnMoreContentViewController *)self headerView];
  _passkeySymbolHeaderImage = [(_ASPasskeysLearnMoreContentViewController *)self _passkeySymbolHeaderImage];
  [headerView setIcon:_passkeySymbolHeaderImage accessibilityLabel:0];
}

- (id)_passkeySymbolHeaderImage
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v3 = MEMORY[0x1E69DCAD8];
  tintColor = [MEMORY[0x1E69DC888] tintColor];
  v5 = [v3 configurationWithHierarchicalColor:tintColor];

  v6 = [v5 configurationByApplyingConfiguration:v2];
  v7 = MEMORY[0x1E69DCAB8];
  v8 = +[_ASPasskeysLearnMoreContent systemImageName];
  v9 = [v7 systemImageNamed:v8 withConfiguration:v6];

  return v9;
}

- (void)_setUpContentBodyText
{
  v23[4] = *MEMORY[0x1E69E9840];
  contentView = [(_ASPasskeysLearnMoreContentViewController *)self contentView];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  _contentBodyAttributedString = [(_ASPasskeysLearnMoreContentViewController *)self _contentBodyAttributedString];
  [v4 setAttributedText:_contentBodyAttributedString];

  v6 = MEMORY[0x1E69DB878];
  v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v8 = [v6 fontWithDescriptor:v7 size:0.0];
  [v4 setFont:v8];

  [v4 setAdjustsFontForContentSizeCategory:1];
  [v4 setNumberOfLines:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:v4];
  v17 = MEMORY[0x1E696ACD8];
  topAnchor = [v4 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[0] = v20;
  bottomAnchor = [v4 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[1] = v9;
  leadingAnchor = [v4 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v23[2] = v12;
  trailingAnchor = [v4 trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v17 activateConstraints:v16];
}

- (id)_contentBodyAttributedString
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithScale:-1];
  v4 = [v2 imageWithConfiguration:v3];
  v5 = [v4 imageWithRenderingMode:2];

  tintColor = [MEMORY[0x1E69DC888] tintColor];
  v7 = [v5 imageWithTintColor:tintColor renderingMode:2];

  v8 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v7];
  v9 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v8];
  v10 = objc_alloc(MEMORY[0x1E696AD40]);
  v11 = +[_ASPasskeysLearnMoreContent bodyString];
  v12 = [v10 initWithString:v11];

  v15 = @"{square.and.arrow.up}";
  v16[0] = v9;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v12 safari_replaceCharactersWithStringBindings:v13];

  return v12;
}

@end