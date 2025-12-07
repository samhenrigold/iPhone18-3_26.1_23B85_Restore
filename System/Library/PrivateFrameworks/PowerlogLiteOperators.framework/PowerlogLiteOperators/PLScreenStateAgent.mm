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

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLScreenStateAgent_EventBackward_AlwaysOnEnableState: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventBackwardAlwaysOnEnableState:v6];
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
    v5[3] = &unk_278259658;
    v6 = *(a1 + 32);
    v7 = v3;
    dispatch_async(v4, v5);
  }
}

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
  v13 = &unk_282C1BD38;
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
  v22[0] = &unk_282C1BD48;
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
    v17 = &unk_282C1BD38;
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
  v11 = &unk_282C1BD38;
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
    v18[0] = &unk_282C1BD58;
    v18[1] = &unk_282C10158;
    v17[2] = *MEMORY[0x277D3F588];
    v18[2] = &unk_282C1BD68;
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
    v17 = &unk_282C1BD58;
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
    v57 = &unk_282C1BD38;
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
  v18[0] = &unk_282C1BD38;
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
  v13 = &unk_282C1BD78;
  v11 = *MEMORY[0x277D3F470];
  v12 = &unk_282C1BD68;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v19[3] = *MEMORY[0x277D3F488];
  v20[2] = v8;
  v20[3] = &unk_282C14028;
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
  v18[0] = &unk_282C1BD38;
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
  v13 = &unk_282C1BD78;
  v11 = *MEMORY[0x277D3F470];
  v12 = &unk_282C1BD68;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v19[3] = *MEMORY[0x277D3F488];
  v20[2] = v8;
  v20[3] = &unk_282C14040;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

  return v9;
}

