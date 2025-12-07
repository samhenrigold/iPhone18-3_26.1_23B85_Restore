@interface FACacheImageMarqueeOperation
- (FACacheImageMarqueeOperation)init;
- (void)createAndCacheData;
- (void)createAndCacheDataWithCompletionHandler:(id)handler;
- (void)generateMarqueeWith:(unint64_t)with;
@end

@implementation FACacheImageMarqueeOperation

- (void)createAndCacheData
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_21BC54908(0, 0, v5, &unk_21BE463C0, v7);
}

- (void)createAndCacheDataWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_21BE28DAC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_21BE463B8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_21BE32A10;
  v12[5] = v11;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v7, &unk_21BE391F0, v12);
}

- (void)generateMarqueeWith:(unint64_t)with
{
  selfCopy = self;
  sub_21BD506AC(with);
}

- (FACacheImageMarqueeOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end