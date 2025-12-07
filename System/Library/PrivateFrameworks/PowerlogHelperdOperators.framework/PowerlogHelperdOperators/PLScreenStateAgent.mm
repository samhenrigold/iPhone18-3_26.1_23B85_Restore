@interface PLScreenStateAgent
+ (id)entryAggregateDefinitionWidgetAdditionAnimation;
+ (id)entryAggregateDefinitionWidgetFlipAnimation;
+ (id)entryAggregateDefinitions;
+ (id)entryEventBackwardDefinitionAlwaysOnEnableState;
+ (id)entryEventBackwardDefinitionBacklightStateChange;
+ (id)entryEventBackwardDefinitionFlipbookStatistics;
+ (id)entryEventBackwardDefinitionIconDragging;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventForwardScreenState;
+ (id)entryEventForwardWindowMode;
+ (id)entryEventPointBacklightEvent;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLScreenStateAgent)init;
- (id)processQuery:(id)query withEntryKey:(id)key;
- (int)GetBacklightState:(id)state;
- (unint64_t)convertWindowingMode:(id)mode;
- (unint64_t)convertZoomLevel:(id)level;
- (void)accountWithLayoutEntries:(id)entries;
- (void)createAirPlayWiFiAccountingEvent:(id)event;
- (void)createCarPlayAccountingEvents:(id)events;
- (void)dealloc;
- (void)handleDisplayCallback:(id)callback;
- (void)initOperatorDependancies;
- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context;
- (void)log;
- (void)logAggregateWidgetAdditionAnimation:(id)animation;
- (void)logAggregateWidgetFlipAnimation:(id)animation;
- (void)logEventBackwardAlwaysOnEnableState:(id)state;
- (void)logEventBackwardBacklightStateChange:(id)change;
- (void)logEventBackwardFlipbookStatistics:(id)statistics;
- (void)logEventBackwardIconDragging:(id)dragging;
- (void)logEventForwardAirPlayScreenState:(id)state;
- (void)logEventForwardCarScreenState:(id)state;
- (void)logEventForwardMainScreenState:(id)state;
- (void)logEventForwardWindowMode:(id)mode;
- (void)logEventPointMainBacklightEvent:(id)event withContext:(id)context;
- (void)postEnhancedScreenStateNotification:(id)notification currentLayout:(id)layout;
@end

@implementation PLScreenStateAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLScreenStateAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"BacklightEvent";
  entryEventPointBacklightEvent = [self entryEventPointBacklightEvent];
  v6[0] = entryEventPointBacklightEvent;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventPointBacklightEvent
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v12 = *MEMORY[0x277D3F568];
  v13 = &unk_28714B238;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v2;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"TransitionReason";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10[1] = @"BacklightLevel";
  v11[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v11[1] = commonTypeDict_IntegerFormat2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryEventForwardDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"ScreenState";
  entryEventForwardScreenState = [self entryEventForwardScreenState];
  v7[1] = @"WindowMode";
  v8[0] = entryEventForwardScreenState;
  entryEventForwardWindowMode = [self entryEventForwardWindowMode];
  v8[1] = entryEventForwardWindowMode;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)entryEventForwardScreenState
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_28714B248;
  v22[1] = MEMORY[0x277CBEC38];
  v21[2] = *MEMORY[0x277D3F4A0];
  v22[2] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"bundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v20[0] = commonTypeDict_StringFormat_withBundleID;
  v19[1] = @"ScreenWeight";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v20[1] = commonTypeDict_RealFormat;
  v19[2] = @"AppRole";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v20[2] = commonTypeDict_IntegerFormat;
  v19[3] = @"Display";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v20[3] = commonTypeDict_IntegerFormat2;
  v19[4] = @"Level";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
  v20[4] = commonTypeDict_RealFormat2;
  v19[5] = @"Orientation";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v20[5] = commonTypeDict_IntegerFormat3;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  return v12;
}

+ (id)entryEventForwardWindowMode
{
  v19[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v18[0] = *MEMORY[0x277D3F4E8];
    v16 = *MEMORY[0x277D3F568];
    v17 = &unk_28714B238;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v19[0] = v13;
    v18[1] = *MEMORY[0x277D3F540];
    v14[0] = @"displayType";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v15[0] = commonTypeDict_StringFormat;
    v14[1] = @"zoomLevel";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v15[1] = commonTypeDict_IntegerFormat;
    v14[2] = @"windowingMode";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v15[2] = commonTypeDict_IntegerFormat2;
    v14[3] = @"canvasRatio";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v15[3] = commonTypeDict_RealFormat;
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

+ (id)entryEventBackwardDefinitions
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"IconDragging";
  entryEventBackwardDefinitionIconDragging = [self entryEventBackwardDefinitionIconDragging];
  v10[0] = entryEventBackwardDefinitionIconDragging;
  v9[1] = @"AlwaysOnEnableState";
  entryEventBackwardDefinitionAlwaysOnEnableState = [self entryEventBackwardDefinitionAlwaysOnEnableState];
  v10[1] = entryEventBackwardDefinitionAlwaysOnEnableState;
  v9[2] = @"BacklightStateChange";
  entryEventBackwardDefinitionBacklightStateChange = [self entryEventBackwardDefinitionBacklightStateChange];
  v10[2] = entryEventBackwardDefinitionBacklightStateChange;
  v9[3] = @"FlipbookStatistics";
  entryEventBackwardDefinitionFlipbookStatistics = [self entryEventBackwardDefinitionFlipbookStatistics];
  v10[3] = entryEventBackwardDefinitionFlipbookStatistics;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (int)GetBacklightState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"off"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"suppressed"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"inactiveOnFlipbook"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"inactiveOnLiveFlipbook"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"inactiveOnLive"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"activeDimmed"])
  {
    v4 = 6;
  }

  else if ([stateCopy isEqualToString:@"active"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 7;
  }

  return v4;
}

+ (id)entryEventBackwardDefinitionIconDragging
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D3F4E8];
  v10 = *MEMORY[0x277D3F568];
  v11 = &unk_28714B238;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v2;
  v12[1] = *MEMORY[0x277D3F540];
  v8 = @"Duration";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
  v9 = commonTypeDict_RealFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

+ (id)entryEventBackwardDefinitionAlwaysOnEnableState
{
  v20[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F590];
    v17[0] = *MEMORY[0x277D3F568];
    v17[1] = v2;
    v18[0] = &unk_28714B258;
    v18[1] = &unk_287145A30;
    v17[2] = *MEMORY[0x277D3F588];
    v18[2] = &unk_28714B268;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    v20[0] = v14;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"alwaysOnResolvedEnabled";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
    v16[0] = commonTypeDict_BoolFormat;
    v15[1] = @"alwaysOnEnabledSetting";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
    v16[1] = commonTypeDict_BoolFormat2;
    v15[2] = @"lowPowerMode";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
    v16[2] = commonTypeDict_BoolFormat3;
    v15[3] = @"focusMode";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_BoolFormat];
    v16[3] = commonTypeDict_BoolFormat4;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
    v20[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  return v12;
}

