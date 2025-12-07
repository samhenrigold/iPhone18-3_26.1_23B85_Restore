@interface PLSleepWakeAgent
+ (id)entryEventForwardDefinitionPowerState;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventNoneDefinitionPowerNapConfig;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionCurrentMachWakeTime;
+ (id)entryEventPointDefinitionKernelState;
+ (id)entryEventPointDefinitionScheduledWake;
+ (id)entryEventPointDefinitionWakeGesture;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLSleepWakeAgent)init;
- (id)driverWakeReasons;
- (id)getLastSleepEntry;
- (id)getLastWakeEntry;
- (id)getPostWakeEntry:(unint64_t)entry;
- (id)getSleepStatisticsApps;
- (id)getThisWakeEntry:(id)entry withCurrentWakeTime:(unint64_t)time withIsDarkwake:(BOOL)darkwake withDidSleep:(BOOL)sleep;
- (id)sleepTriggers;
- (id)wakeReasonFromIORegistry;
- (id)wakeReasons;
- (id)wakeReasonsAsNSString;
- (id)wakeType;
- (unint64_t)getCurrentWakeTime;
- (unint64_t)getSleepSubclassKey;
- (unsigned)getIOPMRootDomain;
- (void)capabilitiesChanged:(unsigned int)changed;
- (void)driverWakeReasons;
- (void)initOperatorDependancies;
- (void)logEventForwardUserIdle:(BOOL)idle;
- (void)logEventNonePowerNapConfig;
- (void)logEventPointCurrentScheduledWake;
- (void)logEventPointKernelState;
- (void)logEventPointWakeGesture:(id)gesture;
- (void)logSleepEntries:(id)entries;
- (void)logWakeEntries:(id)entries withCurrentTime:(unint64_t)time;
- (void)systemPoweredOn;
- (void)wakeReasons;
@end

@implementation PLSleepWakeAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLSleepWakeAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventNoneDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"PowerNapConfig";
  entryEventNoneDefinitionPowerNapConfig = [objc_opt_class() entryEventNoneDefinitionPowerNapConfig];
  v6[0] = entryEventNoneDefinitionPowerNapConfig;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventNoneDefinitionPowerNapConfig
{
  v15[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v14[0] = *MEMORY[0x277D3F4E8];
    v12 = *MEMORY[0x277D3F568];
    v13 = &unk_28714B128;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v15[0] = v2;
    v14[1] = *MEMORY[0x277D3F540];
    v10[0] = @"BatteryPower";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
    v10[1] = @"ACPower";
    v11[0] = commonTypeDict_BoolFormat;
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
    v11[1] = commonTypeDict_BoolFormat2;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v15[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

+ (id)entryEventPointDefinitions
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"WakeGesture";
  entryEventPointDefinitionWakeGesture = [self entryEventPointDefinitionWakeGesture];
  v11[0] = entryEventPointDefinitionWakeGesture;
  v10[1] = @"CurrentMachWakeTime";
  entryEventPointDefinitionCurrentMachWakeTime = [self entryEventPointDefinitionCurrentMachWakeTime];
  v11[1] = entryEventPointDefinitionCurrentMachWakeTime;
  v10[2] = @"KernelState";
  entryEventPointDefinitionKernelState = [self entryEventPointDefinitionKernelState];
  v11[2] = entryEventPointDefinitionKernelState;
  v10[3] = @"ScheduledWake";
  entryEventPointDefinitionScheduledWake = [self entryEventPointDefinitionScheduledWake];
  v11[3] = entryEventPointDefinitionScheduledWake;
  v10[4] = @"CoSocPower";
  entryEventPointDefinitionCoSocPower = [self entryEventPointDefinitionCoSocPower];
  v11[4] = entryEventPointDefinitionCoSocPower;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

+ (id)entryEventPointDefinitionWakeGesture
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v15[0] = *MEMORY[0x277D3F568];
  v15[1] = v2;
  v16[0] = &unk_28714B128;
  v16[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v3;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"Mode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v14[0] = commonTypeDict_IntegerFormat;
  v13[1] = @"Event";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v14[1] = commonTypeDict_IntegerFormat2;
  v13[2] = @"Display";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v14[2] = commonTypeDict_IntegerFormat3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v11;
}

+ (id)entryEventPointDefinitionCurrentMachWakeTime
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v12 = *MEMORY[0x277D3F568];
  v13 = &unk_28714B128;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v2;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"CurrentMachWakeTime";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10[1] = @"WakeReasons";
  v11[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v11[1] = commonTypeDict_StringFormat;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryEventPointDefinitionKernelState
{
  v17[3] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F1B8] hasAOT] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F1B8], "hasLPW"))
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F558];
    v14[0] = *MEMORY[0x277D3F568];
    v14[1] = v2;
    v15[0] = &unk_28714B128;
    v15[1] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v17[0] = v3;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"State";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v12[1] = @"Reason";
    v13[0] = commonTypeDict_IntegerFormat;
    v10 = *MEMORY[0x277D3F5A8];
    v11 = &unk_287145658;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v13[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v16[2] = *MEMORY[0x277D3F4B0];
    v17[1] = v7;
    v17[2] = &unk_28714BC90;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

+ (id)entryEventPointDefinitionScheduledWake
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_28714B138;
  v22[1] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"EventTime";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v20[0] = commonTypeDict_DateFormat;
  v19[1] = @"Type";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v20[1] = commonTypeDict_StringFormat;
  v19[2] = @"PID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v20[2] = commonTypeDict_IntegerFormat;
  v19[3] = @"SleepWakeUUID";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v20[3] = commonTypeDict_StringFormat2;
  v19[4] = @"WakeInfo";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v20[4] = commonTypeDict_StringFormat3;
  v19[5] = @"ProcessName";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat_withProcessName];
  v20[5] = commonTypeDict_StringFormat_withProcessName;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  return v12;
}

