@interface DeviceActivityQuery
- (_TtC18UsageTrackingAgent19DeviceActivityQuery)init;
- (_TtC18UsageTrackingAgent19DeviceActivityQuery)initWithBundleIdentifiers:(id)identifiers exemptBundleIdentifiers:(id)bundleIdentifiers categoryIdentifiers:(id)categoryIdentifiers domains:(id)domains interval:(id)interval;
@end

@implementation DeviceActivityQuery

- (_TtC18UsageTrackingAgent19DeviceActivityQuery)initWithBundleIdentifiers:(id)identifiers exemptBundleIdentifiers:(id)bundleIdentifiers categoryIdentifiers:(id)categoryIdentifiers domains:(id)domains interval:(id)interval
{
  domainsCopy = domains;
  intervalCopy = interval;
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &domainsCopy - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for Identifier(0);
  sub_100034B18(&qword_100090EB0, type metadata accessor for Identifier, &unk_10006CF64);
  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  *(&self->super.isa + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_bundleIdentifiers) = v12;
  *(&self->super.isa + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_exemptBundleIdentifiers) = v13;
  *(&self->super.isa + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_categoryIdentifiers) = v14;
  *(&self->super.isa + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_domains) = v15;
  (*(v9 + 16))(self + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_interval, v11, v8);
  v16 = type metadata accessor for DeviceActivityQuery(0);
  v21.receiver = self;
  v21.super_class = v16;
  v17 = [(DeviceActivityQuery *)&v21 init:domainsCopy];
  (*(v9 + 8))(v11, v8);
  return v17;
}

- (_TtC18UsageTrackingAgent19DeviceActivityQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end