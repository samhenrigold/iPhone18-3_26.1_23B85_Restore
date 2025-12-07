@interface ASUIRootViewController
- (_TtC16AccessorySetupUI22ASUIRootViewController)initWithCoder:(id)coder;
- (_TtC16AccessorySetupUI22ASUIRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation ASUIRootViewController

- (_TtC16AccessorySetupUI22ASUIRootViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_pickingSession) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ASUIRootViewController();
  [(ASUIRootViewController *)&v2 viewDidLoad];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100002EB4;
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = self;
  aBlock[4] = sub_100002E38;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = &unk_100071290;
  v9 = _Block_copy(aBlock);
  selfCopy = self;
  sub_100002E5C(v6, v7);

  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for ASUIRootViewController();
  [(ASUIRootViewController *)&v11 dismissViewControllerAnimated:animatedCopy completion:v9];

  sub_100002E6C(v6, v7);
  _Block_release(v9);
}

- (_TtC16AccessorySetupUI22ASUIRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end