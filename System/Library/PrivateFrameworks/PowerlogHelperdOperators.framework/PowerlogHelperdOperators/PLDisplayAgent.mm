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
- (void)init;
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
    v23 = &unk_28714B7A8;
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
    v15[0] = &unk_28714B7B8;
    v15[1] = &unk_28714D988;
    v3 = *MEMORY[0x277D3F590];
    v14[2] = *MEMORY[0x277D3F578];
    v14[3] = v3;
    v15[2] = @"Block";
    v15[3] = &unk_287146C78;
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
    v14[0] = &unk_28714B7A8;
    v14[1] = &unk_28714D9A0;
    v13[2] = *MEMORY[0x277D3F550];
    v14[2] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v16[0] = v3;
    v15[1] = *MEMORY[0x277D3F540];
    v11 = @"UserBrightness";
    v4 = *MEMORY[0x277D3F5B0];
    v9[0] = *MEMORY[0x277D3F5A8];
    v9[1] = v4;
    v10[0] = &unk_287146C90;
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
      v35[0] = &unk_28714B7C8;
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
      v29[0] = &unk_28714B7B8;
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
    v11 = &unk_28714B7A8;
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
    v11 = &unk_28714B7A8;
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
    v52[0] = &unk_28714B7D8;
    v52[1] = &unk_28714D9B8;
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
      v48[0] = &unk_287146C90;
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
    mEMORY[0x277D3F198]6 = &unk_287146CA8;
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
      v46[0] = &unk_287146CA8;
      v46[1] = &unk_28714D9D0;
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
      v44[0] = &unk_287146CA8;
      v44[1] = &unk_28714D9E8;
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
      v42[0] = &unk_287146CA8;
      v42[1] = &unk_28714DA00;
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
      v40[0] = &unk_287146CA8;
      v40[1] = &unk_28714DA18;
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
  if (+[PLUtilities isPerfPowerMetricd])
  {
    v12[0] = *MEMORY[0x277D3F4E8];
    v10 = *MEMORY[0x277D3F568];
    v11 = &unk_28714B7A8;
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
    v102[0] = &unk_28714B7E8;
    v102[1] = &unk_287146CC0;
    v101[2] = *MEMORY[0x277D3F588];
    v102[2] = &unk_287146CD8;
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
  v12[0] = &unk_28714B7A8;
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
    v11 = &unk_28714B7A8;
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
    v12[0] = &unk_28714B7A8;
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
    v15 = &unk_28714B7A8;
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
    v19 = &unk_28714B7A8;
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
    v49 = &unk_28714B7A8;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v51[0] = v20;
    v50[1] = *MEMORY[0x277D3F540];
    v46[0] = @"Unknown";
    v3 = *MEMORY[0x277D3F5B0];
    v43[0] = *MEMORY[0x277D3F5A8];
    v2 = v43[0];
    v43[1] = v3;
    v45[0] = &unk_287146C90;
    v45[1] = @"s";
    v44 = *MEMORY[0x277D3F538];
    v4 = v44;
    v45[2] = &unk_28714DA30;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v43 count:3];
    v47[0] = v19;
    v46[1] = @"Active";
    v41[0] = v2;
    v41[1] = v3;
    v42[0] = &unk_287146C90;
    v42[1] = @"s";
    v41[2] = v4;
    v42[2] = &unk_28714DA48;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
    v47[1] = v18;
    v46[2] = @"Ready";
    v39[0] = v2;
    v39[1] = v3;
    v40[0] = &unk_287146C90;
    v40[1] = @"s";
    v39[2] = v4;
    v40[2] = &unk_28714DA60;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
    v47[2] = v17;
    v46[3] = @"AutoReady";
    v37[0] = v2;
    v37[1] = v3;
    v38[0] = &unk_287146C90;
    v38[1] = @"s";
    v37[2] = v4;
    v38[2] = &unk_28714DA78;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
    v47[3] = v16;
    v46[4] = @"UILock";
    v35[0] = v2;
    v35[1] = v3;
    v36[0] = &unk_287146C90;
    v36[1] = @"s";
    v35[2] = v4;
    v36[2] = &unk_28714DA90;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
    v47[4] = v15;
    v46[5] = @"FaceDetected";
    v33[0] = v2;
    v33[1] = v3;
    v34[0] = &unk_287146C90;
    v34[1] = @"s";
    v33[2] = v4;
    v34[2] = &unk_28714DAA8;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
    v47[5] = v14;
    v46[6] = @"StationaryFingers";
    v31[0] = v2;
    v31[1] = v3;
    v32[0] = &unk_287146C90;
    v32[1] = @"s";
    v31[2] = v4;
    v32[2] = &unk_28714DAC0;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
    v47[6] = v13;
    v46[7] = @"AutoScan";
    v29[0] = v2;
    v29[1] = v3;
    v30[0] = &unk_287146C90;
    v30[1] = @"s";
    v29[2] = v4;
    v30[2] = &unk_28714DAD8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
    v47[7] = v5;
    v46[8] = @"VSFOMCal";
    v27[0] = v2;
    v27[1] = v3;
    v28[0] = &unk_287146C90;
    v28[1] = @"s";
    v27[2] = v4;
    v28[2] = &unk_28714DAF0;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
    v47[8] = v6;
    v46[9] = @"Anticipate";
    v25[0] = v2;
    v25[1] = v3;
    v26[0] = &unk_287146C90;
    v26[1] = @"s";
    v25[2] = v4;
    v26[2] = &unk_28714DB08;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
    v47[9] = v7;
    v46[10] = @"Off";
    v23[0] = v2;
    v23[1] = v3;
    v24[0] = &unk_287146C90;
    v24[1] = @"s";
    v23[2] = v4;
    v24[2] = &unk_28714DB20;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
    v47[10] = v8;
    v46[11] = @"On";
    v21[0] = v2;
    v21[1] = v3;
    v22[0] = &unk_287146C90;
    v22[1] = @"s";
    v21[2] = v4;
    v22[2] = &unk_28714DB38;
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
    v257 = &unk_28714B7F8;
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
    v17 = &unk_28714B7A8;
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
    v55 = &unk_28714B7A8;
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
    v15 = &unk_28714B7A8;
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
    v17 = &unk_28714B7A8;
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
    v15 = &unk_28714B7A8;
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
    v15 = &unk_28714B7A8;
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
    v26[0] = &unk_28714B808;
    v26[1] = @"logDisplayAPL";
    v3 = *MEMORY[0x277D3F590];
    v25[2] = *MEMORY[0x277D3F4D8];
    v25[3] = v3;
    v26[2] = MEMORY[0x277CBEC38];
    v26[3] = &unk_287146CF0;
    v4 = *MEMORY[0x277D3F4A0];
    v25[4] = *MEMORY[0x277D3F588];
    v25[5] = v4;
    v26[4] = &unk_28714B818;
    v26[5] = MEMORY[0x277CBEC38];
    v25[6] = *MEMORY[0x277D3F4F0];
    v26[6] = &unk_28714DB50;
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
    v20[0] = &unk_28714B7A8;
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
    v24[0] = &unk_28714B7A8;
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
    v37 = &unk_28714B7F8;
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
    v19 = &unk_28714B7A8;
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
    v14 = &unk_28714B828;
    v12 = *MEMORY[0x277D3F470];
    v13 = &unk_28714B838;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v15 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v20[3] = *MEMORY[0x277D3F488];
    v21[2] = v9;
    v21[3] = &unk_28714DB68;
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
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    goto LABEL_2;
  }

  v103.receiver = self;
  v103.super_class = PLDisplayAgent;
  v4 = [(PLAgent *)&v103 init];
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
    block[3] = &unk_279A5BDC0;
    v102 = v4;
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
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __22__PLDisplayAgent_init__block_invoke_2;
      v100[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v100[4] = v12;
      if (init_defaultOnce_0 != -1)
      {
        dispatch_once(&init_defaultOnce_0, v100);
      }

      if (init_classDebugEnabled_0 == 1)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"CBAdaptationClient init fail! Cannot get color adaptation information!"];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        lastPathComponent = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]"];
        [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:1484];

        v19 = PLLogCommon(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v7 = 0x277CBE000;
      }
    }
  }

  pendingBacklightEntryDate = v4->_pendingBacklightEntryDate;
  v4->_pendingBacklightEntryDate = 0;

  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  pendingBacklightEntry = v4->_pendingBacklightEntry;
  v4->_pendingBacklightEntry = v21;

  v23 = objc_alloc(MEMORY[0x277D3F250]);
  workQueue2 = [(PLOperator *)v4 workQueue];
  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 3221225472;
  v98[2] = __22__PLDisplayAgent_init__block_invoke_1431;
  v98[3] = &unk_279A5D088;
  v25 = v4;
  v99 = v25;
  v26 = [v23 initWithFireDate:0 withInterval:1 withTolerance:0 repeats:workQueue2 withUserInfo:v98 withQueue:1.0 withBlock:0.0];
  v27 = v25[18];
  v25[18] = v26;

  [v25[18] arm];
  v28 = objc_alloc_init(MEMORY[0x277CFD390]);
  v29 = v25[16];
  v25[16] = v28;

  if (!v25[16] && [MEMORY[0x277D3F180] debugEnabled])
  {
    v30 = objc_opt_class();
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __22__PLDisplayAgent_init__block_invoke_1442;
    v97[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v97[4] = v30;
    if (init_defaultOnce_1440 != -1)
    {
      dispatch_once(&init_defaultOnce_1440, v97);
    }

    if (init_classDebugEnabled_1441 == 1)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"BrightnessSystemClient init fail!"];
      v32 = MEMORY[0x277D3F178];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent2 = [v33 lastPathComponent];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]"];
      [v32 logMessage:v31 fromFile:lastPathComponent2 fromFunction:v35 fromLineNumber:1512];

      v37 = PLLogCommon(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v7 = 0x277CBE000uLL;
    }
  }

  if ([v8 count])
  {
    brightnessSystemClient = [v25 brightnessSystemClient];

    if (brightnessSystemClient)
    {
      v39 = v25[16];
      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = __22__PLDisplayAgent_init__block_invoke_1446;
      v95[3] = &unk_279A5E7D8;
      v96 = v25;
      [v39 registerNotificationBlock:v95 forProperties:v8];
    }
  }

  brightnessSystemClient2 = [v25 brightnessSystemClient];
  v41 = [brightnessSystemClient2 copyPropertyForKey:@"CBSupportsFinalCommit"];
  [v25 setSupportsFinalBrightnessCommit:{objc_msgSend(v41, "BOOLValue")}];

  v43 = PLLogDisplay(v42);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    [(PLDisplayAgent *)v25 init];
  }

  if (+[PLDisplayAgent shouldLogFromDCP])
  {
    if (!+[PLUtilities isPowerlogHelperd])
    {
      v44 = +[PLUtilities isPerfPowerMetricd];
      if ((v44 & 1) == 0)
      {
        v45 = PLLogDisplay(v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25EE51000, v45, OS_LOG_TYPE_DEFAULT, "IO object: seting up notification", buf, 2u);
        }

        array = [*(v7 + 2840) array];
        [v25 setAfkEndpoints:array];

        v47 = objc_alloc(MEMORY[0x277D3F1C8]);
        v48 = *MEMORY[0x277D3F5F0];
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __22__PLDisplayAgent_init__block_invoke_1450;
        v93[3] = &unk_279A5E800;
        v49 = v25;
        v94 = v49;
        v50 = [v47 initWithOperator:v49 forDynamicServiceClass:v48 forNotificationType:"IOServiceMatched" withMatchBlock:v93];
        v51 = v49[10];
        v49[10] = v50;

        v52 = objc_alloc(MEMORY[0x277D3F250]);
        workQueue3 = [v49 workQueue];
        v91[0] = MEMORY[0x277D85DD0];
        v91[1] = 3221225472;
        v91[2] = __22__PLDisplayAgent_init__block_invoke_2_1452;
        v91[3] = &unk_279A5D088;
        v54 = v49;
        v92 = v54;
        v55 = [v52 initWithFireDate:0 withInterval:1 withTolerance:0 repeats:workQueue3 withUserInfo:v91 withQueue:10.0 withBlock:10.0];
        [v54 setDcpTimeoffsetCalibTimer:v55];

        dcpTimeoffsetCalibTimer = [v54 dcpTimeoffsetCalibTimer];
        [dcpTimeoffsetCalibTimer arm];
      }
    }
  }

  v57 = objc_alloc(MEMORY[0x277D3F1C8]);
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __22__PLDisplayAgent_init__block_invoke_1456;
  v89[3] = &unk_279A5E828;
  v58 = v25;
  v90 = v58;
  v59 = [v57 initWithOperator:v58 forService:@"AppleARMBacklight" withBlock:v89];
  v60 = v58[9];
  v58[9] = v59;

  if (+[PLDisplayAgent shouldLogBacklightControl])
  {
    v61 = objc_alloc(MEMORY[0x277D3F1C8]);
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __22__PLDisplayAgent_init__block_invoke_1482;
    v87[3] = &unk_279A5E828;
    v62 = v58;
    v88 = v62;
    v63 = [v61 initWithOperator:v62 forService:@"backlight-control" withBlock:v87];
    v64 = v62[11];
    v62[11] = v63;
  }

  v65 = objc_alloc(MEMORY[0x277D3F1C8]);
  v66 = *MEMORY[0x277D3F5F8];
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __22__PLDisplayAgent_init__block_invoke_2_1485;
  v85[3] = &unk_279A5E828;
  self = v58;
  selfCopy2 = self;
  v67 = [v65 initWithOperator:self forService:v66 withBlock:v85];
  iokitDisplay = self->_iokitDisplay;
  self->_iokitDisplay = v67;

  if ([MEMORY[0x277D3F208] hasDCP] && !+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"))
  {
    *buf = 0;
    MainDisplay = IOMobileFramebufferGetMainDisplay();
    v70 = MainDisplay;
    v71 = *buf;
    v72 = PLLogDisplay(MainDisplay);
    v73 = v72;
    if (v70 || !v71)
    {
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        [PLDisplayAgent init];
      }
    }

    else
    {
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        [PLDisplayAgent init];
      }

      RunLoopSource = IOMobileFramebufferGetRunLoopSource();
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x277CBF058]);
      IOMobileFramebufferEnablePowerNotifications();
      [(PLDisplayAgent *)self setFrameBuffer:*buf];
    }
  }

  v76 = [objc_alloc(MEMORY[0x277D3F1C8]) initWithOperator:self forService:@"AppleMultitouchSPI"];
  iokitTouch = self->_iokitTouch;
  self->_iokitTouch = v76;

  if (self->_iokitDisplay || v58[9] || self->_iokitTouch || v25[16])
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
  init_classDebugEnabled_0 = result;
  return result;
}

