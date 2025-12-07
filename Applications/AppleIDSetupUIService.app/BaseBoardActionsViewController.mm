@interface BaseBoardActionsViewController
- (_TtC21AppleIDSetupUIService30BaseBoardActionsViewController)initWithCoder:(id)coder;
- (_TtC21AppleIDSetupUIService30BaseBoardActionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation BaseBoardActionsViewController

- (_TtC21AppleIDSetupUIService30BaseBoardActionsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_viewSessionController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_100006EE4();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10000CBBC(appear, selfCopy);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseBoardActionsViewController();
  v4 = v7.receiver;
  [(BaseBoardActionsViewController *)&v7 viewDidDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_viewSessionController];
  if (v5)
  {
    v6 = v5;
    [v6 invalidate];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC21AppleIDSetupUIService30BaseBoardActionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end