@interface PLDisplayAgent
+ (BOOL)shouldLogALSPowerSaved;
+ (BOOL)shouldLogAPL;
+ (BOOL)shouldLogBLR;
+ (BOOL)shouldLogBacklightControl;
+ (BOOL)shouldLogDisplay;
+ (BOOL)shouldLogFromDCP;
+ (BOOL)shouldLogKeyboardBrightness;
+ (BOOL)shouldLogLCD;
+ (BOOL)shouldLogLuxStats;
+ (BOOL)shouldLogTouch;
+ (BOOL)shouldLogUserBrightness;
+ (BOOL)shouldModelPowerFromAPL;
+ (BOOL)shouldModelPowerFromIOMFB;
+ (id)dcpSubFrameMap;
+ (id)entryAggregateDefinitionUserTouch;
+ (id)entryAggregateDefinitions;
+ (id)entryEventBackwardDefinitionALSSamplesBeforeWake;
+ (id)entryEventBackwardDefinitionALSThreshold;
+ (id)entryEventBackwardDefinitionAPLStats;
+ (id)entryEventBackwardDefinitionAZLSnapshots;
+ (id)entryEventBackwardDefinitionAZLStats;
+ (id)entryEventBackwardDefinitionAmbientLight;
+ (id)entryEventBackwardDefinitionBlueLightParameters;
+ (id)entryEventBackwardDefinitionCurveUpdate;
+ (id)entryEventBackwardDefinitionDCPAODstats;
+ (id)entryEventBackwardDefinitionHarmonyParameters;
+ (id)entryEventBackwardDefinitionRampInfo;
+ (id)entryEventBackwardDefinitionTouch;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionALSEnabled;
+ (id)entryEventForwardDefinitionALSPowerSaved;
+ (id)entryEventForwardDefinitionALSUserPreferences;
+ (id)entryEventForwardDefinitionBlueLightReductionStatus;
+ (id)entryEventForwardDefinitionColorAdaptationMode;
+ (id)entryEventForwardDefinitionDisplay;
+ (id)entryEventForwardDefinitionDisplayBacklight;
+ (id)entryEventForwardDefinitionLuxStats;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventNoneDefinitionPanelStats;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionBacklightControl;
+ (id)entryEventPointDefinitionDisplay;
+ (id)entryEventPointDefinitionKeyboardBrightness;
+ (id)entryEventPointDefinitionMultitouch;
+ (id)entryEventPointDefinitionUserBrightness;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)isAlsEnabled;
- (BOOL)updateDisplayIOReportStats:(id)stats logZeroFramesOnlyOnce:(BOOL)once;
- (PLDisplayAgent)init;
- (__IOHIDEventSystemClient)setUpIOHIDTouchSystemClient;
- (double)averageFrameRateFromIOMFBScanout:(id)scanout;
- (double)calculatePowerFromAPL:(double)l withAvgRed:(double)red withAvgGreen:(double)green withAvgBlue:(double)blue;
- (double)uAmpsToDisplayPower:(double)power;
- (id)getIOMFBSubFrameMap;
- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date;
- (unint64_t)getBacklightEnabledTimestamp:(unsigned int)timestamp;
- (void)__FrameBufferEventCallback:(__IOMobileFramebuffer *)callback;
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event;
- (void)cleanUpAFKInterfaces;
- (void)clearDisplayAccountingEvents;
- (void)dealloc;
- (void)extractDataWithEntry:(id)entry withColName:(id)name withDataArray:(id)array;
- (void)fillInBuiltinDisplayBrightnessParameters:(id)parameters;
- (void)handleAFKInterfaceIOServiceCallback:(unsigned int)callback;
- (void)handleAFKInterfaceMsg:(id)msg;
- (void)handleBrightnessClientNotification:(id)notification withValue:(id)value;
- (void)handleSBC;
- (void)initAODState:(int64_t)state;
- (void)initOperatorDependancies;
- (void)initTaskOperatorDependancies;
- (void)log;
- (void)logAODChange;
- (void)logAODState:(int)state;
- (void)logBlueLightDataWithDictionary:(id)dictionary;
- (void)logBrightnessDataWithEntryKey:(id)key withColName:(id)name withValue:(id)value;
- (void)logDisplayAPL;
- (void)logDisplayAZL;
- (void)logDisplayEntry:(id)entry;
- (void)logEventBackwardALSSamplesBeforeWake:(id)wake;
- (void)logEventBackwardALSThreshold:(id)threshold;
- (void)logEventBackwardAmbientLight:(id)light;
- (void)logEventBackwardCurveUpdate:(id)update;
- (void)logEventBackwardRampInfo:(id)info;
- (void)logEventBackwardTouch;
- (void)logEventBackwardUserTouch:(BOOL)touch;
- (void)logEventForwardALSEnabled;
- (void)logEventForwardALSLux:(unint64_t)lux;
- (void)logEventForwardALSUserPreferencesEntryWithLux:(id)lux;
- (void)logEventForwardALSUserPreferencesWithCurrLux;
- (void)logEventForwardColorAdaptationMode;
- (void)logEventForwardDisplay;
- (void)logEventForwardDisplayBacklight;
- (void)logEventForwardDisplayWithRawData:(id)data withDate:(id)date;
- (void)logEventForwardExtendedALSUserPreferences:(id)preferences;
- (void)logEventForwardLuxStats:(id)stats;
- (void)logEventNonePanelStats;
- (void)logEventPointDisplay;
- (void)logEventPointDisplayBacklight;
- (void)logEventPointDisplayBacklightWithState:(unint64_t)state;
- (void)logEventPointDisplayForBlock:(id)block isActive:(int)active;
- (void)logEventPointDisplayMIE;
- (void)logEventPointKeyboardBrightness:(double)brightness withDate:(id)date;
- (void)logEventPointMultitouchWithPayload:(id)payload;
- (void)logEventPointUserBrightnessCommitted:(double)committed;
- (void)modelDisplayPower:(id)power;
- (void)modelDisplayPowerFromIOMFB:(id)b;
- (void)modelDynamicDisplayPower:(id)power;
- (void)modelDynamicDisplayPowerFromAPL:(id)l;
- (void)qualifyDisplayPower:(id)power;
- (void)reArmCallback;
- (void)reArmUAmpsCallback;
- (void)updateLastForegroundAppAPL:(id)l;
@end

@implementation PLDisplayAgent

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 logDisplayAPL];
  [*(a1 + 32) updateLastForegroundAppAPL:v4];
}

- (void)logDisplayAPL
{
  v51[1] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogAPL])
  {
    v3 = objc_alloc(MEMORY[0x277D3F190]);
    v4 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"APLStats"];
    v5 = [v3 initWithEntryKey:v4];

    displayIOReportStats = [(PLDisplayAgent *)self displayIOReportStats];
    v7 = -[PLDisplayAgent updateDisplayIOReportStats:logZeroFramesOnlyOnce:](self, "updateDisplayIOReportStats:logZeroFramesOnlyOnce:", displayIOReportStats, [MEMORY[0x277D3F258] isPerfPowerMetricd] ^ 1);

    if (v7 && (-[PLDisplayAgent displayIOReportStats](self, "displayIOReportStats"), v8 = objc_claimAutoreleasedReturnValue(), [v8 displayAPLStats], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      [v5 setObject:self->_lastForegroundAppAPL forKey:@"bundleID"];
      displayAPLStats = [(PLDisplayIOReportStats *)self->_displayIOReportStats displayAPLStats];
      avgRed = [displayAPLStats avgRed];
      [v5 setObject:avgRed forKey:@"AvgRed"];

      displayAPLStats2 = [(PLDisplayIOReportStats *)self->_displayIOReportStats displayAPLStats];
      avgGreen = [displayAPLStats2 avgGreen];
      [v5 setObject:avgGreen forKey:@"AvgGreen"];

      displayAPLStats3 = [(PLDisplayIOReportStats *)self->_displayIOReportStats displayAPLStats];
      avgBlue = [displayAPLStats3 avgBlue];
      [v5 setObject:avgBlue forKey:@"AvgBlue"];

      displayAPLStats4 = [(PLDisplayIOReportStats *)self->_displayIOReportStats displayAPLStats];
      frames = [displayAPLStats4 frames];
      [v5 setObject:frames forKey:@"Frames"];

      displayAPLStats5 = [(PLDisplayIOReportStats *)self->_displayIOReportStats displayAPLStats];
      avgPower = [displayAPLStats5 avgPower];
      [v5 setObject:avgPower forKey:@"AvgPower"];

      displayAPLStats6 = [(PLDisplayIOReportStats *)self->_displayIOReportStats displayAPLStats];
      avgAPL = [displayAPLStats6 avgAPL];
      [v5 setObject:avgAPL forKey:@"AvgAPL"];

      if ([MEMORY[0x277D3F258] isPerfPowerMetricd] && +[PLDisplayAgent shouldModelPowerFromAPL](PLDisplayAgent, "shouldModelPowerFromAPL"))
      {
        iokitBacklight = [(PLDisplayAgent *)self iokitBacklight];

        if (iokitBacklight)
        {
          iokitBacklight2 = [(PLDisplayAgent *)self iokitBacklight];
          v24 = [iokitBacklight2 propertiesForKey:@"IODisplayParameters"];

          v25 = [v24 objectForKeyedSubscript:@"brightness"];
          v26 = [v25 objectForKeyedSubscript:@"value"];

          if ([v26 intValue] < 1)
          {
            [v5 setObject:&unk_282C116B8 forKeyedSubscript:@"AvgPower"];
          }

          else
          {
            v27 = [v24 objectForKeyedSubscript:@"BrightnessMilliNits"];
            v48 = [v27 objectForKeyedSubscript:@"value"];

            [v48 doubleValue];
            v29 = v28;
            displayIOReportStats2 = [(PLDisplayAgent *)self displayIOReportStats];
            displayAPLStats7 = [displayIOReportStats2 displayAPLStats];
            avgRed2 = [displayAPLStats7 avgRed];
            [avgRed2 doubleValue];
            v31 = v30;
            displayIOReportStats3 = [(PLDisplayAgent *)self displayIOReportStats];
            displayAPLStats8 = [displayIOReportStats3 displayAPLStats];
            avgGreen2 = [displayAPLStats8 avgGreen];
            [avgGreen2 doubleValue];
            v35 = v34;
            displayIOReportStats4 = [(PLDisplayAgent *)self displayIOReportStats];
            displayAPLStats9 = [displayIOReportStats4 displayAPLStats];
            [displayAPLStats9 avgBlue];
            v38 = v49 = v24;
            [v38 doubleValue];
            [(PLDisplayAgent *)self calculatePowerFromAPL:v29 withAvgRed:v31 withAvgGreen:v35 withAvgBlue:v39];
            v41 = v40;

            v42 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
            [v5 setObject:v42 forKeyedSubscript:@"AvgPower"];

            v24 = v49;
          }
        }

        else
        {
          v24 = PLLogDisplay();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "iokitBacklight is nil; skipping power modeling", buf, 2u);
          }
        }
      }

      [(PLOperator *)self logEntry:v5];
      if (+[PLDisplayAgent shouldModelPowerFromAPL])
      {
        [(PLDisplayAgent *)self modelDynamicDisplayPowerFromAPL:self->_displayIOReportStats];
      }

      else if (+[PLDisplayAgent shouldModelPowerFromIOMFB])
      {
        [(PLDisplayAgent *)self modelDisplayPowerFromIOMFB:self->_displayIOReportStats];
      }
    }

    else if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
    {
      v51[0] = v5;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
      [(PLOperator *)self postEntries:v43];
    }
  }
}

+ (BOOL)shouldLogAPL
{
  if (([MEMORY[0x277D3F208] hasDCP] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "hasCapability:", 0) & 1) != 0 || +[PLDisplayAgent shouldModelPowerFromAPL](PLDisplayAgent, "shouldModelPowerFromAPL"))
  {
    return 1;
  }

  return +[PLDisplayAgent shouldModelPowerFromIOMFB];
}

id *__22__PLDisplayAgent_init__block_invoke_2_1485(id *result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = result;
  switch(a3)
  {
    case -536788734:
      v7 = a4 != 0;
      [result[4] logEventPointDisplayForBlock:@"MIE" isActive:v7];
      v8 = v4[4];

      return [v8 setIsMIEActive:v7];
    case -536788735:
      v6 = result[4];

      return [v6 logEventPointDisplayForBlock:@"Backlight" isActive:0];
    case -536788736:
      [result[4] logEventPointDisplayForBlock:@"Backlight" isActive:1];
      v5 = v4[4];

      return [v5 logEventBackwardTouch];
  }

  return result;
}

+ (BOOL)shouldLogUserBrightness
{
  if (qword_2811F4A18 != -1)
  {
    dispatch_once(&qword_2811F4A18, &__block_literal_global_1853);
  }

  return byte_2811F490D;
}

+ (BOOL)shouldModelPowerFromAPL
{
  if (qword_2811F4A38 != -1)
  {
    dispatch_once(&qword_2811F4A38, &__block_literal_global_1911);
  }

  return byte_2811F4911;
}

+ (BOOL)shouldModelPowerFromIOMFB
{
  if (qword_2811F4A40 != -1)
  {
    dispatch_once(&qword_2811F4A40, &__block_literal_global_1913);
  }

  return byte_2811F4912;
}

void __22__PLDisplayAgent_init__block_invoke_1431(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) pendingBacklightEntry];

  if (v4)
  {
    if ([*(a1 + 32) isDebugEnabled])
    {
      v5 = [PLEventForwardDisplayEntry alloc];
      v6 = [*(a1 + 32) pendingBacklightEntry];
      v7 = [(PLEventForwardDisplayEntry *)v5 initEntryWithRawData:v6];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v8 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __22__PLDisplayAgent_init__block_invoke_2_1433;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v8;
        if (qword_2811F4938 != -1)
        {
          dispatch_once(&qword_2811F4938, block);
        }

        if (byte_2811F48F1 == 1)
        {
          v9 = MEMORY[0x277CCACA8];
          v10 = [v7 objectForKeyedSubscript:@"Brightness"];
          v11 = MEMORY[0x277D3F268];
          v12 = [*(a1 + 32) pendingBacklightEntryDate];
          v13 = [v11 formattedStringForDate:v12];
          v14 = [v9 stringWithFormat:@"Writing backlight entry:%@ with date: %@", v10, v13];

          v15 = MEMORY[0x277D3F178];
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          v17 = [v16 lastPathComponent];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]_block_invoke"];
          [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:1497];

          v19 = PLLogCommon();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v38 = v14;
            _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }

    v20 = PLLogDisplay();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v27 = [*(a1 + 32) pendingBacklightEntry];
      v28 = MEMORY[0x277D3F268];
      v29 = [*(a1 + 32) pendingBacklightEntryDate];
      v30 = [v28 formattedStringForDate:v29];
      *buf = 138412546;
      v38 = v27;
      v39 = 2112;
      v40 = v30;
      _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "BackLight entry not nill. Writing backlight entry:%@ with date: %@", buf, 0x16u);
    }

    v21 = *(a1 + 32);
    v22 = [v21 pendingBacklightEntry];
    v23 = [*(a1 + 32) pendingBacklightEntryDate];
    [v21 logEventForwardDisplayWithRawData:v22 withDate:v23];

    v24 = PLLogDisplay();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "Setting pending backlight entry and date as nil", buf, 2u);
    }

    [*(a1 + 32) setPendingBacklightEntry:0];
    [*(a1 + 32) setPendingBacklightEntryDate:0];
  }

  else
  {
    v25 = PLLogDisplay();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v31 = MEMORY[0x277D3F268];
      v32 = [*(a1 + 32) backlightFilterTimer];
      v33 = [v32 fireDate];
      v34 = [v31 formattedStringForDate:v33];
      v35 = [MEMORY[0x277D3F268] formattedStringForDate:v3];
      *buf = 138412546;
      v38 = v34;
      v39 = 2112;
      v40 = v35;
      _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "Stop backlight entry filter timer timer.fireDate=%@ fireDate=%@", buf, 0x16u);
    }

    v26 = [*(a1 + 32) backlightFilterTimer];
    [v26 setTimerActive:0];
  }
}

+ (BOOL)shouldLogFromDCP
{
  if (qword_2811F4A10 != -1)
  {
    dispatch_once(&qword_2811F4A10, &__block_literal_global_1851);
  }

  return byte_2811F490C;
}

void __22__PLDisplayAgent_init__block_invoke_2_1452(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) currMonoTimestamp];
  v3 = v2;
  [*(a1 + 32) currAFKSystemTimestamp];
  v5 = v4;
  [*(a1 + 32) currMonoTimestamp];
  if (v6 <= 0.0 || ([*(a1 + 32) currAFKSystemTimestamp], v7 <= 0.0) || (v8 = v3 - v5, objc_msgSend(*(a1 + 32), "currAFKSystemTimeOffset"), v8 == v9))
  {
    v11 = [*(a1 + 32) dcpTimeoffsetCalibTimer];
    [v11 setTimerActive:0];

    v12 = PLLogDisplay();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v16) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "Canceling AFK time calibration timer", &v16, 2u);
    }
  }

  else
  {
    v10 = PLLogDisplay();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 32) currMonoTimestamp];
      v14 = v13;
      [*(a1 + 32) currAFKSystemTimestamp];
      v16 = 134218496;
      v17 = v8;
      v18 = 2048;
      v19 = v14;
      v20 = 2048;
      v21 = v15;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "New AFK time offset: %f, from mono timestamp: %f, afk time: %f", &v16, 0x20u);
    }

    [*(a1 + 32) setCurrAFKSystemTimeOffset:v8];
  }
}

+ (BOOL)shouldLogLuxStats
{
  isiPhone = [MEMORY[0x277D3F1B8] isiPhone];
  if (isiPhone)
  {
    v3 = MEMORY[0x277D3F1B8];

    LOBYTE(isiPhone) = [v3 hasRearALS];
  }

  return isiPhone;
}

void __22__PLDisplayAgent_init__block_invoke_1456(uint64_t a1, uint64_t a2, int a3)
{
  v55 = *MEMORY[0x277D85DE8];
  if (a3 == -536870608)
  {
    v4 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:a2 forKey:@"IODisplayParameters"];
    v5 = +[PLDisplayAgent shouldLogFromDCP];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [*(a1 + 32) pendingBacklightEntry];

      if (!v7)
      {
LABEL_26:

        return;
      }

      v8 = [v4 objectForKey:@"brightness"];
      v9 = [v8 objectForKey:@"value"];
      v10 = [v9 longValue];

      v11 = [v8 objectForKey:@"min"];
      v12 = [v11 longValue];

      v13 = [v8 objectForKey:@"max"];
      v14 = [v13 longValue];

      v15 = [MEMORY[0x277CCABB0] numberWithDouble:(v10 - v12) * 100.0 / (v14 - v12)];
      v16 = [*(a1 + 32) pendingBacklightEntry];
      [v16 setObject:v15 forKeyedSubscript:@"Brightness"];

      v17 = [MEMORY[0x277CCABB0] numberWithLong:v10];
      v18 = [*(a1 + 32) pendingBacklightEntry];
      [v18 setObject:v17 forKeyedSubscript:@"SliderValue"];
    }

    else
    {
      v19 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
      [v6 setPendingBacklightEntry:v19];

      v20 = [*(a1 + 32) pendingBacklightEntryDate];

      if (!v20)
      {
        v21 = [MEMORY[0x277CBEAA8] monotonicDate];
        [*(a1 + 32) setPendingBacklightEntryDate:v21];
      }

      if ([*(a1 + 32) isDebugEnabled])
      {
        v22 = [[PLEventForwardDisplayEntry alloc] initEntryWithRawData:v4];
        v23 = [PLEventForwardDisplayEntry alloc];
        v24 = [*(a1 + 32) pendingBacklightEntry];
        v25 = [(PLEventForwardDisplayEntry *)v23 initEntryWithRawData:v24];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v26 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __22__PLDisplayAgent_init__block_invoke_2_1468;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v26;
          if (qword_2811F4948 != -1)
          {
            dispatch_once(&qword_2811F4948, block);
          }

          if (byte_2811F48F3 == 1)
          {
            v27 = MEMORY[0x277CCACA8];
            v28 = [v22 objectForKeyedSubscript:@"Brightness"];
            v29 = [v25 objectForKeyedSubscript:@"Brightness"];
            v30 = MEMORY[0x277D3F268];
            v31 = [*(a1 + 32) pendingBacklightEntryDate];
            v32 = [v30 formattedStringForDate:v31];
            v33 = [v27 stringWithFormat:@"rawData.brightness=%@ self.pendingBacklightEntry.brightness=%@ self.pendingBacklightEntryDate=%@", v28, v29, v32];

            v34 = MEMORY[0x277D3F178];
            v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
            v36 = [v35 lastPathComponent];
            v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]_block_invoke"];
            [v34 logMessage:v33 fromFile:v36 fromFunction:v37 fromLineNumber:1581];

            v38 = PLLogCommon();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v54 = v33;
              _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }
      }

      v39 = [*(a1 + 32) backlightFilterTimer];
      v40 = [v39 timerActive];

      if (v40)
      {
        goto LABEL_26;
      }

      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v41 = objc_opt_class();
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __22__PLDisplayAgent_init__block_invoke_1474;
        v51[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v51[4] = v41;
        if (qword_2811F4950 != -1)
        {
          dispatch_once(&qword_2811F4950, v51);
        }

        if (byte_2811F48F4 == 1)
        {
          v42 = MEMORY[0x277CCACA8];
          v43 = [MEMORY[0x277D3F268] formattedStringForDate:v8];
          v44 = [v42 stringWithFormat:@"Start backlight entry filter timer fireDate=%@", v43];

          v45 = MEMORY[0x277D3F178];
          v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          v47 = [v46 lastPathComponent];
          v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]_block_invoke_2"];
          [v45 logMessage:v44 fromFile:v47 fromFunction:v48 fromLineNumber:1586];

          v49 = PLLogCommon();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v54 = v44;
            _os_log_debug_impl(&dword_21A4C6000, v49, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v50 = [*(a1 + 32) backlightFilterTimer];
      [v50 setFireDate:v8];
    }

    goto LABEL_26;
  }
}

void __22__PLDisplayAgent_init__block_invoke_1482(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getBacklightEnabledTimestamp:{objc_msgSend(*(*(a1 + 32) + 88), "service")}];
  v3 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BacklightControl"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v2];
  [v4 setObject:v5 forKeyedSubscript:@"backlightEnabledTimestamp"];

  v6 = *(a1 + 32);
  v8[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v6 postEntries:v7];
}

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1550(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogDisplay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Notification from ThermalMonitor: %@", &v5, 0xCu);
  }

  [*(a1 + 32) logDisplayAPL];
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLDisplayAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventNoneDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"PanelStats";
  v2 = +[PLDisplayAgent entryEventNoneDefinitionPanelStats];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventNoneDefinitionPanelStats
{
  v25[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    v24[0] = *MEMORY[0x277D3F4E8];
    v22 = *MEMORY[0x277D3F568];
    v23 = &unk_282C1C1D8;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v25[0] = v19;
    v24[1] = *MEMORY[0x277D3F540];
    v20[0] = @"B_input";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v21[0] = commonTypeDict_RealFormat;
    v20[1] = @"B_min";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v21[1] = commonTypeDict_RealFormat2;
    v20[2] = @"I_input";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v21[2] = commonTypeDict_RealFormat3;
    v20[3] = @"I_nominal";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v21[3] = commonTypeDict_RealFormat4;
    v20[4] = @"I_threshold";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
    v21[4] = commonTypeDict_RealFormat5;
    v20[5] = @"Scalar";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
    v21[5] = commonTypeDict_RealFormat6;
    v20[6] = @"Slope";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
    v21[6] = commonTypeDict_RealFormat7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:7];
    v25[1] = v11;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  }

  return v2;
}

+ (id)entryEventPointDefinitions
{
  v10[5] = *MEMORY[0x277D85DE8];
  v9[0] = @"Display";
  v2 = +[PLDisplayAgent entryEventPointDefinitionDisplay];
  v10[0] = v2;
  v9[1] = @"UserBrightness";
  v3 = +[PLDisplayAgent entryEventPointDefinitionUserBrightness];
  v10[1] = v3;
  v9[2] = @"Multitouch";
  v4 = +[PLDisplayAgent entryEventPointDefinitionMultitouch];
  v10[2] = v4;
  v9[3] = @"BacklightControl";
  v5 = +[PLDisplayAgent entryEventPointDefinitionBacklightControl];
  v10[3] = v5;
  v9[4] = @"KeyboardBrightness";
  v6 = +[PLDisplayAgent entryEventPointDefinitionKeyboardBrightness];
  v10[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

+ (id)entryEventPointDefinitionDisplay
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogDisplay](PLDisplayAgent, "shouldLogDisplay") || +[PLDisplayAgent shouldLogLCD])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F570];
    v14[0] = *MEMORY[0x277D3F568];
    v14[1] = v2;
    v15[0] = &unk_282C1C1E8;
    v15[1] = &unk_282C14238;
    v3 = *MEMORY[0x277D3F590];
    v14[2] = *MEMORY[0x277D3F578];
    v14[3] = v3;
    v15[2] = @"Block";
    v15[3] = &unk_282C11610;
    v14[4] = *MEMORY[0x277D3F4D8];
    v15[4] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
    v16[1] = *MEMORY[0x277D3F540];
    v17[0] = v4;
    v12[0] = @"Block";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v12[1] = @"Active";
    v13[0] = commonTypeDict_StringFormat;
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v13[1] = commonTypeDict_IntegerFormat;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v17[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  return v10;
}

+ (id)entryEventPointDefinitionUserBrightness
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogUserBrightness])
  {
    v15[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F570];
    v13[0] = *MEMORY[0x277D3F568];
    v13[1] = v2;
    v14[0] = &unk_282C1C1D8;
    v14[1] = &unk_282C14250;
    v13[2] = *MEMORY[0x277D3F550];
    v14[2] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v16[0] = v3;
    v15[1] = *MEMORY[0x277D3F540];
    v11 = @"UserBrightness";
    v4 = *MEMORY[0x277D3F5B0];
    v9[0] = *MEMORY[0x277D3F5A8];
    v9[1] = v4;
    v10[0] = &unk_282C11628;
    v10[1] = @"%";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    v12 = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v16[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  return v7;
}

+ (id)entryEventPointDefinitionMultitouch
{
  v37[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogTouch])
  {
    if ([MEMORY[0x277D3F208] hasOrb])
    {
      v36[0] = *MEMORY[0x277D3F4E8];
      v2 = *MEMORY[0x277D3F550];
      v34[0] = *MEMORY[0x277D3F568];
      v34[1] = v2;
      v35[0] = &unk_282C1C1F8;
      v35[1] = MEMORY[0x277CBEC28];
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
      v37[0] = v18;
      v36[1] = *MEMORY[0x277D3F540];
      v32[0] = @"fingerNum";
      mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
      v33[0] = commonTypeDict_IntegerFormat;
      v32[1] = @"peak";
      mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
      v33[1] = commonTypeDict_IntegerFormat2;
      v32[2] = @"peakMillimetersFromEdge";
      mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
      v33[2] = commonTypeDict_RealFormat;
      v32[3] = @"peakProximity";
      mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
      v33[3] = commonTypeDict_RealFormat2;
      v32[4] = @"peakMajorRadius";
      mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
      v33[4] = commonTypeDict_RealFormat3;
      v32[5] = @"peakMinorRadius";
      mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
      v33[5] = commonTypeDict_RealFormat4;
      v32[6] = @"touchStartTime";
      mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
      v33[6] = commonTypeDict_RealFormat5;
      v32[7] = @"touchStopTime";
      mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
      v33[7] = commonTypeDict_RealFormat6;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:8];
      v37[1] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

      mEMORY[0x277D3F198]9 = mEMORY[0x277D3F198];
      v14 = v18;
    }

    else
    {
      v30[0] = *MEMORY[0x277D3F4E8];
      v15 = *MEMORY[0x277D3F550];
      v28[0] = *MEMORY[0x277D3F568];
      v28[1] = v15;
      v29[0] = &unk_282C1C1E8;
      v29[1] = MEMORY[0x277CBEC28];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
      v31[0] = v14;
      v30[1] = *MEMORY[0x277D3F540];
      v26[0] = @"fingerNum";
      mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
      v27[0] = commonTypeDict_IntegerFormat;
      v26[1] = @"peakProximity";
      mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
      v27[1] = commonTypeDict_IntegerFormat2;
      v26[2] = @"peakProximityMillimetersFromEdge";
      mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
      v27[2] = commonTypeDict_RealFormat;
      v26[3] = @"peakProximityMajorRadius";
      mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
      v27[3] = commonTypeDict_RealFormat2;
      v26[4] = @"peakProximityMinorRadius";
      mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
      v27[4] = commonTypeDict_RealFormat3;
      v26[5] = @"touchStartTime";
      mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
      v27[5] = commonTypeDict_RealFormat4;
      v26[6] = @"touchStopTime";
      mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
      v27[6] = commonTypeDict_RealFormat5;
      mEMORY[0x277D3F198]8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:7];
      v31[1] = mEMORY[0x277D3F198]8;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    }
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  return v12;
}

+ (id)entryEventPointDefinitionBacklightControl
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogBacklightControl])
  {
    v12[0] = *MEMORY[0x277D3F4E8];
    v10 = *MEMORY[0x277D3F568];
    v11 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v13[0] = v2;
    v12[1] = *MEMORY[0x277D3F540];
    v8 = @"backlightEnabledTimestamp";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v9 = commonTypeDict_IntegerFormat;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v13[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  return v6;
}

+ (id)entryEventPointDefinitionKeyboardBrightness
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogKeyboardBrightness])
  {
    v12[0] = *MEMORY[0x277D3F4E8];
    v10 = *MEMORY[0x277D3F568];
    v11 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v13[0] = v2;
    v12[1] = *MEMORY[0x277D3F540];
    v8 = @"KeyboardBrightness";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v9 = commonTypeDict_IntegerFormat;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v13[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  return v6;
}

+ (id)entryEventForwardDefinitions
{
  v15[10] = *MEMORY[0x277D85DE8];
  v14[0] = @"Display";
  v13 = +[PLDisplayAgent entryEventForwardDefinitionDisplay];
  v15[0] = v13;
  v14[1] = @"DisplayBacklight";
  v2 = +[PLDisplayAgent entryEventForwardDefinitionDisplayBacklight];
  v15[1] = v2;
  v14[2] = @"ALSUserPreferences";
  v3 = +[PLDisplayAgent entryEventForwardDefinitionALSUserPreferences];
  v15[2] = v3;
  v14[3] = @"ALSEnabled";
  v4 = +[PLDisplayAgent entryEventForwardDefinitionALSEnabled];
  v15[3] = v4;
  v14[4] = @"ALSPowerSaved";
  v5 = +[PLDisplayAgent entryEventForwardDefinitionALSPowerSaved];
  v15[4] = v5;
  v14[5] = @"BlueLightReductionStatus";
  v6 = +[PLDisplayAgent entryEventForwardDefinitionBlueLightReductionStatus];
  v15[5] = v6;
  v14[6] = @"CAModeEnabled";
  v7 = +[PLDisplayAgent entryEventForwardDefinitionColorAdaptationMode];
  v15[6] = v7;
  v14[7] = @"ALSLux";
  v8 = +[PLDisplayAgent entryEventForwardDefinitionALSLux];
  v15[7] = v8;
  v14[8] = @"LinearBrightness";
  v9 = +[PLDisplayAgent entryEventForwardDefinitionLinearBrightness];
  v15[8] = v9;
  v14[9] = @"LuxStats";
  v10 = +[PLDisplayAgent entryEventForwardDefinitionLuxStats];
  v15[9] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:10];

  return v11;
}

