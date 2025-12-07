@interface FAFamilyCircleFetcher
- (_TtC14FamilyCircleUI21FAFamilyCircleFetcher)init;
- (void)fetchCachedFamilyCircleWithQualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)forceFetchFamilyCircleWithQualityOfService:(int64_t)service completionHandler:(id)handler;
@end

@implementation FAFamilyCircleFetcher

- (void)fetchCachedFamilyCircleWithQualityOfService:(int64_t)service completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = service;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21BE4D4B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE4D4B8;
  v14[5] = v13;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v9, &unk_21BE4D4C0, v14);
}

- (void)forceFetchFamilyCircleWithQualityOfService:(int64_t)service completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = service;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21BE4D468;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE32A10;
  v14[5] = v13;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v9, &unk_21BE391F0, v14);
}

- (_TtC14FamilyCircleUI21FAFamilyCircleFetcher)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(FAFamilyCircleFetcher *)&v3 init];
}

@end