void __22__PLDisplayAgent_init__block_invoke_1431(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 pendingBacklightEntry];

  if (v6)
  {
    v8 = [*v4 isDebugEnabled];
    if (v8)
    {
      v9 = [PLEventForwardDisplayEntry alloc];
      v10 = [*v4 pendingBacklightEntry];
      v11 = [(PLEventForwardDisplayEntry *)v9 initEntryWithRawData:v10];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v12 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __22__PLDisplayAgent_init__block_invoke_2_1433;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v12;
        if (kPRearNits_block_invoke_defaultOnce != -1)
        {
          dispatch_once(&kPRearNits_block_invoke_defaultOnce, block);
        }

        if (kPRearNits_block_invoke_classDebugEnabled == 1)
        {
          v13 = MEMORY[0x277CCACA8];
          v14 = [v11 objectForKeyedSubscript:@"Brightness"];
          v15 = MEMORY[0x277D3F268];
          v16 = [*v4 pendingBacklightEntryDate];
          v17 = [v15 formattedStringForDate:v16];
          v18 = [v13 stringWithFormat:@"Writing backlight entry:%@ with date: %@", v14, v17];

          v19 = MEMORY[0x277D3F178];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          v21 = [v20 lastPathComponent];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]_block_invoke"];
          [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:1497];

          v24 = PLLogCommon(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }
    }

    v25 = PLLogDisplay(v8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __22__PLDisplayAgent_init__block_invoke_1431_cold_2(v4);
    }

    v26 = *v4;
    v27 = [*v4 pendingBacklightEntry];
    v28 = [*v4 pendingBacklightEntryDate];
    [v26 logEventForwardDisplayWithRawData:v27 withDate:v28];

    v30 = PLLogDisplay(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      __22__PLDisplayAgent_init__block_invoke_1431_cold_3();
    }

    [*v4 setPendingBacklightEntry:0];
    [*v4 setPendingBacklightEntryDate:0];
  }

  else
  {
    v31 = PLLogDisplay(v7);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      __22__PLDisplayAgent_init__block_invoke_1431_cold_4(v4, v3);
    }

    v32 = [*v4 backlightFilterTimer];
    [v32 setTimerActive:0];
  }
}

void *__22__PLDisplayAgent_init__block_invoke_2_1433(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPRearNits_block_invoke_classDebugEnabled = result;
  return result;
}

void *__22__PLDisplayAgent_init__block_invoke_1442(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_1441 = result;
  return result;
}

void __22__PLDisplayAgent_init__block_invoke_2_1452(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(a1 + 32) currMonoTimestamp];
  v3 = v2;
  [*v1 currAFKSystemTimestamp];
  v5 = v4;
  [*v1 currMonoTimestamp];
  if (v6 <= 0.0 || ([*v1 currAFKSystemTimestamp], v7 <= 0.0) || (v8 = v3 - v5, v9 = objc_msgSend(*v1, "currAFKSystemTimeOffset"), v8 == v10))
  {
    v12 = [*v1 dcpTimeoffsetCalibTimer];
    [v12 setTimerActive:0];

    v14 = PLLogDisplay(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __22__PLDisplayAgent_init__block_invoke_2_1452_cold_1();
    }
  }

  else
  {
    v11 = PLLogDisplay(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __22__PLDisplayAgent_init__block_invoke_2_1452_cold_2(v1);
    }

    [*v1 setCurrAFKSystemTimeOffset:v8];
  }
}

void __22__PLDisplayAgent_init__block_invoke_1456(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -536870608)
  {
    block[15] = v3;
    block[16] = v4;
    v6 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:a2 forKey:@"IODisplayParameters"];
    v7 = +[PLDisplayAgent shouldLogFromDCP];
    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = [*(a1 + 32) pendingBacklightEntry];

      if (!v9)
      {
LABEL_26:

        return;
      }

      v10 = [v6 objectForKey:@"brightness"];
      v11 = [v10 objectForKey:@"value"];
      v12 = [v11 longValue];

      v13 = [v10 objectForKey:@"min"];
      v14 = [v13 longValue];

      v15 = [v10 objectForKey:@"max"];
      v16 = [v15 longValue];

      v17 = [MEMORY[0x277CCABB0] numberWithDouble:(v12 - v14) * 100.0 / (v16 - v14)];
      v18 = [*(a1 + 32) pendingBacklightEntry];
      [v18 setObject:v17 forKeyedSubscript:@"Brightness"];

      v19 = [MEMORY[0x277CCABB0] numberWithLong:v12];
      v20 = [*(a1 + 32) pendingBacklightEntry];
      [v20 setObject:v19 forKeyedSubscript:@"SliderValue"];
    }

    else
    {
      v21 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v6];
      [v8 setPendingBacklightEntry:v21];

      v22 = [*(a1 + 32) pendingBacklightEntryDate];

      if (!v22)
      {
        v23 = [MEMORY[0x277CBEAA8] monotonicDate];
        [*(a1 + 32) setPendingBacklightEntryDate:v23];
      }

      if ([*(a1 + 32) isDebugEnabled])
      {
        v24 = [[PLEventForwardDisplayEntry alloc] initEntryWithRawData:v6];
        v25 = [PLEventForwardDisplayEntry alloc];
        v26 = [*(a1 + 32) pendingBacklightEntry];
        v27 = [(PLEventForwardDisplayEntry *)v25 initEntryWithRawData:v26];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v28 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __22__PLDisplayAgent_init__block_invoke_2_1468;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v28;
          if (kPRearNits_block_invoke_2_defaultOnce != -1)
          {
            dispatch_once(&kPRearNits_block_invoke_2_defaultOnce, block);
          }

          if (kPRearNits_block_invoke_2_classDebugEnabled == 1)
          {
            v29 = MEMORY[0x277CCACA8];
            v30 = [v24 objectForKeyedSubscript:@"Brightness"];
            v31 = [v27 objectForKeyedSubscript:@"Brightness"];
            v32 = MEMORY[0x277D3F268];
            v33 = [*(a1 + 32) pendingBacklightEntryDate];
            v34 = [v32 formattedStringForDate:v33];
            v35 = [v29 stringWithFormat:@"rawData.brightness=%@ self.pendingBacklightEntry.brightness=%@ self.pendingBacklightEntryDate=%@", v30, v31, v34];

            v36 = MEMORY[0x277D3F178];
            v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
            v38 = [v37 lastPathComponent];
            v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]_block_invoke"];
            [v36 logMessage:v35 fromFile:v38 fromFunction:v39 fromLineNumber:1581];

            v41 = PLLogCommon(v40);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }
          }
        }
      }

      v42 = [*(a1 + 32) backlightFilterTimer];
      v43 = [v42 timerActive];

      if (v43)
      {
        goto LABEL_26;
      }

      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v44 = objc_opt_class();
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __22__PLDisplayAgent_init__block_invoke_1474;
        v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v55[4] = v44;
        if (kPRearNits_block_invoke_2_defaultOnce_1472 != -1)
        {
          dispatch_once(&kPRearNits_block_invoke_2_defaultOnce_1472, v55);
        }

        if (kPRearNits_block_invoke_2_classDebugEnabled_1473 == 1)
        {
          v45 = MEMORY[0x277CCACA8];
          v46 = [MEMORY[0x277D3F268] formattedStringForDate:v10];
          v47 = [v45 stringWithFormat:@"Start backlight entry filter timer fireDate=%@", v46];

          v48 = MEMORY[0x277D3F178];
          v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          v50 = [v49 lastPathComponent];
          v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]_block_invoke_2"];
          [v48 logMessage:v47 fromFile:v50 fromFunction:v51 fromLineNumber:1586];

          v53 = PLLogCommon(v52);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      v54 = [*(a1 + 32) backlightFilterTimer];
      [v54 setFireDate:v10];
    }

    goto LABEL_26;
  }
}

void *__22__PLDisplayAgent_init__block_invoke_2_1468(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPRearNits_block_invoke_2_classDebugEnabled = result;
  return result;
}

void *__22__PLDisplayAgent_init__block_invoke_1474(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPRearNits_block_invoke_2_classDebugEnabled_1473 = result;
  return result;
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

- (void)initTaskOperatorDependancies
{
  if ([MEMORY[0x277D3F208] hasCapability:8])
  {
    if ([MEMORY[0x277D3F208] hasDCP])
    {
      if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
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
            v14[3] = &unk_279A5D088;
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
    if ([MEMORY[0x277D3F180] taskMode] && (v3 = objc_msgSend(*(a1 + 32), "AZLSnapshotsEntries"), v3 >= 21600))
    {
      v4 = PLLogDisplay(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __46__PLDisplayAgent_initTaskOperatorDependancies__block_invoke_cold_1();
      }

      return [*(*(a1 + 32) + 184) invalidate];
    }

    else
    {
      v5 = *(a1 + 32);
      v6 = v5[65];

      return [v5 __FrameBufferEventCallback:v6];
    }
  }

  return result;
}

- (void)initOperatorDependancies
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 logDisplayAPL];
  [*(a1 + 32) updateLastForegroundAppAPL:v4];
}

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLogDisplay(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __42__PLDisplayAgent_initOperatorDependancies__block_invoke_4_cold_1();
  }

  [*(a1 + 32) logAODChange];
}