+ (id)entryEventForwardDefinitionDisplay
{
  v54[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogDisplay])
  {
    v53[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F570];
    v51[0] = *MEMORY[0x277D3F568];
    v51[1] = v2;
    v52[0] = &unk_282C1C208;
    v52[1] = &unk_282C14268;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
    v54[0] = v38;
    v53[1] = *MEMORY[0x277D3F540];
    v49[0] = @"Brightness";
    v3 = +[PLDisplayAgent shouldLogFromDCP];
    v4 = MEMORY[0x277D3F5A8];
    v37 = v3;
    if (v3)
    {
      mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    }

    else
    {
      v7 = *MEMORY[0x277D3F5B0];
      v47[0] = *MEMORY[0x277D3F5A8];
      v47[1] = v7;
      v48[0] = &unk_282C11628;
      v48[1] = @"%";
      v47[2] = *MEMORY[0x277D3F4E0];
      v48[2] = MEMORY[0x277CBEC38];
      commonTypeDict_RealFormat = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
      mEMORY[0x277D3F198] = commonTypeDict_RealFormat;
    }

    v29 = commonTypeDict_RealFormat;
    v50[0] = commonTypeDict_RealFormat;
    v49[1] = @"SliderValue";
    v8 = +[PLDisplayAgent shouldLogFromDCP];
    mEMORY[0x277D3F198]6 = &unk_282C11640;
    v10 = MEMORY[0x277D3F538];
    v35 = v8;
    if (v8)
    {
      mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    }

    else
    {
      v12 = *MEMORY[0x277D3F538];
      v45[0] = *v4;
      v45[1] = v12;
      v46[0] = &unk_282C11640;
      v46[1] = &unk_282C14280;
      commonTypeDict_IntegerFormat = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
      mEMORY[0x277D3F198]2 = commonTypeDict_IntegerFormat;
    }

    v28 = commonTypeDict_IntegerFormat;
    v50[1] = commonTypeDict_IntegerFormat;
    v49[2] = @"lux";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v50[2] = commonTypeDict_IntegerFormat2;
    v49[3] = @"iDAC";
    v31 = +[PLDisplayAgent shouldLogFromDCP];
    if (v31)
    {
      mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    }

    else
    {
      v14 = *v10;
      v43[0] = *v4;
      v43[1] = v14;
      v44[0] = &unk_282C11640;
      v44[1] = &unk_282C14298;
      commonTypeDict_IntegerFormat3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
      mEMORY[0x277D3F198]4 = commonTypeDict_IntegerFormat3;
    }

    v50[3] = commonTypeDict_IntegerFormat3;
    v49[4] = @"mNits";
    v15 = +[PLDisplayAgent shouldLogFromDCP];
    if (v15)
    {
      mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    }

    else
    {
      v18 = *v10;
      v41[0] = *v4;
      v41[1] = v18;
      v42[0] = &unk_282C11640;
      v42[1] = &unk_282C142B0;
      commonTypeDict_IntegerFormat4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
      mEMORY[0x277D3F198]5 = commonTypeDict_IntegerFormat4;
    }

    v19 = commonTypeDict_IntegerFormat4;
    v50[4] = commonTypeDict_IntegerFormat4;
    v49[5] = @"uAmps";
    v20 = +[PLDisplayAgent shouldLogFromDCP];
    if (v20)
    {
      mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    }

    else
    {
      v22 = *v10;
      v39[0] = *v4;
      v39[1] = v22;
      v40[0] = &unk_282C11640;
      v40[1] = &unk_282C142C8;
      commonTypeDict_IntegerFormat5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    }

    v50[5] = commonTypeDict_IntegerFormat5;
    v49[6] = @"EDRHeadroom";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v50[6] = commonTypeDict_IntegerFormat6;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:7];
    v54[1] = v25;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];

    if (v20)
    {

      commonTypeDict_IntegerFormat5 = mEMORY[0x277D3F198]6;
    }

    if (v15)
    {
    }

    if (v31)
    {
    }

    if (v35)
    {
    }

    if (v37)
    {
    }
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  return v6;
}

+ (id)entryEventForwardDefinitionDisplayBacklight
{
  v13[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
  {
    v12[0] = *MEMORY[0x277D3F4E8];
    v10 = *MEMORY[0x277D3F568];
    v11 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v13[0] = v2;
    v12[1] = *MEMORY[0x277D3F540];
    v8 = @"DisplayPower";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v9 = commonTypeDict_RealFormat;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v13[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  return v6;
}

+ (id)entryEventForwardDefinitionALSUserPreferences
{
  v104[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    v103[0] = *MEMORY[0x277D3F4E8];
    v3 = *MEMORY[0x277D3F590];
    v101[0] = *MEMORY[0x277D3F568];
    v101[1] = v3;
    v102[0] = &unk_282C1C218;
    v102[1] = &unk_282C11658;
    v101[2] = *MEMORY[0x277D3F588];
    v102[2] = &unk_282C11670;
    v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:3];
    v104[0] = v98;
    v103[1] = *MEMORY[0x277D3F540];
    v99[0] = @"E0a";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v100[0] = commonTypeDict_IntegerFormat;
    v99[1] = @"E0b";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v100[1] = commonTypeDict_IntegerFormat2;
    v99[2] = @"E1";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v100[2] = commonTypeDict_IntegerFormat3;
    v99[3] = @"E2";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v100[3] = commonTypeDict_IntegerFormat4;
    v99[4] = @"L0a";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
    v100[4] = commonTypeDict_RealFormat;
    v99[5] = @"L0b";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
    v100[5] = commonTypeDict_RealFormat2;
    v99[6] = @"L1";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
    v100[6] = commonTypeDict_RealFormat3;
    v99[7] = @"L2";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
    v100[7] = commonTypeDict_RealFormat4;
    v99[8] = @"S";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]9 commonTypeDict_RealFormat];
    v100[8] = commonTypeDict_RealFormat5;
    v99[9] = @"version";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v100[9] = commonTypeDict_IntegerFormat5;
    v99[10] = @"Lux";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
    v100[10] = commonTypeDict_IntegerFormat6;
    v99[11] = @"thirdSlope";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]12 commonTypeDict_RealFormat];
    v100[11] = commonTypeDict_RealFormat6;
    v99[12] = @"aabParamsUpdateOnly";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]13 commonTypeDict_BoolFormat];
    v100[12] = commonTypeDict_BoolFormat;
    v99[13] = @"auroraFactor";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat7 = [mEMORY[0x277D3F198]14 commonTypeDict_RealFormat];
    v100[13] = commonTypeDict_RealFormat7;
    v99[14] = @"autobrightnessEnabled";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]15 commonTypeDict_BoolFormat];
    v100[14] = commonTypeDict_BoolFormat2;
    v99[15] = @"colorAdaptationStrength";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat8 = [mEMORY[0x277D3F198]16 commonTypeDict_RealFormat];
    v100[15] = commonTypeDict_RealFormat8;
    v99[16] = @"colorAdaptationMode";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
    v100[16] = commonTypeDict_IntegerFormat7;
    v99[17] = @"cpmsMitigationLimitingBrightness";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]18 commonTypeDict_BoolFormat];
    v100[17] = commonTypeDict_BoolFormat3;
    v99[18] = @"darkThemeApplied";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat4 = [mEMORY[0x277D3F198]19 commonTypeDict_BoolFormat];
    v100[18] = commonTypeDict_BoolFormat4;
    v99[19] = @"delayedAPCE";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
    v100[19] = commonTypeDict_IntegerFormat8;
    v99[20] = @"delayedAPCEStatus";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
    v100[20] = commonTypeDict_IntegerFormat9;
    v99[21] = @"ecoModeEnabled";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat5 = [mEMORY[0x277D3F198]22 commonTypeDict_BoolFormat];
    v100[21] = commonTypeDict_BoolFormat5;
    v99[22] = @"ecoModeFactor";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
    v100[22] = commonTypeDict_IntegerFormat10;
    v99[23] = @"edrHeadroom";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat9 = [mEMORY[0x277D3F198]24 commonTypeDict_RealFormat];
    v100[23] = commonTypeDict_RealFormat9;
    v99[24] = @"landscapeOrientation";
    mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat6 = [mEMORY[0x277D3F198]25 commonTypeDict_BoolFormat];
    v100[24] = commonTypeDict_BoolFormat6;
    v99[25] = @"localTimestamp";
    mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_DateFormat = [mEMORY[0x277D3F198]26 commonTypeDict_DateFormat];
    v100[25] = commonTypeDict_DateFormat;
    v99[26] = @"nits";
    mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat10 = [mEMORY[0x277D3F198]27 commonTypeDict_RealFormat];
    v100[26] = commonTypeDict_RealFormat10;
    v99[27] = @"proxMitigationTriggered";
    mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat7 = [mEMORY[0x277D3F198]28 commonTypeDict_BoolFormat];
    v100[27] = commonTypeDict_BoolFormat7;
    v99[28] = @"rearLux";
    mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
    v100[28] = commonTypeDict_IntegerFormat11;
    v99[29] = @"rearLuxInUse";
    mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat8 = [mEMORY[0x277D3F198]30 commonTypeDict_BoolFormat];
    v100[29] = commonTypeDict_BoolFormat8;
    v99[30] = @"touchMitigationTriggered";
    mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat9 = [mEMORY[0x277D3F198]31 commonTypeDict_BoolFormat];
    v100[30] = commonTypeDict_BoolFormat9;
    v99[31] = @"trustedLux";
    mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat];
    v100[31] = commonTypeDict_IntegerFormat12;
    v99[32] = @"aabParamsUpdateReason";
    mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat];
    v100[32] = commonTypeDict_IntegerFormat13;
    v99[33] = @"inactiveLength";
    mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat];
    v100[33] = commonTypeDict_IntegerFormat14;
    v99[34] = @"inactiveStart";
    mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]35 commonTypeDict_IntegerFormat];
    v100[34] = commonTypeDict_IntegerFormat15;
    v99[35] = @"alternativeE0a";
    mEMORY[0x277D3F198]36 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]36 commonTypeDict_IntegerFormat];
    v100[35] = commonTypeDict_IntegerFormat16;
    v99[36] = @"alternativeE0b";
    mEMORY[0x277D3F198]37 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]37 commonTypeDict_IntegerFormat];
    v100[36] = commonTypeDict_IntegerFormat17;
    v99[37] = @"alternativeE1";
    mEMORY[0x277D3F198]38 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]38 commonTypeDict_IntegerFormat];
    v100[37] = commonTypeDict_IntegerFormat18;
    v99[38] = @"alternativeE2";
    mEMORY[0x277D3F198]39 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]39 commonTypeDict_IntegerFormat];
    v100[38] = commonTypeDict_IntegerFormat19;
    v99[39] = @"alternativeL0a";
    mEMORY[0x277D3F198]40 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]40 commonTypeDict_IntegerFormat];
    v100[39] = commonTypeDict_IntegerFormat20;
    v99[40] = @"alternativeL0b";
    mEMORY[0x277D3F198]41 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]41 commonTypeDict_IntegerFormat];
    v100[40] = commonTypeDict_IntegerFormat21;
    v99[41] = @"alternativeL1";
    mEMORY[0x277D3F198]42 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]42 commonTypeDict_IntegerFormat];
    v100[41] = commonTypeDict_IntegerFormat22;
    v99[42] = @"alternativeL2";
    mEMORY[0x277D3F198]43 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]43 commonTypeDict_IntegerFormat];
    v100[42] = commonTypeDict_IntegerFormat23;
    v99[43] = @"alternativeThirdSlope";
    mEMORY[0x277D3F198]44 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]44 commonTypeDict_IntegerFormat];
    v100[43] = commonTypeDict_IntegerFormat24;
    v99[44] = @"nitsDelta";
    mEMORY[0x277D3F198]45 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]45 commonTypeDict_IntegerFormat];
    v100[44] = commonTypeDict_IntegerFormat25;
    v99[45] = @"nitsDeltaAlternative";
    mEMORY[0x277D3F198]46 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]46 commonTypeDict_IntegerFormat];
    v100[45] = commonTypeDict_IntegerFormat26;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:46];
    v104[1] = v12;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:2];
  }

  return v2;
}

+ (id)entryEventForwardDefinitionALSEnabled
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1C1D8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"ALSEnabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardDefinitionALSPowerSaved
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogALSPowerSaved])
  {
    v12[0] = *MEMORY[0x277D3F4E8];
    v10 = *MEMORY[0x277D3F568];
    v11 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v13[0] = v2;
    v12[1] = *MEMORY[0x277D3F540];
    v8 = @"Power";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v9 = commonTypeDict_RealFormat;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v13[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  return v6;
}

+ (id)entryEventForwardDefinitionColorAdaptationMode
{
  v14[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CFD398] supportsAdaptation])
  {
    v13[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F508];
    v11[0] = *MEMORY[0x277D3F568];
    v11[1] = v2;
    v12[0] = &unk_282C1C1D8;
    v12[1] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v14[0] = v3;
    v13[1] = *MEMORY[0x277D3F540];
    v9 = @"CAModeEnabled";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
    v10 = commonTypeDict_BoolFormat;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v14[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  return v7;
}

+ (id)entryEventForwardDefinitionBlueLightReductionStatus
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogBLR])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v14 = *MEMORY[0x277D3F568];
    v15 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[0] = v2;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"BlueReductionEnabled";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
    v13[0] = commonTypeDict_BoolFormat;
    v12[1] = @"BlueReductionMode";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v13[1] = commonTypeDict_IntegerFormat;
    v12[2] = @"BlueReductionSunScheduleAllowed";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
    v13[2] = commonTypeDict_BoolFormat2;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v17[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  return v10;
}

