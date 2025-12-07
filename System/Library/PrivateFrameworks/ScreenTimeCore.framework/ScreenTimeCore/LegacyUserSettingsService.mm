@interface LegacyUserSettingsService
- (void)deleteUserSettingsFor:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler;
- (void)insertWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)settings for:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler;
- (void)updateWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)settings for:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler;
- (void)userIdentifiersWithCompletionHandler:(id)handler;
- (void)userSettingsFor:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler;
@end

@implementation LegacyUserSettingsService

- (void)userIdentifiersWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100142810;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142080;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100142820, v12);
}

- (void)userSettingsFor:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001427C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001427D0;
  v14[5] = v13;
  forCopy = for;

  sub_10010D4C0(0, 0, v9, &unk_1001427D8, v14);
}

- (void)insertWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)settings for:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = settings;
  v13[3] = for;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001427A0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001427A8;
  v16[5] = v15;
  settingsCopy = settings;
  forCopy = for;

  sub_10010D4C0(0, 0, v11, &unk_1001427B0, v16);
}

- (void)updateWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)settings for:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = settings;
  v13[3] = for;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142778;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100142780;
  v16[5] = v15;
  settingsCopy = settings;
  forCopy = for;

  sub_10010D4C0(0, 0, v11, &unk_100142788, v16);
}

- (void)deleteUserSettingsFor:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142760;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100140550;
  v14[5] = v13;
  forCopy = for;

  sub_10010D4C0(0, 0, v9, &unk_100140230, v14);
}

@end