void *__42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1522(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initOperatorDependancies_classDebugEnabled_1 = result;
  return result;
}

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1532(uint64_t a1, void *a2, void *a3)
{
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
    if (kPRearNits_block_invoke_3_defaultOnce != -1)
    {
      dispatch_once(&kPRearNits_block_invoke_3_defaultOnce, block);
    }

    if (kPRearNits_block_invoke_3_classDebugEnabled == 1)
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

      v17 = PLLogCommon(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [v6 doubleValue];
  [*(a1 + 32) setPendingKeyboardBrightnessValue:?];
  v18 = [*(a1 + 32) pendingKeyboardBrightnessDate];

  if (!v18)
  {
    v19 = [MEMORY[0x277CBEAA8] monotonicDate];
    [*(a1 + 32) setPendingKeyboardBrightnessDate:v19];
  }

  v20 = [*(a1 + 32) keyboardBrightnessFilterTimer];
  v21 = [v20 timerActive];

  if ((v21 & 1) == 0)
  {
    v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.5];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v23 = objc_opt_class();
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1539;
      v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v34[4] = v23;
      if (kPRearNits_block_invoke_3_defaultOnce_1537 != -1)
      {
        dispatch_once(&kPRearNits_block_invoke_3_defaultOnce_1537, v34);
      }

      if (kPRearNits_block_invoke_3_classDebugEnabled_1538 == 1)
      {
        v24 = MEMORY[0x277CCACA8];
        v25 = [MEMORY[0x277D3F268] formattedStringForDate:v22];
        v26 = [v24 stringWithFormat:@"Start keyboard brightness filter timer fireDate=%@", v25];

        v27 = MEMORY[0x277D3F178];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v29 = [v28 lastPathComponent];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent initOperatorDependancies]_block_invoke_2"];
        [v27 logMessage:v26 fromFile:v29 fromFunction:v30 fromLineNumber:1958];

        v32 = PLLogCommon(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v33 = [*(a1 + 32) keyboardBrightnessFilterTimer];
    [v33 setFireDate:v22];
  }
}

void *__42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1533(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPRearNits_block_invoke_3_classDebugEnabled = result;
  return result;
}

void *__42__PLDisplayAgent_initOperatorDependancies__block_invoke_1539(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPRearNits_block_invoke_3_classDebugEnabled_1538 = result;
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

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1550(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLogDisplay(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __41__PLCameraAgent_initOperatorDependancies__block_invoke_172_cold_1();
  }

  [*(a1 + 32) logDisplayAPL];
}

- (void)handleAFKInterfaceIOServiceCallback:(unsigned int)callback
{
  v3 = *&callback;
  v27 = *MEMORY[0x277D85DE8];
  entryID = 0;
  RegistryEntryID = IORegistryEntryGetRegistryEntryID(callback, &entryID);
  v6 = PLLogDisplay(RegistryEntryID);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = entryID;
    _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_DEFAULT, "Registry ID: %llu", buf, 0xCu);
  }

  properties = 0;
  if (IORegistryEntryCreateCFProperties(v3, &properties, *MEMORY[0x277CBECE8], 0))
  {
    v7 = 1;
  }

  else
  {
    v7 = properties == 0;
  }

  if (v7)
  {
    v8 = PLLogDisplay(properties);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLDisplayAgent handleAFKInterfaceIOServiceCallback:];
    }
  }

  else
  {
    v9 = CFGetTypeID(properties);
    TypeID = CFDictionaryGetTypeID();
    if (v9 == TypeID)
    {
      v8 = properties;
      v11 = PLLogDisplay(TypeID);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v8;
        _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_DEFAULT, "IO object property: %@", buf, 0xCu);
      }

      v12 = [AFKEndpointInterfacePowerlogDisplay alloc];
      iokitBacklightDCP = [(PLDisplayAgent *)self iokitBacklightDCP];
      v14 = [(AFKEndpointInterfacePowerlogDisplay *)v12 initWithService:v3 andIOKitComposition:iokitBacklightDCP];

      if (v14)
      {
        afkEndpoints = [(PLDisplayAgent *)self afkEndpoints];
        [afkEndpoints addObject:v14];

        workQueue = [(PLOperator *)self workQueue];
        [(AFKEndpointInterface *)v14 setDispatchQueue:workQueue];

        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke;
        v22[3] = &unk_279A5E878;
        v22[4] = self;
        [(AFKEndpointInterface *)v14 setReportHandler:v22];
        v18 = PLLogDisplay([(AFKEndpointInterface *)v14 activate]);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25EE51000, v18, OS_LOG_TYPE_DEFAULT, "AFKInterface activated", buf, 2u);
        }

        afkEndpoints2 = [(PLDisplayAgent *)self afkEndpoints];
        v20 = [afkEndpoints2 count];

        if (v20 >= 2)
        {
          [(PLDisplayAgent *)self cleanUpAFKInterfaces];
        }
      }

      else
      {
        v21 = PLLogDisplay(v15);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [PLDisplayAgent handleAFKInterfaceIOServiceCallback:];
        }
      }
    }

    else
    {
      v8 = PLLogDisplay(TypeID);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PLDisplayAgent handleAFKInterfaceIOServiceCallback:];
      }
    }
  }
}

void __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, size_t a6)
{
  v9 = PLLogDisplay(a1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_1();
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
      v17 = PLLogDisplay(TypeID);
      v18 = v17;
      if (v15 == TypeID)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_4();
        }

        v19 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v11];
        v20 = PLLogDisplay([*(a1 + 32) fillInBuiltinDisplayBrightnessParameters:v19]);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_5();
        }

        [*(a1 + 32) handleAFKInterfaceMsg:v19];
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_3();
        }

        v11 = v18;
      }

      goto LABEL_9;
    }

    v11 = PLLogDisplay(v13);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_6();
    }

LABEL_9:

    goto LABEL_12;
  }

  v14 = PLLogDisplay(v10);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_2();
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
      v35 = PLLogDisplay([(PLDisplayAgent *)self setLastBuiltinDisplaySliderValue:-1.0]);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v44 = 138412290;
        v45 = v30;
        _os_log_impl(&dword_25EE51000, v35, OS_LOG_TYPE_DEFAULT, "Not logging brightness value: %@", &v44, 0xCu);
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
    [PLUtilities getCurrentMonotonicAndMachAbsTime:&v31 machAbsTime:0 machContTime:&v32];
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
  v5 = PLLogDisplay(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLDisplayAgent logEventPointDisplayBacklightWithState:];
  }

  [(PLDisplayAgent *)self logEventPointDisplayForBlock:@"Backlight" isActive:state != 0];
}

- (void)logEventPointDisplayForBlock:(id)block isActive:(int)active
{
  v4 = *&active;
  v25[2] = *MEMORY[0x277D85DE8];
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
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __56__PLDisplayAgent_logEventPointDisplayForBlock_isActive___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v12;
        if (logEventPointDisplayForBlock_isActive__defaultOnce != -1)
        {
          dispatch_once(&logEventPointDisplayForBlock_isActive__defaultOnce, block);
        }

        if (logEventPointDisplayForBlock_isActive__classDebugEnabled != 1)
        {
          goto LABEL_17;
        }

        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"filtering block %@ isActive %d due to lastEntry %@", blockCopy, v4, v9];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        lastPathComponent = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logEventPointDisplayForBlock:isActive:]"];
        [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:2563];

        v19 = PLLogCommon(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
    [v13 setObject:v20 forKeyedSubscript:@"Active"];

    [(PLOperator *)self logEntry:v13];
    if ([MEMORY[0x277D3F208] hasCapability:3])
    {
      v21 = [v13 objectForKeyedSubscript:@"timestamp"];
      v25[0] = v21;
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
      v25[1] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

      [(NSMutableArray *)self->_displayStateChanges addObject:v23];
    }

    [(PLDisplayAgent *)self logDisplayAPL];
    goto LABEL_16;
  }

LABEL_18:
}

void *__56__PLDisplayAgent_logEventPointDisplayForBlock_isActive___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointDisplayForBlock_isActive__classDebugEnabled = result;
  return result;
}

- (void)initAODState:(int64_t)state
{
  v5 = PLLogDisplay(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLDisplayAgent initAODState:];
  }

  if (state <= 3)
  {
    [(PLDisplayAgent *)self logAODState:dword_25F023EE0[state]];
  }
}

- (void)logAODState:(int)state
{
  v3 = *&state;
  hasAOD = [MEMORY[0x277D3F208] hasAOD];
  if (hasAOD)
  {
    v6 = PLLogDisplay(hasAOD);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PLDisplayAgent logAODState:];
    }

    v7 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Display"];
    if (![(PLDisplayAgent *)self lastScreenState]|| [(PLDisplayAgent *)self lastScreenState]!= v3)
    {
      v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
      v9 = [MEMORY[0x277CCABB0] numberWithInt:v3];
      [v8 setObject:v9 forKeyedSubscript:@"Active"];

      [v8 setObject:@"Backlight" forKeyedSubscript:@"Block"];
      v10 = PLLogDisplay([(PLDisplayAgent *)self setLastScreenState:v3]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLDisplayAgent logAODState:];
      }

      [(PLOperator *)self logEntry:v8];
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
      v7[3] = &unk_279A5C600;
      v7[4] = self;
      v7[5] = state;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }
  }
}

void __62__PLDisplayAgent_backlight_didCompleteUpdateToState_forEvent___block_invoke(uint64_t a1)
{
  v2 = PLLogDisplay(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__PLDisplayAgent_backlight_didCompleteUpdateToState_forEvent___block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = *(a1 + 40);
  if (v9 > 1)
  {
    if (v9 == 2 || v9 == 3)
    {
      v10 = *(a1 + 32);
      v11 = 1;
LABEL_10:
      [v10 logAODState:v11];
    }
  }

  else
  {
    if (v9)
    {
      if (v9 != 1)
      {
        return;
      }

      v10 = *(a1 + 32);
      v11 = 2;
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
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLDisplayAgent_logEventForwardALSLux___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (logEventForwardALSLux__defaultOnce != -1)
    {
      dispatch_once(&logEventForwardALSLux__defaultOnce, block);
    }

    if (logEventForwardALSLux__classDebugEnabled == 1)
    {
      v6 = MEMORY[0x277CCACA8];
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      v8 = [v6 stringWithFormat:@"Got event ALSLux:%llu at %@\n", lux, monotonicDate];

      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logEventForwardALSLux:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:2703];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [(PLDisplayAgent *)self setPendingALSLux:lux];
  monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLDisplayAgent *)self setPendingALSLuxEntryDate:monotonicDate2];

  alsLuxFilterTimer = [(PLDisplayAgent *)self alsLuxFilterTimer];
  if (alsLuxFilterTimer)
  {
    v17 = alsLuxFilterTimer;
    alsLuxFilterTimer2 = [(PLDisplayAgent *)self alsLuxFilterTimer];
    timerActive = [alsLuxFilterTimer2 timerActive];

    if ((timerActive & 1) == 0)
    {
      v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:10.0];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v21 = objc_opt_class();
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __40__PLDisplayAgent_logEventForwardALSLux___block_invoke_1609;
        v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v32[4] = v21;
        if (logEventForwardALSLux__defaultOnce_1607 != -1)
        {
          dispatch_once(&logEventForwardALSLux__defaultOnce_1607, v32);
        }

        if (logEventForwardALSLux__classDebugEnabled_1608 == 1)
        {
          v22 = MEMORY[0x277CCACA8];
          v23 = [MEMORY[0x277D3F268] formattedStringForDate:v20];
          v24 = [v22 stringWithFormat:@"Start ALSLux entry filter timer fireDate=%@", v23];

          v25 = MEMORY[0x277D3F178];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          lastPathComponent2 = [v26 lastPathComponent];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logEventForwardALSLux:]"];
          [v25 logMessage:v24 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:2724];

          v30 = PLLogCommon(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      alsLuxFilterTimer3 = [(PLDisplayAgent *)self alsLuxFilterTimer];
      [alsLuxFilterTimer3 setFireDate:v20];
    }
  }
}

void *__40__PLDisplayAgent_logEventForwardALSLux___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardALSLux__classDebugEnabled = result;
  return result;
}

