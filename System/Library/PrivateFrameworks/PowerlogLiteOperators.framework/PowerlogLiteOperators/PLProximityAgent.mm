@interface PLProximityAgent
+ (BOOL)isProximityLiteSupported;
+ (id)entryEventBackwardDefinitionRadioPower;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionClientState;
+ (id)entryEventForwardDefinitionRadioState;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionBinnedDeviceConnection;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointDefinitionDeviceConnection;
+ (id)entryEventPointDefinitionMaintainedDevices;
+ (id)entryEventPointDefinitionTimerState;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLProximityAgent)init;
- (void)initOperatorDependancies;
- (void)logEventBackwardPowerStats:(id)stats;
- (void)logEventForwardClientState:(id)state;
- (void)logEventForwardRadioState:(id)state;
- (void)logEventIntervalBinnedDeviceConnection;
- (void)logEventPointDeviceConnection:(id)connection;
- (void)logEventPointMaintenance:(id)maintenance;
- (void)logEventPointTimerState:(id)state;
@end

@implementation PLProximityAgent

void __44__PLProximityAgent_initOperatorDependancies__block_invoke_158(uint64_t a1)
{
  if ([*(a1 + 32) numConnects] || objc_msgSend(*(a1 + 32), "numDisconnects"))
  {
    if (([MEMORY[0x277D3F180] debugEnabled] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F180], "fullMode") & 1) == 0)
    {
      [*(a1 + 32) logEventIntervalBinnedDeviceConnection];
    }

    [*(a1 + 32) setNumConnects:0];
    [*(a1 + 32) setNumDisconnects:0];
  }

  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) setLastSBCTimestamp:v2];
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLProximityAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"TimerState";
  v2 = +[PLProximityAgent entryEventPointDefinitionTimerState];
  v8[0] = v2;
  v7[1] = @"MaintainedDevices";
  v3 = +[PLProximityAgent entryEventPointDefinitionMaintainedDevices];
  v8[1] = v3;
  v7[2] = @"DeviceConnection";
  v4 = +[PLProximityAgent entryEventPointDefinitionDeviceConnection];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

+ (id)entryEventPointDefinitionTimerState
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v14 = *MEMORY[0x277D3F568];
  v15 = &unk_282C1CB28;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v2;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"targetInterval";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
  v13[0] = commonTypeDict_RealFormat;
  v12[1] = @"actualInterval";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v13[1] = commonTypeDict_RealFormat2;
  v12[2] = @"earlypct";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v13[2] = commonTypeDict_IntegerFormat;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

