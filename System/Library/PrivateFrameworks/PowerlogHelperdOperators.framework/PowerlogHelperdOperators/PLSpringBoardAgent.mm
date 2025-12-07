@interface PLSpringBoardAgent
+ (id)entryAggregateDefinitionBulletins;
+ (id)entryAggregateDefinitionNotifications;
+ (id)entryAggregateDefinitions;
+ (id)entryEventForwardDefinitionBlank;
+ (id)entryEventForwardDefinitionLock;
+ (id)entryEventForwardDefinitionScreen;
+ (id)entryEventForwardDefinitionWallpaper;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventPointAutoLock;
+ (id)entryEventPointBulletins;
+ (id)entryEventPointDefinitions;
+ (id)entryEventPointLocalRemoteNotifications;
+ (void)load;
- (PLSpringBoardAgent)init;
- (double)currentMediaTime;
- (id)addCountsAndDurationsFor:(id)for toEntry:(id)entry;
- (id)fetchSBWallpaperForType:(int)type;
- (id)screenLock:(id)lock;
- (void)addAccountingEvent:(id)event;
- (void)closeLastOpenEventsWithStopDate:(id)date;
- (void)computeAutolockEnergyWithNow:(id)now;
- (void)dealloc;
- (void)handleChargingStateChange:(id)change;
- (void)initOperatorDependancies;
- (void)logBulletinAggregate:(id)aggregate;
- (void)logBulletinPerEvent:(id)event;
- (void)logMailNotification:(id)notification;
- (void)logNotification:(id)notification;
- (void)resetAutoLockIsNil;
- (void)setLastReceivedPushEntry:(id)entry;
- (void)setUpScreenNumberDictionary;
- (void)startAutolockEnergyPeriodicTimer;
- (void)stopAutolockEnergyPeriodicTimer;
@end

@implementation PLSpringBoardAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLSpringBoardAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"SBAutoLock";
  entryEventPointAutoLock = [self entryEventPointAutoLock];
  v9[0] = entryEventPointAutoLock;
  v8[1] = @"SBNotifications";
  entryEventPointLocalRemoteNotifications = [self entryEventPointLocalRemoteNotifications];
  v9[1] = entryEventPointLocalRemoteNotifications;
  v8[2] = @"SBBulletins";
  entryEventPointBulletins = [self entryEventPointBulletins];
  v9[2] = entryEventPointBulletins;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

+ (id)entryEventPointLocalRemoteNotifications
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_28714B378;
  v22[1] = MEMORY[0x277CBEC28];
  v21[2] = *MEMORY[0x277D3F4A0];
  v22[2] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"NotificationType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v20[0] = commonTypeDict_IntegerFormat;
  v19[1] = @"NotificationBundleID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v20[1] = commonTypeDict_StringFormat_withBundleID;
  v19[2] = @"Waking";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v20[2] = commonTypeDict_IntegerFormat2;
  v19[3] = @"NSEStartTime";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]4 commonTypeDict_DateFormat];
  v20[3] = commonTypeDict_DateFormat;
  v19[4] = @"NSEEndTime";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v20[4] = commonTypeDict_DateFormat2;
  v19[5] = @"UIShown";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v20[5] = commonTypeDict_IntegerFormat3;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  return v12;
}

+ (id)entryEventPointBulletins
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_28714B388;
  v14[1] = MEMORY[0x277CBEC28];
  v13[2] = *MEMORY[0x277D3F4A0];
  v14[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"PostType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"BulletinBundleID";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v12[1] = commonTypeDict_StringFormat_withBundleID;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventPointAutoLock
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_28714B388;
  v12[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"AutoLockType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10 = commonTypeDict_IntegerFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardDefinitions
{
  v9[4] = *MEMORY[0x277D85DE8];
  v8[0] = @"SBBlank";
  v2 = +[PLSpringBoardAgent entryEventForwardDefinitionBlank];
  v9[0] = v2;
  v8[1] = @"SBLock";
  v3 = +[PLSpringBoardAgent entryEventForwardDefinitionLock];
  v9[1] = v3;
  v8[2] = @"SBScreen";
  v4 = +[PLSpringBoardAgent entryEventForwardDefinitionScreen];
  v9[2] = v4;
  v8[3] = @"SBWallpaper";
  v5 = +[PLSpringBoardAgent entryEventForwardDefinitionWallpaper];
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

+ (id)entryEventForwardDefinitionBlank
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_28714B388;
  v12[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Blanked";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardDefinitionLock
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_28714B388;
  v12[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Locked";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardDefinitionScreen
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_28714B388;
  v12[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Screen";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10 = commonTypeDict_IntegerFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardDefinitionWallpaper
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_28714B388;
  v14[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"HomeScreen";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v11[1] = @"LockScreen";
  v12[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v12[1] = commonTypeDict_StringFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryAggregateDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"SBNotifications_Aggregate";
  entryAggregateDefinitionNotifications = [self entryAggregateDefinitionNotifications];
  v7[1] = @"SBBulletins_Aggregate";
  v8[0] = entryAggregateDefinitionNotifications;
  entryAggregateDefinitionBulletins = [self entryAggregateDefinitionBulletins];
  v8[1] = entryAggregateDefinitionBulletins;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)entryAggregateDefinitionNotifications
{
  v48[4] = *MEMORY[0x277D85DE8];
  v47[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v45[0] = *MEMORY[0x277D3F568];
  v45[1] = v2;
  v46[0] = &unk_28714B398;
  v46[1] = MEMORY[0x277CBEC38];
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  v48[0] = v38;
  v47[1] = *MEMORY[0x277D3F540];
  v43[0] = @"NotificationType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v44[0] = commonTypeDict_IntegerFormat;
  v43[1] = @"NotificationBundleID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v44[1] = commonTypeDict_StringFormat_withBundleID;
  v43[2] = @"Count";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v44[2] = commonTypeDict_IntegerFormat2;
  v43[3] = @"FgWakingCount";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v44[3] = commonTypeDict_IntegerFormat3;
  v43[4] = @"FgWakingPluggedInCount";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v44[4] = commonTypeDict_IntegerFormat4;
  v43[5] = @"BgWakingCount";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v44[5] = commonTypeDict_IntegerFormat5;
  v43[6] = @"BgWakingPluggedInCount";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v44[6] = commonTypeDict_IntegerFormat6;
  v43[7] = @"NonWakingCount";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v44[7] = commonTypeDict_IntegerFormat7;
  v43[8] = @"NonWakingPluggedInCount";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v44[8] = commonTypeDict_IntegerFormat8;
  v43[9] = @"BgWakingNSEDuration";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]10 commonTypeDict_RealFormat];
  v44[9] = commonTypeDict_RealFormat;
  v43[10] = @"BgWakingPluggedInNSEDuration";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]11 commonTypeDict_RealFormat];
  v44[10] = commonTypeDict_RealFormat2;
  v43[11] = @"NonWakingNSEDuration";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]12 commonTypeDict_RealFormat];
  v44[11] = commonTypeDict_RealFormat3;
  v43[12] = @"NonWakingPluggedInNSEDuration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]13 commonTypeDict_RealFormat];
  v44[12] = commonTypeDict_RealFormat4;
  v43[13] = @"FgWakingNSEDuration";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]14 commonTypeDict_RealFormat];
  v44[13] = commonTypeDict_RealFormat5;
  v43[14] = @"FgWakingPluggedInNSEDuration";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]15 commonTypeDict_RealFormat];
  v44[14] = commonTypeDict_RealFormat6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:15];
  v48[1] = v9;
  v47[2] = *MEMORY[0x277D3F478];
  v41 = &unk_28714B3A8;
  v39 = *MEMORY[0x277D3F470];
  v40 = &unk_28714B3B8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v42 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v47[3] = *MEMORY[0x277D3F488];
  v48[2] = v11;
  v48[3] = &unk_28714C9C8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:4];

  return v12;
}

