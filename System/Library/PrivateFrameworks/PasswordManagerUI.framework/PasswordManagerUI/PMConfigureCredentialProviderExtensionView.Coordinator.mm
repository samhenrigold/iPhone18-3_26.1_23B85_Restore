@interface PMConfigureCredentialProviderExtensionView.Coordinator
- (_TtCV17PasswordManagerUI42PMConfigureCredentialProviderExtensionView11Coordinator)init;
- (void)credentialProviderExtensionConfigurationViewControllerDidFinish:(_ASCredentialProviderExtensionConfigurationViewController *)finish completion:(id)completion;
@end

@implementation PMConfigureCredentialProviderExtensionView.Coordinator

- (_TtCV17PasswordManagerUI42PMConfigureCredentialProviderExtensionView11Coordinator)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR____TtCV17PasswordManagerUI42PMConfigureCredentialProviderExtensionView11Coordinator_onDismiss);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(PMConfigureCredentialProviderExtensionView.Coordinator *)&v6 init];
}

- (void)credentialProviderExtensionConfigurationViewControllerDidFinish:(_ASCredentialProviderExtensionConfigurationViewController *)finish completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = finish;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_21CB858E4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21CBB2900;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21CBA0DB8;
  v14[5] = v13;
  finishCopy = finish;
  selfCopy = self;
  sub_21C963EF4(0, 0, v9, &unk_21CBA0DC0, v14);
}

@end