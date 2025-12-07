@interface PLAggregateDictionaryService
+ (id)entryEventNoneDefinitionSessionsFile;
+ (id)entryEventNoneDefinitions;
+ (void)load;
- (PLAggregateDictionaryService)init;
- (unint64_t)abstimeToNanosec:(unint64_t)nanosec;
- (unint64_t)bucketWakeTime:(unint64_t)time;
- (void)addToDurationScalarKey:(id)key withDuration:(double)duration;
- (void)initOperatorDependancies;
- (void)initValidReasonsDictionary;
- (void)logAggregateUIKitActivityKey:(id)key withInfo:(id)info AggDKey:(id)dKey;
- (void)logAggregateUIKitKeyboardActivityKey:(id)key withInfo:(id)info AggDKey:(id)dKey;
- (void)registerForApplicationNotifications;
- (void)registerForAudioNotifications;
- (void)registerForBacklightLatencyNotifications;
- (void)registerForBatteryNotifications;
- (void)registerForBluetoothNotifications;
- (void)registerForCalendarNotifications;
- (void)registerForCameraNotifications;
- (void)registerForLocationNotifications;
- (void)registerForMailNotifications;
- (void)registerForSCDynamicStoreNotifications;
- (void)registerForSafariNotifications;
- (void)registerForSpringboardNotifications;
- (void)registerForUIKitNotifications;
- (void)registerForVideoNotifications;
- (void)updateAggregateStateWithEntry:(id)entry;
@end

@implementation PLAggregateDictionaryService

void __67__PLAggregateDictionaryService_registerForApplicationNotifications__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [a2 objectForKeyedSubscript:@"entry"];
  v3 = [v2 objectForKeyedSubscript:@"Identifier"];
  v22 = v2;
  v4 = [v2 objectForKeyedSubscript:@"Reason"];
  v5 = v4;
  if (v4)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      v21 = v5;
      do
      {
        v9 = 0;
        do
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v24 + 1) + 8 * v9) unsignedIntegerValue];
          v10 = SBSProcessAssertionGetNameForReason();
          if (v10)
          {
            v11 = v3 == 0;
          }

          else
          {
            v11 = 1;
          }

          if (!v11)
          {
            v18 = [@"appBackgroundActiveReason." stringByAppendingString:v10];
            v19 = [v18 stringByAppendingString:@"."];
            v20 = [v19 stringByAppendingString:v3];

            MEMORY[0x21CEDCD40](v20, 1);
LABEL_19:

            goto LABEL_20;
          }

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v12 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __67__PLAggregateDictionaryService_registerForApplicationNotifications__block_invoke_2;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v12;
            if (qword_2811F7008 != -1)
            {
              dispatch_once(&qword_2811F7008, block);
            }

            if (byte_2811F6FC7 == 1)
            {
              v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: reason or bundleid string for application notification is nil for entry %@", v22];
              v13 = MEMORY[0x277D3F178];
              v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateDictionaryService.m"];
              v15 = [v14 lastPathComponent];
              v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateDictionaryService registerForApplicationNotifications]_block_invoke"];
              [v13 logMessage:v20 fromFile:v15 fromFunction:v16 fromLineNumber:577];

              v17 = PLLogCommon();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v29 = v20;
                _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v5 = v21;
              goto LABEL_19;
            }
          }

LABEL_20:

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v7);
    }
  }
}

void __64__PLAggregateDictionaryService_registerForLocationNotifications__block_invoke(uint64_t a1, void *a2)
{
  v32 = [a2 objectForKeyedSubscript:@"entry"];
  v3 = [*(a1 + 32) localCache];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  v5 = [*(a1 + 32) localCache];
  [v5 setObject:v32 forKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    v6 = [v32 entryDate];
    v7 = [v4 entryDate];
    [v6 timeIntervalSinceDate:v7];
    v9 = v8;

    v10 = [v4 objectForKeyedSubscript:@"accessory"];
    LODWORD(v7) = [v10 isEqual:MEMORY[0x277CBEC38]];

    if (v7)
    {
      [*(a1 + 32) addToDurationScalarKey:@"com.apple.power.location.accessory.duration" withDuration:v9];
    }

    v11 = [v4 objectForKeyedSubscript:@"cell"];
    v12 = [v11 isEqual:MEMORY[0x277CBEC38]];

    if (v12)
    {
      [*(a1 + 32) addToDurationScalarKey:@"com.apple.power.location.cell.duration" withDuration:v9];
    }

    v13 = [v4 objectForKeyedSubscript:@"gps"];
    v14 = [v13 isEqual:MEMORY[0x277CBEC38]];

    if (v14)
    {
      [*(a1 + 32) addToDurationScalarKey:@"com.apple.power.location.gps.duration" withDuration:v9];
    }

    v15 = [v4 objectForKeyedSubscript:@"gps_coarse"];
    v16 = [v15 isEqual:MEMORY[0x277CBEC38]];

    if (v16)
    {
      [*(a1 + 32) addToDurationScalarKey:@"com.apple.power.location.gps_coarse.duration" withDuration:v9];
    }

    v17 = [v4 objectForKeyedSubscript:@"lac"];
    v18 = [v17 isEqual:MEMORY[0x277CBEC38]];

    if (v18)
    {
      [*(a1 + 32) addToDurationScalarKey:@"com.apple.power.location.lac.duration" withDuration:v9];
    }

    v19 = [v4 objectForKeyedSubscript:@"mcc"];
    v20 = [v19 isEqual:MEMORY[0x277CBEC38]];

    if (v20)
    {
      [*(a1 + 32) addToDurationScalarKey:@"com.apple.power.location.mcc.duration" withDuration:v9];
    }

    v21 = [v4 objectForKeyedSubscript:@"nmea"];
    v22 = [v21 isEqual:MEMORY[0x277CBEC38]];

    if (v22)
    {
      [*(a1 + 32) addToDurationScalarKey:@"com.apple.power.location.nmea.duration" withDuration:v9];
    }

    v23 = [v4 objectForKeyedSubscript:@"pipeline"];
    v24 = [v23 isEqual:MEMORY[0x277CBEC38]];

    if (v24)
    {
      [*(a1 + 32) addToDurationScalarKey:@"com.apple.power.location.pipeline.duration" withDuration:v9];
    }

    v25 = [v4 objectForKeyedSubscript:@"skyhook"];
    v26 = [v25 isEqual:MEMORY[0x277CBEC38]];

    if (v26)
    {
      [*(a1 + 32) addToDurationScalarKey:@"com.apple.power.location.skyhook.duration" withDuration:v9];
    }

    v27 = [v4 objectForKeyedSubscript:@"wifi"];
    v28 = [v27 isEqual:MEMORY[0x277CBEC38]];

    if (v28)
    {
      [*(a1 + 32) addToDurationScalarKey:@"com.apple.power.location.wifi.duration" withDuration:v9];
    }

    v29 = [v4 objectForKey:@"wifi2"];

    if (v29)
    {
      v30 = [v4 objectForKeyedSubscript:@"wifi2"];
      v31 = [v30 isEqual:MEMORY[0x277CBEC38]];

      if (v31)
      {
        [*(a1 + 32) addToDurationScalarKey:@"com.apple.power.location.wifi2.duration" withDuration:v9];
      }
    }
  }
}

