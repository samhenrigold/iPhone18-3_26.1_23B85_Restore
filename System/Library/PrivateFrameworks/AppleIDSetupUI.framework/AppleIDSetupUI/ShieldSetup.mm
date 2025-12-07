@interface ShieldSetup
- (_TtC14AppleIDSetupUI11ShieldSetup)init;
- (void)proximitySetupCompletedWithResult:(id)result error:(id)error;
- (void)proximitySetupSelectedAccount:(int64_t)account completion:(id)completion;
- (void)setupPasscodeAndBiometricWithCompletion:(id)completion;
- (void)setupPerformAIDASignInWith:(NSDictionary *)with completion:(id)completion;
@end

@implementation ShieldSetup

- (_TtC14AppleIDSetupUI11ShieldSetup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)proximitySetupSelectedAccount:(int64_t)account completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = account;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_240A2C24C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240A383F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240A38400;
  v14[5] = v13;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v9, &unk_240A38408, v14);
}

- (void)setupPasscodeAndBiometricWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_240A2C24C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_240A383D0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240A383D8;
  v12[5] = v11;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v7, &unk_240A383E0, v12);
}

- (void)setupPerformAIDASignInWith:(NSDictionary *)with completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = with;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_240A2C24C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240A383A8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240A383B0;
  v14[5] = v13;
  withCopy = with;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v9, &unk_240A383B8, v14);
}

- (void)proximitySetupCompletedWithResult:(id)result error:(id)error
{
  resultCopy = result;
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    resultCopy = sub_240A2BEBC();
  }

  errorCopy = error;
  selfCopy = self;
  sub_240A0523C(resultCopy, error);
}

@end