+ (id)entryAggregateDefinitionBulletins
{
  v24[4] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_28714B388;
  v22[1] = MEMORY[0x277CBEC38];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v24[0] = v14;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"PostType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v20[0] = commonTypeDict_IntegerFormat;
  v19[1] = @"BulletinBundleID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v20[1] = commonTypeDict_StringFormat_withBundleID;
  v19[2] = @"Count";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v20[2] = commonTypeDict_IntegerFormat2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v24[1] = v9;
  v23[2] = *MEMORY[0x277D3F478];
  v17 = &unk_28714B3A8;
  v15 = *MEMORY[0x277D3F470];
  v16 = &unk_28714B3C8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v23[3] = *MEMORY[0x277D3F488];
  v24[2] = v11;
  v24[3] = &unk_28714C9E0;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];

  return v12;
}

- (PLSpringBoardAgent)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v50.receiver = self;
    v50.super_class = PLSpringBoardAgent;
    v4 = [(PLAgent *)&v50 init];
    v5 = v4;
    if (v4)
    {
      [(PLSpringBoardAgent *)v4 setUpScreenNumberDictionary];
      [(PLSpringBoardAgent *)v5 resetAutoLockIsNil];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v5 selector:sel_settingsChangedNotification_ name:*MEMORY[0x277D25CA0] object:0];
      v7 = objc_alloc(MEMORY[0x277D3F1F0]);
      v8 = *MEMORY[0x277D67260];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __26__PLSpringBoardAgent_init__block_invoke;
      v48[3] = &unk_279A5BE78;
      v9 = v5;
      v49 = v9;
      v10 = [v7 initWithOperator:v9 forNotification:v8 withBlock:v48];
      notificationSBScreenTimeTrackingChanged = v9->_notificationSBScreenTimeTrackingChanged;
      v9->_notificationSBScreenTimeTrackingChanged = v10;

      _SBFScreenTimeRegisterForExternalChangeNotification();
      v12 = objc_alloc(MEMORY[0x277D3F1F0]);
      v13 = *MEMORY[0x277D66D18];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __26__PLSpringBoardAgent_init__block_invoke_164;
      v46[3] = &unk_279A5BE78;
      v14 = v9;
      v47 = v14;
      v15 = [v12 initWithOperator:v14 forNotification:v13 withBlock:v46];
      notificationSBAutoLockTimerFiredNotification = v14->_notificationSBAutoLockTimerFiredNotification;
      v14->_notificationSBAutoLockTimerFiredNotification = v15;

      _SBSAutolockTimerRegisterForExternalChangeNotification();
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v17 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __26__PLSpringBoardAgent_init__block_invoke_172;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v17;
        if (init_defaultOnce != -1)
        {
          dispatch_once(&init_defaultOnce, block);
        }

        if (init_classDebugEnabled == 1)
        {
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Initing SB Wallpaper poll"];
          v19 = MEMORY[0x277D3F178];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
          lastPathComponent = [v20 lastPathComponent];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent init]"];
          [v19 logMessage:v18 fromFile:lastPathComponent fromFunction:v22 fromLineNumber:344];

          v24 = PLLogCommon(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      v25 = objc_alloc(MEMORY[0x277D3F250]);
      date = [MEMORY[0x277CBEAA8] date];
      workQueue = [(PLOperator *)v14 workQueue];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __26__PLSpringBoardAgent_init__block_invoke_178;
      v43[3] = &unk_279A5D088;
      v28 = v14;
      v44 = v28;
      v29 = [v25 initWithFireDate:date withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v43 withQueue:86400.0 withBlock:0.0];

      [(PLSpringBoardAgent *)v28 setDailyWallpaperPoll:v29];
      v30 = objc_alloc(MEMORY[0x277D3F160]);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __26__PLSpringBoardAgent_init__block_invoke_185;
      v41[3] = &unk_279A5BE78;
      v31 = v28;
      v42 = v31;
      v32 = [v30 initWithOperator:v31 forNotification:@"com.apple.springboard.lockstate" requireState:1 withBlock:v41];
      notificationSBLockTrackingChanged = v31->_notificationSBLockTrackingChanged;
      v31->_notificationSBLockTrackingChanged = v32;

      v34 = objc_alloc(MEMORY[0x277D3F160]);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __26__PLSpringBoardAgent_init__block_invoke_190;
      v39[3] = &unk_279A5BE78;
      v35 = v31;
      v40 = v35;
      v36 = [v34 initWithOperator:v35 forNotification:@"com.apple.springboard.hasBlankedScreen" requireState:1 withBlock:v39];
      notificationSBBlankTrackingChanged = v35->_notificationSBBlankTrackingChanged;
      v35->_notificationSBBlankTrackingChanged = v36;
    }

    self = v5;
    selfCopy = self;
  }

  return selfCopy;
}

void __26__PLSpringBoardAgent_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*MEMORY[0x277D67258]];
  if (v3)
  {
    v4 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SBScreen"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
    [v5 setObject:v3 forKeyedSubscript:@"Screen"];
    [*(a1 + 32) logEntry:v5];
    [*(a1 + 32) addAccountingEvent:v5];
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__PLSpringBoardAgent_init__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (kPLAutoLockAccountingEvent_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&kPLAutoLockAccountingEvent_block_invoke_defaultOnce, block);
    }

    if (kPLAutoLockAccountingEvent_block_invoke_classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: screenNumber is null this implies the notification payload was not delivered via NSNotificationOperatorComposition"];;
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent init]_block_invoke"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:328];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__26__PLSpringBoardAgent_init__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLAutoLockAccountingEvent_block_invoke_classDebugEnabled = result;
  return result;
}

void __26__PLSpringBoardAgent_init__block_invoke_164(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__PLSpringBoardAgent_init__block_invoke_2_165;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (kPLAutoLockAccountingEvent_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&kPLAutoLockAccountingEvent_block_invoke_2_defaultOnce, block);
    }

    if (kPLAutoLockAccountingEvent_block_invoke_2_classDebugEnabled == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Autolock Fired %@: userInfo=%@", v6, v5];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent init]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:336];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v15 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SBAutoLock"];
  v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15];
  v17 = [v5 objectForKeyedSubscript:@"SBAutoLockTimerCategoryKey"];
  [v16 setObject:v17 forKeyedSubscript:@"AutoLockType"];

  [*(a1 + 32) logEntry:v16];
}

void *__26__PLSpringBoardAgent_init__block_invoke_2_165(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLAutoLockAccountingEvent_block_invoke_2_classDebugEnabled = result;
  return result;
}

void *__26__PLSpringBoardAgent_init__block_invoke_172(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled = result;
  return result;
}

void __26__PLSpringBoardAgent_init__block_invoke_178(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__PLSpringBoardAgent_init__block_invoke_2_179;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (kPLAutoLockAccountingEvent_block_invoke_3_defaultOnce != -1)
    {
      dispatch_once(&kPLAutoLockAccountingEvent_block_invoke_3_defaultOnce, block);
    }

    if (kPLAutoLockAccountingEvent_block_invoke_3_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"SB Wallpaper poll"];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent init]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:356];

      v9 = PLLogCommon(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v10 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SBWallpaper"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v12 = [*(a1 + 32) fetchSBWallpaperForType:0];
  [v11 setObject:v12 forKeyedSubscript:@"HomeScreen"];

  v13 = [*(a1 + 32) fetchSBWallpaperForType:1];
  [v11 setObject:v13 forKeyedSubscript:@"LockScreen"];

  [*(a1 + 32) logEntry:v11];
}

void *__26__PLSpringBoardAgent_init__block_invoke_2_179(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLAutoLockAccountingEvent_block_invoke_3_classDebugEnabled = result;
  return result;
}

void __26__PLSpringBoardAgent_init__block_invoke_185(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"com.apple.springboard.lockstate"];
  v4 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SBLock"];
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
    if ([v3 longLongValue])
    {
      v6 = MEMORY[0x277CBEC38];
    }

    else
    {
      v6 = MEMORY[0x277CBEC28];
    }

    [v5 setObject:v6 forKeyedSubscript:@"Locked"];
    [*(a1 + 32) logEntry:v5];
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__PLSpringBoardAgent_init__block_invoke_2_186;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (kPLAutoLockAccountingEvent_block_invoke_4_defaultOnce != -1)
    {
      dispatch_once(&kPLAutoLockAccountingEvent_block_invoke_4_defaultOnce, block);
    }

    if (kPLAutoLockAccountingEvent_block_invoke_4_classDebugEnabled == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: lockState is null this implies the notification payload was not or could not be populated by the CFNotificationOperatorComposition"];;
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent init]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:382];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__26__PLSpringBoardAgent_init__block_invoke_2_186(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLAutoLockAccountingEvent_block_invoke_4_classDebugEnabled = result;
  return result;
}

