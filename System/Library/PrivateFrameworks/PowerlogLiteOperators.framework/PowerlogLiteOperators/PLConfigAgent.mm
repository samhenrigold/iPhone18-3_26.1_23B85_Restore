@interface PLConfigAgent
+ (id)entryEventForwardDefinitionAmbientMode;
+ (id)entryEventForwardDefinitionContinuityCamera;
+ (id)entryEventForwardDefinitionFeatureFlag;
+ (id)entryEventForwardDefinitionKeyboardClicks;
+ (id)entryEventForwardDefinitionKeyboardHaptics;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventForwardDefintionRinger;
+ (id)entryEventNoneDefinitionConfig;
+ (id)entryEventNoneDefinitionPairedDeviceConfig;
+ (id)entryEventNoneDefinitions;
+ (id)getVersionDirectory:(int64_t)directory;
+ (int64_t)getOSVersionNumber;
+ (void)load;
+ (void)removeFilesFromPath:(id)path withMaxFiles:(int64_t)files;
+ (void)resetRAPIDTaskingConfig;
- (BOOL)disableCABlanking;
- (BOOL)getMDMStatus;
- (BOOL)noWatchdogs;
- (PLConfigAgent)init;
- (double)logDeviceDiskSize;
- (id)baseband;
- (id)bootArgs;
- (id)deviceName;
- (id)deviceShutdownReasons;
- (id)getCoverGlass;
- (id)getDeviceSerialNumber;
- (id)getShutdownBootReason:(BOOL)reason;
- (id)getSplatVersionString;
- (id)hasEmbeddedSIM;
- (id)hwBoardRevision;
- (id)hwConfig;
- (id)logAndUpdateLastBuild:(id)build;
- (id)logAndUpdateLastUpgradeTime:(id)time;
- (id)logIcloudAccountType;
- (id)logLastBackupTime;
- (id)logLastUpgradeSystemTimestamp;
- (id)seedGroup;
- (int)getCoreCount:(int)count;
- (int)getDeviceType;
- (int)getOSVariant;
- (int)getPerfLevelsCount;
- (int64_t)autolockTime;
- (int64_t)checkAndUpdateOSVersion:(id)version;
- (unint64_t)getUpgradeType;
- (unint64_t)logInstallType:(id)type;
- (unint64_t)rootInstalled;
- (unint64_t)volumeFreespace:(id)freespace;
- (void)cleanupOldPowerlogs;
- (void)copyPowerlogsForPreUpgradeOSVersion:(int64_t)version;
- (void)dealloc;
- (void)fileSizeSafeguards;
- (void)initOperatorDependancies;
- (void)log;
- (void)logCPUCoreConfig;
- (void)logConfigEntry:(id)entry;
- (void)logConfigEntryToCA:(id)a;
- (void)logConfigToBGSQL:(id)l;
- (void)logDeviceCapability;
- (void)logEntryToCA:(id)a;
- (void)logEventForwardAmbientModeEnabled:(id)enabled;
- (void)logEventForwardConsoleMode;
- (void)logEventForwardContinuityCamera:(id)camera;
- (void)logEventForwardKeyboardClicks;
- (void)logEventForwardKeyboardHaptics;
- (void)logEventForwardRingerState;
- (void)logEventForwardSysdiagnoseEvent:(BOOL)event;
- (void)logEventNoneBuddyData:(id)data;
- (void)logEventNoneConfig;
- (void)logEventNonePairedDeviceConfig;
- (void)logEventPointFeatureFlags:(id)flags;
- (void)logSystemReboot;
- (void)logToPPSBuild:(id)build atDate:(id)date;
- (void)logUserspaceReboot;
- (void)maintainPreUpgradePowerlogs:(int64_t)powerlogs;
- (void)pairStatusDidChange:(id)change;
@end

@implementation PLConfigAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLConfigAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"KeyboardClicks";
  entryEventForwardDefinitionKeyboardClicks = [objc_opt_class() entryEventForwardDefinitionKeyboardClicks];
  v11[0] = entryEventForwardDefinitionKeyboardClicks;
  v10[1] = @"KeyboardHaptics";
  entryEventForwardDefinitionKeyboardHaptics = [objc_opt_class() entryEventForwardDefinitionKeyboardHaptics];
  v11[1] = entryEventForwardDefinitionKeyboardHaptics;
  v10[2] = @"Ringer";
  entryEventForwardDefintionRinger = [objc_opt_class() entryEventForwardDefintionRinger];
  v11[2] = entryEventForwardDefintionRinger;
  v10[3] = @"ContinuityCamera";
  entryEventForwardDefinitionContinuityCamera = [objc_opt_class() entryEventForwardDefinitionContinuityCamera];
  v11[3] = entryEventForwardDefinitionContinuityCamera;
  v10[4] = @"AmbientModeEnabled";
  entryEventForwardDefinitionAmbientMode = [objc_opt_class() entryEventForwardDefinitionAmbientMode];
  v11[4] = entryEventForwardDefinitionAmbientMode;
  v10[5] = @"FeatureFlags";
  entryEventForwardDefinitionFeatureFlag = [objc_opt_class() entryEventForwardDefinitionFeatureFlag];
  v11[5] = entryEventForwardDefinitionFeatureFlag;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

+ (id)entryEventForwardDefinitionFeatureFlag
{
  v25[3] = *MEMORY[0x277D85DE8];
  internalBuild = [MEMORY[0x277D3F208] internalBuild];
  v3 = MEMORY[0x277CBEC10];
  if (internalBuild)
  {
    v24[0] = *MEMORY[0x277D3F4E8];
    v4 = *MEMORY[0x277D3F4F8];
    v22[0] = *MEMORY[0x277D3F568];
    v22[1] = v4;
    v23[0] = &unk_282C1BEC8;
    v23[1] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v25[0] = v17;
    v25[1] = v3;
    v5 = *MEMORY[0x277D3F500];
    v24[1] = *MEMORY[0x277D3F540];
    v24[2] = v5;
    v20[0] = @"key";
    v18[0] = @"Domain";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v19[0] = commonTypeDict_StringFormat;
    v18[1] = @"FeatureName";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
    v19[1] = commonTypeDict_StringFormat2;
    v18[2] = @"TargetRelease";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
    v19[2] = commonTypeDict_StringFormat3;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v20[1] = @"value";
    v21[0] = v11;
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v21[1] = commonTypeDict_IntegerFormat;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v25[2] = v14;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  }

  return v3;
}

+ (id)entryEventForwardDefinitionKeyboardClicks
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1BED8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Enabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardDefinitionKeyboardHaptics
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1BED8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Enabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardDefintionRinger
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1BED8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Enabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardDefinitionContinuityCamera
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1BED8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Enabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardDefinitionAmbientMode
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1BED8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Enabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventNoneDefinitions
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"Config";
  entryEventNoneDefinitionConfig = [objc_opt_class() entryEventNoneDefinitionConfig];
  v9[0] = entryEventNoneDefinitionConfig;
  v8[1] = @"PairedDeviceConfig";
  entryEventNoneDefinitionPairedDeviceConfig = [objc_opt_class() entryEventNoneDefinitionPairedDeviceConfig];
  v9[1] = entryEventNoneDefinitionPairedDeviceConfig;
  v8[2] = @"AdapterInformation";
  entryEventNoneDefinitionAdapterInformation = [self entryEventNoneDefinitionAdapterInformation];
  v9[2] = entryEventNoneDefinitionAdapterInformation;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

+ (id)entryEventNoneDefinitionConfig
{
  v90[2] = *MEMORY[0x277D85DE8];
  v89[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v87[0] = *MEMORY[0x277D3F568];
  v87[1] = v2;
  v88[0] = &unk_282C1BEE8;
  v88[1] = &unk_282C108C0;
  v87[2] = *MEMORY[0x277D3F588];
  v88[2] = &unk_282C1BEF8;
  v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:3];
  v90[0] = v84;
  v89[1] = *MEMORY[0x277D3F540];
  v85[0] = @"Build";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v86[0] = commonTypeDict_StringFormat;
  v85[1] = @"SupplementalBuild";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v86[1] = commonTypeDict_StringFormat2;
  v85[2] = @"CustomerOS";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v86[2] = commonTypeDict_BoolFormat;
  v85[3] = @"Device";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v86[3] = commonTypeDict_StringFormat3;
  v85[4] = @"DevBoard";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_BoolFormat];
  v86[4] = commonTypeDict_BoolFormat2;
  v85[5] = @"CRKey";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v86[5] = commonTypeDict_StringFormat4;
  v85[6] = @"CRKey2";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v86[6] = commonTypeDict_StringFormat5;
  v85[7] = @"DeviceName";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v86[7] = commonTypeDict_StringFormat6;
  v85[8] = @"BootArgs";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v86[8] = commonTypeDict_StringFormat7;
  v85[9] = @"DeviceType";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v86[9] = commonTypeDict_IntegerFormat;
  v85[10] = @"DeviceBootTime";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]11 commonTypeDict_DateFormat];
  v86[10] = commonTypeDict_DateFormat;
  v85[11] = @"LastBuild";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat8 = [mEMORY[0x277D3F198]12 commonTypeDict_StringFormat];
  v86[11] = commonTypeDict_StringFormat8;
  v85[12] = @"LastUpgradeTimestamp";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]13 commonTypeDict_RealFormat];
  v86[12] = commonTypeDict_RealFormat;
  v85[13] = @"DeviceDiskSize";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v86[13] = commonTypeDict_IntegerFormat2;
  v85[14] = @"MachTimeBaseRatio";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]15 commonTypeDict_RealFormat];
  v86[14] = commonTypeDict_RealFormat2;
  v85[15] = @"AutoLockTime";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v86[15] = commonTypeDict_IntegerFormat3;
  v85[16] = @"Baseband";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v86[16] = commonTypeDict_IntegerFormat4;
  v85[17] = @"BasebandFirmware";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat9 = [mEMORY[0x277D3F198]18 commonTypeDict_StringFormat];
  v86[17] = commonTypeDict_StringFormat9;
  v85[18] = @"BKNoWatchdogs";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]19 commonTypeDict_BoolFormat];
  v86[18] = commonTypeDict_BoolFormat3;
  v85[19] = @"SBDisableCABlanking";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat4 = [mEMORY[0x277D3F198]20 commonTypeDict_BoolFormat];
  v86[19] = commonTypeDict_BoolFormat4;
  v85[20] = @"AutomatedDeviceGroup";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat10 = [mEMORY[0x277D3F198]21 commonTypeDict_StringFormat];
  v86[20] = commonTypeDict_StringFormat10;
  v85[21] = @"SeedGroup";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat11 = [mEMORY[0x277D3F198]22 commonTypeDict_StringFormat];
  v86[21] = commonTypeDict_StringFormat11;
  v85[22] = @"ConfigNumber";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat12 = [mEMORY[0x277D3F198]23 commonTypeDict_StringFormat];
  v86[22] = commonTypeDict_StringFormat12;
  v85[23] = @"DebugBoardRevision";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat13 = [mEMORY[0x277D3F198]24 commonTypeDict_StringFormat];
  v86[23] = commonTypeDict_StringFormat13;
  v85[24] = @"LastBackupTimestamp";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]25 commonTypeDict_DateFormat];
  v86[24] = commonTypeDict_DateFormat2;
  v85[25] = @"DeviceBootReasons";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat14 = [mEMORY[0x277D3F198]26 commonTypeDict_StringFormat];
  v86[25] = commonTypeDict_StringFormat14;
  v85[26] = @"IcloudAccountType";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat15 = [mEMORY[0x277D3F198]27 commonTypeDict_StringFormat];
  v86[26] = commonTypeDict_StringFormat15;
  v85[27] = @"OSVariant";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]28 commonTypeDict_IntegerFormat];
  v86[27] = commonTypeDict_IntegerFormat5;
  v85[28] = @"RemainingDiskSpace";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
  v86[28] = commonTypeDict_IntegerFormat6;
  v85[29] = @"DeviceSerialNumber";
  mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat16 = [mEMORY[0x277D3F198]30 commonTypeDict_StringFormat];
  v86[29] = commonTypeDict_StringFormat16;
  v85[30] = @"MDMStatus";
  mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat5 = [mEMORY[0x277D3F198]31 commonTypeDict_BoolFormat];
  v86[30] = commonTypeDict_BoolFormat5;
  v85[31] = @"InstalledSplat";
  mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat17 = [mEMORY[0x277D3F198]32 commonTypeDict_StringFormat];
  v86[31] = commonTypeDict_StringFormat17;
  v85[32] = @"Device_SoC";
  mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat18 = [mEMORY[0x277D3F198]33 commonTypeDict_StringFormat];
  v86[32] = commonTypeDict_StringFormat18;
  v85[33] = @"RootInstalled";
  mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat];
  v86[33] = commonTypeDict_IntegerFormat7;
  v85[34] = @"LastUpgradeSystemTimestamp";
  mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]35 commonTypeDict_RealFormat];
  v86[34] = commonTypeDict_RealFormat3;
  v85[35] = @"InstallType";
  mEMORY[0x277D3F198]36 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]36 commonTypeDict_IntegerFormat];
  v86[35] = commonTypeDict_IntegerFormat8;
  v85[36] = @"ADGOnly";
  mEMORY[0x277D3F198]37 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat19 = [mEMORY[0x277D3F198]37 commonTypeDict_StringFormat];
  v86[36] = commonTypeDict_StringFormat19;
  v85[37] = @"ExperimentGroup";
  mEMORY[0x277D3F198]38 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat20 = [mEMORY[0x277D3F198]38 commonTypeDict_StringFormat];
  v86[37] = commonTypeDict_StringFormat20;
  v85[38] = @"HasInternalKey";
  mEMORY[0x277D3F198]39 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat6 = [mEMORY[0x277D3F198]39 commonTypeDict_BoolFormat];
  v86[38] = commonTypeDict_BoolFormat6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:39];
  v90[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];

  return v12;
}

