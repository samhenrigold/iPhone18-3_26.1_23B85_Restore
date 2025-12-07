@interface PLBluetoothAgent
+ (BOOL)shouldLogMarconi;
+ (id)entryEventBackwardDefinitionA2DPPower;
+ (id)entryEventBackwardDefinitionAHFPPower;
+ (id)entryEventBackwardDefinitionCBDiscoveryStats;
+ (id)entryEventBackwardDefinitionDetailedPowerProfileStats;
+ (id)entryEventBackwardDefinitionEnhancedPowerProfileStats;
+ (id)entryEventBackwardDefinitionEnhancedPowerStatsPerCore;
+ (id)entryEventBackwardDefinitionHCITrace;
+ (id)entryEventBackwardDefinitionMaxDutyCycle;
+ (id)entryEventBackwardDefinitionPowerProfileStats;
+ (id)entryEventBackwardDefinitionThreadRadioPowerProfileStats;
+ (id)entryEventBackwardDefinitionWirelessProxScanDStats;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventBackwardWakeupVSE;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointDefinitionMagnet;
+ (id)entryEventPointDefinitionMagnetOperation;
+ (id)entryEventPointDefinitions;
+ (id)getBluetooth5GKeys;
+ (id)getScanCoreKeys;
+ (void)load;
- (BOOL)isConnectable;
- (BOOL)isConnected;
- (BOOL)isDiscoverable;
- (BOOL)modulePowered;
- (BTLocalDeviceImpl)localBluetoothDevice;
- (PLBluetoothAgent)init;
- (id)advertisingDataDescription:(const char *)description :(unint64_t)a4;
- (id)btHardwareChipsetQuery;
- (void)attachSession;
- (void)bluetoothDeviceEvent:(int)event onDevice:(BTLocalDeviceImpl *)device withResult:(int)result;
- (void)bluetoothSessionEvent:(int)event onSession:(BTSessionImpl *)session withResult:(int)result;
- (void)dealloc;
- (void)initOperatorDependancies;
- (void)log;
- (void)logEventBackwardA2DP:(id)p;
- (void)logEventBackwardCBDiscovery:(id)discovery;
- (void)logEventBackwardHFP:(id)p;
- (void)logEventBackwardMaxDutyCycle:(id)cycle;
- (void)logEventBackwardPowerProfileStats;
- (void)logEventBackwardPowerStatsPerCore;
- (void)logEventBackwardWirelessProximity:(id)proximity;
- (void)logEventForwardDeviceState;
- (void)logEventForwardPairedDevices;
- (void)logEventIntervalConnectedDevices;
- (void)logEventIntervalHCIRawData:(id)data;
- (void)logEventIntervalLeConnectedDevices:(id)devices withRequest:(BOOL)request;
- (void)logEventIntervalWakeVSE:(id)e;
- (void)logEventPointMagnet:(id)magnet;
- (void)logEventPointMagnetOperation:(id)operation;
- (void)logwithBTOnCheck;
- (void)modelBluetoothOffPower;
- (void)modelBluetoothPower:(id)power;
- (void)sessionAttached:(BTSessionImpl *)attached withResult:(int)result;
- (void)sessionTerminated:(BTSessionImpl *)terminated withResult:(int)result;
@end

@implementation PLBluetoothAgent

- (void)log
{
  if ([(PLBluetoothAgent *)self modulePowered])
  {
    if (!self->_lastPowerEntryDate || ([MEMORY[0x277CBEAA8] monotonicDate], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "timeIntervalSinceDate:", self->_lastPowerEntryDate), v5 = v4, v3, v5 > 60.0))
    {
      if (+[PLBluetoothAgent shouldLogEnhancedStatsPerCore])
      {
        [(PLBluetoothAgent *)self logEventBackwardPowerStatsPerCore];
      }

      else
      {
        [(PLBluetoothAgent *)self logEventBackwardPowerProfileStats];
      }
    }
  }

  [(PLBluetoothAgent *)self logEventForwardDeviceState];
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  [*(a1 + 32) logwithBTOnCheck];
  v2 = [*(a1 + 32) ENScanCache];
  v3 = [v2 count];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v4 ENScanCache];
    [v4 logEventBackwardMaxDutyCycle:v5];

    v6 = [*(a1 + 32) ENScanCache];
    [v6 removeAllObjects];
  }
}

- (void)logwithBTOnCheck
{
  if ([(PLBluetoothAgent *)self modulePowered])
  {

    [(PLBluetoothAgent *)self log];
  }

  else
  {

    [(PLBluetoothAgent *)self modelBluetoothOffPower];
  }
}

- (BOOL)modulePowered
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  [(PLBluetoothAgent *)self localBluetoothDevice];
  ModulePower = BTLocalDeviceGetModulePower();
  if (ModulePower)
  {
    v3 = ModulePower;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33__PLBluetoothAgent_modulePowered__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v4;
      if (qword_2811F4430 != -1)
      {
        dispatch_once(&qword_2811F4430, block);
      }

      if (byte_2811F4375 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power ERROR: BTLocalDeviceGetModulePower: failed! %d\n", v3];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modulePowered]"];
        [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1077];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v15 = v5;
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  return v13 == -1;
}

- (BTLocalDeviceImpl)localBluetoothDevice
{
  v19 = *MEMORY[0x277D85DE8];
  result = self->localBluetoothDevice;
  if (!result)
  {
    result = self->session;
    if (result)
    {
      Default = BTLocalDeviceGetDefault();
      if (Default || (result = self->localBluetoothDevice) == 0)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v5 = objc_opt_class();
          block = MEMORY[0x277D85DD0];
          v13 = 3221225472;
          v14 = __40__PLBluetoothAgent_localBluetoothDevice__block_invoke;
          v15 = &__block_descriptor_40_e5_v8__0lu32l8;
          v16 = v5;
          if (qword_2811F4428 != -1)
          {
            dispatch_once(&qword_2811F4428, &block);
          }

          if (byte_2811F4374 == 1)
          {
            v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power ERROR: BTLocalDeviceGetDefault: failed! %d\n", Default, block, v13, v14, v15, v16];
            v7 = MEMORY[0x277D3F178];
            v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
            lastPathComponent = [v8 lastPathComponent];
            v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent localBluetoothDevice]"];
            [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1052];

            v11 = PLLogCommon();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v18 = v6;
              _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        result = 0;
        self->localBluetoothDevice = 0;
      }
    }
  }

  return result;
}

- (void)logEventBackwardPowerProfileStats
{
  v186 = *MEMORY[0x277D85DE8];
  v182 = 0;
  v183 = 0;
  v3 = *MEMORY[0x277D3F5C8];
  v4 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"PowerProfileStats"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  if (([MEMORY[0x277D3F208] isWiFiClass:1004011] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004012))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v6 = objc_opt_class();
      v181[0] = MEMORY[0x277D85DD0];
      v181[1] = 3221225472;
      v181[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke;
      v181[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v181[4] = v6;
      if (qword_2811F4520 != -1)
      {
        dispatch_once(&qword_2811F4520, v181);
      }

      if (byte_2811F4393 == 1)
      {
        selfCopy = self;
        v8 = v5;
        v9 = v4;
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"reading detailedpowerprofile"];
        v11 = MEMORY[0x277D3F178];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent = [v12 lastPathComponent];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]"];
        [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:1941];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v185 = v10;
          _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v4 = v9;
        v5 = v8;
        self = selfCopy;
      }
    }

    v179 = 0;
    v180 = 0;
    v177 = 0;
    v178 = 0;
    v175 = 0;
    v176 = 0;
    v174 = 0;
    [(PLBluetoothAgent *)self localBluetoothDevice];
    DetailedPowerProfileStatistics = BTLocalDeviceReadDetailedPowerProfileStatistics();
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{DetailedPowerProfileStatistics, &v177, &v177 + 4, &v176 + 4, &v176, &v175 + 4, &v175, &v174 + 4, &v174}];
    [v5 setObject:v17 forKeyedSubscript:@"ErrorCode"];

    v18 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v3 andName:@"DetailedPowerProfileStats"];
    v19 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v18];
    if (DetailedPowerProfileStatistics)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v20 = objc_opt_class();
        v173[0] = MEMORY[0x277D85DD0];
        v173[1] = 3221225472;
        v173[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_869;
        v173[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v173[4] = v20;
        if (qword_2811F4528 != -1)
        {
          dispatch_once(&qword_2811F4528, v173);
        }

        if (byte_2811F4394 == 1)
        {
          v163 = v4;
          detailedPowerProfileStatistics = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: could not read power profile statistics (error: %u)", DetailedPowerProfileStatistics];
          v22 = MEMORY[0x277D3F178];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          lastPathComponent2 = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]"];
          [v22 logMessage:detailedPowerProfileStatistics fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:1992];

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v185 = detailedPowerProfileStatistics;
            _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v4 = v163;
        }
      }

      if (DetailedPowerProfileStatistics == 7)
      {
        workQueue = [(PLOperator *)self workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_873;
        block[3] = &unk_2782591D0;
        block[4] = self;
        dispatch_async(workQueue, block);
      }
    }

    else
    {
      v164 = v4;
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      lastPowerEntryDate = self->_lastPowerEntryDate;
      self->_lastPowerEntryDate = monotonicDate;

      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v180)];
      [v19 setObject:v30 forKeyedSubscript:@"durationTotal"];

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v180];
      [v19 setObject:v31 forKeyedSubscript:@"durationActive"];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v179)];
      [v19 setObject:v32 forKeyedSubscript:@"durationIdle"];

      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v179];
      [v19 setObject:v33 forKeyedSubscript:@"durationSleep"];

      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v178)];
      [v19 setObject:v34 forKeyedSubscript:@"disableCounter"];

      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v178];
      [v19 setObject:v35 forKeyedSubscript:@"iPATxBT"];

      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v177)];
      [v19 setObject:v36 forKeyedSubscript:@"iPATxLE"];

      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v177];
      [v19 setObject:v37 forKeyedSubscript:@"ePATxBT"];

      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v176)];
      [v19 setObject:v38 forKeyedSubscript:@"ePATxLE"];

      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v176];
      [v19 setObject:v39 forKeyedSubscript:@"connectedRxBT"];

      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v175)];
      [v19 setObject:v40 forKeyedSubscript:@"connectedRxLE"];

      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v175];
      [v19 setObject:v41 forKeyedSubscript:@"scanRxBT"];

      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v174)];
      [v19 setObject:v42 forKeyedSubscript:@"scanRxLE"];

      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v174];
      [v19 setObject:v43 forKeyedSubscript:@"totalPHYCal"];

      if (HIDWORD(v180))
      {
        LODWORD(v44) = v179;
        v45 = (v44 / HIDWORD(v180) * 10000.0);
        HIWORD(v182) = (v44 / HIDWORD(v180) * 10000.0);
        v46 = ((HIDWORD(v175) + v176 + v175 + HIDWORD(v174)) / HIDWORD(v180) * 10000.0);
        LOWORD(v183) = ((HIDWORD(v175) + v176 + v175 + HIDWORD(v174)) / HIDWORD(v180) * 10000.0);
        *&v47 = (HIDWORD(v177) + v178 + v177 + HIDWORD(v176)) / HIDWORD(v180) * 10000.0;
        HIWORD(v183) = *&v47;
        LODWORD(v47) = HIDWORD(v179);
        v48 = v47 / HIDWORD(v180) * 10000.0;
        v49 = v48;
        LOWORD(v182) = v48;
      }

      else
      {
        v49 = 0;
        v45 = 0;
        v46 = 0;
      }

      v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
      [v5 setObject:v100 forKeyedSubscript:@"TXPower"];

      v101 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v46];
      [v5 setObject:v101 forKeyedSubscript:@"RXPower"];

      v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v45];
      [v5 setObject:v102 forKeyedSubscript:@"SleepPower"];

      v103 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v49];
      [v5 setObject:v103 forKeyedSubscript:@"OtherPower"];

      v4 = v164;
    }

    [(PLOperator *)self logEntry:v19];

    goto LABEL_62;
  }

  v50 = +[PLBluetoothAgent shouldLogEnhancedStats];
  debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
  if (!v50)
  {
    if (debugEnabled)
    {
      v79 = objc_opt_class();
      v168[0] = MEMORY[0x277D85DD0];
      v168[1] = 3221225472;
      v168[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_890;
      v168[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v168[4] = v79;
      if (qword_2811F4550 != -1)
      {
        dispatch_once(&qword_2811F4550, v168);
      }

      if (byte_2811F4399 == 1)
      {
        selfCopy2 = self;
        v81 = v5;
        v82 = v4;
        v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"Getting power profile stats"];
        v84 = MEMORY[0x277D3F178];
        v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent3 = [v85 lastPathComponent];
        v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]"];
        [v84 logMessage:v83 fromFile:lastPathComponent3 fromFunction:v87 fromLineNumber:2113];

        v88 = PLLogCommon();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v185 = v83;
          _os_log_debug_impl(&dword_21A4C6000, v88, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v4 = v82;
        v5 = v81;
        self = selfCopy2;
      }
    }

    [(PLBluetoothAgent *)self localBluetoothDevice];
    PowerProfileStatistics = BTLocalDeviceReadPowerProfileStatistics();
    v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:PowerProfileStatistics];
    [v5 setObject:v90 forKeyedSubscript:@"ErrorCode"];

    if (PowerProfileStatistics)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v91 = objc_opt_class();
        v167[0] = MEMORY[0x277D85DD0];
        v167[1] = 3221225472;
        v167[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_896;
        v167[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v167[4] = v91;
        if (qword_2811F4558 != -1)
        {
          dispatch_once(&qword_2811F4558, v167);
        }

        if (byte_2811F439A == 1)
        {
          v92 = v4;
          powerProfileStatistics = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: could not read power profile statistics (error: %u)", PowerProfileStatistics];
          v94 = MEMORY[0x277D3F178];
          v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          lastPathComponent4 = [v95 lastPathComponent];
          v97 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]"];
          [v94 logMessage:powerProfileStatistics fromFile:lastPathComponent4 fromFunction:v97 fromLineNumber:2123];

          v98 = PLLogCommon();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v185 = powerProfileStatistics;
            _os_log_debug_impl(&dword_21A4C6000, v98, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v4 = v92;
        }
      }

      if (PowerProfileStatistics == 7)
      {
        workQueue2 = [(PLOperator *)self workQueue];
        v166[0] = MEMORY[0x277D85DD0];
        v166[1] = 3221225472;
        v166[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_897;
        v166[3] = &unk_2782591D0;
        v166[4] = self;
        dispatch_async(workQueue2, v166);
      }

      [(PLOperator *)self logEntry:v5];
      goto LABEL_67;
    }

    monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
    v105 = self->_lastPowerEntryDate;
    self->_lastPowerEntryDate = monotonicDate2;

    v106 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIWORD(v183)];
    [v5 setObject:v106 forKeyedSubscript:@"TXPower"];

    v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v183];
    [v5 setObject:v107 forKeyedSubscript:@"RXPower"];

    v108 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIWORD(v182)];
    [v5 setObject:v108 forKeyedSubscript:@"SleepPower"];

    v109 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v182];
    [v5 setObject:v109 forKeyedSubscript:@"OtherPower"];

LABEL_65:
    [(PLOperator *)self logEntry:v5];
LABEL_66:
    v110 = [v5 copy];
    [(PLBluetoothAgent *)self modelBluetoothPower:v110];

    goto LABEL_67;
  }

  if (debugEnabled)
  {
    v52 = objc_opt_class();
    v171[0] = MEMORY[0x277D85DD0];
    v171[1] = 3221225472;
    v171[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_876;
    v171[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v171[4] = v52;
    if (qword_2811F4538 != -1)
    {
      dispatch_once(&qword_2811F4538, v171);
    }

    if (byte_2811F4396 == 1)
    {
      selfCopy3 = self;
      v54 = v5;
      v55 = v4;
      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"Getting Enhanced BT stats"];
      v57 = MEMORY[0x277D3F178];
      v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      lastPathComponent5 = [v58 lastPathComponent];
      v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]"];
      [v57 logMessage:v56 fromFile:lastPathComponent5 fromFunction:v60 fromLineNumber:2010];

      v61 = PLLogCommon();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v185 = v56;
        _os_log_debug_impl(&dword_21A4C6000, v61, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v4 = v55;
      v5 = v54;
      self = selfCopy3;
    }
  }

  v62 = malloc_type_malloc(0xF8uLL, 0x10000401CD0A21CuLL);
  if (!v62)
  {
    goto LABEL_65;
  }

  v63 = v62;
  v165 = v4;
  [(PLBluetoothAgent *)self localBluetoothDevice];
  DetailedPowerProfileStatistics = BTLocalDeviceReadEnhancedPowerProfileStatistics();
  v161 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v3 andName:@"EnhancedPowerProfileStats"];
  v64 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v161];
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DetailedPowerProfileStatistics];
  v160 = v64;
  [v64 setObject:v65 forKeyedSubscript:@"ErrorCode"];

  v66 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v3 andName:@"ThreadRadioPowerProfileStats"];
  v67 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v66];
  v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DetailedPowerProfileStatistics];
  v162 = v67;
  [v67 setObject:v68 forKeyedSubscript:@"ErrorCode"];

  v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DetailedPowerProfileStatistics];
  [v5 setObject:v69 forKeyedSubscript:@"ErrorCode"];

  if (DetailedPowerProfileStatistics)
  {
    v70 = v160;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v71 = objc_opt_class();
      v170[0] = MEMORY[0x277D85DD0];
      v170[1] = 3221225472;
      v170[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_882;
      v170[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v170[4] = v71;
      if (qword_2811F4540 != -1)
      {
        dispatch_once(&qword_2811F4540, v170);
      }

      if (byte_2811F4397 == 1)
      {
        v159 = v66;
        detailedPowerProfileStatistics2 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: could not read enhanced power profile statistics (error: %u)", DetailedPowerProfileStatistics];
        v73 = MEMORY[0x277D3F178];
        v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent6 = [v74 lastPathComponent];
        v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]"];
        [v73 logMessage:detailedPowerProfileStatistics2 fromFile:lastPathComponent6 fromFunction:v76 fromLineNumber:2094];

        v77 = PLLogCommon();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v185 = detailedPowerProfileStatistics2;
          _os_log_debug_impl(&dword_21A4C6000, v77, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v66 = v159;
      }
    }

    if (DetailedPowerProfileStatistics == 7)
    {
      workQueue3 = [(PLOperator *)self workQueue];
      v169[0] = MEMORY[0x277D85DD0];
      v169[1] = 3221225472;
      v169[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_886;
      v169[3] = &unk_2782591D0;
      v169[4] = self;
      dispatch_async(workQueue3, v169);
    }
  }

  else
  {
    monotonicDate3 = [MEMORY[0x277CBEAA8] monotonicDate];
    v112 = self->_lastPowerEntryDate;
    self->_lastPowerEntryDate = monotonicDate3;

    v113 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 1)];
    [v5 setObject:v113 forKeyedSubscript:@"TXPower"];

    v114 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 2)];
    [v5 setObject:v114 forKeyedSubscript:@"RXPower"];

    v115 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 3)];
    [v5 setObject:v115 forKeyedSubscript:@"SleepPower"];

    v116 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 4)];
    [v5 setObject:v116 forKeyedSubscript:@"OtherPower"];

    v117 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 1)];
    v70 = v160;
    [v160 setObject:v117 forKeyedSubscript:@"TXPower"];

    v118 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 2)];
    [v160 setObject:v118 forKeyedSubscript:@"RXPower"];

    v119 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 3)];
    [v160 setObject:v119 forKeyedSubscript:@"SleepPower"];

    v120 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 4)];
    [v160 setObject:v120 forKeyedSubscript:@"OtherPower"];

    v121 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 38)];
    [v160 setObject:v121 forKeyedSubscript:@"iPACounter"];

    v122 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 39)];
    [v160 setObject:v122 forKeyedSubscript:@"ePACounter"];

    v123 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 9)];
    [v160 setObject:v123 forKeyedSubscript:@"ActiveDuration"];

    v124 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 27)];
    [v160 setObject:v124 forKeyedSubscript:@"DeepSleepDuration"];

    v125 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 10)];
    [v160 setObject:v125 forKeyedSubscript:@"D3SuspendDuration"];

    v126 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 11)];
    [v160 setObject:v126 forKeyedSubscript:@"PerstDuration"];

    v127 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 13)];
    [v160 setObject:v127 forKeyedSubscript:@"L0Duration"];

    v128 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 17)];
    [v160 setObject:v128 forKeyedSubscript:@"L11Duration"];

    v129 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 19)];
    [v160 setObject:v129 forKeyedSubscript:@"L12Duration"];

    v130 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 21)];
    [v160 setObject:v130 forKeyedSubscript:@"L2Duration"];

    v131 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 28)];
    [v160 setObject:v131 forKeyedSubscript:@"BTTimestamp"];

    v132 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 43)];
    [v160 setObject:v132 forKeyedSubscript:@"epaTransmitPercentage"];

    v133 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 41)];
    [v160 setObject:v133 forKeyedSubscript:@"txbfTransmitPercentage"];

    v134 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 44)];
    [v160 setObject:v134 forKeyedSubscript:@"txbfEpaTransmitPercentage"];

    v135 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 42)];
    [v160 setObject:v135 forKeyedSubscript:@"mrcReceivePercentage"];

    v136 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 40)];
    [v160 setObject:v136 forKeyedSubscript:@"lpScanReceivePercentage"];

    if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
    {
      v137 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 45)];
      [v160 setObject:v137 forKeyedSubscript:@"rxScanPercentage"];

      v138 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 46)];
      [v160 setObject:v138 forKeyedSubscript:@"mainCoreELNAOnPercentage"];

      v139 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 47)];
      [v160 setObject:v139 forKeyedSubscript:@"mainCoreELNAOffPercentage"];

      v140 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 48)];
      [v160 setObject:v140 forKeyedSubscript:@"scanCoreELNAOnPercentage"];

      v141 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 49)];
      [v160 setObject:v141 forKeyedSubscript:@"scanCoreELNAOffPercentage"];

      v142 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 46)];
      [v5 setObject:v142 forKeyedSubscript:@"mainCoreELNAOnPercentage"];

      v143 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 47)];
      [v5 setObject:v143 forKeyedSubscript:@"mainCoreELNAOffPercentage"];

      v144 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 48)];
      [v5 setObject:v144 forKeyedSubscript:@"scanCoreELNAOnPercentage"];

      v145 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 49)];
      [v5 setObject:v145 forKeyedSubscript:@"scanCoreELNAOffPercentage"];
    }

    if (+[PLBluetoothAgent areBluetooth5GAndThreadRadioLoggingEnabled])
    {
      v146 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 54)];
      [v160 setObject:v146 forKeyedSubscript:@"iPA5GCounter"];

      v147 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 55)];
      [v160 setObject:v147 forKeyedSubscript:@"ePA5GCounter"];

      v148 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 112)];
      [v160 setObject:v148 forKeyedSubscript:@"txbf5GTransmitPercentage"];

      v149 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 113)];
      [v160 setObject:v149 forKeyedSubscript:@"mrc5GReceivePercentage"];

      v150 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 114)];
      [v160 setObject:v150 forKeyedSubscript:@"epa5GTransmitPercentage"];

      v151 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 115)];
      [v160 setObject:v151 forKeyedSubscript:@"txbf5GEpaTransmitPercentage"];

      v152 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63[29]];
      [v160 setObject:v152 forKeyedSubscript:@"Duration5GTx"];

      v153 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63[30]];
      [v160 setObject:v153 forKeyedSubscript:@"Duration5GRx"];
    }

    if (+[PLBluetoothAgent areBluetooth5GAndThreadRadioLoggingEnabled])
    {
      v154 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 28)];
      [v162 setObject:v154 forKeyedSubscript:@"RadioTimestamp"];

      v155 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 50)];
      [v162 setObject:v155 forKeyedSubscript:@"m154TransmitPercentage"];

      v156 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 51)];
      [v162 setObject:v156 forKeyedSubscript:@"m154ReceivePercentage"];

      v157 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 52)];
      [v162 setObject:v157 forKeyedSubscript:@"iPAThreadCounter"];

      v158 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 53)];
      [v162 setObject:v158 forKeyedSubscript:@"ePAThreadCounter"];

      [(PLOperator *)self logEntry:v162];
    }

    [(PLOperator *)self logEntry:v160];
  }

  free(v63);

  v4 = v165;
