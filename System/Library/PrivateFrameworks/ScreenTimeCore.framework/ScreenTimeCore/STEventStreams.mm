@interface STEventStreams
+ (id)fetchAllURLsForBundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier;
+ (id)fetchURLsDuringInterval:(id)interval bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier;
- (_TtC15ScreenTimeAgent14STEventStreams)init;
@end

@implementation STEventStreams

+ (id)fetchURLsDuringInterval:(id)interval bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (profileIdentifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static EventStreams.urls(during:bundleIdentifier:profileIdentifier:)();

  (*(v7 + 8))(v9, v6);
  type metadata accessor for URL();
  sub_1000DF75C();
  v10.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

+ (id)fetchAllURLsForBundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier
{
  v5 = type metadata accessor for Date();
  v6 = __chkstk_darwin(v5 - 8);
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (profileIdentifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static Date.distantPast.getter();
  static Date.now.getter();
  DateInterval.init(start:end:)();
  static EventStreams.urls(during:bundleIdentifier:profileIdentifier:)();

  (*(v8 + 8))(v10, v7);
  type metadata accessor for URL();
  sub_1000DF75C();
  v11.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (_TtC15ScreenTimeAgent14STEventStreams)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(STEventStreams *)&v3 init];
}

@end