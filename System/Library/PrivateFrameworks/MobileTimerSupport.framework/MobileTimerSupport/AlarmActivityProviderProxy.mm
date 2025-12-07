@interface AlarmActivityProviderProxy
- (_TtC18MobileTimerSupport26AlarmActivityProviderProxy)init;
- (void)alertActivityWithContext:(id)context tlConfig:(id)config completion:(id)completion;
- (void)endActivityWithId:(id)id completion:(id)completion;
- (void)updateActivityWithContext:(id)context completion:(id)completion;
@end

@implementation AlarmActivityProviderProxy

- (void)updateActivityWithContext:(id)context completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_22D81B4F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = context;
  v13[6] = sub_22D7CD9B8;
  v13[7] = v11;
  contextCopy = context;
  selfCopy = self;
  v16 = contextCopy;
  sub_22D81A198();
  sub_22D7BD9C8(0, 0, v9, &unk_22D824AD8, v13);

  sub_22D764440(v9, &unk_27DA01FF0, &qword_22D81FC70);
}

- (void)alertActivityWithContext:(id)context tlConfig:(id)config completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = context;
  v15[6] = config;
  v15[7] = sub_22D7CD9B8;
  v15[8] = v13;
  contextCopy = context;
  configCopy = config;
  selfCopy = self;
  v19 = contextCopy;
  v20 = configCopy;
  sub_22D81A198();
  sub_22D7BD9C8(0, 0, v11, &unk_22D824AD0, v15);

  sub_22D764440(v11, &unk_27DA01FF0, &qword_22D81FC70);
}

- (void)endActivityWithId:(id)id completion:(id)completion
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = _Block_copy(completion);
  v10 = sub_22D81B2C8();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = v10;
  v15[6] = v12;
  v15[7] = sub_22D7CD9B8;
  v15[8] = v13;
  selfCopy = self;
  sub_22D81A198();
  sub_22D7BD9C8(0, 0, v8, &unk_22D824AC8, v15);

  sub_22D764440(v8, &unk_27DA01FF0, &qword_22D81FC70);
}

- (_TtC18MobileTimerSupport26AlarmActivityProviderProxy)init
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport26AlarmActivityProviderProxy_activityActor;
  type metadata accessor for AlarmActivityProvider();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 14) = 0x6D72616C61;
  *(v4 + 15) = 0xE500000000000000;
  *(v4 + 16) = 0xD000000000000014;
  *(v4 + 17) = 0x800000022D829320;
  *(v4 + 18) = 0xD000000000000016;
  *(v4 + 19) = 0x800000022D82B260;
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AlarmActivityProviderProxy();
  return [(AlarmActivityProviderProxy *)&v6 init];
}

@end