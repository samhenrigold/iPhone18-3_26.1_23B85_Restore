@interface TimerActivityProviderProxy
- (_TtC18MobileTimerSupport26TimerActivityProviderProxy)init;
- (void)alertActivityWithContext:(id)context tlConfig:(id)config completion:(id)completion;
- (void)endActivityWithId:(id)id completion:(id)completion;
@end

@implementation TimerActivityProviderProxy

- (void)alertActivityWithContext:(id)context tlConfig:(id)config completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
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
  sub_22D75D890(0, 0, v11, &unk_22D824A98, v15);
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
  v15[7] = sub_22D7CD47C;
  v15[8] = v13;
  selfCopy = self;
  sub_22D75D890(0, 0, v8, &unk_22D824A90, v15);
}

- (_TtC18MobileTimerSupport26TimerActivityProviderProxy)init
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport26TimerActivityProviderProxy_activityActor;
  type metadata accessor for TimerActivityProvider();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 14) = 0x72656D6974;
  *(v4 + 15) = 0xE500000000000000;
  *(v4 + 16) = 0xD000000000000014;
  *(v4 + 17) = 0x800000022D829320;
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for TimerActivityProviderProxy();
  return [(TimerActivityProviderProxy *)&v6 init];
}

@end