void *__40__PLDisplayAgent_logEventForwardALSLux___block_invoke_1609(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardALSLux__classDebugEnabled_1608 = result;
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
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
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
        iokitBacklight = &unk_287146D20;
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
        v10 = &unk_287146D20;
      }

      else
      {
        brightnessSystemClient2 = [(PLDisplayAgent *)self brightnessSystemClient];
        v10 = [brightnessSystemClient2 copyPropertyForKey:@"TrustedLux"];
      }

      v15 = PLLogDisplay([v9 setObject:v10 forKeyedSubscript:@"lux"]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLDisplayAgent logEventForwardDisplayWithRawData:v9 withDate:?];
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

    isMIEActive = [(PLDisplayAgent *)self isMIEActive];
    if (isMIEActive)
    {
      uAmpsFilterTimer = [(PLDisplayAgent *)self uAmpsFilterTimer];

      if (!uAmpsFilterTimer)
      {
        objc_initWeak(&location, self);
        v27 = objc_alloc(MEMORY[0x277D3F250]);
        v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:60.0];
        workQueue = [(PLOperator *)self workQueue];
        v33 = MEMORY[0x277D85DD0];
        v34 = 3221225472;
        v35 = __61__PLDisplayAgent_logEventForwardDisplayWithRawData_withDate___block_invoke;
        v36 = &unk_279A5E8A0;
        objc_copyWeak(&v37, &location);
        v30 = [v27 initWithFireDate:v28 withInterval:0 withTolerance:0 repeats:workQueue withUserInfo:&v33 withQueue:0.0 withBlock:0.0];
        [(PLDisplayAgent *)self setUAmpsFilterTimer:v30, v33, v34, v35, v36];

        uAmpsFilterTimer2 = [(PLDisplayAgent *)self uAmpsFilterTimer];
        [uAmpsFilterTimer2 arm];

        objc_destroyWeak(&v37);
        objc_destroyWeak(&location);
      }

      [(PLDisplayAgent *)self setUAmpsEntry:v9];
    }

    else
    {
      v32 = PLLogDisplay(isMIEActive);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [PLDisplayAgent logEventForwardDisplayWithRawData:withDate:];
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
    block[3] = &unk_279A5BDC0;
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
          v11 = PLLogDisplay(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [PLDisplayAgent logEventForwardLuxStats:];
          }

          goto LABEL_20;
        }
      }
    }

    if ([(PLDisplayAgent *)self lastRearLuxValue]!= integerValue)
    {
      if ([(PLDisplayAgent *)self lastRearLuxValue]== -1)
      {
        v15 = 0.0;
        v13 = 0.0;
      }

      else
      {
        lastRearLuxValue = [(PLDisplayAgent *)self lastRearLuxValue];
        v13 = lastRearLuxValue - [(PLDisplayAgent *)self lastRearLuxValue]* 0.2;
        lastRearLuxValue2 = [(PLDisplayAgent *)self lastRearLuxValue];
        v15 = lastRearLuxValue2 + [(PLDisplayAgent *)self lastRearLuxValue]* 0.2;
      }

      if ([(PLDisplayAgent *)self lastRearLuxValue]== -1 || (v13 <= integerValue ? (v16 = v15 < integerValue) : (v16 = 1), v16))
      {
LABEL_20:
        v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:statsCopy];
        [(PLOperator *)self logEntry:v17];
        [(PLDisplayAgent *)self setLastRearLuxValue:integerValue];
      }
    }
  }

  else
  {
    v5 = PLLogDisplay(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLDisplayAgent logEventForwardLuxStats:];
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
  if ([(PLDisplayAgent *)self userTouch]== touch)
  {
    return;
  }

  [(PLDisplayAgent *)self setUserTouch:touchCopy];
  if (touchCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(PLDisplayAgent *)self setUserTouchDownTime:date];
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

    [date setObject:&unk_287146D38 forKeyedSubscript:@"UserTouchCount"];
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
    if (logEventBackwardUserTouch__defaultOnce != -1)
    {
      dispatch_once(&logEventBackwardUserTouch__defaultOnce, block);
    }

    if (logEventBackwardUserTouch__classDebugEnabled == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Don't have start time for touch"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logEventBackwardUserTouch:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:3101];

      v19 = PLLogCommon(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__44__PLDisplayAgent_logEventBackwardUserTouch___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardUserTouch__classDebugEnabled = result;
  return result;
}

- (void)logEventBackwardRampInfo:(id)info
{
  infoCopy = info;
  v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"RampInfo"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v7 = v6;
  if (infoCopy)
  {
    v8 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];

    if (v8)
    {
      v9 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];
      v10 = [v9 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v7 setObject:v10 forKeyedSubscript:@"AAP_NumberOfUpdates"];

      v11 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];
      v12 = [v11 objectForKeyedSubscript:@"RampFrequency"];
      [v7 setObject:v12 forKeyedSubscript:@"AAP_RampFrequency"];

      v13 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];
      v14 = [v13 objectForKeyedSubscript:@"RampLength"];
      [v7 setObject:v14 forKeyedSubscript:@"AAP_RampLength"];

      v15 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];
      v16 = [v15 objectForKeyedSubscript:@"RampOrigin"];
      [v7 setObject:v16 forKeyedSubscript:@"AAP_RampOrigin"];

      v17 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];
      v18 = [v17 objectForKeyedSubscript:@"RampTarget"];
      [v7 setObject:v18 forKeyedSubscript:@"AAP_RampTarget"];
    }

    v19 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];

    if (v19)
    {
      v20 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v21 = [v20 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v7 setObject:v21 forKeyedSubscript:@"Colour_NumberOfUpdates"];

      v22 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v23 = [v22 objectForKeyedSubscript:@"RampFrequency"];
      [v7 setObject:v23 forKeyedSubscript:@"Colour_RampFrequency"];

      v24 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v25 = [v24 objectForKeyedSubscript:@"RampLength"];
      [v7 setObject:v25 forKeyedSubscript:@"Colour_RampLength"];

      v26 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v27 = [v26 objectForKeyedSubscript:@"RampOrigin"];
      v28 = [v27 objectForKeyedSubscript:@"X"];
      [v7 setObject:v28 forKeyedSubscript:@"Colour_RampOrigin_X"];

      v29 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v30 = [v29 objectForKeyedSubscript:@"RampOrigin"];
      v31 = [v30 objectForKeyedSubscript:@"Y"];
      [v7 setObject:v31 forKeyedSubscript:@"Colour_RampOrigin_Y"];

      v32 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v33 = [v32 objectForKeyedSubscript:@"RampTarget"];
      v34 = [v33 objectForKeyedSubscript:@"X"];
      [v7 setObject:v34 forKeyedSubscript:@"Colour_RampTarget_X"];

      v35 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v36 = [v35 objectForKeyedSubscript:@"RampTarget"];
      v37 = [v36 objectForKeyedSubscript:@"Y"];
      [v7 setObject:v37 forKeyedSubscript:@"Colour_RampTarget_Y"];
    }

    v38 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];

    if (v38)
    {
      v39 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];
      v40 = [v39 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v7 setObject:v40 forKeyedSubscript:@"SDR_NumberOfUpdates"];

      v41 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];
      v42 = [v41 objectForKeyedSubscript:@"RampFrequency"];
      [v7 setObject:v42 forKeyedSubscript:@"SDR_RampFrequency"];

      v43 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];
      v44 = [v43 objectForKeyedSubscript:@"RampLength"];
      [v7 setObject:v44 forKeyedSubscript:@"SDR_RampLength"];

      v45 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];
      v46 = [v45 objectForKeyedSubscript:@"RampOrigin"];
      [v7 setObject:v46 forKeyedSubscript:@"SDR_RampOrigin"];

      v47 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];
      v48 = [v47 objectForKeyedSubscript:@"RampTarget"];
      [v7 setObject:v48 forKeyedSubscript:@"SDR_RampTarget"];
    }

    v49 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];

    if (v49)
    {
      v50 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];
      v51 = [v50 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v7 setObject:v51 forKeyedSubscript:@"EDR_NumberOfUpdates"];

      v52 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];
      v53 = [v52 objectForKeyedSubscript:@"RampFrequency"];
      [v7 setObject:v53 forKeyedSubscript:@"EDR_RampFrequency"];

      v54 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];
      v55 = [v54 objectForKeyedSubscript:@"RampLength"];
      [v7 setObject:v55 forKeyedSubscript:@"EDR_RampLength"];

      v56 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];
      v57 = [v56 objectForKeyedSubscript:@"RampOrigin"];
      [v7 setObject:v57 forKeyedSubscript:@"EDR_RampOrigin"];

      v58 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];
      v59 = [v58 objectForKeyedSubscript:@"RampTarget"];
      [v7 setObject:v59 forKeyedSubscript:@"EDR_RampTarget"];
    }

    v60 = [infoCopy objectForKeyedSubscript:@"isFlipbookActive"];
    [v7 setObject:v60 forKeyedSubscript:@"isFlipbookActive"];

    [(PLOperator *)self logEntry:v7];
  }

  else
  {
    v61 = PLLogDisplay(v6);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      [PLDisplayAgent logEventBackwardRampInfo:];
    }
  }
}

- (void)logEventBackwardCurveUpdate:(id)update
{
  v59[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = PLLogDisplay(updateCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (updateCopy)
  {
    selfCopy = self;
    if (v6)
    {
      [PLDisplayAgent logEventBackwardCurveUpdate:];
    }

    v7 = 0x279A5A000uLL;
    v8 = *MEMORY[0x277D3F5C8];
    v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CurveUpdate"];
    array = [MEMORY[0x277CBEB18] array];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v11 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];

    v54 = v5;
    v56 = monotonicDate;
    v57 = array;
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

          monotonicDate = v56;
          v7 = 0x279A5A000uLL;

          array = v57;
          [v18 setObject:&unk_287146D20 forKeyedSubscript:@"level"];
          [v57 addObject:v18];

          ++v15;
        }

        while ([v13 count] > v15);
      }

      v5 = v54;
      v8 = v14;
    }

    v25 = [updateCopy objectForKeyedSubscript:{@"CurveLevelMed", selfCopy}];

    v55 = v8;
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

          monotonicDate = v56;
          v7 = 0x279A5A000uLL;

          array = v57;
          [v31 setObject:&unk_287146D38 forKeyedSubscript:@"level"];
          [v57 addObject:v31];

          v8 = v55;
          ++v28;
        }

        while ([v27 count] > v28);
      }

      v5 = v54;
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
          v43 = [*(v7 + 3520) entryKeyForType:v8 andName:@"CurveUpdate"];
          v44 = [v42 initWithEntryKey:v43 withDate:monotonicDate];

          v45 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
          v46 = [v45 objectForKeyedSubscript:@"lux"];
          v47 = [v46 objectAtIndexedSubscript:v41];
          [v44 setObject:v47 forKeyedSubscript:@"lux"];

          v48 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
          v49 = [v48 objectForKeyedSubscript:@"nits"];
          v50 = [v49 objectAtIndexedSubscript:v41];
          [v44 setObject:v50 forKeyedSubscript:@"nits"];

          monotonicDate = v56;
          v7 = 0x279A5A000;

          array = v57;
          [v44 setObject:&unk_287146D50 forKeyedSubscript:@"level"];
          [v57 addObject:v44];

          v8 = v55;
          ++v41;
        }

        while ([v40 count] > v41);
      }

      v5 = v54;
    }

    if ([array count])
    {
      v58 = v5;
      v59[0] = array;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
      [v53 logEntries:v51 withGroupID:v5];
    }
  }

  else if (v6)
  {
    [PLDisplayAgent logEventBackwardCurveUpdate:];
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
  v39 = *MEMORY[0x277D85DE8];
  wakeCopy = wake;
  if (wakeCopy)
  {
    selfCopy = self;
    v5 = *MEMORY[0x277D3F5C8];
    v28 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AmbientLight"];
    array = [MEMORY[0x277CBEB18] array];
    v7 = [wakeCopy objectForKeyedSubscript:@"count"];
    unsignedIntValue = [v7 unsignedIntValue];

    v30 = [wakeCopy objectForKeyedSubscript:@"timestamp"];
    v9 = [wakeCopy objectForKeyedSubscript:@"lux"];
    v10 = [wakeCopy objectForKeyedSubscript:@"color_x"];
    v29 = wakeCopy;
    v11 = [wakeCopy objectForKeyedSubscript:@"color_y"];
    if (unsignedIntValue)
    {
      v12 = 0;
      v13 = unsignedIntValue;
      do
      {
        v14 = MEMORY[0x277CBEAA8];
        v15 = [v30 objectAtIndexedSubscript:v12];
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

        v24 = PLLogDisplay(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109634;
          v34 = v12;
          v35 = 2112;
          v36 = v16;
          v37 = 2112;
          v38 = v19;
          _os_log_debug_impl(&dword_25EE51000, v24, OS_LOG_TYPE_DEBUG, "ALSSamplesBeforeWake for the count=%d at the time=%@ is %@", buf, 0x1Cu);
        }

        [array addObject:v19];
        ++v12;
      }

      while (v13 != v12);
    }

    v25 = v28;
    if ([array count])
    {
      v31 = v28;
      v32 = array;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      [(PLOperator *)selfCopy logEntries:v26 withGroupID:v28];
    }

    wakeCopy = v29;
  }

  else
  {
    v25 = PLLogDisplay(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [PLDisplayAgent logEventBackwardALSSamplesBeforeWake:];
    }
  }
}

