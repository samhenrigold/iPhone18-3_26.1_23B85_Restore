@interface PDRDevice_Impl
- (BOOL)supportsCapabilityRaw:(unsigned int)raw;
- (NSString)description;
- (NSUUID)pairingID;
- (PDRDevice_Impl)init;
- (id)propertyNames;
- (id)valueForProperty:(id)property;
@end

@implementation PDRDevice_Impl

- (id)valueForProperty:(id)property
{
  propertyCopy = property;
  selfCopy = self;
  Device_Impl.valueFor(property:)(propertyCopy, v13);

  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSUUID)pairingID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___PDRDevice_Impl_uuid_, v3);
  v7.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v7.super.isa;
}

- (BOOL)supportsCapabilityRaw:(unsigned int)raw
{
  selfCopy = self;
  LOBYTE(raw) = Device_Impl.supportsCapabilityRaw(_:)(raw);

  return raw & 1;
}

- (id)propertyNames
{
  selfCopy = self;
  Device_Impl.propertyNames()();

  type metadata accessor for PDRDevicePropertyKey(0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSString)description
{
  selfCopy = self;
  v4 = Device_Impl.description.getter(selfCopy, v3);
  v6 = v5;

  v7 = MEMORY[0x2318DF040](v4, v6);

  return v7;
}

- (PDRDevice_Impl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end