+ (id)entryEventNoneDefinitionPairedDeviceConfig
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isiOS] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWatch"))
  {
    v21[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F590];
    v19[0] = *MEMORY[0x277D3F568];
    v19[1] = v2;
    v20[0] = &unk_282C1BEC8;
    v20[1] = &unk_282C108C0;
    v19[2] = *MEMORY[0x277D3F588];
    v20[2] = &unk_282C1BF08;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v22[0] = v16;
    v21[1] = *MEMORY[0x277D3F540];
    v17[0] = @"Build";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v18[0] = commonTypeDict_StringFormat;
    v17[1] = @"Device";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
    v18[1] = commonTypeDict_StringFormat2;
    v17[2] = @"HWModel";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
    v18[2] = commonTypeDict_StringFormat3;
    v17[3] = @"PairingID";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
    v18[3] = commonTypeDict_StringFormat4;
    v17[4] = @"PMode";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v18[4] = commonTypeDict_IntegerFormat;
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

- (PLConfigAgent)init
{
  v6.receiver = self;
  v6.super_class = PLConfigAgent;
  v2 = [(PLAgent *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D3F1C8]) initWithOperator:v2 forService:@"IOPlatformExpertDevice"];
    iokitExpertDevice = v2->_iokitExpertDevice;
    v2->_iokitExpertDevice = v3;
  }

  return v2;
}

- (unint64_t)volumeFreespace:(id)freespace
{
  v14 = *MEMORY[0x277D85DE8];
  freespaceCopy = freespace;
  memset(&v13, 0, 512);
  if (statfs([freespaceCopy fileSystemRepresentation], &v13))
  {
    v4 = PLLogConfig();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = __error();
      v8 = strerror(*v7);
      v9 = 138412546;
      v10 = freespaceCopy;
      v11 = 2080;
      v12 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "statfs failed for %@ : %s", &v9, 0x16u);
    }

    v5 = -1;
  }

  else
  {
    v5 = ((v13.f_bavail * v13.f_bsize) / 1000000000.0);
  }

  return v5;
}

- (id)bootArgs
{
  size = 0;
  if (sysctlbyname("kern.bootargs", 0, &size, 0, 0))
  {
    v2 = PLLogConfig();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "unable to retrieve size of kern.bootargs", buf, 2u);
    }

LABEL_9:
    strip = 0;
    goto LABEL_10;
  }

  v3 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (sysctlbyname("kern.bootargs", v3, &size, 0, 0))
  {
    v4 = PLLogConfig();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "unable to retrieve kern.bootargs", v8, 2u);
    }

    free(v3);
    goto LABEL_9;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  strip = [v7 strip];

  free(v3);
LABEL_10:

  return strip;
}

- (unint64_t)rootInstalled
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 8;
  v8 = 0;
  v2 = sysctlbyname("kern.roots_installed", &v8, &v7, 0, 0);
  v3 = PLLogConfig();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *__error();
      *buf = 67109120;
      LODWORD(v10) = v6;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "Unable to get Installed root info kern.roots_installed: %{errno}d", buf, 8u);
    }

    return -1;
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v10 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Installed root info kern.roots_installed: %llu", buf, 0xCu);
    }

    return v8 != 0;
  }
}

- (int)getDeviceType
{
  if ([MEMORY[0x277D3F208] isiPad])
  {
    return 1;
  }

  if ([MEMORY[0x277D3F208] isiPhone])
  {
    return 0;
  }

  if ([MEMORY[0x277D3F208] isiPod])
  {
    return 2;
  }

  if ([MEMORY[0x277D3F208] isWatch])
  {
    return 3;
  }

  if ([MEMORY[0x277D3F208] isMac])
  {
    return 4;
  }

  if ([MEMORY[0x277D3F208] isHomePod])
  {
    return 5;
  }

  if ([MEMORY[0x277D3F208] isAppleTV])
  {
    return 6;
  }

  if ([MEMORY[0x277D3F208] isAppleVision])
  {
    return 86;
  }

  return 1000;
}

- (BOOL)noWatchdogs
{
  v2 = [MEMORY[0x277D3F180] objectForKey:@"BKNoWatchdogs" forApplicationID:@"com.apple.backboardd" synchronize:0];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)disableCABlanking
{
  v2 = [MEMORY[0x277D3F180] objectForKey:@"SBDisableCABlanking" forApplicationID:@"com.apple.springboard" synchronize:0];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (int64_t)autolockTime
{
  mEMORY[0x277D26298] = [MEMORY[0x277D26298] sharedConnection];
  v3 = [mEMORY[0x277D26298] effectiveValueForSetting:*MEMORY[0x277D25D70]];
  integerValue = [v3 integerValue];

  return integerValue;
}

+ (void)resetRAPIDTaskingConfig
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3F630];
  v3 = [MEMORY[0x277D3F180] objectForKey:*MEMORY[0x277D3F630]];
  if (v3)
  {
    v4 = PLLogConfig();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "Resetting RAPID Tasking config: %@", &v5, 0xCu);
    }

    [MEMORY[0x277D3F180] setObject:0 forKey:v2 saveToDisk:1];
    [MEMORY[0x277D3F180] setObject:0 forKey:*MEMORY[0x277D3F628] saveToDisk:1];
    [MEMORY[0x277D3F180] setObject:0 forKey:*MEMORY[0x277D3F640] saveToDisk:1];
  }
}

+ (int64_t)getOSVersionNumber
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v3 = processInfo;
  if (processInfo)
  {
    objc_msgSend_operatingSystemVersion(processInfo);
  }

  return 0;
}

- (int64_t)checkAndUpdateOSVersion:(id)version
{
  v18 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v5 = MEMORY[0x277D3F180];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PLConfigAgent_checkAndUpdateOSVersion___block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F42D0 != -1)
  {
    dispatch_once(&qword_2811F42D0, block);
  }

  v6 = [v5 longForKey:@"LastOSVersion" ifNotSet:qword_2811F42D8];
  v7 = +[PLConfigAgent getOSVersionNumber];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLConfigAgent logInstallType:](self, "logInstallType:", versionCopy)}];
  [MEMORY[0x277D3F180] setObject:v8 forKey:@"InstallType" saveToDisk:1];
  v9 = PLLogConfig();
  v10 = v9;
  if (v7 < 1 || v7 == v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "OS version did not change", buf, 2u);
    }

    v6 = -1;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_INFO, "OS version changed from: %ld to: %ld", buf, 0x16u);
    }

    v11 = MEMORY[0x277D3F180];
    v10 = [MEMORY[0x277CCABB0] numberWithLong:v7];
    [v11 setObject:v10 forKey:@"LastOSVersion" saveToDisk:1];
  }

  return v6;
}

void *__41__PLConfigAgent_checkAndUpdateOSVersion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"DefaultOSVersion"];
  qword_2811F42D8 = result;
  return result;
}

+ (id)getVersionDirectory:(int64_t)directory
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = +[PLConfigAgent getOSVersionNumber];
  v5 = PLLogConfig();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (directory / 10000 == v4 / 10000)
  {
    if (v6)
    {
      v11 = 134218240;
      directoryCopy2 = directory;
      v13 = 2048;
      v14 = v4;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Minor OS upgrade: %ld -> %ld", &v11, 0x16u);
    }

    v7 = @"/Library/BatteryLife/UpgradeLogs/MinorVersion";
  }

  else
  {
    if (v6)
    {
      v11 = 134218240;
      directoryCopy2 = directory;
      v13 = 2048;
      v14 = v4;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Major OS upgrade: %ld -> %ld", &v11, 0x16u);
    }

    v7 = @"/Library/BatteryLife/UpgradeLogs/MajorVersion";
  }

  containerPath = [MEMORY[0x277D3F258] containerPath];
  v9 = [containerPath stringByAppendingString:v7];

  return v9;
}