void __26__PLSpringBoardAgent_init__block_invoke_190(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"com.apple.springboard.hasBlankedScreen"];
  v4 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SBBlank"];
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
    if ([v3 longLongValue])
    {
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"Blanked"];
      v6 = dispatch_time(0, 1000000000);
      v7 = [*(a1 + 32) workQueue];
      dispatch_after(v6, v7, &__block_literal_global_15);
    }

    else
    {
      [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"Blanked"];
    }

    [*(a1 + 32) logEntry:v5];
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__PLSpringBoardAgent_init__block_invoke_3;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (kPLAutoLockAccountingEvent_block_invoke_5_defaultOnce != -1)
    {
      dispatch_once(&kPLAutoLockAccountingEvent_block_invoke_5_defaultOnce, block);
    }

    if (kPLAutoLockAccountingEvent_block_invoke_5_classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: blankState is null this implies the notification payload was not or could not be populated by the CFNotificationOperatorComposition"];;
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent init]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:420];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void __26__PLSpringBoardAgent_init__block_invoke_2_191()
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  if (!_os_feature_enabled_impl() || ([MEMORY[0x277D3F208] hasAOD] & 1) == 0)
  {
    v0 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v0 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:v2];

    v1 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v1 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:v2];
  }
}

void *__26__PLSpringBoardAgent_init__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLAutoLockAccountingEvent_block_invoke_5_classDebugEnabled = result;
  return result;
}

- (void)initOperatorDependancies
{
  v61[1] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_storage(self, a2);
  v4 = [v3 lastEntryForKey:@"PLBatteryAgent_EventBackward_Battery"];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (initOperatorDependancies_defaultOnce != -1)
    {
      dispatch_once(&initOperatorDependancies_defaultOnce, block);
    }

    if (initOperatorDependancies_classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"The last entry from BatteryU table: %@", v4];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent initOperatorDependancies]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:433];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if (v4)
  {
    [(PLSpringBoardAgent *)self handleChargingStateChange:v4];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = objc_opt_class();
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_206;
    v56[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v56[4] = v13;
    if (initOperatorDependancies_defaultOnce_204 != -1)
    {
      dispatch_once(&initOperatorDependancies_defaultOnce_204, v56);
    }

    if (initOperatorDependancies_classDebugEnabled_205 == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Initial device Charging State: %d", -[PLSpringBoardAgent deviceIsCharging](self, "deviceIsCharging")];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
      lastPathComponent2 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent initOperatorDependancies]"];
      [v15 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:438];

      v20 = PLLogCommon(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v21 = objc_alloc(MEMORY[0x277D3F1A8]);
  v60 = @"ExternalConnected";
  v58 = &unk_287145C28;
  null = [MEMORY[0x277CBEB68] null];
  v59 = null;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v61[0] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:&v60 count:1];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_216;
  v55[3] = &unk_279A5BE78;
  v55[4] = self;
  v25 = [v21 initWithOperator:self forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v24 withBlock:v55];
  [(PLSpringBoardAgent *)self setDeviceChargingStateNotification:v25];

  v26 = objc_msgSend_storage(self);
  v27 = [v26 lastEntryForKey:@"PLDisplayAgent_EventPoint_Display"];

  if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
  {
    if (v27)
    {
      v28 = [v27 objectForKeyedSubscript:@"Block"];
      if ([v28 isEqualToString:@"Backlight"])
      {
        v29 = [v27 objectForKeyedSubscript:@"Active"];
        intValue = [v29 intValue];

        if (intValue != 1)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

LABEL_27:
    }
  }

  else if (v27)
  {
    v28 = [v27 objectForKeyedSubscript:@"Block"];
    if (([v28 isEqualToString:@"Backlight"] & 1) == 0)
    {
      goto LABEL_27;
    }

    v31 = [v27 objectForKeyedSubscript:@"Active"];
    bOOLValue = [v31 BOOLValue];

    if (bOOLValue)
    {
LABEL_26:
      [(PLSpringBoardAgent *)self startAutolockEnergyPeriodicTimer];
    }
  }

LABEL_28:
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_2;
  v54[3] = &unk_279A5BE78;
  v54[4] = self;
  v33 = [MEMORY[0x277D3F1A8] displayOnNotificationWithOperator:self withBlock:v54];
  [(PLSpringBoardAgent *)self setDisplayOnNotification:v33];

  if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
  {
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_3;
    v53[3] = &unk_279A5BE78;
    v53[4] = self;
    v34 = [MEMORY[0x277D3F1A8] displayOffOrAODNotificationWithOperator:self withBlock:v53];
  }

  else
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_4;
    v52[3] = &unk_279A5BE78;
    v52[4] = self;
    v34 = [MEMORY[0x277D3F1A8] displayOffNotificationWithOperator:self withBlock:v52];
  }

  v35 = v34;
  [(PLSpringBoardAgent *)self setDisplayOffNotification:v34];

  v36 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ReceivedPush"];
  v37 = objc_alloc(MEMORY[0x277D3F1A8]);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_5;
  v51[3] = &unk_279A5BE78;
  v51[4] = self;
  v38 = [v37 initWithOperator:self forEntryKey:v36 withBlock:v51];
  [(PLSpringBoardAgent *)self setReceivedPushNotification:v38];

  v39 = objc_alloc(MEMORY[0x277D3F270]);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_250;
  v50[3] = &unk_279A5BCB8;
  v50[4] = self;
  v40 = [v39 initWithOperator:self withRegistration:&unk_2871484F0 withBlock:v50];
  userNotificationRequestEvent = self->_userNotificationRequestEvent;
  self->_userNotificationRequestEvent = v40;

  v42 = objc_alloc(MEMORY[0x277D3F270]);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_259;
  v49[3] = &unk_279A5BCB8;
  v49[4] = self;
  v43 = [v42 initWithOperator:self withRegistration:&unk_287148518 withBlock:v49];
  userNotificationTriggerEvent = self->_userNotificationTriggerEvent;
  self->_userNotificationTriggerEvent = v43;

  v45 = objc_alloc(MEMORY[0x277D3F270]);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_273;
  v48[3] = &unk_279A5BCB8;
  v48[4] = self;
  v46 = [v45 initWithOperator:self withRegistration:&unk_287148540 withBlock:v48];
  bulletinBoardNotificationPublishEvent = self->_bulletinBoardNotificationPublishEvent;
  self->_bulletinBoardNotificationPublishEvent = v46;
}

void *__46__PLSpringBoardAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initOperatorDependancies_classDebugEnabled = result;
  return result;
}

void *__46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_206(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initOperatorDependancies_classDebugEnabled_205 = result;
  return result;
}

void __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_216(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:@"entry"];
  [v2 handleChargingStateChange:v3];
}

void __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"entry"];
  [*(a1 + 32) setLastReceivedPushEntry:v3];
}

