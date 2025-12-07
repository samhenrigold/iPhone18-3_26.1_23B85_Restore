@interface FeedbackServiceNoOpServer
- (BOOL)logWithFeedbackData:(id)data type:(id)type variant:(id)variant eventId:(int64_t)id withTimestamp:(id)timestamp shouldProcessImmediately:(BOOL)immediately error:(id *)error;
@end

@implementation FeedbackServiceNoOpServer

- (BOOL)logWithFeedbackData:(id)data type:(id)type variant:(id)variant eventId:(int64_t)id withTimestamp:(id)timestamp shouldProcessImmediately:(BOOL)immediately error:(id *)error
{
  v27 = sub_1ABF21EB4();
  v14 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  dataCopy = data;
  typeCopy = type;
  timestampCopy = timestamp;
  selfCopy = self;
  variantCopy = variant;
  v22 = sub_1ABF21DD4();
  v24 = v23;

  sub_1ABF23C04();
  if (variantCopy)
  {
    sub_1ABF23C04();
  }

  sub_1ABF21E64();

  (*(v14 + 8))(v16, v27);

  sub_1ABA96210(v22, v24);
  return 1;
}

@end