+ (id)entryEventForwardDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"PowerState";
  entryEventForwardDefinitionPowerState = [self entryEventForwardDefinitionPowerState];
  v7[1] = @"UserIdle";
  v8[0] = entryEventForwardDefinitionPowerState;
  entryEventForwardDefinitionUserIdle = [self entryEventForwardDefinitionUserIdle];
  v8[1] = entryEventForwardDefinitionUserIdle;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)entryEventForwardDefinitionPowerState
{
  v40[5] = *MEMORY[0x277D85DE8];
  v39[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F570];
  v37[0] = *MEMORY[0x277D3F568];
  v37[1] = v2;
  v38[0] = &unk_28714B148;
  v38[1] = MEMORY[0x277CBEBF8];
  v3 = *MEMORY[0x277D3F558];
  v37[2] = *MEMORY[0x277D3F550];
  v37[3] = v3;
  v38[2] = MEMORY[0x277CBEC28];
  v38[3] = MEMORY[0x277CBEC38];
  v4 = *MEMORY[0x277D3F4A0];
  v37[4] = *MEMORY[0x277D3F4F8];
  v37[5] = v4;
  v38[4] = MEMORY[0x277CBEC38];
  v38[5] = MEMORY[0x277CBEC38];
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:6];
  v40[0] = v28;
  v39[1] = *MEMORY[0x277D3F540];
  v35[0] = @"State";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v36[0] = commonTypeDict_IntegerFormat;
  v35[1] = @"Event";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v36[1] = commonTypeDict_IntegerFormat2;
  v35[2] = @"Reason";
  v33 = *MEMORY[0x277D3F5A8];
  v34 = &unk_287145658;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v36[2] = v23;
  v35[3] = @"UUID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v36[3] = commonTypeDict_StringFormat;
  v35[4] = @"CurrentMachWakeTime";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v36[4] = commonTypeDict_IntegerFormat3;
  v35[5] = @"KernelSleepDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v36[5] = commonTypeDict_DateFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:6];
  v40[1] = v5;
  v40[2] = &unk_28714BCA8;
  v6 = *MEMORY[0x277D3F528];
  v39[2] = *MEMORY[0x277D3F4B0];
  v39[3] = v6;
  v40[3] = &unk_28714BCC0;
  v39[4] = *MEMORY[0x277D3F500];
  v31[0] = @"key";
  v29[0] = @"PID";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v29[1] = @"AppName";
  v30[0] = commonTypeDict_IntegerFormat4;
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withAppName = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat_withAppName];
  v30[1] = commonTypeDict_StringFormat_withAppName;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v31[1] = @"value";
  v32[0] = v11;
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v32[1] = commonTypeDict_StringFormat2;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v40[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:5];

  return v15;
}

