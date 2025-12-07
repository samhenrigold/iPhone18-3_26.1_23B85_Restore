@interface WOHeartRateConfiguration
+ (void)setConfiguredZones:(id)zones;
- (NSArray)zones;
- (WOHeartRateConfiguration)init;
- (void)setZones:(id)zones;
@end

@implementation WOHeartRateConfiguration

- (NSArray)zones
{
  v2 = swift_beginAccess();
  type metadata accessor for HeartRateZoneBridge(v2, v3);

  v4.super.isa = sub_228C4().super.isa;

  return v4.super.isa;
}

- (void)setZones:(id)zones
{
  type metadata accessor for HeartRateZoneBridge(self, a2);
  v4 = sub_228D4();
  v5 = OBJC_IVAR___WOHeartRateConfiguration_zones;
  swift_beginAccess();
  *(self + v5) = v4;
}

+ (void)setConfiguredZones:(id)zones
{
  zonesCopy = zones;
  if (zones)
  {
    type metadata accessor for HeartRateZoneBridge(self, a2);
    zonesCopy = sub_228D4();
  }

  _s25SessionTrackerAppSettings28HeartRateConfigurationBridgeC13setConfigured5zonesySayAA0ef4ZoneH0CGSg_tFZ_0(zonesCopy);
}

- (WOHeartRateConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end