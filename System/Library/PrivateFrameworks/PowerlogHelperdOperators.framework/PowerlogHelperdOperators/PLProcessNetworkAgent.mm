@interface PLProcessNetworkAgent
+ (id)entryEventBackwardDefinitionNetworkBitmap;
+ (id)entryEventBackwardDefinitionUsage;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionHighCellularBWTransactions;
+ (id)entryEventForwardDefinitionHighCellularBWTransactionsDetail;
+ (id)entryEventForwardDefinitionLowInternet;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionUsage;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointDefinitionConnection;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)outcomeHasDataUsage:(id)usage;
- (PLProcessNetworkAgent)init;
- (id)compressNetworkBitmap:(id)bitmap;
- (void)accountWithNetworkUsageDiffEntries:(id)entries withStartDate:(id)date withEndDate:(id)endDate;
- (void)aggregateAndLogNetworkBitmaps:(id)bitmaps withStartTime:(unint64_t)time andEndTime:(unint64_t)endTime;
- (void)didAddNewSource:(__NStatSource *)source;
- (void)didRemoveSource:(id)source;
- (void)didSetCountsBlock:(id)block withCounts:(id)counts;
- (void)didSetDescriptionBlock:(id)block withDescription:(id)description;
- (void)getNetWorkBitmapForEndTime:(unint64_t)time andSysdiagnoseTrigger:(BOOL)trigger;
- (void)handleHighBWEndCallback:(id)callback;
- (void)handleHighBWStartCallback:(id)callback;
- (void)initOperatorDependancies;
- (void)log;
- (void)logEventBackwardNetworkBitmaps;
- (void)logEventBackwardNetworkBitmapsSysdiagnoseTrigger;
- (void)logEventBackwardUsage;
- (void)logEventBackwardUsageWithOutcome:(id)outcome;
- (void)logEventForwardLowInternet;
- (void)logEventPointConnectionEvent:(signed __int16)event forSource:(id)source;
- (void)processesOfInterest:(id)interest;
- (void)setLastNetworkBitmapTimestampFor:(id)for;
- (void)timestampNetConnectEntry:(id)entry withEventType:(signed __int16)type withSource:(id)source;
@end

@implementation PLProcessNetworkAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLProcessNetworkAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"Connection";
  v2 = +[PLProcessNetworkAgent entryEventPointDefinitionConnection];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventPointDefinitionConnection
{
  v43[2] = *MEMORY[0x277D85DE8];
  v42[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v40[0] = *MEMORY[0x277D3F568];
  v40[1] = v2;
  v41[0] = &unk_28714B588;
  v41[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4C0];
  v40[2] = *MEMORY[0x277D3F4C8];
  v40[3] = v3;
  v41[2] = &unk_287146078;
  v41[3] = &unk_287146090;
  v40[4] = *MEMORY[0x277D3F4A0];
  v41[4] = MEMORY[0x277CBEC38];
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:5];
  v43[0] = v37;
  v42[1] = *MEMORY[0x277D3F540];
  v38[0] = @"EventType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v39[0] = commonTypeDict_IntegerFormat;
  v38[1] = @"InterfaceName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v39[1] = commonTypeDict_StringFormat;
  v38[2] = @"ProcessName";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withBundleID];
  v39[2] = commonTypeDict_StringFormat_withBundleID;
  v38[3] = @"ProcessPID";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v39[3] = commonTypeDict_IntegerFormat2;
  v38[4] = @"ProviderType";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v39[4] = commonTypeDict_IntegerFormat3;
  v38[5] = @"LocalAddress";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v39[5] = commonTypeDict_StringFormat2;
  v38[6] = @"LocalPort";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v39[6] = commonTypeDict_IntegerFormat4;
  v38[7] = @"RemoteAddress";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v39[7] = commonTypeDict_StringFormat3;
  v38[8] = @"RemotePort";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v39[8] = commonTypeDict_IntegerFormat5;
  v38[9] = @"TrafficClass";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]10 commonTypeDict_StringFormat];
  v39[9] = commonTypeDict_StringFormat4;
  v38[10] = @"rxWifiBytes";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v39[10] = commonTypeDict_IntegerFormat6;
  v38[11] = @"txWifiBytes";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v39[11] = commonTypeDict_IntegerFormat7;
  v38[12] = @"rxCellularBytes";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v39[12] = commonTypeDict_IntegerFormat8;
  v38[13] = @"txCellularBytes";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v39[13] = commonTypeDict_IntegerFormat9;
  v38[14] = @"isChannelArch";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]15 commonTypeDict_BoolFormat];
  v39[14] = commonTypeDict_BoolFormat;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:15];
  v43[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];

  return v13;
}

+ (id)entryEventForwardDefinitions
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"LowInternet";
  v2 = +[PLProcessNetworkAgent entryEventForwardDefinitionLowInternet];
  v8[0] = v2;
  v7[1] = @"HighCellularBWTransactions";
  v3 = +[PLProcessNetworkAgent entryEventForwardDefinitionHighCellularBWTransactions];
  v8[1] = v3;
  v7[2] = @"HighCellularBWTransactionsDetail";
  v4 = +[PLProcessNetworkAgent entryEventForwardDefinitionHighCellularBWTransactionsDetail];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

+ (id)entryEventBackwardDefinitions
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"Usage";
  v2 = +[PLProcessNetworkAgent entryEventBackwardDefinitionUsage];
  v6[1] = @"NetworkBitmap";
  v7[0] = v2;
  v3 = +[PLProcessNetworkAgent entryEventBackwardDefinitionNetworkBitmap];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)entryEventIntervalDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"UsageDiff";
  v2 = +[PLProcessNetworkAgent entryEventIntervalDefinitionUsage];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventBackwardDefinitionNetworkBitmap
{
  v33[2] = *MEMORY[0x277D85DE8];
  v32[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v30[0] = *MEMORY[0x277D3F568];
  v30[1] = v2;
  v31[0] = &unk_28714B598;
  v31[1] = MEMORY[0x277CBEC38];
  v30[2] = *MEMORY[0x277D3F4A0];
  v31[2] = MEMORY[0x277CBEC38];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v33[0] = v19;
  v32[1] = *MEMORY[0x277D3F540];
  v28[0] = @"BundleName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v29[0] = commonTypeDict_StringFormat_withBundleID;
  v28[1] = @"CurrentMachAbsoluteTime";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v29[1] = commonTypeDict_IntegerFormat;
  v28[2] = @"MachAbsoluteStartTime";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v29[2] = commonTypeDict_IntegerFormat2;
  v28[3] = @"MachAbsoluteEndTime";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v29[3] = commonTypeDict_IntegerFormat3;
  v28[4] = *MEMORY[0x277D6B600];
  v26 = *MEMORY[0x277D3F5A8];
  v7 = v26;
  v27 = &unk_2871460A8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v29[4] = v8;
  v28[5] = *MEMORY[0x277D6B608];
  v24 = v7;
  v25 = &unk_2871460A8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v29[5] = v9;
  v28[6] = *MEMORY[0x277D6B5D8];
  v22 = v7;
  v23 = &unk_2871460A8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v29[6] = v10;
  v28[7] = *MEMORY[0x277D6B5E8];
  v20 = v7;
  v21 = &unk_2871460A8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v29[7] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:8];
  v33[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

  return v13;
}

+ (id)entryEventForwardDefinitionLowInternet
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_28714B5A8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Mode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10 = commonTypeDict_IntegerFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventBackwardDefinitionUsage
{
  v32[2] = *MEMORY[0x277D85DE8];
  v31[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v29[0] = *MEMORY[0x277D3F568];
  v29[1] = v2;
  v30[0] = &unk_28714B5B8;
  v30[1] = MEMORY[0x277CBEC38];
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v32[0] = v26;
  v31[1] = *MEMORY[0x277D3F540];
  v27[0] = @"ProcessName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v28[0] = commonTypeDict_StringFormat_withBundleID;
  v27[1] = @"BundleName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v28[1] = commonTypeDict_StringFormat_withBundleID2;
  v27[2] = @"ExtensionName";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withBundleID];
  v28[2] = commonTypeDict_StringFormat_withBundleID3;
  v27[3] = @"WifiIn";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v28[3] = commonTypeDict_IntegerFormat;
  v27[4] = @"WifiOut";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v28[4] = commonTypeDict_IntegerFormat2;
  v27[5] = @"CellIn";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v28[5] = commonTypeDict_IntegerFormat3;
  v27[6] = @"CellOut";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v28[6] = commonTypeDict_IntegerFormat4;
  v27[7] = @"BTCompanionIn";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v28[7] = commonTypeDict_IntegerFormat5;
  v27[8] = @"BTCompanionOut";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v28[8] = commonTypeDict_IntegerFormat6;
  v27[9] = @"SinceTime";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]10 commonTypeDict_DateFormat];
  v28[9] = commonTypeDict_DateFormat;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:10];
  v32[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

  return v12;
}

