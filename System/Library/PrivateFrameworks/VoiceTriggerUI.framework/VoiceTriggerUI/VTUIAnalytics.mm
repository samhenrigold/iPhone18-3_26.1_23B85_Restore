@interface VTUIAnalytics
- (void)logEvent;
@end

@implementation VTUIAnalytics

- (void)logEvent
{
  v19[11] = *MEMORY[0x277D85DE8];
  v18[0] = @"AboutViewShown";
  v17 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics aboutViewShown](self, "aboutViewShown")}];
  v19[0] = v17;
  v18[1] = @"IntroViewShown";
  v16 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics introViewShown](self, "introViewShown")}];
  v19[1] = v16;
  v18[2] = @"SkippedFromIntroAOP";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics skippedFromIntroAOP](self, "skippedFromIntroAOP")}];
  v19[2] = v15;
  v18[3] = @"SkippedFromIntroNonAOP";
  v14 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics skippedFromIntroNonAOP](self, "skippedFromIntroNonAOP")}];
  v19[3] = v14;
  v18[4] = @"TurnOnSiriNonAOP";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics turnOnSiriNonAOP](self, "turnOnSiriNonAOP")}];
  v19[4] = v3;
  v18[5] = @"VoiceTrainingCancelled";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics voiceTrainingCancelled](self, "voiceTrainingCancelled")}];
  v19[5] = v4;
  v18[6] = @"VoiceTrainingStep";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics voiceTrainingCancelledStep](self, "voiceTrainingCancelledStep")}];
  v19[6] = v5;
  v18[7] = @"VoiceTrainingCompleted";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics voiceTrainingCompleted](self, "voiceTrainingCompleted")}];
  v19[7] = v6;
  v18[8] = @"VoiceTrainingStarted";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics voiceTrainingStarted](self, "voiceTrainingStarted")}];
  v19[8] = v7;
  v18[9] = @"LanguageCode";
  languageCode = [(VTUIAnalytics *)self languageCode];
  if (languageCode)
  {
    languageCode2 = [(VTUIAnalytics *)self languageCode];
  }

  else
  {
    languageCode2 = &stru_2881E5778;
  }

  v19[9] = languageCode2;
  v18[10] = @"SetupMode";
  setupMode = [(VTUIAnalytics *)self setupMode];
  if (setupMode)
  {
    setupMode2 = [(VTUIAnalytics *)self setupMode];
  }

  else
  {
    setupMode2 = &stru_2881E5778;
  }

  v19[10] = setupMode2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:11];
  if (setupMode)
  {
  }

  if (languageCode)
  {
  }

  v13 = v12;
  AnalyticsSendEventLazy();
}

@end