void __72__PLAggregateDictionaryService_registerForBacklightLatencyNotifications__block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKey:@"entry"];
  v4 = [v3 objectForKey:@"backlightEnabledTimestamp"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [*(a1 + 32) currentMachWakeTime];
  [v7 doubleValue];
  v9 = v8;

  if ([*(a1 + 32) firstScreenOnAfterWake] && v9)
  {
    v33 = v3;
    v32 = [*(a1 + 32) bucketWakeTime:{objc_msgSend(*(a1 + 32), "abstimeToNanosec:", v6 - v9) / 0xF4240uLL}];
    v10 = [*(a1 + 32) wakeReasons];
    v11 = [v10 componentsSeparatedByString:@" "];

    [*(a1 + 32) setWakeReasonString:@"com.apple.performance.wake_latency.other"];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
LABEL_5:
      v16 = 0;
      while (1)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v34 + 1) + 8 * v16);
        v18 = [*(a1 + 32) validReasonsDictionary];
        v19 = [v18 allKeys];
        v20 = [v19 containsObject:v17];

        if (v20)
        {
          v21 = *(a1 + 32);
          v22 = [v21 validReasonsDictionary];
          v23 = [v22 objectForKeyedSubscript:v17];
          v24 = [v23 objectForKeyedSubscript:@"aggdKey"];
          [v21 setWakeReasonString:v24];

          v25 = [*(a1 + 32) validReasonsDictionary];
          v26 = [v25 objectForKeyedSubscript:v17];
          v27 = [v26 objectForKeyedSubscript:@"isUserEvent"];
          LOBYTE(v22) = [v27 BOOLValue];

          if (v22)
          {
            break;
          }
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v14)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v28 = *(a1 + 32);
    v29 = [v28 wakeReasonString];
    [v28 logDuration:v29 asDistribution:v32];

    [*(a1 + 32) setFirstScreenOnAfterWake:0];
    v30 = *(a1 + 32);
    v31 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    [v30 setCurrentMachWakeTime:v31];

    v3 = v33;
  }
}

void __63__PLAggregateDictionaryService_registerForBatteryNotifications__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKeyedSubscript:@"entry"];
  v3 = [v6 objectForKeyedSubscript:@"Level"];
  v4 = [v3 unsignedIntegerValue];
  if (currentBatteryState <= 1 && v4 <= 1)
  {
    MEMORY[0x21CEDCD40](@"com.apple.power.batterytraps", 1);
  }

  [*(a1 + 32) updateAggregateStateWithEntry:v6];
}

void __72__PLAggregateDictionaryService_registerForBacklightLatencyNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = [a2 objectForKey:@"entry"];
  v3 = *(a1 + 32);
  v4 = [v7 objectForKey:*(a1 + 40)];
  [v3 setCurrentMachWakeTime:v4];

  v5 = *(a1 + 32);
  v6 = [v7 objectForKey:@"WakeReasons"];
  [v5 setWakeReasons:v6];

  [*(a1 + 32) setFirstScreenOnAfterWake:1];
}

void __61__PLAggregateDictionaryService_registerForAudioNotifications__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"entry"];
  v7 = [*(a1 + 32) localCache];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];

  v9 = [*(a1 + 32) localCache];
  [v9 setObject:v6 forKeyedSubscript:*(a1 + 40)];

  if (v6)
  {
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"Active"];
      if (v10)
      {
        v11 = v10;
        v12 = [v8 objectForKeyedSubscript:@"ActivePID"];
        if (v12)
        {
          v13 = v12;
          v14 = [v8 objectForKeyedSubscript:@"ActiveRoute"];

          if (v14)
          {
            v15 = [v6 entryDate];
            v16 = [v8 entryDate];
            [v15 timeIntervalSinceDate:v16];
            v18 = v17;

            v19 = [v8 objectForKeyedSubscript:@"Active"];
            LODWORD(v16) = [v19 isEqual:MEMORY[0x277CBEC38]];

            if (v16)
            {
              v20 = objc_opt_new();
              v21 = [v8 objectForKeyedSubscript:@"ActivePID"];

              if (v21)
              {
                v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.power.audio.NowPlayingApp.%@", &stru_282B650A0];
                [*(a1 + 32) addToDurationScalarKey:v22 withDuration:v18];
                [v20 setObject:&stru_282B650A0 forKeyedSubscript:@"bundleID"];
              }

              v23 = [v8 objectForKeyedSubscript:@"ActiveRoute"];
              v24 = [v23 plCompare:@"Speaker"];

              if (v24)
              {
                v25 = [v8 objectForKeyedSubscript:@"ActiveRoute"];
                v26 = [v25 plCompare:@"Headphone"];

                if (v26)
                {
                  v27 = [v8 objectForKeyedSubscript:@"ActiveRoute"];
                  v28 = [v27 plCompare:@"HeadphonesBT"];

                  if (v28)
                  {
                    v29 = [v8 objectForKeyedSubscript:@"ActiveRoute"];
                    v30 = [v29 plCompare:@"Headset"];

                    if (v30)
                    {
LABEL_26:
                      v39 = [v8 objectForKeyedSubscript:@"ActiveRoute"];
                      [v20 setObject:v39 forKeyedSubscript:@"activeRoute"];

                      v40 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
                      [v20 setObject:v40 forKeyedSubscript:@"duration"];

                      v33 = v20;
                      AnalyticsSendEventLazy();

LABEL_27:
                      goto LABEL_28;
                    }

                    v31 = @"com.apple.power.audio.headset.duration";
                  }

                  else
                  {
                    v31 = @"com.apple.power.audio.headphonesbt.duration";
                  }
                }

                else
                {
                  v31 = @"com.apple.power.audio.headphone.duration";
                }
              }

              else
              {
                v31 = @"com.apple.power.audio.speaker.duration";
              }

              [*(a1 + 32) addToDurationScalarKey:v31 withDuration:v18];
              goto LABEL_26;
            }
          }
        }

        else
        {
        }
      }
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v32 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PLAggregateDictionaryService_registerForAudioNotifications__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v32;
    if (qword_2811F6FD8 != -1)
    {
      dispatch_once(&qword_2811F6FD8, block);
    }

    if (byte_2811F6FC1 == 1)
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: PLEntryNotification for %@ triggered but lastEntry returns nil", v5];
      v34 = MEMORY[0x277D3F178];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateDictionaryService.m"];
      v36 = [v35 lastPathComponent];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateDictionaryService registerForAudioNotifications]_block_invoke"];
      [v34 logMessage:v33 fromFile:v36 fromFunction:v37 fromLineNumber:238];

      v38 = PLLogCommon();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v33;
        _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_27;
    }
  }