- (void)copyPowerlogsForPreUpgradeOSVersion:(int64_t)version
{
  v75 = *MEMORY[0x277D85DE8];
  version = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", version];
  v5 = [PLConfigAgent getVersionDirectory:version];
  v6 = [v5 stringByAppendingPathComponent:version];
  v7 = PLLogConfig();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = *&v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Copy logs to dir: %@", buf, 0xCu);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v64 = 0;
  v9 = [defaultManager createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v64];
  v10 = v64;
  if (v9)
  {
    v41 = v5;
    v42 = version;
    v11 = 0x277D3F000uLL;
    containerPath = [MEMORY[0x277D3F258] containerPath];
    v13 = [containerPath stringByAppendingString:@"/Library/BatteryLife/Archives/"];
    log = [defaultManager contentsOfDirectoryAtPath:v13 error:0];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = [MEMORY[0x277D3F158] archiveEntriesFinished];
    v46 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
    if (!v46)
    {
      goto LABEL_33;
    }

    v44 = *v61;
    v49 = *MEMORY[0x277CCA198];
    v50 = *MEMORY[0x277CCA1B0];
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v61 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v48 = v14;
        v15 = *(*(&v60 + 1) + 8 * v14);
        v16 = MEMORY[0x277CCAC30];
        uuid = [v15 uuid];
        v18 = [v16 predicateWithFormat:@"SELF CONTAINS %@", uuid];

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v47 = v18;
        v52 = [log filteredArrayUsingPredicate:v18];
        v53 = [v52 countByEnumeratingWithState:&v56 objects:v73 count:16];
        if (v53)
        {
          v19 = *v57;
          v51 = *v57;
          do
          {
            v20 = 0;
            do
            {
              if (*v57 != v19)
              {
                objc_enumerationMutation(v52);
              }

              v21 = *(*(&v56 + 1) + 8 * v20);
              containerPath2 = [*(v11 + 600) containerPath];
              v23 = [containerPath2 stringByAppendingString:@"/Library/BatteryLife/Archives/"];
              v24 = [v23 stringByAppendingPathComponent:v21];

              v25 = [v6 stringByAppendingPathComponent:v21];
              v26 = PLLogConfig();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v68 = *&v24;
                v69 = 2112;
                v70 = v25;
                _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "Copying log at path: %@ to path: %@", buf, 0x16u);
              }

              v55 = v10;
              v27 = [defaultManager copyItemAtPath:v24 toPath:v25 error:&v55];
              v28 = v55;

              if (v27)
              {
                v29 = defaultManager;
                v30 = v6;
                defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
                v65 = v50;
                v66 = v49;
                v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
                v54 = v28;
                v33 = [defaultManager2 setAttributes:v32 ofItemAtPath:v25 error:&v54];
                v10 = v54;

                if ((v33 & 1) == 0)
                {
                  v34 = PLLogConfig();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v68 = *&v25;
                    v69 = 2112;
                    v70 = v10;
                    _os_log_error_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_ERROR, "Failed to set file protection key for file at path: %@ with error: %@", buf, 0x16u);
                  }
                }

                [MEMORY[0x277D3F180] doubleForKey:@"PPSUpgradeLogRetentionDuration" ifNotSet:31449600.0];
                v36 = v35;
                v37 = [MEMORY[0x277CBEBC0] fileURLWithPath:v25];
                v38 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v36];
                v39 = [PPSFileUtilities markAsPurgeable:v37 urgency:512 startDate:v38];

                if (v39)
                {
                  v6 = v30;
                  defaultManager = v29;
                  v11 = 0x277D3F000;
                  v19 = v51;
                  goto LABEL_29;
                }

                v40 = PLLogConfig();
                v6 = v30;
                defaultManager = v29;
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  v68 = v36;
                  v69 = 2112;
                  v70 = v25;
                  _os_log_error_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_ERROR, "Failed to mark file at path as purgeable with retention duration of %f seconds: %@", buf, 0x16u);
                }

                v28 = v10;
                v11 = 0x277D3F000;
                v19 = v51;
              }

              else
              {
                v40 = PLLogConfig();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412802;
                  v68 = *&v24;
                  v69 = 2112;
                  v70 = v25;
                  v71 = 2112;
                  v72 = v28;
                  _os_log_error_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_ERROR, "Failed to copy file at path: %@ to path: %@ with error: %@", buf, 0x20u);
                }
              }

              v10 = v28;
LABEL_29:

              ++v20;
            }

            while (v53 != v20);
            v53 = [v52 countByEnumeratingWithState:&v56 objects:v73 count:16];
          }

          while (v53);
        }

        v14 = v48 + 1;
      }

      while (v48 + 1 != v46);
      v46 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
      if (!v46)
      {
LABEL_33:

        v5 = v41;
        version = v42;
        goto LABEL_36;
      }
    }
  }

  log = PLLogConfig();
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v68 = *&v6;
    v69 = 2112;
    v70 = v10;
    _os_log_error_impl(&dword_21A4C6000, log, OS_LOG_TYPE_ERROR, "Failed to create directory at path: %@ with error: %@", buf, 0x16u);
  }

LABEL_36:
}

+ (void)removeFilesFromPath:(id)path withMaxFiles:(int64_t)files
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:0];
  v8 = PLLogConfig();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v16 = pathCopy;
    v17 = 2048;
    v18 = [v7 count];
    v19 = 2048;
    filesCopy = files;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Remove files from path: %@ currFiles: %ld maxFiles:%ld", buf, 0x20u);
  }

  if ([v7 count] > files)
  {
    v9 = [v7 sortedArrayUsingSelector:sel_compareInt_];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__PLConfigAgent_removeFilesFromPath_withMaxFiles___block_invoke;
    v10[3] = &unk_27825B900;
    v11 = v7;
    filesCopy2 = files;
    v12 = defaultManager;
    v13 = pathCopy;
    [v9 enumerateObjectsUsingBlock:v10];
  }
}

void __50__PLConfigAgent_removeFilesFromPath_withMaxFiles___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if ([*(a1 + 32) count] - a3 == *(a1 + 56))
  {
    *a4 = 1;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) stringByAppendingPathComponent:v7];
    v14 = 0;
    v10 = [v8 removeItemAtPath:v9 error:&v14];
    v11 = v14;

    if ((v10 & 1) == 0)
    {
      v12 = PLLogConfig();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [*(a1 + 48) stringByAppendingPathComponent:v7];
        *buf = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = v11;
        _os_log_error_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_ERROR, "Failed to remove file at path: %@ with error: %@", buf, 0x16u);
      }
    }
  }
}

- (void)cleanupOldPowerlogs
{
  v3 = [(PLOperator *)self defaultLongForKey:@"MaxMajorVersionDirectories"];
  v4 = [(PLOperator *)self defaultLongForKey:@"MaxMinorVersionDirectories"];
  containerPath = [MEMORY[0x277D3F258] containerPath];
  v6 = [containerPath stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs/MajorVersion"];
  [PLConfigAgent removeFilesFromPath:v6 withMaxFiles:v3];

  containerPath2 = [MEMORY[0x277D3F258] containerPath];
  v7 = [containerPath2 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs/MinorVersion"];
  [PLConfigAgent removeFilesFromPath:v7 withMaxFiles:v4];
}

- (void)fileSizeSafeguards
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D3F258];
  containerPath = [MEMORY[0x277D3F258] containerPath];
  v5 = [containerPath stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs"];
  v6 = [v3 directorySize:v5];

  if (v6 > [(PLOperator *)self defaultLongForKey:@"MaxUpgradeFolderSize"])
  {
    v7 = PLLogConfig();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v18 = v6;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Total folder size: %ld exceeds max limit", buf, 0xCu);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    containerPath2 = [MEMORY[0x277D3F258] containerPath];
    v10 = [containerPath2 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs"];
    v16 = 0;
    v11 = [defaultManager removeItemAtPath:v10 error:&v16];
    v12 = v16;

    if ((v11 & 1) == 0)
    {
      v13 = PLLogConfig();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        containerPath3 = [MEMORY[0x277D3F258] containerPath];
        v15 = [containerPath3 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs"];
        *buf = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = v12;
        _os_log_error_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_ERROR, "Failed to remove file at path: %@ with error: %@", buf, 0x16u);
      }
    }
  }
}

- (void)maintainPreUpgradePowerlogs:(int64_t)powerlogs
{
  if ([MEMORY[0x277D3F180] liteMode])
  {
    v5 = PLLogConfig();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Maintain pre-upgrade logs", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLConfigAgent_maintainPreUpgradePowerlogs___block_invoke;
    block[3] = &unk_2782591D0;
    block[4] = self;
    if (qword_2811F42E0 != -1)
    {
      dispatch_once(&qword_2811F42E0, block);
    }

    if (qword_2811F42E8 <= powerlogs)
    {
      [(PLConfigAgent *)self copyPowerlogsForPreUpgradeOSVersion:powerlogs];
      [(PLConfigAgent *)self cleanupOldPowerlogs];
      [(PLConfigAgent *)self fileSizeSafeguards];
    }
  }
}

void *__45__PLConfigAgent_maintainPreUpgradePowerlogs___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"DefaultOSVersion"];
  qword_2811F42E8 = result;
  return result;
}

- (unint64_t)getUpgradeType
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D3F180];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PLConfigAgent_getUpgradeType__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F42F0 != -1)
  {
    dispatch_once(&qword_2811F42F0, block);
  }

  v3 = [v2 longForKey:@"LastOSVersion" ifNotSet:qword_2811F42F8];
  v4 = +[PLConfigAgent getOSVersionNumber];
  v5 = PLLogConfig();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v3 / 10000 == v4 / 10000)
  {
    if (v6)
    {
      *buf = 134218240;
      v11 = v3;
      v12 = 2048;
      v13 = v4;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Minor OS upgrade: %ld -> %ld", buf, 0x16u);
    }

    v7 = 1;
  }

  else if (v6)
  {
    *buf = 134218240;
    v11 = v3;
    v12 = 2048;
    v13 = v4;
    v7 = 2;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Major OS upgrade: %ld -> %ld", buf, 0x16u);
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

void *__31__PLConfigAgent_getUpgradeType__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"DefaultOSVersion"];
  qword_2811F42F8 = result;
  return result;
}