LABEL_62:
  [(PLOperator *)self logEntry:v5];
  if (!DetailedPowerProfileStatistics)
  {
    goto LABEL_66;
  }

LABEL_67:
}

- (void)logEventForwardDeviceState
{
  v12 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"DeviceState"];
  modulePowered = [(PLBluetoothAgent *)self modulePowered];
  isDiscoverable = [(PLBluetoothAgent *)self isDiscoverable];
  isConnected = [(PLBluetoothAgent *)self isConnected];
  isConnectable = [(PLBluetoothAgent *)self isConnectable];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:modulePowered];
  [v7 setObject:v8 forKeyedSubscript:@"DevicePowered"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:isDiscoverable];
  [v7 setObject:v9 forKeyedSubscript:@"DeviceDiscoverable"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:isConnected];
  [v7 setObject:v10 forKeyedSubscript:@"DeviceConnected"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:isConnectable];
  [v7 setObject:v11 forKeyedSubscript:@"DeviceConnectable"];

  [(PLOperator *)self logEntry:v7];
}

- (BOOL)isDiscoverable
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  [(PLBluetoothAgent *)self localBluetoothDevice];
  Discoverable = BTLocalDeviceGetDiscoverable();
  if (Discoverable)
  {
    v3 = Discoverable;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __34__PLBluetoothAgent_isDiscoverable__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v4;
      if (qword_2811F4438 != -1)
      {
        dispatch_once(&qword_2811F4438, block);
      }

      if (byte_2811F4376 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power ERROR: BTLocalDeviceGetDiscoverable: failed! %d\n", v3];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent isDiscoverable]"];
        [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1093];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v15 = v5;
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  return v13 == -1;
}

- (BOOL)isConnected
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  [(PLBluetoothAgent *)self localBluetoothDevice];
  ConnectionStatus = BTLocalDeviceGetConnectionStatus();
  if (ConnectionStatus)
  {
    v3 = ConnectionStatus;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __31__PLBluetoothAgent_isConnected__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v4;
      if (qword_2811F4440 != -1)
      {
        dispatch_once(&qword_2811F4440, block);
      }

      if (byte_2811F4377 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power ERROR: BTLocalDeviceGetConnectionStatus: failed! %d\n", v3];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent isConnected]"];
        [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1113];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v15 = v5;
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  return v13 == -1;
}

- (BOOL)isConnectable
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  [(PLBluetoothAgent *)self localBluetoothDevice];
  Connectable = BTLocalDeviceGetConnectable();
  if (Connectable)
  {
    v3 = Connectable;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33__PLBluetoothAgent_isConnectable__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v4;
      if (qword_2811F4448 != -1)
      {
        dispatch_once(&qword_2811F4448, block);
      }

      if (byte_2811F4378 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power ERROR: BTLocalDeviceGetConnectable: failed! %d\n", v3];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent isConnectable]"];
        [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1136];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v15 = v5;
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  return v13 == -1;
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLBluetoothAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Magnet";
  entryEventPointDefinitionMagnet = [self entryEventPointDefinitionMagnet];
  v7[1] = @"MagnetOperation";
  v8[0] = entryEventPointDefinitionMagnet;
  entryEventPointDefinitionMagnetOperation = [self entryEventPointDefinitionMagnetOperation];
  v8[1] = entryEventPointDefinitionMagnetOperation;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)entryEventPointDefinitionMagnet
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v16 = *MEMORY[0x277D3F568];
  v17 = &unk_282C1BF58;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[0] = v13;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"clientname";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v15[0] = commonTypeDict_StringFormat;
  v14[1] = @"inputBytesPerSecond";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat;
  v14[2] = @"packetsPerSecond";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v15[2] = commonTypeDict_IntegerFormat2;
  v14[3] = @"sessionId";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v15[3] = commonTypeDict_StringFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v11;
}

+ (id)entryEventPointDefinitionMagnetOperation
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v12 = *MEMORY[0x277D3F568];
  v13 = &unk_282C1BF58;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v2;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"state";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10[1] = @"value";
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
  v41[2] = *MEMORY[0x277D85DE8];
  v40[0] = @"PairedDevices";
  v37 = *MEMORY[0x277D3F4E8];
  v2 = v37;
  v35 = *MEMORY[0x277D3F568];
  v3 = v35;
  v36 = &unk_282C1BF58;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v39[0] = v26;
  v38 = *MEMORY[0x277D3F540];
  v4 = v38;
  v33[0] = @"PairedDevicesName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v34[0] = commonTypeDict_StringFormat;
  v33[1] = @"PairedDevicesDefaultName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v34[1] = commonTypeDict_StringFormat2;
  v33[2] = @"PairedDevicesMac";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v34[2] = commonTypeDict_StringFormat3;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v39[1] = v19;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v37 count:2];
  v40[1] = @"DeviceState";
  v41[0] = v18;
  v29 = v3;
  v30 = &unk_282C1BF68;
  v31[0] = v2;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v31[1] = v4;
  v32[0] = v17;
  v27[0] = @"DevicePowered";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]4 commonTypeDict_BoolFormat];
  v28[0] = commonTypeDict_BoolFormat;
  v27[1] = @"DeviceDiscoverable";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_BoolFormat];
  v28[1] = commonTypeDict_BoolFormat2;
  v27[2] = @"DeviceConnectable";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_BoolFormat];
  v28[2] = commonTypeDict_BoolFormat3;
  v27[3] = @"DeviceConnected";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_BoolFormat];
  v28[3] = commonTypeDict_BoolFormat4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v32[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v41[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];

  return v14;
}

+ (id)entryEventBackwardDefinitions
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    kPLWiFiClassOfDevice = [MEMORY[0x277D3F208] kPLWiFiClassOfDevice];
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Wifi/BT Chipset for Device is  = %d\n", buf, 8u);
  }

  if ([self shouldLogMarconi])
  {
    v28[0] = @"DetailedPowerProfileStats";
    entryEventBackwardDefinitionDetailedPowerProfileStats = [self entryEventBackwardDefinitionDetailedPowerProfileStats];
    v29[0] = entryEventBackwardDefinitionDetailedPowerProfileStats;
    v28[1] = @"HCITrace";
    entryEventBackwardDefinitionHCITrace = [self entryEventBackwardDefinitionHCITrace];
    v29[1] = entryEventBackwardDefinitionHCITrace;
    v28[2] = @"PowerProfileStats";
    entryEventBackwardDefinitionPowerProfileStats = [self entryEventBackwardDefinitionPowerProfileStats];
    v29[2] = entryEventBackwardDefinitionPowerProfileStats;
    v28[3] = @"BTWakeupVSE";
    entryEventBackwardWakeupVSE = [self entryEventBackwardWakeupVSE];
    v29[3] = entryEventBackwardWakeupVSE;
    v28[4] = @"WirelessProxScanDStats";
    entryEventBackwardDefinitionWirelessProxScanDStats = [self entryEventBackwardDefinitionWirelessProxScanDStats];
    v29[4] = entryEventBackwardDefinitionWirelessProxScanDStats;
    v28[5] = @"CBDiscoveryStats";
    entryEventBackwardDefinitionCBDiscoveryStats = [self entryEventBackwardDefinitionCBDiscoveryStats];
    v29[5] = entryEventBackwardDefinitionCBDiscoveryStats;
    v28[6] = @"A2DPPower";
    entryEventBackwardDefinitionA2DPPower = [self entryEventBackwardDefinitionA2DPPower];
    v29[6] = entryEventBackwardDefinitionA2DPPower;
    v28[7] = @"HFPPower";
    entryEventBackwardDefinitionAHFPPower = [self entryEventBackwardDefinitionAHFPPower];
    v29[7] = entryEventBackwardDefinitionAHFPPower;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:8];
LABEL_5:

LABEL_9:
    goto LABEL_10;
  }

  if (([MEMORY[0x277D3F208] isWiFiClass:1004007] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004010))
  {
    v26[0] = @"HFPPower";
    entryEventBackwardDefinitionDetailedPowerProfileStats = [self entryEventBackwardDefinitionAHFPPower];
    v27[0] = entryEventBackwardDefinitionDetailedPowerProfileStats;
    v26[1] = @"A2DPPower";
    entryEventBackwardDefinitionHCITrace = [self entryEventBackwardDefinitionA2DPPower];
    v27[1] = entryEventBackwardDefinitionHCITrace;
    v26[2] = @"HCITrace";
    entryEventBackwardDefinitionPowerProfileStats = [self entryEventBackwardDefinitionHCITrace];
    v27[2] = entryEventBackwardDefinitionPowerProfileStats;
    v26[3] = @"MaxDutyCycle";
    entryEventBackwardWakeupVSE = [self entryEventBackwardDefinitionMaxDutyCycle];
    v27[3] = entryEventBackwardWakeupVSE;
    v26[4] = @"PowerProfileStats";
    entryEventBackwardDefinitionWirelessProxScanDStats = [self entryEventBackwardDefinitionPowerProfileStats];
    v27[4] = entryEventBackwardDefinitionWirelessProxScanDStats;
    v26[5] = @"WirelessProxScanDStats";
    entryEventBackwardDefinitionCBDiscoveryStats = [self entryEventBackwardDefinitionWirelessProxScanDStats];
    v27[5] = entryEventBackwardDefinitionCBDiscoveryStats;
    v26[6] = @"CBDiscoveryStats";
    entryEventBackwardDefinitionA2DPPower = [self entryEventBackwardDefinitionCBDiscoveryStats];
    v27[6] = entryEventBackwardDefinitionA2DPPower;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:7];
    goto LABEL_9;
  }

  if ([self shouldLogEnhancedStats])
  {
    v24[0] = @"PowerProfileStats";
    entryEventBackwardDefinitionDetailedPowerProfileStats = [self entryEventBackwardDefinitionPowerProfileStats];
    v25[0] = entryEventBackwardDefinitionDetailedPowerProfileStats;
    v24[1] = @"EnhancedPowerProfileStats";
    entryEventBackwardDefinitionHCITrace = [self entryEventBackwardDefinitionEnhancedPowerProfileStats];
    v25[1] = entryEventBackwardDefinitionHCITrace;
    v24[2] = @"ThreadRadioPowerProfileStats";
    entryEventBackwardDefinitionPowerProfileStats = [self entryEventBackwardDefinitionThreadRadioPowerProfileStats];
    v25[2] = entryEventBackwardDefinitionPowerProfileStats;
    v24[3] = @"HCITrace";
    entryEventBackwardWakeupVSE = [self entryEventBackwardDefinitionHCITrace];
    v25[3] = entryEventBackwardWakeupVSE;
    v24[4] = @"WirelessProxScanDStats";
    entryEventBackwardDefinitionWirelessProxScanDStats = [self entryEventBackwardDefinitionWirelessProxScanDStats];
    v25[4] = entryEventBackwardDefinitionWirelessProxScanDStats;
    v24[5] = @"CBDiscoveryStats";
    entryEventBackwardDefinitionCBDiscoveryStats2 = [self entryEventBackwardDefinitionCBDiscoveryStats];
    v25[5] = entryEventBackwardDefinitionCBDiscoveryStats2;
    v24[6] = @"A2DPPower";
    entryEventBackwardDefinitionA2DPPower2 = [self entryEventBackwardDefinitionA2DPPower];
    v25[6] = entryEventBackwardDefinitionA2DPPower2;
    v24[7] = @"HFPPower";
    entryEventBackwardDefinitionAHFPPower2 = [self entryEventBackwardDefinitionAHFPPower];
    v25[7] = entryEventBackwardDefinitionAHFPPower2;
    v24[8] = @"BTWakeupVSE";
    entryEventBackwardWakeupVSE2 = [self entryEventBackwardWakeupVSE];
    v25[8] = entryEventBackwardWakeupVSE2;
    v24[9] = @"MaxDutyCycle";
    entryEventBackwardDefinitionMaxDutyCycle = [self entryEventBackwardDefinitionMaxDutyCycle];
    v25[9] = entryEventBackwardDefinitionMaxDutyCycle;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:10];
  }

  else
  {
    if ([self shouldLogEnhancedStatsPerCore])
    {
      v22[0] = @"PowerProfileStats";
      entryEventBackwardDefinitionDetailedPowerProfileStats = [self entryEventBackwardDefinitionPowerProfileStats];
      v23[0] = entryEventBackwardDefinitionDetailedPowerProfileStats;
      v22[1] = @"EnhancedPowerStatsPerCore";
      entryEventBackwardDefinitionHCITrace = [self entryEventBackwardDefinitionEnhancedPowerStatsPerCore];
      v23[1] = entryEventBackwardDefinitionHCITrace;
      v22[2] = @"HCITrace";
      entryEventBackwardDefinitionPowerProfileStats = [self entryEventBackwardDefinitionHCITrace];
      v23[2] = entryEventBackwardDefinitionPowerProfileStats;
      v22[3] = @"WirelessProxScanDStats";
      entryEventBackwardWakeupVSE = [self entryEventBackwardDefinitionWirelessProxScanDStats];
      v23[3] = entryEventBackwardWakeupVSE;
      v22[4] = @"CBDiscoveryStats";
      entryEventBackwardDefinitionWirelessProxScanDStats = [self entryEventBackwardDefinitionCBDiscoveryStats];
      v23[4] = entryEventBackwardDefinitionWirelessProxScanDStats;
      v22[5] = @"A2DPPower";
      entryEventBackwardDefinitionCBDiscoveryStats = [self entryEventBackwardDefinitionA2DPPower];
      v23[5] = entryEventBackwardDefinitionCBDiscoveryStats;
      v22[6] = @"HFPPower";
      entryEventBackwardDefinitionA2DPPower = [self entryEventBackwardDefinitionAHFPPower];
      v23[6] = entryEventBackwardDefinitionA2DPPower;
      v22[7] = @"BTWakeupVSE";
      entryEventBackwardDefinitionAHFPPower = [self entryEventBackwardWakeupVSE];
      v23[7] = entryEventBackwardDefinitionAHFPPower;
      v22[8] = @"MaxDutyCycle";
      entryEventBackwardDefinitionMaxDutyCycle2 = [self entryEventBackwardDefinitionMaxDutyCycle];
      v23[8] = entryEventBackwardDefinitionMaxDutyCycle2;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:9];

      goto LABEL_5;
    }

    v20[0] = @"HCITrace";
    entryEventBackwardDefinitionDetailedPowerProfileStats = [self entryEventBackwardDefinitionHCITrace];
    v21[0] = entryEventBackwardDefinitionDetailedPowerProfileStats;
    v20[1] = @"MaxDutyCycle";
    entryEventBackwardDefinitionHCITrace = [self entryEventBackwardDefinitionMaxDutyCycle];
    v21[1] = entryEventBackwardDefinitionHCITrace;
    v20[2] = @"PowerProfileStats";
    entryEventBackwardDefinitionPowerProfileStats = [self entryEventBackwardDefinitionPowerProfileStats];
    v21[2] = entryEventBackwardDefinitionPowerProfileStats;
    v20[3] = @"WirelessProxScanDStats";
    entryEventBackwardWakeupVSE = [self entryEventBackwardDefinitionWirelessProxScanDStats];
    v21[3] = entryEventBackwardWakeupVSE;
    v20[4] = @"CBDiscoveryStats";
    entryEventBackwardDefinitionWirelessProxScanDStats = [self entryEventBackwardDefinitionCBDiscoveryStats];
    v21[4] = entryEventBackwardDefinitionWirelessProxScanDStats;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];
  }

LABEL_10:

  return v12;
}

+ (id)entryEventBackwardDefinitionAHFPPower
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v19[0] = *MEMORY[0x277D3F568];
  v19[1] = v2;
  v20[0] = &unk_282C1BF58;
  v20[1] = @"log";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"HFPDuration";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v18[0] = commonTypeDict_IntegerFormat;
  v17[1] = @"HFPpercantageePA1";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v18[1] = commonTypeDict_IntegerFormat2;
  v17[2] = @"HFPpercentageiPA1";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v18[2] = commonTypeDict_IntegerFormat3;
  v17[3] = @"HFPpercantageePA2";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v18[3] = commonTypeDict_IntegerFormat4;
  v17[4] = @"HFPpercentageiPA2";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v18[4] = commonTypeDict_IntegerFormat5;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v22[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  return v12;
}

+ (id)entryEventBackwardDefinitionA2DPPower
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v15[0] = *MEMORY[0x277D3F568];
  v15[1] = v2;
  v16[0] = &unk_282C1BF58;
  v16[1] = @"log";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v3;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"A2DPDuration";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v14[0] = commonTypeDict_IntegerFormat;
  v13[1] = @"A2DPpercantageePA";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v14[1] = commonTypeDict_IntegerFormat2;
  v13[2] = @"A2DPpercantageiPA";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v14[2] = commonTypeDict_IntegerFormat3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v11;
}