LABEL_28:
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAggregateDictionaryService;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventNoneDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"SessionsFile";
  entryEventNoneDefinitionSessionsFile = [self entryEventNoneDefinitionSessionsFile];
  v6[0] = entryEventNoneDefinitionSessionsFile;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventNoneDefinitionSessionsFile
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1CF38;
  v12[1] = MEMORY[0x277CBEC28];
  v11[2] = *MEMORY[0x277D3F580];
  v12[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"SessionsFileData";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v10 = commonTypeDict_StringFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

- (PLAggregateDictionaryService)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PLAggregateDictionaryService;
    v4 = [(PLOperator *)&v14 init];
    if (v4)
    {
      v5 = objc_opt_new();
      registeredNotifications = v4->_registeredNotifications;
      v4->_registeredNotifications = v5;

      v4->_last_state.state = -1;
      v4->_last_state.level = 0.0;
      v4->_last_state.timestamp = 0.0;
      v4->remainderUnpluggedEnergy = 0.0;
      v4->remainderUnpluggedTime = 0.0;
      v4->_firstScreenOnAfterWake = 0;
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      currentMachWakeTime = v4->_currentMachWakeTime;
      v4->_currentMachWakeTime = v7;

      wakeReasons = v4->_wakeReasons;
      v4->_wakeReasons = 0;

      wakeReasonString = v4->_wakeReasonString;
      v4->_wakeReasonString = 0;

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      localCache = v4->_localCache;
      v4->_localCache = dictionary;

      [(PLAggregateDictionaryService *)v4 initValidReasonsDictionary];
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  [(PLAggregateDictionaryService *)self registerForAudioNotifications];
  [(PLAggregateDictionaryService *)self registerForCameraNotifications];
  [(PLAggregateDictionaryService *)self registerForBluetoothNotifications];
  [(PLAggregateDictionaryService *)self registerForUIKitNotifications];
  [(PLAggregateDictionaryService *)self registerForSpringboardNotifications];
  [(PLAggregateDictionaryService *)self registerForVideoNotifications];
  [(PLAggregateDictionaryService *)self registerForMailNotifications];
  [(PLAggregateDictionaryService *)self registerForCalendarNotifications];
  [(PLAggregateDictionaryService *)self registerForApplicationNotifications];
  [(PLAggregateDictionaryService *)self registerForLocationNotifications];
  currentBatteryState = 0;
  [(PLAggregateDictionaryService *)self registerForBatteryNotifications];
  [(PLAggregateDictionaryService *)self registerForSCDynamicStoreNotifications];
  [(PLAggregateDictionaryService *)self registerForSafariNotifications];

  [(PLAggregateDictionaryService *)self registerForBacklightLatencyNotifications];
}

- (void)initValidReasonsDictionary
{
  v62[2] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  validReasonsDictionary = self->_validReasonsDictionary;
  self->_validReasonsDictionary = dictionary;

  v5 = self->_validReasonsDictionary;
  v61[0] = @"aggdKey";
  v61[1] = @"isUserEvent";
  v6 = MEMORY[0x277CBEC28];
  v62[0] = @"com.apple.performance.wake_latency.acc";
  v62[1] = MEMORY[0x277CBEC28];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
  [(NSMutableDictionary *)v5 setObject:v7 forKey:@"acc"];

  v8 = self->_validReasonsDictionary;
  v59[0] = @"aggdKey";
  v59[1] = @"isUserEvent";
  v60[0] = @"com.apple.performance.wake_latency.baseband";
  v60[1] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  [(NSMutableDictionary *)v8 setObject:v9 forKey:@"baseband"];

  v10 = self->_validReasonsDictionary;
  v57[0] = @"aggdKey";
  v57[1] = @"isUserEvent";
  v11 = MEMORY[0x277CBEC38];
  v58[0] = @"com.apple.performance.wake_latency.bluetooth";
  v58[1] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
  [(NSMutableDictionary *)v10 setObject:v12 forKey:@"bluetooth"];

  v13 = self->_validReasonsDictionary;
  v55[0] = @"aggdKey";
  v55[1] = @"isUserEvent";
  v56[0] = @"com.apple.performance.wake_latency.halleffect";
  v56[1] = v11;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
  [(NSMutableDictionary *)v13 setObject:v14 forKey:@"halleffect"];

  v15 = self->_validReasonsDictionary;
  v53[0] = @"aggdKey";
  v53[1] = @"isUserEvent";
  v54[0] = @"com.apple.performance.wake_latency.halleffect";
  v54[1] = v11;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
  [(NSMutableDictionary *)v15 setObject:v16 forKey:@"halleffect1"];

  v17 = self->_validReasonsDictionary;
  v51[0] = @"aggdKey";
  v51[1] = @"isUserEvent";
  v52[0] = @"com.apple.performance.wake_latency.halleffect";
  v52[1] = v11;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
  [(NSMutableDictionary *)v17 setObject:v18 forKey:@"halleffect2"];

  v19 = self->_validReasonsDictionary;
  v49[0] = @"aggdKey";
  v49[1] = @"isUserEvent";
  v50[0] = @"com.apple.performance.wake_latency.hold";
  v50[1] = v11;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
  [(NSMutableDictionary *)v19 setObject:v20 forKey:@"hold"];

  v21 = self->_validReasonsDictionary;
  v47[0] = @"aggdKey";
  v47[1] = @"isUserEvent";
  v48[0] = @"com.apple.performance.wake_latency.menu";
  v48[1] = v11;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
  [(NSMutableDictionary *)v21 setObject:v22 forKey:@"menu"];

  v23 = self->_validReasonsDictionary;
  v45[0] = @"aggdKey";
  v45[1] = @"isUserEvent";
  v46[0] = @"com.apple.performance.wake_latency.mikey";
  v46[1] = v11;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  [(NSMutableDictionary *)v23 setObject:v24 forKey:@"mikey"];

  v25 = self->_validReasonsDictionary;
  v43[0] = @"aggdKey";
  v43[1] = @"isUserEvent";
  v44[0] = @"com.apple.performance.wake_latency.ringer";
  v44[1] = v11;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  [(NSMutableDictionary *)v25 setObject:v26 forKey:@"ringer"];

  v27 = self->_validReasonsDictionary;
  v41[0] = @"aggdKey";
  v41[1] = @"isUserEvent";
  v42[0] = @"com.apple.performance.wake_latency.rtc";
  v42[1] = v6;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  [(NSMutableDictionary *)v27 setObject:v28 forKey:@"rtc"];

  v29 = self->_validReasonsDictionary;
  v39[0] = @"aggdKey";
  v39[1] = @"isUserEvent";
  v40[0] = @"com.apple.performance.wake_latency.stockholm";
  v40[1] = v11;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  [(NSMutableDictionary *)v29 setObject:v30 forKey:@"stockholm"];

  v31 = self->_validReasonsDictionary;
  v37[0] = @"aggdKey";
  v37[1] = @"isUserEvent";
  v38[0] = @"com.apple.performance.wake_latency.usb";
  v38[1] = v6;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  [(NSMutableDictionary *)v31 setObject:v32 forKey:@"usb"];

  v33 = self->_validReasonsDictionary;
  v35[0] = @"aggdKey";
  v35[1] = @"isUserEvent";
  v36[0] = @"com.apple.performance.wake_latency.wlan";
  v36[1] = v6;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  [(NSMutableDictionary *)v33 setObject:v34 forKey:@"wlan"];
}

- (void)addToDurationScalarKey:(id)key withDuration:(double)duration
{
  v16 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__PLAggregateDictionaryService_addToDurationScalarKey_withDuration___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F6FD0 != -1)
    {
      dispatch_once(&qword_2811F6FD0, block);
    }

    if (_MergedGlobals_1_70 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"AGGD DURATION: %@ += %f", keyCopy, *&duration];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateDictionaryService.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateDictionaryService addToDurationScalarKey:withDuration:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:219];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  MEMORY[0x21CEDCD40](keyCopy, duration);
}

void *__68__PLAggregateDictionaryService_addToDurationScalarKey_withDuration___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_70 = result;
  return result;
}

- (void)registerForAudioNotifications
{
  v3 = [(PLOperator *)PLAudioAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Routing"];
  registeredNotifications = [(PLAggregateDictionaryService *)self registeredNotifications];
  v5 = objc_alloc(MEMORY[0x277D3F1A8]);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__PLAggregateDictionaryService_registerForAudioNotifications__block_invoke;
  v11 = &unk_2782633D8;
  selfCopy = self;
  v13 = v3;
  v6 = v3;
  v7 = [v5 initWithOperator:self forEntryKey:v6 withBlock:&v8];
  [registeredNotifications addObject:{v7, v8, v9, v10, v11, selfCopy}];
}

void *__61__PLAggregateDictionaryService_registerForAudioNotifications__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6FC1 = result;
  return result;
}