- (id)logAndUpdateLastBuild:(id)build
{
  v25 = *MEMORY[0x277D85DE8];
  buildCopy = build;
  v5 = [MEMORY[0x277D3F180] objectForKey:@"LastBuild" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  if (buildCopy && ([buildCopy isEqualToString:v5] & 1) == 0)
  {
    v7 = PLLogConfig();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = buildCopy;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_INFO, "Update detected - Current Build %@ -> Last Build %@", buf, 0x16u);
    }

    [MEMORY[0x277D3F180] setObject:buildCopy forKey:@"LastBuild" saveToDisk:1];
    +[PLConfigAgent resetRAPIDTaskingConfig];
    [(PLConfigAgent *)self maintainPreUpgradePowerlogs:[(PLConfigAgent *)self checkAndUpdateOSVersion:v5]];
    if (v5)
    {
      v8 = PLLogConfig();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v22 = v5;
        v23 = 2112;
        v24 = buildCopy;
        _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_INFO, "The device has been updated from build version %@ to build version %@", buf, 0x16u);
      }

      v9 = dispatch_time(0, 60000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__PLConfigAgent_logAndUpdateLastBuild___block_invoke;
      block[3] = &unk_278259658;
      v10 = v5;
      v19 = v10;
      v20 = buildCopy;
      dispatch_after(v9, MEMORY[0x277D85CD0], block);

      [MEMORY[0x277D3F180] setObject:v10 forKey:@"PreviousUpdateBuild" saveToDisk:1];
      v11 = PLLogConfig();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_INFO, "Set the previous update build to last build", buf, 2u);
      }
    }

    v12 = [MEMORY[0x277D3F180] objectForKey:@"InstallType" ifNotSet:&unk_282C10920];
    [v12 unsignedLongLongValue];

    v16 = v5;
    v17 = buildCopy;
    AnalyticsSendEventLazy();

    v6 = v16;
  }

  else
  {
    v6 = PLLogConfig();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Not an update case - logging at powerlog init", buf, 2u);
    }
  }

  v13 = [MEMORY[0x277D3F180] objectForKey:@"PreviousUpdateBuild" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  v14 = PLLogConfig();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v22 = v13;
    v23 = 2112;
    v24 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "Sending lastBuild value - prev update build %@ and last %@", buf, 0x16u);
  }

  return v13;
}

void __39__PLConfigAgent_logAndUpdateLastBuild___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", @"Upgrade", *(a1 + 32), *(a1 + 40)];
  v2 = PLGenerateBatteryUIPlist();

  if ((v2 & 1) == 0)
  {
    v3 = PLLogConfig();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_ERROR, "Failed to generate a new BUI upgrade plist", buf, 2u);
    }
  }
}

id __39__PLConfigAgent_logAndUpdateLastBuild___block_invoke_297(void *a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = v2;
  if (a1[4])
  {
    v4 = a1[4];
  }

  else
  {
    v4 = @"None";
  }

  [v2 setObject:v4 forKeyedSubscript:@"LastBuild"];
  [v3 setObject:a1[5] forKeyedSubscript:@"Build"];
  if (a1[4])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
    [v3 setObject:v5 forKeyedSubscript:@"Type"];
  }

  else
  {
    [v3 setObject:&unk_282C108D8 forKeyedSubscript:@"Type"];
  }

  return v3;
}

- (id)logAndUpdateLastUpgradeTime:(id)time
{
  v26 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v5 = [MEMORY[0x277D3F180] objectForKey:@"LastBuild" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  v6 = [MEMORY[0x277D3F180] objectForKey:@"LastUpgradeTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  v7 = [MEMORY[0x277D3F180] objectForKey:@"LastUpgradeSystemTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  if (timeCopy && ([timeCopy isEqualToString:v5] & 1) == 0)
  {
    date = [MEMORY[0x277CBEAA8] date];
    convertFromSystemToMonotonic = [date convertFromSystemToMonotonic];
    v10 = MEMORY[0x277CCABB0];
    [date timeIntervalSince1970];
    v11 = [v10 numberWithDouble:?];

    v12 = MEMORY[0x277D3F180];
    v13 = MEMORY[0x277CCABB0];
    [convertFromSystemToMonotonic timeIntervalSince1970];
    v14 = [v13 numberWithDouble:?];
    [v12 setObject:v14 forKey:@"LastUpgradeTimestamp" saveToDisk:1];

    [MEMORY[0x277D3F180] setObject:v11 forKey:@"LastUpgradeSystemTimestamp" saveToDisk:1];
    [MEMORY[0x277D3F180] setObject:v11 forKey:@"LastBGSQLUpgradeSystemTimestamp" saveToDisk:1];
    v15 = PLLogConfig();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v21 = timeCopy;
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = date;
      _os_log_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_INFO, "Update detected - Current Build %@ -> Last Build %@ and timestamp %@", buf, 0x20u);
    }

    [(PLConfigAgent *)self logToPPSBuild:timeCopy atDate:convertFromSystemToMonotonic];
    v7 = v11;
  }

  else
  {
    date = PLLogConfig();
    if (os_log_type_enabled(date, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, date, OS_LOG_TYPE_DEBUG, "Not an update case - logging upgrade timestamp at powerlog init", buf, 2u);
    }
  }

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      ADClientSetValueForScalarKey();
      v19 = v7;
      AnalyticsSendEventLazy();
    }
  }

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = v6;
  }

  else
  {
    v17 = PLLogConfig();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_INFO, "Returning lastUpgradeTimestamp as nil", buf, 2u);
    }

    v16 = 0;
  }

  return v16;
}

id __45__PLConfigAgent_logAndUpdateLastUpgradeTime___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = @"lastUpgradeSystemTimestamp";
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)logLastUpgradeSystemTimestamp
{
  v2 = [MEMORY[0x277D3F180] objectForKey:@"LastUpgradeSystemTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  v3 = MEMORY[0x277CCABB0];
  [v2 doubleValue];
  v5 = [v3 numberWithDouble:floor(v4 / 3600.0) * 3600.0];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
  }

  else
  {
    v7 = PLLogConfig();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_INFO, "Returning lastUpgradeSystemTimestamp as nil", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (unint64_t)logInstallType:(id)type
{
  if (type)
  {
    return [(PLConfigAgent *)self getUpgradeType];
  }

  else
  {
    return 0;
  }
}

- (void)logToPPSBuild:(id)build atDate:(id)date
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"build";
  v12[0] = build;
  v6 = MEMORY[0x277CBEAC0];
  dateCopy = date;
  buildCopy = build;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = [MEMORY[0x277CBEAA8] nearestMidnightBeforeDate:dateCopy];

  [(PLOperator *)self logForSubsystem:@"PPTStorageOperator" category:@"Config" data:v9 date:v10];
}

- (double)logDeviceDiskSize
{
  v2 = MGCopyAnswer();
  v3 = [v2 objectForKey:*MEMORY[0x277D823C8]];
  [v3 doubleValue];
  v5 = (v4 / 1000000000.0);

  return v5;
}

- (id)logLastBackupTime
{
  v2 = [MEMORY[0x277D3F180] objectForKey:@"LastBackupTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = MEMORY[0x277CBEAA8];
    [v2 doubleValue];
    v4 = [v3 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)logIcloudAccountType
{
  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  aa_lastKnownQuota = [aa_primaryAppleAccount aa_lastKnownQuota];
  v5 = aa_lastKnownQuota;
  if (aa_lastKnownQuota)
  {
    v6 = [MEMORY[0x277CCA8E8] stringFromByteCount:objc_msgSend(aa_lastKnownQuota countStyle:{"longLongValue"), 3}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)seedGroup
{
  mEMORY[0x277D3F180] = [MEMORY[0x277D3F180] sharedDefaults];
  v3 = [mEMORY[0x277D3F180] managedPrefsObjectForKey:@"SeedGroup" forApplicationID:@".GlobalPreferences" synchronize:1];

  return v3;
}

- (id)deviceShutdownReasons
{
  v2 = IOServiceMatching("IOService");
  if (!v2)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_20;
  }

  v3 = v2;
  valuePtr = 0;
  v4 = *MEMORY[0x277CBECE8];
  cf = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  v5 = CFDictionaryCreate(v4, &deviceShutdownReasons_tmp, &cf, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v5)
  {
    CFRelease(v3);
    if (deviceShutdownReasons_tmp)
    {
      CFRelease(deviceShutdownReasons_tmp);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_9;
  }

  v6 = v5;
  CFDictionarySetValue(v3, @"IOPropertyMatch", v5);
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v3);
  if (MatchingService)
  {
    v8 = MatchingService;
    v9 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:MatchingService];
    IOObjectRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v6);
  if (deviceShutdownReasons_tmp)
  {
    CFRelease(deviceShutdownReasons_tmp);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:@"IOPMUBootErrorFaults"];

    if (v10)
    {
      v11 = [v9 objectForKeyedSubscript:@"IOPMUBootErrorFaults"];
      v12 = [v11 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

      v10 = [v12 componentsJoinedByString:{@", "}];
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_20:

  return v10;
}

- (BOOL)getMDMStatus
{
  mEMORY[0x277D26298] = [MEMORY[0x277D26298] sharedConnection];
  installedMDMProfileIdentifier = [mEMORY[0x277D26298] installedMDMProfileIdentifier];
  v4 = installedMDMProfileIdentifier != 0;

  return v4;
}

- (id)getSplatVersionString
{
  if (qword_2811F4308 != -1)
  {
    dispatch_once(&qword_2811F4308, &__block_literal_global_349);
  }

  v3 = qword_2811F4300;

  return v3;
}

uint64_t __38__PLConfigAgent_getSplatVersionString__block_invoke()
{
  v0 = CFCopySystemVersionString();
  qword_2811F4300 = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (id)deviceName
{
  if ([MEMORY[0x277D3F180] fullMode])
  {
    getUserAssignedDeviceName = [MEMORY[0x277D3F1B8] getUserAssignedDeviceName];
  }

  else
  {
    getUserAssignedDeviceName = 0;
  }

  return getUserAssignedDeviceName;
}

- (int)getOSVariant
{
  if (os_variant_has_internal_diagnostics())
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  if (os_variant_has_internal_content())
  {
    v2 |= 4u;
  }

  if (os_variant_has_internal_ui())
  {
    return v2 | 8;
  }

  else
  {
    return v2;
  }
}

- (id)baseband
{
  v2 = MEMORY[0x277CCABB0];
  kPLBasebandClassOfDevice = [MEMORY[0x277D3F208] kPLBasebandClassOfDevice];

  return [v2 numberWithInt:kPLBasebandClassOfDevice];
}

- (id)getCoverGlass
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)hasEmbeddedSIM
{
  v2 = MGCopyAnswer();

  return v2;
}

- (int)getPerfLevelsCount
{
  v6 = 0;
  v5 = 4;
  if (!sysctlbyname("hw.nperflevels", &v6, &v5, 0, 0))
  {
    return v6;
  }

  v2 = PLLogConfig();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_ERROR, "Unable to retrieve hw.nperflevels", v4, 2u);
  }

  return 0;
}

- (int)getCoreCount:(int)count
{
  v11 = *MEMORY[0x277D85DE8];
  if (count)
  {
    v4 = "hw.perflevel1.physicalcpu";
  }

  else
  {
    v4 = "hw.perflevel0.physicalcpu";
  }

  v8 = 0;
  v7 = 4;
  if (!sysctlbyname(v4, &v8, &v7, 0, 0))
  {
    return v8;
  }

  v5 = PLLogConfig();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    countCopy = count;
    _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "Unable to retrieve hw.perflevel%d.physicalcpu", buf, 8u);
  }

  return 0;
}

- (id)getShutdownBootReason:(BOOL)reason
{
  v13 = *MEMORY[0x277D85DE8];
  if (reason)
  {
    v3 = "kern.shutdownreason";
  }

  else
  {
    v3 = "kern.bootreason";
  }

  v10 = 0;
  sysctlbyname(v3, 0, &v10, 0, 0);
  if (v10)
  {
    v4 = &v9 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v4, v10);
    if (sysctlbyname(v3, v4, &v10, 0, 0))
    {
      v5 = PLLogConfig();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
        *buf = 138412290;
        v12 = v8;
        _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "Unable to retrieve %@", buf, 0xCu);
      }

      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)hwConfig
{
  if (hwConfig_onceToken != -1)
  {
    dispatch_once(&hwConfig_onceToken, &__block_literal_global_366);
  }

  v3 = hwConfig___config;

  return v3;
}

