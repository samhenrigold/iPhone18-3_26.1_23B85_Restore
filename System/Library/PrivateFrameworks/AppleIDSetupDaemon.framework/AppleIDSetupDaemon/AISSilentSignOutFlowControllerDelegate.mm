@interface AISSilentSignOutFlowControllerDelegate
- (_TtC18AppleIDSetupDaemon38AISSilentSignOutFlowControllerDelegate)init;
- (void)signOutFlowController:(AASignOutFlowController *)controller disableFindMyDeviceForAccount:(ACAccount *)account completion:(id)completion;
- (void)signOutFlowController:(AASignOutFlowController *)controller performWalrusValidationForAccount:(ACAccount *)account completion:(id)completion;
- (void)signOutFlowController:(AASignOutFlowController *)controller showAlertWithTitle:(NSString *)title message:(NSString *)message completion:(id)completion;
- (void)signOutFlowController:(AASignOutFlowController *)controller signOutAccount:(ACAccount *)account completion:(id)completion;
@end

@implementation AISSilentSignOutFlowControllerDelegate

- (void)signOutFlowController:(AASignOutFlowController *)controller showAlertWithTitle:(NSString *)title message:(NSString *)message completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = controller;
  v15[3] = title;
  v15[4] = message;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_2408D4E60();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2408D6A58;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2408D6A60;
  v18[5] = v17;
  controllerCopy = controller;
  titleCopy = title;
  messageCopy = message;
  selfCopy = self;
  sub_24087FFF8(0, 0, v13, &unk_2408D6A68, v18);
}

- (void)signOutFlowController:(AASignOutFlowController *)controller disableFindMyDeviceForAccount:(ACAccount *)account completion:(id)completion
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
  v15[4] = &unk_2408D6A30;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2408D6A38;
  v16[5] = v15;
  controllerCopy = controller;
  accountCopy = account;
  selfCopy = self;
  sub_24087FFF8(0, 0, v11, &unk_2408D6A40, v16);
}

- (void)signOutFlowController:(AASignOutFlowController *)controller performWalrusValidationForAccount:(ACAccount *)account completion:(id)completion
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
  v15[4] = &unk_2408D6A08;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2408D6A10;
  v16[5] = v15;
  controllerCopy = controller;
  accountCopy = account;
  selfCopy = self;
  sub_24087FFF8(0, 0, v11, &unk_2408D6A18, v16);
}

- (void)signOutFlowController:(AASignOutFlowController *)controller signOutAccount:(ACAccount *)account completion:(id)completion
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
  v15[4] = &unk_2408D69D8;
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

- (_TtC18AppleIDSetupDaemon38AISSilentSignOutFlowControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end