@interface PasscodeEmbeddedParentViewController
- (_TtC10CoreAuthUI36PasscodeEmbeddedParentViewController)initWithCoder:(id)coder;
- (_TtC10CoreAuthUI36PasscodeEmbeddedParentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)verifyPasscode:(id)passcode reply:(id)reply;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PasscodeEmbeddedParentViewController

- (_TtC10CoreAuthUI36PasscodeEmbeddedParentViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  v5 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_verifyPasscode);
  *v6 = 0;
  v6[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_1000488F0();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  ObjectType = swift_getObjectType();
  v6 = sub_1000282B4(&qword_1000B0150, &qword_100078578);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v14.receiver = self;
  v14.super_class = ObjectType;
  selfCopy = self;
  [(PasscodeEmbeddedParentViewController *)&v14 viewWillAppear:appearCopy];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = selfCopy;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_1000492E8(0, 0, v8, &unk_100078700, v13);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  ObjectType = swift_getObjectType();
  v6 = sub_1000282B4(&qword_1000B0150, &qword_100078578);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v14.receiver = self;
  v14.super_class = ObjectType;
  selfCopy = self;
  [(PasscodeEmbeddedParentViewController *)&v14 viewWillDisappear:disappearCopy];
  if (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_dismissKeyboardOnDissappear) == 1)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    type metadata accessor for MainActor();
    v11 = selfCopy;
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    sub_1000492E8(0, 0, v8, &unk_1000786F8, v13);
  }
}

- (void)verifyPasscode:(id)passcode reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_verifyPasscode);
  if (v10)
  {
    v11 = *&self->passcodeViewController[OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_verifyPasscode];
    v12 = v9;
    selfCopy = self;
    sub_1000299DC(v10, v11);
    v10(v6, v8, sub_10003072C, v12);

    sub_10002AA04(v10, v11);
  }

  else
  {
  }
}

- (_TtC10CoreAuthUI36PasscodeEmbeddedParentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end