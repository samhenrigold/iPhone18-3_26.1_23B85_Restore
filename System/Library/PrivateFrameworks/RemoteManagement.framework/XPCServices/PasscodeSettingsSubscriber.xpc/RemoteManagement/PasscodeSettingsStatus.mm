@interface PasscodeSettingsStatus
+ (id)supportedStatusKeys;
- (_TtC26PasscodeSettingsSubscriber22PasscodeSettingsStatus)init;
- (void)queryForStatusWithKeyPaths:(NSArray *)paths store:(RMSubscriberStore *)store completionHandler:(id)handler;
@end

@implementation PasscodeSettingsStatus

+ (id)supportedStatusKeys
{
  sub_100009BE4();
  v2.super.isa = sub_10000AB6C().super.isa;

  return v2.super.isa;
}

- (void)queryForStatusWithKeyPaths:(NSArray *)paths store:(RMSubscriberStore *)store completionHandler:(id)handler
{
  sub_1000014B8(&qword_100014908, &qword_10000B678);
  __chkstk_darwin();
  v10 = &v19 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = paths;
  v12[3] = store;
  v12[4] = v11;
  v12[5] = self;
  v13 = sub_10000AB5C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10000B918;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000B690;
  v15[5] = v14;
  pathsCopy = paths;
  storeCopy = store;
  selfCopy = self;
  sub_100008414(0, 0, v10, &unk_10000B698, v15);
}

- (_TtC26PasscodeSettingsSubscriber22PasscodeSettingsStatus)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PasscodeSettingsStatus(self, a2, v2);
  return [(PasscodeSettingsStatus *)&v4 init];
}

@end