+ (id)entryEventBackwardDefinitionDetailedPowerProfileStats
{
  v40[2] = *MEMORY[0x277D85DE8];
  v39[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v37[0] = *MEMORY[0x277D3F568];
  v37[1] = v2;
  v38[0] = &unk_282C1BF58;
  v38[1] = @"log";
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v40[0] = v34;
  v39[1] = *MEMORY[0x277D3F540];
  v35[0] = @"durationTotal";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v36[0] = commonTypeDict_IntegerFormat;
  v35[1] = @"durationActive";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v36[1] = commonTypeDict_IntegerFormat2;
  v35[2] = @"durationIdle";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v36[2] = commonTypeDict_IntegerFormat3;
  v35[3] = @"durationSleep";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v36[3] = commonTypeDict_IntegerFormat4;
  v35[4] = @"disableCounter";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v36[4] = commonTypeDict_IntegerFormat5;
  v35[5] = @"iPATxBT";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v36[5] = commonTypeDict_IntegerFormat6;
  v35[6] = @"iPATxLE";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v36[6] = commonTypeDict_IntegerFormat7;
  v35[7] = @"ePATxBT";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v36[7] = commonTypeDict_IntegerFormat8;
  v35[8] = @"ePATxLE";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v36[8] = commonTypeDict_IntegerFormat9;
  v35[9] = @"connectedRxBT";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v36[9] = commonTypeDict_IntegerFormat10;
  v35[10] = @"connectedRxLE";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v36[10] = commonTypeDict_IntegerFormat11;
  v35[11] = @"scanRxBT";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v36[11] = commonTypeDict_IntegerFormat12;
  v35[12] = @"scanRxLE";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v36[12] = commonTypeDict_IntegerFormat13;
  v35[13] = @"totalPHYCal";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v36[13] = commonTypeDict_IntegerFormat14;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:14];
  v40[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];

  return v12;
}

+ (id)entryEventBackwardDefinitionHCITrace
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1BF78;
  v12[1] = @"log";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"HCIRawData";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RawDataFormat = [mEMORY[0x277D3F198] commonTypeDict_RawDataFormat];
  v10 = commonTypeDict_RawDataFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventBackwardDefinitionMaxDutyCycle
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_282C1BF58;
  v14[1] = @"log";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"Count";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"Duration";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v12[1] = commonTypeDict_IntegerFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventBackwardDefinitionPowerProfileStats
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v19[0] = *MEMORY[0x277D3F568];
  v19[1] = v2;
  v20[0] = &unk_282C1BF68;
  v20[1] = @"log";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"ErrorCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v18[0] = commonTypeDict_IntegerFormat;
  v17[1] = @"TXPower";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v18[1] = commonTypeDict_IntegerFormat2;
  v17[2] = @"RXPower";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v18[2] = commonTypeDict_IntegerFormat3;
  v17[3] = @"SleepPower";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v18[3] = commonTypeDict_IntegerFormat4;
  v17[4] = @"OtherPower";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v18[4] = commonTypeDict_IntegerFormat5;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v22[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  return v12;
}

+ (id)entryEventBackwardDefinitionEnhancedPowerProfileStats
{
  v70[21] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB38]);
  v69[0] = @"ErrorCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v70[0] = commonTypeDict_IntegerFormat;
  v69[1] = @"TXPower";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v70[1] = commonTypeDict_IntegerFormat2;
  v69[2] = @"RXPower";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v70[2] = commonTypeDict_IntegerFormat3;
  v69[3] = @"SleepPower";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v70[3] = commonTypeDict_IntegerFormat4;
  v69[4] = @"OtherPower";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v70[4] = commonTypeDict_IntegerFormat5;
  v69[5] = @"iPACounter";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v70[5] = commonTypeDict_IntegerFormat6;
  v69[6] = @"ePACounter";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v70[6] = commonTypeDict_IntegerFormat7;
  v69[7] = @"ActiveDuration";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v70[7] = commonTypeDict_IntegerFormat8;
  v69[8] = @"D3SuspendDuration";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v70[8] = commonTypeDict_IntegerFormat9;
  v69[9] = @"PerstDuration";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v70[9] = commonTypeDict_IntegerFormat10;
  v69[10] = @"DeepSleepDuration";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v70[10] = commonTypeDict_IntegerFormat11;
  v69[11] = @"L0Duration";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v70[11] = commonTypeDict_IntegerFormat12;
  v69[12] = @"L11Duration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v70[12] = commonTypeDict_IntegerFormat13;
  v69[13] = @"L12Duration";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v70[13] = commonTypeDict_IntegerFormat14;
  v69[14] = @"L2Duration";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v70[14] = commonTypeDict_IntegerFormat15;
  v69[15] = @"BTTimestamp";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v70[15] = commonTypeDict_IntegerFormat16;
  v69[16] = @"epaTransmitPercentage";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v70[16] = commonTypeDict_IntegerFormat17;
  v69[17] = @"txbfTransmitPercentage";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v70[17] = commonTypeDict_IntegerFormat18;
  v69[18] = @"txbfEpaTransmitPercentage";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v70[18] = commonTypeDict_IntegerFormat19;
  v69[19] = @"mrcReceivePercentage";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v70[19] = commonTypeDict_IntegerFormat20;
  v69[20] = @"lpScanReceivePercentage";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v70[20] = commonTypeDict_IntegerFormat21;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:21];
  v12 = [v2 initWithDictionary:v11];

  getScanCoreKeys = [self getScanCoreKeys];
  [v12 addEntriesFromDictionary:getScanCoreKeys];

  getBluetooth5GKeys = [self getBluetooth5GKeys];
  [v12 addEntriesFromDictionary:getBluetooth5GKeys];

  if ([self areBluetooth5GAndThreadRadioLoggingEnabled])
  {
    v67[0] = *MEMORY[0x277D3F4E8];
    v65 = *MEMORY[0x277D3F568];
    v66 = &unk_282C1BF88;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v67[1] = *MEMORY[0x277D3F540];
    v68[0] = v15;
    v68[1] = v12;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v68;
    v18 = v67;
LABEL_8:
    v20 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:2];

    goto LABEL_9;
  }

  if ([MEMORY[0x277D3F208] isWiFiClass:1004015])
  {
    v63[0] = *MEMORY[0x277D3F4E8];
    v61 = *MEMORY[0x277D3F568];
    v62 = &unk_282C1BF98;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v63[1] = *MEMORY[0x277D3F540];
    v64[0] = v15;
    v64[1] = v12;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v64;
    v18 = v63;
    goto LABEL_8;
  }

  if (([MEMORY[0x277D3F208] isWiFiClass:1004013] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004014))
  {
    v59[0] = *MEMORY[0x277D3F4E8];
    v19 = *MEMORY[0x277D3F548];
    v57[0] = *MEMORY[0x277D3F568];
    v57[1] = v19;
    v58[0] = &unk_282C1BFA8;
    v58[1] = @"log";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
    v59[1] = *MEMORY[0x277D3F540];
    v60[0] = v15;
    v60[1] = v12;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v60;
    v18 = v59;
    goto LABEL_8;
  }

  v20 = MEMORY[0x277CBEC10];
LABEL_9:

  return v20;
}

+ (id)getScanCoreKeys
{
  v15[5] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isUsingAnOlderWifiChip])
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    v14[0] = @"rxScanPercentage";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v15[0] = commonTypeDict_IntegerFormat;
    v14[1] = @"mainCoreELNAOnPercentage";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v15[1] = commonTypeDict_IntegerFormat2;
    v14[2] = @"mainCoreELNAOffPercentage";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v15[2] = commonTypeDict_IntegerFormat3;
    v14[3] = @"scanCoreELNAOnPercentage";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v15[3] = commonTypeDict_IntegerFormat4;
    v14[4] = @"scanCoreELNAOffPercentage";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v15[4] = commonTypeDict_IntegerFormat5;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
  }

  return v2;
}

+ (id)getBluetooth5GKeys
{
  v21[8] = *MEMORY[0x277D85DE8];
  if ([self areBluetooth5GAndThreadRadioLoggingEnabled])
  {
    v20[0] = @"iPA5GCounter";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v21[0] = commonTypeDict_IntegerFormat;
    v20[1] = @"ePA5GCounter";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v21[1] = commonTypeDict_IntegerFormat2;
    v20[2] = @"txbf5GTransmitPercentage";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v21[2] = commonTypeDict_IntegerFormat3;
    v20[3] = @"mrc5GReceivePercentage";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v21[3] = commonTypeDict_IntegerFormat4;
    v20[4] = @"epa5GTransmitPercentage";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v21[4] = commonTypeDict_IntegerFormat5;
    v20[5] = @"txbf5GEpaTransmitPercentage";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v21[5] = commonTypeDict_IntegerFormat6;
    v20[6] = @"Duration5GTx";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v21[6] = commonTypeDict_IntegerFormat7;
    v20[7] = @"Duration5GRx";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v21[7] = commonTypeDict_IntegerFormat8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:8];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

+ (id)entryEventBackwardDefinitionThreadRadioPowerProfileStats
{
  v26[6] = *MEMORY[0x277D85DE8];
  v15 = objc_alloc(MEMORY[0x277CBEB38]);
  v25[0] = @"ErrorCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v26[0] = commonTypeDict_IntegerFormat;
  v25[1] = @"RadioTimestamp";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v26[1] = commonTypeDict_IntegerFormat2;
  v25[2] = @"m154TransmitPercentage";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v26[2] = commonTypeDict_IntegerFormat3;
  v25[3] = @"m154ReceivePercentage";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v26[3] = commonTypeDict_IntegerFormat4;
  v25[4] = @"iPAThreadCounter";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v26[4] = commonTypeDict_IntegerFormat5;
  v25[5] = @"ePAThreadCounter";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v26[5] = commonTypeDict_IntegerFormat6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];
  v16 = [v15 initWithDictionary:v11];

  if ([self areBluetooth5GAndThreadRadioLoggingEnabled])
  {
    v23[0] = *MEMORY[0x277D3F4E8];
    v21 = *MEMORY[0x277D3F568];
    v22 = &unk_282C1BF58;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v23[1] = *MEMORY[0x277D3F540];
    v24[0] = v12;
    v24[1] = v16;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  return v13;
}

+ (id)entryEventBackwardDefinitionEnhancedPowerStatsPerCore
{
  v104[45] = *MEMORY[0x277D85DE8];
  v63 = objc_alloc(MEMORY[0x277CBEB38]);
  v103[0] = @"ErrorCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v104[0] = commonTypeDict_IntegerFormat;
  v103[1] = @"BTTimestamp";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v104[1] = commonTypeDict_IntegerFormat2;
  v103[2] = @"ActiveDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v104[2] = commonTypeDict_IntegerFormat3;
  v103[3] = @"MainCoreTXPower";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v104[3] = commonTypeDict_IntegerFormat4;
  v103[4] = @"MainCoreRXPower";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v104[4] = commonTypeDict_IntegerFormat5;
  v103[5] = @"MainCoreSleepPower";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v104[5] = commonTypeDict_IntegerFormat6;
  v103[6] = @"MainCoreOtherPower";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v104[6] = commonTypeDict_IntegerFormat7;
  v103[7] = @"MainCoreRxScanPercentage";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v104[7] = commonTypeDict_IntegerFormat8;
  v103[8] = @"MainCoreElnaOnPercentage";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v104[8] = commonTypeDict_IntegerFormat9;
  v103[9] = @"MainCoreElnaOffPercentage";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v104[9] = commonTypeDict_IntegerFormat10;
  v103[10] = @"MainCoreMrcRxPercentage";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v104[10] = commonTypeDict_IntegerFormat11;
  v103[11] = @"MainCoreIpaTxPercentage";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v104[11] = commonTypeDict_IntegerFormat12;
  v103[12] = @"MainCoreEpaTxPercentage";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v104[12] = commonTypeDict_IntegerFormat13;
  v103[13] = @"MainCoreTxbfTxPercentage";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v104[13] = commonTypeDict_IntegerFormat14;
  v103[14] = @"MainCoreEpaTxbfTxPercentage";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v104[14] = commonTypeDict_IntegerFormat15;
  v103[15] = @"MainCoreM154TransmitPercentage";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v104[15] = commonTypeDict_IntegerFormat16;
  v103[16] = @"MainCoreM154ReceivePercentage";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v104[16] = commonTypeDict_IntegerFormat17;
  v103[17] = @"SecondaryCoreTXPower";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v104[17] = commonTypeDict_IntegerFormat18;
  v103[18] = @"SecondaryCoreRXPower";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v104[18] = commonTypeDict_IntegerFormat19;
  v103[19] = @"SecondaryCoreSleepPower";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v104[19] = commonTypeDict_IntegerFormat20;
  v103[20] = @"SecondaryCoreOtherPower";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v104[20] = commonTypeDict_IntegerFormat21;
  v103[21] = @"SecondaryCoreRxScanPercentage";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
  v104[21] = commonTypeDict_IntegerFormat22;
  v103[22] = @"SecondaryCoreElnaOnPercentage";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
  v104[22] = commonTypeDict_IntegerFormat23;
  v103[23] = @"SecondaryCoreElnaOffPercentage";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
  v104[23] = commonTypeDict_IntegerFormat24;
  v103[24] = @"SecondaryCoreMrcRxPercentage";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat];
  v104[24] = commonTypeDict_IntegerFormat25;
  v103[25] = @"SecondaryCoreIpaTxPercentage";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat];
  v104[25] = commonTypeDict_IntegerFormat26;
  v103[26] = @"SecondaryCoreEpaTxPercentage";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat27 = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
  v104[26] = commonTypeDict_IntegerFormat27;
  v103[27] = @"SecondaryCoreTxbfTxPercentage";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat28 = [mEMORY[0x277D3F198]28 commonTypeDict_IntegerFormat];
  v104[27] = commonTypeDict_IntegerFormat28;
  v103[28] = @"SecondaryCoreEpaTxbfTxPercentage";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat29 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
  v104[28] = commonTypeDict_IntegerFormat29;
  v103[29] = @"SecondaryCoreM154TransmitPercentage";
  mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat30 = [mEMORY[0x277D3F198]30 commonTypeDict_IntegerFormat];
  v104[29] = commonTypeDict_IntegerFormat30;
  v103[30] = @"SecondaryCoreM154ReceivePercentage";
  mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat31 = [mEMORY[0x277D3F198]31 commonTypeDict_IntegerFormat];
  v104[30] = commonTypeDict_IntegerFormat31;
  v103[31] = @"ScanCoreTXPower";
  mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat32 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat];
  v104[31] = commonTypeDict_IntegerFormat32;
  v103[32] = @"ScanCoreRXPower";
  mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat33 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat];
  v104[32] = commonTypeDict_IntegerFormat33;
  v103[33] = @"ScanCoreSleepPower";
  mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat34 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat];
  v104[33] = commonTypeDict_IntegerFormat34;
  v103[34] = @"ScanCoreOtherPower";
  mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat35 = [mEMORY[0x277D3F198]35 commonTypeDict_IntegerFormat];
  v104[34] = commonTypeDict_IntegerFormat35;
  v103[35] = @"ScanCoreRxScanPercentage";
  mEMORY[0x277D3F198]36 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat36 = [mEMORY[0x277D3F198]36 commonTypeDict_IntegerFormat];
  v104[35] = commonTypeDict_IntegerFormat36;
  v103[36] = @"ScanCoreElnaOnPercentage";
  mEMORY[0x277D3F198]37 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat37 = [mEMORY[0x277D3F198]37 commonTypeDict_IntegerFormat];
  v104[36] = commonTypeDict_IntegerFormat37;
  v103[37] = @"ScanCoreElnaOffPercentage";
  mEMORY[0x277D3F198]38 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat38 = [mEMORY[0x277D3F198]38 commonTypeDict_IntegerFormat];
  v104[37] = commonTypeDict_IntegerFormat38;
  v103[38] = @"ScanCoreMrcRxPercentage";
  mEMORY[0x277D3F198]39 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat39 = [mEMORY[0x277D3F198]39 commonTypeDict_IntegerFormat];
  v104[38] = commonTypeDict_IntegerFormat39;
  v103[39] = @"ScanCoreIpaTxPercentage";
  mEMORY[0x277D3F198]40 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat40 = [mEMORY[0x277D3F198]40 commonTypeDict_IntegerFormat];
  v104[39] = commonTypeDict_IntegerFormat40;
  v103[40] = @"ScanCoreEpaTxPercentage";
  mEMORY[0x277D3F198]41 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat41 = [mEMORY[0x277D3F198]41 commonTypeDict_IntegerFormat];
  v104[40] = commonTypeDict_IntegerFormat41;
  v103[41] = @"ScanCoreTxbfTxPercentage";
  mEMORY[0x277D3F198]42 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat42 = [mEMORY[0x277D3F198]42 commonTypeDict_IntegerFormat];
  v104[41] = commonTypeDict_IntegerFormat42;
  v103[42] = @"ScanCoreEpaTxbfTxPercentage";
  mEMORY[0x277D3F198]43 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat43 = [mEMORY[0x277D3F198]43 commonTypeDict_IntegerFormat];
  v104[42] = commonTypeDict_IntegerFormat43;
  v103[43] = @"ScanCoreM154TransmitPercentage";
  mEMORY[0x277D3F198]44 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat44 = [mEMORY[0x277D3F198]44 commonTypeDict_IntegerFormat];
  v104[43] = commonTypeDict_IntegerFormat44;
  v103[44] = @"ScanCoreM154ReceivePercentage";
  mEMORY[0x277D3F198]45 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat45 = [mEMORY[0x277D3F198]45 commonTypeDict_IntegerFormat];
  v104[44] = commonTypeDict_IntegerFormat45;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:45];
  v64 = [v63 initWithDictionary:v11];

  if ([self shouldLogEnhancedStatsPerCore])
  {
    v101[0] = *MEMORY[0x277D3F4E8];
    v99 = *MEMORY[0x277D3F568];
    v100 = &unk_282C1BF58;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    v101[1] = *MEMORY[0x277D3F540];
    v102[0] = v12;
    v102[1] = v64;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  return v13;
}

+ (id)entryEventBackwardWakeupVSE
{
  v29[2] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v26[0] = *MEMORY[0x277D3F568];
  v26[1] = v2;
  v27[0] = &unk_282C1BFB8;
  v27[1] = @"log";
  v3 = *MEMORY[0x277D3F4F0];
  v26[2] = *MEMORY[0x277D3F4A0];
  v26[3] = v3;
  v27[2] = MEMORY[0x277CBEC38];
  v27[3] = &unk_282C140D0;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v29[0] = v23;
  v28[1] = *MEMORY[0x277D3F540];
  v24[0] = @"VSEType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v25[0] = commonTypeDict_IntegerFormat;
  v24[1] = @"VSEReasonCode";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v25[1] = commonTypeDict_IntegerFormat2;
  v24[2] = @"VSEReasonString";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v25[2] = commonTypeDict_StringFormat;
  v24[3] = @"VSERaw";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RawDataFormat = [mEMORY[0x277D3F198]4 commonTypeDict_RawDataFormat];
  v25[3] = commonTypeDict_RawDataFormat;
  v24[4] = @"WakeEventType";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v25[4] = commonTypeDict_IntegerFormat3;
  v24[5] = @"BundleID";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat_withBundleID];
  v25[5] = commonTypeDict_StringFormat_withBundleID;
  v24[6] = @"DeviceName";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v25[6] = commonTypeDict_StringFormat2;
  v24[7] = @"PeerType";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v25[7] = commonTypeDict_IntegerFormat4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:8];
  v29[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  return v13;
}

+ (id)entryEventBackwardDefinitionWirelessProxScanDStats
{
  v16[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3F598];
  v15[0] = *MEMORY[0x277D3F5A8];
  v15[1] = v2;
  v16[0] = &unk_282C10AE8;
  v16[1] = &unk_282C10B00;
  v15[2] = *MEMORY[0x277D3F5A0];
  v16[2] = &unk_282C10B18;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v13[0] = *MEMORY[0x277D3F4E8];
  v4 = *MEMORY[0x277D3F548];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v4;
  v12[0] = &unk_282C1BFC8;
  v12[1] = @"log";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v5;
  v13[1] = *MEMORY[0x277D3F540];
  v9[0] = @"ClientScanDuration";
  v9[1] = @"ClientAdvDuration";
  v10[0] = v3;
  v10[1] = v3;
  v9[2] = @"ClientScanConfig";
  v10[2] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventBackwardDefinitionCBDiscoveryStats
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v23[0] = *MEMORY[0x277D3F568];
  v23[1] = v2;
  v24[0] = &unk_282C1BF58;
  v24[1] = @"log";
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v26[0] = v20;
  v25[1] = *MEMORY[0x277D3F540];
  v21[0] = @"apID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v22[0] = commonTypeDict_StringFormat;
  v21[1] = @"apIX";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v22[1] = commonTypeDict_IntegerFormat;
  v21[2] = @"sonC";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v22[2] = commonTypeDict_IntegerFormat2;
  v21[3] = @"sofC";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v22[3] = commonTypeDict_IntegerFormat3;
  v21[4] = @"sonD";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v22[4] = commonTypeDict_IntegerFormat4;
  v21[5] = @"sofD";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v22[5] = commonTypeDict_IntegerFormat5;
  v21[6] = @"dsFl";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v22[6] = commonTypeDict_IntegerFormat6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];
  v26[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

  return v12;
}