+ (id)entryEventPointDefinitionMaintainedDevices
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v12 = *MEMORY[0x277D3F568];
  v13 = &unk_282C1CB28;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v2;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"duration";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10[1] = @"numDevices";
  v11[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v11[1] = commonTypeDict_IntegerFormat2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryEventPointDefinitionDeviceConnection
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v14 = *MEMORY[0x277D3F568];
  v15 = &unk_282C1CB28;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v2;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"type";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v13[0] = commonTypeDict_StringFormat;
  v12[1] = @"reason";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v13[1] = commonTypeDict_StringFormat2;
  v12[2] = @"firmwareVersion";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v13[2] = commonTypeDict_StringFormat3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

+ (id)entryEventForwardDefinitions
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"State";
  v2 = +[PLProximityAgent entryEventForwardDefinitionRadioState];
  v6[1] = @"ClientState";
  v7[0] = v2;
  v3 = +[PLProximityAgent entryEventForwardDefinitionClientState];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)entryEventForwardDefinitionRadioState
{
  v13[2] = *MEMORY[0x277D85DE8];
  if ([self isProximityLiteSupported])
  {
    v12[0] = *MEMORY[0x277D3F4E8];
    v10 = *MEMORY[0x277D3F568];
    v11 = &unk_282C1CB38;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v13[0] = v2;
    v12[1] = *MEMORY[0x277D3F540];
    v8 = @"State";
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

+ (id)entryEventForwardDefinitionClientState
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] hasProximitySensor] & 1) != 0 || objc_msgSend(self, "isProximityLiteSupported"))
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v15 = *MEMORY[0x277D3F568];
    v16 = &unk_282C1CB48;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v3;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"EventID";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v14[0] = commonTypeDict_IntegerFormat;
    v13[1] = @"ClientName";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v14[1] = commonTypeDict_IntegerFormat2;
    v13[2] = @"State";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
    v14[2] = commonTypeDict_BoolFormat;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v18[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

+ (id)entryEventBackwardDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"PowerStatistics";
  v2 = +[PLProximityAgent entryEventBackwardDefinitionRadioPower];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventBackwardDefinitionRadioPower
{
  v36[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] hasProximitySensor] & 1) != 0 || objc_msgSend(self, "isProximityLiteSupported"))
  {
    v35[0] = *MEMORY[0x277D3F4E8];
    v33 = *MEMORY[0x277D3F568];
    v34 = &unk_282C1CB48;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v36[0] = v30;
    v35[1] = *MEMORY[0x277D3F540];
    v31[0] = @"SleepDuration";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v32[0] = commonTypeDict_IntegerFormat;
    v31[1] = @"WakeDuration";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v32[1] = commonTypeDict_IntegerFormat2;
    v31[2] = @"SingleAntennaSearchDuration";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v32[2] = commonTypeDict_IntegerFormat3;
    v31[3] = @"DoubleAntennaSearchDuration";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v32[3] = commonTypeDict_IntegerFormat4;
    v31[4] = @"SingleChainRxPacketDuration";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v32[4] = commonTypeDict_IntegerFormat5;
    v31[5] = @"DoubleChainRxPacketDuration";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v32[5] = commonTypeDict_IntegerFormat6;
    v31[6] = @"TripleChainRxPacketDuration";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v32[6] = commonTypeDict_IntegerFormat7;
    v31[7] = @"DSPProcessingDuration";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v32[7] = commonTypeDict_IntegerFormat8;
    v31[8] = @"TxDuration";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
    v32[8] = commonTypeDict_IntegerFormat9;
    v31[9] = @"ReceivedPacketsCount";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v32[9] = commonTypeDict_IntegerFormat10;
    v31[10] = @"TransmittedPacketsCount";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
    v32[10] = commonTypeDict_IntegerFormat11;
    v31[11] = @"DeepSleepDuration";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
    v32[11] = commonTypeDict_IntegerFormat12;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:12];
    v36[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  return v12;
}

+ (id)entryEventIntervalDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"BinnedDeviceConnection";
  entryEventIntervalDefinitionBinnedDeviceConnection = [self entryEventIntervalDefinitionBinnedDeviceConnection];
  v6[0] = entryEventIntervalDefinitionBinnedDeviceConnection;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventIntervalDefinitionBinnedDeviceConnection
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v14 = *MEMORY[0x277D3F568];
  v15 = &unk_282C1CB28;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v2;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v13[0] = commonTypeDict_DateFormat;
  v12[1] = @"connects";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat;
  v12[2] = @"disconnects";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v13[2] = commonTypeDict_IntegerFormat2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

+ (BOOL)isProximityLiteSupported
{
  if (qword_2811F6920 != -1)
  {
    dispatch_once(&qword_2811F6920, &__block_literal_global_126);
  }

  return _MergedGlobals_1_57;
}

void *__44__PLProximityAgent_isProximityLiteSupported__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
  if (result >= 1001205)
  {
    result = [MEMORY[0x277D3F208] isWatch];
    if (result)
    {
      _MergedGlobals_1_57 = 1;
    }
  }

  return result;
}

