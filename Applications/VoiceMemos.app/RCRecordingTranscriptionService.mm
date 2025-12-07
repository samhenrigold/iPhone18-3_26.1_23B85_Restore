@interface RCRecordingTranscriptionService
+ (RCRecordingTranscriptionService)sharedInstance;
- (RCRecordingTranscriptionService)init;
- (void)cancelFileTranscriptionWithCompletionHandler:(id)handler;
- (void)startTranscriptionFor:(id)for;
@end

@implementation RCRecordingTranscriptionService

+ (RCRecordingTranscriptionService)sharedInstance
{
  if (qword_1002CDDB8 != -1)
  {
    swift_once();
  }

  v3 = qword_1002E8D20;

  return v3;
}

- (RCRecordingTranscriptionService)init
{
  v2 = (&self->super.isa + OBJC_IVAR___RCRecordingTranscriptionService_fileTranscriptionTask);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  *(&self->super.isa + OBJC_IVAR___RCRecordingTranscriptionService_isTranscribingLive) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for RecordingTranscriptionService();
  return [(RCRecordingTranscriptionService *)&v4 init];
}

- (void)startTranscriptionFor:(id)for
{
  v4 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = v7;
  v11[6] = v9;
  selfCopy = self;
  sub_100179578(0, 0, v6, &unk_100243900, v11);
}

- (void)cancelFileTranscriptionWithCompletionHandler:(id)handler
{
  v5 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1002438F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100243D40;
  v12[5] = v11;
  selfCopy = self;
  sub_1001A8E50(0, 0, v7, &unk_100243540, v12);
}

@end