- (void)registerForCameraNotifications
{
  v3 = *MEMORY[0x277D3F5D0];
  v4 = [(PLOperator *)PLCameraAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Camera"];
  v5 = [(PLOperator *)PLCameraAgent entryKeyForType:v3 andName:@"Torch"];
  registeredNotifications = [(PLAggregateDictionaryService *)self registeredNotifications];
  v7 = objc_alloc(MEMORY[0x277D3F1A8]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__PLAggregateDictionaryService_registerForCameraNotifications__block_invoke;
  v15[3] = &unk_2782597E8;
  v15[4] = self;
  v8 = [v7 initWithOperator:self forEntryKey:v4 withBlock:v15];
  [registeredNotifications addObject:v8];

  registeredNotifications2 = [(PLAggregateDictionaryService *)self registeredNotifications];
  v10 = objc_alloc(MEMORY[0x277D3F1A8]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__PLAggregateDictionaryService_registerForCameraNotifications__block_invoke_3;
  v13[3] = &unk_2782633D8;
  v13[4] = self;
  v14 = v5;
  v11 = v5;
  v12 = [v10 initWithOperator:self forEntryKey:v11 withBlock:v13];
  [registeredNotifications2 addObject:v12];
}

void __62__PLAggregateDictionaryService_registerForCameraNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"entry"];
  v4 = [v3 objectForKeyedSubscript:@"CameraType"];
  v5 = +[PLCameraAgent distributionFromCameraType:](PLCameraAgent, "distributionFromCameraType:", [v4 intValue]);

  if (v5)
  {
    v6 = [*(a1 + 32) localCache];
    v7 = [v6 objectForKeyedSubscript:v5];

    v8 = [*(a1 + 32) localCache];
    [v8 setObject:v3 forKeyedSubscript:v5];

    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"State"];

      if (v9)
      {
        v10 = [v3 entryDate];
        v11 = [v7 entryDate];
        [v10 timeIntervalSinceDate:v11];
        v13 = v12;

        v14 = [v7 objectForKeyedSubscript:@"State"];
        LODWORD(v11) = [v14 isEqual:MEMORY[0x277CBEC38]];

        if (v11)
        {
          [*(a1 + 32) logDuration:v5 asDistribution:v13];
          v15 = v3;
          AnalyticsSendEventLazy();
        }
      }
    }
  }
}

id __62__PLAggregateDictionaryService_registerForCameraNotifications__block_invoke_2(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"CameraType";
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"CameraType"];
  v4 = [v2 numberWithInt:{objc_msgSend(v3, "intValue")}];
  v8[1] = @"StateDuration";
  v9[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

void __62__PLAggregateDictionaryService_registerForCameraNotifications__block_invoke_3(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"entry"];
  v4 = [*(a1 + 32) localCache];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

  v6 = [*(a1 + 32) localCache];
  [v6 setObject:v3 forKeyedSubscript:*(a1 + 40)];

  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"Level"];

    if (v7)
    {
      v8 = [v3 entryDate];
      v9 = [v5 entryDate];
      [v8 timeIntervalSinceDate:v9];
      v11 = v10;

      if ([*(a1 + 32) isDebugEnabled] && objc_msgSend(MEMORY[0x277D3F180], "debugEnabled"))
      {
        v12 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__PLAggregateDictionaryService_registerForCameraNotifications__block_invoke_4;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v12;
        if (qword_2811F6FE0 != -1)
        {
          dispatch_once(&qword_2811F6FE0, block);
        }

        if (byte_2811F6FC2 == 1)
        {
          v13 = MEMORY[0x277CCACA8];
          v14 = [v5 objectForKeyedSubscript:@"Level"];
          v15 = [v13 stringWithFormat:@"LastEntry for Torch:%@ and last Level is %@", v5, v14];

          v16 = MEMORY[0x277D3F178];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateDictionaryService.m"];
          v18 = [v17 lastPathComponent];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateDictionaryService registerForCameraNotifications]_block_invoke_3"];
          [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:323];

          v20 = PLLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v25 = v15;
            _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v21 = [v5 objectForKeyedSubscript:@"Level"];
      v22 = [v21 isEqual:&unk_282C13D10];

      if ((v22 & 1) == 0)
      {
        [*(a1 + 32) logDuration:@"com.apple.power.torch.activeDuration" asDistribution:v11];
        AnalyticsSendEventLazy();
      }
    }
  }
}

void *__62__PLAggregateDictionaryService_registerForCameraNotifications__block_invoke_4(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6FC2 = result;
  return result;
}

id __62__PLAggregateDictionaryService_registerForCameraNotifications__block_invoke_210(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StateDuration";
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)logAggregateUIKitKeyboardActivityKey:(id)key withInfo:(id)info AggDKey:(id)dKey
{
  keyCopy = key;
  dKeyCopy = dKey;
  v9 = [info objectForKeyedSubscript:@"entry"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"Process-ID"];
    localCache = [(PLAggregateDictionaryService *)self localCache];
    v13 = [localCache objectForKeyedSubscript:keyCopy];

    if (!v13)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      localCache2 = [(PLAggregateDictionaryService *)self localCache];
      [localCache2 setObject:dictionary forKeyedSubscript:keyCopy];
    }

    localCache3 = [(PLAggregateDictionaryService *)self localCache];
    v17 = [localCache3 objectForKeyedSubscript:keyCopy];
    v18 = [v17 objectForKeyedSubscript:v11];

    v19 = [v10 objectForKeyedSubscript:@"Status"];
    LODWORD(v17) = [v19 isEqual:MEMORY[0x277CBEC38]];

    if (v17)
    {
      if (!v18)
      {
        entryDate = [v10 entryDate];
        localCache4 = [(PLAggregateDictionaryService *)self localCache];
        v22 = [localCache4 objectForKeyedSubscript:keyCopy];
        [v22 setObject:entryDate forKeyedSubscript:v11];
LABEL_9:
      }
    }

    else if (v18)
    {
      entryDate2 = [v10 entryDate];
      [entryDate2 timeIntervalSinceDate:v18];
      v25 = v24;

      entryDate = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.UIKit.%@.screenOnTime", dKeyCopy];
      [(PLAggregateDictionaryService *)self logDuration:entryDate asDistribution:v25];
      localCache4 = [(PLAggregateDictionaryService *)self localCache];
      v22 = [localCache4 objectForKeyedSubscript:keyCopy];
      [v22 removeObjectForKey:v11];
      goto LABEL_9;
    }
  }
}

