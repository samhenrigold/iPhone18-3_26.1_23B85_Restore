@interface MapsSyncDateRange
- (NSDate)lower;
- (NSDate)upper;
- (_TtC8MapsSync17MapsSyncDateRange)init;
- (_TtC8MapsSync17MapsSyncDateRange)initWithStartDate:(id)date endDate:(id)endDate;
@end

@implementation MapsSyncDateRange

- (_TtC8MapsSync17MapsSyncDateRange)initWithStartDate:(id)date endDate:(id)endDate
{
  v4 = sub_1B63BE994();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1B63BE974();
  sub_1B63BE974();
  return MapsSyncDateRange.init(startDate:endDate:)(v9, v7);
}

- (NSDate)lower
{
  v3 = sub_1B63BE994();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC8MapsSync17MapsSyncDateRange__range, v3);
  v7 = sub_1B63BE954();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (NSDate)upper
{
  v3 = sub_1B63BE994();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR____TtC8MapsSync17MapsSyncDateRange__range;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943630, &qword_1B63C3E10);
  (*(v4 + 16))(v6, &v7[*(v8 + 36)], v3);
  v9 = sub_1B63BE954();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (_TtC8MapsSync17MapsSyncDateRange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end