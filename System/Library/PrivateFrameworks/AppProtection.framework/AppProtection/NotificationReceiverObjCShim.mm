@interface NotificationReceiverObjCShim
- (_TtC13AppProtection28NotificationReceiverObjCShim)init;
- (void)receivedNotification:(id)notification;
@end

@implementation NotificationReceiverObjCShim

- (void)receivedNotification:(id)notification
{
  v4 = sub_185B6781C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B677DC();
  selfCopy = self;
  sub_185B0B47C(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtC13AppProtection28NotificationReceiverObjCShim)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end