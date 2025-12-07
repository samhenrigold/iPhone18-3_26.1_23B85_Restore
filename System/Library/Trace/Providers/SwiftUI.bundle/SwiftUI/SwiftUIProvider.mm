@interface SwiftUIProvider
- (BOOL)shouldInitializeWithLogger:(id)logger machine:(void *)machine options:(id)options error:(id *)error;
- (BOOL)shouldStartTracingWithConfiguration:(void *)configuration error:(id *)error;
- (SwiftUIProvider)init;
- (id)describeChunk:(void *)chunk;
- (void)willFinishWithCatalog:(void *)catalog file:(void *)file;
@end

@implementation SwiftUIProvider

- (SwiftUIProvider)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for TraceConfig.Version();
  __chkstk_darwin();
  *(&self->super.isa + OBJC_IVAR___SwiftUIProvider_tracer) = 0;
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for TraceConfig.Version.v0(_:));
  TraceConfig.init(version:compression:viewTree:sync:)();
  *(&self->super.isa + OBJC_IVAR___SwiftUIProvider_logger) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(SwiftUIProvider *)&v7 init];
}

- (BOOL)shouldInitializeWithLogger:(id)logger machine:(void *)machine options:(id)options error:(id *)error
{
  v8 = type metadata accessor for TraceConfig();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  *(&self->super.isa + OBJC_IVAR___SwiftUIProvider_logger) = logger;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRelease();

  TraceConfig.init(_:)();

  swift_unknownObjectRelease();
  v13 = OBJC_IVAR___SwiftUIProvider_config;
  swift_beginAccess();
  (*(v9 + 40))(selfCopy + v13, v11, v8);
  swift_endAccess();

  return 1;
}

- (BOOL)shouldStartTracingWithConfiguration:(void *)configuration error:(id *)error
{
  selfCopy = self;
  specialized SwiftUIProvider.shouldStartTracing(configuration:)(selfCopy, v5, v6, v7, v8, v9);

  return 1;
}

- (void)willFinishWithCatalog:(void *)catalog file:(void *)file
{
  selfCopy = self;
  specialized SwiftUIProvider.willFinish(catalog:file:)(file);
}

- (id)describeChunk:(void *)chunk
{
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end