+ (id)entryEventBackwardDefinitionBacklightStateChange
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] hasAOD] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102040) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102041))
  {
    v18[0] = *MEMORY[0x277D3F4E8];
    v16 = *MEMORY[0x277D3F568];
    v17 = &unk_28714B258;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v19[0] = v13;
    v18[1] = *MEMORY[0x277D3F540];
    v14[0] = @"state";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v15[0] = commonTypeDict_IntegerFormat;
    v14[1] = @"explanation";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
    v15[1] = commonTypeDict_StringFormat;
    v14[2] = @"suppressionChangeType";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
    v15[2] = commonTypeDict_StringFormat2;
    v14[3] = @"suppressionReasons";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
    v15[3] = commonTypeDict_StringFormat3;
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

+ (id)entryEventBackwardDefinitionFlipbookStatistics
{
  v59[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v58[0] = *MEMORY[0x277D3F4E8];
    v56 = *MEMORY[0x277D3F568];
    v57 = &unk_28714B238;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v59[0] = v53;
    v58[1] = *MEMORY[0x277D3F540];
    v54[0] = @"invalidatedFramesUpTo2mStale";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v55[0] = commonTypeDict_IntegerFormat;
    v54[1] = @"invalidatedFramesUpTo3mStale";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v55[1] = commonTypeDict_IntegerFormat2;
    v54[2] = @"invalidatedFramesUpTo4mStale";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v55[2] = commonTypeDict_IntegerFormat3;
    v54[3] = @"invalidatedFramesUpTo5mStale";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v55[3] = commonTypeDict_IntegerFormat4;
    v54[4] = @"invalidatedFramesUpTo6mStale";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v55[4] = commonTypeDict_IntegerFormat5;
    v54[5] = @"discardedFramesUpTo2mStale";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v55[5] = commonTypeDict_IntegerFormat6;
    v54[6] = @"discardedFramesUpTo3mStale";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v55[6] = commonTypeDict_IntegerFormat7;
    v54[7] = @"discardedFramesUpTo4mStale";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v55[7] = commonTypeDict_IntegerFormat8;
    v54[8] = @"discardedFramesUpTo5mStale";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
    v55[8] = commonTypeDict_IntegerFormat9;
    v54[9] = @"discardedFramesUpTo6mStale";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v55[9] = commonTypeDict_IntegerFormat10;
    v54[10] = @"renderedFramesLessThan1Min";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
    v55[10] = commonTypeDict_IntegerFormat11;
    v54[11] = @"renderedFrames1to2Min";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
    v55[11] = commonTypeDict_IntegerFormat12;
    v54[12] = @"renderedFrames2to3Min";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
    v55[12] = commonTypeDict_IntegerFormat13;
    v54[13] = @"renderedFrames3to4Min";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
    v55[13] = commonTypeDict_IntegerFormat14;
    v54[14] = @"renderedFrames4to5Min";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
    v55[14] = commonTypeDict_IntegerFormat15;
    v54[15] = @"renderedFrames5to6Min";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
    v55[15] = commonTypeDict_IntegerFormat16;
    v54[16] = @"renderedFramesMoreThan6Min";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
    v55[16] = commonTypeDict_IntegerFormat17;
    v54[17] = @"renderedFrameCount";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
    v55[17] = commonTypeDict_IntegerFormat18;
    v54[18] = @"renderedPartialMinuteCount";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
    v55[18] = commonTypeDict_IntegerFormat19;
    v54[19] = @"millisecondsDisplayOff";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
    v55[19] = commonTypeDict_IntegerFormat20;
    v54[20] = @"millisecondsDisplayOn";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
    v55[20] = commonTypeDict_IntegerFormat21;
    v54[21] = @"millisecondsDisplayDimmed";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
    v55[21] = commonTypeDict_IntegerFormat22;
    v54[22] = @"millisecondsShowingAOT";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
    v55[22] = commonTypeDict_IntegerFormat23;
    v54[23] = @"millisecondsSuppressed";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
    v55[23] = commonTypeDict_IntegerFormat24;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:24];
    v59[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

+ (id)entryAggregateDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"WidgetAdditionAnimation";
  entryAggregateDefinitionWidgetAdditionAnimation = [self entryAggregateDefinitionWidgetAdditionAnimation];
  v7[1] = @"WidgetFlipAnimation";
  v8[0] = entryAggregateDefinitionWidgetAdditionAnimation;
  entryAggregateDefinitionWidgetFlipAnimation = [self entryAggregateDefinitionWidgetFlipAnimation];
  v8[1] = entryAggregateDefinitionWidgetFlipAnimation;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)entryAggregateDefinitionWidgetAdditionAnimation
{
  v20[4] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v17[0] = *MEMORY[0x277D3F568];
  v17[1] = v2;
  v18[0] = &unk_28714B238;
  v18[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[0] = v3;
  v19[1] = *MEMORY[0x277D3F540];
  v15 = @"Count";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v16 = commonTypeDict_IntegerFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v20[1] = v6;
  v19[2] = *MEMORY[0x277D3F478];
  v13 = &unk_28714B278;
  v11 = *MEMORY[0x277D3F470];
  v12 = &unk_28714B268;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v19[3] = *MEMORY[0x277D3F488];
  v20[2] = v8;
  v20[3] = &unk_28714C890;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

  return v9;
}

+ (id)entryAggregateDefinitionWidgetFlipAnimation
{
  v20[4] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v17[0] = *MEMORY[0x277D3F568];
  v17[1] = v2;
  v18[0] = &unk_28714B238;
  v18[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[0] = v3;
  v19[1] = *MEMORY[0x277D3F540];
  v15 = @"Count";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v16 = commonTypeDict_IntegerFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v20[1] = v6;
  v19[2] = *MEMORY[0x277D3F478];
  v13 = &unk_28714B278;
  v11 = *MEMORY[0x277D3F470];
  v12 = &unk_28714B268;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v19[3] = *MEMORY[0x277D3F488];
  v20[2] = v8;
  v20[3] = &unk_28714C8A8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

  return v9;
}

- (PLScreenStateAgent)init
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || +[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"))
  {
    selfCopy = 0;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = PLScreenStateAgent;
    v5 = [(PLAgent *)&v25 init];
    v6 = v5;
    if (v5)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __26__PLScreenStateAgent_init__block_invoke_2;
      v23[3] = &unk_279A5CB60;
      v7 = v5;
      v24 = v7;
      v8 = MEMORY[0x25F8D2750](v23);
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __26__PLScreenStateAgent_init__block_invoke_4;
      v21 = &unk_279A5CB60;
      v9 = v7;
      v22 = v9;
      v10 = MEMORY[0x25F8D2750](&v18);
      v11 = objc_alloc(MEMORY[0x277D0AD10]);
      v12 = [v11 initWithDisplayType:0 qualityOfService:17 handler:{&__block_literal_global_219, v18, v19, v20, v21}];
      v13 = v9[7];
      v9[7] = v12;

      [v9[7] addObserver:v9];
      v14 = [objc_alloc(MEMORY[0x277D0AD10]) initWithDisplayType:3 qualityOfService:17 handler:v8];
      v15 = v9[9];
      v9[9] = v14;

      v16 = [objc_alloc(MEMORY[0x277D0AD10]) initWithDisplayType:1 qualityOfService:17 handler:v10];
      v17 = v9[8];
      v9[8] = v16;
    }

    self = v6;
    selfCopy = self;
  }

  return selfCopy;
}

void __26__PLScreenStateAgent_init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) workQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __26__PLScreenStateAgent_init__block_invoke_3;
    v5[3] = &unk_279A5C3F8;
    v6 = *(a1 + 32);
    v7 = v3;
    dispatch_async(v4, v5);
  }
}