+ (id)entryEventForwardDefinitionLuxStats
{
  v21[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogLuxStats])
  {
    v20[0] = *MEMORY[0x277D3F4E8];
    v18 = *MEMORY[0x277D3F568];
    v19 = &unk_282C1C1D8;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v21[0] = v15;
    v20[1] = *MEMORY[0x277D3F540];
    v16[0] = @"cappedLuxForAAB";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v17[0] = commonTypeDict_IntegerFormat;
    v16[1] = @"frontNits";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v17[1] = commonTypeDict_IntegerFormat2;
    v16[2] = @"gainChanged";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
    v17[2] = commonTypeDict_BoolFormat;
    v16[3] = @"rearNits";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v17[3] = commonTypeDict_IntegerFormat3;
    v16[4] = @"rearLux";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v17[4] = commonTypeDict_IntegerFormat4;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
    v21[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

+ (id)entryEventBackwardDefinitions
{
  v17[12] = *MEMORY[0x277D85DE8];
  v16[0] = @"Touch";
  v15 = +[PLDisplayAgent entryEventBackwardDefinitionTouch];
  v17[0] = v15;
  v16[1] = @"BlueLightParameters";
  v14 = +[PLDisplayAgent entryEventBackwardDefinitionBlueLightParameters];
  v17[1] = v14;
  v16[2] = @"HParameters";
  v13 = +[PLDisplayAgent entryEventBackwardDefinitionHarmonyParameters];
  v17[2] = v13;
  v16[3] = @"APLStats";
  v2 = +[PLDisplayAgent entryEventBackwardDefinitionAPLStats];
  v17[3] = v2;
  v16[4] = @"AZLStats";
  v3 = +[PLDisplayAgent entryEventBackwardDefinitionAZLStats];
  v17[4] = v3;
  v16[5] = @"AZLSnapshots";
  v4 = +[PLDisplayAgent entryEventBackwardDefinitionAZLSnapshots];
  v17[5] = v4;
  v16[6] = @"RampInfo";
  v5 = +[PLDisplayAgent entryEventBackwardDefinitionRampInfo];
  v17[6] = v5;
  v16[7] = @"CurveUpdate";
  v6 = +[PLDisplayAgent entryEventBackwardDefinitionCurveUpdate];
  v17[7] = v6;
  v16[8] = @"ALSThreshold";
  v7 = +[PLDisplayAgent entryEventBackwardDefinitionALSThreshold];
  v17[8] = v7;
  v16[9] = @"ALSSamplesBeforeWake";
  v8 = +[PLDisplayAgent entryEventBackwardDefinitionALSSamplesBeforeWake];
  v17[9] = v8;
  v16[10] = @"AmbientLight";
  v9 = +[PLDisplayAgent entryEventBackwardDefinitionAmbientLight];
  v17[10] = v9;
  v16[11] = @"DCPAODstats";
  v10 = +[PLDisplayAgent entryEventBackwardDefinitionDCPAODstats];
  v17[11] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:12];

  return v11;
}

+ (id)entryEventBackwardDefinitionTouch
{
  v51[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogTouch])
  {
    v50[0] = *MEMORY[0x277D3F4E8];
    v48 = *MEMORY[0x277D3F568];
    v49 = &unk_282C1C1D8;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v51[0] = v20;
    v50[1] = *MEMORY[0x277D3F540];
    v46[0] = @"Unknown";
    v3 = *MEMORY[0x277D3F5B0];
    v43[0] = *MEMORY[0x277D3F5A8];
    v2 = v43[0];
    v43[1] = v3;
    v45[0] = &unk_282C11628;
    v45[1] = @"s";
    v44 = *MEMORY[0x277D3F538];
    v4 = v44;
    v45[2] = &unk_282C142E0;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v43 count:3];
    v47[0] = v19;
    v46[1] = @"Active";
    v41[0] = v2;
    v41[1] = v3;
    v42[0] = &unk_282C11628;
    v42[1] = @"s";
    v41[2] = v4;
    v42[2] = &unk_282C142F8;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
    v47[1] = v18;
    v46[2] = @"Ready";
    v39[0] = v2;
    v39[1] = v3;
    v40[0] = &unk_282C11628;
    v40[1] = @"s";
    v39[2] = v4;
    v40[2] = &unk_282C14310;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
    v47[2] = v17;
    v46[3] = @"AutoReady";
    v37[0] = v2;
    v37[1] = v3;
    v38[0] = &unk_282C11628;
    v38[1] = @"s";
    v37[2] = v4;
    v38[2] = &unk_282C14328;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
    v47[3] = v16;
    v46[4] = @"UILock";
    v35[0] = v2;
    v35[1] = v3;
    v36[0] = &unk_282C11628;
    v36[1] = @"s";
    v35[2] = v4;
    v36[2] = &unk_282C14340;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
    v47[4] = v15;
    v46[5] = @"FaceDetected";
    v33[0] = v2;
    v33[1] = v3;
    v34[0] = &unk_282C11628;
    v34[1] = @"s";
    v33[2] = v4;
    v34[2] = &unk_282C14358;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
    v47[5] = v14;
    v46[6] = @"StationaryFingers";
    v31[0] = v2;
    v31[1] = v3;
    v32[0] = &unk_282C11628;
    v32[1] = @"s";
    v31[2] = v4;
    v32[2] = &unk_282C14370;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
    v47[6] = v13;
    v46[7] = @"AutoScan";
    v29[0] = v2;
    v29[1] = v3;
    v30[0] = &unk_282C11628;
    v30[1] = @"s";
    v29[2] = v4;
    v30[2] = &unk_282C14388;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
    v47[7] = v5;
    v46[8] = @"VSFOMCal";
    v27[0] = v2;
    v27[1] = v3;
    v28[0] = &unk_282C11628;
    v28[1] = @"s";
    v27[2] = v4;
    v28[2] = &unk_282C143A0;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
    v47[8] = v6;
    v46[9] = @"Anticipate";
    v25[0] = v2;
    v25[1] = v3;
    v26[0] = &unk_282C11628;
    v26[1] = @"s";
    v25[2] = v4;
    v26[2] = &unk_282C143B8;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
    v47[9] = v7;
    v46[10] = @"Off";
    v23[0] = v2;
    v23[1] = v3;
    v24[0] = &unk_282C11628;
    v24[1] = @"s";
    v23[2] = v4;
    v24[2] = &unk_282C143D0;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
    v47[10] = v8;
    v46[11] = @"On";
    v21[0] = v2;
    v21[1] = v3;
    v22[0] = &unk_282C11628;
    v22[1] = @"s";
    v21[2] = v4;
    v22[2] = &unk_282C143E8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v47[11] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:12];
    v51[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

+ (id)entryEventBackwardDefinitionHarmonyParameters
{
  v259[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CFD398] supportsAdaptation])
  {
    v258[0] = *MEMORY[0x277D3F4E8];
    v256 = *MEMORY[0x277D3F568];
    v257 = &unk_282C1C228;
    v253 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v257 forKeys:&v256 count:1];
    v259[0] = v253;
    v258[1] = *MEMORY[0x277D3F540];
    v254[0] = @"DCBins_0";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v255[0] = commonTypeDict_RealFormat;
    v254[1] = @"DCBins_1";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v255[1] = commonTypeDict_RealFormat2;
    v254[2] = @"DCBins_2";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v255[2] = commonTypeDict_RealFormat3;
    v254[3] = @"DCBins_3";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v255[3] = commonTypeDict_RealFormat4;
    v254[4] = @"DCBins_4";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
    v255[4] = commonTypeDict_RealFormat5;
    v254[5] = @"DCBins_5";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
    v255[5] = commonTypeDict_RealFormat6;
    v254[6] = @"DCBins_6";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
    v255[6] = commonTypeDict_RealFormat7;
    v254[7] = @"DCBins_7";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
    v255[7] = commonTypeDict_RealFormat8;
    v254[8] = @"DCBins_8";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_RealFormat];
    v255[8] = commonTypeDict_RealFormat9;
    v254[9] = @"DCBins_9";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_RealFormat];
    v255[9] = commonTypeDict_RealFormat10;
    v254[10] = @"DCBins_10";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_RealFormat];
    v255[10] = commonTypeDict_RealFormat11;
    v254[11] = @"DCBins_11";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_RealFormat];
    v255[11] = commonTypeDict_RealFormat12;
    v254[12] = @"DCBins_12";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_RealFormat];
    v255[12] = commonTypeDict_RealFormat13;
    v254[13] = @"DCBins_13";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_RealFormat];
    v255[13] = commonTypeDict_RealFormat14;
    v254[14] = @"DCBins_14";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat15 = [mEMORY[0x277D3F198]15 commonTypeDict_RealFormat];
    v255[14] = commonTypeDict_RealFormat15;
    v254[15] = @"DCBins_15";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat16 = [mEMORY[0x277D3F198]16 commonTypeDict_RealFormat];
    v255[15] = commonTypeDict_RealFormat16;
    v254[16] = @"DCBins_16";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat17 = [mEMORY[0x277D3F198]17 commonTypeDict_RealFormat];
    v255[16] = commonTypeDict_RealFormat17;
    v254[17] = @"ACBins_0";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat18 = [mEMORY[0x277D3F198]18 commonTypeDict_RealFormat];
    v255[17] = commonTypeDict_RealFormat18;
    v254[18] = @"ACBins_1";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat19 = [mEMORY[0x277D3F198]19 commonTypeDict_RealFormat];
    v255[18] = commonTypeDict_RealFormat19;
    v254[19] = @"ACBins_2";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat20 = [mEMORY[0x277D3F198]20 commonTypeDict_RealFormat];
    v255[19] = commonTypeDict_RealFormat20;
    v254[20] = @"ACBins_3";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat21 = [mEMORY[0x277D3F198]21 commonTypeDict_RealFormat];
    v255[20] = commonTypeDict_RealFormat21;
    v254[21] = @"ACBins_4";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat22 = [mEMORY[0x277D3F198]22 commonTypeDict_RealFormat];
    v255[21] = commonTypeDict_RealFormat22;
    v254[22] = @"ACBins_5";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat23 = [mEMORY[0x277D3F198]23 commonTypeDict_RealFormat];
    v255[22] = commonTypeDict_RealFormat23;
    v254[23] = @"ACBins_6";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat24 = [mEMORY[0x277D3F198]24 commonTypeDict_RealFormat];
    v255[23] = commonTypeDict_RealFormat24;
    v254[24] = @"ACBins_7";
    mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat25 = [mEMORY[0x277D3F198]25 commonTypeDict_RealFormat];
    v255[24] = commonTypeDict_RealFormat25;
    v254[25] = @"ACBins_8";
    mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat26 = [mEMORY[0x277D3F198]26 commonTypeDict_RealFormat];
    v255[25] = commonTypeDict_RealFormat26;
    v254[26] = @"ACBins_9";
    mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat27 = [mEMORY[0x277D3F198]27 commonTypeDict_RealFormat];
    v255[26] = commonTypeDict_RealFormat27;
    v254[27] = @"ACBins_10";
    mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat28 = [mEMORY[0x277D3F198]28 commonTypeDict_RealFormat];
    v255[27] = commonTypeDict_RealFormat28;
    v254[28] = @"ACBins_11";
    mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat29 = [mEMORY[0x277D3F198]29 commonTypeDict_RealFormat];
    v255[28] = commonTypeDict_RealFormat29;
    v254[29] = @"ACBins_12";
    mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat30 = [mEMORY[0x277D3F198]30 commonTypeDict_RealFormat];
    v255[29] = commonTypeDict_RealFormat30;
    v254[30] = @"ACBins_13";
    mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat31 = [mEMORY[0x277D3F198]31 commonTypeDict_RealFormat];
    v255[30] = commonTypeDict_RealFormat31;
    v254[31] = @"ACBins_14";
    mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat32 = [mEMORY[0x277D3F198]32 commonTypeDict_RealFormat];
    v255[31] = commonTypeDict_RealFormat32;
    v254[32] = @"ACBins_15";
    mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat33 = [mEMORY[0x277D3F198]33 commonTypeDict_RealFormat];
    v255[32] = commonTypeDict_RealFormat33;
    v254[33] = @"ACBins_16";
    mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat34 = [mEMORY[0x277D3F198]34 commonTypeDict_RealFormat];
    v255[33] = commonTypeDict_RealFormat34;
    v254[34] = @"ASBins_0";
    mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat35 = [mEMORY[0x277D3F198]35 commonTypeDict_RealFormat];
    v255[34] = commonTypeDict_RealFormat35;
    v254[35] = @"ASBins_1";
    mEMORY[0x277D3F198]36 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat36 = [mEMORY[0x277D3F198]36 commonTypeDict_RealFormat];
    v255[35] = commonTypeDict_RealFormat36;
    v254[36] = @"ASBins_2";
    mEMORY[0x277D3F198]37 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat37 = [mEMORY[0x277D3F198]37 commonTypeDict_RealFormat];
    v255[36] = commonTypeDict_RealFormat37;
    v254[37] = @"ASBins_3";
    mEMORY[0x277D3F198]38 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat38 = [mEMORY[0x277D3F198]38 commonTypeDict_RealFormat];
    v255[37] = commonTypeDict_RealFormat38;
    v254[38] = @"ASBins_4";
    mEMORY[0x277D3F198]39 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat39 = [mEMORY[0x277D3F198]39 commonTypeDict_RealFormat];
    v255[38] = commonTypeDict_RealFormat39;
    v254[39] = @"ASBins_5";
    mEMORY[0x277D3F198]40 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat40 = [mEMORY[0x277D3F198]40 commonTypeDict_RealFormat];
    v255[39] = commonTypeDict_RealFormat40;
    v254[40] = @"ASBins_6";
    mEMORY[0x277D3F198]41 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat41 = [mEMORY[0x277D3F198]41 commonTypeDict_RealFormat];
    v255[40] = commonTypeDict_RealFormat41;
    v254[41] = @"ASBins_7";
    mEMORY[0x277D3F198]42 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat42 = [mEMORY[0x277D3F198]42 commonTypeDict_RealFormat];
    v255[41] = commonTypeDict_RealFormat42;
    v254[42] = @"ASBins_8";
    mEMORY[0x277D3F198]43 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat43 = [mEMORY[0x277D3F198]43 commonTypeDict_RealFormat];
    v255[42] = commonTypeDict_RealFormat43;
    v254[43] = @"ASBins_9";
    mEMORY[0x277D3F198]44 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat44 = [mEMORY[0x277D3F198]44 commonTypeDict_RealFormat];
    v255[43] = commonTypeDict_RealFormat44;
    v254[44] = @"ACABins_0";
    mEMORY[0x277D3F198]45 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat45 = [mEMORY[0x277D3F198]45 commonTypeDict_RealFormat];
    v255[44] = commonTypeDict_RealFormat45;
    v254[45] = @"ACABins_1";
    mEMORY[0x277D3F198]46 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat46 = [mEMORY[0x277D3F198]46 commonTypeDict_RealFormat];
    v255[45] = commonTypeDict_RealFormat46;
    v254[46] = @"ACABins_2";
    mEMORY[0x277D3F198]47 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat47 = [mEMORY[0x277D3F198]47 commonTypeDict_RealFormat];
    v255[46] = commonTypeDict_RealFormat47;
    v254[47] = @"ACABins_3";
    mEMORY[0x277D3F198]48 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat48 = [mEMORY[0x277D3F198]48 commonTypeDict_RealFormat];
    v255[47] = commonTypeDict_RealFormat48;
    v254[48] = @"ACABins_4";
    mEMORY[0x277D3F198]49 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat49 = [mEMORY[0x277D3F198]49 commonTypeDict_RealFormat];
    v255[48] = commonTypeDict_RealFormat49;
    v254[49] = @"ACABins_5";
    mEMORY[0x277D3F198]50 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat50 = [mEMORY[0x277D3F198]50 commonTypeDict_RealFormat];
    v255[49] = commonTypeDict_RealFormat50;
    v254[50] = @"ACABins_6";
    mEMORY[0x277D3F198]51 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat51 = [mEMORY[0x277D3F198]51 commonTypeDict_RealFormat];
    v255[50] = commonTypeDict_RealFormat51;
    v254[51] = @"ACABins_7";
    mEMORY[0x277D3F198]52 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat52 = [mEMORY[0x277D3F198]52 commonTypeDict_RealFormat];
    v255[51] = commonTypeDict_RealFormat52;
    v254[52] = @"ACABins_8";
    mEMORY[0x277D3F198]53 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat53 = [mEMORY[0x277D3F198]53 commonTypeDict_RealFormat];
    v255[52] = commonTypeDict_RealFormat53;
    v254[53] = @"ACABins_9";
    mEMORY[0x277D3F198]54 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat54 = [mEMORY[0x277D3F198]54 commonTypeDict_RealFormat];
    v255[53] = commonTypeDict_RealFormat54;
    v254[54] = @"ACABins_10";
    mEMORY[0x277D3F198]55 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat55 = [mEMORY[0x277D3F198]55 commonTypeDict_RealFormat];
    v255[54] = commonTypeDict_RealFormat55;
    v254[55] = @"ACABins_11";
    mEMORY[0x277D3F198]56 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat56 = [mEMORY[0x277D3F198]56 commonTypeDict_RealFormat];
    v255[55] = commonTypeDict_RealFormat56;
    v254[56] = @"ACABins_12";
    mEMORY[0x277D3F198]57 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat57 = [mEMORY[0x277D3F198]57 commonTypeDict_RealFormat];
    v255[56] = commonTypeDict_RealFormat57;
    v254[57] = @"ACABins_13";
    mEMORY[0x277D3F198]58 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat58 = [mEMORY[0x277D3F198]58 commonTypeDict_RealFormat];
    v255[57] = commonTypeDict_RealFormat58;
    v254[58] = @"ACABins_14";
    mEMORY[0x277D3F198]59 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat59 = [mEMORY[0x277D3F198]59 commonTypeDict_RealFormat];
    v255[58] = commonTypeDict_RealFormat59;
    v254[59] = @"ACABins_15";
    mEMORY[0x277D3F198]60 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat60 = [mEMORY[0x277D3F198]60 commonTypeDict_RealFormat];
    v255[59] = commonTypeDict_RealFormat60;
    v254[60] = @"ACABins_16";
    mEMORY[0x277D3F198]61 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat61 = [mEMORY[0x277D3F198]61 commonTypeDict_RealFormat];
    v255[60] = commonTypeDict_RealFormat61;
    v254[61] = @"ACABins_17";
    mEMORY[0x277D3F198]62 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat62 = [mEMORY[0x277D3F198]62 commonTypeDict_RealFormat];
    v255[61] = commonTypeDict_RealFormat62;
    v254[62] = @"ACABins_18";
    mEMORY[0x277D3F198]63 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat63 = [mEMORY[0x277D3F198]63 commonTypeDict_RealFormat];
    v255[62] = commonTypeDict_RealFormat63;
    v254[63] = @"ACABins_19";
    mEMORY[0x277D3F198]64 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat64 = [mEMORY[0x277D3F198]64 commonTypeDict_RealFormat];
    v255[63] = commonTypeDict_RealFormat64;
    v254[64] = @"ACABins_20";
    mEMORY[0x277D3F198]65 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat65 = [mEMORY[0x277D3F198]65 commonTypeDict_RealFormat];
    v255[64] = commonTypeDict_RealFormat65;
    v254[65] = @"ACABins_21";
    mEMORY[0x277D3F198]66 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat66 = [mEMORY[0x277D3F198]66 commonTypeDict_RealFormat];
    v255[65] = commonTypeDict_RealFormat66;
    v254[66] = @"ACABins_22";
    mEMORY[0x277D3F198]67 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat67 = [mEMORY[0x277D3F198]67 commonTypeDict_RealFormat];
    v255[66] = commonTypeDict_RealFormat67;
    v254[67] = @"ACABins_23";
    mEMORY[0x277D3F198]68 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat68 = [mEMORY[0x277D3F198]68 commonTypeDict_RealFormat];
    v255[67] = commonTypeDict_RealFormat68;
    v254[68] = @"ACABins_24";
    mEMORY[0x277D3F198]69 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat69 = [mEMORY[0x277D3F198]69 commonTypeDict_RealFormat];
    v255[68] = commonTypeDict_RealFormat69;
    v254[69] = @"ACABins_25";
    mEMORY[0x277D3F198]70 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat70 = [mEMORY[0x277D3F198]70 commonTypeDict_RealFormat];
    v255[69] = commonTypeDict_RealFormat70;
    v254[70] = @"ACABins_26";
    mEMORY[0x277D3F198]71 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat71 = [mEMORY[0x277D3F198]71 commonTypeDict_RealFormat];
    v255[70] = commonTypeDict_RealFormat71;
    v254[71] = @"ACABins_27";
    mEMORY[0x277D3F198]72 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat72 = [mEMORY[0x277D3F198]72 commonTypeDict_RealFormat];
    v255[71] = commonTypeDict_RealFormat72;
    v254[72] = @"ACABins_28";
    mEMORY[0x277D3F198]73 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat73 = [mEMORY[0x277D3F198]73 commonTypeDict_RealFormat];
    v255[72] = commonTypeDict_RealFormat73;
    v254[73] = @"ACABins_29";
    mEMORY[0x277D3F198]74 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat74 = [mEMORY[0x277D3F198]74 commonTypeDict_RealFormat];
    v255[73] = commonTypeDict_RealFormat74;
    v254[74] = @"ACABins_30";
    mEMORY[0x277D3F198]75 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat75 = [mEMORY[0x277D3F198]75 commonTypeDict_RealFormat];
    v255[74] = commonTypeDict_RealFormat75;
    v254[75] = @"ACABins_31";
    mEMORY[0x277D3F198]76 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat76 = [mEMORY[0x277D3F198]76 commonTypeDict_RealFormat];
    v255[75] = commonTypeDict_RealFormat76;
    v254[76] = @"ACABins_32";
    mEMORY[0x277D3F198]77 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat77 = [mEMORY[0x277D3F198]77 commonTypeDict_RealFormat];
    v255[76] = commonTypeDict_RealFormat77;
    v254[77] = @"ACABins_33";
    mEMORY[0x277D3F198]78 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat78 = [mEMORY[0x277D3F198]78 commonTypeDict_RealFormat];
    v255[77] = commonTypeDict_RealFormat78;
    v254[78] = @"ACABins_34";
    mEMORY[0x277D3F198]79 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat79 = [mEMORY[0x277D3F198]79 commonTypeDict_RealFormat];
    v255[78] = commonTypeDict_RealFormat79;
    v254[79] = @"ACABins_35";
    mEMORY[0x277D3F198]80 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat80 = [mEMORY[0x277D3F198]80 commonTypeDict_RealFormat];
    v255[79] = commonTypeDict_RealFormat80;
    v254[80] = @"ACABins_36";
    mEMORY[0x277D3F198]81 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat81 = [mEMORY[0x277D3F198]81 commonTypeDict_RealFormat];
    v255[80] = commonTypeDict_RealFormat81;
    v254[81] = @"ACABins_37";
    mEMORY[0x277D3F198]82 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat82 = [mEMORY[0x277D3F198]82 commonTypeDict_RealFormat];
    v255[81] = commonTypeDict_RealFormat82;
    v254[82] = @"ACABins_38";
    mEMORY[0x277D3F198]83 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat83 = [mEMORY[0x277D3F198]83 commonTypeDict_RealFormat];
    v255[82] = commonTypeDict_RealFormat83;
    v254[83] = @"ACABins_39";
    mEMORY[0x277D3F198]84 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat84 = [mEMORY[0x277D3F198]84 commonTypeDict_RealFormat];
    v255[83] = commonTypeDict_RealFormat84;
    v254[84] = @"ACABins_40";
    mEMORY[0x277D3F198]85 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat85 = [mEMORY[0x277D3F198]85 commonTypeDict_RealFormat];
    v255[84] = commonTypeDict_RealFormat85;
    v254[85] = @"ACABins_41";
    mEMORY[0x277D3F198]86 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat86 = [mEMORY[0x277D3F198]86 commonTypeDict_RealFormat];
    v255[85] = commonTypeDict_RealFormat86;
    v254[86] = @"ACABins_42";
    mEMORY[0x277D3F198]87 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat87 = [mEMORY[0x277D3F198]87 commonTypeDict_RealFormat];
    v255[86] = commonTypeDict_RealFormat87;
    v254[87] = @"ACABins_43";
    mEMORY[0x277D3F198]88 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat88 = [mEMORY[0x277D3F198]88 commonTypeDict_RealFormat];
    v255[87] = commonTypeDict_RealFormat88;
    v254[88] = @"ACABins_44";
    mEMORY[0x277D3F198]89 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat89 = [mEMORY[0x277D3F198]89 commonTypeDict_RealFormat];
    v255[88] = commonTypeDict_RealFormat89;
    v254[89] = @"ACABins_45";
    mEMORY[0x277D3F198]90 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat90 = [mEMORY[0x277D3F198]90 commonTypeDict_RealFormat];
    v255[89] = commonTypeDict_RealFormat90;
    v254[90] = @"ACTBins_0";
    mEMORY[0x277D3F198]91 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]91 commonTypeDict_IntegerFormat];
    v255[90] = commonTypeDict_IntegerFormat;
    v254[91] = @"ACTBins_1";
    mEMORY[0x277D3F198]92 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]92 commonTypeDict_IntegerFormat];
    v255[91] = commonTypeDict_IntegerFormat2;
    v254[92] = @"ACTBins_2";
    mEMORY[0x277D3F198]93 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]93 commonTypeDict_IntegerFormat];
    v255[92] = commonTypeDict_IntegerFormat3;
    v254[93] = @"ACTBins_3";
    mEMORY[0x277D3F198]94 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]94 commonTypeDict_IntegerFormat];
    v255[93] = commonTypeDict_IntegerFormat4;
    v254[94] = @"ACTBins_4";
    mEMORY[0x277D3F198]95 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]95 commonTypeDict_IntegerFormat];
    v255[94] = commonTypeDict_IntegerFormat5;
    v254[95] = @"ACTBins_5";
    mEMORY[0x277D3F198]96 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]96 commonTypeDict_IntegerFormat];
    v255[95] = commonTypeDict_IntegerFormat6;
    v254[96] = @"ACTBins_6";
    mEMORY[0x277D3F198]97 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]97 commonTypeDict_IntegerFormat];
    v255[96] = commonTypeDict_IntegerFormat7;
    v254[97] = @"ACTBins_7";
    mEMORY[0x277D3F198]98 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]98 commonTypeDict_IntegerFormat];
    v255[97] = commonTypeDict_IntegerFormat8;
    v254[98] = @"ACTBins_8";
    mEMORY[0x277D3F198]99 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]99 commonTypeDict_IntegerFormat];
    v255[98] = commonTypeDict_IntegerFormat9;
    v254[99] = @"ACTBins_9";
    mEMORY[0x277D3F198]100 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]100 commonTypeDict_IntegerFormat];
    v255[99] = commonTypeDict_IntegerFormat10;
    v254[100] = @"ACTBins_10";
    mEMORY[0x277D3F198]101 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]101 commonTypeDict_IntegerFormat];
    v255[100] = commonTypeDict_IntegerFormat11;
    v254[101] = @"ACTBins_11";
    mEMORY[0x277D3F198]102 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]102 commonTypeDict_IntegerFormat];
    v255[101] = commonTypeDict_IntegerFormat12;
    v254[102] = @"ACTBins_12";
    mEMORY[0x277D3F198]103 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]103 commonTypeDict_IntegerFormat];
    v255[102] = commonTypeDict_IntegerFormat13;
    v254[103] = @"ACTBins_13";
    mEMORY[0x277D3F198]104 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]104 commonTypeDict_IntegerFormat];
    v255[103] = commonTypeDict_IntegerFormat14;
    v254[104] = @"ACTBins_14";
    mEMORY[0x277D3F198]105 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]105 commonTypeDict_IntegerFormat];
    v255[104] = commonTypeDict_IntegerFormat15;
    v254[105] = @"ACTBins_15";
    mEMORY[0x277D3F198]106 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]106 commonTypeDict_IntegerFormat];
    v255[105] = commonTypeDict_IntegerFormat16;
    v254[106] = @"ACTBins_16";
    mEMORY[0x277D3F198]107 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]107 commonTypeDict_IntegerFormat];
    v255[106] = commonTypeDict_IntegerFormat17;
    v254[107] = @"DCTBins_0";
    mEMORY[0x277D3F198]108 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]108 commonTypeDict_IntegerFormat];
    v255[107] = commonTypeDict_IntegerFormat18;
    v254[108] = @"DCTBins_1";
    mEMORY[0x277D3F198]109 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]109 commonTypeDict_IntegerFormat];
    v255[108] = commonTypeDict_IntegerFormat19;
    v254[109] = @"DCTBins_2";
    mEMORY[0x277D3F198]110 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]110 commonTypeDict_IntegerFormat];
    v255[109] = commonTypeDict_IntegerFormat20;
    v254[110] = @"DCTBins_3";
    mEMORY[0x277D3F198]111 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]111 commonTypeDict_IntegerFormat];
    v255[110] = commonTypeDict_IntegerFormat21;
    v254[111] = @"DCTBins_4";
    mEMORY[0x277D3F198]112 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]112 commonTypeDict_IntegerFormat];
    v255[111] = commonTypeDict_IntegerFormat22;
    v254[112] = @"DCTBins_5";
    mEMORY[0x277D3F198]113 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]113 commonTypeDict_IntegerFormat];
    v255[112] = commonTypeDict_IntegerFormat23;
    v254[113] = @"DCTBins_6";
    mEMORY[0x277D3F198]114 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]114 commonTypeDict_IntegerFormat];
    v255[113] = commonTypeDict_IntegerFormat24;
    v254[114] = @"DCTBins_7";
    mEMORY[0x277D3F198]115 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]115 commonTypeDict_IntegerFormat];
    v255[114] = commonTypeDict_IntegerFormat25;
    v254[115] = @"DCTBins_8";
    mEMORY[0x277D3F198]116 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]116 commonTypeDict_IntegerFormat];
    v255[115] = commonTypeDict_IntegerFormat26;
    v254[116] = @"DCTBins_9";
    mEMORY[0x277D3F198]117 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat27 = [mEMORY[0x277D3F198]117 commonTypeDict_IntegerFormat];
    v255[116] = commonTypeDict_IntegerFormat27;
    v254[117] = @"DCTBins_10";
    mEMORY[0x277D3F198]118 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat28 = [mEMORY[0x277D3F198]118 commonTypeDict_IntegerFormat];
    v255[117] = commonTypeDict_IntegerFormat28;
    v254[118] = @"DCTBins_11";
    mEMORY[0x277D3F198]119 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat29 = [mEMORY[0x277D3F198]119 commonTypeDict_IntegerFormat];
    v255[118] = commonTypeDict_IntegerFormat29;
    v254[119] = @"DCTBins_12";
    mEMORY[0x277D3F198]120 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat30 = [mEMORY[0x277D3F198]120 commonTypeDict_IntegerFormat];
    v255[119] = commonTypeDict_IntegerFormat30;
    v254[120] = @"DCTBins_13";
    mEMORY[0x277D3F198]121 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat31 = [mEMORY[0x277D3F198]121 commonTypeDict_IntegerFormat];
    v255[120] = commonTypeDict_IntegerFormat31;
    v254[121] = @"DCTBins_14";
    mEMORY[0x277D3F198]122 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat32 = [mEMORY[0x277D3F198]122 commonTypeDict_IntegerFormat];
    v255[121] = commonTypeDict_IntegerFormat32;
    v254[122] = @"DCTBins_15";
    mEMORY[0x277D3F198]123 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat33 = [mEMORY[0x277D3F198]123 commonTypeDict_IntegerFormat];
    v255[122] = commonTypeDict_IntegerFormat33;
    v254[123] = @"DCTBins_16";
    mEMORY[0x277D3F198]124 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat34 = [mEMORY[0x277D3F198]124 commonTypeDict_IntegerFormat];
    v255[123] = commonTypeDict_IntegerFormat34;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v255 forKeys:v254 count:124];
    v259[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v259 forKeys:v258 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

+ (id)entryEventBackwardDefinitionBlueLightParameters
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogBLR])
  {
    v18[0] = *MEMORY[0x277D3F4E8];
    v16 = *MEMORY[0x277D3F568];
    v17 = &unk_282C1C1D8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v19[0] = v13;
    v18[1] = *MEMORY[0x277D3F540];
    v14[0] = @"AvgBacklightNits";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v15[0] = commonTypeDict_RealFormat;
    v14[1] = @"AvgLogicalBrightnessNits";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v15[1] = commonTypeDict_RealFormat2;
    v14[2] = @"BlueLightReductionOffTime";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v15[2] = commonTypeDict_RealFormat3;
    v14[3] = @"BlueLightReductionOnTime";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v15[3] = commonTypeDict_RealFormat4;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
    v19[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

+ (id)entryEventBackwardDefinitionRampInfo
{
  v57[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v56[0] = *MEMORY[0x277D3F4E8];
    v54 = *MEMORY[0x277D3F568];
    v55 = &unk_282C1C1D8;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v57[0] = v51;
    v56[1] = *MEMORY[0x277D3F540];
    v52[0] = @"AAP_NumberOfUpdates";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v53[0] = commonTypeDict_IntegerFormat;
    v52[1] = @"AAP_RampFrequency";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v53[1] = commonTypeDict_IntegerFormat2;
    v52[2] = @"AAP_RampLength";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v53[2] = commonTypeDict_RealFormat;
    v52[3] = @"AAP_RampOrigin";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v53[3] = commonTypeDict_RealFormat2;
    v52[4] = @"AAP_RampTarget";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
    v53[4] = commonTypeDict_RealFormat3;
    v52[5] = @"Colour_NumberOfUpdates";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v53[5] = commonTypeDict_IntegerFormat3;
    v52[6] = @"Colour_RampFrequency";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v53[6] = commonTypeDict_IntegerFormat4;
    v52[7] = @"Colour_RampLength";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
    v53[7] = commonTypeDict_RealFormat4;
    v52[8] = @"Colour_RampOrigin_X";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]9 commonTypeDict_RealFormat];
    v53[8] = commonTypeDict_RealFormat5;
    v52[9] = @"Colour_RampOrigin_Y";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]10 commonTypeDict_RealFormat];
    v53[9] = commonTypeDict_RealFormat6;
    v52[10] = @"Colour_RampTarget_X";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat7 = [mEMORY[0x277D3F198]11 commonTypeDict_RealFormat];
    v53[10] = commonTypeDict_RealFormat7;
    v52[11] = @"Colour_RampTarget_Y";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat8 = [mEMORY[0x277D3F198]12 commonTypeDict_RealFormat];
    v53[11] = commonTypeDict_RealFormat8;
    v52[12] = @"SDR_NumberOfUpdates";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
    v53[12] = commonTypeDict_IntegerFormat5;
    v52[13] = @"SDR_RampFrequency";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
    v53[13] = commonTypeDict_IntegerFormat6;
    v52[14] = @"SDR_RampLength";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat9 = [mEMORY[0x277D3F198]15 commonTypeDict_RealFormat];
    v53[14] = commonTypeDict_RealFormat9;
    v52[15] = @"SDR_RampOrigin";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat10 = [mEMORY[0x277D3F198]16 commonTypeDict_RealFormat];
    v53[15] = commonTypeDict_RealFormat10;
    v52[16] = @"SDR_RampTarget";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat11 = [mEMORY[0x277D3F198]17 commonTypeDict_RealFormat];
    v53[16] = commonTypeDict_RealFormat11;
    v52[17] = @"EDR_NumberOfUpdates";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
    v53[17] = commonTypeDict_IntegerFormat7;
    v52[18] = @"EDR_RampFrequency";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
    v53[18] = commonTypeDict_IntegerFormat8;
    v52[19] = @"EDR_RampLength";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat12 = [mEMORY[0x277D3F198]20 commonTypeDict_RealFormat];
    v53[19] = commonTypeDict_RealFormat12;
    v52[20] = @"EDR_RampOrigin";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat13 = [mEMORY[0x277D3F198]21 commonTypeDict_RealFormat];
    v53[20] = commonTypeDict_RealFormat13;
    v52[21] = @"EDR_RampTarget";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat14 = [mEMORY[0x277D3F198]22 commonTypeDict_RealFormat];
    v53[21] = commonTypeDict_RealFormat14;
    v52[22] = @"isFlipbookActive";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
    v53[22] = commonTypeDict_IntegerFormat9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:23];
    v57[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

+ (id)entryEventBackwardDefinitionCurveUpdate
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v14 = *MEMORY[0x277D3F568];
    v15 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[0] = v2;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"lux";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v13[0] = commonTypeDict_IntegerFormat;
    v12[1] = @"nits";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v13[1] = commonTypeDict_IntegerFormat2;
    v12[2] = @"level";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v13[2] = commonTypeDict_IntegerFormat3;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v17[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  return v10;
}

+ (id)entryEventBackwardDefinitionALSThreshold
{
  v19[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v18[0] = *MEMORY[0x277D3F4E8];
    v16 = *MEMORY[0x277D3F568];
    v17 = &unk_282C1C1D8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v19[0] = v13;
    v18[1] = *MEMORY[0x277D3F540];
    v14[0] = @"WakeReason";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v15[0] = commonTypeDict_StringFormat;
    v14[1] = @"Lux";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v15[1] = commonTypeDict_RealFormat;
    v14[2] = @"DimThreshold";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v15[2] = commonTypeDict_RealFormat2;
    v14[3] = @"BrightenThreshold";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v15[3] = commonTypeDict_RealFormat3;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
    v19[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

+ (id)entryEventBackwardDefinitionALSSamplesBeforeWake
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v14 = *MEMORY[0x277D3F568];
    v15 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[0] = v2;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"Lux";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v13[0] = commonTypeDict_RealFormat;
    v12[1] = @"colorX";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v13[1] = commonTypeDict_RealFormat2;
    v12[2] = @"colorY";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v13[2] = commonTypeDict_RealFormat3;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v17[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  return v10;
}

+ (id)entryEventBackwardDefinitionAmbientLight
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v14 = *MEMORY[0x277D3F568];
    v15 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[0] = v2;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"Lux";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v13[0] = commonTypeDict_RealFormat;
    v12[1] = @"colorX";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v13[1] = commonTypeDict_RealFormat2;
    v12[2] = @"colorY";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v13[2] = commonTypeDict_RealFormat3;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v17[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  return v10;
}

+ (id)entryEventBackwardDefinitionAPLStats
{
  v28[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogAPL])
  {
    v27[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v25[0] = *MEMORY[0x277D3F568];
    v25[1] = v2;
    v26[0] = &unk_282C1C238;
    v26[1] = @"logDisplayAPL";
    v3 = *MEMORY[0x277D3F590];
    v25[2] = *MEMORY[0x277D3F4D8];
    v25[3] = v3;
    v26[2] = MEMORY[0x277CBEC38];
    v26[3] = &unk_282C11688;
    v4 = *MEMORY[0x277D3F4A0];
    v25[4] = *MEMORY[0x277D3F588];
    v25[5] = v4;
    v26[4] = &unk_282C1C248;
    v26[5] = MEMORY[0x277CBEC38];
    v25[6] = *MEMORY[0x277D3F4F0];
    v26[6] = &unk_282C14400;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];
    v28[0] = v22;
    v27[1] = *MEMORY[0x277D3F540];
    v23[0] = @"bundleID";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
    v24[0] = commonTypeDict_StringFormat_withBundleID;
    v23[1] = @"AvgRed";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v24[1] = commonTypeDict_IntegerFormat;
    v23[2] = @"AvgGreen";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v24[2] = commonTypeDict_IntegerFormat2;
    v23[3] = @"AvgBlue";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v24[3] = commonTypeDict_IntegerFormat3;
    v23[4] = @"Frames";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v24[4] = commonTypeDict_IntegerFormat4;
    v23[5] = @"AvgPower";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
    v24[5] = commonTypeDict_RealFormat;
    v23[6] = @"AvgAPL";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
    v24[6] = commonTypeDict_RealFormat2;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:7];
    v28[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  }

  else
  {
    v14 = MEMORY[0x277CBEC10];
  }

  return v14;
}

+ (id)entryEventBackwardDefinitionAZLStats
{
  v22[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasCapability:8])
  {
    v21[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4D8];
    v19[0] = *MEMORY[0x277D3F568];
    v19[1] = v2;
    v20[0] = &unk_282C1C1D8;
    v20[1] = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v22[0] = v16;
    v21[1] = *MEMORY[0x277D3F540];
    v17[0] = @"AvgPower";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v18[0] = commonTypeDict_IntegerFormat;
    v17[1] = @"AZLAccum";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v18[1] = commonTypeDict_IntegerFormat2;
    v17[2] = @"NitsAccum";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v18[2] = commonTypeDict_IntegerFormat3;
    v17[3] = @"BLUpdateCount";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v18[3] = commonTypeDict_IntegerFormat4;
    v17[4] = @"BLFrameCount";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v18[4] = commonTypeDict_IntegerFormat5;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
    v22[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  return v12;
}

+ (id)entryEventBackwardDefinitionAZLSnapshots
{
  v26[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasCapability:8])
  {
    v25[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F580];
    v23[0] = *MEMORY[0x277D3F568];
    v23[1] = v2;
    v24[0] = &unk_282C1C1D8;
    v24[1] = MEMORY[0x277CBEC38];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v26[0] = v20;
    v25[1] = *MEMORY[0x277D3F540];
    v21[0] = @"PacketID";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v22[0] = commonTypeDict_IntegerFormat;
    v21[1] = @"VLED";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v22[1] = commonTypeDict_IntegerFormat2;
    v21[2] = @"MaxRowCurrent";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v22[2] = commonTypeDict_IntegerFormat3;
    v21[3] = @"NitsAccum";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v22[3] = commonTypeDict_IntegerFormat4;
    v21[4] = @"AverageCurrent";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v22[4] = commonTypeDict_IntegerFormat5;
    v21[5] = @"AZL";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v22[5] = commonTypeDict_IntegerFormat6;
    v21[6] = @"SystemNits";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v22[6] = commonTypeDict_IntegerFormat7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];
    v26[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  return v12;
}

+ (id)entryEventBackwardDefinitionDCPAODstats
{
  v39[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v38[0] = *MEMORY[0x277D3F4E8];
    v36 = *MEMORY[0x277D3F568];
    v37 = &unk_282C1C228;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v39[0] = v33;
    v38[1] = *MEMORY[0x277D3F540];
    v34[0] = @"awake_count";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v35[0] = commonTypeDict_IntegerFormat;
    v34[1] = @"media_count";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v35[1] = commonTypeDict_IntegerFormat2;
    v34[2] = @"flipbook_count";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v35[2] = commonTypeDict_IntegerFormat3;
    v34[3] = @"flipbook_delay";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v35[3] = commonTypeDict_IntegerFormat4;
    v34[4] = @"media_scanout";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v35[4] = commonTypeDict_IntegerFormat5;
    v34[5] = @"ambient_count";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v35[5] = commonTypeDict_IntegerFormat6;
    v34[6] = @"prc_repeat_coun";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v35[6] = commonTypeDict_IntegerFormat7;
    v34[7] = @"pdc_repeat_coun";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v35[7] = commonTypeDict_IntegerFormat8;
    v34[8] = @"llm_count";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
    v35[8] = commonTypeDict_IntegerFormat9;
    v34[9] = @"apl_sum";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v35[9] = commonTypeDict_IntegerFormat10;
    v34[10] = @"apl_count";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
    v35[10] = commonTypeDict_IntegerFormat11;
    v34[11] = @"1hz_flipbook_frame_count";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
    v35[11] = commonTypeDict_IntegerFormat12;
    v34[12] = @"1hz_frame_miss_count";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
    v35[12] = commonTypeDict_IntegerFormat13;
    v34[13] = @"1hz_bic_accum_count";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
    v35[13] = commonTypeDict_IntegerFormat14;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:14];
    v39[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

+ (id)entryAggregateDefinitions
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"UserTouch";
  v2 = +[PLDisplayAgent entryAggregateDefinitionUserTouch];
  v6[1] = @"ScreenOn";
  v7[0] = v2;
  v3 = +[PLDisplayAgent entryAggregateDefinitionScreenOn];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)entryAggregateDefinitionUserTouch
{
  v21[4] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogTouch])
  {
    v20[0] = *MEMORY[0x277D3F4E8];
    v18 = *MEMORY[0x277D3F568];
    v19 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v21[0] = v2;
    v20[1] = *MEMORY[0x277D3F540];
    v16[0] = @"UserTouchCount";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_aggregateFunction_sum = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_aggregateFunction_sum];
    v16[1] = @"UserTouchTime";
    v17[0] = commonTypeDict_IntegerFormat_aggregateFunction_sum;
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat_aggregateFunction_sum];
    v17[1] = commonTypeDict_RealFormat_aggregateFunction_sum;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v21[1] = v7;
    v20[2] = *MEMORY[0x277D3F478];
    v14 = &unk_282C1C258;
    v12 = *MEMORY[0x277D3F470];
    v13 = &unk_282C1C268;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v15 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v20[3] = *MEMORY[0x277D3F488];
    v21[2] = v9;
    v21[3] = &unk_282C14418;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  return v10;
}

- (PLDisplayAgent)init
{
  v101 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    goto LABEL_2;
  }

  v99.receiver = self;
  v99.super_class = PLDisplayAgent;
  v4 = [(PLAgent *)&v99 init];
  if (!v4)
  {
LABEL_63:
    self = v4;
    selfCopy = self;
    goto LABEL_64;
  }

  if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
  {
    mEMORY[0x277CF0880] = [MEMORY[0x277CF0880] sharedBacklight];
    [mEMORY[0x277CF0880] addObserver:v4];

    workQueue = [(PLOperator *)v4 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __22__PLDisplayAgent_init__block_invoke;
    block[3] = &unk_2782591D0;
    v98 = v4;
    dispatch_async(workQueue, block);
  }

  v4->_alsOn = [(PLDisplayAgent *)v4 isAlsEnabled];
  v4->_lastALSPowerSaved = 1.79769313e308;
  v4->_isFirstTimeModeling = 1;
  v4->_displaymNits = 0.0;
  v4->_realmNits = 0.0;
  v4->_autobrightnessmNits = 0.0;
  v4->_ShouldLogAmbient = [MEMORY[0x277D3F180] BOOLForKey:@"AmbientFullMode" ifNotSet:0];
  v4->_lastRearLuxValue = -1;
  v4->_supportsFinalBrightnessCommit = 0;
  v7 = 0x277CBE000uLL;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (([MEMORY[0x277D3F208] isiPad] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isiPod") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isiPhone") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isMac"))
  {
    [v8 addObject:@"BacklightPowerMilliWatts"];
    [v8 addObject:@"BacklightPowerNits"];
    [v8 addObject:@"DisplayBrightness"];
    [v8 addObject:@"CBSupportsFinalCommit"];
    [v8 addObject:@"CBFinalBrightnessCommit"];
    [v8 addObject:@"DisplayBrightnessAuto"];
    [v8 addObject:@"PowerLogReport"];
    [v8 addObject:@"CBBlueReductionStatus"];
    [v8 addObject:@"BrightnessTransaction"];
    if ([MEMORY[0x277D3F208] hasAOD])
    {
      [v8 addObject:@"AODRampTelemetry"];
      [v8 addObject:@"AODCurveUpdate"];
      [v8 addObject:@"AODWakeFromALSThreshold"];
      [v8 addObject:@"CBAmbientLightTelemetry"];
    }

    if (+[PLDisplayAgent shouldLogLuxStats])
    {
      v9 = @"RLuxStats";
LABEL_15:
      [v8 addObject:v9];
    }
  }

  else if ([MEMORY[0x277D3F208] isWatch])
  {
    v9 = @"InactiveScreenHistory";
    goto LABEL_15;
  }

  if ([MEMORY[0x277CFD398] supportsAdaptation])
  {
    v10 = objc_alloc_init(MEMORY[0x277CFD398]);
    colorAdaptationClient = v4->_colorAdaptationClient;
    v4->_colorAdaptationClient = v10;

    if (v4->_colorAdaptationClient)
    {
      [v8 addObject:@"ColorAdaptationEnabled"];
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __22__PLDisplayAgent_init__block_invoke_2;
      v96[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v96[4] = v12;
      if (qword_2811F4930 != -1)
      {
        dispatch_once(&qword_2811F4930, v96);
      }

      if (_MergedGlobals_1_28 == 1)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"CBAdaptationClient init fail! Cannot get color adaptation information!"];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        lastPathComponent = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]"];
        [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:1484];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v13;
          _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v7 = 0x277CBE000;
      }
    }
  }

  pendingBacklightEntryDate = v4->_pendingBacklightEntryDate;
  v4->_pendingBacklightEntryDate = 0;

  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  pendingBacklightEntry = v4->_pendingBacklightEntry;
  v4->_pendingBacklightEntry = v20;

  v22 = objc_alloc(MEMORY[0x277D3F250]);
  workQueue2 = [(PLOperator *)v4 workQueue];
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = __22__PLDisplayAgent_init__block_invoke_1431;
  v94[3] = &unk_278259C40;
  v24 = v4;
  v95 = v24;
  v25 = [v22 initWithFireDate:0 withInterval:1 withTolerance:0 repeats:workQueue2 withUserInfo:v94 withQueue:1.0 withBlock:0.0];
  v26 = v24[18];
  v24[18] = v25;

  [v24[18] arm];
  v27 = objc_alloc_init(MEMORY[0x277CFD390]);
  v28 = v24[16];
  v24[16] = v27;

  if (!v24[16] && [MEMORY[0x277D3F180] debugEnabled])
  {
    v29 = objc_opt_class();
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __22__PLDisplayAgent_init__block_invoke_1442;
    v93[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v93[4] = v29;
    if (qword_2811F4940 != -1)
    {
      dispatch_once(&qword_2811F4940, v93);
    }

    if (byte_2811F48F2 == 1)
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"BrightnessSystemClient init fail!"];
      v31 = MEMORY[0x277D3F178];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent2 = [v32 lastPathComponent];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]"];
      [v31 logMessage:v30 fromFile:lastPathComponent2 fromFunction:v34 fromLineNumber:1512];

      v35 = PLLogCommon();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v30;
        _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v7 = 0x277CBE000uLL;
    }
  }

  if ([v8 count])
  {
    brightnessSystemClient = [v24 brightnessSystemClient];

    if (brightnessSystemClient)
    {
      v37 = v24[16];
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __22__PLDisplayAgent_init__block_invoke_1446;
      v91[3] = &unk_27825D620;
      v92 = v24;
      [v37 registerNotificationBlock:v91 forProperties:v8];
    }
  }

  brightnessSystemClient2 = [v24 brightnessSystemClient];
  v39 = [brightnessSystemClient2 copyPropertyForKey:@"CBSupportsFinalCommit"];
  [v24 setSupportsFinalBrightnessCommit:{objc_msgSend(v39, "BOOLValue")}];

  v40 = PLLogDisplay();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    supportsFinalBrightnessCommit = [v24 supportsFinalBrightnessCommit];
    *buf = 67109120;
    *&buf[4] = supportsFinalBrightnessCommit;
    _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "Copied kCBSupportsFinalBrightnessCommit value: %d", buf, 8u);
  }

  if (+[PLDisplayAgent shouldLogFromDCP](PLDisplayAgent, "shouldLogFromDCP") && ([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    v41 = PLLogDisplay();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_DEFAULT, "IO object: seting up notification", buf, 2u);
    }

    array = [*(v7 + 2840) array];
    [v24 setAfkEndpoints:array];

    v43 = objc_alloc(MEMORY[0x277D3F1C8]);
    v44 = *MEMORY[0x277D3F5F0];
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __22__PLDisplayAgent_init__block_invoke_1450;
    v89[3] = &unk_27825D648;
    v45 = v24;
    v90 = v45;
    v46 = [v43 initWithOperator:v45 forDynamicServiceClass:v44 forNotificationType:"IOServiceMatched" withMatchBlock:v89];
    v47 = v45[10];
    v45[10] = v46;

    v48 = objc_alloc(MEMORY[0x277D3F250]);
    workQueue3 = [v45 workQueue];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __22__PLDisplayAgent_init__block_invoke_2_1452;
    v87[3] = &unk_278259C40;
    v50 = v45;
    v88 = v50;
    v51 = [v48 initWithFireDate:0 withInterval:1 withTolerance:0 repeats:workQueue3 withUserInfo:v87 withQueue:10.0 withBlock:10.0];
    [v50 setDcpTimeoffsetCalibTimer:v51];

    dcpTimeoffsetCalibTimer = [v50 dcpTimeoffsetCalibTimer];
    [dcpTimeoffsetCalibTimer arm];
  }

  v53 = objc_alloc(MEMORY[0x277D3F1C8]);
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __22__PLDisplayAgent_init__block_invoke_1456;
  v85[3] = &unk_27825CE10;
  v54 = v24;
  v86 = v54;
  v55 = [v53 initWithOperator:v54 forService:@"AppleARMBacklight" withBlock:v85];
  v56 = v54[9];
  v54[9] = v55;

  if (+[PLDisplayAgent shouldLogBacklightControl])
  {
    v57 = objc_alloc(MEMORY[0x277D3F1C8]);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __22__PLDisplayAgent_init__block_invoke_1482;
    v83[3] = &unk_27825CE10;
    v58 = v54;
    v84 = v58;
    v59 = [v57 initWithOperator:v58 forService:@"backlight-control" withBlock:v83];
    v60 = v58[11];
    v58[11] = v59;
  }

  v61 = objc_alloc(MEMORY[0x277D3F1C8]);
  v62 = *MEMORY[0x277D3F5F8];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __22__PLDisplayAgent_init__block_invoke_2_1485;
  v81[3] = &unk_27825CE10;
  self = v54;
  selfCopy2 = self;
  v63 = [v61 initWithOperator:self forService:v62 withBlock:v81];
  iokitDisplay = self->_iokitDisplay;
  self->_iokitDisplay = v63;

  if ([MEMORY[0x277D3F208] hasDCP] && (objc_msgSend(MEMORY[0x277D3F258], "isPowerlogHelperd") & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    *buf = 0;
    MainDisplay = IOMobileFramebufferGetMainDisplay();
    v66 = *buf;
    v67 = PLLogDisplay();
    v68 = v67;
    if (MainDisplay || !v66)
    {
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *v80 = 0;
        _os_log_error_impl(&dword_21A4C6000, v68, OS_LOG_TYPE_ERROR, "Error initializing IOMFB", v80, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        *v80 = 0;
        _os_log_debug_impl(&dword_21A4C6000, v68, OS_LOG_TYPE_DEBUG, "IOMFB initializing", v80, 2u);
      }

      RunLoopSource = IOMobileFramebufferGetRunLoopSource();
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x277CBF058]);
      IOMobileFramebufferEnablePowerNotifications();
      [(PLDisplayAgent *)self setFrameBuffer:*buf];
    }
  }

  v71 = [objc_alloc(MEMORY[0x277D3F1C8]) initWithOperator:self forService:@"AppleMultitouchSPI"];
  iokitTouch = self->_iokitTouch;
  self->_iokitTouch = v71;

  if (self->_iokitDisplay || v54[9] || self->_iokitTouch || v24[16])
  {
    self->_userTouch = 0;
    userTouchDownTime = self->_userTouchDownTime;
    self->_userTouchDownTime = 0;

    self->_touchHIDClientRef = [(PLDisplayAgent *)self setUpIOHIDTouchSystemClient];
    bluelightStatusEntry = self->_bluelightStatusEntry;
    self->_bluelightStatusEntry = 0;

    bluelightFilterTimer = self->_bluelightFilterTimer;
    self->_bluelightFilterTimer = 0;

    uAmpsFilterTimer = self->_uAmpsFilterTimer;
    self->_uAmpsFilterTimer = 0;

    self->_isMIEActive = 0;
    uAmpsEntry = self->_uAmpsEntry;
    self->_uAmpsEntry = 0;

    self->_firstEntryOnInit = 1;
    [(PLDisplayAgent *)self setHDRHeadroom:0];

    goto LABEL_63;
  }

