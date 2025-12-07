@interface RemoteConfigurator
- (_TtC14softposreaderd18RemoteConfigurator)init;
- (void)enableDiagnosticModeWithEnable:(BOOL)enable reply:(id)reply;
- (void)installWithToken:(id)token launchSEStorageSheet:(BOOL)sheet seStorageSheetBundleID:(id)d seStorageSheetSceneID:(id)iD delegate:(id)delegate reply:(id)reply;
- (void)prepareAndWarnWithToken:(id)token force:(BOOL)force enableStoreAndForward:(BOOL)forward vtid:(id)vtid reply:(id)reply;
- (void)statusWithToken:(id)token options:(int64_t)options reply:(id)reply;
@end

@implementation RemoteConfigurator

- (void)prepareAndWarnWithToken:(id)token force:(BOOL)force enableStoreAndForward:(BOOL)forward vtid:(id)vtid reply:(id)reply
{
  forwardCopy = forward;
  forceCopy = force;
  v12 = _Block_copy(reply);
  if (token)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    token = v14;
    if (vtid)
    {
LABEL_3:
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      vtid = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (vtid)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  selfCopy = self;
  _Block_copy(v12);
  sub_10018D09C(v13, token, forceCopy, forwardCopy, v15, vtid, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);
}

- (void)installWithToken:(id)token launchSEStorageSheet:(BOOL)sheet seStorageSheetBundleID:(id)d seStorageSheetSceneID:(id)iD delegate:(id)delegate reply:(id)reply
{
  sheetCopy = sheet;
  v12 = _Block_copy(reply);
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v13;
  if (d)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v14;
    if (iD)
    {
LABEL_3:
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      iD = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v22 = 0;
    v25 = 0;
    if (iD)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v19 = *&self->instance[OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance + 16];
  v18 = *&self->instance[OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance), v19);
  v20 = *(v18 + 16);
  swift_unknownObjectRetain();
  selfCopy = self;
  v20(v23, v26, sheetCopy, delegate, v22, v25, v15, iD, sub_10018D094, v17, v19, v18);
  swift_unknownObjectRelease();
}

- (void)statusWithToken:(id)token options:(int64_t)options reply:(id)reply
{
  v7 = _Block_copy(reply);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = *&self->instance[OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance + 16];
  v12 = *&self->instance[OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance), v11);
  v13 = *(v12 + 32);
  selfCopy = self;
  v13(v8, v10, options, v11, v12);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7[2](v7, isa, 0);

  _Block_release(v7);
}

- (void)enableDiagnosticModeWithEnable:(BOOL)enable reply:(id)reply
{
  enableCopy = enable;
  v6 = _Block_copy(reply);
  v7 = *&self->instance[OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance + 16];
  v8 = *&self->instance[OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance), v7);
  v9 = *(v8 + 40);
  selfCopy = self;
  v11 = v9(enableCopy, v7, v8);
  v6[2](v6, v11 & 1);

  _Block_release(v6);
}

- (_TtC14softposreaderd18RemoteConfigurator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end