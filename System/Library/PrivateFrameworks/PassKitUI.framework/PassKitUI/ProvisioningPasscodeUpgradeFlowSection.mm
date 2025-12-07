@interface ProvisioningPasscodeUpgradeFlowSection
- (_TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection)init;
- (void)dealloc;
- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state;
@end

@implementation ProvisioningPasscodeUpgradeFlowSection

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_1BD25C6C8(selfCopy, v5, v6, v7, v8, v9, v10, v11);
  v12.receiver = selfCopy;
  v12.super_class = ObjectType;
  [(ProvisioningPasscodeUpgradeFlowSection *)&v12 dealloc];
}

- (_TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BD25DB54(*&state & 0x101, selfCopy, v6, v7, v8, v9, v10, v11);
  swift_unknownObjectRelease();
}

@end