LABEL_2:
  selfCopy = 0;
LABEL_64:

  return selfCopy;
}

void __22__PLDisplayAgent_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CF0880] sharedBacklight];
  v3 = [v2 backlightState];

  v7 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Display"];
  v4 = objc_msgSend_storage(*(a1 + 32));
  v5 = [v4 lastEntryForKey:v7];

  v6 = [v5 objectForKeyedSubscript:@"Active"];
  [*(a1 + 32) setLastScreenState:{objc_msgSend(v6, "intValue")}];

  [*(a1 + 32) initAODState:v3];
}

void *__22__PLDisplayAgent_init__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_28 = result;
  return result;
}

void *__22__PLDisplayAgent_init__block_invoke_2_1433(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F1 = result;
  return result;
}

void *__22__PLDisplayAgent_init__block_invoke_1442(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F2 = result;
  return result;
}

void *__22__PLDisplayAgent_init__block_invoke_2_1468(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F3 = result;
  return result;
}

void *__22__PLDisplayAgent_init__block_invoke_1474(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F4 = result;
  return result;
}

- (void)initTaskOperatorDependancies
{
  if ([MEMORY[0x277D3F208] hasCapability:8])
  {
    if ([MEMORY[0x277D3F208] hasDCP])
    {
      if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
      {
        v3 = [MEMORY[0x277D3F180] BOOLForKey:@"AZLFullMode" ifNotSet:0];
        if (![MEMORY[0x277D3F180] fullMode] || v3)
        {
          v4 = *MEMORY[0x277D3F5D0];
          v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AZLSnapshots"];
          if (![MEMORY[0x277D3F180] taskMode] || (v6 = MEMORY[0x277D3F1A0], -[PLOperator className](self, "className"), v7 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = objc_msgSend(v6, "isEntryKeySetup:forOperatorName:", v5, v7), v7, v6))
          {
            v8 = [(PLOperator *)PLDisplayAgent entryKeyForType:v4 andName:@"AZLSnapshots"];
            v9 = objc_msgSend_storage(self);
            -[PLDisplayAgent setAZLSnapshotsEntries:](self, "setAZLSnapshotsEntries:", [v9 countOfEntriesForKey:v8]);

            v10 = objc_alloc(MEMORY[0x277D3F250]);
            date = [MEMORY[0x277CBEAA8] date];
            workQueue = [(PLOperator *)self workQueue];
            v14[0] = MEMORY[0x277D85DD0];
            v14[1] = 3221225472;
            v14[2] = __46__PLDisplayAgent_initTaskOperatorDependancies__block_invoke;
            v14[3] = &unk_278259C40;
            v14[4] = self;
            v13 = [v10 initWithFireDate:date withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v14 withQueue:300.0 withBlock:0.0];
            [(PLDisplayAgent *)self setAZLSnapshotsTimer:v13];
          }
        }
      }
    }
  }
}

void *__46__PLDisplayAgent_initTaskOperatorDependancies__block_invoke(uint64_t a1)
{
  if (![MEMORY[0x277D3F180] fullMode] || (result = objc_msgSend(MEMORY[0x277D3F180], "BOOLForKey:", @"AZLFullMode"), result))
  {
    if ([MEMORY[0x277D3F180] taskMode] && objc_msgSend(*(a1 + 32), "AZLSnapshotsEntries") >= 21600)
    {
      v3 = PLLogDisplay();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *v6 = 0;
        _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "AZLSnapShot table is full", v6, 2u);
      }

      return [*(*(a1 + 32) + 184) invalidate];
    }

    else
    {
      v4 = *(a1 + 32);
      v5 = v4[65];

      return [v4 __FrameBufferEventCallback:v5];
    }
  }

  return result;
}

- (void)initOperatorDependancies
{
  v65 = *MEMORY[0x277D85DE8];
  [(PLDisplayAgent *)self initializeScreenOnAccumulation];
  -[PLDisplayAgent setIsMultitouchLoggingEnabled:](self, "setIsMultitouchLoggingEnabled:", [MEMORY[0x277D3F180] BOOLForKey:@"MultitouchLoggingEnabled" ifNotSet:0]);
  [(PLDisplayAgent *)self setLastForegroundAppAPL:0];
  v3 = +[PLDisplayAgent shouldLogAPL];
  v4 = MEMORY[0x277D3F5D0];
  if (v3)
  {
    v5 = objc_alloc_init(PLDisplayIOReportStats);
    displayIOReportStats = self->_displayIOReportStats;
    self->_displayIOReportStats = v5;

    v7 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*v4 andName:@"ScreenState"];
    v8 = objc_alloc(MEMORY[0x277D3F1A8]);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke;
    v62[3] = &unk_2782597E8;
    v62[4] = self;
    v9 = [v8 initWithOperator:self forEntryKey:v7 withFilter:MEMORY[0x277CBEC10] withBlock:v62];
    [(PLDisplayAgent *)self setApplicationNotification:v9];
  }

  if (([MEMORY[0x277D3F208] hasCapability:8] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "hasAOT"))
  {
    if ([MEMORY[0x277D3F208] hasCapability:8])
    {
      v10 = objc_alloc_init(PLDisplayIOReportStats);
      displayIOReportAZLStats = self->_displayIOReportAZLStats;
      self->_displayIOReportAZLStats = v10;

      v12 = PLLogDisplay();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "Initializing AZL Stats", buf, 2u);
      }
    }

    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1503;
    v61[3] = &unk_2782597E8;
    v61[4] = self;
    v13 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v61];
    batteryLevelChanged = self->_batteryLevelChanged;
    self->_batteryLevelChanged = v13;

    v15 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*v4 andName:@"ScreenState"];
    v16 = objc_alloc(MEMORY[0x277D3F1A8]);
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2;
    v60[3] = &unk_2782597E8;
    v60[4] = self;
    v17 = [v16 initWithOperator:self forEntryKey:v15 withFilter:MEMORY[0x277CBEC10] withBlock:v60];
    [(PLDisplayAgent *)self setApplicationNotification:v17];
  }

  if ([MEMORY[0x277D3F208] hasCapability:3])
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    displayStateChanges = self->_displayStateChanges;
    self->_displayStateChanges = v18;

    v20 = objc_alloc(MEMORY[0x277D3F1A8]);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_3;
    v59[3] = &unk_2782597E8;
    v59[4] = self;
    v21 = [v20 initWithOperator:self forEntryKey:@"PLIOReportAgent_EventBackward_IOMFBScanoutHistogram" withFilter:MEMORY[0x277CBEC10] withBlock:v59];
    [(PLDisplayAgent *)self setIOMFBScanoutNotification:v21];
  }

  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v22 = objc_alloc_init(PLDisplayIOReportAODStats);
    displayIOReportAODStats = self->_displayIOReportAODStats;
    self->_displayIOReportAODStats = v22;

    v24 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BacklightStateChange"];
    v25 = objc_alloc(MEMORY[0x277D3F1A8]);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_4;
    v58[3] = &unk_2782597E8;
    v58[4] = self;
    v26 = [v25 initWithOperator:self forEntryKey:v24 withBlock:v58];
    [(PLDisplayAgent *)self setAodstateChangedNotification:v26];
  }

  v27 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"display"];
  v28 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F208], "kPLDisplayClassOfDevice")}];
  stringValue = [v28 stringValue];

  v30 = [v27 objectForKeyedSubscript:stringValue];
  displayPowerModel = self->_displayPowerModel;
  self->_displayPowerModel = v30;

  if ([MEMORY[0x277D3F208] internalBuild] && -[PLDisplayAgent isMultitouchLoggingEnabled](self, "isMultitouchLoggingEnabled"))
  {
    v32 = objc_alloc(MEMORY[0x277D3F270]);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1519;
    v57[3] = &unk_27825A1D8;
    v57[4] = self;
    v33 = [v32 initWithOperator:self withRegistration:&unk_282C17D38 withBlock:v57];
    [(PLDisplayAgent *)self setMultitouchXPCListener:v33];
  }

  [(PLDisplayAgent *)self logEventNonePanelStats];
  self->_ambientLightSensorHIDClientRef = [(PLDisplayAgent *)self setUpIOHIDAmbientLightSensorSystemClient];
  if (+[PLDisplayAgent shouldLogKeyboardBrightness])
  {
    v34 = objc_alloc_init(MEMORY[0x277CFD3B8]);
    kbClient = self->_kbClient;
    self->_kbClient = v34;

    if (self->_kbClient)
    {
      isiPad = [MEMORY[0x277D3F208] isiPad];
      v37 = MEMORY[0x277CFD3C8];
      if (!isiPad)
      {
        v37 = MEMORY[0x277CFD3C0];
      }

      v38 = *v37;
      kbClient = [(PLDisplayAgent *)self kbClient];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1532;
      v55[3] = &unk_27825D670;
      v55[4] = self;
      [kbClient registerNotificationForKeys:&unk_282C14430 keyboardID:v38 block:v55];

      v40 = objc_alloc(MEMORY[0x277D3F250]);
      workQueue = [(PLOperator *)self workQueue];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1545;
      v54[3] = &unk_278259C40;
      v54[4] = self;
      v42 = [v40 initWithFireDate:0 withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v54 withQueue:0.5 withBlock:0.0];
      [(PLDisplayAgent *)self setKeyboardBrightnessFilterTimer:v42];

      keyboardBrightnessFilterTimer = [(PLDisplayAgent *)self keyboardBrightnessFilterTimer];
      [keyboardBrightnessFilterTimer arm];
LABEL_22:

      goto LABEL_30;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v44 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1522;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v44;
      if (qword_2811F4958 != -1)
      {
        dispatch_once(&qword_2811F4958, block);
      }

      if (byte_2811F48F5 == 1)
      {
        keyboardBrightnessFilterTimer = [MEMORY[0x277CCACA8] stringWithFormat:@"KeyboardBrightnessClient init fail!"];
        v45 = MEMORY[0x277D3F178];
        v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        lastPathComponent = [v46 lastPathComponent];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent initOperatorDependancies]"];
        [v45 logMessage:keyboardBrightnessFilterTimer fromFile:lastPathComponent fromFunction:v48 fromLineNumber:1942];

        v49 = PLLogCommon();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v64 = keyboardBrightnessFilterTimer;
          _os_log_debug_impl(&dword_21A4C6000, v49, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        goto LABEL_22;
      }
    }
  }

LABEL_30:
  v50 = objc_alloc(MEMORY[0x277D3F1F0]);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1550;
  v53[3] = &unk_2782597E8;
  v53[4] = self;
  v51 = [v50 initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:v53];
  thermalMonitorListener = self->_thermalMonitorListener;
  self->_thermalMonitorListener = v51;
}

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke_4(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogDisplay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Got callback for logAODChange: %@", &v5, 0xCu);
  }

  [*(a1 + 32) logAODChange];
}

void *__42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1522(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F5 = result;
  return result;
}

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1532(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1533;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F4960 != -1)
    {
      dispatch_once(&qword_2811F4960, block);
    }

    if (byte_2811F48F6 == 1)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [v5 UTF8String];
      v10 = [v6 description];
      v11 = [v8 stringWithFormat:@"Keyboard brightness: %s=%s\n", v9, objc_msgSend(v10, "UTF8String")];

      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent initOperatorDependancies]_block_invoke"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:1949];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [v6 doubleValue];
  [*(a1 + 32) setPendingKeyboardBrightnessValue:?];
  v17 = [*(a1 + 32) pendingKeyboardBrightnessDate];

  if (!v17)
  {
    v18 = [MEMORY[0x277CBEAA8] monotonicDate];
    [*(a1 + 32) setPendingKeyboardBrightnessDate:v18];
  }

  v19 = [*(a1 + 32) keyboardBrightnessFilterTimer];
  v20 = [v19 timerActive];

  if ((v20 & 1) == 0)
  {
    v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.5];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v22 = objc_opt_class();
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1539;
      v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v32[4] = v22;
      if (qword_2811F4968 != -1)
      {
        dispatch_once(&qword_2811F4968, v32);
      }

      if (byte_2811F48F7 == 1)
      {
        v23 = MEMORY[0x277CCACA8];
        v24 = [MEMORY[0x277D3F268] formattedStringForDate:v21];
        v25 = [v23 stringWithFormat:@"Start keyboard brightness filter timer fireDate=%@", v24];

        v26 = MEMORY[0x277D3F178];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v28 = [v27 lastPathComponent];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent initOperatorDependancies]_block_invoke_2"];
        [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:1958];

        v30 = PLLogCommon();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v35 = v25;
          _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v31 = [*(a1 + 32) keyboardBrightnessFilterTimer];
    [v31 setFireDate:v21];
  }
}

void *__42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1533(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F6 = result;
  return result;
}

void *__42__PLDisplayAgent_initOperatorDependancies__block_invoke_1539(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F7 = result;
  return result;
}

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1545(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingKeyboardBrightnessDate];

  v3 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 32) pendingKeyboardBrightnessValue];
    v5 = v4;
    v6 = [*(a1 + 32) pendingKeyboardBrightnessDate];
    [v3 logEventPointKeyboardBrightness:v6 withDate:v5];

    v7 = *(a1 + 32);

    [v7 setPendingKeyboardBrightnessDate:0];
  }

  else
  {
    v8 = [*(a1 + 32) keyboardBrightnessFilterTimer];
    [v8 setTimerActive:0];
  }
}

- (void)handleAFKInterfaceIOServiceCallback:(unsigned int)callback
{
  v3 = *&callback;
  v25 = *MEMORY[0x277D85DE8];
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(callback, &entryID);
  v5 = PLLogDisplay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = entryID;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "Registry ID: %llu", buf, 0xCu);
  }

  properties = 0;
  if (IORegistryEntryCreateCFProperties(v3, &properties, *MEMORY[0x277CBECE8], 0))
  {
    v6 = 1;
  }

  else
  {
    v6 = properties == 0;
  }

  if (v6)
  {
    v7 = PLLogDisplay();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v8 = "Error trying to get property IO object";
LABEL_20:
    _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, v8, buf, 2u);
    goto LABEL_25;
  }

  v9 = CFGetTypeID(properties);
  if (v9 != CFDictionaryGetTypeID())
  {
    v7 = PLLogDisplay();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v8 = "IO object property is not dictionary";
    goto LABEL_20;
  }

  v7 = properties;
  v10 = PLLogDisplay();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v7;
    _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEFAULT, "IO object property: %@", buf, 0xCu);
  }

  v11 = [AFKEndpointInterfacePowerlogDisplay alloc];
  iokitBacklightDCP = [(PLDisplayAgent *)self iokitBacklightDCP];
  v13 = [(AFKEndpointInterfacePowerlogDisplay *)v11 initWithService:v3 andIOKitComposition:iokitBacklightDCP];

  if (v13)
  {
    afkEndpoints = [(PLDisplayAgent *)self afkEndpoints];
    [afkEndpoints addObject:v13];

    workQueue = [(PLOperator *)self workQueue];
    [(AFKEndpointInterface *)v13 setDispatchQueue:workQueue];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke;
    v20[3] = &unk_27825D698;
    v20[4] = self;
    [(AFKEndpointInterface *)v13 setReportHandler:v20];
    [(AFKEndpointInterface *)v13 activate];
    v16 = PLLogDisplay();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEFAULT, "AFKInterface activated", buf, 2u);
    }

    afkEndpoints2 = [(PLDisplayAgent *)self afkEndpoints];
    v18 = [afkEndpoints2 count];

    if (v18 >= 2)
    {
      [(PLDisplayAgent *)self cleanUpAFKInterfaces];
    }
  }

  else
  {
    v19 = PLLogDisplay();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_ERROR, "Error getting AFK interface", buf, 2u);
    }
  }

LABEL_25:
}

void __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, const char *a5, size_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = PLLogDisplay();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v23 = a4;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Received msg at timestamp: %llu", buf, 0xCu);
  }

  if (a5 && a6)
  {
    errorString = 0;
    v11 = IOCFUnserializeWithSize(a5, a6, *MEMORY[0x277CBECE8], 0, &errorString);
    v12 = errorString;
    v13 = errorString;
    v14 = v13;
    if (v12)
    {
    }

    else if (v11)
    {
      v15 = CFGetTypeID(v11);
      TypeID = CFDictionaryGetTypeID();
      v17 = PLLogDisplay();
      v18 = v17;
      if (v15 == TypeID)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v23 = v11;
          _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "Data: %@", buf, 0xCu);
        }

        v19 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v11];
        [*(a1 + 32) fillInBuiltinDisplayBrightnessParameters:v19];
        v20 = PLLogDisplay();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v23 = v19;
          _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "Final data to be logged: %@", buf, 0xCu);
        }

        [*(a1 + 32) handleAFKInterfaceMsg:v19];
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_ERROR, "Msg is not a dictionary", buf, 2u);
        }

        v11 = v18;
      }

      goto LABEL_9;
    }

    v11 = PLLogDisplay();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v14;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "Error unserializing buffer: %@", buf, 0xCu);
    }

LABEL_9:

    goto LABEL_12;
  }

  v14 = PLLogDisplay();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, "Input buffer is empty", buf, 2u);
  }

LABEL_12:
}

- (void)fillInBuiltinDisplayBrightnessParameters:(id)parameters
{
  v46 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [monotonicDate timeIntervalSince1970];
  v7 = v6;

  [(PLDisplayAgent *)self lastBuiltinDisplayTime];
  v9 = v8;
  [(PLDisplayAgent *)self lastBuiltinDisplayTime];
  if (v10 > 0.0)
  {
    v10 = v7 - v9;
    if (v7 - v9 > 0.0 && v10 < 0.6)
    {
      v11 = MEMORY[0x277CCABB0];
      [(PLDisplayAgent *)self lastBuiltinDisplayLux];
      v12 = [v11 numberWithDouble:?];
      [parametersCopy setObject:v12 forKeyedSubscript:@"lux"];

      [(PLDisplayAgent *)self lastBuiltinDisplayBrightness];
      if (v13 >= 0.0)
      {
        v14 = MEMORY[0x277CCABB0];
        [(PLDisplayAgent *)self lastBuiltinDisplayBrightness];
        v15 = [v14 numberWithDouble:?];
        [parametersCopy setObject:v15 forKeyedSubscript:@"Brightness"];
      }

      [(PLDisplayAgent *)self lastBuiltinDisplaySliderValue];
      if (v16 >= 0.0)
      {
        v17 = MEMORY[0x277CCABB0];
        [(PLDisplayAgent *)self lastBuiltinDisplaySliderValue];
        v18 = [v17 numberWithDouble:?];
        [parametersCopy setObject:v18 forKeyedSubscript:@"SliderValue"];
      }

      goto LABEL_23;
    }
  }

  brightnessSystemClient = [(PLDisplayAgent *)self brightnessSystemClient];
  v20 = [brightnessSystemClient copyPropertyForKey:@"TrustedLux"];
  [v20 doubleValue];
  [(PLDisplayAgent *)self setLastBuiltinDisplayLux:?];

  brightnessSystemClient2 = [(PLDisplayAgent *)self brightnessSystemClient];
  v22 = [brightnessSystemClient2 copyPropertyForKey:@"DisplayBrightnessMin"];
  [v22 doubleValue];
  v24 = v23;

  brightnessSystemClient3 = [(PLDisplayAgent *)self brightnessSystemClient];
  v26 = [brightnessSystemClient3 copyPropertyForKey:@"DisplayBrightnessMax"];
  [v26 doubleValue];
  v28 = v27;

  brightnessSystemClient4 = [(PLDisplayAgent *)self brightnessSystemClient];
  v30 = [brightnessSystemClient4 copyPropertyForKey:@"DisplayBrightness"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v30 doubleValue];
    v32 = v31;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_15:
      [(PLDisplayAgent *)self setLastBuiltinDisplayBrightness:-1.0];
      [(PLDisplayAgent *)self setLastBuiltinDisplaySliderValue:-1.0];
      v35 = PLLogDisplay();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v44 = 138412290;
        v45 = v30;
        _os_log_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEFAULT, "Not logging brightness value: %@", &v44, 0xCu);
      }

      goto LABEL_18;
    }

    v33 = [v30 objectForKeyedSubscript:@"Brightness"];
    [v33 doubleValue];
    v32 = v34;
  }

  if (v32 < 0.0 || v28 - v24 <= 0.0)
  {
    goto LABEL_15;
  }

  [(PLDisplayAgent *)self setLastBuiltinDisplayBrightness:(v32 - v24) * 100.0 / (v28 - v24)];
  [(PLDisplayAgent *)self setLastBuiltinDisplaySliderValue:v32];
LABEL_18:
  [(PLDisplayAgent *)self setLastBuiltinDisplayTime:v7];
  v36 = MEMORY[0x277CCABB0];
  [(PLDisplayAgent *)self lastBuiltinDisplayLux];
  v37 = [v36 numberWithDouble:?];
  [parametersCopy setObject:v37 forKeyedSubscript:@"lux"];

  [(PLDisplayAgent *)self lastBuiltinDisplayBrightness];
  if (v38 >= 0.0)
  {
    v39 = MEMORY[0x277CCABB0];
    [(PLDisplayAgent *)self lastBuiltinDisplayBrightness];
    v40 = [v39 numberWithDouble:?];
    [parametersCopy setObject:v40 forKeyedSubscript:@"Brightness"];
  }

  [(PLDisplayAgent *)self lastBuiltinDisplaySliderValue];
  if (v41 >= 0.0)
  {
    v42 = MEMORY[0x277CCABB0];
    [(PLDisplayAgent *)self lastBuiltinDisplaySliderValue];
    v43 = [v42 numberWithDouble:?];
    [parametersCopy setObject:v43 forKeyedSubscript:@"SliderValue"];
  }

LABEL_23:
}

- (void)cleanUpAFKInterfaces
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  afkEndpoints = [(PLDisplayAgent *)self afkEndpoints];
  v5 = [afkEndpoints countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(afkEndpoints);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 valid] & 1) == 0)
        {
          [array addObject:v9];
        }
      }

      v6 = [afkEndpoints countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  afkEndpoints2 = [(PLDisplayAgent *)self afkEndpoints];
  [afkEndpoints2 removeObjectsInArray:array];
}

- (void)handleAFKInterfaceMsg:(id)msg
{
  msgCopy = msg;
  v5 = [msgCopy objectForKeyedSubscript:@"timestamp"];
  [v5 doubleValue];
  v7 = v6;

  [(PLDisplayAgent *)self currAFKSystemTimeOffset];
  if (v8 == 0.0)
  {
    [MEMORY[0x277CBEAA8] monotonicDate];
  }

  else
  {
    v9 = MEMORY[0x277CBEAA8];
    [(PLDisplayAgent *)self currAFKSystemTimeOffset];
    [v9 dateWithTimeIntervalSince1970:v7 / 1000000.0 + v10];
  }
  v11 = ;
  pendingBacklightEntry = [(PLDisplayAgent *)self pendingBacklightEntry];
  if (pendingBacklightEntry)
  {
    pendingBacklightEntry2 = pendingBacklightEntry;
    pendingBacklightEntryDate = [(PLDisplayAgent *)self pendingBacklightEntryDate];
    if (pendingBacklightEntryDate)
    {
      v15 = pendingBacklightEntryDate;
      pendingBacklightEntryDate2 = [(PLDisplayAgent *)self pendingBacklightEntryDate];
      [v11 timeIntervalSinceDate:pendingBacklightEntryDate2];
      v18 = v17;

      if (v18 < 1.0)
      {
        goto LABEL_9;
      }

      pendingBacklightEntry2 = [(PLDisplayAgent *)self pendingBacklightEntry];
      pendingBacklightEntryDate3 = [(PLDisplayAgent *)self pendingBacklightEntryDate];
      [(PLDisplayAgent *)self logEventForwardDisplayWithRawData:pendingBacklightEntry2 withDate:pendingBacklightEntryDate3];
    }
  }

LABEL_9:
  [(PLDisplayAgent *)self setPendingBacklightEntry:msgCopy];
  [(PLDisplayAgent *)self setPendingBacklightEntryDate:v11];
  backlightFilterTimer = [(PLDisplayAgent *)self backlightFilterTimer];
  timerActive = [backlightFilterTimer timerActive];

  if ((timerActive & 1) == 0)
  {
    v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
    backlightFilterTimer2 = [(PLDisplayAgent *)self backlightFilterTimer];
    [backlightFilterTimer2 setFireDate:v22];
  }

  dcpTimeoffsetCalibTimer = [(PLDisplayAgent *)self dcpTimeoffsetCalibTimer];
  timerActive2 = [dcpTimeoffsetCalibTimer timerActive];

  if ((timerActive2 & 1) == 0)
  {
    v31 = 0;
    v32 = 0;
    [MEMORY[0x277D3F258] getCurrentMonotonicAndMachAbsTime:&v31 machAbsTime:0 machContTime:&v32];
    v26 = v31;
    [(PLDisplayAgent *)self setCurrAFKSystemTimestamp:v32 / 1000000000.0];
    [v26 timeIntervalSince1970];
    v28 = v27;

    [(PLDisplayAgent *)self setCurrMonoTimestamp:v28];
    v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:10.0];
    dcpTimeoffsetCalibTimer2 = [(PLDisplayAgent *)self dcpTimeoffsetCalibTimer];
    [dcpTimeoffsetCalibTimer2 setFireDate:v29];
  }
}

- (void)logEventPointMultitouchWithPayload:(id)payload
{
  v40 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v30 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Multitouch"];
  v29 = objc_opt_new();
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v25 = payloadCopy;
  obj = [payloadCopy objectForKeyedSubscript:@"events"];
  v31 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v31)
  {
    v27 = *v34;
    do
    {
      v4 = 0;
      do
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v33 + 1) + 8 * v4);
        v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v30 withDate:monotonicDate];
        v7 = [v5 objectForKeyedSubscript:@"fingerNum"];
        [v6 setObject:v7 forKeyedSubscript:@"fingerNum"];

        v8 = [v5 objectForKeyedSubscript:@"touchStartTime"];
        [v6 setObject:v8 forKeyedSubscript:@"touchStartTime"];

        v9 = [v5 objectForKeyedSubscript:@"touchStopTime"];
        [v6 setObject:v9 forKeyedSubscript:@"touchStopTime"];

        if ([MEMORY[0x277D3F208] hasOrb])
        {
          v10 = [v5 objectForKeyedSubscript:@"peakForce"];
          [v6 setObject:v10 forKeyedSubscript:@"peak"];

          v11 = @"peakForceMillimetersFromEdge";
          v12 = @"peakMillimetersFromEdge";
          v13 = @"peakForceProximity";
          v14 = @"peakProximity";
          v15 = @"peakForceMajorRadius";
          v16 = @"peakMajorRadius";
          v17 = @"peakForceMinorRadius";
          v18 = @"peakMinorRadius";
        }

        else
        {
          v12 = @"peakProximity";
          v11 = @"peakProximity";
          v14 = @"peakProximityMillimetersFromEdge";
          v13 = @"peakProximityMillimetersFromEdge";
          v16 = @"peakProximityMajorRadius";
          v15 = @"peakProximityMajorRadius";
          v18 = @"peakProximityMinorRadius";
          v17 = @"peakProximityMinorRadius";
        }

        v32 = v18;
        v19 = [v5 objectForKeyedSubscript:v11];
        [v6 setObject:v19 forKeyedSubscript:v12];

        v20 = [v5 objectForKeyedSubscript:v13];
        [v6 setObject:v20 forKeyedSubscript:v14];

        v21 = [v5 objectForKeyedSubscript:v15];
        [v6 setObject:v21 forKeyedSubscript:v16];

        v22 = [v5 objectForKeyedSubscript:v17];
        [v6 setObject:v22 forKeyedSubscript:v32];

        [v29 addObject:v6];
        ++v4;
      }

      while (v31 != v4);
      v31 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v31);
  }

  v37 = v30;
  v38 = v29;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  [(PLOperator *)self logEntries:v23 withGroupID:v30];
}