- (PLSleepWakeAgent)init
{
  v14.receiver = self;
  v14.super_class = PLSleepWakeAgent;
  v2 = [(PLAgent *)&v14 init];
  v3 = v2;
  if (v2)
  {
    lastSleepEntry = v2->_lastSleepEntry;
    v2->_lastSleepEntry = 0;

    lastWakeEntry = v3->_lastWakeEntry;
    v3->_lastWakeEntry = 0;

    v3->_systemPowerPortRef = 0;
    v3->_rootDomainConnect = IORegisterForSystemPower(v3, &v3->_systemPowerPortRef, PowerChangedCallback, &v3->_pmNotifier);
    v6 = [MEMORY[0x277D3F218] sharedSemaphoreForKey:*MEMORY[0x277D3F468]];
    canSleepSemaphore = v3->_canSleepSemaphore;
    v3->_canSleepSemaphore = v6;

    if (v3->_rootDomainConnect)
    {
      systemPowerPortRef = v3->_systemPowerPortRef;
      if (systemPowerPortRef)
      {
        workQueue = [(PLOperator *)v3 workQueue];
        IONotificationPortSetDispatchQueue(systemPowerPortRef, workQueue);
      }
    }

    [(PLSleepWakeAgent *)v3 registerForCapabilitiesChange];
    if ([(PLOperator *)v3 isDebugEnabled])
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, fakeSleep, @"com.apple.powerlogd.PLSleepWakeAgent.fakeSleep", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v11 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v11, v3, fakeWakeBB, @"com.apple.powerlogd.PLSleepWakeAgent.fakeWakeBB", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v12 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v12, v3, fakeWakeWiFi, @"com.apple.powerlogd.PLSleepWakeAgent.fakeWakeWiFi", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  return v3;
}

- (void)initOperatorDependancies
{
  getLastSleepEntry = [(PLSleepWakeAgent *)self getLastSleepEntry];
  lastSleepEntry = self->_lastSleepEntry;
  self->_lastSleepEntry = getLastSleepEntry;

  getLastWakeEntry = [(PLSleepWakeAgent *)self getLastWakeEntry];
  lastWakeEntry = self->_lastWakeEntry;
  self->_lastWakeEntry = getLastWakeEntry;

  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v7 = [PLUtilities powerModelForOperatorName:@"Processor"];
    kPLSoCClassOfDevice = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", kPLSoCClassOfDevice];
    v10 = [v7 objectForKeyedSubscript:v9];
    [v10 doubleValue];
    [(PLSleepWakeAgent *)self setApSOCBasePower:?];

    [(PLSleepWakeAgent *)self apSOCBasePower];
    if (v11 <= 0.0)
    {
      [(PLSleepWakeAgent *)self setApSOCBasePower:30.0];
    }
  }

  v12 = objc_msgSend_storage(self);
  v13 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"PowerState"];
  v14 = [v12 lastEntryForKey:v13];

  if (!v14)
  {
    [(PLSleepWakeAgent *)self systemPoweredOn];
  }

  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v15 = objc_alloc(MEMORY[0x277D3F270]);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __44__PLSleepWakeAgent_initOperatorDependancies__block_invoke;
    v20[3] = &unk_279A5BCB8;
    v20[4] = self;
    v16 = [v15 initWithOperator:self withRegistration:&unk_287147D48 withBlock:v20];
    [(PLSleepWakeAgent *)self setWakeGestureXPCListener:v16];
    if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] <= 1001002)
    {
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      [(PLSleepWakeAgent *)self apSOCBasePower];
      [mEMORY[0x277D3F0C0] createPowerEventForwardWithRootNodeID:52 withPower:monotonicDate withStartDate:?];

      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:8 withChildNodeNames:&unk_28714BCD8 withStartDate:monotonicDate];
    }
  }

  [(PLSleepWakeAgent *)self registerForUserIdleNotification];
  [(PLSleepWakeAgent *)self logEventForwardUserIdle:IOPMUserIsActive() ^ 1];
}

void __44__PLSleepWakeAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogSleepWake(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __44__PLSleepWakeAgent_initOperatorDependancies__block_invoke_cold_1();
  }

  [*(a1 + 32) logEventPointWakeGesture:v6];
}

- (void)logEventPointWakeGesture:(id)gesture
{
  v4 = *MEMORY[0x277D3F5E8];
  gestureCopy = gesture;
  v10 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:v4 andName:@"WakeGesture"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v7 = [gestureCopy objectForKeyedSubscript:@"mode"];
  [v6 setObject:v7 forKeyedSubscript:@"Mode"];

  v8 = [gestureCopy objectForKeyedSubscript:@"event"];
  [v6 setObject:v8 forKeyedSubscript:@"Event"];

  v9 = [gestureCopy objectForKeyedSubscript:@"display"];

  [v6 setObject:v9 forKeyedSubscript:@"Display"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointKernelState
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "Unable to query kernel metrics (%d)", v2, 8u);
}

- (void)logEventForwardUserIdle:(BOOL)idle
{
  idleCopy = idle;
  v7 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"UserIdle"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:idleCopy];
  [v5 setObject:v6 forKeyedSubscript:@"Idle"];

  [(PLOperator *)self logEntry:v5];
}

- (void)systemPoweredOn
{
  v3 = objc_autoreleasePoolPush();
  v4 = mach_absolute_time();
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLSleepWakeAgent *)self logSleepEntries:monotonicDate];
  [(PLSleepWakeAgent *)self logWakeEntries:monotonicDate withCurrentTime:v4];
  if (([MEMORY[0x277D3F1B8] hasAOT] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F1B8], "hasLPW"))
  {
    [(PLSleepWakeAgent *)self logEventPointKernelState];
  }

  [(PLSleepWakeAgent *)self logEventPointCurrentScheduledWake];

  objc_autoreleasePoolPop(v3);
}

