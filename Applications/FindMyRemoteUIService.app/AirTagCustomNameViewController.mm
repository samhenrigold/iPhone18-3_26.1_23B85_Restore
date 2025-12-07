@interface AirTagCustomNameViewController
- (_TtC21FindMyRemoteUIService30AirTagCustomNameViewController)initWithContentView:(id)view;
- (void)updateContinueButton;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation AirTagCustomNameViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(AirTagCustomNameViewController *)&v5 viewDidAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_nameField] becomeFirstResponder];
}

- (_TtC21FindMyRemoteUIService30AirTagCustomNameViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateContinueButton
{
  selfCopy = self;
  sub_10000C688();
}

@end