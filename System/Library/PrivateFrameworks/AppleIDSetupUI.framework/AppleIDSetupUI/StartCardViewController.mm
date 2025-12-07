@interface StartCardViewController
- (_TtC14AppleIDSetupUI23StartCardViewController)initWithContentView:(id)view;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StartCardViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_240A1DB68(selfCopy);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for StartCardViewController();
  v4 = v5.receiver;
  [(StartCardViewController *)&v5 viewWillAppear:appearCopy];
  if (v4[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_viewModel + 88] == 1)
  {
    sub_240A1DFA8();
  }
}

- (_TtC14AppleIDSetupUI23StartCardViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end