void __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogCommon(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_250_cold_1();
  }

  if (([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "internalBuild"))
  {
    [*(a1 + 32) logBulletinPerEvent:v6];
  }

  if (([MEMORY[0x277D3F180] liteMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
  {
    [*(a1 + 32) logBulletinAggregate:v6];
  }
}

void __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_259(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_2_260;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v7;
    if (kPLAutoLockAccountingEvent_block_invoke_6_defaultOnce != -1)
    {
      dispatch_once(&kPLAutoLockAccountingEvent_block_invoke_6_defaultOnce, &block);
    }

    if (kPLAutoLockAccountingEvent_block_invoke_6_classDebugEnabled == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", v6, block, v16, v17, v18, v19];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent initOperatorDependancies]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:508];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) logNotification:v6];
}

void *__46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_2_260(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLAutoLockAccountingEvent_block_invoke_6_classDebugEnabled = result;
  return result;
}

void __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_273(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_2_274;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v7;
    if (kPLAutoLockAccountingEvent_block_invoke_7_defaultOnce != -1)
    {
      dispatch_once(&kPLAutoLockAccountingEvent_block_invoke_7_defaultOnce, &block);
    }

    if (kPLAutoLockAccountingEvent_block_invoke_7_classDebugEnabled == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received BulletinBoard payload: %@", v6, block, v16, v17, v18, v19];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent initOperatorDependancies]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:516];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) logMailNotification:v6];
}

void *__46__PLSpringBoardAgent_initOperatorDependancies__block_invoke_2_274(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLAutoLockAccountingEvent_block_invoke_7_classDebugEnabled = result;
  return result;
}

- (void)handleChargingStateChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (changeCopy)
  {
    v6 = [changeCopy objectForKeyedSubscript:@"ExternalConnected"];
    -[PLSpringBoardAgent setDeviceIsCharging:](self, "setDeviceIsCharging:", [v6 BOOLValue]);
  }

  else
  {
    [(PLSpringBoardAgent *)self setDeviceIsCharging:0];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLSpringBoardAgent_handleChargingStateChange___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (handleChargingStateChange__defaultOnce != -1)
    {
      dispatch_once(&handleChargingStateChange__defaultOnce, block);
    }

    if (handleChargingStateChange__classDebugEnabled == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"ChargingState: %d for the entry: %@", -[PLSpringBoardAgent deviceIsCharging](self, "deviceIsCharging"), v5];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent handleChargingStateChange:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:529];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__48__PLSpringBoardAgent_handleChargingStateChange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleChargingStateChange__classDebugEnabled = result;
  return result;
}

- (void)startAutolockEnergyPeriodicTimer
{
  if ([(PLSpringBoardAgent *)self autoLockIsNil])
  {
    autolockEnergyPeriodicTimer = [(PLSpringBoardAgent *)self autolockEnergyPeriodicTimer];

    if (!autolockEnergyPeriodicTimer)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v4 = objc_opt_class();
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __54__PLSpringBoardAgent_startAutolockEnergyPeriodicTimer__block_invoke;
        v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v30[4] = v4;
        if (startAutolockEnergyPeriodicTimer_defaultOnce != -1)
        {
          dispatch_once(&startAutolockEnergyPeriodicTimer_defaultOnce, v30);
        }

        if (startAutolockEnergyPeriodicTimer_classDebugEnabled == 1)
        {
          v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
          v6 = MEMORY[0x277D3F178];
          v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
          lastPathComponent = [v7 lastPathComponent];
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent startAutolockEnergyPeriodicTimer]"];
          [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:534];

          v11 = PLLogCommon(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLSpringBoardAgent *)self setLastEligibleAutolockEnergyComputationDate:monotonicDate];
      v13 = MEMORY[0x277D3F1E0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__PLSpringBoardAgent_startAutolockEnergyPeriodicTimer__block_invoke_286;
      block[3] = &unk_279A5BDC0;
      block[4] = self;
      if (startAutolockEnergyPeriodicTimer_defaultOnce_285 != -1)
      {
        dispatch_once(&startAutolockEnergyPeriodicTimer_defaultOnce_285, block);
      }

      v14 = [monotonicDate dateByAddingTimeInterval:*&startAutolockEnergyPeriodicTimer_objectForKey];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __54__PLSpringBoardAgent_startAutolockEnergyPeriodicTimer__block_invoke_2;
      v28[3] = &unk_279A5BDC0;
      v28[4] = self;
      if (startAutolockEnergyPeriodicTimer_defaultOnce_287 != -1)
      {
        dispatch_once(&startAutolockEnergyPeriodicTimer_defaultOnce_287, v28);
      }

      v15 = *&startAutolockEnergyPeriodicTimer_objectForKey_288;
      workQueue = [(PLOperator *)self workQueue];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __54__PLSpringBoardAgent_startAutolockEnergyPeriodicTimer__block_invoke_3;
      v27[3] = &unk_279A5D110;
      v27[4] = self;
      v17 = [v13 scheduledTimerWithMonotonicFireDate:v14 withInterval:workQueue withQueue:v27 withBlock:v15];
      [(PLSpringBoardAgent *)self setAutolockEnergyPeriodicTimer:v17];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v18 = objc_opt_class();
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __54__PLSpringBoardAgent_startAutolockEnergyPeriodicTimer__block_invoke_4;
        v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v26[4] = v18;
        if (startAutolockEnergyPeriodicTimer_defaultOnce_290 != -1)
        {
          dispatch_once(&startAutolockEnergyPeriodicTimer_defaultOnce_290, v26);
        }

        if (startAutolockEnergyPeriodicTimer_classDebugEnabled_291 == 1)
        {
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
          v20 = MEMORY[0x277D3F178];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
          lastPathComponent2 = [v21 lastPathComponent];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent startAutolockEnergyPeriodicTimer]"];
          [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:545];

          v25 = PLLogCommon(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }
    }
  }
}

void *__54__PLSpringBoardAgent_startAutolockEnergyPeriodicTimer__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startAutolockEnergyPeriodicTimer_classDebugEnabled = result;
  return result;
}

void *__54__PLSpringBoardAgent_startAutolockEnergyPeriodicTimer__block_invoke_286(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"AutolockEnergyPeriodicTimerInterval"];
  startAutolockEnergyPeriodicTimer_objectForKey = v2;
  return result;
}

void *__54__PLSpringBoardAgent_startAutolockEnergyPeriodicTimer__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"AutolockEnergyPeriodicTimerInterval"];
  startAutolockEnergyPeriodicTimer_objectForKey_288 = v2;
  return result;
}

void *__54__PLSpringBoardAgent_startAutolockEnergyPeriodicTimer__block_invoke_4(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startAutolockEnergyPeriodicTimer_classDebugEnabled_291 = result;
  return result;
}

