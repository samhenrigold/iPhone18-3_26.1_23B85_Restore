@interface AirTagCustomEmojiViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation AirTagCustomEmojiViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(AirTagCustomEmojiViewController *)&v5 viewDidAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_hiddenEmojiField] becomeFirstResponder];
}

- (_TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  fieldCopy = field;
  selfCopy = self;
  v9 = sub_10000E42C();

  return v9;
}

@end