+ (id)entryEventIntervalDefinitionUsage
{
  v32[2] = *MEMORY[0x277D85DE8];
  v31[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v29[0] = *MEMORY[0x277D3F568];
  v29[1] = v2;
  v30[0] = &unk_28714B5B8;
  v30[1] = @"logEventBackwardUsage";
  v29[2] = *MEMORY[0x277D3F4A0];
  v30[2] = MEMORY[0x277CBEC38];
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v32[0] = v26;
  v31[1] = *MEMORY[0x277D3F540];
  v27[0] = @"ProcessName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v28[0] = commonTypeDict_StringFormat_withBundleID;
  v27[1] = @"BundleName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v28[1] = commonTypeDict_StringFormat_withBundleID2;
  v27[2] = @"ExtensionName";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withBundleID];
  v28[2] = commonTypeDict_StringFormat_withBundleID3;
  v27[3] = @"WifiIn";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v28[3] = commonTypeDict_IntegerFormat;
  v27[4] = @"WifiOut";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v28[4] = commonTypeDict_IntegerFormat2;
  v27[5] = @"CellIn";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v28[5] = commonTypeDict_IntegerFormat3;
  v27[6] = @"CellOut";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v28[6] = commonTypeDict_IntegerFormat4;
  v27[7] = @"BTCompanionIn";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v28[7] = commonTypeDict_IntegerFormat5;
  v27[8] = @"BTCompanionOut";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v28[8] = commonTypeDict_IntegerFormat6;
  v27[9] = @"timestampEnd";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]10 commonTypeDict_DateFormat];
  v28[9] = commonTypeDict_DateFormat;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:10];
  v32[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

  return v12;
}

+ (id)entryEventForwardDefinitionHighCellularBWTransactions
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v16 = *MEMORY[0x277D3F568];
  v17 = &unk_28714B5A8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[0] = v13;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"HighThroughputStartReason";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v15[0] = commonTypeDict_IntegerFormat;
  v14[1] = @"HighThroughputLinkRxTputAfterStart";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat2;
  v14[2] = @"HighThroughputLinkTxTputAfterStart";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v15[2] = commonTypeDict_IntegerFormat3;
  v14[3] = @"HighThroughputOriginators";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v15[3] = commonTypeDict_StringFormat;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v11;
}

+ (id)entryEventForwardDefinitionHighCellularBWTransactionsDetail
{
  v38[3] = *MEMORY[0x277D85DE8];
  v37[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v35[0] = *MEMORY[0x277D3F568];
  v35[1] = v2;
  v36[0] = &unk_28714B5A8;
  v36[1] = MEMORY[0x277CBEC38];
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v38[0] = v28;
  v37[1] = *MEMORY[0x277D3F540];
  v33[0] = @"HighThroughputStartReason";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v34[0] = commonTypeDict_IntegerFormat;
  v33[1] = @"HighThroughputLinkRxTputAfterStart";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v34[1] = commonTypeDict_IntegerFormat2;
  v33[2] = @"HighThroughputLinkTxTputAfterStart";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v34[2] = commonTypeDict_IntegerFormat3;
  v33[3] = @"HighThroughputOriginators";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v34[3] = commonTypeDict_StringFormat;
  v33[4] = @"HighThroughputDuration";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v34[4] = commonTypeDict_IntegerFormat4;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:5];
  v38[1] = v17;
  v37[2] = *MEMORY[0x277D3F500];
  v31[0] = @"key";
  v29[0] = @"Participant";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v30[0] = commonTypeDict_StringFormat2;
  v29[1] = @"Duration";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v30[1] = commonTypeDict_IntegerFormat5;
  v29[2] = @"RxBytes";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v30[2] = commonTypeDict_IntegerFormat6;
  v29[3] = @"TxBytes";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v30[3] = commonTypeDict_IntegerFormat7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
  v31[1] = @"value";
  v32[0] = v8;
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v32[1] = commonTypeDict_IntegerFormat8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v38[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];

  return v12;
}

- (PLProcessNetworkAgent)init
{
  v7.receiver = self;
  v7.super_class = PLProcessNetworkAgent;
  v2 = [(PLAgent *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    processes = v2->_processes;
    v2->_processes = v3;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_processesOfInterest_ name:@"PLProcessNetworkAgent.addProcessesOfInterest" object:0];
  }

  return v2;
}

- (void)initOperatorDependancies
{
  if ((([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "internalBuild")) && (objc_msgSend(MEMORY[0x277D3F208], "isMac") & 1) == 0)
  {
    workQueue = [(PLOperator *)self workQueue];
    v30[5] = MEMORY[0x277D85DD0];
    v30[6] = 3221225472;
    v30[7] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke;
    v30[8] = &unk_279A5D570;
    v30[9] = self;
    [(PLProcessNetworkAgent *)self setStatManagerRef:NStatManagerCreate()];

    if ([(PLProcessNetworkAgent *)self statManagerRef])
    {
      NStatManagerAddAllTCP();
      NStatManagerAddAllUDP();
    }

    else
    {
      v4 = PLLogProcessNetwork(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [PLProcessNetworkAgent initOperatorDependancies];
      }
    }
  }

  [(PLProcessNetworkAgent *)self setLastNetworkBitmapTimestamp:-1];
  [(PLProcessNetworkAgent *)self setCurNetworkBitmapTimestampForSysdiagnoseTrigger:-1];
  if ([(PLProcessNetworkAgent *)self hasSymptomsLogging])
  {
    v5 = objc_alloc(MEMORY[0x277D6B4F8]);
    v6 = [v5 initWorkspaceWithService:*MEMORY[0x277D6B698]];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277D6B6F8]) initWithWorkspace:v6];
      if (v7)
      {
        [(PLProcessNetworkAgent *)self setUsageFeed:v7];
      }

      else
      {
        v8 = PLLogProcessNetwork(0);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [PLProcessNetworkAgent initOperatorDependancies];
        }
      }
    }

    else
    {
      v7 = PLLogProcessNetwork(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PLProcessNetworkAgent initOperatorDependancies];
      }
    }

    if ([(PLOperator *)self isDebugEnabled])
    {
      v9 = MEMORY[0x277D3F1E0];
      v10 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:5.0];
      workQueue2 = [(PLOperator *)self workQueue];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_214;
      v30[3] = &unk_279A5D110;
      v30[4] = self;
      v12 = [v9 scheduledTimerWithMonotonicFireDate:v10 withInterval:workQueue2 withQueue:v30 withBlock:5.0];
      [(PLProcessNetworkAgent *)self setLogUsageTimer:v12];

      if ([(PLProcessNetworkAgent *)self hasSymptomsLogging])
      {
        v13 = objc_alloc(MEMORY[0x277D3F160]);
        workQueue3 = [(PLOperator *)self workQueue];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_2;
        v29[3] = &unk_279A5BE78;
        v29[4] = self;
        v15 = [v13 initWithWorkQueue:workQueue3 forNotification:@"com.apple.powerlogd.flushNetworkBitmaps" requireState:0 withBlock:v29];
        [(PLProcessNetworkAgent *)self setFlushNetworkBitmapsListener:v15];
      }

      v16 = 0;
    }

    else
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_3;
      v28[3] = &unk_279A5BE78;
      v28[4] = self;
      v16 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v28];
    }

    if ([(PLProcessNetworkAgent *)self hasSymptomsLogging])
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_4;
      v27[3] = &unk_279A5BE78;
      v27[4] = self;
      v17 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withMaxIntervalInSecs:v27 withBlock:900.0];
      [(PLProcessNetworkAgent *)self setBatteryLevelChangedListenerForNetworkBitmap:v17];

      v18 = objc_alloc(MEMORY[0x277D3F1F0]);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_5;
      v26[3] = &unk_279A5BE78;
      v26[4] = self;
      v19 = [v18 initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:v26];
      [(PLProcessNetworkAgent *)self setSysdiagnoseListener:v19];
    }

    [(PLProcessNetworkAgent *)self setBatteryLevelChanged:v16];
    [(PLProcessNetworkAgent *)self logEventForwardLowInternet];
    [(PLProcessNetworkAgent *)self logEventBackwardNetworkBitmaps];
    v20 = objc_alloc(MEMORY[0x277D3F270]);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_244;
    v25[3] = &unk_279A5BCB8;
    v25[4] = self;
    v21 = [v20 initWithOperator:self withRegistration:&unk_287148C98 withBlock:v25];
    [(PLProcessNetworkAgent *)self setHighBWStartListener:v21];

    if ([MEMORY[0x277D3F180] fullMode])
    {
      v22 = objc_alloc(MEMORY[0x277D3F270]);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_253;
      v24[3] = &unk_279A5BCB8;
      v24[4] = self;
      v23 = [v22 initWithOperator:self withRegistration:&unk_287148CC0 withBlock:v24];
      [(PLProcessNetworkAgent *)self setHighBWEndlistener:v23];
    }
  }
}

void __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLogProcessNetwork(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_5_cold_1();
  }

  v5 = [v3 objectForKeyedSubscript:@"Source"];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 objectForKeyedSubscript:@"Source"];
    v8 = [v7 isEqual:&unk_2871460C0];

    if (v8)
    {
      [*(a1 + 32) setCurNetworkBitmapTimestampForSysdiagnoseTrigger:-1];
      [*(a1 + 32) logEventBackwardNetworkBitmapsSysdiagnoseTrigger];
    }
  }
}

void __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogProcessNetwork(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_244_cold_1();
  }

  [*(a1 + 32) handleHighBWStartCallback:v6];
}

