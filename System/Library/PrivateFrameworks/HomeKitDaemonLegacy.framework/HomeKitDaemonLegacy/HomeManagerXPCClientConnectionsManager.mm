@interface HomeManagerXPCClientConnectionsManager
- (BOOL)hasActiveConnections;
- (NSUUID)messageTargetUUID;
- (_TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager)init;
- (void)configure;
- (void)handleActiveAssertionUpdateStateMessage:(id)message;
@end

@implementation HomeManagerXPCClientConnectionsManager

- (NSUUID)messageTargetUUID
{
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_messageTargetUUID, v3);
  v7 = sub_253CCFF18();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (void)configure
{
  selfCopy = self;
  sub_253200C54();
}

- (BOOL)hasActiveConnections
{
  selfCopy = self;
  v3 = sub_253200EC0();

  return v3;
}

- (void)handleActiveAssertionUpdateStateMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  sub_2532020D0(messageCopy);
}

- (_TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end