- (void)stopAutolockEnergyPeriodicTimer
{
  autolockEnergyPeriodicTimer = [(PLSpringBoardAgent *)self autolockEnergyPeriodicTimer];

  if (autolockEnergyPeriodicTimer)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__PLSpringBoardAgent_stopAutolockEnergyPeriodicTimer__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v4;
      if (stopAutolockEnergyPeriodicTimer_defaultOnce != -1)
      {
        dispatch_once(&stopAutolockEnergyPeriodicTimer_defaultOnce, block);
      }

      if (stopAutolockEnergyPeriodicTimer_classDebugEnabled == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
        lastPathComponent = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent stopAutolockEnergyPeriodicTimer]"];
        [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:550];

        v11 = PLLogCommon(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    [(PLSpringBoardAgent *)self setLastEligibleAutolockEnergyComputationDate:0];
    [(PLSpringBoardAgent *)self setAutolockEnergyPeriodicTimer:0];
    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [mEMORY[0x277D3F0C0] createQualificationEventForwardWithQualificationID:9 withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:monotonicDate];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __53__PLSpringBoardAgent_stopAutolockEnergyPeriodicTimer__block_invoke_297;
      v25 = &__block_descriptor_40_e5_v8__0lu32l8;
      v26 = v14;
      if (stopAutolockEnergyPeriodicTimer_defaultOnce_295 != -1)
      {
        dispatch_once(&stopAutolockEnergyPeriodicTimer_defaultOnce_295, &v22);
      }

      if (stopAutolockEnergyPeriodicTimer_classDebugEnabled_296 == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"end", v22, v23, v24, v25, v26];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
        lastPathComponent2 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent stopAutolockEnergyPeriodicTimer]"];
        [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:557];

        v21 = PLLogCommon(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

void *__53__PLSpringBoardAgent_stopAutolockEnergyPeriodicTimer__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopAutolockEnergyPeriodicTimer_classDebugEnabled = result;
  return result;
}

void *__53__PLSpringBoardAgent_stopAutolockEnergyPeriodicTimer__block_invoke_297(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopAutolockEnergyPeriodicTimer_classDebugEnabled_296 = result;
  return result;
}

- (double)currentMediaTime
{
  info = 0;
  v2 = mach_timebase_info(&info);
  result = -1.0;
  if (!v2)
  {
    LODWORD(result) = info.numer;
    LODWORD(v3) = info.denom;
    return *&result / v3 * 0.000000001 * mach_absolute_time();
  }

  return result;
}

- (void)computeAutolockEnergyWithNow:(id)now
{
  nowCopy = now;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PLSpringBoardAgent_computeAutolockEnergyWithNow___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (computeAutolockEnergyWithNow__defaultOnce != -1)
    {
      dispatch_once(&computeAutolockEnergyWithNow__defaultOnce, block);
    }

    if (computeAutolockEnergyWithNow__classDebugEnabled == 1)
    {
      v6 = MEMORY[0x277CCACA8];
      lastEligibleAutolockEnergyComputationDate = [(PLSpringBoardAgent *)self lastEligibleAutolockEnergyComputationDate];
      v8 = [v6 stringWithFormat:@"now=%@, self.lastEligibleAutolockEnergyComputationDate=%@", nowCopy, lastEligibleAutolockEnergyComputationDate];

      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent computeAutolockEnergyWithNow:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:576];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [(PLSpringBoardAgent *)self currentMediaTime];
  v16 = v15;
  if (v15 != -1.0)
  {
    BKSHIDServicesLastUserEventTime();
    v18 = [nowCopy dateByAddingTimeInterval:v17 - v16];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __51__PLSpringBoardAgent_computeAutolockEnergyWithNow___block_invoke_303;
      v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v49[4] = v19;
      if (computeAutolockEnergyWithNow__defaultOnce_301 != -1)
      {
        dispatch_once(&computeAutolockEnergyWithNow__defaultOnce_301, v49);
      }

      if (computeAutolockEnergyWithNow__classDebugEnabled_302 == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastUserEventDate=%@", v18];
        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
        lastPathComponent2 = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent computeAutolockEnergyWithNow:]"];
        [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:582];

        v26 = PLLogCommon(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    lastEligibleAutolockEnergyComputationDate2 = [(PLSpringBoardAgent *)self lastEligibleAutolockEnergyComputationDate];
    v28 = [v18 laterDate:lastEligibleAutolockEnergyComputationDate2];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v29 = objc_opt_class();
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __51__PLSpringBoardAgent_computeAutolockEnergyWithNow___block_invoke_309;
      v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v48[4] = v29;
      if (computeAutolockEnergyWithNow__defaultOnce_307 != -1)
      {
        dispatch_once(&computeAutolockEnergyWithNow__defaultOnce_307, v48);
      }

      if (computeAutolockEnergyWithNow__classDebugEnabled_308 == 1)
      {
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"eligibleAutolockEnergyComputationDate=%@", v28];
        v31 = MEMORY[0x277D3F178];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
        lastPathComponent3 = [v32 lastPathComponent];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent computeAutolockEnergyWithNow:]"];
        [v31 logMessage:v30 fromFile:lastPathComponent3 fromFunction:v34 fromLineNumber:586];

        v36 = PLLogCommon(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    [nowCopy timeIntervalSinceDate:v28];
    if (v37 > 60.0)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v38 = objc_opt_class();
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __51__PLSpringBoardAgent_computeAutolockEnergyWithNow___block_invoke_315;
        v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v47[4] = v38;
        if (computeAutolockEnergyWithNow__defaultOnce_313 != -1)
        {
          dispatch_once(&computeAutolockEnergyWithNow__defaultOnce_313, v47);
        }

        if (computeAutolockEnergyWithNow__classDebugEnabled_314 == 1)
        {
          v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"computing autolock energy"];
          v40 = MEMORY[0x277D3F178];
          v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
          lastPathComponent4 = [v41 lastPathComponent];
          v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent computeAutolockEnergyWithNow:]"];
          [v40 logMessage:v39 fromFile:lastPathComponent4 fromFunction:v43 fromLineNumber:590];

          v45 = PLLogCommon(v44);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0] createQualificationEventForwardWithQualificationID:9 withChildNodeNames:&unk_28714C9F8 withStartDate:v28];
    }

    [(PLSpringBoardAgent *)self setLastEligibleAutolockEnergyComputationDate:nowCopy];
  }
}

void *__51__PLSpringBoardAgent_computeAutolockEnergyWithNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  computeAutolockEnergyWithNow__classDebugEnabled = result;
  return result;
}

void *__51__PLSpringBoardAgent_computeAutolockEnergyWithNow___block_invoke_303(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  computeAutolockEnergyWithNow__classDebugEnabled_302 = result;
  return result;
}

void *__51__PLSpringBoardAgent_computeAutolockEnergyWithNow___block_invoke_309(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  computeAutolockEnergyWithNow__classDebugEnabled_308 = result;
  return result;
}

void *__51__PLSpringBoardAgent_computeAutolockEnergyWithNow___block_invoke_315(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  computeAutolockEnergyWithNow__classDebugEnabled_314 = result;
  return result;
}

- (void)setLastReceivedPushEntry:(id)entry
{
  entryCopy = entry;
  if (!entryCopy || !self->_lastReceivedPushEntry || ([entryCopy entryDate], v5 = objc_claimAutoreleasedReturnValue(), -[PLEntry entryDate](self->_lastReceivedPushEntry, "entryDate"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "timeIntervalSinceDate:", v6), v8 = v7, v6, v5, v8 > 0.0))
  {
    if ([PLPushAgent isHighPriorityPushEntry:entryCopy])
    {
      objc_storeStrong(&self->_lastReceivedPushEntry, entry);
    }
  }
}

- (id)screenLock:(id)lock
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [mEMORY[0x277D262A0] effectiveValueForSetting:*MEMORY[0x277D25D78]];

  if ([v4 intValue] == 0x7FFFFFFF)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (void)resetAutoLockIsNil
{
  v3 = [(PLSpringBoardAgent *)self screenLock:0];
  v4 = [v3 intValue] == -1;

  [(PLSpringBoardAgent *)self setAutoLockIsNil:v4];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __40__PLSpringBoardAgent_resetAutoLockIsNil__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v5;
    if (resetAutoLockIsNil_defaultOnce != -1)
    {
      dispatch_once(&resetAutoLockIsNil_defaultOnce, &block);
    }

    if (resetAutoLockIsNil_classDebugEnabled == 1)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLSpringBoardAgent autoLockIsNil](self, "autoLockIsNil")}];
      v8 = [v6 stringWithFormat:@"Value of autolock %@", v7, block, v16, v17, v18, v19];

      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent resetAutoLockIsNil]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:617];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__40__PLSpringBoardAgent_resetAutoLockIsNil__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  resetAutoLockIsNil_classDebugEnabled = result;
  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D25CA0] object:0];

  v4.receiver = self;
  v4.super_class = PLSpringBoardAgent;
  [(PLAgent *)&v4 dealloc];
}

- (id)fetchSBWallpaperForType:(int)type
{
  if (type)
  {
    if (type != 1)
    {
      v8 = @"unknown";
      goto LABEL_16;
    }

    v4 = @"kSBProceduralWallpaperLockDefaultKey";
    v5 = @"SBWallpaperParallaxFactorLockScreen";
  }

  else
  {
    v4 = @"kSBProceduralWallpaperHomeDefaultKey";
    v5 = @"SBWallpaperParallaxFactorHomeScreen";
  }

  [MEMORY[0x277D3F180] resetUserDefaultCacheForKey:v4 forApplicationID:@"com.apple.springboard"];
  [MEMORY[0x277D3F180] resetUserDefaultCacheForKey:v5 forApplicationID:@"com.apple.springboard"];
  v6 = [MEMORY[0x277D3F180] objectForKey:v4 forApplicationID:@"com.apple.springboard" synchronize:1];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else if (type == 1 && ([MEMORY[0x277D3F180] resetUserDefaultCacheForKey:@"SBWallpaperHasVideoKey" forApplicationID:@"com.apple.springboard"], objc_msgSend(MEMORY[0x277D3F180], "objectForKey:forApplicationID:synchronize:", @"SBWallpaperHasVideoKey", @"com.apple.springboard", 1), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, (v10 & 1) != 0))
  {
    v8 = @"motion";
  }

  else
  {
    v11 = [MEMORY[0x277D3F180] objectForKey:v5 forApplicationID:@"com.apple.springboard" synchronize:1];
    [v11 doubleValue];
    if (v12 <= 0.0)
    {
      v8 = @"still";
    }

    else
    {
      v8 = @"perspective";
    }
  }

LABEL_16:

  return v8;
}