- (PLScreenStateAgent)init
{
  if ([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPowerlogHelperd") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
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
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __26__PLScreenStateAgent_init__block_invoke_2;
      aBlock[3] = &unk_27825B060;
      v7 = v5;
      v24 = v7;
      v8 = _Block_copy(aBlock);
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __26__PLScreenStateAgent_init__block_invoke_4;
      v21 = &unk_27825B060;
      v9 = v7;
      v22 = v9;
      v10 = _Block_copy(&v18);
      v11 = objc_alloc(MEMORY[0x277D0AD10]);
      v12 = [v11 initWithDisplayType:0 qualityOfService:17 handler:{&__block_literal_global_219_0, v18, v19, v20, v21}];
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

void __26__PLScreenStateAgent_init__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) workQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __26__PLScreenStateAgent_init__block_invoke_5;
    v5[3] = &unk_278259658;
    v6 = *(a1 + 32);
    v7 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)initOperatorDependancies
{
  v54 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v3 = [MEMORY[0x277D3F180] objectForKey:@"SBEnableAlwaysOn" forApplicationID:@"com.apple.springboard" synchronize:1];
    bOOLValue = [v3 BOOLValue];

    v5 = PLLogScreenState();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v53 = bOOLValue;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "initial state for EnableAlwaysOn is %d", buf, 8u);
    }

    v50 = @"alwaysOnEnabledSetting";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v51 = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];

    [(PLScreenStateAgent *)self logEventBackwardAlwaysOnEnableState:v7];
  }

  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    if ([MEMORY[0x277D3F208] isiPad])
    {
      v8 = objc_alloc(MEMORY[0x277D3F270]);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke;
      v49[3] = &unk_27825A1D8;
      v49[4] = self;
      v9 = [v8 initWithOperator:self withRegistration:&unk_282C17068 withBlock:v49];
      [(PLScreenStateAgent *)self setWindowModeListener:v9];
    }

    if (([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
    {
      v10 = objc_alloc(MEMORY[0x277D3F270]);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_245;
      v48[3] = &unk_27825A1D8;
      v48[4] = self;
      v11 = [v10 initWithOperator:self withRegistration:&unk_282C17090 withBlock:v48];
      [(PLScreenStateAgent *)self setIconDraggingListner:v11];

      v12 = objc_alloc(MEMORY[0x277D3F270]);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_250;
      v47[3] = &unk_27825A1D8;
      v47[4] = self;
      v13 = [v12 initWithOperator:self withRegistration:&unk_282C170B8 withBlock:v47];
      [(PLScreenStateAgent *)self setWidgetAdditionAnimationListener:v13];

      v14 = objc_alloc(MEMORY[0x277D3F270]);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_255;
      v46[3] = &unk_27825A1D8;
      v46[4] = self;
      v15 = [v14 initWithOperator:self withRegistration:&unk_282C170E0 withBlock:v46];
      [(PLScreenStateAgent *)self setWidgetFlipAnimationListener:v15];
    }

    v16 = objc_alloc(MEMORY[0x277D3F270]);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_260;
    v45[3] = &unk_27825A1D8;
    v45[4] = self;
    v17 = [v16 initWithOperator:self withRegistration:&unk_282C17108 withBlock:v45];
    [(PLScreenStateAgent *)self setSpringBoardAlwaysOnEnableStateListener:v17];

    v18 = objc_alloc(MEMORY[0x277D3F270]);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_265;
    v44[3] = &unk_27825A1D8;
    v44[4] = self;
    v19 = [v18 initWithOperator:self withRegistration:&unk_282C17130 withBlock:v44];
    [(PLScreenStateAgent *)self setSpringBoardBacklightStateChangeListener:v19];

    v20 = objc_alloc(MEMORY[0x277D3F270]);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_270;
    v43[3] = &unk_27825A1D8;
    v43[4] = self;
    v21 = [v20 initWithOperator:self withRegistration:&unk_282C17158 withBlock:v43];
    [(PLScreenStateAgent *)self setSpringBoardFlipbookStatisticsListener:v21];

    if ([MEMORY[0x277D3F208] internalBuild])
    {
      v22 = objc_alloc(MEMORY[0x277D3F278]);
      workQueue = [(PLOperator *)self workQueue];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_276;
      v42[3] = &unk_278259810;
      v42[4] = self;
      v24 = [v22 initWithWorkQueue:workQueue withRegistration:&unk_282C17180 withBlock:v42];
      [(PLScreenStateAgent *)self setSpringBoardAlwaysOnEnableStateResponder:v24];

      v25 = objc_alloc(MEMORY[0x277D3F278]);
      workQueue2 = [(PLOperator *)self workQueue];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_286;
      v41[3] = &unk_278259810;
      v41[4] = self;
      v27 = [v25 initWithWorkQueue:workQueue2 withRegistration:&unk_282C171A8 withBlock:v41];
      [(PLScreenStateAgent *)self setSpringBoardBacklightStateChangeResponder:v27];

      v28 = objc_alloc(MEMORY[0x277D3F278]);
      workQueue3 = [(PLOperator *)self workQueue];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_294;
      v40[3] = &unk_278259810;
      v40[4] = self;
      v30 = [v28 initWithWorkQueue:workQueue3 withRegistration:&unk_282C171D0 withBlock:v40];
      [(PLScreenStateAgent *)self setSpringBoardFlipbookStatisticsResponder:v30];
    }

    if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
    {
      [(PLScreenStateAgent *)self setLastDisplayLayoutContainsLockScreen:0];
      [(PLScreenStateAgent *)self setLastDisplayLayout:0];
      v31 = *MEMORY[0x277D3F5E8];
      v32 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Display"];
      v33 = objc_msgSend_storage(self);
      v34 = [v33 lastEntryForKey:v32 withFilters:&unk_282C14058];

      if (v34)
      {
        v35 = [v34 objectForKeyedSubscript:@"Active"];
        -[PLScreenStateAgent setDisplayState:](self, "setDisplayState:", [v35 intValue]);
      }

      else
      {
        [(PLScreenStateAgent *)self setDisplayState:0];
      }

      v36 = [(PLOperator *)PLDisplayAgent entryKeyForType:v31 andName:@"Display"];
      v37 = objc_alloc(MEMORY[0x277D3F1A8]);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_311;
      v39[3] = &unk_2782597E8;
      v39[4] = self;
      v38 = [v37 initWithOperator:self forEntryKey:v36 withBlock:v39];
      [(PLScreenStateAgent *)self setDisplayCallback:v38];
    }
  }
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLScreenStateAgent_EventForward_WindowMode: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventForwardWindowMode:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_245(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLScreenStateAgent_EventBackward_IconDragging: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventBackwardIconDragging:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLScreenStateAgent_Aggregate_WidgetAdditionAnimation: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logAggregateWidgetAdditionAnimation:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_255(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLScreenStateAgent_Aggregate_WidgetFlipAnimation: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logAggregateWidgetFlipAnimation:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_265(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLScreenStateAgent_EventBackward_BacklightStateChange: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventBackwardBacklightStateChange:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLScreenStateAgent_EventBackward_FlipbookStatistics: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventBackwardFlipbookStatistics:v6];
}

id __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_276(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AlwaysOnEnableState query received with info: %@", &v13, 0xCu);
  }

  v8 = [*(a1 + 32) processQuery:v6 withEntryKey:@"PLScreenStateAgent_EventBackward_AlwaysOnEnableState"];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = objc_opt_new();
    [v10 setObject:v9 forKeyedSubscript:@"AlwaysOnEnableState"];
    v11 = PLLogScreenState();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v10;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "AlwaysOnEnableState query received with info: %@", &v13, 0xCu);
    }
  }

  else
  {
    v11 = PLLogScreenState();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "AlwaysOnEnableState query did not succeed", &v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

id __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_286(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "BacklightStateChange query received with info: %@", &v13, 0xCu);
  }

  v8 = [*(a1 + 32) processQuery:v6 withEntryKey:@"PLScreenStateAgent_EventBackward_BacklightStateChange"];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = objc_opt_new();
    [v10 setObject:v9 forKeyedSubscript:@"BacklightStateChange"];
    v11 = PLLogScreenState();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v10;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "BacklightStateChange query received with info: %@", &v13, 0xCu);
    }
  }

  else
  {
    v11 = PLLogScreenState();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "BacklightStateChange query did not succeed", &v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

id __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "FlipbookStatistics query received with info: %@", &v13, 0xCu);
  }

  v8 = [*(a1 + 32) processQuery:v6 withEntryKey:@"PLScreenStateAgent_EventBackward_FlipbookStatistics"];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = objc_opt_new();
    [v10 setObject:v9 forKeyedSubscript:@"FlipbookStatistics"];
    v11 = PLLogScreenState();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v10;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "FlipbookStatistics query received with info: %@", &v13, 0xCu);
    }
  }

  else
  {
    v11 = PLLogScreenState();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "FlipbookStatistics query did not succeed", &v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_311(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "userInfo=%@", &v5, 0xCu);
    }

    [*(a1 + 32) handleDisplayCallback:v3];
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
  v31 = *MEMORY[0x277D85DE8];
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
    v25 = 3221225472;
    v26 = __66__PLScreenStateAgent_logEventPointMainBacklightEvent_withContext___block_invoke;
    v27 = &__block_descriptor_40_e5_v8__0lu32l8;
    v28 = v17;
    if (qword_2811F3FA8 != -1)
    {
      dispatch_once(&qword_2811F3FA8, &block);
    }

    if (_MergedGlobals_1_9 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"BacklightEvent: %@", v10, block, v25, v26, v27, v28];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLScreenStateAgent.m"];
      lastPathComponent = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLScreenStateAgent logEventPointMainBacklightEvent:withContext:]"];
      [v19 logMessage:v18 fromFile:lastPathComponent fromFunction:v22 fromLineNumber:557];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__66__PLScreenStateAgent_logEventPointMainBacklightEvent_withContext___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_9 = result;
  return result;
}