+ (id)entryEventIntervalDefinitions
{
  v29[1] = *MEMORY[0x277D85DE8];
  v28 = @"ConnectedDevices";
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_282C1BFD8;
  v25[1] = MEMORY[0x277CBEC38];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[0] = v21;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"Name";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v23[0] = commonTypeDict_StringFormat;
  v22[1] = @"MAC";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v23[1] = commonTypeDict_StringFormat2;
  v22[2] = @"timestampEnd";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v23[2] = commonTypeDict_DateFormat;
  v22[3] = @"DeviceType";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v23[3] = commonTypeDict_IntegerFormat;
  v22[4] = @"DefaultName";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v23[4] = commonTypeDict_StringFormat3;
  v22[5] = @"IsRequest";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]6 commonTypeDict_BoolFormat];
  v23[5] = commonTypeDict_BoolFormat;
  v22[6] = @"BundleID";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat_withBundleID];
  v23[6] = commonTypeDict_StringFormat_withBundleID;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v27[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v29[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];

  return v12;
}

- (PLBluetoothAgent)init
{
  v10.receiver = self;
  v10.super_class = PLBluetoothAgent;
  v2 = [(PLAgent *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->session = 0;
    v2->localBluetoothDevice = 0;
    btHardwareChipset = v2->_btHardwareChipset;
    v2->_btHardwareChipset = 0;

    v3->_logCount = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    ENScanCache = v3->_ENScanCache;
    v3->_ENScanCache = dictionary;

    v7 = objc_alloc_init(MEMORY[0x277D49638]);
    beaconManager = v3->_beaconManager;
    v3->_beaconManager = v7;

    [(PLBluetoothAgent *)v3 attachSession];
  }

  return v3;
}

- (void)initOperatorDependancies
{
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke;
  v50[3] = &unk_2782597E8;
  v50[4] = self;
  v3 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v50];
  batteryLevelChanged = self->_batteryLevelChanged;
  self->_batteryLevelChanged = v3;

  if (([MEMORY[0x277D3F180] debugEnabled] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "isDevBoard"))
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2;
    v49[3] = &unk_2782597E8;
    v49[4] = self;
    v5 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v49];
    sbcChanged = self->_sbcChanged;
    self->_sbcChanged = v5;
  }

  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    v7 = objc_alloc(MEMORY[0x277D3F270]);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_548;
    v48[3] = &unk_27825A1D8;
    v48[4] = self;
    v8 = [v7 initWithOperator:self withRegistration:&unk_282C17720 withBlock:v48];
    [(PLBluetoothAgent *)self setLeConnectionListener:v8];
  }

  if (([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "internalBuild") && objc_msgSend(MEMORY[0x277D3F208], "isWatch"))
  {
    v9 = objc_alloc(MEMORY[0x277D3F270]);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_564;
    v47[3] = &unk_27825A1D8;
    v47[4] = self;
    v10 = [v9 initWithOperator:self withRegistration:&unk_282C17748 withBlock:v47];
    [(PLBluetoothAgent *)self setBtHCIListener:v10];
  }

  v11 = objc_alloc(MEMORY[0x277D3F270]);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_573;
  v46[3] = &unk_27825A1D8;
  v46[4] = self;
  v12 = [v11 initWithOperator:self withRegistration:&unk_282C17770 withBlock:v46];
  [(PLBluetoothAgent *)self setWirelessProxListener:v12];
  v13 = objc_alloc(MEMORY[0x277D3F270]);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_585;
  v45[3] = &unk_27825A1D8;
  v45[4] = self;
  v14 = [v13 initWithOperator:self withRegistration:&unk_282C17798 withBlock:v45];
  [(PLBluetoothAgent *)self setCBDiscoveryListener:v14];
  v15 = objc_alloc(MEMORY[0x277D3F270]);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_597;
  v44[3] = &unk_27825A1D8;
  v44[4] = self;
  v16 = [v15 initWithOperator:self withRegistration:&unk_282C177C0 withBlock:v44];
  [(PLBluetoothAgent *)self setENListener:v16];

  if (([MEMORY[0x277D3F208] isWiFiClass:1004007] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004010) & 1) != 0 || +[PLBluetoothAgent shouldLogEnhancedStats](PLBluetoothAgent, "shouldLogEnhancedStats") || +[PLBluetoothAgent shouldLogEnhancedStatsPerCore](PLBluetoothAgent, "shouldLogEnhancedStatsPerCore") || +[PLBluetoothAgent shouldLogMarconi](PLBluetoothAgent, "shouldLogMarconi"))
  {
    v17 = objc_alloc(MEMORY[0x277D3F270]);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_616;
    v43[3] = &unk_27825A1D8;
    v43[4] = self;
    v18 = [v17 initWithOperator:self withRegistration:&unk_282C177E8 withBlock:v43];
    [(PLBluetoothAgent *)self setBtA2DPListener:v18];
    v19 = objc_alloc(MEMORY[0x277D3F270]);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_625;
    v42[3] = &unk_27825A1D8;
    v42[4] = self;
    v20 = [v19 initWithOperator:self withRegistration:&unk_282C17810 withBlock:v42];
    [(PLBluetoothAgent *)self setBtHFPListener:v20];
  }

  if (+[PLBluetoothAgent shouldLogMarconi](PLBluetoothAgent, "shouldLogMarconi") || +[PLBluetoothAgent shouldLogEnhancedStats](PLBluetoothAgent, "shouldLogEnhancedStats") || ([MEMORY[0x277D3F208] isARMMac] & 1) != 0 || +[PLBluetoothAgent shouldLogEnhancedStatsPerCore](PLBluetoothAgent, "shouldLogEnhancedStatsPerCore"))
  {
    v21 = objc_alloc(MEMORY[0x277D3F270]);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_634;
    v41[3] = &unk_27825A1D8;
    v41[4] = self;
    v22 = [v21 initWithOperator:self withRegistration:&unk_282C17838 withBlock:v41];
    [(PLBluetoothAgent *)self setBtHCIVSEListener:v22];
  }

  v23 = dispatch_time(0, 2000000000);
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_635;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_after(v23, workQueue, block);

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
  [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:47 withChildNodeNameToWeight:&unk_282C17860 withStartDate:monotonicDate];

  if ([MEMORY[0x277D3F208] isiPhone])
  {
    mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0]2 createDistributionEventForwardWithDistributionID:45 withChildNodeNameToWeight:&unk_282C17888 withStartDate:monotonicDate];
  }

  v28 = objc_alloc(MEMORY[0x277D3F1F0]);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_656;
  v39[3] = &unk_2782597E8;
  v39[4] = self;
  v29 = [v28 initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:v39];
  thermalMonitorListener = self->_thermalMonitorListener;
  self->_thermalMonitorListener = v29;

  v31 = objc_alloc(MEMORY[0x277D3F270]);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_664;
  v38[3] = &unk_27825A1D8;
  v38[4] = self;
  v32 = [v31 initWithOperator:self withRegistration:&unk_282C178B0 withBlock:v38];
  magnetListener = self->_magnetListener;
  self->_magnetListener = v32;

  if ([MEMORY[0x277D3F180] fullMode])
  {
    v34 = objc_alloc(MEMORY[0x277D3F270]);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_676;
    v37[3] = &unk_27825A1D8;
    v37[4] = self;
    v35 = [v34 initWithOperator:self withRegistration:&unk_282C178D8 withBlock:v37];
    magnetOperationListener = self->_magnetOperationListener;
    self->_magnetOperationListener = v35;
  }
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_549;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v7;
    if (qword_2811F43C8 != -1)
    {
      dispatch_once(&qword_2811F43C8, &block);
    }

    if (_MergedGlobals_1_21 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"got callback! %@", v6, block, v15, v16, v17, v18];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:873];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventIntervalLeConnectedDevices:v6 withRequest:0];
}

void *__44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_549(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_21 = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_565;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v7;
    if (qword_2811F43D0 != -1)
    {
      dispatch_once(&qword_2811F43D0, &block);
    }

    if (byte_2811F4369 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"got callback! %@", v6, block, v15, v16, v17, v18];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:885];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventIntervalHCIRawData:v6];
}

void *__44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_565(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4369 = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_573(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_574;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v7;
    if (qword_2811F43D8 != -1)
    {
      dispatch_once(&qword_2811F43D8, &block);
    }

    if (byte_2811F436A == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"WirelessProximityListener got callback! %@", v6, block, v15, v16, v17, v18];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:895];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventBackwardWirelessProximity:v6];
}

void *__44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_574(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F436A = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_585(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_586;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v7;
    if (qword_2811F43E0 != -1)
    {
      dispatch_once(&qword_2811F43E0, &block);
    }

    if (byte_2811F436B == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"CBDiscoveryScanListener got callback! %@", v6, block, v15, v16, v17, v18];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:904];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventBackwardCBDiscovery:v6];
}

void *__44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_586(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F436B = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_597(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_598;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F43E8 != -1)
    {
      dispatch_once(&qword_2811F43E8, block);
    }

    if (byte_2811F436C == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"EN BT Status Listener got callback! %@", v6];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:912];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v14 = [v6 objectForKeyedSubscript:@"CTScanCount"];
  v15 = [*(a1 + 32) ENScanCache];
  [v15 setObject:v14 forKeyedSubscript:@"Count"];

  v16 = [v6 objectForKeyedSubscript:@"CTScanDuration"];
  v17 = [*(a1 + 32) ENScanCache];
  [v17 setObject:v16 forKeyedSubscript:@"Duration"];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_604;
    v33 = &__block_descriptor_40_e5_v8__0lu32l8;
    v34 = v18;
    if (qword_2811F43F0 != -1)
    {
      dispatch_once(&qword_2811F43F0, &v30);
    }

    if (byte_2811F436D == 1)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [*(a1 + 32) ENScanCache];
      v21 = [v20 objectForKeyedSubscript:@"Count"];
      v22 = [*(a1 + 32) ENScanCache];
      v23 = [v22 objectForKeyedSubscript:@"Duration"];
      v24 = [v19 stringWithFormat:@"Updated Cache to %@ %@!", v21, v23, v30, v31, v32, v33, v34];

      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v27 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke_2"];
      [v25 logMessage:v24 fromFile:v27 fromFunction:v28 fromLineNumber:915];

      v29 = PLLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v37 = v24;
        _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_598(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F436C = result;
  return result;
}

void *__44__PLBluetoothAgent_initOperatorDependancies__block_invoke_604(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F436D = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_616(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_617;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v7;
    if (qword_2811F43F8 != -1)
    {
      dispatch_once(&qword_2811F43F8, &block);
    }

    if (byte_2811F436E == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"got callback! %@", v6, block, v15, v16, v17, v18];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:924];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventBackwardA2DP:v6];
}

void *__44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_617(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F436E = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_625(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_626;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v7;
    if (qword_2811F4400 != -1)
    {
      dispatch_once(&qword_2811F4400, &block);
    }

    if (byte_2811F436F == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"got callback! %@", v6, block, v15, v16, v17, v18];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:932];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventBackwardHFP:v6];
}

void *__44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_626(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F436F = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogBluetooth();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "HostWakeReport payload: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventIntervalWakeVSE:v6];
}

void *__44__PLBluetoothAgent_initOperatorDependancies__block_invoke_635(uint64_t a1)
{
  result = [*(a1 + 32) isConnected];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 logEventIntervalConnectedDevices];
  }

  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_656(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_3;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v4;
    if (qword_2811F4408 != -1)
    {
      dispatch_once(&qword_2811F4408, &block);
    }

    if (byte_2811F4370 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Notification from ThermalMonitor: %@", v3, block, v14, v15, v16, v17];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke_2"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:972];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = +[PLBluetoothAgent shouldLogEnhancedStatsPerCore];
  v12 = *(a1 + 32);
  if (v11)
  {
    [v12 logEventBackwardPowerStatsPerCore];
  }

  else
  {
    [v12 logEventBackwardPowerProfileStats];
  }
}

void *__44__PLBluetoothAgent_initOperatorDependancies__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4370 = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_665;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v7;
    if (qword_2811F4410 != -1)
    {
      dispatch_once(&qword_2811F4410, &block);
    }

    if (byte_2811F4371 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Magnet Listener Payload %@", v6, block, v15, v16, v17, v18];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:989];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointMagnet:v6];
}

void *__44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_665(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4371 = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_676(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_677;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v7;
    if (qword_2811F4418 != -1)
    {
      dispatch_once(&qword_2811F4418, &block);
    }

    if (byte_2811F4372 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Magnet Operation Listener Payload %@", v6, block, v15, v16, v17, v18];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:998];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointMagnetOperation:v6];
}

void *__44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_677(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4372 = result;
  return result;
}

- (void)logEventPointMagnet:(id)magnet
{
  v4 = *MEMORY[0x277D3F5E8];
  magnetCopy = magnet;
  v7 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v4 andName:@"Magnet"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:magnetCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointMagnetOperation:(id)operation
{
  v4 = *MEMORY[0x277D3F5E8];
  operationCopy = operation;
  v7 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v4 andName:@"MagnetOperation"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:operationCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  self->keepSessionAlive = 0;
  if (self->session)
  {
    v3 = BTSessionDetachWithQueue();
    if (v3)
    {
      v4 = v3;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v5 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __27__PLBluetoothAgent_dealloc__block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v5;
        if (qword_2811F4420 != -1)
        {
          dispatch_once(&qword_2811F4420, block);
        }

        if (byte_2811F4373 == 1)
        {
          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not detach the Bluetooth session. (error: %d)", v4];
          v7 = MEMORY[0x277D3F178];
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          lastPathComponent = [v8 lastPathComponent];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent dealloc]"];
          [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1034];

          v11 = PLLogCommon();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v15 = v6;
            _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }
  }

  v12.receiver = self;
  v12.super_class = PLBluetoothAgent;
  [(PLAgent *)&v12 dealloc];
}

void *__27__PLBluetoothAgent_dealloc__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4373 = result;
  return result;
}

void *__40__PLBluetoothAgent_localBluetoothDevice__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4374 = result;
  return result;
}

void *__33__PLBluetoothAgent_modulePowered__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4375 = result;
  return result;
}

void *__34__PLBluetoothAgent_isDiscoverable__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4376 = result;
  return result;
}

void *__31__PLBluetoothAgent_isConnected__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4377 = result;
  return result;
}

void *__33__PLBluetoothAgent_isConnectable__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4378 = result;
  return result;
}

- (void)attachSession
{
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__PLBluetoothAgent_attachSession__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __33__PLBluetoothAgent_attachSession__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 48) = 1;
  if (!*(*(a1 + 32) + 56))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v2 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33__PLBluetoothAgent_attachSession__block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v2;
      if (qword_2811F4450 != -1)
      {
        dispatch_once(&qword_2811F4450, block);
      }

      if (byte_2811F4379 == 1)
      {
        v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempting to attach to session"];
        v4 = MEMORY[0x277D3F178];
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v6 = [v5 lastPathComponent];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent attachSession]_block_invoke"];
        [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:1156];

        v8 = PLLogCommon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v25 = v3;
          _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [v9 stringWithFormat:@"PowerLogV2-%@-%u", v11, getpid()];

    [v12 cStringUsingEncoding:4];
    v13 = [*(a1 + 32) workQueue];
    v14 = BTSessionAttachWithQueue();

    if (v14 && [MEMORY[0x277D3F180] debugEnabled])
    {
      v15 = objc_opt_class();
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __33__PLBluetoothAgent_attachSession__block_invoke_711;
      v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v22[4] = v15;
      if (qword_2811F4458 != -1)
      {
        dispatch_once(&qword_2811F4458, v22);
      }

      if (byte_2811F437A == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Could not attach the Bluetooth session. (error: %d)", v14];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v19 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent attachSession]_block_invoke_2"];
        [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:1161];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v25 = v16;
          _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }
}

void *__33__PLBluetoothAgent_attachSession__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4379 = result;
  return result;
}

void *__33__PLBluetoothAgent_attachSession__block_invoke_711(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F437A = result;
  return result;
}

- (void)sessionAttached:(BTSessionImpl *)attached withResult:(int)result
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = xmmword_282B5B0E0;
  v28 = qword_282B5B0F0;
  if (result)
  {
    v5 = *&result;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v6 = objc_opt_class();
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __47__PLBluetoothAgent_sessionAttached_withResult___block_invoke;
      v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v26[4] = v6;
      if (qword_2811F4460 != -1)
      {
        dispatch_once(&qword_2811F4460, v26);
      }

      if (byte_2811F437B == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not attach session. (error: %d)", v5];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent sessionAttached:withResult:]"];
        [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:1173];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v30 = v7;
          _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    if (self->session != attached)
    {
      self->session = attached;
    }

    [(PLBluetoothAgent *)self localBluetoothDevice];
    v13 = BTLocalDeviceAddCallbacks();
    if (v13)
    {
      v14 = v13;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v15 = objc_opt_class();
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __47__PLBluetoothAgent_sessionAttached_withResult___block_invoke_721;
        v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v25[4] = v15;
        if (qword_2811F4468 != -1)
        {
          dispatch_once(&qword_2811F4468, v25);
        }

        if (byte_2811F437C == 1)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not add local device callbacks. (error: %d)", v14];
          v17 = MEMORY[0x277D3F178];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          lastPathComponent2 = [v18 lastPathComponent];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent sessionAttached:withResult:]"];
          [v17 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:1183];

          v21 = PLLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v30 = v16;
            _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }

    v22 = dispatch_time(0, 2000000000);
    workQueue = [(PLOperator *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLBluetoothAgent_sessionAttached_withResult___block_invoke_725;
    block[3] = &unk_2782591D0;
    block[4] = self;
    dispatch_after(v22, workQueue, block);
  }
}

void *__47__PLBluetoothAgent_sessionAttached_withResult___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F437B = result;
  return result;
}

void *__47__PLBluetoothAgent_sessionAttached_withResult___block_invoke_721(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F437C = result;
  return result;
}

uint64_t __47__PLBluetoothAgent_sessionAttached_withResult___block_invoke_725(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  block[5] = 0;
  [*(a1 + 32) localBluetoothDevice];
  v2 = BTLocalDeviceRegisterForPowerProfileStatistics();
  if (v2)
  {
    v3 = v2;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__PLBluetoothAgent_sessionAttached_withResult___block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v4;
      if (qword_2811F4470 != -1)
      {
        dispatch_once(&qword_2811F4470, block);
      }

      if (byte_2811F437D == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not register for Power notifications. (error: %d)", v3];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v8 = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent sessionAttached:withResult:]_block_invoke"];
        [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1193];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v5;
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 176);
  *(v11 + 176) = 0;

  return [*(a1 + 32) log];
}

void *__47__PLBluetoothAgent_sessionAttached_withResult___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F437D = result;
  return result;
}

- (void)sessionTerminated:(BTSessionImpl *)terminated withResult:(int)result
{
  location[3] = *MEMORY[0x277D85DE8];
  self->session = 0;
  self->localBluetoothDevice = 0;
  if (self->keepSessionAlive)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__PLBluetoothAgent_sessionTerminated_withResult___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (qword_2811F4478 != -1)
      {
        dispatch_once(&qword_2811F4478, block);
      }

      if (byte_2811F437E == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Connection to bluetoothd lost - attempting a reconnect in %d seconds", 30];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent sessionTerminated:withResult:]"];
        [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1211];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", location, 0xCu);
        }
      }
    }

    objc_initWeak(location, self);
    v12 = objc_alloc(MEMORY[0x277D3F250]);
    v13 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:30.0];
    workQueue = [(PLOperator *)self workQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__PLBluetoothAgent_sessionTerminated_withResult___block_invoke_733;
    v16[3] = &unk_27825A810;
    objc_copyWeak(&v17, location);
    v15 = [v12 initWithFireDate:v13 withInterval:0 withTolerance:0 repeats:workQueue withUserInfo:v16 withQueue:0.0 withBlock:0.0];

    [v15 arm];
    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }
}

void *__49__PLBluetoothAgent_sessionTerminated_withResult___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F437E = result;
  return result;
}

void __49__PLBluetoothAgent_sessionTerminated_withResult___block_invoke_733(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained attachSession];
}

- (void)bluetoothSessionEvent:(int)event onSession:(BTSessionImpl *)session withResult:(int)result
{
  v20 = *MEMORY[0x277D85DE8];
  if (event == 2)
  {

    [(PLBluetoothAgent *)self sessionTerminated:session withResult:*&result];
  }

  else
  {
    v5 = *&event;
    if (event)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v6 = objc_opt_class();
        block = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __63__PLBluetoothAgent_bluetoothSessionEvent_onSession_withResult___block_invoke;
        v16 = &__block_descriptor_40_e5_v8__0lu32l8;
        v17 = v6;
        if (qword_2811F4480 != -1)
        {
          dispatch_once(&qword_2811F4480, &block);
        }

        if (byte_2811F437F == 1)
        {
          v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected Bluetooth session event. (event: %d)", v5, block, v14, v15, v16, v17];
          v8 = MEMORY[0x277D3F178];
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          lastPathComponent = [v9 lastPathComponent];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent bluetoothSessionEvent:onSession:withResult:]"];
          [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:1235];

          v12 = PLLogCommon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v19 = v7;
            _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }

    else
    {

      [(PLBluetoothAgent *)self sessionAttached:session withResult:*&result];
    }
  }
}

