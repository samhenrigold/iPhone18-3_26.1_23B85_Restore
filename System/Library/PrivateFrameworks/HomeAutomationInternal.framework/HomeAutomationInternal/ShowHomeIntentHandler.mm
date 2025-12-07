@interface ShowHomeIntentHandler
- (_TtC22HomeAutomationInternal21ShowHomeIntentHandler)init;
- (void)confirmShowHome:(ShowHomeIntent *)home completion:(id)completion;
- (void)handleShowHome:(ShowHomeIntent *)home completion:(id)completion;
- (void)resolveFiltersForShowHome:(ShowHomeIntent *)home withCompletion:(id)completion;
@end

@implementation ShowHomeIntentHandler

- (void)resolveFiltersForShowHome:(ShowHomeIntent *)home withCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = home;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_252E37344();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_252E46630;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_252E4BD20;
  v14[5] = v13;
  homeCopy = home;
  selfCopy = self;
  sub_252CD45A0(0, 0, v9, &unk_252E46640, v14);
}

- (void)confirmShowHome:(ShowHomeIntent *)home completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = home;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_252E37344();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_252E46610;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_252E4BD00;
  v14[5] = v13;
  homeCopy = home;
  selfCopy = self;
  sub_252CD45A0(0, 0, v9, &unk_252E46620, v14);
}

- (void)handleShowHome:(ShowHomeIntent *)home completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = home;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_252E37344();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_252E465F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_252E4BCE0;
  v14[5] = v13;
  homeCopy = home;
  selfCopy = self;
  sub_252CD45A0(0, 0, v9, &unk_252E46600, v14);
}

- (_TtC22HomeAutomationInternal21ShowHomeIntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShowHomeIntentHandler();
  return [(ShowHomeIntentHandler *)&v3 init];
}

@end