- (id)addCountsAndDurationsFor:(id)for toEntry:(id)entry
{
  entryCopy = entry;
  forCopy = for;
  v8 = [forCopy objectForKeyedSubscript:@"NSEStartTime"];
  v9 = [forCopy objectForKeyedSubscript:@"NSEEndTime"];
  v10 = [forCopy objectForKeyedSubscript:@"Waking"];
  bOOLValue = [v10 BOOLValue];

  v12 = [forCopy objectForKeyedSubscript:@"UIShown"];

  bOOLValue2 = [v12 BOOLValue];
  v14 = 0.0;
  if (v8 && v9)
  {
    [v9 doubleValue];
    v16 = v15;
    [v8 doubleValue];
    v18 = v16 - v17;
    if (v18 >= 0.0)
    {
      v14 = v18;
    }

    else
    {
      v14 = 0.0;
    }
  }

  deviceIsCharging = [(PLSpringBoardAgent *)self deviceIsCharging];
  if (bOOLValue)
  {
    if (bOOLValue2)
    {
      if (deviceIsCharging)
      {
        [entryCopy setObject:&unk_287145C70 forKeyedSubscript:@"FgWakingPluggedInCount"];
        v20 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
        [entryCopy setObject:v20 forKeyedSubscript:@"FgWakingPluggedInNSEDuration"];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v21 = objc_opt_class();
          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = __55__PLSpringBoardAgent_addCountsAndDurationsFor_toEntry___block_invoke;
          v92[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v92[4] = v21;
          if (addCountsAndDurationsFor_toEntry__defaultOnce != -1)
          {
            dispatch_once(&addCountsAndDurationsFor_toEntry__defaultOnce, v92);
          }

          if (addCountsAndDurationsFor_toEntry__classDebugEnabled == 1)
          {
            v22 = MEMORY[0x277CCACA8];
            v23 = [entryCopy objectForKeyedSubscript:@"FgWakingPluggedInCount"];
            v24 = [entryCopy objectForKeyedSubscript:@"FgWakingPluggedInNSEDuration"];
            v25 = [v22 stringWithFormat:@"Waking Fg plugged in count: %@, Waking Fg NSE duration: %@", v23, v24];

            v26 = MEMORY[0x277D3F178];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
            lastPathComponent = [v27 lastPathComponent];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent addCountsAndDurationsFor:toEntry:]"];
            [v26 logMessage:v25 fromFile:lastPathComponent fromFunction:v29 fromLineNumber:724];

            v31 = PLLogCommon(v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }

LABEL_47:
          }
        }
      }

      else
      {
        [entryCopy setObject:&unk_287145C70 forKeyedSubscript:@"FgWakingCount"];
        v62 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
        [entryCopy setObject:v62 forKeyedSubscript:@"FgWakingNSEDuration"];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v63 = objc_opt_class();
          v91[0] = MEMORY[0x277D85DD0];
          v91[1] = 3221225472;
          v91[2] = __55__PLSpringBoardAgent_addCountsAndDurationsFor_toEntry___block_invoke_370;
          v91[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v91[4] = v63;
          if (addCountsAndDurationsFor_toEntry__defaultOnce_368 != -1)
          {
            dispatch_once(&addCountsAndDurationsFor_toEntry__defaultOnce_368, v91);
          }

          if (addCountsAndDurationsFor_toEntry__classDebugEnabled_369 == 1)
          {
            v64 = MEMORY[0x277CCACA8];
            v65 = [entryCopy objectForKeyedSubscript:@"FgWakingCount"];
            v66 = [entryCopy objectForKeyedSubscript:@"FgWakingNSEDuration"];
            v25 = [v64 stringWithFormat:@"Waking Fg un-plugged count: %@, Waking Fg NSE duration: %@", v65, v66];

            v67 = MEMORY[0x277D3F178];
            v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
            lastPathComponent2 = [v68 lastPathComponent];
            v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent addCountsAndDurationsFor:toEntry:]"];
            [v67 logMessage:v25 fromFile:lastPathComponent2 fromFunction:v70 fromLineNumber:728];

            v31 = PLLogCommon(v71);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }

            goto LABEL_47;
          }
        }
      }
    }

    else if (deviceIsCharging)
    {
      [entryCopy setObject:&unk_287145C70 forKeyedSubscript:@"BgWakingPluggedInCount"];
      v42 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
      [entryCopy setObject:v42 forKeyedSubscript:@"BgWakingPluggedInNSEDuration"];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v43 = objc_opt_class();
        v90[0] = MEMORY[0x277D85DD0];
        v90[1] = 3221225472;
        v90[2] = __55__PLSpringBoardAgent_addCountsAndDurationsFor_toEntry___block_invoke_376;
        v90[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v90[4] = v43;
        if (addCountsAndDurationsFor_toEntry__defaultOnce_374 != -1)
        {
          dispatch_once(&addCountsAndDurationsFor_toEntry__defaultOnce_374, v90);
        }

        if (addCountsAndDurationsFor_toEntry__classDebugEnabled_375 == 1)
        {
          v44 = MEMORY[0x277CCACA8];
          v45 = [entryCopy objectForKeyedSubscript:@"BgWakingPluggedInCount"];
          v46 = [entryCopy objectForKeyedSubscript:@"BgWakingPluggedInNSEDuration"];
          v25 = [v44 stringWithFormat:@"Waking Bg plugged in count: %@, Waking Bg NSE duration: %@", v45, v46];

          v47 = MEMORY[0x277D3F178];
          v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
          lastPathComponent3 = [v48 lastPathComponent];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent addCountsAndDurationsFor:toEntry:]"];
          [v47 logMessage:v25 fromFile:lastPathComponent3 fromFunction:v50 fromLineNumber:734];

          v31 = PLLogCommon(v51);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          goto LABEL_47;
        }
      }
    }

    else
    {
      [entryCopy setObject:&unk_287145C70 forKeyedSubscript:@"BgWakingCount"];
      v72 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
      [entryCopy setObject:v72 forKeyedSubscript:@"BgWakingNSEDuration"];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v73 = objc_opt_class();
        v89[0] = MEMORY[0x277D85DD0];
        v89[1] = 3221225472;
        v89[2] = __55__PLSpringBoardAgent_addCountsAndDurationsFor_toEntry___block_invoke_382;
        v89[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v89[4] = v73;
        if (addCountsAndDurationsFor_toEntry__defaultOnce_380 != -1)
        {
          dispatch_once(&addCountsAndDurationsFor_toEntry__defaultOnce_380, v89);
        }

        if (addCountsAndDurationsFor_toEntry__classDebugEnabled_381 == 1)
        {
          v74 = MEMORY[0x277CCACA8];
          v75 = [entryCopy objectForKeyedSubscript:@"BgWakingCount"];
          v76 = [entryCopy objectForKeyedSubscript:@"BgWakingNSEDuration"];
          v25 = [v74 stringWithFormat:@"Waking Bg count: %@, Waking Bg NSE duration: %@", v75, v76];

          v77 = MEMORY[0x277D3F178];
          v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
          lastPathComponent4 = [v78 lastPathComponent];
          v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent addCountsAndDurationsFor:toEntry:]"];
          [v77 logMessage:v25 fromFile:lastPathComponent4 fromFunction:v80 fromLineNumber:738];

          v31 = PLLogCommon(v81);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          goto LABEL_47;
        }
      }
    }
  }

  else if (deviceIsCharging)
  {
    [entryCopy setObject:&unk_287145C70 forKeyedSubscript:@"NonWakingPluggedInCount"];
    v32 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    [entryCopy setObject:v32 forKeyedSubscript:@"NonWakingPluggedInNSEDuration"];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v33 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__PLSpringBoardAgent_addCountsAndDurationsFor_toEntry___block_invoke_388;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v33;
      if (addCountsAndDurationsFor_toEntry__defaultOnce_386 != -1)
      {
        dispatch_once(&addCountsAndDurationsFor_toEntry__defaultOnce_386, block);
      }

      if (addCountsAndDurationsFor_toEntry__classDebugEnabled_387 == 1)
      {
        v34 = MEMORY[0x277CCACA8];
        v35 = [entryCopy objectForKeyedSubscript:@"NonWakingPluggedInCount"];
        v36 = [entryCopy objectForKeyedSubscript:@"NonWakingNSEDuration"];
        v25 = [v34 stringWithFormat:@"Non-Waking plugged in count: %@, Non Waking NSE duration: %@", v35, v36];

        v37 = MEMORY[0x277D3F178];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
        lastPathComponent5 = [v38 lastPathComponent];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent addCountsAndDurationsFor:toEntry:]"];
        [v37 logMessage:v25 fromFile:lastPathComponent5 fromFunction:v40 fromLineNumber:746];

        v31 = PLLogCommon(v41);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        goto LABEL_47;
      }
    }
  }

  else
  {
    [entryCopy setObject:&unk_287145C70 forKeyedSubscript:@"NonWakingCount"];
    v52 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    [entryCopy setObject:v52 forKeyedSubscript:@"NonWakingNSEDuration"];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v53 = objc_opt_class();
      v83 = MEMORY[0x277D85DD0];
      v84 = 3221225472;
      v85 = __55__PLSpringBoardAgent_addCountsAndDurationsFor_toEntry___block_invoke_394;
      v86 = &__block_descriptor_40_e5_v8__0lu32l8;
      v87 = v53;
      if (addCountsAndDurationsFor_toEntry__defaultOnce_392 != -1)
      {
        dispatch_once(&addCountsAndDurationsFor_toEntry__defaultOnce_392, &v83);
      }

      if (addCountsAndDurationsFor_toEntry__classDebugEnabled_393 == 1)
      {
        v54 = MEMORY[0x277CCACA8];
        v55 = [entryCopy objectForKeyedSubscript:@"NonWakingCount"];
        v56 = [entryCopy objectForKeyedSubscript:@"NonWakingNSEDuration"];
        v25 = [v54 stringWithFormat:@"Non-Waking count: %@, Non Waking NSE duration: %@", v55, v56, v83, v84, v85, v86, v87];

        v57 = MEMORY[0x277D3F178];
        v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
        lastPathComponent6 = [v58 lastPathComponent];
        v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent addCountsAndDurationsFor:toEntry:]"];
        [v57 logMessage:v25 fromFile:lastPathComponent6 fromFunction:v60 fromLineNumber:751];

        v31 = PLLogCommon(v61);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        goto LABEL_47;
      }
    }
  }

  return entryCopy;
}