- (void)logAggregateUIKitActivityKey:(id)key withInfo:(id)info AggDKey:(id)dKey
{
  keyCopy = key;
  dKeyCopy = dKey;
  v9 = [info objectForKeyedSubscript:@"entry"];
  if (v9)
  {
    localCache = [(PLAggregateDictionaryService *)self localCache];
    v11 = [localCache objectForKeyedSubscript:keyCopy];

    if (v11)
    {
      v12 = [v9 objectForKeyedSubscript:@"Status"];
      v13 = [v11 objectForKeyedSubscript:@"Status"];
      v14 = [v12 isEqual:v13];

      if (v14)
      {
LABEL_7:

        goto LABEL_8;
      }

      v15 = [v11 objectForKeyedSubscript:@"Status"];
      v16 = [v15 isEqual:MEMORY[0x277CBEC38]];

      if (v16)
      {
        entryDate = [v9 entryDate];
        entryDate2 = [v11 entryDate];
        [entryDate timeIntervalSinceDate:entryDate2];
        v20 = v19;

        dKeyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.UIKit.%@.screenOnTime", dKeyCopy];
        [(PLAggregateDictionaryService *)self logDuration:dKeyCopy asDistribution:v20];
      }
    }

    localCache2 = [(PLAggregateDictionaryService *)self localCache];
    [localCache2 setObject:v9 forKeyedSubscript:keyCopy];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)registerForUIKitNotifications
{
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v3 = *MEMORY[0x277D3F5D0];
    v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"UIKitKeyboard"];
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:v3 andName:@"UIKitAlert"];
    v6 = [(PLOperator *)PLXPCAgent entryKeyForType:v3 andName:@"UIKitActivity"];
    registeredNotifications = [(PLAggregateDictionaryService *)self registeredNotifications];
    v8 = objc_alloc(MEMORY[0x277D3F1A8]);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __61__PLAggregateDictionaryService_registerForUIKitNotifications__block_invoke;
    v27[3] = &unk_2782633D8;
    v27[4] = self;
    v28 = v4;
    v9 = v4;
    v10 = [v8 initWithOperator:self forEntryKey:v9 withBlock:v27];
    [registeredNotifications addObject:v10];

    registeredNotifications2 = [(PLAggregateDictionaryService *)self registeredNotifications];
    v12 = objc_alloc(MEMORY[0x277D3F1A8]);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __61__PLAggregateDictionaryService_registerForUIKitNotifications__block_invoke_2;
    v25[3] = &unk_2782633D8;
    v25[4] = self;
    v26 = v5;
    v13 = v5;
    v14 = [v12 initWithOperator:self forEntryKey:v13 withBlock:v25];
    [registeredNotifications2 addObject:v14];

    registeredNotifications3 = [(PLAggregateDictionaryService *)self registeredNotifications];
    v16 = objc_alloc(MEMORY[0x277D3F1A8]);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __61__PLAggregateDictionaryService_registerForUIKitNotifications__block_invoke_3;
    v22 = &unk_2782633D8;
    selfCopy = self;
    v24 = v6;
    v17 = v6;
    v18 = [v16 initWithOperator:self forEntryKey:v17 withBlock:&v19];
    [registeredNotifications3 addObject:{v18, v19, v20, v21, v22, selfCopy}];
  }
}

- (void)registerForSpringboardNotifications
{
  v3 = *MEMORY[0x277D3F5E8];
  v9 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SBAutoLock"];
  v4 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:v3 andName:@"SBNotifications"];
  registeredNotifications = [(PLAggregateDictionaryService *)self registeredNotifications];
  v6 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forNotification:v9 withBlock:&__block_literal_global_68];
  [registeredNotifications addObject:v6];

  registeredNotifications2 = [(PLAggregateDictionaryService *)self registeredNotifications];
  v8 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:v4 withBlock:&__block_literal_global_245];
  [registeredNotifications2 addObject:v8];
}

void __67__PLAggregateDictionaryService_registerForSpringboardNotifications__block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 objectForKeyedSubscript:@"entry"];
  v2 = [v7 objectForKeyedSubscript:@"AutoLockType"];
  v3 = [v2 isEqual:&unk_282C13D10];

  if (v3)
  {
    v4 = @"com.apple.springboard.autolockCount";
  }

  else
  {
    v5 = [v7 objectForKeyedSubscript:@"AutoLockType"];
    v6 = [v5 isEqual:&unk_282C13D28];

    if (!v6)
    {
      goto LABEL_6;
    }

    v4 = @"com.apple.springboard.lockscreenDimCount";
  }

  MEMORY[0x21CEDCD40](v4, 1);
LABEL_6:
}

void __67__PLAggregateDictionaryService_registerForSpringboardNotifications__block_invoke_243(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"entry"];
  v3 = objc_opt_new();
  v4 = [v2 objectForKeyedSubscript:@"NotificationType"];
  v5 = [v4 isEqual:&unk_282C13D10];

  if (v5)
  {
    v6 = @"local";
    v7 = @"com.apple.power.App.LocalNotifications";
LABEL_5:
    MEMORY[0x21CEDCD40](v7, 1);
    [v3 setObject:v6 forKeyedSubscript:@"type"];
    goto LABEL_6;
  }

  v8 = [v2 objectForKeyedSubscript:@"NotificationType"];
  v9 = [v8 isEqual:&unk_282C13D28];

  if (v9)
  {
    v6 = @"remote";
    v7 = @"com.apple.power.App.RemoteNotifications";
    goto LABEL_5;
  }

LABEL_6:
  v11 = v3;
  v10 = v3;
  AnalyticsSendEventLazy();
}

- (void)registerForBluetoothNotifications
{
  v3 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"DeviceState"];
  registeredNotifications = [(PLAggregateDictionaryService *)self registeredNotifications];
  v5 = objc_alloc(MEMORY[0x277D3F1A8]);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __65__PLAggregateDictionaryService_registerForBluetoothNotifications__block_invoke;
  v11 = &unk_2782633D8;
  selfCopy = self;
  v13 = v3;
  v6 = v3;
  v7 = [v5 initWithOperator:self forEntryKey:v6 withBlock:&v8];
  [registeredNotifications addObject:{v7, v8, v9, v10, v11, selfCopy}];
}

void __65__PLAggregateDictionaryService_registerForBluetoothNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"entry"];
  v4 = [*(a1 + 32) localCache];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

  v6 = [*(a1 + 32) localCache];
  [v6 setObject:v3 forKeyedSubscript:*(a1 + 40)];

  v7 = [v3 entryDate];
  v8 = [v5 entryDate];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  v11 = [v5 objectForKeyedSubscript:@"DeviceConnected"];
  LODWORD(v8) = [v11 isEqual:MEMORY[0x277CBEC38]];

  if (v8)
  {
    [*(a1 + 32) logDuration:@"com.apple.power.bluetooth.connected.duration" asDistribution:v10];
    AnalyticsSendEventLazy();
  }

  v12 = [v5 objectForKeyedSubscript:@"DeviceDiscoverable"];
  v13 = [v12 isEqual:MEMORY[0x277CBEC38]];

  if (v13)
  {
    [*(a1 + 32) logDuration:@"com.apple.power.bluetooth.discoverable.duration" asDistribution:v10];
    AnalyticsSendEventLazy();
  }
}

id __65__PLAggregateDictionaryService_registerForBluetoothNotifications__block_invoke_2(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[1] = @"duration";
  v5[0] = @"connected";
  v4[0] = @"state";
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id __65__PLAggregateDictionaryService_registerForBluetoothNotifications__block_invoke_3(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[1] = @"duration";
  v5[0] = @"discoverable";
  v4[0] = @"state";
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)registerForVideoNotifications
{
  v3 = [(PLOperator *)PLVideoAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Video"];
  registeredNotifications = [(PLAggregateDictionaryService *)self registeredNotifications];
  v5 = objc_alloc(MEMORY[0x277D3F1A8]);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__PLAggregateDictionaryService_registerForVideoNotifications__block_invoke;
  v11 = &unk_2782633D8;
  selfCopy = self;
  v13 = v3;
  v6 = v3;
  v7 = [v5 initWithOperator:self forEntryKey:v6 withBlock:&v8];
  [registeredNotifications addObject:{v7, v8, v9, v10, v11, selfCopy}];
}

void __61__PLAggregateDictionaryService_registerForVideoNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"entry"];
  v4 = [*(a1 + 32) localCache];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

  v6 = [*(a1 + 32) localCache];
  [v6 setObject:v3 forKeyedSubscript:*(a1 + 40)];

  v7 = [v3 entryDate];
  v8 = [v5 entryDate];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  v11 = [v3 objectForKeyedSubscript:@"State"];
  LODWORD(v8) = [v11 isEqual:&unk_282C13D40];

  if (v8)
  {
    [*(a1 + 32) logDuration:@"com.apple.power.video.duration" asDistribution:v10];
    v12 = v3;
    AnalyticsSendEventLazy();
  }
}

