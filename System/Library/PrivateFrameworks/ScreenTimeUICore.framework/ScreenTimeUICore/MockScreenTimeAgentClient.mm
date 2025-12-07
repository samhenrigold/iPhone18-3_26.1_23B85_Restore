@interface MockScreenTimeAgentClient
- (void)deleteUserSettingsFor:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler;
- (void)insertWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)settings for:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler;
- (void)updateWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)settings for:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler;
- (void)userIdentifiersWithCompletionHandler:(id)handler;
- (void)userSettingsFor:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler;
@end

@implementation MockScreenTimeAgentClient

- (void)insertWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)settings for:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = settings;
  v13[3] = for;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_264E25248();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_264E26B60;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_264E26B68;
  v16[5] = v15;
  settingsCopy = settings;
  forCopy = for;

  sub_264D9A9F0(0, 0, v11, &unk_264E26B70, v16);
}

- (void)updateWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)settings for:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = settings;
  v13[3] = for;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_264E25248();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_264E26B40;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_264E26B48;
  v16[5] = v15;
  settingsCopy = settings;
  forCopy = for;

  sub_264D9A9F0(0, 0, v11, &unk_264E26B50, v16);
}

- (void)deleteUserSettingsFor:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_264E25248();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_264E26B20;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_264E26B28;
  v14[5] = v13;
  forCopy = for;

  sub_264D9A9F0(0, 0, v9, &unk_264E26B30, v14);
}

- (void)userIdentifiersWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_264E25248();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_264E26B00;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_264E26B08;
  v12[5] = v11;

  sub_264D9A9F0(0, 0, v7, &unk_264E26B10, v12);
}

- (void)userSettingsFor:(_TtC14ScreenTimeCore6UserID *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_264E25248();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_264E26A90;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_264E26AA0;
  v14[5] = v13;
  forCopy = for;

  sub_264D9A9F0(0, 0, v9, &unk_264E26AB0, v14);
}

@end