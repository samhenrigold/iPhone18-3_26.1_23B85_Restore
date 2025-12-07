@interface STExpressIntroductionServer
- (_TtC15ScreenTimeAgent27STExpressIntroductionServer)init;
- (void)loadEncodedSettingsForEncodedUser:(NSData *)user withEncodedDefaults:(NSData *)defaults completion:(id)completion;
- (void)saveEncodedDefaults:(NSData *)defaults forEncodedUser:(NSData *)user completion:(id)completion;
- (void)saveEncodedSettings:(NSData *)settings forEncodedUser:(NSData *)user completion:(id)completion;
- (void)saveSettingsDefaultsObjC:(STExpressIntroductionSettingsDefaultsObjC *)c completion:(id)completion;
@end

@implementation STExpressIntroductionServer

- (void)loadEncodedSettingsForEncodedUser:(NSData *)user withEncodedDefaults:(NSData *)defaults completion:(id)completion
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = user;
  v13[3] = defaults;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100140280;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100140288;
  v16[5] = v15;
  userCopy = user;
  defaultsCopy = defaults;
  selfCopy = self;
  sub_10010D4C0(0, 0, v11, &unk_100140290, v16);
}

- (void)saveEncodedSettings:(NSData *)settings forEncodedUser:(NSData *)user completion:(id)completion
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = settings;
  v13[3] = user;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100140260;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100140268;
  v16[5] = v15;
  settingsCopy = settings;
  userCopy = user;
  selfCopy = self;
  sub_10010D4C0(0, 0, v11, &unk_100140270, v16);
}

- (void)saveEncodedDefaults:(NSData *)defaults forEncodedUser:(NSData *)user completion:(id)completion
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = defaults;
  v13[3] = user;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100140240;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100140248;
  v16[5] = v15;
  defaultsCopy = defaults;
  userCopy = user;
  selfCopy = self;
  sub_10010D4C0(0, 0, v11, &unk_100140250, v16);
}

- (void)saveSettingsDefaultsObjC:(STExpressIntroductionSettingsDefaultsObjC *)c completion:(id)completion
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = c;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100140220;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100140550;
  v14[5] = v13;
  cCopy = c;
  selfCopy = self;
  sub_10010D4C0(0, 0, v9, &unk_100140230, v14);
}

- (_TtC15ScreenTimeAgent27STExpressIntroductionServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end