@interface HFCameraAnalyticsCameraPlayerLaunchEvent
- (void)launchedRecordingWithError:(id)error;
- (void)launchedStreamWithError:(id)error;
@end

@implementation HFCameraAnalyticsCameraPlayerLaunchEvent

- (void)launchedStreamWithError:(id)error
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  errorCopy = error;
  date = [v4 date];
  startDate = [(HFCameraAnalyticsEvent *)self startDate];
  [date timeIntervalSinceDate:startDate];
  v9 = v8;

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v9 * 1000.0)];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  v13 = [HFCameraAnalyticsEvent errorCodeForError:errorCopy];

  v15[0] = HFCameraAnalyticsErrorCode;
  v15[1] = HFCameraAnalyticsProcessName;
  v16[0] = v13;
  v16[1] = processName;
  v15[2] = HFCameraAnalyticsLatency;
  v16[2] = v10;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  [HFCameraAnalyticsEventHandler sendEventNamed:@"com.apple.Home.CameraStreamLaunch" payload:v14];
}

- (void)launchedRecordingWithError:(id)error
{
  v29[6] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  errorCopy = error;
  date = [v4 date];
  startDate = [(HFCameraAnalyticsEvent *)self startDate];
  [date timeIntervalSinceDate:startDate];
  v9 = v8;

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v9 * 1000.0)];
  v10 = MEMORY[0x277CCABB0];
  cameraClip = [(HFCameraAnalyticsEvent *)self cameraClip];
  v12 = [v10 numberWithBool:{objc_msgSend(cameraClip, "isComplete")}];

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  v15 = [HFCameraAnalyticsEvent errorCodeForError:errorCopy];

  v16 = MEMORY[0x277CCABB0];
  cameraClip2 = [(HFCameraAnalyticsEvent *)self cameraClip];
  objc_msgSend_duration(cameraClip2);
  v19 = [v16 numberWithUnsignedInteger:v18];

  v20 = MEMORY[0x277CCABB0];
  v21 = MEMORY[0x277CBEAA8];
  cameraClip3 = [(HFCameraAnalyticsEvent *)self cameraClip];
  dateOfOccurrence = [cameraClip3 dateOfOccurrence];
  date2 = [MEMORY[0x277CBEAA8] date];
  v25 = [v20 numberWithInteger:{objc_msgSend(v21, "hf_daysBetweenDates:endDate:", dateOfOccurrence, date2)}];

  v28[0] = HFCameraAnalyticsErrorCode;
  v28[1] = HFCameraAnalyticsIsComplete;
  v29[0] = v15;
  v29[1] = v12;
  v28[2] = HFCameraAnalyticsProcessName;
  v28[3] = HFCameraAnalyticsLatency;
  v29[2] = processName;
  v29[3] = v27;
  v28[4] = HFCameraAnalyticsDuration;
  v28[5] = HFCameraAnalyticsAge;
  v29[4] = v19;
  v29[5] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];
  [HFCameraAnalyticsEventHandler sendEventNamed:@"com.apple.Home.CameraClipLaunch" payload:v26];
}

@end