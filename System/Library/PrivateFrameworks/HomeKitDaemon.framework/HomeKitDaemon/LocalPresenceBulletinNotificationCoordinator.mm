@interface LocalPresenceBulletinNotificationCoordinator
- (NSUUID)messageTargetUUID;
- (_TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator)init;
- (void)handlePresenceStateChanged:(id)changed;
- (void)handlePresenceStateChangedMessage:(id)message;
- (void)setMessageTargetUUID:(id)d;
@end

@implementation LocalPresenceBulletinNotificationCoordinator

- (NSUUID)messageTargetUUID
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_messageTargetUUID;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8 = sub_22A4DB77C();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)setMessageTargetUUID:(id)d
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v8 = OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_messageTargetUUID;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (void)handlePresenceStateChanged:(id)changed
{
  v4 = sub_22A4DB21C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();
  selfCopy = self;
  sub_22983A908();

  (*(v5 + 8))(v7, v4);
}

- (void)handlePresenceStateChangedMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  sub_22983B668(messageCopy);
}

- (_TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end