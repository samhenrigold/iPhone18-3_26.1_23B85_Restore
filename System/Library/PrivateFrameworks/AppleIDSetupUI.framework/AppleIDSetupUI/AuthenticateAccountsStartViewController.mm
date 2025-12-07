@interface AuthenticateAccountsStartViewController
- (_TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController)initWithContentView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AuthenticateAccountsStartViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_240A0D474(selfCopy);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_240A0D888(appearCopy);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for AuthenticateAccountsStartViewController();
  [(AuthenticateAccountsStartViewController *)&v4 viewDidDisappear:disappearCopy];
}

- (_TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end