void __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_253(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogProcessNetwork(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_253_cold_1();
  }

  [*(a1 + 32) handleHighBWEndCallback:v6];
}

- (void)processesOfInterest:(id)interest
{
  userInfo = [interest userInfo];
  if (userInfo)
  {
    v8 = userInfo;
    v5 = [userInfo objectForKeyedSubscript:@"entry"];
    if (v5)
    {
      processes = [(PLProcessNetworkAgent *)self processes];
      v7 = [v8 objectForKeyedSubscript:@"entry"];
      [processes unionSet:v7];
    }

    userInfo = v8;
  }
}

- (void)didAddNewSource:(__NStatSource *)source
{
  v5 = [[PLProcessNetworkSource alloc] initWithSource:source];
  NStatSourceSetCountsBlock();
  v4 = v5;
  NStatSourceSetDescriptionBlock();
  v3 = v4;
  NStatSourceSetRemovedBlock();
}

- (void)didSetCountsBlock:(id)block withCounts:(id)counts
{
  if (counts)
  {

    [block setCountsDictionary:counts];
  }

  else
  {
    v5 = PLLogProcessNetwork(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PLProcessNetworkAgent didSetCountsBlock:withCounts:];
    }
  }
}

- (void)didSetDescriptionBlock:(id)block withDescription:(id)description
{
  v44 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  descriptionCopy = description;
  if (descriptionCopy)
  {
    descriptionDictionary = [blockCopy descriptionDictionary];

    if (descriptionDictionary)
    {
      descriptionDictionary2 = [blockCopy descriptionDictionary];
      v10 = MEMORY[0x277D2CAC8];
      v11 = [descriptionDictionary2 objectForCFString:*MEMORY[0x277D2CAC8]];

      v12 = [descriptionCopy objectForCFString:*v10];
      descriptionDictionary3 = [blockCopy descriptionDictionary];
      v14 = MEMORY[0x277D2CB10];
      v15 = [descriptionDictionary3 objectForCFString:*MEMORY[0x277D2CB10]];

      v16 = [descriptionCopy objectForCFString:*v14];
      descriptionDictionary4 = [blockCopy descriptionDictionary];
      v18 = MEMORY[0x277D2CB08];
      v19 = [descriptionDictionary4 objectForCFString:*MEMORY[0x277D2CB08]];

      v20 = [descriptionCopy objectForCFString:*v18];
      v21 = [v15 isEqualToString:v16];
      if (v21)
      {
        v22 = PLLogProcessNetwork(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          [blockCopy descriptionDictionary];
          v24 = v23 = v11;
          *buf = 138412546;
          v41 = v24;
          v42 = 2112;
          v43 = descriptionCopy;
          _os_log_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEFAULT, "WARNING: new description dictionary with same process name: %@ => %@", buf, 0x16u);

          v11 = v23;
        }

        goto LABEL_22;
      }

      if ([v15 isEqualToString:@"kernel_task"])
      {
LABEL_22:

        goto LABEL_23;
      }

      v37 = v19;
      v27 = v12;
      v28 = [MEMORY[0x277CCABB0] numberWithInt:0];
      v29 = v11;
      v30 = v28;
      v39 = v29;
      v31 = [v29 isEqualToNumber:v28];

      v32 = [MEMORY[0x277CCABB0] numberWithInt:0];
      v38 = v27;
      v33 = [v27 isEqualToNumber:v32];

      if (v31)
      {
        v19 = v37;
        if (v33)
        {
          v35 = PLLogProcessNetwork(v34);
          v12 = v38;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v36 = "WARNING: new dictionary with same process name and same zeroth interface number";
LABEL_19:
            _os_log_impl(&dword_25EE51000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 2u);
            goto LABEL_20;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v19 = v37;
        if (v33)
        {
          v35 = PLLogProcessNetwork(v34);
          v12 = v38;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v36 = "WARNING: new dictionary with same process name but new zeroth interface number";
            goto LABEL_19;
          }

LABEL_20:

          v11 = v39;
          goto LABEL_22;
        }
      }

      [(PLProcessNetworkAgent *)self transferSource:blockCopy fromPID:v19 toPID:v20];
      [blockCopy setDescriptionDictionary:descriptionCopy];
      [(PLProcessNetworkAgent *)self logEventPointConnectionEvent:2 forSource:blockCopy];
      v12 = v38;
      v11 = v39;
      goto LABEL_22;
    }

    v26 = [descriptionCopy objectForCFString:*MEMORY[0x277D2CB08]];
    [(PLProcessNetworkAgent *)self addSource:blockCopy toPID:v26];

    [blockCopy setDescriptionDictionary:descriptionCopy];
    [(PLProcessNetworkAgent *)self logEventPointConnectionEvent:0 forSource:blockCopy];
  }

  else
  {
    v25 = PLLogProcessNetwork(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [PLProcessNetworkAgent didSetDescriptionBlock:withDescription:];
    }
  }

LABEL_23:
}

- (void)didRemoveSource:(id)source
{
  sourceCopy = source;
  descriptionDictionary = [sourceCopy descriptionDictionary];

  if (descriptionDictionary)
  {
    [(PLProcessNetworkAgent *)self logEventPointConnectionEvent:1 forSource:sourceCopy];
  }
}

- (void)aggregateAndLogNetworkBitmaps:(id)bitmaps withStartTime:(unint64_t)time andEndTime:(unint64_t)endTime
{
  v88[4] = *MEMORY[0x277D85DE8];
  bitmapsCopy = bitmaps;
  context = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v62 = *MEMORY[0x277D6B5D8];
  v6 = *MEMORY[0x277D6B5D8];
  v63 = *MEMORY[0x277D6B600];
  v88[0] = *MEMORY[0x277D6B600];
  v88[1] = v6;
  v60 = *MEMORY[0x277D6B608];
  v7 = *MEMORY[0x277D6B608];
  v61 = *MEMORY[0x277D6B5E8];
  v88[2] = *MEMORY[0x277D6B5E8];
  v88[3] = v7;
  [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:4];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v82 = 0u;
  v58 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
  if (v58)
  {
    v55 = *v80;
    v8 = *MEMORY[0x277D6B610];
    do
    {
      v9 = 0;
      do
      {
        if (*v80 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v64 = v9;
        v66 = *(*(&v79 + 1) + 8 * v9);
        v10 = [bitmapsCopy objectForKeyedSubscript:?];
        v11 = v10;
        if (v10)
        {
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v12 = [v10 countByEnumeratingWithState:&v75 objects:v84 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v76;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v76 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v75 + 1) + 8 * i);
                v17 = [v11 objectForKeyedSubscript:v16];
                v18 = [dictionary objectForKeyedSubscript:v16];

                if (!v18)
                {
                  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
                  [dictionary setObject:dictionary2 forKeyedSubscript:v16];
                }

                v20 = [v17 objectForKeyedSubscript:v8];
                v21 = [(PLProcessNetworkAgent *)self compressNetworkBitmap:v20];

                if (v21)
                {
                  v22 = [dictionary objectForKeyedSubscript:v16];
                  [v22 setObject:v21 forKeyedSubscript:v66];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v75 objects:v84 count:16];
            }

            while (v13);
          }
        }

        else
        {
          v23 = PLLogProcessNetwork(0);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v86 = v66;
            _os_log_debug_impl(&dword_25EE51000, v23, OS_LOG_TYPE_DEBUG, "%@ interface does not exist in outcome dict from symptoms.", buf, 0xCu);
          }
        }

        v9 = v64 + 1;
      }

      while (v64 + 1 != v58);
      v58 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
    }

    while (v58);
  }

  v24 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"NetworkBitmap"];
  v73 = 0;
  v74 = 0;
  [PLUtilities getCurrentMonotonicAndMachAbsTime:&v73 machAbsTime:&v74 machContTime:0];
  v25 = v73;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v26 = dictionary;
  v27 = [v26 countByEnumeratingWithState:&v69 objects:v83 count:16];
  v67 = v27;
  if (v27)
  {
    v65 = *v70;
    v59 = v24;
    do
    {
      v28 = 0;
      do
      {
        if (*v70 != v65)
        {
          objc_enumerationMutation(v26);
        }

        v29 = *(*(&v69 + 1) + 8 * v28);
        v30 = PLLogProcessNetwork(v27);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v86 = v29;
          _os_log_debug_impl(&dword_25EE51000, v30, OS_LOG_TYPE_DEBUG, "Process %@'s network bitmaps", buf, 0xCu);
        }

        v31 = [v26 objectForKeyedSubscript:v29];
        v32 = [v31 objectForKeyedSubscript:v63];
        if (v32)
        {
          goto LABEL_36;
        }

        v33 = v25;
        v32 = [v26 objectForKeyedSubscript:v29];
        v34 = [v32 objectForKeyedSubscript:v62];
        if (v34)
        {
          goto LABEL_35;
        }

        v35 = [v26 objectForKeyedSubscript:v29];
        v36 = [v35 objectForKeyedSubscript:v61];
        if (v36)
        {

          v24 = v59;
LABEL_35:

          v25 = v33;
LABEL_36:

LABEL_37:
          v37 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v24];
          [v37 setEntryDate:v25];
          v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v74];
          [v37 setObject:v38 forKeyedSubscript:@"CurrentMachAbsoluteTime"];

          [v37 setObject:v29 forKeyedSubscript:@"BundleName"];
          v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:time];
          [v37 setObject:v39 forKeyedSubscript:@"MachAbsoluteStartTime"];

          v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:endTime];
          [v37 setObject:v40 forKeyedSubscript:@"MachAbsoluteEndTime"];

          v41 = [v26 objectForKeyedSubscript:v29];
          v42 = [v41 objectForKeyedSubscript:v63];
          [v37 setObject:v42 forKeyedSubscript:v63];

          v43 = [v26 objectForKeyedSubscript:v29];
          v44 = [v43 objectForKeyedSubscript:v60];
          [v37 setObject:v44 forKeyedSubscript:v60];

          v45 = [v26 objectForKeyedSubscript:v29];
          v46 = [v45 objectForKeyedSubscript:v62];
          [v37 setObject:v46 forKeyedSubscript:v62];

          v47 = [v26 objectForKeyedSubscript:v29];
          v48 = [v47 objectForKeyedSubscript:v61];
          [v37 setObject:v48 forKeyedSubscript:v61];

          [(PLOperator *)self logEntry:v37];
          goto LABEL_38;
        }

        v56 = [v26 objectForKeyedSubscript:v29];
        v49 = [v56 objectForKeyedSubscript:v60];

        v24 = v59;
        v25 = v33;
        if (v49)
        {
          goto LABEL_37;
        }

        v37 = PLLogProcessNetwork(v50);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v86 = v29;
          _os_log_debug_impl(&dword_25EE51000, v37, OS_LOG_TYPE_DEBUG, "Process %@'s network bitmaps on all interfaces are empty.", buf, 0xCu);
        }

