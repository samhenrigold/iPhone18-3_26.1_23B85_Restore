@interface TimerCompressedController
- (_TtC10ClockAngel25TimerCompressedController)init;
- (_TtC10ClockAngel25TimerCompressedController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TimerCompressedController

- (_TtC10ClockAngel25TimerCompressedController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10005CC08(v5, v7, bundle);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for OpaqueAlarm(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimerCompressedController(0);
  v14.receiver = self;
  v14.super_class = v12;
  selfCopy = self;
  [(TimerCompressedController *)&v14 viewWillAppear:appearCopy];
  sub_10005DAC4(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_10002D02C(v7, &qword_100114D70, &unk_1000D20E0);
  }

  else
  {
    sub_10004DF2C(v7, v11);
    sub_10005E7D8(v11);

    sub_10005EECC(v11);
  }
}

- (_TtC10ClockAngel25TimerCompressedController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end