id __61__PLAggregateDictionaryService_registerForVideoNotifications__block_invoke_301(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"BundleId";
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"clientDisplayID"];
  v6[1] = @"StateDuration";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)registerForMailNotifications
{
  v3 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MailFetch"];
  registeredNotifications = [(PLAggregateDictionaryService *)self registeredNotifications];
  v5 = objc_alloc(MEMORY[0x277D3F1A8]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__PLAggregateDictionaryService_registerForMailNotifications__block_invoke;
  v7[3] = &unk_2782597E8;
  v7[4] = self;
  v6 = [v5 initWithOperator:self forEntryKey:v3 withBlock:v7];
  [registeredNotifications addObject:v6];
}

void __60__PLAggregateDictionaryService_registerForMailNotifications__block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [a2 objectForKeyedSubscript:@"entry"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"account"];
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x277CCAB50] characterSetWithCharactersInString:@"/"];
      v7 = [v5 rangeOfCharacterFromSet:v6];

      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (![MEMORY[0x277D3F180] debugEnabled])
        {
          goto LABEL_36;
        }

        v8 = objc_opt_class();
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __60__PLAggregateDictionaryService_registerForMailNotifications__block_invoke_329;
        v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v43[4] = v8;
        if (qword_2811F6FF0 != -1)
        {
          dispatch_once(&qword_2811F6FF0, v43);
        }

        if (byte_2811F6FC4 != 1)
        {
          goto LABEL_36;
        }

        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: mail account type has no slash: %@", v5];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateDictionaryService.m"];
        v12 = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateDictionaryService registerForMailNotifications]_block_invoke_2"];
        [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:519];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v46 = v9;
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v15 = v5;
      }

      else
      {
        v15 = [v5 substringToIndex:v7];

        v27 = [v3 objectForKeyedSubscript:@"duration"];
        v9 = v27;
        if (v27 && [v27 length])
        {
          v28 = [v9 substringToIndex:[v9 length]- 1];

          v29 = MEMORY[0x277CCABB0];
          [v28 doubleValue];
          v30 = [v29 numberWithDouble:?];
          v31 = [@"com.apple.mobilemail." stringByAppendingString:v15];
          MEMORY[0x21CEDCD40]([v31 stringByAppendingString:@".fetchCount"], 1);
          v32 = [v31 stringByAppendingString:@".fetchDuration"];
          [v30 doubleValue];
          MEMORY[0x21CEDCD40](v32, (v33 * 1000.0));

          v9 = v28;
        }

        else if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v34 = objc_opt_class();
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __60__PLAggregateDictionaryService_registerForMailNotifications__block_invoke_2;
          v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v44[4] = v34;
          if (qword_2811F6FE8 != -1)
          {
            dispatch_once(&qword_2811F6FE8, v44);
          }

          if (byte_2811F6FC3 == 1)
          {
            v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: mail fetch durationString is invalid or empty"];
            v36 = MEMORY[0x277D3F178];
            v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateDictionaryService.m"];
            v38 = [v37 lastPathComponent];
            v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateDictionaryService registerForMailNotifications]_block_invoke"];
            [v36 logMessage:v35 fromFile:v38 fromFunction:v39 fromLineNumber:516];

            v40 = PLLogCommon();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v46 = v35;
              _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }
      }
    }

    else
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_27;
      }

      v21 = objc_opt_class();
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __60__PLAggregateDictionaryService_registerForMailNotifications__block_invoke_336;
      v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v42[4] = v21;
      if (qword_2811F6FF8 != -1)
      {
        dispatch_once(&qword_2811F6FF8, v42);
      }

      if (byte_2811F6FC5 != 1)
      {
LABEL_27:
        v5 = 0;
LABEL_36:

        goto LABEL_37;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: mail notification account type is nil for entry %@", v3];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateDictionaryService.m"];
      v24 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateDictionaryService registerForMailNotifications]_block_invoke_2"];
      [v22 logMessage:v9 fromFile:v24 fromFunction:v25 fromLineNumber:522];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v46 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v15 = 0;
    }

LABEL_35:

    v5 = v15;
    goto LABEL_36;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__PLAggregateDictionaryService_registerForMailNotifications__block_invoke_342;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v16;
    if (qword_2811F7000 != -1)
    {
      dispatch_once(&qword_2811F7000, block);
    }

    if (byte_2811F6FC6 == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: mail notification: thisEntry is invalid! Serious bug in entryNotification system"];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateDictionaryService.m"];
      v19 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateDictionaryService registerForMailNotifications]_block_invoke_2"];
      [v17 logMessage:v15 fromFile:v19 fromFunction:v20 fromLineNumber:525];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v46 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_35;
    }
  }

LABEL_37:
}

void *__60__PLAggregateDictionaryService_registerForMailNotifications__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6FC3 = result;
  return result;
}

void *__60__PLAggregateDictionaryService_registerForMailNotifications__block_invoke_329(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6FC4 = result;
  return result;
}

void *__60__PLAggregateDictionaryService_registerForMailNotifications__block_invoke_336(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6FC5 = result;
  return result;
}

void *__60__PLAggregateDictionaryService_registerForMailNotifications__block_invoke_342(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6FC6 = result;
  return result;
}

- (void)registerForCalendarNotifications
{
  v3 = *MEMORY[0x277D3F5E8];
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"DACalendarItemsDownloaded"];
  v5 = [(PLOperator *)PLXPCAgent entryKeyForType:v3 andName:@"DACalendarItemsUploaded"];
  registeredNotifications = [(PLAggregateDictionaryService *)self registeredNotifications];
  v7 = objc_alloc(MEMORY[0x277D3F1A8]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__PLAggregateDictionaryService_registerForCalendarNotifications__block_invoke;
  v14[3] = &unk_2782597E8;
  v15 = @"com.apple.power.calendar";
  v8 = [v7 initWithOperator:self forEntryKey:v4 withBlock:v14];
  [registeredNotifications addObject:v8];

  registeredNotifications2 = [(PLAggregateDictionaryService *)self registeredNotifications];
  v10 = objc_alloc(MEMORY[0x277D3F1A8]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__PLAggregateDictionaryService_registerForCalendarNotifications__block_invoke_3;
  v12[3] = &unk_2782597E8;
  v13 = @"com.apple.power.calendar";
  v11 = [v10 initWithOperator:self forEntryKey:v5 withBlock:v12];
  [registeredNotifications2 addObject:v11];
}

void __64__PLAggregateDictionaryService_registerForCalendarNotifications__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"entry"];
  v3 = [v2 objectForKeyedSubscript:@"NumberOfItemsChanged"];
  MEMORY[0x21CEDCD40](@"com.apple.power.calendar.numberItemsDownloaded", [v3 unsignedLongValue]);
  MEMORY[0x21CEDCD40](@"com.apple.power.calendar.syncCount", 1);
  v5 = v3;
  v4 = v3;
  AnalyticsSendEventLazy();
}