- (void)postEnhancedScreenStateNotification:(id)notification currentLayout:(id)layout
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [notification isEqualToDictionary:layout];
  v6 = PLLogCommon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      LOWORD(v13[0]) = 0;
      v8 = "current FBSDisplayLayoutElement dictionary is the same than the last, not sending a EnhancedScreenState notification";
      v9 = v6;
      v10 = 2;
LABEL_9:
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, v8, v13, v10);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v13[0]) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "current FBSDisplayLayoutElement dictionary is different than the last, notifying EnhancedScreenState Listener", v13, 2u);
    }

    ++postEnhancedScreenStateNotification_currentLayout__enhancedScreenStateCounter;
    v11 = MEMORY[0x277D3F258];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.powerlog.EnhancedScreenState"];
    [v11 postNotificationName:v12 object:self userInfo:0];

    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v13[0] = 67109120;
      v13[1] = postEnhancedScreenStateNotification_currentLayout__enhancedScreenStateCounter;
      v8 = "FBSDisplayLayoutElement notification notified, count is now %d";
      v9 = v6;
      v10 = 8;
      goto LABEL_9;
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
  v7[3] = &unk_278259658;
  v8 = stateCopy;
  selfCopy = self;
  v6 = stateCopy;
  dispatch_async(workQueue, v7);
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke(uint64_t a1)
{
  v129[2] = *MEMORY[0x277D85DE8];
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v94 = *(a1 + 32);
    *buf = 138412290;
    *v122 = v94;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "calling logEventForwardMainScreenState with displayLayout=%@", buf, 0xCu);
  }

  if (!*(a1 + 32))
  {
    return;
  }

  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v95 = [MEMORY[0x277D3F208] hasAOD];
    *buf = 67109120;
    *v122 = v95;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "screenState - hasAOD=%d", buf, 8u);
  }

  if ((!_os_feature_enabled_impl() || ([MEMORY[0x277D3F208] hasAOD] & 1) == 0) && objc_msgSend(*(a1 + 32), "displayBacklightLevel") < 1)
  {
    return;
  }

  v108 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];
  v107 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) bounds];
  v5 = v4;
  [*(a1 + 32) bounds];
  v7 = v6;
  v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"level" ascending:0];
  v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"layoutRole" ascending:0];
  v10 = [*(a1 + 32) elements];
  v98 = v9;
  v99 = v8;
  v129[0] = v8;
  v129[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:2];
  v12 = [v10 sortedArrayUsingDescriptors:v11];

  v13 = [MEMORY[0x277CBEB18] array];
  v104 = [MEMORY[0x277CBEB38] dictionary];
  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v96 = _os_feature_enabled_impl();
    v97 = [MEMORY[0x277D3F208] hasAOD];
    *buf = 67109376;
    *v122 = v96;
    *&v122[4] = 1024;
    *&v122[6] = v97;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "dts runtime ff enabled=%d, [PLPlatform hasAOD]=%d]", buf, 0xEu);
  }

  v102 = v13;

  if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
  {
    [*(a1 + 40) setLastDisplayLayoutContainsLockScreen:0];
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v12;
  v106 = [obj countByEnumeratingWithState:&v109 objects:v128 count:16];
  if (!v106)
  {
    goto LABEL_62;
  }

  v15 = v5 * v7;
  v105 = *v110;
  v100 = *MEMORY[0x277D0AB98];
  v16 = -1.0;
  v17 = 0.0;
  v103 = a1;
  while (2)
  {
    for (i = 0; i != v106; ++i)
    {
      if (*v110 != v105)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v109 + 1) + 8 * i);
      v20 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v108 withDate:v107];
      v21 = [v19 bundleIdentifier];
      if (v21)
      {
        [v19 bundleIdentifier];
      }

      else
      {
        [v19 identifier];
      }
      v22 = ;
      [v20 setObject:v22 forKeyedSubscript:@"bundleID"];

      v23 = [v20 objectForKeyedSubscript:@"bundleID"];

      if (!v23)
      {
        v48 = PLLogCommon();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_ERROR, "Screen State element's bundleID/identifier is nil", buf, 2u);
        }

        goto LABEL_45;
      }

      if (_os_feature_enabled_impl())
      {
        if ([MEMORY[0x277D3F208] hasAOD])
        {
          v24 = [v20 objectForKeyedSubscript:@"bundleID"];
          v25 = [v24 isEqualToString:v100];

          if (v25)
          {
            [*(a1 + 40) setLastDisplayLayoutContainsLockScreen:1];
            v26 = PLLogCommon();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              v75 = [v20 objectForKeyedSubscript:@"bundleID"];
              v76 = [*(a1 + 40) displayState];
              *buf = 138412802;
              *v122 = v75;
              *&v122[8] = 2112;
              v123 = v20;
              v124 = 1024;
              LODWORD(v125) = v76;
              _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "element bundleID=%@, entry=%@, displayState=%d", buf, 0x1Cu);
            }

            if ([*(a1 + 40) displayState] == 2)
            {
              v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v100, @"aod"];
              [v20 setObject:v27 forKeyedSubscript:@"bundleID"];

              v28 = PLLogCommon();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *v122 = v20;
                _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "entry after transformation = %@", buf, 0xCu);
              }
            }
          }
        }
      }

      v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "layoutRole")}];
      [v20 setObject:v29 forKeyedSubscript:@"AppRole"];

      v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "displayType")}];
      [v20 setObject:v30 forKeyedSubscript:@"Display"];

      v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "interfaceOrientation")}];
      [v20 setObject:v31 forKeyedSubscript:@"Orientation"];

      v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "level")}];
      [v20 setObject:v32 forKeyedSubscript:@"Level"];

      [v19 frame];
      v34 = v33;
      [v19 frame];
      v36 = v34 * v35 / v15;
      v37 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
      [v20 setObject:v37 forKeyedSubscript:@"ScreenWeight"];

      if (_os_feature_enabled_impl())
      {
        v38 = PLLogCommon();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v70 = [v20 objectForKeyedSubscript:@"bundleID"];
          *buf = 138412290;
          *v122 = v70;
          _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "FBSDisplayLayoutElement currentEntry bundleID: %@", buf, 0xCu);
        }

        if ([*(*(a1 + 40) + 88) count])
        {
          v39 = PLLogCommon();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v74 = [v20 objectForKeyedSubscript:@"bundleID"];
            *buf = 138412290;
            *v122 = v74;
            _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "FBSDisplayLayoutElement searching for currentEntry bundleID in last Dictionary: %@", buf, 0xCu);
          }

          v40 = *(*(a1 + 40) + 88);
          v41 = [v20 objectForKeyedSubscript:@"bundleID"];
          v42 = [v40 objectForKey:v41];

          if (v42)
          {
            v126[0] = @"AppRole";
            v43 = [v20 objectForKeyedSubscript:?];
            v127[0] = v43;
            v126[1] = @"Display";
            v44 = [v20 objectForKeyedSubscript:?];
            v127[1] = v44;
            v126[2] = @"Orientation";
            v45 = [v20 objectForKeyedSubscript:?];
            v127[2] = v45;
            v126[3] = @"Level";
            v46 = [v20 objectForKeyedSubscript:?];
            v127[3] = v46;
            v126[4] = @"ScreenWeight";
            v47 = [v20 objectForKeyedSubscript:?];
            v127[4] = v47;
            v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:5];

            a1 = v103;
            v49 = *(*(v103 + 40) + 88);
            v50 = [v20 objectForKeyedSubscript:@"bundleID"];
            v51 = [v49 objectForKey:v50];
            LODWORD(v45) = [v51 isEqualToDictionary:v48];

            if (v45)
            {
              v52 = PLLogCommon();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                v77 = [v20 objectForKeyedSubscript:@"bundleID"];
                v78 = [v20 objectForKeyedSubscript:@"ScreenWeight"];
                v79 = [v20 objectForKeyedSubscript:@"Level"];
                *buf = 138412802;
                *v122 = v77;
                *&v122[8] = 2112;
                v123 = v78;
                v124 = 2112;
                v125 = v79;
                _os_log_debug_impl(&dword_21A4C6000, v52, OS_LOG_TYPE_DEBUG, "current FBSDisplayLayoutElement entry was already logged, skipping logging for  %@ with screenWeight %@ and Level: %@", buf, 0x20u);
              }

              v53 = [v20 objectForKeyedSubscript:@"bundleID"];
              [v104 setObject:v48 forKeyedSubscript:v53];

