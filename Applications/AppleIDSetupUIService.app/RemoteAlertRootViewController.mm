@interface RemoteAlertRootViewController
- (_TtC21AppleIDSetupUIService29RemoteAlertRootViewController)initWithCoder:(id)coder;
- (_TtC21AppleIDSetupUIService29RemoteAlertRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation RemoteAlertRootViewController

- (_TtC21AppleIDSetupUIService29RemoteAlertRootViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC21AppleIDSetupUIService29RemoteAlertRootViewController_dismissHandler);
  *v4 = 0;
  v4[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_100006EE4();
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for RemoteAlertRootViewController();
  [(RemoteAlertRootViewController *)&v2 viewDidLoad];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC21AppleIDSetupUIService29RemoteAlertRootViewController_dismissHandler);
  if (v3)
  {
    v4 = *&self->scene[OBJC_IVAR____TtC21AppleIDSetupUIService29RemoteAlertRootViewController_dismissHandler];
    selfCopy = self;
    v6 = sub_100007868(v3, v4);
    v3(v6);

    sub_10000651C(v3, v4);
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1000078B0;
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = self;
  aBlock[4] = sub_100007844;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007924;
  aBlock[3] = &unk_10001CC70;
  v9 = _Block_copy(aBlock);
  selfCopy = self;
  sub_100007868(v6, v7);

  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for RemoteAlertRootViewController();
  [(RemoteAlertRootViewController *)&v11 dismissViewControllerAnimated:animatedCopy completion:v9];

  sub_10000651C(v6, v7);
  _Block_release(v9);
}

- (_TtC21AppleIDSetupUIService29RemoteAlertRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end