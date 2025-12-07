@interface ManagedAppsStatus
+ (id)supportedStatusKeys;
- (_TtC21ManagedAppsSubscriber17ManagedAppsStatus)init;
- (void)queryForStatusWithKeyPaths:(NSArray *)paths store:(RMSubscriberStore *)store completionHandler:(id)handler;
@end

@implementation ManagedAppsStatus

+ (id)supportedStatusKeys
{
  v6[2] = &_swiftEmptySetSingleton;
  v2 = sub_100016E20();
  sub_100010EEC(v6, v2, v3);

  v4.super.isa = sub_100016FB0().super.isa;

  return v4.super.isa;
}

- (void)queryForStatusWithKeyPaths:(NSArray *)paths store:(RMSubscriberStore *)store completionHandler:(id)handler
{
  v9 = sub_100001658(&qword_100020CC8, &qword_100017E28);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = paths;
  v13[3] = store;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_100016FA0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100018198;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100017E40;
  v16[5] = v15;
  pathsCopy = paths;
  storeCopy = store;
  selfCopy = self;
  sub_10000FD6C(0, 0, v11, &unk_100017E48, v16);
}

- (_TtC21ManagedAppsSubscriber17ManagedAppsStatus)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ManagedAppsStatus(self, a2, v2);
  return [(ManagedAppsStatus *)&v4 init];
}

@end