LABEL_45:
              goto LABEL_58;
            }
          }
        }

        v54 = PLLogCommon();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          v71 = [v20 objectForKeyedSubscript:@"bundleID"];
          v72 = [v20 objectForKeyedSubscript:@"ScreenWeight"];
          v73 = [v20 objectForKeyedSubscript:@"Level"];
          *buf = 138412802;
          *v122 = v71;
          *&v122[8] = 2112;
          v123 = v72;
          v124 = 2112;
          v125 = v73;
          _os_log_debug_impl(&dword_21A4C6000, v54, OS_LOG_TYPE_DEBUG, "FBSDisplayLayoutElement entries was not logged, logging %@ with screenWeight %@ and Level: %@", buf, 0x20u);
        }

        v119[0] = @"AppRole";
        v55 = [v20 objectForKeyedSubscript:?];
        v120[0] = v55;
        v119[1] = @"Display";
        v56 = [v20 objectForKeyedSubscript:?];
        v120[1] = v56;
        v119[2] = @"Orientation";
        v57 = [v20 objectForKeyedSubscript:?];
        v120[2] = v57;
        v119[3] = @"Level";
        v58 = [v20 objectForKeyedSubscript:?];
        v120[3] = v58;
        v119[4] = @"ScreenWeight";
        v59 = [v20 objectForKeyedSubscript:?];
        v120[4] = v59;
        v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:5];
        v61 = [v20 objectForKeyedSubscript:@"bundleID"];
        [v104 setObject:v60 forKeyedSubscript:v61];

        a1 = v103;
      }

      if ([MEMORY[0x277D3F180] taskMode])
      {
        v117[0] = @"AppRole";
        v62 = [v20 objectForKeyedSubscript:?];
        v118[0] = v62;
        v117[1] = @"Display";
        v63 = [v20 objectForKeyedSubscript:?];
        v118[1] = v63;
        v117[2] = @"Orientation";
        v64 = [v20 objectForKeyedSubscript:?];
        v118[2] = v64;
        v117[3] = @"Level";
        v65 = [v20 objectForKeyedSubscript:?];
        v118[3] = v65;
        v117[4] = @"ScreenWeight";
        v66 = [v20 objectForKeyedSubscript:?];
        v118[4] = v66;
        v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:5];
        v68 = [v20 objectForKeyedSubscript:@"bundleID"];
        [v104 setObject:v67 forKeyedSubscript:v68];

        a1 = v103;
      }

      [v102 addObject:v20];
      ++displaySync_block_invoke_screenStateEntriesCounter;
      v69 = PLLogCommon();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *v122 = displaySync_block_invoke_screenStateEntriesCounter;
        _os_log_debug_impl(&dword_21A4C6000, v69, OS_LOG_TYPE_DEBUG, "Logged %d FBSDisplayLayoutElement entries", buf, 8u);
      }

      if (v16 == [v19 level])
      {
        v36 = v17 + v36;
      }

      else
      {
        v16 = [v19 level];
      }

      v17 = v36;
      if (v36 >= 1.0)
      {

        goto LABEL_62;
      }

