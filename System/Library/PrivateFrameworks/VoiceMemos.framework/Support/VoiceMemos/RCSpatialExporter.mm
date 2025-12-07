@interface RCSpatialExporter
- (_TtC10voicememod17RCSpatialExporter)init;
- (_TtC10voicememod17RCSpatialExporter)initWithComposition:(id)composition metadata:(id)metadata;
- (float)progress;
- (void)writeCompositionWithCompletionBlock:(id)block;
@end

@implementation RCSpatialExporter

- (_TtC10voicememod17RCSpatialExporter)initWithComposition:(id)composition metadata:(id)metadata
{
  if (metadata)
  {
    sub_100029134(0, &qword_10005CC78, AVMetadataItem_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC10voicememod17RCSpatialExporter_exporter);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  *(&self->super.isa + OBJC_IVAR____TtC10voicememod17RCSpatialExporter_composition) = composition;
  *(&self->super.isa + OBJC_IVAR____TtC10voicememod17RCSpatialExporter_metadata) = v6;
  v10.receiver = self;
  v10.super_class = type metadata accessor for RCSpatialExporter();
  compositionCopy = composition;
  return [(RCSpatialExporter *)&v10 init];
}

- (void)writeCompositionWithCompletionBlock:(id)block
{
  v5 = sub_100024720(&qword_10005CB50, &qword_10003F510);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(block);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_10002C78C;
  v11[6] = v9;
  selfCopy = self;
  sub_10002C968(0, 0, v7, &unk_10003FAB8, v11);
}

- (float)progress
{
  selfCopy = self;
  sub_100030AE0();
  v4 = v3;

  return v4;
}

- (_TtC10voicememod17RCSpatialExporter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end