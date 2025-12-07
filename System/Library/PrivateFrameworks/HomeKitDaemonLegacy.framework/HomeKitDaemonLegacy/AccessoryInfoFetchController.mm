@interface AccessoryInfoFetchController
- (NSUUID)messageTargetUUID;
- (_TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController)init;
@end

@implementation AccessoryInfoFetchController

- (NSUUID)messageTargetUUID
{
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_messageTargetUUID, v3);
  v7 = sub_253CCFF18();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (_TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end