@interface RCControlsActionHelper
- (_TtC10VoiceMemos22RCControlsActionHelper)init;
- (void)transcriptionStringForRecordingUUID:(NSString *)d completionHandler:(id)handler;
@end

@implementation RCControlsActionHelper

- (void)transcriptionStringForRecordingUUID:(NSString *)d completionHandler:(id)handler
{
  v7 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10024F960;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100243D40;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_1001A8E50(0, 0, v9, &unk_100243540, v14);
}

- (_TtC10VoiceMemos22RCControlsActionHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RCControlsActionHelper();
  return [(RCControlsActionHelper *)&v3 init];
}

@end