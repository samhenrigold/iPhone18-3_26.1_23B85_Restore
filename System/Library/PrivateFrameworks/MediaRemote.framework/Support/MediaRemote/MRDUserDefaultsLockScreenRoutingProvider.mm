@interface MRDUserDefaultsLockScreenRoutingProvider
- (MRDUserDefaultsLockScreenRoutingProvider)init;
- (NSArray)nearbyDeviceIdentifiers;
- (void)setNearbyDeviceIdentifiers:(id)identifiers;
- (void)update;
@end

@implementation MRDUserDefaultsLockScreenRoutingProvider

- (NSArray)nearbyDeviceIdentifiers
{
  swift_beginAccess();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setNearbyDeviceIdentifiers:(id)identifiers
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___MRDUserDefaultsLockScreenRoutingProvider_nearbyDeviceIdentifiers;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)update
{
  selfCopy = self;
  sub_10034C150();
}

- (MRDUserDefaultsLockScreenRoutingProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end