- (void)dealloc
{
  if (+[PLDisplayAgent shouldLogFromDCP]&& [(PLDisplayAgent *)self frameBuffer])
  {
    [(PLDisplayAgent *)self frameBuffer];
    IOMobileFramebufferDisablePowerNotifications();
    CFRelease([(PLDisplayAgent *)self frameBuffer]);
  }

  if (self->_ambientLightSensorHIDClientRef)
  {
    IOHIDEventSystemClientUnregisterEventCallback();
    if (self->_alsPluginKeyRegistered)
    {
      IOHIDEventSystemClientUnregisterDeviceMatchingCallback();
    }
  }

  if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
  {
    mEMORY[0x277CF0880] = [MEMORY[0x277CF0880] sharedBacklight];
    [mEMORY[0x277CF0880] removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = PLDisplayAgent;
  [(PLAgent *)&v4 dealloc];
}

- (BOOL)isAlsEnabled
{
  bOOLValue = 1;
  v3 = [MEMORY[0x277D3F180] objectForKey:@"BKEnableALS" forApplicationID:@"com.apple.backboardd" synchronize:1];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  return bOOLValue;
}

- (void)log
{
  [(PLDisplayAgent *)self logEventForwardDisplay];
  [(PLDisplayAgent *)self logEventPointDisplay];
  [(PLDisplayAgent *)self logEventForwardALSEnabled];
  [(PLDisplayAgent *)self logEventForwardALSUserPreferences];

  [(PLDisplayAgent *)self logEventForwardColorAdaptationMode];
}

- (void)logEventNonePanelStats
{
  brightnessSystemClient = [(PLDisplayAgent *)self brightnessSystemClient];

  if (brightnessSystemClient && ([MEMORY[0x277D3F208] isMac] & 1) == 0)
  {
    brightnessSystemClient2 = [(PLDisplayAgent *)self brightnessSystemClient];
    v7 = [brightnessSystemClient2 copyPropertyForKey:@"BrightnessGlobalScalar"];

    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PanelStats"];
      v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v7];
      [(PLOperator *)self logEntry:v6];
    }
  }
}

- (void)logDisplayEntry:(id)entry
{
  entryCopy = entry;
  dictionary = [entryCopy dictionary];
  entryDate = [entryCopy entryDate];

  [(PLOperator *)self logForSubsystem:@"DisplayMetrics" category:@"DisplayState" data:dictionary date:entryDate];
}

- (void)logEventPointDisplay
{
  [(PLDisplayAgent *)self logEventPointDisplayBacklight];

  [(PLDisplayAgent *)self logEventPointDisplayMIE];
}

- (void)logEventPointDisplayBacklight
{
  if (!+[PLDisplayAgent shouldLogFromDCP]&& self->_iokitBacklight)
  {
    iokitBacklight = [(PLDisplayAgent *)self iokitBacklight];
    v5 = [iokitBacklight propertiesForKey:@"IOPowerManagement"];

    v4 = [v5 objectForKeyedSubscript:@"CurrentPowerState"];
    -[PLDisplayAgent logEventPointDisplayForBlock:isActive:](self, "logEventPointDisplayForBlock:isActive:", @"Backlight", [v4 BOOLValue]);
  }
}

- (void)logEventPointDisplayMIE
{
  if (!+[PLDisplayAgent shouldLogFromDCP]&& self->_iokitDisplay)
  {
    iokitDisplay = [(PLDisplayAgent *)self iokitDisplay];
    v7 = [iokitDisplay propertiesForKey:@"IOMFB Debug Info"];

    v4 = [v7 objectForKeyedSubscript:@"MIE"];

    if (v4)
    {
      v5 = [v7 objectForKeyedSubscript:@"MIE"];
      v6 = [v5 objectForKeyedSubscript:@"enabled"];
      -[PLDisplayAgent logEventPointDisplayForBlock:isActive:](self, "logEventPointDisplayForBlock:isActive:", @"MIE", [v6 BOOLValue]);
    }
  }
}

- (void)logEventPointDisplayBacklightWithState:(unint64_t)state
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = PLLogDisplay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    stateCopy = state;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "IOMFB received power state: %llu", &v6, 0xCu);
  }

  [(PLDisplayAgent *)self logEventPointDisplayForBlock:@"Backlight" isActive:state != 0];
}

- (void)logEventPointDisplayForBlock:(id)block isActive:(int)active
{
  v4 = *&active;
  v31 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (+[PLDisplayAgent shouldLogDisplay](PLDisplayAgent, "shouldLogDisplay") || +[PLDisplayAgent shouldLogLCD])
  {
    v7 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Display"];
    v8 = objc_msgSend_storage(self);
    v9 = [v8 lastEntryForKey:v7 withSubEntryKey:blockCopy];

    v10 = [v9 objectForKeyedSubscript:@"Active"];
    if ([v10 intValue] == v4)
    {
      firstEntryOnInit = [(PLDisplayAgent *)self firstEntryOnInit];

      if (!firstEntryOnInit)
      {
        if (![MEMORY[0x277D3F180] debugEnabled])
        {
          goto LABEL_17;
        }

        v12 = objc_opt_class();
        block = MEMORY[0x277D85DD0];
        v24 = 3221225472;
        v25 = __56__PLDisplayAgent_logEventPointDisplayForBlock_isActive___block_invoke;
        v26 = &__block_descriptor_40_e5_v8__0lu32l8;
        v27 = v12;
        if (qword_2811F4970 != -1)
        {
          dispatch_once(&qword_2811F4970, &block);
        }

        if (byte_2811F48F8 != 1)
        {
          goto LABEL_17;
        }

        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"filtering block %@ isActive %d due to lastEntry %@", blockCopy, v4, v9, block, v24, v25, v26, v27];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        lastPathComponent = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logEventPointDisplayForBlock:isActive:]"];
        [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:2563];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v30 = v13;
          _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

LABEL_16:
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
    }

    [(PLDisplayAgent *)self setFirstEntryOnInit:0];
    v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
    [v13 setObject:blockCopy forKeyedSubscript:@"Block"];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
    [v13 setObject:v19 forKeyedSubscript:@"Active"];

    [(PLOperator *)self logEntry:v13];
    if ([MEMORY[0x277D3F208] hasCapability:3])
    {
      v20 = [v13 objectForKeyedSubscript:@"timestamp"];
      v28[0] = v20;
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
      v28[1] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];

      [(NSMutableArray *)self->_displayStateChanges addObject:v22];
    }

    [(PLDisplayAgent *)self logDisplayAPL];
    goto LABEL_16;
  }

LABEL_18:
}

void *__56__PLDisplayAgent_logEventPointDisplayForBlock_isActive___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F8 = result;
  return result;
}

- (void)initAODState:(int64_t)state
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = PLLogDisplay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    stateCopy = state;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "initial screen state received by AOD is %ld", &v6, 0xCu);
  }

  if (state <= 3)
  {
    [(PLDisplayAgent *)self logAODState:dword_21AA21C10[state]];
  }
}

- (void)logAODState:(int)state
{
  v3 = *&state;
  v12 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v5 = PLLogDisplay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = 67109120;
      LODWORD(v11) = v3;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "AOD state received is %d", &v10, 8u);
    }

    v6 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Display"];
    if (![(PLDisplayAgent *)self lastScreenState]|| [(PLDisplayAgent *)self lastScreenState]!= v3)
    {
      v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
      v8 = [MEMORY[0x277CCABB0] numberWithInt:v3];
      [v7 setObject:v8 forKeyedSubscript:@"Active"];

      [v7 setObject:@"Backlight" forKeyedSubscript:@"Block"];
      [(PLDisplayAgent *)self setLastScreenState:v3];
      v9 = PLLogDisplay();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = 138412290;
        v11 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "AOD state we log is %@", &v10, 0xCu);
      }

      [(PLOperator *)self logEntry:v7];
    }
  }
}

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event
{
  if (_os_feature_enabled_impl())
  {
    if ([MEMORY[0x277D3F208] hasAOD])
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __62__PLDisplayAgent_backlight_didCompleteUpdateToState_forEvent___block_invoke;
      v7[3] = &unk_27825D6C0;
      v7[4] = self;
      v7[5] = state;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }
  }
}

void __62__PLDisplayAgent_backlight_didCompleteUpdateToState_forEvent___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = PLLogDisplay();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v7 = 134217984;
    v8 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "screen state received by AOD is %ld", &v7, 0xCu);
  }

  v3 = *(a1 + 40);
  if (v3 > 1)
  {
    if (v3 == 2 || v3 == 3)
    {
      v4 = *(a1 + 32);
      v5 = 1;
LABEL_10:
      [v4 logAODState:v5];
    }
  }

  else
  {
    if (v3)
    {
      if (v3 != 1)
      {
        return;
      }

      v4 = *(a1 + 32);
      v5 = 2;
      goto LABEL_10;
    }

    [*(a1 + 32) logAODState:0];
    if (_os_feature_enabled_impl())
    {
      [*(a1 + 32) clearDisplayAccountingEvents];
    }
  }
}

- (void)clearDisplayAccountingEvents
{
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
  [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:monotonicDate];

  mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
  [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:monotonicDate];
}

- (void)logEventPointUserBrightnessCommitted:(double)committed
{
  if (+[PLDisplayAgent shouldLogUserBrightness])
  {
    v7 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"UserBrightness"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:committed];
    [v5 setObject:v6 forKeyedSubscript:@"UserBrightness"];

    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventPointKeyboardBrightness:(double)brightness withDate:(id)date
{
  dateCopy = date;
  if (+[PLDisplayAgent shouldLogKeyboardBrightness])
  {
    v6 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"KeyboardBrightness"];
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(brightness * 100.0)];
    [v7 setObject:v8 forKeyedSubscript:@"KeyboardBrightness"];

    if (dateCopy)
    {
      [v7 setEntryDate:dateCopy];
    }

    [(PLOperator *)self logEntry:v7];
  }
}

- (void)logEventForwardALSLux:(unint64_t)lux
{
  v34 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLDisplayAgent_logEventForwardALSLux___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F4978 != -1)
    {
      dispatch_once(&qword_2811F4978, block);
    }

    if (byte_2811F48F9 == 1)
    {
      v6 = MEMORY[0x277CCACA8];
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      v8 = [v6 stringWithFormat:@"Got event ALSLux:%llu at %@\n", lux, monotonicDate];

      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logEventForwardALSLux:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:2703];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLDisplayAgent *)self setPendingALSLux:lux];
  monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLDisplayAgent *)self setPendingALSLuxEntryDate:monotonicDate2];

  alsLuxFilterTimer = [(PLDisplayAgent *)self alsLuxFilterTimer];
  if (alsLuxFilterTimer)
  {
    v16 = alsLuxFilterTimer;
    alsLuxFilterTimer2 = [(PLDisplayAgent *)self alsLuxFilterTimer];
    timerActive = [alsLuxFilterTimer2 timerActive];

    if ((timerActive & 1) == 0)
    {
      v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:10.0];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v20 = objc_opt_class();
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __40__PLDisplayAgent_logEventForwardALSLux___block_invoke_1609;
        v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v30[4] = v20;
        if (qword_2811F4980 != -1)
        {
          dispatch_once(&qword_2811F4980, v30);
        }

        if (byte_2811F48FA == 1)
        {
          v21 = MEMORY[0x277CCACA8];
          v22 = [MEMORY[0x277D3F268] formattedStringForDate:v19];
          v23 = [v21 stringWithFormat:@"Start ALSLux entry filter timer fireDate=%@", v22];

          v24 = MEMORY[0x277D3F178];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          lastPathComponent2 = [v25 lastPathComponent];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logEventForwardALSLux:]"];
          [v24 logMessage:v23 fromFile:lastPathComponent2 fromFunction:v27 fromLineNumber:2724];

          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v33 = v23;
            _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      alsLuxFilterTimer3 = [(PLDisplayAgent *)self alsLuxFilterTimer];
      [alsLuxFilterTimer3 setFireDate:v19];
    }
  }
}

void *__40__PLDisplayAgent_logEventForwardALSLux___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F9 = result;
  return result;
}

void *__40__PLDisplayAgent_logEventForwardALSLux___block_invoke_1609(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48FA = result;
  return result;
}

- (unint64_t)getBacklightEnabledTimestamp:(unsigned int)timestamp
{
  v3 = IORegistryEntrySearchCFProperty(timestamp, "IOService", @"displayOnTimestamp", *MEMORY[0x277CBECE8], 1u);
  if (v3)
  {
    v4 = v3;
    valuePtr = 0;
    CFNumberGetValue(v3, kCFNumberSInt64Type, &valuePtr);
    CFRelease(v4);
    return valuePtr;
  }

  else
  {

    return mach_absolute_time();
  }
}

- (void)logEventForwardDisplay
{
  if (!+[PLDisplayAgent shouldLogFromDCP]&& self->_iokitBacklight)
  {
    iokitBacklight = [(PLDisplayAgent *)self iokitBacklight];
    v5 = [iokitBacklight propertiesForKey:@"IODisplayParameters"];

    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLDisplayAgent *)self logEventForwardDisplayWithRawData:v5 withDate:monotonicDate];
  }
}

- (void)logEventForwardDisplayBacklight
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
  {
    iokitBacklight = [(PLDisplayAgent *)self iokitBacklight];

    if (iokitBacklight)
    {
      iokitBacklight2 = [(PLDisplayAgent *)self iokitBacklight];
      v5 = [iokitBacklight2 propertiesForKey:@"IODisplayParameters"];

      v6 = [v5 objectForKeyedSubscript:@"brightness"];
      v7 = [v6 objectForKeyedSubscript:@"value"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [v5 objectForKeyedSubscript:@"BrightnessMicroAmps"];
      v11 = [v10 objectForKeyedSubscript:@"value"];
      [v11 doubleValue];
      v13 = v12;

      if (v9 <= 0.0)
      {
        iokitBacklight = &unk_282C116B8;
      }

      else
      {
        v14 = MEMORY[0x277CCABB0];
        [(PLDisplayAgent *)self uAmpsToDisplayPower:v13];
        iokitBacklight = [v14 numberWithDouble:?];
      }
    }

    v15 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"DisplayBacklight"];
    v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15];
    v17 = v16;
    if (iokitBacklight)
    {
      [v16 setObject:iokitBacklight forKeyedSubscript:@"DisplayPower"];
    }

    v19[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [(PLOperator *)self postEntries:v18];
  }
}

- (void)logEventForwardDisplayWithRawData:(id)data withDate:(id)date
{
  location[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dateCopy = date;
  brightnessSystemClient = [(PLDisplayAgent *)self brightnessSystemClient];

  if (brightnessSystemClient)
  {
    v9 = [[PLEventForwardDisplayEntry alloc] initEntryWithRawData:dataCopy];
    [v9 setEntryDate:dateCopy];
    v10 = [dataCopy objectForKeyedSubscript:@"lux"];
    if (!v10)
    {
      v11 = [v9 objectForKeyedSubscript:@"Brightness"];
      [v11 doubleValue];
      v13 = v12;

      if (v13 <= 0.0)
      {
        v10 = &unk_282C116B8;
      }

      else
      {
        brightnessSystemClient2 = [(PLDisplayAgent *)self brightnessSystemClient];
        v10 = [brightnessSystemClient2 copyPropertyForKey:@"TrustedLux"];
      }

      [v9 setObject:v10 forKeyedSubscript:@"lux"];
      v15 = PLLogDisplay();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v33 = [v9 objectForKeyedSubscript:@"lux"];
        [v33 doubleValue];
        LODWORD(location[0]) = 134217984;
        *(location + 4) = v34;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Value for Lux: %f", location, 0xCu);
      }
    }

    [v10 doubleValue];
    self->_displayLux = v16;
    v17 = [v9 objectForKeyedSubscript:@"mNits"];

    if (v17)
    {
      v18 = [v9 objectForKeyedSubscript:@"mNits"];
      [v18 doubleValue];
      [(PLDisplayAgent *)self setDisplaymNits:?];
    }

    v19 = [v9 objectForKeyedSubscript:@"Brightness"];

    if (v19)
    {
      v20 = [v9 objectForKeyedSubscript:@"Brightness"];
      [v20 doubleValue];
      v22 = v21;

      [(PLDisplayAgent *)self setIsDisplayOnNow:v22 > 0.0];
    }

    hDRHeadroom = [(PLDisplayAgent *)self HDRHeadroom];

    if (hDRHeadroom)
    {
      hDRHeadroom2 = [(PLDisplayAgent *)self HDRHeadroom];
      [v9 setObject:hDRHeadroom2 forKeyedSubscript:@"EDRHeadroom"];

      [(PLDisplayAgent *)self setHDRHeadroom:0];
    }

    if ([(PLDisplayAgent *)self isMIEActive])
    {
      uAmpsFilterTimer = [(PLDisplayAgent *)self uAmpsFilterTimer];
      v26 = uAmpsFilterTimer == 0;

      if (v26)
      {
        objc_initWeak(location, self);
        v27 = objc_alloc(MEMORY[0x277D3F250]);
        v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:60.0];
        workQueue = [(PLOperator *)self workQueue];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __61__PLDisplayAgent_logEventForwardDisplayWithRawData_withDate___block_invoke;
        v35[3] = &unk_27825A810;
        objc_copyWeak(&v36, location);
        v30 = [v27 initWithFireDate:v28 withInterval:0 withTolerance:0 repeats:workQueue withUserInfo:v35 withQueue:0.0 withBlock:0.0];
        [(PLDisplayAgent *)self setUAmpsFilterTimer:v30];

        uAmpsFilterTimer2 = [(PLDisplayAgent *)self uAmpsFilterTimer];
        [uAmpsFilterTimer2 arm];

        objc_destroyWeak(&v36);
        objc_destroyWeak(location);
      }

      [(PLDisplayAgent *)self setUAmpsEntry:v9];
    }

    else
    {
      v32 = PLLogDisplay();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v9;
        _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "Event Forward display entry: %@", location, 0xCu);
      }

      [(PLOperator *)self logEntry:v9];
      [(PLDisplayAgent *)self modelDisplayPower:v9];
      [(PLDisplayAgent *)self qualifyDisplayPower:v9];
    }
  }
}

void __61__PLDisplayAgent_logEventForwardDisplayWithRawData_withDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reArmUAmpsCallback];
}

- (void)reArmUAmpsCallback
{
  uAmpsEntry = [(PLDisplayAgent *)self uAmpsEntry];
  [(PLOperator *)self logEntry:uAmpsEntry];

  uAmpsEntry2 = [(PLDisplayAgent *)self uAmpsEntry];
  [(PLDisplayAgent *)self modelDisplayPower:uAmpsEntry2];

  uAmpsEntry3 = [(PLDisplayAgent *)self uAmpsEntry];
  [(PLDisplayAgent *)self qualifyDisplayPower:uAmpsEntry3];

  uAmpsFilterTimer = [(PLDisplayAgent *)self uAmpsFilterTimer];
  [uAmpsFilterTimer invalidate];

  [(PLDisplayAgent *)self setUAmpsFilterTimer:0];

  [(PLDisplayAgent *)self setUAmpsEntry:0];
}

- (void)logEventForwardColorAdaptationMode
{
  colorAdaptationClient = [(PLDisplayAgent *)self colorAdaptationClient];
  if (colorAdaptationClient)
  {
    v4 = colorAdaptationClient;
    supportsAdaptation = [MEMORY[0x277CFD398] supportsAdaptation];

    if (supportsAdaptation)
    {
      v10 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"CAModeEnabled"];
      v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
      colorAdaptationClient2 = [(PLDisplayAgent *)self colorAdaptationClient];
      getEnabled = [colorAdaptationClient2 getEnabled];

      v9 = [MEMORY[0x277CCABB0] numberWithBool:getEnabled];
      [v6 setObject:v9 forKeyedSubscript:@"CAModeEnabled"];

      [(PLOperator *)self logEntry:v6];
    }
  }
}

- (void)logEventForwardALSUserPreferencesEntryWithLux:(id)lux
{
  luxCopy = lux;
  brightnessSystemClient = [(PLDisplayAgent *)self brightnessSystemClient];

  if (brightnessSystemClient && ([MEMORY[0x277D3F208] isMac] & 1) == 0)
  {
    brightnessSystemClient2 = [(PLDisplayAgent *)self brightnessSystemClient];
    v6 = [brightnessSystemClient2 copyPropertyForKey:@"ALSUserPreference"];

    if (v6)
    {
      null = [MEMORY[0x277CBEB68] null];

      if (v6 != null)
      {
        v8 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSUserPreferences"];
        v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
        v10 = v9;
        if (luxCopy)
        {
          [v9 setObject:luxCopy forKeyedSubscript:@"Lux"];
        }

        v11 = [v6 objectForKey:@"Prefs"];
        v12 = [v11 objectForKey:@"thirdSlope"];
        [v10 setObject:v12 forKeyedSubscript:@"thirdSlope"];

        [(PLOperator *)self logEntry:v10];
      }
    }
  }
}

- (void)logEventForwardExtendedALSUserPreferences:(id)preferences
{
  v4 = *MEMORY[0x277D3F5D0];
  preferencesCopy = preferences;
  v80 = [(PLOperator *)PLDisplayAgent entryKeyForType:v4 andName:@"ALSUserPreferences"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v80 withRawData:preferencesCopy];
  v7 = [preferencesCopy objectForKeyedSubscript:@"timestamp"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
  convertFromSystemToMonotonic = [v10 convertFromSystemToMonotonic];
  [v6 setEntryDate:convertFromSystemToMonotonic];

  v12 = [preferencesCopy objectForKeyedSubscript:@"e0a"];
  [v6 setObject:v12 forKeyedSubscript:@"E0a"];

  v13 = [preferencesCopy objectForKeyedSubscript:@"e0b"];
  [v6 setObject:v13 forKeyedSubscript:@"E0b"];

  v14 = [preferencesCopy objectForKeyedSubscript:@"e0b"];
  [v6 setObject:v14 forKeyedSubscript:@"E0b"];

  v15 = [preferencesCopy objectForKeyedSubscript:@"e1"];
  [v6 setObject:v15 forKeyedSubscript:@"E1"];

  v16 = [preferencesCopy objectForKeyedSubscript:@"e2"];
  [v6 setObject:v16 forKeyedSubscript:@"E2"];

  v17 = [preferencesCopy objectForKeyedSubscript:@"l0a"];
  [v6 setObject:v17 forKeyedSubscript:@"L0a"];

  v18 = [preferencesCopy objectForKeyedSubscript:@"l0b"];
  [v6 setObject:v18 forKeyedSubscript:@"L0b"];

  v19 = [preferencesCopy objectForKeyedSubscript:@"l1"];
  [v6 setObject:v19 forKeyedSubscript:@"L1"];

  v20 = [preferencesCopy objectForKeyedSubscript:@"l2"];
  [v6 setObject:v20 forKeyedSubscript:@"L2"];

  v21 = [preferencesCopy objectForKeyedSubscript:@"slider"];
  [v6 setObject:v21 forKeyedSubscript:@"S"];

  v22 = MEMORY[0x277CCABB0];
  v23 = [preferencesCopy objectForKeyedSubscript:@"frontLux"];
  [v23 floatValue];
  v25 = [v22 numberWithDouble:roundf(v24)];
  [v6 setObject:v25 forKeyedSubscript:@"Lux"];

  v26 = MEMORY[0x277CCABB0];
  v27 = [preferencesCopy objectForKeyedSubscript:@"rearLux"];
  [v27 floatValue];
  v29 = [v26 numberWithDouble:roundf(v28)];
  [v6 setObject:v29 forKeyedSubscript:@"rearLux"];

  v30 = MEMORY[0x277CCABB0];
  v31 = [preferencesCopy objectForKeyedSubscript:@"trustedLux"];
  [v31 floatValue];
  v33 = [v30 numberWithDouble:roundf(v32)];
  [v6 setObject:v33 forKeyedSubscript:@"trustedLux"];

  v34 = MEMORY[0x277CCABB0];
  v35 = [preferencesCopy objectForKeyedSubscript:@"delayedAPCE"];
  [v35 floatValue];
  v37 = [v34 numberWithDouble:roundf(v36 * 100.0)];
  [v6 setObject:v37 forKeyedSubscript:@"delayedAPCE"];

  v38 = MEMORY[0x277CCABB0];
  v39 = [preferencesCopy objectForKeyedSubscript:@"ecoModeFactor"];
  [v39 floatValue];
  v41 = [v38 numberWithDouble:roundf(v40 * 100.0)];
  [v6 setObject:v41 forKeyedSubscript:@"ecoModeFactor"];

  v42 = [preferencesCopy objectForKeyedSubscript:@"aabParamsUpdateReason"];
  [v6 setObject:v42 forKeyedSubscript:@"aabParamsUpdateReason"];

  v43 = MEMORY[0x277CCABB0];
  v44 = [preferencesCopy objectForKeyedSubscript:@"inactiveLength"];
  [v44 floatValue];
  v46 = [v43 numberWithDouble:roundf(v45 * 100.0)];
  [v6 setObject:v46 forKeyedSubscript:@"inactiveLength"];

  v47 = [preferencesCopy objectForKeyedSubscript:@"inactiveStart"];
  [v6 setObject:v47 forKeyedSubscript:@"inactiveStart"];

  v48 = [preferencesCopy objectForKeyedSubscript:@"alternativeE0a"];
  [v6 setObject:v48 forKeyedSubscript:@"alternativeE0a"];

  v49 = [preferencesCopy objectForKeyedSubscript:@"alternativeE0b"];
  [v6 setObject:v49 forKeyedSubscript:@"alternativeE0b"];

  v50 = [preferencesCopy objectForKeyedSubscript:@"alternativeE1"];
  [v6 setObject:v50 forKeyedSubscript:@"alternativeE1"];

  v51 = [preferencesCopy objectForKeyedSubscript:@"alternativeE2"];
  [v6 setObject:v51 forKeyedSubscript:@"alternativeE2"];

  v52 = MEMORY[0x277CCABB0];
  v53 = [preferencesCopy objectForKeyedSubscript:@"alternativeL0a"];
  [v53 floatValue];
  v55 = [v52 numberWithDouble:roundf(v54 * 100.0)];
  [v6 setObject:v55 forKeyedSubscript:@"alternativeL0a"];

  v56 = MEMORY[0x277CCABB0];
  v57 = [preferencesCopy objectForKeyedSubscript:@"alternativeL0b"];
  [v57 floatValue];
  v59 = [v56 numberWithDouble:roundf(v58 * 100.0)];
  [v6 setObject:v59 forKeyedSubscript:@"alternativeL0b"];

  v60 = MEMORY[0x277CCABB0];
  v61 = [preferencesCopy objectForKeyedSubscript:@"alternativeL1"];
  [v61 floatValue];
  v63 = [v60 numberWithDouble:roundf(v62 * 100.0)];
  [v6 setObject:v63 forKeyedSubscript:@"alternativeL1"];

  v64 = MEMORY[0x277CCABB0];
  v65 = [preferencesCopy objectForKeyedSubscript:@"alternativeL2"];
  [v65 floatValue];
  v67 = [v64 numberWithDouble:roundf(v66 * 100.0)];
  [v6 setObject:v67 forKeyedSubscript:@"alternativeL2"];

  v68 = MEMORY[0x277CCABB0];
  v69 = [preferencesCopy objectForKeyedSubscript:@"alternativeThirdSlope"];
  [v69 floatValue];
  v71 = [v68 numberWithDouble:roundf(v70 * 10000.0)];
  [v6 setObject:v71 forKeyedSubscript:@"alternativeThirdSlope"];

  v72 = MEMORY[0x277CCABB0];
  v73 = [preferencesCopy objectForKeyedSubscript:@"nitsDelta"];
  [v73 floatValue];
  v75 = [v72 numberWithDouble:roundf(v74 * 100.0)];
  [v6 setObject:v75 forKeyedSubscript:@"nitsDelta"];

  v76 = MEMORY[0x277CCABB0];
  v77 = [preferencesCopy objectForKeyedSubscript:@"nitsDeltaAlternative"];

  [v77 floatValue];
  v79 = [v76 numberWithDouble:roundf(v78 * 100.0)];
  [v6 setObject:v79 forKeyedSubscript:@"nitsDeltaAlternative"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardALSEnabled
{
  v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSEnabled"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLDisplayAgent alsOn](self, "alsOn")}];
  [v3 setObject:v4 forKeyedSubscript:@"ALSEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardALSUserPreferencesWithCurrLux
{
  brightnessSystemClient = [(PLDisplayAgent *)self brightnessSystemClient];

  if (brightnessSystemClient)
  {
    workQueue = [(PLOperator *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__PLDisplayAgent_logEventForwardALSUserPreferencesWithCurrLux__block_invoke;
    block[3] = &unk_2782591D0;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

void __62__PLDisplayAgent_logEventForwardALSUserPreferencesWithCurrLux__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) brightnessSystemClient];
  v3 = [v2 copyPropertyForKey:@"TrustedLux"];

  [*(a1 + 32) logEventForwardALSUserPreferencesEntryWithLux:v3];
}

- (void)logEventForwardLuxStats:(id)stats
{
  v19 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  if (statsCopy)
  {
    v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LuxStats"];
    v6 = [statsCopy valueForKey:@"rearLux"];
    integerValue = [v6 integerValue];

    if ([MEMORY[0x277D3F208] isiPhone])
    {
      if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] >= 1001021)
      {
        v8 = [statsCopy valueForKey:@"gainChanged"];
        bOOLValue = [v8 BOOLValue];

        if (bOOLValue)
        {
          v10 = PLLogDisplay();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v17 = 134217984;
            v18 = integerValue;
            _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "LuxStats gain changed, using last valid RearLux value %ld", &v17, 0xCu);
          }

          goto LABEL_20;
        }
      }
    }

    if ([(PLDisplayAgent *)self lastRearLuxValue]!= integerValue)
    {
      if ([(PLDisplayAgent *)self lastRearLuxValue]== -1)
      {
        v14 = 0.0;
        v12 = 0.0;
      }

      else
      {
        lastRearLuxValue = [(PLDisplayAgent *)self lastRearLuxValue];
        v12 = lastRearLuxValue - [(PLDisplayAgent *)self lastRearLuxValue]* 0.2;
        lastRearLuxValue2 = [(PLDisplayAgent *)self lastRearLuxValue];
        v14 = lastRearLuxValue2 + [(PLDisplayAgent *)self lastRearLuxValue]* 0.2;
      }

      if ([(PLDisplayAgent *)self lastRearLuxValue]== -1 || (v12 <= integerValue ? (v15 = v14 < integerValue) : (v15 = 1), v15))
      {
LABEL_20:
        v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:statsCopy];
        [(PLOperator *)self logEntry:v16];
        [(PLDisplayAgent *)self setLastRearLuxValue:integerValue];
      }
    }
  }

  else
  {
    v5 = PLLogDisplay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "empty payload for LuxStats", &v17, 2u);
    }
  }
}

- (void)logEventBackwardTouch
{
  iokitTouch = [(PLDisplayAgent *)self iokitTouch];

  if (iokitTouch)
  {
    iokitTouch2 = [(PLDisplayAgent *)self iokitTouch];
    v7 = [iokitTouch2 propertiesForKey:@"PowerStates"];

    if (v7)
    {
      v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Touch"];
      v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v7];
      [(PLOperator *)self logEntry:v6];
    }
  }
}