void *__63__PLBluetoothAgent_bluetoothSessionEvent_onSession_withResult___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F437F = result;
  return result;
}

- (void)bluetoothDeviceEvent:(int)event onDevice:(BTLocalDeviceImpl *)device withResult:(int)result
{
  v5 = *&event;
  v41 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PLBluetoothAgent_bluetoothDeviceEvent_onDevice_withResult___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F4488 != -1)
    {
      dispatch_once(&qword_2811F4488, block);
    }

    if (byte_2811F4380 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth callback code: %u", v5];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent bluetoothDeviceEvent:onDevice:withResult:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:1240];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v40 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v5 >= 4)
  {
    if (v5 == 4)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v21 = objc_opt_class();
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __61__PLBluetoothAgent_bluetoothDeviceEvent_onDevice_withResult___block_invoke_743;
        v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v37[4] = v21;
        if (qword_2811F4490 != -1)
        {
          dispatch_once(&qword_2811F4490, v37);
        }

        if (byte_2811F4381 == 1)
        {
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Pairing status changed"];
          v23 = MEMORY[0x277D3F178];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          lastPathComponent2 = [v24 lastPathComponent];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent bluetoothDeviceEvent:onDevice:withResult:]"];
          [v23 logMessage:v22 fromFile:lastPathComponent2 fromFunction:v26 fromLineNumber:1252];

          v27 = PLLogCommon();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v40 = v22;
            _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      if ([MEMORY[0x277D3F180] fullMode])
      {
        [(PLBluetoothAgent *)self logEventForwardPairedDevices];
      }
    }

    else if (v5 == 5)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v14 = objc_opt_class();
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __61__PLBluetoothAgent_bluetoothDeviceEvent_onDevice_withResult___block_invoke_749;
        v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v36[4] = v14;
        if (qword_2811F4498 != -1)
        {
          dispatch_once(&qword_2811F4498, v36);
        }

        if (byte_2811F4382 == 1)
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Connection status changed"];
          v16 = MEMORY[0x277D3F178];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          lastPathComponent3 = [v17 lastPathComponent];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent bluetoothDeviceEvent:onDevice:withResult:]"];
          [v16 logMessage:v15 fromFile:lastPathComponent3 fromFunction:v19 fromLineNumber:1258];

          v20 = PLLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v40 = v15;
            _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      if ([MEMORY[0x277D3F180] fullMode])
      {
        [(PLBluetoothAgent *)self logEventIntervalConnectedDevices];
      }
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v28 = objc_opt_class();
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __61__PLBluetoothAgent_bluetoothDeviceEvent_onDevice_withResult___block_invoke_755;
      v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v35[4] = v28;
      if (qword_2811F44A0 != -1)
      {
        dispatch_once(&qword_2811F44A0, v35);
      }

      if (byte_2811F4383 == 1)
      {
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Unwanted event code for bluetooth callback: %u", v5];
        v30 = MEMORY[0x277D3F178];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent4 = [v31 lastPathComponent];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent bluetoothDeviceEvent:onDevice:withResult:]"];
        [v30 logMessage:v29 fromFile:lastPathComponent4 fromFunction:v33 fromLineNumber:1264];

        v34 = PLLogCommon();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v40 = v29;
          _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    [(PLBluetoothAgent *)self logEventForwardDeviceState];
  }
}

void *__61__PLBluetoothAgent_bluetoothDeviceEvent_onDevice_withResult___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4380 = result;
  return result;
}

void *__61__PLBluetoothAgent_bluetoothDeviceEvent_onDevice_withResult___block_invoke_743(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4381 = result;
  return result;
}

void *__61__PLBluetoothAgent_bluetoothDeviceEvent_onDevice_withResult___block_invoke_749(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4382 = result;
  return result;
}

void *__61__PLBluetoothAgent_bluetoothDeviceEvent_onDevice_withResult___block_invoke_755(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4383 = result;
  return result;
}

- (void)logEventForwardPairedDevices
{
  v111 = *MEMORY[0x277D85DE8];
  v60 = 0;
  memset(v61, 0, sizeof(v61));
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLBluetoothAgent *)self localBluetoothDevice];
  PairedDevices = BTLocalDeviceGetPairedDevices();
  v5 = 0x277D3F000uLL;
  v6 = MEMORY[0x277D3F5D0];
  v7 = 0x277D3F000uLL;
  v52 = monotonicDate;
  if (PairedDevices)
  {
    v8 = PairedDevices;
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_29;
    }

    v9 = objc_opt_class();
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke;
    v59[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v59[4] = v9;
    if (qword_2811F44A8 != -1)
    {
      dispatch_once(&qword_2811F44A8, v59);
    }

    if (byte_2811F4384 != 1)
    {
      goto LABEL_29;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power ERROR: BTLocalDeviceGetPairedDevices: failed! %d\n", v8];
    v11 = MEMORY[0x277D3F178];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventForwardPairedDevices]"];
    [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:1386];

    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v95) = 138412290;
      *(&v95 + 4) = v10;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", &v95, 0xCu);
    }

    monotonicDate = v52;
    v7 = 0x277D3F000uLL;
    v6 = MEMORY[0x277D3F5D0];
LABEL_28:
    v5 = 0x277D3F000uLL;
LABEL_29:
    if ([*(v5 + 384) debugEnabled])
    {
      v39 = objc_opt_class();
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke_777;
      v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v55[4] = v39;
      if (qword_2811F44C0 != -1)
      {
        dispatch_once(&qword_2811F44C0, v55);
      }

      if (byte_2811F4387 == 1)
      {
        v40 = v7;
        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"No BT paired device, nothing to log"];
        v42 = MEMORY[0x277D3F178];
        v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent2 = [v43 lastPathComponent];
        v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventForwardPairedDevices]"];
        [v42 logMessage:v41 fromFile:lastPathComponent2 fromFunction:v45 fromLineNumber:1415];

        v46 = PLLogCommon();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v95) = 138412290;
          *(&v95 + 4) = v41;
          _os_log_debug_impl(&dword_21A4C6000, v46, OS_LOG_TYPE_DEBUG, "%@", &v95, 0xCu);
        }

        monotonicDate = v52;
        v7 = v40;
        v6 = MEMORY[0x277D3F5D0];
      }
    }

    v47 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*v6 andName:@"PairedDevices"];
    v48 = [objc_alloc(*(v7 + 400)) initWithEntryKey:v47];
    [v48 setIsErrorEntry:1];
    [v48 setObject:@"No BT paired device forKeyedSubscript:{nothing to log", @"__PLEntryErrorString__"}];
    [(PLOperator *)self logEntry:v48];

    goto LABEL_37;
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  memset(v78, 0, sizeof(v78));
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke_765;
    v58[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v58[4] = v17;
    if (qword_2811F44B0 != -1)
    {
      dispatch_once(&qword_2811F44B0, v58);
    }

    if (byte_2811F4385 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth: No devices paired"];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      lastPathComponent3 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventForwardPairedDevices]"];
      [v19 logMessage:v18 fromFile:lastPathComponent3 fromFunction:v22 fromLineNumber:1392];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v63 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      monotonicDate = v52;
      v7 = 0x277D3F000;
      v6 = MEMORY[0x277D3F5D0];
    }
  }

  if (!v60)
  {
    goto LABEL_28;
  }

  v51 = &v49;
  v24 = 0;
  v25 = *v6;
  v53 = v57;
  v54 = v25;
  *&v16 = 138412290;
  v50 = v16;
  do
  {
    BTDeviceGetAddressString();
    BTDeviceGetDefaultName();
    BTDeviceGetName();
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v26 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v57[0] = __48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke_771;
      v57[1] = &__block_descriptor_40_e5_v8__0lu32l8;
      v57[2] = v26;
      if (qword_2811F44B8 != -1)
      {
        dispatch_once(&qword_2811F44B8, block);
      }

      if (byte_2811F4386 == 1)
      {
        selfCopy = self;
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth: Local device is paired to device : %s (%s) with mac : %s\n", &v95, &v79, &v64];
        v29 = MEMORY[0x277D3F178];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent4 = [v30 lastPathComponent];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventForwardPairedDevices]"];
        [v29 logMessage:v28 fromFile:lastPathComponent4 fromFunction:v32 fromLineNumber:1399];

        v33 = PLLogCommon();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = v50;
          v63 = v28;
          _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        self = selfCopy;
        monotonicDate = v52;
        v7 = 0x277D3F000uLL;
      }
    }

    v34 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v54 andName:@"PairedDevices"];
    v35 = [objc_alloc(*(v7 + 400)) initWithEntryKey:v34];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v79];
    [v35 setObject:v36 forKeyedSubscript:@"PairedDevicesDefaultName"];

    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v95];
    [v35 setObject:v37 forKeyedSubscript:@"PairedDevicesName"];

    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v64];
    [v35 setObject:v38 forKeyedSubscript:@"PairedDevicesMac"];

    [v35 setEntryDate:monotonicDate];
    [(PLOperator *)self logEntry:v35];
    v64 = 0uLL;
    *&v65 = 0;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;

    ++v24;
  }

  while (v24 < v60);
  v6 = MEMORY[0x277D3F5D0];
  v5 = 0x277D3F000;
  if (!v60)
  {
    goto LABEL_29;
  }

LABEL_37:
}

void *__48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4384 = result;
  return result;
}

void *__48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke_765(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4385 = result;
  return result;
}

void *__48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke_771(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4386 = result;
  return result;
}

void *__48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke_777(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4387 = result;
  return result;
}

- (void)logEventIntervalLeConnectedDevices:(id)devices withRequest:(BOOL)request
{
  requestCopy = request;
  v47 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v7 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ConnectedDevices"];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [v8 setEntryDate:monotonicDate];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:requestCopy];
  [v8 setObject:v10 forKeyedSubscript:@"IsRequest"];

  v11 = [devicesCopy objectForKeyedSubscript:@"PeerType"];
  v12 = v11;
  if (!v11)
  {
    v14 = MEMORY[0x277CCABB0];
    goto LABEL_6;
  }

  intValue = [v11 intValue];
  v14 = MEMORY[0x277CCABB0];
  if (intValue == 2)
  {
    v15 = 42;
    goto LABEL_8;
  }

  if (intValue != 1)
  {
LABEL_6:
    v16 = [v14 numberWithInt:48];
    [v8 setObject:v16 forKeyedSubscript:@"DeviceType"];

    goto LABEL_9;
  }

  v15 = 12;
LABEL_8:
  v17 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  [v8 setObject:v17 forKeyedSubscript:@"DeviceType"];

  [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IsRequest"];
LABEL_9:
  v18 = [devicesCopy objectForKeyedSubscript:@"Connect"];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v20 = [v18 isEqual:v19];

  debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
  if (v20)
  {
    if (debugEnabled)
    {
      v22 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__PLBluetoothAgent_logEventIntervalLeConnectedDevices_withRequest___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v22;
      if (qword_2811F44C8 != -1)
      {
        dispatch_once(&qword_2811F44C8, block);
      }

      if (byte_2811F4388 == 1)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"BTLE disconnect"];
        v24 = MEMORY[0x277D3F178];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent = [v25 lastPathComponent];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalLeConnectedDevices:withRequest:]"];
        [v24 logMessage:v23 fromFile:lastPathComponent fromFunction:v27 fromLineNumber:1462];

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v46 = v23;
          _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v8 setObject:monotonicDate2 forKeyedSubscript:@"timestampEnd"];
  }

  else
  {
    if (debugEnabled)
    {
      v30 = objc_opt_class();
      v39 = MEMORY[0x277D85DD0];
      v40 = 3221225472;
      v41 = __67__PLBluetoothAgent_logEventIntervalLeConnectedDevices_withRequest___block_invoke_792;
      v42 = &__block_descriptor_40_e5_v8__0lu32l8;
      v43 = v30;
      if (qword_2811F44D0 != -1)
      {
        dispatch_once(&qword_2811F44D0, &v39);
      }

      if (byte_2811F4389 == 1)
      {
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"BTLE connect", v39, v40, v41, v42, v43];
        v32 = MEMORY[0x277D3F178];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent2 = [v33 lastPathComponent];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalLeConnectedDevices:withRequest:]"];
        [v32 logMessage:v31 fromFile:lastPathComponent2 fromFunction:v35 fromLineNumber:1466];

        v36 = PLLogCommon();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v46 = v31;
          _os_log_debug_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v8 setObject:0 forKeyedSubscript:{@"timestampEnd", v39, v40, v41, v42, v43}];
  }

  v37 = [devicesCopy objectForKeyedSubscript:@"CBUUID"];
  [v8 setObject:v37 forKeyedSubscript:@"Name"];

  v38 = [devicesCopy objectForKeyedSubscript:@"BundleID"];
  [v8 setObject:v38 forKeyedSubscript:@"BundleID"];

  [(PLOperator *)self logEntry:v8];
}

void *__67__PLBluetoothAgent_logEventIntervalLeConnectedDevices_withRequest___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4388 = result;
  return result;
}

void *__67__PLBluetoothAgent_logEventIntervalLeConnectedDevices_withRequest___block_invoke_792(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4389 = result;
  return result;
}

- (void)logEventIntervalHCIRawData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D3F180];
  dataCopy = data;
  if ([v4 debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLBluetoothAgent_logEventIntervalHCIRawData___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F44D8 != -1)
    {
      dispatch_once(&qword_2811F44D8, block);
    }

    if (byte_2811F438A == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"inside HCI trace callback logEventIntervalHCIRawData"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalHCIRawData:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:1480];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v13 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"HCITrace"];
  v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13];
  v15 = [dataCopy objectForKey:@"HCITrace"];

  [v14 setObject:v15 forKeyedSubscript:@"HCIRawData"];
  [(PLOperator *)self logEntry:v14];
}

void *__47__PLBluetoothAgent_logEventIntervalHCIRawData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F438A = result;
  return result;
}

- (id)advertisingDataDescription:(const char *)description :(unint64_t)a4
{
  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (a4 >= 2)
  {
    do
    {
      v7 = *description;
      if (*description)
      {
        v8 = a4 > v7;
      }

      else
      {
        v8 = 0;
      }

      if (!v8)
      {
        break;
      }

      v9 = *(description + 1);
      if (v9 == 255)
      {
        if (v7 >= 5 && description[2] == 76)
        {
          v11 = 4;
          do
          {
            v12 = v11 + (description[(v11 + 1)] & 0x1F);
            [v6 appendFormat:@" --%@: %d, ", @"LE_adv_type", description[v11]];
            v11 = v12 + 2;
          }

          while (v7 + 1 >= (v12 + 2) + 2);
        }
      }

      else if (v9 == 1 && v7 >= 2)
      {
        [v6 appendFormat:@" Flags: %#04X, ", *(description + 2)];
      }

      description += v7 + 1;
      a4 -= v7 + 1;
    }

    while (a4 > 1);
  }

  return v6;
}

- (void)logEventIntervalWakeVSE:(id)e
{
  v63 = *MEMORY[0x277D85DE8];
  eCopy = e;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__PLBluetoothAgent_logEventIntervalWakeVSE___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F44E0 != -1)
    {
      dispatch_once(&qword_2811F44E0, block);
    }

    if (byte_2811F438B == 1)
    {
      selfCopy = self;
      eCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"wake payload = %@", eCopy];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalWakeVSE:]"];
      [v8 logMessage:eCopy fromFile:lastPathComponent fromFunction:v11 fromLineNumber:1573];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v62 = eCopy;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      self = selfCopy;
    }
  }

  v59 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BTWakeupVSE"];
  v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v59];
  v14 = [eCopy objectForKey:@"WakeEventType"];
  v15 = [eCopy objectForKey:@"HostWakeReport"];
  v16 = [v15 length];
  v58 = eCopy;
  if (v14)
  {
    [v13 setObject:v14 forKeyedSubscript:@"WakeEventType"];
    if ([v14 intValue] >= 1)
    {
      v17 = [eCopy objectForKey:@"BundleID"];
      [v13 setObject:v17 forKeyedSubscript:@"BundleID"];

      v18 = [eCopy objectForKey:@"DeviceName"];
      [v13 setObject:v18 forKeyedSubscript:@"DeviceName"];

      v19 = [eCopy objectForKey:@"PeerType"];
      [v13 setObject:v19 forKeyedSubscript:@"PeerType"];

      [v13 setObject:v15 forKeyedSubscript:@"VSERaw"];
      intValue = [v14 intValue];
      if (intValue > 4)
      {
        if (intValue != 5)
        {
          if (intValue == 8)
          {
            selfCopy2 = self;
            if (v16 <= 1)
            {
              v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:255];
              [v13 setObject:v40 forKeyedSubscript:@"VSEReasonCode"];
            }

            v41 = *[v15 bytes];
            bytes = [v15 bytes];
            v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v41 | (*(bytes + 1) << 8)];
            [v13 setObject:v24 forKeyedSubscript:@"VSEReasonCode"];
            self = selfCopy2;
            goto LABEL_59;
          }

          goto LABEL_87;
        }

        v47 = [MEMORY[0x277CCABB0] numberWithInt:4];
        [v13 setObject:v47 forKeyedSubscript:@"VSEType"];

        v45 = MEMORY[0x277CCABB0];
        v46 = 5000;
      }

      else
      {
        if ((intValue - 1) < 2)
        {
          v21 = [MEMORY[0x277CCABB0] numberWithInt:4];
          [v13 setObject:v21 forKeyedSubscript:@"VSEType"];

          v22 = [MEMORY[0x277CCABB0] numberWithInt:62013];
          [v13 setObject:v22 forKeyedSubscript:@"VSEReasonCode"];

          if (v15)
          {
            v23 = -[PLBluetoothAgent advertisingDataDescription::](self, "advertisingDataDescription::", [v15 bytes], v16);
            v24 = v23;
            v25 = @"undecodable LE ADV";
            if (v23 && [(__CFString *)v23 length])
            {
              v25 = v24;
            }

            v26 = @"VSEReasonString";
            v27 = v13;
            v28 = v25;
            goto LABEL_58;
          }

LABEL_87:
          [(PLOperator *)self logEntry:v13];
          goto LABEL_88;
        }

        if (intValue != 3)
        {
          goto LABEL_87;
        }

        v44 = [MEMORY[0x277CCABB0] numberWithInt:4];
        [v13 setObject:v44 forKeyedSubscript:@"VSEType"];

        v45 = MEMORY[0x277CCABB0];
        v46 = 3000;
      }

      v24 = [v45 numberWithInt:v46];
      v26 = @"VSEReasonCode";
      v27 = v13;
      v28 = v24;
LABEL_58:
      [v27 setObject:v28 forKeyedSubscript:v26];
LABEL_59:

      goto LABEL_87;
    }
  }

  if ([MEMORY[0x277D3F208] isWatch])
  {
    v29 = 2;
  }

  else
  {
    v29 = 0;
  }

  if (v16 < (v29 | 5))
  {
    v30 = 0;
    v31 = 0;
    v32 = 0xFFFFFFFFLL;
LABEL_86:
    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v32];
    [v13 setObject:v55 forKeyedSubscript:@"VSEType"];

    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v30 + 1000 * v31];
    [v13 setObject:v56 forKeyedSubscript:@"VSEReasonCode"];

    [v13 setObject:v15 forKeyedSubscript:@"VSERaw"];
    goto LABEL_87;
  }

  selfCopy3 = self;
  v33 = ([v15 bytes] + v29);
  v32 = *v33;
  v31 = v33[1];
  v30 = v33[3];
  if ([MEMORY[0x277D3F208] isWiFiClass:1004014])
  {
LABEL_23:
    if ([MEMORY[0x277D3F208] isWatch])
    {
      if (v31 == 62 && v16 > (v29 | 8))
      {
        v30 = v33[8];
      }
    }

    isWatch = [MEMORY[0x277D3F208] isWatch];
    if (v32 != 4 || v31 != 62)
    {
      self = selfCopy3;
      goto LABEL_86;
    }

    v36 = &v33[isWatch];
    if (v30 == 2)
    {
      self = selfCopy3;
      if (v16 >= 0x19)
      {
        if (v36[5] != 62)
        {
          goto LABEL_81;
        }

        if (v16 - 18 >= v36[17])
        {
          v37 = v36[17];
        }

        else
        {
          v37 = v16 - 18;
        }

        v38 = v36 + 18;
LABEL_67:
        v48 = [(PLBluetoothAgent *)self advertisingDataDescription:v38];
        v49 = v48;
        if (v48)
        {
          if ([(__CFString *)v48 length])
          {
            v50 = v49;
          }

          else
          {
            v50 = @"undecodable LE ADV";
          }
        }

        else
        {
          v50 = @"undecodable LE ADV";
        }

        [v13 setObject:v50 forKeyedSubscript:@"VSEReasonString"];

        goto LABEL_81;
      }
    }

    else
    {
      self = selfCopy3;
      if (v30 == 13 && v16 >= 0x28)
      {
        if (v36[5] != 62)
        {
          goto LABEL_81;
        }

        if (v16 - 33 >= v36[32])
        {
          v37 = v36[32];
        }

        else
        {
          v37 = v16 - 33;
        }

        v38 = v36 + 33;
        goto LABEL_67;
      }
    }

    if (v16 <= 0xD)
    {
LABEL_85:
      v32 = 4;
      v31 = 62;
      goto LABEL_86;
    }

LABEL_81:
    if ((v36[10] & 0xF0) == 0xA0)
    {
      v52 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v53 = [v13 objectForKeyedSubscript:@"VSEReasonString"];

      if (v53)
      {
        v54 = [v13 objectForKeyedSubscript:@"VSEReasonString"];
        [v52 appendString:v54];
      }

      [v52 appendString:{@" passup ADV, "}];
      [v13 setObject:v52 forKeyedSubscript:@"VSEReasonString"];
    }

    goto LABEL_85;
  }

  if (v32 != 6 || v31 != 0)
  {
    if (v32 == 4 && v31 == 62)
    {
      if (v30 > 0xD || ((1 << v30) & 0x2404) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v32 != 5 || v31 != 14)
    {
      goto LABEL_23;
    }
  }

LABEL_88:
}

