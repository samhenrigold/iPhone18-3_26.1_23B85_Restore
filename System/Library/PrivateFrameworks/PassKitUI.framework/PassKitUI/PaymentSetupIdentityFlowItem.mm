@interface PaymentSetupIdentityFlowItem
- (_TtC9PassKitUI28PaymentSetupIdentityFlowItem)init;
- (void)proofingFlowManager:(id)manager completedProofingWithError:(id)error;
- (void)proofingFlowManager:(id)manager didChangeActiveConfigurations:(id)configurations;
@end

@implementation PaymentSetupIdentityFlowItem

- (_TtC9PassKitUI28PaymentSetupIdentityFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)proofingFlowManager:(id)manager completedProofingWithError:(id)error
{
  managerCopy = manager;
  selfCopy = self;
  errorCopy = error;
  sub_1BD966040(error);
}

- (void)proofingFlowManager:(id)manager didChangeActiveConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  if (configurations)
  {
    sub_1BD0E5E8C(0, &qword_1EBD59BE8, 0x1E6997E70);
    configurationsCopy = sub_1BE052744();
  }

  managerCopy = manager;
  selfCopy = self;
  sub_1BD966294(configurationsCopy);

  configurationsCopy, v9, v10, v11, v12, v13, v14, v15;
}

@end