- (void)logEventBackwardAmbientLight:(id)light
{
  v39 = *MEMORY[0x277D85DE8];
  lightCopy = light;
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    fullMode = [MEMORY[0x277D3F180] fullMode];
    if (fullMode)
    {
      if (self->_ShouldLogAmbient)
      {
        if (lightCopy)
        {
          selfCopy = self;
          v6 = *MEMORY[0x277D3F5C8];
          v28 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AmbientLight"];
          array = [MEMORY[0x277CBEB18] array];
          v8 = [lightCopy objectForKeyedSubscript:@"count"];
          unsignedIntValue = [v8 unsignedIntValue];

          v30 = [lightCopy objectForKeyedSubscript:@"timestamp"];
          v29 = [lightCopy objectForKeyedSubscript:@"lux"];
          v10 = [lightCopy objectForKeyedSubscript:@"color_x"];
          v11 = [lightCopy objectForKeyedSubscript:@"color_y"];
          if (unsignedIntValue)
          {
            v12 = 0;
            v13 = unsignedIntValue;
            do
            {
              v14 = MEMORY[0x277CBEAA8];
              v15 = [v30 objectAtIndexedSubscript:v12];
              [v15 doubleValue];
              v16 = [v14 dateWithTimeIntervalSinceReferenceDate:?];

              v17 = objc_alloc(MEMORY[0x277D3F190]);
              v18 = [(PLOperator *)PLDisplayAgent entryKeyForType:v6 andName:@"AmbientLight"];
              v19 = [v17 initWithEntryKey:v18 withDate:v16];

              v20 = [v29 objectAtIndexedSubscript:v12];
              [v19 setObject:v20 forKeyedSubscript:@"Lux"];

              v21 = [v10 objectAtIndexedSubscript:v12];
              [v19 setObject:v21 forKeyedSubscript:@"colorX"];

              v22 = [v11 objectAtIndexedSubscript:v12];
              [v19 setObject:v22 forKeyedSubscript:@"colorY"];

              v24 = PLLogDisplay(v23);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109634;
                v34 = v12;
                v35 = 2112;
                v36 = v16;
                v37 = 2112;
                v38 = v19;
                _os_log_debug_impl(&dword_25EE51000, v24, OS_LOG_TYPE_DEBUG, "AmbientLight for the count=%d at the time=%@ is %@", buf, 0x1Cu);
              }

              [array addObject:v19];
              ++v12;
            }

            while (v13 != v12);
          }

          v25 = v28;
          if ([array count])
          {
            v31 = v28;
            v32 = array;
            v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            [(PLOperator *)selfCopy logEntries:v26 withGroupID:v28];
          }
        }

        else
        {
          v25 = PLLogDisplay(fullMode);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            [PLDisplayAgent logEventBackwardAmbientLight:];
          }
        }
      }
    }
  }
}

- (void)handleBrightnessClientNotification:(id)notification withValue:(id)value
{
  notificationCopy = notification;
  valueCopy = value;
  if ([notificationCopy isEqual:@"BacklightPowerMilliWatts"])
  {
    workQueue = [(PLOperator *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke;
    block[3] = &unk_279A5C3F8;
    block[4] = self;
    v72 = valueCopy;
    dispatch_async_and_wait(workQueue, block);

    v9 = v72;
LABEL_38:

    goto LABEL_39;
  }

  if ([notificationCopy isEqual:@"BacklightPowerNits"])
  {
    workQueue2 = [(PLOperator *)self workQueue];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1750;
    v69[3] = &unk_279A5C3F8;
    v69[4] = self;
    v70 = valueCopy;
    dispatch_async_and_wait(workQueue2, v69);

    v9 = v70;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"AODRampTelemetry"])
  {
    workQueue3 = [(PLOperator *)self workQueue];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1761;
    v66[3] = &unk_279A5C3F8;
    v67 = valueCopy;
    selfCopy = self;
    dispatch_async_and_wait(workQueue3, v66);

    v9 = v67;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"AODCurveUpdate"])
  {
    workQueue4 = [(PLOperator *)self workQueue];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1762;
    v63[3] = &unk_279A5C3F8;
    v64 = valueCopy;
    selfCopy2 = self;
    dispatch_async_and_wait(workQueue4, v63);

    v9 = v64;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"AODWakeFromALSThreshold"])
  {
    workQueue5 = [(PLOperator *)self workQueue];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1763;
    v60[3] = &unk_279A5C3F8;
    v61 = valueCopy;
    selfCopy3 = self;
    dispatch_async_and_wait(workQueue5, v60);

    v9 = v61;
    goto LABEL_38;
  }

  if ([MEMORY[0x277D3F208] internalBuild] && objc_msgSend(MEMORY[0x277D3F180], "fullMode") && objc_msgSend(notificationCopy, "isEqual:", @"CBAmbientLightTelemetry") && self->_ShouldLogAmbient)
  {
    workQueue6 = [(PLOperator *)self workQueue];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1764;
    v57[3] = &unk_279A5C3F8;
    v58 = valueCopy;
    selfCopy4 = self;
    dispatch_async_and_wait(workQueue6, v57);

    v9 = v58;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"CBFinalBrightnessCommit"] && -[PLDisplayAgent supportsFinalBrightnessCommit](self, "supportsFinalBrightnessCommit"))
  {
    workQueue7 = [(PLOperator *)self workQueue];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1765;
    v54[3] = &unk_279A5C3F8;
    v55 = valueCopy;
    selfCopy5 = self;
    dispatch_async_and_wait(workQueue7, v54);

    v9 = v55;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"DisplayBrightness"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      workQueue8 = [(PLOperator *)self workQueue];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766;
      v52[3] = &unk_279A5C3F8;
      v52[4] = self;
      v53 = valueCopy;
      dispatch_async_and_wait(workQueue8, v52);

      v9 = v53;
      goto LABEL_38;
    }
  }

  if ([notificationCopy isEqual:@"BrightnessTransaction"])
  {
    workQueue9 = [(PLOperator *)self workQueue];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1773;
    v49[3] = &unk_279A5C3F8;
    v50 = valueCopy;
    selfCopy6 = self;
    dispatch_async_and_wait(workQueue9, v49);

    v9 = v50;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"DisplayBrightnessAuto"])
  {
    workQueue10 = [(PLOperator *)self workQueue];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1777;
    v47[3] = &unk_279A5C3F8;
    v47[4] = self;
    v48 = valueCopy;
    dispatch_async_and_wait(workQueue10, v47);

    v9 = v48;
    goto LABEL_38;
  }

  if ([MEMORY[0x277CFD398] supportsAdaptation] && objc_msgSend(notificationCopy, "isEqual:", @"ColorAdaptationEnabled"))
  {
    v19 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"CAModeEnabled"];
    [(PLDisplayAgent *)self logBrightnessDataWithEntryKey:v19 withColName:@"CAModeEnabled" withValue:valueCopy];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v20 = objc_opt_class();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1782;
      v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v46[4] = v20;
      if (handleBrightnessClientNotification_withValue__defaultOnce != -1)
      {
        dispatch_once(&handleBrightnessClientNotification_withValue__defaultOnce, v46);
      }

      if (handleBrightnessClientNotification_withValue__classDebugEnabled == 1)
      {
        valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: property=%@, value=%@", "-[PLDisplayAgent handleBrightnessClientNotification:withValue:]", 3514, notificationCopy, valueCopy];
        v22 = MEMORY[0x277D3F178];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        lastPathComponent = [v23 lastPathComponent];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]"];
        [v22 logMessage:valueCopy fromFile:lastPathComponent fromFunction:v25 fromLineNumber:3514];

        v27 = PLLogCommon(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }

  else
  {
    if ([notificationCopy isEqual:@"PowerLogReport"])
    {
      workQueue11 = [(PLOperator *)self workQueue];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1786;
      v42[3] = &unk_279A5C768;
      v43 = valueCopy;
      selfCopy7 = self;
      v45 = notificationCopy;
      dispatch_async(workQueue11, v42);

      v9 = v43;
      goto LABEL_38;
    }

    if ([notificationCopy isEqual:@"CBBlueReductionStatus"])
    {
      [(PLDisplayAgent *)self logBlueLightDataWithDictionary:valueCopy];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v29 = objc_opt_class();
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1811;
        v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v41[4] = v29;
        if (handleBrightnessClientNotification_withValue__defaultOnce_1809 != -1)
        {
          dispatch_once(&handleBrightnessClientNotification_withValue__defaultOnce_1809, v41);
        }

        if (handleBrightnessClientNotification_withValue__classDebugEnabled_1810 == 1)
        {
          valueCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: property=%@, value=%@", "-[PLDisplayAgent handleBrightnessClientNotification:withValue:]", 3576, notificationCopy, valueCopy];
          v31 = MEMORY[0x277D3F178];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          lastPathComponent2 = [v32 lastPathComponent];
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]"];
          [v31 logMessage:valueCopy2 fromFile:lastPathComponent2 fromFunction:v34 fromLineNumber:3576];

          v36 = PLLogCommon(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }
    }

    else if (+[PLDisplayAgent shouldLogLuxStats](PLDisplayAgent, "shouldLogLuxStats") && [notificationCopy isEqual:@"RLuxStats"])
    {
      workQueue12 = [(PLOperator *)self workQueue];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1812;
      v38[3] = &unk_279A5C3F8;
      v39 = valueCopy;
      selfCopy8 = self;
      dispatch_async_and_wait(workQueue12, v38);

      v9 = v39;
      goto LABEL_38;
    }
  }

