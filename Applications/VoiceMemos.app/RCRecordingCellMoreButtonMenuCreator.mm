@interface RCRecordingCellMoreButtonMenuCreator
- (NSString)recordingUUID;
- (UIView)source;
- (_TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator)init;
- (_TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator)initWithRecordingUUID:(id)d actionDelegate:(id)delegate source:(id)source;
- (id)createMenuWithDisplayShowTranscriptAction:(BOOL)action displayCopyTranscriptAction:(BOOL)transcriptAction hasMultipleTracks:(BOOL)tracks isSpatialRecording:(BOOL)recording;
- (void)setRecordingUUID:(id)d;
@end

@implementation RCRecordingCellMoreButtonMenuCreator

- (NSString)recordingUUID
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setRecordingUUID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator_recordingUUID);
  *v5 = v4;
  v5[1] = v6;
}

- (UIView)source
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator)initWithRecordingUUID:(id)d actionDelegate:(id)delegate source:(id)source
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_unknownObjectRetain();
  sourceCopy = source;
  v11 = sub_1001204C4(v7, v9, delegate, source);
  swift_unknownObjectRelease();

  return v11;
}

- (id)createMenuWithDisplayShowTranscriptAction:(BOOL)action displayCopyTranscriptAction:(BOOL)transcriptAction hasMultipleTracks:(BOOL)tracks isSpatialRecording:(BOOL)recording
{
  tracksCopy = tracks;
  selfCopy = self;
  v10.super.super.isa = sub_100120654(transcriptAction, tracksCopy, recording).super.super.isa;

  return v10.super.super.isa;
}

- (_TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end