@interface ATXAmbientConfigurationReader
- (ATXAmbientConfigurationReader)init;
- (void)readStacksWithCompletion:(id)completion;
@end

@implementation ATXAmbientConfigurationReader

- (void)readStacksWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2441D8D9C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2441DB438;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2441DB440;
  v12[5] = v11;
  selfCopy = self;
  sub_2441AD2EC(0, 0, v7, &unk_2441DB448, v12);
}

- (ATXAmbientConfigurationReader)init
{
  v3.receiver = self;
  v3.super_class = ATXAmbientConfigurationReader;
  return [(ATXAmbientConfigurationReader *)&v3 init];
}

@end