- (void)logEventBackwardUserTouch:(BOOL)touch
{
  touchCopy = touch;
  v23 = *MEMORY[0x277D85DE8];
  if ([(PLDisplayAgent *)self userTouch]== touch)
  {
    return;
  }

  [(PLDisplayAgent *)self setUserTouch:touchCopy];
  if (touchCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(PLDisplayAgent *)self setUserTouchDownTime:?];
LABEL_6:

    return;
  }

  userTouchDownTime = [(PLDisplayAgent *)self userTouchDownTime];

  if (userTouchDownTime)
  {
    v6 = objc_alloc(MEMORY[0x277D3F190]);
    v7 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UserTouch"];
    date = [v6 initWithEntryKey:v7];

    userTouchDownTime2 = [(PLDisplayAgent *)self userTouchDownTime];
    [userTouchDownTime2 timeIntervalSinceNow];
    v10 = -v9;

    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [date setObject:v11 forKeyedSubscript:@"UserTouchTime"];

    [date setObject:&unk_282C116D0 forKeyedSubscript:@"UserTouchCount"];
    [(PLOperator *)self logEntry:date];
    goto LABEL_6;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__PLDisplayAgent_logEventBackwardUserTouch___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v12;
    if (qword_2811F4988 != -1)
    {
      dispatch_once(&qword_2811F4988, block);
    }

    if (byte_2811F48FB == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Don't have start time for touch"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logEventBackwardUserTouch:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:3101];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__44__PLDisplayAgent_logEventBackwardUserTouch___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48FB = result;
  return result;
}

- (void)logEventBackwardRampInfo:(id)info
{
  infoCopy = info;
  v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"RampInfo"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  if (infoCopy)
  {
    v7 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];

    if (v7)
    {
      v8 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];
      v9 = [v8 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v6 setObject:v9 forKeyedSubscript:@"AAP_NumberOfUpdates"];

      v10 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];
      v11 = [v10 objectForKeyedSubscript:@"RampFrequency"];
      [v6 setObject:v11 forKeyedSubscript:@"AAP_RampFrequency"];

      v12 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];
      v13 = [v12 objectForKeyedSubscript:@"RampLength"];
      [v6 setObject:v13 forKeyedSubscript:@"AAP_RampLength"];

      v14 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];
      v15 = [v14 objectForKeyedSubscript:@"RampOrigin"];
      [v6 setObject:v15 forKeyedSubscript:@"AAP_RampOrigin"];

      v16 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];
      v17 = [v16 objectForKeyedSubscript:@"RampTarget"];
      [v6 setObject:v17 forKeyedSubscript:@"AAP_RampTarget"];
    }

    v18 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];

    if (v18)
    {
      v19 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v20 = [v19 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v6 setObject:v20 forKeyedSubscript:@"Colour_NumberOfUpdates"];

      v21 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v22 = [v21 objectForKeyedSubscript:@"RampFrequency"];
      [v6 setObject:v22 forKeyedSubscript:@"Colour_RampFrequency"];

      v23 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v24 = [v23 objectForKeyedSubscript:@"RampLength"];
      [v6 setObject:v24 forKeyedSubscript:@"Colour_RampLength"];

      v25 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v26 = [v25 objectForKeyedSubscript:@"RampOrigin"];
      v27 = [v26 objectForKeyedSubscript:@"X"];
      [v6 setObject:v27 forKeyedSubscript:@"Colour_RampOrigin_X"];

      v28 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v29 = [v28 objectForKeyedSubscript:@"RampOrigin"];
      v30 = [v29 objectForKeyedSubscript:@"Y"];
      [v6 setObject:v30 forKeyedSubscript:@"Colour_RampOrigin_Y"];

      v31 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v32 = [v31 objectForKeyedSubscript:@"RampTarget"];
      v33 = [v32 objectForKeyedSubscript:@"X"];
      [v6 setObject:v33 forKeyedSubscript:@"Colour_RampTarget_X"];

      v34 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v35 = [v34 objectForKeyedSubscript:@"RampTarget"];
      v36 = [v35 objectForKeyedSubscript:@"Y"];
      [v6 setObject:v36 forKeyedSubscript:@"Colour_RampTarget_Y"];
    }

    v37 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];

    if (v37)
    {
      v38 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];
      v39 = [v38 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v6 setObject:v39 forKeyedSubscript:@"SDR_NumberOfUpdates"];

      v40 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];
      v41 = [v40 objectForKeyedSubscript:@"RampFrequency"];
      [v6 setObject:v41 forKeyedSubscript:@"SDR_RampFrequency"];

      v42 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];
      v43 = [v42 objectForKeyedSubscript:@"RampLength"];
      [v6 setObject:v43 forKeyedSubscript:@"SDR_RampLength"];

      v44 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];
      v45 = [v44 objectForKeyedSubscript:@"RampOrigin"];
      [v6 setObject:v45 forKeyedSubscript:@"SDR_RampOrigin"];

      v46 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];
      v47 = [v46 objectForKeyedSubscript:@"RampTarget"];
      [v6 setObject:v47 forKeyedSubscript:@"SDR_RampTarget"];
    }

    v48 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];

    if (v48)
    {
      v49 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];
      v50 = [v49 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v6 setObject:v50 forKeyedSubscript:@"EDR_NumberOfUpdates"];

      v51 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];
      v52 = [v51 objectForKeyedSubscript:@"RampFrequency"];
      [v6 setObject:v52 forKeyedSubscript:@"EDR_RampFrequency"];

      v53 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];
      v54 = [v53 objectForKeyedSubscript:@"RampLength"];
      [v6 setObject:v54 forKeyedSubscript:@"EDR_RampLength"];

      v55 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];
      v56 = [v55 objectForKeyedSubscript:@"RampOrigin"];
      [v6 setObject:v56 forKeyedSubscript:@"EDR_RampOrigin"];

      v57 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];
      v58 = [v57 objectForKeyedSubscript:@"RampTarget"];
      [v6 setObject:v58 forKeyedSubscript:@"EDR_RampTarget"];
    }

    v59 = [infoCopy objectForKeyedSubscript:@"isFlipbookActive"];
    [v6 setObject:v59 forKeyedSubscript:@"isFlipbookActive"];

    [(PLOperator *)self logEntry:v6];
  }

  else
  {
    v60 = PLLogDisplay();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      *v61 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v60, OS_LOG_TYPE_DEBUG, "empty payload for RampInfo", v61, 2u);
    }
  }
}

- (void)logEventBackwardCurveUpdate:(id)update
{
  v61 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = PLLogDisplay();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (updateCopy)
  {
    selfCopy = self;
    if (v6)
    {
      *buf = 138412290;
      v60 = updateCopy;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "CurveUpdate is %@", buf, 0xCu);
    }

    v7 = 0x278257000uLL;
    v8 = *MEMORY[0x277D3F5C8];
    v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CurveUpdate"];
    array = [MEMORY[0x277CBEB18] array];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v11 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];

    v53 = v5;
    v55 = monotonicDate;
    v56 = array;
    if (v11)
    {
      v12 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
      v13 = [v12 objectForKeyedSubscript:@"lux"];

      v14 = v8;
      if ([v13 count])
      {
        v15 = 0;
        do
        {
          v16 = objc_alloc(MEMORY[0x277D3F190]);
          v17 = [(PLOperator *)PLDisplayAgent entryKeyForType:v14 andName:@"CurveUpdate"];
          v18 = [v16 initWithEntryKey:v17 withDate:monotonicDate];

          v19 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
          v20 = [v19 objectForKeyedSubscript:@"lux"];
          v21 = [v20 objectAtIndexedSubscript:v15];
          [v18 setObject:v21 forKeyedSubscript:@"lux"];

          v22 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
          v23 = [v22 objectForKeyedSubscript:@"nits"];
          v24 = [v23 objectAtIndexedSubscript:v15];
          [v18 setObject:v24 forKeyedSubscript:@"nits"];

          monotonicDate = v55;
          v7 = 0x278257000uLL;

          array = v56;
          [v18 setObject:&unk_282C116B8 forKeyedSubscript:@"level"];
          [v56 addObject:v18];

          ++v15;
        }

        while ([v13 count] > v15);
      }

      v5 = v53;
      v8 = v14;
    }

    v25 = [updateCopy objectForKeyedSubscript:@"CurveLevelMed"];

    v54 = v8;
    if (v25)
    {
      v26 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
      v27 = [v26 objectForKeyedSubscript:@"lux"];

      if ([v27 count])
      {
        v28 = 0;
        do
        {
          v29 = objc_alloc(MEMORY[0x277D3F190]);
          v30 = [(PLOperator *)PLDisplayAgent entryKeyForType:v8 andName:@"CurveUpdate"];
          v31 = [v29 initWithEntryKey:v30 withDate:monotonicDate];

          v32 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
          v33 = [v32 objectForKeyedSubscript:@"lux"];
          v34 = [v33 objectAtIndexedSubscript:v28];
          [v31 setObject:v34 forKeyedSubscript:@"lux"];

          v35 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
          v36 = [v35 objectForKeyedSubscript:@"nits"];
          v37 = [v36 objectAtIndexedSubscript:v28];
          [v31 setObject:v37 forKeyedSubscript:@"nits"];

          monotonicDate = v55;
          v7 = 0x278257000uLL;

          array = v56;
          [v31 setObject:&unk_282C116D0 forKeyedSubscript:@"level"];
          [v56 addObject:v31];

          v8 = v54;
          ++v28;
        }

        while ([v27 count] > v28);
      }

      v5 = v53;
    }

    v38 = [updateCopy objectForKeyedSubscript:@"CurveLevelLow"];

    if (v38)
    {
      v39 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
      v40 = [v39 objectForKeyedSubscript:@"lux"];

      if ([v40 count])
      {
        v41 = 0;
        do
        {
          v42 = objc_alloc(MEMORY[0x277D3F190]);
          v43 = [*(v7 + 3296) entryKeyForType:v8 andName:@"CurveUpdate"];
          v44 = [v42 initWithEntryKey:v43 withDate:monotonicDate];

          v45 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
          v46 = [v45 objectForKeyedSubscript:@"lux"];
          v47 = [v46 objectAtIndexedSubscript:v41];
          [v44 setObject:v47 forKeyedSubscript:@"lux"];

          v48 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
          v49 = [v48 objectForKeyedSubscript:@"nits"];
          v50 = [v49 objectAtIndexedSubscript:v41];
          [v44 setObject:v50 forKeyedSubscript:@"nits"];

          monotonicDate = v55;
          v7 = 0x278257000;

          array = v56;
          [v44 setObject:&unk_282C116E8 forKeyedSubscript:@"level"];
          [v56 addObject:v44];

          v8 = v54;
          ++v41;
        }

        while ([v40 count] > v41);
      }

      v5 = v53;
    }

    if ([array count])
    {
      v57 = v5;
      v58 = array;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      [(PLOperator *)selfCopy logEntries:v51 withGroupID:v5];
    }
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "empty payload for CurveUpdate", buf, 2u);
  }
}

- (void)logEventBackwardALSThreshold:(id)threshold
{
  v4 = *MEMORY[0x277D3F5C8];
  thresholdCopy = threshold;
  v7 = [(PLOperator *)PLDisplayAgent entryKeyForType:v4 andName:@"ALSThreshold"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:thresholdCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardALSSamplesBeforeWake:(id)wake
{
  v38 = *MEMORY[0x277D85DE8];
  wakeCopy = wake;
  if (wakeCopy)
  {
    selfCopy = self;
    v5 = *MEMORY[0x277D3F5C8];
    v27 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AmbientLight"];
    array = [MEMORY[0x277CBEB18] array];
    v7 = [wakeCopy objectForKeyedSubscript:@"count"];
    unsignedIntValue = [v7 unsignedIntValue];

    v29 = [wakeCopy objectForKeyedSubscript:@"timestamp"];
    v9 = [wakeCopy objectForKeyedSubscript:@"lux"];
    v10 = [wakeCopy objectForKeyedSubscript:@"color_x"];
    v28 = wakeCopy;
    v11 = [wakeCopy objectForKeyedSubscript:@"color_y"];
    if (unsignedIntValue)
    {
      v12 = 0;
      v13 = unsignedIntValue;
      do
      {
        v14 = MEMORY[0x277CBEAA8];
        v15 = [v29 objectAtIndexedSubscript:v12];
        [v15 doubleValue];
        v16 = [v14 dateWithTimeIntervalSinceReferenceDate:?];

        v17 = objc_alloc(MEMORY[0x277D3F190]);
        v18 = [(PLOperator *)PLDisplayAgent entryKeyForType:v5 andName:@"ALSSamplesBeforeWake"];
        v19 = [v17 initWithEntryKey:v18 withDate:v16];

        v20 = [v9 objectAtIndexedSubscript:v12];
        [v19 setObject:v20 forKeyedSubscript:@"Lux"];

        v21 = [v10 objectAtIndexedSubscript:v12];
        [v19 setObject:v21 forKeyedSubscript:@"colorX"];

        v22 = [v11 objectAtIndexedSubscript:v12];
        [v19 setObject:v22 forKeyedSubscript:@"colorY"];

        v23 = PLLogDisplay();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109634;
          v33 = v12;
          v34 = 2112;
          v35 = v16;
          v36 = 2112;
          v37 = v19;
          _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "ALSSamplesBeforeWake for the count=%d at the time=%@ is %@", buf, 0x1Cu);
        }

        [array addObject:v19];
        ++v12;
      }

      while (v13 != v12);
    }

    v24 = v27;
    if ([array count])
    {
      v30 = v27;
      v31 = array;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      [(PLOperator *)selfCopy logEntries:v25 withGroupID:v27];
    }

    wakeCopy = v28;
  }

  else
  {
    v24 = PLLogDisplay();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "empty payload for ALSSamplesBeforeWake", buf, 2u);
    }
  }
}

- (void)logEventBackwardAmbientLight:(id)light
{
  v39 = *MEMORY[0x277D85DE8];
  lightCopy = light;
  if ([MEMORY[0x277D3F208] internalBuild] && objc_msgSend(MEMORY[0x277D3F180], "fullMode") && self->_ShouldLogAmbient)
  {
    if (lightCopy)
    {
      selfCopy = self;
      v5 = *MEMORY[0x277D3F5C8];
      v29 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AmbientLight"];
      array = [MEMORY[0x277CBEB18] array];
      v7 = [lightCopy objectForKeyedSubscript:@"count"];
      unsignedIntValue = [v7 unsignedIntValue];

      v30 = [lightCopy objectForKeyedSubscript:@"timestamp"];
      v9 = [lightCopy objectForKeyedSubscript:@"lux"];
      v10 = [lightCopy objectForKeyedSubscript:@"color_x"];
      v28 = lightCopy;
      v11 = [lightCopy objectForKeyedSubscript:@"color_y"];
      if (unsignedIntValue)
      {
        v12 = 0;
        v13 = unsignedIntValue;
        do
        {
          v14 = array;
          v15 = MEMORY[0x277CBEAA8];
          v16 = [v30 objectAtIndexedSubscript:v12];
          [v16 doubleValue];
          v17 = [v15 dateWithTimeIntervalSinceReferenceDate:?];

          v18 = objc_alloc(MEMORY[0x277D3F190]);
          v19 = [(PLOperator *)PLDisplayAgent entryKeyForType:v5 andName:@"AmbientLight"];
          v20 = [v18 initWithEntryKey:v19 withDate:v17];

          v21 = [v9 objectAtIndexedSubscript:v12];
          [v20 setObject:v21 forKeyedSubscript:@"Lux"];

          v22 = [v10 objectAtIndexedSubscript:v12];
          [v20 setObject:v22 forKeyedSubscript:@"colorX"];

          v23 = [v11 objectAtIndexedSubscript:v12];
          [v20 setObject:v23 forKeyedSubscript:@"colorY"];

          v24 = PLLogDisplay();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109634;
            v34 = v12;
            v35 = 2112;
            v36 = v17;
            v37 = 2112;
            v38 = v20;
            _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "AmbientLight for the count=%d at the time=%@ is %@", buf, 0x1Cu);
          }

          array = v14;
          [v14 addObject:v20];

          ++v12;
        }

        while (v13 != v12);
      }

      v25 = v29;
      if ([array count])
      {
        v31 = v29;
        v32 = array;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        [(PLOperator *)selfCopy logEntries:v26 withGroupID:v29];
      }

      lightCopy = v28;
    }

    else
    {
      v25 = PLLogDisplay();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "empty payload for AmbientLight", buf, 2u);
      }
    }
  }
}

- (void)handleBrightnessClientNotification:(id)notification withValue:(id)value
{
  v73 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  valueCopy = value;
  if ([notificationCopy isEqual:@"BacklightPowerMilliWatts"])
  {
    workQueue = [(PLOperator *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke;
    block[3] = &unk_278259658;
    block[4] = self;
    v70 = valueCopy;
    dispatch_async_and_wait(workQueue, block);

    v9 = v70;
LABEL_38:

    goto LABEL_39;
  }

  if ([notificationCopy isEqual:@"BacklightPowerNits"])
  {
    workQueue2 = [(PLOperator *)self workQueue];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1750;
    v67[3] = &unk_278259658;
    v67[4] = self;
    v68 = valueCopy;
    dispatch_async_and_wait(workQueue2, v67);

    v9 = v68;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"AODRampTelemetry"])
  {
    workQueue3 = [(PLOperator *)self workQueue];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1761;
    v64[3] = &unk_278259658;
    v65 = valueCopy;
    selfCopy = self;
    dispatch_async_and_wait(workQueue3, v64);

    v9 = v65;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"AODCurveUpdate"])
  {
    workQueue4 = [(PLOperator *)self workQueue];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1762;
    v61[3] = &unk_278259658;
    v62 = valueCopy;
    selfCopy2 = self;
    dispatch_async_and_wait(workQueue4, v61);

    v9 = v62;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"AODWakeFromALSThreshold"])
  {
    workQueue5 = [(PLOperator *)self workQueue];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1763;
    v58[3] = &unk_278259658;
    v59 = valueCopy;
    selfCopy3 = self;
    dispatch_async_and_wait(workQueue5, v58);

    v9 = v59;
    goto LABEL_38;
  }

  if ([MEMORY[0x277D3F208] internalBuild] && objc_msgSend(MEMORY[0x277D3F180], "fullMode") && objc_msgSend(notificationCopy, "isEqual:", @"CBAmbientLightTelemetry") && self->_ShouldLogAmbient)
  {
    workQueue6 = [(PLOperator *)self workQueue];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1764;
    v55[3] = &unk_278259658;
    v56 = valueCopy;
    selfCopy4 = self;
    dispatch_async_and_wait(workQueue6, v55);

    v9 = v56;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"CBFinalBrightnessCommit"] && -[PLDisplayAgent supportsFinalBrightnessCommit](self, "supportsFinalBrightnessCommit"))
  {
    workQueue7 = [(PLOperator *)self workQueue];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1765;
    v52[3] = &unk_278259658;
    v53 = valueCopy;
    selfCopy5 = self;
    dispatch_async_and_wait(workQueue7, v52);

    v9 = v53;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"DisplayBrightness"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      workQueue8 = [(PLOperator *)self workQueue];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766;
      v50[3] = &unk_278259658;
      v50[4] = self;
      v51 = valueCopy;
      dispatch_async_and_wait(workQueue8, v50);

      v9 = v51;
      goto LABEL_38;
    }
  }

  if ([notificationCopy isEqual:@"BrightnessTransaction"])
  {
    workQueue9 = [(PLOperator *)self workQueue];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1773;
    v47[3] = &unk_278259658;
    v48 = valueCopy;
    selfCopy6 = self;
    dispatch_async_and_wait(workQueue9, v47);

    v9 = v48;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"DisplayBrightnessAuto"])
  {
    workQueue10 = [(PLOperator *)self workQueue];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1777;
    v45[3] = &unk_278259658;
    v45[4] = self;
    v46 = valueCopy;
    dispatch_async_and_wait(workQueue10, v45);

    v9 = v46;
    goto LABEL_38;
  }

  if ([MEMORY[0x277CFD398] supportsAdaptation] && objc_msgSend(notificationCopy, "isEqual:", @"ColorAdaptationEnabled"))
  {
    v19 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"CAModeEnabled"];
    [(PLDisplayAgent *)self logBrightnessDataWithEntryKey:v19 withColName:@"CAModeEnabled" withValue:valueCopy];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v20 = objc_opt_class();
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1782;
      v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v44[4] = v20;
      if (qword_2811F49C0 != -1)
      {
        dispatch_once(&qword_2811F49C0, v44);
      }

      if (byte_2811F4902 == 1)
      {
        valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: property=%@, value=%@", "-[PLDisplayAgent handleBrightnessClientNotification:withValue:]", 3514, notificationCopy, valueCopy];
        v22 = MEMORY[0x277D3F178];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        lastPathComponent = [v23 lastPathComponent];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]"];
        [v22 logMessage:valueCopy fromFile:lastPathComponent fromFunction:v25 fromLineNumber:3514];

        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v72 = valueCopy;
          _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    if ([notificationCopy isEqual:@"PowerLogReport"])
    {
      workQueue11 = [(PLOperator *)self workQueue];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1786;
      v40[3] = &unk_27825D6E8;
      v41 = valueCopy;
      selfCopy7 = self;
      v43 = notificationCopy;
      dispatch_async(workQueue11, v40);

      v9 = v41;
      goto LABEL_38;
    }

    if ([notificationCopy isEqual:@"CBBlueReductionStatus"])
    {
      [(PLDisplayAgent *)self logBlueLightDataWithDictionary:valueCopy];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v28 = objc_opt_class();
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1811;
        v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v39[4] = v28;
        if (qword_2811F49D0 != -1)
        {
          dispatch_once(&qword_2811F49D0, v39);
        }

        if (byte_2811F4904 == 1)
        {
          valueCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: property=%@, value=%@", "-[PLDisplayAgent handleBrightnessClientNotification:withValue:]", 3576, notificationCopy, valueCopy];
          v30 = MEMORY[0x277D3F178];
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          lastPathComponent2 = [v31 lastPathComponent];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]"];
          [v30 logMessage:valueCopy2 fromFile:lastPathComponent2 fromFunction:v33 fromLineNumber:3576];

          v34 = PLLogCommon();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v72 = valueCopy2;
            _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }

    else if (+[PLDisplayAgent shouldLogLuxStats](PLDisplayAgent, "shouldLogLuxStats") && [notificationCopy isEqual:@"RLuxStats"])
    {
      workQueue12 = [(PLOperator *)self workQueue];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1812;
      v36[3] = &unk_278259658;
      v37 = valueCopy;
      selfCopy8 = self;
      dispatch_async_and_wait(workQueue12, v36);

      v9 = v37;
      goto LABEL_38;
    }
  }