- (void)capabilitiesChanged:(unsigned int)changed
{
  v3 = *&changed;
  v62 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = mach_absolute_time();
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v8 = IOPMIsADarkWake();
  v9 = 0x277CCA000uLL;
  v10 = 0x279A5A000uLL;
  if ((v3 & 0x8000) == 0 && v8)
  {
    v52 = v5;
    getCurrentWakeTime = [(PLSleepWakeAgent *)self getCurrentWakeTime];
    v12 = 0x279A5A000uLL;
    v50 = v6;
    [PLUtilities secondsFromMachTime:v6];
    v14 = v13;
    [PLUtilities secondsFromMachTime:getCurrentWakeTime];
    v53 = [monotonicDate dateByAddingTimeInterval:-(v14 - v15)];
    getCurrentWakeTimeKey = [(PLSleepWakeAgent *)self getCurrentWakeTimeKey];
    lastWakeEntry = self->_lastWakeEntry;
    if (lastWakeEntry && (-[PLEntry dictionary](lastWakeEntry, "dictionary"), v18 = objc_claimAutoreleasedReturnValue(), [v18 objectForKeyedSubscript:getCurrentWakeTimeKey], v19 = getCurrentWakeTimeKey, v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLongLong:", getCurrentWakeTime), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqual:", v21), v21, v9 = 0x277CCA000uLL, v10 = 0x279A5A000, v20, getCurrentWakeTimeKey = v19, v12 = 0x279A5A000, v18, v22))
    {
      v24 = PLLogSleepWake(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLSleepWakeAgent capabilitiesChanged:];
      }

      v5 = v52;
    }

    else
    {
      v51 = getCurrentWakeTimeKey;
      v55 = 0;
      v56 = 0;
      v54 = 16;
      if (!sysctlbyname("kern.sleeptime", &v55, &v54, 0, 0))
      {
        v25 = [*(v12 + 3824) dateFromTimeval:{v55, v56}];
        v48 = [*(v12 + 3824) dateFromTimevalSystemTime:{v55, v56}];
        v49 = v25;
        v26 = [objc_alloc(*(v10 + 3624)) initEntryWithState:-[PLSleepWakeAgent getSleepState](self withEvent:"getSleepState") withReason:4 withKernelSleepDate:0 withDate:{v48, v25}];
        objc_storeStrong(&self->_lastSleepEntry, v26);
        v27 = PLLogSleepWake([(PLOperator *)self logEntry:v26]);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v44 = v55;
          v47 = v56;
          [v49 timeIntervalSince1970];
          lastSleepEntry = self->_lastSleepEntry;
          *buf = 134219266;
          v59 = v44;
          v9 = 0x277CCA000;
          v60 = 1024;
          *v61 = v47;
          *&v61[4] = 2048;
          *&v61[6] = v46;
          *&v61[14] = 2112;
          *&v61[16] = v48;
          *&v61[24] = 2112;
          *&v61[26] = lastSleepEntry;
          *&v61[34] = 2112;
          *&v61[36] = v26;
          _os_log_debug_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEBUG, "Ker_sleep_time.sec=%ld,kern_sleep_time.usec=%d,sleepDate=%f,kernelSleepDate=%@,lastsleep=%@,thissleep=%@", buf, 0x3Au);
        }
      }

      v28 = [(PLSleepWakeAgent *)self getThisWakeEntry:v53 withCurrentWakeTime:getCurrentWakeTime withIsDarkwake:1 withDidSleep:1];
      v29 = [*(v9 + 2992) numberWithUnsignedInt:v3];
      [v28 setObject:v29 forKeyedSubscript:@"Capabilities"];

      objc_storeStrong(&self->_lastWakeEntry, v28);
      v30 = PLLogSleepWake([(PLOperator *)self logEntry:v28]);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [monotonicDate timeIntervalSince1970];
        v37 = v36;
        [v53 timeIntervalSince1970];
        v39 = v38;
        [*(v12 + 3824) secondsFromMachTime:getCurrentWakeTime];
        v41 = v40;
        [*(v12 + 3824) secondsFromMachTime:v50];
        v42 = self->_lastWakeEntry;
        *buf = 134219266;
        v59 = v37;
        v60 = 2048;
        *v61 = v39;
        *&v61[8] = 2048;
        *&v61[10] = v41;
        *&v61[18] = 2048;
        *&v61[20] = v43;
        *&v61[28] = 2112;
        *&v61[30] = v42;
        *&v61[38] = 2112;
        *&v61[40] = v28;
        _os_log_debug_impl(&dword_25EE51000, v30, OS_LOG_TYPE_DEBUG, "now=%f wakeDate=%f currentWakeTime=%f currentTime=%f lastWake=%@ thisWake=%@", buf, 0x3Eu);
      }

      v31 = [(PLSleepWakeAgent *)self getPostWakeEntry:getCurrentWakeTime];
      v57 = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
      [(PLOperator *)self postEntries:v32];

      [(PLSleepWakeAgent *)self logEventPointCurrentScheduledWake];
      v5 = v52;
      getCurrentWakeTimeKey = v51;
    }
  }

  if (IOPMIsASleep())
  {
    v33 = 1;
  }

  else if (IOPMIsADarkWake())
  {
    v33 = 5;
  }

  else
  {
    v33 = IOPMIsAUserWake() - 1;
  }

  v34 = [objc_alloc(*(v10 + 3624)) initEntryWithState:v33 withEvent:6 withReason:0 withDate:monotonicDate];
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  [v34 setObject:v35 forKeyedSubscript:@"Capabilities"];

  [(PLOperator *)self logEntry:v34];
  objc_autoreleasePoolPop(v5);
}