void *__44__PLBluetoothAgent_logEventIntervalWakeVSE___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F438B = result;
  return result;
}

- (void)logEventIntervalConnectedDevices
{
  selfCopy = self;
  v101 = &v99;
  v194 = *MEMORY[0x277D85DE8];
  v145 = 0;
  v146 = 0u;
  v147 = 0u;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v102 = objc_opt_new();
  [(PLBluetoothAgent *)selfCopy localBluetoothDevice];
  ConnectedDevices = BTLocalDeviceGetConnectedDevices();
  if (ConnectedDevices)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v3 = objc_opt_class();
      v144[0] = MEMORY[0x277D85DD0];
      v144[1] = 3221225472;
      v144[2] = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke;
      v144[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v144[4] = v3;
      if (qword_2811F44E8 != -1)
      {
        dispatch_once(&qword_2811F44E8, v144);
      }

      if (byte_2811F438C == 1)
      {
        connectedDevices = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power ERROR: BTLocalDeviceGetConnectedDevices: failed! %d\n", ConnectedDevices];
        v5 = MEMORY[0x277D3F178];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent = [v6 lastPathComponent];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]"];
        [v5 logMessage:connectedDevices fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1810];

        v9 = PLLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *v178 = 138412290;
          *&v178[4] = connectedDevices;
          _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", v178, 0xCu);
        }
      }
    }

LABEL_111:
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v90 = objc_opt_class();
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_860;
      v115[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v115[4] = v90;
      if (qword_2811F4518 != -1)
      {
        dispatch_once(&qword_2811F4518, v115);
      }

      if (byte_2811F4392 == 1)
      {
        v91 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nothing changes in BT connected device list"];
        v92 = MEMORY[0x277D3F178];
        v93 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent2 = [v93 lastPathComponent];
        v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]"];
        [v92 logMessage:v91 fromFile:lastPathComponent2 fromFunction:v95 fromLineNumber:1921];

        v96 = PLLogCommon();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
        {
          *v178 = 138412290;
          *&v178[4] = v91;
          _os_log_debug_impl(&dword_21A4C6000, v96, OS_LOG_TYPE_DEBUG, "%@", v178, 0xCu);
        }
      }
    }

    v97 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ConnectedDevices"];
    v98 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v97];
    [v98 setIsErrorEntry:1];
    [v98 setObject:@"Nothing changes in BT connected device list" forKeyedSubscript:@"__PLEntryErrorString__"];
    [(PLOperator *)selfCopy logEntry:v98];

    goto LABEL_119;
  }

  *(&v10 + 1) = 0;
  v193 = 0u;
  v192 = 0u;
  v191 = 0u;
  v190 = 0u;
  v189 = 0u;
  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  v183 = 0u;
  v182 = 0u;
  v181 = 0u;
  v180 = 0u;
  v179 = 0u;
  *v178 = 0u;
  v177 = 0u;
  v176 = 0u;
  v175 = 0u;
  v174 = 0u;
  v173 = 0u;
  v172 = 0u;
  v171 = 0u;
  v170 = 0u;
  v169 = 0u;
  v168 = 0u;
  v167 = 0u;
  v166 = 0u;
  v165 = 0u;
  v164 = 0u;
  v163 = 0u;
  v162 = 0u;
  v160 = 0;
  v159 = 0;
  v161 = 0;
  v143 = 0;
  if (v145)
  {
    goto LABEL_18;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_827;
    v142[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v142[4] = v11;
    if (qword_2811F44F0 != -1)
    {
      dispatch_once(&qword_2811F44F0, v142);
    }

    if (byte_2811F438D == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth: No devices connected"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      lastPathComponent3 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]"];
      [v13 logMessage:v12 fromFile:lastPathComponent3 fromFunction:v16 fromLineNumber:1817];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
      }
    }
  }

  if (v145)
  {
LABEL_18:
    v18 = 0;
    *&v10 = 138412290;
    *v114 = v10;
    do
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      if (!BTDeviceGetAddressString())
      {
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v159];
        if (v20)
        {
          [dictionary setObject:v20 forKeyedSubscript:@"MAC"];
        }
      }

      if (!BTDeviceGetDefaultName())
      {
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v162];
        if (v21)
        {
          [dictionary setObject:v21 forKeyedSubscript:@"DefaultName"];
        }
      }

      if (!BTDeviceGetName())
      {
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:v178];
        if (v22)
        {
          [dictionary setObject:v22 forKeyedSubscript:@"Name"];
        }
      }

      if ([dictionary count])
      {
        if (!BTDeviceGetDeviceType())
        {
          v23 = [MEMORY[0x277CCABB0] numberWithInt:v143];
          if (v23)
          {
            [dictionary setObject:v23 forKeyedSubscript:@"DeviceType"];
          }
        }

        [v102 addObject:dictionary];
      }

      else
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot get BT device attributes."];
        v25 = MEMORY[0x277D3F178];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent4 = [v26 lastPathComponent];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]"];
        [v25 logMessage:v24 fromFile:lastPathComponent4 fromFunction:v28 fromLineNumber:1836];

        v29 = PLLogCommon();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = v114[0];
          *(&buf + 4) = v24;
          _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }

      v160 = 0;
      v159 = 0;
      v161 = 0;
      v162 = 0u;
      v163 = 0u;
      v164 = 0u;
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v193 = 0u;
      v192 = 0u;
      v191 = 0u;
      v190 = 0u;
      v189 = 0u;
      v188 = 0u;
      v187 = 0u;
      v186 = 0u;
      v185 = 0u;
      v184 = 0u;
      v183 = 0u;
      v182 = 0u;
      v181 = 0u;
      v180 = 0u;
      v179 = 0u;
      *v178 = 0u;

      ++v18;
    }

    while (v18 < v145);
  }

  v107 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ConnectedDevices"];
  v30 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:0 withComparisonOperation:6];
  v158 = v30;
  v100 = [MEMORY[0x277CBEA60] arrayWithObjects:&v158 count:1];

  v31 = objc_msgSend_storage(selfCopy);
  v32 = [v31 entriesForKey:v107 withComparisons:v100];

  v110 = objc_opt_new();
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  obj = v32;
  v33 = [obj countByEnumeratingWithState:&v138 objects:v157 count:16];
  if (v33)
  {
    v34 = *v139;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v139 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v138 + 1) + 8 * i);
        if (v36)
        {
          v37 = [*(*(&v138 + 1) + 8 * i) objectForKeyedSubscript:@"Name"];
          if (v37)
          {
            v38 = [v36 objectForKeyedSubscript:@"MAC"];
            if (v38)
            {
              v39 = [v36 objectForKeyedSubscript:@"DeviceType"];
              v40 = v39 == 0;

              if (!v40)
              {
                [v110 addObject:v36];
              }
            }

            else
            {
            }
          }
        }
      }

      v33 = [obj countByEnumeratingWithState:&v138 objects:v157 count:16];
    }

    while (v33);
  }

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v111 = v102;
  v109 = [v111 countByEnumeratingWithState:&v134 objects:v156 count:16];
  if (v109)
  {
    v105 = 0;
    v106 = *v135;
    *&v41 = 138412290;
    v103 = v41;
    do
    {
      v42 = 0;
      do
      {
        if (*v135 != v106)
        {
          v43 = v42;
          objc_enumerationMutation(v111);
          v42 = v43;
        }

        v112 = v42;
        v44 = *(*(&v134 + 1) + 8 * v42);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v45 = objc_opt_class();
          v133[0] = MEMORY[0x277D85DD0];
          v133[1] = 3221225472;
          v133[2] = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_838;
          v133[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v133[4] = v45;
          if (qword_2811F44F8 != -1)
          {
            dispatch_once(&qword_2811F44F8, v133);
          }

          if (byte_2811F438E == 1)
          {
            v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth: Local device is connected to device :%@", v44];
            v47 = MEMORY[0x277D3F178];
            v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
            lastPathComponent5 = [v48 lastPathComponent];
            v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]"];
            [v47 logMessage:v46 fromFile:lastPathComponent5 fromFunction:v50 fromLineNumber:1875];

            v51 = PLLogCommon();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf) = v103;
              *(&buf + 4) = v46;
              _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
            }
          }
        }

        v52 = objc_alloc(MEMORY[0x277D3F190]);
        v53 = [v52 initWithEntryKey:v107 withRawData:v44];
        [v53 setEntryDate:monotonicDate];
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v114[0] = v110;
        v54 = [v114[0] countByEnumeratingWithState:&v129 objects:v155 count:16];
        if (v54)
        {
          v55 = *v130;
          while (2)
          {
            v56 = 0;
            do
            {
              if (*v130 != v55)
              {
                objc_enumerationMutation(v114[0]);
              }

              v57 = *(*(&v129 + 1) + 8 * v56);
              if ([MEMORY[0x277D3F180] debugEnabled])
              {
                v58 = objc_opt_class();
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_844;
                block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                block[4] = v58;
                if (qword_2811F4500 != -1)
                {
                  dispatch_once(&qword_2811F4500, block);
                }

                if (byte_2811F438F == 1)
                {
                  v59 = MEMORY[0x277CCACA8];
                  v60 = [v57 objectForKeyedSubscript:@"MAC"];
                  v61 = [v53 objectForKeyedSubscript:@"MAC"];
                  v62 = [v59 stringWithFormat:@"Bluetooth: checking for duplicate |%@| ==?== |%@|", v60, v61];

                  v63 = MEMORY[0x277D3F178];
                  v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
                  lastPathComponent6 = [v64 lastPathComponent];
                  v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]"];
                  [v63 logMessage:v62 fromFile:lastPathComponent6 fromFunction:v66 fromLineNumber:1882];

                  v67 = PLLogCommon();
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(buf) = v103;
                    *(&buf + 4) = v62;
                    _os_log_debug_impl(&dword_21A4C6000, v67, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
                  }
                }
              }

              v68 = [v57 objectForKeyedSubscript:@"MAC"];
              v69 = [v53 objectForKeyedSubscript:@"MAC"];
              v70 = [v68 isEqualToString:v69];

              if (v70)
              {

                if ([MEMORY[0x277D3F180] debugEnabled])
                {
                  v71 = objc_opt_class();
                  v127[0] = MEMORY[0x277D85DD0];
                  v127[1] = 3221225472;
                  v127[2] = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_850;
                  v127[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                  v127[4] = v71;
                  if (qword_2811F4508 != -1)
                  {
                    dispatch_once(&qword_2811F4508, v127);
                  }

                  if (byte_2811F4390 == 1)
                  {
                    v72 = MEMORY[0x277CCACA8];
                    v73 = [v53 objectForKeyedSubscript:@"MAC"];
                    v74 = [v72 stringWithFormat:@"Bluetooth: Entry already exists for MAC %@", v73];

                    v75 = MEMORY[0x277D3F178];
                    v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
                    lastPathComponent7 = [v76 lastPathComponent];
                    v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]"];
                    [v75 logMessage:v74 fromFile:lastPathComponent7 fromFunction:v78 fromLineNumber:1895];

                    v79 = PLLogCommon();
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
                    {
                      LODWORD(buf) = v103;
                      *(&buf + 4) = v74;
                      _os_log_debug_impl(&dword_21A4C6000, v79, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
                    }
                  }
                }

                goto LABEL_89;
              }

              ++v56;
            }

            while (v54 != v56);
            v54 = [v114[0] countByEnumeratingWithState:&v129 objects:v155 count:16];
            if (v54)
            {
              continue;
            }

            break;
          }
        }

        [(PLOperator *)selfCopy logEntry:v53];
        v105 = 1;
LABEL_89:

        v42 = v112 + 1;
      }

      while (v112 + 1 != v109);
      v109 = [v111 countByEnumeratingWithState:&v134 objects:v156 count:16];
    }

    while (v109);
  }

  else
  {
    v105 = 0;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v151 = 0x3032000000;
  v152 = __Block_byref_object_copy__6;
  v153 = __Block_byref_object_dispose__6;
  monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v110 = v110;
  v80 = [v110 countByEnumeratingWithState:&v123 objects:v149 count:16];
  if (v80)
  {
    v112 = *v124;
    do
    {
      v114[0] = v80;
      v81 = 0;
      do
      {
        if (*v124 != v112)
        {
          objc_enumerationMutation(v110);
        }

        v82 = *(*(&v123 + 1) + 8 * v81);
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v83 = v111;
        v84 = [v83 countByEnumeratingWithState:&v119 objects:v148 count:16];
        if (v84)
        {
          v85 = *v120;
          while (2)
          {
            for (j = 0; j != v84; ++j)
            {
              if (*v120 != v85)
              {
                objc_enumerationMutation(v83);
              }

              v87 = [*(*(&v119 + 1) + 8 * j) objectForKeyedSubscript:@"MAC"];
              v88 = [v82 objectForKeyedSubscript:@"MAC"];
              v89 = [v87 isEqualToString:v88];

              if (v89)
              {

                goto LABEL_108;
              }
            }

            v84 = [v83 countByEnumeratingWithState:&v119 objects:v148 count:16];
            if (v84)
            {
              continue;
            }

            break;
          }
        }

        v117[0] = 0;
        v117[1] = v117;
        v117[2] = 0x3032000000;
        v117[3] = __Block_byref_object_copy__6;
        v117[4] = __Block_byref_object_dispose__6;
        v118 = v82;
        v116[0] = MEMORY[0x277D85DD0];
        v116[1] = 3221225472;
        v116[2] = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_854;
        v116[3] = &unk_27825BC18;
        v116[5] = v117;
        v116[6] = &buf;
        v116[4] = selfCopy;
        [(PLOperator *)selfCopy updateEntry:v118 withBlock:v116];
        _Block_object_dispose(v117, 8);

        v105 = 1;
LABEL_108:
        v81 = v81 + 1;
      }

      while (v81 != v114[0]);
      v80 = [v110 countByEnumeratingWithState:&v123 objects:v149 count:16];
    }

    while (v80);
  }

  _Block_object_dispose(&buf, 8);
  if ((v105 & 1) == 0)
  {
    goto LABEL_111;
  }

LABEL_119:
}

void *__52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F438C = result;
  return result;
}

void *__52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_827(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F438D = result;
  return result;
}

void *__52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_838(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F438E = result;
  return result;
}

void *__52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_844(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F438F = result;
  return result;
}

void *__52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_850(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4390 = result;
  return result;
}

void __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_854(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(*(a1[5] + 8) + 40) setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:@"timestampEnd"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_2;
    v12 = &__block_descriptor_40_e5_v8__0lu32l8;
    v13 = v2;
    if (qword_2811F4510 != -1)
    {
      dispatch_once(&qword_2811F4510, &block);
    }

    if (byte_2811F4391 == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth: Device disconnected:%@", *(*(a1[5] + 8) + 40), block, v10, v11, v12, v13];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:1913];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v3;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4391 = result;
  return result;
}

void *__52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_860(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4392 = result;
  return result;
}

void *__53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4393 = result;
  return result;
}

void *__53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_869(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4394 = result;
  return result;
}

void __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_873(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  block[5] = 0;
  [*(a1 + 32) localBluetoothDevice];
  v1 = BTLocalDeviceRegisterForPowerProfileStatistics();
  if (v1)
  {
    v2 = v1;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v3 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v3;
      if (qword_2811F4530 != -1)
      {
        dispatch_once(&qword_2811F4530, block);
      }

      if (byte_2811F4395 == 1)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not register for Power notifications. (error: %d)", v2];
        v5 = MEMORY[0x277D3F178];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v7 = [v6 lastPathComponent];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]_block_invoke"];
        [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:1998];

        v9 = PLLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v12 = v4;
          _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }
}

void *__53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4395 = result;
  return result;
}

void *__53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_876(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4396 = result;
  return result;
}

void *__53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_882(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4397 = result;
  return result;
}

void __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_886(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  block[5] = 0;
  [*(a1 + 32) localBluetoothDevice];
  v1 = BTLocalDeviceRegisterForPowerProfileStatistics();
  if (v1)
  {
    v2 = v1;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v3 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_2_887;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v3;
      if (qword_2811F4548 != -1)
      {
        dispatch_once(&qword_2811F4548, block);
      }

      if (byte_2811F4398 == 1)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not register for Power notifications. (error: %d)", v2];
        v5 = MEMORY[0x277D3F178];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v7 = [v6 lastPathComponent];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]_block_invoke"];
        [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:2102];

        v9 = PLLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v12 = v4;
          _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }
}

void *__53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_2_887(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4398 = result;
  return result;
}

void *__53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_890(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4399 = result;
  return result;
}

void *__53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_896(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F439A = result;
  return result;
}

void __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_897(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  block[5] = 0;
  [*(a1 + 32) localBluetoothDevice];
  v1 = BTLocalDeviceRegisterForPowerProfileStatistics();
  if (v1)
  {
    v2 = v1;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v3 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_2_898;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v3;
      if (qword_2811F4560 != -1)
      {
        dispatch_once(&qword_2811F4560, block);
      }

      if (byte_2811F439B == 1)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not register for Power notifications. (error: %d)", v2];
        v5 = MEMORY[0x277D3F178];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v7 = [v6 lastPathComponent];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]_block_invoke"];
        [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:2129];

        v9 = PLLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v12 = v4;
          _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }
}

void *__53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_2_898(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F439B = result;
  return result;
}

