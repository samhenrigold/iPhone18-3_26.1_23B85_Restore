@interface ChildSetup
- (_TtC14AppleIDSetupUIP33_C3572E3C1D8DC9EF23BF6901B87D7EFD10ChildSetup)init;
- (void)childSetupPresenter:(id)presenter didCompleteWithResult:(id)result;
- (void)childSetupPresenter:(id)presenter didFail:(id)fail;
- (void)setupLocationServicesWithNextTaskInfo:(AISFlowTaskInfoProtocol *)info completion:(id)completion;
- (void)setupPasscodeForAccount:(ACAccount *)account nextTaskInfo:(AISFlowTaskInfoProtocol *)info completion:(id)completion;
- (void)setupPerformAIDASignInWith:(NSDictionary *)with completion:(id)completion;
@end

@implementation ChildSetup

- (_TtC14AppleIDSetupUIP33_C3572E3C1D8DC9EF23BF6901B87D7EFD10ChildSetup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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
  v13[4] = &unk_240A38378;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240A38380;
  v14[5] = v13;
  withCopy = with;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v9, &unk_240A38388, v14);
}

- (void)setupLocationServicesWithNextTaskInfo:(AISFlowTaskInfoProtocol *)info completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = info;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_240A2C24C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240A38350;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240A38358;
  v14[5] = v13;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_240A0B0A4(0, 0, v9, &unk_240A38360, v14);
}

- (void)setupPasscodeForAccount:(ACAccount *)account nextTaskInfo:(AISFlowTaskInfoProtocol *)info completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = account;
  v13[3] = info;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_240A2C24C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240A38338;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_240A30840;
  v16[5] = v15;
  accountCopy = account;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_240A0B0A4(0, 0, v11, &unk_240A33600, v16);
}

- (void)childSetupPresenter:(id)presenter didCompleteWithResult:(id)result
{
  presenterCopy = presenter;
  resultCopy = result;
  selfCopy = self;
  sub_240A07B9C(resultCopy);
}

- (void)childSetupPresenter:(id)presenter didFail:(id)fail
{
  presenterCopy = presenter;
  failCopy = fail;
  selfCopy = self;
  sub_240A08044(failCopy);
}

@end