LABEL_38:

        ++v28;
      }

      while (v67 != v28);
      v27 = [v26 countByEnumeratingWithState:&v69 objects:v83 count:16];
      v67 = v27;
    }

    while (v27);
  }

  objc_autoreleasePoolPop(context);
}

- (id)compressNetworkBitmap:(id)bitmap
{
  bitmapCopy = bitmap;
  v4 = bitmapCopy;
  if (!bitmapCopy || ![bitmapCopy length])
  {
    goto LABEL_15;
  }

  v5 = [v4 length];
  bytes = [v4 bytes];
  if ((v5 & 7) == 0)
  {
    v9 = v5 >> 3;
    if (v5 >= 8)
    {
      v11 = 0;
      while (!*(bytes + 8 * v9 - 8 + 8 * v11))
      {
        if (-v9 == --v11)
        {
          goto LABEL_15;
        }
      }

      v10 = -v11;
    }

    else
    {
      v10 = 0;
    }

    v12 = v9 - v10;
    if (v9 != v10)
    {
      v8 = [MEMORY[0x277CBEB28] dataWithCapacity:8 * v12];
      bytes2 = [v4 bytes];
      do
      {
        v15 = *bytes2++;
        v16 = v15;
        [v8 appendBytes:&v16 length:8];
        --v12;
      }

      while (v12);
      goto LABEL_16;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v7 = PLLogProcessNetwork(bytes);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLProcessNetworkAgent compressNetworkBitmap:];
  }

  v8 = v4;
LABEL_16:

  return v8;
}

- (void)log
{
  if ([(PLProcessNetworkAgent *)self hasSymptomsLogging])
  {

    [(PLProcessNetworkAgent *)self logEventBackwardUsage];
  }
}

- (void)logEventPointConnectionEvent:(signed __int16)event forSource:(id)source
{
  eventCopy = event;
  sourceCopy = source;
  v7 = MEMORY[0x277D3F1F8];
  descriptionDictionary = [sourceCopy descriptionDictionary];
  v9 = [descriptionDictionary objectForCFString:*MEMORY[0x277D2CAC8]];
  v10 = [v7 interfaceNameForIndex:v9];

  descriptionDictionary2 = [sourceCopy descriptionDictionary];
  v12 = [descriptionDictionary2 objectForCFString:*MEMORY[0x277D2CAE0]];
  if ([v12 BOOLValue])
  {

    goto LABEL_4;
  }

  descriptionDictionary3 = [sourceCopy descriptionDictionary];
  v14 = [descriptionDictionary3 objectForCFString:*MEMORY[0x277D2CAE8]];
  bOOLValue = [v14 BOOLValue];

  if (bOOLValue)
  {
LABEL_4:
    descriptionDictionary4 = [sourceCopy descriptionDictionary];
    v17 = [descriptionDictionary4 objectForCFString:*MEMORY[0x277D2CB10]];

    if (v17)
    {
      if ([v17 length])
      {
        if ([v17 isEqualToString:@"mDNSResponder"])
        {
          descriptionDictionary5 = [sourceCopy descriptionDictionary];
          v19 = [descriptionDictionary5 objectForCFString:*MEMORY[0x277D2CAE8]];
          bOOLValue2 = [v19 BOOLValue];

          if (bOOLValue2)
          {
            goto LABEL_21;
          }
        }

        selfCopy = self;
        descriptionDictionary6 = [sourceCopy descriptionDictionary];
        v22 = MEMORY[0x277D2CB00];
        v23 = [descriptionDictionary6 objectForCFString:*MEMORY[0x277D2CB00]];

        descriptionDictionary7 = [sourceCopy descriptionDictionary];
        v25 = MEMORY[0x277D2CB20];
        v26 = [descriptionDictionary7 objectForCFString:*MEMORY[0x277D2CB20]];

        if (v23 && v26)
        {
          v66 = v26;
          v28 = MEMORY[0x277D3F1F8];
          descriptionDictionary8 = [sourceCopy descriptionDictionary];
          v30 = [descriptionDictionary8 objectForCFString:*v22];
          v31 = [v28 sockaddrToNSDictionary:CFDataGetBytePtr(v30)];

          v32 = MEMORY[0x277D3F1F8];
          descriptionDictionary9 = [sourceCopy descriptionDictionary];
          v34 = *v25;
          v35 = v31;
          v36 = [descriptionDictionary9 objectForCFString:v34];
          v64 = [v32 sockaddrToNSDictionary:CFDataGetBytePtr(v36)];

          v65 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Connection"];
          v37 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v65];
          [(PLProcessNetworkAgent *)selfCopy timestampNetConnectEntry:v37 withEventType:eventCopy withSource:sourceCopy];
          [v37 setObject:v17 forKeyedSubscript:@"ProcessName"];
          [v37 setObject:v10 forKeyedSubscript:@"InterfaceName"];
          descriptionDictionary10 = [sourceCopy descriptionDictionary];
          v39 = [descriptionDictionary10 objectForCFString:*MEMORY[0x277D2CB40]];
          [v37 setObject:v39 forKeyedSubscript:@"rxWifiBytes"];

          descriptionDictionary11 = [sourceCopy descriptionDictionary];
          v41 = [descriptionDictionary11 objectForCFString:*MEMORY[0x277D2CB70]];
          [v37 setObject:v41 forKeyedSubscript:@"txWifiBytes"];

          descriptionDictionary12 = [sourceCopy descriptionDictionary];
          v43 = [descriptionDictionary12 objectForCFString:*MEMORY[0x277D2CB30]];
          [v37 setObject:v43 forKeyedSubscript:@"rxCellularBytes"];

          descriptionDictionary13 = [sourceCopy descriptionDictionary];
          v45 = [descriptionDictionary13 objectForCFString:*MEMORY[0x277D2CB60]];
          [v37 setObject:v45 forKeyedSubscript:@"txCellularBytes"];

          v46 = [v35 objectForKey:@"address"];
          [v37 setObject:v46 forKeyedSubscript:@"LocalAddress"];

          v47 = [v35 objectForKey:@"port"];
          [v37 setObject:v47 forKeyedSubscript:@"LocalPort"];

          v48 = [v64 objectForKey:@"address"];
          [v37 setObject:v48 forKeyedSubscript:@"RemoteAddress"];

          v49 = [v64 objectForKey:@"port"];
          [v37 setObject:v49 forKeyedSubscript:@"RemotePort"];

          descriptionDictionary14 = [sourceCopy descriptionDictionary];
          v51 = [descriptionDictionary14 objectForCFString:*MEMORY[0x277D2CB08]];
          [v37 setObject:v51 forKeyedSubscript:@"ProcessPID"];

          v52 = MEMORY[0x277D3F1F8];
          descriptionDictionary15 = [sourceCopy descriptionDictionary];
          v54 = [descriptionDictionary15 objectForCFString:*MEMORY[0x277D2CB50]];
          v55 = [v52 stringFromTrafficClass:{objc_msgSend(v54, "intValue")}];
          [v37 setObject:v55 forKeyedSubscript:@"TrafficClass"];

          descriptionDictionary16 = [sourceCopy descriptionDictionary];
          v57 = MEMORY[0x277D2CAB8];
          v58 = [descriptionDictionary16 objectForCFString:*MEMORY[0x277D2CAB8]];

          if (v58)
          {
            descriptionDictionary17 = [sourceCopy descriptionDictionary];
            v60 = [descriptionDictionary17 objectForCFString:*v57];
            bOOLValue3 = [v60 BOOLValue];
          }

          else
          {
            bOOLValue3 = 0;
          }

          v63 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue3];
          [v37 setObject:v63 forKeyedSubscript:@"isChannelArch"];

          [(PLOperator *)selfCopy logEntry:v37];
          v26 = v66;
        }

        else
        {
          v62 = PLLogProcessNetwork(v27);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            [PLProcessNetworkAgent logEventPointConnectionEvent:forSource:];
          }
        }
      }

      else
      {
        v23 = PLLogProcessNetwork(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [PLProcessNetworkAgent logEventPointConnectionEvent:forSource:];
        }
      }
    }

