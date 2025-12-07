@interface SignInOptionsCreateAccountController
- (_TtC14AppleIDSetupUI36SignInOptionsCreateAccountController)init;
- (void)performAIDASignInWith:(NSDictionary *)with completion:(id)completion;
- (void)setupLocationServicesWithCompletion:(id)completion;
- (void)setupPasscodeAndBiometricWithCompletion:(id)completion;
- (void)shieldSetupDidFinishWithResult:(id)result error:(id)error;
- (void)shieldSetupDidFinishWithResult:(id)result viewControllersToRemove:(id)remove error:(id)error;
- (void)shieldSetupSelectedAccount:(int64_t)account completion:(id)completion;
@end

@implementation SignInOptionsCreateAccountController

- (_TtC14AppleIDSetupUI36SignInOptionsCreateAccountController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)shieldSetupSelectedAccount:(int64_t)account completion:(id)completion
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
  v13[4] = &unk_240A308B8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240A308C0;
  v14[5] = v13;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v9, &unk_240A308C8, v14);
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
  v11[4] = &unk_240A30898;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240A308A0;
  v12[5] = v11;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v7, &unk_240A308A8, v12);
}

- (void)setupLocationServicesWithCompletion:(id)completion
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
  v11[4] = &unk_240A30878;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240A30880;
  v12[5] = v11;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v7, &unk_240A30888, v12);
}

- (void)performAIDASignInWith:(NSDictionary *)with completion:(id)completion
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
  v13[4] = &unk_240A30838;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240A30840;
  v14[5] = v13;
  withCopy = with;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v9, &unk_240A33600, v14);
}

- (void)shieldSetupDidFinishWithResult:(id)result error:(id)error
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_240A2C24C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = error;
  v11[5] = self;
  v11[6] = result;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_2409230D4(0, 0, v9, &unk_240A30828, v11);
}

- (void)shieldSetupDidFinishWithResult:(id)result viewControllersToRemove:(id)remove error:(id)error
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_240A2C24C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = error;
  v12[5] = self;
  v12[6] = result;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_2409230D4(0, 0, v10, &unk_240A30810, v12);
}

@end