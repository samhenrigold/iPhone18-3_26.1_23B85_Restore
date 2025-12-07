@interface AppDistributorWrapper
+ (void)handleEmergencyResetWithCompletionHandler:(id)handler;
- (_TtC19DigitalSeparationUI21AppDistributorWrapper)init;
@end

@implementation AppDistributorWrapper

+ (void)handleEmergencyResetWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB368, &qword_248CDE7F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_248CD46CC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_248CDEEB0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_248CDEEC0;
  v12[5] = v11;
  sub_248CC6CC0(0, 0, v7, &unk_248CDEED0, v12);
}

- (_TtC19DigitalSeparationUI21AppDistributorWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppDistributorWrapper();
  return [(AppDistributorWrapper *)&v3 init];
}

@end