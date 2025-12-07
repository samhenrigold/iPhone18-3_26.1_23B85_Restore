@interface UIButton
- (void)configureImageWithSymbolName:(id)name padding:(double)padding;
- (void)configureMediumFontStyle;
- (void)configureWithTitle:(id)title;
- (void)configureWithTitle:(id)title preferredConfiguration:(id)configuration;
- (void)onConfigurationUpdated;
- (void)setupReplayButtonConfiguration;
@end

@implementation UIButton

- (void)configureWithTitle:(id)title
{
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  titleCopy = title;
  selfCopy = self;
  static UIButton.Configuration.borderedProminent()();
  isa = UIButton.Configuration._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  [(UIButton *)selfCopy configureWithTitle:titleCopy preferredConfiguration:isa];
}

- (void)configureWithTitle:(id)title preferredConfiguration:(id)configuration
{
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10002AC9C(v9, v11, v8);

  (*(v6 + 8))(v8, v5);
}

- (void)configureImageWithSymbolName:(id)name padding:(double)padding
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10002B164(padding);
}

- (void)configureMediumFontStyle
{
  selfCopy = self;
  sub_10002B4DC();
}

- (void)onConfigurationUpdated
{
  selfCopy = self;
  [(UIButton *)selfCopy setNeedsUpdateConfiguration];
  [(UIButton *)selfCopy invalidateIntrinsicContentSize];
}

- (void)setupReplayButtonConfiguration
{
  selfCopy = self;
  sub_10002B8C0(selfCopy, v2);
}

@end