LABEL_21:
  }
}

- (void)timestampNetConnectEntry:(id)entry withEventType:(signed __int16)type withSource:(id)source
{
  typeCopy = type;
  v48 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  sourceCopy = source;
  v9 = mach_continuous_time();
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v11 = [MEMORY[0x277CCABB0] numberWithShort:typeCopy];
  [entryCopy setObject:v11 forKeyedSubscript:@"EventType"];

  [entryCopy setEntryDate:monotonicDate];
  if (typeCopy <= 1)
  {
    descriptionDictionary = [sourceCopy descriptionDictionary];
    v13 = MEMORY[0x277D2CB48];
    v14 = [descriptionDictionary objectForCFString:*MEMORY[0x277D2CB48]];

    if (!v14)
    {
      v32 = PLLogProcessNetwork(v15);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [PLProcessNetworkAgent timestampNetConnectEntry:sourceCopy withEventType:? withSource:?];
      }

      v33 = &unk_2871460F0;
      goto LABEL_17;
    }

    descriptionDictionary2 = [sourceCopy descriptionDictionary];
    v17 = [descriptionDictionary2 objectForCFString:*v13];
    unsignedLongLongValue = [v17 unsignedLongLongValue];

    if (typeCopy == 1)
    {
      descriptionDictionary3 = [sourceCopy descriptionDictionary];
      v20 = MEMORY[0x277D2CAC0];
      v21 = [descriptionDictionary3 objectForCFString:*MEMORY[0x277D2CAC0]];

      if (!v21)
      {
        v35 = PLLogProcessNetwork(v22);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          [PLProcessNetworkAgent timestampNetConnectEntry:sourceCopy withEventType:? withSource:?];
        }

        v33 = &unk_287146108;
        goto LABEL_17;
      }

      descriptionDictionary4 = [sourceCopy descriptionDictionary];
      v24 = [descriptionDictionary4 objectForCFString:*v20];
      integerValue = [v24 integerValue];

      unsignedLongLongValue += integerValue;
    }

    [PLUtilities secondsFromMachTime:v9];
    v27 = v26;
    v28 = [PLUtilities secondsFromMachTime:unsignedLongLongValue];
    v30 = v27 - v29;
    if (v30 >= 0.0)
    {
      v31 = [monotonicDate dateByAddingTimeInterval:-v30];
      [entryCopy setEntryDate:v31];

      goto LABEL_18;
    }

    v34 = PLLogProcessNetwork(v28);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      descriptionDictionary5 = [sourceCopy descriptionDictionary];
      v37 = [monotonicDate dateByAddingTimeInterval:-v30];
      v38 = 138413314;
      v39 = descriptionDictionary5;
      v40 = 2112;
      v41 = monotonicDate;
      v42 = 2112;
      v43 = v37;
      v44 = 2048;
      v45 = v9;
      v46 = 2048;
      v47 = unsignedLongLongValue;
      _os_log_debug_impl(&dword_25EE51000, v34, OS_LOG_TYPE_DEBUG, "Flow from %@ ends in the future -- Now: %@ End Date: %@ currentMachTime: %llu providedMachTime: %llu", &v38, 0x34u);
    }

    v33 = &unk_287146120;
LABEL_17:
    [entryCopy setObject:v33 forKeyedSubscript:@"EventType"];
  }

LABEL_18:
}

- (void)logEventBackwardUsage
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D6B6A8];
  v16[0] = *MEMORY[0x277D6B6D0];
  v16[1] = v3;
  v17[0] = MEMORY[0x277CBEC38];
  v17[1] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
  {
    usageFeed = [(PLProcessNetworkAgent *)self usageFeed];
    processes = [(PLProcessNetworkAgent *)self processes];
    v7 = *MEMORY[0x277D6B770];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__PLProcessNetworkAgent_logEventBackwardUsage__block_invoke_285;
    v13[3] = &unk_279A5D5C0;
    v13[4] = self;
    [usageFeed usageToDateWithOptionsFor:processes nameKind:v7 options:v4 reply:v13];
  }

  else
  {
    usageFeed2 = [(PLProcessNetworkAgent *)self usageFeed];
    v9 = *MEMORY[0x277D6B770];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__PLProcessNetworkAgent_logEventBackwardUsage__block_invoke;
    v15[3] = &unk_279A5D5C0;
    v15[4] = self;
    v10 = [usageFeed2 usageToDateWithOptionsFor:0 nameKind:v9 options:v4 reply:v15];

    v12 = PLLogProcessNetwork(v11);
    usageFeed = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EE51000, usageFeed, OS_LOG_TYPE_DEFAULT, "successfully retrieved network usage data", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PLProcessNetworkAgent logEventBackwardUsage];
    }
  }
}

