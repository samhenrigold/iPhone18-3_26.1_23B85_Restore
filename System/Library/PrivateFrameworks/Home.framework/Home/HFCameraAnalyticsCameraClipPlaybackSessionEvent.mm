@interface HFCameraAnalyticsCameraClipPlaybackSessionEvent
- (id)sendEventForState:(unint64_t)state;
@end

@implementation HFCameraAnalyticsCameraClipPlaybackSessionEvent

- (id)sendEventForState:(unint64_t)state
{
  v40 = *MEMORY[0x277D85DE8];
  cameraClip = [(HFCameraAnalyticsEvent *)self cameraClip];

  if (cameraClip)
  {
    date = [MEMORY[0x277CBEAA8] date];
    startDate = [(HFCameraAnalyticsEvent *)self startDate];
    [date timeIntervalSinceDate:startDate];
    v9 = v8;

    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v9 * 1000.0)];
    v10 = MEMORY[0x277CCABB0];
    cameraClip2 = [(HFCameraAnalyticsEvent *)self cameraClip];
    v35 = [v10 numberWithBool:{objc_msgSend(cameraClip2, "isComplete")}];

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];

    v13 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    v14 = MEMORY[0x277CCABB0];
    cameraClip3 = [(HFCameraAnalyticsEvent *)self cameraClip];
    objc_msgSend_duration(cameraClip3);
    v17 = [v14 numberWithUnsignedInteger:v16];

    v18 = MEMORY[0x277CCABB0];
    v19 = MEMORY[0x277CBEAA8];
    cameraClip4 = [(HFCameraAnalyticsEvent *)self cameraClip];
    dateOfOccurrence = [cameraClip4 dateOfOccurrence];
    date2 = [MEMORY[0x277CBEAA8] date];
    v23 = [v18 numberWithInteger:{objc_msgSend(v19, "hf_minutesBetweenDates:endDate:", dateOfOccurrence, date2)}];

    v24 = MEMORY[0x277CCABB0];
    v25 = v33;
    v26 = MEMORY[0x277CBEAA8];
    cameraClip5 = [(HFCameraAnalyticsEvent *)self cameraClip];
    dateOfOccurrence2 = [cameraClip5 dateOfOccurrence];
    date3 = [MEMORY[0x277CBEAA8] date];
    v30 = [v24 numberWithInteger:{objc_msgSend(v26, "hf_daysBetweenDates:endDate:", dateOfOccurrence2, date3)}];

    v36[0] = HFCameraAnalyticsErrorState;
    v36[1] = HFCameraAnalyticsIsComplete;
    v37[0] = v13;
    v37[1] = v35;
    v36[2] = HFCameraAnalyticsProcessName;
    v36[3] = HFCameraAnalyticsLatency;
    v37[2] = processName;
    v37[3] = v33;
    v36[4] = HFCameraAnalyticsDuration;
    v36[5] = HFCameraAnalyticsAge;
    v37[4] = v17;
    v37[5] = v30;
    v36[6] = HFCameraAnalyticsAgeInMinutes;
    v37[6] = v23;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:7];
    [HFCameraAnalyticsEventHandler sendEventNamed:@"com.apple.Home.CameraClipPlaybackSession" payload:v31];
  }

  else
  {
    v25 = HFLogForCategory(6uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_error_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_ERROR, "Unable to send event for %@", buf, 0xCu);
    }

    v31 = MEMORY[0x277CBEC10];
  }

  return v31;
}

@end