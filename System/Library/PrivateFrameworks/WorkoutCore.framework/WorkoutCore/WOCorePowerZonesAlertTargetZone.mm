@interface WOCorePowerZonesAlertTargetZone
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (WOCorePowerZonesAlertTargetZone)init;
- (int64_t)hash;
@end

@implementation WOCorePowerZonesAlertTargetZone

- (int64_t)hash
{
  Hasher.init()();
  swift_beginAccess();
  selfCopy = self;
  PowerZonesAlertZoneType.hash(into:)(v6);
  v4 = Hasher.finalize()();

  return v4;
}

- (WOCorePowerZonesAlertTargetZone)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = PowerZonesAlertTargetZone.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6;
}

- (NSString)description
{
  v2 = self + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v8 = *v2;
  v9 = *(v2 + 1);
  v10 = v2[16];
  outlined copy of PowerZonesAlertZoneType(*v2, v9, v10);
  v3 = PowerZonesAlertZoneType.description.getter();
  v5 = v4;
  outlined consume of PowerZonesAlertZoneType(v8, v9, v10);
  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

@end