- (void)logEventBackwardPowerStatsPerCore
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3F5C8];
  v4 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"EnhancedPowerStatsPerCore"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  if (!+[PLBluetoothAgent shouldLogEnhancedStatsPerCore])
  {
    goto LABEL_12;
  }

  v6 = PLLogBluetooth();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Getting Enhanced BT stats per core", buf, 2u);
  }

  v7 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  [(PLBluetoothAgent *)self localBluetoothDevice];
  EnhancedPowerStatsPerCore = BTLocalDeviceReadEnhancedPowerStatsPerCore();
  v10 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v3 andName:@"PowerProfileStats"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:EnhancedPowerStatsPerCore];
  [v5 setObject:v12 forKeyedSubscript:@"ErrorCode"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:EnhancedPowerStatsPerCore];
  [v11 setObject:v13 forKeyedSubscript:@"ErrorCode"];

  if (EnhancedPowerStatsPerCore)
  {
    v14 = PLLogBluetooth();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v74 = EnhancedPowerStatsPerCore;
      _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, "ERROR: could not read enhanced power statistics per core (error: %u)", buf, 8u);
    }

    if (EnhancedPowerStatsPerCore == 7)
    {
      workQueue = [(PLOperator *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__PLBluetoothAgent_logEventBackwardPowerStatsPerCore__block_invoke;
      block[3] = &unk_2782591D0;
      block[4] = self;
      dispatch_async(workQueue, block);
    }
  }

  else
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    lastPowerEntryDate = self->_lastPowerEntryDate;
    self->_lastPowerEntryDate = monotonicDate;

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 4)];
    [v11 setObject:v18 forKeyedSubscript:@"TXPower"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 5)];
    [v11 setObject:v19 forKeyedSubscript:@"RXPower"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 6)];
    [v11 setObject:v20 forKeyedSubscript:@"SleepPower"];

    [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 7)];
    v22 = v21 = v11;
    [v21 setObject:v22 forKeyedSubscript:@"OtherPower"];

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 4)];
    [v5 setObject:v23 forKeyedSubscript:@"TXPower"];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 5)];
    [v5 setObject:v24 forKeyedSubscript:@"RXPower"];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 6)];
    [v5 setObject:v25 forKeyedSubscript:@"SleepPower"];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 7)];
    [v5 setObject:v26 forKeyedSubscript:@"OtherPower"];

    v11 = v21;
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v8];
    [v5 setObject:v27 forKeyedSubscript:@"BTTimestamp"];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8[1]];
    [v5 setObject:v28 forKeyedSubscript:@"ActiveDuration"];

    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 4)];
    [v5 setObject:v29 forKeyedSubscript:@"MainCoreTXPower"];

    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 5)];
    [v5 setObject:v30 forKeyedSubscript:@"MainCoreRXPower"];

    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 6)];
    [v5 setObject:v31 forKeyedSubscript:@"MainCoreSleepPower"];

    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 7)];
    [v5 setObject:v32 forKeyedSubscript:@"MainCoreOtherPower"];

    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 8)];
    [v5 setObject:v33 forKeyedSubscript:@"MainCoreRxScanPercentage"];

    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 9)];
    [v5 setObject:v34 forKeyedSubscript:@"MainCoreElnaOnPercentage"];

    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 10)];
    [v5 setObject:v35 forKeyedSubscript:@"MainCoreElnaOffPercentage"];

    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 11)];
    [v5 setObject:v36 forKeyedSubscript:@"MainCoreMrcRxPercentage"];

    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 12)];
    [v5 setObject:v37 forKeyedSubscript:@"MainCoreIpaTxPercentage"];

    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 13)];
    [v5 setObject:v38 forKeyedSubscript:@"MainCoreEpaTxPercentage"];

    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 14)];
    [v5 setObject:v39 forKeyedSubscript:@"MainCoreTxbfTxPercentage"];

    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 15)];
    [v5 setObject:v40 forKeyedSubscript:@"MainCoreEpaTxbfTxPercentage"];

    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 16)];
    [v5 setObject:v41 forKeyedSubscript:@"MainCoreM154TransmitPercentage"];

    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 17)];
    [v5 setObject:v42 forKeyedSubscript:@"MainCoreM154ReceivePercentage"];

    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 18)];
    [v5 setObject:v43 forKeyedSubscript:@"SecondaryCoreTXPower"];

    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 19)];
    [v5 setObject:v44 forKeyedSubscript:@"SecondaryCoreRXPower"];

    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 20)];
    [v5 setObject:v45 forKeyedSubscript:@"SecondaryCoreSleepPower"];

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 21)];
    [v5 setObject:v46 forKeyedSubscript:@"SecondaryCoreOtherPower"];

    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 22)];
    [v5 setObject:v47 forKeyedSubscript:@"SecondaryCoreRxScanPercentage"];

    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 23)];
    [v5 setObject:v48 forKeyedSubscript:@"SecondaryCoreElnaOnPercentage"];

    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 24)];
    [v5 setObject:v49 forKeyedSubscript:@"SecondaryCoreElnaOffPercentage"];

    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 25)];
    [v5 setObject:v50 forKeyedSubscript:@"SecondaryCoreMrcRxPercentage"];

    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 26)];
    [v5 setObject:v51 forKeyedSubscript:@"SecondaryCoreIpaTxPercentage"];

    v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 27)];
    [v5 setObject:v52 forKeyedSubscript:@"SecondaryCoreEpaTxPercentage"];

    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 28)];
    [v5 setObject:v53 forKeyedSubscript:@"SecondaryCoreTxbfTxPercentage"];

    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 29)];
    [v5 setObject:v54 forKeyedSubscript:@"SecondaryCoreEpaTxbfTxPercentage"];

    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 30)];
    [v5 setObject:v55 forKeyedSubscript:@"SecondaryCoreM154TransmitPercentage"];

    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 31)];
    [v5 setObject:v56 forKeyedSubscript:@"SecondaryCoreM154ReceivePercentage"];

    v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 32)];
    [v5 setObject:v57 forKeyedSubscript:@"ScanCoreTXPower"];

    v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 33)];
    [v5 setObject:v58 forKeyedSubscript:@"ScanCoreRXPower"];

    v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 34)];
    [v5 setObject:v59 forKeyedSubscript:@"ScanCoreSleepPower"];

    v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 35)];
    [v5 setObject:v60 forKeyedSubscript:@"ScanCoreOtherPower"];

    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 36)];
    [v5 setObject:v61 forKeyedSubscript:@"ScanCoreRxScanPercentage"];

    v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 37)];
    [v5 setObject:v62 forKeyedSubscript:@"ScanCoreElnaOnPercentage"];

    v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 38)];
    [v5 setObject:v63 forKeyedSubscript:@"ScanCoreElnaOffPercentage"];

    v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 39)];
    [v5 setObject:v64 forKeyedSubscript:@"ScanCoreMrcRxPercentage"];

    v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 40)];
    [v5 setObject:v65 forKeyedSubscript:@"ScanCoreIpaTxPercentage"];

    v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 41)];
    [v5 setObject:v66 forKeyedSubscript:@"ScanCoreEpaTxPercentage"];

    v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 42)];
    [v5 setObject:v67 forKeyedSubscript:@"ScanCoreTxbfTxPercentage"];

    v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 43)];
    [v5 setObject:v68 forKeyedSubscript:@"ScanCoreEpaTxbfTxPercentage"];

    v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 44)];
    [v5 setObject:v69 forKeyedSubscript:@"ScanCoreM154TransmitPercentage"];

    v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 45)];
    [v5 setObject:v70 forKeyedSubscript:@"ScanCoreM154ReceivePercentage"];

    [(PLOperator *)self logEntry:v5];
    [(PLOperator *)self logEntry:v21];
  }

  free(v8);

  if (!EnhancedPowerStatsPerCore)
  {
LABEL_12:
    v71 = [v5 copy];
    [(PLBluetoothAgent *)self modelBluetoothPower:v71];
  }
}

void __53__PLBluetoothAgent_logEventBackwardPowerStatsPerCore__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) localBluetoothDevice];
  v1 = BTLocalDeviceRegisterForPowerProfileStatistics();
  if (v1)
  {
    v2 = v1;
    v3 = PLLogBluetooth();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v5 = v2;
      _os_log_error_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_ERROR, "Could not register for Power notifications. (error: %d)", buf, 8u);
    }
  }
}

+ (BOOL)shouldLogMarconi
{
  if ([MEMORY[0x277D3F208] isWiFiClass:1004011])
  {
    return 1;
  }

  v3 = MEMORY[0x277D3F208];

  return [v3 isWiFiClass:1004012];
}

- (void)logEventBackwardCBDiscovery:(id)discovery
{
  v37 = *MEMORY[0x277D85DE8];
  discoveryCopy = discovery;
  v24 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CBDiscoveryStats"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v24];
  v25 = discoveryCopy;
  v5 = [discoveryCopy objectForKeyedSubscript:@"agsE"];
  v6 = v5;
  if (v5)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      obj = v6;
      v27 = *v30;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"apID"];
          [v4 setObject:v11 forKeyedSubscript:@"apID"];

          v12 = [v10 objectForKeyedSubscript:@"apIX"];
          [v4 setObject:v12 forKeyedSubscript:@"apIX"];

          v13 = [v10 objectForKeyedSubscript:@"sonC"];
          [v4 setObject:v13 forKeyedSubscript:@"sonC"];

          v14 = [v10 objectForKeyedSubscript:@"sofC"];
          [v4 setObject:v14 forKeyedSubscript:@"sofC"];

          v15 = [v10 objectForKeyedSubscript:@"dsFl"];
          [v4 setObject:v15 forKeyedSubscript:@"dsFl"];

          [(PLOperator *)self logEntry:v4];
        }

        v6 = obj;
        v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v8);
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__PLBluetoothAgent_logEventBackwardCBDiscovery___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v16;
      if (qword_2811F4568 != -1)
      {
        dispatch_once(&qword_2811F4568, block);
      }

      if (byte_2811F439C == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: CBDiscovery return empty dictionary"];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardCBDiscovery:]"];
        [v18 logMessage:v17 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:2277];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v36 = v17;
          _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v23 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
    [v4 setObject:v23 forKeyedSubscript:@"apIX"];

    [(PLOperator *)self logEntry:v4];
  }
}

void *__48__PLBluetoothAgent_logEventBackwardCBDiscovery___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F439C = result;
  return result;
}

- (void)logEventBackwardWirelessProximity:(id)proximity
{
  v20 = *MEMORY[0x277D85DE8];
  proximityCopy = proximity;
  v5 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"WirelessProxScanDStats"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  if (proximityCopy)
  {
    v7 = [proximityCopy objectForKeyedSubscript:@"Scan"];
    [v6 setObject:v7 forKeyedSubscript:@"ClientScanDuration"];

    v8 = [proximityCopy objectForKeyedSubscript:@"Advertise"];
    [v6 setObject:v8 forKeyedSubscript:@"ClientAdvDuration"];

    v9 = [proximityCopy objectForKeyedSubscript:@"AggressiveScan"];
    [v6 setObject:v9 forKeyedSubscript:@"ClientScanConfig"];
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__PLBluetoothAgent_logEventBackwardWirelessProximity___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (qword_2811F4570 != -1)
      {
        dispatch_once(&qword_2811F4570, block);
      }

      if (byte_2811F439D == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: WirelessProximity return empty dictionary"];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardWirelessProximity:]"];
        [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:2300];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v19 = v11;
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v6 setObject:&unk_282C140E8 forKeyedSubscript:@"ClientScanDuration"];
  }

  [(PLOperator *)self logEntry:v6];
}

void *__54__PLBluetoothAgent_logEventBackwardWirelessProximity___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F439D = result;
  return result;
}

- (void)logEventBackwardMaxDutyCycle:(id)cycle
{
  v21 = *MEMORY[0x277D85DE8];
  cycleCopy = cycle;
  v5 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MaxDutyCycle"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:cycleCopy];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __49__PLBluetoothAgent_logEventBackwardMaxDutyCycle___block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v7;
    if (qword_2811F4578 != -1)
    {
      dispatch_once(&qword_2811F4578, &block);
    }

    if (byte_2811F439E == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Write to dB: %@", cycleCopy, block, v15, v16, v17, v18];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardMaxDutyCycle:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:2319];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLOperator *)self logEntry:v6];
}

void *__49__PLBluetoothAgent_logEventBackwardMaxDutyCycle___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F439E = result;
  return result;
}

- (void)logEventBackwardA2DP:(id)p
{
  v4 = *MEMORY[0x277D3F5C8];
  pCopy = p;
  v10 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v4 andName:@"A2DPPower"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v7 = [pCopy objectForKey:@"Duration"];
  [v6 setObject:v7 forKeyedSubscript:@"A2DPDuration"];

  v8 = [pCopy objectForKey:@"PercentageEPAPower"];
  [v6 setObject:v8 forKeyedSubscript:@"A2DPpercantageePA"];

  v9 = [pCopy objectForKey:@"PercentageIPAPower"];

  [v6 setObject:v9 forKeyedSubscript:@"A2DPpercantageiPA"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardHFP:(id)p
{
  v4 = *MEMORY[0x277D3F5C8];
  pCopy = p;
  v12 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v4 andName:@"HFPPower"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
  v7 = [pCopy objectForKey:@"Duration"];
  [v6 setObject:v7 forKeyedSubscript:@"HFPDuration"];

  v8 = [pCopy objectForKey:@"PercentageEPAPowerFirstWindow"];
  [v6 setObject:v8 forKeyedSubscript:@"HFPpercantageePA1"];

  v9 = [pCopy objectForKey:@"PercentageEPAPowerSecondWindow"];
  [v6 setObject:v9 forKeyedSubscript:@"HFPpercantageePA2"];

  v10 = [pCopy objectForKey:@"PercentageIPAPowerFirstWindow"];
  [v6 setObject:v10 forKeyedSubscript:@"HFPpercentageiPA1"];

  v11 = [pCopy objectForKey:@"PercentageIPAPowerSecondWindow"];

  [v6 setObject:v11 forKeyedSubscript:@"HFPpercentageiPA2"];
  [(PLOperator *)self logEntry:v6];
}

- (id)btHardwareChipsetQuery
{
  if (!self->_btHardwareChipset)
  {
    if ([MEMORY[0x277D3F208] isWiFiClass:1004001])
    {
      v3 = @"4334";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004002])
    {
      v3 = @"43342";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004003])
    {
      v3 = @"4324";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004006])
    {
      v3 = @"4345";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004005])
    {
      v3 = @"4350";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004008])
    {
      v3 = @"43452";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004007])
    {
      v3 = @"4355";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004010])
    {
      v3 = @"4357";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004013])
    {
      v3 = @"4377";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004014])
    {
      v3 = @"4378";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004015])
    {
      v3 = @"4387";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004016])
    {
      v3 = @"4388";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004017])
    {
      v3 = @"4399";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004011])
    {
      v3 = @"1001";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004012])
    {
      v3 = @"2001";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004018])
    {
      v3 = @"31011";
    }

    else
    {
      if (![MEMORY[0x277D3F208] isWiFiClass:1004019])
      {
        goto LABEL_37;
      }

      v3 = @"1";
    }

    btHardwareChipset = self->_btHardwareChipset;
    self->_btHardwareChipset = &v3->isa;
  }

LABEL_37:
  v5 = self->_btHardwareChipset;

  return v5;
}