void __26__PLScreenStateAgent_init__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) workQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __26__PLScreenStateAgent_init__block_invoke_5;
    v5[3] = &unk_279A5C3F8;
    v6 = *(a1 + 32);
    v7 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)initOperatorDependancies
{
  v52[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v3 = [MEMORY[0x277D3F180] objectForKey:@"SBEnableAlwaysOn" forApplicationID:@"com.apple.springboard" synchronize:1];
    bOOLValue = [v3 BOOLValue];

    v6 = PLLogScreenState(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PLScreenStateAgent initOperatorDependancies];
    }

    v51 = @"alwaysOnEnabledSetting";
    v7 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v52[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];

    [(PLScreenStateAgent *)self logEventBackwardAlwaysOnEnableState:v8];
  }

  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    if ([MEMORY[0x277D3F208] isiPad])
    {
      v9 = objc_alloc(MEMORY[0x277D3F270]);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke;
      v50[3] = &unk_279A5BCB8;
      v50[4] = self;
      v10 = [v9 initWithOperator:self withRegistration:&unk_2871480B8 withBlock:v50];
      [(PLScreenStateAgent *)self setWindowModeListener:v10];
    }

    if (([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
    {
      v11 = objc_alloc(MEMORY[0x277D3F270]);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_245;
      v49[3] = &unk_279A5BCB8;
      v49[4] = self;
      v12 = [v11 initWithOperator:self withRegistration:&unk_2871480E0 withBlock:v49];
      [(PLScreenStateAgent *)self setIconDraggingListner:v12];

      v13 = objc_alloc(MEMORY[0x277D3F270]);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_250;
      v48[3] = &unk_279A5BCB8;
      v48[4] = self;
      v14 = [v13 initWithOperator:self withRegistration:&unk_287148108 withBlock:v48];
      [(PLScreenStateAgent *)self setWidgetAdditionAnimationListener:v14];

      v15 = objc_alloc(MEMORY[0x277D3F270]);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_255;
      v47[3] = &unk_279A5BCB8;
      v47[4] = self;
      v16 = [v15 initWithOperator:self withRegistration:&unk_287148130 withBlock:v47];
      [(PLScreenStateAgent *)self setWidgetFlipAnimationListener:v16];
    }

    v17 = objc_alloc(MEMORY[0x277D3F270]);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_260;
    v46[3] = &unk_279A5BCB8;
    v46[4] = self;
    v18 = [v17 initWithOperator:self withRegistration:&unk_287148158 withBlock:v46];
    [(PLScreenStateAgent *)self setSpringBoardAlwaysOnEnableStateListener:v18];

    v19 = objc_alloc(MEMORY[0x277D3F270]);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_265;
    v45[3] = &unk_279A5BCB8;
    v45[4] = self;
    v20 = [v19 initWithOperator:self withRegistration:&unk_287148180 withBlock:v45];
    [(PLScreenStateAgent *)self setSpringBoardBacklightStateChangeListener:v20];

    v21 = objc_alloc(MEMORY[0x277D3F270]);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_270;
    v44[3] = &unk_279A5BCB8;
    v44[4] = self;
    v22 = [v21 initWithOperator:self withRegistration:&unk_2871481A8 withBlock:v44];
    [(PLScreenStateAgent *)self setSpringBoardFlipbookStatisticsListener:v22];

    if ([MEMORY[0x277D3F208] internalBuild])
    {
      v23 = objc_alloc(MEMORY[0x277D3F278]);
      workQueue = [(PLOperator *)self workQueue];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_276;
      v43[3] = &unk_279A5BEC8;
      v43[4] = self;
      v25 = [v23 initWithWorkQueue:workQueue withRegistration:&unk_2871481D0 withBlock:v43];
      [(PLScreenStateAgent *)self setSpringBoardAlwaysOnEnableStateResponder:v25];

      v26 = objc_alloc(MEMORY[0x277D3F278]);
      workQueue2 = [(PLOperator *)self workQueue];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_286;
      v42[3] = &unk_279A5BEC8;
      v42[4] = self;
      v28 = [v26 initWithWorkQueue:workQueue2 withRegistration:&unk_2871481F8 withBlock:v42];
      [(PLScreenStateAgent *)self setSpringBoardBacklightStateChangeResponder:v28];

      v29 = objc_alloc(MEMORY[0x277D3F278]);
      workQueue3 = [(PLOperator *)self workQueue];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_294;
      v41[3] = &unk_279A5BEC8;
      v41[4] = self;
      v31 = [v29 initWithWorkQueue:workQueue3 withRegistration:&unk_287148220 withBlock:v41];
      [(PLScreenStateAgent *)self setSpringBoardFlipbookStatisticsResponder:v31];
    }

    if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
    {
      [(PLScreenStateAgent *)self setLastDisplayLayoutContainsLockScreen:0];
      [(PLScreenStateAgent *)self setLastDisplayLayout:0];
      v32 = *MEMORY[0x277D3F5E8];
      v33 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Display"];
      v34 = objc_msgSend_storage(self);
      v35 = [v34 lastEntryForKey:v33 withFilters:&unk_28714C8C0];

      if (v35)
      {
        v36 = [v35 objectForKeyedSubscript:@"Active"];
        -[PLScreenStateAgent setDisplayState:](self, "setDisplayState:", [v36 intValue]);
      }

      else
      {
        [(PLScreenStateAgent *)self setDisplayState:0];
      }

      v37 = [(PLOperator *)PLDisplayAgent entryKeyForType:v32 andName:@"Display"];
      v38 = objc_alloc(MEMORY[0x277D3F1A8]);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_311;
      v40[3] = &unk_279A5BE78;
      v40[4] = self;
      v39 = [v38 initWithOperator:self forEntryKey:v37 withBlock:v40];
      [(PLScreenStateAgent *)self setDisplayCallback:v39];
    }
  }
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_cold_1();
  }

  [*(a1 + 32) logEventForwardWindowMode:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_245(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_245_cold_1();
  }

  [*(a1 + 32) logEventBackwardIconDragging:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_250_cold_1();
  }

  [*(a1 + 32) logAggregateWidgetAdditionAnimation:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_255(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_255_cold_1();
  }

  [*(a1 + 32) logAggregateWidgetFlipAnimation:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_260_cold_1();
  }

  [*(a1 + 32) logEventBackwardAlwaysOnEnableState:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_265(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_265_cold_1();
  }

  [*(a1 + 32) logEventBackwardBacklightStateChange:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_270_cold_1();
  }

  [*(a1 + 32) logEventBackwardFlipbookStatistics:v6];
}

id __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_276(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_276_cold_1();
  }

  v8 = [*(a1 + 32) processQuery:v6 withEntryKey:@"PLScreenStateAgent_EventBackward_AlwaysOnEnableState"];
  v9 = v8;
  if (v8 && (v8 = [v8 count]) != 0)
  {
    v10 = objc_opt_new();
    v11 = PLLogScreenState([v10 setObject:v9 forKeyedSubscript:@"AlwaysOnEnableState"]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_276_cold_1();
    }
  }

  else
  {
    v11 = PLLogScreenState(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_276_cold_3();
    }

    v10 = 0;
  }

  return v10;
}

id __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_286(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_286_cold_1();
  }

  v8 = [*(a1 + 32) processQuery:v6 withEntryKey:@"PLScreenStateAgent_EventBackward_BacklightStateChange"];
  v9 = v8;
  if (v8 && (v8 = [v8 count]) != 0)
  {
    v10 = objc_opt_new();
    v11 = PLLogScreenState([v10 setObject:v9 forKeyedSubscript:@"BacklightStateChange"]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_286_cold_1();
    }
  }

  else
  {
    v11 = PLLogScreenState(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_286_cold_3();
    }

    v10 = 0;
  }

  return v10;
}

id __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_294_cold_1();
  }

  v8 = [*(a1 + 32) processQuery:v6 withEntryKey:@"PLScreenStateAgent_EventBackward_FlipbookStatistics"];
  v9 = v8;
  if (v8 && (v8 = [v8 count]) != 0)
  {
    v10 = objc_opt_new();
    v11 = PLLogScreenState([v10 setObject:v9 forKeyedSubscript:@"FlipbookStatistics"]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_294_cold_1();
    }
  }

  else
  {
    v11 = PLLogScreenState(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_294_cold_3();
    }

    v10 = 0;
  }

  return v10;
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_311(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = PLLogCommon(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_311_cold_1();
    }

    [*(a1 + 32) handleDisplayCallback:v4];
  }
}

