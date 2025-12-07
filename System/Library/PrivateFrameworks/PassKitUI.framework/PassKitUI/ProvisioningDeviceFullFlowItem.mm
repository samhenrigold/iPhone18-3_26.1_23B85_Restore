@interface ProvisioningDeviceFullFlowItem
- (_TtC9PassKitUI30ProvisioningDeviceFullFlowItem)init;
- (void)selectPassesViewController:(id)controller didSelectPasses:(id)passes completion:(id)completion;
- (void)selectPassesViewControllerDidTapBackButton:(id)button;
@end

@implementation ProvisioningDeviceFullFlowItem

- (_TtC9PassKitUI30ProvisioningDeviceFullFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)selectPassesViewController:(id)controller didSelectPasses:(id)passes completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (passes)
  {
    sub_1BD0E5E8C(0, &qword_1EBD456C0, 0x1E69B91E8);
    passes = sub_1BE052744();
  }

  if (v8)
  {
    v9 = swift_allocObject();
    v9[2] = v8;
    v8 = sub_1BD166E88;
  }

  else
  {
    v9 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_1BD89215C(passes, v8, v9);
  sub_1BD0D4744(v8, v9, v12, v13, v14, v15, v16, v17);

  passes, v18, v19, v20, v21, v22, v23, v24;
}

- (void)selectPassesViewControllerDidTapBackButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_1BD8925C0();
}

@end