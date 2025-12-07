@interface HFCameraAnalyticsCameraClipExportSessionEvent
- (id)sendEventForState:(unint64_t)state;
@end

@implementation HFCameraAnalyticsCameraClipExportSessionEvent

- (id)sendEventForState:(unint64_t)state
{
  v37 = *MEMORY[0x277D85DE8];
  cameraClip = [(HFCameraAnalyticsEvent *)self cameraClip];

  if (cameraClip)
  {
    date = [MEMORY[0x277CBEAA8] date];
    startDate = [(HFCameraAnalyticsEvent *)self startDate];
    [date timeIntervalSinceDate:startDate];
    v9 = v8;

    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v9 * 1000.0)];
    v10 = MEMORY[0x277CCABB0];
    cameraClip2 = [(HFCameraAnalyticsEvent *)self cameraClip];
    v32 = [v10 numberWithBool:{objc_msgSend(cameraClip2, "isComplete")}];

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    v15 = MEMORY[0x277CCABB0];
    cameraClip3 = [(HFCameraAnalyticsEvent *)self cameraClip];
    objc_msgSend_duration(cameraClip3);
    v18 = [v15 numberWithUnsignedInteger:(v17 * 1000.0)];

    v19 = MEMORY[0x277CCABB0];
    v20 = MEMORY[0x277CBEAA8];
    cameraClip4 = [(HFCameraAnalyticsEvent *)self cameraClip];
    dateOfOccurrence = [cameraClip4 dateOfOccurrence];
    date2 = [MEMORY[0x277CBEAA8] date];
    v24 = [v19 numberWithInteger:{objc_msgSend(v20, "hf_daysBetweenDates:endDate:", dateOfOccurrence, date2)}];

    v25 = MEMORY[0x277CCABB0];
    v26 = v31;
    [(HFCameraAnalyticsCameraClipExportSessionEvent *)self recordingDuration];
    v28 = [v25 numberWithUnsignedInt:(v27 * 1000.0)];
    v33[0] = HFCameraAnalyticsErrorState;
    v33[1] = HFCameraAnalyticsExportedLength;
    v34[0] = v14;
    v34[1] = v28;
    v33[2] = HFCameraAnalyticsIsComplete;
    v33[3] = HFCameraAnalyticsProcessName;
    v34[2] = v32;
    v34[3] = processName;
    v33[4] = HFCameraAnalyticsLatency;
    v33[5] = HFCameraAnalyticsDuration;
    v34[4] = v31;
    v34[5] = v18;
    v33[6] = HFCameraAnalyticsAge;
    v34[6] = v24;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:7];
    [HFCameraAnalyticsEventHandler sendEventNamed:@"com.apple.Home.CameraClipExportSession" payload:v29];
  }

  else
  {
    v26 = HFLogForCategory(6uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_error_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_ERROR, "Unable to send event for %@", buf, 0xCu);
    }

    v29 = MEMORY[0x277CBEC10];
  }

  return v29;
}

@end