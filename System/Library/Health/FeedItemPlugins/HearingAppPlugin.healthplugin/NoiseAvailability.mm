@interface NoiseAvailability
- (_TtC16HearingAppPlugin17NoiseAvailability)init;
- (void)dealloc;
- (void)pairedDevicesDidUpdate;
@end

@implementation NoiseAvailability

- (void)dealloc
{
  selfCopy = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, selfCopy);

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for NoiseAvailability(0);
  [(NoiseAvailability *)&v4 dealloc];
}

- (void)pairedDevicesDidUpdate
{
  sub_29D5EA87C(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v13 - v9;
  selfCopy = self;
  sub_29D5E9DC8(v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D5EA900(v10, v6);
  v12 = selfCopy;
  sub_29D65F8E4();
  sub_29D5EA964(v10);
  sub_29D5E9FC0();
}

- (_TtC16HearingAppPlugin17NoiseAvailability)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end