LABEL_58:
    }

    v106 = [obj countByEnumeratingWithState:&v109 objects:v128 count:16];
    if (v106)
    {
      continue;
    }

    break;
  }

LABEL_62:

  if ([MEMORY[0x277D3F180] taskMode])
  {
    [*(a1 + 40) postEnhancedScreenStateNotification:*(*(a1 + 40) + 96) currentLayout:v104];
    [*(*(a1 + 40) + 96) removeAllObjects];
    v80 = [v104 mutableCopy];
    v81 = *(a1 + 40);
    v82 = *(v81 + 96);
    *(v81 + 96) = v80;
  }

  v83 = _os_feature_enabled_impl();
  v84 = *(a1 + 40);
  if (v83)
  {
    [v84[11] removeAllObjects];
    v85 = [v104 mutableCopy];
    v86 = *(a1 + 40);
    v87 = *(v86 + 88);
    *(v86 + 88) = v85;

    if ([v102 count])
    {
      v88 = *(a1 + 40);
      v115 = v108;
      v116 = v102;
      v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
      [v88 logEntries:v89 withGroupID:v108];

      v90 = PLLogCommon();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *v122 = v102;
        goto LABEL_78;
      }

      goto LABEL_69;
    }

    v90 = PLLogCommon();
    v93 = v98;
    v92 = v99;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v90, OS_LOG_TYPE_DEBUG, "LayoutEntries is empty", buf, 2u);
    }
  }

  else
  {
    v113 = v108;
    v114 = v102;
    v91 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
    [v84 logEntries:v91 withGroupID:v108];

    v90 = PLLogCommon();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v122 = v102;
LABEL_78:
      _os_log_debug_impl(&dword_21A4C6000, v90, OS_LOG_TYPE_DEBUG, "LayoutEntries: %@", buf, 0xCu);
    }

