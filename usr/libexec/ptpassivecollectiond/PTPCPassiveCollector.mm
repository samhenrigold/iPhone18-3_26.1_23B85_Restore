@interface PTPCPassiveCollector
- (_TtC20ptpassivecollectiond20PTPCPassiveCollector)init;
- (_TtC20ptpassivecollectiond20PTPCPassiveCollector)initWithConfig:(id)config traceNamePrefix:(id)prefix outputDirectory:(id)directory;
- (id)collectWithStartDate:(id)date endDate:(id)endDate error:(id *)error;
@end

@implementation PTPCPassiveCollector

- (_TtC20ptpassivecollectiond20PTPCPassiveCollector)initWithConfig:(id)config traceNamePrefix:(id)prefix outputDirectory:(id)directory
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (prefix)
  {
    prefix = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  *(&self->super.isa + OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_config) = config;
  (*(v9 + 16))(self + OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_outputDirectory, v11, v8);
  v14 = (&self->super.isa + OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_traceNamePrefix);
  *v14 = prefix;
  v14[1] = v13;
  v15 = type metadata accessor for PTPCPassiveCollector(0);
  v19.receiver = self;
  v19.super_class = v15;
  configCopy = config;
  v17 = [(PTPCPassiveCollector *)&v19 init];
  (*(v9 + 8))(v11, v8);
  return v17;
}

- (id)collectWithStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v17[-v11];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000107AC(v12, v10);

  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (_TtC20ptpassivecollectiond20PTPCPassiveCollector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end