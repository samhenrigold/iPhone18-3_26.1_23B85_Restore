@interface SOSCoreAnalyticsReporter
+ (BOOL)_firstPartyEnablementForTrigger:(int64_t)trigger;
+ (BOOL)_thirdPartyEnablementForTrigger:(int64_t)trigger;
+ (BOOL)isSensitiveTrigger:(int64_t)trigger;
+ (id)SOSCoordinationDeviceString:(int64_t)string;
+ (id)sharedInstance;
+ (void)_AnalyticsSendEventLazy:(id)lazy data:(id)data;
- (void)reportSOSCancelationTimeout:(int64_t)timeout;
- (void)reportSOSEvent:(id)event callDuration:(int64_t)duration isHandoffTrigger:(BOOL)trigger onWristState:(int64_t)state;
- (void)reportSOSRejectedWithTrigger:(int64_t)trigger currentTriggerMechanism:(int64_t)mechanism;
- (void)reportSOSRestingResponse:(int64_t)response restingResponse:(int64_t)restingResponse hasMedicalID:(BOOL)d;
- (void)reportSOSTriggerHandoff:(int64_t)handoff source:(int64_t)source destination:(int64_t)destination result:(int64_t)result;
- (void)reportSOSTriggered:(int64_t)triggered;
- (void)reportSOSUserCancelled:(int64_t)cancelled lastFlowState:(int64_t)state countdownValue:(int64_t)value;
@end

@implementation SOSCoreAnalyticsReporter

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SOSCoreAnalyticsReporter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sosCoreAnalyticsReporter;

  return v2;
}

uint64_t __42__SOSCoreAnalyticsReporter_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sosCoreAnalyticsReporter = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)reportSOSTriggered:(int64_t)triggered
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isSafetyDataSubmissionAllowed = [mEMORY[0x277D262A0] isSafetyDataSubmissionAllowed];

  if (isSafetyDataSubmissionAllowed)
  {
    AnalyticsSendEventLazy();
  }

  else
  {
    v6 = sos_default_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSCoreAnalyticsReport, not reporting SOS trigger because Safety data collection is OFF", buf, 2u);
    }
  }
}

id __47__SOSCoreAnalyticsReporter_reportSOSTriggered___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"triggerMechanism";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)reportSOSUserCancelled:(int64_t)cancelled lastFlowState:(int64_t)state countdownValue:(int64_t)value
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"triggerMechanism";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:cancelled];
  v12[0] = v7;
  v11[1] = @"lastFlowState2";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  v12[1] = v8;
  v11[2] = @"lastCountdownValue";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:value];
  v12[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [SOSCoreAnalyticsReporter _AnalyticsSendEventLazy:@"com.apple.sos.user_canceled" data:v10];
}

- (void)reportSOSTriggerHandoff:(int64_t)handoff source:(int64_t)source destination:(int64_t)destination result:(int64_t)result
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14[0] = @"triggerMechanism";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:handoff];
  v15[0] = v9;
  v14[1] = @"handoffSourceDescription";
  v10 = [SOSCoreAnalyticsReporter SOSCoordinationDeviceString:source];
  v15[1] = v10;
  v14[2] = @"handoffDestinationDescription";
  v11 = [SOSCoreAnalyticsReporter SOSCoordinationDeviceString:destination];
  v15[2] = v11;
  v14[3] = @"handoffResult";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:result];
  v15[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  [SOSCoreAnalyticsReporter _AnalyticsSendEventLazy:@"com.apple.sos.trigger.handoff" data:v13];
}

- (void)reportSOSRejectedWithTrigger:(int64_t)trigger currentTriggerMechanism:(int64_t)mechanism
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"currentTriggerMechanism";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:mechanism];
  v8[1] = @"rejectedTriggerMechanism";
  v9[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:trigger];
  v9[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [SOSCoreAnalyticsReporter _AnalyticsSendEventLazy:@"com.apple.sos.trigger.already_active" data:v7];
}

