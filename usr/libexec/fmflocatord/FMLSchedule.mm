@interface FMLSchedule
- (BOOL)isCurrentAt:(id)at;
- (NSString)description;
- (NSTimeZone)timeZone;
- (_TtC11fmflocatord11FMLSchedule)init;
- (id)dictionary;
- (id)nextStartOrEndDateFrom:(id)from;
- (unint64_t)daysOfWeek;
@end

@implementation FMLSchedule

- (unint64_t)daysOfWeek
{
  v3 = type metadata accessor for Fence.DaysOfWeek();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Fence.Schedule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  Fence.Schedule.Matcher.schedule.getter();
  Fence.Schedule.daysOfWeek.getter();
  (*(v8 + 8))(v10, v7);
  LOBYTE(self) = Fence.DaysOfWeek.rawValue.getter();

  (*(v4 + 8))(v6, v3);
  return self;
}

- (NSTimeZone)timeZone
{
  v3 = type metadata accessor for Fence.Schedule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  Fence.Schedule.Matcher.schedule.getter();
  Fence.Schedule.timeZone.getter();

  (*(v4 + 8))(v6, v3);
  v12.super.isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v10, v7);

  return v12.super.isa;
}

- (BOOL)isCurrentAt:(id)at
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  LOBYTE(self) = Fence.Schedule.Matcher.doesMatchSchedule(_:)();

  (*(v5 + 8))(v7, v4);
  return self & 1;
}

- (id)nextStartOrEndDateFrom:(id)from
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  Fence.Schedule.Matcher.nextStartOrEndDate(from:)();

  v12 = *(v5 + 8);
  v12(v8, v4);
  v13.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v12(v10, v4);

  return v13.super.isa;
}

- (NSString)description
{
  v3 = type metadata accessor for Fence.Schedule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  Fence.Schedule.Matcher.schedule.getter();
  Fence.Schedule.description.getter();

  (*(v4 + 8))(v6, v3);
  v8 = String._bridgeToObjectiveC()();

  return v8;
}

- (_TtC11fmflocatord11FMLSchedule)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)dictionary
{
  selfCopy = self;
  sub_100033EC4();

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

@end