- (void)dealloc
{
  carPlayDisplayMonitor = self->_carPlayDisplayMonitor;
  if (carPlayDisplayMonitor)
  {
    [(FBSDisplayLayoutMonitor *)carPlayDisplayMonitor invalidate];
  }

  airPlayDisplayMonitor = self->_airPlayDisplayMonitor;
  if (airPlayDisplayMonitor)
  {
    [(FBSDisplayLayoutMonitor *)airPlayDisplayMonitor invalidate];
  }

  mainDisplayMonitor = self->_mainDisplayMonitor;
  if (mainDisplayMonitor)
  {
    [(FBSDisplayLayoutMonitor *)mainDisplayMonitor invalidate];
  }

  v6.receiver = self;
  v6.super_class = PLScreenStateAgent;
  [(PLAgent *)&v6 dealloc];
}

- (void)log
{
  mainDisplayMonitor = [(PLScreenStateAgent *)self mainDisplayMonitor];
  currentLayout = [mainDisplayMonitor currentLayout];
  [(PLScreenStateAgent *)self logEventForwardMainScreenState:currentLayout];
}

- (void)logEventPointMainBacklightEvent:(id)event withContext:(id)context
{
  v6 = *MEMORY[0x277D3F5E8];
  contextCopy = context;
  eventCopy = event;
  v9 = [(PLOperator *)PLScreenStateAgent entryKeyForType:v6 andName:@"BacklightEvent"];
  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9];
  v11 = MEMORY[0x277CCABB0];
  transitionReason = [contextCopy transitionReason];

  v13 = [v11 numberWithInteger:SBSBacklightChangeSourceForDisplayLayoutTransitionReason()];
  [v10 setObject:v13 forKeyedSubscript:@"TransitionReason"];

  v14 = MEMORY[0x277CCABB0];
  displayBacklightLevel = [eventCopy displayBacklightLevel];

  v16 = [v14 numberWithInteger:displayBacklightLevel];
  [v10 setObject:v16 forKeyedSubscript:@"BacklightLevel"];

  [(PLOperator *)self logEntry:v10];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __66__PLScreenStateAgent_logEventPointMainBacklightEvent_withContext___block_invoke;
    v28 = &__block_descriptor_40_e5_v8__0lu32l8;
    v29 = v17;
    if (logEventPointMainBacklightEvent_withContext__defaultOnce != -1)
    {
      dispatch_once(&logEventPointMainBacklightEvent_withContext__defaultOnce, &block);
    }

    if (logEventPointMainBacklightEvent_withContext__classDebugEnabled == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"BacklightEvent: %@", v10, block, v26, v27, v28, v29];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLScreenStateAgent.m"];
      lastPathComponent = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLScreenStateAgent logEventPointMainBacklightEvent:withContext:]"];
      [v19 logMessage:v18 fromFile:lastPathComponent fromFunction:v22 fromLineNumber:557];

      v24 = PLLogCommon(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__66__PLScreenStateAgent_logEventPointMainBacklightEvent_withContext___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointMainBacklightEvent_withContext__classDebugEnabled = result;
  return result;
}

- (void)postEnhancedScreenStateNotification:(id)notification currentLayout:(id)layout
{
  v5 = [notification isEqualToDictionary:layout];
  v6 = v5;
  v7 = PLLogCommon(v5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      [PLScreenStateAgent postEnhancedScreenStateNotification:currentLayout:];
    }
  }

  else
  {
    if (v8)
    {
      [PLScreenStateAgent postEnhancedScreenStateNotification:currentLayout:];
    }

    ++postEnhancedScreenStateNotification_currentLayout__enhancedScreenStateCounter;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.powerlog.EnhancedScreenState"];
    [PLUtilities postNotificationName:v9 object:self userInfo:0];

    v7 = PLLogCommon(v10);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PLScreenStateAgent postEnhancedScreenStateNotification:currentLayout:];
    }
  }
}