- (void)logSleepEntries:(id)entries
{
  v61 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v5 = objc_autoreleasePoolPush();
  v44 = 0;
  v45 = 0;
  v43 = 16;
  if (!sysctlbyname("kern.sleeptime", &v44, &v43, 0, 0))
  {
    v6 = [PLUtilities dateFromTimeval:v44, v45];
    v7 = [PLUtilities dateFromTimevalSystemTime:v44, v45];
    lastSleepEntry = self->_lastSleepEntry;
    v35 = v5;
    v36 = entriesCopy;
    v32 = 96;
    if (lastSleepEntry && (-[PLEntry dictionary](lastSleepEntry, "dictionary"), v9 = objc_claimAutoreleasedReturnValue(), [v9 objectForKeyedSubscript:@"KernelSleepDate"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v7, "isEqualToDate:", v10), v10, v9, v11))
    {
      v12 = PLLogSleepWake(lastSleepEntry);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSleepWakeAgent logSleepEntries:];
      }

      v38 = [[PLEventForwardPowerStateEntry alloc] initEntryWithState:1 withEvent:5 withReason:0 withKernelSleepDate:v7 withDate:entriesCopy];
    }

    else
    {
      v13 = PLLogSleepWake(lastSleepEntry);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSleepWakeAgent logSleepEntries:];
      }

      v14 = [[PLEventForwardPowerStateEntry alloc] initEntryWithState:[(PLSleepWakeAgent *)self getSleepState] withEvent:4 withReason:0 withKernelSleepDate:v7 withDate:v6];
      v15 = self->_lastSleepEntry;
      v38 = v14;
      self->_lastSleepEntry = v14;

      if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
      {
        if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] <= 1001002)
        {
          mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
          [mEMORY[0x277D3F0C0] createPowerEventForwardWithRootNodeID:52 withPower:v6 withStartDate:0.0];
        }

        mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
        [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:8 withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:v6];
      }
    }

    selfCopy = self;
    [(PLSleepWakeAgent *)self getSleepStatisticsApps];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v42 = 0u;
    v18 = [obj countByEnumeratingWithState:&v39 objects:v60 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v40;
      do
      {
        v21 = 0;
        do
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v39 + 1) + 8 * v21);
          v58[0] = @"PID";
          v23 = [v22 objectForKeyedSubscript:@"PID"];
          v58[1] = @"AppName";
          v59[0] = v23;
          v24 = [v22 objectForKeyedSubscript:@"AppName"];
          v59[1] = v24;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];

          v26 = [v22 objectForKeyedSubscript:@"ResponseType"];
          [(PLEntry *)v38 setObject:v26 forKeyedSubscript:v25];

          ++v21;
        }

        while (v19 != v21);
        v18 = [obj countByEnumeratingWithState:&v39 objects:v60 count:16];
        v19 = v18;
      }

      while (v18);
    }

    v27 = PLLogSleepWake(v18);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = v44;
      v29 = v45;
      [v6 timeIntervalSince1970];
      v30 = *(&selfCopy->super.super.super.isa + v33);
      *buf = 134219266;
      v47 = v28;
      v48 = 1024;
      v49 = v29;
      v50 = 2048;
      v51 = v31;
      v52 = 2112;
      v53 = v7;
      v54 = 2112;
      v55 = v30;
      v56 = 2112;
      v57 = v38;
      _os_log_debug_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEBUG, "Ker_sleep_time.sec=%ld,kern_sleep_time.usec=%d,sleepDate=%f,kernelSleepDate=%@,lastsleep=%@,thissleep=%@", buf, 0x3Au);
    }

    [(PLOperator *)selfCopy logEntry:v38];
    v5 = v35;
    entriesCopy = v36;
  }

  objc_autoreleasePoolPop(v5);
}

- (unint64_t)getCurrentWakeTime
{
  v3 = 8;
  v4 = 0;
  if (sysctlbyname("machdep.wake_abstime", &v4, &v3, 0, 0))
  {
    return -1;
  }

  else
  {
    return v4;
  }
}

