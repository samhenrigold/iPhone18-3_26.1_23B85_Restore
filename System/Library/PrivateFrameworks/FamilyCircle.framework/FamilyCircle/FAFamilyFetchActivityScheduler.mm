@interface FAFamilyFetchActivityScheduler
- (FAFamilyFetchActivityScheduler)init;
- (FAFamilyFetchActivityScheduler)initWithFamilyCircleFetchBlock:(id)block cacheLoadBlock:(id)loadBlock;
- (void)reschedule;
@end

@implementation FAFamilyFetchActivityScheduler

- (FAFamilyFetchActivityScheduler)initWithFamilyCircleFetchBlock:(id)block cacheLoadBlock:(id)loadBlock
{
  v5 = _Block_copy(block);
  v6 = _Block_copy(loadBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  return FAFamilyFetchActivityScheduler.init(familyCircleFetchBlock:cacheLoadBlock:)(sub_1B711C314, v7, sub_1B711C31C, v8);
}

- (void)reschedule
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9833F8, &qword_1B7164C30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1B715E450();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_1B70FA434(0, 0, v5, &unk_1B7166C40, v7);
}

- (FAFamilyFetchActivityScheduler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end