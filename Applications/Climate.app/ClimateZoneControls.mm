@interface ClimateZoneControls
- (NSArray)preferredFocusEnvironments;
- (_TtC7Climate19ClimateZoneControls)initWithCoder:(id)coder;
- (_TtC7Climate19ClimateZoneControls)initWithFrame:(CGRect)frame;
- (void)didUpdateSettings;
@end

@implementation ClimateZoneControls

- (_TtC7Climate19ClimateZoneControls)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Climate19ClimateZoneControls)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didUpdateSettings
{
  selfCopy = self;
  v2 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    v6 = v2;
    swift_once();
    v2 = v6;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10011B1C0, "ZoneCard refresh", 16, 2, _swiftEmptyArrayStorage);

  sub_100072970();
  v4 = v3;

  sub_1000A72C8(v4, v5);
}

- (NSArray)preferredFocusEnvironments
{
  sub_1000040E8(&unk_100114770, qword_1000D58D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D5DA0;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate19ClimateZoneControls_zoneViews);
  *(v3 + 32) = v4;
  v5 = v4;
  sub_1000040E8(&unk_1001150F0, &qword_1000D5F10);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end