void __46__PLProcessNetworkAgent_logEventBackwardUsage__block_invoke_285(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLogProcessNetwork(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __46__PLProcessNetworkAgent_logEventBackwardUsage__block_invoke_285_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = [v3 copy];
  [v5 logEventBackwardUsageWithOutcome:v6];
}

- (void)logEventForwardLowInternet
{
  v3 = CFPreferencesCopyValue(@"deviceConfigType", @"com.apple.symptomsd", @"_networkd", *MEMORY[0x277CBF030]);
  if (v3)
  {
    v6 = v3;
    v4 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LowInternet"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
    [v5 setObject:v6 forKeyedSubscript:@"Mode"];
    [(PLOperator *)self logEntry:v5];

    v3 = v6;
  }
}

- (BOOL)outcomeHasDataUsage:(id)usage
{
  v20[6] = *MEMORY[0x277D85DE8];
  usageCopy = usage;
  v4 = *MEMORY[0x277D6B740];
  v20[0] = *MEMORY[0x277D6B738];
  v20[1] = v4;
  v5 = *MEMORY[0x277D6B730];
  v20[2] = *MEMORY[0x277D6B728];
  v20[3] = v5;
  v6 = *MEMORY[0x277D6B750];
  v20[4] = *MEMORY[0x277D6B748];
  v20[5] = v6;
  [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:6];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [usageCopy valueForKey:{*(*(&v15 + 1) + 8 * i), v15}];
        [v11 doubleValue];
        v13 = v12;

        if (v13 > 0.0)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)logEventBackwardUsageWithOutcome:(id)outcome
{
  v91 = *MEMORY[0x277D85DE8];
  outcomeCopy = outcome;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v49 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"UsageDiff"];
  v3 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Usage"];
  v61 = v3;
  if (outcomeCopy && (v3 = [outcomeCopy count]) != 0)
  {
    v4 = PLLogProcessNetwork(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [outcomeCopy count];
      _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_DEFAULT, "NetworkUsage outcome has payload size: %lu", &buf, 0xCu);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    array = [MEMORY[0x277CBEB18] array];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = outcomeCopy;
    v5 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
    if (v5)
    {
      v59 = *MEMORY[0x277D6B770];
      v60 = *v79;
      v58 = *MEMORY[0x277D6B760];
      v56 = *MEMORY[0x277D6B738];
      v57 = *MEMORY[0x277D6B768];
      v54 = *MEMORY[0x277D6B728];
      v55 = *MEMORY[0x277D6B740];
      v53 = *MEMORY[0x277D6B730];
      v52 = *MEMORY[0x277D6B718];
      v6 = *MEMORY[0x277D6B720];
      v7 = *MEMORY[0x277D6B778];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v79 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v78 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v61 withDate:monotonicDate];
          v12 = [v9 valueForKey:v59];
          [v11 setObject:v12 forKeyedSubscript:@"ProcessName"];
          v13 = [v9 valueForKey:v58];
          [v11 setObject:v13 forKeyedSubscript:@"BundleName"];

          v14 = [v9 valueForKey:v57];
          [v11 setObject:v14 forKeyedSubscript:@"ExtensionName"];

          v15 = [v9 valueForKey:v56];
          [v11 setObject:v15 forKeyedSubscript:@"WifiIn"];

          v16 = [v9 valueForKey:v55];
          [v11 setObject:v16 forKeyedSubscript:@"WifiOut"];

          v17 = [v9 valueForKey:v54];
          [v11 setObject:v17 forKeyedSubscript:@"CellIn"];

          v18 = [v9 valueForKey:v53];
          [v11 setObject:v18 forKeyedSubscript:@"CellOut"];

          v19 = [v9 valueForKey:v52];
          [v11 setObject:v19 forKeyedSubscript:@"BTCompanionIn"];

          v20 = [v9 valueForKey:v6];
          [v11 setObject:v20 forKeyedSubscript:@"BTCompanionOut"];

          v21 = [v9 valueForKey:v7];
          [v11 setObject:v21 forKeyedSubscript:@"SinceTime"];

          *&buf = 0;
          *(&buf + 1) = &buf;
          v88 = 0x2020000000;
          v89 = 0;
          dictionary2 = [v11 dictionary];
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __58__PLProcessNetworkAgent_logEventBackwardUsageWithOutcome___block_invoke;
          v75[3] = &unk_279A5D5E8;
          p_buf = &buf;
          v23 = v11;
          v76 = v23;
          [dictionary2 enumerateKeysAndObjectsUsingBlock:v75];

          if (*(*(&buf + 1) + 24) > 0.0)
          {
            [dictionary setObject:v23 forKeyedSubscript:v12];
            lastEntryDate = [(PLProcessNetworkAgent *)self lastEntryDate];
            v25 = lastEntryDate == 0;

            if (!v25)
            {
              v26 = objc_alloc(MEMORY[0x277D3F190]);
              lastEntryDate2 = [(PLProcessNetworkAgent *)self lastEntryDate];
              v28 = [v26 initWithEntryKey:v49 withDate:lastEntryDate2];

              [v28 setObject:monotonicDate forKeyedSubscript:@"timestampEnd"];
              [v28 setObject:v12 forKeyedSubscript:@"ProcessName"];
              v29 = [v23 objectForKeyedSubscript:@"BundleName"];
              [v28 setObject:v29 forKeyedSubscript:@"BundleName"];

              v30 = [v23 objectForKeyedSubscript:@"ExtensionName"];
              [v28 setObject:v30 forKeyedSubscript:@"ExtensionName"];

              dictionary3 = [v23 dictionary];
              v72[0] = MEMORY[0x277D85DD0];
              v72[1] = 3221225472;
              v72[2] = __58__PLProcessNetworkAgent_logEventBackwardUsageWithOutcome___block_invoke_2;
              v72[3] = &unk_279A5C118;
              v32 = v28;
              v73 = v32;
              v74 = v23;
              [dictionary3 enumerateKeysAndObjectsUsingBlock:v72];

              lastProcessNameToNetworkUsageEntry = [(PLProcessNetworkAgent *)self lastProcessNameToNetworkUsageEntry];
              v34 = [lastProcessNameToNetworkUsageEntry objectForKeyedSubscript:v12];

              v68 = 0;
              v69 = &v68;
              v35 = *(*(&buf + 1) + 24);
              v70 = 0x2020000000;
              v71 = v35;
              if (v34)
              {
                v71 = 0.0;
                dictionary4 = [v34 dictionary];
                v64[0] = MEMORY[0x277D85DD0];
                v64[1] = 3221225472;
                v64[2] = __58__PLProcessNetworkAgent_logEventBackwardUsageWithOutcome___block_invoke_3;
                v64[3] = &unk_279A5D610;
                v65 = v32;
                v66 = v34;
                v67 = &v68;
                [dictionary4 enumerateKeysAndObjectsUsingBlock:v64];

                v35 = v69[3];
              }

              if (v35 > 0.0)
              {
                [array addObject:v32];
              }

              _Block_object_dispose(&v68, 8);
            }
          }

          _Block_object_dispose(&buf, 8);
          objc_autoreleasePoolPop(v10);
        }

        v5 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
      }

      while (v5);
    }

    if ([(PLOperator *)self isDebugEnabled]&& !+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
    {
      v85 = v61;
      allValues = [dictionary allValues];
      v86 = allValues;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      [(PLOperator *)self logEntries:v38 withGroupID:v61];
    }

    lastEntryDate3 = [(PLProcessNetworkAgent *)self lastEntryDate];

    if (lastEntryDate3)
    {
      if (![array count] && +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"))
      {
        v40 = objc_alloc(MEMORY[0x277D3F190]);
        lastEntryDate4 = [(PLProcessNetworkAgent *)self lastEntryDate];
        v42 = [v40 initWithEntryKey:v49 withDate:lastEntryDate4];

        v84 = v42;
        v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
        [(PLOperator *)self postEntries:v43];
      }

      v82 = v49;
      v83 = array;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      [(PLOperator *)self logEntries:v44 withGroupID:v49];

      lastEntryDate5 = [(PLProcessNetworkAgent *)self lastEntryDate];
      [(PLProcessNetworkAgent *)self accountWithNetworkUsageDiffEntries:array withStartDate:lastEntryDate5 withEndDate:monotonicDate];
    }

    [(PLProcessNetworkAgent *)self setLastEntryDate:monotonicDate];
    [(PLProcessNetworkAgent *)self setLastProcessNameToNetworkUsageEntry:dictionary];
  }

  else
  {
    v46 = PLLogProcessNetwork(v3);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [PLProcessNetworkAgent logEventBackwardUsageWithOutcome:];
    }

    dictionary = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v49 withDate:monotonicDate];
    [dictionary setIsErrorEntry:1];
    [dictionary setObject:@"NetworkUsage outcome has no payload" forKeyedSubscript:@"__PLEntryErrorString__"];
    [(PLOperator *)self logEntry:dictionary];
  }
}

void __58__PLProcessNetworkAgent_logEventBackwardUsageWithOutcome___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v9];
    [v7 doubleValue];
    *(*(*(a1 + 40) + 8) + 24) = v8 + *(*(*(a1 + 40) + 8) + 24);
  }
}

void __58__PLProcessNetworkAgent_logEventBackwardUsageWithOutcome___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v8];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

void __58__PLProcessNetworkAgent_logEventBackwardUsageWithOutcome___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v14];
    [v7 doubleValue];
    v9 = v8;
    v10 = [*(a1 + 40) objectForKeyedSubscript:v14];
    [v10 doubleValue];
    v12 = v9 - v11;

    *(*(*(a1 + 48) + 8) + 24) = v12 + *(*(*(a1 + 48) + 8) + 24);
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    [*(a1 + 32) setObject:v13 forKeyedSubscript:v14];
  }
}

- (void)setLastNetworkBitmapTimestampFor:(id)for
{
  v26 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v5 = +[PLUtilities deviceRebooted];
  if (v5)
  {
    unsignedLongLongValue = 0;
  }

  else
  {
    v7 = PLLogProcessNetwork(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = forCopy;
      _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_DEFAULT, "[%@]: Detected that powerlog restarted", &v22, 0xCu);
    }

    v8 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"NetworkBitmap"];
    v9 = objc_msgSend_storage(self);
    v10 = [v9 lastEntryForKey:v8];

    if (v10 && (+[PLUtilities deviceBootTime](PLUtilities, "deviceBootTime"), v12 = objc_claimAutoreleasedReturnValue(), [v10 entryDate], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "compare:", v13), v13, v12, v14 == -1))
    {
      v16 = PLLogProcessNetwork(v11);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v10 objectForKeyedSubscript:@"MachAbsoluteEndTime"];
        v22 = 138412546;
        v23 = forCopy;
        v24 = 2112;
        v25 = v17;
        _os_log_impl(&dword_25EE51000, v16, OS_LOG_TYPE_DEFAULT, "[%@]: Recovered last entry's mach time: %@", &v22, 0x16u);
      }

      v15 = [v10 objectForKeyedSubscript:@"MachAbsoluteEndTime"];
      unsignedLongLongValue = [v15 unsignedLongLongValue];
    }

    else
    {
      v15 = PLLogProcessNetwork(v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = forCopy;
        _os_log_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEFAULT, "[%@]: Last entry's mach time not available", &v22, 0xCu);
      }

      unsignedLongLongValue = 0;
    }
  }

  v18 = +[PLUtilities getCurrMachAbsTimeInSecs];
  v19 = v18 - 3072;
  if (v18 < 0xC00)
  {
    v19 = 0;
  }

  if (v19 <= unsignedLongLongValue)
  {
    v19 = unsignedLongLongValue;
  }

  v20 = v19 & 0xFFFFFFFFFFFFFFF8;
  v21 = PLLogProcessNetwork([(PLProcessNetworkAgent *)self setLastNetworkBitmapTimestamp:v19 & 0xFFFFFFFFFFFFFFF8]);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = forCopy;
    v24 = 2048;
    v25 = v20;
    _os_log_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEFAULT, "[%@]: Network bitmaps initialized start time: %llu.", &v22, 0x16u);
  }
}

- (void)getNetWorkBitmapForEndTime:(unint64_t)time andSysdiagnoseTrigger:(BOOL)trigger
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (trigger)
  {
    v7 = @"Sysdiagnose Bitmap";
  }

  else
  {
    v7 = @"Bitmap";
  }

  v21 = *MEMORY[0x277D6B5F0];
  v22[0] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  usageFeed = [(PLProcessNetworkAgent *)self usageFeed];
  lastNetworkBitmapTimestamp = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke;
  v15[3] = &unk_279A5D638;
  v16 = v7;
  selfCopy = self;
  triggerCopy = trigger;
  v11 = [usageFeed networkBitmapsToDateWithOptionsFor:0 startTime:lastNetworkBitmapTimestamp endTime:time options:v8 reply:v15];

  v13 = PLLogProcessNetwork(v12);
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEFAULT, "[%@]: successfully obtained network bitmaps", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [PLProcessNetworkAgent getNetWorkBitmapForEndTime:andSysdiagnoseTrigger:];
  }
}

void __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = PLLogProcessNetwork(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke_cold_1(a1);
    }