LABEL_39:
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke(uint64_t a1)
{
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
      block[3] = &unk_279A5E8C8;
      v65 = @"ALS";
      v66 = v16;
      if (kPRearNits_block_invoke_4_defaultOnce != -1)
      {
        dispatch_once(&kPRearNits_block_invoke_4_defaultOnce, block);
      }

      v17 = kPRearNits_block_invoke_4_classDebugEnabled;

      if (v17 == 1)
      {
        v55 = v3;
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"PowerReal:%f PowerIfALSOn:%f alsPowerSaved:%f", *&v7, *&v9, v7 - v9];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v21 = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke"];
        [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:3333];

        v24 = PLLogCommon(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v3 = v55;
      }
    }

    [*(a1 + 32) lastALSPowerSaved];
    v26 = v25;
    if (v15 == 0.0)
    {
      [*(a1 + 32) lastALSPowerSaved];
      v28 = v27 != 0.0;
    }

    else
    {
      v28 = 0;
    }

    v29 = vabdd_f64(v15, v26);
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v30 = objc_opt_class();
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1732;
      v61[3] = &unk_279A5E8C8;
      v62 = @"ALS";
      v63 = v30;
      if (kPRearNits_block_invoke_4_defaultOnce_1730 != -1)
      {
        dispatch_once(&kPRearNits_block_invoke_4_defaultOnce_1730, v61);
      }

      v31 = kPRearNits_block_invoke_4_classDebugEnabled_1731;

      if (v31 == 1)
      {
        v56 = v3;
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"significantChange:%d newlyZero:%d", v29 >= 1.0, v28];
        v33 = MEMORY[0x277D3F178];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v35 = [v34 lastPathComponent];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke_2"];
        [v33 logMessage:v32 fromFile:v35 fromFunction:v36 fromLineNumber:3341];

        v38 = PLLogCommon(v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v3 = v56;
      }
    }

    if (v29 >= 1.0 || v28)
    {
      [*(a1 + 32) setLastALSPowerSaved:v15];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v39 = objc_opt_class();
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1739;
        v58[3] = &unk_279A5E8C8;
        v59 = @"ALS";
        v60 = v39;
        if (kPRearNits_block_invoke_4_defaultOnce_1737 != -1)
        {
          dispatch_once(&kPRearNits_block_invoke_4_defaultOnce_1737, v58);
        }

        v40 = kPRearNits_block_invoke_4_classDebugEnabled_1738;

        if (v40 == 1)
        {
          v41 = v3;
          v42 = MEMORY[0x277CCACA8];
          [*(a1 + 32) lastALSPowerSaved];
          v44 = [v42 stringWithFormat:@"Setting lastALSPowerSaved=%f", v43];
          v45 = MEMORY[0x277D3F178];
          v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          v47 = [v46 lastPathComponent];
          v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke_2"];
          [v45 logMessage:v44 fromFile:v47 fromFunction:v48 fromLineNumber:3345];

          v50 = PLLogCommon(v49);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v3 = v41;
        }
      }

      v51 = MEMORY[0x277D3F1E0];
      v52 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:2.0];
      v53 = [*(a1 + 32) workQueue];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1744;
      v57[3] = &unk_279A5D110;
      v57[4] = *(a1 + 32);
      v54 = [v51 scheduledTimerWithMonotonicFireDate:v52 withInterval:v53 withQueue:v57 withBlock:0.0];
      [*(a1 + 32) setLogLastALSPowerSavedTimer:v54];
    }
  }
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPRearNits_block_invoke_4_classDebugEnabled = result;
  return result;
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1732(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPRearNits_block_invoke_4_classDebugEnabled_1731 = result;
  return result;
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1739(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPRearNits_block_invoke_4_classDebugEnabled_1738 = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1744(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[PLDisplayAgent shouldLogALSPowerSaved])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1745;
      block[3] = &unk_279A5E8C8;
      v20 = @"ALS";
      v21 = v4;
      if (kPRearNits_block_invoke_5_defaultOnce != -1)
      {
        dispatch_once(&kPRearNits_block_invoke_5_defaultOnce, block);
      }

      v5 = kPRearNits_block_invoke_5_classDebugEnabled;

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

        v14 = PLLogCommon(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v15 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSPowerSaved"];
    v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15 withDate:v3];
    v17 = MEMORY[0x277CCABB0];
    [*(a1 + 32) lastALSPowerSaved];
    v18 = [v17 numberWithDouble:?];
    [v16 setObject:v18 forKeyedSubscript:@"Power"];

    [*(a1 + 32) logEntry:v16];
  }
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1745(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPRearNits_block_invoke_5_classDebugEnabled = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1750(uint64_t a1)
{
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
      if (kPRearNits_block_invoke_6_defaultOnce != -1)
      {
        dispatch_once(&kPRearNits_block_invoke_6_defaultOnce, block);
      }

      if (kPRearNits_block_invoke_6_classDebugEnabled == 1)
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

        v20 = PLLogCommon(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1757(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPRearNits_block_invoke_6_classDebugEnabled = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1761(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PLLogDisplay(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1761_cold_1();
  }

  [*(a1 + 40) logEventBackwardRampInfo:v2];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1762(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PLLogDisplay(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1762_cold_1();
  }

  [*(a1 + 40) logEventBackwardCurveUpdate:v2];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1763(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PLLogDisplay(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1763_cold_1();
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
  v2 = *(a1 + 32);
  v3 = PLLogDisplay(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1764_cold_1();
  }

  [*(a1 + 40) logEventBackwardAmbientLight:v2];
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1765(uint64_t a1)
{
  v2 = PLLogDisplay(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1765_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = [*(a1 + 32) objectForKey:@"slider"];
  [v9 floatValue];
  v11 = v10 * 100.0;

  [*(a1 + 40) logEventPointUserBrightnessCommitted:v11];
  return [*(a1 + 40) logEventForwardExtendedALSUserPreferences:*(a1 + 32)];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
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

  v7 = [MEMORY[0x277D3F208] hasCapability:8];
  if (v7)
  {
    v8 = PLLogDisplay(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v45 = 138412290;
      v46 = v9;
      _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_DEFAULT, "Received Brightness Notification: %@", &v45, 0xCu);
    }

    v10 = (a1 + 32);
    v11 = [*(a1 + 32) pendingBacklightEntry];

    if (!v11)
    {
      v12 = *(a1 + 32);
      v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(a1 + 40)];
      [v12 setPendingBacklightEntry:v13];
    }

    v14 = [*(a1 + 40) objectForKey:@"NitsPhysical"];
    [v14 floatValue];
    v16 = v15;

    v17 = [*(a1 + 32) brightnessSystemClient];
    v18 = [v17 copyPropertyForKey:@"DisplayBrightnessMin"];
    [v18 doubleValue];
    v20 = v19;

    v21 = [*(a1 + 32) brightnessSystemClient];
    v22 = [v21 copyPropertyForKey:@"DisplayBrightnessMax"];
    [v22 doubleValue];
    v24 = v23;

    v25 = [*(a1 + 40) objectForKey:@"Brightness"];
    [v25 floatValue];
    v27 = v26;

    v29 = PLLogDisplay(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v45 = 134219264;
      v46 = v16;
      v47 = 2048;
      v48 = v20;
      v49 = 2048;
      v50 = v24;
      v51 = 2048;
      v52 = v24 - v20;
      v53 = 2048;
      v54 = v27;
      v55 = 2048;
      v56 = (v27 - v20) * 100.0 / (v24 - v20);
      _os_log_debug_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEBUG, "Reported mNits:%f ,brightnessMin:%f ,brightnessMax:%f ,brightnessDiff:%f ,brightness:%f ,brightnessPercentage:%f ", &v45, 0x3Eu);
    }

    v30 = [MEMORY[0x277CCABB0] numberWithDouble:(v27 - v20) * 100.0 / (v24 - v20)];
    v31 = [*v10 pendingBacklightEntry];
    [v31 setObject:v30 forKeyedSubscript:@"Brightness"];

    v32 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
    v33 = [*v10 pendingBacklightEntry];
    [v33 setObject:v32 forKeyedSubscript:@"SliderValue"];

    v34 = [MEMORY[0x277CCABB0] numberWithDouble:v16 * 1000.0];
    v35 = [*v10 pendingBacklightEntry];
    [v35 setObject:v34 forKeyedSubscript:@"mNits"];

    v36 = [*v10 pendingBacklightEntryDate];

    if (!v36)
    {
      v38 = [MEMORY[0x277CBEAA8] monotonicDate];
      [*v10 setPendingBacklightEntryDate:v38];
    }

    v39 = PLLogDisplay(v37);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766_cold_1(v10);
    }

    v40 = [*v10 backlightFilterTimer];
    v41 = [v40 timerActive];

    if ((v41 & 1) == 0)
    {
      v42 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
      v43 = PLLogDisplay(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766_cold_2(v42);
      }

      v44 = [*v10 backlightFilterTimer];
      [v44 setFireDate:v42];
    }
  }
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1773(uint64_t a1)
{
  v2 = PLLogDisplay(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1773_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = [*(a1 + 32) objectForKey:@"HDR.Headroom"];
  [v9 doubleValue];
  v11 = (v10 * 1000.0);

  v12 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  [*(a1 + 40) setHDRHeadroom:v12];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1777(uint64_t a1)
{
  [*(a1 + 32) setAlsOn:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1778;
    block[3] = &unk_279A5E8C8;
    v14 = @"ALS";
    v15 = v2;
    if (kPRearNits_block_invoke_7_defaultOnce != -1)
    {
      dispatch_once(&kPRearNits_block_invoke_7_defaultOnce, block);
    }

    v3 = kPRearNits_block_invoke_7_classDebugEnabled;

    if (v3 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Auto-brightness switched to alsOn=%i", objc_msgSend(*(a1 + 32), "alsOn")];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:3495];

      v10 = PLLogCommon(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) logEventForwardALSEnabled];
  if ([*(a1 + 32) alsOn])
  {
    if (+[PLDisplayAgent shouldLogALSPowerSaved])
    {
      v11 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSPowerSaved"];
      v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
      [v12 setObject:&unk_287146D20 forKeyedSubscript:@"Power"];
      [*(a1 + 32) logEntry:v12];
    }
  }
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1778(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPRearNits_block_invoke_7_classDebugEnabled = result;
  return result;
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1782(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBrightnessClientNotification_withValue__classDebugEnabled = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1786(uint64_t a1)
{
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
    v35 = 3221225472;
    v36 = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1805;
    v37 = &__block_descriptor_40_e5_v8__0lu32l8;
    v38 = v26;
    if (kPRearNits_block_invoke_8_defaultOnce != -1)
    {
      dispatch_once(&kPRearNits_block_invoke_8_defaultOnce, &block);
    }

    if (kPRearNits_block_invoke_8_classDebugEnabled == 1)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: harmonyParametersEntry=%@, property=%@, value=%@", "-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke", 3570, v5, *(a1 + 48), *(a1 + 32), block, v35, v36, v37, v38];
      v28 = MEMORY[0x277D3F178];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v30 = [v29 lastPathComponent];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke"];
      [v28 logMessage:v27 fromFile:v30 fromFunction:v31 fromLineNumber:3570];

      v33 = PLLogCommon(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1805(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPRearNits_block_invoke_8_classDebugEnabled = result;
  return result;
}

void *__63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1811(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBrightnessClientNotification_withValue__classDebugEnabled_1810 = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1812(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PLLogDisplay(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1812_cold_1();
  }

  [*(a1 + 40) logEventForwardLuxStats:v2];
}

- (void)extractDataWithEntry:(id)entry withColName:(id)name withDataArray:(id)array
{
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
    if (extractDataWithEntry_withColName_withDataArray__defaultOnce != -1)
    {
      dispatch_once(&extractDataWithEntry_withColName_withDataArray__defaultOnce, block);
    }

    if (extractDataWithEntry_withColName_withDataArray__classDebugEnabled == 1)
    {
      entryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: col=%@, data=%@, entry=%@", "-[PLDisplayAgent extractDataWithEntry:withColName:withDataArray:]", 3615, nameCopy, arrayCopy, entryCopy];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent extractDataWithEntry:withColName:withDataArray:]"];
      [v17 logMessage:entryCopy fromFile:lastPathComponent fromFunction:v20 fromLineNumber:3615];

      v22 = PLLogCommon(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__65__PLDisplayAgent_extractDataWithEntry_withColName_withDataArray___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  extractDataWithEntry_withColName_withDataArray__classDebugEnabled = result;
  return result;
}

- (void)logBrightnessDataWithEntryKey:(id)key withColName:(id)name withValue:(id)value
{
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
    v21 = 3221225472;
    v22 = __70__PLDisplayAgent_logBrightnessDataWithEntryKey_withColName_withValue___block_invoke;
    v23 = &__block_descriptor_40_e5_v8__0lu32l8;
    v24 = v12;
    if (logBrightnessDataWithEntryKey_withColName_withValue__defaultOnce != -1)
    {
      dispatch_once(&logBrightnessDataWithEntryKey_withColName_withValue__defaultOnce, &block);
    }

    if (logBrightnessDataWithEntryKey_withColName_withValue__classDebugEnabled == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: entryKey=%@, col=%@, value=%@", "-[PLDisplayAgent logBrightnessDataWithEntryKey:withColName:withValue:]", 3622, keyCopy, nameCopy, valueCopy, block, v21, v22, v23, v24];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logBrightnessDataWithEntryKey:withColName:withValue:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:3622];

      v19 = PLLogCommon(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__70__PLDisplayAgent_logBrightnessDataWithEntryKey_withColName_withValue___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logBrightnessDataWithEntryKey_withColName_withValue__classDebugEnabled = result;
  return result;
}

+ (BOOL)shouldLogBLR
{
  if (shouldLogBLR_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogBLR];
  }

  return shouldLogBLR_result;
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

  shouldLogBLR_result = result;
  return result;
}

+ (BOOL)shouldLogALSPowerSaved
{
  if (shouldLogALSPowerSaved_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogALSPowerSaved];
  }

  return shouldLogALSPowerSaved_result;
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

  shouldLogALSPowerSaved_result = v1;
  return result;
}

+ (BOOL)shouldLogBacklightControl
{
  if (shouldLogBacklightControl_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogBacklightControl];
  }

  return shouldLogBacklightControl_result;
}

void *__43__PLDisplayAgent_shouldLogBacklightControl__block_invoke()
{
  result = [MEMORY[0x277D3F208] isArchARM];
  shouldLogBacklightControl_result = result;
  return result;
}

+ (BOOL)shouldLogDisplay
{
  if (shouldLogDisplay_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogDisplay];
  }

  return shouldLogDisplay_result;
}

void *__34__PLDisplayAgent_shouldLogDisplay__block_invoke()
{
  result = [MEMORY[0x277D3F208] isArchARM];
  shouldLogDisplay_result = result;
  return result;
}

+ (BOOL)shouldLogLCD
{
  if (shouldLogLCD_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogLCD];
  }

  return shouldLogLCD_result;
}

void *__30__PLDisplayAgent_shouldLogLCD__block_invoke()
{
  result = [MEMORY[0x277D3F208] isMac];
  shouldLogLCD_result = result;
  return result;
}

+ (BOOL)shouldLogFromDCP
{
  if (shouldLogFromDCP_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogFromDCP];
  }

  return shouldLogFromDCP_result;
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

  shouldLogFromDCP_result = v1;
  return result;
}

+ (BOOL)shouldLogUserBrightness
{
  if (shouldLogUserBrightness_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogUserBrightness];
  }

  return shouldLogUserBrightness_result;
}

void *__41__PLDisplayAgent_shouldLogUserBrightness__block_invoke()
{
  result = [MEMORY[0x277D3F208] isMac];
  shouldLogUserBrightness_result = result ^ 1;
  return result;
}

+ (BOOL)shouldLogKeyboardBrightness
{
  if (shouldLogKeyboardBrightness_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogKeyboardBrightness];
  }

  return shouldLogKeyboardBrightness_result;
}

void *__45__PLDisplayAgent_shouldLogKeyboardBrightness__block_invoke()
{
  v0 = [MEMORY[0x277D3F208] isiPad];
  result = [MEMORY[0x277D3F208] isMac];
  shouldLogKeyboardBrightness_result = (result | v0) & 1;
  return result;
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

- (void)logBlueLightDataWithDictionary:(id)dictionary
{
  v36 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  bluelightFilterTimer = [(PLDisplayAgent *)self bluelightFilterTimer];

  if (!bluelightFilterTimer)
  {
    objc_initWeak(&location, self);
    v6 = objc_alloc(MEMORY[0x277D3F250]);
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.5];
    workQueue = [(PLOperator *)self workQueue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __49__PLDisplayAgent_logBlueLightDataWithDictionary___block_invoke;
    v32[3] = &unk_279A5E8A0;
    objc_copyWeak(&v33, &location);
    v9 = [v6 initWithFireDate:v7 withInterval:0 withTolerance:0 repeats:workQueue withUserInfo:v32 withQueue:0.0 withBlock:0.0];
    [(PLDisplayAgent *)self setBluelightFilterTimer:v9];

    bluelightFilterTimer2 = [(PLDisplayAgent *)self bluelightFilterTimer];
    [bluelightFilterTimer2 arm];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  v11 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"BlueLightReductionStatus"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  allKeys = [dictionaryCopy allKeys];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = [allKeys countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v14)
  {
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [dictionaryCopy objectForKeyedSubscript:v17];
        [v12 setObject:v18 forKeyedSubscript:v17];
      }

      v14 = [allKeys countByEnumeratingWithState:&v28 objects:v35 count:16];
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
    if (logBlueLightDataWithDictionary__defaultOnce != -1)
    {
      dispatch_once(&logBlueLightDataWithDictionary__defaultOnce, block);
    }

    if (logBlueLightDataWithDictionary__classDebugEnabled == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: entryKey=%@, entry=%@", "-[PLDisplayAgent logBlueLightDataWithDictionary:]", 3734, v11, v12];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logBlueLightDataWithDictionary:]"];
      [v21 logMessage:v20 fromFile:lastPathComponent fromFunction:v24 fromLineNumber:3734];

      v26 = PLLogCommon(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
  logBlueLightDataWithDictionary__classDebugEnabled = result;
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
  if (shouldLogTouch_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogTouch];
  }

  return shouldLogTouch_result;
}

void *__32__PLDisplayAgent_shouldLogTouch__block_invoke()
{
  result = [MEMORY[0x277D3F208] isiOS];
  shouldLogTouch_result = result;
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
    v75 = __Block_byref_object_copy__13;
    v76 = __Block_byref_object_dispose__13;
    v77 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__13;
    v70 = __Block_byref_object_dispose__13;
    v71 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__13;
    v64 = __Block_byref_object_dispose__13;
    v65 = 0;
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x3032000000;
    v58[3] = __Block_byref_object_copy__13;
    v58[4] = __Block_byref_object_dispose__13;
    v59 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = __Block_byref_object_copy__13;
    v56[4] = __Block_byref_object_dispose__13;
    v57 = 0;
    v13 = objc_alloc_init(PLDisplayAPLStats);
    IOReportIterate();
    sampleTime = [v6 sampleTime];
    [monotonicDate timeIntervalSinceDate:sampleTime];
    v16 = v15;

    if (v16 <= 0.0 || ([v61[5] doubleValue], v17 <= 0.0))
    {
      [(PLDisplayAPLStats *)v13 setAvgPower:&unk_28714B848];
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
    v7 = &unk_287146D20;
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
  v54 = *MEMORY[0x277D85DE8];
  v3 = malloc_type_aligned_alloc(0x4000uLL, 0x4000uLL, 0x100004052888210uLL);
  BufBlock = IOMobileFramebufferGetBufBlock();
  v5 = PLLogCommon(BufBlock);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLDisplayAgent __FrameBufferEventCallback:];
  }

  v35 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AZLSnapshots"];
  array = [MEMORY[0x277CBEB18] array];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  if (*v3)
  {
    v8 = 0;
    v9 = 0;
    v10 = v3 + 4;
    v11 = *MEMORY[0x277D3F5C8];
    *&v7 = 67110656;
    v34 = v7;
    do
    {
      v12 = objc_alloc(MEMORY[0x277D3F190]);
      v13 = [(PLOperator *)PLDisplayAgent entryKeyForType:v11 andName:@"AZLSnapshots"];
      v14 = [v12 initWithEntryKey:v13 withDate:monotonicDate];

      v16 = PLLogDisplay(v15);
      v17 = v8;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = 7 * v9;
        v26 = *(v10 - 3);
        v27 = *(v10 - 2);
        v28 = *(v10 - 1);
        v29 = *v10;
        v30 = v10[1];
        v31 = v10[2];
        v32 = v10[3];
        *buf = v34;
        v41 = v32;
        v42 = 1024;
        v43 = v26;
        v44 = 1024;
        v45 = v27;
        v46 = 1024;
        v47 = v28;
        v48 = 1024;
        v49 = v29;
        v50 = 1024;
        v51 = v30;
        v52 = 1024;
        v53 = v31;
        _os_log_debug_impl(&dword_25EE51000, v16, OS_LOG_TYPE_DEBUG, "packet_id[%d]: current_ma(u14.18): 0x%x, voltage_v(u4.10): 0x%x, system_nits(u0.20): 0x%x, azl(u0.20): 0x%x, max_zone_current(0.14): 0x%x, max_row_step_to_step_current(10.14): 0x%x \n", buf, 0x2Cu);
      }

      v18 = &v3[v17];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18[1]];
      [v14 setObject:v19 forKeyedSubscript:@"AverageCurrent"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18[2]];
      [v14 setObject:v20 forKeyedSubscript:@"VLED"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18[3]];
      [v14 setObject:v21 forKeyedSubscript:@"SystemNits"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18[4]];
      [v14 setObject:v22 forKeyedSubscript:@"AZL"];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18[5]];
      [v14 setObject:v23 forKeyedSubscript:@"MaxRowCurrent"];

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18[6]];
      [v14 setObject:v24 forKeyedSubscript:@"NitsAccum"];

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18[7]];
      [v14 setObject:v25 forKeyedSubscript:@"PacketID"];

      [array addObject:v14];
      ++v9;
      v8 += 7;
      v10 += 7;
    }

    while (v9 < *v3);
  }

  if ([array count])
  {
    v38 = v35;
    v39 = array;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    [(PLOperator *)self logEntries:v33 withGroupID:v35];
  }

  [(PLDisplayAgent *)self setAZLSnapshotsEntries:[(PLDisplayAgent *)self AZLSnapshotsEntries]+ *v3];
  free(v3);
}

+ (BOOL)shouldLogAPL
{
  if (([MEMORY[0x277D3F208] hasDCP] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "hasCapability:", 0) & 1) != 0 || +[PLDisplayAgent shouldModelPowerFromAPL](PLDisplayAgent, "shouldModelPowerFromAPL"))
  {
    return 1;
  }

  return +[PLDisplayAgent shouldModelPowerFromIOMFB];
}

+ (BOOL)shouldModelPowerFromAPL
{
  if (shouldModelPowerFromAPL_onceToken != -1)
  {
    +[PLDisplayAgent shouldModelPowerFromAPL];
  }

  return shouldModelPowerFromAPL_supportedTarget;
}

void *__41__PLDisplayAgent_shouldModelPowerFromAPL__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLDisplayClassIsOneOf:{1002021, 1002024, 1002025, 0}];
  shouldModelPowerFromAPL_supportedTarget = result;
  return result;
}

+ (BOOL)shouldModelPowerFromIOMFB
{
  if (shouldModelPowerFromIOMFB_onceToken != -1)
  {
    +[PLDisplayAgent shouldModelPowerFromIOMFB];
  }

  return shouldModelPowerFromIOMFB_supportedTarget;
}

void *__43__PLDisplayAgent_shouldModelPowerFromIOMFB__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLDisplayClassIsOneOf:{1002030, 0}];
  shouldModelPowerFromIOMFB_supportedTarget = result;
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
      v8 = [v7 isEqualToValue:&unk_287146D68];

      v9 = [v20 objectForKey:@"entry"];
      v10 = [v9 objectForKey:@"ScreenWeight"];
      v11 = [v10 isEqualToValue:&unk_28714B7A8];

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

- (void)logDisplayAPL
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logDisplayAZL
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
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

        v64 = PLLogDisplay(v63);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          [PLDisplayAgent logAODChange];
        }

        [(PLOperator *)self logEntry:v6];
      }
    }
  }
}

