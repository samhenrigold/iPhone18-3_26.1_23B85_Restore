@interface DiscoverHomeIntentHandler
- (_TtC22HomeAutomationInternal25DiscoverHomeIntentHandler)init;
- (void)confirmDiscoverHome:(DiscoverHomeIntent *)home completion:(id)completion;
- (void)handleDiscoverHome:(DiscoverHomeIntent *)home completion:(id)completion;
- (void)resolveFiltersForDiscoverHome:(DiscoverHomeIntent *)home withCompletion:(id)completion;
@end

@implementation DiscoverHomeIntentHandler

- (void)resolveFiltersForDiscoverHome:(DiscoverHomeIntent *)home withCompletion:(id)completion
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
  v13[4] = &unk_252E4BD18;
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

- (void)confirmDiscoverHome:(DiscoverHomeIntent *)home completion:(id)completion
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
  v13[4] = &unk_252E4BCF8;
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

- (void)handleDiscoverHome:(DiscoverHomeIntent *)home completion:(id)completion
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
  v13[4] = &unk_252E4BCD8;
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

- (_TtC22HomeAutomationInternal25DiscoverHomeIntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DiscoverHomeIntentHandler();
  return [(DiscoverHomeIntentHandler *)&v3 init];
}

@end