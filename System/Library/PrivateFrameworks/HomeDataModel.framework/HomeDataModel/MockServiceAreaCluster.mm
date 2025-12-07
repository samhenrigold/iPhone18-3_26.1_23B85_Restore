@interface MockServiceAreaCluster
- (_TtC13HomeDataModel22MockServiceAreaCluster)initWithDevice:(id)device endpointID:(id)d queue:(id)queue;
- (void)selectAreasWithParams:(MTRServiceAreaClusterSelectAreasParams *)params expectedValues:(NSArray *)values expectedValueInterval:(NSNumber *)interval completion:(id)completion;
- (void)skipAreaWithParams:(MTRServiceAreaClusterSkipAreaParams *)params expectedValues:(NSArray *)values expectedValueInterval:(NSNumber *)interval completion:(id)completion;
@end

@implementation MockServiceAreaCluster

- (void)selectAreasWithParams:(MTRServiceAreaClusterSelectAreasParams *)params expectedValues:(NSArray *)values expectedValueInterval:(NSNumber *)interval completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = params;
  v15[3] = values;
  v15[4] = interval;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1D1E67E7C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1D1E91438;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1D1E91440;
  v18[5] = v17;
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  selfCopy = self;
  sub_1D1A08124(0, 0, v13, &unk_1D1E91448, v18);
}

- (void)skipAreaWithParams:(MTRServiceAreaClusterSkipAreaParams *)params expectedValues:(NSArray *)values expectedValueInterval:(NSNumber *)interval completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = params;
  v15[3] = values;
  v15[4] = interval;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1D1E67E7C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1D1E913D0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1D1E908F0;
  v18[5] = v17;
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  selfCopy = self;
  sub_1D1A08124(0, 0, v13, &unk_1D1E913F0, v18);
}

- (_TtC13HomeDataModel22MockServiceAreaCluster)initWithDevice:(id)device endpointID:(id)d queue:(id)queue
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end