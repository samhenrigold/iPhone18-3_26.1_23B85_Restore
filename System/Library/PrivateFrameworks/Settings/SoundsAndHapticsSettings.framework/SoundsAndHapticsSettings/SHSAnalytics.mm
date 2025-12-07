@interface SHSAnalytics
+ (void)trackingDualSIMToneValueChanged:(id)changed didSelectDifferentTones:(BOOL)tones;
@end

@implementation SHSAnalytics

id __54__SHSAnalytics_trackingVibrateOnRingValueChanged_age___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"value";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v6[1] = @"age";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id __56__SHSAnalytics_trackingVibrateOnSilentValueChanged_age___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"value";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v6[1] = @"age";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (void)trackingDualSIMToneValueChanged:(id)changed didSelectDifferentTones:(BOOL)tones
{
  tonesCopy = tones;
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = @"alertType";
  v16[1] = @"isDualSIMToneDifferent";
  v17[0] = changed;
  v5 = MEMORY[0x277CCABB0];
  changedCopy = changed;
  v7 = [v5 numberWithBool:tonesCopy];
  v17[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v9 = SHSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "+[SHSAnalytics trackingDualSIMToneValueChanged:didSelectDifferentTones:]";
    v12 = 2112;
    v13 = @"com.apple.settings.didChangeDualSIMToneSettings";
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_265896000, v9, OS_LOG_TYPE_DEFAULT, "%s Sending analytics event: %@ with payload: %@", &v10, 0x20u);
  }

  AnalyticsSendEvent();
}

@end