LABEL_69:
    v93 = v98;
    v92 = v99;
  }

  [*(a1 + 40) accountWithLayoutEntries:v102];
  if (_os_feature_enabled_impl())
  {
    if ([MEMORY[0x277D3F208] hasAOD])
    {
      [*(a1 + 40) setLastDisplayLayout:*(a1 + 32)];
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
    [v29 setObject:&unk_282C10188 forKeyedSubscript:@"AppRole"];
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(stateCopy, "displayType")}];
    [v29 setObject:v30 forKeyedSubscript:@"Display"];

    [v29 setObject:&unk_282C1BD38 forKeyedSubscript:@"ScreenWeight"];
    [v29 setObject:&unk_282C101A0 forKeyedSubscript:@"Level"];
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
    [v31 setObject:&unk_282C10188 forKeyedSubscript:@"AppRole"];
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(stateCopy, "displayType")}];
    [v31 setObject:v32 forKeyedSubscript:@"Display"];

    [v31 setObject:&unk_282C1BD38 forKeyedSubscript:@"ScreenWeight"];
    [v31 setObject:&unk_282C101A0 forKeyedSubscript:@"Level"];
    [(PLScreenStateAgent *)self createAirPlayWiFiAccountingEvent:v31];
  }
}

- (unint64_t)convertWindowingMode:(id)mode
{
  v9 = *MEMORY[0x277D85DE8];
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

  else if ([modeCopy isEqualToString:@"NonInteractive"])
  {
    v4 = 4;
  }

  else
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = modeCopy;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, " Unknown windowingMode %@", &v7, 0xCu);
    }

    v4 = 5;
  }

  return v4;
}