- (void)logEventForwardMainScreenState:(id)state
{
  stateCopy = state;
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke;
  v7[3] = &unk_279A5C3F8;
  v8 = stateCopy;
  selfCopy = self;
  v6 = stateCopy;
  dispatch_async(workQueue, v7);
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke(uint64_t a1)
{
  v1 = a1;
  v147[2] = *MEMORY[0x277D85DE8];
  v2 = PLLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  if (!*(v1 + 32))
  {
    return;
  }

  v10 = PLLogCommon(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_2();
  }

  if ((!_os_feature_enabled_impl() || ([MEMORY[0x277D3F208] hasAOD] & 1) == 0) && objc_msgSend(*(v1 + 32), "displayBacklightLevel") < 1)
  {
    return;
  }

  v117 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];
  v116 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(v1 + 32) bounds];
  v12 = v11;
  [*(v1 + 32) bounds];
  v14 = v13;
  v15 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"level" ascending:0];
  v16 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"layoutRole" ascending:0];
  v17 = [*(v1 + 32) elements];
  v107 = v16;
  v108 = v15;
  v147[0] = v15;
  v147[1] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:2];
  v19 = [v17 sortedArrayUsingDescriptors:v18];

  v20 = [MEMORY[0x277CBEB18] array];
  v113 = [MEMORY[0x277CBEB38] dictionary];
  v21 = PLLogCommon(v113);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_3();
  }

  if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
  {
    [*(v1 + 40) setLastDisplayLayoutContainsLockScreen:0];
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = v19;
  v115 = [obj countByEnumeratingWithState:&v120 objects:v146 count:16];
  if (!v115)
  {
    goto LABEL_62;
  }

  v22 = v12 * v14;
  v114 = *v121;
  v109 = *MEMORY[0x277D0AB98];
  v23 = -1.0;
  v24 = 0.0;
  v112 = v1;
  v110 = v20;
  while (2)
  {
    for (i = 0; i != v115; ++i)
    {
      if (*v121 != v114)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v120 + 1) + 8 * i);
      v27 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v117 withDate:v116];
      v28 = [v26 bundleIdentifier];
      if (v28)
      {
        [v26 bundleIdentifier];
      }

      else
      {
        [v26 identifier];
      }
      v29 = ;
      [v27 setObject:v29 forKeyedSubscript:@"bundleID"];

      v30 = [v27 objectForKeyedSubscript:@"bundleID"];

      if (!v30)
      {
        v59 = PLLogCommon(v31);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_7(&v118, v119, v59);
        }

        goto LABEL_45;
      }

      if (_os_feature_enabled_impl())
      {
        if ([MEMORY[0x277D3F208] hasAOD])
        {
          v32 = [v27 objectForKeyedSubscript:@"bundleID"];
          v33 = [v32 isEqualToString:v109];

          if (v33)
          {
            v34 = PLLogCommon([*(v1 + 40) setLastDisplayLayoutContainsLockScreen:1]);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v86 = [v27 objectForKeyedSubscript:@"bundleID"];
              v87 = [*(v1 + 40) displayState];
              *buf = 138412802;
              v135 = v86;
              v136 = 2112;
              v137 = v27;
              v138 = 1024;
              LODWORD(v139) = v87;
              _os_log_debug_impl(&dword_25EE51000, v34, OS_LOG_TYPE_DEBUG, "element bundleID=%@, entry=%@, displayState=%d", buf, 0x1Cu);
            }

            if ([*(v1 + 40) displayState] == 2)
            {
              v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v109, @"aod"];
              [v27 setObject:v35 forKeyedSubscript:@"bundleID"];

              v37 = PLLogCommon(v36);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v135 = v27;
                _os_log_debug_impl(&dword_25EE51000, v37, OS_LOG_TYPE_DEBUG, "entry after transformation = %@", buf, 0xCu);
              }
            }
          }
        }
      }

      v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v26, "layoutRole")}];
      [v27 setObject:v38 forKeyedSubscript:@"AppRole"];

      v39 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(v1 + 32), "displayType")}];
      [v27 setObject:v39 forKeyedSubscript:@"Display"];

      v40 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(v1 + 32), "interfaceOrientation")}];
      [v27 setObject:v40 forKeyedSubscript:@"Orientation"];

      v41 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v26, "level")}];
      [v27 setObject:v41 forKeyedSubscript:@"Level"];

      [v26 frame];
      v43 = v42;
      [v26 frame];
      v45 = v43 * v44 / v22;
      v46 = [MEMORY[0x277CCABB0] numberWithDouble:v45];
      [v27 setObject:v46 forKeyedSubscript:@"ScreenWeight"];

      v47 = _os_feature_enabled_impl();
      if (v47)
      {
        v48 = PLLogCommon(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_4(v144, v27, &v145);
        }

        v49 = [*(*(v1 + 40) + 88) count];
        if (v49)
        {
          v50 = PLLogCommon(v49);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_5(v142, v27, &v143);
          }

          v51 = *(*(v1 + 40) + 88);
          v52 = [v27 objectForKeyedSubscript:@"bundleID"];
          v53 = [v51 objectForKey:v52];

          if (v53)
          {
            v140[0] = @"AppRole";
            v54 = [v27 objectForKeyedSubscript:?];
            v141[0] = v54;
            v140[1] = @"Display";
            v55 = [v27 objectForKeyedSubscript:?];
            v141[1] = v55;
            v140[2] = @"Orientation";
            v56 = [v27 objectForKeyedSubscript:?];
            v141[2] = v56;
            v140[3] = @"Level";
            v57 = [v27 objectForKeyedSubscript:@"Level"];
            v141[3] = v57;
            v140[4] = @"ScreenWeight";
            v58 = [v27 objectForKeyedSubscript:?];
            v141[4] = v58;
            v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:5];

            v1 = v112;
            v60 = *(*(v112 + 40) + 88);
            v61 = [v27 objectForKeyedSubscript:@"bundleID"];
            v62 = [v60 objectForKey:v61];
            LODWORD(v56) = [v62 isEqualToDictionary:v59];

            if (v56)
            {
              v64 = PLLogCommon(v63);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
              {
                v88 = [v27 objectForKeyedSubscript:@"bundleID"];
                v89 = [v27 objectForKeyedSubscript:@"ScreenWeight"];
                v90 = [v27 objectForKeyedSubscript:@"Level"];
                *buf = 138412802;
                v135 = v88;
                v136 = 2112;
                v137 = v89;
                v138 = 2112;
                v139 = v90;
                _os_log_debug_impl(&dword_25EE51000, v64, OS_LOG_TYPE_DEBUG, "current FBSDisplayLayoutElement entry was already logged, skipping logging for  %@ with screenWeight %@ and Level: %@", buf, 0x20u);
              }

              v65 = [v27 objectForKeyedSubscript:@"bundleID"];
              [v113 setObject:v59 forKeyedSubscript:v65];

              v20 = v110;
LABEL_45:

              goto LABEL_58;
            }
          }
        }

        v66 = PLLogCommon(v49);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          v83 = [v27 objectForKeyedSubscript:@"bundleID"];
          v84 = [v27 objectForKeyedSubscript:@"ScreenWeight"];
          v85 = [v27 objectForKeyedSubscript:@"Level"];
          *buf = 138412802;
          v135 = v83;
          v136 = 2112;
          v137 = v84;
          v138 = 2112;
          v139 = v85;
          _os_log_debug_impl(&dword_25EE51000, v66, OS_LOG_TYPE_DEBUG, "FBSDisplayLayoutElement entries was not logged, logging %@ with screenWeight %@ and Level: %@", buf, 0x20u);
        }

        v132[0] = @"AppRole";
        v67 = [v27 objectForKeyedSubscript:?];
        v133[0] = v67;
        v132[1] = @"Display";
        v68 = [v27 objectForKeyedSubscript:?];
        v133[1] = v68;
        v132[2] = @"Orientation";
        v69 = [v27 objectForKeyedSubscript:?];
        v133[2] = v69;
        v132[3] = @"Level";
        v70 = [v27 objectForKeyedSubscript:@"Level"];
        v133[3] = v70;
        v132[4] = @"ScreenWeight";
        v71 = [v27 objectForKeyedSubscript:?];
        v133[4] = v71;
        v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:5];
        v73 = [v27 objectForKeyedSubscript:@"bundleID"];
        [v113 setObject:v72 forKeyedSubscript:v73];

        v1 = v112;
        v20 = v110;
      }

      if ([MEMORY[0x277D3F180] taskMode])
      {
        v130[0] = @"AppRole";
        v74 = [v27 objectForKeyedSubscript:?];
        v131[0] = v74;
        v130[1] = @"Display";
        v75 = [v27 objectForKeyedSubscript:?];
        v131[1] = v75;
        v130[2] = @"Orientation";
        v76 = [v27 objectForKeyedSubscript:?];
        v131[2] = v76;
        v130[3] = @"Level";
        v77 = [v27 objectForKeyedSubscript:@"Level"];
        v131[3] = v77;
        v130[4] = @"ScreenWeight";
        v78 = [v27 objectForKeyedSubscript:?];
        v131[4] = v78;
        v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:5];
        v80 = [v27 objectForKeyedSubscript:@"bundleID"];
        [v113 setObject:v79 forKeyedSubscript:v80];

        v20 = v110;
        v1 = v112;
      }

      v81 = [v20 addObject:v27];
      ++displaySync_block_invoke_screenStateEntriesCounter;
      v82 = PLLogCommon(v81);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
      {
        __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_6(v128, v129, v82);
      }

      if (v23 == [v26 level])
      {
        v45 = v24 + v45;
      }

      else
      {
        v23 = [v26 level];
      }

      v24 = v45;
      if (v45 >= 1.0)
      {

        goto LABEL_62;
      }

LABEL_58:
    }

    v115 = [obj countByEnumeratingWithState:&v120 objects:v146 count:16];
    if (v115)
    {
      continue;
    }

    break;
  }

