@interface AISSafetySettingsFlowPresenter
- (AISSafetySettingsFlowPresenter)init;
- (AISSafetySettingsFlowPresenter)initWithSafetySettingsContext:(id)context;
- (AISSafetySettingsFlowPresenterDelegate)delegate;
- (void)presentSafetySettingsWithContext:(id)context navigationController:(id)controller;
- (void)shouldPresentSafetySettingsWithContext:(AISSafetySettingsContext *)context completion:(id)completion;
@end

@implementation AISSafetySettingsFlowPresenter

- (AISSafetySettingsFlowPresenterDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (AISSafetySettingsFlowPresenter)initWithSafetySettingsContext:(id)context
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___AISSafetySettingsFlowPresenter_context) = context;
  *(self + OBJC_IVAR___AISSafetySettingsFlowPresenter_configuration) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SafetySettingsFlowPresenter();
  contextCopy = context;
  return [(AISSafetySettingsFlowPresenter *)&v7 init];
}

- (void)presentSafetySettingsWithContext:(id)context navigationController:(id)controller
{
  contextCopy = context;
  controllerCopy = controller;
  selfCopy = self;
  sub_2409FD030(contextCopy, controllerCopy);
}

- (void)shouldPresentSafetySettingsWithContext:(AISSafetySettingsContext *)context completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_240A2C24C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240A38230;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240A30840;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v9, &unk_240A33600, v14);
}

- (AISSafetySettingsFlowPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end