- (void)modelDisplayPower:(id)power
{
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
      if (modelDisplayPower__defaultOnce != -1)
      {
        dispatch_once(&modelDisplayPower__defaultOnce, block);
      }

      if (modelDisplayPower__classDebugEnabled == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"raw data %@, brightness %f, uAmps %f, power %f", powerCopy, *&v8, *&v11, *&v12];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        lastPathComponent = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDisplayPower:]"];
        [v16 logMessage:v15 fromFile:lastPathComponent fromFunction:v19 fromLineNumber:4551];

        v21 = PLLogCommon(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
  modelDisplayPower__classDebugEnabled = result;
  return result;
}

- (void)qualifyDisplayPower:(id)power
{
  v29 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  v5 = [powerCopy objectForKeyedSubscript:@"Brightness"];
  [v5 doubleValue];
  v7 = v6;

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  isFirstTimeModeling = [(PLDisplayAgent *)self isFirstTimeModeling];
  v10 = MEMORY[0x277CBEBF8];
  if (isFirstTimeModeling || (v11 = [(PLDisplayAgent *)self wasDisplayOn], v12 = [(PLDisplayAgent *)self isDisplayOnNow], v11 != v12))
  {
    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    if ([(PLDisplayAgent *)self isDisplayOnNow])
    {
      v14 = &unk_28714DB98;
    }

    else
    {
      v14 = v10;
    }

    [mEMORY[0x277D3F0C0] createQualificationEventForwardWithQualificationID:5 withChildNodeNames:v14 withStartDate:monotonicDate];

    v12 = [(PLDisplayAgent *)self setWasDisplayOn:[(PLDisplayAgent *)self isDisplayOnNow]];
  }

  v15 = PLLogDisplay(v12);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v21 = 134218754;
    v22 = v7;
    v23 = 2112;
    v24 = powerCopy;
    v25 = 1024;
    v26 = v7 > 80.0;
    v27 = 1024;
    isDisplayHighBrightness = [(PLDisplayAgent *)self isDisplayHighBrightness];
    _os_log_debug_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEBUG, "brightness=%f, entry=%@, isHighBrightnessNow=%d, isHighBrightnessPrevious=%d", &v21, 0x22u);
  }

  isFirstTimeModeling2 = [(PLDisplayAgent *)self isFirstTimeModeling];
  if ((isFirstTimeModeling2 & 1) != 0 || (isFirstTimeModeling2 = [(PLDisplayAgent *)self isDisplayHighBrightness], v7 > 80.0 != isFirstTimeModeling2))
  {
    v17 = PLLogDisplay(isFirstTimeModeling2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [PLDisplayAgent qualifyDisplayPower:];
    }

    mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
    v19 = mEMORY[0x277D3F0C0]2;
    if (v7 <= 80.0)
    {
      v20 = v10;
    }

    else
    {
      v20 = &unk_28714DBB0;
    }

    [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:6 withChildNodeNames:v20 withStartDate:{monotonicDate, 80.0}];

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
  if (getIOMFBSubFrameMap_onceToken != -1)
  {
    [PLDisplayAgent getIOMFBSubFrameMap];
  }

  v3 = getIOMFBSubFrameMap_subFrameMap;

  return v3;
}