void __25__PLConfigAgent_hwConfig__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      v3 = CFGetTypeID(v1);
      if (v3 == CFDataGetTypeID())
      {
        BytePtr = CFDataGetBytePtr(v1);
        Length = CFDataGetLength(v1);
        v6 = malloc_type_malloc(Length + 1, 0x1FCA0D5FuLL);
        bzero(v6, Length + 1);
        memcpy(v6, BytePtr, Length);
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
        free(v6);
      }

      else
      {
        v7 = 0;
      }

      v8 = hwConfig___config;
      hwConfig___config = v7;
    }
  }
}

- (id)hwBoardRevision
{
  if (hwBoardRevision_onceToken != -1)
  {
    dispatch_once(&hwBoardRevision_onceToken, &__block_literal_global_368);
  }

  v3 = hwBoardRevision___revision;

  return v3;
}

void __32__PLConfigAgent_hwBoardRevision__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      v3 = CFGetTypeID(v1);
      if (v3 == CFDataGetTypeID())
      {
        BytePtr = CFDataGetBytePtr(v1);
        Length = CFDataGetLength(v1);
        v6 = malloc_type_malloc(2 * Length + 3, 0x973E0A97uLL);
        bzero(v6, 2 * Length + 3);
        strcpy(v6, "0x");
        if (Length >= 1)
        {
          v7 = 2;
          do
          {
            v8 = *BytePtr++;
            v7 += snprintf(v6 + v7, 3uLL, "%02x", v8);
            --Length;
          }

          while (Length);
        }

        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
        free(v6);
      }

      else
      {
        v9 = 0;
      }

      v10 = hwBoardRevision___revision;
      hwBoardRevision___revision = v9;
    }
  }
}

- (id)getDeviceSerialNumber
{
  v2 = MEMORY[0x277D3F1C8];
  iokitExpertDevice = [(PLConfigAgent *)self iokitExpertDevice];
  v4 = [v2 snapshotFromIOEntry:objc_msgSend(iokitExpertDevice forKey:{"service"), @"IOPlatformSerialNumber"}];

  return v4;
}

- (void)initOperatorDependancies
{
  v49[2] = *MEMORY[0x277D85DE8];
  v3 = PLLogConfig();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(location[0]) = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Telemetry on system & userspace reboots events for BGSQL", location, 2u);
  }

  [(PLConfigAgent *)self logUserspaceReboot];
  [(PLConfigAgent *)self logSystemReboot];
  v4 = objc_alloc(MEMORY[0x277D3F160]);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke;
  v47[3] = &unk_2782597E8;
  v47[4] = self;
  v5 = [v4 initWithOperator:self forNotification:@"com.apple.sysdiagnose.sysdiagnoseStarted" requireState:0 withBlock:v47];
  sysdiagnoseStartListener = self->_sysdiagnoseStartListener;
  self->_sysdiagnoseStartListener = v5;

  v7 = objc_alloc(MEMORY[0x277D3F160]);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_374;
  v46[3] = &unk_2782597E8;
  v46[4] = self;
  v8 = [v7 initWithOperator:self forNotification:@"com.apple.sysdiagnose.sysdiagnoseStopped" requireState:0 withBlock:v46];
  sysdiagnoseStopListener = self->_sysdiagnoseStopListener;
  self->_sysdiagnoseStopListener = v8;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_pairStatusDidChange_ name:*MEMORY[0x277D2BC68] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_pairStatusDidChange_ name:*MEMORY[0x277D2BC78] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_pairStatusDidChange_ name:*MEMORY[0x277D2BC90] object:0];

  v13 = objc_alloc(MEMORY[0x277D3F160]);
  workQueue = [(PLOperator *)self workQueue];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_381;
  v45[3] = &unk_2782597E8;
  v45[4] = self;
  v15 = [v13 initWithWorkQueue:workQueue forNotification:@"com.apple.system.console_mode_changed" requireState:1 withBlock:v45];
  [(PLConfigAgent *)self setConsoleModeListener:v15];

  v16 = objc_alloc(MEMORY[0x277D3F160]);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_385;
  v44[3] = &unk_2782597E8;
  v44[4] = self;
  v17 = [v16 initWithOperator:self forNotification:@"com.apple.keyboard.preferences.haptic-feedback.changed" requireState:0 withBlock:v44];
  notificationKeyboardHaptics = self->_notificationKeyboardHaptics;
  self->_notificationKeyboardHaptics = v17;

  v19 = objc_alloc(MEMORY[0x277D3F160]);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_389;
  v43[3] = &unk_2782597E8;
  v43[4] = self;
  v20 = [v19 initWithOperator:self forNotification:@"com.apple.preferences.sounds.keyboard-audio.changed" requireState:0 withBlock:v43];
  notificationKeyboardClicks = self->_notificationKeyboardClicks;
  self->_notificationKeyboardClicks = v20;

  _ringerStateNotifyToken = -1;
  objc_initWeak(location, self);
  v22 = MEMORY[0x277D85CD0];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_391;
  handler[3] = &unk_278259630;
  objc_copyWeak(&v41, location);
  notify_register_dispatch("com.apple.springboard.ringerstate", &_ringerStateNotifyToken, MEMORY[0x277D85CD0], handler);

  if (_ringerStateNotifyToken != -1)
  {
    [(PLConfigAgent *)self logEventForwardRingerState];
  }

  v23 = objc_alloc(MEMORY[0x277D3F270]);
  v48[0] = @"clientID";
  v48[1] = @"event";
  v49[0] = &unk_282C10938;
  v49[1] = @"ContinuityCamera";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_402;
  v39[3] = &unk_27825A1D8;
  v39[4] = self;
  v25 = [v23 initWithOperator:self withRegistration:v24 withBlock:v39];
  continuityCameraNotification = self->_continuityCameraNotification;
  self->_continuityCameraNotification = v25;

  v27 = objc_alloc(MEMORY[0x277D3F270]);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_410;
  v38[3] = &unk_27825A1D8;
  v38[4] = self;
  v28 = [v27 initWithOperator:self withRegistration:&unk_282C17568 withBlock:v38];
  ambientModeListener = self->_ambientModeListener;
  self->_ambientModeListener = v28;

  v30 = objc_alloc(MEMORY[0x277D3F270]);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_420;
  v37[3] = &unk_27825A1D8;
  v37[4] = self;
  v31 = [v30 initWithOperator:self withRegistration:&unk_282C17590 withBlock:v37];
  buddyDataListener = self->_buddyDataListener;
  self->_buddyDataListener = v31;

  if ([MEMORY[0x277D3F258] deviceRebooted] && objc_msgSend(MEMORY[0x277D3F208], "internalBuild"))
  {
    v33 = PLLogConfig();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *v36 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "Device rebooted, spinning up PPSFeatureFlagReaderHelper", v36, 2u);
    }

    v34 = objc_alloc_init(PPSFeatureFlagReaderHelper);
    getFeatureFlags = [(PPSFeatureFlagReaderHelper *)v34 getFeatureFlags];
    [(PLConfigAgent *)self logEventPointFeatureFlags:getFeatureFlags];
  }

  objc_destroyWeak(&v41);
  objc_destroyWeak(location);
}

uint64_t __41__PLConfigAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v2 = PLLogConfig();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Sysdiagnose started", v4, 2u);
  }

  return [*(a1 + 32) logEventForwardSysdiagnoseEvent:1];
}

uint64_t __41__PLConfigAgent_initOperatorDependancies__block_invoke_374(uint64_t a1)
{
  v2 = PLLogConfig();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Sysdiagnose stopped", v4, 2u);
  }

  return [*(a1 + 32) logEventForwardSysdiagnoseEvent:0];
}

uint64_t __41__PLConfigAgent_initOperatorDependancies__block_invoke_381(uint64_t a1)
{
  v2 = PLLogConfig();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Console Mode changed", v4, 2u);
  }

  return [*(a1 + 32) logEventForwardConsoleMode];
}

void __41__PLConfigAgent_initOperatorDependancies__block_invoke_385(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogConfig();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Keyboard Haptics Changed: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardKeyboardHaptics];
}

void __41__PLConfigAgent_initOperatorDependancies__block_invoke_389(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogConfig();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Keyboard Clicks Changed: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardKeyboardClicks];
}

void __41__PLConfigAgent_initOperatorDependancies__block_invoke_391(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained logEventForwardRingerState];
}

void __41__PLConfigAgent_initOperatorDependancies__block_invoke_402(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogConfig();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Continuity Camera payload: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventForwardContinuityCamera:v6];
}

void __41__PLConfigAgent_initOperatorDependancies__block_invoke_410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogConfig();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AmbientModeEnabled Changed: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventForwardAmbientModeEnabled:v6];
}

void __41__PLConfigAgent_initOperatorDependancies__block_invoke_420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogConfig();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ConfigMetrics BuddyData payload: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventNoneBuddyData:v6];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D2BC68] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D2BC78] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x277D2BC90] object:0];

  v6.receiver = self;
  v6.super_class = PLConfigAgent;
  [(PLAgent *)&v6 dealloc];
}