LABEL_4:

    goto LABEL_5;
  }

  if (!v5)
  {
    v8 = PLLogProcessNetwork(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke_cold_3(a1, v8);
    }

    goto LABEL_4;
  }

  v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277D6B5F8]];
  v10 = [v9 unsignedLongLongValue];

  v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277D6B5E0]];
  v12 = [v11 unsignedLongLongValue];

  v14 = PLLogProcessNetwork(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v24 = 138412802;
    v25 = v15;
    v26 = 2048;
    v27 = v12;
    v28 = 2048;
    v29 = v10;
    _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEFAULT, "[%@]: Network bitmaps endtime from symptoms: %llu, start time: %llu", &v24, 0x20u);
  }

  if (v12 <= v10)
  {
    v20 = PLLogProcessNetwork(v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke_cold_2();
    }
  }

  else
  {
    [*(a1 + 40) aggregateAndLogNetworkBitmaps:v5 withStartTime:v10 andEndTime:v12];
    [*(a1 + 40) setLastNetworkBitmapTimestamp:v12];
    if (*(a1 + 48))
    {
      if (v12 < [*(a1 + 40) curNetworkBitmapTimestampForSysdiagnoseTrigger])
      {
        v17 = [*(a1 + 40) curNetworkBitmapTimestampForSysdiagnoseTrigger];
        if (v17 - v12 >= 8)
        {
          v18 = PLLogProcessNetwork(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 32);
            v24 = 138412290;
            v25 = v19;
            _os_log_impl(&dword_25EE51000, v18, OS_LOG_TYPE_DEFAULT, "[%@]: trying to retrieve more network bitmaps", &v24, 0xCu);
          }

          [*(a1 + 40) logEventBackwardNetworkBitmapsSysdiagnoseTrigger];
        }
      }
    }

    else
    {
      v21 = +[PLUtilities getCurrMachAbsTimeInSecs];
      if (v21 > v12 && v21 - v12 >= 0x800)
      {
        v22 = PLLogProcessNetwork(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a1 + 32);
          v24 = 138412290;
          v25 = v23;
          _os_log_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEFAULT, "[%@]: trying to retrieve more network bitmaps", &v24, 0xCu);
        }

        [*(a1 + 40) logEventBackwardNetworkBitmaps];
      }
    }
  }

LABEL_5:
}

- (void)logEventBackwardNetworkBitmapsSysdiagnoseTrigger
{
  v25 = *MEMORY[0x277D85DE8];
  lastNetworkBitmapTimestamp = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
  v4 = PLLogProcessNetwork(lastNetworkBitmapTimestamp);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (lastNetworkBitmapTimestamp == -1)
  {
    if (v5)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: initialize last network bitmap log timestamp", &v21, 2u);
    }

    [(PLProcessNetworkAgent *)self setLastNetworkBitmapTimestampFor:@"Sysdiagnose Bitmap"];
    [(PLProcessNetworkAgent *)self logEventBackwardNetworkBitmapsSysdiagnoseTrigger];
  }

  else
  {
    if (v5)
    {
      v21 = 134217984;
      lastNetworkBitmapTimestamp2 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
      _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Network bitmaps start time: %llu.", &v21, 0xCu);
    }

    v6 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp]+ 1024;
    if ([(PLProcessNetworkAgent *)self curNetworkBitmapTimestampForSysdiagnoseTrigger]== -1)
    {
      v7 = PLLogProcessNetwork([(PLProcessNetworkAgent *)self setCurNetworkBitmapTimestampForSysdiagnoseTrigger:+[PLUtilities getCurrMachAbsTimeInSecs]]);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        curNetworkBitmapTimestampForSysdiagnoseTrigger = [(PLProcessNetworkAgent *)self curNetworkBitmapTimestampForSysdiagnoseTrigger];
        v21 = 134217984;
        lastNetworkBitmapTimestamp2 = curNetworkBitmapTimestampForSysdiagnoseTrigger;
        _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Setting network bitmaps current time for sysdiagnose trigger: %llu.", &v21, 0xCu);
      }
    }

    curNetworkBitmapTimestampForSysdiagnoseTrigger2 = [(PLProcessNetworkAgent *)self curNetworkBitmapTimestampForSysdiagnoseTrigger];
    v10 = PLLogProcessNetwork(curNetworkBitmapTimestampForSysdiagnoseTrigger2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134218240;
      lastNetworkBitmapTimestamp2 = v6;
      v23 = 2048;
      v24 = curNetworkBitmapTimestampForSysdiagnoseTrigger2;
      _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Network bitmaps end time: %llu, curr time: %llu.", &v21, 0x16u);
    }

    if (curNetworkBitmapTimestampForSysdiagnoseTrigger2 > v6)
    {
      v12 = PLLogProcessNetwork(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        lastNetworkBitmapTimestamp3 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
        v21 = 134218240;
        lastNetworkBitmapTimestamp2 = lastNetworkBitmapTimestamp3;
        v23 = 2048;
        v24 = v6;
        _os_log_impl(&dword_25EE51000, v12, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Requesting network bitmaps from symptoms with start time: %llu, end time: %llu.", &v21, 0x16u);
      }

      selfCopy2 = self;
      v15 = v6;
LABEL_21:
      [(PLProcessNetworkAgent *)selfCopy2 getNetWorkBitmapForEndTime:v15 andSysdiagnoseTrigger:1];
      return;
    }

    lastNetworkBitmapTimestamp4 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
    v17 = curNetworkBitmapTimestampForSysdiagnoseTrigger2 - lastNetworkBitmapTimestamp4;
    v18 = PLLogProcessNetwork(lastNetworkBitmapTimestamp4);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17 >= 8)
    {
      if (v19)
      {
        lastNetworkBitmapTimestamp5 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
        v21 = 134218240;
        lastNetworkBitmapTimestamp2 = lastNetworkBitmapTimestamp5;
        v23 = 2048;
        v24 = curNetworkBitmapTimestampForSysdiagnoseTrigger2;
        _os_log_impl(&dword_25EE51000, v18, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Requesting network bitmaps from symptoms with start time: %llu, curr time: %llu.", &v21, 0x16u);
      }

      selfCopy2 = self;
      v15 = curNetworkBitmapTimestampForSysdiagnoseTrigger2;
      goto LABEL_21;
    }

    if (v19)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_25EE51000, v18, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Requested network bitmap is too recent.", &v21, 2u);
    }
  }
}

- (void)logEventBackwardNetworkBitmaps
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp]== -1)
  {
    v7 = PLLogProcessNetwork(-1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_DEFAULT, "[Bitmap]: initialize last network bitmap log timestamp", &v9, 2u);
    }

    [(PLProcessNetworkAgent *)self setLastNetworkBitmapTimestampFor:@"Bitmap"];
    [(PLProcessNetworkAgent *)self logEventBackwardNetworkBitmaps];
  }

  else
  {
    v3 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp]+ 1024;
    v4 = +[PLUtilities getCurrMachAbsTimeInSecs];
    v5 = PLLogProcessNetwork(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218496;
      lastNetworkBitmapTimestamp = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
      v11 = 2048;
      v12 = v3;
      v13 = 2048;
      v14 = v4;
      _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_DEFAULT, "[Bitmap]: Requesting network bitmaps from symptoms with start time: %llu, end time: %llu, curr time: %llu.", &v9, 0x20u);
    }

    if (v4 <= v3 || v4 - v3 <= 0x3FF)
    {
      v8 = PLLogProcessNetwork(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PLProcessNetworkAgent logEventBackwardNetworkBitmaps];
      }
    }

    else
    {
      [(PLProcessNetworkAgent *)self getNetWorkBitmapForEndTime:v3 andSysdiagnoseTrigger:0];
    }
  }
}

