@interface ProvisioningCarKeyInvitationFlowItem
- (_TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem)init;
- (void)carKeyInvitationViewController:(id)controller didEnterActivationCode:(id)code;
- (void)carKeyInvitationViewControllerDidCancel:(id)cancel;
- (void)carKeyInvitationViewControllerDidRequestStart:(id)start;
@end

@implementation ProvisioningCarKeyInvitationFlowItem

- (_TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)carKeyInvitationViewControllerDidRequestStart:(id)start
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_coordinator);
  if (v3)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
    selfCopy = self;
    v6 = v3;
    v7 = [v5 init];
    sub_1BD317B18(v7);
  }
}

- (void)carKeyInvitationViewControllerDidCancel:(id)cancel
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_coordinator);
  if (v3)
  {
    selfCopy = self;
    v4 = v3;
    sub_1BD3188FC();
  }
}

- (void)carKeyInvitationViewController:(id)controller didEnterActivationCode:(id)code
{
  v5 = sub_1BE052434();
  v13 = v6;
  v14 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_coordinator);
  if (v14)
  {
    v15 = v5;
    selfCopy = self;
    v17 = v14;
    sub_1BD318C1C(v15, v13);
  }

  v13, v6, v7, v8, v9, v10, v11, v12;
}

@end