- (id)getThisWakeEntry:(id)entry withCurrentWakeTime:(unint64_t)time withIsDarkwake:(BOOL)darkwake withDidSleep:(BOOL)sleep
{
  sleepCopy = sleep;
  if (darkwake)
  {
    v9 = 5;
  }

  else
  {
    v9 = 0;
  }

  if (darkwake)
  {
    v10 = 6;
  }

  else
  {
    v10 = 2;
  }

  entryCopy = entry;
  getCurrentWakeTimeKey = [(PLSleepWakeAgent *)self getCurrentWakeTimeKey];
  v13 = [PLEventForwardPowerStateEntry alloc];
  wakeReasons = [(PLSleepWakeAgent *)self wakeReasons];
  if (sleepCopy)
  {
    v15 = v9;
  }

  else
  {
    v15 = v10;
  }

  if (sleepCopy)
  {
    v16 = 0;
  }

  else
  {
    v16 = 5;
  }

  v17 = [(PLEventForwardPowerStateEntry *)v13 initEntryWithState:v15 withEvent:v16 withReason:wakeReasons withCurrentWakeTime:time withCurrentWakeTimeKey:getCurrentWakeTimeKey withDate:entryCopy];

  return v17;
}

- (id)getPostWakeEntry:(unint64_t)entry
{
  v5 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CurrentMachWakeTime"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:entry];
  [v6 setObject:v7 forKeyedSubscript:@"CurrentMachWakeTime"];

  wakeReasonsAsNSString = [(PLSleepWakeAgent *)self wakeReasonsAsNSString];
  [v6 setObject:wakeReasonsAsNSString forKeyedSubscript:@"WakeReasons"];

  return v6;
}

- (void)logWakeEntries:(id)entries withCurrentTime:(unint64_t)time
{
  v53[1] = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v7 = objc_autoreleasePoolPush();
  getCurrentWakeTime = [(PLSleepWakeAgent *)self getCurrentWakeTime];
  timeCopy = time;
  [PLUtilities secondsFromMachTime:time];
  v10 = v9;
  [PLUtilities secondsFromMachTime:getCurrentWakeTime];
  v12 = [entriesCopy dateByAddingTimeInterval:-(v10 - v11)];
  getCurrentWakeTimeKey = [(PLSleepWakeAgent *)self getCurrentWakeTimeKey];
  lastWakeEntry = self->_lastWakeEntry;
  if (lastWakeEntry && (-[PLEntry dictionary](lastWakeEntry, "dictionary"), v15 = objc_claimAutoreleasedReturnValue(), [v15 objectForKeyedSubscript:getCurrentWakeTimeKey], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLongLong:", getCurrentWakeTime), v17 = v12, v18 = entriesCopy, v19 = getCurrentWakeTimeKey, v20 = v7, v21 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v16, "isEqual:", v21), v21, v7 = v20, getCurrentWakeTimeKey = v19, entriesCopy = v18, v12 = v17, v16, v15, v40))
  {
    v23 = PLLogSleepWake(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [PLSleepWakeAgent logSleepEntries:];
    }

    v24 = [(PLSleepWakeAgent *)self getThisWakeEntry:entriesCopy withCurrentWakeTime:getCurrentWakeTime withIsDarkwake:0 withDidSleep:0];
    v25 = v24;
  }

  else
  {
    v25 = [(PLSleepWakeAgent *)self getThisWakeEntry:v12 withCurrentWakeTime:getCurrentWakeTime withIsDarkwake:0 withDidSleep:1];
    objc_storeStrong(&self->_lastWakeEntry, v25);
    if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
    {
      if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] <= 1001002)
      {
        mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
        [(PLSleepWakeAgent *)self apSOCBasePower];
        [mEMORY[0x277D3F0C0] createPowerEventForwardWithRootNodeID:52 withPower:v12 withStartDate:?];
      }

      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:8 withChildNodeNames:&unk_28714BCF0 withStartDate:v12];
    }

    v28 = [(PLSleepWakeAgent *)self getPostWakeEntry:getCurrentWakeTime];
    v53[0] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
    [(PLOperator *)self postEntries:v29];
  }

  v30 = PLLogSleepWake(v24);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [entriesCopy timeIntervalSince1970];
    v32 = v31;
    [v12 timeIntervalSince1970];
    v34 = v33;
    [PLUtilities secondsFromMachTime:getCurrentWakeTime];
    v36 = v35;
    [PLUtilities secondsFromMachTime:timeCopy];
    v37 = self->_lastWakeEntry;
    *buf = 134219266;
    v42 = v32;
    v43 = 2048;
    v44 = v34;
    v45 = 2048;
    v46 = v36;
    v47 = 2048;
    v48 = v38;
    v49 = 2112;
    v50 = v37;
    v51 = 2112;
    v52 = v25;
    _os_log_debug_impl(&dword_25EE51000, v30, OS_LOG_TYPE_DEBUG, "now=%f wakeDate=%f currentWakeTime=%f currentTime=%f lastWake=%@ thisWake=%@", buf, 0x3Eu);
  }

  [(PLOperator *)self logEntry:v25];
  objc_autoreleasePoolPop(v7);
}

