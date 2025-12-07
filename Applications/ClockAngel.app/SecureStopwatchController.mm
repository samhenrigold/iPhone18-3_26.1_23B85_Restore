@interface SecureStopwatchController
- (_TtC10ClockAngel25SecureStopwatchController)init;
- (_TtC10ClockAngel25SecureStopwatchController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didClearAllLaps;
- (void)didLapLapTimer;
- (void)didPauseLapTimer;
- (void)didResetLapTimer;
- (void)didResumeLapTimer;
- (void)didStartLapTimer;
- (void)didUpdateCurrentInterval:(double)interval adjustedCurrentInterval:(double)currentInterval totalInterval:(double)totalInterval adjustedTotalInterval:(double)adjustedTotalInterval isStopwatchRunning:(BOOL)running isStopwatchStopped:(BOOL)stopped;
- (void)lapCancelAction;
- (void)playPausedAction;
- (void)viewDidLoad;
@end

@implementation SecureStopwatchController

- (void)viewDidLoad
{
  v3 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_100039A94(0, 0, v5, &unk_1000D2800, v7);

  sub_10002D02C(v5, &unk_100115E10, &qword_1000D27F0);
}

- (_TtC10ClockAngel25SecureStopwatchController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_10002E2E0(v5, v7, bundle);
}

- (void)playPausedAction
{
  selfCopy = self;
  sub_10002E4B0();
}

- (void)lapCancelAction
{
  selfCopy = self;
  sub_10002E7E0();
}

- (_TtC10ClockAngel25SecureStopwatchController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didUpdateCurrentInterval:(double)interval adjustedCurrentInterval:(double)currentInterval totalInterval:(double)totalInterval adjustedTotalInterval:(double)adjustedTotalInterval isStopwatchRunning:(BOOL)running isStopwatchStopped:(BOOL)stopped
{
  selfCopy = self;
  sub_1000317D4(stopped, interval, currentInterval, totalInterval, adjustedTotalInterval);
}

- (void)didClearAllLaps
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (void)didStartLapTimer
{
  selfCopy = self;
  sub_100030770();
}

- (void)didPauseLapTimer
{
  selfCopy = self;
  sub_1000308BC();
}

- (void)didLapLapTimer
{
  selfCopy = self;
  sub_100030AC8();
}

- (void)didResetLapTimer
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (void)didResumeLapTimer
{
  selfCopy = self;
  sub_100030D0C();
}

@end