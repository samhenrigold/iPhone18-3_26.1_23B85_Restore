@interface GracePeriodMock
- (NSDate)startDate;
- (NSString)name;
- (void)setName:(id)name;
- (void)setStartDate:(id)date;
@end

@implementation GracePeriodMock

- (NSString)name
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setName:(id)name
{
  *(self + 2) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + 3) = v4;
}

- (NSDate)startDate
{
  v3 = sub_100001EB0(&qword_10005BD00, "^/");
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC12eligibilitydP33_76CB2993945AB83551AB4E5A6C0D5A8815GracePeriodMock_startDate;
  swift_beginAccess();
  sub_100012A74(self + v6, v5);
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

- (void)setStartDate:(id)date
{
  v5 = sub_100001EB0(&qword_10005BD00, "^/");
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (date)
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

  v10 = OBJC_IVAR____TtC12eligibilitydP33_76CB2993945AB83551AB4E5A6C0D5A8815GracePeriodMock_startDate;
  swift_beginAccess();

  sub_100012740(v7, self + v10);
  swift_endAccess();
}

@end