- (PLProximityAgent)init
{
  v7.receiver = self;
  v7.super_class = PLProximityAgent;
  v2 = [(PLAgent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_numBTLines = 0;
    v2->_numConnects = 0;
    v2->_numDisconnects = 0;
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    lastSBCTimestamp = v3->_lastSBCTimestamp;
    v3->_lastSBCTimestamp = monotonicDate;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  if (+[PLProximityAgent isProximityLiteSupported])
  {
    v3 = objc_alloc(MEMORY[0x277D3F270]);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __44__PLProximityAgent_initOperatorDependancies__block_invoke;
    v31[3] = &unk_27825A1D8;
    v31[4] = self;
    v4 = [v3 initWithOperator:self withRegistration:&unk_282C19728 withBlock:v31];
    [(PLProximityAgent *)self setRadioStateListener:v4];
  }

  if (([MEMORY[0x277D3F208] hasProximitySensor] & 1) != 0 || +[PLProximityAgent isProximityLiteSupported](PLProximityAgent, "isProximityLiteSupported"))
  {
    v5 = objc_alloc(MEMORY[0x277D3F270]);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __44__PLProximityAgent_initOperatorDependancies__block_invoke_151;
    v30[3] = &unk_27825A1D8;
    v30[4] = self;
    v6 = [v5 initWithOperator:self withRegistration:&unk_282C19750 withBlock:v30];
    [(PLProximityAgent *)self setClientStateListener:v6];

    v7 = objc_alloc(MEMORY[0x277D3F270]);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __44__PLProximityAgent_initOperatorDependancies__block_invoke_156;
    v29[3] = &unk_27825A1D8;
    v29[4] = self;
    v8 = [v7 initWithOperator:self withRegistration:&unk_282C19778 withBlock:v29];
    [(PLProximityAgent *)self setRadioPowerListener:v8];
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __44__PLProximityAgent_initOperatorDependancies__block_invoke_158;
  v28[3] = &unk_2782597E8;
  v28[4] = self;
  v9 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v28];
  batteryLevelChanged = self->_batteryLevelChanged;
  self->_batteryLevelChanged = v9;

  [(PLOperator *)self defaultDoubleForKey:@"RunTimeAggregatorTimerCadence"];
  v12 = v11;
  v13 = objc_alloc(MEMORY[0x277D3F250]);
  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v12];
  workQueue = [(PLOperator *)self workQueue];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __44__PLProximityAgent_initOperatorDependancies__block_invoke_2;
  v27[3] = &unk_278259C40;
  v27[4] = self;
  v16 = [v13 initWithFireDate:v14 withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v27 withQueue:v12 withBlock:0.0];
  runTimeAggregatorTimer = self->_runTimeAggregatorTimer;
  self->_runTimeAggregatorTimer = v16;

  v18 = objc_alloc(MEMORY[0x277D3F270]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __44__PLProximityAgent_initOperatorDependancies__block_invoke_170;
  v26[3] = &unk_27825A1D8;
  v26[4] = self;
  v19 = [v18 initWithOperator:self withRegistration:&unk_282C197A0 withBlock:v26];
  [(PLProximityAgent *)self setTimerStateListener:v19];

  v20 = objc_alloc(MEMORY[0x277D3F270]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __44__PLProximityAgent_initOperatorDependancies__block_invoke_178;
  v25[3] = &unk_27825A1D8;
  v25[4] = self;
  v21 = [v20 initWithOperator:self withRegistration:&unk_282C197C8 withBlock:v25];
  [(PLProximityAgent *)self setMaintenanceListener:v21];

  v22 = objc_alloc(MEMORY[0x277D3F270]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __44__PLProximityAgent_initOperatorDependancies__block_invoke_183;
  v24[3] = &unk_27825A1D8;
  v24[4] = self;
  v23 = [v22 initWithOperator:self withRegistration:&unk_282C197F0 withBlock:v24];
  [(PLProximityAgent *)self setDeviceConnectionListener:v23];
}

void __44__PLProximityAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogProximity();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "PLProximityAgent:: RadioState with payload=%@ for %@", &v10, 0x16u);
  }

  [*(a1 + 32) logEventForwardRadioState:v8];
}

void __44__PLProximityAgent_initOperatorDependancies__block_invoke_151(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogProximity();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "PLProximityAgent:: ClientState with payload=%@ for %@", &v10, 0x16u);
  }

  [*(a1 + 32) logEventForwardClientState:v8];
}

void __44__PLProximityAgent_initOperatorDependancies__block_invoke_156(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  [*(a1 + 32) logEventBackwardPowerStats:v8];
  v9 = PLLogProximity();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "PLProximityAgent:: Radio PowerStatistics with payload=%@ for %@", &v10, 0x16u);
  }
}

void __44__PLProximityAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 104) = 0;
  v2 = PLLogProximity();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1 + 32) + 104);
    v4 = 134217984;
    v5 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Device connection credit refreshed %lu", &v4, 0xCu);
  }
}

