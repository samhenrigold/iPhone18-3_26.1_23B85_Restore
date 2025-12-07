@interface FeedbackServiceXPC.Server
- (void)logFeedback:(id)feedback ofType:(id)type ofVariant:(id)variant forEvent:(int64_t)event withTimestamp:(id)timestamp shouldProcessImmediately:(BOOL)immediately completion:(id)completion;
@end

@implementation FeedbackServiceXPC.Server

- (void)logFeedback:(id)feedback ofType:(id)type ofVariant:(id)variant forEvent:(int64_t)event withTimestamp:(id)timestamp shouldProcessImmediately:(BOOL)immediately completion:(id)completion
{
  immediatelyCopy = immediately;
  eventCopy = event;
  v14 = sub_1C4EF9CD8();
  v36 = *(v14 - 8);
  v37 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(completion);
  feedbackCopy = feedback;
  typeCopy = type;
  timestampCopy = timestamp;
  selfCopy = self;
  variantCopy = variant;
  v22 = sub_1C4EF9A68();
  v24 = v23;

  v25 = sub_1C4F01138();
  v27 = v26;

  if (variantCopy)
  {
    v28 = sub_1C4F01138();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  sub_1C4EF9C78();

  _Block_copy(v17);
  v31 = selfCopy;
  sub_1C4807420(v22, v24, v25, v27, v28, v30, eventCopy, v16, immediatelyCopy, selfCopy, v17);
  _Block_release(v17);

  sub_1C4434000(v22, v24);

  (*(v36 + 8))(v16, v37);
}

@end