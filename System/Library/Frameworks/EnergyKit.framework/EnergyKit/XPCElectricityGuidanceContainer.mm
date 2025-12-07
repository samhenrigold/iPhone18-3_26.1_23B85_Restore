@interface XPCElectricityGuidanceContainer
- (_TtC9EnergyKit31XPCElectricityGuidanceContainer)init;
- (_TtC9EnergyKit31XPCElectricityGuidanceContainer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCElectricityGuidanceContainer

- (_TtC9EnergyKit31XPCElectricityGuidanceContainer)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_238268D14(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s9EnergyKit31XPCElectricityGuidanceContainerC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC9EnergyKit31XPCElectricityGuidanceContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end