void __44__PLProximityAgent_initOperatorDependancies__block_invoke_170(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogProximity();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "PLProximityAgent:: MaintenanceBackstopTimerFired with payload=%@ for %@", &v10, 0x16u);
  }

  [*(a1 + 32) logEventPointTimerState:v8];
}

void __44__PLProximityAgent_initOperatorDependancies__block_invoke_178(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogProximity();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "PLProximityAgent:: MaintainedAllDevices with payload=%@ for %@", &v10, 0x16u);
  }

  [*(a1 + 32) logEventPointMaintenance:v8];
}

void __44__PLProximityAgent_initOperatorDependancies__block_invoke_183(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogProximity();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "PLProximityAgent:: DeviceConnection with payload=%@ for %@", &v16, 0x16u);
  }

  v10 = [v8 objectForKeyedSubscript:@"type"];
  v11 = [v10 isEqual:@"BtConnect"];

  v12 = *(a1 + 32);
  if (v11)
  {
    [v12 setNumConnects:{objc_msgSend(v12, "numConnects") + 1}];
  }

  else
  {
    [v12 setNumDisconnects:{objc_msgSend(v12, "numDisconnects") + 1}];
  }

  v13 = PLLogProximity();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [*(a1 + 32) numConnects];
    v15 = [*(a1 + 32) numDisconnects];
    v16 = 134218240;
    v17 = v14;
    v18 = 2048;
    v19 = v15;
    _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "PLProximityAgent:: Updated Connects %lu disconnects %lu", &v16, 0x16u);
  }

  if ([MEMORY[0x277D3F180] fullMode])
  {
    [*(a1 + 32) logEventPointDeviceConnection:v8];
  }
}

- (void)logEventForwardRadioState:(id)state
{
  v4 = *MEMORY[0x277D3F5D0];
  stateCopy = state;
  v7 = [(PLOperator *)PLProximityAgent entryKeyForType:v4 andName:@"State"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:stateCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardClientState:(id)state
{
  v31 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (stateCopy)
  {
    v5 = [(PLOperator *)PLProximityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ClientState"];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
    v7 = [stateCopy objectForKeyedSubscript:@"TicketID"];
    [v6 setObject:v7 forKeyedSubscript:@"EventID"];

    v8 = [stateCopy objectForKeyedSubscript:@"ClientName"];
    [v6 setObject:v8 forKeyedSubscript:@"ClientName"];

    v9 = [stateCopy objectForKeyedSubscript:@"State"];
    [v6 setObject:v9 forKeyedSubscript:@"State"];

    v10 = [stateCopy objectForKeyedSubscript:@"Timestamp"];
    if (v10)
    {
      v11 = v10;
      v12 = [stateCopy objectForKeyedSubscript:@"Timestamp"];
      null = [MEMORY[0x277CBEB68] null];

      if (v12 != null)
      {
        v14 = PLLogProximity();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          entryDate = [v6 entryDate];
          [entryDate timeIntervalSince1970];
          v27 = 134217984;
          v28 = v23;
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "Previous TS: %f ", &v27, 0xCu);
        }

        v15 = MEMORY[0x277CBEAA8];
        v16 = [stateCopy objectForKeyedSubscript:@"Timestamp"];
        [v16 doubleValue];
        v17 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
        [v6 setObject:v17 forKeyedSubscript:@"entryDate"];

        v18 = MEMORY[0x277CCABB0];
        entryDate2 = [v6 entryDate];
        [entryDate2 timeIntervalSince1970];
        v20 = [v18 numberWithDouble:?];
        [v6 setObject:v20 forKeyedSubscript:@"timestamp"];

        v21 = PLLogProximity();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v24 = [v6 objectForKeyedSubscript:@"timestamp"];
          v25 = [stateCopy objectForKeyedSubscript:@"Timestamp"];
          [v25 doubleValue];
          v27 = 138412546;
          v28 = v24;
          v29 = 2048;
          v30 = v26;
          _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "Corrected TS :%@ with %f\n", &v27, 0x16u);
        }
      }
    }

    [(PLOperator *)self logEntry:v6];
  }

  else
  {
    v5 = PLLogProximity();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v27) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Received nil payload for PLProximityAgent::ClientState", &v27, 2u);
    }
  }
}

