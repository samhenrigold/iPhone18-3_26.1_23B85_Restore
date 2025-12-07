@interface MOAppUsageAggregation
- (NSArray)categoryUsages;
- (NSDateInterval)dateInterval;
- (NSDateInterval)longestActivity;
- (_TtC8momentsd21MOAppUsageAggregation)init;
- (_TtC8momentsd21MOAppUsageAggregation)initWithCategoryUsages:(id)usages dateInterval:(id)interval longestActivity:(id)activity;
- (id)getCategoryUsage;
- (id)getDateInterval;
- (void)setCategoryUsages:(id)usages;
- (void)setDateInterval:(id)interval;
- (void)setLongestActivity:(id)activity;
@end

@implementation MOAppUsageAggregation

- (NSArray)categoryUsages
{
  v3 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_categoryUsages;
  swift_beginAccess();
  if (*(self + v3))
  {
    type metadata accessor for MOAppCategoryUsage();

    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setCategoryUsages:(id)usages
{
  usagesCopy = usages;
  if (usages)
  {
    type metadata accessor for MOAppCategoryUsage();
    usagesCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_categoryUsages;
  swift_beginAccess();
  *(self + v5) = usagesCopy;
}

- (NSDateInterval)dateInterval
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_dateInterval;
  swift_beginAccess();
  (*(v4 + 16))(v7, self + v8, v3);
  v9.super.isa = DateInterval._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v9.super.isa;
}

- (void)setDateInterval:(id)interval
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_dateInterval;
  swift_beginAccess();
  v10 = *(v5 + 40);
  selfCopy = self;
  v10(self + v9, v8, v4);
  swift_endAccess();
}

- (NSDateInterval)longestActivity
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_longestActivity;
  swift_beginAccess();
  outlined init with copy of DateInterval?(self + v7, v6);
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

- (void)setLongestActivity:(id)activity
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v13 - v7;
  if (activity)
  {
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for DateInterval();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for DateInterval();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_longestActivity;
  swift_beginAccess();
  selfCopy = self;
  outlined assign with take of DateInterval?(v8, self + v11);
  swift_endAccess();
}

- (_TtC8momentsd21MOAppUsageAggregation)initWithCategoryUsages:(id)usages dateInterval:(id)interval longestActivity:(id)activity
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (usages)
  {
    type metadata accessor for MOAppCategoryUsage();
    usages = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  if (activity)
  {
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = *(v13 + 56);
  v18(v11, v17, 1, v12);
  v19 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_categoryUsages;
  *(self + OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_categoryUsages) = 0;
  v20 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_longestActivity;
  v18(self + OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_longestActivity, 1, 1, v12);
  swift_beginAccess();
  *(self + v19) = usages;
  (*(v13 + 16))(self + OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_dateInterval, v16, v12);
  swift_beginAccess();
  outlined assign with copy of DateInterval?(v11, self + v20);
  swift_endAccess();
  v21 = type metadata accessor for MOAppUsageAggregation(0);
  v24.receiver = self;
  v24.super_class = v21;
  v22 = [(MOAppUsageAggregation *)&v24 init];
  outlined destroy of DateInterval?(v11);
  (*(v13 + 8))(v16, v12);
  return v22;
}

- (id)getCategoryUsage
{
  v2 = *((swift_isaMask & *self) + 0x68);
  selfCopy = self;
  v4 = v2();

  if (v4)
  {
    type metadata accessor for MOAppCategoryUsage();
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (id)getDateInterval
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((swift_isaMask & *self) + 0x80);
  selfCopy = self;
  v8();

  v10.super.isa = DateInterval._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v10.super.isa;
}

- (_TtC8momentsd21MOAppUsageAggregation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end