LABEL_62:

  if ([MEMORY[0x277D3F180] taskMode])
  {
    [*(v1 + 40) postEnhancedScreenStateNotification:*(*(v1 + 40) + 96) currentLayout:v113];
    [*(*(v1 + 40) + 96) removeAllObjects];
    v91 = [v113 mutableCopy];
    v92 = *(v1 + 40);
    v93 = *(v92 + 96);
    *(v92 + 96) = v91;
  }

  v94 = _os_feature_enabled_impl();
  v95 = *(v1 + 40);
  if (!v94)
  {
    v124 = v117;
    v125 = v20;
    v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
    [v95 logEntries:v103 withGroupID:v117];

    v102 = PLLogCommon(v104);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  [v95[11] removeAllObjects];
  v96 = [v113 mutableCopy];
  v97 = *(v1 + 40);
  v98 = *(v97 + 88);
  *(v97 + 88) = v96;

  if ([v20 count])
  {
    v99 = *(v1 + 40);
    v126 = v117;
    v127 = v20;
    v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
    [v99 logEntries:v100 withGroupID:v117];

    v102 = PLLogCommon(v101);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
    {
LABEL_69:
      __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_8();
    }

LABEL_70:
    v106 = v107;
    v105 = v108;
  }

  else
  {
    v102 = PLLogCommon(0);
    v106 = v107;
    v105 = v108;
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
    {
      __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_10();
    }
  }

  [*(v1 + 40) accountWithLayoutEntries:v20];
  if (_os_feature_enabled_impl())
  {
    if ([MEMORY[0x277D3F208] hasAOD])
    {
      [*(v1 + 40) setLastDisplayLayout:*(v1 + 32)];
    }
  }
}

- (void)logEventForwardCarScreenState:(id)state
{
  v39 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  elements = [stateCopy elements];
  v8 = [elements count];

  if (v8)
  {
    v33 = monotonicDate;
    [stateCopy bounds];
    v10 = v9;
    [stateCopy bounds];
    v12 = v11;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [stateCopy elements];
    v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = v10 * v12;
      v32 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          v18 = v5;
          v19 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
          [v19 setEntryDate:v33];
          bundleIdentifier = [v17 bundleIdentifier];
          if (bundleIdentifier)
          {
            [v17 bundleIdentifier];
          }

          else
          {
            [v17 identifier];
          }
          v21 = ;
          [v19 setObject:v21 forKeyedSubscript:@"bundleID"];

          v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "layoutRole")}];
          [v19 setObject:v22 forKeyedSubscript:@"AppRole"];

          v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(stateCopy, "displayType")}];
          [v19 setObject:v23 forKeyedSubscript:@"Display"];

          v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "level")}];
          [v19 setObject:v24 forKeyedSubscript:@"Level"];

          [v17 frame];
          v26 = v25;
          [v17 frame];
          v28 = [MEMORY[0x277CCABB0] numberWithDouble:v26 * v27 / v15];
          [v19 setObject:v28 forKeyedSubscript:@"ScreenWeight"];

          [(PLOperator *)self logEntry:v19];
          [(PLScreenStateAgent *)self createCarPlayAccountingEvents:v19];

          v5 = v18;
        }

        v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);
    }

    monotonicDate = v33;
  }

  else
  {
    v29 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
    [v29 setEntryDate:monotonicDate];
    [v29 setObject:0 forKeyedSubscript:@"bundleID"];
    [v29 setObject:&unk_287145A60 forKeyedSubscript:@"AppRole"];
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(stateCopy, "displayType")}];
    [v29 setObject:v30 forKeyedSubscript:@"Display"];

    [v29 setObject:&unk_28714B238 forKeyedSubscript:@"ScreenWeight"];
    [v29 setObject:&unk_287145A78 forKeyedSubscript:@"Level"];
    [(PLOperator *)self logEntry:v29];
    [(PLScreenStateAgent *)self createCarPlayAccountingEvents:v29];
  }
}

- (void)logEventForwardAirPlayScreenState:(id)state
{
  v41 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  elements = [stateCopy elements];
  v8 = [elements count];

  if (v8)
  {
    v35 = monotonicDate;
    [stateCopy bounds];
    v10 = v9;
    [stateCopy bounds];
    v12 = v11;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [stateCopy elements];
    v13 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = v10 * v12;
      v34 = *v37;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          selfCopy = self;
          if (*v37 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v18 = stateCopy;
          v19 = *(*(&v36 + 1) + 8 * i);
          v20 = v5;
          v21 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
          [v21 setEntryDate:v35];
          bundleIdentifier = [v19 bundleIdentifier];
          if (bundleIdentifier)
          {
            [v19 bundleIdentifier];
          }

          else
          {
            [v19 identifier];
          }
          v23 = ;
          [v21 setObject:v23 forKeyedSubscript:@"bundleID"];

          v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "layoutRole")}];
          [v21 setObject:v24 forKeyedSubscript:@"AppRole"];

          stateCopy = v18;
          v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "displayType")}];
          [v21 setObject:v25 forKeyedSubscript:@"Display"];

          v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "level")}];
          [v21 setObject:v26 forKeyedSubscript:@"Level"];

          [v19 frame];
          v28 = v27;
          [v19 frame];
          v30 = [MEMORY[0x277CCABB0] numberWithDouble:v28 * v29 / v15];
          [v21 setObject:v30 forKeyedSubscript:@"ScreenWeight"];

          self = selfCopy;
          [(PLScreenStateAgent *)selfCopy createAirPlayWiFiAccountingEvent:v21];

          v5 = v20;
        }

        v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v14);
    }

    monotonicDate = v35;
  }

  else
  {
    v31 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
    [v31 setEntryDate:monotonicDate];
    [v31 setObject:0 forKeyedSubscript:@"bundleID"];
    [v31 setObject:&unk_287145A60 forKeyedSubscript:@"AppRole"];
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(stateCopy, "displayType")}];
    [v31 setObject:v32 forKeyedSubscript:@"Display"];

    [v31 setObject:&unk_28714B238 forKeyedSubscript:@"ScreenWeight"];
    [v31 setObject:&unk_287145A78 forKeyedSubscript:@"Level"];
    [(PLScreenStateAgent *)self createAirPlayWiFiAccountingEvent:v31];
  }
}

- (unint64_t)convertWindowingMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Invalid"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"Mirroring"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Medusa"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"Chamois"])
  {
    v4 = 3;
  }

  else
  {
    v5 = [modeCopy isEqualToString:@"NonInteractive"];
    if (v5)
    {
      v4 = 4;
    }

    else
    {
      v6 = PLLogCommon(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [PLScreenStateAgent convertWindowingMode:];
      }

      v4 = 5;
    }
  }

  return v4;
}

- (unint64_t)convertZoomLevel:(id)level
{
  levelCopy = level;
  if ([levelCopy isEqualToString:@"Invalid"])
  {
    v4 = 0;
  }

  else if ([levelCopy isEqualToString:@"LargerText"])
  {
    v4 = 1;
  }

  else if ([levelCopy isEqualToString:@"Standard"])
  {
    v4 = 2;
  }

  else if ([levelCopy isEqualToString:@"Dense"])
  {
    v4 = 3;
  }

  else
  {
    v5 = [levelCopy isEqualToString:@"Denser"];
    if (v5)
    {
      v4 = 4;
    }

    else
    {
      v6 = PLLogCommon(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [PLScreenStateAgent convertZoomLevel:];
      }

      v4 = 5;
    }
  }

  return v4;
}

