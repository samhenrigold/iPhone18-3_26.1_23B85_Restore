@interface HomeManagerXPCClientConnectionsManager
- (BOOL)hasActiveConnections;
- (NSUUID)messageTargetUUID;
- (_TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager)init;
- (void)configure;
- (void)handleActiveAssertionUpdateStateMessage:(id)message;
@end

@implementation HomeManagerXPCClientConnectionsManager

- (NSUUID)messageTargetUUID
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_messageTargetUUID, v3);
  v7 = sub_22A4DB77C();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (void)configure
{
  selfCopy = self;
  sub_229793F64();
}

- (BOOL)hasActiveConnections
{
  selfCopy = self;
  v3 = sub_2297941D0();

  return v3;
}

- (void)handleActiveAssertionUpdateStateMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  sub_229794820(messageCopy);
}

- (_TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end