- (unint64_t)convertZoomLevel:(id)level
{
  v9 = *MEMORY[0x277D85DE8];
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

  else if ([levelCopy isEqualToString:@"Denser"])
  {
    v4 = 4;
  }

  else
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = levelCopy;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, " Unknown zoomLevel %@", &v7, 0xCu);
    }

    v4 = 5;
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
  v18 = &unk_27825B088;
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
      [v5 setObject:&unk_282C101B8 forKeyedSubscript:@"focusMode"];
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
  v41[1] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  keyCopy = key;
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = PLLogScreenState();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = keyCopy;
      *&buf[12] = 2112;
      *&buf[14] = queryCopy;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "process for %@ Received query with payload=%@.", buf, 0x16u);
    }

    if (!queryCopy || ([queryCopy objectForKeyedSubscript:@"StartEpochTime"], v9 = objc_claimAutoreleasedReturnValue(), v10 = v9 == 0, v9, v10))
    {
      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = keyCopy;
        _os_log_error_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_ERROR, "process for %@ Invalid payload!", buf, 0xCu);
      }

      v27 = 0;
    }

    else
    {
      v11 = MEMORY[0x277CBEAA8];
      v12 = [queryCopy objectForKeyedSubscript:@"StartEpochTime"];
      [v12 doubleValue];
      v13 = [v11 dateWithTimeIntervalSince1970:?];

      convertFromSystemToMonotonic = [v13 convertFromSystemToMonotonic];
      v15 = PLLogScreenState();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *&buf[4] = keyCopy;
        *&buf[12] = 2112;
        *&buf[14] = convertFromSystemToMonotonic;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "process for %@ queryStartDate is =%@.", buf, 0x16u);
      }

      v16 = objc_alloc(MEMORY[0x277D3F260]);
      v17 = MEMORY[0x277CCABB0];
      [convertFromSystemToMonotonic timeIntervalSince1970];
      v18 = [v17 numberWithDouble:?];
      v19 = [v16 initWithKey:@"timestamp" withValue:v18 withComparisonOperation:3];

      mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
      v21 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
      v41[0] = v19;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
      v23 = [v21 entriesForKey:keyCopy withComparisons:v22];

      v24 = PLLogScreenState();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *&buf[4] = keyCopy;
        *&buf[12] = 2112;
        *&buf[14] = v23;
        _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "selected query entries for %@ are selectedEntries =%@.", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v38 = __Block_byref_object_copy__1;
      v39 = __Block_byref_object_dispose__1;
      v40 = objc_opt_new();
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __48__PLScreenStateAgent_processQuery_withEntryKey___block_invoke;
      v30[3] = &unk_27825B0B0;
      v25 = keyCopy;
      v31 = v25;
      v32 = buf;
      [v23 enumerateObjectsUsingBlock:v30];
      v26 = PLLogScreenState();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v29 = *(*&buf[8] + 40);
        *v33 = 138412546;
        v34 = v25;
        v35 = 2112;
        v36 = v29;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "process for %@ output response is =%@.", v33, 0x16u);
      }

      v27 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

