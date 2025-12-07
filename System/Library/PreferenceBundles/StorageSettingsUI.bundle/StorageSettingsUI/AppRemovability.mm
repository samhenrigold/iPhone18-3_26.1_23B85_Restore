@interface AppRemovability
+ (void)isAllowedAndPossibleWithApp:(LSApplicationRecord *)app completionHandler:(id)handler;
- (_TtC17StorageSettingsUI15AppRemovability)init;
@end

@implementation AppRemovability

+ (void)isAllowedAndPossibleWithApp:(LSApplicationRecord *)app completionHandler:(id)handler
{
  v7 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = app;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_81AB8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_8B598;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_8B5A8;
  v14[5] = v13;
  appCopy = app;
  sub_651B8(0, 0, v9, &unk_8B5B8, v14);
}

- (_TtC17StorageSettingsUI15AppRemovability)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppRemovability();
  return [(AppRemovability *)&v3 init];
}

@end