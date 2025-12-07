@interface AccessoryInfoFetchController
- (NSUUID)messageTargetUUID;
- (_TtC13HomeKitDaemon28AccessoryInfoFetchController)init;
- (void)handleFetchWithMessage:(id)message;
@end

@implementation AccessoryInfoFetchController

- (NSUUID)messageTargetUUID
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_messageTargetUUID, v3);
  v7 = sub_22A4DB77C();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (void)handleFetchWithMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  sub_22966A0E8(messageCopy);
}

- (_TtC13HomeKitDaemon28AccessoryInfoFetchController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end