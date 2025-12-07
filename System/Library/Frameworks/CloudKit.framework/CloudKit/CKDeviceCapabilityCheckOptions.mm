@interface CKDeviceCapabilityCheckOptions
- (CKDeviceCapabilityCheckOptions)initWithCoder:(id)coder;
- (CKDeviceCapabilityCheckOptions)initWithExcludeDevicesWithoutCapabilityCheckingSupport:(BOOL)support excludeZoneAccessBefore:(id)before;
- (NSDate)excludeZoneAccessBefore;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKDeviceCapabilityCheckOptions

- (CKDeviceCapabilityCheckOptions)initWithExcludeDevicesWithoutCapabilityCheckingSupport:(BOOL)support excludeZoneAccessBefore:(id)before
{
  v5 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (before)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Date();
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = 1;
  }

  sub_1883F90F4(v7, v9, 1, v8);
  CKDeviceCapabilityCheckOptions.init(excludeDevicesWithoutCapabilityCheckingSupport:excludeZoneAccessBefore:)();
  return result;
}

- (NSDate)excludeZoneAccessBefore
{
  v2 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  CKDeviceCapabilityCheckOptions.excludeZoneAccessBefore.getter();
  v5 = type metadata accessor for Date();
  isa = 0;
  if (sub_1883F971C(v4, 1, v5) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return isa;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CKDeviceCapabilityCheckOptions.encode(with:)(coderCopy);
}

- (CKDeviceCapabilityCheckOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  CKDeviceCapabilityCheckOptions.init(coder:)();
  return result;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  CKDeviceCapabilityCheckOptions.copy(with:)(selfCopy, v6);

  sub_188400B68(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_1883FE944(v6);
  return v4;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CKDeviceCapabilityCheckOptions.hash.getter(selfCopy);

  return v3;
}

@end