void *__55__PLSpringBoardAgent_addCountsAndDurationsFor_toEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addCountsAndDurationsFor_toEntry__classDebugEnabled = result;
  return result;
}

void *__55__PLSpringBoardAgent_addCountsAndDurationsFor_toEntry___block_invoke_370(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addCountsAndDurationsFor_toEntry__classDebugEnabled_369 = result;
  return result;
}

void *__55__PLSpringBoardAgent_addCountsAndDurationsFor_toEntry___block_invoke_376(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addCountsAndDurationsFor_toEntry__classDebugEnabled_375 = result;
  return result;
}

void *__55__PLSpringBoardAgent_addCountsAndDurationsFor_toEntry___block_invoke_382(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addCountsAndDurationsFor_toEntry__classDebugEnabled_381 = result;
  return result;
}

void *__55__PLSpringBoardAgent_addCountsAndDurationsFor_toEntry___block_invoke_388(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addCountsAndDurationsFor_toEntry__classDebugEnabled_387 = result;
  return result;
}

void *__55__PLSpringBoardAgent_addCountsAndDurationsFor_toEntry___block_invoke_394(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addCountsAndDurationsFor_toEntry__classDebugEnabled_393 = result;
  return result;
}

- (void)logNotification:(id)notification
{
  notificationCopy = notification;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__PLSpringBoardAgent_logNotification___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (logNotification__defaultOnce != -1)
    {
      dispatch_once(&logNotification__defaultOnce, block);
    }

    if (logNotification__classDebugEnabled == 1)
    {
      notificationCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Notification: %@", notificationCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent logNotification:]"];
      [v7 logMessage:notificationCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:759];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if ([MEMORY[0x277D3F180] fullMode])
  {
    v13 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SBNotifications"];
    v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13];
    v15 = [notificationCopy objectForKeyedSubscript:@"TriggerType"];
    [v14 setObject:v15 forKeyedSubscript:@"NotificationType"];

    v16 = [notificationCopy objectForKeyedSubscript:@"BundleIdentifier"];
    [v14 setObject:v16 forKeyedSubscript:@"NotificationBundleID"];

    v17 = [notificationCopy objectForKeyedSubscript:@"Waking"];
    [v14 setObject:v17 forKeyedSubscript:@"Waking"];

    v18 = [notificationCopy objectForKeyedSubscript:@"NSEStartTime"];
    if (v18)
    {
      v19 = v18;
      v20 = [notificationCopy objectForKeyedSubscript:@"NSEEndTime"];

      if (v20)
      {
        v21 = MEMORY[0x277CBEAA8];
        v22 = [notificationCopy objectForKeyedSubscript:@"NSEStartTime"];
        [v22 doubleValue];
        v23 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
        convertFromSystemToMonotonic = [v23 convertFromSystemToMonotonic];
        [v14 setObject:convertFromSystemToMonotonic forKeyedSubscript:@"NSEStartTime"];

        v25 = MEMORY[0x277CBEAA8];
        v26 = [notificationCopy objectForKeyedSubscript:@"NSEEndTime"];
        [v26 doubleValue];
        v27 = [v25 dateWithTimeIntervalSinceReferenceDate:?];
        convertFromSystemToMonotonic2 = [v27 convertFromSystemToMonotonic];
        [v14 setObject:convertFromSystemToMonotonic2 forKeyedSubscript:@"NSEEndTime"];
      }
    }

    v29 = [notificationCopy objectForKeyedSubscript:@"UIShown"];
    [v14 setObject:v29 forKeyedSubscript:@"UIShown"];

    [(PLOperator *)self logEntry:v14];
  }

  v30 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"SBNotifications_Aggregate"];
  v31 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v30];
  v32 = [notificationCopy objectForKeyedSubscript:@"TriggerType"];
  [v31 setObject:v32 forKeyedSubscript:@"NotificationType"];
  v33 = [notificationCopy objectForKeyedSubscript:@"BundleIdentifier"];
  [v31 setObject:v33 forKeyedSubscript:@"NotificationBundleID"];

  [v31 setObject:&unk_287145C70 forKeyedSubscript:@"Count"];
  if ([v32 intValue] == 3 || !objc_msgSend(v32, "intValue"))
  {
    v34 = [(PLSpringBoardAgent *)self addCountsAndDurationsFor:notificationCopy toEntry:v31];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v35 = objc_opt_class();
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __38__PLSpringBoardAgent_logNotification___block_invoke_409;
      v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v43[4] = v35;
      if (logNotification__defaultOnce_407 != -1)
      {
        dispatch_once(&logNotification__defaultOnce_407, v43);
      }

      if (logNotification__classDebugEnabled_408 == 1)
      {
        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Notification Entry: %@", v34];
        v37 = MEMORY[0x277D3F178];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
        lastPathComponent2 = [v38 lastPathComponent];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent logNotification:]"];
        [v37 logMessage:v36 fromFile:lastPathComponent2 fromFunction:v40 fromLineNumber:791];

        v42 = PLLogCommon(v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }

  else
  {
    v34 = v31;
  }

  [(PLOperator *)self logEntry:v34];
}

void *__38__PLSpringBoardAgent_logNotification___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logNotification__classDebugEnabled = result;
  return result;
}

void *__38__PLSpringBoardAgent_logNotification___block_invoke_409(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logNotification__classDebugEnabled_408 = result;
  return result;
}

