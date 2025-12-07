@interface ViewController
- (BOOL)accessibilityPerformEscape;
- (_TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doneHandler;
- (void)homeHandler;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)previousHandler;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ViewController

- (void)homeHandler
{
  selfCopy = self;
  NavigationModel.goHome()();
}

- (void)doneHandler
{
  selfCopy = self;
  sub_23DAB6EF8();
}

- (void)previousHandler
{
  v3 = 1;
  selfCopy = self;
  sub_23DABB0B8(&v3);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  selfCopy = self;
  sub_23DAB6EF8();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_23DAB7F80();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ViewController();
  v4 = v5.receiver;
  [(ViewController *)&v5 viewWillDisappear:disappearCopy];
  sub_23DAB6EF8();
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  sub_23DAB6EF8();

  return 1;
}

- (_TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end