- (void)accountWithNetworkUsageDiffEntries:(id)entries withStartDate:(id)date withEndDate:(id)endDate
{
  v92 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  dateCopy = date;
  endDateCopy = endDate;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if ((isHomePod & 1) == 0)
  {
    v11 = PLLogProcessNetwork(isHomePod);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v87 = entriesCopy;
      v88 = 2112;
      v89 = dateCopy;
      v90 = 2112;
      v91 = endDateCopy;
      _os_log_debug_impl(&dword_25EE51000, v11, OS_LOG_TYPE_DEBUG, "networkUsageDiffEntries=%@, startDate=%@, endDate=%@", buf, 0x20u);
    }

    v65 = endDateCopy;
    v66 = dateCopy;

    v12 = [&unk_287148CE8 mutableCopy];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v13 = entriesCopy;
    v14 = [v13 countByEnumeratingWithState:&v80 objects:v85 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v81;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v81 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v80 + 1) + 8 * i);
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = __86__PLProcessNetworkAgent_accountWithNetworkUsageDiffEntries_withStartDate_withEndDate___block_invoke;
          v77[3] = &unk_279A5C118;
          v78 = v12;
          v79 = v18;
          [v78 enumerateKeysAndObjectsUsingBlock:v77];
        }

        v15 = [v13 countByEnumeratingWithState:&v80 objects:v85 count:16];
      }

      while (v15);
    }

    v19 = [v12 objectForKeyedSubscript:@"WifiIn"];
    [v19 doubleValue];
    v21 = v20;
    v22 = [v12 objectForKeyedSubscript:@"WifiOut"];
    [v22 doubleValue];
    v24 = v21 + v23;

    v25 = [v12 objectForKeyedSubscript:@"CellIn"];
    [v25 doubleValue];
    v27 = v26;
    v28 = [v12 objectForKeyedSubscript:@"CellOut"];
    [v28 doubleValue];
    v30 = v27 + v29;

    v32 = PLLogProcessNetwork(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [PLProcessNetworkAgent accountWithNetworkUsageDiffEntries:v32 withStartDate:v24 withEndDate:v30];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v69 = dictionary2;
    if (v24 + v30 > 0.0)
    {
      v64 = entriesCopy;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      obj = v13;
      v71 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
      if (v71)
      {
        v34 = @"BundleName";
        v35 = @"ProcessName";
        v68 = *v74;
        do
        {
          for (j = 0; j != v71; ++j)
          {
            if (*v74 != v68)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v73 + 1) + 8 * j);
            v38 = [v37 objectForKeyedSubscript:v34];
            v39 = [v37 objectForKeyedSubscript:v35];
            v40 = [v37 objectForKeyedSubscript:@"ExtensionName"];
            v41 = v40;
            v72 = v39;
            if (v38)
            {
              v42 = v38;
            }

            else
            {
              v42 = v39;
            }

            if (v40)
            {
              v42 = v40;
            }

            v43 = v42;
            v44 = 0.0;
            v45 = 0.0;
            if (v24 > 0.0)
            {
              [v37 objectForKeyedSubscript:@"WifiIn"];
              v46 = v35;
              v47 = v34;
              v49 = v48 = v12;
              [v49 doubleValue];
              v51 = v50;
              v52 = [v37 objectForKeyedSubscript:@"WifiOut"];
              [v52 doubleValue];
              v45 = (v51 + v53) / v24;

              v12 = v48;
              v34 = v47;
              v35 = v46;
            }

            v54 = [MEMORY[0x277CCABB0] numberWithDouble:v45];
            [dictionary setObject:v54 forKeyedSubscript:v43];

            if (v30 > 0.0)
            {
              v55 = [v37 objectForKeyedSubscript:@"CellIn"];
              [v55 doubleValue];
              v57 = v56;
              v58 = [v37 objectForKeyedSubscript:@"CellOut"];
              [v58 doubleValue];
              v44 = (v57 + v59) / v30;
            }

            v60 = [MEMORY[0x277CCABB0] numberWithDouble:v44];
            [v69 setObject:v60 forKeyedSubscript:v43];
          }

          v71 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
        }

        while (v71);
      }

      entriesCopy = v64;
    }

    v61 = PLLogProcessNetwork(dictionary2);
    endDateCopy = v65;
    dateCopy = v66;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      [PLProcessNetworkAgent accountWithNetworkUsageDiffEntries:withStartDate:withEndDate:];
    }

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0] createDistributionEventIntervalWithDistributionID:37 withChildNodeNameToWeight:dictionary withStartDate:v66 withEndDate:v65];

    mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0]2 createDistributionEventIntervalWithDistributionID:38 withChildNodeNameToWeight:v69 withStartDate:v66 withEndDate:v65];
  }
}

void __86__PLProcessNetworkAgent_accountWithNetworkUsageDiffEntries_withStartDate_withEndDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 32);
  v5 = a2;
  v11 = [v4 objectForKeyedSubscript:v5];
  [v11 doubleValue];
  v7 = v6;
  v8 = [*(a1 + 40) objectForKeyedSubscript:v5];
  [v8 doubleValue];
  v10 = [v3 numberWithDouble:v7 + v9];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:v5];
}

- (void)handleHighBWStartCallback:(id)callback
{
  callbackCopy = callback;
  v5 = PLLogProcessNetwork(callbackCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLProcessNetworkAgent handleHighBWStartCallback:];
  }

  v6 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"HighCellularBWTransactions"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  v8 = [callbackCopy objectForKeyedSubscript:@"HighThroughputStartReason"];
  [v7 setObject:v8 forKeyedSubscript:@"HighThroughputStartReason"];

  v9 = [callbackCopy objectForKeyedSubscript:@"HighThroughputLinkRxTputAfterStart"];
  [v7 setObject:v9 forKeyedSubscript:@"HighThroughputLinkRxTputAfterStart"];

  v10 = [callbackCopy objectForKeyedSubscript:@"HighThroughputLinkTxTputAfterStart"];
  [v7 setObject:v10 forKeyedSubscript:@"HighThroughputLinkTxTputAfterStart"];

  v11 = [callbackCopy objectForKeyedSubscript:@"HighThroughputOriginators"];
  v12 = [v11 componentsJoinedByString:{@", "}];
  [v7 setObject:v12 forKeyedSubscript:@"HighThroughputOriginators"];

  [(PLOperator *)self logEntry:v7];
}

- (void)handleHighBWEndCallback:(id)callback
{
  v34 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v4 = PLLogProcessNetwork(callbackCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLProcessNetworkAgent handleHighBWEndCallback:];
  }

  v22 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"HighCellularBWTransactionsDetail"];
  v5 = [objc_alloc(MEMORY[0x277D3F1E8]) initWithEntryKey:v22];
  v6 = [callbackCopy objectForKeyedSubscript:@"HighThroughputStartReason"];
  [v5 setObject:v6 forKeyedSubscript:@"HighThroughputStartReason"];

  v7 = [callbackCopy objectForKeyedSubscript:@"HighThroughputLinkRxTputAfterStart"];
  [v5 setObject:v7 forKeyedSubscript:@"HighThroughputLinkRxTputAfterStart"];

  v8 = [callbackCopy objectForKeyedSubscript:@"HighThroughputLinkTxTputAfterStart"];
  [v5 setObject:v8 forKeyedSubscript:@"HighThroughputLinkTxTputAfterStart"];

  v9 = [callbackCopy objectForKeyedSubscript:@"HighThroughputOriginators"];
  v10 = [v9 componentsJoinedByString:{@", "}];
  [v5 setObject:v10 forKeyedSubscript:@"HighThroughputOriginators"];

  v11 = [callbackCopy objectForKeyedSubscript:@"HighThroughputDuration"];
  v26 = v5;
  [v5 setObject:v11 forKeyedSubscript:@"HighThroughputDuration"];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = callbackCopy;
  obj = [callbackCopy objectForKeyedSubscript:@"HighThroughputParticipants"];
  v12 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        v31[0] = @"Participant";
        v17 = [v16 objectForKeyedSubscript:?];
        v32[0] = v17;
        v31[1] = @"Duration";
        v18 = [v16 objectForKeyedSubscript:?];
        v32[1] = v18;
        v31[2] = @"RxBytes";
        v19 = [v16 objectForKeyedSubscript:@"RxBytes"];
        v32[2] = v19;
        v31[3] = @"TxBytes";
        v20 = [v16 objectForKeyedSubscript:@"TxBytes"];
        v32[3] = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];

        [v26 setObject:&unk_287146138 forKeyedSubscript:v21];
        ++v15;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v13);
  }

  [(PLOperator *)self logEntry:v26];
}

- (void)logEventPointConnectionEvent:forSource:.cold.1()
{
  OUTLINED_FUNCTION_6_5();
  v1 = [v0 className];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)logEventPointConnectionEvent:forSource:.cold.2()
{
  OUTLINED_FUNCTION_6_5();
  v2 = [v1 className];
  v3 = [v0 descriptionDictionary];
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)timestampNetConnectEntry:(void *)a1 withEventType:withSource:.cold.1(void *a1)
{
  v1 = [a1 descriptionDictionary];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)timestampNetConnectEntry:(void *)a1 withEventType:withSource:.cold.2(void *a1)
{
  v1 = [a1 descriptionDictionary];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __46__PLProcessNetworkAgent_logEventBackwardUsage__block_invoke_285_cold_1()
{
  OUTLINED_FUNCTION_6_5();
  v1 = [*(v0 + 32) processes];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)getNetWorkBitmapForEndTime:andSysdiagnoseTrigger:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "[%@]: failed to retrieve network bitmaps", v1, 0xCu);
}

void __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = 138412546;
  v5 = v1;
  OUTLINED_FUNCTION_5_2();
  v6 = v2;
  _os_log_error_impl(&dword_25EE51000, v3, OS_LOG_TYPE_ERROR, "[%@]: error in network bitmap callback: %@", &v4, 0x16u);
}

void __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6_5();
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 32);
  v4 = [*(v2 + 40) lastNetworkBitmapTimestamp];
  v5 = 138412802;
  v6 = v3;
  v7 = 2048;
  v8 = v1;
  v9 = 2048;
  v10 = v4;
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "[%@]: End time %llu smaller than start time %llu.", &v5, 0x20u);
}

void __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "[%@]: network bitmap dict is empty", &v3, 0xCu);
}

- (void)accountWithNetworkUsageDiffEntries:(os_log_t)log withStartDate:(double)a2 withEndDate:(double)a3 .cold.1(os_log_t log, double a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "totalWiFiUsage=%f, totalBBUsage=%f", &v3, 0x16u);
}

- (void)accountWithNetworkUsageDiffEntries:withStartDate:withEndDate:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_2();
  v3 = v0;
  _os_log_debug_impl(&dword_25EE51000, v1, OS_LOG_TYPE_DEBUG, "identifierToWeightWiFi=%@, identifierToWeightBB=%@", v2, 0x16u);
}

@end