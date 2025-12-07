@interface WOHeartRateZone
+ (id)zones:(id)zones replacingZoneAtIndex:(int64_t)index withZone:(id)zone;
- (NSString)description;
- (WOHeartRateZone)init;
- (id)zoneByMutatingLowerBound:(double)bound;
- (id)zoneByMutatingUpperBound:(double)bound;
- (int64_t)zoneCount;
- (int64_t)zoneIndex;
@end

@implementation WOHeartRateZone

- (id)zoneByMutatingLowerBound:(double)bound
{
  selfCopy = self;
  sub_1E030(bound);
  v6 = v5;

  return v6;
}

- (id)zoneByMutatingUpperBound:(double)bound
{
  selfCopy = self;
  sub_1E168(bound);
  v6 = v5;

  return v6;
}

- (int64_t)zoneIndex
{
  selfCopy = self;
  v3 = sub_22734();

  return v3;
}

- (int64_t)zoneCount
{
  selfCopy = self;
  sub_22734();
  v4 = v3;

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  HeartRateZoneBridge.description.getter(selfCopy, v3);

  v4 = sub_22864();

  return v4;
}

+ (id)zones:(id)zones replacingZoneAtIndex:(int64_t)index withZone:(id)zone
{
  type metadata accessor for HeartRateZoneBridge(self, a2);
  v7 = sub_228D4();
  zoneCopy = zone;
  sub_1F698(v7, index, zoneCopy);

  v9.super.isa = sub_228C4().super.isa;

  return v9.super.isa;
}

- (WOHeartRateZone)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end