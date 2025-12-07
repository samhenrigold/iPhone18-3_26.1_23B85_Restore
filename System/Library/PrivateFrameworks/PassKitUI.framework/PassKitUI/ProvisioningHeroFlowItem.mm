@interface ProvisioningHeroFlowItem
- (_TtC9PassKitUI24ProvisioningHeroFlowItem)init;
- (void)heroViewControllerDidSelectContinue:(id)continue didSelectMethod:(id)method;
- (void)heroViewControllerDidSelectSetupLater:(id)later;
@end

@implementation ProvisioningHeroFlowItem

- (_TtC9PassKitUI24ProvisioningHeroFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)heroViewControllerDidSelectContinue:(id)continue didSelectMethod:(id)method
{
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = method;
  v19[4] = sub_1BD467EB4;
  v20 = v6;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1BD126964;
  v19[3] = &block_descriptor_22_2;
  v7 = _Block_copy(v19);
  v8 = v20;
  methodCopy = method;
  selfCopy = self;
  v11 = methodCopy;
  v8, v12, v13, v14, v15, v16, v17, v18;
  PKRequestContactAccessWithCompletion();

  _Block_release(v7);
}

- (void)heroViewControllerDidSelectSetupLater:(id)later
{
  laterCopy = later;
  selfCopy = self;
  sub_1BD467E04();
}

@end