id __64__PLAggregateDictionaryService_registerForCalendarNotifications__block_invoke_2(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"numberItemsDownloaded";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(*(a1 + 32), "unsignedLongValue")}];
  v4[1] = @"syncCount";
  v5[0] = v1;
  v5[1] = &unk_282C13D28;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

void __64__PLAggregateDictionaryService_registerForCalendarNotifications__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"entry"];
  v3 = [v2 objectForKeyedSubscript:@"NumberOfItemsChanged"];
  MEMORY[0x21CEDCD40](@"com.apple.power.calendar.numberItemsUploaded", [v3 unsignedLongValue]);
  v5 = v3;
  v4 = v3;
  AnalyticsSendEventLazy();
}

id __64__PLAggregateDictionaryService_registerForCalendarNotifications__block_invoke_4(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"numberItemsUploaded";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(*(a1 + 32), "unsignedLongValue")}];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)registerForApplicationNotifications
{
  v3 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Application"];
  registeredNotifications = [(PLAggregateDictionaryService *)self registeredNotifications];
  v5 = objc_alloc(MEMORY[0x277D3F1A8]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__PLAggregateDictionaryService_registerForApplicationNotifications__block_invoke;
  v7[3] = &unk_2782597E8;
  v7[4] = self;
  v6 = [v5 initWithOperator:self forNotification:v3 withBlock:v7];
  [registeredNotifications addObject:v6];
}

void *__67__PLAggregateDictionaryService_registerForApplicationNotifications__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6FC7 = result;
  return result;
}

- (void)registerForLocationNotifications
{
  registeredNotifications = [(PLAggregateDictionaryService *)self registeredNotifications];
  v4 = objc_alloc(MEMORY[0x277D3F1A8]);
  v6 = @"PLLocationAgent_EventForward_TechStatus";
  v5 = [v4 initWithOperator:self forEntryKey:MEMORY[0x277D85DD0] withBlock:{3221225472, __64__PLAggregateDictionaryService_registerForLocationNotifications__block_invoke, &unk_2782633D8, self}];
  [registeredNotifications addObject:v5];
}

- (void)registerForBatteryNotifications
{
  registeredNotifications = [(PLAggregateDictionaryService *)self registeredNotifications];
  v4 = objc_alloc(MEMORY[0x277D3F1A8]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__PLAggregateDictionaryService_registerForBatteryNotifications__block_invoke;
  v6[3] = &unk_2782597E8;
  v6[4] = self;
  v5 = [v4 initWithOperator:self forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withBlock:v6];
  [registeredNotifications addObject:v5];
}

- (void)registerForSCDynamicStoreNotifications
{
  v3 = *MEMORY[0x277D3F5D0];
  v4 = [(PLOperator *)PLSCDynamicStoreAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"CellularActive"];
  v5 = [(PLOperator *)PLSCDynamicStoreAgent entryKeyForType:v3 andName:@"WifiActive"];
  v6 = [(PLOperator *)PLSCDynamicStoreAgent entryKeyForType:v3 andName:@"HotspotActive"];
  registeredNotifications = [(PLAggregateDictionaryService *)self registeredNotifications];
  v8 = objc_alloc(MEMORY[0x277D3F1A8]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __70__PLAggregateDictionaryService_registerForSCDynamicStoreNotifications__block_invoke;
  v27[3] = &unk_2782633D8;
  v27[4] = self;
  v28 = v4;
  v9 = v4;
  v10 = [v8 initWithOperator:self forEntryKey:v9 withBlock:v27];
  [registeredNotifications addObject:v10];

  registeredNotifications2 = [(PLAggregateDictionaryService *)self registeredNotifications];
  v12 = objc_alloc(MEMORY[0x277D3F1A8]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __70__PLAggregateDictionaryService_registerForSCDynamicStoreNotifications__block_invoke_487;
  v25[3] = &unk_2782633D8;
  v25[4] = self;
  v26 = v5;
  v13 = v5;
  v14 = [v12 initWithOperator:self forEntryKey:v13 withBlock:v25];
  [registeredNotifications2 addObject:v14];

  registeredNotifications3 = [(PLAggregateDictionaryService *)self registeredNotifications];
  v16 = objc_alloc(MEMORY[0x277D3F1A8]);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __70__PLAggregateDictionaryService_registerForSCDynamicStoreNotifications__block_invoke_2;
  v22 = &unk_2782633D8;
  selfCopy = self;
  v24 = v6;
  v17 = v6;
  v18 = [v16 initWithOperator:self forEntryKey:v17 withBlock:&v19];
  [registeredNotifications3 addObject:{v18, v19, v20, v21, v22, selfCopy}];
}

void __70__PLAggregateDictionaryService_registerForSCDynamicStoreNotifications__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"entry"];
  v4 = [*(a1 + 32) localCache];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

  v6 = [*(a1 + 32) localCache];
  [v6 setObject:v3 forKeyedSubscript:*(a1 + 40)];

  if (!v5)
  {
    goto LABEL_17;
  }

  v7 = [v5 objectForKeyedSubscript:@"Active"];
  v8 = [v7 isEqual:MEMORY[0x277CBEC38]];

  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = [v3 entryDate];
  v10 = [v5 entryDate];
  [v9 timeIntervalSinceDate:v10];
  v12 = v11;

  [*(a1 + 32) addToDurationScalarKey:@"com.apple.power.reachability.cellular.duration" withDuration:v12];
  v13 = [v5 objectForKeyedSubscript:@"LinkQuality"];
  LOBYTE(v10) = [v13 isEqual:&unk_282C13D58];

  if (v10)
  {
    v14 = @"com.apple.power.link_quality.Good.duration";
  }

  else
  {
    v15 = [v5 objectForKeyedSubscript:@"LinkQuality"];
    v16 = [v15 isEqual:&unk_282C13D70];

    if (v16)
    {
      v14 = @"com.apple.power.link_quality.Bad.duration";
    }

    else
    {
      v17 = [v5 objectForKeyedSubscript:@"LinkQuality"];
      v18 = [v17 isEqual:&unk_282C13D88];

      if (v18)
      {
        goto LABEL_10;
      }

      v14 = @"com.apple.power.link_quality.Poor.duration";
    }
  }

  [*(a1 + 32) addToDurationScalarKey:v14 withDuration:v12];
LABEL_10:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __70__PLAggregateDictionaryService_registerForSCDynamicStoreNotifications__block_invoke_483;
    v29 = &__block_descriptor_40_e5_v8__0lu32l8;
    v30 = v19;
    if (qword_2811F7010 != -1)
    {
      dispatch_once(&qword_2811F7010, &block);
    }

    if (byte_2811F6FC8 == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Entry for SCDS: %@", v3, block, v27, v28, v29, v30];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateDictionaryService.m"];
      v23 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateDictionaryService registerForSCDynamicStoreNotifications]_block_invoke_2"];
      [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:693];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

LABEL_17:
}

void *__70__PLAggregateDictionaryService_registerForSCDynamicStoreNotifications__block_invoke_483(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6FC8 = result;
  return result;
}

void __70__PLAggregateDictionaryService_registerForSCDynamicStoreNotifications__block_invoke_487(uint64_t a1, void *a2)
{
  v12 = [a2 objectForKeyedSubscript:@"entry"];
  v3 = [*(a1 + 32) localCache];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  v5 = [*(a1 + 32) localCache];
  [v5 setObject:v12 forKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"Active"];
    v7 = [v6 isEqual:MEMORY[0x277CBEC38]];

    if (v7)
    {
      v8 = [v12 entryDate];
      v9 = [v4 entryDate];
      [v8 timeIntervalSinceDate:v9];
      v11 = v10;

      [*(a1 + 32) addToDurationScalarKey:@"com.apple.power.reachability.wifi.duration" withDuration:v11];
    }
  }
}