- (void)log
{
  [(PLConfigAgent *)self logEventNoneConfig];
  [(PLConfigAgent *)self logEventNonePairedDeviceConfig];
  [(PLConfigAgent *)self logEventForwardKeyboardHaptics];
  [(PLConfigAgent *)self logEventForwardKeyboardClicks];
  [(PLConfigAgent *)self logEventForwardRingerState];
  [(PLConfigAgent *)self logEventForwardConsoleMode];
  [(PLConfigAgent *)self logDeviceCapability];

  [(PLConfigAgent *)self logCPUCoreConfig];
}

- (void)logEventPointFeatureFlags:(id)flags
{
  v49 = *MEMORY[0x277D85DE8];
  flagsCopy = flags;
  v5 = [(PLOperator *)PLConfigAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"FeatureFlags"];
  deviceBootTime = [MEMORY[0x277D3F258] deviceBootTime];
  v7 = objc_opt_new();
  v8 = PLLogConfig();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v48 = flagsCopy;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "PPSFeatureFlagReader currFeatureFlags set : %@", buf, 0xCu);
  }

  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withDate:deviceBootTime];
  if ([flagsCopy count])
  {
    v31 = v9;
    v32 = v7;
    selfCopy = self;
    v27 = deviceBootTime;
    v28 = v5;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = flagsCopy;
    v33 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    v10 = 0;
    if (v33)
    {
      v30 = *v35;
      do
      {
        v11 = 0;
        v12 = v10;
        do
        {
          if (*v35 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v34 + 1) + 8 * v11);
          v42[0] = @"Domain";
          v14 = [v13 objectForKeyedSubscript:@"Domain"];
          v43[0] = v14;
          v42[1] = @"FeatureName";
          v15 = [v13 objectForKeyedSubscript:@"FeatureName"];
          v43[1] = v15;
          v42[2] = @"TargetRelease";
          v16 = [v13 objectForKeyedSubscript:@"TargetRelease"];
          v43[2] = v16;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];

          v17 = [v13 objectForKeyedSubscript:@"State"];
          [v31 setObject:v17 forKeyedSubscript:v10];

          v40[0] = @"Domain";
          v18 = [v13 objectForKeyedSubscript:@"Domain"];
          v41[0] = v18;
          v40[1] = @"FeatureName";
          v19 = [v13 objectForKeyedSubscript:@"FeatureName"];
          v41[1] = v19;
          v40[2] = @"TargetRelease";
          v20 = [v13 objectForKeyedSubscript:@"TargetRelease"];
          v41[2] = v20;
          v40[3] = @"State";
          v21 = [v13 objectForKeyedSubscript:@"State"];
          v41[3] = v21;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];
          [v32 addObject:v22];

          ++v11;
          v12 = v10;
        }

        while (v33 != v11);
        v33 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v33);
    }

    self = selfCopy;
    v9 = v31;
    [(PLOperator *)selfCopy logEntry:v31];
    v7 = v32;
    v38 = @"__PPSKVPairs__";
    v39 = v32;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v5 = v28;
    deviceBootTime = v27;
  }

  else
  {
    v24 = PLLogConfig();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "PPSFeatureFlagReader currFeatureFlags set is empty, all Feature Flags are in Default State", buf, 2u);
    }

    v10 = &unk_282C175B8;
    [v9 setObject:&unk_282C10980 forKeyedSubscript:&unk_282C175B8];
    [(PLOperator *)self logEntry:v9];
    [v7 addObject:&unk_282C175E0];
    v45 = @"__PPSKVPairs__";
    v46 = v7;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  }

  entryDate = [v9 entryDate];
  [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"FeatureFlag" data:v23 date:entryDate];
}

- (void)logEventForwardSysdiagnoseEvent:(BOOL)event
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = @"Start";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v15[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  [(PLOperator *)self logForSubsystem:@"ConfigMetrics" category:@"SysdiagnoseEvent" data:v6];
  if (!event)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v9 = v8;

    v12[0] = @"TaskEndTime";
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v12[1] = @"Reason";
    v13[0] = v10;
    v13[1] = &unk_282C108F0;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

    [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"TimeOfCaptureEvent" data:v11];
  }
}

- (void)logEventForwardKeyboardHaptics
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLConfigAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"KeyboardHaptics"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  v5 = [MEMORY[0x277D3F180] objectForKey:@"KeyboardVisceral" forApplicationID:@"com.apple.keyboard.preferences" synchronize:1];
  v6 = v5;
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v8 = PLLogConfig();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 67109120;
    v10[1] = bOOLValue;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Keyboard Haptics state: %d", v10, 8u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
  [v4 setObject:v9 forKeyedSubscript:@"Enabled"];

  [(PLOperator *)self logEntry:v4];
}

- (void)logEventForwardKeyboardClicks
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLConfigAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"KeyboardClicks"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  bOOLValue = 1;
  v6 = [MEMORY[0x277D3F180] objectForKey:@"keyboard-audio" forApplicationID:@"com.apple.preferences.sounds" synchronize:1];
  v7 = v6;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  v8 = PLLogConfig();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 67109120;
    v10[1] = bOOLValue;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Keyboard Clicks state: %d", v10, 8u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
  [v4 setObject:v9 forKeyedSubscript:@"Enabled"];

  [(PLOperator *)self logEntry:v4];
}

- (void)logEventForwardRingerState
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = PLLogConfig();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v11[0]) = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Ringer State changed", v11, 2u);
  }

  v4 = _ringerStateNotifyToken;
  if (_ringerStateNotifyToken == -1)
  {
    v5 = PLLogConfig();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v11[0]) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Ringer NOTIFY_TOKEN_INVALID", v11, 2u);
    }

    v4 = _ringerStateNotifyToken;
  }

  v11[0] = 0;
  notify_get_state(v4, v11);
  v6 = v11[0];
  v7 = PLLogConfig();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v13 = v6 != 0;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Ringer state: %d", buf, 8u);
  }

  v8 = [(PLOperator *)PLConfigAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Ringer"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v6 != 0];
  [v9 setObject:v10 forKeyedSubscript:@"Enabled"];

  [(PLOperator *)self logEntry:v9];
}

- (void)logEventForwardAmbientModeEnabled:(id)enabled
{
  v4 = *MEMORY[0x277D3F5D0];
  enabledCopy = enabled;
  v7 = [(PLOperator *)PLConfigAgent entryKeyForType:v4 andName:@"AmbientModeEnabled"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:enabledCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardContinuityCamera:(id)camera
{
  cameraCopy = camera;
  v6 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ContinuityCamera"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withRawData:cameraCopy];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventNoneBuddyData:(id)data
{
  dataCopy = data;
  [(PLOperator *)self logForSubsystem:@"ConfigMetrics" category:@"BuddyData" data:dataCopy];
  [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"BuddyData" data:dataCopy];

  v5 = objc_msgSend_storage(self);
  [v5 flushCachesWithReason:@"BuddyData"];
}

- (void)logEventForwardConsoleMode
{
  v14 = *MEMORY[0x277D85DE8];
  state64 = 0;
  consoleModeListener = [(PLConfigAgent *)self consoleModeListener];
  state = notify_get_state([consoleModeListener stateToken], &state64);

  if (state)
  {
    v5 = PLLogConfig();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Console Mode state Unavailable", buf, 2u);
    }
  }

  else
  {
    v6 = state64;
    v7 = PLLogConfig();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v13 = v6 != 0;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Console Mode state: %d", buf, 8u);
    }

    v10 = @"Enabled";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v6 != 0];
    v11 = v8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];

    [(PLOperator *)self logForSubsystem:@"ConfigMetrics" category:@"ConsoleModeEnabled" data:v5];
  }
}

- (void)logUserspaceReboot
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v18 = 0;
  v17 = 4;
  v4 = sysctlbyname("kern.userspacerebootpurpose", &v18, &v17, 0, 0);
  v5 = PLLogConfig();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = *__error();
      *buf = 67109120;
      LODWORD(v20) = v13;
      _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "Unable to get kern.userspacerebootpurpose: %{errno}d", buf, 8u);
    }

    [v3 setObject:&unk_282C10998 forKeyedSubscript:@"Reason"];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v20) = v18;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Reboot Purpose kern.userspacerebootpurpose value: %u", buf, 8u);
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
    [v3 setObject:v7 forKeyedSubscript:@"Reason"];
  }

  v16 = 0;
  date = [MEMORY[0x277CBEAA8] date];
  v15 = 8;
  v9 = sysctlbyname("kern.userspacereboottime", &v16, &v15, 0, 0);
  v10 = PLLogConfig();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 67109120;
      LODWORD(v20) = v14;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "Unable to get kern.userspacereboottime: %{errno}d", buf, 8u);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v20 = v16;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "RebootEvents kern.userspacereboottime value: %llu", buf, 0xCu);
    }

    [v3 setObject:&unk_282C10980 forKeyedSubscript:@"Event"];
    if (v16)
    {
      v12 = [MEMORY[0x277D3F258] dateFromnSecEpoch:?];

      [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"RebootEvents" data:v3 date:v12];
      date = v12;
    }
  }
}

- (void)logSystemReboot
{
  v28[2] = *MEMORY[0x277D85DE8];
  v22 = 8;
  v23 = 0.0;
  v3 = sysctlbyname("kern.shutdowntime", &v23, &v22, 0, 0);
  v4 = PLLogConfig();
  date = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v25 = v23;
      _os_log_debug_impl(&dword_21A4C6000, date, OS_LOG_TYPE_DEBUG, "RebootEvents kern.shutdowntime value: %llu", buf, 0xCu);
    }

    date = [MEMORY[0x277CBEAA8] date];
    v7 = sysctlbyname("kern.monotonicclock_usecs", v28, &v22, 0, 0);
    v8 = PLLogConfig();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *__error();
        *buf = 67109120;
        LODWORD(v25) = v10;
        v11 = "Unable to get kern.monotonicclock_usecs: %{errno}d";
        v12 = v9;
        v13 = 8;
LABEL_21:
        _os_log_error_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
        goto LABEL_44;
      }

      goto LABEL_44;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v25 = *v28;
      v26 = 2048;
      v27 = v28[1];
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "RebootEvents kern.monotonicclock_usecs values: %llu, %llu", buf, 0x16u);
    }

    if (v23 == 0.0 || (v14 = v28[0]) == 0)
    {
      v9 = PLLogConfig();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v11 = "kern.shutdowntime & kern.monotonicclock_usecs must both be non-zero";
        v12 = v9;
        v13 = 2;
        goto LABEL_21;
      }

