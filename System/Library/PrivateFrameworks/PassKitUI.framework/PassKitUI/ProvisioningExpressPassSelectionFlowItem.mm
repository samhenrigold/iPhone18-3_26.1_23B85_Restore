@interface ProvisioningExpressPassSelectionFlowItem
- (_TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem)init;
- (void)viewController:(id)controller didFinishWithPasses:(id)passes error:(id)error;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
@end

@implementation ProvisioningExpressPassSelectionFlowItem

- (_TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3BC5FC0, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)viewController:(id)controller didFinishWithPasses:(id)passes error:(id)error
{
  passesCopy = passes;
  if (passes)
  {
    sub_1BD0E5E8C(0, &qword_1EBD456C0, 0x1E69B91E8);
    passesCopy = sub_1BE052744();
  }

  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_1BD91C894(passesCopy);

  passesCopy, v12, v13, v14, v15, v16, v17, v18;
}

@end