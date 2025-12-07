@interface AADeviceRecord
- (NSDate)audiogramCreationTimestamp;
- (NSString)bluetoothAddress;
- (NSString)debugDescription;
- (NSString)description;
- (_TtC15audioaccessoryd14AADeviceRecord)init;
- (_TtC15audioaccessoryd14AADeviceRecord)initWithDevice:(id)device error:(id *)error;
- (void)setAudiogramCreationTimestamp:(id)timestamp;
@end

@implementation AADeviceRecord

- (NSString)bluetoothAddress
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSDate)audiogramCreationTimestamp
{
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
  swift_beginAccess();
  sub_10013250C(self + v6, v5);
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

- (void)setAudiogramCreationTimestamp:(id)timestamp
{
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (timestamp)
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

  v10 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
  swift_beginAccess();
  selfCopy = self;
  sub_10013261C(v7, self + v10);
  swift_endAccess();
}

- (NSString)description
{
  selfCopy = self;
  AADeviceRecord.description.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)debugDescription
{
  v2 = [(AADeviceRecord *)self description];

  return v2;
}

- (_TtC15audioaccessoryd14AADeviceRecord)initWithDevice:(id)device error:(id *)error
{
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  deviceCopy = device;
  UUID.init()();
  v9 = objc_allocWithZone(type metadata accessor for AADeviceRecord(0));
  v10 = sub_100165768(v7, 0, 0xC000000000000000, deviceCopy);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (_TtC15audioaccessoryd14AADeviceRecord)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end