LABEL_39:
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) alsOn] & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = [v2 valueForKey:@"BacklightPowerMilliWattsRealSub"];
    v4 = [v2 valueForKey:@"BacklightPowerMilliWattsABSub"];
    v5 = +[PLDisplayAgent shouldModelPowerFromIOMFB];
    [v3 floatValue];
    if (v5)
    {
      v7 = v6;
      [v4 floatValue];
      v9 = v8;
    }

    else
    {
      v10 = (v6 * 1000.0) / 1.8;
      [v4 floatValue];
      v12 = (v11 * 1000.0) / 1.8;
      [*(a1 + 32) uAmpsToDisplayPower:v10];
      v7 = v13;
      [*(a1 + 32) uAmpsToDisplayPower:v12];
      v9 = v14;
    }

    v15 = v7 - v9;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2;
      block[3] = &unk_27825A310;
      v62 = @"ALS";
      v63 = v16;
      if (qword_2811F4990 != -1)
      {
        dispatch_once(&qword_2811F4990, block);
      }

      v17 = byte_2811F48FC;

      if (v17 == 1)
      {
        v52 = v3;
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"PowerReal:%f PowerIfALSOn:%f alsPowerSaved:%f", *&v7, *&v9, v7 - v9];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v21 = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke"];
        [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:3333];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v65 = v18;
          _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v3 = v52;
      }
    }

    [*(a1 + 32) lastALSPowerSaved];
    v25 = v24;
    if (v15 == 0.0)
    {
      [*(a1 + 32) lastALSPowerSaved];
      v27 = v26 != 0.0;
    }

    else
    {
      v27 = 0;
    }

    v28 = vabdd_f64(v15, v25);
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v29 = objc_opt_class();
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1732;
      v58[3] = &unk_27825A310;
      v59 = @"ALS";
      v60 = v29;
      if (qword_2811F4998 != -1)
      {
        dispatch_once(&qword_2811F4998, v58);
      }

      v30 = byte_2811F48FD;

      if (v30 == 1)
      {
        v53 = v3;
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"significantChange:%d newlyZero:%d", v28 >= 1.0, v27];
        v32 = MEMORY[0x277D3F178];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v34 = [v33 lastPathComponent];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke_2"];
        [v32 logMessage:v31 fromFile:v34 fromFunction:v35 fromLineNumber:3341];

        v36 = PLLogCommon();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v65 = v31;
          _os_log_debug_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v3 = v53;
      }
    }

    if (v28 >= 1.0 || v27)
    {
      [*(a1 + 32) setLastALSPowerSaved:v15];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v37 = objc_opt_class();
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1739;
        v55[3] = &unk_27825A310;
        v56 = @"ALS";
        v57 = v37;
        if (qword_2811F49A0 != -1)
        {
          dispatch_once(&qword_2811F49A0, v55);
        }

        v38 = byte_2811F48FE;

        if (v38 == 1)
        {
          v39 = v3;
          v40 = MEMORY[0x277CCACA8];
          [*(a1 + 32) lastALSPowerSaved];
          v42 = [v40 stringWithFormat:@"Setting lastALSPowerSaved=%f", v41];
          v43 = MEMORY[0x277D3F178];
          v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          v45 = [v44 lastPathComponent];
          v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke_2"];
          [v43 logMessage:v42 fromFile:v45 fromFunction:v46 fromLineNumber:3345];

          v47 = PLLogCommon();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v65 = v42;
            _os_log_debug_impl(&dword_21A4C6000, v47, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v3 = v39;
        }
      }

      v48 = MEMORY[0x277D3F1E0];
      v49 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:2.0];
      v50 = [*(a1 + 32) workQueue];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1744;
      v54[3] = &unk_27825B230;
      v54[4] = *(a1 + 32);
      v51 = [v48 scheduledTimerWithMonotonicFireDate:v49 withInterval:v50 withQueue:v54 withBlock:0.0];
      [*(a1 + 32) setLogLastALSPowerSavedTimer:v51];
    }
  }
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F48FC = result;
  return result;
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1732(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F48FD = result;
  return result;
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1739(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F48FE = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1744(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (+[PLDisplayAgent shouldLogALSPowerSaved])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1745;
      block[3] = &unk_27825A310;
      v19 = @"ALS";
      v20 = v4;
      if (qword_2811F49A8 != -1)
      {
        dispatch_once(&qword_2811F49A8, block);
      }

      v5 = byte_2811F48FF;

      if (v5 == 1)
      {
        v6 = MEMORY[0x277CCACA8];
        [*(a1 + 32) lastALSPowerSaved];
        v8 = [v6 stringWithFormat:@"Logging lastALSPowerSaved=%f", v7];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v11 = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke"];
        [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:3352];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v22 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v14 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSPowerSaved"];
    v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14 withDate:v3];
    v16 = MEMORY[0x277CCABB0];
    [*(a1 + 32) lastALSPowerSaved];
    v17 = [v16 numberWithDouble:?];
    [v15 setObject:v17 forKeyedSubscript:@"Power"];

    [*(a1 + 32) logEntry:v15];
  }
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1745(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F48FF = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1750(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) alsOn] & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = [v2 valueForKey:@"BacklightPowerNitsRealSub"];
    v4 = [v2 valueForKey:@"BacklightPowerNitsABSub"];
    [v3 floatValue];
    *&v6 = v5 * 1000.0;
    [*(a1 + 32) setRealmNits:v6];
    [v4 floatValue];
    *&v8 = v7 * 1000.0;
    [*(a1 + 32) setAutobrightnessmNits:v8];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1757;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v9;
      if (qword_2811F49B0 != -1)
      {
        dispatch_once(&qword_2811F49B0, block);
      }

      if (byte_2811F4900 == 1)
      {
        v10 = MEMORY[0x277CCACA8];
        [*(a1 + 32) realmNits];
        v12 = v11;
        [*(a1 + 32) autobrightnessmNits];
        v14 = [v10 stringWithFormat:@"BrightnessNotification - Real: %f Nits\tVirtual: %f Nits", *&v12, v13];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v17 = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke"];
        [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:3378];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v22 = v14;
          _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1757(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4900 = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1761(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = PLLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "We Recieved notification for AODRampTelemetry: %@", &v4, 0xCu);
  }

  [*(a1 + 40) logEventBackwardRampInfo:v2];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1762(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = PLLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "We Recieved notification for AODCurveUpdate: %@", &v4, 0xCu);
  }

  [*(a1 + 40) logEventBackwardCurveUpdate:v2];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1763(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = PLLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "We Recieved notification for AODWakeFromALSThreshold: %@", &v7, 0xCu);
  }

  [*(a1 + 40) logEventBackwardALSThreshold:v2];
  v4 = [v2 objectForKeyedSubscript:@"ALSSamplesBeforeWake"];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v2 objectForKeyedSubscript:@"ALSSamplesBeforeWake"];
    [v5 logEventBackwardALSSamplesBeforeWake:v6];
  }
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1764(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = PLLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "We Recieved notification for CBAmbientLight: %@", &v4, 0xCu);
  }

  [*(a1 + 40) logEventBackwardAmbientLight:v2];
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1765(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = PLLogDisplay();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "@kCBFinalBrightnessCommit: %@", &v8, 0xCu);
  }

  v3 = [*(a1 + 32) objectForKey:@"slider"];
  [v3 floatValue];
  v5 = v4 * 100.0;

  [*(a1 + 40) logEventPointUserBrightnessCommitted:v5];
  return [*(a1 + 40) logEventForwardExtendedALSUserPreferences:*(a1 + 32)];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogUserBrightness])
  {
    if (([*(a1 + 32) supportsFinalBrightnessCommit] & 1) == 0)
    {
      v2 = [*(a1 + 40) objectForKey:@"Commit"];
      v3 = [v2 BOOLValue];

      if (v3)
      {
        v4 = [*(a1 + 40) objectForKey:@"Brightness"];
        [v4 floatValue];
        v6 = v5 * 100.0;

        [*(a1 + 32) logEventPointUserBrightnessCommitted:v6];
        if ([*(a1 + 32) alsOn])
        {
          [*(a1 + 32) logEventForwardALSUserPreferencesWithCurrLux];
        }
      }
    }
  }

  if ([MEMORY[0x277D3F208] hasCapability:8])
  {
    v7 = PLLogDisplay();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v46 = 138412290;
      v47 = v8;
      _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEFAULT, "Received Brightness Notification: %@", &v46, 0xCu);
    }

    v9 = [*(a1 + 32) pendingBacklightEntry];

    if (!v9)
    {
      v10 = *(a1 + 32);
      v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(a1 + 40)];
      [v10 setPendingBacklightEntry:v11];
    }

    v12 = [*(a1 + 40) objectForKey:@"NitsPhysical"];
    [v12 floatValue];
    v14 = v13;

    v15 = [*(a1 + 32) brightnessSystemClient];
    v16 = [v15 copyPropertyForKey:@"DisplayBrightnessMin"];
    [v16 doubleValue];
    v18 = v17;

    v19 = [*(a1 + 32) brightnessSystemClient];
    v20 = [v19 copyPropertyForKey:@"DisplayBrightnessMax"];
    [v20 doubleValue];
    v22 = v21;

    v23 = [*(a1 + 40) objectForKey:@"Brightness"];
    [v23 floatValue];
    v25 = v24;

    v26 = PLLogDisplay();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v46 = 134219264;
      v47 = v14;
      v48 = 2048;
      v49 = v18;
      v50 = 2048;
      v51 = v22;
      v52 = 2048;
      v53 = v22 - v18;
      v54 = 2048;
      v55 = v25;
      v56 = 2048;
      v57 = (v25 - v18) * 100.0 / (v22 - v18);
      _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "Reported mNits:%f ,brightnessMin:%f ,brightnessMax:%f ,brightnessDiff:%f ,brightness:%f ,brightnessPercentage:%f ", &v46, 0x3Eu);
    }

    v27 = [MEMORY[0x277CCABB0] numberWithDouble:(v25 - v18) * 100.0 / (v22 - v18)];
    v28 = [*(a1 + 32) pendingBacklightEntry];
    [v28 setObject:v27 forKeyedSubscript:@"Brightness"];

    v29 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
    v30 = [*(a1 + 32) pendingBacklightEntry];
    [v30 setObject:v29 forKeyedSubscript:@"SliderValue"];

    v31 = [MEMORY[0x277CCABB0] numberWithDouble:v14 * 1000.0];
    v32 = [*(a1 + 32) pendingBacklightEntry];
    [v32 setObject:v31 forKeyedSubscript:@"mNits"];

    v33 = [*(a1 + 32) pendingBacklightEntryDate];

    if (!v33)
    {
      v34 = [MEMORY[0x277CBEAA8] monotonicDate];
      [*(a1 + 32) setPendingBacklightEntryDate:v34];
    }

    v35 = PLLogDisplay();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 32) pendingBacklightEntry];
      v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v42 = MEMORY[0x277D3F268];
      v43 = [*(a1 + 32) pendingBacklightEntryDate];
      [v42 formattedStringForDate:v43];
      v44 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v46 = 138412546;
      v47 = v41;
      v48 = 2112;
      v49 = v44;
      _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "Pending Backlight entry: %@, %@", &v46, 0x16u);
    }

    v36 = [*(a1 + 32) backlightFilterTimer];
    v37 = [v36 timerActive];

    if ((v37 & 1) == 0)
    {
      v38 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
      v39 = PLLogDisplay();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [MEMORY[0x277D3F268] formattedStringForDate:v38];
        v45 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v46 = 138412290;
        v47 = v45;
        _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "Start backlight entry filter timer fireDate=%@", &v46, 0xCu);
      }

      v40 = [*(a1 + 32) backlightFilterTimer];
      [v40 setFireDate:v38];
    }
  }
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1773(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = PLLogDisplay();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "BrightnessTransaction payload: %@", &v8, 0xCu);
  }

  v3 = [*(a1 + 32) objectForKey:@"HDR.Headroom"];
  [v3 doubleValue];
  v5 = (v4 * 1000.0);

  v6 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  [*(a1 + 40) setHDRHeadroom:v6];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1777(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setAlsOn:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1778;
    block[3] = &unk_27825A310;
    v13 = @"ALS";
    v14 = v2;
    if (qword_2811F49B8 != -1)
    {
      dispatch_once(&qword_2811F49B8, block);
    }

    v3 = byte_2811F4901;

    if (v3 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Auto-brightness switched to alsOn=%i", objc_msgSend(*(a1 + 32), "alsOn")];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:3495];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v16 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventForwardALSEnabled];
  if ([*(a1 + 32) alsOn])
  {
    if (+[PLDisplayAgent shouldLogALSPowerSaved])
    {
      v10 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSPowerSaved"];
      v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
      [v11 setObject:&unk_282C116B8 forKeyedSubscript:@"Power"];
      [*(a1 + 32) logEntry:v11];
    }
  }
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1778(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F4901 = result;
  return result;
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1782(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4902 = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1786(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x277D3F5C8];
  v4 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BlueLightParameters"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = [v2 objectForKeyedSubscript:@"BlueLightReductionOffTime"];
  [v5 setObject:v6 forKeyedSubscript:@"BlueLightReductionOffTime"];

  v7 = [v2 objectForKeyedSubscript:@"BlueLightReductionOnTime"];
  [v5 setObject:v7 forKeyedSubscript:@"BlueLightReductionOnTime"];

  v8 = [v2 objectForKeyedSubscript:@"AvgBacklightNits"];
  [v5 setObject:v8 forKeyedSubscript:@"AvgBacklightNits"];

  v9 = [v2 objectForKeyedSubscript:@"AvgLogicalBrightnessNits"];
  [v5 setObject:v9 forKeyedSubscript:@"AvgLogicalBrightnessNits"];

  [*(a1 + 40) logEntry:v5];
  if ([MEMORY[0x277CFD398] supportsAdaptation])
  {
    v10 = [(PLOperator *)PLDisplayAgent entryKeyForType:v3 andName:@"HParameters"];

    v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
    v12 = *(a1 + 40);
    v13 = [v2 objectForKeyedSubscript:@"DisplayColorBins"];
    [v12 extractDataWithEntry:v11 withColName:@"DisplayColorBins" withDataArray:v13];

    v14 = *(a1 + 40);
    v15 = [v2 objectForKeyedSubscript:@"AmbientColorBins"];
    [v14 extractDataWithEntry:v11 withColName:@"AmbientColorBins" withDataArray:v15];

    v16 = *(a1 + 40);
    v17 = [v2 objectForKeyedSubscript:@"AdaptationStrengthBins"];
    [v16 extractDataWithEntry:v11 withColName:@"AdaptationStrengthBins" withDataArray:v17];

    v18 = *(a1 + 40);
    v19 = [v2 objectForKeyedSubscript:@"AmbientColorBinsAnsi"];
    [v18 extractDataWithEntry:v11 withColName:@"AmbientColorBinsAnsi" withDataArray:v19];

    v20 = *(a1 + 40);
    v21 = [v2 objectForKeyedSubscript:@"AmbientColorTransitionBins"];
    [v20 extractDataWithEntry:v11 withColName:@"AmbientColorTransitionBins" withDataArray:v21];

    v22 = *(a1 + 40);
    v23 = [v2 objectForKeyedSubscript:@"DisplayColorTransitionBins"];
    [v22 extractDataWithEntry:v11 withColName:@"DisplayColorTransitionBins" withDataArray:v23];

    v24 = [v11 allValues];
    v25 = [v24 count];

    if (v25)
    {
      [*(a1 + 40) logEntry:v11];
    }

    v4 = v10;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v26 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1805;
    v36 = &__block_descriptor_40_e5_v8__0lu32l8;
    v37 = v26;
    if (qword_2811F49C8 != -1)
    {
      dispatch_once(&qword_2811F49C8, &block);
    }

    if (byte_2811F4903 == 1)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: harmonyParametersEntry=%@, property=%@, value=%@", "-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke", 3570, v5, *(a1 + 48), *(a1 + 32), block, v34, v35, v36, v37];
      v28 = MEMORY[0x277D3F178];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v30 = [v29 lastPathComponent];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke"];
      [v28 logMessage:v27 fromFile:v30 fromFunction:v31 fromLineNumber:3570];

      v32 = PLLogCommon();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v39 = v27;
        _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1805(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4903 = result;
  return result;
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1811(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4904 = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1812(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = PLLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Received notification for CBrLuxStats: %@", &v4, 0xCu);
  }

  [*(a1 + 40) logEventForwardLuxStats:v2];
}

- (void)extractDataWithEntry:(id)entry withColName:(id)name withDataArray:(id)array
{
  v26 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  nameCopy = name;
  arrayCopy = array;
  v9 = [arrayCopy count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = @"ACBins";
      if (([(__CFString *)nameCopy isEqualToString:@"AmbientColorBins"]& 1) != 0 || (v12 = @"DCBins", ([(__CFString *)nameCopy isEqualToString:@"DisplayColorBins"]& 1) != 0) || (v12 = @"ASBins", ([(__CFString *)nameCopy isEqualToString:@"AdaptationStrengthBins"]& 1) != 0) || (v12 = @"ACABins", ([(__CFString *)nameCopy isEqualToString:@"AmbientColorBinsAnsi"]& 1) != 0) || (v12 = @"ACTBins", ([(__CFString *)nameCopy isEqualToString:@"AmbientColorTransitionBins"]& 1) != 0) || (v12 = @"DCTBins", [(__CFString *)nameCopy isEqualToString:@"DisplayColorTransitionBins"]))
      {

        nameCopy = v12;
      }

      v13 = [arrayCopy objectAtIndexedSubscript:i];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%lu", nameCopy, i];
      [entryCopy setObject:v13 forKeyedSubscript:v14];
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__PLDisplayAgent_extractDataWithEntry_withColName_withDataArray___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v15;
    if (qword_2811F49D8 != -1)
    {
      dispatch_once(&qword_2811F49D8, block);
    }

    if (byte_2811F4905 == 1)
    {
      entryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: col=%@, data=%@, entry=%@", "-[PLDisplayAgent extractDataWithEntry:withColName:withDataArray:]", 3615, nameCopy, arrayCopy, entryCopy];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent extractDataWithEntry:withColName:withDataArray:]"];
      [v17 logMessage:entryCopy fromFile:lastPathComponent fromFunction:v20 fromLineNumber:3615];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = entryCopy;
        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__65__PLDisplayAgent_extractDataWithEntry_withColName_withDataArray___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4905 = result;
  return result;
}

- (void)logBrightnessDataWithEntryKey:(id)key withColName:(id)name withValue:(id)value
{
  v26 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  nameCopy = name;
  valueCopy = value;
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:keyCopy];
  [v11 setObject:valueCopy forKeyedSubscript:nameCopy];
  [(PLOperator *)self logEntry:v11];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __70__PLDisplayAgent_logBrightnessDataWithEntryKey_withColName_withValue___block_invoke;
    v22 = &__block_descriptor_40_e5_v8__0lu32l8;
    v23 = v12;
    if (qword_2811F49E0 != -1)
    {
      dispatch_once(&qword_2811F49E0, &block);
    }

    if (byte_2811F4906 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: entryKey=%@, col=%@, value=%@", "-[PLDisplayAgent logBrightnessDataWithEntryKey:withColName:withValue:]", 3622, keyCopy, nameCopy, valueCopy, block, v20, v21, v22, v23];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logBrightnessDataWithEntryKey:withColName:withValue:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:3622];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__70__PLDisplayAgent_logBrightnessDataWithEntryKey_withColName_withValue___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4906 = result;
  return result;
}

+ (BOOL)shouldLogBLR
{
  if (qword_2811F49E8 != -1)
  {
    dispatch_once(&qword_2811F49E8, &__block_literal_global_1841);
  }

  return byte_2811F4907;
}

uint64_t __30__PLDisplayAgent_shouldLogBLR__block_invoke()
{
  if ([MEMORY[0x277D3F208] isiPod] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isiPhone") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isiPad"))
  {
    result = 1;
  }

  else
  {
    result = [MEMORY[0x277D3F208] isMac];
  }

  byte_2811F4907 = result;
  return result;
}

+ (BOOL)shouldLogALSPowerSaved
{
  if (qword_2811F49F0 != -1)
  {
    dispatch_once(&qword_2811F49F0, &__block_literal_global_1843);
  }

  return byte_2811F4908;
}

void *__40__PLDisplayAgent_shouldLogALSPowerSaved__block_invoke()
{
  result = [MEMORY[0x277D3F208] isiPod];
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = [MEMORY[0x277D3F208] isMac];
    v1 = result ^ 1;
  }

  byte_2811F4908 = v1;
  return result;
}

+ (BOOL)shouldLogBacklightControl
{
  if (qword_2811F49F8 != -1)
  {
    dispatch_once(&qword_2811F49F8, &__block_literal_global_1845);
  }

  return byte_2811F4909;
}

void *__43__PLDisplayAgent_shouldLogBacklightControl__block_invoke()
{
  result = [MEMORY[0x277D3F208] isArchARM];
  byte_2811F4909 = result;
  return result;
}

+ (BOOL)shouldLogDisplay
{
  if (qword_2811F4A00 != -1)
  {
    dispatch_once(&qword_2811F4A00, &__block_literal_global_1847);
  }

  return byte_2811F490A;
}

void *__34__PLDisplayAgent_shouldLogDisplay__block_invoke()
{
  result = [MEMORY[0x277D3F208] isArchARM];
  byte_2811F490A = result;
  return result;
}

+ (BOOL)shouldLogLCD
{
  if (qword_2811F4A08 != -1)
  {
    dispatch_once(&qword_2811F4A08, &__block_literal_global_1849);
  }

  return byte_2811F490B;
}

void *__30__PLDisplayAgent_shouldLogLCD__block_invoke()
{
  result = [MEMORY[0x277D3F208] isMac];
  byte_2811F490B = result;
  return result;
}

void *__34__PLDisplayAgent_shouldLogFromDCP__block_invoke()
{
  result = [MEMORY[0x277D3F208] hasDCP];
  if (result)
  {
    result = [MEMORY[0x277D3F208] kPLDeviceClassIsOneOf:{102042, 0}];
    v1 = result ^ 1;
  }

  else
  {
    v1 = 0;
  }

  byte_2811F490C = v1;
  return result;
}

void *__41__PLDisplayAgent_shouldLogUserBrightness__block_invoke()
{
  result = [MEMORY[0x277D3F208] isMac];
  byte_2811F490D = result ^ 1;
  return result;
}

+ (BOOL)shouldLogKeyboardBrightness
{
  if (qword_2811F4A20 != -1)
  {
    dispatch_once(&qword_2811F4A20, &__block_literal_global_1855);
  }

  return byte_2811F490E;
}

void *__45__PLDisplayAgent_shouldLogKeyboardBrightness__block_invoke()
{
  v0 = [MEMORY[0x277D3F208] isiPad];
  result = [MEMORY[0x277D3F208] isMac];
  byte_2811F490E = (result | v0) & 1;
  return result;
}

- (void)logBlueLightDataWithDictionary:(id)dictionary
{
  v35 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  bluelightFilterTimer = [(PLDisplayAgent *)self bluelightFilterTimer];

  if (!bluelightFilterTimer)
  {
    objc_initWeak(location, self);
    v6 = objc_alloc(MEMORY[0x277D3F250]);
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.5];
    workQueue = [(PLOperator *)self workQueue];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __49__PLDisplayAgent_logBlueLightDataWithDictionary___block_invoke;
    v31[3] = &unk_27825A810;
    objc_copyWeak(&v32, location);
    v9 = [v6 initWithFireDate:v7 withInterval:0 withTolerance:0 repeats:workQueue withUserInfo:v31 withQueue:0.0 withBlock:0.0];
    [(PLDisplayAgent *)self setBluelightFilterTimer:v9];

    bluelightFilterTimer2 = [(PLDisplayAgent *)self bluelightFilterTimer];
    [bluelightFilterTimer2 arm];

    objc_destroyWeak(&v32);
    objc_destroyWeak(location);
  }

  v11 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"BlueLightReductionStatus"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  allKeys = [dictionaryCopy allKeys];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = [allKeys countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v14)
  {
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = [dictionaryCopy objectForKeyedSubscript:v17];
        [v12 setObject:v18 forKeyedSubscript:v17];
      }

      v14 = [allKeys countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v14);
  }

  [(PLDisplayAgent *)self setBluelightStatusEntry:v12];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PLDisplayAgent_logBlueLightDataWithDictionary___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v19;
    if (qword_2811F4A28 != -1)
    {
      dispatch_once(&qword_2811F4A28, block);
    }

    if (byte_2811F490F == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: entryKey=%@, entry=%@", "-[PLDisplayAgent logBlueLightDataWithDictionary:]", 3734, v11, v12];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logBlueLightDataWithDictionary:]"];
      [v21 logMessage:v20 fromFile:lastPathComponent fromFunction:v24 fromLineNumber:3734];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v20;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", location, 0xCu);
      }
    }
  }
}

void __49__PLDisplayAgent_logBlueLightDataWithDictionary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reArmCallback];
}

void *__49__PLDisplayAgent_logBlueLightDataWithDictionary___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F490F = result;
  return result;
}

- (void)reArmCallback
{
  bluelightStatusEntry = [(PLDisplayAgent *)self bluelightStatusEntry];
  [(PLOperator *)self logEntry:bluelightStatusEntry];

  bluelightFilterTimer = [(PLDisplayAgent *)self bluelightFilterTimer];

  if (bluelightFilterTimer)
  {
    bluelightFilterTimer2 = [(PLDisplayAgent *)self bluelightFilterTimer];
    [bluelightFilterTimer2 invalidate];
  }

  [(PLDisplayAgent *)self setBluelightFilterTimer:0];

  [(PLDisplayAgent *)self setBluelightStatusEntry:0];
}

+ (BOOL)shouldLogTouch
{
  if (qword_2811F4A30 != -1)
  {
    dispatch_once(&qword_2811F4A30, &__block_literal_global_1861);
  }

  return byte_2811F4910;
}

void *__32__PLDisplayAgent_shouldLogTouch__block_invoke()
{
  result = [MEMORY[0x277D3F208] isiOS];
  byte_2811F4910 = result;
  return result;
}

- (__IOHIDEventSystemClient)setUpIOHIDTouchSystemClient
{
  if (!+[PLDisplayAgent shouldLogTouch](PLDisplayAgent, "shouldLogTouch") || ![MEMORY[0x277D3F180] fullMode])
  {
    return 0;
  }

  v3 = IOHIDEventSystemClientCreate();
  if (v3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:13];
    [dictionary setObject:v5 forKey:@"DeviceUsagePage"];

    v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setObject:v6 forKey:@"Built-In"];

    workQueue = [(PLOperator *)self workQueue];
    IOHIDEventSystemClientScheduleWithDispatchQueue();

    IOHIDEventSystemClientRegisterEventCallback();
    IOHIDEventSystemClientSetMatching();
  }

  return v3;
}

- (BOOL)updateDisplayIOReportStats:(id)stats logZeroFramesOnlyOnce:(BOOL)once
{
  onceCopy = once;
  statsCopy = stats;
  v6 = statsCopy;
  if (statsCopy && [statsCopy subscription])
  {
    [v6 subscription];
    subscribedChannels = [v6 subscribedChannels];
    Samples = IOReportCreateSamples();

    if (!Samples)
    {
      LOBYTE(SamplesDelta) = 0;
LABEL_42:

      goto LABEL_43;
    }

    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    ioReportSample = [v6 ioReportSample];

    if (!ioReportSample)
    {
LABEL_39:
      [v6 setIoReportSample:Samples];
      SamplesDelta = [v6 sampleTime];
      [v6 setSampleTimePrevious:SamplesDelta];

      [v6 setSampleTime:monotonicDate];
      LOBYTE(SamplesDelta) = 1;
      goto LABEL_41;
    }

    ioReportSample2 = [v6 ioReportSample];
    SamplesDelta = IOReportCreateSamplesDelta();

    if (!SamplesDelta)
    {
LABEL_41:

      goto LABEL_42;
    }

    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__8;
    v76 = __Block_byref_object_dispose__8;
    v77 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__8;
    v70 = __Block_byref_object_dispose__8;
    v71 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__8;
    v64 = __Block_byref_object_dispose__8;
    v65 = 0;
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x3032000000;
    v58[3] = __Block_byref_object_copy__8;
    v58[4] = __Block_byref_object_dispose__8;
    v59 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = __Block_byref_object_copy__8;
    v56[4] = __Block_byref_object_dispose__8;
    v57 = 0;
    v13 = objc_alloc_init(PLDisplayAPLStats);
    IOReportIterate();
    sampleTime = [v6 sampleTime];
    [monotonicDate timeIntervalSinceDate:sampleTime];
    v16 = v15;

    if (v16 <= 0.0 || ([v61[5] doubleValue], v17 <= 0.0))
    {
      [(PLDisplayAPLStats *)v13 setAvgPower:&unk_282C1C278];
    }

    else
    {
      if ([MEMORY[0x277D3F208] kPLDeviceClassIsOneOf:{100078, 100079, 0}])
      {
        v18 = 1.12014716;
      }

      else if ([MEMORY[0x277D3F208] kPLDeviceClassIsOneOf:{100080, 100081, 0}])
      {
        v18 = 1.29084846;
      }

      else
      {
        v18 = 0.0;
      }

      [v61[5] doubleValue];
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:v19 / v16 / 1000.0 + v18 * 1000.0];
      [(PLDisplayAPLStats *)v13 setAvgPower:v20];
    }

    v21 = v67[5];
    if (v21 && [v21 intValue] >= 1)
    {
      [v73[5] doubleValue];
      v23 = v22;
      [v67[5] doubleValue];
      v25 = [MEMORY[0x277CCABB0] numberWithDouble:v23 / v24];
      [(PLDisplayAPLStats *)v13 setAvgAPL:v25];
    }

    frames = [(PLDisplayAPLStats *)v13 frames];
    if (frames)
    {
      frames2 = [(PLDisplayAPLStats *)v13 frames];
      intValue = [frames2 intValue];

      if (intValue >= 1)
      {
        avgRed = [(PLDisplayAPLStats *)v13 avgRed];
        [avgRed doubleValue];
        v31 = v30;
        frames3 = [(PLDisplayAPLStats *)v13 frames];
        [frames3 doubleValue];
        v34 = v31 / v33;

        v35 = 0;
        if (v34 < 0.0 || v34 > 255.0 || ([MEMORY[0x277CCABB0] numberWithDouble:v34], v36 = objc_claimAutoreleasedReturnValue(), -[PLDisplayAPLStats setAvgRed:](v13, "setAvgRed:", v36), v36, -[PLDisplayAPLStats avgGreen](v13, "avgGreen"), v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "doubleValue"), v39 = v38, -[PLDisplayAPLStats frames](v13, "frames"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "doubleValue"), v42 = v39 / v41, v40, v37, v35 = 0, v42 < 0.0) || v42 > 255.0 || (objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v42), v43 = objc_claimAutoreleasedReturnValue(), -[PLDisplayAPLStats setAvgGreen:](v13, "setAvgGreen:", v43), v43, -[PLDisplayAPLStats avgBlue](v13, "avgBlue"), v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "doubleValue"), v46 = v45, -[PLDisplayAPLStats frames](v13, "frames"), v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "doubleValue"), v49 = v46 / v48, v47, v44, v35 = 0, v49 < 0.0) || v49 > 255.0)
        {
LABEL_38:

          _Block_object_dispose(v56, 8);
          _Block_object_dispose(v58, 8);

          _Block_object_dispose(&v60, 8);
          _Block_object_dispose(&v66, 8);

          _Block_object_dispose(&v72, 8);
          if ((v35 & 1) == 0)
          {
            LOBYTE(SamplesDelta) = 0;
            goto LABEL_41;
          }

          goto LABEL_39;
        }

        v50 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
        [(PLDisplayAPLStats *)v13 setAvgBlue:v50];

        v51 = 0;
LABEL_37:
        updateDisplayIOReportStats_logZeroFramesOnlyOnce__gotZeroFrameAlready = v51;
        [v6 setDisplayAPLStats:v13];
        v35 = 1;
        goto LABEL_38;
      }
    }

    frames4 = [(PLDisplayAPLStats *)v13 frames];
    if (frames4)
    {
      frames5 = [(PLDisplayAPLStats *)v13 frames];
      intValue2 = [frames5 intValue];

      if ((intValue2 & 0x80000000) == 0)
      {
        if (!onceCopy || updateDisplayIOReportStats_logZeroFramesOnlyOnce__gotZeroFrameAlready != 1)
        {
          v51 = 1;
          goto LABEL_37;
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v35 = 0;
          updateDisplayIOReportStats_logZeroFramesOnlyOnce__gotZeroFrameAlready = 0;
          goto LABEL_38;
        }
      }
    }

    v35 = 0;
    goto LABEL_38;
  }

  LOBYTE(SamplesDelta) = 0;
LABEL_43:

  return SamplesDelta;
}

void __67__PLDisplayAgent_updateDisplayIOReportStats_logZeroFramesOnlyOnce___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = IOReportChannelGetChannelName();
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:IOReportSimpleGetIntegerValue()];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &unk_282C116B8;
  }

  v8 = v7;

  if ([v4 isEqualToString:@"red"])
  {
    [*(a1 + 32) setAvgRed:v8];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:@"green"])
  {
    [*(a1 + 32) setAvgGreen:v8];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:@"blue"])
  {
    [*(a1 + 32) setAvgBlue:v8];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:@"frame_count"])
  {
    [*(a1 + 32) setFrames:v8];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:@"nits_accum"])
  {
    v9 = *(a1 + 40);
  }

  else if ([v4 isEqualToString:@"bl_frame_count"])
  {
    v9 = *(a1 + 48);
  }

  else if ([v4 isEqualToString:@"power"])
  {
    v9 = *(a1 + 56);
  }

  else if ([v4 isEqualToString:@"apl_sum"])
  {
    v9 = *(a1 + 64);
  }

  else
  {
    if (![v4 isEqualToString:@"apl_count"])
    {
      goto LABEL_23;
    }

    v9 = *(a1 + 72);
  }

  objc_storeStrong((*(v9 + 8) + 40), v7);
LABEL_23:

  objc_autoreleasePoolPop(v3);
}

- (void)__FrameBufferEventCallback:(__IOMobileFramebuffer *)callback
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = malloc_type_aligned_alloc(0x4000uLL, 0x4000uLL, 0x100004052888210uLL);
  IOMobileFramebufferGetBufBlock();
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v32 = *v3;
    *buf = 67109120;
    v40 = v32;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Number of data entries retrieved %d \n", buf, 8u);
  }

  v34 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AZLSnapshots"];
  array = [MEMORY[0x277CBEB18] array];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  if (*v3)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v3 + 4);
    v10 = *MEMORY[0x277D3F5C8];
    *&v6 = 67110656;
    v33 = v6;
    do
    {
      v11 = objc_alloc(MEMORY[0x277D3F190]);
      v12 = [(PLOperator *)PLDisplayAgent entryKeyForType:v10 andName:@"AZLSnapshots"];
      v13 = [v11 initWithEntryKey:v12 withDate:monotonicDate];

      v14 = PLLogDisplay();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(v9 - 3);
        v25 = *(v9 - 2);
        v26 = *(v9 - 1);
        v27 = *v9;
        v28 = v9[1];
        v29 = v9[2];
        v30 = v9[3];
        *buf = v33;
        v40 = v30;
        v41 = 1024;
        v42 = v24;
        v43 = 1024;
        v44 = v25;
        v45 = 1024;
        v46 = v26;
        v47 = 1024;
        v48 = v27;
        v49 = 1024;
        v50 = v28;
        v51 = 1024;
        v52 = v29;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "packet_id[%d]: current_ma(u14.18): 0x%x, voltage_v(u4.10): 0x%x, system_nits(u0.20): 0x%x, azl(u0.20): 0x%x, max_zone_current(0.14): 0x%x, max_row_step_to_step_current(10.14): 0x%x \n", buf, 0x2Cu);
        v15 = v7;
      }

      else
      {
        v15 = 7 * v8;
      }

      v16 = &v3[v15];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16[1]];
      [v13 setObject:v17 forKeyedSubscript:@"AverageCurrent"];

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16[2]];
      [v13 setObject:v18 forKeyedSubscript:@"VLED"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16[3]];
      [v13 setObject:v19 forKeyedSubscript:@"SystemNits"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16[4]];
      [v13 setObject:v20 forKeyedSubscript:@"AZL"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16[5]];
      [v13 setObject:v21 forKeyedSubscript:@"MaxRowCurrent"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16[6]];
      [v13 setObject:v22 forKeyedSubscript:@"NitsAccum"];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16[7]];
      [v13 setObject:v23 forKeyedSubscript:@"PacketID"];

      [array addObject:v13];
      ++v8;
      v7 += 7;
      v9 += 7;
    }

    while (v8 < *v3);
  }

  if ([array count])
  {
    v37 = v34;
    v38 = array;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [(PLOperator *)self logEntries:v31 withGroupID:v34];
  }

  [(PLDisplayAgent *)self setAZLSnapshotsEntries:[(PLDisplayAgent *)self AZLSnapshotsEntries]+ *v3];
  free(v3);
}

void *__41__PLDisplayAgent_shouldModelPowerFromAPL__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLDisplayClassIsOneOf:{1002021, 1002024, 1002025, 0}];
  byte_2811F4911 = result;
  return result;
}

void *__43__PLDisplayAgent_shouldModelPowerFromIOMFB__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLDisplayClassIsOneOf:{1002030, 0}];
  byte_2811F4912 = result;
  return result;
}

- (void)updateLastForegroundAppAPL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v20 = lCopy;
    v5 = [lCopy objectForKey:@"entry"];

    lCopy = v20;
    if (v5)
    {
      v6 = [v20 objectForKey:@"entry"];
      v7 = [v6 objectForKey:@"AppRole"];
      v8 = [v7 isEqualToValue:&unk_282C11700];

      v9 = [v20 objectForKey:@"entry"];
      v10 = [v9 objectForKey:@"ScreenWeight"];
      v11 = [v10 isEqualToValue:&unk_282C1C1D8];

      v12 = [v20 objectForKey:@"entry"];
      v13 = [v12 objectForKey:@"bundleID"];
      v14 = [v13 isEqualToString:@"com.apple.lock-screen"];

      v15 = [v20 objectForKey:@"entry"];
      v16 = [v15 objectForKey:@"bundleID"];
      v17 = [v16 isEqualToString:@"com.apple.lock-screen.aod"];

      if (v8 && v11 || ((v14 | v17) & v11 & 1) != 0)
      {
        v18 = [v20 objectForKey:@"entry"];
        v19 = [v18 objectForKey:@"bundleID"];
        [(PLDisplayAgent *)self setLastForegroundAppAPL:v19];
      }

      else
      {
        [(PLDisplayAgent *)self setLastForegroundAppAPL:0];
      }

      lCopy = v20;
    }
  }
}

- (void)logDisplayAZL
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D3F190]);
  v4 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AZLStats"];
  v5 = [v3 initWithEntryKey:v4];

  if ([MEMORY[0x277D3F208] hasCapability:8] && updateDisplayIOReportAZLStats(self->_displayIOReportAZLStats) && (-[PLDisplayIOReportStats displayAZLStats](self->_displayIOReportAZLStats, "displayAZLStats"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = MEMORY[0x277CCABB0];
    displayAZLStats = [(PLDisplayIOReportStats *)self->_displayIOReportAZLStats displayAZLStats];
    avgPower = [displayAZLStats AvgPower];
    v10 = [v7 numberWithUnsignedLongLong:{objc_msgSend(avgPower, "unsignedLongLongValue")}];
    [v5 setObject:v10 forKeyedSubscript:@"AvgPower"];

    v11 = MEMORY[0x277CCABB0];
    displayAZLStats2 = [(PLDisplayIOReportStats *)self->_displayIOReportAZLStats displayAZLStats];
    azlAccum = [displayAZLStats2 azlAccum];
    v14 = [v11 numberWithUnsignedLongLong:{objc_msgSend(azlAccum, "unsignedLongLongValue")}];
    [v5 setObject:v14 forKeyedSubscript:@"AZLAccum"];

    v15 = MEMORY[0x277CCABB0];
    displayAZLStats3 = [(PLDisplayIOReportStats *)self->_displayIOReportAZLStats displayAZLStats];
    nitsAccum = [displayAZLStats3 nitsAccum];
    v18 = [v15 numberWithUnsignedLongLong:{objc_msgSend(nitsAccum, "unsignedLongLongValue")}];
    [v5 setObject:v18 forKeyedSubscript:@"NitsAccum"];

    v19 = MEMORY[0x277CCABB0];
    displayAZLStats4 = [(PLDisplayIOReportStats *)self->_displayIOReportAZLStats displayAZLStats];
    blUpdateCount = [displayAZLStats4 blUpdateCount];
    v22 = [v19 numberWithUnsignedLongLong:{objc_msgSend(blUpdateCount, "unsignedLongLongValue")}];
    [v5 setObject:v22 forKeyedSubscript:@"BLUpdateCount"];

    v23 = MEMORY[0x277CCABB0];
    displayAZLStats5 = [(PLDisplayIOReportStats *)self->_displayIOReportAZLStats displayAZLStats];
    blFrameCount = [displayAZLStats5 blFrameCount];
    v26 = [v23 numberWithUnsignedLongLong:{objc_msgSend(blFrameCount, "unsignedLongLongValue")}];
    [v5 setObject:v26 forKeyedSubscript:@"BLFrameCount"];

    v27 = PLLogDisplay();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v30 = 138412290;
      v31 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "LogDisplayAZL  for entries %@", &v30, 0xCu);
    }

    [(PLOperator *)self logEntry:v5];
  }

  else
  {
    v28 = PLLogDisplay();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v30) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "LogDisplayAZL Error", &v30, 2u);
    }

    if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
    {
      v32[0] = v5;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
      [(PLOperator *)self postEntries:v29];
    }
  }
}

