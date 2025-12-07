@interface PLWifiAgent
+ (BOOL)isScanLoggingEnabled;
+ (id)entryEventBackwardDefinitionAutoJoin;
+ (id)entryEventBackwardDefinitionBeaconProfile;
+ (id)entryEventBackwardDefinitionControlCPUPowerStats;
+ (id)entryEventBackwardDefinitionCumulativeBasic;
+ (id)entryEventBackwardDefinitionCumulativeMultiCore;
+ (id)entryEventBackwardDefinitionDiffBasic;
+ (id)entryEventBackwardDefinitionHotspotPowerStats;
+ (id)entryEventBackwardDefinitionScanForwardStats;
+ (id)entryEventBackwardDefinitionScans;
+ (id)entryEventBackwardDefinitionUserScan;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionAWDLState;
+ (id)entryEventForwardDefinitionHotspotState;
+ (id)entryEventForwardDefinitionModuleInfo;
+ (id)entryEventForwardDefinitionPowerState;
+ (id)entryEventForwardDefinitionRSSI;
+ (id)entryEventForwardDefinitionWifiAssist;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventPointDefinitionAWDLServicesAndPorts;
+ (id)entryEventPointDefinitionJoin;
+ (id)entryEventPointDefinitionRemoteControlSession;
+ (id)entryEventPointDefinitionWake;
+ (id)entryEventPointDefinitionWifiInstantPower;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)hasWiFi;
- (BOOL)isWiFiPowered;
- (BOOL)isWowEnabled;
- (BOOL)isWowSupported;
- (PLWifiAgent)init;
- (id)decodeWifiEventLinkReason:(unsigned int)reason;
- (id)wifiChipsetQuery;
- (id)wifiManufacturerQuery;
- (unint64_t)getCurrentChannelWidth:(__WiFiNetwork *)width;
- (void)findWifiDevice;
- (void)handleRemoteSessionCallbackWithUserInfo:(id)info;
- (void)initOperatorDependancies;
- (void)log;
- (void)logAWDLStateEntry:(id)entry;
- (void)logEventBackwardControlCPUPowerStats;
- (void)logEventBackwardUserScanDuration;
- (void)logEventBackwardWifiProperties:(BOOL)properties;
- (void)logEventBackwardWifiProperties:(id)properties withNetworkProperties:(id)networkProperties shallModelPower:(BOOL)power;
- (void)logEventForwardAWDLState:(id)state;
- (void)logEventForwardHotspotState:(id)state;
- (void)logEventForwardModuleInfo;
- (void)logEventForwardRSSI:(id)i;
- (void)logEventForwardWifiAssist:(BOOL)assist;
- (void)logEventPointAWDLServicesAndPorts;
- (void)logEventPointJoin:(unsigned __int8)join withStats:(id)stats;
- (void)logEventPointRemoteControlSession:(id)session;
- (void)logEventPointWake:(id)wake;
- (void)logEventPointWakeDataFrame:(id)frame withParams:(id)params toEntry:(id)entry;
- (void)logEventPointWakeLink:(id)link withParams:(id)params toEntry:(id)entry;
- (void)logEventPointWakePNO:(id)o withParams:(id)params toEntry:(id)entry;
- (void)logFromAJCallback:(id)callback withFlag:(unsigned __int8)flag withStats:(id)stats;
- (void)logFromLinkChangeCallback:(id)callback withStats:(id)stats;
- (void)logFromWiFiNoAvailableCallback:(id)callback withAvailability:(BOOL)availability withWakeParams:(id)params;
- (void)modelWiFiPower:(id)power;
- (void)modelWiFiSegmentPower:(id)power withDataPower:(double)dataPower withIdlePower:(double)idlePower withLocationPower:(double)locationPower withPipelinePower:(double)pipelinePower withTotalDuration:(double)duration;
- (void)setWiFiAWDLDevice:(__WiFiDeviceClient *)device;
- (void)setWiFiHotspotDevice:(__WiFiDeviceClient *)device;
- (void)setWifiDevice:(__WiFiDeviceClient *)device;
- (void)setWifiManager:(__WiFiManagerClient *)manager;
- (void)updateEventBackwardUserScanDuration:(id)duration;
- (void)writeModeledPower;
@end

@implementation PLWifiAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLWifiAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitionWifiInstantPower
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (+[PLUtilities isPerfPowerMetricd])
  {
    v12[0] = *MEMORY[0x277D3F4E8];
    v10 = *MEMORY[0x277D3F568];
    v11 = &unk_28714B608;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v13[0] = v2;
    v12[1] = *MEMORY[0x277D3F540];
    v8 = @"WifiPower";
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

+ (id)entryEventPointDefinitions
{
  v10[5] = *MEMORY[0x277D85DE8];
  v9[0] = @"Wake";
  v2 = +[PLWifiAgent entryEventPointDefinitionWake];
  v10[0] = v2;
  v9[1] = @"AWDLServicesAndPorts";
  v3 = +[PLWifiAgent entryEventPointDefinitionAWDLServicesAndPorts];
  v10[1] = v3;
  v9[2] = @"Join";
  v4 = +[PLWifiAgent entryEventPointDefinitionJoin];
  v10[2] = v4;
  v9[3] = @"RemoteControlSession";
  v5 = +[PLWifiAgent entryEventPointDefinitionRemoteControlSession];
  v10[3] = v5;
  v9[4] = @"MetricMonitorInstantKeys";
  v6 = +[PLWifiAgent entryEventPointDefinitionWifiInstantPower];
  v10[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

+ (id)entryEventPointDefinitionWake
{
  v38[3] = *MEMORY[0x277D85DE8];
  v37[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v35[0] = *MEMORY[0x277D3F568];
  v35[1] = v2;
  v36[0] = &unk_28714B618;
  v36[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F4A0];
  v35[2] = *MEMORY[0x277D3F550];
  v35[3] = v3;
  v36[2] = MEMORY[0x277CBEC28];
  v36[3] = MEMORY[0x277CBEC38];
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
  v38[0] = v28;
  v37[1] = *MEMORY[0x277D3F540];
  v33[0] = @"WakeReason";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v34[0] = commonTypeDict_StringFormat;
  v33[1] = @"WakeTime";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v34[1] = commonTypeDict_RealFormat;
  v33[2] = @"PID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v34[2] = commonTypeDict_IntegerFormat;
  v33[3] = @"ProcessName";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat_withProcessName];
  v34[3] = commonTypeDict_StringFormat_withProcessName;
  v33[4] = @"WakeLen";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v34[4] = commonTypeDict_IntegerFormat2;
  v33[5] = @"spi";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v34[5] = commonTypeDict_IntegerFormat3;
  v33[6] = @"seqNo";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v34[6] = commonTypeDict_IntegerFormat4;
  v33[7] = @"TCPKAWakeReason";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v34[7] = commonTypeDict_StringFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:8];
  v38[1] = v8;
  v37[2] = *MEMORY[0x277D3F500];
  v31[0] = @"value";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v31[1] = @"unit";
  v32[0] = commonTypeDict_StringFormat3;
  v11 = *MEMORY[0x277D3F5B0];
  v29[0] = *MEMORY[0x277D3F5A8];
  v29[1] = v11;
  v30[0] = &unk_287146360;
  v30[1] = @"s";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v32[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v38[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];

  return v14;
}

+ (id)entryEventPointDefinitionJoin
{
  v34[2] = *MEMORY[0x277D85DE8];
  v33[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v31[0] = *MEMORY[0x277D3F568];
  v31[1] = v2;
  v32[0] = &unk_28714B628;
  v32[1] = MEMORY[0x277CBEC28];
  v31[2] = *MEMORY[0x277D3F550];
  v32[2] = MEMORY[0x277CBEC28];
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  v34[0] = v28;
  v33[1] = *MEMORY[0x277D3F540];
  v29[0] = @"State";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v30[0] = commonTypeDict_IntegerFormat;
  v29[1] = @"Reason";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v30[1] = commonTypeDict_IntegerFormat2;
  v29[2] = @"LPM_LPAS_POWER_BUDGET_REMAINING";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v30[2] = commonTypeDict_IntegerFormat3;
  v29[3] = @"LPM_POWER_CONSUMPTION_DUE_TO_FRTS";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v30[3] = commonTypeDict_IntegerFormat4;
  v29[4] = @"LPM_POWER_CONSUMPTION_DUE_TO_MAC";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v30[4] = commonTypeDict_IntegerFormat5;
  v29[5] = @"LPM_POWER_CONSUMPTION_DUE_TO_RF";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v30[5] = commonTypeDict_IntegerFormat6;
  v29[6] = @"LPM_POWER_CONSUMPTION_DUE_TO_ROAM_SCAN";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v30[6] = commonTypeDict_IntegerFormat7;
  v29[7] = @"LPM_POWER_CONSUMPTION_DUE_TO_USER_SCAN";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v30[7] = commonTypeDict_IntegerFormat8;
  v29[8] = @"LPM_POWER_CONSUMPTION_IN_SELF_MANAGED_LPAS";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v30[8] = commonTypeDict_IntegerFormat9;
  v29[9] = @"LPM_TOTAL_LPAS_DURATION";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v30[9] = commonTypeDict_IntegerFormat10;
  v29[10] = @"LPM_TOTAL_LPAS_POWER_PERIOD_REMAINING";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v30[10] = commonTypeDict_IntegerFormat11;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:11];
  v34[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

  return v12;
}

+ (id)entryEventPointDefinitionRemoteControlSession
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v20 = *MEMORY[0x277D3F568];
  v21 = &unk_28714B608;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"Active";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v19[0] = commonTypeDict_BoolFormat;
  v18[1] = @"BundleID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v19[1] = commonTypeDict_StringFormat_withBundleID;
  v18[2] = @"ConnectionID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v19[2] = commonTypeDict_StringFormat;
  v18[3] = @"DeviceType";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v19[3] = commonTypeDict_IntegerFormat;
  v18[4] = @"Reason";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v19[4] = commonTypeDict_StringFormat2;
  v18[5] = @"TransportType";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v19[5] = commonTypeDict_IntegerFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:6];
  v23[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  return v11;
}

+ (id)entryEventPointDefinitionAWDLServicesAndPorts
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v24 = *MEMORY[0x277D3F568];
  v25 = &unk_28714B608;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v27[0] = v21;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"port_1";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v23[0] = commonTypeDict_IntegerFormat;
  v22[1] = @"port_2";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v23[1] = commonTypeDict_IntegerFormat2;
  v22[2] = @"port_3";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v23[2] = commonTypeDict_IntegerFormat3;
  v22[3] = @"port_4";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v23[3] = commonTypeDict_IntegerFormat4;
  v22[4] = @"service_1";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v23[4] = commonTypeDict_StringFormat;
  v22[5] = @"service_2";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v23[5] = commonTypeDict_StringFormat2;
  v22[6] = @"service_3";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v23[6] = commonTypeDict_StringFormat3;
  v22[7] = @"service_4";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v23[7] = commonTypeDict_StringFormat4;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:8];
  v27[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  return v11;
}

+ (id)entryEventForwardDefinitions
{
  v10[5] = *MEMORY[0x277D85DE8];
  v9[0] = @"AWDLState";
  v2 = +[PLWifiAgent entryEventForwardDefinitionAWDLState];
  v10[0] = v2;
  v9[1] = @"HotspotState";
  v3 = +[PLWifiAgent entryEventForwardDefinitionHotspotState];
  v10[1] = v3;
  v9[2] = @"ModuleInfo";
  v4 = +[PLWifiAgent entryEventForwardDefinitionModuleInfo];
  v10[2] = v4;
  v9[3] = @"WifiAssist";
  v5 = +[PLWifiAgent entryEventForwardDefinitionWifiAssist];
  v10[3] = v5;
  v9[4] = @"RSSI";
  v6 = +[PLWifiAgent entryEventForwardDefinitionRSSI];
  v10[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

+ (id)entryEventForwardDefinitionModuleInfo
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v16 = *MEMORY[0x277D3F568];
  v17 = &unk_28714B608;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[0] = v13;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"ChipInfo";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v15[0] = commonTypeDict_StringFormat;
  v14[1] = @"ManufacturerId";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat;
  v14[2] = @"ModuleInfo";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v15[2] = commonTypeDict_StringFormat2;
  v14[3] = @"ProductId";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v15[3] = commonTypeDict_IntegerFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v11;
}

+ (id)entryEventForwardDefinitionRSSI
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_28714B608;
  v25[1] = MEMORY[0x277CBEC28];
  v24[2] = *MEMORY[0x277D3F508];
  v3 = MEMORY[0x277CBEC38];
  v25[2] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v27[0] = v4;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"RSSI";
  v5 = *MEMORY[0x277D3F5A8];
  v21[0] = &unk_287146378;
  v6 = *MEMORY[0x277D3F520];
  v20[0] = v5;
  v20[1] = v6;
  v18 = *MEMORY[0x277D3F518];
  v19 = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v22[1] = @"ScaledRSSI";
  v23[0] = v8;
  v16[1] = v6;
  v17[0] = &unk_287146378;
  v16[0] = v5;
  v14 = *MEMORY[0x277D3F510];
  v15 = &unk_28714B638;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v23[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v27[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  return v12;
}

+ (id)entryEventForwardDefinitionWifiAssist
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D3F4E8];
  v10 = *MEMORY[0x277D3F568];
  v11 = &unk_28714B608;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v2;
  v12[1] = *MEMORY[0x277D3F540];
  v8 = @"WifiAssistFallback";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v9 = commonTypeDict_BoolFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

+ (id)entryEventForwardDefinitionHotspotState
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_28714B608;
  v14[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"HotSpotOn";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v11[1] = @"ADHS";
  v12[0] = commonTypeDict_BoolFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
  v12[1] = commonTypeDict_BoolFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventForwardDefinitionAWDLState
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_28714B648;
  v14[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"AWDLDown";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v11[1] = @"AWDLRanging";
  v12[0] = commonTypeDict_BoolFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v12[1] = commonTypeDict_IntegerFormat;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventForwardDefinitionPowerState
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D3F4E8];
  v10 = *MEMORY[0x277D3F568];
  v11 = &unk_28714B608;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v2;
  v12[1] = *MEMORY[0x277D3F540];
  v8 = @"PowerOn";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v9 = commonTypeDict_BoolFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

+ (id)entryEventBackwardDefinitions
{
  v14[9] = *MEMORY[0x277D85DE8];
  v2 = +[PLWifiAgent entryEventBackwardDefinitionBeaconProfile];
  v14[0] = v2;
  v13[1] = @"CumulativeProperties";
  v3 = +[PLWifiAgent entryEventBackwardDefinitionCumulativeBasic];
  v14[1] = v3;
  v13[2] = @"DiffProperties";
  v4 = +[PLWifiAgent entryEventBackwardDefinitionDiffBasic];
  v14[2] = v4;
  v13[3] = @"CumulativeUserScanDurations";
  v5 = +[PLWifiAgent entryEventBackwardDefinitionUserScan];
  v14[3] = v5;
  v13[4] = @"HotspotPowerStats";
  v6 = +[PLWifiAgent entryEventBackwardDefinitionHotspotPowerStats];
  v14[4] = v6;
  v13[5] = @"AutoJoin";
  v7 = +[PLWifiAgent entryEventBackwardDefinitionAutoJoin];
  v14[5] = v7;
  v13[6] = @"Scans";
  v8 = +[PLWifiAgent entryEventBackwardDefinitionScans];
  v14[6] = v8;
  v13[7] = @"ScanForwardStats";
  v9 = +[PLWifiAgent entryEventBackwardDefinitionScanForwardStats];
  v14[7] = v9;
  v13[8] = @"ControlCPUPowerStats";
  v10 = +[PLWifiAgent entryEventBackwardDefinitionControlCPUPowerStats];
  v14[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:9];

  return v11;
}

+ (id)entryEventBackwardDefinitionAutoJoin
{
  v76[2] = *MEMORY[0x277D85DE8];
  v75[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v73[0] = *MEMORY[0x277D3F568];
  v73[1] = v2;
  v74[0] = &unk_28714B658;
  v74[1] = MEMORY[0x277CBEC28];
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
  v76[0] = v70;
  v75[1] = *MEMORY[0x277D3F540];
  v71[0] = @"AutoJoinAbortedCount";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v72[0] = commonTypeDict_IntegerFormat;
  v71[1] = @"AutoJoinCount";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v72[1] = commonTypeDict_IntegerFormat2;
  v71[2] = @"AutoJoinDidFindCandidateCount";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v72[2] = commonTypeDict_IntegerFormat3;
  v71[3] = @"AutoJoinRetryCount";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v72[3] = commonTypeDict_IntegerFormat4;
  v71[4] = @"CombinedScanChannelCount";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v72[4] = commonTypeDict_IntegerFormat5;
  v71[5] = @"CombinedScanChannelCount2ghz";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v72[5] = commonTypeDict_IntegerFormat6;
  v71[6] = @"CombinedScanChannelCount5ghz";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v72[6] = commonTypeDict_IntegerFormat7;
  v71[7] = @"GasQueryCount";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v72[7] = commonTypeDict_IntegerFormat8;
  v71[8] = @"AutoHotspotCount";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v72[8] = commonTypeDict_IntegerFormat9;
  v71[9] = @"Unlocked";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v72[9] = commonTypeDict_IntegerFormat10;
  v71[10] = @"CountryCodeChanged";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v72[10] = commonTypeDict_IntegerFormat11;
  v71[11] = @"KnownNetworkAdded";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v72[11] = commonTypeDict_IntegerFormat12;
  v71[12] = @"LinkDown";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v72[12] = commonTypeDict_IntegerFormat13;
  v71[13] = @"AssocFailure";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v72[13] = commonTypeDict_IntegerFormat14;
  v71[14] = @"Retry";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v72[14] = commonTypeDict_IntegerFormat15;
  v71[15] = @"PowerOn";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v72[15] = commonTypeDict_IntegerFormat16;
  v71[16] = @"AjEnabled";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v72[16] = commonTypeDict_IntegerFormat17;
  v71[17] = @"Manual";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v72[17] = commonTypeDict_IntegerFormat18;
  v71[18] = @"DarkWake";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v72[18] = commonTypeDict_IntegerFormat19;
  v71[19] = @"UserWake";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v72[19] = commonTypeDict_IntegerFormat20;
  v71[20] = @"CallEnded";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v72[20] = commonTypeDict_IntegerFormat21;
  v71[21] = @"PlaybackEnded";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
  v72[21] = commonTypeDict_IntegerFormat22;
  v71[22] = @"DeviceUnlocked";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
  v72[22] = commonTypeDict_IntegerFormat23;
  v71[23] = @"Registration";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
  v72[23] = commonTypeDict_IntegerFormat24;
  v71[24] = @"AppState";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat];
  v72[24] = commonTypeDict_IntegerFormat25;
  v71[25] = @"MaintWake";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat];
  v72[25] = commonTypeDict_IntegerFormat26;
  v71[26] = @"NetServiceInactive";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat27 = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
  v72[26] = commonTypeDict_IntegerFormat27;
  v71[27] = @"BssidChanged";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat28 = [mEMORY[0x277D3F198]28 commonTypeDict_IntegerFormat];
  v72[27] = commonTypeDict_IntegerFormat28;
  v71[28] = @"Retry(fg)";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat29 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
  v72[28] = commonTypeDict_IntegerFormat29;
  v71[29] = @"Retry(inactive)";
  mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat30 = [mEMORY[0x277D3F198]30 commonTypeDict_IntegerFormat];
  v72[29] = commonTypeDict_IntegerFormat30;
  v71[30] = @"CombinedScanChannelCount6ghz";
  mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat31 = [mEMORY[0x277D3F198]31 commonTypeDict_IntegerFormat];
  v72[30] = commonTypeDict_IntegerFormat31;
  v71[31] = @"Followup6ghzScanChannelCount";
  mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat32 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat];
  v72[31] = commonTypeDict_IntegerFormat32;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:32];
  v76[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];

  return v12;
}

+ (BOOL)isScanLoggingEnabled
{
  if ([MEMORY[0x277D3F208] isWiFiClass:1004015] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004016) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004017))
  {
    return 1;
  }

  v3 = MEMORY[0x277D3F208];

  return [v3 isWiFiClass:1004018];
}

+ (id)entryEventBackwardDefinitionScans
{
  v34[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isUsingAnOlderWifiChip])
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    v33[0] = *MEMORY[0x277D3F4E8];
    v3 = *MEMORY[0x277D3F550];
    v31[0] = *MEMORY[0x277D3F568];
    v31[1] = v3;
    v32[0] = &unk_28714B608;
    v32[1] = MEMORY[0x277CBEC28];
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v34[0] = v28;
    v33[1] = *MEMORY[0x277D3F540];
    v29[0] = @"Duration2G";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_withUnit_ms];
    v30[0] = commonTypeDict_IntegerFormat_withUnit_ms;
    v29[1] = @"Duration5G";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_withUnit_ms];
    v30[1] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v29[2] = @"Duration6G";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_withUnit_ms];
    v30[2] = commonTypeDict_IntegerFormat_withUnit_ms3;
    v29[3] = @"Count2G";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v30[3] = commonTypeDict_IntegerFormat;
    v29[4] = @"Count5G";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v30[4] = commonTypeDict_IntegerFormat2;
    v29[5] = @"Count6G";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v30[5] = commonTypeDict_IntegerFormat3;
    v29[6] = @"CountActive";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v30[6] = commonTypeDict_IntegerFormat4;
    v29[7] = @"CountPassive";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v30[7] = commonTypeDict_IntegerFormat5;
    v29[8] = @"Count2GSC";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
    v30[8] = commonTypeDict_IntegerFormat6;
    v29[9] = @"Count5GSC";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v30[9] = commonTypeDict_IntegerFormat7;
    v29[10] = @"Count6GSC";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
    v30[10] = commonTypeDict_IntegerFormat8;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:11];
    v34[1] = v12;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  }

  return v2;
}

+ (id)entryEventBackwardDefinitionScanForwardStats
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([self isScanForwardLoggingEnabled])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v14 = *MEMORY[0x277D3F568];
    v15 = &unk_28714B608;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[0] = v2;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"ScanForwardCurrentBSSS";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_withUnit_ms];
    v13[0] = commonTypeDict_IntegerFormat_withUnit_ms;
    v12[1] = @"ScanForwardForwardedBSSS";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_withUnit_ms];
    v13[1] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v12[2] = @"ScanForwardTotalSPMIMSGS";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_withUnit_ms];
    v13[2] = commonTypeDict_IntegerFormat_withUnit_ms3;
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

+ (id)entryEventBackwardDefinitionControlCPUPowerStats
{
  v77[2] = *MEMORY[0x277D85DE8];
  v76[0] = *MEMORY[0x277D3F4E8];
  v74 = *MEMORY[0x277D3F568];
  v75 = &unk_28714B608;
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
  v77[0] = v71;
  v76[1] = *MEMORY[0x277D3F540];
  v72[0] = @"DeepSleepCount";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v73[0] = commonTypeDict_IntegerFormat;
  v72[1] = @"WarmSleepCount";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v73[1] = commonTypeDict_IntegerFormat2;
  v72[2] = @"AwakeCount";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v73[2] = commonTypeDict_IntegerFormat3;
  v72[3] = @"AwakeL3Count";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v73[3] = commonTypeDict_IntegerFormat4;
  v72[4] = @"DeepSleepDuration";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v73[4] = commonTypeDict_IntegerFormat5;
  v72[5] = @"WarmSleepDuration";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v73[5] = commonTypeDict_IntegerFormat6;
  v72[6] = @"AwakeDuration";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v73[6] = commonTypeDict_IntegerFormat7;
  v72[7] = @"AwakeL3Duration";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v73[7] = commonTypeDict_IntegerFormat8;
  v72[8] = @"CCPUIdleDuration";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v73[8] = commonTypeDict_IntegerFormat9;
  v72[9] = @"WiFiUMACIdleDuration";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v73[9] = commonTypeDict_IntegerFormat10;
  v72[10] = @"WiFiPHY2GIdleDuration";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v73[10] = commonTypeDict_IntegerFormat11;
  v72[11] = @"WiFiPHY5GIdleDuration";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v73[11] = commonTypeDict_IntegerFormat12;
  v72[12] = @"WiFiTXIdleDuration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v73[12] = commonTypeDict_IntegerFormat13;
  v72[13] = @"WiFiRXIdleDuration";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v73[13] = commonTypeDict_IntegerFormat14;
  v72[14] = @"WiFiLMACCommonIdleDuration";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v73[14] = commonTypeDict_IntegerFormat15;
  v72[15] = @"WiFiLMAC2GIdleDuration";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v73[15] = commonTypeDict_IntegerFormat16;
  v72[16] = @"WiFiLMAC5GIdleDuration";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v73[16] = commonTypeDict_IntegerFormat17;
  v72[17] = @"WiFiScanIdleDuration";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v73[17] = commonTypeDict_IntegerFormat18;
  v72[18] = @"BTMainIdleDuration";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v73[18] = commonTypeDict_IntegerFormat19;
  v72[19] = @"BTSecondaryIdleDuration";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v73[19] = commonTypeDict_IntegerFormat20;
  v72[20] = @"BTScanIdleDuration";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v73[20] = commonTypeDict_IntegerFormat21;
  v72[21] = @"BTPHY2GIdleDuration";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
  v73[21] = commonTypeDict_IntegerFormat22;
  v72[22] = @"BTPHY5GIdleDuration";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
  v73[22] = commonTypeDict_IntegerFormat23;
  v72[23] = @"PCIeL0EntryCount";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
  v73[23] = commonTypeDict_IntegerFormat24;
  v72[24] = @"PCIeL1EntryCount";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat];
  v73[24] = commonTypeDict_IntegerFormat25;
  v72[25] = @"PCIeL1Dot1EntryCount";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat];
  v73[25] = commonTypeDict_IntegerFormat26;
  v72[26] = @"PCIeL1Dot2EntryCount";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat27 = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
  v73[26] = commonTypeDict_IntegerFormat27;
  v72[27] = @"PCIeL3EntryCount";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat28 = [mEMORY[0x277D3F198]28 commonTypeDict_IntegerFormat];
  v73[27] = commonTypeDict_IntegerFormat28;
  v72[28] = @"PCIeL0Duration";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat29 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
  v73[28] = commonTypeDict_IntegerFormat29;
  v72[29] = @"PCIeL1Duration";
  mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat30 = [mEMORY[0x277D3F198]30 commonTypeDict_IntegerFormat];
  v73[29] = commonTypeDict_IntegerFormat30;
  v72[30] = @"PCIeL1Dot1Duration";
  mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat31 = [mEMORY[0x277D3F198]31 commonTypeDict_IntegerFormat];
  v73[30] = commonTypeDict_IntegerFormat31;
  v72[31] = @"PCIeL1Dot2Duration";
  mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat32 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat];
  v73[31] = commonTypeDict_IntegerFormat32;
  v72[32] = @"PCIeL3Duration";
  mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat33 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat];
  v73[32] = commonTypeDict_IntegerFormat33;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:33];
  v77[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];

  return v11;
}

+ (id)entryEventBackwardDefinitionHotspotPowerStats
{
  v32[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] kPLWiFiClassIsOneOf:{1004010, 1004013, 1004014, 1004015, 1004016, 1004017, 1004018, 1004019, 0}])
  {
    v31[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v29[0] = *MEMORY[0x277D3F568];
    v29[1] = v2;
    v30[0] = &unk_28714B608;
    v30[1] = MEMORY[0x277CBEC28];
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v32[0] = v26;
    v31[1] = *MEMORY[0x277D3F540];
    v27[0] = @"ADHSActiveStateCount";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v28[0] = commonTypeDict_IntegerFormat;
    v27[1] = @"ADHSDynamicStateCount";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v28[1] = commonTypeDict_IntegerFormat2;
    v27[2] = @"ADHSLowPowerStateCount";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v28[2] = commonTypeDict_IntegerFormat3;
    v27[3] = @"ADHSOffStateCount";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v28[3] = commonTypeDict_IntegerFormat4;
    v27[4] = @"ADHSTXPackets";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v28[4] = commonTypeDict_IntegerFormat5;
    v27[5] = @"ADHSRXPackets";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v28[5] = commonTypeDict_IntegerFormat6;
    v27[6] = @"ADHSActiveStateDuration";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_ms];
    v28[6] = commonTypeDict_IntegerFormat_withUnit_ms;
    v27[7] = @"ADHSDynamicStateDuration";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_ms];
    v28[7] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v27[8] = @"ADHSLowPowerStateDuration";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_ms];
    v28[8] = commonTypeDict_IntegerFormat_withUnit_ms3;
    v27[9] = @"ADHSOffStateDuration";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_ms];
    v28[9] = commonTypeDict_IntegerFormat_withUnit_ms4;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:10];
    v32[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  return v12;
}

+ (id)entryEventBackwardDefinitionBeaconProfile
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isMac] & 1) != 0 || !objc_msgSend(self, "isBeaconLoggingEnabled"))
  {
    v13 = MEMORY[0x277CBEC10];
  }

  else
  {
    v22[0] = *MEMORY[0x277D3F4E8];
    v3 = *MEMORY[0x277D3F550];
    v20[0] = *MEMORY[0x277D3F568];
    v20[1] = v3;
    v21[0] = &unk_28714B608;
    v21[1] = MEMORY[0x277CBEC28];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v23[0] = v17;
    v22[1] = *MEMORY[0x277D3F540];
    v18[0] = @"ScheduleBeacon";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v19[0] = commonTypeDict_IntegerFormat;
    v18[1] = @"MissedBeacon";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v19[1] = commonTypeDict_IntegerFormat2;
    v18[2] = @"ReceivedBeacon";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v19[2] = commonTypeDict_IntegerFormat3;
    v18[3] = @"TrimmedBeacon";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v19[3] = commonTypeDict_IntegerFormat4;
    v18[4] = @"WifiTimestamp";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v19[4] = commonTypeDict_IntegerFormat5;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
    v23[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  }

  return v13;
}

+ (id)entryEventBackwardDefinitionUserScan
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v19[0] = *MEMORY[0x277D3F568];
  v19[1] = v2;
  v20[0] = &unk_28714B608;
  v20[1] = MEMORY[0x277CBEC28];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"AutojoinScanDuration";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_withUnit_ms];
  v18[0] = commonTypeDict_IntegerFormat_withUnit_ms;
  v17[1] = @"LocationScanDuration";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_withUnit_ms];
  v18[1] = commonTypeDict_IntegerFormat_withUnit_ms2;
  v17[2] = @"PipelineScanDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_withUnit_ms];
  v18[2] = commonTypeDict_IntegerFormat_withUnit_ms3;
  v17[3] = @"SetupScanDuration";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat_withUnit_ms];
  v18[3] = commonTypeDict_IntegerFormat_withUnit_ms4;
  v17[4] = @"UnknownScanDuration";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_ms];
  v18[4] = commonTypeDict_IntegerFormat_withUnit_ms5;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v22[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  return v12;
}

+ (id)entryEventBackwardDefinitionCumulativeMultiCore
{
  v219[57] = *MEMORY[0x277D85DE8];
  v206 = objc_alloc(MEMORY[0x277CBEB38]);
  v218[0] = @"WifiTimestamp";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_withUnit_s];
  v219[0] = commonTypeDict_IntegerFormat_withUnit_s;
  v218[1] = @"PMDuration";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_withUnit_s];
  v219[1] = commonTypeDict_IntegerFormat_withUnit_s2;
  v218[2] = @"MPCDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_withUnit_s];
  v219[2] = commonTypeDict_IntegerFormat_withUnit_s3;
  v218[3] = @"TXDuration";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[3] = commonTypeDict_IntegerFormat_withUnit_ms;
  v218[4] = @"RXDuration";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[4] = commonTypeDict_IntegerFormat_withUnit_ms2;
  v218[5] = @"HSICSuspendDuration";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat_withUnit_s];
  v219[5] = commonTypeDict_IntegerFormat_withUnit_s4;
  v218[6] = @"HSICActiveDuration";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_s];
  v219[6] = commonTypeDict_IntegerFormat_withUnit_s5;
  v218[7] = @"PNOScanSSIDDuration";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_s];
  v219[7] = commonTypeDict_IntegerFormat_withUnit_s6;
  v218[8] = @"PNOBSSIDDuration";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_s];
  v219[8] = commonTypeDict_IntegerFormat_withUnit_s7;
  v218[9] = @"RoamScanDuration";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_s];
  v219[9] = commonTypeDict_IntegerFormat_withUnit_s8;
  v218[10] = @"AssociatedScanDuration";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat_withUnit_s];
  v219[10] = commonTypeDict_IntegerFormat_withUnit_s9;
  v218[11] = @"OtherScanDuration";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat_withUnit_s];
  v219[11] = commonTypeDict_IntegerFormat_withUnit_s10;
  v218[12] = @"UserScanDuration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat_withUnit_s];
  v219[12] = commonTypeDict_IntegerFormat_withUnit_s11;
  v218[13] = @"FRTSDuration";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[13] = commonTypeDict_IntegerFormat_withUnit_ms3;
  v218[14] = @"PCIESuspendDuration";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat_withUnit_us];
  v219[14] = commonTypeDict_IntegerFormat_withUnit_us;
  v218[15] = @"PCIEActiveDuration";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us2 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat_withUnit_us];
  v219[15] = commonTypeDict_IntegerFormat_withUnit_us2;
  v218[16] = @"PCIEPERSTDuration";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us3 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat_withUnit_us];
  v219[16] = commonTypeDict_IntegerFormat_withUnit_us3;
  v218[17] = @"PCIEL0Count";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v219[17] = commonTypeDict_IntegerFormat;
  v218[18] = @"PCIEL0Duration";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us4 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat_withUnit_us];
  v219[18] = commonTypeDict_IntegerFormat_withUnit_us4;
  v218[19] = @"PCIEL2Count";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v219[19] = commonTypeDict_IntegerFormat2;
  v218[20] = @"PCIEL2Duration";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us5 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat_withUnit_us];
  v219[20] = commonTypeDict_IntegerFormat_withUnit_us5;
  v218[21] = @"PCIEL1Count";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
  v219[21] = commonTypeDict_IntegerFormat3;
  v218[22] = @"PCIEL1Duration";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us6 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat_withUnit_us];
  v219[22] = commonTypeDict_IntegerFormat_withUnit_us6;
  v218[23] = @"PCIEL11Count";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
  v219[23] = commonTypeDict_IntegerFormat4;
  v218[24] = @"PCIEL11Duration";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us7 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat_withUnit_us];
  v219[24] = commonTypeDict_IntegerFormat_withUnit_us7;
  v218[25] = @"PCIEL12Count";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat];
  v219[25] = commonTypeDict_IntegerFormat5;
  v218[26] = @"PCIEL12Duration";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us8 = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat_withUnit_us];
  v219[26] = commonTypeDict_IntegerFormat_withUnit_us8;
  v218[27] = @"AWDLTXDuration";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]28 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[27] = commonTypeDict_IntegerFormat_withUnit_ms4;
  v218[28] = @"AWDLRXDuration";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[28] = commonTypeDict_IntegerFormat_withUnit_ms5;
  v218[29] = @"AWDLAWDuration";
  mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s12 = [mEMORY[0x277D3F198]30 commonTypeDict_IntegerFormat_withUnit_s];
  v219[29] = commonTypeDict_IntegerFormat_withUnit_s12;
  v218[30] = @"AWDLScanDuration";
  mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s13 = [mEMORY[0x277D3F198]31 commonTypeDict_IntegerFormat_withUnit_s];
  v219[30] = commonTypeDict_IntegerFormat_withUnit_s13;
  v218[31] = @"AutojoinScanDuration";
  mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms6 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[31] = commonTypeDict_IntegerFormat_withUnit_ms6;
  v218[32] = @"LocationScanDuration";
  mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms7 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[32] = commonTypeDict_IntegerFormat_withUnit_ms7;
  v218[33] = @"PipelineScanDuration";
  mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms8 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[33] = commonTypeDict_IntegerFormat_withUnit_ms8;
  v218[34] = @"SetupScanDuration";
  mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms9 = [mEMORY[0x277D3F198]35 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[34] = commonTypeDict_IntegerFormat_withUnit_ms9;
  v218[35] = @"UnknownScanDuration";
  mEMORY[0x277D3F198]36 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms10 = [mEMORY[0x277D3F198]36 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[35] = commonTypeDict_IntegerFormat_withUnit_ms10;
  v218[36] = @"CurrentChannel";
  mEMORY[0x277D3F198]37 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]37 commonTypeDict_IntegerFormat];
  v219[36] = commonTypeDict_IntegerFormat6;
  v218[37] = @"CurrentSSID";
  mEMORY[0x277D3F198]38 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]38 commonTypeDict_StringFormat];
  v219[37] = commonTypeDict_StringFormat;
  v218[38] = @"CurrentBandwidth";
  mEMORY[0x277D3F198]39 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]39 commonTypeDict_IntegerFormat];
  v219[38] = commonTypeDict_IntegerFormat7;
  v218[39] = @"WifiPowered";
  mEMORY[0x277D3F198]40 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]40 commonTypeDict_BoolFormat];
  v219[39] = commonTypeDict_BoolFormat;
  v218[40] = @"WowEnabled";
  mEMORY[0x277D3F198]41 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]41 commonTypeDict_BoolFormat];
  v219[40] = commonTypeDict_BoolFormat2;
  v218[41] = @"Carplay";
  mEMORY[0x277D3F198]42 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]42 commonTypeDict_BoolFormat];
  v219[41] = commonTypeDict_BoolFormat3;
  v218[42] = @"SISOTXDuration";
  mEMORY[0x277D3F198]43 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms11 = [mEMORY[0x277D3F198]43 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[42] = commonTypeDict_IntegerFormat_withUnit_ms11;
  v218[43] = @"MIMOTXDuration";
  mEMORY[0x277D3F198]44 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms12 = [mEMORY[0x277D3F198]44 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[43] = commonTypeDict_IntegerFormat_withUnit_ms12;
  v218[44] = @"MIMORXDuration";
  mEMORY[0x277D3F198]45 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms13 = [mEMORY[0x277D3F198]45 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[44] = commonTypeDict_IntegerFormat_withUnit_ms13;
  v218[45] = @"SISORXDuration";
  mEMORY[0x277D3F198]46 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms14 = [mEMORY[0x277D3F198]46 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[45] = commonTypeDict_IntegerFormat_withUnit_ms14;
  v218[46] = @"MIMOCSDuration";
  mEMORY[0x277D3F198]47 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms15 = [mEMORY[0x277D3F198]47 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[46] = commonTypeDict_IntegerFormat_withUnit_ms15;
  v218[47] = @"SISOCSDuration";
  mEMORY[0x277D3F198]48 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms16 = [mEMORY[0x277D3F198]48 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[47] = commonTypeDict_IntegerFormat_withUnit_ms16;
  v218[48] = @"OCLRXDuration";
  mEMORY[0x277D3F198]49 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms17 = [mEMORY[0x277D3F198]49 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[48] = commonTypeDict_IntegerFormat_withUnit_ms17;
  v218[49] = @"OCLCSDuration";
  mEMORY[0x277D3F198]50 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms18 = [mEMORY[0x277D3F198]50 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[49] = commonTypeDict_IntegerFormat_withUnit_ms18;
  v218[50] = @"READINGTYPE";
  mEMORY[0x277D3F198]51 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]51 commonTypeDict_IntegerFormat];
  v219[50] = commonTypeDict_IntegerFormat8;
  v218[51] = @"isADHSConnected";
  mEMORY[0x277D3F198]52 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]52 commonTypeDict_IntegerFormat];
  v219[51] = commonTypeDict_IntegerFormat9;
  v218[52] = @"AutoHotspotBTScanDuration";
  mEMORY[0x277D3F198]53 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s14 = [mEMORY[0x277D3F198]53 commonTypeDict_IntegerFormat_withUnit_s];
  v219[52] = commonTypeDict_IntegerFormat_withUnit_s14;
  v218[53] = @"AutoHotspotBTScanCount";
  mEMORY[0x277D3F198]54 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]54 commonTypeDict_IntegerFormat];
  v219[53] = commonTypeDict_IntegerFormat10;
  v218[54] = @"OPSFullDuration";
  mEMORY[0x277D3F198]55 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms19 = [mEMORY[0x277D3F198]55 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[54] = commonTypeDict_IntegerFormat_withUnit_ms19;
  v218[55] = @"OPSPartialDuration";
  mEMORY[0x277D3F198]56 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms20 = [mEMORY[0x277D3F198]56 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[55] = commonTypeDict_IntegerFormat_withUnit_ms20;
  v218[56] = @"PSBWDuration";
  mEMORY[0x277D3F198]57 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms21 = [mEMORY[0x277D3F198]57 commonTypeDict_IntegerFormat_withUnit_ms];
  v219[56] = commonTypeDict_IntegerFormat_withUnit_ms21;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v219 forKeys:v218 count:57];
  v207 = [v206 initWithDictionary:v11];

  if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
  {
    v216[0] = @"SCAssocScanCount";
    mEMORY[0x277D3F198]58 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]58 commonTypeDict_IntegerFormat];
    v217[0] = commonTypeDict_IntegerFormat11;
    v216[1] = @"SCAssocScanDuration";
    mEMORY[0x277D3F198]59 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]59 commonTypeDict_IntegerFormat];
    v217[1] = commonTypeDict_IntegerFormat12;
    v216[2] = @"SCBlankedScanCount";
    mEMORY[0x277D3F198]60 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]60 commonTypeDict_IntegerFormat];
    v217[2] = commonTypeDict_IntegerFormat13;
    v216[3] = @"SCIdleDurationSISO";
    mEMORY[0x277D3F198]61 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]61 commonTypeDict_IntegerFormat];
    v217[3] = commonTypeDict_IntegerFormat14;
    v216[4] = @"SCPMDuration";
    mEMORY[0x277D3F198]62 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]62 commonTypeDict_IntegerFormat];
    v217[4] = commonTypeDict_IntegerFormat15;
    v216[5] = @"SCPNOScanCount";
    mEMORY[0x277D3F198]63 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]63 commonTypeDict_IntegerFormat];
    v217[5] = commonTypeDict_IntegerFormat16;
    v216[6] = @"SCPNOScanDuration";
    mEMORY[0x277D3F198]64 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]64 commonTypeDict_IntegerFormat];
    v217[6] = commonTypeDict_IntegerFormat17;
    v216[7] = @"SCRoamScanCount";
    mEMORY[0x277D3F198]65 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]65 commonTypeDict_IntegerFormat];
    v217[7] = commonTypeDict_IntegerFormat18;
    v216[8] = @"SCRoamScanDuration";
    mEMORY[0x277D3F198]66 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]66 commonTypeDict_IntegerFormat];
    v217[8] = commonTypeDict_IntegerFormat19;
    v216[9] = @"SCRXDurationSISO";
    mEMORY[0x277D3F198]67 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]67 commonTypeDict_IntegerFormat];
    v217[9] = commonTypeDict_IntegerFormat20;
    v216[10] = @"SCRXMPCDuration";
    mEMORY[0x277D3F198]68 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]68 commonTypeDict_IntegerFormat];
    v217[10] = commonTypeDict_IntegerFormat21;
    v216[11] = @"SCTimestamp";
    mEMORY[0x277D3F198]69 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]69 commonTypeDict_IntegerFormat];
    v217[11] = commonTypeDict_IntegerFormat22;
    v216[12] = @"SCUserScanCount";
    mEMORY[0x277D3F198]70 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]70 commonTypeDict_IntegerFormat];
    v217[12] = commonTypeDict_IntegerFormat23;
    v216[13] = @"SCUserScanDuration";
    mEMORY[0x277D3F198]71 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]71 commonTypeDict_IntegerFormat];
    v217[13] = commonTypeDict_IntegerFormat24;
    v216[14] = @"InactivityDuration";
    mEMORY[0x277D3F198]72 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]72 commonTypeDict_IntegerFormat];
    v217[14] = commonTypeDict_IntegerFormat25;
    v216[15] = @"InactivityLPBeaconsMissed";
    mEMORY[0x277D3F198]73 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]73 commonTypeDict_IntegerFormat];
    v217[15] = commonTypeDict_IntegerFormat26;
    v216[16] = @"InactivityLPBeaconsReceived";
    mEMORY[0x277D3F198]74 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat27 = [mEMORY[0x277D3F198]74 commonTypeDict_IntegerFormat];
    v217[16] = commonTypeDict_IntegerFormat27;
    v216[17] = @"InactivityLPBeaconsScheduled";
    mEMORY[0x277D3F198]75 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat28 = [mEMORY[0x277D3F198]75 commonTypeDict_IntegerFormat];
    v217[17] = commonTypeDict_IntegerFormat28;
    v216[18] = @"InactivityLPEarlyBeaconsTerminated";
    mEMORY[0x277D3F198]76 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat29 = [mEMORY[0x277D3F198]76 commonTypeDict_IntegerFormat];
    v217[18] = commonTypeDict_IntegerFormat29;
    v216[19] = @"InactivityLPWakeDuration";
    mEMORY[0x277D3F198]77 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat30 = [mEMORY[0x277D3F198]77 commonTypeDict_IntegerFormat];
    v217[19] = commonTypeDict_IntegerFormat30;
    v216[20] = @"InactivityMPCBeaconsMissed";
    mEMORY[0x277D3F198]78 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat31 = [mEMORY[0x277D3F198]78 commonTypeDict_IntegerFormat];
    v217[20] = commonTypeDict_IntegerFormat31;
    v216[21] = @"InactivityMPCBeaconsReceived";
    mEMORY[0x277D3F198]79 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat32 = [mEMORY[0x277D3F198]79 commonTypeDict_IntegerFormat];
    v217[21] = commonTypeDict_IntegerFormat32;
    v216[22] = @"InactivityMPCBeaconsScheduled";
    mEMORY[0x277D3F198]80 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat33 = [mEMORY[0x277D3F198]80 commonTypeDict_IntegerFormat];
    v217[22] = commonTypeDict_IntegerFormat33;
    v216[23] = @"InactivityMPEarlyBeaconsTerminated";
    mEMORY[0x277D3F198]81 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat34 = [mEMORY[0x277D3F198]81 commonTypeDict_IntegerFormat];
    v217[23] = commonTypeDict_IntegerFormat34;
    v216[24] = @"InactivityMPWakeDuration";
    mEMORY[0x277D3F198]82 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat35 = [mEMORY[0x277D3F198]82 commonTypeDict_IntegerFormat];
    v217[24] = commonTypeDict_IntegerFormat35;
    v216[25] = @"MulticastRXDuration";
    mEMORY[0x277D3F198]83 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms22 = [mEMORY[0x277D3F198]83 commonTypeDict_IntegerFormat_withUnit_ms];
    v217[25] = commonTypeDict_IntegerFormat_withUnit_ms22;
    v216[26] = @"BroadcastRXDuration";
    mEMORY[0x277D3F198]84 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms23 = [mEMORY[0x277D3F198]84 commonTypeDict_IntegerFormat_withUnit_ms];
    v217[26] = commonTypeDict_IntegerFormat_withUnit_ms23;
    v216[27] = @"IBSSRXDuration";
    mEMORY[0x277D3F198]85 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms24 = [mEMORY[0x277D3F198]85 commonTypeDict_IntegerFormat_withUnit_ms];
    v217[27] = commonTypeDict_IntegerFormat_withUnit_ms24;
    v216[28] = @"MBSSRXDuration";
    mEMORY[0x277D3F198]86 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms25 = [mEMORY[0x277D3F198]86 commonTypeDict_IntegerFormat_withUnit_ms];
    v217[28] = commonTypeDict_IntegerFormat_withUnit_ms25;
    v216[29] = @"OBSSRXDuration";
    mEMORY[0x277D3F198]87 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms26 = [mEMORY[0x277D3F198]87 commonTypeDict_IntegerFormat_withUnit_ms];
    v217[29] = commonTypeDict_IntegerFormat_withUnit_ms26;
    v216[30] = @"MulticastRxBytes";
    mEMORY[0x277D3F198]88 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat36 = [mEMORY[0x277D3F198]88 commonTypeDict_IntegerFormat];
    v217[30] = commonTypeDict_IntegerFormat36;
    v216[31] = @"MulticastRxPkts";
    mEMORY[0x277D3F198]89 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat37 = [mEMORY[0x277D3F198]89 commonTypeDict_IntegerFormat];
    v217[31] = commonTypeDict_IntegerFormat37;
    v216[32] = @"MulticastRxTotal";
    mEMORY[0x277D3F198]90 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat38 = [mEMORY[0x277D3F198]90 commonTypeDict_IntegerFormat];
    v217[32] = commonTypeDict_IntegerFormat38;
    v216[33] = @"ExtPhyOfflineDuration2G";
    mEMORY[0x277D3F198]91 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms27 = [mEMORY[0x277D3F198]91 commonTypeDict_IntegerFormat_withUnit_ms];
    v217[33] = commonTypeDict_IntegerFormat_withUnit_ms27;
    v216[34] = @"ExtPhyOfflineDuration5G";
    mEMORY[0x277D3F198]92 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms28 = [mEMORY[0x277D3F198]92 commonTypeDict_IntegerFormat_withUnit_ms];
    v217[34] = commonTypeDict_IntegerFormat_withUnit_ms28;
    v216[35] = @"ExtPhyOfflineDurationSC";
    mEMORY[0x277D3F198]93 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms29 = [mEMORY[0x277D3F198]93 commonTypeDict_IntegerFormat_withUnit_ms];
    v217[35] = commonTypeDict_IntegerFormat_withUnit_ms29;
    v216[36] = @"ExtPhyPowerGateDuration2G";
    mEMORY[0x277D3F198]94 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms30 = [mEMORY[0x277D3F198]94 commonTypeDict_IntegerFormat_withUnit_ms];
    v217[36] = commonTypeDict_IntegerFormat_withUnit_ms30;
    v216[37] = @"ExtPhyPowerGateDuration5G";
    mEMORY[0x277D3F198]95 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms31 = [mEMORY[0x277D3F198]95 commonTypeDict_IntegerFormat_withUnit_ms];
    v217[37] = commonTypeDict_IntegerFormat_withUnit_ms31;
    v216[38] = @"ExtPhyPowerGateDurationSC";
    mEMORY[0x277D3F198]96 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms32 = [mEMORY[0x277D3F198]96 commonTypeDict_IntegerFormat_withUnit_ms];
    v217[38] = commonTypeDict_IntegerFormat_withUnit_ms32;
    v216[39] = @"ExtPhyRXDuration2G";
    mEMORY[0x277D3F198]97 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms33 = [mEMORY[0x277D3F198]97 commonTypeDict_IntegerFormat_withUnit_ms];
    v217[39] = commonTypeDict_IntegerFormat_withUnit_ms33;
    v216[40] = @"ExtPhyRXDuration5G";
    mEMORY[0x277D3F198]98 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms34 = [mEMORY[0x277D3F198]98 commonTypeDict_IntegerFormat_withUnit_ms];
    v217[40] = commonTypeDict_IntegerFormat_withUnit_ms34;
    v216[41] = @"ExtPhyRXDurationSC";
    mEMORY[0x277D3F198]99 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms35 = [mEMORY[0x277D3F198]99 commonTypeDict_IntegerFormat_withUnit_ms];
    v217[41] = commonTypeDict_IntegerFormat_withUnit_ms35;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v217 forKeys:v216 count:42];

    v12 = v207;
    [v207 addEntriesFromDictionary:v13];
    v214[0] = *MEMORY[0x277D3F4E8];
    v212 = *MEMORY[0x277D3F568];
    v213 = &unk_28714B668;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v213 forKeys:&v212 count:1];
    v214[1] = *MEMORY[0x277D3F540];
    v215[0] = v24;
    v215[1] = v207;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v215 forKeys:v214 count:2];

    goto LABEL_6;
  }

  v12 = v207;
  if (([MEMORY[0x277D3F208] isWiFiClass:1004013] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004014))
  {
    v210[0] = *MEMORY[0x277D3F4E8];
    v208 = *MEMORY[0x277D3F568];
    v209 = &unk_28714B618;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v209 forKeys:&v208 count:1];
    v210[1] = *MEMORY[0x277D3F540];
    v211[0] = v13;
    v211[1] = v207;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v211 forKeys:v210 count:2];
LABEL_6:

    goto LABEL_7;
  }

  v14 = MEMORY[0x277CBEC10];
LABEL_7:

  return v14;
}

+ (id)entryEventBackwardDefinitionCumulativeBasic
{
  v572[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] kPLWiFiClassIsOneOf:{1004013, 1004014, 1004015, 1004016, 1004017, 1004018, 1004019, 0}])
  {
    entryEventBackwardDefinitionCumulativeMultiCore = [self entryEventBackwardDefinitionCumulativeMultiCore];
  }

  else if ([MEMORY[0x277D3F208] isWiFiClass:1004010])
  {
    v571[0] = *MEMORY[0x277D3F4E8];
    v569 = *MEMORY[0x277D3F568];
    v570 = &unk_28714B618;
    v532 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v570 forKeys:&v569 count:1];
    v572[0] = v532;
    v571[1] = *MEMORY[0x277D3F540];
    v567[0] = @"WifiTimestamp";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_withUnit_s];
    v568[0] = commonTypeDict_IntegerFormat_withUnit_s;
    v567[1] = @"PMDuration";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_withUnit_s];
    v568[1] = commonTypeDict_IntegerFormat_withUnit_s2;
    v567[2] = @"MPCDuration";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_withUnit_s];
    v568[2] = commonTypeDict_IntegerFormat_withUnit_s3;
    v567[3] = @"TXDuration";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[3] = commonTypeDict_IntegerFormat_withUnit_ms;
    v567[4] = @"RXDuration";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[4] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v567[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat_withUnit_s];
    v568[5] = commonTypeDict_IntegerFormat_withUnit_s4;
    v567[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_s];
    v568[6] = commonTypeDict_IntegerFormat_withUnit_s5;
    v567[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_s];
    v568[7] = commonTypeDict_IntegerFormat_withUnit_s6;
    v567[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_s];
    v568[8] = commonTypeDict_IntegerFormat_withUnit_s7;
    v567[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_s];
    v568[9] = commonTypeDict_IntegerFormat_withUnit_s8;
    v567[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat_withUnit_s];
    v568[10] = commonTypeDict_IntegerFormat_withUnit_s9;
    v567[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat_withUnit_s];
    v568[11] = commonTypeDict_IntegerFormat_withUnit_s10;
    v567[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat_withUnit_s];
    v568[12] = commonTypeDict_IntegerFormat_withUnit_s11;
    v567[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[13] = commonTypeDict_IntegerFormat_withUnit_ms3;
    v567[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat_withUnit_us];
    v568[14] = commonTypeDict_IntegerFormat_withUnit_us;
    v567[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us2 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat_withUnit_us];
    v568[15] = commonTypeDict_IntegerFormat_withUnit_us2;
    v567[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us3 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat_withUnit_us];
    v568[16] = commonTypeDict_IntegerFormat_withUnit_us3;
    v567[17] = @"PCIEL0Count";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
    v568[17] = commonTypeDict_IntegerFormat;
    v567[18] = @"PCIEL0Duration";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us4 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat_withUnit_us];
    v568[18] = commonTypeDict_IntegerFormat_withUnit_us4;
    v567[19] = @"PCIEL2Count";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
    v568[19] = commonTypeDict_IntegerFormat2;
    v567[20] = @"PCIEL2Duration";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us5 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat_withUnit_us];
    v568[20] = commonTypeDict_IntegerFormat_withUnit_us5;
    v567[21] = @"PCIEL1Count";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
    v568[21] = commonTypeDict_IntegerFormat3;
    v567[22] = @"PCIEL1Duration";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us6 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat_withUnit_us];
    v568[22] = commonTypeDict_IntegerFormat_withUnit_us6;
    v567[23] = @"PCIEL11Count";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
    v568[23] = commonTypeDict_IntegerFormat4;
    v567[24] = @"PCIEL11Duration";
    mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us7 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat_withUnit_us];
    v568[24] = commonTypeDict_IntegerFormat_withUnit_us7;
    v567[25] = @"PCIEL12Count";
    mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat];
    v568[25] = commonTypeDict_IntegerFormat5;
    v567[26] = @"PCIEL12Duration";
    mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us8 = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat_withUnit_us];
    v568[26] = commonTypeDict_IntegerFormat_withUnit_us8;
    v567[27] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]28 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[27] = commonTypeDict_IntegerFormat_withUnit_ms4;
    v567[28] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[28] = commonTypeDict_IntegerFormat_withUnit_ms5;
    v567[29] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s12 = [mEMORY[0x277D3F198]30 commonTypeDict_IntegerFormat_withUnit_s];
    v568[29] = commonTypeDict_IntegerFormat_withUnit_s12;
    v567[30] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s13 = [mEMORY[0x277D3F198]31 commonTypeDict_IntegerFormat_withUnit_s];
    v568[30] = commonTypeDict_IntegerFormat_withUnit_s13;
    v567[31] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms6 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[31] = commonTypeDict_IntegerFormat_withUnit_ms6;
    v567[32] = @"LocationScanDuration";
    mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms7 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[32] = commonTypeDict_IntegerFormat_withUnit_ms7;
    v567[33] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms8 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[33] = commonTypeDict_IntegerFormat_withUnit_ms8;
    v567[34] = @"SetupScanDuration";
    mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms9 = [mEMORY[0x277D3F198]35 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[34] = commonTypeDict_IntegerFormat_withUnit_ms9;
    v567[35] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]36 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms10 = [mEMORY[0x277D3F198]36 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[35] = commonTypeDict_IntegerFormat_withUnit_ms10;
    v567[36] = @"CurrentChannel";
    mEMORY[0x277D3F198]37 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]37 commonTypeDict_IntegerFormat];
    v568[36] = commonTypeDict_IntegerFormat6;
    v567[37] = @"CurrentSSID";
    mEMORY[0x277D3F198]38 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]38 commonTypeDict_StringFormat];
    v568[37] = commonTypeDict_StringFormat;
    v567[38] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]39 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]39 commonTypeDict_IntegerFormat];
    v568[38] = commonTypeDict_IntegerFormat7;
    v567[39] = @"WifiPowered";
    mEMORY[0x277D3F198]40 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]40 commonTypeDict_BoolFormat];
    v568[39] = commonTypeDict_BoolFormat;
    v567[40] = @"WowEnabled";
    mEMORY[0x277D3F198]41 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]41 commonTypeDict_BoolFormat];
    v568[40] = commonTypeDict_BoolFormat2;
    v567[41] = @"Carplay";
    mEMORY[0x277D3F198]42 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]42 commonTypeDict_BoolFormat];
    v568[41] = commonTypeDict_BoolFormat3;
    v567[42] = @"SISOTXDuration";
    mEMORY[0x277D3F198]43 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms11 = [mEMORY[0x277D3F198]43 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[42] = commonTypeDict_IntegerFormat_withUnit_ms11;
    v567[43] = @"MIMOTXDuration";
    mEMORY[0x277D3F198]44 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms12 = [mEMORY[0x277D3F198]44 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[43] = commonTypeDict_IntegerFormat_withUnit_ms12;
    v567[44] = @"MIMORXDuration";
    mEMORY[0x277D3F198]45 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms13 = [mEMORY[0x277D3F198]45 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[44] = commonTypeDict_IntegerFormat_withUnit_ms13;
    v567[45] = @"SISORXDuration";
    mEMORY[0x277D3F198]46 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms14 = [mEMORY[0x277D3F198]46 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[45] = commonTypeDict_IntegerFormat_withUnit_ms14;
    v567[46] = @"MIMOCSDuration";
    mEMORY[0x277D3F198]47 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms15 = [mEMORY[0x277D3F198]47 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[46] = commonTypeDict_IntegerFormat_withUnit_ms15;
    v567[47] = @"SISOCSDuration";
    mEMORY[0x277D3F198]48 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms16 = [mEMORY[0x277D3F198]48 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[47] = commonTypeDict_IntegerFormat_withUnit_ms16;
    v567[48] = @"OCLRXDuration";
    mEMORY[0x277D3F198]49 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms17 = [mEMORY[0x277D3F198]49 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[48] = commonTypeDict_IntegerFormat_withUnit_ms17;
    v567[49] = @"OCLCSDuration";
    mEMORY[0x277D3F198]50 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms18 = [mEMORY[0x277D3F198]50 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[49] = commonTypeDict_IntegerFormat_withUnit_ms18;
    v567[50] = @"READINGTYPE";
    mEMORY[0x277D3F198]51 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]51 commonTypeDict_IntegerFormat];
    v568[50] = commonTypeDict_IntegerFormat8;
    v567[51] = @"isADHSConnected";
    mEMORY[0x277D3F198]52 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]52 commonTypeDict_IntegerFormat];
    v568[51] = commonTypeDict_IntegerFormat9;
    v567[52] = @"AutoHotspotBTScanDuration";
    mEMORY[0x277D3F198]53 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms19 = [mEMORY[0x277D3F198]53 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[52] = commonTypeDict_IntegerFormat_withUnit_ms19;
    v567[53] = @"AutoHotspotBTScanCount";
    mEMORY[0x277D3F198]54 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]54 commonTypeDict_IntegerFormat];
    v568[53] = commonTypeDict_IntegerFormat10;
    v567[54] = @"OPSFullDuration";
    mEMORY[0x277D3F198]55 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms20 = [mEMORY[0x277D3F198]55 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[54] = commonTypeDict_IntegerFormat_withUnit_ms20;
    v567[55] = @"OPSPartialDuration";
    mEMORY[0x277D3F198]56 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms21 = [mEMORY[0x277D3F198]56 commonTypeDict_IntegerFormat_withUnit_ms];
    v568[55] = commonTypeDict_IntegerFormat_withUnit_ms21;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v568 forKeys:v567 count:56];
    v572[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v572 forKeys:v571 count:2];

    entryEventBackwardDefinitionCumulativeMultiCore = v13;
  }

  else if ([MEMORY[0x277D3F208] isWiFiClass:1004007])
  {
    v565[0] = *MEMORY[0x277D3F4E8];
    v563 = *MEMORY[0x277D3F568];
    v564 = &unk_28714B618;
    v533 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v564 forKeys:&v563 count:1];
    v566[0] = v533;
    v565[1] = *MEMORY[0x277D3F540];
    v561[0] = @"WifiTimestamp";
    mEMORY[0x277D3F198]57 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s14 = [mEMORY[0x277D3F198]57 commonTypeDict_IntegerFormat_withUnit_s];
    v562[0] = commonTypeDict_IntegerFormat_withUnit_s14;
    v561[1] = @"PMDuration";
    mEMORY[0x277D3F198]58 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s15 = [mEMORY[0x277D3F198]58 commonTypeDict_IntegerFormat_withUnit_s];
    v562[1] = commonTypeDict_IntegerFormat_withUnit_s15;
    v561[2] = @"MPCDuration";
    mEMORY[0x277D3F198]59 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s16 = [mEMORY[0x277D3F198]59 commonTypeDict_IntegerFormat_withUnit_s];
    v562[2] = commonTypeDict_IntegerFormat_withUnit_s16;
    v561[3] = @"TXDuration";
    mEMORY[0x277D3F198]60 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms22 = [mEMORY[0x277D3F198]60 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[3] = commonTypeDict_IntegerFormat_withUnit_ms22;
    v561[4] = @"RXDuration";
    mEMORY[0x277D3F198]61 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms23 = [mEMORY[0x277D3F198]61 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[4] = commonTypeDict_IntegerFormat_withUnit_ms23;
    v561[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]62 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s17 = [mEMORY[0x277D3F198]62 commonTypeDict_IntegerFormat_withUnit_s];
    v562[5] = commonTypeDict_IntegerFormat_withUnit_s17;
    v561[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]63 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s18 = [mEMORY[0x277D3F198]63 commonTypeDict_IntegerFormat_withUnit_s];
    v562[6] = commonTypeDict_IntegerFormat_withUnit_s18;
    v561[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]64 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s19 = [mEMORY[0x277D3F198]64 commonTypeDict_IntegerFormat_withUnit_s];
    v562[7] = commonTypeDict_IntegerFormat_withUnit_s19;
    v561[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]65 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s20 = [mEMORY[0x277D3F198]65 commonTypeDict_IntegerFormat_withUnit_s];
    v562[8] = commonTypeDict_IntegerFormat_withUnit_s20;
    v561[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]66 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s21 = [mEMORY[0x277D3F198]66 commonTypeDict_IntegerFormat_withUnit_s];
    v562[9] = commonTypeDict_IntegerFormat_withUnit_s21;
    v561[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]67 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s22 = [mEMORY[0x277D3F198]67 commonTypeDict_IntegerFormat_withUnit_s];
    v562[10] = commonTypeDict_IntegerFormat_withUnit_s22;
    v561[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]68 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s23 = [mEMORY[0x277D3F198]68 commonTypeDict_IntegerFormat_withUnit_s];
    v562[11] = commonTypeDict_IntegerFormat_withUnit_s23;
    v561[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]69 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s24 = [mEMORY[0x277D3F198]69 commonTypeDict_IntegerFormat_withUnit_s];
    v562[12] = commonTypeDict_IntegerFormat_withUnit_s24;
    v561[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]70 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms24 = [mEMORY[0x277D3F198]70 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[13] = commonTypeDict_IntegerFormat_withUnit_ms24;
    v561[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]71 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us9 = [mEMORY[0x277D3F198]71 commonTypeDict_IntegerFormat_withUnit_us];
    v562[14] = commonTypeDict_IntegerFormat_withUnit_us9;
    v561[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]72 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us10 = [mEMORY[0x277D3F198]72 commonTypeDict_IntegerFormat_withUnit_us];
    v562[15] = commonTypeDict_IntegerFormat_withUnit_us10;
    v561[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]73 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us11 = [mEMORY[0x277D3F198]73 commonTypeDict_IntegerFormat_withUnit_us];
    v562[16] = commonTypeDict_IntegerFormat_withUnit_us11;
    v561[17] = @"PCIEL0Count";
    mEMORY[0x277D3F198]74 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]74 commonTypeDict_IntegerFormat];
    v562[17] = commonTypeDict_IntegerFormat11;
    v561[18] = @"PCIEL0Duration";
    mEMORY[0x277D3F198]75 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us12 = [mEMORY[0x277D3F198]75 commonTypeDict_IntegerFormat_withUnit_us];
    v562[18] = commonTypeDict_IntegerFormat_withUnit_us12;
    v561[19] = @"PCIEL2Count";
    mEMORY[0x277D3F198]76 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]76 commonTypeDict_IntegerFormat];
    v562[19] = commonTypeDict_IntegerFormat12;
    v561[20] = @"PCIEL2Duration";
    mEMORY[0x277D3F198]77 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us13 = [mEMORY[0x277D3F198]77 commonTypeDict_IntegerFormat_withUnit_us];
    v562[20] = commonTypeDict_IntegerFormat_withUnit_us13;
    v561[21] = @"PCIEL1Count";
    mEMORY[0x277D3F198]78 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]78 commonTypeDict_IntegerFormat];
    v562[21] = commonTypeDict_IntegerFormat13;
    v561[22] = @"PCIEL1Duration";
    mEMORY[0x277D3F198]79 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us14 = [mEMORY[0x277D3F198]79 commonTypeDict_IntegerFormat_withUnit_us];
    v562[22] = commonTypeDict_IntegerFormat_withUnit_us14;
    v561[23] = @"PCIEL11Count";
    mEMORY[0x277D3F198]80 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]80 commonTypeDict_IntegerFormat];
    v562[23] = commonTypeDict_IntegerFormat14;
    v561[24] = @"PCIEL11Duration";
    mEMORY[0x277D3F198]81 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us15 = [mEMORY[0x277D3F198]81 commonTypeDict_IntegerFormat_withUnit_us];
    v562[24] = commonTypeDict_IntegerFormat_withUnit_us15;
    v561[25] = @"PCIEL12Count";
    mEMORY[0x277D3F198]82 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]82 commonTypeDict_IntegerFormat];
    v562[25] = commonTypeDict_IntegerFormat15;
    v561[26] = @"PCIEL12Duration";
    mEMORY[0x277D3F198]83 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us16 = [mEMORY[0x277D3F198]83 commonTypeDict_IntegerFormat_withUnit_us];
    v562[26] = commonTypeDict_IntegerFormat_withUnit_us16;
    v561[27] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]84 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms25 = [mEMORY[0x277D3F198]84 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[27] = commonTypeDict_IntegerFormat_withUnit_ms25;
    v561[28] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]85 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms26 = [mEMORY[0x277D3F198]85 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[28] = commonTypeDict_IntegerFormat_withUnit_ms26;
    v561[29] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]86 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s25 = [mEMORY[0x277D3F198]86 commonTypeDict_IntegerFormat_withUnit_s];
    v562[29] = commonTypeDict_IntegerFormat_withUnit_s25;
    v561[30] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]87 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s26 = [mEMORY[0x277D3F198]87 commonTypeDict_IntegerFormat_withUnit_s];
    v562[30] = commonTypeDict_IntegerFormat_withUnit_s26;
    v561[31] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]88 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms27 = [mEMORY[0x277D3F198]88 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[31] = commonTypeDict_IntegerFormat_withUnit_ms27;
    v561[32] = @"LocationScanDuration";
    mEMORY[0x277D3F198]89 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms28 = [mEMORY[0x277D3F198]89 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[32] = commonTypeDict_IntegerFormat_withUnit_ms28;
    v561[33] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]90 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms29 = [mEMORY[0x277D3F198]90 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[33] = commonTypeDict_IntegerFormat_withUnit_ms29;
    v561[34] = @"SetupScanDuration";
    mEMORY[0x277D3F198]91 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms30 = [mEMORY[0x277D3F198]91 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[34] = commonTypeDict_IntegerFormat_withUnit_ms30;
    v561[35] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]92 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms31 = [mEMORY[0x277D3F198]92 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[35] = commonTypeDict_IntegerFormat_withUnit_ms31;
    v561[36] = @"CurrentChannel";
    mEMORY[0x277D3F198]93 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]93 commonTypeDict_IntegerFormat];
    v562[36] = commonTypeDict_IntegerFormat16;
    v561[37] = @"CurrentSSID";
    mEMORY[0x277D3F198]94 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]94 commonTypeDict_StringFormat];
    v562[37] = commonTypeDict_StringFormat2;
    v561[38] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]95 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]95 commonTypeDict_IntegerFormat];
    v562[38] = commonTypeDict_IntegerFormat17;
    v561[39] = @"WifiPowered";
    mEMORY[0x277D3F198]96 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat4 = [mEMORY[0x277D3F198]96 commonTypeDict_BoolFormat];
    v562[39] = commonTypeDict_BoolFormat4;
    v561[40] = @"WowEnabled";
    mEMORY[0x277D3F198]97 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat5 = [mEMORY[0x277D3F198]97 commonTypeDict_BoolFormat];
    v562[40] = commonTypeDict_BoolFormat5;
    v561[41] = @"Carplay";
    mEMORY[0x277D3F198]98 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat6 = [mEMORY[0x277D3F198]98 commonTypeDict_BoolFormat];
    v562[41] = commonTypeDict_BoolFormat6;
    v561[42] = @"SISOTXDuration";
    mEMORY[0x277D3F198]99 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms32 = [mEMORY[0x277D3F198]99 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[42] = commonTypeDict_IntegerFormat_withUnit_ms32;
    v561[43] = @"MIMOTXDuration";
    mEMORY[0x277D3F198]100 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms33 = [mEMORY[0x277D3F198]100 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[43] = commonTypeDict_IntegerFormat_withUnit_ms33;
    v561[44] = @"MIMORXDuration";
    mEMORY[0x277D3F198]101 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms34 = [mEMORY[0x277D3F198]101 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[44] = commonTypeDict_IntegerFormat_withUnit_ms34;
    v561[45] = @"SISORXDuration";
    mEMORY[0x277D3F198]102 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms35 = [mEMORY[0x277D3F198]102 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[45] = commonTypeDict_IntegerFormat_withUnit_ms35;
    v561[46] = @"MIMOCSDuration";
    mEMORY[0x277D3F198]103 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms36 = [mEMORY[0x277D3F198]103 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[46] = commonTypeDict_IntegerFormat_withUnit_ms36;
    v561[47] = @"SISOCSDuration";
    mEMORY[0x277D3F198]104 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms37 = [mEMORY[0x277D3F198]104 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[47] = commonTypeDict_IntegerFormat_withUnit_ms37;
    v561[48] = @"OCLRXDuration";
    mEMORY[0x277D3F198]105 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms38 = [mEMORY[0x277D3F198]105 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[48] = commonTypeDict_IntegerFormat_withUnit_ms38;
    v561[49] = @"OCLCSDuration";
    mEMORY[0x277D3F198]106 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms39 = [mEMORY[0x277D3F198]106 commonTypeDict_IntegerFormat_withUnit_ms];
    v562[49] = commonTypeDict_IntegerFormat_withUnit_ms39;
    v561[50] = @"READINGTYPE";
    mEMORY[0x277D3F198]107 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]107 commonTypeDict_IntegerFormat];
    v562[50] = commonTypeDict_IntegerFormat18;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v562 forKeys:v561 count:51];
    v566[1] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v566 forKeys:v565 count:2];

    entryEventBackwardDefinitionCumulativeMultiCore = v23;
  }

  else if ([MEMORY[0x277D3F208] isWiFiClass:1004005])
  {
    v559[0] = *MEMORY[0x277D3F4E8];
    v557 = *MEMORY[0x277D3F568];
    v558 = &unk_28714B678;
    v534 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v558 forKeys:&v557 count:1];
    v560[0] = v534;
    v559[1] = *MEMORY[0x277D3F540];
    v555[0] = @"WifiTimestamp";
    mEMORY[0x277D3F198]108 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s27 = [mEMORY[0x277D3F198]108 commonTypeDict_IntegerFormat_withUnit_s];
    v556[0] = commonTypeDict_IntegerFormat_withUnit_s27;
    v555[1] = @"PMDuration";
    mEMORY[0x277D3F198]109 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s28 = [mEMORY[0x277D3F198]109 commonTypeDict_IntegerFormat_withUnit_s];
    v556[1] = commonTypeDict_IntegerFormat_withUnit_s28;
    v555[2] = @"MPCDuration";
    mEMORY[0x277D3F198]110 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s29 = [mEMORY[0x277D3F198]110 commonTypeDict_IntegerFormat_withUnit_s];
    v556[2] = commonTypeDict_IntegerFormat_withUnit_s29;
    v555[3] = @"TXDuration";
    mEMORY[0x277D3F198]111 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms40 = [mEMORY[0x277D3F198]111 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[3] = commonTypeDict_IntegerFormat_withUnit_ms40;
    v555[4] = @"RXDuration";
    mEMORY[0x277D3F198]112 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms41 = [mEMORY[0x277D3F198]112 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[4] = commonTypeDict_IntegerFormat_withUnit_ms41;
    v555[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]113 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s30 = [mEMORY[0x277D3F198]113 commonTypeDict_IntegerFormat_withUnit_s];
    v556[5] = commonTypeDict_IntegerFormat_withUnit_s30;
    v555[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]114 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s31 = [mEMORY[0x277D3F198]114 commonTypeDict_IntegerFormat_withUnit_s];
    v556[6] = commonTypeDict_IntegerFormat_withUnit_s31;
    v555[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]115 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s32 = [mEMORY[0x277D3F198]115 commonTypeDict_IntegerFormat_withUnit_s];
    v556[7] = commonTypeDict_IntegerFormat_withUnit_s32;
    v555[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]116 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s33 = [mEMORY[0x277D3F198]116 commonTypeDict_IntegerFormat_withUnit_s];
    v556[8] = commonTypeDict_IntegerFormat_withUnit_s33;
    v555[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]117 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s34 = [mEMORY[0x277D3F198]117 commonTypeDict_IntegerFormat_withUnit_s];
    v556[9] = commonTypeDict_IntegerFormat_withUnit_s34;
    v555[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]118 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s35 = [mEMORY[0x277D3F198]118 commonTypeDict_IntegerFormat_withUnit_s];
    v556[10] = commonTypeDict_IntegerFormat_withUnit_s35;
    v555[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]119 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s36 = [mEMORY[0x277D3F198]119 commonTypeDict_IntegerFormat_withUnit_s];
    v556[11] = commonTypeDict_IntegerFormat_withUnit_s36;
    v555[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]120 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s37 = [mEMORY[0x277D3F198]120 commonTypeDict_IntegerFormat_withUnit_s];
    v556[12] = commonTypeDict_IntegerFormat_withUnit_s37;
    v555[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]121 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms42 = [mEMORY[0x277D3F198]121 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[13] = commonTypeDict_IntegerFormat_withUnit_ms42;
    v555[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]122 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us17 = [mEMORY[0x277D3F198]122 commonTypeDict_IntegerFormat_withUnit_us];
    v556[14] = commonTypeDict_IntegerFormat_withUnit_us17;
    v555[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]123 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us18 = [mEMORY[0x277D3F198]123 commonTypeDict_IntegerFormat_withUnit_us];
    v556[15] = commonTypeDict_IntegerFormat_withUnit_us18;
    v555[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]124 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us19 = [mEMORY[0x277D3F198]124 commonTypeDict_IntegerFormat_withUnit_us];
    v556[16] = commonTypeDict_IntegerFormat_withUnit_us19;
    v555[17] = @"PCIEL0Count";
    mEMORY[0x277D3F198]125 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]125 commonTypeDict_IntegerFormat];
    v556[17] = commonTypeDict_IntegerFormat19;
    v555[18] = @"PCIEL0Duration";
    mEMORY[0x277D3F198]126 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us20 = [mEMORY[0x277D3F198]126 commonTypeDict_IntegerFormat_withUnit_us];
    v556[18] = commonTypeDict_IntegerFormat_withUnit_us20;
    v555[19] = @"PCIEL2Count";
    mEMORY[0x277D3F198]127 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]127 commonTypeDict_IntegerFormat];
    v556[19] = commonTypeDict_IntegerFormat20;
    v555[20] = @"PCIEL2Duration";
    mEMORY[0x277D3F198]128 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us21 = [mEMORY[0x277D3F198]128 commonTypeDict_IntegerFormat_withUnit_us];
    v556[20] = commonTypeDict_IntegerFormat_withUnit_us21;
    v555[21] = @"PCIEL1Count";
    mEMORY[0x277D3F198]129 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]129 commonTypeDict_IntegerFormat];
    v556[21] = commonTypeDict_IntegerFormat21;
    v555[22] = @"PCIEL1Duration";
    mEMORY[0x277D3F198]130 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us22 = [mEMORY[0x277D3F198]130 commonTypeDict_IntegerFormat_withUnit_us];
    v556[22] = commonTypeDict_IntegerFormat_withUnit_us22;
    v555[23] = @"PCIEL11Count";
    mEMORY[0x277D3F198]131 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]131 commonTypeDict_IntegerFormat];
    v556[23] = commonTypeDict_IntegerFormat22;
    v555[24] = @"PCIEL11Duration";
    mEMORY[0x277D3F198]132 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us23 = [mEMORY[0x277D3F198]132 commonTypeDict_IntegerFormat_withUnit_us];
    v556[24] = commonTypeDict_IntegerFormat_withUnit_us23;
    v555[25] = @"PCIEL12Count";
    mEMORY[0x277D3F198]133 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]133 commonTypeDict_IntegerFormat];
    v556[25] = commonTypeDict_IntegerFormat23;
    v555[26] = @"PCIEL12Duration";
    mEMORY[0x277D3F198]134 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us24 = [mEMORY[0x277D3F198]134 commonTypeDict_IntegerFormat_withUnit_us];
    v556[26] = commonTypeDict_IntegerFormat_withUnit_us24;
    v555[27] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]135 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms43 = [mEMORY[0x277D3F198]135 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[27] = commonTypeDict_IntegerFormat_withUnit_ms43;
    v555[28] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]136 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms44 = [mEMORY[0x277D3F198]136 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[28] = commonTypeDict_IntegerFormat_withUnit_ms44;
    v555[29] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]137 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s38 = [mEMORY[0x277D3F198]137 commonTypeDict_IntegerFormat_withUnit_s];
    v556[29] = commonTypeDict_IntegerFormat_withUnit_s38;
    v555[30] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]138 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s39 = [mEMORY[0x277D3F198]138 commonTypeDict_IntegerFormat_withUnit_s];
    v556[30] = commonTypeDict_IntegerFormat_withUnit_s39;
    v555[31] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]139 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms45 = [mEMORY[0x277D3F198]139 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[31] = commonTypeDict_IntegerFormat_withUnit_ms45;
    v555[32] = @"LocationScanDuration";
    mEMORY[0x277D3F198]140 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms46 = [mEMORY[0x277D3F198]140 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[32] = commonTypeDict_IntegerFormat_withUnit_ms46;
    v555[33] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]141 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms47 = [mEMORY[0x277D3F198]141 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[33] = commonTypeDict_IntegerFormat_withUnit_ms47;
    v555[34] = @"SetupScanDuration";
    mEMORY[0x277D3F198]142 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms48 = [mEMORY[0x277D3F198]142 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[34] = commonTypeDict_IntegerFormat_withUnit_ms48;
    v555[35] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]143 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms49 = [mEMORY[0x277D3F198]143 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[35] = commonTypeDict_IntegerFormat_withUnit_ms49;
    v555[36] = @"CurrentChannel";
    mEMORY[0x277D3F198]144 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]144 commonTypeDict_IntegerFormat];
    v556[36] = commonTypeDict_IntegerFormat24;
    v555[37] = @"CurrentSSID";
    mEMORY[0x277D3F198]145 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]145 commonTypeDict_StringFormat];
    v556[37] = commonTypeDict_StringFormat3;
    v555[38] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]146 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]146 commonTypeDict_IntegerFormat];
    v556[38] = commonTypeDict_IntegerFormat25;
    v555[39] = @"WifiPowered";
    mEMORY[0x277D3F198]147 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat7 = [mEMORY[0x277D3F198]147 commonTypeDict_BoolFormat];
    v556[39] = commonTypeDict_BoolFormat7;
    v555[40] = @"WowEnabled";
    mEMORY[0x277D3F198]148 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat8 = [mEMORY[0x277D3F198]148 commonTypeDict_BoolFormat];
    v556[40] = commonTypeDict_BoolFormat8;
    v555[41] = @"Carplay";
    mEMORY[0x277D3F198]149 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat9 = [mEMORY[0x277D3F198]149 commonTypeDict_BoolFormat];
    v556[41] = commonTypeDict_BoolFormat9;
    v555[42] = @"SISOTXDuration";
    mEMORY[0x277D3F198]150 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms50 = [mEMORY[0x277D3F198]150 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[42] = commonTypeDict_IntegerFormat_withUnit_ms50;
    v555[43] = @"MIMOTXDuration";
    mEMORY[0x277D3F198]151 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms51 = [mEMORY[0x277D3F198]151 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[43] = commonTypeDict_IntegerFormat_withUnit_ms51;
    v555[44] = @"MIMORXDuration";
    mEMORY[0x277D3F198]152 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms52 = [mEMORY[0x277D3F198]152 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[44] = commonTypeDict_IntegerFormat_withUnit_ms52;
    v555[45] = @"SISORXDuration";
    mEMORY[0x277D3F198]153 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms53 = [mEMORY[0x277D3F198]153 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[45] = commonTypeDict_IntegerFormat_withUnit_ms53;
    v555[46] = @"MIMOCSDuration";
    mEMORY[0x277D3F198]154 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms54 = [mEMORY[0x277D3F198]154 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[46] = commonTypeDict_IntegerFormat_withUnit_ms54;
    v555[47] = @"SISOCSDuration";
    mEMORY[0x277D3F198]155 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms55 = [mEMORY[0x277D3F198]155 commonTypeDict_IntegerFormat_withUnit_ms];
    v556[47] = commonTypeDict_IntegerFormat_withUnit_ms55;
    v555[48] = @"READINGTYPE";
    mEMORY[0x277D3F198]156 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]156 commonTypeDict_IntegerFormat];
    v556[48] = commonTypeDict_IntegerFormat26;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v556 forKeys:v555 count:49];
    v560[1] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v560 forKeys:v559 count:2];

    entryEventBackwardDefinitionCumulativeMultiCore = v33;
  }

  else if (([MEMORY[0x277D3F208] isWiFiClass:1004011] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004012) && objc_msgSend(MEMORY[0x277D3F208], "kPLSoCClassOfDevice") < 1001205)
  {
    v553[0] = *MEMORY[0x277D3F4E8];
    v551 = *MEMORY[0x277D3F568];
    v552 = &unk_28714B688;
    v535 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v552 forKeys:&v551 count:1];
    v554[0] = v535;
    v553[1] = *MEMORY[0x277D3F540];
    v549[0] = @"WifiTimestamp";
    mEMORY[0x277D3F198]157 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s40 = [mEMORY[0x277D3F198]157 commonTypeDict_IntegerFormat_withUnit_s];
    v550[0] = commonTypeDict_IntegerFormat_withUnit_s40;
    v549[1] = @"PMDuration";
    mEMORY[0x277D3F198]158 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s41 = [mEMORY[0x277D3F198]158 commonTypeDict_IntegerFormat_withUnit_s];
    v550[1] = commonTypeDict_IntegerFormat_withUnit_s41;
    v549[2] = @"MPCDuration";
    mEMORY[0x277D3F198]159 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s42 = [mEMORY[0x277D3F198]159 commonTypeDict_IntegerFormat_withUnit_s];
    v550[2] = commonTypeDict_IntegerFormat_withUnit_s42;
    v549[3] = @"TXDuration";
    mEMORY[0x277D3F198]160 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms56 = [mEMORY[0x277D3F198]160 commonTypeDict_IntegerFormat_withUnit_ms];
    v550[3] = commonTypeDict_IntegerFormat_withUnit_ms56;
    v549[4] = @"RXDuration";
    mEMORY[0x277D3F198]161 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms57 = [mEMORY[0x277D3F198]161 commonTypeDict_IntegerFormat_withUnit_ms];
    v550[4] = commonTypeDict_IntegerFormat_withUnit_ms57;
    v549[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]162 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s43 = [mEMORY[0x277D3F198]162 commonTypeDict_IntegerFormat_withUnit_s];
    v550[5] = commonTypeDict_IntegerFormat_withUnit_s43;
    v549[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]163 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s44 = [mEMORY[0x277D3F198]163 commonTypeDict_IntegerFormat_withUnit_s];
    v550[6] = commonTypeDict_IntegerFormat_withUnit_s44;
    v549[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]164 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s45 = [mEMORY[0x277D3F198]164 commonTypeDict_IntegerFormat_withUnit_s];
    v550[7] = commonTypeDict_IntegerFormat_withUnit_s45;
    v549[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]165 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s46 = [mEMORY[0x277D3F198]165 commonTypeDict_IntegerFormat_withUnit_s];
    v550[8] = commonTypeDict_IntegerFormat_withUnit_s46;
    v549[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]166 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s47 = [mEMORY[0x277D3F198]166 commonTypeDict_IntegerFormat_withUnit_s];
    v550[9] = commonTypeDict_IntegerFormat_withUnit_s47;
    v549[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]167 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s48 = [mEMORY[0x277D3F198]167 commonTypeDict_IntegerFormat_withUnit_s];
    v550[10] = commonTypeDict_IntegerFormat_withUnit_s48;
    v549[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]168 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s49 = [mEMORY[0x277D3F198]168 commonTypeDict_IntegerFormat_withUnit_s];
    v550[11] = commonTypeDict_IntegerFormat_withUnit_s49;
    v549[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]169 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s50 = [mEMORY[0x277D3F198]169 commonTypeDict_IntegerFormat_withUnit_s];
    v550[12] = commonTypeDict_IntegerFormat_withUnit_s50;
    v549[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]170 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms58 = [mEMORY[0x277D3F198]170 commonTypeDict_IntegerFormat_withUnit_ms];
    v550[13] = commonTypeDict_IntegerFormat_withUnit_ms58;
    v549[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]171 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us25 = [mEMORY[0x277D3F198]171 commonTypeDict_IntegerFormat_withUnit_us];
    v550[14] = commonTypeDict_IntegerFormat_withUnit_us25;
    v549[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]172 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us26 = [mEMORY[0x277D3F198]172 commonTypeDict_IntegerFormat_withUnit_us];
    v550[15] = commonTypeDict_IntegerFormat_withUnit_us26;
    v549[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]173 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us27 = [mEMORY[0x277D3F198]173 commonTypeDict_IntegerFormat_withUnit_us];
    v550[16] = commonTypeDict_IntegerFormat_withUnit_us27;
    v549[17] = @"PCIEL0Count";
    mEMORY[0x277D3F198]174 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat27 = [mEMORY[0x277D3F198]174 commonTypeDict_IntegerFormat];
    v550[17] = commonTypeDict_IntegerFormat27;
    v549[18] = @"PCIEL0Duration";
    mEMORY[0x277D3F198]175 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us28 = [mEMORY[0x277D3F198]175 commonTypeDict_IntegerFormat_withUnit_us];
    v550[18] = commonTypeDict_IntegerFormat_withUnit_us28;
    v549[19] = @"PCIEL2Count";
    mEMORY[0x277D3F198]176 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat28 = [mEMORY[0x277D3F198]176 commonTypeDict_IntegerFormat];
    v550[19] = commonTypeDict_IntegerFormat28;
    v549[20] = @"PCIEL2Duration";
    mEMORY[0x277D3F198]177 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us29 = [mEMORY[0x277D3F198]177 commonTypeDict_IntegerFormat_withUnit_us];
    v550[20] = commonTypeDict_IntegerFormat_withUnit_us29;
    v549[21] = @"PCIEL1Count";
    mEMORY[0x277D3F198]178 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat29 = [mEMORY[0x277D3F198]178 commonTypeDict_IntegerFormat];
    v550[21] = commonTypeDict_IntegerFormat29;
    v549[22] = @"PCIEL1Duration";
    mEMORY[0x277D3F198]179 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us30 = [mEMORY[0x277D3F198]179 commonTypeDict_IntegerFormat_withUnit_us];
    v550[22] = commonTypeDict_IntegerFormat_withUnit_us30;
    v549[23] = @"PCIEL11Count";
    mEMORY[0x277D3F198]180 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat30 = [mEMORY[0x277D3F198]180 commonTypeDict_IntegerFormat];
    v550[23] = commonTypeDict_IntegerFormat30;
    v549[24] = @"PCIEL11Duration";
    mEMORY[0x277D3F198]181 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us31 = [mEMORY[0x277D3F198]181 commonTypeDict_IntegerFormat_withUnit_us];
    v550[24] = commonTypeDict_IntegerFormat_withUnit_us31;
    v549[25] = @"PCIEL12Count";
    mEMORY[0x277D3F198]182 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat31 = [mEMORY[0x277D3F198]182 commonTypeDict_IntegerFormat];
    v550[25] = commonTypeDict_IntegerFormat31;
    v549[26] = @"PCIEL12Duration";
    mEMORY[0x277D3F198]183 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us32 = [mEMORY[0x277D3F198]183 commonTypeDict_IntegerFormat_withUnit_us];
    v550[26] = commonTypeDict_IntegerFormat_withUnit_us32;
    v549[27] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]184 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms59 = [mEMORY[0x277D3F198]184 commonTypeDict_IntegerFormat_withUnit_ms];
    v550[27] = commonTypeDict_IntegerFormat_withUnit_ms59;
    v549[28] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]185 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms60 = [mEMORY[0x277D3F198]185 commonTypeDict_IntegerFormat_withUnit_ms];
    v550[28] = commonTypeDict_IntegerFormat_withUnit_ms60;
    v549[29] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]186 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s51 = [mEMORY[0x277D3F198]186 commonTypeDict_IntegerFormat_withUnit_s];
    v550[29] = commonTypeDict_IntegerFormat_withUnit_s51;
    v549[30] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]187 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s52 = [mEMORY[0x277D3F198]187 commonTypeDict_IntegerFormat_withUnit_s];
    v550[30] = commonTypeDict_IntegerFormat_withUnit_s52;
    v549[31] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]188 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms61 = [mEMORY[0x277D3F198]188 commonTypeDict_IntegerFormat_withUnit_ms];
    v550[31] = commonTypeDict_IntegerFormat_withUnit_ms61;
    v549[32] = @"LocationScanDuration";
    mEMORY[0x277D3F198]189 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms62 = [mEMORY[0x277D3F198]189 commonTypeDict_IntegerFormat_withUnit_ms];
    v550[32] = commonTypeDict_IntegerFormat_withUnit_ms62;
    v549[33] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]190 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms63 = [mEMORY[0x277D3F198]190 commonTypeDict_IntegerFormat_withUnit_ms];
    v550[33] = commonTypeDict_IntegerFormat_withUnit_ms63;
    v549[34] = @"SetupScanDuration";
    mEMORY[0x277D3F198]191 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms64 = [mEMORY[0x277D3F198]191 commonTypeDict_IntegerFormat_withUnit_ms];
    v550[34] = commonTypeDict_IntegerFormat_withUnit_ms64;
    v549[35] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]192 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms65 = [mEMORY[0x277D3F198]192 commonTypeDict_IntegerFormat_withUnit_ms];
    v550[35] = commonTypeDict_IntegerFormat_withUnit_ms65;
    v549[36] = @"CurrentChannel";
    mEMORY[0x277D3F198]193 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat32 = [mEMORY[0x277D3F198]193 commonTypeDict_IntegerFormat];
    v550[36] = commonTypeDict_IntegerFormat32;
    v549[37] = @"CurrentSSID";
    mEMORY[0x277D3F198]194 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]194 commonTypeDict_StringFormat];
    v550[37] = commonTypeDict_StringFormat4;
    v549[38] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]195 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat33 = [mEMORY[0x277D3F198]195 commonTypeDict_IntegerFormat];
    v550[38] = commonTypeDict_IntegerFormat33;
    v549[39] = @"WifiPowered";
    mEMORY[0x277D3F198]196 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat10 = [mEMORY[0x277D3F198]196 commonTypeDict_BoolFormat];
    v550[39] = commonTypeDict_BoolFormat10;
    v549[40] = @"WowEnabled";
    mEMORY[0x277D3F198]197 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat11 = [mEMORY[0x277D3F198]197 commonTypeDict_BoolFormat];
    v550[40] = commonTypeDict_BoolFormat11;
    v549[41] = @"Carplay";
    mEMORY[0x277D3F198]198 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat12 = [mEMORY[0x277D3F198]198 commonTypeDict_BoolFormat];
    v550[41] = commonTypeDict_BoolFormat12;
    v549[42] = @"READINGTYPE";
    mEMORY[0x277D3F198]199 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat34 = [mEMORY[0x277D3F198]199 commonTypeDict_IntegerFormat];
    v550[42] = commonTypeDict_IntegerFormat34;
    v549[43] = @"PhyOfflineDuration";
    mEMORY[0x277D3F198]200 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat35 = [mEMORY[0x277D3F198]200 commonTypeDict_IntegerFormat];
    v550[43] = commonTypeDict_IntegerFormat35;
    v549[44] = @"PhyCalibrationDuration";
    mEMORY[0x277D3F198]201 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat36 = [mEMORY[0x277D3F198]201 commonTypeDict_IntegerFormat];
    v550[44] = commonTypeDict_IntegerFormat36;
    v549[45] = @"PhyCalibrationCount";
    mEMORY[0x277D3F198]202 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat37 = [mEMORY[0x277D3F198]202 commonTypeDict_IntegerFormat];
    v550[45] = commonTypeDict_IntegerFormat37;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v550 forKeys:v549 count:46];
    v554[1] = v42;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v554 forKeys:v553 count:2];

    entryEventBackwardDefinitionCumulativeMultiCore = v43;
  }

  else
  {
    if ([MEMORY[0x277D3F208] isWiFiClass:1004012] && objc_msgSend(MEMORY[0x277D3F208], "kPLSoCClassOfDevice") > 1001204)
    {
      v547[0] = *MEMORY[0x277D3F4E8];
      v545 = *MEMORY[0x277D3F568];
      v546 = &unk_28714B618;
      v536 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v546 forKeys:&v545 count:1];
      v548[0] = v536;
      v547[1] = *MEMORY[0x277D3F540];
      v543[0] = @"WifiTimestamp";
      mEMORY[0x277D3F198]203 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s53 = [mEMORY[0x277D3F198]203 commonTypeDict_IntegerFormat_withUnit_s];
      v544[0] = commonTypeDict_IntegerFormat_withUnit_s53;
      v543[1] = @"PMDuration";
      mEMORY[0x277D3F198]204 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s54 = [mEMORY[0x277D3F198]204 commonTypeDict_IntegerFormat_withUnit_s];
      v544[1] = commonTypeDict_IntegerFormat_withUnit_s54;
      v543[2] = @"MPCDuration";
      mEMORY[0x277D3F198]205 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s55 = [mEMORY[0x277D3F198]205 commonTypeDict_IntegerFormat_withUnit_s];
      v544[2] = commonTypeDict_IntegerFormat_withUnit_s55;
      v543[3] = @"TXDuration";
      mEMORY[0x277D3F198]206 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms66 = [mEMORY[0x277D3F198]206 commonTypeDict_IntegerFormat_withUnit_ms];
      v544[3] = commonTypeDict_IntegerFormat_withUnit_ms66;
      v543[4] = @"RXDuration";
      mEMORY[0x277D3F198]207 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms67 = [mEMORY[0x277D3F198]207 commonTypeDict_IntegerFormat_withUnit_ms];
      v544[4] = commonTypeDict_IntegerFormat_withUnit_ms67;
      v543[5] = @"HSICSuspendDuration";
      mEMORY[0x277D3F198]208 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s56 = [mEMORY[0x277D3F198]208 commonTypeDict_IntegerFormat_withUnit_s];
      v544[5] = commonTypeDict_IntegerFormat_withUnit_s56;
      v543[6] = @"HSICActiveDuration";
      mEMORY[0x277D3F198]209 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s57 = [mEMORY[0x277D3F198]209 commonTypeDict_IntegerFormat_withUnit_s];
      v544[6] = commonTypeDict_IntegerFormat_withUnit_s57;
      v543[7] = @"PNOScanSSIDDuration";
      mEMORY[0x277D3F198]210 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s58 = [mEMORY[0x277D3F198]210 commonTypeDict_IntegerFormat_withUnit_s];
      v544[7] = commonTypeDict_IntegerFormat_withUnit_s58;
      v543[8] = @"PNOBSSIDDuration";
      mEMORY[0x277D3F198]211 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s59 = [mEMORY[0x277D3F198]211 commonTypeDict_IntegerFormat_withUnit_s];
      v544[8] = commonTypeDict_IntegerFormat_withUnit_s59;
      v543[9] = @"RoamScanDuration";
      mEMORY[0x277D3F198]212 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s60 = [mEMORY[0x277D3F198]212 commonTypeDict_IntegerFormat_withUnit_s];
      v544[9] = commonTypeDict_IntegerFormat_withUnit_s60;
      v543[10] = @"AssociatedScanDuration";
      mEMORY[0x277D3F198]213 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s61 = [mEMORY[0x277D3F198]213 commonTypeDict_IntegerFormat_withUnit_s];
      v544[10] = commonTypeDict_IntegerFormat_withUnit_s61;
      v543[11] = @"OtherScanDuration";
      mEMORY[0x277D3F198]214 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s62 = [mEMORY[0x277D3F198]214 commonTypeDict_IntegerFormat_withUnit_s];
      v544[11] = commonTypeDict_IntegerFormat_withUnit_s62;
      v543[12] = @"UserScanDuration";
      mEMORY[0x277D3F198]215 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s63 = [mEMORY[0x277D3F198]215 commonTypeDict_IntegerFormat_withUnit_s];
      v544[12] = commonTypeDict_IntegerFormat_withUnit_s63;
      v543[13] = @"FRTSDuration";
      mEMORY[0x277D3F198]216 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms68 = [mEMORY[0x277D3F198]216 commonTypeDict_IntegerFormat_withUnit_ms];
      v544[13] = commonTypeDict_IntegerFormat_withUnit_ms68;
      v543[14] = @"PCIESuspendDuration";
      mEMORY[0x277D3F198]217 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us33 = [mEMORY[0x277D3F198]217 commonTypeDict_IntegerFormat_withUnit_us];
      v544[14] = commonTypeDict_IntegerFormat_withUnit_us33;
      v543[15] = @"PCIEActiveDuration";
      mEMORY[0x277D3F198]218 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us34 = [mEMORY[0x277D3F198]218 commonTypeDict_IntegerFormat_withUnit_us];
      v544[15] = commonTypeDict_IntegerFormat_withUnit_us34;
      v543[16] = @"PCIEPERSTDuration";
      mEMORY[0x277D3F198]219 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us35 = [mEMORY[0x277D3F198]219 commonTypeDict_IntegerFormat_withUnit_us];
      v544[16] = commonTypeDict_IntegerFormat_withUnit_us35;
      v543[17] = @"PCIEL0Count";
      mEMORY[0x277D3F198]220 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat38 = [mEMORY[0x277D3F198]220 commonTypeDict_IntegerFormat];
      v544[17] = commonTypeDict_IntegerFormat38;
      v543[18] = @"PCIEL0Duration";
      mEMORY[0x277D3F198]221 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us36 = [mEMORY[0x277D3F198]221 commonTypeDict_IntegerFormat_withUnit_us];
      v544[18] = commonTypeDict_IntegerFormat_withUnit_us36;
      v543[19] = @"PCIEL2Count";
      mEMORY[0x277D3F198]222 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat39 = [mEMORY[0x277D3F198]222 commonTypeDict_IntegerFormat];
      v544[19] = commonTypeDict_IntegerFormat39;
      v543[20] = @"PCIEL2Duration";
      mEMORY[0x277D3F198]223 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us37 = [mEMORY[0x277D3F198]223 commonTypeDict_IntegerFormat_withUnit_us];
      v544[20] = commonTypeDict_IntegerFormat_withUnit_us37;
      v543[21] = @"PCIEL1Count";
      mEMORY[0x277D3F198]224 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat40 = [mEMORY[0x277D3F198]224 commonTypeDict_IntegerFormat];
      v544[21] = commonTypeDict_IntegerFormat40;
      v543[22] = @"PCIEL1Duration";
      mEMORY[0x277D3F198]225 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us38 = [mEMORY[0x277D3F198]225 commonTypeDict_IntegerFormat_withUnit_us];
      v544[22] = commonTypeDict_IntegerFormat_withUnit_us38;
      v543[23] = @"PCIEL11Count";
      mEMORY[0x277D3F198]226 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat41 = [mEMORY[0x277D3F198]226 commonTypeDict_IntegerFormat];
      v544[23] = commonTypeDict_IntegerFormat41;
      v543[24] = @"PCIEL11Duration";
      mEMORY[0x277D3F198]227 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us39 = [mEMORY[0x277D3F198]227 commonTypeDict_IntegerFormat_withUnit_us];
      v544[24] = commonTypeDict_IntegerFormat_withUnit_us39;
      v543[25] = @"PCIEL12Count";
      mEMORY[0x277D3F198]228 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat42 = [mEMORY[0x277D3F198]228 commonTypeDict_IntegerFormat];
      v544[25] = commonTypeDict_IntegerFormat42;
      v543[26] = @"PCIEL12Duration";
      mEMORY[0x277D3F198]229 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us40 = [mEMORY[0x277D3F198]229 commonTypeDict_IntegerFormat_withUnit_us];
      v544[26] = commonTypeDict_IntegerFormat_withUnit_us40;
      v543[27] = @"AWDLTXDuration";
      mEMORY[0x277D3F198]230 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms69 = [mEMORY[0x277D3F198]230 commonTypeDict_IntegerFormat_withUnit_ms];
      v544[27] = commonTypeDict_IntegerFormat_withUnit_ms69;
      v543[28] = @"AWDLRXDuration";
      mEMORY[0x277D3F198]231 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms70 = [mEMORY[0x277D3F198]231 commonTypeDict_IntegerFormat_withUnit_ms];
      v544[28] = commonTypeDict_IntegerFormat_withUnit_ms70;
      v543[29] = @"AWDLAWDuration";
      mEMORY[0x277D3F198]232 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s64 = [mEMORY[0x277D3F198]232 commonTypeDict_IntegerFormat_withUnit_s];
      v544[29] = commonTypeDict_IntegerFormat_withUnit_s64;
      v543[30] = @"AWDLScanDuration";
      mEMORY[0x277D3F198]233 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s65 = [mEMORY[0x277D3F198]233 commonTypeDict_IntegerFormat_withUnit_s];
      v544[30] = commonTypeDict_IntegerFormat_withUnit_s65;
      v543[31] = @"AutojoinScanDuration";
      mEMORY[0x277D3F198]234 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms71 = [mEMORY[0x277D3F198]234 commonTypeDict_IntegerFormat_withUnit_ms];
      v544[31] = commonTypeDict_IntegerFormat_withUnit_ms71;
      v543[32] = @"LocationScanDuration";
      mEMORY[0x277D3F198]235 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms72 = [mEMORY[0x277D3F198]235 commonTypeDict_IntegerFormat_withUnit_ms];
      v544[32] = commonTypeDict_IntegerFormat_withUnit_ms72;
      v543[33] = @"PipelineScanDuration";
      mEMORY[0x277D3F198]236 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms73 = [mEMORY[0x277D3F198]236 commonTypeDict_IntegerFormat_withUnit_ms];
      v544[33] = commonTypeDict_IntegerFormat_withUnit_ms73;
      v543[34] = @"SetupScanDuration";
      mEMORY[0x277D3F198]237 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms74 = [mEMORY[0x277D3F198]237 commonTypeDict_IntegerFormat_withUnit_ms];
      v544[34] = commonTypeDict_IntegerFormat_withUnit_ms74;
      v543[35] = @"UnknownScanDuration";
      mEMORY[0x277D3F198]238 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms75 = [mEMORY[0x277D3F198]238 commonTypeDict_IntegerFormat_withUnit_ms];
      v544[35] = commonTypeDict_IntegerFormat_withUnit_ms75;
      v543[36] = @"CurrentChannel";
      mEMORY[0x277D3F198]239 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat43 = [mEMORY[0x277D3F198]239 commonTypeDict_IntegerFormat];
      v544[36] = commonTypeDict_IntegerFormat43;
      v543[37] = @"CurrentSSID";
      mEMORY[0x277D3F198]240 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_StringFormat5 = [mEMORY[0x277D3F198]240 commonTypeDict_StringFormat];
      v544[37] = commonTypeDict_StringFormat5;
      v543[38] = @"CurrentBandwidth";
      mEMORY[0x277D3F198]241 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat44 = [mEMORY[0x277D3F198]241 commonTypeDict_IntegerFormat];
      v544[38] = commonTypeDict_IntegerFormat44;
      v543[39] = @"WifiPowered";
      mEMORY[0x277D3F198]242 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_BoolFormat13 = [mEMORY[0x277D3F198]242 commonTypeDict_BoolFormat];
      v544[39] = commonTypeDict_BoolFormat13;
      v543[40] = @"WowEnabled";
      mEMORY[0x277D3F198]243 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_BoolFormat14 = [mEMORY[0x277D3F198]243 commonTypeDict_BoolFormat];
      v544[40] = commonTypeDict_BoolFormat14;
      v543[41] = @"Carplay";
      mEMORY[0x277D3F198]244 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_BoolFormat15 = [mEMORY[0x277D3F198]244 commonTypeDict_BoolFormat];
      v544[41] = commonTypeDict_BoolFormat15;
      v543[42] = @"READINGTYPE";
      mEMORY[0x277D3F198]245 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat45 = [mEMORY[0x277D3F198]245 commonTypeDict_IntegerFormat];
      v544[42] = commonTypeDict_IntegerFormat45;
      v543[43] = @"PhyOfflineDuration";
      mEMORY[0x277D3F198]246 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat46 = [mEMORY[0x277D3F198]246 commonTypeDict_IntegerFormat];
      v544[43] = commonTypeDict_IntegerFormat46;
      v543[44] = @"PhyCalibrationDuration";
      mEMORY[0x277D3F198]247 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat47 = [mEMORY[0x277D3F198]247 commonTypeDict_IntegerFormat];
      v544[44] = commonTypeDict_IntegerFormat47;
      v543[45] = @"PhyCalibrationCount";
      mEMORY[0x277D3F198]248 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat48 = [mEMORY[0x277D3F198]248 commonTypeDict_IntegerFormat];
      v544[45] = commonTypeDict_IntegerFormat48;
      v543[46] = @"PNOScanSSID5GDuration";
      mEMORY[0x277D3F198]249 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s66 = [mEMORY[0x277D3F198]249 commonTypeDict_IntegerFormat_withUnit_s];
      v544[46] = commonTypeDict_IntegerFormat_withUnit_s66;
      v543[47] = @"PNOBSSID5GDuration";
      mEMORY[0x277D3F198]250 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s67 = [mEMORY[0x277D3F198]250 commonTypeDict_IntegerFormat_withUnit_s];
      v544[47] = commonTypeDict_IntegerFormat_withUnit_s67;
      v543[48] = @"RoamScan5GDuration";
      mEMORY[0x277D3F198]251 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s68 = [mEMORY[0x277D3F198]251 commonTypeDict_IntegerFormat_withUnit_s];
      v544[48] = commonTypeDict_IntegerFormat_withUnit_s68;
      v543[49] = @"AssociatedScan5GDuration";
      mEMORY[0x277D3F198]252 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s69 = [mEMORY[0x277D3F198]252 commonTypeDict_IntegerFormat_withUnit_s];
      v544[49] = commonTypeDict_IntegerFormat_withUnit_s69;
      v543[50] = @"OtherScan5GDuration";
      mEMORY[0x277D3F198]253 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s70 = [mEMORY[0x277D3F198]253 commonTypeDict_IntegerFormat_withUnit_s];
      v544[50] = commonTypeDict_IntegerFormat_withUnit_s70;
      v543[51] = @"UserScan5GDuration";
      mEMORY[0x277D3F198]254 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s71 = [mEMORY[0x277D3F198]254 commonTypeDict_IntegerFormat_withUnit_s];
      v544[51] = commonTypeDict_IntegerFormat_withUnit_s71;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v544 forKeys:v543 count:52];
      v548[1] = v52;
      v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v548 forKeys:v547 count:2];
    }

    else
    {
      v541[0] = *MEMORY[0x277D3F4E8];
      v539 = *MEMORY[0x277D3F568];
      v540 = &unk_28714B698;
      v536 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v540 forKeys:&v539 count:1];
      v542[0] = v536;
      v541[1] = *MEMORY[0x277D3F540];
      v537[0] = @"WifiTimestamp";
      mEMORY[0x277D3F198]203 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s53 = [mEMORY[0x277D3F198]203 commonTypeDict_IntegerFormat_withUnit_s];
      v538[0] = commonTypeDict_IntegerFormat_withUnit_s53;
      v537[1] = @"PMDuration";
      mEMORY[0x277D3F198]204 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s54 = [mEMORY[0x277D3F198]204 commonTypeDict_IntegerFormat_withUnit_s];
      v538[1] = commonTypeDict_IntegerFormat_withUnit_s54;
      v537[2] = @"MPCDuration";
      mEMORY[0x277D3F198]205 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s55 = [mEMORY[0x277D3F198]205 commonTypeDict_IntegerFormat_withUnit_s];
      v538[2] = commonTypeDict_IntegerFormat_withUnit_s55;
      v537[3] = @"TXDuration";
      mEMORY[0x277D3F198]206 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms66 = [mEMORY[0x277D3F198]206 commonTypeDict_IntegerFormat_withUnit_ms];
      v538[3] = commonTypeDict_IntegerFormat_withUnit_ms66;
      v537[4] = @"RXDuration";
      mEMORY[0x277D3F198]207 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms67 = [mEMORY[0x277D3F198]207 commonTypeDict_IntegerFormat_withUnit_ms];
      v538[4] = commonTypeDict_IntegerFormat_withUnit_ms67;
      v537[5] = @"HSICSuspendDuration";
      mEMORY[0x277D3F198]208 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s56 = [mEMORY[0x277D3F198]208 commonTypeDict_IntegerFormat_withUnit_s];
      v538[5] = commonTypeDict_IntegerFormat_withUnit_s56;
      v537[6] = @"HSICActiveDuration";
      mEMORY[0x277D3F198]209 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s57 = [mEMORY[0x277D3F198]209 commonTypeDict_IntegerFormat_withUnit_s];
      v538[6] = commonTypeDict_IntegerFormat_withUnit_s57;
      v537[7] = @"PNOScanSSIDDuration";
      mEMORY[0x277D3F198]210 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s58 = [mEMORY[0x277D3F198]210 commonTypeDict_IntegerFormat_withUnit_s];
      v538[7] = commonTypeDict_IntegerFormat_withUnit_s58;
      v537[8] = @"PNOBSSIDDuration";
      mEMORY[0x277D3F198]211 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s59 = [mEMORY[0x277D3F198]211 commonTypeDict_IntegerFormat_withUnit_s];
      v538[8] = commonTypeDict_IntegerFormat_withUnit_s59;
      v537[9] = @"RoamScanDuration";
      mEMORY[0x277D3F198]212 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s60 = [mEMORY[0x277D3F198]212 commonTypeDict_IntegerFormat_withUnit_s];
      v538[9] = commonTypeDict_IntegerFormat_withUnit_s60;
      v537[10] = @"AssociatedScanDuration";
      mEMORY[0x277D3F198]213 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s61 = [mEMORY[0x277D3F198]213 commonTypeDict_IntegerFormat_withUnit_s];
      v538[10] = commonTypeDict_IntegerFormat_withUnit_s61;
      v537[11] = @"OtherScanDuration";
      mEMORY[0x277D3F198]214 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s62 = [mEMORY[0x277D3F198]214 commonTypeDict_IntegerFormat_withUnit_s];
      v538[11] = commonTypeDict_IntegerFormat_withUnit_s62;
      v537[12] = @"UserScanDuration";
      mEMORY[0x277D3F198]215 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s63 = [mEMORY[0x277D3F198]215 commonTypeDict_IntegerFormat_withUnit_s];
      v538[12] = commonTypeDict_IntegerFormat_withUnit_s63;
      v537[13] = @"FRTSDuration";
      mEMORY[0x277D3F198]216 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms68 = [mEMORY[0x277D3F198]216 commonTypeDict_IntegerFormat_withUnit_ms];
      v538[13] = commonTypeDict_IntegerFormat_withUnit_ms68;
      v537[14] = @"PCIESuspendDuration";
      mEMORY[0x277D3F198]217 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us33 = [mEMORY[0x277D3F198]217 commonTypeDict_IntegerFormat_withUnit_us];
      v538[14] = commonTypeDict_IntegerFormat_withUnit_us33;
      v537[15] = @"PCIEActiveDuration";
      mEMORY[0x277D3F198]218 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us34 = [mEMORY[0x277D3F198]218 commonTypeDict_IntegerFormat_withUnit_us];
      v538[15] = commonTypeDict_IntegerFormat_withUnit_us34;
      v537[16] = @"PCIEPERSTDuration";
      mEMORY[0x277D3F198]219 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us35 = [mEMORY[0x277D3F198]219 commonTypeDict_IntegerFormat_withUnit_us];
      v538[16] = commonTypeDict_IntegerFormat_withUnit_us35;
      v537[17] = @"PCIEL0Count";
      mEMORY[0x277D3F198]220 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat38 = [mEMORY[0x277D3F198]220 commonTypeDict_IntegerFormat];
      v538[17] = commonTypeDict_IntegerFormat38;
      v537[18] = @"PCIEL0Duration";
      mEMORY[0x277D3F198]221 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us36 = [mEMORY[0x277D3F198]221 commonTypeDict_IntegerFormat_withUnit_us];
      v538[18] = commonTypeDict_IntegerFormat_withUnit_us36;
      v537[19] = @"PCIEL2Count";
      mEMORY[0x277D3F198]222 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat39 = [mEMORY[0x277D3F198]222 commonTypeDict_IntegerFormat];
      v538[19] = commonTypeDict_IntegerFormat39;
      v537[20] = @"PCIEL2Duration";
      mEMORY[0x277D3F198]223 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us37 = [mEMORY[0x277D3F198]223 commonTypeDict_IntegerFormat_withUnit_us];
      v538[20] = commonTypeDict_IntegerFormat_withUnit_us37;
      v537[21] = @"PCIEL1Count";
      mEMORY[0x277D3F198]224 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat40 = [mEMORY[0x277D3F198]224 commonTypeDict_IntegerFormat];
      v538[21] = commonTypeDict_IntegerFormat40;
      v537[22] = @"PCIEL1Duration";
      mEMORY[0x277D3F198]225 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us38 = [mEMORY[0x277D3F198]225 commonTypeDict_IntegerFormat_withUnit_us];
      v538[22] = commonTypeDict_IntegerFormat_withUnit_us38;
      v537[23] = @"PCIEL11Count";
      mEMORY[0x277D3F198]226 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat41 = [mEMORY[0x277D3F198]226 commonTypeDict_IntegerFormat];
      v538[23] = commonTypeDict_IntegerFormat41;
      v537[24] = @"PCIEL11Duration";
      mEMORY[0x277D3F198]227 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us39 = [mEMORY[0x277D3F198]227 commonTypeDict_IntegerFormat_withUnit_us];
      v538[24] = commonTypeDict_IntegerFormat_withUnit_us39;
      v537[25] = @"PCIEL12Count";
      mEMORY[0x277D3F198]228 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat42 = [mEMORY[0x277D3F198]228 commonTypeDict_IntegerFormat];
      v538[25] = commonTypeDict_IntegerFormat42;
      v537[26] = @"PCIEL12Duration";
      mEMORY[0x277D3F198]229 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us40 = [mEMORY[0x277D3F198]229 commonTypeDict_IntegerFormat_withUnit_us];
      v538[26] = commonTypeDict_IntegerFormat_withUnit_us40;
      v537[27] = @"AWDLTXDuration";
      mEMORY[0x277D3F198]230 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms69 = [mEMORY[0x277D3F198]230 commonTypeDict_IntegerFormat_withUnit_ms];
      v538[27] = commonTypeDict_IntegerFormat_withUnit_ms69;
      v537[28] = @"AWDLRXDuration";
      mEMORY[0x277D3F198]231 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms70 = [mEMORY[0x277D3F198]231 commonTypeDict_IntegerFormat_withUnit_ms];
      v538[28] = commonTypeDict_IntegerFormat_withUnit_ms70;
      v537[29] = @"AWDLAWDuration";
      mEMORY[0x277D3F198]232 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s64 = [mEMORY[0x277D3F198]232 commonTypeDict_IntegerFormat_withUnit_s];
      v538[29] = commonTypeDict_IntegerFormat_withUnit_s64;
      v537[30] = @"AWDLScanDuration";
      mEMORY[0x277D3F198]233 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s65 = [mEMORY[0x277D3F198]233 commonTypeDict_IntegerFormat_withUnit_s];
      v538[30] = commonTypeDict_IntegerFormat_withUnit_s65;
      v537[31] = @"AutojoinScanDuration";
      mEMORY[0x277D3F198]234 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms71 = [mEMORY[0x277D3F198]234 commonTypeDict_IntegerFormat_withUnit_ms];
      v538[31] = commonTypeDict_IntegerFormat_withUnit_ms71;
      v537[32] = @"LocationScanDuration";
      mEMORY[0x277D3F198]235 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms72 = [mEMORY[0x277D3F198]235 commonTypeDict_IntegerFormat_withUnit_ms];
      v538[32] = commonTypeDict_IntegerFormat_withUnit_ms72;
      v537[33] = @"PipelineScanDuration";
      mEMORY[0x277D3F198]236 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms73 = [mEMORY[0x277D3F198]236 commonTypeDict_IntegerFormat_withUnit_ms];
      v538[33] = commonTypeDict_IntegerFormat_withUnit_ms73;
      v537[34] = @"SetupScanDuration";
      mEMORY[0x277D3F198]237 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms74 = [mEMORY[0x277D3F198]237 commonTypeDict_IntegerFormat_withUnit_ms];
      v538[34] = commonTypeDict_IntegerFormat_withUnit_ms74;
      v537[35] = @"UnknownScanDuration";
      mEMORY[0x277D3F198]238 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms75 = [mEMORY[0x277D3F198]238 commonTypeDict_IntegerFormat_withUnit_ms];
      v538[35] = commonTypeDict_IntegerFormat_withUnit_ms75;
      v537[36] = @"CurrentChannel";
      mEMORY[0x277D3F198]239 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat43 = [mEMORY[0x277D3F198]239 commonTypeDict_IntegerFormat];
      v538[36] = commonTypeDict_IntegerFormat43;
      v537[37] = @"CurrentSSID";
      mEMORY[0x277D3F198]240 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_StringFormat5 = [mEMORY[0x277D3F198]240 commonTypeDict_StringFormat];
      v538[37] = commonTypeDict_StringFormat5;
      v537[38] = @"CurrentBandwidth";
      mEMORY[0x277D3F198]241 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat44 = [mEMORY[0x277D3F198]241 commonTypeDict_IntegerFormat];
      v538[38] = commonTypeDict_IntegerFormat44;
      v537[39] = @"WifiPowered";
      mEMORY[0x277D3F198]255 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_BoolFormat16 = [mEMORY[0x277D3F198]255 commonTypeDict_BoolFormat];
      v538[39] = commonTypeDict_BoolFormat16;
      v537[40] = @"WowEnabled";
      mEMORY[0x277D3F198]256 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_BoolFormat17 = [mEMORY[0x277D3F198]256 commonTypeDict_BoolFormat];
      v538[40] = commonTypeDict_BoolFormat17;
      v537[41] = @"Carplay";
      mEMORY[0x277D3F198]257 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_BoolFormat18 = [mEMORY[0x277D3F198]257 commonTypeDict_BoolFormat];
      v538[41] = commonTypeDict_BoolFormat18;
      v537[42] = @"READINGTYPE";
      mEMORY[0x277D3F198]258 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat49 = [mEMORY[0x277D3F198]258 commonTypeDict_IntegerFormat];
      v538[42] = commonTypeDict_IntegerFormat49;
      v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v538 forKeys:v537 count:43];
      v542[1] = v62;
      v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v542 forKeys:v541 count:2];
    }

    entryEventBackwardDefinitionCumulativeMultiCore = v53;
  }

  return entryEventBackwardDefinitionCumulativeMultiCore;
}

+ (id)entryEventBackwardDefinitionDiffBasic
{
  v191[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isWiFiClass:1004013] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004014))
  {
    v190[0] = *MEMORY[0x277D3F4E8];
    v188 = *MEMORY[0x277D3F568];
    v189 = &unk_28714B6A8;
    v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
    v191[0] = v102;
    v190[1] = *MEMORY[0x277D3F540];
    v186[0] = @"TimeDuration";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_withUnit_s];
    v187[0] = commonTypeDict_IntegerFormat_withUnit_s;
    v186[1] = @"PMDuration";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_withUnit_s];
    v187[1] = commonTypeDict_IntegerFormat_withUnit_s2;
    v186[2] = @"MPCDuration";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_withUnit_s];
    v187[2] = commonTypeDict_IntegerFormat_withUnit_s3;
    v186[3] = @"TXDuration";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[3] = commonTypeDict_IntegerFormat_withUnit_ms;
    v186[4] = @"RXDuration";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[4] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v186[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat_withUnit_s];
    v187[5] = commonTypeDict_IntegerFormat_withUnit_s4;
    v186[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_s];
    v187[6] = commonTypeDict_IntegerFormat_withUnit_s5;
    v186[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_s];
    v187[7] = commonTypeDict_IntegerFormat_withUnit_s6;
    v186[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_s];
    v187[8] = commonTypeDict_IntegerFormat_withUnit_s7;
    v186[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_s];
    v187[9] = commonTypeDict_IntegerFormat_withUnit_s8;
    v186[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat_withUnit_s];
    v187[10] = commonTypeDict_IntegerFormat_withUnit_s9;
    v186[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat_withUnit_s];
    v187[11] = commonTypeDict_IntegerFormat_withUnit_s10;
    v186[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat_withUnit_s];
    v187[12] = commonTypeDict_IntegerFormat_withUnit_s11;
    v186[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[13] = commonTypeDict_IntegerFormat_withUnit_ms3;
    v186[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat_withUnit_us];
    v187[14] = commonTypeDict_IntegerFormat_withUnit_us;
    v186[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us2 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat_withUnit_us];
    v187[15] = commonTypeDict_IntegerFormat_withUnit_us2;
    v186[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us3 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat_withUnit_us];
    v187[16] = commonTypeDict_IntegerFormat_withUnit_us3;
    v186[17] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[17] = commonTypeDict_IntegerFormat_withUnit_ms4;
    v186[18] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[18] = commonTypeDict_IntegerFormat_withUnit_ms5;
    v186[19] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s12 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat_withUnit_s];
    v187[19] = commonTypeDict_IntegerFormat_withUnit_s12;
    v186[20] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s13 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat_withUnit_s];
    v187[20] = commonTypeDict_IntegerFormat_withUnit_s13;
    v186[21] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms6 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[21] = commonTypeDict_IntegerFormat_withUnit_ms6;
    v186[22] = @"LocationScanDuration";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms7 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[22] = commonTypeDict_IntegerFormat_withUnit_ms7;
    v186[23] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms8 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[23] = commonTypeDict_IntegerFormat_withUnit_ms8;
    v186[24] = @"SetupScanDuration";
    mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms9 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[24] = commonTypeDict_IntegerFormat_withUnit_ms9;
    v186[25] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms10 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[25] = commonTypeDict_IntegerFormat_withUnit_ms10;
    v186[26] = @"CurrentChannel";
    mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
    v187[26] = commonTypeDict_IntegerFormat;
    v186[27] = @"CurrentSSID";
    mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]28 commonTypeDict_StringFormat];
    v187[27] = commonTypeDict_StringFormat;
    v186[28] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
    v187[28] = commonTypeDict_IntegerFormat2;
    v186[29] = @"WifiPowered";
    mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]30 commonTypeDict_BoolFormat];
    v187[29] = commonTypeDict_BoolFormat;
    v186[30] = @"WowEnabled";
    mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]31 commonTypeDict_BoolFormat];
    v187[30] = commonTypeDict_BoolFormat2;
    v186[31] = @"SISOTXDuration";
    mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms11 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[31] = commonTypeDict_IntegerFormat_withUnit_ms11;
    v186[32] = @"MIMOTXDuration";
    mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms12 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[32] = commonTypeDict_IntegerFormat_withUnit_ms12;
    v186[33] = @"MIMORXDuration";
    mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms13 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[33] = commonTypeDict_IntegerFormat_withUnit_ms13;
    v186[34] = @"SISORXDuration";
    mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms14 = [mEMORY[0x277D3F198]35 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[34] = commonTypeDict_IntegerFormat_withUnit_ms14;
    v186[35] = @"MIMOCSDuration";
    mEMORY[0x277D3F198]36 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms15 = [mEMORY[0x277D3F198]36 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[35] = commonTypeDict_IntegerFormat_withUnit_ms15;
    v186[36] = @"SISOCSDuration";
    mEMORY[0x277D3F198]37 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms16 = [mEMORY[0x277D3F198]37 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[36] = commonTypeDict_IntegerFormat_withUnit_ms16;
    v186[37] = @"OCLRXDuration";
    mEMORY[0x277D3F198]38 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms17 = [mEMORY[0x277D3F198]38 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[37] = commonTypeDict_IntegerFormat_withUnit_ms17;
    v186[38] = @"OCLCSDuration";
    mEMORY[0x277D3F198]39 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms18 = [mEMORY[0x277D3F198]39 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[38] = commonTypeDict_IntegerFormat_withUnit_ms18;
    v186[39] = @"OPSFullDuration";
    mEMORY[0x277D3F198]40 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms19 = [mEMORY[0x277D3F198]40 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[39] = commonTypeDict_IntegerFormat_withUnit_ms19;
    v186[40] = @"OPSPartialDuration";
    mEMORY[0x277D3F198]41 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms20 = [mEMORY[0x277D3F198]41 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[40] = commonTypeDict_IntegerFormat_withUnit_ms20;
    v186[41] = @"PSBWDuration";
    mEMORY[0x277D3F198]42 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms21 = [mEMORY[0x277D3F198]42 commonTypeDict_IntegerFormat_withUnit_ms];
    v187[41] = commonTypeDict_IntegerFormat_withUnit_ms21;
    v186[42] = @"isADHSConnected";
    mEMORY[0x277D3F198]43 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]43 commonTypeDict_IntegerFormat];
    v187[42] = commonTypeDict_IntegerFormat3;
    v186[43] = @"AutoHotspotBTScanDuration";
    mEMORY[0x277D3F198]44 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s14 = [mEMORY[0x277D3F198]44 commonTypeDict_IntegerFormat_withUnit_s];
    v187[43] = commonTypeDict_IntegerFormat_withUnit_s14;
    v186[44] = @"AutoHotspotBTScanCount";
    mEMORY[0x277D3F198]45 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]45 commonTypeDict_IntegerFormat];
    v187[44] = commonTypeDict_IntegerFormat4;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v187 forKeys:v186 count:45];
    v191[1] = v10;
    v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v191 forKeys:v190 count:2];

    commonTypeDict_IntegerFormat_withUnit_s25 = commonTypeDict_IntegerFormat_withUnit_s;
    mEMORY[0x277D3F198]77 = mEMORY[0x277D3F198]31;

    mEMORY[0x277D3F198]76 = mEMORY[0x277D3F198]4;
    commonTypeDict_IntegerFormat_withUnit_s27 = commonTypeDict_IntegerFormat_withUnit_s3;

    mEMORY[0x277D3F198]75 = mEMORY[0x277D3F198]3;
    commonTypeDict_IntegerFormat_withUnit_s26 = commonTypeDict_IntegerFormat_withUnit_s2;

    mEMORY[0x277D3F198]74 = mEMORY[0x277D3F198]2;
    mEMORY[0x277D3F198]73 = mEMORY[0x277D3F198];

    v19 = v102;
LABEL_4:

LABEL_5:
LABEL_6:

    goto LABEL_7;
  }

  if ([MEMORY[0x277D3F208] isWiFiClass:1004010])
  {
    v184[0] = *MEMORY[0x277D3F4E8];
    v182 = *MEMORY[0x277D3F568];
    v183 = &unk_28714B6A8;
    v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
    v185[0] = v103;
    v184[1] = *MEMORY[0x277D3F540];
    v180[0] = @"TimeDuration";
    mEMORY[0x277D3F198]46 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s15 = [mEMORY[0x277D3F198]46 commonTypeDict_IntegerFormat_withUnit_s];
    v181[0] = commonTypeDict_IntegerFormat_withUnit_s15;
    v180[1] = @"PMDuration";
    mEMORY[0x277D3F198]47 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s16 = [mEMORY[0x277D3F198]47 commonTypeDict_IntegerFormat_withUnit_s];
    v181[1] = commonTypeDict_IntegerFormat_withUnit_s16;
    v180[2] = @"MPCDuration";
    mEMORY[0x277D3F198]48 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s17 = [mEMORY[0x277D3F198]48 commonTypeDict_IntegerFormat_withUnit_s];
    v181[2] = commonTypeDict_IntegerFormat_withUnit_s17;
    v180[3] = @"TXDuration";
    mEMORY[0x277D3F198]49 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]49 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[3] = commonTypeDict_IntegerFormat_withUnit_ms;
    v180[4] = @"RXDuration";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[4] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v180[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat_withUnit_s];
    v181[5] = commonTypeDict_IntegerFormat_withUnit_s4;
    v180[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_s];
    v181[6] = commonTypeDict_IntegerFormat_withUnit_s5;
    v180[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_s];
    v181[7] = commonTypeDict_IntegerFormat_withUnit_s6;
    v180[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_s];
    v181[8] = commonTypeDict_IntegerFormat_withUnit_s7;
    v180[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_s];
    v181[9] = commonTypeDict_IntegerFormat_withUnit_s8;
    v180[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat_withUnit_s];
    v181[10] = commonTypeDict_IntegerFormat_withUnit_s9;
    v180[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat_withUnit_s];
    v181[11] = commonTypeDict_IntegerFormat_withUnit_s10;
    v180[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat_withUnit_s];
    v181[12] = commonTypeDict_IntegerFormat_withUnit_s11;
    v180[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[13] = commonTypeDict_IntegerFormat_withUnit_ms3;
    v180[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat_withUnit_us];
    v181[14] = commonTypeDict_IntegerFormat_withUnit_us;
    v180[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us2 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat_withUnit_us];
    v181[15] = commonTypeDict_IntegerFormat_withUnit_us2;
    v180[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us3 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat_withUnit_us];
    v181[16] = commonTypeDict_IntegerFormat_withUnit_us3;
    v180[17] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[17] = commonTypeDict_IntegerFormat_withUnit_ms4;
    v180[18] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[18] = commonTypeDict_IntegerFormat_withUnit_ms5;
    v180[19] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s12 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat_withUnit_s];
    v181[19] = commonTypeDict_IntegerFormat_withUnit_s12;
    v180[20] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s13 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat_withUnit_s];
    v181[20] = commonTypeDict_IntegerFormat_withUnit_s13;
    v180[21] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms6 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[21] = commonTypeDict_IntegerFormat_withUnit_ms6;
    v180[22] = @"LocationScanDuration";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms7 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[22] = commonTypeDict_IntegerFormat_withUnit_ms7;
    v180[23] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms8 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[23] = commonTypeDict_IntegerFormat_withUnit_ms8;
    v180[24] = @"SetupScanDuration";
    mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms9 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[24] = commonTypeDict_IntegerFormat_withUnit_ms9;
    v180[25] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms10 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[25] = commonTypeDict_IntegerFormat_withUnit_ms10;
    v180[26] = @"CurrentChannel";
    mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
    v181[26] = commonTypeDict_IntegerFormat;
    v180[27] = @"CurrentSSID";
    mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]28 commonTypeDict_StringFormat];
    v181[27] = commonTypeDict_StringFormat;
    v180[28] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
    v181[28] = commonTypeDict_IntegerFormat2;
    v180[29] = @"WifiPowered";
    mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]30 commonTypeDict_BoolFormat];
    v181[29] = commonTypeDict_BoolFormat;
    v180[30] = @"WowEnabled";
    mEMORY[0x277D3F198]50 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]50 commonTypeDict_BoolFormat];
    v181[30] = commonTypeDict_BoolFormat2;
    v180[31] = @"SISOTXDuration";
    mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms11 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[31] = commonTypeDict_IntegerFormat_withUnit_ms11;
    v180[32] = @"MIMOTXDuration";
    mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms12 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[32] = commonTypeDict_IntegerFormat_withUnit_ms12;
    v180[33] = @"MIMORXDuration";
    mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms13 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[33] = commonTypeDict_IntegerFormat_withUnit_ms13;
    v180[34] = @"SISORXDuration";
    mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms14 = [mEMORY[0x277D3F198]35 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[34] = commonTypeDict_IntegerFormat_withUnit_ms14;
    v180[35] = @"MIMOCSDuration";
    mEMORY[0x277D3F198]36 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms15 = [mEMORY[0x277D3F198]36 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[35] = commonTypeDict_IntegerFormat_withUnit_ms15;
    v180[36] = @"SISOCSDuration";
    mEMORY[0x277D3F198]37 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms16 = [mEMORY[0x277D3F198]37 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[36] = commonTypeDict_IntegerFormat_withUnit_ms16;
    v180[37] = @"OCLRXDuration";
    mEMORY[0x277D3F198]38 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms17 = [mEMORY[0x277D3F198]38 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[37] = commonTypeDict_IntegerFormat_withUnit_ms17;
    v180[38] = @"OCLCSDuration";
    mEMORY[0x277D3F198]39 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms18 = [mEMORY[0x277D3F198]39 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[38] = commonTypeDict_IntegerFormat_withUnit_ms18;
    v180[39] = @"OPSFullDuration";
    mEMORY[0x277D3F198]40 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms22 = [mEMORY[0x277D3F198]40 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[39] = commonTypeDict_IntegerFormat_withUnit_ms22;
    v180[40] = @"OPSPartialDuration";
    mEMORY[0x277D3F198]51 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms23 = [mEMORY[0x277D3F198]51 commonTypeDict_IntegerFormat_withUnit_ms];
    v181[40] = commonTypeDict_IntegerFormat_withUnit_ms23;
    v180[41] = @"isADHSConnected";
    mEMORY[0x277D3F198]52 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]52 commonTypeDict_IntegerFormat];
    v181[41] = commonTypeDict_IntegerFormat5;
    v180[42] = @"AutoHotspotBTScanDuration";
    mEMORY[0x277D3F198]53 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s18 = [mEMORY[0x277D3F198]53 commonTypeDict_IntegerFormat_withUnit_s];
    v181[42] = commonTypeDict_IntegerFormat_withUnit_s18;
    v180[43] = @"AutoHotspotBTScanCount";
    mEMORY[0x277D3F198]54 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]54 commonTypeDict_IntegerFormat];
    v181[43] = commonTypeDict_IntegerFormat6;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v181 forKeys:v180 count:44];
    v185[1] = v29;
    v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v185 forKeys:v184 count:2];

    mEMORY[0x277D3F198]77 = mEMORY[0x277D3F198]50;
    commonTypeDict_IntegerFormat_withUnit_s27 = commonTypeDict_IntegerFormat_withUnit_s17;

    mEMORY[0x277D3F198]75 = mEMORY[0x277D3F198]48;
    commonTypeDict_IntegerFormat_withUnit_s26 = commonTypeDict_IntegerFormat_withUnit_s16;

    mEMORY[0x277D3F198]74 = mEMORY[0x277D3F198]47;
    mEMORY[0x277D3F198]76 = mEMORY[0x277D3F198]49;

    mEMORY[0x277D3F198]73 = mEMORY[0x277D3F198]46;
    v19 = v103;

    commonTypeDict_IntegerFormat_withUnit_s25 = commonTypeDict_IntegerFormat_withUnit_s15;
    goto LABEL_4;
  }

  if ([MEMORY[0x277D3F208] isWiFiClass:1004007])
  {
    v178[0] = *MEMORY[0x277D3F4E8];
    v176 = *MEMORY[0x277D3F568];
    v177 = &unk_28714B6A8;
    v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v177 forKeys:&v176 count:1];
    v179[0] = v104;
    v178[1] = *MEMORY[0x277D3F540];
    v174[0] = @"TimeDuration";
    mEMORY[0x277D3F198]55 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s19 = [mEMORY[0x277D3F198]55 commonTypeDict_IntegerFormat_withUnit_s];
    v175[0] = commonTypeDict_IntegerFormat_withUnit_s19;
    v174[1] = @"PMDuration";
    mEMORY[0x277D3F198]56 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s20 = [mEMORY[0x277D3F198]56 commonTypeDict_IntegerFormat_withUnit_s];
    v175[1] = commonTypeDict_IntegerFormat_withUnit_s20;
    v174[2] = @"MPCDuration";
    mEMORY[0x277D3F198]57 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s21 = [mEMORY[0x277D3F198]57 commonTypeDict_IntegerFormat_withUnit_s];
    v175[2] = commonTypeDict_IntegerFormat_withUnit_s21;
    v174[3] = @"TXDuration";
    mEMORY[0x277D3F198]58 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]58 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[3] = commonTypeDict_IntegerFormat_withUnit_ms;
    v174[4] = @"RXDuration";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[4] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v174[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat_withUnit_s];
    v175[5] = commonTypeDict_IntegerFormat_withUnit_s4;
    v174[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_s];
    v175[6] = commonTypeDict_IntegerFormat_withUnit_s5;
    v174[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_s];
    v175[7] = commonTypeDict_IntegerFormat_withUnit_s6;
    v174[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_s];
    v175[8] = commonTypeDict_IntegerFormat_withUnit_s7;
    v174[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_s];
    v175[9] = commonTypeDict_IntegerFormat_withUnit_s8;
    v174[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat_withUnit_s];
    v175[10] = commonTypeDict_IntegerFormat_withUnit_s9;
    v174[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat_withUnit_s];
    v175[11] = commonTypeDict_IntegerFormat_withUnit_s10;
    v174[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat_withUnit_s];
    v175[12] = commonTypeDict_IntegerFormat_withUnit_s11;
    v174[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[13] = commonTypeDict_IntegerFormat_withUnit_ms3;
    v174[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat_withUnit_us];
    v175[14] = commonTypeDict_IntegerFormat_withUnit_us;
    v174[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us2 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat_withUnit_us];
    v175[15] = commonTypeDict_IntegerFormat_withUnit_us2;
    v174[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us3 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat_withUnit_us];
    v175[16] = commonTypeDict_IntegerFormat_withUnit_us3;
    v174[17] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[17] = commonTypeDict_IntegerFormat_withUnit_ms4;
    v174[18] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[18] = commonTypeDict_IntegerFormat_withUnit_ms5;
    v174[19] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s12 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat_withUnit_s];
    v175[19] = commonTypeDict_IntegerFormat_withUnit_s12;
    v174[20] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s13 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat_withUnit_s];
    v175[20] = commonTypeDict_IntegerFormat_withUnit_s13;
    v174[21] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms6 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[21] = commonTypeDict_IntegerFormat_withUnit_ms6;
    v174[22] = @"LocationScanDuration";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms7 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[22] = commonTypeDict_IntegerFormat_withUnit_ms7;
    v174[23] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms8 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[23] = commonTypeDict_IntegerFormat_withUnit_ms8;
    v174[24] = @"SetupScanDuration";
    mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms9 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[24] = commonTypeDict_IntegerFormat_withUnit_ms9;
    v174[25] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms10 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[25] = commonTypeDict_IntegerFormat_withUnit_ms10;
    v174[26] = @"CurrentChannel";
    mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
    v175[26] = commonTypeDict_IntegerFormat;
    v174[27] = @"CurrentSSID";
    mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]28 commonTypeDict_StringFormat];
    v175[27] = commonTypeDict_StringFormat;
    v174[28] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
    v175[28] = commonTypeDict_IntegerFormat2;
    v174[29] = @"WifiPowered";
    mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]30 commonTypeDict_BoolFormat];
    v175[29] = commonTypeDict_BoolFormat;
    v174[30] = @"WowEnabled";
    mEMORY[0x277D3F198]59 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]59 commonTypeDict_BoolFormat];
    v175[30] = commonTypeDict_BoolFormat2;
    v174[31] = @"SISOTXDuration";
    mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms11 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[31] = commonTypeDict_IntegerFormat_withUnit_ms11;
    v174[32] = @"MIMOTXDuration";
    mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms12 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[32] = commonTypeDict_IntegerFormat_withUnit_ms12;
    v174[33] = @"MIMORXDuration";
    mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms13 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[33] = commonTypeDict_IntegerFormat_withUnit_ms13;
    v174[34] = @"SISORXDuration";
    mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms24 = [mEMORY[0x277D3F198]35 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[34] = commonTypeDict_IntegerFormat_withUnit_ms24;
    v174[35] = @"MIMOCSDuration";
    mEMORY[0x277D3F198]60 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms25 = [mEMORY[0x277D3F198]60 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[35] = commonTypeDict_IntegerFormat_withUnit_ms25;
    v174[36] = @"SISOCSDuration";
    mEMORY[0x277D3F198]61 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms26 = [mEMORY[0x277D3F198]61 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[36] = commonTypeDict_IntegerFormat_withUnit_ms26;
    v174[37] = @"OCLRXDuration";
    mEMORY[0x277D3F198]62 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms27 = [mEMORY[0x277D3F198]62 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[37] = commonTypeDict_IntegerFormat_withUnit_ms27;
    v174[38] = @"OCLCSDuration";
    mEMORY[0x277D3F198]63 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms28 = [mEMORY[0x277D3F198]63 commonTypeDict_IntegerFormat_withUnit_ms];
    v175[38] = commonTypeDict_IntegerFormat_withUnit_ms28;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v175 forKeys:v174 count:39];
    v179[1] = v38;
    v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v179 forKeys:v178 count:2];

    mEMORY[0x277D3F198]74 = mEMORY[0x277D3F198]56;
    commonTypeDict_IntegerFormat_withUnit_s25 = commonTypeDict_IntegerFormat_withUnit_s19;

    mEMORY[0x277D3F198]73 = mEMORY[0x277D3F198]55;
    v19 = v104;

    mEMORY[0x277D3F198]77 = mEMORY[0x277D3F198]59;
    mEMORY[0x277D3F198]76 = mEMORY[0x277D3F198]58;

    commonTypeDict_IntegerFormat_withUnit_s27 = commonTypeDict_IntegerFormat_withUnit_s21;
    mEMORY[0x277D3F198]75 = mEMORY[0x277D3F198]57;

    commonTypeDict_IntegerFormat_withUnit_s26 = commonTypeDict_IntegerFormat_withUnit_s20;
    goto LABEL_5;
  }

  if ([MEMORY[0x277D3F208] isWiFiClass:1004005])
  {
    v172[0] = *MEMORY[0x277D3F4E8];
    v170 = *MEMORY[0x277D3F568];
    v171 = &unk_28714B658;
    v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
    v173[0] = v105;
    v172[1] = *MEMORY[0x277D3F540];
    v168[0] = @"TimeDuration";
    mEMORY[0x277D3F198]64 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s22 = [mEMORY[0x277D3F198]64 commonTypeDict_IntegerFormat_withUnit_s];
    v169[0] = commonTypeDict_IntegerFormat_withUnit_s22;
    v168[1] = @"PMDuration";
    mEMORY[0x277D3F198]65 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s23 = [mEMORY[0x277D3F198]65 commonTypeDict_IntegerFormat_withUnit_s];
    v169[1] = commonTypeDict_IntegerFormat_withUnit_s23;
    v168[2] = @"MPCDuration";
    mEMORY[0x277D3F198]66 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s24 = [mEMORY[0x277D3F198]66 commonTypeDict_IntegerFormat_withUnit_s];
    v169[2] = commonTypeDict_IntegerFormat_withUnit_s24;
    v168[3] = @"TXDuration";
    mEMORY[0x277D3F198]67 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]67 commonTypeDict_IntegerFormat_withUnit_s];
    v169[3] = commonTypeDict_IntegerFormat_withUnit_ms;
    v168[4] = @"RXDuration";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_s];
    v169[4] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v168[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat_withUnit_s];
    v169[5] = commonTypeDict_IntegerFormat_withUnit_s4;
    v168[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_s];
    v169[6] = commonTypeDict_IntegerFormat_withUnit_s5;
    v168[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_s];
    v169[7] = commonTypeDict_IntegerFormat_withUnit_s6;
    v168[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_s];
    v169[8] = commonTypeDict_IntegerFormat_withUnit_s7;
    v168[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_s];
    v169[9] = commonTypeDict_IntegerFormat_withUnit_s8;
    v168[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat_withUnit_s];
    v169[10] = commonTypeDict_IntegerFormat_withUnit_s9;
    v168[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat_withUnit_s];
    v169[11] = commonTypeDict_IntegerFormat_withUnit_s10;
    v168[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat_withUnit_s];
    v169[12] = commonTypeDict_IntegerFormat_withUnit_s11;
    v168[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat_withUnit_ms];
    v169[13] = commonTypeDict_IntegerFormat_withUnit_ms3;
    v168[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat_withUnit_us];
    v169[14] = commonTypeDict_IntegerFormat_withUnit_us;
    v168[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us2 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat_withUnit_us];
    v169[15] = commonTypeDict_IntegerFormat_withUnit_us2;
    v168[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us3 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat_withUnit_us];
    v169[16] = commonTypeDict_IntegerFormat_withUnit_us3;
    v168[17] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat_withUnit_ms];
    v169[17] = commonTypeDict_IntegerFormat_withUnit_ms4;
    v168[18] = @"LocationScanDuration";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat_withUnit_ms];
    v169[18] = commonTypeDict_IntegerFormat_withUnit_ms5;
    v168[19] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s12 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat_withUnit_ms];
    v169[19] = commonTypeDict_IntegerFormat_withUnit_s12;
    v168[20] = @"SetupScanDuration";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s13 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat_withUnit_ms];
    v169[20] = commonTypeDict_IntegerFormat_withUnit_s13;
    v168[21] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms6 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat_withUnit_ms];
    v169[21] = commonTypeDict_IntegerFormat_withUnit_ms6;
    v168[22] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms7 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat_withUnit_ms];
    v169[22] = commonTypeDict_IntegerFormat_withUnit_ms7;
    v168[23] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms8 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat_withUnit_ms];
    v169[23] = commonTypeDict_IntegerFormat_withUnit_ms8;
    v168[24] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms9 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat_withUnit_s];
    v169[24] = commonTypeDict_IntegerFormat_withUnit_ms9;
    v168[25] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms10 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat_withUnit_s];
    v169[25] = commonTypeDict_IntegerFormat_withUnit_ms10;
    v168[26] = @"CurrentChannel";
    mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
    v169[26] = commonTypeDict_IntegerFormat;
    v168[27] = @"CurrentSSID";
    mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]28 commonTypeDict_StringFormat];
    v169[27] = commonTypeDict_StringFormat;
    v168[28] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
    v169[28] = commonTypeDict_IntegerFormat2;
    v168[29] = @"WifiPowered";
    mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]30 commonTypeDict_BoolFormat];
    v169[29] = commonTypeDict_BoolFormat;
    v168[30] = @"WowEnabled";
    mEMORY[0x277D3F198]68 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]68 commonTypeDict_BoolFormat];
    v169[30] = commonTypeDict_BoolFormat2;
    v168[31] = @"SISOTXDuration";
    mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms11 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat_withUnit_ms];
    v169[31] = commonTypeDict_IntegerFormat_withUnit_ms11;
    v168[32] = @"MIMOTXDuration";
    mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms29 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat_withUnit_ms];
    v169[32] = commonTypeDict_IntegerFormat_withUnit_ms29;
    v168[33] = @"MIMORXDuration";
    mEMORY[0x277D3F198]69 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms30 = [mEMORY[0x277D3F198]69 commonTypeDict_IntegerFormat_withUnit_ms];
    v169[33] = commonTypeDict_IntegerFormat_withUnit_ms30;
    v168[34] = @"SISORXDuration";
    mEMORY[0x277D3F198]70 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms31 = [mEMORY[0x277D3F198]70 commonTypeDict_IntegerFormat_withUnit_ms];
    v169[34] = commonTypeDict_IntegerFormat_withUnit_ms31;
    v168[35] = @"MIMOCSDuration";
    mEMORY[0x277D3F198]71 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms32 = [mEMORY[0x277D3F198]71 commonTypeDict_IntegerFormat_withUnit_ms];
    v169[35] = commonTypeDict_IntegerFormat_withUnit_ms32;
    v168[36] = @"SISOCSDuration";
    mEMORY[0x277D3F198]72 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms33 = [mEMORY[0x277D3F198]72 commonTypeDict_IntegerFormat_withUnit_ms];
    v169[36] = commonTypeDict_IntegerFormat_withUnit_ms33;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v169 forKeys:v168 count:37];
    v173[1] = v47;
    v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:2];

    mEMORY[0x277D3F198]77 = mEMORY[0x277D3F198]68;
    mEMORY[0x277D3F198]76 = mEMORY[0x277D3F198]67;

    commonTypeDict_IntegerFormat_withUnit_s27 = commonTypeDict_IntegerFormat_withUnit_s24;
    mEMORY[0x277D3F198]75 = mEMORY[0x277D3F198]66;

    commonTypeDict_IntegerFormat_withUnit_s26 = commonTypeDict_IntegerFormat_withUnit_s23;
    mEMORY[0x277D3F198]74 = mEMORY[0x277D3F198]65;

    commonTypeDict_IntegerFormat_withUnit_s25 = commonTypeDict_IntegerFormat_withUnit_s22;
    mEMORY[0x277D3F198]73 = mEMORY[0x277D3F198]64;

    v19 = v105;
    goto LABEL_6;
  }

  v166[0] = *MEMORY[0x277D3F4E8];
  v164 = *MEMORY[0x277D3F568];
  v165 = &unk_28714B648;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
  v167[0] = v19;
  v166[1] = *MEMORY[0x277D3F540];
  v162[0] = @"TimeDuration";
  mEMORY[0x277D3F198]73 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s25 = [mEMORY[0x277D3F198]73 commonTypeDict_IntegerFormat_withUnit_s];
  v163[0] = commonTypeDict_IntegerFormat_withUnit_s25;
  v162[1] = @"PMDuration";
  mEMORY[0x277D3F198]74 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s26 = [mEMORY[0x277D3F198]74 commonTypeDict_IntegerFormat_withUnit_s];
  v163[1] = commonTypeDict_IntegerFormat_withUnit_s26;
  v162[2] = @"MPCDuration";
  mEMORY[0x277D3F198]75 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s27 = [mEMORY[0x277D3F198]75 commonTypeDict_IntegerFormat_withUnit_s];
  v163[2] = commonTypeDict_IntegerFormat_withUnit_s27;
  v162[3] = @"TXDuration";
  mEMORY[0x277D3F198]76 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]76 commonTypeDict_IntegerFormat_withUnit_s];
  v163[3] = commonTypeDict_IntegerFormat_withUnit_ms;
  v162[4] = @"RXDuration";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_s];
  v163[4] = commonTypeDict_IntegerFormat_withUnit_ms2;
  v162[5] = @"HSICSuspendDuration";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat_withUnit_s];
  v163[5] = commonTypeDict_IntegerFormat_withUnit_s4;
  v162[6] = @"HSICActiveDuration";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_s];
  v163[6] = commonTypeDict_IntegerFormat_withUnit_s5;
  v162[7] = @"PNOScanSSIDDuration";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_s];
  v163[7] = commonTypeDict_IntegerFormat_withUnit_s6;
  v162[8] = @"PNOBSSIDDuration";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_s];
  v163[8] = commonTypeDict_IntegerFormat_withUnit_s7;
  v162[9] = @"RoamScanDuration";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_s];
  v163[9] = commonTypeDict_IntegerFormat_withUnit_s8;
  v162[10] = @"AssociatedScanDuration";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat_withUnit_s];
  v163[10] = commonTypeDict_IntegerFormat_withUnit_s9;
  v162[11] = @"OtherScanDuration";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat_withUnit_s];
  v163[11] = commonTypeDict_IntegerFormat_withUnit_s10;
  v162[12] = @"UserScanDuration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat_withUnit_s];
  v163[12] = commonTypeDict_IntegerFormat_withUnit_s11;
  v162[13] = @"FRTSDuration";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat_withUnit_ms];
  v163[13] = commonTypeDict_IntegerFormat_withUnit_ms3;
  v162[14] = @"PCIESuspendDuration";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat_withUnit_us];
  v163[14] = commonTypeDict_IntegerFormat_withUnit_us;
  v162[15] = @"PCIEActiveDuration";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us2 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat_withUnit_us];
  v163[15] = commonTypeDict_IntegerFormat_withUnit_us2;
  v162[16] = @"PCIEPERSTDuration";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us3 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat_withUnit_us];
  v163[16] = commonTypeDict_IntegerFormat_withUnit_us3;
  v162[17] = @"AutojoinScanDuration";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat_withUnit_ms];
  v163[17] = commonTypeDict_IntegerFormat_withUnit_ms4;
  v162[18] = @"LocationScanDuration";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat_withUnit_ms];
  v163[18] = commonTypeDict_IntegerFormat_withUnit_ms5;
  v162[19] = @"PipelineScanDuration";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s12 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat_withUnit_ms];
  v163[19] = commonTypeDict_IntegerFormat_withUnit_s12;
  v162[20] = @"SetupScanDuration";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s13 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat_withUnit_ms];
  v163[20] = commonTypeDict_IntegerFormat_withUnit_s13;
  v162[21] = @"UnknownScanDuration";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms6 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat_withUnit_ms];
  v163[21] = commonTypeDict_IntegerFormat_withUnit_ms6;
  v162[22] = @"AWDLTXDuration";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms7 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat_withUnit_ms];
  v163[22] = commonTypeDict_IntegerFormat_withUnit_ms7;
  v162[23] = @"AWDLRXDuration";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms8 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat_withUnit_ms];
  v163[23] = commonTypeDict_IntegerFormat_withUnit_ms8;
  v162[24] = @"AWDLAWDuration";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms9 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat_withUnit_s];
  v163[24] = commonTypeDict_IntegerFormat_withUnit_ms9;
  v162[25] = @"AWDLScanDuration";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms10 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat_withUnit_s];
  v163[25] = commonTypeDict_IntegerFormat_withUnit_ms10;
  v162[26] = @"CurrentChannel";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
  v163[26] = commonTypeDict_IntegerFormat;
  v162[27] = @"CurrentSSID";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]28 commonTypeDict_StringFormat];
  v163[27] = commonTypeDict_StringFormat;
  v162[28] = @"CurrentBandwidth";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
  v163[28] = commonTypeDict_IntegerFormat2;
  v162[29] = @"WifiPowered";
  mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]30 commonTypeDict_BoolFormat];
  v163[29] = commonTypeDict_BoolFormat;
  v162[30] = @"WowEnabled";
  mEMORY[0x277D3F198]77 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]77 commonTypeDict_BoolFormat];
  v163[30] = commonTypeDict_BoolFormat2;
  mEMORY[0x277D3F198]32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v163 forKeys:v162 count:31];
  v167[1] = mEMORY[0x277D3F198]32;
  v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v167 forKeys:v166 count:2];
LABEL_7:

  return v106;
}

- (void)setWifiManager:(__WiFiManagerClient *)manager
{
  if ([(PLWifiAgent *)self wifiManager]!= manager)
  {
    if ([(PLWifiAgent *)self wifiManager])
    {
      [(PLWifiAgent *)self wifiManager];
      WiFiManagerClientRegisterDeviceAttachmentCallback();
      [(PLWifiAgent *)self wifiManager];
      CFRunLoopGetMain();
      WiFiManagerClientUnscheduleFromRunLoop();
    }

    self->_wifiManager = manager;
    if ([(PLWifiAgent *)self wifiManager])
    {
      [(PLWifiAgent *)self wifiManager];
      CFRunLoopGetMain();
      WiFiManagerClientScheduleWithRunLoop();
      [(PLWifiAgent *)self wifiManager];
      WiFiManagerClientRegisterDeviceAttachmentCallback();

      [(PLWifiAgent *)self findWifiDevice];
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __30__PLWifiAgent_setWifiManager___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (setWifiManager__defaultOnce != -1)
      {
        dispatch_once(&setWifiManager__defaultOnce, block);
      }

      if (setWifiManager__classDebugEnabled == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi manager reference"];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWifiManager:]"];
        [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:2318];

        v12 = PLLogCommon(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

void *__30__PLWifiAgent_setWifiManager___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setWifiManager__classDebugEnabled = result;
  return result;
}

- (void)setWiFiHotspotDevice:(__WiFiDeviceClient *)device
{
  if ([(PLWifiAgent *)self wifiHotspotDevice]!= device)
  {
    if ([(PLWifiAgent *)self wifiHotspotDevice])
    {
      [(PLWifiAgent *)self wifiHotspotDevice];
      WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback();
    }

    self->_wifiHotspotDevice = device;
    if ([(PLWifiAgent *)self wifiHotspotDevice])
    {
      [(PLWifiAgent *)self wifiHotspotDevice];
      WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback();
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v5 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __36__PLWifiAgent_setWiFiHotspotDevice___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v5;
        if (setWiFiHotspotDevice__defaultOnce != -1)
        {
          dispatch_once(&setWiFiHotspotDevice__defaultOnce, block);
        }

        if (setWiFiHotspotDevice__classDebugEnabled == 1)
        {
          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: set wifi hotspot device reference"];
          v7 = MEMORY[0x277D3F178];
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent = [v8 lastPathComponent];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiHotspotDevice:]"];
          [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:2339];

          v12 = PLLogCommon(v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

LABEL_17:
        }
      }
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v13 = objc_opt_class();
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __36__PLWifiAgent_setWiFiHotspotDevice___block_invoke_857;
      v22 = &__block_descriptor_40_e5_v8__0lu32l8;
      v23 = v13;
      if (setWiFiHotspotDevice__defaultOnce_855 != -1)
      {
        dispatch_once(&setWiFiHotspotDevice__defaultOnce_855, &v19);
      }

      if (setWiFiHotspotDevice__classDebugEnabled_856 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi hotspot device reference", v19, v20, v21, v22, v23];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent2 = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiHotspotDevice:]"];
        [v14 logMessage:v6 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:2341];

        v12 = PLLogCommon(v18);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        goto LABEL_17;
      }
    }
  }
}

void *__36__PLWifiAgent_setWiFiHotspotDevice___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setWiFiHotspotDevice__classDebugEnabled = result;
  return result;
}

void *__36__PLWifiAgent_setWiFiHotspotDevice___block_invoke_857(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setWiFiHotspotDevice__classDebugEnabled_856 = result;
  return result;
}

- (void)setWiFiAWDLDevice:(__WiFiDeviceClient *)device
{
  if ([(PLWifiAgent *)self wifiAwdlDevice]!= device)
  {
    if ([(PLWifiAgent *)self wifiAwdlDevice])
    {
      [(PLWifiAgent *)self wifiAwdlDevice];
      WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback();
    }

    self->_wifiAwdlDevice = device;
    if ([(PLWifiAgent *)self wifiAwdlDevice])
    {
      [(PLWifiAgent *)self wifiAwdlDevice];
      WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback();
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v5 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __33__PLWifiAgent_setWiFiAWDLDevice___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v5;
        if (setWiFiAWDLDevice__defaultOnce != -1)
        {
          dispatch_once(&setWiFiAWDLDevice__defaultOnce, block);
        }

        if (setWiFiAWDLDevice__classDebugEnabled == 1)
        {
          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: set wifi awdl device reference"];
          v7 = MEMORY[0x277D3F178];
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent = [v8 lastPathComponent];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiAWDLDevice:]"];
          [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:2361];

          v12 = PLLogCommon(v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

LABEL_17:
        }
      }
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v13 = objc_opt_class();
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __33__PLWifiAgent_setWiFiAWDLDevice___block_invoke_866;
      v22 = &__block_descriptor_40_e5_v8__0lu32l8;
      v23 = v13;
      if (setWiFiAWDLDevice__defaultOnce_864 != -1)
      {
        dispatch_once(&setWiFiAWDLDevice__defaultOnce_864, &v19);
      }

      if (setWiFiAWDLDevice__classDebugEnabled_865 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi awdl device reference", v19, v20, v21, v22, v23];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent2 = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiAWDLDevice:]"];
        [v14 logMessage:v6 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:2363];

        v12 = PLLogCommon(v18);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        goto LABEL_17;
      }
    }
  }
}

void *__33__PLWifiAgent_setWiFiAWDLDevice___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setWiFiAWDLDevice__classDebugEnabled = result;
  return result;
}

void *__33__PLWifiAgent_setWiFiAWDLDevice___block_invoke_866(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setWiFiAWDLDevice__classDebugEnabled_865 = result;
  return result;
}

- (void)setWifiDevice:(__WiFiDeviceClient *)device
{
  if ([(PLWifiAgent *)self wifiDevice]!= device)
  {
    if ([(PLWifiAgent *)self wifiDevice])
    {
      [(PLWifiAgent *)self wifiDevice];
      WiFiDeviceClientRegisterPowerCallback();
      [(PLWifiAgent *)self wifiDevice];
      WiFiDeviceClientRegisterExtendedLinkCallback();
      [(PLWifiAgent *)self wifiDevice];
      WiFiDeviceClientRegisterDeviceAvailableCallback();
      [(PLWifiAgent *)self wifiDevice];
      WiFiDeviceClientRegisterScanUpdateCallback();
      if ([(PLWifiAgent *)self wifiManager])
      {
        [(PLWifiAgent *)self wifiManager];
        WiFiManagerClientRegisterUserAutoJoinStateChangedCallback();
      }

      if ([MEMORY[0x277D3F180] fullMode])
      {
        [(PLWifiAgent *)self wifiDevice];
        WiFiDeviceClientRegisterLQMCallback();
      }
    }

    self->_wifiDevice = device;
    if ([(PLWifiAgent *)self wifiDevice])
    {
      [(PLWifiAgent *)self wifiDevice];
      WiFiDeviceClientRegisterPowerCallback();
      [(PLWifiAgent *)self wifiDevice];
      WiFiDeviceClientRegisterExtendedLinkCallback();
      [(PLWifiAgent *)self wifiDevice];
      WiFiDeviceClientRegisterDeviceAvailableCallback();
      if (([MEMORY[0x277D3F180] taskMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "fullMode"))
      {
        [(PLWifiAgent *)self wifiDevice];
        WiFiDeviceClientRegisterScanUpdateCallback();
      }

      if ([(PLWifiAgent *)self wifiManager])
      {
        [(PLWifiAgent *)self wifiManager];
        WiFiManagerClientRegisterUserAutoJoinStateChangedCallback();
      }

      if ([MEMORY[0x277D3F180] fullMode])
      {
        [(PLWifiAgent *)self wifiDevice];
        WiFiDeviceClientRegisterLQMCallback();
      }

      [(PLWifiAgent *)self logEventForwardModuleInfo];
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __29__PLWifiAgent_setWifiDevice___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (setWifiDevice__defaultOnce != -1)
      {
        dispatch_once(&setWifiDevice__defaultOnce, block);
      }

      if (setWifiDevice__classDebugEnabled == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi device reference"];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWifiDevice:]"];
        [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:2420];

        v12 = PLLogCommon(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

void *__29__PLWifiAgent_setWifiDevice___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setWifiDevice__classDebugEnabled = result;
  return result;
}

- (void)findWifiDevice
{
  v66 = *MEMORY[0x277D85DE8];
  if (![(PLWifiAgent *)self wifiManager])
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_58;
    }

    v51 = objc_opt_class();
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __29__PLWifiAgent_findWifiDevice__block_invoke_902;
    v58[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v58[4] = v51;
    if (findWifiDevice_defaultOnce_900 != -1)
    {
      dispatch_once(&findWifiDevice_defaultOnce_900, v58);
    }

    if (findWifiDevice_classDebugEnabled_901 != 1)
    {
LABEL_58:
      v14 = 0;
      goto LABEL_59;
    }

    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: No wifi manager set--this method should not be getting called"];
    v52 = MEMORY[0x277D3F178];
    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
    lastPathComponent = [v53 lastPathComponent];
    v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
    [v52 logMessage:v44 fromFile:lastPathComponent fromFunction:v55 fromLineNumber:2480];

    v50 = PLLogCommon(v56);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

    v14 = 0;
    goto LABEL_57;
  }

  [(PLWifiAgent *)self wifiManager];
  v3 = WiFiManagerClientCopyDevices();
  v4 = v3;
  v5 = 0x277D3F000uLL;
  if (v3 && [v3 count])
  {
    -[PLWifiAgent setWifiDevice:](self, "setWifiDevice:", [v4 objectAtIndex:0]);
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __29__PLWifiAgent_findWifiDevice__block_invoke;
    v63[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v63[4] = v6;
    if (findWifiDevice_defaultOnce != -1)
    {
      dispatch_once(&findWifiDevice_defaultOnce, v63);
    }

    if (findWifiDevice_classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: No wifi devices found"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent2 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
      [v8 logMessage:v7 fromFile:lastPathComponent2 fromFunction:v11 fromLineNumber:2437];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [(PLWifiAgent *)self wifiManager];
  v14 = WiFiManagerClientCopyInterfaces();

  if (v14 && [v14 count])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v15 = objc_opt_class();
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __29__PLWifiAgent_findWifiDevice__block_invoke_878;
      v62[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v62[4] = v15;
      if (findWifiDevice_defaultOnce_876 != -1)
      {
        dispatch_once(&findWifiDevice_defaultOnce_876, v62);
      }

      if (findWifiDevice_classDebugEnabled_877 == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: wifi devices found count: %lu", objc_msgSend(v14, "count")];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent3 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
        [v17 logMessage:v16 fromFile:lastPathComponent3 fromFunction:v20 fromLineNumber:2445];

        v22 = PLLogCommon(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    if ([v14 count])
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v57 = v14;
      do
      {
        v26 = [v14 objectAtIndex:v23];
        if (WiFiDeviceClientIsInterfaceAWDL())
        {
          if ([*(v5 + 384) debugEnabled])
          {
            v27 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __29__PLWifiAgent_findWifiDevice__block_invoke_884;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v27;
            if (findWifiDevice_defaultOnce_882 != -1)
            {
              dispatch_once(&findWifiDevice_defaultOnce_882, block);
            }

            if (findWifiDevice_classDebugEnabled_883 == 1)
            {
              v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: wifi devices found: %@", WiFiDeviceClientGetInterfaceName()];
              v29 = MEMORY[0x277D3F178];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent4 = [v30 lastPathComponent];
              v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
              [v29 logMessage:v28 fromFile:lastPathComponent4 fromFunction:v32 fromLineNumber:2453];

              v34 = PLLogCommon(v33);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v65 = v28;
                _os_log_debug_impl(&dword_25EE51000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v5 = 0x277D3F000uLL;
              v14 = v57;
            }
          }

          [(PLWifiAgent *)self setWiFiAWDLDevice:v26];
          v24 = 1;
        }

        if (WiFiDeviceClientIsInterfaceHostAp())
        {
          if ([*(v5 + 384) debugEnabled])
          {
            v35 = objc_opt_class();
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __29__PLWifiAgent_findWifiDevice__block_invoke_890;
            v60[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v60[4] = v35;
            if (findWifiDevice_defaultOnce_888 != -1)
            {
              dispatch_once(&findWifiDevice_defaultOnce_888, v60);
            }

            if (findWifiDevice_classDebugEnabled_889 == 1)
            {
              v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: wifi hs devices found: %@", WiFiDeviceClientGetInterfaceName()];
              v37 = MEMORY[0x277D3F178];
              v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent5 = [v38 lastPathComponent];
              v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
              [v37 logMessage:v36 fromFile:lastPathComponent5 fromFunction:v40 fromLineNumber:2461];

              v42 = PLLogCommon(v41);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v65 = v36;
                _os_log_debug_impl(&dword_25EE51000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v5 = 0x277D3F000;
              v14 = v57;
            }
          }

          [(PLWifiAgent *)self setWiFiHotspotDevice:v26];
          v25 = 1;
        }

        if (v24 & v25)
        {
          break;
        }

        ++v23;
      }

      while ([v14 count] > v23);
    }

    goto LABEL_59;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v43 = objc_opt_class();
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __29__PLWifiAgent_findWifiDevice__block_invoke_896;
    v59[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v59[4] = v43;
    if (findWifiDevice_defaultOnce_894 != -1)
    {
      dispatch_once(&findWifiDevice_defaultOnce_894, v59);
    }

    if (findWifiDevice_classDebugEnabled_895 == 1)
    {
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: No wifi interfaces found"];
      v45 = MEMORY[0x277D3F178];
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent6 = [v46 lastPathComponent];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
      [v45 logMessage:v44 fromFile:lastPathComponent6 fromFunction:v48 fromLineNumber:2476];

      v50 = PLLogCommon(v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

LABEL_57:
    }
  }

LABEL_59:
}

void *__29__PLWifiAgent_findWifiDevice__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  findWifiDevice_classDebugEnabled = result;
  return result;
}

void *__29__PLWifiAgent_findWifiDevice__block_invoke_878(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  findWifiDevice_classDebugEnabled_877 = result;
  return result;
}

void *__29__PLWifiAgent_findWifiDevice__block_invoke_884(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  findWifiDevice_classDebugEnabled_883 = result;
  return result;
}

void *__29__PLWifiAgent_findWifiDevice__block_invoke_890(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  findWifiDevice_classDebugEnabled_889 = result;
  return result;
}

void *__29__PLWifiAgent_findWifiDevice__block_invoke_896(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  findWifiDevice_classDebugEnabled_895 = result;
  return result;
}

void *__29__PLWifiAgent_findWifiDevice__block_invoke_902(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  findWifiDevice_classDebugEnabled_901 = result;
  return result;
}

- (PLWifiAgent)init
{
  v12.receiver = self;
  v12.super_class = PLWifiAgent;
  v2 = [(PLAgent *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_lastLoggedTimestamp = 0;
    v2->_autoJoinScanDuration = 0;
    v2->_locationScanDuration = 0;
    v2->_pipelineScanDuration = 0;
    v2->_setupScanDuration = 0;
    v2->_unknownScanDuration = 0;
    wifiChipset = v2->_wifiChipset;
    v2->_wifiChipset = 0;

    wifiManufacturer = v3->_wifiManufacturer;
    v3->_wifiManufacturer = 0;

    v3->_remainingAllowedRSSIEntryCount = 0;
    v6 = objc_alloc(MEMORY[0x277D3F1A8]);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __19__PLWifiAgent_init__block_invoke;
    v10[3] = &unk_279A5BE78;
    v7 = v3;
    v11 = v7;
    v8 = [v6 initWithOperator:v7 forEntryKey:@"ApplicationMetrics_RemoteControlSession_1_2" withBlock:v10];
    [(PLWifiAgent *)v7 setRemoteSessionCallback:v8];
  }

  return v3;
}

id *__19__PLWifiAgent_init__block_invoke(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] handleRemoteSessionCallbackWithUserInfo:a2];
  }

  return result;
}

- (void)initOperatorDependancies
{
  v39[1] = *MEMORY[0x277D85DE8];
  [(PLWifiAgent *)self setWifiManager:WiFiManagerClientCreate()];
  v3 = objc_alloc(MEMORY[0x277D3F160]);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke;
  v35[3] = &unk_279A5BE78;
  v35[4] = self;
  v4 = [v3 initWithOperator:self forNotification:@"com.apple.airport.userNotification" requireState:1 withBlock:v35];
  notificationWiFiChanged = self->_notificationWiFiChanged;
  self->_notificationWiFiChanged = v4;

  if ([(PLOperator *)self isDebugEnabled])
  {
    v6 = objc_alloc(MEMORY[0x277D3F1A8]);
    v36[0] = &unk_287146390;
    v36[1] = &unk_2871463A8;
    v37[0] = &unk_28714B608;
    v37[1] = &unk_2871463C0;
    v38 = @"Level";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    v39[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_934;
    v34[3] = &unk_279A5BE78;
    v34[4] = self;
    v9 = [v6 initWithOperator:self forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v8 withBlock:v34];
    batteryLevelChanged = self->_batteryLevelChanged;
    self->_batteryLevelChanged = v9;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_2_935;
  v33[3] = &unk_279A5BE78;
  v33[4] = self;
  v11 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v33];
  sbcLevelChanged = self->_sbcLevelChanged;
  self->_sbcLevelChanged = v11;

  v13 = objc_alloc(MEMORY[0x277D3F1A8]);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_942;
  v32[3] = &unk_279A5BE78;
  v32[4] = self;
  v14 = [v13 initWithOperator:self forEntryKey:@"PLSleepWakeAgent_EventForward_PowerState" withBlock:v32];
  [(PLWifiAgent *)self setDeviceWake:v14];
  block[5] = MEMORY[0x277D85DD0];
  block[6] = 3221225472;
  block[7] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_950;
  block[8] = &unk_279A5C600;
  block[9] = self;
  block[10] = 0;
  if (!tcp_connection_fallback_watcher_create() && [MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_951;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v15;
    if (initOperatorDependancies_defaultOnce_0 != -1)
    {
      dispatch_once(&initOperatorDependancies_defaultOnce_0, block);
    }

    if (initOperatorDependancies_classDebugEnabled_0 == 1)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to create cell fallback observer"];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent initOperatorDependancies]"];
      [v17 logMessage:v16 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:2634];

      v22 = PLLogCommon(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v23 = [objc_alloc(MEMORY[0x277D3F1F0]) initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:&__block_literal_global_961];
  thermalMonitorListener = self->_thermalMonitorListener;
  self->_thermalMonitorListener = v23;

  v25 = objc_alloc(MEMORY[0x277D3F270]);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_972;
  v30[3] = &unk_279A5BCB8;
  v30[4] = self;
  v26 = [v25 initWithOperator:self withRegistration:&unk_287148E00 withBlock:v30];
  remoteControlSessionListener = self->_remoteControlSessionListener;
  self->_remoteControlSessionListener = v26;

  if ([(PLWifiAgent *)self hasWiFi])
  {
    v28 = objc_alloc_init(MEMORY[0x277D7BB28]);
    monitor = self->_monitor;
    self->_monitor = v28;
  }
}

void __39__PLWifiAgent_initOperatorDependancies__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&kPLWifiAgentEventForwardWifiAssist_block_invoke_defaultOnce, block);
    }

    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wifi Application Key Logger: %@ = %@", v5, v4];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent initOperatorDependancies]_block_invoke"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:2564];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__39__PLWifiAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLWifiAgentEventForwardWifiAssist_block_invoke_classDebugEnabled = result;
  return result;
}

void *__39__PLWifiAgent_initOperatorDependancies__block_invoke_934(uint64_t a1)
{
  [*(a1 + 32) log];
  result = [MEMORY[0x277D3F208] isHomePod];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 writeModeledPower];
  }

  return result;
}

void *__39__PLWifiAgent_initOperatorDependancies__block_invoke_2_935(uint64_t a1)
{
  [*(a1 + 32) setRemainingAllowedRSSIEntryCount:3];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_3;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&kPLWifiAgentEventForwardWifiAssist_block_invoke_2_defaultOnce, block);
    }

    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_2_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logging on mac"];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent initOperatorDependancies]_block_invoke_2"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:2583];

      v9 = PLLogCommon(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) log];
  result = [MEMORY[0x277D3F208] isHomePod];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) writeModeledPower];
  }

  return result;
}

void *__39__PLWifiAgent_initOperatorDependancies__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLWifiAgentEventForwardWifiAssist_block_invoke_2_classDebugEnabled = result;
  return result;
}

void __39__PLWifiAgent_initOperatorDependancies__block_invoke_942(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 objectForKey:@"entry"];
    v3 = v2;
    if (v2)
    {
      [v2 objectForKeyedSubscript:@"Reason"];
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_2_946;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v4;
      if (kPLWifiAgentEventForwardWifiAssist_block_invoke_3_defaultOnce != -1)
      {
        dispatch_once(&kPLWifiAgentEventForwardWifiAssist_block_invoke_3_defaultOnce, block);
      }

      if (kPLWifiAgentEventForwardWifiAssist_block_invoke_3_classDebugEnabled == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: No entry object associated with SleepWake entry"];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v8 = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent initOperatorDependancies]_block_invoke"];
        [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:2597];

        v11 = PLLogCommon(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

void *__39__PLWifiAgent_initOperatorDependancies__block_invoke_2_946(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLWifiAgentEventForwardWifiAssist_block_invoke_3_classDebugEnabled = result;
  return result;
}

void __39__PLWifiAgent_initOperatorDependancies__block_invoke_950(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = tcp_fallback_watcher_fallback_inuse();
    v3 = *(a1 + 32);

    [v3 logEventForwardWifiAssist:v2];
  }

  else
  {
    v4 = PLLogCommon(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__PLWifiAgent_initOperatorDependancies__block_invoke_950_cold_1();
    }
  }
}

void *__39__PLWifiAgent_initOperatorDependancies__block_invoke_951(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initOperatorDependancies_classDebugEnabled_0 = result;
  return result;
}

void __39__PLWifiAgent_initOperatorDependancies__block_invoke_959(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PLLogCommon(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __41__PLCameraAgent_initOperatorDependancies__block_invoke_172_cold_1();
  }
}

void __39__PLWifiAgent_initOperatorDependancies__block_invoke_972(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogWifi(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLWifiAgent_initOperatorDependancies__block_invoke_972_cold_1();
  }

  [*(a1 + 32) logEventPointRemoteControlSession:v6];
}

- (BOOL)isWiFiPowered
{
  hasWiFi = [(PLWifiAgent *)self hasWiFi];
  if (hasWiFi)
  {
    [(PLWifiAgent *)self wifiDevice];
    LOBYTE(hasWiFi) = WiFiDeviceClientGetPower() != 0;
  }

  return hasWiFi;
}

- (BOOL)hasWiFi
{
  wifiManager = [(PLWifiAgent *)self wifiManager];
  if (wifiManager)
  {
    LOBYTE(wifiManager) = [(PLWifiAgent *)self wifiDevice]!= 0;
  }

  return wifiManager;
}

- (BOOL)isWowSupported
{
  hasWiFi = [(PLWifiAgent *)self hasWiFi];
  if (hasWiFi)
  {
    [(PLWifiAgent *)self wifiManager];
    LOBYTE(hasWiFi) = WiFiManagerClientGetWoWCapability() != 0;
  }

  return hasWiFi;
}

- (BOOL)isWowEnabled
{
  isWowSupported = [(PLWifiAgent *)self isWowSupported];
  if (isWowSupported)
  {
    [(PLWifiAgent *)self wifiManager];
    LOBYTE(isWowSupported) = WiFiManagerClientGetWoWState() != 0;
  }

  return isWowSupported;
}

- (unint64_t)getCurrentChannelWidth:(__WiFiNetwork *)width
{
  Property = WiFiNetworkGetProperty();
  if (Property)
  {
    valuePtr = 0;
    CFNumberGetValue(Property, kCFNumberSInt32Type, &valuePtr);
    if ((valuePtr & 2) != 0)
    {
      return 20;
    }

    else
    {
      v4 = 80;
      v5 = 10;
      v6 = 160;
      if ((valuePtr & 0x800) == 0)
      {
        v6 = 0;
      }

      if ((valuePtr & 1) == 0)
      {
        v5 = v6;
      }

      if ((valuePtr & 0x400) == 0)
      {
        v4 = v5;
      }

      if ((valuePtr & 4) != 0)
      {
        return 40;
      }

      else
      {
        return v4;
      }
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__PLWifiAgent_getCurrentChannelWidth___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v8;
      if (getCurrentChannelWidth__defaultOnce != -1)
      {
        dispatch_once(&getCurrentChannelWidth__defaultOnce, block);
      }

      if (getCurrentChannelWidth__classDebugEnabled == 1)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"channel width flag is null"];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent getCurrentChannelWidth:]"];
        [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:2731];

        v15 = PLLogCommon(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    return 0;
  }
}

void *__38__PLWifiAgent_getCurrentChannelWidth___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getCurrentChannelWidth__classDebugEnabled = result;
  return result;
}

- (id)decodeWifiEventLinkReason:(unsigned int)reason
{
  if (reason - 1 >= 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"other(%u)", *&reason];
  }

  else
  {
    v4 = off_279A5D9C8[reason - 1];
  }

  return v4;
}

- (void)logFromWiFiNoAvailableCallback:(id)callback withAvailability:(BOOL)availability withWakeParams:(id)params
{
  availabilityCopy = availability;
  paramsCopy = params;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __78__PLWifiAgent_logFromWiFiNoAvailableCallback_withAvailability_withWakeParams___block_invoke;
    v21[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v21[4] = v8;
    if (logFromWiFiNoAvailableCallback_withAvailability_withWakeParams__defaultOnce != -1)
    {
      dispatch_once(&logFromWiFiNoAvailableCallback_withAvailability_withWakeParams__defaultOnce, v21);
    }

    if (logFromWiFiNoAvailableCallback_withAvailability_withWakeParams__classDebugEnabled == 1)
    {
      paramsCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"before dispatch WiFi availability= %d:, wakeparams=%@", availabilityCopy, paramsCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logFromWiFiNoAvailableCallback:withAvailability:withWakeParams:]"];
      [v10 logMessage:paramsCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:2769];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__PLWifiAgent_logFromWiFiNoAvailableCallback_withAvailability_withWakeParams___block_invoke_999;
  block[3] = &unk_279A5D980;
  v20 = availabilityCopy;
  block[4] = self;
  v19 = paramsCopy;
  v17 = paramsCopy;
  dispatch_async(workQueue, block);
}

void *__78__PLWifiAgent_logFromWiFiNoAvailableCallback_withAvailability_withWakeParams___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logFromWiFiNoAvailableCallback_withAvailability_withWakeParams__classDebugEnabled = result;
  return result;
}

void __78__PLWifiAgent_logFromWiFiNoAvailableCallback_withAvailability_withWakeParams___block_invoke_999(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) logEventBackwardWifiProperties:1];
    if (*(a1 + 40))
    {
      [*(a1 + 32) logEventPointWake:?];
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)logFromLinkChangeCallback:(id)callback withStats:(id)stats
{
  callbackCopy = callback;
  statsCopy = stats;
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke;
  block[3] = &unk_279A5C768;
  block[4] = self;
  v12 = callbackCopy;
  v13 = statsCopy;
  v9 = statsCopy;
  v10 = callbackCopy;
  dispatch_async(workQueue, block);
}

void __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_4_defaultOnce != -1)
    {
      dispatch_once(&kPLWifiAgentEventForwardWifiAssist_block_invoke_4_defaultOnce, block);
    }

    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_4_classDebugEnabled == 1)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [*(a1 + 32) className];
      v6 = [v4 stringWithFormat:@"%@ got CFCallback %@", v5, *(a1 + 40)];

      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logFromLinkChangeCallback:withStats:]_block_invoke"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:2786];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = objc_opt_class();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke_1005;
    v21[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v21[4] = v13;
    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_4_defaultOnce_1003 != -1)
    {
      dispatch_once(&kPLWifiAgentEventForwardWifiAssist_block_invoke_4_defaultOnce_1003, v21);
    }

    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_4_classDebugEnabled_1004 == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"link change dic: %@", *(a1 + 48)];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v17 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logFromLinkChangeCallback:withStats:]_block_invoke_2"];
      [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:2787];

      v20 = PLLogCommon(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) log];
  objc_autoreleasePoolPop(v2);
}

void *__51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLWifiAgentEventForwardWifiAssist_block_invoke_4_classDebugEnabled = result;
  return result;
}

void *__51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke_1005(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLWifiAgentEventForwardWifiAssist_block_invoke_4_classDebugEnabled_1004 = result;
  return result;
}

- (void)logFromAJCallback:(id)callback withFlag:(unsigned __int8)flag withStats:(id)stats
{
  callbackCopy = callback;
  statsCopy = stats;
  workQueue = [(PLOperator *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__PLWifiAgent_logFromAJCallback_withFlag_withStats___block_invoke;
  v13[3] = &unk_279A5CEB8;
  v13[4] = self;
  v14 = callbackCopy;
  flagCopy = flag;
  v15 = statsCopy;
  v11 = statsCopy;
  v12 = callbackCopy;
  dispatch_async(workQueue, v13);
}

void __52__PLWifiAgent_logFromAJCallback_withFlag_withStats___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__PLWifiAgent_logFromAJCallback_withFlag_withStats___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_5_defaultOnce != -1)
    {
      dispatch_once(&kPLWifiAgentEventForwardWifiAssist_block_invoke_5_defaultOnce, block);
    }

    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_5_classDebugEnabled == 1)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [*(a1 + 32) className];
      v6 = [v4 stringWithFormat:@"%@ got AJCallback %@", v5, *(a1 + 40)];

      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logFromAJCallback:withFlag:withStats:]_block_invoke"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:2815];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) logEventPointJoin:*(a1 + 56) withStats:*(a1 + 48)];
  objc_autoreleasePoolPop(v2);
}

void *__52__PLWifiAgent_logFromAJCallback_withFlag_withStats___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLWifiAgentEventForwardWifiAssist_block_invoke_5_classDebugEnabled = result;
  return result;
}

- (void)log
{
  [(PLWifiAgent *)self logEventBackwardWifiProperties:1];
  [(PLWifiAgent *)self logEventBackwardUserScanDuration];
  [(PLWifiAgent *)self logEventPointAWDLServicesAndPorts];

  [(PLWifiAgent *)self logEventBackwardControlCPUPowerStats];
}

- (void)logEventPointWake:(id)wake
{
  wakeCopy = wake;
  if ([(PLWifiAgent *)self hasWiFi])
  {
    if (wakeCopy)
    {
      v5 = wakeCopy;
      goto LABEL_11;
    }

    [(PLWifiAgent *)self wifiDevice];
    v5 = WiFiDeviceClientCopyProperty();
    if (v5)
    {
LABEL_11:
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v13 = objc_opt_class();
        v97[0] = MEMORY[0x277D85DD0];
        v97[1] = 3221225472;
        v97[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1027;
        v97[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v97[4] = v13;
        if (logEventPointWake__defaultOnce_1025 != -1)
        {
          dispatch_once(&logEventPointWake__defaultOnce_1025, v97);
        }

        if (logEventPointWake__classDebugEnabled_1026 == 1)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"wake params = %@", v5];
          v15 = MEMORY[0x277D3F178];
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent = [v16 lastPathComponent];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
          [v15 logMessage:v14 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:2861];

          v20 = PLLogCommon(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      v93 = wakeCopy;
      v21 = [v5 objectForCFString:@"IO80211InterfaceWoWWakeUpCommand"];
      v12 = [v5 objectForCFString:@"IO80211InterfaceWoWWakeUpData"];
      v22 = [v5 objectForKey:@"IO80211InterfaceWoWWakeUpTCPKAWakeReason"];
      v23 = [v5 objectForCFString:@"IO80211InterfaceWoWWakeUpTimeStamp"];
      [v23 doubleValue];
      v25 = v24;

      v26 = MEMORY[0x277CCABB0];
      v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v25];
      convertFromSystemToMonotonic = [v27 convertFromSystemToMonotonic];
      [convertFromSystemToMonotonic timeIntervalSince1970];
      v29 = [v26 numberWithDouble:?];

      v30 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Wake"];
      v31 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v30];
      [v31 setObject:v21 forKeyedSubscript:@"WakeReason"];
      v91 = v29;
      [v31 setObject:v29 forKeyedSubscript:@"WakeTime"];
      v92 = v22;
      [v31 setObject:v22 forKeyedSubscript:@"TCPKAWakeReason"];
      if (v12)
      {
        v32 = [MEMORY[0x277CCABB0] numberWithInt:{-[NSObject length](v12, "length")}];
        [v31 setObject:v32 forKeyedSubscript:@"WakeLen"];
      }

      if (([v21 isEqualToString:@"DataFrame"] & 1) == 0 && !objc_msgSend(v21, "isEqualToString:", @"E_RX_IP_PACKET"))
      {
        if ([v21 isEqualToString:@"E_PFN_NET_FOUND"])
        {
          [(PLWifiAgent *)self logEventPointWakePNO:v12 withParams:v5 toEntry:v31];
LABEL_51:
          [(PLOperator *)self logEntry:v31];

LABEL_52:
          goto LABEL_53;
        }

        if ([v21 isEqualToString:@"E_LINK"])
        {
          [(PLWifiAgent *)self logEventPointWakeLink:v12 withParams:v5 toEntry:v31];
          goto LABEL_51;
        }

        if (![MEMORY[0x277D3F180] debugEnabled])
        {
          goto LABEL_51;
        }

        v77 = objc_opt_class();
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1094;
        v94[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v94[4] = v77;
        if (logEventPointWake__defaultOnce_1092 != -1)
        {
          dispatch_once(&logEventPointWake__defaultOnce_1092, v94);
        }

        if (logEventPointWake__classDebugEnabled_1093 != 1)
        {
          goto LABEL_51;
        }

        v88 = v30;
        v90 = v5;
        v78 = v21;
        v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: unrecognized wake reason: %@", v21];
        v80 = MEMORY[0x277D3F178];
        v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent2 = [v81 lastPathComponent];
        v83 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
        [v80 logMessage:v79 fromFile:lastPathComponent2 fromFunction:v83 fromLineNumber:2910];

        v85 = PLLogCommon(v84);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v21 = v78;
        v5 = v90;
LABEL_50:
        v30 = v88;
        goto LABEL_51;
      }

      v88 = v30;
      [(PLWifiAgent *)self logEventPointWakeDataFrame:v12 withParams:v5 toEntry:v31];
      v33 = [v31 objectForKeyedSubscript:@"tcp_dest_port"];
      v87 = v12;
      v89 = v5;
      if (v33 && (v34 = v33, [v31 objectForKeyedSubscript:@"tcp_source_port"], v35 = objc_claimAutoreleasedReturnValue(), v35, v34, v35))
      {
        v36 = v21;
        v37 = MEMORY[0x277CCABB0];
        v38 = [v31 objectForKeyedSubscript:@"tcp_dest_port"];
        v39 = [v37 numberWithInteger:{objc_msgSend(v38, "integerValue")}];

        v40 = MEMORY[0x277CCABB0];
        v41 = @"tcp_source_port";
      }

      else
      {
        v42 = [v31 objectForKeyedSubscript:@"udp_dest_port"];
        if (!v42 || (v43 = v42, [v31 objectForKeyedSubscript:@"udp_source_port"], v44 = objc_claimAutoreleasedReturnValue(), v44, v43, !v44))
        {
          if (![MEMORY[0x277D3F180] debugEnabled])
          {
            goto LABEL_39;
          }

          v49 = objc_opt_class();
          v96[0] = MEMORY[0x277D85DD0];
          v96[1] = 3221225472;
          v96[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1066;
          v96[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v96[4] = v49;
          if (logEventPointWake__defaultOnce_1064 != -1)
          {
            dispatch_once(&logEventPointWake__defaultOnce_1064, v96);
          }

          if (logEventPointWake__classDebugEnabled_1065 != 1)
          {
LABEL_39:
            v36 = v21;
            v48 = 0;
            v39 = 0;
            goto LABEL_40;
          }

          v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: unsupported network protocol"];
          v50 = MEMORY[0x277D3F178];
          v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent3 = [v51 lastPathComponent];
          v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
          [v50 logMessage:v47 fromFile:lastPathComponent3 fromFunction:v53 fromLineNumber:2889];

          v55 = PLLogCommon(v54);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v36 = v21;

          v48 = 0;
          v39 = 0;
LABEL_29:

LABEL_40:
          v56 = +[PLProcessPortMap sharedInstance];
          v57 = [v31 objectForKeyedSubscript:@"ip_destination"];
          v58 = [v31 objectForKeyedSubscript:@"ip_source"];
          v59 = [v31 objectForKeyedSubscript:@"ip_protocol"];
          v60 = [v56 pidAndProcessNameForDestAddress:v57 withDestPort:v39 withSourceAddress:v58 withSourcePort:v48 withProtocol:v59];

          v21 = v36;
          v5 = v89;
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v61 = objc_opt_class();
            v95[0] = MEMORY[0x277D85DD0];
            v95[1] = 3221225472;
            v95[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1082;
            v95[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v95[4] = v61;
            if (logEventPointWake__defaultOnce_1080 != -1)
            {
              dispatch_once(&logEventPointWake__defaultOnce_1080, v95);
            }

            if (logEventPointWake__classDebugEnabled_1081 == 1)
            {
              v86 = v21;
              v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"pidAndProcessName=%@", v60];
              v63 = MEMORY[0x277D3F178];
              v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent4 = [v64 lastPathComponent];
              v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
              [v63 logMessage:v62 fromFile:lastPathComponent4 fromFunction:v66 fromLineNumber:2898];

              v68 = PLLogCommon(v67);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
              {
                __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
              }

              v21 = v86;
              v5 = v89;
            }
          }

          if (v60)
          {
            v69 = [v60 pid];
            [v31 setObject:v69 forKeyedSubscript:@"PID"];

            processName = [v60 processName];
            [v31 setObject:processName forKeyedSubscript:@"ProcessName"];
          }

          wakeCopy = v93;
          v12 = v87;
          goto LABEL_50;
        }

        v36 = v21;
        v45 = MEMORY[0x277CCABB0];
        v46 = [v31 objectForKeyedSubscript:@"udp_dest_port"];
        v39 = [v45 numberWithInteger:{objc_msgSend(v46, "integerValue")}];

        v40 = MEMORY[0x277CCABB0];
        v41 = @"udp_source_port";
      }

      v47 = [v31 objectForKeyedSubscript:v41];
      v48 = [v40 numberWithInteger:{objc_msgSend(v47, "integerValue")}];
      goto LABEL_29;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v71 = objc_opt_class();
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1021;
      v98[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v98[4] = v71;
      if (logEventPointWake__defaultOnce_1019 != -1)
      {
        dispatch_once(&logEventPointWake__defaultOnce_1019, v98);
      }

      if (logEventPointWake__classDebugEnabled_1020 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: woke up for wlan but WoW wakeup parameters dictionary returned nil"];
        v72 = MEMORY[0x277D3F178];
        v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent5 = [v73 lastPathComponent];
        v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
        [v72 logMessage:v5 fromFile:lastPathComponent5 fromFunction:v75 fromLineNumber:2859];

        v12 = PLLogCommon(v76);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        goto LABEL_52;
      }
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__PLWifiAgent_logEventPointWake___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (logEventPointWake__defaultOnce != -1)
    {
      dispatch_once(&logEventPointWake__defaultOnce, block);
    }

    if (logEventPointWake__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"No wifi to log power properties about"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent6 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
      [v7 logMessage:v5 fromFile:lastPathComponent6 fromFunction:v10 fromLineNumber:2845];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      goto LABEL_52;
    }
  }

LABEL_53:
}

void *__33__PLWifiAgent_logEventPointWake___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWake__classDebugEnabled = result;
  return result;
}

void *__33__PLWifiAgent_logEventPointWake___block_invoke_1021(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWake__classDebugEnabled_1020 = result;
  return result;
}

void *__33__PLWifiAgent_logEventPointWake___block_invoke_1027(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWake__classDebugEnabled_1026 = result;
  return result;
}

void *__33__PLWifiAgent_logEventPointWake___block_invoke_1066(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWake__classDebugEnabled_1065 = result;
  return result;
}

void *__33__PLWifiAgent_logEventPointWake___block_invoke_1082(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWake__classDebugEnabled_1081 = result;
  return result;
}

void *__33__PLWifiAgent_logEventPointWake___block_invoke_1094(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWake__classDebugEnabled_1093 = result;
  return result;
}

- (void)logEventPointWakeDataFrame:(id)frame withParams:(id)params toEntry:(id)entry
{
  v97 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  entryCopy = entry;
  if ([frameCopy length] > 0xE)
  {
    [frameCopy getBytes:v95 length:14];
    v16 = [frameCopy subdataWithRange:{14, objc_msgSend(frameCopy, "length") - 14}];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", v95[0], v95[1], v95[2], v95[3], v95[4], v95[5]];;
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", v95[6], v95[7], v95[8], v95[9], v95[10], v95[11]];;
    v19 = [MEMORY[0x277D3F1F8] decodeEtherType:bswap32(v96) >> 16];
    [entryCopy setObject:v18 forKeyedSubscript:@"RemoteMAC"];
    [entryCopy setObject:v17 forKeyedSubscript:@"LocalMAC"];
    [entryCopy setObject:v19 forKeyedSubscript:@"EtherType"];
    if (([v19 isEqualToString:@"IPv4"] & 1) != 0 || objc_msgSend(v19, "isEqualToString:", @"IPv6"))
    {
      v20 = [MEMORY[0x277D3F1F8] decodeIPPacket:v16 encryptedPath:0];
      debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
      if (v20)
      {
        v87 = v16;
        v88 = v17;
        if (debugEnabled)
        {
          v22 = objc_opt_class();
          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1128;
          v92[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v92[4] = v22;
          if (logEventPointWakeDataFrame_withParams_toEntry__defaultOnce_1126 != -1)
          {
            dispatch_once(&logEventPointWakeDataFrame_withParams_toEntry__defaultOnce_1126, v92);
          }

          if (logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled_1127 == 1)
          {
            v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dictionary for IP: %@", v20];
            v24 = MEMORY[0x277D3F178];
            v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
            lastPathComponent = [v25 lastPathComponent];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
            [v24 logMessage:v23 fromFile:lastPathComponent fromFunction:v27 fromLineNumber:2948];

            v29 = PLLogCommon(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }
          }
        }

        v30 = [v20 objectForKeyedSubscript:@"destination"];
        [entryCopy setObject:v30 forKeyedSubscript:@"ip_destination"];

        v31 = [v20 objectForKeyedSubscript:@"source"];
        [entryCopy setObject:v31 forKeyedSubscript:@"ip_source"];

        v32 = [v20 objectForKeyedSubscript:@"protocol"];
        [entryCopy setObject:v32 forKeyedSubscript:@"ip_protocol"];

        v33 = MEMORY[0x277CCACA8];
        v34 = [v20 objectForKeyedSubscript:@"version"];
        v35 = [v33 stringWithFormat:@"%@", v34];
        [entryCopy setObject:v35 forKeyedSubscript:@"ip_version"];

        v36 = MEMORY[0x277CCABB0];
        v37 = [v20 objectForKeyedSubscript:@"seqNo"];
        v38 = [v36 numberWithUnsignedInt:{objc_msgSend(v37, "unsignedIntValue")}];
        [entryCopy setObject:v38 forKeyedSubscript:@"seqNo"];

        v39 = MEMORY[0x277CCABB0];
        v40 = [v20 objectForKeyedSubscript:@"spi"];
        v41 = [v39 numberWithUnsignedInt:{objc_msgSend(v40, "unsignedIntValue")}];
        [entryCopy setObject:v41 forKeyedSubscript:@"spi"];

        v42 = [v20 objectForKey:@"protocol"];
        LODWORD(v34) = [v42 isEqualToString:@"TCP"];

        if (v34)
        {
          v43 = MEMORY[0x277CCACA8];
          v44 = [v20 objectForKeyedSubscript:@"protocol_info"];
          v45 = [v44 objectForKeyedSubscript:@"ack"];
          v46 = [v43 stringWithFormat:@"%@", v45];
          [entryCopy setObject:v46 forKeyedSubscript:@"tcp_ack"];

          v47 = MEMORY[0x277CCACA8];
          v48 = [v20 objectForKeyedSubscript:@"protocol_info"];
          v49 = [v48 objectForKeyedSubscript:@"seq"];
          v50 = [v47 stringWithFormat:@"%@", v49];
          [entryCopy setObject:v50 forKeyedSubscript:@"tcp_seq"];

          v51 = MEMORY[0x277CCACA8];
          v52 = [v20 objectForKeyedSubscript:@"protocol_info"];
          v53 = [v52 objectForKeyedSubscript:@"window"];
          v54 = [v51 stringWithFormat:@"%@", v53];
          [entryCopy setObject:v54 forKeyedSubscript:@"tcp_window"];

          v55 = MEMORY[0x277CCACA8];
          v56 = [v20 objectForKeyedSubscript:@"protocol_info"];
          v57 = [v56 objectForKeyedSubscript:@"control"];
          v58 = [v55 stringWithFormat:@"%@", v57];
          [entryCopy setObject:v58 forKeyedSubscript:@"tcp_control"];

          v59 = MEMORY[0x277CCACA8];
          v60 = [v20 objectForKeyedSubscript:@"protocol_info"];
          v61 = [v60 objectForKeyedSubscript:@"dest_port"];
          v62 = [v59 stringWithFormat:@"%@", v61];
          [entryCopy setObject:v62 forKeyedSubscript:@"tcp_dest_port"];

          v63 = MEMORY[0x277CCACA8];
          v64 = [v20 objectForKeyedSubscript:@"protocol_info"];
          v65 = [v64 objectForKeyedSubscript:@"source_port"];
          v66 = [v63 stringWithFormat:@"%@", v65];
          v67 = @"tcp_source_port";
        }

        else
        {
          v80 = [v20 objectForKey:@"protocol"];
          v81 = [v80 isEqualToString:@"UDP"];

          if (!v81)
          {
            v16 = v87;
            v17 = v88;
            goto LABEL_40;
          }

          v82 = MEMORY[0x277CCACA8];
          v83 = [v20 objectForKeyedSubscript:@"protocol_info"];
          v84 = [v83 objectForKeyedSubscript:@"dest_port"];
          v85 = [v82 stringWithFormat:@"%@", v84];
          [entryCopy setObject:v85 forKeyedSubscript:@"udp_dest_port"];

          v86 = MEMORY[0x277CCACA8];
          v64 = [v20 objectForKeyedSubscript:@"protocol_info"];
          v65 = [v64 objectForKeyedSubscript:@"source_port"];
          v66 = [v86 stringWithFormat:@"%@", v65];
          v67 = @"udp_source_port";
        }

        [entryCopy setObject:v66 forKeyedSubscript:v67];

        v17 = v88;
      }

      else
      {
        if (!debugEnabled)
        {
          goto LABEL_40;
        }

        v68 = objc_opt_class();
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1122;
        v93[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v93[4] = v68;
        if (logEventPointWakeDataFrame_withParams_toEntry__defaultOnce_1120 != -1)
        {
          dispatch_once(&logEventPointWakeDataFrame_withParams_toEntry__defaultOnce_1120, v93);
        }

        if (logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled_1121 != 1)
        {
          goto LABEL_40;
        }

        v87 = v16;
        v89 = v17;
        v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to decode IP packet"];
        v69 = MEMORY[0x277D3F178];
        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent2 = [v70 lastPathComponent];
        v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
        [v69 logMessage:v64 fromFile:lastPathComponent2 fromFunction:v72 fromLineNumber:2946];

        v65 = PLLogCommon(v73);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v17 = v89;
      }

      v16 = v87;
    }

    else
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_41;
      }

      v74 = objc_opt_class();
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1191;
      v91[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v91[4] = v74;
      if (logEventPointWakeDataFrame_withParams_toEntry__defaultOnce_1189 != -1)
      {
        dispatch_once(&logEventPointWakeDataFrame_withParams_toEntry__defaultOnce_1189, v91);
      }

      if (logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled_1190 != 1)
      {
        goto LABEL_41;
      }

      v90 = v17;
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unrelated etherType: %@", v19];
      v75 = MEMORY[0x277D3F178];
      v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent3 = [v76 lastPathComponent];
      v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
      [v75 logMessage:v20 fromFile:lastPathComponent3 fromFunction:v78 fromLineNumber:2973];

      v64 = PLLogCommon(v79);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v17 = v90;
    }

LABEL_40:
LABEL_41:

    goto LABEL_42;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (logEventPointWakeDataFrame_withParams_toEntry__defaultOnce != -1)
    {
      dispatch_once(&logEventPointWakeDataFrame_withParams_toEntry__defaultOnce, block);
    }

    if (logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: payload too short: length of %lu", objc_msgSend(frameCopy, "length")];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent4 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent4 fromFunction:v13 fromLineNumber:2920];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

LABEL_42:
}

void *__61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled = result;
  return result;
}

void *__61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1122(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled_1121 = result;
  return result;
}

void *__61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1128(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled_1127 = result;
  return result;
}

void *__61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1191(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled_1190 = result;
  return result;
}

- (void)logEventPointWakePNO:(id)o withParams:(id)params toEntry:(id)entry
{
  v56 = *MEMORY[0x277D85DE8];
  oCopy = o;
  entryCopy = entry;
  v9 = [params objectForCFString:@"IO80211InterfaceWoWWakeUpCommand"];
  memset(v54, 0, 48);
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  memset(v53, 0, 44);
  v46 = v9;
  if ([oCopy length] <= 0x67)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (logEventPointWakePNO_withParams_toEntry__defaultOnce != -1)
      {
        dispatch_once(&logEventPointWakePNO_withParams_toEntry__defaultOnce, block);
      }

      if (logEventPointWakePNO_withParams_toEntry__classDebugEnabled == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"WoW wake payload too small to decode E_PFN_NET_FOUND"];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakePNO:withParams:toEntry:]"];
        [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:2986];

        v17 = PLLogCommon(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

LABEL_29:
        v22 = 0;
        goto LABEL_30;
      }
    }

    goto LABEL_32;
  }

  [oCopy getBytes:v54 length:48];
  [oCopy getBytes:v51 range:{48, 56}];
  if (v54[1] != 553648128)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v34 = objc_opt_class();
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1200;
      v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v49[4] = v34;
      if (logEventPointWakePNO_withParams_toEntry__defaultOnce_1198 != -1)
      {
        dispatch_once(&logEventPointWakePNO_withParams_toEntry__defaultOnce_1198, v49);
      }

      if (logEventPointWakePNO_withParams_toEntry__classDebugEnabled_1199 == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFi Logger wl_event_msg_t.event_type (0x%x) and wow_wakeup_command (%@ 0x%x) don't match", bswap32(v54[1]), v9, 16];
        v35 = MEMORY[0x277D3F178];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent2 = [v36 lastPathComponent];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakePNO:withParams:toEntry:]"];
        [v35 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v38 fromLineNumber:2994];

        v17 = PLLogCommon(v39);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        goto LABEL_29;
      }
    }

LABEL_32:
    v26 = 0;
    goto LABEL_33;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v51[2]];
  [entryCopy setObject:v18 forKeyedSubscript:@"network_count"];

  v19 = v51[2];
  if (v51[2] >= 5)
  {
    v20 = 5;
  }

  else
  {
    v20 = v51[2];
  }

  v51[2] = v20;
  if (!v19)
  {
    goto LABEL_32;
  }

  v21 = 0;
  v22 = 0;
  v23 = 60;
  v47 = oCopy;
  while ([oCopy length] >= (v23 + 44))
  {
    if (v21)
    {
      [oCopy getBytes:v53 range:{v23, 44}];
    }

    else
    {
      v24 = *((v51 | 0xC) + 0x10);
      v53[0] = *(v51 | 0xC);
      v53[1] = v24;
      *(&v53[1] + 12) = *((v51 | 0xC) + 0x1C);
    }

    if (BYTE7(v53[0]) >= 0x20u)
    {
      v25 = 32;
    }

    else
    {
      v25 = BYTE7(v53[0]);
    }

    BYTE7(v53[0]) = v25;
    __memcpy_chk();
    v55[v25] = 0;
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", LOBYTE(v53[0]), BYTE1(v53[0]), BYTE2(v53[0]), BYTE3(v53[0]), BYTE4(v53[0]), BYTE5(v53[0])];

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v53[0])];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_channel", v21];
    [entryCopy setObject:v27 forKeyedSubscript:v28];

    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:v55];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_ssid", v21];
    [entryCopy setObject:v29 forKeyedSubscript:v30];

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_bssid", v21];
    [entryCopy setObject:v26 forKeyedSubscript:v31];

    v32 = [MEMORY[0x277CCABB0] numberWithInt:SWORD4(v53[2])];
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_rssi", v21];
    [entryCopy setObject:v32 forKeyedSubscript:v33];

    ++v21;
    v23 += 44;
    v22 = v26;
    oCopy = v47;
    if (v21 >= v51[2])
    {
      goto LABEL_33;
    }
  }

  if (![MEMORY[0x277D3F180] debugEnabled])
  {
    goto LABEL_31;
  }

  v40 = objc_opt_class();
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1209;
  v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v48[4] = v40;
  if (logEventPointWakePNO_withParams_toEntry__defaultOnce_1207 != -1)
  {
    dispatch_once(&logEventPointWakePNO_withParams_toEntry__defaultOnce_1207, v48);
  }

  if (logEventPointWakePNO_withParams_toEntry__classDebugEnabled_1208 != 1)
  {
    goto LABEL_31;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"WoW wake payload too small to decode all PNO networks"];
  v41 = MEMORY[0x277D3F178];
  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
  lastPathComponent3 = [v42 lastPathComponent];
  v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakePNO:withParams:toEntry:]"];
  [v41 logMessage:v11 fromFile:lastPathComponent3 fromFunction:v44 fromLineNumber:3004];

  v17 = PLLogCommon(v45);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
  }

LABEL_30:

LABEL_31:
  v26 = v22;
LABEL_33:
}

void *__55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakePNO_withParams_toEntry__classDebugEnabled = result;
  return result;
}

void *__55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1200(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakePNO_withParams_toEntry__classDebugEnabled_1199 = result;
  return result;
}

void *__55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1209(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakePNO_withParams_toEntry__classDebugEnabled_1208 = result;
  return result;
}

- (void)logEventPointWakeLink:(id)link withParams:(id)params toEntry:(id)entry
{
  v30 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  entryCopy = entry;
  memset(v29, 0, sizeof(v29));
  if ([linkCopy length] > 0x2F)
  {
    [linkCopy getBytes:v29 length:48];
    if (DWORD1(v29[0]) == 0x10000000)
    {
      v10 = [(PLWifiAgent *)self decodeWifiEventLinkReason:bswap32(HIDWORD(v29[0]))];
      [entryCopy setObject:v10 forKeyedSubscript:@"loss_reason"];
LABEL_17:

      goto LABEL_18;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __56__PLWifiAgent_logEventPointWakeLink_withParams_toEntry___block_invoke_1236;
      v26 = &__block_descriptor_40_e5_v8__0lu32l8;
      v27 = v17;
      if (logEventPointWakeLink_withParams_toEntry__defaultOnce_1234 != -1)
      {
        dispatch_once(&logEventPointWakeLink_withParams_toEntry__defaultOnce_1234, &v23);
      }

      if (logEventPointWakeLink_withParams_toEntry__classDebugEnabled_1235 == 1)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFi Logger wl_event_msg_t.event_type (0x%x) and wow_wakeup_command (0x%x) don't match", bswap32(DWORD1(v29[0])), 16, v23, v24, v25, v26, v27];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeLink:withParams:toEntry:]"];
        [v18 logMessage:v10 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:3044];

        v16 = PLLogCommon(v22);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        goto LABEL_16;
      }
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PLWifiAgent_logEventPointWakeLink_withParams_toEntry___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (logEventPointWakeLink_withParams_toEntry__defaultOnce != -1)
    {
      dispatch_once(&logEventPointWakeLink_withParams_toEntry__defaultOnce, block);
    }

    if (logEventPointWakeLink_withParams_toEntry__classDebugEnabled == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"WoW wake payload too small to decode E_LINK"];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent2 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeLink:withParams:toEntry:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent2 fromFunction:v14 fromLineNumber:3035];

      v16 = PLLogCommon(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

LABEL_16:

      goto LABEL_17;
    }
  }

LABEL_18:
}

void *__56__PLWifiAgent_logEventPointWakeLink_withParams_toEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakeLink_withParams_toEntry__classDebugEnabled = result;
  return result;
}

void *__56__PLWifiAgent_logEventPointWakeLink_withParams_toEntry___block_invoke_1236(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakeLink_withParams_toEntry__classDebugEnabled_1235 = result;
  return result;
}

- (void)logEventPointJoin:(unsigned __int8)join withStats:(id)stats
{
  joinCopy = join;
  statsCopy = stats;
  if ([(PLWifiAgent *)self hasWiFi])
  {
    if (statsCopy)
    {
      v7 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Join"];
      v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
      v9 = [statsCopy objectForKey:*MEMORY[0x277D29968]];
      [v8 setObject:v9 forKeyedSubscript:@"Reason"];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:joinCopy != 0];
      [v8 setObject:v10 forKeyedSubscript:@"State"];

      [(PLOperator *)self logEntry:v8];
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__PLWifiAgent_logEventPointJoin_withStats___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (logEventPointJoin_withStats__defaultOnce != -1)
    {
      dispatch_once(&logEventPointJoin_withStats__defaultOnce, block);
    }

    if (logEventPointJoin_withStats__classDebugEnabled == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"No wifi to log power properties about"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointJoin:withStats:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:3051];

      v18 = PLLogCommon(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__43__PLWifiAgent_logEventPointJoin_withStats___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointJoin_withStats__classDebugEnabled = result;
  return result;
}

- (void)logEventPointRemoteControlSession:(id)session
{
  v4 = *MEMORY[0x277D3F5E8];
  sessionCopy = session;
  v7 = [(PLOperator *)PLWifiAgent entryKeyForType:v4 andName:@"RemoteControlSession"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:sessionCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardModuleInfo
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void *__40__PLWifiAgent_logEventForwardModuleInfo__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardModuleInfo_classDebugEnabled = result;
  return result;
}

void *__40__PLWifiAgent_logEventForwardModuleInfo__block_invoke_1248(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardModuleInfo_classDebugEnabled_1247 = result;
  return result;
}

- (void)logEventForwardRSSI:(id)i
{
  iCopy = i;
  if (iCopy)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __35__PLWifiAgent_logEventForwardRSSI___block_invoke;
      v20 = &__block_descriptor_40_e5_v8__0lu32l8;
      v21 = v5;
      if (logEventForwardRSSI__defaultOnce != -1)
      {
        dispatch_once(&logEventForwardRSSI__defaultOnce, &block);
      }

      if (logEventForwardRSSI__classDebugEnabled == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"LinkQuality Callback: %@", iCopy, block, v18, v19, v20, v21];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardRSSI:]"];
        [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:3184];

        v12 = PLLogCommon(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v13 = [iCopy objectForKey:@"RSSI"];
    v14 = [iCopy objectForKey:@"SCALED_RSSI"];
    v15 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"RSSI"];
    v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15];
    [v16 setObject:v13 forKeyedSubscript:@"RSSI"];
    [v16 setObject:v14 forKeyedSubscript:@"ScaledRSSI"];
    [(PLOperator *)self logEntry:v16];
    [(PLWifiAgent *)self setRemainingAllowedRSSIEntryCount:[(PLWifiAgent *)self remainingAllowedRSSIEntryCount]- 1];
  }
}

void *__35__PLWifiAgent_logEventForwardRSSI___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardRSSI__classDebugEnabled = result;
  return result;
}

- (void)logEventForwardWifiAssist:(BOOL)assist
{
  assistCopy = assist;
  v7 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"WifiAssist"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:assistCopy];
  [v5 setObject:v6 forKeyedSubscript:@"WifiAssistFallback"];

  [(PLOperator *)self logEntry:v5];
}

- (void)logAWDLStateEntry:(id)entry
{
  entryCopy = entry;
  dictionary = [entryCopy dictionary];
  entryDate = [entryCopy entryDate];

  [(PLOperator *)self logForSubsystem:@"WifiMetrics" category:@"AWDLState" data:dictionary date:entryDate];
}

- (void)logEventForwardAWDLState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__PLWifiAgent_logEventForwardAWDLState___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (logEventForwardAWDLState__defaultOnce != -1)
      {
        dispatch_once(&logEventForwardAWDLState__defaultOnce, block);
      }

      if (logEventForwardAWDLState__classDebugEnabled == 1)
      {
        stateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"AWDL Availability Callback: %@", stateCopy];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardAWDLState:]"];
        [v7 logMessage:stateCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:3278];

        v12 = PLLogCommon(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v13 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AWDLState"];
    v14 = objc_msgSend_storage(self);
    v15 = [v14 lastEntryForKey:v13];

    if (!v15 || ([v15 objectForKeyedSubscript:@"AWDLDown"], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(stateCopy, "objectForKeyedSubscript:", @"LINK_CHANGED_IS_LINKDOWN"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v16 != v17))
    {
      v18 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13];
      v19 = [stateCopy objectForKeyedSubscript:@"LINK_CHANGED_IS_LINKDOWN"];
      [v18 setObject:v19 forKeyedSubscript:@"AWDLDown"];

      [v18 setObject:&unk_2871463F0 forKeyedSubscript:@"AWDLRanging"];
      v20 = 0;
      [(PLWifiAgent *)self wifiAwdlDevice];
      WiFiDeviceClientCopyInterfaceStateInfo();
      [(PLOperator *)self logEntry:v18];
      [(PLWifiAgent *)self logAWDLStateEntry:v18];
    }
  }
}

void *__40__PLWifiAgent_logEventForwardAWDLState___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardAWDLState__classDebugEnabled = result;
  return result;
}

void *__40__PLWifiAgent_logEventForwardAWDLState___block_invoke_1289(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardAWDLState__classDebugEnabled_1288 = result;
  return result;
}

- (void)logEventForwardHotspotState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy)
  {
    v6 = *MEMORY[0x277D297F0];
    v7 = [stateCopy objectForKeyedSubscript:*MEMORY[0x277D297F0]];
    if (v7)
    {
      v8 = v7;
      v9 = *MEMORY[0x277D297F8];
      v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277D297F8]];

      if (v10)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v11 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __43__PLWifiAgent_logEventForwardHotspotState___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v11;
          if (logEventForwardHotspotState__defaultOnce != -1)
          {
            dispatch_once(&logEventForwardHotspotState__defaultOnce, block);
          }

          if (logEventForwardHotspotState__classDebugEnabled == 1)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Hotspot Availability Callback: %@", v5];
            v13 = MEMORY[0x277D3F178];
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
            lastPathComponent = [v14 lastPathComponent];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardHotspotState:]"];
            [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:3307];

            v18 = PLLogCommon(v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }
          }
        }

        v19 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"HotspotState"];
        v20 = objc_msgSend_storage(self);
        v21 = [v20 lastEntryForKey:v19];

        if (v21)
        {
          v22 = [v21 objectForKeyedSubscript:@"HotSpotOn"];
          if (v22)
          {
            v23 = v22;
            v24 = [v21 objectForKeyedSubscript:@"ADHS"];

            if (v24)
            {
              v25 = [v21 objectForKeyedSubscript:@"HotSpotOn"];
              bOOLValue = [v25 BOOLValue];
              v27 = [v5 objectForKeyedSubscript:v9];
              if (bOOLValue == [v27 BOOLValue])
              {
                v28 = [v21 objectForKeyedSubscript:@"ADHS"];
                bOOLValue2 = [v28 BOOLValue];
                v29 = [v5 objectForKeyedSubscript:v6];
                bOOLValue3 = [v29 BOOLValue];

                if (bOOLValue2 == bOOLValue3)
                {
                  if (![MEMORY[0x277D3F180] debugEnabled])
                  {
                    goto LABEL_19;
                  }

                  v37 = objc_opt_class();
                  v46[0] = MEMORY[0x277D85DD0];
                  v46[1] = 3221225472;
                  v46[2] = __43__PLWifiAgent_logEventForwardHotspotState___block_invoke_1298;
                  v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                  v46[4] = v37;
                  if (logEventForwardHotspotState__defaultOnce_1296 != -1)
                  {
                    dispatch_once(&logEventForwardHotspotState__defaultOnce_1296, v46);
                  }

                  if (logEventForwardHotspotState__classDebugEnabled_1297 != 1)
                  {
                    goto LABEL_19;
                  }

                  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Same hotspot data: %@", v5];
                  v38 = MEMORY[0x277D3F178];
                  v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
                  lastPathComponent2 = [v39 lastPathComponent];
                  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardHotspotState:]"];
                  [v38 logMessage:v30 fromFile:lastPathComponent2 fromFunction:v41 fromLineNumber:3313];

                  v43 = PLLogCommon(v42);
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                  {
                    __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
                  }

LABEL_18:
LABEL_19:

                  goto LABEL_20;
                }
              }

              else
              {
              }
            }
          }
        }

        v30 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v19];
        v31 = MEMORY[0x277CCABB0];
        v32 = [v5 objectForKeyedSubscript:v9];
        v33 = [v31 numberWithBool:{objc_msgSend(v32, "BOOLValue")}];
        [v30 setObject:v33 forKeyedSubscript:@"HotSpotOn"];

        v34 = MEMORY[0x277CCABB0];
        v35 = [v5 objectForKeyedSubscript:v6];
        v36 = [v34 numberWithBool:{objc_msgSend(v35, "BOOLValue")}];
        [v30 setObject:v36 forKeyedSubscript:@"ADHS"];

        [(PLOperator *)self logEntry:v30];
        goto LABEL_18;
      }
    }
  }

LABEL_20:
}

void *__43__PLWifiAgent_logEventForwardHotspotState___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardHotspotState__classDebugEnabled = result;
  return result;
}

void *__43__PLWifiAgent_logEventForwardHotspotState___block_invoke_1298(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardHotspotState__classDebugEnabled_1297 = result;
  return result;
}

- (void)logEventBackwardUserScanDuration
{
  v9 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CumulativeUserScanDurations"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_autoJoinScanDuration];
  [v3 setObject:v4 forKeyedSubscript:@"AutojoinScanDuration"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_locationScanDuration];
  [v3 setObject:v5 forKeyedSubscript:@"LocationScanDuration"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_pipelineScanDuration];
  [v3 setObject:v6 forKeyedSubscript:@"PipelineScanDuration"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_unknownScanDuration];
  [v3 setObject:v7 forKeyedSubscript:@"UnknownScanDuration"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_setupScanDuration];
  [v3 setObject:v8 forKeyedSubscript:@"SetupScanDuration"];

  [(PLOperator *)self logEntry:v3];
}

- (void)updateEventBackwardUserScanDuration:(id)duration
{
  durationCopy = duration;
  if (durationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [durationCopy objectForKey:@"SCAN_CHANNELS"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_30:

        goto LABEL_31;
      }

      v6 = [durationCopy objectForKey:@"ScanReqClientName"];
      if (!v5 || ([MEMORY[0x277CBEB68] null], v7 = objc_claimAutoreleasedReturnValue(), v7, v5 == v7))
      {
        v8 = 0;
        intValue = 110;
        v17 = 3000;
        if (!v6)
        {
LABEL_21:
          v18 = &OBJC_IVAR___PLWifiAgent__autoJoinScanDuration;
LABEL_22:
          *(&self->super.super.super.isa + *v18) = (*(&self->super.super.super.isa + *v18) + v17);
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v20 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __51__PLWifiAgent_updateEventBackwardUserScanDuration___block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v20;
            if (updateEventBackwardUserScanDuration__defaultOnce != -1)
            {
              dispatch_once(&updateEventBackwardUserScanDuration__defaultOnce, block);
            }

            if (updateEventBackwardUserScanDuration__classDebugEnabled == 1)
            {
              v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"User scan counter update: clientName = %@, dwellTime= %lu, channelCountNum = %lu, totalScanTime = %lu\n", v6, intValue, v8, v17];
              v22 = MEMORY[0x277D3F178];
              v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent = [v23 lastPathComponent];
              v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent updateEventBackwardUserScanDuration:]"];
              [v22 logMessage:v21 fromFile:lastPathComponent fromFunction:v25 fromLineNumber:3411];

              v27 = PLLogCommon(v26);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
              }
            }
          }

          goto LABEL_29;
        }

LABEL_12:
        if ([v6 hasPrefix:@"location"])
        {
          v18 = &OBJC_IVAR___PLWifiAgent__locationScanDuration;
        }

        else if ([v6 hasPrefix:@"Setup"])
        {
          v18 = &OBJC_IVAR___PLWifiAgent__setupScanDuration;
        }

        else
        {
          v19 = [v6 hasPrefix:@"pipe"];
          v18 = &OBJC_IVAR___PLWifiAgent__unknownScanDuration;
          if (v19)
          {
            v18 = &OBJC_IVAR___PLWifiAgent__pipelineScanDuration;
          }
        }

        goto LABEL_22;
      }

      if (objc_opt_respondsToSelector())
      {
        v8 = [v5 count];
        v9 = [durationCopy objectForKey:@"SCAN_DWELL_TIME"];
        if (!v9 || (v10 = v9, [durationCopy objectForKey:@"SCAN_DWELL_TIME"], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEB68], "null"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v11 == v12))
        {
          intValue = 110;
LABEL_20:
          v17 = intValue * v8;
          if (!v6)
          {
            goto LABEL_21;
          }

          goto LABEL_12;
        }

        v13 = [durationCopy objectForKey:@"SCAN_DWELL_TIME"];
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          v15 = [durationCopy objectForKey:@"SCAN_DWELL_TIME"];
          intValue = [v15 intValue];

          goto LABEL_20;
        }
      }

LABEL_29:

      goto LABEL_30;
    }
  }

LABEL_31:
}

void *__51__PLWifiAgent_updateEventBackwardUserScanDuration___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateEventBackwardUserScanDuration__classDebugEnabled = result;
  return result;
}

- (void)logEventBackwardControlCPUPowerStats
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventPointAWDLServicesAndPorts
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventBackwardWifiProperties:(BOOL)properties
{
  propertiesCopy = properties;
  if ([(PLWifiAgent *)self hasWiFi])
  {
    valuePtr = 115;
    v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    [(PLWifiAgent *)self wifiDevice];
    v6 = WiFiDeviceClientCopyProperty();
    CFRelease(v5);
    [(PLWifiAgent *)self wifiDevice];
    v7 = WiFiDeviceClientCopyCurrentNetwork();
    v8 = PLLogWifi(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLWifiAgent logEventBackwardWifiProperties:];
    }

    v9 = objc_opt_new();
    [v9 setObject:@"<error>" forKeyedSubscript:@"CurrentSSID"];
    [v9 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentChannel"];
    [v9 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentBandwidth"];
    [v9 setObject:&unk_2871463F0 forKeyedSubscript:@"Carplay"];
    if (!v7)
    {
      null = [MEMORY[0x277CBEB68] null];
      [v9 setObject:null forKeyedSubscript:@"CurrentSSID"];

      [v9 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentChannel"];
      [v9 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentBandwidth"];
LABEL_35:
      debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
      if (v6)
      {
        if (debugEnabled)
        {
          v41 = objc_opt_class();
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1363;
          v59[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v59[4] = v41;
          if (logEventBackwardWifiProperties__defaultOnce_1361 != -1)
          {
            dispatch_once(&logEventBackwardWifiProperties__defaultOnce_1361, v59);
          }

          if (logEventBackwardWifiProperties__classDebugEnabled_1362 == 1)
          {
            propertiesCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"wifi properties dictionary: %@, need to model power=%d", v6, propertiesCopy];
            v43 = MEMORY[0x277D3F178];
            v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
            lastPathComponent = [v44 lastPathComponent];
            v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:]"];
            [v43 logMessage:propertiesCopy fromFile:lastPathComponent fromFunction:v46 fromLineNumber:3598];

            v48 = PLLogCommon(v47);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }
          }
        }

        [(PLWifiAgent *)self logEventBackwardWifiProperties:v6 withNetworkProperties:v9 shallModelPower:propertiesCopy];
      }

      else if (debugEnabled)
      {
        v49 = objc_opt_class();
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1357;
        v60[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v60[4] = v49;
        if (logEventBackwardWifiProperties__defaultOnce_1355 != -1)
        {
          dispatch_once(&logEventBackwardWifiProperties__defaultOnce_1355, v60);
        }

        if (logEventBackwardWifiProperties__classDebugEnabled_1356 == 1)
        {
          v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"No wifi properties"];
          v51 = MEMORY[0x277D3F178];
          v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent2 = [v52 lastPathComponent];
          v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:]"];
          [v51 logMessage:v50 fromFile:lastPathComponent2 fromFunction:v54 fromLineNumber:3596];

          v56 = PLLogCommon(v55);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

LABEL_51:

      return;
    }

    [v9 setObject:WiFiNetworkGetSSID() forKeyedSubscript:@"CurrentSSID"];
    v10 = [v9 objectForKeyedSubscript:@"CurrentSSID"];

    if (v10)
    {
      [v9 setObject:MEMORY[0x25F8D1BD0](v7) forKeyedSubscript:@"CurrentChannel"];
      v11 = [v9 objectForKeyedSubscript:@"CurrentChannel"];

      if (v11)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PLWifiAgent getCurrentChannelWidth:](self, "getCurrentChannelWidth:", v7)}];
        [v9 setObject:v12 forKeyedSubscript:@"CurrentBandwidth"];

        v13 = MEMORY[0x25F8D1BD0](v7);
        [v9 setObject:v13 forKeyedSubscript:@"CurrentChannel"];
        if (WiFiNetworkGetOperatingBand() == 3)
        {
          v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "intValue") + 1000}];
          [v9 setObject:v14 forKeyedSubscript:@"CurrentChannel"];

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v15 = objc_opt_class();
            v62[0] = MEMORY[0x277D85DD0];
            v62[1] = 3221225472;
            v62[2] = __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1343;
            v62[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v62[4] = v15;
            if (logEventBackwardWifiProperties__defaultOnce_1341 != -1)
            {
              dispatch_once(&logEventBackwardWifiProperties__defaultOnce_1341, v62);
            }

            if (logEventBackwardWifiProperties__classDebugEnabled_1342 == 1)
            {
              v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"6G chan %lu", v13];
              v57 = MEMORY[0x277D3F178];
              v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent3 = [v17 lastPathComponent];
              v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:]"];
              [v57 logMessage:v16 fromFile:lastPathComponent3 fromFunction:v19 fromLineNumber:3583];

              v20 = v16;
              v22 = PLLogCommon(v21);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
              }
            }
          }
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v23 = objc_opt_class();
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1349;
          v61[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v61[4] = v23;
          if (logEventBackwardWifiProperties__defaultOnce_1347 != -1)
          {
            dispatch_once(&logEventBackwardWifiProperties__defaultOnce_1347, v61);
          }

          if (logEventBackwardWifiProperties__classDebugEnabled_1348 == 1)
          {
            v58 = v13;
            v24 = MEMORY[0x277CCACA8];
            v25 = [v9 objectForKeyedSubscript:@"CurrentBandwidth"];
            v26 = [v24 stringWithFormat:@"kPLWACurrentChannelWidthInMHz = %@", v25];

            v27 = MEMORY[0x277D3F178];
            v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
            lastPathComponent4 = [v28 lastPathComponent];
            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:]"];
            [v27 logMessage:v26 fromFile:lastPathComponent4 fromFunction:v30 fromLineNumber:3586];

            v32 = PLLogCommon(v31);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }

            v13 = v58;
          }
        }

        goto LABEL_32;
      }
    }

    else
    {
      [v9 setObject:@"<unknown>" forKeyedSubscript:@"CurrentSSID"];
    }

    [v9 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentChannel"];
    [v9 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentBandwidth"];
LABEL_32:
    if (WiFiNetworkIsCarPlay())
    {
      [v9 setObject:&unk_287146408 forKeyedSubscript:@"Carplay"];
    }

    CFRelease(v7);
    goto LABEL_35;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v33 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v33;
    if (logEventBackwardWifiProperties__defaultOnce != -1)
    {
      dispatch_once(&logEventBackwardWifiProperties__defaultOnce, block);
    }

    if (logEventBackwardWifiProperties__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"No wifi to log power properties about"];
      v34 = MEMORY[0x277D3F178];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent5 = [v35 lastPathComponent];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:]"];
      [v34 logMessage:v6 fromFile:lastPathComponent5 fromFunction:v37 fromLineNumber:3542];

      v9 = PLLogCommon(v38);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      goto LABEL_51;
    }
  }
}

void *__46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties__classDebugEnabled = result;
  return result;
}

void *__46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1343(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties__classDebugEnabled_1342 = result;
  return result;
}

void *__46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1349(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties__classDebugEnabled_1348 = result;
  return result;
}

void *__46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1357(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties__classDebugEnabled_1356 = result;
  return result;
}

void *__46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1363(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties__classDebugEnabled_1362 = result;
  return result;
}

- (void)logEventBackwardWifiProperties:(id)properties withNetworkProperties:(id)networkProperties shallModelPower:(BOOL)power
{
  powerCopy = power;
  v429[10] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  networkPropertiesCopy = networkProperties;
  v428[0] = @"SOFTAP_LOWPOWER_STATS_ACTIVE_STATE_DURATION";
  v428[1] = @"SOFTAP_LOWPOWER_STATS_ACTIVE_STATE_COUNT";
  v429[0] = @"ADHSActiveStateDuration";
  v429[1] = @"ADHSActiveStateCount";
  v428[2] = @"SOFTAP_LOWPOWER_STATS_DYNAMIC_STATE_DURATION";
  v428[3] = @"SOFTAP_LOWPOWER_STATS_DYNAMIC_STATE_COUNT";
  v429[2] = @"ADHSDynamicStateDuration";
  v429[3] = @"ADHSDynamicStateDuration";
  v428[4] = @"SOFTAP_LOWPOWER_STATS_LOWPOWER_STATE_COUNT";
  v428[5] = @"SOFTAP_LOWPOWER_STATS_LOWPOWER_STATE_COUNT";
  v429[4] = @"ADHSLowPowerStateDuration";
  v429[5] = @"ADHSLowPowerStateDuration";
  v428[6] = @"SOFTAP_LOWPOWER_STATS_OFF_STATE_COUNT";
  v428[7] = @"SOFTAP_LOWPOWER_STATS_OFF_STATE_COUNT";
  v429[6] = @"ADHSOffStateDuration";
  v429[7] = @"ADHSOffStateDuration";
  v428[8] = @"SOFTAP_LOWPOWER_STATS_TXPACKETS";
  v428[9] = @"SOFTAP_LOWPOWER_STATS_RXPACKETS";
  v429[8] = @"ADHSTXPackets";
  v429[9] = @"ADHSRXPackets";
  v354 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v429 forKeys:v428 count:10];
  allValues = [v354 allValues];
  v8 = *MEMORY[0x277D3F5C8];
  v338 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"HotspotPowerStats"];
  v9 = [propertiesCopy objectForKeyedSubscript:@"CACHED_TIME_STAMP"];
  integerValue = [v9 integerValue];

  v11 = [propertiesCopy objectForKeyedSubscript:@"INSTANT_ASSOCIATED_SLEEP_DURATION"];
  integerValue2 = [v11 integerValue];

  v13 = [propertiesCopy objectForKeyedSubscript:@"INSTANT_UNASSOCIATED_SLEEP_DURATION"];
  integerValue3 = [v13 integerValue];

  v15 = [propertiesCopy objectForKeyedSubscript:@"INSTANT_TIME_STAMP"];
  obj = [v15 integerValue];

  v16 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"CumulativeProperties"];
  v348 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"DiffProperties"];
  v336 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"BeaconProfile"];
  v341 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"AutoJoin"];
  v340 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"Scans"];
  v339 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"ScanForwardStats"];
  v347 = v16;
  selfCopy = self;
  if (+[PLUtilities isPerfPowerMetricd])
  {
    v18 = self->_lastEntryForMetricd;
  }

  else
  {
    v19 = objc_msgSend_storage(self);
    v20 = v16;
    v21 = v19;
    v18 = [v19 lastEntryForKey:v20];
  }

  v369 = (integerValue2 | integerValue3) != 0;
  v357 = v18;
  if (v18)
  {
    v22 = [(PLEntry *)v18 objectForKeyedSubscript:@"WifiTimestamp"];
    unsignedIntegerValue = [v22 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v23 = integerValue;
  v24 = objc_opt_new();
  v25 = +[PLWifiAgent isBeaconLoggingEnabled];
  v26 = MEMORY[0x277CBEC10];
  v27 = &unk_287149058;
  if (!v25)
  {
    v27 = MEMORY[0x277CBEC10];
  }

  v355 = v27;
  isUsingAnOlderWifiChip = [MEMORY[0x277D3F208] isUsingAnOlderWifiChip];
  v29 = &unk_287149080;
  if (isUsingAnOlderWifiChip)
  {
    v29 = v26;
  }

  v359 = v29;
  v30 = +[PLWifiAgent isScanForwardLoggingEnabled];
  v31 = &unk_2871490A8;
  if (!v30)
  {
    v31 = v26;
  }

  v360 = v31;
  v345 = v24;
  [v24 addEntriesFromDictionary:&unk_287148E28];
  kPLWiFiClassOfDevice = [MEMORY[0x277D3F208] kPLWiFiClassOfDevice];
  v33 = 0;
  HIDWORD(v346) = 0;
  v34 = &unk_287148F68;
  v35 = &unk_287148F40;
  v36 = &unk_287148F18;
  v37 = &unk_287148E78;
  v38 = &unk_287148E50;
  v351 = propertiesCopy;
  v353 = selfCopy;
  if (kPLWiFiClassOfDevice <= 1004010)
  {
    if (kPLWiFiClassOfDevice <= 1004005)
    {
      if ((kPLWiFiClassOfDevice - 1004001) >= 3)
      {
        LODWORD(v346) = 0;
        v344 = 0;
        v39 = v345;
        if ((kPLWiFiClassOfDevice - 1004004) >= 2)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

LABEL_33:
      LODWORD(v346) = 0;
      v344 = 0;
      v39 = v345;
LABEL_44:
      [v39 addEntriesFromDictionary:v38];
      v38 = v37;
      goto LABEL_45;
    }

    if (kPLWiFiClassOfDevice <= 1004007)
    {
      if (kPLWiFiClassOfDevice == 1004006)
      {
        goto LABEL_33;
      }

      v41 = 0;
      v39 = v345;
      goto LABEL_42;
    }

    if (kPLWiFiClassOfDevice == 1004008)
    {
      goto LABEL_33;
    }

    LODWORD(v346) = 0;
    v344 = 0;
    v39 = v345;
    if (kPLWiFiClassOfDevice != 1004010)
    {
      goto LABEL_45;
    }

LABEL_41:
    [v39 addEntriesFromDictionary:v38];
    v41 = 1;
    v38 = v37;
    v37 = v36;
    v36 = v35;
    v35 = v34;
LABEL_42:
    v344 = HIDWORD(v346);
    [v39 addEntriesFromDictionary:v38];
    LODWORD(v346) = 1;
    HIDWORD(v346) = v41;
    v38 = v37;
    v37 = v36;
    v36 = v35;
    v33 = &unk_2871490D0;
    goto LABEL_43;
  }

  v40 = &unk_287148F90;
  if (kPLWiFiClassOfDevice > 1004014)
  {
    if ((kPLWiFiClassOfDevice - 1004016) >= 3)
    {
      if (kPLWiFiClassOfDevice == 1004015)
      {
        v42 = &unk_287149030;
        v43 = &unk_287148EA0;
      }

      else
      {
        LODWORD(v346) = 0;
        v344 = 0;
        selfCopy = v353;
        v39 = v345;
        if (kPLWiFiClassOfDevice != 1004019)
        {
          goto LABEL_45;
        }

        [v345 addEntriesFromDictionary:&unk_287148E50];
        [v345 addEntriesFromDictionary:&unk_287148E78];
        v42 = &unk_287148EF0;
        v40 = &unk_287148EC8;
        v34 = &unk_287148EA0;
        v35 = &unk_287149030;
        v36 = &unk_287148F90;
        v43 = &unk_287148F68;
        v37 = &unk_287148F40;
        v38 = &unk_287148F18;
      }
    }

    else
    {
      v42 = &unk_287148EA0;
      v40 = &unk_287149030;
      v34 = &unk_287148F90;
      v35 = &unk_287148F68;
      v36 = &unk_287148F40;
      v43 = &unk_287148F18;
    }

    v39 = v345;
    [v345 addEntriesFromDictionary:v38];
    [v345 addEntriesFromDictionary:v37];
    HIDWORD(v346) = 1;
    v38 = v43;
    v37 = v36;
    v36 = v35;
    v35 = v34;
    v34 = v40;
    v40 = v42;
    propertiesCopy = v351;
LABEL_40:
    [v39 addEntriesFromDictionary:v38];
    v38 = v37;
    v37 = v36;
    v36 = v35;
    v35 = v34;
    v34 = v40;
    selfCopy = v353;
    goto LABEL_41;
  }

  if ((kPLWiFiClassOfDevice - 1004013) < 2)
  {
    v39 = v345;
    goto LABEL_40;
  }

  if (kPLWiFiClassOfDevice == 1004011)
  {
    v346 = 0;
    v344 = 0;
    v33 = 0;
    v36 = &unk_287148FE0;
    v37 = &unk_287148FB8;
    selfCopy = v353;
    v39 = v345;
LABEL_43:
    [v39 addEntriesFromDictionary:v38];
    v38 = v37;
    v37 = v36;
    goto LABEL_44;
  }

  LODWORD(v346) = 0;
  v344 = 0;
  selfCopy = v353;
  v39 = v345;
  if (kPLWiFiClassOfDevice != 1004012)
  {
LABEL_45:
    [v39 addEntriesFromDictionary:v38];
    v44 = v33;
    goto LABEL_46;
  }

  [v345 addEntriesFromDictionary:&unk_287148E50];
  [v345 addEntriesFromDictionary:&unk_287148FB8];
  [v345 addEntriesFromDictionary:&unk_287148FE0];
  HIDWORD(v346) = 0;
  if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] > 1001204)
  {
    v33 = &unk_2871490D0;
    LODWORD(v346) = 1;
    v344 = 0;
    v38 = &unk_287149008;
    goto LABEL_45;
  }

  v44 = 0;
  LODWORD(v346) = 0;
  v344 = 0;
LABEL_46:
  v45 = v357;
  v46 = selfCopy;
  if (v369)
  {
    if (obj > v23)
    {
      if (unsignedIntegerValue)
      {
        v47 = v23 > unsignedIntegerValue;
      }

      else
      {
        v47 = 1;
      }

      v48 = v47;
      if (v48)
      {
        v49 = 2;
      }

      else
      {
        v49 = 1;
      }

      goto LABEL_64;
    }

    v50 = v23 > unsignedIntegerValue;
    v49 = 1;
    goto LABEL_60;
  }

  v49 = 1;
  if (v357)
  {
    v50 = v23 > unsignedIntegerValue;
LABEL_60:
    if (v50)
    {
      v48 = 1;
    }

    else
    {
      v48 = 2;
    }

    goto LABEL_64;
  }

  v48 = 1;
LABEL_64:
  v51 = 0x277CCA000uLL;
  v52 = v347;
  v361 = v44;
  do
  {
    v53 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v52];
    v356 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v348];
    if (v48 == 2)
    {
      if (!v45 || [(PLWifiAgent *)v46 isWiFiPowered])
      {
        v48 = 2;
        goto LABEL_291;
      }

      v350 = v49;
      v189 = [(PLEntry *)v45 copy];
      v190 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v348];
      null = [MEMORY[0x277CBEB68] null];
      [v189 setObject:null forKeyedSubscript:@"CurrentSSID"];

      [v189 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentChannel"];
      [v189 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentBandwidth"];
      [v189 setObject:&unk_2871463F0 forKeyedSubscript:@"WifiPowered"];
      [v189 setObject:&unk_2871463F0 forKeyedSubscript:@"Carplay"];
      v192 = [*(v51 + 2992) numberWithUnsignedInteger:v46->_autoJoinScanDuration];
      [v189 setObject:v192 forKeyedSubscript:@"AutojoinScanDuration"];

      v193 = [*(v51 + 2992) numberWithUnsignedInteger:v46->_locationScanDuration];
      [v189 setObject:v193 forKeyedSubscript:@"LocationScanDuration"];

      v194 = [*(v51 + 2992) numberWithUnsignedInteger:v46->_pipelineScanDuration];
      [v189 setObject:v194 forKeyedSubscript:@"PipelineScanDuration"];

      v195 = [*(v51 + 2992) numberWithUnsignedInteger:v46->_unknownScanDuration];
      [v189 setObject:v195 forKeyedSubscript:@"UnknownScanDuration"];

      v196 = [*(v51 + 2992) numberWithUnsignedInteger:v46->_setupScanDuration];
      v371 = v189;
      [v189 setObject:v196 forKeyedSubscript:@"SetupScanDuration"];

      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"AWDLAWDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"AWDLRXDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"AWDLScanDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"AWDLTXDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"AssociatedScanDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"AutojoinScanDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentBandwidth"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentChannel"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentSSID"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"FRTSDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"HSICActiveDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"HSICSuspendDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"LocationScanDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"MPCDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"OtherScanDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"PCIEActiveDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"PCIEPERSTDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"PCIESuspendDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"PMDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"PNOBSSIDDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"PNOScanSSIDDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"PipelineScanDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"RXDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"RoamScanDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"SetupScanDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"TXDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"TimeDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"UnknownScanDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"UserScanDuration"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"WifiPowered"];
      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"WowEnabled"];
      if ([MEMORY[0x277D3F208] isWiFiClass:1004005])
      {
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"SISOTXDuration"];
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"MIMOTXDuration"];
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"MIMORXDuration"];
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"SISORXDuration"];
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"MIMOCSDuration"];
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"SISOCSDuration"];
      }

      if (([MEMORY[0x277D3F208] isWiFiClass:1004007] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004010) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004013) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004014))
      {
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"SISOTXDuration"];
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"MIMOTXDuration"];
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"MIMORXDuration"];
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"SISORXDuration"];
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"MIMOCSDuration"];
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"SISOCSDuration"];
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"OCLCSDuration"];
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"OCLRXDuration"];
      }

      v51 = 0x277CCA000uLL;
      if ([MEMORY[0x277D3F208] isWiFiClass:1004010])
      {
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"OPSFullDuration"];
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"OPSPartialDuration"];
      }

      if (([MEMORY[0x277D3F208] isWiFiClass:1004013] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004014))
      {
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"OPSFullDuration"];
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"OPSPartialDuration"];
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"PSBWDuration"];
      }

      if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
      {
        [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"SCRXDurationSISO"];
      }

      if (v346)
      {
        v378 = 0u;
        v379 = 0u;
        v376 = 0u;
        v377 = 0u;
        v197 = [v44 countByEnumeratingWithState:&v376 objects:v416 count:16];
        if (v197)
        {
          v198 = v197;
          v199 = *v377;
          do
          {
            for (i = 0; i != v198; ++i)
            {
              if (*v377 != v199)
              {
                objc_enumerationMutation(v44);
              }

              [v190 setObject:&unk_2871463F0 forKeyedSubscript:*(*(&v376 + 1) + 8 * i)];
            }

            v198 = [v44 countByEnumeratingWithState:&v376 objects:v416 count:16];
          }

          while (v198);
        }
      }

      if (HIDWORD(v346))
      {
        v374 = 0u;
        v375 = 0u;
        v372 = 0u;
        v373 = 0u;
        v201 = allValues;
        v202 = [v201 countByEnumeratingWithState:&v372 objects:v415 count:16];
        if (v202)
        {
          v203 = v202;
          v204 = *v373;
          do
          {
            for (j = 0; j != v203; ++j)
            {
              if (*v373 != v204)
              {
                objc_enumerationMutation(v201);
              }

              [v190 setObject:&unk_2871463F0 forKeyedSubscript:*(*(&v372 + 1) + 8 * j)];
            }

            v203 = [v201 countByEnumeratingWithState:&v372 objects:v415 count:16];
          }

          while (v203);
        }

        v44 = v361;
      }

      [v190 setObject:&unk_2871463F0 forKeyedSubscript:@"TimeDuration"];
      v206 = [(PLEntry *)v45 objectForKey:@"CurrentChannel"];
      [v190 setObject:v206 forKeyedSubscript:@"CurrentChannel"];

      v207 = [(PLEntry *)v45 objectForKey:@"CurrentSSID"];
      [v190 setObject:v207 forKeyedSubscript:@"CurrentSSID"];

      v208 = [(PLEntry *)v45 objectForKey:@"CurrentBandwidth"];
      [v190 setObject:v208 forKeyedSubscript:@"CurrentBandwidth"];

      v209 = [(PLEntry *)v45 objectForKey:@"WowEnabled"];
      [v190 setObject:v209 forKeyedSubscript:@"WowEnabled"];

      v210 = [(PLEntry *)v45 objectForKey:@"WifiPowered"];
      [v190 setObject:v210 forKeyedSubscript:@"WifiPowered"];

      v211 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
      v212 = v371;
      [v371 setObject:v211 forKeyedSubscript:@"READINGTYPE"];

      if (+[PLUtilities isPerfPowerMetricd])
      {
        objc_storeStrong(&v353->_lastEntryForMetricd, v371);
      }

      else
      {
        [(PLOperator *)v353 logEntry:v371];
      }

      v213 = v350;
      v46 = v353;
      if (powerCopy)
      {
        [(PLWifiAgent *)v353 modelWiFiPower:v190];
      }

      v48 = 2;
      propertiesCopy = v351;
      goto LABEL_289;
    }

    v349 = v49;
    v54 = *(v51 + 2992);
    if (v48)
    {
      v55 = @"CACHED_TIME_STAMP";
    }

    else
    {
      v55 = @"INSTANT_TIME_STAMP";
    }

    v56 = [propertiesCopy objectForKeyedSubscript:v55];
    v57 = [v54 numberWithUnsignedInteger:{objc_msgSend(v56, "integerValue")}];
    [v53 setObject:v57 forKeyedSubscript:@"WifiTimestamp"];

    if (v45)
    {
      v58 = *(v51 + 2992);
      v59 = [v53 objectForKeyedSubscript:@"WifiTimestamp"];
      unsignedIntegerValue2 = [v59 unsignedIntegerValue];
      v61 = [(PLEntry *)v45 objectForKeyedSubscript:@"WifiTimestamp"];
      v62 = [v58 numberWithInteger:{unsignedIntegerValue2 - objc_msgSend(v61, "unsignedIntegerValue")}];
      [v356 setObject:v62 forKeyedSubscript:@"TimeDuration"];
    }

    v368 = v53;
    v363 = &unk_28714D418;
    if (([MEMORY[0x277D3F208] isWiFiClass:1004011] & 1) == 0)
    {
      v63 = [MEMORY[0x277D3F208] isWiFiClass:1004012];
      v64 = &unk_28714D418;
      if (!v63)
      {
        v64 = &unk_28714D430;
      }

      v363 = v64;
    }

    v414 = 0u;
    v413 = 0u;
    v412 = 0u;
    v411 = 0u;
    v65 = v345;
    v358 = v45;
    v370 = v48;
    obja = [v65 countByEnumeratingWithState:&v411 objects:v427 count:16];
    if (obja)
    {
      v362 = *v412;
      do
      {
        v66 = 0;
        do
        {
          if (*v412 != v362)
          {
            objc_enumerationMutation(v65);
          }

          v67 = *(*(&v411 + 1) + 8 * v66);
          v68 = [v65 objectForKeyedSubscript:v67];
          v69 = [v68 objectAtIndexedSubscript:v48 != 0];
          v70 = [propertiesCopy objectForKeyedSubscript:v69];
          integerValue4 = [v70 integerValue];

          if ([v363 containsObject:v67])
          {
            v72 = integerValue4 / 0x3E8uLL;
          }

          else
          {
            v72 = integerValue4;
          }

          v73 = [*(v51 + 2992) numberWithUnsignedInteger:v72];
          [v368 setObject:v73 forKeyedSubscript:v67];

          if (v45)
          {
            v74 = [(PLEntry *)v45 objectForKey:v67];
            if ([v74 isNil])
            {
              goto LABEL_115;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              unsignedLongValue = [v74 unsignedLongValue];
              goto LABEL_92;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              unsignedLongValue = [v74 longLongValue];
LABEL_92:
              v76 = unsignedLongValue;
              v77 = unsignedLongValue - v72;
              if (unsignedLongValue > v72)
              {
                if ([&unk_28714D448 containsObject:v67])
                {
                  v78 = *(v51 + 2992);
                  if (v77 - 858994 <= 0x346DC4)
                  {
                    v79 = v72 - v76 + 4294967;
                    goto LABEL_114;
                  }
                }

                else
                {
                  if ([MEMORY[0x277D3F180] debugEnabled])
                  {
                    v89 = objc_opt_class();
                    v410[0] = MEMORY[0x277D85DD0];
                    v410[1] = 3221225472;
                    v410[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke;
                    v410[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                    v410[4] = v89;
                    v90 = v410;
                    if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce != -1)
                    {
                      dispatch_once(&logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce, v90);
                    }

                    if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled == 1)
                    {
                      v91 = [MEMORY[0x277CCACA8] stringWithFormat:@"diff[%@] = %lu < %lu, ignoring setting to zero", v67, v72, v76];
                      v92 = MEMORY[0x277D3F178];
                      v93 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
                      lastPathComponent = [v93 lastPathComponent];
                      v95 = v91;
                      v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
                      [v92 logMessage:v95 fromFile:lastPathComponent fromFunction:v96 fromLineNumber:4228];

                      v98 = PLLogCommon(v97);
                      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v418 = v95;
                        _os_log_debug_impl(&dword_25EE51000, v98, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                      }

                      v51 = 0x277CCA000uLL;
                    }
                  }

                  v78 = *(v51 + 2992);
                }

                v79 = 0;
LABEL_114:
                v99 = [v78 numberWithUnsignedInteger:v79];
                [v356 setObject:v99 forKeyedSubscript:v67];

LABEL_115:
                v45 = v358;
                goto LABEL_116;
              }
            }

            else
            {
              v76 = 0;
            }

            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v80 = objc_opt_class();
              v409[0] = MEMORY[0x277D85DD0];
              v409[1] = 3221225472;
              v409[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2505;
              v409[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v409[4] = v80;
              v81 = v409;
              if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2503 != -1)
              {
                dispatch_once(&logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2503, v81);
              }

              if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2504 == 1)
              {
                v82 = [MEMORY[0x277CCACA8] stringWithFormat:@"diff[%@] = %lu - %lu", v67, v72, v76];
                v352 = MEMORY[0x277D3F178];
                v83 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
                lastPathComponent2 = [v83 lastPathComponent];
                v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
                [v352 logMessage:v82 fromFile:lastPathComponent2 fromFunction:v85 fromLineNumber:4234];

                v86 = v82;
                v88 = PLLogCommon(v87);
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v418 = v86;
                  _os_log_debug_impl(&dword_25EE51000, v88, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                propertiesCopy = v351;
                v51 = 0x277CCA000uLL;
              }
            }

            v78 = *(v51 + 2992);
            v79 = v72 - v76;
            goto LABEL_114;
          }

LABEL_116:
          v66 = v66 + 1;
          v48 = v370;
        }

        while (obja != v66);
        obja = [v65 countByEnumeratingWithState:&v411 objects:v427 count:16];
      }

      while (obja);
    }

    if (v45 && v48 == 1)
    {
      v100 = [(PLEntry *)v45 objectForKey:@"CurrentChannel"];
      v101 = v368;
      [v368 setObject:v100 forKeyedSubscript:@"CurrentChannel"];

      v102 = [(PLEntry *)v45 objectForKey:@"CurrentSSID"];
      [v368 setObject:v102 forKeyedSubscript:@"CurrentSSID"];

      v103 = [(PLEntry *)v45 objectForKey:@"CurrentBandwidth"];
      [v368 setObject:v103 forKeyedSubscript:@"CurrentBandwidth"];

      v104 = [(PLEntry *)v45 objectForKey:@"WowEnabled"];
      [v368 setObject:v104 forKeyedSubscript:@"WowEnabled"];

      v105 = [(PLEntry *)v45 objectForKey:@"Carplay"];
      [v368 setObject:v105 forKeyedSubscript:@"Carplay"];

      v106 = [(PLEntry *)v45 objectForKey:@"WifiPowered"];
    }

    else
    {
      v107 = [networkPropertiesCopy objectForKeyedSubscript:@"CurrentChannel"];
      v101 = v368;
      [v368 setObject:v107 forKeyedSubscript:@"CurrentChannel"];

      v108 = [networkPropertiesCopy objectForKeyedSubscript:@"CurrentSSID"];
      [v368 setObject:v108 forKeyedSubscript:@"CurrentSSID"];

      v109 = [networkPropertiesCopy objectForKeyedSubscript:@"CurrentBandwidth"];
      [v368 setObject:v109 forKeyedSubscript:@"CurrentBandwidth"];

      v110 = [networkPropertiesCopy objectForKeyedSubscript:@"Carplay"];
      [v368 setObject:v110 forKeyedSubscript:@"Carplay"];

      v111 = [*(v51 + 2992) numberWithBool:{-[PLWifiAgent isWowEnabled](v353, "isWowEnabled")}];
      [v368 setObject:v111 forKeyedSubscript:@"WowEnabled"];

      v106 = [*(v51 + 2992) numberWithBool:{-[PLWifiAgent isWiFiPowered](v353, "isWiFiPowered")}];
    }

    [v101 setObject:v106 forKeyedSubscript:@"WifiPowered"];

    if (v346)
    {
      v112 = [propertiesCopy objectForKeyedSubscript:@"AutoJoinPowerDiag"];
      v113 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v341];
      v405 = 0u;
      v406 = 0u;
      v407 = 0u;
      v408 = 0u;
      objb = [v361 allKeys];
      v114 = [objb countByEnumeratingWithState:&v405 objects:v426 count:16];
      if (v114)
      {
        v115 = v114;
        v116 = *v406;
        do
        {
          for (k = 0; k != v115; ++k)
          {
            if (*v406 != v116)
            {
              objc_enumerationMutation(objb);
            }

            v118 = *(*(&v405 + 1) + 8 * k);
            v119 = [v361 objectForKeyedSubscript:v118];
            [v113 setObject:0 forKeyedSubscript:v119];

            v120 = [v112 objectForKey:v118];

            if (v120)
            {
              v121 = [v112 objectForKeyedSubscript:v118];
              v122 = [v361 objectForKeyedSubscript:v118];
              [v113 setObject:v121 forKeyedSubscript:v122];
            }

            v123 = [v112 objectForKeyedSubscript:@"auto_join_trigger_counts"];
            v124 = [v123 objectForKey:v118];

            if (v124)
            {
              v125 = [v112 objectForKeyedSubscript:@"auto_join_trigger_counts"];
              v126 = [v125 objectForKeyedSubscript:v118];
              v127 = [v361 objectForKeyedSubscript:v118];
              [v113 setObject:v126 forKeyedSubscript:v127];
            }
          }

          v115 = [objb countByEnumeratingWithState:&v405 objects:v426 count:16];
        }

        while (v115);
      }

      [(PLOperator *)v353 logEntry:v113];
      v45 = v358;
      v51 = 0x277CCA000;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v128 = objc_opt_class();
        v404[0] = MEMORY[0x277D85DD0];
        v404[1] = 3221225472;
        v404[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2517;
        v404[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v404[4] = v128;
        v129 = v404;
        if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2515 != -1)
        {
          dispatch_once(&logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2515, v129);
        }

        if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2516 == 1)
        {
          v113 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logged AJ keys:%@", v113];
          v131 = MEMORY[0x277D3F178];
          v132 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent3 = [v132 lastPathComponent];
          v134 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
          [v131 logMessage:v113 fromFile:lastPathComponent3 fromFunction:v134 fromLineNumber:4283];

          v136 = PLLogCommon(v135);
          if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v418 = v113;
            _os_log_debug_impl(&dword_25EE51000, v136, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v51 = 0x277CCA000;
        }
      }
    }

    if (HIDWORD(v346))
    {
      v137 = [propertiesCopy objectForKey:@"AutoHotspotLPHSPowerStats"];

      if (v137)
      {
        v138 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v338];
        v139 = [propertiesCopy objectForKeyedSubscript:@"AutoHotspotLPHSPowerStats"];
        v400 = 0u;
        v401 = 0u;
        v402 = 0u;
        v403 = 0u;
        allKeys = [v354 allKeys];
        v141 = [allKeys countByEnumeratingWithState:&v400 objects:v425 count:16];
        if (v141)
        {
          v142 = v141;
          v143 = *v401;
          do
          {
            for (m = 0; m != v142; ++m)
            {
              if (*v401 != v143)
              {
                objc_enumerationMutation(allKeys);
              }

              v145 = *(*(&v400 + 1) + 8 * m);
              v146 = [v139 objectForKey:v145];

              if (v146)
              {
                v147 = [v139 objectForKeyedSubscript:v145];
                v148 = [v354 objectForKeyedSubscript:v145];
                [v138 setObject:v147 forKeyedSubscript:v148];
              }
            }

            v142 = [allKeys countByEnumeratingWithState:&v400 objects:v425 count:16];
          }

          while (v142);
        }

        [(PLOperator *)v353 logEntry:v138];
        v45 = v358;
        v51 = 0x277CCA000;
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v149 = objc_opt_class();
          v399[0] = MEMORY[0x277D85DD0];
          v399[1] = 3221225472;
          v399[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2526;
          v399[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v399[4] = v149;
          v150 = v399;
          if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2524 != -1)
          {
            dispatch_once(&logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2524, v150);
          }

          if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2525 == 1)
          {
            v138 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logged ADHS keys:%@", v138];
            v152 = MEMORY[0x277D3F178];
            v153 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
            lastPathComponent4 = [v153 lastPathComponent];
            v155 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
            [v152 logMessage:v138 fromFile:lastPathComponent4 fromFunction:v155 fromLineNumber:4298];

            v157 = PLLogCommon(v156);
            if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v418 = v138;
              _os_log_debug_impl(&dword_25EE51000, v157, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v51 = 0x277CCA000uLL;
          }
        }
      }
    }

    if (v344)
    {
      v397 = 0u;
      v398 = 0u;
      v395 = 0u;
      v396 = 0u;
      v158 = [&unk_2871490F8 countByEnumeratingWithState:&v395 objects:v424 count:16];
      if (v158)
      {
        v159 = v158;
        v160 = *v396;
        do
        {
          for (n = 0; n != v159; ++n)
          {
            if (*v396 != v160)
            {
              objc_enumerationMutation(&unk_2871490F8);
            }

            v162 = *(*(&v395 + 1) + 8 * n);
            v163 = [&unk_2871490F8 objectForKeyedSubscript:v162];
            v164 = [propertiesCopy objectForKey:v163];

            if (v164)
            {
              v165 = [&unk_2871490F8 objectForKeyedSubscript:v162];
              v166 = [propertiesCopy objectForKeyedSubscript:v165];
              [v368 setObject:v166 forKeyedSubscript:v162];
            }
          }

          v159 = [&unk_2871490F8 countByEnumeratingWithState:&v395 objects:v424 count:16];
        }

        while (v159);
      }
    }

    if (v45)
    {
      v167 = [(PLEntry *)v45 objectForKey:@"CurrentChannel"];
      [v356 setObject:v167 forKeyedSubscript:@"CurrentChannel"];

      v168 = [(PLEntry *)v45 objectForKey:@"CurrentSSID"];
      [v356 setObject:v168 forKeyedSubscript:@"CurrentSSID"];

      v169 = [(PLEntry *)v45 objectForKey:@"CurrentBandwidth"];
      [v356 setObject:v169 forKeyedSubscript:@"CurrentBandwidth"];

      v170 = [(PLEntry *)v45 objectForKey:@"WowEnabled"];
      [v356 setObject:v170 forKeyedSubscript:@"WowEnabled"];

      v171 = [(PLEntry *)v45 objectForKey:@"WifiPowered"];
      [v356 setObject:v171 forKeyedSubscript:@"WifiPowered"];
    }

    v172 = [*(v51 + 2992) numberWithUnsignedInteger:v353->_autoJoinScanDuration];
    v53 = v368;
    [v368 setObject:v172 forKeyedSubscript:@"AutojoinScanDuration"];

    v173 = [*(v51 + 2992) numberWithUnsignedInteger:v353->_locationScanDuration];
    [v368 setObject:v173 forKeyedSubscript:@"LocationScanDuration"];

    v174 = [*(v51 + 2992) numberWithUnsignedInteger:v353->_pipelineScanDuration];
    [v368 setObject:v174 forKeyedSubscript:@"PipelineScanDuration"];

    v175 = [*(v51 + 2992) numberWithUnsignedInteger:v353->_unknownScanDuration];
    [v368 setObject:v175 forKeyedSubscript:@"UnknownScanDuration"];

    v176 = [*(v51 + 2992) numberWithUnsignedInteger:v353->_setupScanDuration];
    [v368 setObject:v176 forKeyedSubscript:@"SetupScanDuration"];

    v44 = v361;
    v48 = v370;
    if (v45)
    {
      v177 = [(PLEntry *)v45 objectForKeyedSubscript:@"AutojoinScanDuration"];
      if (v177)
      {
        v178 = v177;
        v179 = [(PLEntry *)v45 objectForKeyedSubscript:@"LocationScanDuration"];
        if (!v179)
        {

          goto LABEL_223;
        }

        v180 = v179;
        v181 = [(PLEntry *)v45 objectForKeyedSubscript:@"PipelineScanDuration"];
        if (v181)
        {
          v182 = v181;
          v183 = [(PLEntry *)v45 objectForKeyedSubscript:@"UnknownScanDuration"];
          if (v183)
          {
            v184 = [(PLEntry *)v45 objectForKeyedSubscript:@"SetupScanDuration"];

            v44 = v361;
            if (!v184)
            {
              goto LABEL_223;
            }

            v185 = [v368 objectForKeyedSubscript:@"AutojoinScanDuration"];
            unsignedLongLongValue = [v185 unsignedLongLongValue];
            v187 = [(PLEntry *)v45 objectForKeyedSubscript:@"AutojoinScanDuration"];
            unsignedLongLongValue2 = [v187 unsignedLongLongValue];

            if (unsignedLongLongValue >= unsignedLongLongValue2)
            {
              v296 = *(v51 + 2992);
              v297 = [v368 objectForKeyedSubscript:@"AutojoinScanDuration"];
              unsignedLongLongValue3 = [v297 unsignedLongLongValue];
              v299 = [(PLEntry *)v45 objectForKeyedSubscript:@"AutojoinScanDuration"];
              v300 = [v296 numberWithUnsignedLongLong:{unsignedLongLongValue3 - objc_msgSend(v299, "unsignedLongLongValue")}];
              [v356 setObject:v300 forKeyedSubscript:@"AutojoinScanDuration"];
            }

            else
            {
              [v356 setObject:0 forKeyedSubscript:@"AutojoinScanDuration"];
            }

            v301 = [v368 objectForKeyedSubscript:@"LocationScanDuration"];
            unsignedLongLongValue4 = [v301 unsignedLongLongValue];
            v303 = [(PLEntry *)v45 objectForKeyedSubscript:@"LocationScanDuration"];
            unsignedLongLongValue5 = [v303 unsignedLongLongValue];

            if (unsignedLongLongValue4 >= unsignedLongLongValue5)
            {
              v305 = *(v51 + 2992);
              v306 = [v368 objectForKeyedSubscript:@"LocationScanDuration"];
              unsignedLongLongValue6 = [v306 unsignedLongLongValue];
              v308 = [(PLEntry *)v45 objectForKeyedSubscript:@"LocationScanDuration"];
              v309 = [v305 numberWithUnsignedLongLong:{unsignedLongLongValue6 - objc_msgSend(v308, "unsignedLongLongValue")}];
              [v356 setObject:v309 forKeyedSubscript:@"LocationScanDuration"];
            }

            else
            {
              [v356 setObject:0 forKeyedSubscript:@"LocationScanDuration"];
            }

            v310 = [v368 objectForKeyedSubscript:@"PipelineScanDuration"];
            unsignedLongLongValue7 = [v310 unsignedLongLongValue];
            v312 = [(PLEntry *)v45 objectForKeyedSubscript:@"PipelineScanDuration"];
            unsignedLongLongValue8 = [v312 unsignedLongLongValue];

            if (unsignedLongLongValue7 >= unsignedLongLongValue8)
            {
              v314 = *(v51 + 2992);
              v315 = [v368 objectForKeyedSubscript:@"PipelineScanDuration"];
              unsignedLongLongValue9 = [v315 unsignedLongLongValue];
              v317 = [(PLEntry *)v45 objectForKeyedSubscript:@"PipelineScanDuration"];
              v318 = [v314 numberWithUnsignedLongLong:{unsignedLongLongValue9 - objc_msgSend(v317, "unsignedLongLongValue")}];
              [v356 setObject:v318 forKeyedSubscript:@"PipelineScanDuration"];
            }

            else
            {
              [v356 setObject:0 forKeyedSubscript:@"PipelineScanDuration"];
            }

            v319 = [v368 objectForKeyedSubscript:@"UnknownScanDuration"];
            unsignedLongLongValue10 = [v319 unsignedLongLongValue];
            v321 = [(PLEntry *)v45 objectForKeyedSubscript:@"UnknownScanDuration"];
            unsignedLongLongValue11 = [v321 unsignedLongLongValue];

            if (unsignedLongLongValue10 >= unsignedLongLongValue11)
            {
              v323 = *(v51 + 2992);
              v324 = [v368 objectForKeyedSubscript:@"UnknownScanDuration"];
              unsignedLongLongValue12 = [v324 unsignedLongLongValue];
              v326 = [(PLEntry *)v45 objectForKeyedSubscript:@"UnknownScanDuration"];
              v327 = [v323 numberWithUnsignedLongLong:{unsignedLongLongValue12 - objc_msgSend(v326, "unsignedLongLongValue")}];
              [v356 setObject:v327 forKeyedSubscript:@"UnknownScanDuration"];
            }

            else
            {
              [v356 setObject:0 forKeyedSubscript:@"UnknownScanDuration"];
            }

            v328 = [v368 objectForKeyedSubscript:@"SetupScanDuration"];
            unsignedLongLongValue13 = [v328 unsignedLongLongValue];
            v330 = [(PLEntry *)v45 objectForKeyedSubscript:@"SetupScanDuration"];
            unsignedLongLongValue14 = [v330 unsignedLongLongValue];

            if (unsignedLongLongValue13 < unsignedLongLongValue14)
            {
              [v356 setObject:0 forKeyedSubscript:@"SetupScanDuration"];
              goto LABEL_222;
            }

            v332 = *(v51 + 2992);
            v178 = [v368 objectForKeyedSubscript:@"SetupScanDuration"];
            unsignedLongLongValue15 = [v178 unsignedLongLongValue];
            v334 = [(PLEntry *)v45 objectForKeyedSubscript:@"SetupScanDuration"];
            v335 = [v332 numberWithUnsignedLongLong:{unsignedLongLongValue15 - objc_msgSend(v334, "unsignedLongLongValue")}];
            [v356 setObject:v335 forKeyedSubscript:@"SetupScanDuration"];

LABEL_221:
LABEL_222:
            v44 = v361;
            goto LABEL_223;
          }
        }

        goto LABEL_221;
      }
    }

LABEL_223:
    v46 = v353;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v214 = objc_opt_class();
      v394[0] = MEMORY[0x277D85DD0];
      v394[1] = 3221225472;
      v394[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2532;
      v394[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v394[4] = v214;
      v215 = v394;
      if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2530 != -1)
      {
        dispatch_once(&logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2530, v215);
      }

      if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2531 == 1)
      {
        v368 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last logged data: %@ current data:%@", v45, v368];
        v217 = MEMORY[0x277D3F178];
        v218 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent5 = [v218 lastPathComponent];
        v220 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
        [v217 logMessage:v368 fromFile:lastPathComponent5 fromFunction:v220 fromLineNumber:4364];

        v222 = PLLogCommon(v221);
        if (os_log_type_enabled(v222, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v418 = v368;
          _os_log_debug_impl(&dword_25EE51000, v222, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v44 = v361;
        v46 = v353;
      }
    }

    v223 = [*(v51 + 2992) numberWithUnsignedInt:v370];
    [v368 setObject:v223 forKeyedSubscript:@"READINGTYPE"];

    if (+[PLUtilities isPerfPowerMetricd])
    {
      [(PLWifiAgent *)v46 setLastEntryForMetricd:v368];
    }

    else
    {
      [(PLOperator *)v46 logEntry:v368];
    }

    if (+[PLWifiAgent isBeaconLoggingEnabled])
    {
      v224 = [v368 objectForKeyedSubscript:@"CurrentChannel"];
      if ([v224 integerValue] >= 1)
      {
        v225 = [v368 objectForKeyedSubscript:@"WifiTimestamp"];
        integerValue5 = [v225 integerValue];
        v227 = [(PLEntry *)v45 objectForKeyedSubscript:@"WifiTimestamp"];
        v228 = [v227 integerValue] + 60000;

        v44 = v361;
        v47 = integerValue5 <= v228;
        v46 = v353;
        if (v47)
        {
          goto LABEL_245;
        }

        v224 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v336];
        v390 = 0u;
        v391 = 0u;
        v392 = 0u;
        v393 = 0u;
        v229 = [v355 countByEnumeratingWithState:&v390 objects:v423 count:16];
        if (v229)
        {
          v230 = v229;
          v231 = *v391;
          do
          {
            for (ii = 0; ii != v230; ++ii)
            {
              if (*v391 != v231)
              {
                objc_enumerationMutation(v355);
              }

              v233 = *(*(&v390 + 1) + 8 * ii);
              v234 = [v355 objectForKeyedSubscript:v233];
              v235 = [v234 objectAtIndexedSubscript:v48 != 0];
              v236 = [propertiesCopy objectForKeyedSubscript:v235];
              integerValue6 = [v236 integerValue];

              v238 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue6];
              [v224 setObject:v238 forKeyedSubscript:v233];

              v48 = v370;
            }

            v230 = [v355 countByEnumeratingWithState:&v390 objects:v423 count:16];
          }

          while (v230);
        }

        v53 = v368;
        v239 = [v368 objectForKeyedSubscript:@"WifiTimestamp"];
        [v224 setObject:v239 forKeyedSubscript:@"WifiTimestamp"];

        v46 = v353;
        [(PLOperator *)v353 logEntry:v224];
        v45 = v358;
        v44 = v361;
        v51 = 0x277CCA000;
      }
    }

LABEL_245:
    if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
    {
      v240 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v340];
      v386 = 0u;
      v387 = 0u;
      v388 = 0u;
      v389 = 0u;
      v241 = [v359 countByEnumeratingWithState:&v386 objects:v422 count:16];
      if (v241)
      {
        v242 = v241;
        v243 = *v387;
        do
        {
          for (jj = 0; jj != v242; ++jj)
          {
            if (*v387 != v243)
            {
              objc_enumerationMutation(v359);
            }

            v245 = *(*(&v386 + 1) + 8 * jj);
            v246 = [v359 objectForKeyedSubscript:v245];
            v247 = [v246 objectAtIndexedSubscript:v48 != 0];
            v248 = [propertiesCopy objectForKeyedSubscript:v247];
            integerValue7 = [v248 integerValue];

            v250 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue7];
            [v240 setObject:v250 forKeyedSubscript:v245];

            v48 = v370;
          }

          v242 = [v359 countByEnumeratingWithState:&v386 objects:v422 count:16];
        }

        while (v242);
      }

      v53 = v368;
      v251 = [v368 objectForKeyedSubscript:@"WifiTimestamp"];
      [v240 setObject:v251 forKeyedSubscript:@"WifiTimestamp"];

      v46 = v353;
      v45 = v358;
      v44 = v361;
      v51 = 0x277CCA000;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v252 = objc_opt_class();
        v385[0] = MEMORY[0x277D85DD0];
        v385[1] = 3221225472;
        v385[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2538;
        v385[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v385[4] = v252;
        v253 = v385;
        if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2536 != -1)
        {
          dispatch_once(&logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2536, v253);
        }

        if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2537 == 1)
        {
          v359 = [MEMORY[0x277CCACA8] stringWithFormat:@" current data:%@ %@", v240, v359];
          v255 = MEMORY[0x277D3F178];
          v256 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent6 = [v256 lastPathComponent];
          v258 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
          [v255 logMessage:v359 fromFile:lastPathComponent6 fromFunction:v258 fromLineNumber:4396];

          v260 = PLLogCommon(v259);
          if (os_log_type_enabled(v260, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v418 = v359;
            _os_log_debug_impl(&dword_25EE51000, v260, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v44 = v361;
          v48 = v370;
          v46 = v353;
          v53 = v368;
        }
      }

      [(PLOperator *)v46 logEntry:v240];
    }

    if (+[PLWifiAgent isScanForwardLoggingEnabled])
    {
      v261 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v339];
      v381 = 0u;
      v382 = 0u;
      v383 = 0u;
      v384 = 0u;
      v262 = [v360 countByEnumeratingWithState:&v381 objects:v421 count:16];
      if (v262)
      {
        v263 = v262;
        v264 = *v382;
        do
        {
          for (kk = 0; kk != v263; ++kk)
          {
            if (*v382 != v264)
            {
              objc_enumerationMutation(v360);
            }

            v266 = *(*(&v381 + 1) + 8 * kk);
            v267 = [v360 objectForKeyedSubscript:v266];
            v268 = [v267 objectAtIndexedSubscript:v48 != 0];
            v269 = [propertiesCopy objectForKeyedSubscript:v268];
            integerValue8 = [v269 integerValue];

            v271 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue8];
            [v261 setObject:v271 forKeyedSubscript:v266];

            v48 = v370;
          }

          v263 = [v360 countByEnumeratingWithState:&v381 objects:v421 count:16];
        }

        while (v263);
      }

      v53 = v368;
      v272 = [v368 objectForKeyedSubscript:@"WifiTimestamp"];
      [v261 setObject:v272 forKeyedSubscript:@"WifiTimestamp"];

      debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
      v46 = v353;
      v44 = v361;
      if (debugEnabled)
      {
        v274 = objc_opt_class();
        v380[0] = MEMORY[0x277D85DD0];
        v380[1] = 3221225472;
        v380[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2544;
        v380[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v380[4] = v274;
        v275 = v380;
        if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2542 != -1)
        {
          dispatch_once(&logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2542, v275);
        }

        if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2543 == 1)
        {
          v360 = [MEMORY[0x277CCACA8] stringWithFormat:@"ScanForward current data: %@ %@", v261, v360];
          v277 = MEMORY[0x277D3F178];
          v278 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent7 = [v278 lastPathComponent];
          v280 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
          [v277 logMessage:v360 fromFile:lastPathComponent7 fromFunction:v280 fromLineNumber:4410];

          v282 = PLLogCommon(v281);
          if (os_log_type_enabled(v282, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v418 = v360;
            _os_log_debug_impl(&dword_25EE51000, v282, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v44 = v361;
          v48 = v370;
          v46 = v353;
        }
      }

      v283 = PLLogWifi(debugEnabled);
      v45 = v358;
      v51 = 0x277CCA000;
      if (os_log_type_enabled(v283, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v418 = v261;
        v419 = 2112;
        v420 = v360;
        _os_log_debug_impl(&dword_25EE51000, v283, OS_LOG_TYPE_DEBUG, "ScanForward current data: %@ %@", buf, 0x16u);
      }

      [(PLOperator *)v46 logEntry:v261];
    }

    if (v45)
    {
      v284 = [v356 objectForKeyedSubscript:@"TimeDuration"];
      integerValue9 = [v284 integerValue];

      if (integerValue9 >= 1)
      {
        if (v349 != 1)
        {
          v286 = [v356 objectForKeyedSubscript:@"TimeDuration"];
          v287 = [v286 integerValue] / 1000.0;

          entryDate = [v356 entryDate];
          entryDate2 = [(PLEntry *)v45 entryDate];
          [entryDate timeIntervalSinceDate:entryDate2];
          v291 = v290;

          if (v287 < v291)
          {
            v292 = MEMORY[0x277CBEAA8];
            entryDate3 = [(PLEntry *)v45 entryDate];
            v294 = [v292 dateWithTimeInterval:entryDate3 sinceDate:v287];
            [v356 setEntryDate:v294];
          }
        }

        if (powerCopy)
        {
          [(PLWifiAgent *)v46 modelWiFiPower:v356];
        }
      }
    }

    v49 = v349;
    if (v349 != 1)
    {
      v295 = v53;

      if (v295)
      {
        v213 = v349;
        v212 = [(PLEntry *)v295 objectForKeyedSubscript:@"WifiTimestamp"];
        [v212 unsignedIntegerValue];
        v48 = 0;
        v45 = v295;
LABEL_289:

        v49 = v213;
        goto LABEL_291;
      }

      v45 = 0;
      v48 = 0;
    }

LABEL_291:

    v47 = v49-- <= 1;
    v52 = v347;
  }

  while (!v47);
}

void *__84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled = result;
  return result;
}

void *__84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2505(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2504 = result;
  return result;
}

void *__84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2517(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2516 = result;
  return result;
}

void *__84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2526(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2525 = result;
  return result;
}

void *__84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2532(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2531 = result;
  return result;
}

void *__84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2538(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2537 = result;
  return result;
}

void *__84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2544(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2543 = result;
  return result;
}

- (id)wifiChipsetQuery
{
  wifiChipset = self->_wifiChipset;
  if (wifiChipset)
  {
    goto LABEL_56;
  }

  v4 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ModuleInfo"];
  v5 = objc_msgSend_storage(self);
  v6 = [v5 lastEntryForKey:v4];

  if (v6)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __31__PLWifiAgent_wifiChipsetQuery__block_invoke;
      v32 = &__block_descriptor_40_e5_v8__0lu32l8;
      v33 = v7;
      if (wifiChipsetQuery_defaultOnce != -1)
      {
        dispatch_once(&wifiChipsetQuery_defaultOnce, &block);
      }

      if (wifiChipsetQuery_classDebugEnabled == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"last module entry: %@", v6, block, v30, v31, v32, v33];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiChipsetQuery]"];
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:4589];

        v14 = PLLogCommon(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v15 = [v6 objectForKeyedSubscript:@"ProductId"];
    intValue = [v15 intValue];

    v17 = 0;
    if (intValue > 17459)
    {
      if (intValue > 31010)
      {
        if (intValue > 48411)
        {
          if (intValue == 48412)
          {
            v26 = @"4324";
            goto LABEL_54;
          }

          v18 = 48417;
          goto LABEL_44;
        }

        if (intValue == 31011)
        {
          v26 = @"31011";
          goto LABEL_54;
        }

        if (intValue != 48410)
        {
          goto LABEL_19;
        }

        v26 = @"4334";
      }

      else if (intValue > 17543)
      {
        if (intValue == 17544)
        {
          v26 = @"4377";
          goto LABEL_54;
        }

        if (intValue != 18347)
        {
          goto LABEL_19;
        }

        v26 = @"43452";
      }

      else
      {
        if (intValue == 17460)
        {
          v26 = @"4388";
          goto LABEL_54;
        }

        if (intValue != 17489)
        {
          goto LABEL_19;
        }

        v26 = @"4399";
      }
    }

    else if (intValue > 17371)
    {
      if (intValue > 17444)
      {
        if (intValue == 17445)
        {
          v26 = @"4378";
          goto LABEL_54;
        }

        if (intValue != 17459)
        {
          goto LABEL_19;
        }

        v26 = @"4387";
      }

      else
      {
        if (intValue == 17372)
        {
          v26 = @"4355";
          goto LABEL_54;
        }

        if (intValue != 17418)
        {
          goto LABEL_19;
        }

        v26 = @"4357";
      }
    }

    else
    {
      if (intValue <= 17314)
      {
        if (intValue == 1)
        {
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
          goto LABEL_54;
        }

        v18 = 17204;
LABEL_44:
        if (intValue == v18)
        {
          v26 = @"43342";
          goto LABEL_54;
        }

LABEL_19:

        goto LABEL_57;
      }

      if (intValue == 17315)
      {
        v26 = @"4350";
        goto LABEL_54;
      }

      if (intValue != 17323)
      {
        goto LABEL_19;
      }

      v26 = @"4345";
    }

LABEL_54:
    v27 = self->_wifiChipset;
    self->_wifiChipset = &v26->isa;

    goto LABEL_55;
  }

  if ([(PLOperator *)self isDebugEnabled])
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"wifiChipsetQuery: WiFi Module entry not found. Assume 4334 for now."];
    v20 = MEMORY[0x277D3F178];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
    lastPathComponent2 = [v21 lastPathComponent];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiChipsetQuery]"];
    [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:4652];

    v25 = PLLogCommon(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

    v17 = @"4334";
    goto LABEL_19;
  }

LABEL_55:

  wifiChipset = self->_wifiChipset;
LABEL_56:
  v17 = wifiChipset;
LABEL_57:

  return v17;
}

void *__31__PLWifiAgent_wifiChipsetQuery__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  wifiChipsetQuery_classDebugEnabled = result;
  return result;
}

- (id)wifiManufacturerQuery
{
  selfCopy = self;
  v47 = *MEMORY[0x277D85DE8];
  wifiManufacturer = self->_wifiManufacturer;
  if (!wifiManufacturer)
  {
    v4 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ModuleInfo"];
    v5 = objc_msgSend_storage(selfCopy);
    v6 = [v5 lastEntryForKey:v4];

    if (!v6)
    {
LABEL_37:

      wifiManufacturer = selfCopy->_wifiManufacturer;
      goto LABEL_38;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__PLWifiAgent_wifiManufacturerQuery__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v7;
      if (wifiManufacturerQuery_defaultOnce != -1)
      {
        dispatch_once(&wifiManufacturerQuery_defaultOnce, block);
      }

      if (wifiManufacturerQuery_classDebugEnabled == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"last module entry: %@", v6];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiManufacturerQuery]"];
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:4666];

        v14 = PLLogCommon(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v38 = v6;
    v39 = v4;
    v36 = [v6 objectForKeyedSubscript:@"ModuleInfo"];
    v15 = [v36 componentsSeparatedByString:@" "];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v41 objects:v46 count:16];
    v37 = selfCopy;
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v42;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = [*(*(&v41 + 1) + 8 * i) componentsSeparatedByString:@"="];
          if ([v21 count] == 2)
          {
            v22 = [v21 objectAtIndexedSubscript:0];
            v23 = [v22 isEqualToString:@"V"];

            if (v23)
            {
              v24 = [v21 objectAtIndexedSubscript:1];

              v18 = v24;
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    v4 = v39;
    if ([v18 isEqualToString:@"u"])
    {
      v25 = @"usi";
      selfCopy = v37;
    }

    else
    {
      selfCopy = v37;
      if ([v18 isEqualToString:@"t"])
      {
        v25 = @"usi";
        goto LABEL_36;
      }

      if (([v18 isEqualToString:@"m"] & 1) != 0 || !objc_msgSend(MEMORY[0x277D3F180], "debugEnabled"))
      {
        goto LABEL_35;
      }

      v26 = objc_opt_class();
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __36__PLWifiAgent_wifiManufacturerQuery__block_invoke_2622;
      v40[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v40[4] = v26;
      if (wifiManufacturerQuery_defaultOnce_2620 != -1)
      {
        dispatch_once(&wifiManufacturerQuery_defaultOnce_2620, v40);
      }

      if (wifiManufacturerQuery_classDebugEnabled_2621 != 1)
      {
LABEL_35:
        v25 = @"murata";
        goto LABEL_36;
      }

      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLWiFiAgent wifiManufacturerQuery: manufacturer string not recognized: %@. Defaulting to murata", v18];
      v28 = MEMORY[0x277D3F178];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent2 = [v29 lastPathComponent];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiManufacturerQuery]"];
      [v28 logMessage:v27 fromFile:lastPathComponent2 fromFunction:v31 fromLineNumber:4687];

      v33 = PLLogCommon(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v25 = @"murata";
      v4 = v39;
    }

    v6 = v38;
LABEL_36:
    v34 = selfCopy->_wifiManufacturer;
    selfCopy->_wifiManufacturer = &v25->isa;

    goto LABEL_37;
  }

LABEL_38:

  return wifiManufacturer;
}

void *__36__PLWifiAgent_wifiManufacturerQuery__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  wifiManufacturerQuery_classDebugEnabled = result;
  return result;
}

void *__36__PLWifiAgent_wifiManufacturerQuery__block_invoke_2622(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  wifiManufacturerQuery_classDebugEnabled_2621 = result;
  return result;
}

- (void)modelWiFiPower:(id)power
{
  v487[1] = *MEMORY[0x277D85DE8];
  powerCopy = power;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v5 = [powerCopy objectForKeyedSubscript:@"WifiPowered"];

    if (!v5)
    {
      entryDate = [powerCopy entryDate];
      v57 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
      [v57 doubleValue];
      [(PLWifiAgent *)self modelWiFiSegmentPower:entryDate withDataPower:0.0 withIdlePower:0.0 withLocationPower:0.0 withPipelinePower:0.0 withTotalDuration:v58 / 1000.0];
LABEL_84:

      goto LABEL_85;
    }

    v6 = 0x277D3F000;
    if (([MEMORY[0x277D3F208] isWiFiClass:1004002] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004003))
    {
      v7 = [powerCopy objectForKeyedSubscript:@"CurrentChannel"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [powerCopy objectForKeyedSubscript:@"PMDuration"];
      [v10 doubleValue];
      v480 = v11;

      v12 = [powerCopy objectForKeyedSubscript:@"MPCDuration"];
      [v12 doubleValue];
      v476 = v13;

      v14 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
      [v14 doubleValue];
      v473 = v15;

      v16 = [powerCopy objectForKeyedSubscript:@"TXDuration"];
      [v16 doubleValue];
      v470 = v17;

      v18 = [powerCopy objectForKeyedSubscript:@"RXDuration"];
      [v18 doubleValue];
      v468 = v19;

      v20 = [powerCopy objectForKeyedSubscript:@"HSICActiveDuration"];
      [v20 doubleValue];
      v465 = v21;

      v22 = [powerCopy objectForKeyedSubscript:@"AssociatedScanDuration"];
      [v22 doubleValue];
      v24 = v23;
      v25 = [powerCopy objectForKeyedSubscript:@"OtherScanDuration"];
      [v25 doubleValue];
      v27 = v26;
      v28 = [powerCopy objectForKeyedSubscript:@"PNOBSSIDDuration"];
      [v28 doubleValue];
      v30 = v29;
      v31 = [powerCopy objectForKeyedSubscript:@"PNOScanSSIDDuration"];
      [v31 doubleValue];
      v33 = v32;
      v34 = [powerCopy objectForKeyedSubscript:@"RoamScanDuration"];
      [v34 doubleValue];
      v36 = v35;
      v37 = [powerCopy objectForKeyedSubscript:@"SetupScanDuration"];
      [v37 doubleValue];
      v39 = v38;
      [powerCopy objectForKeyedSubscript:@"UserScanDuration"];
      v41 = v40 = self;
      [v41 doubleValue];
      v43 = v42;

      self = v40;
      v44 = [powerCopy objectForKeyedSubscript:@"FRTSDuration"];
      [v44 doubleValue];
      v462 = v45;

      v46 = [PLUtilities powerModelForOperatorName:@"wifi"];
      wifiChipsetQuery = [(PLWifiAgent *)v40 wifiChipsetQuery];
      v48 = [v46 objectForKeyedSubscript:wifiChipsetQuery];
      wifiManufacturerQuery = [(PLWifiAgent *)v40 wifiManufacturerQuery];
      v50 = [v48 objectForKeyedSubscript:wifiManufacturerQuery];

      if (v9 >= 0.0)
      {
        v59 = v24 + v27 + v30 + v33 + v36 + v39 + v43;
        v60 = @"5";
        if (v9 != 0.0)
        {
          v61 = @"2.4";
          if (v9 > 11.0)
          {
            v61 = @"5";
          }

          v60 = v61;
        }

        v62 = [v50 objectForKeyedSubscript:v60];
        v63 = [v62 objectForKeyedSubscript:@"tx"];
        [v63 doubleValue];
        v65 = v64;

        v66 = [v50 objectForKeyedSubscript:v60];
        v67 = [v66 objectForKeyedSubscript:@"rx"];
        [v67 doubleValue];
        v69 = v68;

        v70 = [v50 objectForKeyedSubscript:v60];
        v71 = [v70 objectForKeyedSubscript:@"cs"];
        [v71 doubleValue];
        v73 = v72;

        v74 = [v50 objectForKeyedSubscript:v60];
        v75 = [v74 objectForKeyedSubscript:@"hsic"];
        [v75 doubleValue];
        v77 = v76;

        v78 = v473 - v480 - v476 - v470 - v468;
        if (v78 < 0.0)
        {
          v78 = 0.0;
        }

        v79 = v78 * v73;
        v80 = v465 + v476 + v480 + v59 - v473;
        if (v80 < 0.0)
        {
          v80 = 0.0;
        }

        v81 = v80 * v77;
        v82 = v470 * v65 + v468 * v69;
        v54 = v82 + v79 + v81;
        v83 = v462 - v468 - v470;
        if (v83 < 0.0)
        {
          v83 = 0.0;
        }

        v84 = v82 + v81 + v83 * v73;
        if (v9 == 0.0)
        {
          v55 = 0.0;
        }

        else
        {
          v55 = v84;
        }
      }

      else
      {
        v51 = [v50 objectForKeyedSubscript:@"scan"];
        [v51 doubleValue];
        v53 = v52;

        v54 = (v473 - v480 - v476) * v53;
        v55 = 0.0;
      }
    }

    else
    {
      if (([MEMORY[0x277D3F208] isWiFiClass:1004006] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004004) & 1) == 0 && !objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004008))
      {
        if ([MEMORY[0x277D3F208] kPLWiFiClassIsOneOf:{1004005, 1004007, 1004010, 1004013, 1004014, 1004015, 1004016, 1004017, 1004018, 0}])
        {
          v184 = [powerCopy objectForKeyedSubscript:@"CurrentChannel"];
          [v184 doubleValue];
          v474 = v185;

          v186 = [powerCopy objectForKeyedSubscript:@"PMDuration"];
          [v186 doubleValue];
          v188 = v187;

          v189 = [powerCopy objectForKeyedSubscript:@"MPCDuration"];
          [v189 doubleValue];
          v191 = v190;

          v192 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
          [v192 doubleValue];
          v194 = v193;

          v195 = [powerCopy objectForKeyedSubscript:@"TXDuration"];
          [v195 doubleValue];
          v478 = v196;

          v197 = [powerCopy objectForKeyedSubscript:@"MIMOTXDuration"];
          [v197 doubleValue];
          v199 = v198;

          v200 = [powerCopy objectForKeyedSubscript:@"RXDuration"];
          [v200 doubleValue];
          v202 = v201;

          v203 = [powerCopy objectForKeyedSubscript:@"MIMORXDuration"];
          [v203 doubleValue];
          v205 = v204;

          v206 = [powerCopy objectForKeyedSubscript:@"SISORXDuration"];
          [v206 doubleValue];

          v207 = [powerCopy objectForKeyedSubscript:@"MIMOCSDuration"];
          [v207 doubleValue];
          v209 = v208;

          v210 = [powerCopy objectForKeyedSubscript:@"SISOCSDuration"];
          [v210 doubleValue];

          v211 = [powerCopy objectForKeyedSubscript:@"OCLCSDuration"];
          [v211 doubleValue];
          v454 = v212;

          v469 = 0.0;
          if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
          {
            v213 = [powerCopy objectForKeyedSubscript:@"SCRXDurationSISO"];
            [v213 doubleValue];
            v469 = v214;
          }

          v215 = [powerCopy objectForKeyedSubscript:@"FRTSDuration"];
          [v215 doubleValue];
          v463 = v216;

          if (v205 <= v202)
          {
            v217 = v205;
          }

          else
          {
            v217 = v202;
          }

          if (v199 <= v478)
          {
            v218 = v199;
          }

          else
          {
            v218 = v478;
          }

          if (v194 - v202 - v478 - v188 - v191 >= 0.0)
          {
            v219 = v194 - v202 - v478 - v188 - v191;
          }

          else
          {
            v219 = 0.0;
          }

          if (v209 <= v219)
          {
            v220 = v209;
          }

          else
          {
            v220 = v219;
          }

          v456 = v220;
          v458 = v217;
          v221 = [PLUtilities powerModelForOperatorName:@"wifi"];
          wifiChipsetQuery2 = [(PLWifiAgent *)self wifiChipsetQuery];
          v471 = v221;
          v223 = [v221 objectForKeyedSubscript:wifiChipsetQuery2];
          wifiManufacturerQuery2 = [(PLWifiAgent *)self wifiManufacturerQuery];
          v225 = [v223 objectForKeyedSubscript:wifiManufacturerQuery2];

          if (v474 >= 0.0)
          {
            v467 = v225;
            selfCopy = self;
            v273 = @"5";
            if (v474 != 0.0)
            {
              v274 = @"2.4";
              if (v474 > 11.0)
              {
                v274 = @"5";
              }

              v273 = v274;
            }

            v275 = [powerCopy objectForKeyedSubscript:@"CurrentBandwidth"];
            [v275 doubleValue];
            v277 = v276;

            if (v277)
            {
              v278 = v277;
            }

            else
            {
              v278 = 20;
            }

            v278 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v278];
            v280 = [v225 objectForKeyedSubscript:v273];
            v281 = [v280 objectForKeyedSubscript:v278];
            v282 = [v281 objectForKeyedSubscript:@"mimo_tx"];
            [v282 doubleValue];
            v448 = v283;

            v284 = [v225 objectForKeyedSubscript:v273];
            v285 = [v284 objectForKeyedSubscript:v278];
            v286 = [v285 objectForKeyedSubscript:@"mimo_rx"];
            [v286 doubleValue];
            v288 = v287;

            v289 = [v225 objectForKeyedSubscript:v273];
            v290 = [v289 objectForKeyedSubscript:v278];
            v291 = [v290 objectForKeyedSubscript:@"mimo_cs"];
            [v291 doubleValue];
            v461 = v292;

            v293 = [v225 objectForKeyedSubscript:v273];
            v294 = [v293 objectForKeyedSubscript:v278];
            v295 = [v294 objectForKeyedSubscript:@"siso_tx"];
            [v295 doubleValue];
            v446 = v296;

            v297 = [v225 objectForKeyedSubscript:v273];
            v298 = [v297 objectForKeyedSubscript:v278];
            v299 = [v298 objectForKeyedSubscript:@"siso_rx"];
            [v299 doubleValue];
            v444 = v300;

            v301 = [v225 objectForKeyedSubscript:v273];
            v302 = [v301 objectForKeyedSubscript:v278];
            v303 = [v302 objectForKeyedSubscript:@"siso_cs"];
            [v303 doubleValue];
            v452 = v304;

            v305 = [v225 objectForKeyedSubscript:v273];
            v306 = [v305 objectForKeyedSubscript:v278];
            v307 = [v306 objectForKeyedSubscript:@"ocl_cs"];
            [v307 doubleValue];
            v442 = v308;

            v309 = 0.0;
            if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
            {
              v310 = [v225 objectForKeyedSubscript:v273];
              v311 = [v310 objectForKeyedSubscript:@"sc"];
              [v311 doubleValue];
              v309 = v312;
            }

            v450 = v218;
            v313 = v478 - v218;
            v314 = v202 - v458;
            self = selfCopy;
            if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004007))
            {
              v315 = v314 * v444 + v458 * v288;
              v6 = 0x277D3F000;
              v229 = v471;
            }

            else
            {
              v440 = v288;
              v362 = [powerCopy objectForKeyedSubscript:@"OPSFullDuration"];
              [v362 doubleValue];
              v364 = v363;

              v365 = [powerCopy objectForKeyedSubscript:@"OPSPartialDuration"];
              [v365 doubleValue];
              v367 = v366;

              if (v364 >= 0.0)
              {
                v368 = v364;
              }

              else
              {
                v368 = 0.0;
              }

              v438 = v368;
              if (v367 >= 0.0)
              {
                v369 = v367;
              }

              else
              {
                v369 = 0.0;
              }

              v370 = [v225 objectForKeyedSubscript:v273];
              v371 = [v370 objectForKeyedSubscript:v278];
              v372 = [v371 objectForKeyedSubscript:@"ops_full"];
              [v372 doubleValue];
              v436 = v373;

              v374 = [v225 objectForKeyedSubscript:v273];
              v375 = [v374 objectForKeyedSubscript:v278];
              v376 = [v375 objectForKeyedSubscript:@"ops_partial"];
              [v376 doubleValue];
              v378 = v377;

              v379 = v314 * v444;
              v229 = v471;
              if (v458 <= v438 + v369)
              {
                v315 = v379 + v458 * v440;
              }

              else
              {
                v315 = v379 + (v458 - v438 - v369) * v440 + v369 * v378 + v438 * v436;
              }

              self = selfCopy;
              v6 = 0x277D3F000uLL;
            }

            v398 = v313 * v446;
            v399 = v219 - v456;
            if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100020) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v454 > v456)
            {
              v400 = v399 * v452 + v456 * v461;
            }

            else
            {
              v400 = v454 * v442 + (v456 - v454) * v461 + v399 * v452;
            }

            v401 = v398 + v450 * v448;
            if ([MEMORY[0x277D3F208] isUsingAnOlderWifiChip])
            {
              v402 = 0.0;
            }

            else
            {
              v402 = v469 * v309;
            }

            if ([*(v6 + 384) debugEnabled])
            {
              v403 = objc_opt_class();
              v486[0] = MEMORY[0x277D85DD0];
              v486[1] = 3221225472;
              v486[2] = __30__PLWifiAgent_modelWiFiPower___block_invoke;
              v486[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v486[4] = v403;
              if (modelWiFiPower__defaultOnce != -1)
              {
                dispatch_once(&modelWiFiPower__defaultOnce, v486);
              }

              if (modelWiFiPower__classDebugEnabled == 1)
              {
                v404 = [MEMORY[0x277CCACA8] stringWithFormat:@"txE = %f, rxE = %f, csE = %f, scE = %f", *&v401, *&v315, *&v400, *&v402];
                v405 = MEMORY[0x277D3F178];
                v406 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
                lastPathComponent = [v406 lastPathComponent];
                v408 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
                [v405 logMessage:v404 fromFile:lastPathComponent fromFunction:v408 fromLineNumber:4984];

                v410 = PLLogCommon(v409);
                if (os_log_type_enabled(v410, OS_LOG_TYPE_DEBUG))
                {
                  __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
                }

                self = selfCopy;
                v6 = 0x277D3F000;
                v229 = v471;
              }
            }

            v411 = v401 + v315;
            v412 = v411 + v400;
            if (v463 - v202 - v478 >= 0.0)
            {
              v413 = v463 - v202 - v478;
            }

            else
            {
              v413 = 0.0;
            }

            v414 = [MEMORY[0x277D3F208] isWiFiClass:1004005];
            if (v413 >= v456)
            {
              if ((v414 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v454 > v413)
              {
                v415 = (v413 - v456) * v452 + v456 * v461;
              }

              else
              {
                v415 = v454 * v442 + (v456 - v454) * v461 + (v413 - v456) * v452;
              }
            }

            else if ((v414 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v454 > v413)
            {
              v415 = v413 * v461;
            }

            else
            {
              v415 = v454 * v442 + (v413 - v454) * v461;
            }

            v54 = v412 + v402;
            if (v415 < 0.0)
            {
              v415 = 0.0;
            }

            v416 = v411 + v415;
            if (v474 == 0.0)
            {
              v55 = 0.0;
            }

            else
            {
              v55 = v416;
            }

            v225 = v467;
          }

          else
          {
            v226 = [v225 objectForKeyedSubscript:{@"scan", v474}];
            [v226 doubleValue];
            v228 = v227;

            v54 = (v194 - v188 - v191) * v228;
            v55 = 0.0;
            v229 = v471;
          }

          goto LABEL_44;
        }

        v55 = 0.0;
        v54 = 0.0;
        if (![MEMORY[0x277D3F208] isWiFiClass:1004019])
        {
LABEL_44:
          v139 = [powerCopy objectForKeyedSubscript:@"LocationScanDuration"];
          [v139 doubleValue];
          v141 = v140;

          v142 = [powerCopy objectForKeyedSubscript:@"PipelineScanDuration"];
          [v142 doubleValue];
          v144 = v143;

          entryDate = [PLUtilities powerModelForOperatorName:@"wifi"];
          wifiChipset = [(PLWifiAgent *)self wifiChipset];
          v146 = [entryDate objectForKeyedSubscript:wifiChipset];
          wifiManufacturer = [(PLWifiAgent *)self wifiManufacturer];
          v57 = [v146 objectForKeyedSubscript:wifiManufacturer];

          v148 = [v57 objectForKeyedSubscript:@"scan"];
          [v148 doubleValue];
          v150 = v149;

          v151 = v141 * v150;
          v152 = v141 <= 0.0;
          v153 = 0.0;
          if (v152)
          {
            v154 = 0.0;
          }

          else
          {
            v154 = v151;
          }

          if (v144 <= 0.0)
          {
            v155 = 0.0;
          }

          else
          {
            v155 = v144 * v150;
          }

          if (v55 >= 0.0)
          {
            v156 = v55;
          }

          else
          {
            v156 = 0.0;
          }

          if (v54 - v55 - v154 - v155 >= 0.0)
          {
            v157 = v54 - v55 - v154 - v155;
          }

          else
          {
            v157 = 0.0;
          }

          v158 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
          [v158 doubleValue];
          v160 = v159;

          v161 = 0.0;
          v162 = 0.0;
          v163 = 0.0;
          v164 = 0.0;
          if (v160 > 0.0)
          {
            if (v155 >= 0.0)
            {
              v165 = v155;
            }

            else
            {
              v165 = 0.0;
            }

            if (v154 >= 0.0)
            {
              v166 = v154;
            }

            else
            {
              v166 = 0.0;
            }

            if (v54 >= 0.0)
            {
              v167 = v54;
            }

            else
            {
              v167 = 0.0;
            }

            v153 = v167 / v160;
            v162 = v166 / v160;
            v152 = v167 <= v156;
            v163 = v165 / v160;
            if (v152)
            {
              if (v153 <= v162 + v163)
              {
                v161 = 0.0;
              }

              else
              {
                v161 = v153 - v162 - v163;
              }
            }

            else
            {
              v161 = v156 / v160;
              v164 = v157 / v160;
            }
          }

          v168 = v161;
          v169 = v163;
          v170 = v162;
          if ([*(v6 + 384) debugEnabled])
          {
            v171 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __30__PLWifiAgent_modelWiFiPower___block_invoke_2688;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v171;
            if (modelWiFiPower__defaultOnce_2686 != -1)
            {
              dispatch_once(&modelWiFiPower__defaultOnce_2686, block);
            }

            if (modelWiFiPower__classDebugEnabled_2687 == 1)
            {
              selfCopy2 = self;
              v173 = [MEMORY[0x277CCACA8] stringWithFormat:@"wifi_power = %f, wifi_power_data = %f, wifi_power_location = %f, wifi_power_wow = %f, wifi_power_idle = %f", *&v153, *&v168, *&v170, 0, *&v164];
              v174 = MEMORY[0x277D3F178];
              v175 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent2 = [v175 lastPathComponent];
              v177 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
              [v174 logMessage:v173 fromFile:lastPathComponent2 fromFunction:v177 fromLineNumber:5292];

              v179 = PLLogCommon(v178);
              if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
              {
                __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
              }

              self = selfCopy2;
            }
          }

          if (+[PLUtilities isPerfPowerMetricd])
          {
            entryDate2 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MetricMonitorInstantKeys"];
            v181 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:entryDate2];
            v182 = [MEMORY[0x277CCABB0] numberWithDouble:v153];
            [v181 setObject:v182 forKeyedSubscript:@"WifiPower"];
            if ([(PLWifiAgent *)self wifiAwdlDevice])
            {
              [(PLWifiAgent *)self wifiAwdlDevice];
              WiFiDeviceClientCopyInterfaceStateInfo();
            }

            v487[0] = v181;
            v183 = [MEMORY[0x277CBEA60] arrayWithObjects:v487 count:1];
            [(PLOperator *)self postEntries:v183];
          }

          else
          {
            entryDate2 = [powerCopy entryDate];
            [(PLWifiAgent *)self modelWiFiSegmentPower:entryDate2 withDataPower:v168 withIdlePower:v164 withLocationPower:v170 withPipelinePower:v169 withTotalDuration:v160 / 1000.0];
          }

          goto LABEL_84;
        }

        v230 = [powerCopy objectForKeyedSubscript:@"CurrentChannel"];
        [v230 doubleValue];
        v475 = v231;

        v232 = [powerCopy objectForKeyedSubscript:@"PMDuration"];
        [v232 doubleValue];
        v234 = v233;

        v235 = [powerCopy objectForKeyedSubscript:@"MPCDuration"];
        [v235 doubleValue];
        v237 = v236;

        v238 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
        [v238 doubleValue];
        v240 = v239;

        v241 = [powerCopy objectForKeyedSubscript:@"TXDuration"];
        [v241 doubleValue];
        v479 = v242;

        v243 = [powerCopy objectForKeyedSubscript:@"MIMOTXDuration"];
        [v243 doubleValue];
        v245 = v244;

        v246 = [powerCopy objectForKeyedSubscript:@"RXDuration"];
        [v246 doubleValue];
        v248 = v247;

        v249 = [powerCopy objectForKeyedSubscript:@"MIMORXDuration"];
        [v249 doubleValue];
        v251 = v250;

        v252 = [powerCopy objectForKeyedSubscript:@"SISORXDuration"];
        [v252 doubleValue];

        v253 = [powerCopy objectForKeyedSubscript:@"MIMOCSDuration"];
        [v253 doubleValue];
        v255 = v254;

        v256 = [powerCopy objectForKeyedSubscript:@"SISOCSDuration"];
        [v256 doubleValue];

        v257 = [powerCopy objectForKeyedSubscript:@"OCLCSDuration"];
        [v257 doubleValue];
        v457 = v258;

        v472 = 0.0;
        if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
        {
          v259 = [powerCopy objectForKeyedSubscript:@"SCRXDurationSISO"];
          [v259 doubleValue];
          v472 = v260;
        }

        v261 = [powerCopy objectForKeyedSubscript:@"FRTSDuration"];
        [v261 doubleValue];
        v466 = v262;

        if (v251 <= v248)
        {
          v263 = v251;
        }

        else
        {
          v263 = v248;
        }

        if (v245 <= v479)
        {
          v264 = v245;
        }

        else
        {
          v264 = v479;
        }

        if (v240 - v248 - v479 - v234 - v237 >= 0.0)
        {
          v265 = v240 - v248 - v479 - v234 - v237;
        }

        else
        {
          v265 = 0.0;
        }

        if (v255 <= v265)
        {
          v266 = v255;
        }

        else
        {
          v266 = v265;
        }

        v459 = v266;
        v460 = v263;
        v46 = [PLUtilities powerModelForOperatorName:@"wifi"];
        wifiChipsetQuery3 = [(PLWifiAgent *)self wifiChipsetQuery];
        v268 = [v46 objectForKeyedSubscript:wifiChipsetQuery3];
        v269 = [v268 objectForKeyedSubscript:@"usi"];

        if (v475 >= 0.0)
        {
          v453 = v46;
          selfCopy3 = self;
          v316 = @"5";
          if (v475 != 0.0)
          {
            v317 = @"2.4";
            if (v475 > 11.0)
            {
              v317 = @"5";
            }

            v316 = v317;
          }

          v318 = [powerCopy objectForKeyedSubscript:@"CurrentBandwidth"];
          [v318 doubleValue];
          v320 = v319;

          v321 = [(__CFString *)v316 isEqualToString:@"2.4"];
          if (v320)
          {
            v322 = v321;
          }

          else
          {
            v322 = 1;
          }

          if (v322)
          {
            v323 = 20;
          }

          else
          {
            v323 = v320;
          }

          v323 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v323];
          [v269 objectForKeyedSubscript:v316];
          v326 = v325 = v269;
          v327 = [v326 objectForKeyedSubscript:v323];
          v328 = [v327 objectForKeyedSubscript:@"mimo_tx"];
          [v328 doubleValue];
          v449 = v329;

          v330 = [v325 objectForKeyedSubscript:v316];
          v331 = [v330 objectForKeyedSubscript:v323];
          v332 = [v331 objectForKeyedSubscript:@"mimo_rx"];
          [v332 doubleValue];
          v334 = v333;

          v335 = [v325 objectForKeyedSubscript:v316];
          v336 = [v335 objectForKeyedSubscript:v323];
          v337 = [v336 objectForKeyedSubscript:@"mimo_cs"];
          [v337 doubleValue];
          v464 = v338;

          v339 = [v325 objectForKeyedSubscript:v316];
          v340 = [v339 objectForKeyedSubscript:v323];
          v341 = [v340 objectForKeyedSubscript:@"siso_tx"];
          [v341 doubleValue];
          v447 = v342;

          v343 = [v325 objectForKeyedSubscript:v316];
          v344 = [v343 objectForKeyedSubscript:v323];
          v345 = [v344 objectForKeyedSubscript:@"siso_rx"];
          [v345 doubleValue];
          v445 = v346;

          v347 = [v325 objectForKeyedSubscript:v316];
          v348 = [v347 objectForKeyedSubscript:v323];
          v349 = [v348 objectForKeyedSubscript:@"siso_cs"];
          [v349 doubleValue];
          v455 = v350;

          v351 = [v325 objectForKeyedSubscript:v316];
          v352 = [v351 objectForKeyedSubscript:v323];
          v353 = [v352 objectForKeyedSubscript:@"ocl_cs"];
          [v353 doubleValue];
          v443 = v354;

          v355 = 0.0;
          if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
          {
            v356 = [v325 objectForKeyedSubscript:v316];
            v357 = [v356 objectForKeyedSubscript:@"sc"];
            [v357 doubleValue];
            v355 = v358;
          }

          v451 = v264;
          v359 = v479 - v264;
          v360 = v248 - v460;
          self = selfCopy3;
          if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004007))
          {
            v361 = v360 * v445 + v460 * v334;
            v6 = 0x277D3F000;
          }

          else
          {
            v441 = v334;
            v380 = [powerCopy objectForKeyedSubscript:@"OPSFullDuration"];
            [v380 doubleValue];
            v382 = v381;

            v383 = [powerCopy objectForKeyedSubscript:@"OPSPartialDuration"];
            [v383 doubleValue];
            v385 = v384;

            if (v382 >= 0.0)
            {
              v386 = v382;
            }

            else
            {
              v386 = 0.0;
            }

            v439 = v386;
            if (v385 >= 0.0)
            {
              v387 = v385;
            }

            else
            {
              v387 = 0.0;
            }

            v388 = [v325 objectForKeyedSubscript:v316];
            v389 = [v388 objectForKeyedSubscript:v323];
            v390 = [v389 objectForKeyedSubscript:@"ops_full"];
            [v390 doubleValue];
            v437 = v391;

            v392 = [v325 objectForKeyedSubscript:v316];
            v393 = [v392 objectForKeyedSubscript:v323];
            v394 = [v393 objectForKeyedSubscript:@"ops_partial"];
            [v394 doubleValue];
            v396 = v395;

            v397 = v360 * v445;
            if (v460 <= v439 + v387)
            {
              v361 = v397 + v460 * v441;
            }

            else
            {
              v361 = v397 + (v460 - v439 - v387) * v441 + v387 * v396 + v439 * v437;
            }

            self = selfCopy3;
            v6 = 0x277D3F000uLL;
          }

          v269 = v325;
          v417 = v359 * v447;
          v418 = v265 - v459;
          if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100020) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v457 > v459)
          {
            v419 = v418 * v455 + v459 * v464;
          }

          else
          {
            v419 = v457 * v443 + (v459 - v457) * v464 + v418 * v455;
          }

          v420 = v417 + v451 * v449;
          if ([MEMORY[0x277D3F208] isUsingAnOlderWifiChip])
          {
            v421 = 0.0;
          }

          else
          {
            v421 = v472 * v355;
          }

          if ([*(v6 + 384) debugEnabled])
          {
            v422 = objc_opt_class();
            v485[0] = MEMORY[0x277D85DD0];
            v485[1] = 3221225472;
            v485[2] = __30__PLWifiAgent_modelWiFiPower___block_invoke_2685;
            v485[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v485[4] = v422;
            if (modelWiFiPower__defaultOnce_2683 != -1)
            {
              dispatch_once(&modelWiFiPower__defaultOnce_2683, v485);
            }

            if (modelWiFiPower__classDebugEnabled_2684 == 1)
            {
              v423 = [MEMORY[0x277CCACA8] stringWithFormat:@"txE = %f, rxE = %f, csE = %f, scE = %f", *&v420, *&v361, *&v419, *&v421];
              v424 = MEMORY[0x277D3F178];
              v425 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent3 = [v425 lastPathComponent];
              v427 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
              [v424 logMessage:v423 fromFile:lastPathComponent3 fromFunction:v427 fromLineNumber:5175];

              v429 = PLLogCommon(v428);
              if (os_log_type_enabled(v429, OS_LOG_TYPE_DEBUG))
              {
                __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
              }

              self = selfCopy3;
              v6 = 0x277D3F000;
              v46 = v453;
              v269 = v325;
            }
          }

          v430 = v420 + v361;
          v431 = v430 + v419;
          if (v466 - v248 - v479 >= 0.0)
          {
            v432 = v466 - v248 - v479;
          }

          else
          {
            v432 = 0.0;
          }

          v433 = [MEMORY[0x277D3F208] isWiFiClass:1004005];
          if (v432 >= v459)
          {
            if ((v433 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v457 > v432)
            {
              v434 = (v432 - v459) * v455 + v459 * v464;
            }

            else
            {
              v434 = v457 * v443 + (v459 - v457) * v464 + (v432 - v459) * v455;
            }
          }

          else if ((v433 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v457 > v432)
          {
            v434 = v432 * v464;
          }

          else
          {
            v434 = v457 * v443 + (v432 - v457) * v464;
          }

          v54 = v431 + v421;
          if (v434 < 0.0)
          {
            v434 = 0.0;
          }

          v435 = v430 + v434;
          if (v475 == 0.0)
          {
            v55 = 0.0;
          }

          else
          {
            v55 = v435;
          }
        }

        else
        {
          v270 = [v269 objectForKeyedSubscript:{@"scan", v475}];
          [v270 doubleValue];
          v272 = v271;

          v54 = (v240 - v234 - v237) * v272;
          v55 = 0.0;
        }

LABEL_43:
        goto LABEL_44;
      }

      v85 = [powerCopy objectForKeyedSubscript:@"CurrentChannel"];
      [v85 doubleValue];
      v87 = v86;

      v88 = [powerCopy objectForKeyedSubscript:@"PMDuration"];
      [v88 doubleValue];
      v90 = v89;

      v91 = [powerCopy objectForKeyedSubscript:@"MPCDuration"];
      [v91 doubleValue];
      v93 = v92;

      v94 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
      [v94 doubleValue];
      v96 = v95;

      v97 = [powerCopy objectForKeyedSubscript:@"TXDuration"];
      [v97 doubleValue];
      v99 = v98;

      v100 = [powerCopy objectForKeyedSubscript:@"RXDuration"];
      [v100 doubleValue];
      v102 = v101;

      v103 = [powerCopy objectForKeyedSubscript:@"FRTSDuration"];
      [v103 doubleValue];
      v105 = v104;

      v46 = [PLUtilities powerModelForOperatorName:@"wifi"];
      wifiChipsetQuery4 = [(PLWifiAgent *)self wifiChipsetQuery];
      v107 = [v46 objectForKeyedSubscript:wifiChipsetQuery4];
      wifiManufacturerQuery3 = [(PLWifiAgent *)self wifiManufacturerQuery];
      v50 = [v107 objectForKeyedSubscript:wifiManufacturerQuery3];

      if (v87 < 0.0)
      {
        v109 = [v50 objectForKeyedSubscript:@"scan"];
        [v109 doubleValue];
        v111 = v110;

        v54 = (v96 - v90 - v93) * v111;
        v55 = 0.0;
LABEL_42:

        goto LABEL_43;
      }

      v477 = v105;
      v481 = v90;
      selfCopy4 = self;
      v113 = @"5";
      if (v87 != 0.0)
      {
        v114 = @"2.4";
        if (v87 > 11.0)
        {
          v114 = @"5";
        }

        v113 = v114;
      }

      v115 = [powerCopy objectForKeyedSubscript:@"CurrentBandwidth"];
      [v115 doubleValue];
      v117 = v116;

      if (v117)
      {
        v118 = v117;
      }

      else
      {
        v118 = 20;
      }

      v118 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v118];
      v120 = [v50 objectForKeyedSubscript:v113];
      v121 = [v120 objectForKeyedSubscript:v118];
      v122 = [v121 objectForKeyedSubscript:@"tx"];
      [v122 doubleValue];
      v124 = v123;

      v125 = [v50 objectForKeyedSubscript:v113];
      v126 = [v125 objectForKeyedSubscript:v118];
      v127 = [v126 objectForKeyedSubscript:@"rx"];
      [v127 doubleValue];
      v129 = v128;

      v130 = [v50 objectForKeyedSubscript:v113];
      v131 = [v130 objectForKeyedSubscript:v118];
      v132 = [v131 objectForKeyedSubscript:@"cs"];
      [v132 doubleValue];
      v134 = v133;

      v135 = v96 - v481 - v93 - v99 - v102;
      v55 = 0.0;
      if (v135 < 0.0)
      {
        v135 = 0.0;
      }

      v136 = v135 * v134;
      v137 = v99 * v124 + v102 * v129;
      if (v87 != 0.0)
      {
        v138 = v477 - v102 - v99;
        if (v138 < 0.0)
        {
          v138 = 0.0;
        }

        v55 = v137 + v138 * v134;
      }

      v54 = v137 + v136;

      self = selfCopy4;
    }

    v6 = 0x277D3F000uLL;
    goto LABEL_42;
  }

LABEL_85:
}

void *__30__PLWifiAgent_modelWiFiPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelWiFiPower__classDebugEnabled = result;
  return result;
}

void *__30__PLWifiAgent_modelWiFiPower___block_invoke_2685(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelWiFiPower__classDebugEnabled_2684 = result;
  return result;
}

void *__30__PLWifiAgent_modelWiFiPower___block_invoke_2688(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelWiFiPower__classDebugEnabled_2687 = result;
  return result;
}

- (void)modelWiFiSegmentPower:(id)power withDataPower:(double)dataPower withIdlePower:(double)idlePower withLocationPower:(double)locationPower withPipelinePower:(double)pipelinePower withTotalDuration:(double)duration
{
  powerCopy = power;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if ((isHomePod & 1) == 0)
  {
    isHomePod = [powerCopy timeIntervalSince1970];
    v17 = v16;
    if (self->_wifi_segment_lastWrittenDate)
    {
      wifi_segment_lastWrittenTimestamp = self->_wifi_segment_lastWrittenTimestamp;
      v19 = self->_wifi_segment_timestamp - wifi_segment_lastWrittenTimestamp;
      v20 = 0.0;
      v21 = 0.0;
      v22 = 0.0;
      v23 = 0.0;
      if (v19 > 0.0)
      {
        v23 = v19 * self->_wifi_segment_power_data;
        v20 = v19 * self->_wifi_segment_power_idle;
        v21 = v19 * self->_wifi_segment_power_location;
        v22 = v19 * self->_wifi_segment_power_pipeline;
      }

      v24 = v17 - wifi_segment_lastWrittenTimestamp;
      if (v24 > 0.0)
      {
        self->_wifi_segment_power_data = (v23 + dataPower * duration) / v24;
        self->_wifi_segment_power_idle = (v20 + idlePower * duration) / v24;
        self->_wifi_segment_power_location = (v21 + locationPower * duration) / v24;
        self->_wifi_segment_power_pipeline = (v22 + pipelinePower * duration) / v24;
        objc_storeStrong(&self->_wifi_segment_date, power);
        self->_wifi_segment_timestamp = v17;
      }
    }

    else
    {
      objc_storeStrong(&self->_wifi_segment_lastWrittenDate, power);
      self->_wifi_segment_lastWrittenTimestamp = v17;
      objc_storeStrong(&self->_wifi_segment_date, power);
      self->_wifi_segment_timestamp = self->_wifi_segment_lastWrittenTimestamp;
      self->_wifi_segment_power_data = dataPower;
      self->_wifi_segment_power_idle = idlePower;
      self->_wifi_segment_power_location = locationPower;
      self->_wifi_segment_power_pipeline = pipelinePower;
    }
  }

  MEMORY[0x2821F96F8](isHomePod);
}

- (void)writeModeledPower
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && self->_wifi_segment_timestamp != self->_wifi_segment_lastWrittenTimestamp)
  {
    if (self->_wifi_segment_power_data > 2500.0)
    {
      self->_wifi_segment_power_data = 2500.0;
    }

    if (self->_wifi_segment_power_idle > 2500.0)
    {
      self->_wifi_segment_power_idle = 2500.0;
    }

    if (self->_wifi_segment_power_location > 2500.0)
    {
      self->_wifi_segment_power_location = 2500.0;
    }

    if (self->_wifi_segment_power_pipeline > 2500.0)
    {
      self->_wifi_segment_power_pipeline = 2500.0;
    }

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0] createPowerEventBackwardWithRootNodeID:11 withPower:self->_wifi_segment_date withEndDate:self->_wifi_segment_power_data];

    mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0]2 createPowerEventBackwardWithRootNodeID:53 withPower:self->_wifi_segment_date withEndDate:self->_wifi_segment_power_idle];

    mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0]3 createPowerEventBackwardWithRootNodeID:12 withPower:self->_wifi_segment_date withEndDate:self->_wifi_segment_power_location];

    mEMORY[0x277D3F0C0]4 = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0]4 createPowerEventBackwardWithRootNodeID:13 withPower:self->_wifi_segment_date withEndDate:self->_wifi_segment_power_pipeline];

    objc_storeStrong(&self->_wifi_segment_lastWrittenDate, self->_wifi_segment_date);
    self->_wifi_segment_lastWrittenTimestamp = self->_wifi_segment_timestamp;
  }
}

- (void)handleRemoteSessionCallbackWithUserInfo:(id)info
{
  v3 = [info objectForKey:@"entry"];
  if (v3)
  {
    v7 = v3;
    v4 = [v3 objectForKeyedSubscript:@"event"];

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    entryDate = [v7 entryDate];
    if (v4)
    {
      [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:11 withRemovingChildNodeName:@"ScreenContinuityShell" withStartDate:entryDate];
    }

    else
    {
      [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:11 withAddingChildNodeName:@"ScreenContinuityShell" withStartDate:entryDate];
    }

    v3 = v7;
  }
}

@end