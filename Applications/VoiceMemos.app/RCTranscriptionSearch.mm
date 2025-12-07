@interface RCTranscriptionSearch
+ (void)recordingURIsForTranscriptionsContaining:(NSString *)containing completionHandler:(id)handler;
- (_TtC10VoiceMemos21RCTranscriptionSearch)init;
@end

@implementation RCTranscriptionSearch

+ (void)recordingURIsForTranscriptionsContaining:(NSString *)containing completionHandler:(id)handler
{
  v7 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = containing;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10024CDE8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100243D40;
  v14[5] = v13;
  containingCopy = containing;
  sub_1001A8E50(0, 0, v9, &unk_100243540, v14);
}

- (_TtC10VoiceMemos21RCTranscriptionSearch)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RCTranscriptionSearch();
  return [(RCTranscriptionSearch *)&v3 init];
}

@end