- (void)handleSBC
{
  if ([MEMORY[0x277D3F208] hasCapability:8])
  {

    [(PLDisplayAgent *)self logDisplayAZL];
  }
}

- (void)logAODChange
{
  v66 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    if (updateDisplayIOReportAODStats(self->_displayIOReportAODStats))
    {
      displayAODStats = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];

      if (displayAODStats)
      {
        v4 = objc_alloc(MEMORY[0x277D3F190]);
        v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"DCPAODstats"];
        v6 = [v4 initWithEntryKey:v5];

        v7 = MEMORY[0x277CCABB0];
        displayAODStats2 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        awakeCount = [displayAODStats2 awakeCount];
        v10 = [v7 numberWithUnsignedLongLong:{objc_msgSend(awakeCount, "unsignedLongLongValue")}];
        [v6 setObject:v10 forKeyedSubscript:@"awake_count"];

        v11 = MEMORY[0x277CCABB0];
        displayAODStats3 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        mediaCount = [displayAODStats3 mediaCount];
        v14 = [v11 numberWithUnsignedLongLong:{objc_msgSend(mediaCount, "unsignedLongLongValue")}];
        [v6 setObject:v14 forKeyedSubscript:@"media_count"];

        v15 = MEMORY[0x277CCABB0];
        displayAODStats4 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        flipbookCount = [displayAODStats4 flipbookCount];
        v18 = [v15 numberWithUnsignedLongLong:{objc_msgSend(flipbookCount, "unsignedLongLongValue")}];
        [v6 setObject:v18 forKeyedSubscript:@"flipbook_count"];

        v19 = MEMORY[0x277CCABB0];
        displayAODStats5 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        flipbookDelay = [displayAODStats5 flipbookDelay];
        v22 = [v19 numberWithUnsignedLongLong:{objc_msgSend(flipbookDelay, "unsignedLongLongValue")}];
        [v6 setObject:v22 forKeyedSubscript:@"flipbook_delay"];

        v23 = MEMORY[0x277CCABB0];
        displayAODStats6 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        mediaScanout = [displayAODStats6 mediaScanout];
        v26 = [v23 numberWithUnsignedLongLong:{objc_msgSend(mediaScanout, "unsignedLongLongValue")}];
        [v6 setObject:v26 forKeyedSubscript:@"media_scanout"];

        v27 = MEMORY[0x277CCABB0];
        displayAODStats7 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        ambientCount = [displayAODStats7 ambientCount];
        v30 = [v27 numberWithUnsignedLongLong:{objc_msgSend(ambientCount, "unsignedLongLongValue")}];
        [v6 setObject:v30 forKeyedSubscript:@"ambient_count"];

        v31 = MEMORY[0x277CCABB0];
        displayAODStats8 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        prcRepeatCoun = [displayAODStats8 prcRepeatCoun];
        v34 = [v31 numberWithUnsignedLongLong:{objc_msgSend(prcRepeatCoun, "unsignedLongLongValue")}];
        [v6 setObject:v34 forKeyedSubscript:@"prc_repeat_coun"];

        v35 = MEMORY[0x277CCABB0];
        displayAODStats9 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        pdcRepeatCoun = [displayAODStats9 pdcRepeatCoun];
        v38 = [v35 numberWithUnsignedLongLong:{objc_msgSend(pdcRepeatCoun, "unsignedLongLongValue")}];
        [v6 setObject:v38 forKeyedSubscript:@"pdc_repeat_coun"];

        v39 = MEMORY[0x277CCABB0];
        displayAODStats10 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        llmCount = [displayAODStats10 llmCount];
        v42 = [v39 numberWithUnsignedLongLong:{objc_msgSend(llmCount, "unsignedLongLongValue")}];
        [v6 setObject:v42 forKeyedSubscript:@"llm_count"];

        v43 = MEMORY[0x277CCABB0];
        displayAODStats11 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        aplSum = [displayAODStats11 aplSum];
        v46 = [v43 numberWithUnsignedLongLong:{objc_msgSend(aplSum, "unsignedLongLongValue")}];
        [v6 setObject:v46 forKeyedSubscript:@"apl_sum"];

        v47 = MEMORY[0x277CCABB0];
        displayAODStats12 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        aplCount = [displayAODStats12 aplCount];
        v50 = [v47 numberWithUnsignedLongLong:{objc_msgSend(aplCount, "unsignedLongLongValue")}];
        [v6 setObject:v50 forKeyedSubscript:@"apl_count"];

        v51 = MEMORY[0x277CCABB0];
        displayAODStats13 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        oneHzFlipbookFrameCount = [displayAODStats13 oneHzFlipbookFrameCount];
        v54 = [v51 numberWithUnsignedLongLong:{objc_msgSend(oneHzFlipbookFrameCount, "unsignedLongLongValue")}];
        [v6 setObject:v54 forKeyedSubscript:@"1hz_flipbook_frame_count"];

        v55 = MEMORY[0x277CCABB0];
        displayAODStats14 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        oneHzFrameMissCount = [displayAODStats14 oneHzFrameMissCount];
        v58 = [v55 numberWithUnsignedLongLong:{objc_msgSend(oneHzFrameMissCount, "unsignedLongLongValue")}];
        [v6 setObject:v58 forKeyedSubscript:@"1hz_frame_miss_count"];

        v59 = MEMORY[0x277CCABB0];
        displayAODStats15 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        oneHzBicAccumCount = [displayAODStats15 oneHzBicAccumCount];
        v62 = [v59 numberWithUnsignedLongLong:{objc_msgSend(oneHzBicAccumCount, "unsignedLongLongValue")}];
        [v6 setObject:v62 forKeyedSubscript:@"1hz_bic_accum_count"];

        v63 = PLLogDisplay();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          v64 = 138412290;
          v65 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v63, OS_LOG_TYPE_DEBUG, "LogAODChange  for entries %@", &v64, 0xCu);
        }

        [(PLOperator *)self logEntry:v6];
      }
    }
  }
}

- (void)modelDisplayPower:(id)power
{
  v25 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  if (([MEMORY[0x277D3F208] hasCapability:0] & 1) == 0)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v6 = [powerCopy objectForKeyedSubscript:@"Brightness"];
    [v6 doubleValue];
    v8 = v7;

    v9 = [powerCopy objectForKeyedSubscript:@"uAmps"];
    [v9 doubleValue];
    v11 = v10;

    v12 = 0.0;
    if (v8 > 0.0)
    {
      [(PLDisplayAgent *)self uAmpsToDisplayPower:v11];
      v12 = v13;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__PLDisplayAgent_modelDisplayPower___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v14;
      if (qword_2811F4A48 != -1)
      {
        dispatch_once(&qword_2811F4A48, block);
      }

      if (byte_2811F4913 == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"raw data %@, brightness %f, uAmps %f, power %f", powerCopy, *&v8, *&v11, *&v12];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        lastPathComponent = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDisplayPower:]"];
        [v16 logMessage:v15 fromFile:lastPathComponent fromFunction:v19 fromLineNumber:4551];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v24 = v15;
          _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0] createPowerEventForwardWithRootNodeID:10 withPower:monotonicDate withStartDate:v12];
  }
}

void *__36__PLDisplayAgent_modelDisplayPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4913 = result;
  return result;
}

- (void)qualifyDisplayPower:(id)power
{
  v27 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  v5 = [powerCopy objectForKeyedSubscript:@"Brightness"];
  [v5 doubleValue];
  v7 = v6;

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  isFirstTimeModeling = [(PLDisplayAgent *)self isFirstTimeModeling];
  v10 = MEMORY[0x277CBEBF8];
  if (isFirstTimeModeling || (v11 = [(PLDisplayAgent *)self wasDisplayOn], v11 != [(PLDisplayAgent *)self isDisplayOnNow]))
  {
    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    if ([(PLDisplayAgent *)self isDisplayOnNow])
    {
      v13 = &unk_282C14448;
    }

    else
    {
      v13 = v10;
    }

    [mEMORY[0x277D3F0C0] createQualificationEventForwardWithQualificationID:5 withChildNodeNames:v13 withStartDate:monotonicDate];

    [(PLDisplayAgent *)self setWasDisplayOn:[(PLDisplayAgent *)self isDisplayOnNow]];
  }

  v14 = PLLogDisplay();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134218754;
    v20 = v7;
    v21 = 2112;
    v22 = powerCopy;
    v23 = 1024;
    v24 = v7 > 80.0;
    v25 = 1024;
    isDisplayHighBrightness = [(PLDisplayAgent *)self isDisplayHighBrightness];
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "brightness=%f, entry=%@, isHighBrightnessNow=%d, isHighBrightnessPrevious=%d", &v19, 0x22u);
  }

  if ([(PLDisplayAgent *)self isFirstTimeModeling]|| v7 > 80.0 != [(PLDisplayAgent *)self isDisplayHighBrightness])
  {
    v15 = PLLogDisplay();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "creating high brightness qualification event", &v19, 2u);
    }

    mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
    v17 = mEMORY[0x277D3F0C0]2;
    if (v7 <= 80.0)
    {
      v18 = v10;
    }

    else
    {
      v18 = &unk_282C14460;
    }

    [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:6 withChildNodeNames:v18 withStartDate:{monotonicDate, 80.0}];

    [(PLDisplayAgent *)self setIsDisplayHighBrightness:v7 > 80.0];
  }

  [(PLDisplayAgent *)self setIsFirstTimeModeling:0];
}

- (double)uAmpsToDisplayPower:(double)power
{
  v3 = 0.0;
  if (power > 0.0)
  {
    displayPowerModel = [(PLDisplayAgent *)self displayPowerModel];
    v7 = [displayPowerModel objectForKeyedSubscript:@"slope2"];
    [v7 doubleValue];
    v9 = v8 * 0.0000001 * power;
    displayPowerModel2 = [(PLDisplayAgent *)self displayPowerModel];
    v11 = [displayPowerModel2 objectForKeyedSubscript:@"slope"];
    [v11 doubleValue];
    v13 = v12 * power + v9 * power;
    displayPowerModel3 = [(PLDisplayAgent *)self displayPowerModel];
    v15 = [displayPowerModel3 objectForKeyedSubscript:@"intercept"];
    [v15 doubleValue];
    v3 = v13 + v16;
  }

  return fmax(v3, 0.0);
}

- (id)getIOMFBSubFrameMap
{
  if (qword_2811F4A58 != -1)
  {
    dispatch_once(&qword_2811F4A58, &__block_literal_global_1954);
  }

  v3 = qword_2811F4A50;

  return v3;
}

uint64_t __37__PLDisplayAgent_getIOMFBSubFrameMap__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_2811F4A50;
  qword_2811F4A50 = v0;

  [qword_2811F4A50 setObject:&unk_282C1C288 forKeyedSubscript:@"subframes_0"];
  [qword_2811F4A50 setObject:&unk_282C1C298 forKeyedSubscript:@"subframes_1"];
  [qword_2811F4A50 setObject:&unk_282C1C2A8 forKeyedSubscript:@"subframes_2"];
  [qword_2811F4A50 setObject:&unk_282C1C2B8 forKeyedSubscript:@"subframes_3"];
  [qword_2811F4A50 setObject:&unk_282C1C2C8 forKeyedSubscript:@"subframes_4"];
  [qword_2811F4A50 setObject:&unk_282C1C2D8 forKeyedSubscript:@"subframes_5"];
  [qword_2811F4A50 setObject:&unk_282C1C2E8 forKeyedSubscript:@"subframes_6"];
  [qword_2811F4A50 setObject:&unk_282C1C2F8 forKeyedSubscript:@"subframes_7"];
  [qword_2811F4A50 setObject:&unk_282C1C308 forKeyedSubscript:@"subframes_8"];
  [qword_2811F4A50 setObject:&unk_282C1C318 forKeyedSubscript:@"subframes_9"];
  v2 = qword_2811F4A50;

  return [v2 setObject:&unk_282C1C328 forKeyedSubscript:@"subframes_10"];
}

- (double)averageFrameRateFromIOMFBScanout:(id)scanout
{
  scanoutCopy = scanout;
  if (scanoutCopy)
  {
    getIOMFBSubFrameMap = [(PLDisplayAgent *)self getIOMFBSubFrameMap];
    v6 = getIOMFBSubFrameMap;
    v7 = 0.0;
    if (getIOMFBSubFrameMap && [getIOMFBSubFrameMap count] == 11)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __51__PLDisplayAgent_averageFrameRateFromIOMFBScanout___block_invoke;
      v11[3] = &unk_27825D738;
      v12 = scanoutCopy;
      v13 = &v19;
      v14 = &v15;
      [v6 enumerateKeysAndObjectsUsingBlock:v11];
      v8 = v16[3];
      if (v8 != 0.0)
      {
        v9 = v20[3];
        if (v9 != 0.0)
        {
          v7 = 1.0 / (v8 / v9);
        }
      }

      _Block_object_dispose(&v15, 8);
      _Block_object_dispose(&v19, 8);
    }
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

double __51__PLDisplayAgent_averageFrameRateFromIOMFBScanout___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  [v7 doubleValue];
  v9 = v8;

  if (v9 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9;
  }

  *(*(a1[5] + 8) + 24) = v10 + *(*(a1[5] + 8) + 24);
  [v6 doubleValue];
  v12 = v11;

  v13 = *(a1[6] + 8);
  result = *(v13 + 24) + v10 * (1.0 / v12);
  *(v13 + 24) = result;
  return result;
}

- (void)modelDynamicDisplayPower:(id)power
{
  v67 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  v5 = powerCopy;
  if (!powerCopy)
  {
    goto LABEL_50;
  }

  v6 = [powerCopy objectForKey:@"entry"];
  v62 = v6;
  if (!v6)
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_49;
    }

    v50 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v50;
    if (qword_2811F4A60 != -1)
    {
      dispatch_once(&qword_2811F4A60, block);
    }

    if (byte_2811F4914 != 1)
    {
      goto LABEL_49;
    }

    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: No entry object in IOMFBScanout entry"];
    v52 = MEMORY[0x277D3F178];
    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
    lastPathComponent = [v53 lastPathComponent];
    v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPower:]"];
    [v52 logMessage:v51 fromFile:lastPathComponent fromFunction:v55 fromLineNumber:4653];

    v56 = PLLogCommon();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
LABEL_46:

      goto LABEL_49;
    }

    *buf = 138412290;
    v66 = v51;
LABEL_52:
    _os_log_debug_impl(&dword_21A4C6000, v56, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    goto LABEL_46;
  }

  v7 = v6;
  if (![(NSMutableArray *)self->_displayStateChanges count])
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_49;
    }

    v57 = objc_opt_class();
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke_2016;
    v63[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v63[4] = v57;
    if (qword_2811F4A68 != -1)
    {
      dispatch_once(&qword_2811F4A68, v63);
    }

    if (byte_2811F4915 != 1)
    {
      goto LABEL_49;
    }

    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: No display states recorded"];
    v58 = MEMORY[0x277D3F178];
    v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
    lastPathComponent2 = [v59 lastPathComponent];
    v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPower:]"];
    [v58 logMessage:v51 fromFile:lastPathComponent2 fromFunction:v61 fromLineNumber:4655];

    v56 = PLLogCommon();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_46;
    }

    *buf = 138412290;
    v66 = v51;
    goto LABEL_52;
  }

  v8 = [v7 objectForKey:@"timestamp"];
  [v8 doubleValue];
  v10 = v9;

  if (v10 == 0.0)
  {
    goto LABEL_49;
  }

  v11 = [v62 objectForKey:@"SampleTime"];
  [v11 doubleValue];
  v13 = v12;

  [(PLDisplayAgent *)self averageFrameRateFromIOMFBScanout:v62];
  v15 = v14;
  displayPowerModel = [(PLDisplayAgent *)self displayPowerModel];
  v17 = [displayPowerModel objectForKeyedSubscript:@"dyn_slope"];
  v18 = 0.0;
  v19 = 0.0;
  if (v17)
  {
    displayPowerModel2 = [(PLDisplayAgent *)self displayPowerModel];
    v21 = [displayPowerModel2 objectForKeyedSubscript:@"dyn_slope"];
    [v21 doubleValue];
    v19 = v22;
  }

  displayPowerModel3 = [(PLDisplayAgent *)self displayPowerModel];
  v24 = [displayPowerModel3 objectForKeyedSubscript:@"dyn_intercept"];
  if (v24)
  {
    displayPowerModel4 = [(PLDisplayAgent *)self displayPowerModel];
    v26 = [displayPowerModel4 objectForKeyedSubscript:@"dyn_intercept"];
    [v26 doubleValue];
    v18 = v27;
  }

  v28 = v18 + v19 * v15 >= 0.0 ? v18 + v19 * v15 : 0.0;
  if (![(NSMutableArray *)self->_displayStateChanges count])
  {
    goto LABEL_49;
  }

  v29 = v10 - v13;
  while (1)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = [(NSMutableArray *)self->_displayStateChanges count];
    v32 = [(NSMutableArray *)self->_displayStateChanges objectAtIndexedSubscript:0];
    v33 = [v32 objectAtIndex:0];
    [v33 doubleValue];
    v35 = v34;

    if (v35 <= v29)
    {
      v35 = v29;
      v39 = v10;
      if (v31 < 2)
      {
        goto LABEL_25;
      }

      v36 = [(NSMutableArray *)self->_displayStateChanges objectAtIndexedSubscript:1];
      v40 = [v36 objectAtIndex:0];
      [v40 doubleValue];
      v39 = v41;

      if (v39 <= v29)
      {
        [(NSMutableArray *)self->_displayStateChanges removeObjectAtIndex:0];
        goto LABEL_32;
      }

      v35 = v29;
    }

    else
    {
      if (v35 >= v10)
      {
        goto LABEL_48;
      }

      if (v31 < 2)
      {
        v39 = v10;
        goto LABEL_25;
      }

      v36 = [(NSMutableArray *)self->_displayStateChanges objectAtIndexedSubscript:1];
      v37 = [v36 objectAtIndex:0];
      [v37 doubleValue];
      v39 = v38;
    }

    if (v39 >= v10)
    {
      v39 = v10;
    }

LABEL_25:
    v36 = [v32 objectAtIndex:1];
    v42 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v35];
    v43 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v39];
    if (([v36 BOOLValue] & 1) == 0)
    {
      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0] createPowerEventIntervalWithRootNodeID:56 withPower:v42 withStartDate:v43 withEndDate:0.0];
    }

    if ([v36 BOOLValue])
    {
      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0]2 createPowerEventIntervalWithRootNodeID:56 withPower:v42 withStartDate:v43 withEndDate:v28];
    }

    if (v31 < 2)
    {
      break;
    }

    v46 = [(NSMutableArray *)self->_displayStateChanges objectAtIndexedSubscript:1];
    v47 = [v46 objectAtIndex:0];
    [v47 doubleValue];
    v49 = v48;

    if (v49 > v10)
    {
      break;
    }

    [(NSMutableArray *)self->_displayStateChanges removeObjectAtIndex:0];

LABEL_32:
    objc_autoreleasePoolPop(v30);
    if (![(NSMutableArray *)self->_displayStateChanges count])
    {
      goto LABEL_49;
    }
  }

LABEL_48:
  objc_autoreleasePoolPop(v30);
LABEL_49:

LABEL_50:
}

void *__43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4914 = result;
  return result;
}

void *__43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke_2016(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4915 = result;
  return result;
}

- (double)calculatePowerFromAPL:(double)l withAvgRed:(double)red withAvgGreen:(double)green withAvgBlue:(double)blue
{
  v69 = *MEMORY[0x277D85DE8];
  v9 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"static_power"];
  v10 = 0.0;
  v11 = 0.0;
  if (v9)
  {
    v12 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"static_power"];
    [v12 doubleValue];
    v11 = v13;
  }

  v14 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"touch_power"];
  if (v14)
  {
    v15 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"touch_power"];
    [v15 doubleValue];
    v10 = v16;
  }

  v17 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"red_norm_slope"];
  v18 = 0.0;
  v19 = 0.0;
  if (v17)
  {
    v20 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"red_norm_slope"];
    [v20 doubleValue];
    v19 = v21 * 0.000001 * l;
  }

  v22 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"green_norm_slope"];
  if (v22)
  {
    v23 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"green_norm_slope"];
    [v23 doubleValue];
    v18 = v24 * 0.000001 * l;
  }

  v25 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"blue_norm_slope"];
  if (v25)
  {
    v26 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"blue_norm_slope"];
    [v26 doubleValue];
    v28 = v27 * 0.000001 * l;
  }

  else
  {
    v28 = 0.0;
  }

  v29 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"red_norm_intercept"];
  if (v29)
  {
    v30 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"red_norm_intercept"];
    [v30 doubleValue];
    v32 = v19 + v31;
  }

  else
  {
    v32 = v19 + 0.0;
  }

  v33 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"green_norm_intercept"];
  if (v33)
  {
    v34 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"green_norm_intercept"];
    [v34 doubleValue];
    v36 = v18 + v35;
  }

  else
  {
    v36 = v18 + 0.0;
  }

  v37 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"blue_norm_intercept"];
  if (v37)
  {
    v38 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"blue_norm_intercept"];
    [v38 doubleValue];
    v40 = v28 + v39;
  }

  else
  {
    v40 = v28 + 0.0;
  }

  if (v32 >= 0.0)
  {
    v41 = v32;
  }

  else
  {
    v41 = 0.0;
  }

  if (v36 >= 0.0)
  {
    v42 = v36;
  }

  else
  {
    v42 = 0.0;
  }

  if (v40 >= 0.0)
  {
    v43 = v40;
  }

  else
  {
    v43 = 0.0;
  }

  if (v41 > 1.0)
  {
    v41 = 1.0;
  }

  if (v42 > 1.0)
  {
    v42 = 1.0;
  }

  if (v43 > 1.0)
  {
    v43 = 1.0;
  }

  v44 = v41 * red / 255.0 + v42 * green / 255.0 + v43 * blue / 255.0;
  v45 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"mnit_scale_values"];
  v46 = 0.0;
  if (v45)
  {
    v47 = v45;
    v48 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"mnit_scale_values"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v50 = MEMORY[0x277D3F258];
      v51 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"mnit_scale_values"];
      [v50 scaledPowerBasedOnPoint:v51 withPowerModel:l];
      v46 = v52;
    }
  }

  v53 = v44 * (v46 * l);
  if (v53 > 5000.0 || v53 < 0.0)
  {
    v53 = 0.0;
  }

  v55 = v11 + v10 + v53;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v56 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__PLDisplayAgent_calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v56;
    if (qword_2811F4A70 != -1)
    {
      dispatch_once(&qword_2811F4A70, block);
    }

    if (byte_2811F4916 == 1)
    {
      v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"mNits: %f\tavgRed: %f\tavgGreen: %f\tavgBlue: %f\tnormalizedColorSum: %.2f\tPower: %.2f", *&l, *&red, *&green, *&blue, *&v44, *&v55];
      v58 = MEMORY[0x277D3F178];
      v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v59 lastPathComponent];
      v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent calculatePowerFromAPL:withAvgRed:withAvgGreen:withAvgBlue:]"];
      [v58 logMessage:v57 fromFile:lastPathComponent fromFunction:v61 fromLineNumber:4832];

      v62 = PLLogCommon();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v68 = v57;
        _os_log_debug_impl(&dword_21A4C6000, v62, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  return v55;
}

void *__76__PLDisplayAgent_calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4916 = result;
  return result;
}

- (void)modelDisplayPowerFromIOMFB:(id)b
{
  v36 = *MEMORY[0x277D85DE8];
  displayAPLStats = [b displayAPLStats];
  avgPower = [displayAPLStats avgPower];
  [avgPower doubleValue];
  v7 = v6;

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLDisplayAgent_modelDisplayPowerFromIOMFB___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F4A78 != -1)
    {
      dispatch_once(&qword_2811F4A78, block);
    }

    if (byte_2811F4917 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Display power: %f", *&v7];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDisplayPowerFromIOMFB:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:4846];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __45__PLDisplayAgent_modelDisplayPowerFromIOMFB___block_invoke_2064;
    v31 = &__block_descriptor_40_e5_v8__0lu32l8;
    v32 = v15;
    if (qword_2811F4A80 != -1)
    {
      dispatch_once(&qword_2811F4A80, &v28);
    }

    if (byte_2811F4918 == 1)
    {
      v16 = MEMORY[0x277CCACA8];
      sampleTimePrevious = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
      sampleTime = [(PLIOReportStats *)self->_displayIOReportStats sampleTime];
      v19 = [v16 stringWithFormat:@"SampleTimePrevious: %@ sampleTime: %@, ", sampleTimePrevious, sampleTime, v28, v29, v30, v31, v32];

      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDisplayPowerFromIOMFB:]"];
      [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:4847];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v19;
        _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
  sampleTimePrevious2 = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
  sampleTime2 = [(PLIOReportStats *)self->_displayIOReportStats sampleTime];
  [mEMORY[0x277D3F0C0] createPowerEventIntervalWithRootNodeID:56 withPower:sampleTimePrevious2 withStartDate:sampleTime2 withEndDate:v7];
}

void *__45__PLDisplayAgent_modelDisplayPowerFromIOMFB___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4917 = result;
  return result;
}

void *__45__PLDisplayAgent_modelDisplayPowerFromIOMFB___block_invoke_2064(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4918 = result;
  return result;
}

- (void)modelDynamicDisplayPowerFromAPL:(id)l
{
  v70 = *MEMORY[0x277D85DE8];
  displayAPLStats = [l displayAPLStats];
  v5 = displayAPLStats;
  if (displayAPLStats)
  {
    avgRed = [displayAPLStats avgRed];

    if (avgRed)
    {
      v7 = 0.0;
      v8 = 0.0;
      if ([(PLDisplayAgent *)self isDisplayOnNow])
      {
        displaymNits = self->_displaymNits;
        avgRed2 = [v5 avgRed];
        [avgRed2 doubleValue];
        v12 = v11;
        avgGreen = [v5 avgGreen];
        [avgGreen doubleValue];
        v15 = v14;
        avgBlue = [v5 avgBlue];
        [avgBlue doubleValue];
        [(PLDisplayAgent *)self calculatePowerFromAPL:displaymNits withAvgRed:v12 withAvgGreen:v15 withAvgBlue:v17];
        v8 = v18;

        realmNits = self->_realmNits;
        avgRed3 = [v5 avgRed];
        [avgRed3 doubleValue];
        v22 = v21;
        avgGreen2 = [v5 avgGreen];
        [avgGreen2 doubleValue];
        v25 = v24;
        avgBlue2 = [v5 avgBlue];
        [avgBlue2 doubleValue];
        [(PLDisplayAgent *)self calculatePowerFromAPL:realmNits withAvgRed:v22 withAvgGreen:v25 withAvgBlue:v27];
        v29 = v28;

        autobrightnessmNits = self->_autobrightnessmNits;
        avgRed4 = [v5 avgRed];
        [avgRed4 doubleValue];
        v33 = v32;
        avgGreen3 = [v5 avgGreen];
        [avgGreen3 doubleValue];
        v36 = v35;
        avgBlue3 = [v5 avgBlue];
        [avgBlue3 doubleValue];
        [(PLDisplayAgent *)self calculatePowerFromAPL:autobrightnessmNits withAvgRed:v33 withAvgGreen:v36 withAvgBlue:v38];
        v40 = v39;

        v7 = v29 - v40;
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v41 = objc_opt_class();
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __50__PLDisplayAgent_modelDynamicDisplayPowerFromAPL___block_invoke;
          v67[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v67[4] = v41;
          if (qword_2811F4A88 != -1)
          {
            dispatch_once(&qword_2811F4A88, v67);
          }

          if (byte_2811F4919 == 1)
          {
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"displayPower: %f\trealPower: %f\tvirtualPower: %f\tsavedPower: %f", *&v8, *&v29, *&v40, v29 - v40];
            v43 = MEMORY[0x277D3F178];
            v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
            lastPathComponent = [v44 lastPathComponent];
            v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPowerFromAPL:]"];
            [v43 logMessage:v42 fromFile:lastPathComponent fromFunction:v46 fromLineNumber:4870];

            v47 = PLLogCommon();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v69 = v42;
              _os_log_debug_impl(&dword_21A4C6000, v47, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v48 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__PLDisplayAgent_modelDynamicDisplayPowerFromAPL___block_invoke_2073;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v48;
        if (qword_2811F4A90 != -1)
        {
          dispatch_once(&qword_2811F4A90, block);
        }

        if (byte_2811F491A == 1)
        {
          v49 = MEMORY[0x277CCACA8];
          sampleTimePrevious = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
          sampleTime = [(PLIOReportStats *)self->_displayIOReportStats sampleTime];
          v52 = [v49 stringWithFormat:@"SampleTimePrevious: %@ sampleTime: %@, ", sampleTimePrevious, sampleTime];

          v53 = MEMORY[0x277D3F178];
          v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          lastPathComponent2 = [v54 lastPathComponent];
          v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPowerFromAPL:]"];
          [v53 logMessage:v52 fromFile:lastPathComponent2 fromFunction:v56 fromLineNumber:4872];

          v57 = PLLogCommon();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v69 = v52;
            _os_log_debug_impl(&dword_21A4C6000, v57, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      sampleTimePrevious2 = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
      sampleTime2 = [(PLIOReportStats *)self->_displayIOReportStats sampleTime];
      [mEMORY[0x277D3F0C0] createPowerEventIntervalWithRootNodeID:56 withPower:sampleTimePrevious2 withStartDate:sampleTime2 withEndDate:v8];

      if (+[PLDisplayAgent shouldLogALSPowerSaved])
      {
        v61 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSPowerSaved"];
        v62 = objc_alloc(MEMORY[0x277D3F190]);
        sampleTimePrevious3 = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
        v64 = [v62 initWithEntryKey:v61 withDate:sampleTimePrevious3];

        v65 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
        [v64 setObject:v65 forKeyedSubscript:@"Power"];

        [(PLOperator *)self logEntry:v64];
      }
    }
  }
}

void *__50__PLDisplayAgent_modelDynamicDisplayPowerFromAPL___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4919 = result;
  return result;
}

void *__50__PLDisplayAgent_modelDynamicDisplayPowerFromAPL___block_invoke_2073(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F491A = result;
  return result;
}

- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date
{
  keyCopy = key;
  [date timeIntervalSince1970];
  v7 = v6;
  v8 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Display"];
  v9 = [keyCopy isEqualToString:v8];

  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is NULL OR %@<(SELECT max(%@) FROM '%@' WHERE %@<%f)", @"timestamp", @"timestamp", @"timestamp", keyCopy, @"timestamp", v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)dcpSubFrameMap
{
  if ([MEMORY[0x277D3F208] hasDCP])
  {
    v2 = [MEMORY[0x277D3F208] hasCapability:3];
    if (v2)
    {
      v3 = 240;
    }

    else
    {
      v3 = 60;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__PLDisplayAgent_dcpSubFrameMap__block_invoke;
    block[3] = &__block_descriptor_37_e5_v8__0l;
    v7 = v3;
    v8 = v2;
    if (qword_2811F4AA0 != -1)
    {
      dispatch_once(&qword_2811F4AA0, block);
    }

    v4 = qword_2811F4A98;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __32__PLDisplayAgent_dcpSubFrameMap__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:25];
  v3 = qword_2811F4A98;
  qword_2811F4A98 = v2;

  for (i = 1; i != 26; ++i)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"subframes(%d)", (i - 1)];
    v6 = *(a1 + 32) / i;
    if ((![MEMORY[0x277D3F208] isiPhone] || (*(a1 + 36) & 1) == 0) && !objc_msgSend(MEMORY[0x277D3F208], "kPLDeviceClassIsOneOf:", 100080, 0) || (v7 = 10.0, v6 >= 10))
    {
      if (v6 <= 24)
      {
        v8 = 24;
      }

      else
      {
        v8 = v6;
      }

      v7 = v8;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    [qword_2811F4A98 setObject:v9 forKeyedSubscript:v5];
  }
}

@end