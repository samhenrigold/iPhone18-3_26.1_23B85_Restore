@interface XPCEnergyVenueContainer
- (_TtC9EnergyKit23XPCEnergyVenueContainer)init;
- (_TtC9EnergyKit23XPCEnergyVenueContainer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCEnergyVenueContainer

- (_TtC9EnergyKit23XPCEnergyVenueContainer)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_2382691B4(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s9EnergyKit23XPCEnergyVenueContainerC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC9EnergyKit23XPCEnergyVenueContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end