void __70__PLAggregateDictionaryService_registerForSCDynamicStoreNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = [a2 objectForKeyedSubscript:@"entry"];
  v3 = [*(a1 + 32) localCache];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  v5 = [*(a1 + 32) localCache];
  [v5 setObject:v12 forKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"Active"];
    v7 = [v6 isEqual:MEMORY[0x277CBEC38]];

    if (v7)
    {
      v8 = [v12 entryDate];
      v9 = [v4 entryDate];
      [v8 timeIntervalSinceDate:v9];
      v11 = v10;

      [*(a1 + 32) addToDurationScalarKey:@"com.apple.power.reachability.hotspot.duration" withDuration:v11];
    }
  }
}

- (void)registerForSafariNotifications
{
  v3 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SafariFetcher"];
  registeredNotifications = [(PLAggregateDictionaryService *)self registeredNotifications];
  v5 = objc_alloc(MEMORY[0x277D3F1A8]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__PLAggregateDictionaryService_registerForSafariNotifications__block_invoke;
  v7[3] = &unk_2782597E8;
  v7[4] = self;
  v6 = [v5 initWithOperator:self forEntryKey:v3 withBlock:v7];
  [registeredNotifications addObject:v6];
}

void __62__PLAggregateDictionaryService_registerForSafariNotifications__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a2 objectForKeyedSubscript:@"entry"];
  v3 = [v2 objectForKeyedSubscript:@"FetcherState"];
  v4 = [v3 isEqualToString:@"start"];

  if (v4)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__PLAggregateDictionaryService_registerForSafariNotifications__block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (qword_2811F7018 != -1)
      {
        dispatch_once(&qword_2811F7018, block);
      }

      if (byte_2811F6FC9 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"adding to safari fetcher state"];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateDictionaryService.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateDictionaryService registerForSafariNotifications]_block_invoke"];
        [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:725];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v14 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    MEMORY[0x21CEDCD40](@"com.apple.safari.reading_list_items.count", 1);
  }
}

void *__62__PLAggregateDictionaryService_registerForSafariNotifications__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6FC9 = result;
  return result;
}

- (void)registerForBacklightLatencyNotifications
{
  if (+[PLDisplayAgent shouldLogBacklightControl])
  {
    v3 = *MEMORY[0x277D3F5E8];
    v4 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BacklightControl"];
    registeredNotifications = [(PLAggregateDictionaryService *)self registeredNotifications];
    v6 = objc_alloc(MEMORY[0x277D3F1A8]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__PLAggregateDictionaryService_registerForBacklightLatencyNotifications__block_invoke;
    v14[3] = &unk_2782597E8;
    v14[4] = self;
    v7 = [v6 initWithOperator:self forEntryKey:v4 withBlock:v14];
    [registeredNotifications addObject:v7];

    v8 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:v3 andName:@"CurrentMachWakeTime"];
    registeredNotifications2 = [(PLAggregateDictionaryService *)self registeredNotifications];
    v10 = objc_alloc(MEMORY[0x277D3F1A8]);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__PLAggregateDictionaryService_registerForBacklightLatencyNotifications__block_invoke_2;
    v12[3] = &unk_2782633D8;
    v12[4] = self;
    v13 = @"CurrentMachWakeTime";
    v11 = [v10 initWithOperator:self forEntryKey:v8 withBlock:v12];
    [registeredNotifications2 addObject:v11];
  }
}

- (unint64_t)abstimeToNanosec:(unint64_t)nanosec
{
  v4 = *&abstimeToNanosec__tmScale;
  if (*&abstimeToNanosec__tmScale < 0.0)
  {
    info = 0;
    mach_timebase_info(&info);
    LODWORD(v6) = info.denom;
    LODWORD(v5) = info.numer;
    v4 = v5 / v6;
    abstimeToNanosec__tmScale = *&v4;
  }

  return (v4 * nanosec);
}

- (unint64_t)bucketWakeTime:(unint64_t)time
{
  if (time < 0x3E8)
  {
    v3 = 10;
    return time - time % v3;
  }

  if (time >> 3 < 0x271)
  {
    v3 = 100;
    return time - time % v3;
  }

  if (time >> 4 <= 0x270)
  {
    v3 = 500;
    return time - time % v3;
  }

  return 10000;
}

- (void)updateAggregateStateWithEntry:(id)entry
{
  entryCopy = entry;
  v5 = [entryCopy objectForKeyedSubscript:@"AdapterInfo"];
  longValue = [v5 longValue];
  v7 = longValue != 0;

  v8 = [entryCopy objectForKeyedSubscript:@"RawLevel"];
  [v8 doubleValue];
  v10 = v9;

  entryDate = [entryCopy entryDate];
  [entryDate timeIntervalSince1970];
  v13 = v12;

  objc_msgSend_last_state(self);
  if (v32[0] == -1)
  {
    goto LABEL_18;
  }

  objc_msgSend_last_state(self);
  v14 = v27 - v10;
  __y = v27 - v10;
  objc_msgSend_last_state(self);
  v15 = v13 - v25;
  v26 = v13 - v25;
  objc_msgSend_last_state(self);
  objc_msgSend_last_state(self);
  if (!v24[0] && !longValue)
  {
    if (fabs(v14) <= 1.0)
    {
      goto LABEL_17;
    }

LABEL_9:
    v16 = [entryCopy objectForKeyedSubscript:@"NominalChargeCapacity"];
    if (v16)
    {
      v17 = @"NominalChargeCapacity";
    }

    else
    {
      v17 = @"AppleRawMaxCapacity";
    }

    v18 = [entryCopy objectForKeyedSubscript:v17];
    longValue2 = [v18 longValue];

    self->remainderUnpluggedEnergy = modf(v14 / 100.0 * longValue2, &__y) + self->remainderUnpluggedEnergy;
    remainderUnpluggedTime = modf(v15, &v26) + self->remainderUnpluggedTime;
    self->remainderUnpluggedTime = remainderUnpluggedTime;
    v23 = 0.0;
    if (fabs(self->remainderUnpluggedEnergy) > 1.0)
    {
      self->remainderUnpluggedEnergy = modf(self->remainderUnpluggedEnergy, &v23);
      __y = v23 + __y;
      remainderUnpluggedTime = self->remainderUnpluggedTime;
    }

    v21 = v26;
    if (fabs(remainderUnpluggedTime) > 1.0)
    {
      self->remainderUnpluggedTime = modf(remainderUnpluggedTime, &v23);
      v21 = v21 + v23;
    }

    MEMORY[0x21CEDCD40](@"com.apple.power.state.t_unplugged.energy", __y);
    MEMORY[0x21CEDCD40](@"com.apple.power.state.t_unplugged.duration", v21);
    AnalyticsSendEventLazy();
    goto LABEL_18;
  }

  if (!v24[6] && longValue)
  {
    MEMORY[0x21CEDCD40](@"com.apple.power.state.t_unplugged.count", 1);
    AnalyticsSendEventLazy();
    goto LABEL_9;
  }

LABEL_17:
  objc_msgSend_last_state(self);
  if (v22 == 1)
  {
LABEL_18:
    v29[0] = v7;
    v29[1] = 0;
    v30 = v10;
    v31 = v13;
    [(PLAggregateDictionaryService *)self setLast_state:v29];
  }
}

id __62__PLAggregateDictionaryService_updateAggregateStateWithEntry___block_invoke_2(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"Energy";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v6[1] = @"Duration";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

@end