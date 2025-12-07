@interface RCShareMemoExporter
- (RCShareMemoExporter)init;
- (float)progressForRecordingWithId:(id)id;
- (void)attachMetadataToRecordingAtURL:(NSURL *)l withId:(NSString *)id with:(_TtP10VoiceMemos27EffectRendererInfoProviding_ *)with completionHandler:(id)handler;
- (void)cancelExportForRecordingWithId:(id)id;
- (void)renderRecordingWithId:(NSString *)id intoDirectory:(NSURL *)directory with:(_TtP10VoiceMemos27EffectRendererInfoProviding_ *)with completionHandler:(id)handler;
- (void)splitMultitrackRecordingWithId:(NSString *)id intoDirectory:(NSURL *)directory with:(_TtP10VoiceMemos27TrackSplitRendererProviding_ *)with completionHandler:(id)handler;
@end

@implementation RCShareMemoExporter

- (void)renderRecordingWithId:(NSString *)id intoDirectory:(NSURL *)directory with:(_TtP10VoiceMemos27EffectRendererInfoProviding_ *)with completionHandler:(id)handler
{
  v11 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = id;
  v15[3] = directory;
  v15[4] = with;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100243F98;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100243FA0;
  v18[5] = v17;
  idCopy = id;
  directoryCopy = directory;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001A8E50(0, 0, v13, &unk_100243FA8, v18);
}

- (void)splitMultitrackRecordingWithId:(NSString *)id intoDirectory:(NSURL *)directory with:(_TtP10VoiceMemos27TrackSplitRendererProviding_ *)with completionHandler:(id)handler
{
  v11 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = id;
  v15[3] = directory;
  v15[4] = with;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100243F78;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100243F80;
  v18[5] = v17;
  idCopy = id;
  directoryCopy = directory;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001A8E50(0, 0, v13, &unk_100243F88, v18);
}

- (void)attachMetadataToRecordingAtURL:(NSURL *)l withId:(NSString *)id with:(_TtP10VoiceMemos27EffectRendererInfoProviding_ *)with completionHandler:(id)handler
{
  v11 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = l;
  v15[3] = id;
  v15[4] = with;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100243F58;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100243D40;
  v18[5] = v17;
  lCopy = l;
  idCopy = id;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001A8E50(0, 0, v13, &unk_100243540, v18);
}

- (RCShareMemoExporter)init
{
  v3 = OBJC_IVAR___RCShareMemoExporter_inProgressOperations;
  sub_1000C773C(&qword_1002D0570, &unk_100243F38);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = &_swiftEmptyDictionarySingleton;
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ShareMemoExporter();
  return [(RCShareMemoExporter *)&v6 init];
}

- (void)cancelExportForRecordingWithId:(id)id
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR___RCShareMemoExporter_inProgressOperations);
  selfCopy = self;

  os_unfair_lock_lock(v4 + 6);
  sub_100109FD4(&v4[4]);
  os_unfair_lock_unlock(v4 + 6);
}

- (float)progressForRecordingWithId:(id)id
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR___RCShareMemoExporter_inProgressOperations);
  selfCopy = self;

  os_unfair_lock_lock(v4 + 6);
  sub_100109FB8(&v4[4], &v8);
  os_unfair_lock_unlock(v4 + 6);
  v6 = v8;

  return v6;
}

@end