@interface MockRVCOperationalStateCluster
- (_TtC13HomeDataModel30MockRVCOperationalStateCluster)initWithDevice:(id)device endpointID:(id)d queue:(id)queue;
- (void)goHomeWithExpectedValues:(NSArray *)values expectedValueInterval:(NSNumber *)interval completion:(id)completion;
- (void)pauseWithExpectedValues:(NSArray *)values expectedValueInterval:(NSNumber *)interval completion:(id)completion;
- (void)resumeWithExpectedValues:(NSArray *)values expectedValueInterval:(NSNumber *)interval completion:(id)completion;
@end

@implementation MockRVCOperationalStateCluster

- (void)resumeWithExpectedValues:(NSArray *)values expectedValueInterval:(NSNumber *)interval completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = values;
  v13[3] = interval;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1D1E67E7C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1D1E90940;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1D1E90948;
  v16[5] = v15;
  valuesCopy = values;
  intervalCopy = interval;
  selfCopy = self;
  sub_1D1A08124(0, 0, v11, &unk_1D1E90950, v16);
}

- (void)pauseWithExpectedValues:(NSArray *)values expectedValueInterval:(NSNumber *)interval completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = values;
  v13[3] = interval;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1D1E67E7C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1D1E90918;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1D1E90920;
  v16[5] = v15;
  valuesCopy = values;
  intervalCopy = interval;
  selfCopy = self;
  sub_1D1A08124(0, 0, v11, &unk_1D1E90928, v16);
}

- (void)goHomeWithExpectedValues:(NSArray *)values expectedValueInterval:(NSNumber *)interval completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = values;
  v13[3] = interval;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1D1E67E7C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1D1E908E8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1D1E908F0;
  v16[5] = v15;
  valuesCopy = values;
  intervalCopy = interval;
  selfCopy = self;
  sub_1D1A08124(0, 0, v11, &unk_1D1E913F0, v16);
}

- (_TtC13HomeDataModel30MockRVCOperationalStateCluster)initWithDevice:(id)device endpointID:(id)d queue:(id)queue
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end