LABEL_44:

      goto LABEL_45;
    }

    v9 = objc_opt_new();
    [v9 setObject:&unk_282C108F0 forKeyedSubscript:@"Event"];
    v15 = (v14 - *&v23) / 1000000.0;
    v16 = PLLogConfig();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v25 = v15;
      _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "Elapsed PMU RTC ticks in USecs since shutdown: %f", buf, 0xCu);
    }

    v17 = [date dateByAddingTimeInterval:-v15];
    convertFromSystemToMonotonic = [v17 convertFromSystemToMonotonic];

    [(PLConfigAgent *)self getShutdownBootReason:1];
    v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v20 = PLLogConfig();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v25 = v19;
      _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "Shutdown Reason: %@", buf, 0xCu);
    }

    [v9 setObject:&unk_282C10998 forKeyedSubscript:@"Reason"];
    if ([*&v19 containsString:@"unknown"])
    {
      v21 = &unk_282C109B0;
    }

    else if ([*&v19 containsString:@"smc_thermal_critical"])
    {
      v21 = &unk_282C109C8;
    }

    else if ([*&v19 containsString:@"smc_dark_wake_thermal_critical"])
    {
      v21 = &unk_282C109E0;
    }

    else if ([*&v19 containsString:@"smc_remote_mgmt"])
    {
      v21 = &unk_282C109F8;
    }

    else if ([*&v19 containsString:@"ap_shutdown"])
    {
      v21 = &unk_282C10A10;
    }

    else if ([*&v19 containsString:@"ap_panic"])
    {
      v21 = &unk_282C10A28;
    }

    else if ([*&v19 containsString:@"ap_restart"])
    {
      v21 = &unk_282C10A40;
    }

    else if ([*&v19 containsString:@"ap_wdt_expiry"])
    {
      v21 = &unk_282C10A58;
    }

    else if ([*&v19 containsString:@"ap_sys_reset"])
    {
      v21 = &unk_282C10A70;
    }

    else if ([*&v19 containsString:@"ap_hibernate"])
    {
      v21 = &unk_282C10A88;
    }

    else
    {
      if (![*&v19 containsString:@"ap_virtual_slp_ll"])
      {
LABEL_43:
        [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"RebootEvents" data:v9 date:convertFromSystemToMonotonic];

        goto LABEL_44;
      }

      v21 = &unk_282C10AA0;
    }

    [v9 setObject:v21 forKeyedSubscript:@"Reason"];
    goto LABEL_43;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *__error();
    *buf = 67109120;
    LODWORD(v25) = v6;
    _os_log_error_impl(&dword_21A4C6000, date, OS_LOG_TYPE_ERROR, "Unable to get kern.shutdowntime: %{errno}d", buf, 8u);
  }

LABEL_45:
}

- (void)logDeviceCapability
{
  v3 = objc_opt_new();
  deviceCapabilityMapping = [MEMORY[0x277D3F288] deviceCapabilityMapping];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__PLConfigAgent_logDeviceCapability__block_invoke;
  v6[3] = &unk_27825B950;
  v7 = v3;
  v5 = v3;
  [deviceCapabilityMapping enumerateObjectsUsingBlock:v6];
  [(PLOperator *)self logForSubsystem:@"ConfigMetrics" category:@"DeviceCapability" data:v5];
}

void __36__PLConfigAgent_logDeviceCapability__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v8 = [v5 numberWithInteger:a3];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Capability%@", v8];
  [*(a1 + 32) setObject:v6 forKey:v7];
}

- (void)logCPUCoreConfig
{
  v10 = objc_opt_new();
  getPerfLevelsCount = [(PLConfigAgent *)self getPerfLevelsCount];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:getPerfLevelsCount];
  [v10 setObject:v4 forKeyedSubscript:@"numCoreTypes"];

  if (getPerfLevelsCount >= 1)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        v6 = @"numEcpuCores";
      }

      else
      {
        v6 = @"numPcpuCores";
      }

      v7 = MEMORY[0x277CCABB0];
      v8 = v6;
      v9 = [v7 numberWithInt:{-[PLConfigAgent getCoreCount:](self, "getCoreCount:", v5)}];
      [v10 setObject:v9 forKeyedSubscript:v8];

      v5 = (v5 + 1);
    }

    while (getPerfLevelsCount != v5);
  }

  [(PLOperator *)self logForSubsystem:@"ConfigMetrics" category:@"CPUCoreConfig" data:v10];
}

- (void)logConfigToBGSQL:(id)l
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [MEMORY[0x277D3F180] objectForKey:@"LastBGSQLUpgradeSystemTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  v6 = MEMORY[0x277CCABB0];
  v7 = [lCopy objectForKeyedSubscript:@"DeviceBootTime"];
  convertFromMonotonicToSystem = [v7 convertFromMonotonicToSystem];
  [convertFromMonotonicToSystem timeIntervalSince1970];
  v9 = [v6 numberWithDouble:?];

  v10 = PLLogConfig();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v13 = v12;
    [v9 doubleValue];
    if (v13 < v14)
    {
      v14 = v13;
    }

    v15 = [v11 numberWithDouble:v14];
    v25 = 138412802;
    v26 = v5;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v15;
    _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEFAULT, "Config - Device upgrade timestamp is %@ and system boot time is %@ and @(MIN([lastUpgradeSystemTimestamp doubleValue], [systemBootTimestamp doubleValue])) is %@", &v25, 0x20u);
  }

  v16 = MEMORY[0x277CCABB0];
  [v5 doubleValue];
  v18 = v17;
  [v9 doubleValue];
  if (v18 < v19)
  {
    v19 = v18;
  }

  v20 = [v16 numberWithDouble:v19];
  [lCopy setObject:v20 forKeyedSubscript:@"LastUpgradeSystemTimestamp"];

  v21 = MEMORY[0x277D3F180];
  v22 = [lCopy objectForKeyedSubscript:@"LastUpgradeSystemTimestamp"];
  [v21 setObject:v22 forKey:@"LastBGSQLUpgradeSystemTimestamp" saveToDisk:1];

  dictionary = [lCopy dictionary];
  entryDate = [lCopy entryDate];
  [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"Config" data:dictionary date:entryDate];
}

- (void)logConfigEntry:(id)entry
{
  entryCopy = entry;
  v5 = objc_opt_new();
  dictionary = [entryCopy dictionary];

  getCoverGlass = [(PLConfigAgent *)self getCoverGlass];
  [dictionary setObject:getCoverGlass forKeyedSubscript:@"DeviceCoverGlassCoating"];

  hasEmbeddedSIM = [(PLConfigAgent *)self hasEmbeddedSIM];
  [dictionary setObject:hasEmbeddedSIM forKeyedSubscript:@"HasEmbeddedSIM"];

  v8 = [(PLConfigAgent *)self getShutdownBootReason:1];
  [dictionary setObject:v8 forKeyedSubscript:@"ShutdownReason"];

  v9 = [(PLConfigAgent *)self getShutdownBootReason:0];
  [dictionary setObject:v9 forKeyedSubscript:@"BootReason"];

  entryDate = [entryCopy entryDate];

  [(PLOperator *)self logForSubsystem:@"ConfigMetrics" category:@"DeviceConfig" data:dictionary date:entryDate];
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v11 = MEMORY[0x277CBEB38];
    v12 = [dictionary objectForKeyedSubscript:@"DeviceSerialNumber"];
    v13 = [v11 dictionaryWithObject:v12 forKey:@"DeviceSerialNumber"];

    [(PLOperator *)self logForSubsystem:@"XcodeMetrics" category:@"DeviceConfig" data:v13];
    v14 = v13;
  }

  else
  {
    v14 = dictionary;
  }

  v16 = v14;
  [(PLConfigAgent *)self logConfigEntryToCA:v14];
}

