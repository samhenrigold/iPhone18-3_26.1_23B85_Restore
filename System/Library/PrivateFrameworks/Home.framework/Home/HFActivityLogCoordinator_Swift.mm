@interface HFActivityLogCoordinator_Swift
- (HFActivityLogCoordinator_Swift)init;
- (void)eventsExistWithCompletionHandler:(id)handler;
@end

@implementation HFActivityLogCoordinator_Swift

- (void)eventsExistWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20DD95510;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD94D90;
  v12[5] = v11;

  sub_20DAB35AC(0, 0, v7, &unk_20DD95520, v12);
}

- (HFActivityLogCoordinator_Swift)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end