void __48__PLScreenStateAgent_processQuery_withEntryKey___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
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

  v11 = PLLogScreenState();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    v13 = [v3 entryDate];
    v14 = 138412802;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    v18 = 2112;
    v19 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "process for query related to %@ is NSDates=%@ and correctedTimeStamp=%@", &v14, 0x20u);
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
    v18[0] = &unk_282C1BD38;
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
    v10[0] = &unk_282C1BD38;
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
  v20 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    *v17 = callbackCopy;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "userInfo=%@", &v16, 0xCu);
  }

  v6 = [callbackCopy objectForKey:@"entry"];
  v7 = [v6 objectForKeyedSubscript:@"Active"];
  -[PLScreenStateAgent setDisplayState:](self, "setDisplayState:", [v7 intValue]);

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    displayState = [(PLScreenStateAgent *)self displayState];
    lastDisplayLayoutContainsLockScreen = [(PLScreenStateAgent *)self lastDisplayLayoutContainsLockScreen];
    lastDisplayLayout = [(PLScreenStateAgent *)self lastDisplayLayout];
    v16 = 67109634;
    *v17 = displayState;
    *&v17[4] = 1024;
    *&v17[6] = lastDisplayLayoutContainsLockScreen;
    v18 = 2112;
    v19 = lastDisplayLayout;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "self.displayState=%d, self.lastDisplayLayoutContainsLockScreen=%d,  self.lastDisplayLayout=%@", &v16, 0x18u);
  }

  if (([(PLScreenStateAgent *)self displayState]== 2 || [(PLScreenStateAgent *)self displayState]== 1) && [(PLScreenStateAgent *)self lastDisplayLayoutContainsLockScreen])
  {
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      displayState2 = [(PLScreenStateAgent *)self displayState];
      lastDisplayLayoutContainsLockScreen2 = [(PLScreenStateAgent *)self lastDisplayLayoutContainsLockScreen];
      v16 = 67109376;
      *v17 = displayState2;
      *&v17[4] = 1024;
      *&v17[6] = lastDisplayLayoutContainsLockScreen2;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "self.displayState=%d, self.lastDisplayLayoutContainsLockScreen=%d", &v16, 0xEu);
    }

    lastDisplayLayout2 = [(PLScreenStateAgent *)self lastDisplayLayout];
    [(PLScreenStateAgent *)self logEventForwardMainScreenState:lastDisplayLayout2];
  }
}

- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  contextCopy = context;
  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    transitionReason = [contextCopy transitionReason];
    transitionReasons = [contextCopy transitionReasons];
    v14 = 138413058;
    v15 = layoutCopy;
    v16 = 2112;
    v17 = contextCopy;
    v18 = 2112;
    v19 = transitionReason;
    v20 = 2112;
    v21 = transitionReasons;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "calling didUpdateDisplayLayout=%@ with context=%@, transitionReason=%@, transitionReasons=%@", &v14, 0x2Au);
  }

  transitionReason2 = [contextCopy transitionReason];
  v11 = SBSBacklightChangeSourceForDisplayLayoutTransitionReason();

  if (!v11 || ([(PLScreenStateAgent *)self logEventPointMainBacklightEvent:layoutCopy withContext:contextCopy], v11 > 0x1C) || ((1 << v11) & 0x1A000050) == 0)
  {
    [(PLScreenStateAgent *)self logEventForwardMainScreenState:layoutCopy];
  }
}

@end