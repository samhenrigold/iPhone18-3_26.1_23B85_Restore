@interface PASUIGuardianViewPresenter
- (PASUIGuardianViewPresenter)init;
- (PASUIGuardianViewPresenter)initWithSharingViewController:(id)controller;
- (PASUIGuardianViewPresenterDelegate)delegate;
- (void)activateWithTemplateMessageSession:(CUMessageSession *)session completion:(id)completion;
- (void)setTemplateMessageSession:(CUMessageSession *)session completion:(id)completion;
@end

@implementation PASUIGuardianViewPresenter

- (PASUIGuardianViewPresenterDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (PASUIGuardianViewPresenter)initWithSharingViewController:(id)controller
{
  controllerCopy = controller;
  v4 = sub_26113F8E8(controllerCopy);

  return v4;
}

- (void)activateWithTemplateMessageSession:(CUMessageSession *)session completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = session;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_26115B7D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2611608F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2611608F8;
  v14[5] = v13;
  sessionCopy = session;
  selfCopy = self;
  sub_26113F5EC(0, 0, v9, &unk_261160900, v14);
}

- (void)setTemplateMessageSession:(CUMessageSession *)session completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = session;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_26115B7D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2611608A8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_26115E1A8;
  v14[5] = v13;
  sessionCopy = session;
  selfCopy = self;
  sub_26113F5EC(0, 0, v9, &unk_26115E1B0, v14);
}

- (PASUIGuardianViewPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end