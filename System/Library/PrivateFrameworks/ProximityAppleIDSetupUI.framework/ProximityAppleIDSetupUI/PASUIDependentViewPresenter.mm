@interface PASUIDependentViewPresenter
- (BOOL)shouldSignInForSelf;
- (PASUIDependentViewPresenterDelegate)delegate;
- (void)activateWithTemplateMessageSession:(CUMessageSession *)session completion:(id)completion;
- (void)activateWithTemplateMessageSession:(CUMessageSession *)session completionHandler:(id)handler;
- (void)setShouldSignInForSelf:(BOOL)self;
- (void)setTemplateMessageSession:(CUMessageSession *)session completion:(id)completion;
- (void)startFlowWithContainerViewController:(id)controller;
- (void)startFlowWithNavigationController:(id)controller;
@end

@implementation PASUIDependentViewPresenter

- (PASUIDependentViewPresenterDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)shouldSignInForSelf
{
  swift_getObjectType();
  selfCopy = self;
  v4 = sub_26115AC14();

  return v4 & 1;
}

- (void)setShouldSignInForSelf:(BOOL)self
{
  swift_getObjectType();
  selfCopy = self;
  sub_26115AC24();
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
  v13[4] = &unk_26115E1E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_26115E1E8;
  v14[5] = v13;
  sessionCopy = session;
  selfCopy = self;
  sub_26113F5EC(0, 0, v9, &unk_26115E1F0, v14);
}

- (void)activateWithTemplateMessageSession:(CUMessageSession *)session completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = session;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_26115B7D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_26115E1C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_26115E1C8;
  v14[5] = v13;
  sessionCopy = session;
  selfCopy = self;
  sub_26113F5EC(0, 0, v9, &unk_26115E1D0, v14);
}

- (void)startFlowWithNavigationController:(id)controller
{
  type metadata accessor for PASViewControllerPresentationHandler();
  v5 = swift_allocObject();
  *(v5 + 16) = controller;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_26111C840(v5, selfCopy);

  swift_unknownObjectRelease();
}

- (void)startFlowWithContainerViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  PASUITargetViewPresenter.startFlow(withContainerViewController:)(controllerCopy);
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
  v13[4] = &unk_26115E1A0;
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

@end