- (void)reportSOSRestingResponse:(int64_t)response restingResponse:(int64_t)restingResponse hasMedicalID:(BOOL)d
{
  dCopy = d;
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"triggerMechanism";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:response];
  v12[0] = v7;
  v11[1] = @"restingResponse";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:restingResponse];
  v12[1] = v8;
  v11[2] = @"hasMedicalID";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:dCopy];
  v12[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [SOSCoreAnalyticsReporter _AnalyticsSendEventLazy:@"com.apple.sos.trigger.resting_response" data:v10];
}

- (void)reportSOSCancelationTimeout:(int64_t)timeout
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"triggerMechanism";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:timeout];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [SOSCoreAnalyticsReporter _AnalyticsSendEventLazy:@"com.apple.sos.user_cancelation_timeout" data:v4];
}

- (void)reportSOSEvent:(id)event callDuration:(int64_t)duration isHandoffTrigger:(BOOL)trigger onWristState:(int64_t)state
{
  triggerCopy = trigger;
  v29[8] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v9 = +[SOSCoreAnalyticsReporter _firstPartyEnablementForTrigger:](SOSCoreAnalyticsReporter, "_firstPartyEnablementForTrigger:", [eventCopy trigger]);
  v10 = +[SOSCoreAnalyticsReporter _thirdPartyEnablementForTrigger:](SOSCoreAnalyticsReporter, "_thirdPartyEnablementForTrigger:", [eventCopy trigger]);
  timeOfResolution = [eventCopy timeOfResolution];
  timeOfDetection = [eventCopy timeOfDetection];
  [timeOfResolution timeIntervalSinceDate:timeOfDetection];
  v14 = v13;

  v15 = state == 1;
  v28[0] = @"triggerMechanism";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(eventCopy, "trigger")}];
  v29[0] = v16;
  v28[1] = @"3rdPartyFeatureEnablement";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  v29[1] = v17;
  v28[2] = @"callDuration";
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:duration];
  v29[2] = v18;
  v28[3] = @"eventDuration";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  v29[3] = v19;
  v28[4] = @"eventResolution";
  v20 = MEMORY[0x277CCABB0];
  resolution = [eventCopy resolution];

  v22 = [v20 numberWithInteger:resolution];
  v29[4] = v22;
  v28[5] = @"featureEnablement";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  v29[5] = v23;
  v28[6] = @"wasHandoffTrigger";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:triggerCopy];
  v29[6] = v24;
  v28[7] = @"watchOnWrist";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:v15];
  v29[7] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:8];
  [SOSCoreAnalyticsReporter _AnalyticsSendEventLazy:@"com.apple.sos.event" data:v26];
}

id __68__SOSCoreAnalyticsReporter_reportSOSShouldPlayAudioDuringCountdown___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"shouldPlayAudioDuringCountdown";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

id __67__SOSCoreAnalyticsReporter_reportSOSAutomaticCallCountdownEnabled___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"automaticCallCountdownEnabled";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

id __67__SOSCoreAnalyticsReporter_reportSOSLongPressTriggersEmergencySOS___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"longPressTriggersEmergencySOS";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

id __60__SOSCoreAnalyticsReporter_reportSOSAutomaticNewtonEnabled___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"fallDetectionEnabled";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

id __56__SOSCoreAnalyticsReporter_reportSOSNumberOfVoiceLoops___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"numberOfVoiceLoops";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (BOOL)isSensitiveTrigger:(int64_t)trigger
{
  if (trigger >= 0xA)
  {
    v5 = sos_default_log(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SOSCoreAnalyticsReporter *)trigger isSensitiveTrigger:v5, v6, v7, v8, v9, v10, v11];
    }

    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = 0xA0u >> trigger;
  }

  return v4 & 1;
}