- (void)logMailNotification:(id)notification
{
  v4 = [notification objectForKeyedSubscript:@"SectionIdentifier"];
  v5 = [v4 isEqualToString:@"com.apple.mobilemail"];

  if (v5)
  {
    v6 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"SBNotifications_Aggregate"];
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
    [v7 setObject:&unk_287145C88 forKeyedSubscript:@"NotificationType"];
    [v7 setObject:@"com.apple.mobilemail" forKeyedSubscript:@"NotificationBundleID"];
    [v7 setObject:&unk_287145C70 forKeyedSubscript:@"Count"];
    if ([(PLSpringBoardAgent *)self deviceIsCharging])
    {
      [v7 setObject:&unk_287145C70 forKeyedSubscript:@"NonWakingPluggedInCount"];
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_16;
      }

      v8 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__PLSpringBoardAgent_logMailNotification___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v8;
      if (logMailNotification__defaultOnce != -1)
      {
        dispatch_once(&logMailNotification__defaultOnce, block);
      }

      if (logMailNotification__classDebugEnabled != 1)
      {
        goto LABEL_16;
      }

      v9 = MEMORY[0x277CCACA8];
      v10 = [v7 objectForKeyedSubscript:@"NonWakingPluggedInCount"];
      v11 = [v9 stringWithFormat:@"Non-Waking plugged in count: %@", v10];

      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent logMailNotification:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:813];

      v17 = PLLogCommon(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    else
    {
      [v7 setObject:&unk_287145C70 forKeyedSubscript:@"NonWakingCount"];
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_16;
      }

      v18 = objc_opt_class();
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __42__PLSpringBoardAgent_logMailNotification___block_invoke_426;
      v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v26[4] = v18;
      if (logMailNotification__defaultOnce_424 != -1)
      {
        dispatch_once(&logMailNotification__defaultOnce_424, v26);
      }

      if (logMailNotification__classDebugEnabled_425 != 1)
      {
        goto LABEL_16;
      }

      v19 = MEMORY[0x277CCACA8];
      v20 = [v7 objectForKeyedSubscript:@"NonWakingCount"];
      v11 = [v19 stringWithFormat:@"Non-Waking count: %@", v20];

      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
      lastPathComponent2 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent logMailNotification:]"];
      [v21 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:816];

      v17 = PLLogCommon(v25);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

LABEL_16:
    [(PLOperator *)self logEntry:v7];
  }
}

void *__42__PLSpringBoardAgent_logMailNotification___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logMailNotification__classDebugEnabled = result;
  return result;
}

void *__42__PLSpringBoardAgent_logMailNotification___block_invoke_426(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logMailNotification__classDebugEnabled_425 = result;
  return result;
}

- (void)logBulletinPerEvent:(id)event
{
  eventCopy = event;
  v5 = PLLogCommon(eventCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLSpringBoardAgent logBulletinPerEvent:v5];
  }

  v6 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SBBulletins"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  v8 = [eventCopy objectForKeyedSubscript:@"PostType"];
  [v7 setObject:v8 forKeyedSubscript:@"PostType"];

  v9 = [eventCopy objectForKeyedSubscript:@"BundleIdentifier"];

  [v7 setObject:v9 forKeyedSubscript:@"BulletinBundleID"];
  [(PLOperator *)self logEntry:v7];
}

- (void)logBulletinAggregate:(id)aggregate
{
  aggregateCopy = aggregate;
  v5 = PLLogCommon(aggregateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLSpringBoardAgent logBulletinAggregate:v5];
  }

  v6 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"SBBulletins_Aggregate"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  v8 = [aggregateCopy objectForKeyedSubscript:@"PostType"];
  [v7 setObject:v8 forKeyedSubscript:@"PostType"];

  v9 = [aggregateCopy objectForKeyedSubscript:@"BundleIdentifier"];

  [v7 setObject:v9 forKeyedSubscript:@"BulletinBundleID"];
  [v7 setObject:&unk_287145C70 forKeyedSubscript:@"Count"];
  [(PLOperator *)self logEntry:v7];
}

- (void)setUpScreenNumberDictionary
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = &unk_287145CA0;
  v5[0] = @"com.apple.Maps";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [(PLSpringBoardAgent *)self setScreenNumberToName:v3];
}

- (void)addAccountingEvent:(id)event
{
  v58[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = [eventCopy objectForKeyedSubscript:@"Screen"];
  [v5 doubleValue];
  v7 = v6;

  lastSBEntry = [(PLSpringBoardAgent *)self lastSBEntry];
  if (lastSBEntry)
  {
    lastSBEntry2 = [(PLSpringBoardAgent *)self lastSBEntry];
    v10 = [lastSBEntry2 objectForKeyedSubscript:@"Screen"];
    [v10 doubleValue];
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v7;

  lastSBEntry3 = [(PLSpringBoardAgent *)self lastSBEntry];

  if (!lastSBEntry3 || v12 != v13)
  {
    entryDate = [eventCopy entryDate];
    [(PLSpringBoardAgent *)self closeLastOpenEventsWithStopDate:entryDate];

    screenNumberToName = [(PLSpringBoardAgent *)self screenNumberToName];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
    v18 = [screenNumberToName objectForKeyedSubscript:v17];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__PLSpringBoardAgent_addAccountingEvent___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v19;
      if (addAccountingEvent__defaultOnce != -1)
      {
        dispatch_once(&addAccountingEvent__defaultOnce, block);
      }

      if (addAccountingEvent__classDebugEnabled == 1)
      {
        v20 = MEMORY[0x277CCACA8];
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
        v22 = [v20 stringWithFormat:@"screenNumber unfiltered : %@", v21];

        v23 = MEMORY[0x277D3F178];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSpringBoardAgent.m"];
        lastPathComponent = [v24 lastPathComponent];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSpringBoardAgent addAccountingEvent:]"];
        [v23 logMessage:v22 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:889];

        v28 = PLLogCommon(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    if (v18)
    {
      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      v57 = v18;
      v58[0] = &unk_28714B388;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
      entryDate2 = [eventCopy entryDate];
      [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:v30 withStartDate:entryDate2];

      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      v56 = v18;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
      entryDate3 = [eventCopy entryDate];
      [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:v33 withStartDate:entryDate3];
    }

    if (!v12 && v13 == 9)
    {
      lastReceivedPushEntry = [(PLSpringBoardAgent *)self lastReceivedPushEntry];
      if (lastReceivedPushEntry)
      {
        v36 = lastReceivedPushEntry;
        entryDate4 = [eventCopy entryDate];
        lastReceivedPushEntry2 = [(PLSpringBoardAgent *)self lastReceivedPushEntry];
        entryDate5 = [lastReceivedPushEntry2 entryDate];
        [entryDate4 timeIntervalSinceDate:entryDate5];
        v41 = v40;

        if (v41 < 3.0)
        {
          mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
          lastReceivedPushEntry3 = [(PLSpringBoardAgent *)self lastReceivedPushEntry];
          v44 = [lastReceivedPushEntry3 objectForKeyedSubscript:@"BundleID"];
          v54 = v44;
          v55 = &unk_28714B388;
          v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
          entryDate6 = [eventCopy entryDate];
          [mEMORY[0x277D3F0C0]3 createDistributionEventPointWithDistributionID:28 withChildNodeNameToWeight:v45 withStartDate:entryDate6];

          mEMORY[0x277D3F0C0]4 = [MEMORY[0x277D3F0C0] sharedInstance];
          lastReceivedPushEntry4 = [(PLSpringBoardAgent *)self lastReceivedPushEntry];
          v49 = [lastReceivedPushEntry4 objectForKeyedSubscript:@"BundleID"];
          v53 = v49;
          v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
          entryDate7 = [eventCopy entryDate];
          [mEMORY[0x277D3F0C0]4 createQualificationEventForwardWithQualificationID:10 withChildNodeNames:v50 withStartDate:entryDate7];
        }
      }
    }

    [(PLSpringBoardAgent *)self setLastSBEntry:eventCopy];
  }
}

void *__41__PLSpringBoardAgent_addAccountingEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addAccountingEvent__classDebugEnabled = result;
  return result;
}

- (void)closeLastOpenEventsWithStopDate:(id)date
{
  dateCopy = date;
  lastSBEntry = [(PLSpringBoardAgent *)self lastSBEntry];

  if (lastSBEntry)
  {
    lastSBEntry2 = [(PLSpringBoardAgent *)self lastSBEntry];
    v6 = [lastSBEntry2 objectForKeyedSubscript:@"Screen"];
    [v6 doubleValue];
    v8 = v7;

    lastReceivedPushEntry = [(PLSpringBoardAgent *)self lastReceivedPushEntry];

    if (lastReceivedPushEntry)
    {
      if (v8 == 9)
      {
        mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
        [mEMORY[0x277D3F0C0] createDistributionEventPointWithDistributionID:28 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:dateCopy];

        mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
        [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:10 withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:dateCopy];

        [(PLSpringBoardAgent *)self setLastReceivedPushEntry:0];
      }
    }
  }
}

@end