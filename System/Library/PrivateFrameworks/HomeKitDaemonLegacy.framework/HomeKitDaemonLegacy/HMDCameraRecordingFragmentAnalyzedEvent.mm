@interface HMDCameraRecordingFragmentAnalyzedEvent
- (HMDCameraRecordingFragmentAnalyzedEvent)initWithSessionID:(id)d cameraID:(id)iD sequenceNumber:(unint64_t)number;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDCameraRecordingFragmentAnalyzedEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"isSuccess";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingFragmentAnalyzedEvent isSuccess](self, "isSuccess")}];
  v9[0] = v3;
  v8[1] = @"recordingReason";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDCameraRecordingFragmentAnalyzedEvent recordingReason](self, "recordingReason")}];
  v9[1] = v4;
  v8[2] = @"motionActive";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingFragmentAnalyzedEvent isMotionActive](self, "isMotionActive")}];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)attributeDescriptions
{
  v12.receiver = self;
  v12.super_class = HMDCameraRecordingFragmentAnalyzedEvent;
  attributeDescriptions = [(HMDCameraRecordingLogEvent *)&v12 attributeDescriptions];
  v4 = [attributeDescriptions mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingFragmentAnalyzedEvent isSuccess](self, "isSuccess")}];
  v7 = [v5 initWithName:@"isSuccess" value:v6];
  [v4 addObject:v7];

  recordingReason = [(HMDCameraRecordingFragmentAnalyzedEvent *)self recordingReason];
  if ((recordingReason - 1) >= 4)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", recordingReason];
  }

  else
  {
    v9 = off_279728948[(recordingReason - 1)];
  }

  v10 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"recordingReason" value:v9];
  [v4 addObject:v10];

  return v4;
}

- (HMDCameraRecordingFragmentAnalyzedEvent)initWithSessionID:(id)d cameraID:(id)iD sequenceNumber:(unint64_t)number
{
  v6.receiver = self;
  v6.super_class = HMDCameraRecordingFragmentAnalyzedEvent;
  return [(HMDCameraRecordingLogEvent *)&v6 initWithSessionID:d cameraID:iD sequenceNumber:number];
}

@end