+ (void)_AnalyticsSendEventLazy:(id)lazy data:(id)data
{
  lazyCopy = lazy;
  dataCopy = data;
  v7 = [dataCopy objectForKeyedSubscript:@"triggerMechanism"];
  if (+[SOSCoreAnalyticsReporter isSensitiveTrigger:](SOSCoreAnalyticsReporter, "isSensitiveTrigger:", [v7 integerValue]))
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    isSafetyDataSubmissionAllowed = [mEMORY[0x277D262A0] isSafetyDataSubmissionAllowed];

    if ((isSafetyDataSubmissionAllowed & 1) == 0)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v10 addEntriesFromDictionary:dataCopy];
      [v10 setObject:&unk_2875D2B90 forKeyedSubscript:@"triggerMechanism"];
      v11 = [v10 copy];

      dataCopy = v11;
    }
  }

  v13 = dataCopy;
  v12 = dataCopy;
  AnalyticsSendEventLazy();
}

+ (BOOL)_firstPartyEnablementForTrigger:(int64_t)trigger
{
  result = 0;
  if (trigger > 4)
  {
    if (trigger <= 6)
    {
      if (trigger == 5)
      {

        return +[SOSUtilities newtonTriggersEmergencySOS];
      }
    }

    else
    {
      if (trigger == 7)
      {

        return +[SOSUtilities kappaTriggersEmergencySOS];
      }

      if (trigger != 8)
      {
        if (trigger == 9)
        {
          return result;
        }

LABEL_19:
        v5 = sos_default_log(0);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [(SOSCoreAnalyticsReporter *)trigger _firstPartyEnablementForTrigger:v5, v6, v7, v8, v9, v10, v11];
        }

        return 0;
      }
    }

    return 1;
  }

  if (trigger <= 2)
  {
    if ((trigger - 1) < 2)
    {

      return +[SOSUtilities isCallWithSideButtonPressesEnabled];
    }

    if (!trigger)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (trigger == 3)
  {

    return +[SOSUtilities isCallWithVolumeLockHoldEnabled];
  }

  else
  {

    return +[SOSUtilities longPressTriggersEmergencySOS];
  }
}

+ (BOOL)_thirdPartyEnablementForTrigger:(int64_t)trigger
{
  if (trigger > 9)
  {
    v7 = sos_default_log(self);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SOSCoreAnalyticsReporter *)trigger _thirdPartyEnablementForTrigger:v7, v8, v9, v10, v11, v12, v13];
    }

    return 0;
  }

  if (((1 << trigger) & 0x35F) != 0)
  {
    return 0;
  }

  if (trigger != 5)
  {
    return +[SOSUtilities getKappaThirdPartyActiveAppBundle]!= 0;
  }

  v6 = TCCAccessCopyBundleIdentifiersForService();
  v4 = [v6 count] != 0;

  return v4;
}

+ (id)SOSCoordinationDeviceString:(int64_t)string
{
  v3 = @"none";
  if (string == 1)
  {
    v3 = @"watch";
  }

  if (string == 2)
  {
    return @"phone";
  }

  else
  {
    return v3;
  }
}

+ (void)isSensitiveTrigger:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  OUTLINED_FUNCTION_0_4(&dword_264323000, a2, a3, "SOSCoreAnalyticsReporter,isSensitiveTrigger,unrecognized SOSTriggerMechanism %d", a5, a6, a7, a8, v8);
}

+ (void)_firstPartyEnablementForTrigger:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  OUTLINED_FUNCTION_0_4(&dword_264323000, a2, a3, "SOSCoreAnalyticsReporter,_firstPartyEnablementForTrigger,unrecognized SOSTriggerMechanism %d", a5, a6, a7, a8, v8);
}

+ (void)_thirdPartyEnablementForTrigger:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  OUTLINED_FUNCTION_0_4(&dword_264323000, a2, a3, "SOSCoreAnalyticsReporter,_thirdPartyEnablementForTrigger,unrecognized SOSTriggerMechanism %d", a5, a6, a7, a8, v8);
}

@end