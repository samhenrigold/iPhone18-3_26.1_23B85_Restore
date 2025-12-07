@interface RCAnalyticsUtilities
+ (void)sendDidCaptureModifyExistingRecording;
+ (void)sendDidCaptureNewRecording;
+ (void)sendDidOpenShareMemoController;
+ (void)sendDidPlaybackVoiceMemo;
+ (void)sendDidShareRecording;
+ (void)sendDidTrimVoiceMemo;
+ (void)sendNewRecordingDuration:(double)duration;
+ (void)sendReceivedSharedRecording;
+ (void)sendRecordingsCount:(int64_t)count;
@end

@implementation RCAnalyticsUtilities

+ (void)sendDidPlaybackVoiceMemo
{
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.playback"))
  {

    AnalyticsSendEvent();
  }
}

+ (void)sendDidCaptureNewRecording
{
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.didCaptureNewRecording"))
  {

    AnalyticsSendEvent();
  }
}

+ (void)sendDidCaptureModifyExistingRecording
{
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.didCaptureModifyExistingRecording"))
  {

    AnalyticsSendEvent();
  }
}

+ (void)sendNewRecordingDuration:(double)duration
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.newRecording.duration"))
  {
    v6 = @"duration";
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    AnalyticsSendEvent();
  }
}

+ (void)sendRecordingsCount:(int64_t)count
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.recordings.count"))
  {
    v6 = @"libraryCount";
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:count];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    AnalyticsSendEvent();
  }
}

+ (void)sendDidTrimVoiceMemo
{
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.didTrimMemo"))
  {

    AnalyticsSendEvent();
  }
}

+ (void)sendDidShareRecording
{
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.didShareRecording"))
  {

    AnalyticsSendEvent();
  }
}

+ (void)sendReceivedSharedRecording
{
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.didReceiveSharedRecording"))
  {

    AnalyticsSendEvent();
  }
}

+ (void)sendDidOpenShareMemoController
{
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.didOpenShareMemoController"))
  {

    AnalyticsSendEvent();
  }
}

@end