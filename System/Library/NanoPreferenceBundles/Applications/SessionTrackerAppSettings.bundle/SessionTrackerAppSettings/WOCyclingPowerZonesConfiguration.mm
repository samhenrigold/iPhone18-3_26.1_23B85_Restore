@interface WOCyclingPowerZonesConfiguration
- (BOOL)isAutomaticEmpty;
- (BOOL)isAutomaticFromAppleFTP;
- (BOOL)isEditable;
- (BOOL)isEmpty;
- (NSArray)zones;
- (WOCyclingPowerZonesConfiguration)init;
- (int64_t)configurationType;
@end

@implementation WOCyclingPowerZonesConfiguration

- (BOOL)isEmpty
{
  selfCopy = self;
  v3 = sub_22644();

  return v3 & 1;
}

- (BOOL)isAutomaticEmpty
{
  selfCopy = self;
  v3 = sub_22604();

  return v3 & 1;
}

- (BOOL)isAutomaticFromAppleFTP
{
  selfCopy = self;
  v3 = sub_22624();

  return v3 & 1;
}

- (BOOL)isEditable
{
  selfCopy = self;
  v3 = sub_1804C();

  return v3 & 1;
}

- (int64_t)configurationType
{
  v3 = sub_22664();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_22614();
  v8 = (*(v4 + 88))(v6, v3);
  v9 = 0;
  if (v8 == enum case for CyclingPowerZonesConfigurationType.automatic(_:))
  {
    goto LABEL_4;
  }

  if (v8 == enum case for CyclingPowerZonesConfigurationType.manual(_:))
  {
    v9 = 1;
LABEL_4:

    return v9;
  }

  result = sub_229A4();
  __break(1u);
  return result;
}

- (NSArray)zones
{
  selfCopy = self;
  sub_183D0();

  type metadata accessor for CyclingPowerZoneBridge(0, v3);
  v4.super.isa = sub_228C4().super.isa;

  return v4.super.isa;
}

- (WOCyclingPowerZonesConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end