- (id)wakeReasons
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 256;
  memset(v7, 0, sizeof(v7));
  v2 = sysctlbyname("kern.wakereason", v7, &v6, 0, 0);
  if ((v2 & 0x80000000) != 0)
  {
    v3 = PLLogSleepWake(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PLSleepWakeAgent wakeReasons];
    }

    v4 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    v4 = [v3 tokenizedByString:@" "];
  }

  return v4;
}

- (id)wakeReasonsAsNSString
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 256;
  memset(v8, 0, sizeof(v8));
  v2 = sysctlbyname("kern.wakereason", v8, &v7, 0, 0);
  if ((v2 & 0x80000000) != 0)
  {
    v3 = PLLogSleepWake(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PLSleepWakeAgent wakeReasons];
    }

    v5 = &stru_287103958;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [v3 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  }

  return v5;
}

- (unsigned)getIOPMRootDomain
{
  result = getIOPMRootDomain_gRoot;
  if (!getIOPMRootDomain_gRoot)
  {
    result = IORegistryEntryFromPath(*MEMORY[0x277CD28A0], "IOPower:/IOPowerConnection/IOPMrootDomain");
    getIOPMRootDomain_gRoot = result;
  }

  return result;
}

- (unint64_t)getSleepSubclassKey
{
  getIOPMRootDomain = [(PLSleepWakeAgent *)self getIOPMRootDomain];
  result = IORegistryEntryCreateCFProperty(getIOPMRootDomain, @"IOPMSystemSleepType", *MEMORY[0x277CBECE8], 0);
  valuePtr = 0;
  v6 = 0;
  if (result)
  {
    v4 = result;
    ByteSize = CFNumberGetByteSize(result);
    if (ByteSize == 8)
    {
      CFNumberGetValue(v4, kCFNumberSInt64Type, &v6);
    }

    else if (ByteSize == 4)
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
        v6 = valuePtr;
      }
    }

    CFRelease(v4);
    return v6;
  }

  return result;
}

- (id)sleepTriggers
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [(PLSleepWakeAgent *)self getIOPMRootDomain:0];
  CFProperty = IORegistryEntryCreateCFProperty(v2, @"Last Sleep Reason", *MEMORY[0x277CBECE8], 0);
  if (CFProperty && (v4 = CFProperty, CString = CFStringGetCString(CFProperty, &v8, 128, 0x8000100u), CFRelease(v4), CString))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v8];
  }

  else
  {
    v6 = &stru_287103958;
  }

  return v6;
}

- (id)wakeType
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *buffer = 0u;
  v11 = 0u;
  getIOPMRootDomain = [(PLSleepWakeAgent *)self getIOPMRootDomain];
  CFProperty = IORegistryEntryCreateCFProperty(getIOPMRootDomain, @"Wake Type", *MEMORY[0x277CBECE8], 0);
  if (CFProperty && (v4 = CFProperty, CString = CFStringGetCString(CFProperty, buffer, 128, 0x8000100u), CFRelease(v4), CString))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
    v9 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)driverWakeReasons
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(PLSleepWakeAgent *)self getIOPMRootDomain:0];
  CFProperty = IORegistryEntryCreateCFProperty(v4, @"IOPMDriverWakeEvents", *MEMORY[0x277CBECE8], 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    v7 = CFGetTypeID(CFProperty);
    if (v7 == CFArrayGetTypeID() && (Count = CFArrayGetCount(v6)) != 0 && (v9 = Count, v10 = Count - 1, Count >= 1))
    {
      v11 = 0;
      v12 = 0;
      do
      {
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v11);
          v14 = CFGetTypeID(ValueAtIndex);
          if (v14 != CFDictionaryGetTypeID())
          {
            break;
          }

          Value = CFDictionaryGetValue(ValueAtIndex, @"Reason");
          v16 = CFGetTypeID(Value);
          if (v16 != CFStringGetTypeID())
          {
            break;
          }

          if (!CFStringGetCString(Value, &v22, 128, 0x8000100u))
          {
            goto LABEL_14;
          }

          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v22];
          [v3 addObject:v17];

          v12 = 1;
          if (v10 == v11++)
          {
            CFRelease(v6);
LABEL_22:
            v20 = v3;
            goto LABEL_18;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      CFRelease(v6);
      if (v12)
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_14:
      CFRelease(v6);
    }
  }

  v19 = PLLogSleepWake(CFProperty);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [PLSleepWakeAgent driverWakeReasons];
  }

  v20 = MEMORY[0x277CBEBF8];
LABEL_18:

  return v20;
}

- (id)wakeReasonFromIORegistry
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *buffer = 0u;
  v11 = 0u;
  getIOPMRootDomain = [(PLSleepWakeAgent *)self getIOPMRootDomain];
  CFProperty = IORegistryEntryCreateCFProperty(getIOPMRootDomain, @"Wake Reason", *MEMORY[0x277CBECE8], 0);
  if (CFProperty && (v4 = CFProperty, CString = CFStringGetCString(CFProperty, buffer, 128, 0x8000100u), CFRelease(v4), CString))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
    v9 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)getLastSleepEntry
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Event" withValue:&unk_2871456A0 withComparisonOperation:0];
  [array addObject:v4];
  v5 = objc_msgSend_storage(self);
  v6 = +[PLEventForwardPowerStateEntry entryKey];
  v7 = [v5 lastEntryForKey:v6 withComparisons:array isSingleton:0];

  return v7;
}

