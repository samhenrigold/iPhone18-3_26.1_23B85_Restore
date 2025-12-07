@interface ReportTime
- (NSDate)lastReport;
- (_TtC13transparencyd10ReportTime)init;
- (double)timeBetweenReports;
- (void)setLastReport:(id)report;
- (void)setTimeBetweenReports:(double)reports;
@end

@implementation ReportTime

- (NSDate)lastReport
{
  v3 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC13transparencyd10ReportTime_lastReport;
  swift_beginAccess();
  sub_1000AB050(self + v6, v5, &qword_100383FB0, &unk_1002D6690);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (void)setLastReport:(id)report
{
  v5 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (report)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC13transparencyd10ReportTime_lastReport;
  swift_beginAccess();
  selfCopy = self;
  sub_1000BECD4(v7, self + v10);
  swift_endAccess();
}

- (double)timeBetweenReports
{
  v3 = OBJC_IVAR____TtC13transparencyd10ReportTime_timeBetweenReports;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTimeBetweenReports:(double)reports
{
  v5 = OBJC_IVAR____TtC13transparencyd10ReportTime_timeBetweenReports;
  swift_beginAccess();
  *(self + v5) = reports;
}

- (_TtC13transparencyd10ReportTime)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end