@interface NDDelayedNotificationScheduler
- (NDDelayedNotificationScheduler)init;
- (void)activate;
- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings;
@end

@implementation NDDelayedNotificationScheduler

- (void)activate
{
  v3 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_100018090(0, 0, v5, &unk_10005AC50, v7);
}

- (NDDelayedNotificationScheduler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings
{
  v7 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = FCNotificationsLog;
  centerCopy = center;
  settingsCopy = settings;
  selfCopy = self;
  v14 = v10;
  v15 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("notification settings changed, will re-schedule alarm", 53, 2, &_mh_execute_header, v14, v15, _swiftEmptyArrayStorage);

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = selfCopy;
  v18 = selfCopy;
  sub_100018090(0, 0, v9, &unk_10005AC08, v17);
}

@end