- (id)getLastWakeEntry
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Event" withValue:&unk_287145658 withComparisonOperation:0];
  v4 = objc_msgSend_storage(self);
  v5 = +[PLEventForwardPowerStateEntry entryKey];
  v9[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [v4 lastEntryForKey:v5 withComparisons:v6 isSingleton:0];

  return v7;
}

- (id)getSleepStatisticsApps
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  getIOPMRootDomain = [(PLSleepWakeAgent *)self getIOPMRootDomain];
  CFProperty = IORegistryEntryCreateCFProperty(getIOPMRootDomain, @"AppStatistics", *MEMORY[0x277CBECE8], 0);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = CFProperty;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = @"ResponseType";
    v10 = @"ResponseTimedOut";
    v11 = *v30;
    v28 = *v30;
    do
    {
      v12 = 0;
      v27 = v8;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v29 + 1) + 8 * v12);
        v14 = [v13 objectForKeyedSubscript:{v9, v27}];
        v15 = v14;
        if (v14 && (([v14 isEqualToString:v10] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"ResponseCancel")))
        {
          v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v16 setObject:v15 forKeyedSubscript:v9];
          v17 = [v13 objectForKeyedSubscript:@"Name"];
          if (v17)
          {
            [v16 setObject:v17 forKeyedSubscript:@"AppName"];
          }

          else
          {
            [MEMORY[0x277CBEB68] null];
            v18 = v10;
            v19 = v9;
            v20 = v6;
            v22 = v21 = v3;
            [v16 setObject:v22 forKeyedSubscript:@"AppName"];

            v3 = v21;
            v6 = v20;
            v9 = v19;
            v10 = v18;
            v8 = v27;
          }

          v23 = [v13 objectForKeyedSubscript:@"Pid"];
          v24 = v23;
          if (v23)
          {
            [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v23, "unsignedIntValue")}];
          }

          else
          {
            [MEMORY[0x277CBEB68] null];
          }
          v25 = ;
          [v16 setObject:v25 forKeyedSubscript:@"PID"];

          [v3 addObject:v16];
          v11 = v28;
        }

        ++v12;
      }

      while (v8 != v12);
      v8 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  return v3;
}

- (void)logEventNonePowerNapConfig
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)logEventPointCurrentScheduledWake
{
  workQueue = [(PLOperator *)self workQueue];
  v3 = IOPMCopyCurrentScheduledWake();

  if (v3)
  {
    v5 = PLLogSleepWake(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLSleepWakeAgent logEventPointCurrentScheduledWake];
    }
  }
}

void __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke(uint64_t a1, void *a2)
{
  v4 = PLLogSleepWake(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v5)
    {
      __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_1();
    }

    v6 = [a2 objectForKeyedSubscript:@"returnCode"];
    v7 = [v6 integerValue];

    if (v7)
    {
      v4 = PLLogSleepWake(v8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_2(a2);
      }
    }

    else
    {
      v4 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ScheduledWake"];
      v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
      v10 = [a2 objectForKeyedSubscript:@"wakeData"];
      v11 = v10;
      if (v10)
      {
        v12 = MEMORY[0x277CBEAA8];
        v13 = [v10 objectForKeyedSubscript:@"time"];
        [v13 doubleValue];
        v14 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
        [v9 setObject:v14 forKeyedSubscript:@"EventTime"];

        v15 = [v11 objectForKeyedSubscript:@"eventtype"];
        [v9 setObject:v15 forKeyedSubscript:@"Type"];

        v16 = [v11 objectForKeyedSubscript:@"appPID"];
        [v9 setObject:v16 forKeyedSubscript:@"PID"];

        v17 = [v11 objectForKeyedSubscript:@"SleepWakeUUID"];
        [v9 setObject:v17 forKeyedSubscript:@"SleepWakeUUID"];

        v18 = [v11 objectForKeyedSubscript:@"wakeInfo"];
        [v9 setObject:v18 forKeyedSubscript:@"WakeInfo"];

        v19 = [v11 objectForKeyedSubscript:@"scheduledby"];
        [v9 setObject:v19 forKeyedSubscript:@"ProcessName"];

        [*(a1 + 32) logEntry:v9];
      }

      else
      {
        v20 = PLLogSleepWake(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_3();
        }
      }
    }
  }

  else if (v5)
  {
    __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_4();
  }
}

void __44__PLSleepWakeAgent_initOperatorDependancies__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)capabilitiesChanged:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logSleepEntries:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logSleepEntries:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)wakeReasons
{
  __error();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)driverWakeReasons
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_2(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"returnCode"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end