uint64_t __37__PLDisplayAgent_getIOMFBSubFrameMap__block_invoke()
{
  v0 = objc_opt_new();
  v1 = getIOMFBSubFrameMap_subFrameMap;
  getIOMFBSubFrameMap_subFrameMap = v0;

  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B858 forKeyedSubscript:@"subframes_0"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B868 forKeyedSubscript:@"subframes_1"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B878 forKeyedSubscript:@"subframes_2"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B888 forKeyedSubscript:@"subframes_3"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B898 forKeyedSubscript:@"subframes_4"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B8A8 forKeyedSubscript:@"subframes_5"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B8B8 forKeyedSubscript:@"subframes_6"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B8C8 forKeyedSubscript:@"subframes_7"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B8D8 forKeyedSubscript:@"subframes_8"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B8E8 forKeyedSubscript:@"subframes_9"];
  v2 = getIOMFBSubFrameMap_subFrameMap;

  return [v2 setObject:&unk_28714B8F8 forKeyedSubscript:@"subframes_10"];
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
      v11[3] = &unk_279A5C628;
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
  powerCopy = power;
  v5 = powerCopy;
  if (!powerCopy)
  {
    goto LABEL_51;
  }

  v6 = [powerCopy objectForKey:@"entry"];
  v64 = v6;
  if (!v6)
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_50;
    }

    v50 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v50;
    if (modelDynamicDisplayPower__defaultOnce != -1)
    {
      dispatch_once(&modelDynamicDisplayPower__defaultOnce, block);
    }

    if (modelDynamicDisplayPower__classDebugEnabled != 1)
    {
      goto LABEL_50;
    }

    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: No entry object in IOMFBScanout entry"];
    v52 = MEMORY[0x277D3F178];
    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
    lastPathComponent = [v53 lastPathComponent];
    v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPower:]"];
    [v52 logMessage:v51 fromFile:lastPathComponent fromFunction:v55 fromLineNumber:4653];

    v57 = PLLogCommon(v56);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

LABEL_47:

    goto LABEL_50;
  }

  v7 = v6;
  if (![(NSMutableArray *)self->_displayStateChanges count])
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_50;
    }

    v58 = objc_opt_class();
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke_2016;
    v65[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v65[4] = v58;
    if (modelDynamicDisplayPower__defaultOnce_2014 != -1)
    {
      dispatch_once(&modelDynamicDisplayPower__defaultOnce_2014, v65);
    }

    if (modelDynamicDisplayPower__classDebugEnabled_2015 != 1)
    {
      goto LABEL_50;
    }

    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: No display states recorded"];
    v59 = MEMORY[0x277D3F178];
    v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
    lastPathComponent2 = [v60 lastPathComponent];
    v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPower:]"];
    [v59 logMessage:v51 fromFile:lastPathComponent2 fromFunction:v62 fromLineNumber:4655];

    v57 = PLLogCommon(v63);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

    goto LABEL_47;
  }

  v8 = [v7 objectForKey:@"timestamp"];
  [v8 doubleValue];
  v10 = v9;

  if (v10 == 0.0)
  {
    goto LABEL_50;
  }

  v11 = [v64 objectForKey:@"SampleTime"];
  [v11 doubleValue];
  v13 = v12;

  [(PLDisplayAgent *)self averageFrameRateFromIOMFBScanout:v64];
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
    goto LABEL_50;
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
        goto LABEL_49;
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
      goto LABEL_50;
    }
  }

LABEL_49:
  objc_autoreleasePoolPop(v30);
LABEL_50:

LABEL_51:
}

void *__43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelDynamicDisplayPower__classDebugEnabled = result;
  return result;
}

void *__43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke_2016(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelDynamicDisplayPower__classDebugEnabled_2015 = result;
  return result;
}

- (double)calculatePowerFromAPL:(double)l withAvgRed:(double)red withAvgGreen:(double)green withAvgBlue:(double)blue
{
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
      v50 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"mnit_scale_values"];
      [PLUtilities scaledPowerBasedOnPoint:v50 withPowerModel:l];
      v46 = v51;
    }
  }

  v52 = v44 * (v46 * l);
  if (v52 > 5000.0 || v52 < 0.0)
  {
    v52 = 0.0;
  }

  v54 = v11 + v10 + v52;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v55 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__PLDisplayAgent_calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v55;
    if (calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue__defaultOnce != -1)
    {
      dispatch_once(&calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue__defaultOnce, block);
    }

    if (calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue__classDebugEnabled == 1)
    {
      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"mNits: %f\tavgRed: %f\tavgGreen: %f\tavgBlue: %f\tnormalizedColorSum: %.2f\tPower: %.2f", *&l, *&red, *&green, *&blue, *&v44, *&v54];
      v57 = MEMORY[0x277D3F178];
      v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v58 lastPathComponent];
      v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent calculatePowerFromAPL:withAvgRed:withAvgGreen:withAvgBlue:]"];
      [v57 logMessage:v56 fromFile:lastPathComponent fromFunction:v60 fromLineNumber:4832];

      v62 = PLLogCommon(v61);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  return v54;
}

void *__76__PLDisplayAgent_calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue__classDebugEnabled = result;
  return result;
}

- (void)modelDisplayPowerFromIOMFB:(id)b
{
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
    if (modelDisplayPowerFromIOMFB__defaultOnce != -1)
    {
      dispatch_once(&modelDisplayPowerFromIOMFB__defaultOnce, block);
    }

    if (modelDisplayPowerFromIOMFB__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Display power: %f", *&v7];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDisplayPowerFromIOMFB:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:4846];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __45__PLDisplayAgent_modelDisplayPowerFromIOMFB___block_invoke_2064;
    v33 = &__block_descriptor_40_e5_v8__0lu32l8;
    v34 = v16;
    if (modelDisplayPowerFromIOMFB__defaultOnce_2062 != -1)
    {
      dispatch_once(&modelDisplayPowerFromIOMFB__defaultOnce_2062, &v30);
    }

    if (modelDisplayPowerFromIOMFB__classDebugEnabled_2063 == 1)
    {
      v17 = MEMORY[0x277CCACA8];
      sampleTimePrevious = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
      sampleTime = [(PLIOReportStats *)self->_displayIOReportStats sampleTime];
      v20 = [v17 stringWithFormat:@"SampleTimePrevious: %@ sampleTime: %@, ", sampleTimePrevious, sampleTime, v30, v31, v32, v33, v34];

      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent2 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDisplayPowerFromIOMFB:]"];
      [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:4847];

      v26 = PLLogCommon(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
  modelDisplayPowerFromIOMFB__classDebugEnabled = result;
  return result;
}

void *__45__PLDisplayAgent_modelDisplayPowerFromIOMFB___block_invoke_2064(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelDisplayPowerFromIOMFB__classDebugEnabled_2063 = result;
  return result;
}

- (void)modelDynamicDisplayPowerFromAPL:(id)l
{
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
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __50__PLDisplayAgent_modelDynamicDisplayPowerFromAPL___block_invoke;
          v69[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v69[4] = v41;
          if (modelDynamicDisplayPowerFromAPL__defaultOnce != -1)
          {
            dispatch_once(&modelDynamicDisplayPowerFromAPL__defaultOnce, v69);
          }

          if (modelDynamicDisplayPowerFromAPL__classDebugEnabled == 1)
          {
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"displayPower: %f\trealPower: %f\tvirtualPower: %f\tsavedPower: %f", *&v8, *&v29, *&v40, v29 - v40];
            v43 = MEMORY[0x277D3F178];
            v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
            lastPathComponent = [v44 lastPathComponent];
            v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPowerFromAPL:]"];
            [v43 logMessage:v42 fromFile:lastPathComponent fromFunction:v46 fromLineNumber:4870];

            v48 = PLLogCommon(v47);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }
          }
        }
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v49 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__PLDisplayAgent_modelDynamicDisplayPowerFromAPL___block_invoke_2073;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v49;
        if (modelDynamicDisplayPowerFromAPL__defaultOnce_2071 != -1)
        {
          dispatch_once(&modelDynamicDisplayPowerFromAPL__defaultOnce_2071, block);
        }

        if (modelDynamicDisplayPowerFromAPL__classDebugEnabled_2072 == 1)
        {
          v50 = MEMORY[0x277CCACA8];
          sampleTimePrevious = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
          sampleTime = [(PLIOReportStats *)self->_displayIOReportStats sampleTime];
          v53 = [v50 stringWithFormat:@"SampleTimePrevious: %@ sampleTime: %@, ", sampleTimePrevious, sampleTime];

          v54 = MEMORY[0x277D3F178];
          v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          lastPathComponent2 = [v55 lastPathComponent];
          v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPowerFromAPL:]"];
          [v54 logMessage:v53 fromFile:lastPathComponent2 fromFunction:v57 fromLineNumber:4872];

          v59 = PLLogCommon(v58);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      sampleTimePrevious2 = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
      sampleTime2 = [(PLIOReportStats *)self->_displayIOReportStats sampleTime];
      [mEMORY[0x277D3F0C0] createPowerEventIntervalWithRootNodeID:56 withPower:sampleTimePrevious2 withStartDate:sampleTime2 withEndDate:v8];

      if (+[PLDisplayAgent shouldLogALSPowerSaved])
      {
        v63 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSPowerSaved"];
        v64 = objc_alloc(MEMORY[0x277D3F190]);
        sampleTimePrevious3 = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
        v66 = [v64 initWithEntryKey:v63 withDate:sampleTimePrevious3];

        v67 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
        [v66 setObject:v67 forKeyedSubscript:@"Power"];

        [(PLOperator *)self logEntry:v66];
      }
    }
  }
}

void *__50__PLDisplayAgent_modelDynamicDisplayPowerFromAPL___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelDynamicDisplayPowerFromAPL__classDebugEnabled = result;
  return result;
}

void *__50__PLDisplayAgent_modelDynamicDisplayPowerFromAPL___block_invoke_2073(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelDynamicDisplayPowerFromAPL__classDebugEnabled_2072 = result;
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
    if (dcpSubFrameMap_onceToken != -1)
    {
      dispatch_once(&dcpSubFrameMap_onceToken, block);
    }

    v4 = dcpSubFrameMap_subFrameMap;
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
  v3 = dcpSubFrameMap_subFrameMap;
  dcpSubFrameMap_subFrameMap = v2;

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
    [dcpSubFrameMap_subFrameMap setObject:v9 forKeyedSubscript:v5];
  }
}

- (void)init
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __22__PLDisplayAgent_init__block_invoke_1431_cold_2(id *a1)
{
  v2 = [*a1 pendingBacklightEntry];
  v3 = MEMORY[0x277D3F268];
  v4 = [*a1 pendingBacklightEntryDate];
  v5 = [v3 formattedStringForDate:v4];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void __22__PLDisplayAgent_init__block_invoke_1431_cold_3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __22__PLDisplayAgent_init__block_invoke_1431_cold_4(id *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D3F268];
  v4 = [*a1 backlightFilterTimer];
  v5 = [v4 fireDate];
  v6 = [v3 formattedStringForDate:v5];
  v7 = [MEMORY[0x277D3F268] formattedStringForDate:a2];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x16u);
}

void __22__PLDisplayAgent_init__block_invoke_2_1452_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __22__PLDisplayAgent_init__block_invoke_2_1452_cold_2(id *a1)
{
  [*a1 currMonoTimestamp];
  [*a1 currAFKSystemTimestamp];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __46__PLDisplayAgent_initTaskOperatorDependancies__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_6()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "Error unserializing buffer: %@", v1, 0xCu);
}

void __62__PLDisplayAgent_backlight_didCompleteUpdateToState_forEvent___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *(a1 + 40);
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "screen state received by AOD is %ld", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)logEventForwardDisplayWithRawData:(void *)a1 withDate:.cold.1(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"lux"];
  [v1 doubleValue];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)logEventForwardLuxStats:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventBackwardRampInfo:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventBackwardCurveUpdate:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventBackwardALSSamplesBeforeWake:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventBackwardAmbientLight:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1765_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "@kCBFinalBrightnessCommit: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766_cold_1(id *a1)
{
  v2 = [*a1 pendingBacklightEntry];
  v3 = MEMORY[0x277D3F268];
  v4 = [*a1 pendingBacklightEntryDate];
  v5 = [v3 formattedStringForDate:v4];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766_cold_2(uint64_t a1)
{
  v1 = [MEMORY[0x277D3F268] formattedStringForDate:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1773_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "BrightnessTransaction payload: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)qualifyDisplayPower:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end