- (void)logEventNoneConfig
{
  v3 = [(PLOperator *)PLConfigAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"Config"];
  v4 = objc_alloc(MEMORY[0x277D3F190]);
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  launchDate = [mEMORY[0x277D3F2A0] launchDate];
  v7 = [v4 initWithEntryKey:v3 withDate:launchDate];

  buildVersion = [MEMORY[0x277D3F258] buildVersion];
  [v7 setObject:buildVersion forKeyedSubscript:@"Build"];

  supplementalBuildVersion = [MEMORY[0x277D3F258] supplementalBuildVersion];
  [v7 setObject:supplementalBuildVersion forKeyedSubscript:@"SupplementalBuild"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F208], "internalBuild") ^ 1}];
  [v7 setObject:v10 forKeyedSubscript:@"CustomerOS"];

  getHardwareModel = [MEMORY[0x277D3F1B8] getHardwareModel];
  [v7 setObject:getHardwareModel forKeyedSubscript:@"Device"];

  crashReporterKey = [MEMORY[0x277D3F258] crashReporterKey];
  [v7 setObject:crashReporterKey forKeyedSubscript:@"CRKey"];

  if ([MEMORY[0x277D3F208] internalBuild])
  {
    crashReporterKey2 = [MEMORY[0x277D3F258] crashReporterKey];
    [v7 setObject:crashReporterKey2 forKeyedSubscript:@"CRKey2"];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLConfigAgent rootInstalled](self, "rootInstalled")}];
    [v7 setObject:v14 forKeyedSubscript:@"RootInstalled"];

    mobileUserADG = [MEMORY[0x277D3F258] mobileUserADG];
    [v7 setObject:mobileUserADG forKeyedSubscript:@"ADGOnly"];

    experimentGroup = [MEMORY[0x277D3F258] experimentGroup];
    [v7 setObject:experimentGroup forKeyedSubscript:@"ExperimentGroup"];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F258], "hasInternalKey")}];
    [v7 setObject:v17 forKeyedSubscript:@"HasInternalKey"];
  }

  deviceName = [(PLConfigAgent *)self deviceName];
  [v7 setObject:deviceName forKeyedSubscript:@"DeviceName"];

  deviceBootArgs = [MEMORY[0x277D3F258] deviceBootArgs];
  [v7 setObject:deviceBootArgs forKeyedSubscript:@"BootArgs"];

  deviceBootTime = [MEMORY[0x277D3F258] deviceBootTime];
  [v7 setObject:deviceBootTime forKeyedSubscript:@"DeviceBootTime"];

  v21 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLConfigAgent getDeviceType](self, "getDeviceType")}];
  [v7 setObject:v21 forKeyedSubscript:@"DeviceType"];

  v22 = [v7 objectForKeyedSubscript:@"Build"];
  v23 = [(PLConfigAgent *)self logAndUpdateLastUpgradeTime:v22];
  [v7 setObject:v23 forKeyedSubscript:@"LastUpgradeTimestamp"];

  v24 = [v7 objectForKeyedSubscript:@"Build"];
  v25 = [(PLConfigAgent *)self logAndUpdateLastBuild:v24];
  [v7 setObject:v25 forKeyedSubscript:@"LastBuild"];

  v26 = MEMORY[0x277CCABB0];
  [MEMORY[0x277D3F258] getMachbaseTimeRatio];
  v27 = [v26 numberWithDouble:?];
  [v7 setObject:v27 forKeyedSubscript:@"MachTimeBaseRatio"];

  v28 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PLConfigAgent autolockTime](self, "autolockTime")}];
  [v7 setObject:v28 forKeyedSubscript:@"AutoLockTime"];

  baseband = [(PLConfigAgent *)self baseband];
  [v7 setObject:baseband forKeyedSubscript:@"Baseband"];

  getBasebandFirmwareVersion = [MEMORY[0x277D3F1B8] getBasebandFirmwareVersion];
  [v7 setObject:getBasebandFirmwareVersion forKeyedSubscript:@"BasebandFirmware"];

  v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLConfigAgent noWatchdogs](self, "noWatchdogs")}];
  [v7 setObject:v31 forKeyedSubscript:@"BKNoWatchdogs"];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLConfigAgent disableCABlanking](self, "disableCABlanking")}];
  [v7 setObject:v32 forKeyedSubscript:@"SBDisableCABlanking"];

  automatedDeviceGroup = [MEMORY[0x277D3F258] automatedDeviceGroup];
  [v7 setObject:automatedDeviceGroup forKeyedSubscript:@"AutomatedDeviceGroup"];

  seedGroup = [(PLConfigAgent *)self seedGroup];
  [v7 setObject:seedGroup forKeyedSubscript:@"SeedGroup"];

  if ([MEMORY[0x277D3F208] internalBuild])
  {
    hwConfig = [(PLConfigAgent *)self hwConfig];
    [v7 setObject:hwConfig forKeyedSubscript:@"ConfigNumber"];

    hwBoardRevision = [(PLConfigAgent *)self hwBoardRevision];
    [v7 setObject:hwBoardRevision forKeyedSubscript:@"DebugBoardRevision"];

    v37 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F1B8], "isDevBoard")}];
    [v7 setObject:v37 forKeyedSubscript:@"DevBoard"];
  }

  logLastBackupTime = [(PLConfigAgent *)self logLastBackupTime];
  [v7 setObject:logLastBackupTime forKeyedSubscript:@"LastBackupTimestamp"];

  logIcloudAccountType = [(PLConfigAgent *)self logIcloudAccountType];
  [v7 setObject:logIcloudAccountType forKeyedSubscript:@"IcloudAccountType"];

  v40 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLConfigAgent getOSVariant](self, "getOSVariant")}];
  [v7 setObject:v40 forKeyedSubscript:@"OSVariant"];

  v41 = MEMORY[0x277CCABB0];
  [(PLConfigAgent *)self logDeviceDiskSize];
  v42 = [v41 numberWithDouble:?];
  [v7 setObject:v42 forKeyedSubscript:@"DeviceDiskSize"];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLConfigAgent volumeFreespace:](self, "volumeFreespace:", @"/"}];
  [v7 setObject:v43 forKeyedSubscript:@"RemainingDiskSpace"];

  if ([MEMORY[0x277D3F208] internalBuild])
  {
    getDeviceSerialNumber = [(PLConfigAgent *)self getDeviceSerialNumber];
    [v7 setObject:getDeviceSerialNumber forKeyedSubscript:@"DeviceSerialNumber"];
  }

  getSplatVersionString = [(PLConfigAgent *)self getSplatVersionString];
  [v7 setObject:getSplatVersionString forKeyedSubscript:@"InstalledSplat"];

  logLastUpgradeSystemTimestamp = [(PLConfigAgent *)self logLastUpgradeSystemTimestamp];
  [v7 setObject:logLastUpgradeSystemTimestamp forKeyedSubscript:@"LastUpgradeSystemTimestamp"];

  v47 = [MEMORY[0x277D3F180] objectForKey:@"InstallType" ifNotSet:&unk_282C10AB8];
  [v7 setObject:v47 forKeyedSubscript:@"InstallType"];

  getHardwarePlatform = [MEMORY[0x277D3F1B8] getHardwarePlatform];
  [v7 setObject:getHardwarePlatform forKeyedSubscript:@"Device_SoC"];

  if ((os_variant_is_darwinos() & 1) == 0)
  {
    deviceShutdownReasons = [(PLConfigAgent *)self deviceShutdownReasons];
    [v7 setObject:deviceShutdownReasons forKeyedSubscript:@"DeviceBootReasons"];

    getMDMStatus = [(PLConfigAgent *)self getMDMStatus];
    v51 = [MEMORY[0x277CCABB0] numberWithBool:getMDMStatus];
    [v7 setObject:v51 forKeyedSubscript:@"MDMStatus"];

    if (([MEMORY[0x277D3F208] isiOS] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isMac"))
    {
      AnalyticsSendEventLazy();
    }
  }

  [(PLOperator *)self logEntry:v7];
  [(PLConfigAgent *)self logConfigEntry:v7];
  [(PLConfigAgent *)self logEntryToCA:v7];
  [(PLConfigAgent *)self logConfigToBGSQL:v7];
  v52 = objc_msgSend_storage(self);
  [v52 flushCachesWithReason:@"DeviceConfig"];
}

id __35__PLConfigAgent_logEventNoneConfig__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"MDMStatus";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)pairStatusDidChange:(id)change
{
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__PLConfigAgent_pairStatusDidChange___block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __37__PLConfigAgent_pairStatusDidChange___block_invoke(uint64_t a1)
{
  v2 = PLLogConfig();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Gizmo pairStatusDidChange:", v4, 2u);
  }

  return [*(a1 + 32) logEventNonePairedDeviceConfig];
}

- (void)logEventNonePairedDeviceConfig
{
  v46 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  v6 = [(PLOperator *)PLConfigAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PairedDeviceConfig"];
  selfCopy = self;
  v7 = objc_msgSend_storage(self);
  v8 = [v7 lastEntryForKey:v6];

  v9 = *MEMORY[0x277D2BC08];
  v10 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BC08]];
  v11 = v10;
  if (v8)
  {
    v2 = [v8 objectForKeyedSubscript:@"Build"];
    if (!(v2 | v11))
    {
      goto LABEL_7;
    }
  }

  else if (!v10)
  {
LABEL_7:
    v14 = 0;
    goto LABEL_10;
  }

  v12 = [v8 objectForKeyedSubscript:@"Build"];
  v13 = [v11 isEqualToString:v12];

  if (v8)
  {

    if (v13)
    {
      goto LABEL_7;
    }
  }

  else if (v13)
  {
    goto LABEL_7;
  }

  v14 = 1;
LABEL_10:
  v15 = PLLogConfig();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v41 = v14;
    _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "PairedDeviceConfig: build changed = %d)\n", buf, 8u);
  }

  v38 = v14;

  v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  if (getActivePairedDevice)
  {
    if ([MEMORY[0x277D3F208] internalBuild])
    {
      v17 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BBB8]];
      uUIDString = [v17 UUIDString];
      [v16 setObject:uUIDString forKeyedSubscript:@"PairingID"];
    }

    v19 = [getActivePairedDevice valueForProperty:v9];
    [v16 setObject:v19 forKeyedSubscript:@"Build"];

    v20 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BBC0]];
    [v16 setObject:v20 forKeyedSubscript:@"Device"];

    v21 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BB08]];
    [v16 setObject:v21 forKeyedSubscript:@"HWModel"];

    v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C5DDE5DD-2FF7-4735-80A3-0108488556DE"];
    LODWORD(v23) = [getActivePairedDevice supportsCapability:v22];

    v23 = v23;
  }

  else
  {
    v23 = 0;
  }

  mEMORY[0x277D2BCF8]2 = [MEMORY[0x277D2BCF8] sharedInstance];
  activePairedDeviceSelectorBlock = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v26 = [mEMORY[0x277D2BCF8]2 getAllDevicesWithArchivedAltAccountDevicesMatching:activePairedDeviceSelectorBlock];
  firstObject = [v26 firstObject];

  if (firstObject)
  {
    v28 = [firstObject valueForProperty:*MEMORY[0x277D2BB28]];
    bOOLValue = [v28 BOOLValue];

    if (bOOLValue)
    {
      v23 |= 2uLL;
    }
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
  [v16 setObject:v30 forKeyedSubscript:@"PMode"];

  if ([MEMORY[0x277D3F208] isWatch])
  {
    ADClientSetValueForScalarKey();
    AnalyticsSendEventLazy();
  }

  if (v8 && ([v8 objectForKeyedSubscript:@"PMode"], (v31 = objc_claimAutoreleasedReturnValue()) != 0) && (v32 = v31, objc_msgSend(v8, "objectForKeyedSubscript:", @"PMode"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "unsignedIntegerValue"), v33, v32, v34 == v23))
  {
    if (!v38)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v35 = PLLogConfig();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v36 = [v8 objectForKeyedSubscript:@"PMode"];
      unsignedIntegerValue = [v36 unsignedIntegerValue];
      *buf = 67109632;
      v41 = 1;
      v42 = 1024;
      v43 = unsignedIntegerValue;
      v44 = 1024;
      v45 = v23;
      _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "PairedDeviceConfig: mode changed = %d (0x%x -> 0x%x)\n", buf, 0x14u);
    }
  }

  [(PLOperator *)selfCopy logEntry:v16];
LABEL_31:
}

id __47__PLConfigAgent_logEventNonePairedDeviceConfig__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"mode";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)logEntryToCA:(id)a
{
  aCopy = a;
  if ([MEMORY[0x277D3F258] deviceRebooted])
  {
    v4 = [aCopy objectForKeyedSubscript:@"DeviceBootReasons"];
    v5 = v4;
    if (v4)
    {
      if ([v4 rangeOfString:@"vdd_under"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        MEMORY[0x21CEDCD40](@"com.apple.power.boot.vdd_under", 1);
        AnalyticsSendEventLazy();
      }

      v6 = v5;
      AnalyticsSendEventLazy();
    }
  }
}

id __30__PLConfigAgent_logEntryToCA___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = @"deviceBootReasons";
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)logConfigEntryToCA:(id)a
{
  aCopy = a;
  if ([MEMORY[0x277D3F258] deviceRebooted])
  {
    v4 = [aCopy objectForKeyedSubscript:@"ShutdownReason"];
    v5 = [aCopy objectForKeyedSubscript:@"BootReason"];
    v6 = v5;
    if (v4 && v5)
    {
      v7 = v4;
      v8 = v6;
      AnalyticsSendEventLazy();
    }
  }
}

id __36__PLConfigAgent_logConfigEntryToCA___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"ShutdownReason"];
  [v2 setObject:*(a1 + 40) forKeyedSubscript:@"BootReason"];

  return v2;
}

@end