- (void)logEventForwardWindowMode:(id)mode
{
  modeCopy = mode;
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v4 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"WindowMode"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:modeCopy];
    v6 = [modeCopy objectForKeyedSubscript:@"displayName"];
    [v5 setObject:v6 forKeyedSubscript:@"displayType"];

    v7 = MEMORY[0x277CCABB0];
    v8 = [modeCopy objectForKeyedSubscript:@"windowingMode"];
    v9 = [v7 numberWithUnsignedInteger:{-[PLScreenStateAgent convertWindowingMode:](self, "convertWindowingMode:", v8)}];
    [v5 setObject:v9 forKeyedSubscript:@"windowingMode"];

    v10 = MEMORY[0x277CCABB0];
    v11 = [modeCopy objectForKeyedSubscript:@"zoomLevel"];
    v12 = [v10 numberWithUnsignedInteger:{-[PLScreenStateAgent convertZoomLevel:](self, "convertZoomLevel:", v11)}];
    [v5 setObject:v12 forKeyedSubscript:@"zoomLevel"];

    v13 = [modeCopy objectForKeyedSubscript:@"canvasSizeHeight"];
    intValue = [v13 intValue];
    v15 = [modeCopy objectForKeyedSubscript:@"canvasSizeWidth"];
    v16 = [v15 intValue] * intValue;

    v17 = [modeCopy objectForKeyedSubscript:@"nativeSizeHeight"];
    intValue2 = [v17 intValue];
    v19 = [modeCopy objectForKeyedSubscript:@"nativeSizeWidth"];
    intValue3 = [v19 intValue];

    if (v16 >= 1 && intValue3 * intValue2 >= 1)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v16 / (intValue3 * intValue2)];
      [v5 setObject:v21 forKeyedSubscript:@"canvasRatio"];
    }

    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventBackwardIconDragging:(id)dragging
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  draggingCopy = dragging;
  v6 = [v4 now];
  convertFromSystemToMonotonic = [v6 convertFromSystemToMonotonic];

  v8 = [draggingCopy objectForKeyedSubscript:@"Durations"];

  v9 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"IconDragging"];
  array = [MEMORY[0x277CBEB18] array];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __51__PLScreenStateAgent_logEventBackwardIconDragging___block_invoke;
  v18 = &unk_279A5CB88;
  v11 = v9;
  v19 = v11;
  v12 = convertFromSystemToMonotonic;
  v20 = v12;
  v13 = array;
  v21 = v13;
  [v8 enumerateObjectsUsingBlock:&v15];
  if ([v13 count])
  {
    v22 = v11;
    v23[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [(PLOperator *)self logEntries:v14 withGroupID:v11];
  }
}

void __51__PLScreenStateAgent_logEventBackwardIconDragging___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withDate:*(a1 + 40)];
  [v5 setObject:v4 forKeyedSubscript:@"Duration"];

  [*(a1 + 48) addObject:v5];
}

- (void)logEventBackwardAlwaysOnEnableState:(id)state
{
  stateCopy = state;
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v4 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AlwaysOnEnableState"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:stateCopy];
    v6 = [stateCopy objectForKeyedSubscript:@"focusMode"];
    v7 = [v6 length];

    if (v7)
    {
      [v5 setObject:&unk_287145A90 forKeyedSubscript:@"focusMode"];
    }

    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventBackwardBacklightStateChange:(id)change
{
  changeCopy = change;
  if (([MEMORY[0x277D3F208] hasAOD] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102040) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102041))
  {
    v4 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BacklightStateChange"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:changeCopy];
    v6 = MEMORY[0x277CCABB0];
    v7 = [changeCopy objectForKeyedSubscript:@"state"];
    v8 = [v6 numberWithUnsignedInt:{-[PLScreenStateAgent GetBacklightState:](self, "GetBacklightState:", v7)}];
    [v5 setObject:v8 forKeyedSubscript:@"state"];

    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventBackwardFlipbookStatistics:(id)statistics
{
  statisticsCopy = statistics;
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v4 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"FlipbookStatistics"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:statisticsCopy];
    [(PLOperator *)self logEntry:v5];
  }
}

- (id)processQuery:(id)query withEntryKey:(id)key
{
  v39[1] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  keyCopy = key;
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = PLLogScreenState(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLScreenStateAgent processQuery:withEntryKey:];
    }

    if (!queryCopy || ([queryCopy objectForKeyedSubscript:@"StartEpochTime"], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v11))
    {
      v14 = PLLogCommon(v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PLScreenStateAgent processQuery:withEntryKey:];
      }

      v28 = 0;
    }

    else
    {
      v12 = MEMORY[0x277CBEAA8];
      v13 = [queryCopy objectForKeyedSubscript:@"StartEpochTime"];
      [v13 doubleValue];
      v14 = [v12 dateWithTimeIntervalSince1970:?];

      convertFromSystemToMonotonic = [v14 convertFromSystemToMonotonic];
      v16 = PLLogScreenState(convertFromSystemToMonotonic);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLScreenStateAgent processQuery:withEntryKey:];
      }

      v17 = objc_alloc(MEMORY[0x277D3F260]);
      v18 = MEMORY[0x277CCABB0];
      [convertFromSystemToMonotonic timeIntervalSince1970];
      v19 = [v18 numberWithDouble:?];
      v20 = [v17 initWithKey:@"timestamp" withValue:v19 withComparisonOperation:3];

      mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
      v22 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
      v39[0] = v20;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      v24 = [v22 entriesForKey:keyCopy withComparisons:v23];

      v26 = PLLogScreenState(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [PLScreenStateAgent processQuery:withEntryKey:];
      }

      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__7;
      v37 = __Block_byref_object_dispose__7;
      v38 = objc_opt_new();
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __48__PLScreenStateAgent_processQuery_withEntryKey___block_invoke;
      v30[3] = &unk_279A5CBB0;
      v31 = keyCopy;
      v32 = &v33;
      v27 = PLLogScreenState([v24 enumerateObjectsUsingBlock:v30]);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [PLScreenStateAgent processQuery:withEntryKey:];
      }

      v28 = v34[5];
      _Block_object_dispose(&v33, 8);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

void __48__PLScreenStateAgent_processQuery_withEntryKey___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 dictionary];
  v5 = [v4 mutableCopy];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "entryID")}];
  [v5 setObject:v6 forKeyedSubscript:@"ID"];

  v7 = [v3 entryDate];
  v8 = [v7 convertFromMonotonicToSystem];

  v9 = MEMORY[0x277CCABB0];
  [v8 timeIntervalSince1970];
  v10 = [v9 numberWithDouble:?];
  [v5 setObject:v10 forKeyedSubscript:@"timestamp"];

  v12 = PLLogScreenState(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = [v3 entryDate];
    v15 = 138412802;
    v16 = v13;
    v17 = 2112;
    v18 = v14;
    v19 = 2112;
    v20 = v8;
    _os_log_debug_impl(&dword_25EE51000, v12, OS_LOG_TYPE_DEBUG, "process for query related to %@ is NSDates=%@ and correctedTimeStamp=%@", &v15, 0x20u);
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
}

