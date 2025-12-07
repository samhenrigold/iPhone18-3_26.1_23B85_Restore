@interface KTCloudRecordDeviceStatus
- (BOOL)stateReady;
- (NSDate)uploadedToCKAt;
- (NSString)description;
- (NSString)state;
- (_TtC13transparencyd25KTCloudRecordDeviceStatus)init;
- (void)setState:(id)state;
- (void)setStateReady:(BOOL)ready;
- (void)setUploadedToCKAt:(id)at;
@end

@implementation KTCloudRecordDeviceStatus

- (BOOL)stateReady
{
  v3 = OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_stateReady;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setStateReady:(BOOL)ready
{
  v5 = OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_stateReady;
  swift_beginAccess();
  *(self + v5) = ready;
}

- (NSString)state
{
  v2 = self + OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_state;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setState:(id)state
{
  if (state)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_state);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSDate)uploadedToCKAt
{
  v3 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_uploadedToCKAt;
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

- (void)setUploadedToCKAt:(id)at
{
  v5 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (at)
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

  v10 = OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_uploadedToCKAt;
  swift_beginAccess();
  selfCopy = self;
  sub_1000BECD4(v7, self + v10);
  swift_endAccess();
}

- (NSString)description
{
  selfCopy = self;
  sub_1000DF96C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC13transparencyd25KTCloudRecordDeviceStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end