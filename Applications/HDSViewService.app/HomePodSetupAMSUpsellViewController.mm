@interface HomePodSetupAMSUpsellViewController
- (_TtC14HDSViewService35HomePodSetupAMSUpsellViewController)initWithContentView:(id)view;
- (void)dynamicViewController:(id)controller didResolveWithResult:(id)result error:(id)error;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HomePodSetupAMSUpsellViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10005DCC4();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupAMSUpsellViewController(0);
  v4 = v5.receiver;
  [(HomePodSetupAMSUpsellViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }
}

- (_TtC14HDSViewService35HomePodSetupAMSUpsellViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dynamicViewController:(id)controller didResolveWithResult:(id)result error:(id)error
{
  if (result)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_10005EE2C(controllerCopy, v8, error);
}

@end