- (void)modelBluetoothPower:(id)power
{
  v198 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    btHardwareChipsetQuery = [(PLBluetoothAgent *)self btHardwareChipsetQuery];
    v5 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"bluetooth"];
    v6 = [v5 objectForKeyedSubscript:btHardwareChipsetQuery];
    v7 = [v6 objectForKeyedSubscript:@"tx"];
    [v7 doubleValue];
    v143 = v8;

    v9 = [v5 objectForKeyedSubscript:btHardwareChipsetQuery];
    v10 = [v9 objectForKeyedSubscript:@"rx"];
    [v10 doubleValue];
    v142 = v11;

    v12 = [v5 objectForKeyedSubscript:btHardwareChipsetQuery];
    v13 = [v12 objectForKeyedSubscript:@"other"];
    [v13 doubleValue];
    v141 = v14;

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v15 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v15;
      if (qword_2811F4580 != -1)
      {
        dispatch_once(&qword_2811F4580, block);
      }

      if (byte_2811F439F == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"coefficientTxPower = %f, coefficientTxPower = %f, coefficientOtherPower = %f", *&v143, *&v142, *&v141];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
        [v17 logMessage:v16 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:2419];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v16;
          _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }
    }

    v22 = [powerCopy objectForKeyedSubscript:@"TXPower"];
    [v22 doubleValue];
    v140 = v23;

    v24 = [powerCopy objectForKeyedSubscript:@"RXPower"];
    [v24 doubleValue];
    v26 = v25;

    v27 = [powerCopy objectForKeyedSubscript:@"OtherPower"];
    [v27 doubleValue];
    v29 = v28;

    v30 = [powerCopy objectForKeyedSubscript:@"SleepPower"];
    [v30 doubleValue];
    v139 = v31;

    v32 = 0.0;
    v33 = 0.0;
    v144 = 0.0;
    v145 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
    {
      v38 = [v5 objectForKeyedSubscript:btHardwareChipsetQuery];
      v39 = [v38 objectForKeyedSubscript:@"mcon"];
      [v39 doubleValue];
      v145 = v40;

      v41 = [v5 objectForKeyedSubscript:btHardwareChipsetQuery];
      v42 = [v41 objectForKeyedSubscript:@"mcoff"];
      [v42 doubleValue];
      v144 = v43;

      v44 = [v5 objectForKeyedSubscript:btHardwareChipsetQuery];
      v45 = [v44 objectForKeyedSubscript:@"scon"];
      [v45 doubleValue];
      v33 = v46;

      v47 = [v5 objectForKeyedSubscript:btHardwareChipsetQuery];
      v48 = [v47 objectForKeyedSubscript:@"scoff"];
      [v48 doubleValue];
      v32 = v49;

      v50 = [powerCopy objectForKeyedSubscript:@"mainCoreELNAOnPercentage"];
      [v50 doubleValue];
      v37 = v51;

      v52 = [powerCopy objectForKeyedSubscript:@"mainCoreELNAOffPercentage"];
      [v52 doubleValue];
      v36 = v53;

      v54 = [powerCopy objectForKeyedSubscript:@"scanCoreELNAOnPercentage"];
      [v54 doubleValue];
      v35 = v55;

      v56 = [powerCopy objectForKeyedSubscript:@"scanCoreELNAOffPercentage"];
      [v56 doubleValue];
      v34 = v57;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v58 = objc_opt_class();
      v189[0] = MEMORY[0x277D85DD0];
      v189[1] = 3221225472;
      v189[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1021;
      v189[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v189[4] = v58;
      if (qword_2811F4588 != -1)
      {
        dispatch_once(&qword_2811F4588, v189);
      }

      if (byte_2811F43A0 == 1)
      {
        v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"txDur=%f, rxDur=%f, otherDur=%f, sleepDur=%f, mcondur=%f, mcoffdur=%f, scondur=%f, scoffdur=%f", *&v140, *&v26, *&v29, v139, *&v37, *&v36, *&v35, *&v34];
        v60 = MEMORY[0x277D3F178];
        v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent2 = [v61 lastPathComponent];
        v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
        [v60 logMessage:v59 fromFile:lastPathComponent2 fromFunction:v63 fromLineNumber:2450];

        v64 = PLLogCommon();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v59;
          _os_log_debug_impl(&dword_21A4C6000, v64, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }
    }

    v65 = 0.0;
    v66 = 0.0;
    v67 = 0.0;
    v68 = 0.0;
    if (v36 + v34 + v35 + v37 < v26)
    {
      v26 = v26 - v35 - v34 - v37 - v36;
      v65 = v34;
      v66 = v35;
      v67 = v36;
      v68 = v37;
    }

    v69 = v140;
    if (v140 > 10000.0)
    {
      v69 = 0.0;
    }

    if (v26 <= 10000.0)
    {
      v70 = v26;
    }

    else
    {
      v70 = 0.0;
    }

    if (v29 <= 10000.0)
    {
      v71 = v29;
    }

    else
    {
      v71 = 0.0;
    }

    if (v68 > 10000.0)
    {
      v68 = 0.0;
    }

    if (v67 > 10000.0)
    {
      v67 = 0.0;
    }

    if (v66 > 10000.0)
    {
      v66 = 0.0;
    }

    if (v65 > 10000.0)
    {
      v65 = 0.0;
    }

    v72 = (v142 * v70 + v143 * v69 + v141 * v71 + v68 * v145 + v67 * v144 + v66 * v33 + v65 * v32) / 10000.0;
    if (v72 >= 0.0)
    {
      v73 = v72;
    }

    else
    {
      v73 = 0.0;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v74 = objc_opt_class();
      v188[0] = MEMORY[0x277D85DD0];
      v188[1] = 3221225472;
      v188[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1027;
      v188[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v188[4] = v74;
      if (qword_2811F4590 != -1)
      {
        dispatch_once(&qword_2811F4590, v188);
      }

      if (byte_2811F43A1 == 1)
      {
        v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power=%f", *&v73];
        v76 = MEMORY[0x277D3F178];
        v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent3 = [v77 lastPathComponent];
        v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
        [v76 logMessage:v75 fromFile:lastPathComponent3 fromFunction:v79 fromLineNumber:2491];

        v80 = PLLogCommon();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v75;
          _os_log_debug_impl(&dword_21A4C6000, v80, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }
    }

    v186 = 0;
    v187[0] = &v186;
    v187[1] = 0x2020000000;
    *&v187[2] = v73;
    v182 = 0;
    v183 = &v182;
    v184 = 0x2020000000;
    v185 = 0;
    v180 = 0;
    v181[0] = &v180;
    v181[1] = 0x2020000000;
    v181[2] = 0;
    v81 = [MEMORY[0x277CBEB58] setWithObject:*MEMORY[0x277D49810]];
    [v81 addObject:*MEMORY[0x277D49808]];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v82 = objc_opt_class();
      v179[0] = MEMORY[0x277D85DD0];
      v179[1] = 3221225472;
      v179[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1034;
      v179[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v179[4] = v82;
      if (qword_2811F4598 != -1)
      {
        dispatch_once(&qword_2811F4598, v179);
      }

      if (byte_2811F43A2 == 1)
      {
        v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"Types: %@", v81];
        v84 = MEMORY[0x277D3F178];
        v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent4 = [v85 lastPathComponent];
        v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
        [v84 logMessage:v83 fromFile:lastPathComponent4 fromFunction:v87 fromLineNumber:2505];

        v88 = PLLogCommon();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v83;
          _os_log_debug_impl(&dword_21A4C6000, v88, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }
    }

    v89 = dispatch_semaphore_create(0);
    beaconManager = [(PLBluetoothAgent *)self beaconManager];
    v176[0] = MEMORY[0x277D85DD0];
    v176[1] = 3221225472;
    v176[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1038;
    v176[3] = &unk_27825BC40;
    v176[4] = self;
    v178 = &v182;
    v91 = v89;
    v177 = v91;
    [beaconManager allBeaconsOfTypes:v81 completion:v176];

    v92 = dispatch_time(0, 120000000000);
    if (dispatch_semaphore_wait(v91, v92) && [MEMORY[0x277D3F180] debugEnabled])
    {
      v93 = objc_opt_class();
      v175[0] = MEMORY[0x277D85DD0];
      v175[1] = 3221225472;
      v175[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1052;
      v175[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v175[4] = v93;
      if (qword_2811F45B0 != -1)
      {
        dispatch_once(&qword_2811F45B0, v175);
      }

      if (byte_2811F43A5 == 1)
      {
        v94 = [MEMORY[0x277CCACA8] stringWithFormat:@"Timed out, ItemPaired: %d", *(v183 + 24)];
        v95 = MEMORY[0x277D3F178];
        v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent5 = [v96 lastPathComponent];
        v98 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
        [v95 logMessage:v94 fromFile:lastPathComponent5 fromFunction:v98 fromLineNumber:2517];

        v99 = PLLogCommon();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v94;
          _os_log_debug_impl(&dword_21A4C6000, v99, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }
    }

    v172 = &v171;
    v173 = 0x2020000000;
    v174 = 0x4016000000000000;
    v167 = 0;
    v168 = &v167;
    v169 = 0x2020000000;
    v170 = 0x3FF6666666666666;
    v171 = 0;
    v166[0] = 0;
    v166[1] = v166;
    v166[2] = 0x2020000000;
    v166[3] = 0x401199999999999ALL;
    v164 = 0;
    v165[0] = &v164;
    v165[1] = 0x2020000000;
    v165[2] = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v194 = 0x3032000000;
    v195 = __Block_byref_object_copy__6;
    v196 = __Block_byref_object_dispose__6;
    entryDate = [powerCopy entryDate];
    v197 = [entryDate dateByAddingTimeInterval:-5.0];

    if ([MEMORY[0x277D3F208] isiPhone])
    {
      v101 = objc_alloc_init(MEMORY[0x277CC5C90]);
      v152[0] = MEMORY[0x277D85DD0];
      v152[1] = 3221225472;
      v152[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1057;
      v152[3] = &unk_27825BC68;
      mEMORY[0x277D3F0C0]4 = v101;
      v153 = mEMORY[0x277D3F0C0]4;
      selfCopy = self;
      v156 = &v182;
      v157 = &v186;
      v158 = v166;
      v159 = &v164;
      v160 = &v171;
      v161 = &v180;
      v162 = &v167;
      v155 = powerCopy;
      p_buf = &buf;
      [mEMORY[0x277D3F0C0]4 activateWithCompletionHandler:v152];

      entryDate4 = v153;
    }

    else
    {
      if (*(v183 + 24) == 1)
      {
        if (*(v187[0] + 24) >= v168[3])
        {
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v119 = objc_opt_class();
            v150[0] = MEMORY[0x277D85DD0];
            v150[1] = 3221225472;
            v150[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1118;
            v150[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v150[4] = v119;
            if (qword_2811F4610 != -1)
            {
              dispatch_once(&qword_2811F4610, v150);
            }

            if (byte_2811F43B1 == 1)
            {
              v120 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f > %f", *(v187[0] + 24), v172[3]];
              v121 = MEMORY[0x277D3F178];
              v122 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
              lastPathComponent6 = [v122 lastPathComponent];
              v124 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
              [v121 logMessage:v120 fromFile:lastPathComponent6 fromFunction:v124 fromLineNumber:2640];

              v125 = PLLogCommon();
              if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
              {
                *v191 = 138412290;
                v192 = v120;
                _os_log_debug_impl(&dword_21A4C6000, v125, OS_LOG_TYPE_DEBUG, "%@", v191, 0xCu);
              }
            }
          }

          v111 = v181;
          *(v165[0] + 24) = v172[3];
          v112 = *(v168 + 3);
        }

        else
        {
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v104 = objc_opt_class();
            v151[0] = MEMORY[0x277D85DD0];
            v151[1] = 3221225472;
            v151[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1115;
            v151[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v151[4] = v104;
            if (qword_2811F4608 != -1)
            {
              dispatch_once(&qword_2811F4608, v151);
            }

            if (byte_2811F43B0 == 1)
            {
              v105 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f < %f", *(v187[0] + 24), v172[3]];
              v106 = MEMORY[0x277D3F178];
              v107 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
              lastPathComponent7 = [v107 lastPathComponent];
              v109 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
              [v106 logMessage:v105 fromFile:lastPathComponent7 fromFunction:v109 fromLineNumber:2636];

              v110 = PLLogCommon();
              if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
              {
                *v191 = 138412290;
                v192 = v105;
                _os_log_debug_impl(&dword_21A4C6000, v110, OS_LOG_TYPE_DEBUG, "%@", v191, 0xCu);
              }
            }
          }

          v111 = v187;
          *(v165[0] + 24) = v172[3];
          v112 = 0;
        }
      }

      else
      {
        v111 = v165;
        v112 = 0;
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v113 = objc_opt_class();
          v149[0] = MEMORY[0x277D85DD0];
          v149[1] = 3221225472;
          v149[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1121;
          v149[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v149[4] = v113;
          if (qword_2811F4618 != -1)
          {
            dispatch_once(&qword_2811F4618, v149);
          }

          if (byte_2811F43B2 == 1)
          {
            v146 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTPower: %f", *(v187[0] + 24)];
            v114 = MEMORY[0x277D3F178];
            v115 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
            lastPathComponent8 = [v115 lastPathComponent];
            v117 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
            [v114 logMessage:v146 fromFile:lastPathComponent8 fromFunction:v117 fromLineNumber:2645];

            v118 = PLLogCommon();
            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
            {
              *v191 = 138412290;
              v192 = v146;
              _os_log_debug_impl(&dword_21A4C6000, v118, OS_LOG_TYPE_DEBUG, "%@", v191, 0xCu);
            }
          }
        }
      }

      *(*v111 + 24) = v112;
      *(v187[0] + 24) = fmax(*(v187[0] + 24) - *(v181[0] + 24), 0.0);
      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      v127 = *(v187[0] + 24);
      entryDate2 = [powerCopy entryDate];
      [mEMORY[0x277D3F0C0] createPowerEventBackwardWithRootNodeID:50 withPower:entryDate2 withEndDate:v127];

      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0]2 createPowerEventBackwardWithRootNodeID:59 withPower:*(*(&buf + 1) + 40) withEndDate:*(v165[0] + 24)];

      mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate3 = [powerCopy entryDate];
      [mEMORY[0x277D3F0C0]3 createPowerEventBackwardWithRootNodeID:59 withPower:entryDate3 withEndDate:0.0];

      mEMORY[0x277D3F0C0]4 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate4 = [powerCopy entryDate];
      [mEMORY[0x277D3F0C0]4 createDistributionEventForwardWithDistributionID:47 withChildNodeNameToWeight:&unk_282C17950 withStartDate:entryDate4];
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v132 = objc_opt_class();
      v148[0] = MEMORY[0x277D85DD0];
      v148[1] = 3221225472;
      v148[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1128;
      v148[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v148[4] = v132;
      if (qword_2811F4620 != -1)
      {
        dispatch_once(&qword_2811F4620, v148);
      }

      if (byte_2811F43B3 == 1)
      {
        v133 = [MEMORY[0x277CCACA8] stringWithFormat:@"ITpower: %f", *(v165[0] + 24)];
        v134 = MEMORY[0x277D3F178];
        v135 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent9 = [v135 lastPathComponent];
        v137 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
        [v134 logMessage:v133 fromFile:lastPathComponent9 fromFunction:v137 fromLineNumber:2668];

        v138 = PLLogCommon();
        if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
        {
          *v191 = 138412290;
          v192 = v133;
          _os_log_debug_impl(&dword_21A4C6000, v138, OS_LOG_TYPE_DEBUG, "%@", v191, 0xCu);
        }
      }
    }

    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v164, 8);
    _Block_object_dispose(v166, 8);
    _Block_object_dispose(&v167, 8);
    _Block_object_dispose(&v171, 8);

    _Block_object_dispose(&v180, 8);
    _Block_object_dispose(&v182, 8);
    _Block_object_dispose(&v186, 8);
  }
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F439F = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1021(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A0 = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1027(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A1 = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1034(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A2 = result;
  return result;
}

void __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1038(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (qword_2811F45A0 != -1)
    {
      dispatch_once(&qword_2811F45A0, block);
    }

    if (byte_2811F43A3 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Count: %lu", objc_msgSend(v3, "count")];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:2508];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = [v3 count] != 0;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1044;
    v18[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v18[4] = v11;
    if (qword_2811F45A8 != -1)
    {
      dispatch_once(&qword_2811F45A8, v18);
    }

    if (byte_2811F43A4 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"ItemPaired: %d", *(*(*(a1 + 48) + 8) + 24)];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:2510];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A3 = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1044(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A4 = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1052(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A5 = result;
  return result;
}

void __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1057(uint64_t a1, void *a2)
{
  v115 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) exposureNotificationEnabled];
  v5 = [MEMORY[0x277D3F180] debugEnabled];
  if (v3)
  {
    v6 = 0.0;
    if (v5)
    {
      v7 = objc_opt_class();
      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_2_1058;
      v112[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v112[4] = v7;
      if (qword_2811F45B8 != -1)
      {
        dispatch_once(&qword_2811F45B8, v112);
      }

      if (byte_2811F43A6 == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: activateWithCompletionHandler failed: %@", v3];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v11 = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke"];
        [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:2551];

        v13 = PLLogCommon();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
LABEL_7:

          goto LABEL_77;
        }

        *buf = 138412290;
        v114 = v8;
LABEL_86:
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        goto LABEL_7;
      }
    }

    goto LABEL_77;
  }

  if (v5)
  {
    v14 = objc_opt_class();
    v111[0] = MEMORY[0x277D85DD0];
    v111[1] = 3221225472;
    v111[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1064;
    v111[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v111[4] = v14;
    if (qword_2811F45C0 != -1)
    {
      dispatch_once(&qword_2811F45C0, v111);
    }

    if (byte_2811F43A7 == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: activateWithCompletionHandler: %@", *(a1 + 32)];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v18 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
      [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:2555];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v114 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v4)
  {
    v21 = *(*(*(a1 + 64) + 8) + 24);
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v22 = *(*(*(a1 + 72) + 8) + 24);
      v23 = [MEMORY[0x277D3F180] debugEnabled];
      if (v21 >= v22)
      {
        if (v23)
        {
          v54 = objc_opt_class();
          v109[0] = MEMORY[0x277D85DD0];
          v109[1] = 3221225472;
          v109[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1076;
          v109[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v109[4] = v54;
          if (qword_2811F45D0 != -1)
          {
            dispatch_once(&qword_2811F45D0, v109);
          }

          if (byte_2811F43A9 == 1)
          {
            v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f > %f", *(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 72) + 8) + 24)];
            v56 = MEMORY[0x277D3F178];
            v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
            v58 = [v57 lastPathComponent];
            v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
            [v56 logMessage:v55 fromFile:v58 fromFunction:v59 fromLineNumber:2564];

            v60 = PLLogCommon();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v114 = v55;
              _os_log_debug_impl(&dword_21A4C6000, v60, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
        *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24);
        goto LABEL_76;
      }

      if (v23)
      {
        v24 = objc_opt_class();
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1070;
        v110[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v110[4] = v24;
        if (qword_2811F45C8 != -1)
        {
          dispatch_once(&qword_2811F45C8, v110);
        }

        if (byte_2811F43A8 == 1)
        {
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f < %f", *(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 72) + 8) + 24)];
          v26 = MEMORY[0x277D3F178];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          v28 = [v27 lastPathComponent];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
          [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:2559];

          v30 = PLLogCommon();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v114 = v25;
            _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
    }

    else
    {
      v41 = [MEMORY[0x277D3F180] debugEnabled];
      if (v21 >= 3.2)
      {
        if (v41)
        {
          v68 = objc_opt_class();
          v107[0] = MEMORY[0x277D85DD0];
          v107[1] = 3221225472;
          v107[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1085;
          v107[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v107[4] = v68;
          if (qword_2811F45E0 != -1)
          {
            dispatch_once(&qword_2811F45E0, v107);
          }

          if (byte_2811F43AB == 1)
          {
            v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f > %f", *(*(*(a1 + 64) + 8) + 24), 0x400999999999999ALL];
            v70 = MEMORY[0x277D3F178];
            v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
            v72 = [v71 lastPathComponent];
            v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
            [v70 logMessage:v69 fromFile:v72 fromFunction:v73 fromLineNumber:2577];

            v74 = PLLogCommon();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v114 = v69;
              _os_log_debug_impl(&dword_21A4C6000, v74, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        *(*(*(a1 + 96) + 8) + 24) = 0x400999999999999ALL;
        goto LABEL_76;
      }

      if (v41)
      {
        v42 = objc_opt_class();
        v108[0] = MEMORY[0x277D85DD0];
        v108[1] = 3221225472;
        v108[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1082;
        v108[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v108[4] = v42;
        if (qword_2811F45D8 != -1)
        {
          dispatch_once(&qword_2811F45D8, v108);
        }

        if (byte_2811F43AA == 1)
        {
          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f < %f", *(*(*(a1 + 64) + 8) + 24), 0x400999999999999ALL];
          v44 = MEMORY[0x277D3F178];
          v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          v46 = [v45 lastPathComponent];
          v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
          [v44 logMessage:v43 fromFile:v46 fromFunction:v47 fromLineNumber:2573];

          v48 = PLLogCommon();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v114 = v43;
            _os_log_debug_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_76:
    v6 = 9.0;
    goto LABEL_77;
  }

  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v31 = *(*(*(a1 + 64) + 8) + 24);
    v32 = *(*(*(a1 + 104) + 8) + 24);
    v33 = [MEMORY[0x277D3F180] debugEnabled];
    if (v31 >= v32)
    {
      if (v33)
      {
        v61 = objc_opt_class();
        v105[0] = MEMORY[0x277D85DD0];
        v105[1] = 3221225472;
        v105[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1091;
        v105[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v105[4] = v61;
        if (qword_2811F45F0 != -1)
        {
          dispatch_once(&qword_2811F45F0, v105);
        }

        if (byte_2811F43AD == 1)
        {
          v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f > %f", *(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 104) + 8) + 24)];
          v63 = MEMORY[0x277D3F178];
          v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          v65 = [v64 lastPathComponent];
          v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
          [v63 logMessage:v62 fromFile:v65 fromFunction:v66 fromLineNumber:2590];

          v67 = PLLogCommon();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v114 = v62;
            _os_log_debug_impl(&dword_21A4C6000, v67, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
      *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 104) + 8) + 24);
    }

    else
    {
      if (v33)
      {
        v34 = objc_opt_class();
        v106[0] = MEMORY[0x277D85DD0];
        v106[1] = 3221225472;
        v106[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1088;
        v106[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v106[4] = v34;
        if (qword_2811F45E8 != -1)
        {
          dispatch_once(&qword_2811F45E8, v106);
        }

        if (byte_2811F43AC == 1)
        {
          v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f < %f", *(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 104) + 8) + 24)];
          v36 = MEMORY[0x277D3F178];
          v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          v38 = [v37 lastPathComponent];
          v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
          [v36 logMessage:v35 fromFile:v38 fromFunction:v39 fromLineNumber:2586];

          v40 = PLLogCommon();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v114 = v35;
            _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = 0.0;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v49 = objc_opt_class();
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1094;
      v104[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v104[4] = v49;
      if (qword_2811F45F8 != -1)
      {
        dispatch_once(&qword_2811F45F8, v104);
      }

      if (byte_2811F43AE == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTPower: %f", *(*(*(a1 + 64) + 8) + 24)];
        v50 = MEMORY[0x277D3F178];
        v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v52 = [v51 lastPathComponent];
        v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
        [v50 logMessage:v8 fromFile:v52 fromFunction:v53 fromLineNumber:2598];

        v13 = PLLogCommon();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_7;
        }

        *buf = 138412290;
        v114 = v8;
        goto LABEL_86;
      }
    }
  }

LABEL_77:
  [*(a1 + 32) invalidate];
  *(*(*(a1 + 64) + 8) + 24) = fmax(*(*(*(a1 + 64) + 8) + 24) - *(*(*(a1 + 96) + 8) + 24), 0.0);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v75 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v100 = 3221225472;
    v101 = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1100;
    v102 = &__block_descriptor_40_e5_v8__0lu32l8;
    v103 = v75;
    if (qword_2811F4600 != -1)
    {
      dispatch_once(&qword_2811F4600, &block);
    }

    if (byte_2811F43AF == 1)
    {
      v76 = MEMORY[0x277CCACA8];
      v77 = *(*(*(a1 + 64) + 8) + 24);
      v78 = *(*(*(a1 + 80) + 8) + 24);
      v79 = [*(a1 + 48) entryDate];
      v80 = [v76 stringWithFormat:@"ModelBTPower: Model %f to node 50, %f to node 58, %f to node 59 at %@", v77, *&v6, v78, v79, block, v100, v101, v102, v103];

      v81 = MEMORY[0x277D3F178];
      v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v83 = [v82 lastPathComponent];
      v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
      [v81 logMessage:v80 fromFile:v83 fromFunction:v84 fromLineNumber:2603];

      v85 = PLLogCommon();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v114 = v80;
        _os_log_debug_impl(&dword_21A4C6000, v85, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v86 = [MEMORY[0x277D3F0C0] sharedInstance];
  v87 = *(*(*(a1 + 64) + 8) + 24);
  v88 = [*(a1 + 48) entryDate];
  [v86 createPowerEventBackwardWithRootNodeID:50 withPower:v88 withEndDate:v87];

  v89 = [MEMORY[0x277D3F0C0] sharedInstance];
  [v89 createPowerEventBackwardWithRootNodeID:58 withPower:*(*(*(a1 + 112) + 8) + 40) withEndDate:v6];

  v90 = [MEMORY[0x277D3F0C0] sharedInstance];
  v91 = [*(a1 + 48) entryDate];
  [v90 createPowerEventBackwardWithRootNodeID:58 withPower:v91 withEndDate:0.0];

  v92 = [MEMORY[0x277D3F0C0] sharedInstance];
  v93 = [*(a1 + 48) entryDate];
  [v92 createDistributionEventForwardWithDistributionID:45 withChildNodeNameToWeight:&unk_282C17900 withStartDate:v93];

  v94 = [MEMORY[0x277D3F0C0] sharedInstance];
  [v94 createPowerEventBackwardWithRootNodeID:59 withPower:*(*(*(a1 + 112) + 8) + 40) withEndDate:*(*(*(a1 + 80) + 8) + 24)];

  v95 = [MEMORY[0x277D3F0C0] sharedInstance];
  v96 = [*(a1 + 48) entryDate];
  [v95 createPowerEventBackwardWithRootNodeID:59 withPower:v96 withEndDate:0.0];

  v97 = [MEMORY[0x277D3F0C0] sharedInstance];
  v98 = [*(a1 + 48) entryDate];
  [v97 createDistributionEventForwardWithDistributionID:47 withChildNodeNameToWeight:&unk_282C17928 withStartDate:v98];
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_2_1058(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A6 = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1064(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A7 = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1070(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A8 = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1076(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A9 = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1082(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43AA = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1085(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43AB = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1088(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43AC = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1091(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43AD = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1094(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43AE = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1100(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43AF = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1115(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43B0 = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1118(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43B1 = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1121(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43B2 = result;
  return result;
}

void *__40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1128(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43B3 = result;
  return result;
}

- (void)modelBluetoothOffPower
{
  v28 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0] createPowerEventBackwardWithRootNodeID:50 withPower:monotonicDate withEndDate:0.0];

    mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0]2 createPowerEventBackwardWithRootNodeID:59 withPower:monotonicDate withEndDate:0.0];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__PLBluetoothAgent_modelBluetoothOffPower__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (qword_2811F4628 != -1)
      {
        dispatch_once(&qword_2811F4628, block);
      }

      if (byte_2811F43B4 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTOffPower"];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothOffPower]"];
        [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:2688];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v27 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if ([MEMORY[0x277D3F208] isiPhone])
    {
      mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0]3 createPowerEventBackwardWithRootNodeID:58 withPower:monotonicDate withEndDate:0.0];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v13 = objc_opt_class();
        v20 = MEMORY[0x277D85DD0];
        v21 = 3221225472;
        v22 = __42__PLBluetoothAgent_modelBluetoothOffPower__block_invoke_1137;
        v23 = &__block_descriptor_40_e5_v8__0lu32l8;
        v24 = v13;
        if (qword_2811F4630 != -1)
        {
          dispatch_once(&qword_2811F4630, &v20);
        }

        if (byte_2811F43B5 == 1)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTOffPower", v20, v21, v22, v23, v24];
          v15 = MEMORY[0x277D3F178];
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          lastPathComponent2 = [v16 lastPathComponent];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothOffPower]"];
          [v15 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:2693];

          v19 = PLLogCommon();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v27 = v14;
            _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }
  }
}

void *__42__PLBluetoothAgent_modelBluetoothOffPower__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43B4 = result;
  return result;
}

void *__42__PLBluetoothAgent_modelBluetoothOffPower__block_invoke_1137(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43B5 = result;
  return result;
}

@end