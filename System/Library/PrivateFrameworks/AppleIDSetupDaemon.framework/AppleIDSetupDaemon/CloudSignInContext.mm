@interface CloudSignInContext
- (NSSet)requiredTerms;
- (_TtC18AppleIDSetupDaemon18CloudSignInContext)init;
- (void)setCdpContext:(id)context;
- (void)setRequiredTerms:(id)terms;
- (void)signInFlowController:(AASignInFlowController *)controller enableFindMyWithAction:(unint64_t)action completion:(id)completion;
- (void)signInFlowController:(AASignInFlowController *)controller presentGenericTermsUIForAccount:(ACAccount *)account completion:(id)completion;
- (void)signInFlowController:(AASignInFlowController *)controller presentProgressViewForAccount:(ACAccount *)account completion:(id)completion;
@end

@implementation CloudSignInContext

- (void)setCdpContext:(id)context
{
  v4 = *(self + OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_cdpContext);
  *(self + OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_cdpContext) = context;
  contextCopy = context;
}

- (NSSet)requiredTerms
{
  if (*(self + OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_requiredTerms))
  {
    type metadata accessor for AATermsEntry(0);
    sub_24080D61C(&qword_27E5069F8, 255, type metadata accessor for AATermsEntry, &unk_2408D670C);

    v2 = sub_2408D4ED0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setRequiredTerms:(id)terms
{
  if (terms)
  {
    type metadata accessor for AATermsEntry(0);
    sub_24080D61C(&qword_27E5069F8, 255, type metadata accessor for AATermsEntry, &unk_2408D670C);
    v4 = sub_2408D4EE0();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_requiredTerms) = v4;
}

- (void)signInFlowController:(AASignInFlowController *)controller presentGenericTermsUIForAccount:(ACAccount *)account completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = controller;
  v13[3] = account;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_2408D4E60();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2408D7570;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2408D7578;
  v16[5] = v15;
  controllerCopy = controller;
  accountCopy = account;
  selfCopy = self;
  sub_24087FFF8(0, 0, v11, &unk_2408D7580, v16);
}

- (void)signInFlowController:(AASignInFlowController *)controller enableFindMyWithAction:(unint64_t)action completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = controller;
  v13[3] = action;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_2408D4E60();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2408D7550;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2408D7558;
  v16[5] = v15;
  controllerCopy = controller;
  selfCopy = self;
  sub_24087FFF8(0, 0, v11, &unk_2408D7560, v16);
}

- (void)signInFlowController:(AASignInFlowController *)controller presentProgressViewForAccount:(ACAccount *)account completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = controller;
  v13[3] = account;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_2408D4E60();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2408D7528;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2408D69E0;
  v16[5] = v15;
  controllerCopy = controller;
  accountCopy = account;
  selfCopy = self;
  sub_24087FFF8(0, 0, v11, &unk_2408D69E8, v16);
}

- (_TtC18AppleIDSetupDaemon18CloudSignInContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end