- (void)logEventBackwardPowerStats:(id)stats
{
  v4 = *MEMORY[0x277D3F5C8];
  statsCopy = stats;
  v7 = [(PLOperator *)PLProximityAgent entryKeyForType:v4 andName:@"PowerStatistics"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:statsCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointTimerState:(id)state
{
  v4 = *MEMORY[0x277D3F5E8];
  stateCopy = state;
  v7 = [(PLOperator *)PLProximityAgent entryKeyForType:v4 andName:@"TimerState"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:stateCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointDeviceConnection:(id)connection
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D3F5E8];
  connectionCopy = connection;
  v6 = [(PLOperator *)PLProximityAgent entryKeyForType:v4 andName:@"DeviceConnection"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withRawData:connectionCopy];

  v8 = self->_numBTLines + 1;
  self->_numBTLines = v8;
  if (v8 > 0x13)
  {
    if (v8 == 20)
    {
      [v7 setObject:@"RateLimit" forKeyedSubscript:@"reason"];
      [(PLOperator *)self logEntry:v7];
      v9 = PLLogProximity();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        numBTLines = self->_numBTLines;
        v14 = 134217984;
        v15 = numBTLines;
        v11 = "ProxDevice:At credit in DeviceConnection %lu";
        goto LABEL_10;
      }
    }

    else
    {
      v9 = PLLogProximity();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = self->_numBTLines;
        v14 = 134217984;
        v15 = v13;
        v11 = "ProxDevice:Exceeded credit in DeviceConnection %lu";
        goto LABEL_10;
      }
    }
  }

  else
  {
    [(PLOperator *)self logEntry:v7];
    v9 = PLLogProximity();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = self->_numBTLines;
      v14 = 134217984;
      v15 = v10;
      v11 = "ProxDevice: Below credit in DeviceConnection %lu";
LABEL_10:
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, v11, &v14, 0xCu);
    }
  }
}

- (void)logEventIntervalBinnedDeviceConnection
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLProximityAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"BinnedDeviceConnection"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  entryDate = [v4 entryDate];
  [v4 setEntryDate:self->_lastSBCTimestamp];
  [v4 setObject:entryDate forKeyedSubscript:@"timestampEnd"];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numConnects];
  [v4 setObject:v6 forKeyedSubscript:@"connects"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numDisconnects];
  [v4 setObject:v7 forKeyedSubscript:@"disconnects"];

  v8 = PLLogProximity();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    lastSBCTimestamp = self->_lastSBCTimestamp;
    numConnects = self->_numConnects;
    numDisconnects = self->_numDisconnects;
    v12 = 138412802;
    v13 = lastSBCTimestamp;
    v14 = 2048;
    v15 = numConnects;
    v16 = 2048;
    v17 = numDisconnects;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "ProxDevice:Logging ts:%@ %lu %lu", &v12, 0x20u);
  }

  [(PLOperator *)self logEntry:v4];
}

- (void)logEventPointMaintenance:(id)maintenance
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D3F5E8];
  maintenanceCopy = maintenance;
  v6 = [(PLOperator *)PLProximityAgent entryKeyForType:v4 andName:@"MaintainedDevices"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withRawData:maintenanceCopy];
  v8 = [maintenanceCopy objectForKeyedSubscript:@"numDevices"];

  intValue = [v8 intValue];
  if (intValue >= 20)
  {
    v10 = 20;
  }

  else
  {
    v10 = intValue;
  }

  if ((intValue - 10) >= 0xA)
  {
    v11 = v10;
  }

  else
  {
    v11 = 10;
  }

  if ((intValue - 5) >= 5)
  {
    v12 = v11;
  }

  else
  {
    v12 = 5;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  [v7 setObject:v13 forKeyedSubscript:@"numDevices"];

  v14 = PLLogProximity();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15[0] = 67109120;
    v15[1] = v12;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "logEventPointMaintenance Number of devices %d", v15, 8u);
  }

  [(PLOperator *)self logEntry:v7];
}

@end