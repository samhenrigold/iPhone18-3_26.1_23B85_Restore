@interface PASVSSetupEventPresenter
- (_TtC14PASViewService24PASVSSetupEventPresenter)init;
- (_TtP14PASViewService22PASViewServiceProtocol_)delegate;
- (void)authCompleted:(CUMessageSession *)completed completionHandler:(id)handler;
- (void)authRequested;
- (void)proximitySetupCompletedWithResult:(id)result;
- (void)setDelegate:(id)delegate;
- (void)setPresentingViewController:(id)controller;
- (void)showErrorWithTitle:(id)title message:(id)message;
- (void)showManualPinEntry;
- (void)showPinEntryError;
- (void)showProxCard;
@end

@implementation PASVSSetupEventPresenter

- (void)setPresentingViewController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_presentingViewController);
  *(&self->super.isa + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_presentingViewController) = controller;
  controllerCopy = controller;
}

- (_TtP14PASViewService22PASViewServiceProtocol_)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  *(&self->super.isa + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)showProxCard
{
  selfCopy = self;
  sub_100008B04();
}

- (void)authRequested
{
  selfCopy = self;
  sub_10000AEBC();
}

- (void)showManualPinEntry
{
  selfCopy = self;
  sub_10000B0D4();
}

- (void)showPinEntryError
{
  selfCopy = self;
  sub_10000B6EC();
}

- (void)authCompleted:(CUMessageSession *)completed completionHandler:(id)handler
{
  v7 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = completed;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100017BB8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100017BC8;
  v14[5] = v13;
  completedCopy = completed;
  selfCopy = self;
  sub_10000D1BC(0, 0, v9, &unk_100017BD8, v14);
}

- (void)showErrorWithTitle:(id)title message:(id)message
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  sub_10000C3D8(v5, v7, v8, v10);
}

- (_TtC14PASViewService24PASVSSetupEventPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)proximitySetupCompletedWithResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  sub_10000D8D8();
}

@end