@interface SecurityStatus
+ (id)supportedStatusKeys;
- (_TtC18SecuritySubscriber14SecurityStatus)init;
- (void)queryForStatusWithKeyPaths:(NSArray *)paths store:(RMSubscriberStore *)store completionHandler:(id)handler;
@end

@implementation SecurityStatus

+ (id)supportedStatusKeys
{
  sub_100001480(&qword_100018938, &qword_10000F448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000F250;
  *(inited + 32) = sub_10000E5E8();
  *(inited + 40) = v3;
  sub_10000C798(inited);
  swift_setDeallocating();
  sub_10000E3CC(inited + 32);
  v4.super.isa = sub_10000E738().super.isa;

  return v4.super.isa;
}

- (void)queryForStatusWithKeyPaths:(NSArray *)paths store:(RMSubscriberStore *)store completionHandler:(id)handler
{
  sub_100001480(&qword_1000188F0, &qword_10000F3A8);
  __chkstk_darwin();
  v10 = &v19 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = paths;
  v12[3] = store;
  v12[4] = v11;
  v12[5] = self;
  v13 = sub_10000E728();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10000F848;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000F3C0;
  v15[5] = v14;
  pathsCopy = paths;
  storeCopy = store;
  selfCopy = self;
  sub_10000AA8C(0, 0, v10, &unk_10000F3C8, v15);
}

- (_TtC18SecuritySubscriber14SecurityStatus)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SecurityStatus(self, a2, v2);
  return [(SecurityStatus *)&v4 init];
}

@end