- (void)logAggregateWidgetAdditionAnimation:(id)animation
{
  v4 = *MEMORY[0x277D3F5B8];
  animationCopy = animation;
  v7 = [(PLOperator *)PLScreenStateAgent entryKeyForType:v4 andName:@"WidgetAdditionAnimation"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:animationCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logAggregateWidgetFlipAnimation:(id)animation
{
  v4 = *MEMORY[0x277D3F5B8];
  animationCopy = animation;
  v7 = [(PLOperator *)PLScreenStateAgent entryKeyForType:v4 andName:@"WidgetFlipAnimation"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:animationCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)createCarPlayAccountingEvents:(id)events
{
  v18[1] = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = [eventsCopy objectForKeyedSubscript:@"bundleID"];

  mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
  if (v4)
  {
    v5 = [eventsCopy objectForKeyedSubscript:@"bundleID"];
    v17 = v5;
    v18[0] = &unk_28714B238;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    entryDate = [eventsCopy entryDate];
    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:27 withChildNodeNameToWeight:v6 withStartDate:entryDate];

    mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
    v9 = [eventsCopy objectForKeyedSubscript:@"bundleID"];
    v15 = v9;
    v10 = [eventsCopy objectForKeyedSubscript:@"ScreenWeight"];
    v16 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    entryDate2 = [eventsCopy entryDate];

    [mEMORY[0x277D3F0C0]2 createDistributionEventForwardWithDistributionID:43 withChildNodeNameToWeight:v11 withStartDate:entryDate2];
  }

  else
  {
    entryDate3 = [eventsCopy entryDate];

    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:43 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:entryDate3];
  }
}

- (void)createAirPlayWiFiAccountingEvent:(id)event
{
  v10[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = [eventCopy objectForKeyedSubscript:@"bundleID"];

  if (v4)
  {
    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    v6 = [eventCopy objectForKeyedSubscript:@"bundleID"];
    v9 = v6;
    v10[0] = &unk_28714B238;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    entryDate = [eventCopy entryDate];
    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:36 withChildNodeNameToWeight:v7 withStartDate:entryDate];
  }
}

- (void)accountWithLayoutEntries:(id)entries
{
  v42 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  firstObject = [entriesCopy firstObject];
  entryDate = [firstObject entryDate];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = entriesCopy;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
  allKeys = v7;
  if (!v8)
  {
LABEL_20:

    goto LABEL_21;
  }

  v10 = v8;
  v31 = entryDate;
  v11 = *v37;
  v12 = 0.0;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v37 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v36 + 1) + 8 * i);
      v15 = [v14 objectForKeyedSubscript:@"bundleID"];
      if (v15)
      {
        v16 = [v14 objectForKeyedSubscript:@"ScreenWeight"];
        [dictionary setObject:v16 forKeyedSubscript:v15];

        v17 = [v14 objectForKeyedSubscript:@"ScreenWeight"];
        [v17 doubleValue];
        v12 = v12 + v18;
      }
    }

    v10 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
  }

  while (v10);

  if (v12 > 0.0 && v12 != 1.0)
  {
    allKeys = [dictionary allKeys];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = [allKeys countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(allKeys);
          }

          v23 = *(*(&v32 + 1) + 8 * j);
          v24 = MEMORY[0x277CCABB0];
          v25 = [dictionary objectForKeyedSubscript:v23];
          [v25 doubleValue];
          v27 = [v24 numberWithDouble:v26 / v12];
          [dictionary setObject:v27 forKeyedSubscript:v23];
        }

        v20 = [allKeys countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v20);
      entryDate = v31;
    }

    goto LABEL_20;
  }

LABEL_21:
  mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
  [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:dictionary withStartDate:entryDate];

  mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
  allKeys2 = [dictionary allKeys];
  [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:allKeys2 withStartDate:entryDate];
}

- (void)handleDisplayCallback:(id)callback
{
  callbackCopy = callback;
  v5 = PLLogCommon(callbackCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_311_cold_1();
  }

  v6 = [callbackCopy objectForKey:@"entry"];
  v7 = [v6 objectForKeyedSubscript:@"Active"];
  -[PLScreenStateAgent setDisplayState:](self, "setDisplayState:", [v7 intValue]);

  v9 = PLLogCommon(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLScreenStateAgent handleDisplayCallback:?];
  }

  if ([(PLScreenStateAgent *)self displayState]== 2 || [(PLScreenStateAgent *)self displayState]== 1)
  {
    lastDisplayLayoutContainsLockScreen = [(PLScreenStateAgent *)self lastDisplayLayoutContainsLockScreen];
    if (lastDisplayLayoutContainsLockScreen)
    {
      v11 = PLLogCommon(lastDisplayLayoutContainsLockScreen);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLScreenStateAgent handleDisplayCallback:?];
      }

      lastDisplayLayout = [(PLScreenStateAgent *)self lastDisplayLayout];
      [(PLScreenStateAgent *)self logEventForwardMainScreenState:lastDisplayLayout];
    }
  }
}

- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context
{
  layoutCopy = layout;
  contextCopy = context;
  v9 = PLLogCommon(contextCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLScreenStateAgent layoutMonitor:layoutCopy didUpdateDisplayLayout:contextCopy withContext:?];
  }

  transitionReason = [contextCopy transitionReason];
  v11 = SBSBacklightChangeSourceForDisplayLayoutTransitionReason();

  if (!v11 || ([(PLScreenStateAgent *)self logEventPointMainBacklightEvent:layoutCopy withContext:contextCopy], v11 > 0x1C) || ((1 << v11) & 0x1A000050) == 0)
  {
    [(PLScreenStateAgent *)self logEventForwardMainScreenState:layoutCopy];
  }
}

- (void)postEnhancedScreenStateNotification:currentLayout:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)postEnhancedScreenStateNotification:currentLayout:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "calling logEventForwardMainScreenState with displayLayout=%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_2()
{
  [MEMORY[0x277D3F208] hasAOD];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_3()
{
  _os_feature_enabled_impl();
  [MEMORY[0x277D3F208] hasAOD];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_4(_DWORD *a1, void *a2, void *a3)
{
  v5 = [a2 objectForKeyedSubscript:@"bundleID"];
  *a1 = 138412290;
  *a3 = v5;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v6, v7, "FBSDisplayLayoutElement currentEntry bundleID: %@");
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_5(_DWORD *a1, void *a2, void *a3)
{
  v5 = [a2 objectForKeyedSubscript:@"bundleID"];
  *a1 = 138412290;
  *a3 = v5;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v6, v7, "FBSDisplayLayoutElement searching for currentEntry bundleID in last Dictionary: %@");
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_6(uint8_t *buf, int *a2, os_log_t log)
{
  v3 = displaySync_block_invoke_screenStateEntriesCounter;
  *buf = 67109120;
  *a2 = v3;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "Logged %d FBSDisplayLayoutElement entries", buf, 8u);
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_7(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_25EE51000, log, OS_LOG_TYPE_ERROR, "Screen State element's bundleID/identifier is nil", buf, 2u);
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_10()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)processQuery:withEntryKey:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "process for %@ Received query with payload=%@.");
}

- (void)processQuery:withEntryKey:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "process for %@ queryStartDate is =%@.");
}

- (void)processQuery:withEntryKey:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "selected query entries for %@ are selectedEntries =%@.");
}

- (void)processQuery:withEntryKey:.cold.5()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "process for %@ Invalid payload!", v1, 0xCu);
}

- (void)handleDisplayCallback:(void *)a1 .cold.2(void *a1)
{
  [a1 displayState];
  [a1 lastDisplayLayoutContainsLockScreen];
  v2 = [a1 lastDisplayLayout];
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x18u);
}

- (void)handleDisplayCallback:(void *)a1 .cold.3(void *a1)
{
  [a1 displayState];
  [a1 lastDisplayLayoutContainsLockScreen];
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

- (void)layoutMonitor:(uint64_t)a1 didUpdateDisplayLayout:(void *)a2 withContext:.cold.1(uint64_t a1, void *a2)
{
  v3 = [a2 transitionReason];
  v9 = [a2 transitionReasons];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);
}

@end