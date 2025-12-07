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

void __39__PLWifiAgent_initOperatorDependancies__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
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
    if (qword_2811F6760 != -1)
    {
      dispatch_once(&qword_2811F6760, block);
    }

    if (byte_2811F66BC == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wifi Application Key Logger: %@ = %@", v5, v4];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent initOperatorDependancies]_block_invoke"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:2564];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
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

- (void)log
{
  [(PLWifiAgent *)self logEventBackwardWifiProperties:1];
  [(PLWifiAgent *)self logEventBackwardUserScanDuration];
  [(PLWifiAgent *)self logEventPointAWDLServicesAndPorts];

  [(PLWifiAgent *)self logEventBackwardControlCPUPowerStats];
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

- (id)wifiChipsetQuery
{
  v34 = *MEMORY[0x277D85DE8];
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
      v28 = 3221225472;
      v29 = __31__PLWifiAgent_wifiChipsetQuery__block_invoke;
      v30 = &__block_descriptor_40_e5_v8__0lu32l8;
      v31 = v7;
      if (qword_2811F68C8 != -1)
      {
        dispatch_once(&qword_2811F68C8, &block);
      }

      if (byte_2811F66E9 == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"last module entry: %@", v6, block, v28, v29, v30, v31];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiChipsetQuery]"];
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:4589];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v33 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v14 = [v6 objectForKeyedSubscript:@"ProductId"];
    intValue = [v14 intValue];

    v16 = 0;
    if (intValue > 17459)
    {
      if (intValue > 31010)
      {
        if (intValue > 48411)
        {
          if (intValue == 48412)
          {
            v24 = @"4324";
            goto LABEL_54;
          }

          v17 = 48417;
          goto LABEL_44;
        }

        if (intValue == 31011)
        {
          v24 = @"31011";
          goto LABEL_54;
        }

        if (intValue != 48410)
        {
          goto LABEL_19;
        }

        v24 = @"4334";
      }

      else if (intValue > 17543)
      {
        if (intValue == 17544)
        {
          v24 = @"4377";
          goto LABEL_54;
        }

        if (intValue != 18347)
        {
          goto LABEL_19;
        }

        v24 = @"43452";
      }

      else
      {
        if (intValue == 17460)
        {
          v24 = @"4388";
          goto LABEL_54;
        }

        if (intValue != 17489)
        {
          goto LABEL_19;
        }

        v24 = @"4399";
      }
    }

    else if (intValue > 17371)
    {
      if (intValue > 17444)
      {
        if (intValue == 17445)
        {
          v24 = @"4378";
          goto LABEL_54;
        }

        if (intValue != 17459)
        {
          goto LABEL_19;
        }

        v24 = @"4387";
      }

      else
      {
        if (intValue == 17372)
        {
          v24 = @"4355";
          goto LABEL_54;
        }

        if (intValue != 17418)
        {
          goto LABEL_19;
        }

        v24 = @"4357";
      }
    }

    else
    {
      if (intValue <= 17314)
      {
        if (intValue == 1)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
          goto LABEL_54;
        }

        v17 = 17204;
LABEL_44:
        if (intValue == v17)
        {
          v24 = @"43342";
          goto LABEL_54;
        }

LABEL_19:

        goto LABEL_57;
      }

      if (intValue == 17315)
      {
        v24 = @"4350";
        goto LABEL_54;
      }

      if (intValue != 17323)
      {
        goto LABEL_19;
      }

      v24 = @"4345";
    }

LABEL_54:
    v25 = self->_wifiChipset;
    self->_wifiChipset = &v24->isa;

    goto LABEL_55;
  }

  if ([(PLOperator *)self isDebugEnabled])
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"wifiChipsetQuery: WiFi Module entry not found. Assume 4334 for now."];
    v19 = MEMORY[0x277D3F178];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
    lastPathComponent2 = [v20 lastPathComponent];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiChipsetQuery]"];
    [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:4652];

    v23 = PLLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v33 = v18;
      _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v16 = @"4334";
    goto LABEL_19;
  }

LABEL_55:

  wifiChipset = self->_wifiChipset;
LABEL_56:
  v16 = wifiChipset;
LABEL_57:

  return v16;
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
      if (qword_2811F68D0 != -1)
      {
        dispatch_once(&qword_2811F68D0, block);
      }

      if (byte_2811F66EA == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"last module entry: %@", v6];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiManufacturerQuery]"];
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:4666];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v46 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v36 = v6;
    v37 = v4;
    v34 = [v6 objectForKeyedSubscript:@"ModuleInfo"];
    v14 = [v34 componentsSeparatedByString:@" "];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
    v35 = selfCopy;
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v40;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = [*(*(&v39 + 1) + 8 * i) componentsSeparatedByString:@"="];
          if ([v20 count] == 2)
          {
            v21 = [v20 objectAtIndexedSubscript:0];
            v22 = [v21 isEqualToString:@"V"];

            if (v22)
            {
              v23 = [v20 objectAtIndexedSubscript:1];

              v17 = v23;
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v4 = v37;
    if ([v17 isEqualToString:@"u"])
    {
      v24 = @"usi";
      selfCopy = v35;
    }

    else
    {
      selfCopy = v35;
      if ([v17 isEqualToString:@"t"])
      {
        v24 = @"usi";
        goto LABEL_36;
      }

      if (([v17 isEqualToString:@"m"] & 1) != 0 || !objc_msgSend(MEMORY[0x277D3F180], "debugEnabled"))
      {
        goto LABEL_35;
      }

      v25 = objc_opt_class();
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __36__PLWifiAgent_wifiManufacturerQuery__block_invoke_2622;
      v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v38[4] = v25;
      if (qword_2811F68D8 != -1)
      {
        dispatch_once(&qword_2811F68D8, v38);
      }

      if (byte_2811F66EB != 1)
      {
LABEL_35:
        v24 = @"murata";
        goto LABEL_36;
      }

      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLWiFiAgent wifiManufacturerQuery: manufacturer string not recognized: %@. Defaulting to murata", v17];
      v27 = MEMORY[0x277D3F178];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent2 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiManufacturerQuery]"];
      [v27 logMessage:v26 fromFile:lastPathComponent2 fromFunction:v30 fromLineNumber:4687];

      v31 = PLLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v46 = v26;
        _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v24 = @"murata";
      v4 = v37;
    }

    v6 = v36;
LABEL_36:
    v32 = selfCopy->_wifiManufacturer;
    selfCopy->_wifiManufacturer = &v24->isa;

    goto LABEL_37;
  }

LABEL_38:

  return wifiManufacturer;
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

- (void)logEventPointAWDLServicesAndPorts
{
  v39 = *MEMORY[0x277D85DE8];
  if ([(PLWifiAgent *)self hasWiFi])
  {
    monitor = self->_monitor;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v4 = [(WiFiP2PAWDLStateMonitor *)monitor fetchAWDLActiveServices:&v36 withActivePorts:&v35 error:&v34];
    v5 = v36;
    v6 = v35;
    v7 = v34;
    v8 = PLLogWifi();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Call to fetch active services and ports was successful.", buf, 2u);
      }

      v10 = [v5 count];
      v11 = [v6 count];
      v8 = PLLogWifi();
      v12 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
      if (v10 | v11)
      {
        selfCopy = self;
        v33 = v7;
        if (v12)
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Found active services and ports to log", buf, 2u);
        }

        v8 = objc_opt_new();
        if (v10 >= 4)
        {
          v16 = 4;
        }

        else
        {
          v16 = v10;
        }

        if (v10)
        {
          v31 = v11;
          v17 = 0;
          v18 = 0;
          do
          {
            v19 = v18;
            v20 = v17 + 1;
            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"service_%i", v17 + 1];

            v21 = [v5 objectAtIndexedSubscript:v17];
            [v8 setObject:v21 forKeyedSubscript:v18];

            v17 = v20;
          }

          while (v16 != v20);

          v11 = v31;
        }

        if (v11 >= 4)
        {
          v22 = 4;
        }

        else
        {
          v22 = v11;
        }

        if (v11)
        {
          v23 = 0;
          v24 = 0;
          do
          {
            v25 = v24;
            v26 = v23 + 1;
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"port_%i", v23 + 1];

            v27 = [v6 objectAtIndexedSubscript:v23];
            [v8 setObject:v27 forKeyedSubscript:v24];

            v23 = v26;
          }

          while (v22 != v26);
        }

        v28 = PLLogWifi();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v38 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "Map of Active Services and Ports: %@", buf, 0xCu);
        }

        v29 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AWDLServicesAndPorts"];
        v30 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v29 withRawData:v8];
        [(PLOperator *)selfCopy logEntry:v30];

        v7 = v33;
        goto LABEL_32;
      }

      if (v12)
      {
        *buf = 0;
        v13 = "No active services and ports to log";
        v14 = v8;
        v15 = 2;
LABEL_12:
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, v13, buf, v15);
      }
    }

    else if (v9)
    {
      *buf = 138412290;
      v38 = v7;
      v13 = "Call to fetch active services and ports failed with error: %@";
      v14 = v8;
      v15 = 12;
      goto LABEL_12;
    }

LABEL_32:

    goto LABEL_33;
  }

  v7 = PLLogWifi();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "No wifi to log active services and ports about", buf, 2u);
  }

LABEL_33:
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

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLWifiAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitionWifiInstantPower
{
  v13[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
  {
    v12[0] = *MEMORY[0x277D3F4E8];
    v10 = *MEMORY[0x277D3F568];
    v11 = &unk_282C1CA28;
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
  v36[0] = &unk_282C1CA38;
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
  v30[0] = &unk_282C12D68;
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
  v32[0] = &unk_282C1CA48;
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
  v21 = &unk_282C1CA28;
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
  v25 = &unk_282C1CA28;
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
  v17 = &unk_282C1CA28;
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
  v25[0] = &unk_282C1CA28;
  v25[1] = MEMORY[0x277CBEC28];
  v24[2] = *MEMORY[0x277D3F508];
  v3 = MEMORY[0x277CBEC38];
  v25[2] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v27[0] = v4;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"RSSI";
  v5 = *MEMORY[0x277D3F5A8];
  v21[0] = &unk_282C12D80;
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
  v17[0] = &unk_282C12D80;
  v16[0] = v5;
  v14 = *MEMORY[0x277D3F510];
  v15 = &unk_282C1CA58;
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
  v11 = &unk_282C1CA28;
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
  v14[0] = &unk_282C1CA28;
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
  v14[0] = &unk_282C1CA68;
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
  v11 = &unk_282C1CA28;
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
  v74[0] = &unk_282C1CA78;
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
    v32[0] = &unk_282C1CA28;
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
    v15 = &unk_282C1CA28;
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
  v75 = &unk_282C1CA28;
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
    v30[0] = &unk_282C1CA28;
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
    v21[0] = &unk_282C1CA28;
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
  v20[0] = &unk_282C1CA28;
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
    v213 = &unk_282C1CA88;
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
    v209 = &unk_282C1CA38;
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
    v570 = &unk_282C1CA38;
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
    v564 = &unk_282C1CA38;
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
    v558 = &unk_282C1CA98;
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
    v552 = &unk_282C1CAA8;
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
      v546 = &unk_282C1CA38;
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
      v540 = &unk_282C1CAB8;
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
    v189 = &unk_282C1CAC8;
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
    v183 = &unk_282C1CAC8;
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
    v177 = &unk_282C1CAC8;
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
    v171 = &unk_282C1CA78;
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
  v165 = &unk_282C1CA68;
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
  v15 = *MEMORY[0x277D85DE8];
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
      if (qword_2811F6700 != -1)
      {
        dispatch_once(&qword_2811F6700, block);
      }

      if (_MergedGlobals_1_55 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi manager reference"];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWifiManager:]"];
        [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:2318];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v14 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }
}

void *__30__PLWifiAgent_setWifiManager___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_55 = result;
  return result;
}

- (void)setWiFiHotspotDevice:(__WiFiDeviceClient *)device
{
  v25 = *MEMORY[0x277D85DE8];
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
        if (qword_2811F6708 != -1)
        {
          dispatch_once(&qword_2811F6708, block);
        }

        if (byte_2811F66B1 == 1)
        {
          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: set wifi hotspot device reference"];
          v7 = MEMORY[0x277D3F178];
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent = [v8 lastPathComponent];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiHotspotDevice:]"];
          [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:2339];

          v11 = PLLogCommon();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v24 = v6;
LABEL_19:
            _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            goto LABEL_16;
          }

          goto LABEL_16;
        }
      }
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __36__PLWifiAgent_setWiFiHotspotDevice___block_invoke_857;
      v20 = &__block_descriptor_40_e5_v8__0lu32l8;
      v21 = v12;
      if (qword_2811F6710 != -1)
      {
        dispatch_once(&qword_2811F6710, &v17);
      }

      if (byte_2811F66B2 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi hotspot device reference", v17, v18, v19, v20, v21];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent2 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiHotspotDevice:]"];
        [v13 logMessage:v6 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:2341];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v24 = v6;
          goto LABEL_19;
        }

LABEL_16:
      }
    }
  }
}

void *__36__PLWifiAgent_setWiFiHotspotDevice___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B1 = result;
  return result;
}

void *__36__PLWifiAgent_setWiFiHotspotDevice___block_invoke_857(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B2 = result;
  return result;
}

- (void)setWiFiAWDLDevice:(__WiFiDeviceClient *)device
{
  v25 = *MEMORY[0x277D85DE8];
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
        if (qword_2811F6718 != -1)
        {
          dispatch_once(&qword_2811F6718, block);
        }

        if (byte_2811F66B3 == 1)
        {
          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: set wifi awdl device reference"];
          v7 = MEMORY[0x277D3F178];
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent = [v8 lastPathComponent];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiAWDLDevice:]"];
          [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:2361];

          v11 = PLLogCommon();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v24 = v6;
LABEL_19:
            _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            goto LABEL_16;
          }

          goto LABEL_16;
        }
      }
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __33__PLWifiAgent_setWiFiAWDLDevice___block_invoke_866;
      v20 = &__block_descriptor_40_e5_v8__0lu32l8;
      v21 = v12;
      if (qword_2811F6720 != -1)
      {
        dispatch_once(&qword_2811F6720, &v17);
      }

      if (byte_2811F66B4 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi awdl device reference", v17, v18, v19, v20, v21];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent2 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiAWDLDevice:]"];
        [v13 logMessage:v6 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:2363];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v24 = v6;
          goto LABEL_19;
        }

LABEL_16:
      }
    }
  }
}

void *__33__PLWifiAgent_setWiFiAWDLDevice___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B3 = result;
  return result;
}

void *__33__PLWifiAgent_setWiFiAWDLDevice___block_invoke_866(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B4 = result;
  return result;
}

- (void)setWifiDevice:(__WiFiDeviceClient *)device
{
  v15 = *MEMORY[0x277D85DE8];
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
      if (qword_2811F6728 != -1)
      {
        dispatch_once(&qword_2811F6728, block);
      }

      if (byte_2811F66B5 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi device reference"];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWifiDevice:]"];
        [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:2420];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v14 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }
}

void *__29__PLWifiAgent_setWifiDevice___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B5 = result;
  return result;
}

- (void)findWifiDevice
{
  v60 = *MEMORY[0x277D85DE8];
  if (![(PLWifiAgent *)self wifiManager])
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_58;
    }

    v46 = objc_opt_class();
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __29__PLWifiAgent_findWifiDevice__block_invoke_902;
    v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v52[4] = v46;
    if (qword_2811F6758 != -1)
    {
      dispatch_once(&qword_2811F6758, v52);
    }

    if (byte_2811F66BB != 1)
    {
LABEL_58:
      v13 = 0;
      goto LABEL_59;
    }

    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: No wifi manager set--this method should not be getting called"];
    v47 = MEMORY[0x277D3F178];
    v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
    lastPathComponent = [v48 lastPathComponent];
    v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
    [v47 logMessage:v40 fromFile:lastPathComponent fromFunction:v50 fromLineNumber:2480];

    v45 = PLLogCommon();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v59 = v40;
      _os_log_debug_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v13 = 0;
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
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __29__PLWifiAgent_findWifiDevice__block_invoke;
    v57[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v57[4] = v6;
    if (qword_2811F6730 != -1)
    {
      dispatch_once(&qword_2811F6730, v57);
    }

    if (byte_2811F66B6 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: No wifi devices found"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent2 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
      [v8 logMessage:v7 fromFile:lastPathComponent2 fromFunction:v11 fromLineNumber:2437];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLWifiAgent *)self wifiManager];
  v13 = WiFiManagerClientCopyInterfaces();

  if (v13 && [v13 count])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __29__PLWifiAgent_findWifiDevice__block_invoke_878;
      v56[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v56[4] = v14;
      if (qword_2811F6738 != -1)
      {
        dispatch_once(&qword_2811F6738, v56);
      }

      if (byte_2811F66B7 == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: wifi devices found count: %lu", objc_msgSend(v13, "count")];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent3 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
        [v16 logMessage:v15 fromFile:lastPathComponent3 fromFunction:v19 fromLineNumber:2445];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v59 = v15;
          _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if ([v13 count])
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v51 = v13;
      do
      {
        v24 = [v13 objectAtIndex:v21];
        if (WiFiDeviceClientIsInterfaceAWDL())
        {
          if ([*(v5 + 384) debugEnabled])
          {
            v25 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __29__PLWifiAgent_findWifiDevice__block_invoke_884;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v25;
            if (qword_2811F6740 != -1)
            {
              dispatch_once(&qword_2811F6740, block);
            }

            if (byte_2811F66B8 == 1)
            {
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: wifi devices found: %@", WiFiDeviceClientGetInterfaceName()];
              v27 = MEMORY[0x277D3F178];
              v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent4 = [v28 lastPathComponent];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
              [v27 logMessage:v26 fromFile:lastPathComponent4 fromFunction:v30 fromLineNumber:2453];

              v31 = PLLogCommon();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v59 = v26;
                _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v5 = 0x277D3F000uLL;
              v13 = v51;
            }
          }

          [(PLWifiAgent *)self setWiFiAWDLDevice:v24];
          v22 = 1;
        }

        if (WiFiDeviceClientIsInterfaceHostAp())
        {
          if ([*(v5 + 384) debugEnabled])
          {
            v32 = objc_opt_class();
            v54[0] = MEMORY[0x277D85DD0];
            v54[1] = 3221225472;
            v54[2] = __29__PLWifiAgent_findWifiDevice__block_invoke_890;
            v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v54[4] = v32;
            if (qword_2811F6748 != -1)
            {
              dispatch_once(&qword_2811F6748, v54);
            }

            if (byte_2811F66B9 == 1)
            {
              v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: wifi hs devices found: %@", WiFiDeviceClientGetInterfaceName()];
              v34 = MEMORY[0x277D3F178];
              v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent5 = [v35 lastPathComponent];
              v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
              [v34 logMessage:v33 fromFile:lastPathComponent5 fromFunction:v37 fromLineNumber:2461];

              v38 = PLLogCommon();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v59 = v33;
                _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v5 = 0x277D3F000;
              v13 = v51;
            }
          }

          [(PLWifiAgent *)self setWiFiHotspotDevice:v24];
          v23 = 1;
        }

        if (v22 & v23)
        {
          break;
        }

        ++v21;
      }

      while ([v13 count] > v21);
    }

    goto LABEL_59;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v39 = objc_opt_class();
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __29__PLWifiAgent_findWifiDevice__block_invoke_896;
    v53[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v53[4] = v39;
    if (qword_2811F6750 != -1)
    {
      dispatch_once(&qword_2811F6750, v53);
    }

    if (byte_2811F66BA == 1)
    {
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: No wifi interfaces found"];
      v41 = MEMORY[0x277D3F178];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent6 = [v42 lastPathComponent];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
      [v41 logMessage:v40 fromFile:lastPathComponent6 fromFunction:v44 fromLineNumber:2476];

      v45 = PLLogCommon();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v40;
        _os_log_debug_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_57:
    }
  }

LABEL_59:
}

void *__29__PLWifiAgent_findWifiDevice__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B6 = result;
  return result;
}

void *__29__PLWifiAgent_findWifiDevice__block_invoke_878(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B7 = result;
  return result;
}

void *__29__PLWifiAgent_findWifiDevice__block_invoke_884(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B8 = result;
  return result;
}

void *__29__PLWifiAgent_findWifiDevice__block_invoke_890(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B9 = result;
  return result;
}

void *__29__PLWifiAgent_findWifiDevice__block_invoke_896(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66BA = result;
  return result;
}

void *__29__PLWifiAgent_findWifiDevice__block_invoke_902(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66BB = result;
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
    v10[3] = &unk_2782597E8;
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
  v40[1] = *MEMORY[0x277D85DE8];
  [(PLWifiAgent *)self setWifiManager:WiFiManagerClientCreate()];
  v3 = objc_alloc(MEMORY[0x277D3F160]);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke;
  v34[3] = &unk_2782597E8;
  v34[4] = self;
  v4 = [v3 initWithOperator:self forNotification:@"com.apple.airport.userNotification" requireState:1 withBlock:v34];
  notificationWiFiChanged = self->_notificationWiFiChanged;
  self->_notificationWiFiChanged = v4;

  if ([(PLOperator *)self isDebugEnabled])
  {
    v6 = objc_alloc(MEMORY[0x277D3F1A8]);
    v37[0] = &unk_282C12D98;
    v37[1] = &unk_282C12DB0;
    v38[0] = &unk_282C1CA28;
    v38[1] = &unk_282C12DC8;
    v39 = @"Level";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v40[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_934;
    v33[3] = &unk_2782597E8;
    v33[4] = self;
    v9 = [v6 initWithOperator:self forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v8 withBlock:v33];
    batteryLevelChanged = self->_batteryLevelChanged;
    self->_batteryLevelChanged = v9;
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_2_935;
  v32[3] = &unk_2782597E8;
  v32[4] = self;
  v11 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v32];
  sbcLevelChanged = self->_sbcLevelChanged;
  self->_sbcLevelChanged = v11;

  v13 = objc_alloc(MEMORY[0x277D3F1A8]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_942;
  v31[3] = &unk_2782597E8;
  v31[4] = self;
  v14 = [v13 initWithOperator:self forEntryKey:@"PLSleepWakeAgent_EventForward_PowerState" withBlock:v31];
  [(PLWifiAgent *)self setDeviceWake:v14];
  block[5] = MEMORY[0x277D85DD0];
  block[6] = 3221225472;
  block[7] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_950;
  block[8] = &unk_27825D6C0;
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
    if (qword_2811F6778 != -1)
    {
      dispatch_once(&qword_2811F6778, block);
    }

    if (byte_2811F66BF == 1)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to create cell fallback observer"];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent initOperatorDependancies]"];
      [v17 logMessage:v16 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:2634];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v16;
        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v22 = [objc_alloc(MEMORY[0x277D3F1F0]) initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:&__block_literal_global_961];
  thermalMonitorListener = self->_thermalMonitorListener;
  self->_thermalMonitorListener = v22;

  v24 = objc_alloc(MEMORY[0x277D3F270]);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_972;
  v29[3] = &unk_27825A1D8;
  v29[4] = self;
  v25 = [v24 initWithOperator:self withRegistration:&unk_282C19390 withBlock:v29];
  remoteControlSessionListener = self->_remoteControlSessionListener;
  self->_remoteControlSessionListener = v25;

  if ([(PLWifiAgent *)self hasWiFi])
  {
    v27 = objc_alloc_init(MEMORY[0x277D7BB28]);
    monitor = self->_monitor;
    self->_monitor = v27;
  }
}

void *__39__PLWifiAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66BC = result;
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
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setRemainingAllowedRSSIEntryCount:3];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_3;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (qword_2811F6768 != -1)
    {
      dispatch_once(&qword_2811F6768, block);
    }

    if (byte_2811F66BD == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logging on mac"];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent initOperatorDependancies]_block_invoke_2"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:2583];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v12 = v3;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
  byte_2811F66BD = result;
  return result;
}

void __39__PLWifiAgent_initOperatorDependancies__block_invoke_942(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
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
      if (qword_2811F6770 != -1)
      {
        dispatch_once(&qword_2811F6770, block);
      }

      if (byte_2811F66BE == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: No entry object associated with SleepWake entry"];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v8 = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent initOperatorDependancies]_block_invoke"];
        [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:2597];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v13 = v5;
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }
}

void *__39__PLWifiAgent_initOperatorDependancies__block_invoke_2_946(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66BE = result;
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
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "cellFallbackObserver could not be created", v5, 2u);
    }
  }
}

void *__39__PLWifiAgent_initOperatorDependancies__block_invoke_951(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66BF = result;
  return result;
}

void __39__PLWifiAgent_initOperatorDependancies__block_invoke_959(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Notification from ThermalMonitor: %@", &v4, 0xCu);
  }
}

void __39__PLWifiAgent_initOperatorDependancies__block_invoke_972(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogWifi();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "RemoteControlSession payload: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventPointRemoteControlSession:v6];
}

- (unint64_t)getCurrentChannelWidth:(__WiFiNetwork *)width
{
  v18 = *MEMORY[0x277D85DE8];
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
      if (qword_2811F6780 != -1)
      {
        dispatch_once(&qword_2811F6780, block);
      }

      if (byte_2811F66C0 == 1)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"channel width flag is null"];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent getCurrentChannelWidth:]"];
        [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:2731];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          valuePtr = 138412290;
          v17 = v9;
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", &valuePtr, 0xCu);
        }
      }
    }

    return 0;
  }
}

void *__38__PLWifiAgent_getCurrentChannelWidth___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C0 = result;
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
    v4 = off_278261A48[reason - 1];
  }

  return v4;
}

- (void)logFromWiFiNoAvailableCallback:(id)callback withAvailability:(BOOL)availability withWakeParams:(id)params
{
  availabilityCopy = availability;
  v23 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__PLWifiAgent_logFromWiFiNoAvailableCallback_withAvailability_withWakeParams___block_invoke;
    v20[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v20[4] = v8;
    if (qword_2811F6788 != -1)
    {
      dispatch_once(&qword_2811F6788, v20);
    }

    if (byte_2811F66C1 == 1)
    {
      paramsCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"before dispatch WiFi availability= %d:, wakeparams=%@", availabilityCopy, paramsCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logFromWiFiNoAvailableCallback:withAvailability:withWakeParams:]"];
      [v10 logMessage:paramsCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:2769];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = paramsCopy;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__PLWifiAgent_logFromWiFiNoAvailableCallback_withAvailability_withWakeParams___block_invoke_999;
  block[3] = &unk_2782619D8;
  v19 = availabilityCopy;
  block[4] = self;
  v18 = paramsCopy;
  v16 = paramsCopy;
  dispatch_async(workQueue, block);
}

void *__78__PLWifiAgent_logFromWiFiNoAvailableCallback_withAvailability_withWakeParams___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C1 = result;
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
  block[3] = &unk_27825D6E8;
  block[4] = self;
  v12 = callbackCopy;
  v13 = statsCopy;
  v9 = statsCopy;
  v10 = callbackCopy;
  dispatch_async(workQueue, block);
}

void __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6790 != -1)
    {
      dispatch_once(&qword_2811F6790, block);
    }

    if (byte_2811F66C2 == 1)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [*(a1 + 32) className];
      v6 = [v4 stringWithFormat:@"%@ got CFCallback %@", v5, *(a1 + 40)];

      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logFromLinkChangeCallback:withStats:]_block_invoke"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:2786];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke_1005;
    v19[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v19[4] = v12;
    if (qword_2811F6798 != -1)
    {
      dispatch_once(&qword_2811F6798, v19);
    }

    if (byte_2811F66C3 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"link change dic: %@", *(a1 + 48)];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logFromLinkChangeCallback:withStats:]_block_invoke_2"];
      [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:2787];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) log];
  objc_autoreleasePoolPop(v2);
}

void *__51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C2 = result;
  return result;
}

void *__51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke_1005(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C3 = result;
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
  v13[3] = &unk_278261A00;
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
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__PLWifiAgent_logFromAJCallback_withFlag_withStats___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F67A0 != -1)
    {
      dispatch_once(&qword_2811F67A0, block);
    }

    if (byte_2811F66C4 == 1)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [*(a1 + 32) className];
      v6 = [v4 stringWithFormat:@"%@ got AJCallback %@", v5, *(a1 + 40)];

      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logFromAJCallback:withFlag:withStats:]_block_invoke"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:2815];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v14 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointJoin:*(a1 + 56) withStats:*(a1 + 48)];
  objc_autoreleasePoolPop(v2);
}

void *__52__PLWifiAgent_logFromAJCallback_withFlag_withStats___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C4 = result;
  return result;
}

- (void)logEventPointWake:(id)wake
{
  v97 = *MEMORY[0x277D85DE8];
  wakeCopy = wake;
  if ([(PLWifiAgent *)self hasWiFi])
  {
    if (wakeCopy)
    {
      v5 = wakeCopy;
      goto LABEL_12;
    }

    [(PLWifiAgent *)self wifiDevice];
    v5 = WiFiDeviceClientCopyProperty();
    if (v5)
    {
LABEL_12:
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v12 = objc_opt_class();
        v92[0] = MEMORY[0x277D85DD0];
        v92[1] = 3221225472;
        v92[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1027;
        v92[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v92[4] = v12;
        if (qword_2811F67B8 != -1)
        {
          dispatch_once(&qword_2811F67B8, v92);
        }

        if (byte_2811F66C7 == 1)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"wake params = %@", v5];
          v14 = MEMORY[0x277D3F178];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent = [v15 lastPathComponent];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
          [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:2861];

          v18 = PLLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v96 = v13;
            _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v19 = [v5 objectForCFString:@"IO80211InterfaceWoWWakeUpCommand"];
      v11 = [v5 objectForCFString:@"IO80211InterfaceWoWWakeUpData"];
      v20 = [v5 objectForKey:@"IO80211InterfaceWoWWakeUpTCPKAWakeReason"];
      v21 = [v5 objectForCFString:@"IO80211InterfaceWoWWakeUpTimeStamp"];
      [v21 doubleValue];
      v23 = v22;

      v24 = MEMORY[0x277CCABB0];
      v25 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v23];
      convertFromSystemToMonotonic = [v25 convertFromSystemToMonotonic];
      [convertFromSystemToMonotonic timeIntervalSince1970];
      v27 = [v24 numberWithDouble:?];

      v28 = v19;
      v29 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Wake"];
      v30 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v29];
      [v30 setObject:v28 forKeyedSubscript:@"WakeReason"];
      v86 = v27;
      [v30 setObject:v27 forKeyedSubscript:@"WakeTime"];
      v87 = v20;
      [v30 setObject:v20 forKeyedSubscript:@"TCPKAWakeReason"];
      if (v11)
      {
        v31 = [MEMORY[0x277CCABB0] numberWithInt:{-[NSObject length](v11, "length")}];
        [v30 setObject:v31 forKeyedSubscript:@"WakeLen"];
      }

      if (([v28 isEqualToString:@"DataFrame"] & 1) == 0 && !objc_msgSend(v28, "isEqualToString:", @"E_RX_IP_PACKET"))
      {
        if ([v28 isEqualToString:@"E_PFN_NET_FOUND"])
        {
          [(PLWifiAgent *)self logEventPointWakePNO:v11 withParams:v5 toEntry:v30];
        }

        else if ([v28 isEqualToString:@"E_LINK"])
        {
          [(PLWifiAgent *)self logEventPointWakeLink:v11 withParams:v5 toEntry:v30];
        }

        else if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v72 = objc_opt_class();
          v89[0] = MEMORY[0x277D85DD0];
          v89[1] = 3221225472;
          v89[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1094;
          v89[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v89[4] = v72;
          if (qword_2811F67D0 != -1)
          {
            dispatch_once(&qword_2811F67D0, v89);
          }

          if (byte_2811F66CA == 1)
          {
            v73 = v29;
            v85 = v28;
            v81 = v11;
            v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: unrecognized wake reason: %@", v28];
            v75 = MEMORY[0x277D3F178];
            v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
            lastPathComponent2 = [v76 lastPathComponent];
            v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
            [v75 logMessage:v74 fromFile:lastPathComponent2 fromFunction:v78 fromLineNumber:2910];

            v79 = PLLogCommon();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v96 = v74;
              _os_log_debug_impl(&dword_21A4C6000, v79, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v11 = v81;
            v28 = v85;
            v29 = v73;
          }
        }

        goto LABEL_51;
      }

      v84 = v28;
      [(PLWifiAgent *)self logEventPointWakeDataFrame:v11 withParams:v5 toEntry:v30];
      v32 = [v30 objectForKeyedSubscript:@"tcp_dest_port"];
      v82 = v29;
      v83 = wakeCopy;
      if (v32 && (v33 = v32, [v30 objectForKeyedSubscript:@"tcp_source_port"], v34 = objc_claimAutoreleasedReturnValue(), v34, v33, v34))
      {
        v35 = MEMORY[0x277CCABB0];
        v36 = [v30 objectForKeyedSubscript:@"tcp_dest_port"];
        v88 = [v35 numberWithInteger:{objc_msgSend(v36, "integerValue")}];

        v37 = MEMORY[0x277CCABB0];
        v38 = @"tcp_source_port";
      }

      else
      {
        v39 = [v30 objectForKeyedSubscript:@"udp_dest_port"];
        if (!v39 || (v40 = v39, [v30 objectForKeyedSubscript:@"udp_source_port"], v41 = objc_claimAutoreleasedReturnValue(), v41, v40, !v41))
        {
          if (![MEMORY[0x277D3F180] debugEnabled])
          {
            goto LABEL_40;
          }

          v47 = objc_opt_class();
          v91[0] = MEMORY[0x277D85DD0];
          v91[1] = 3221225472;
          v91[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1066;
          v91[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v91[4] = v47;
          if (qword_2811F67C0 != -1)
          {
            dispatch_once(&qword_2811F67C0, v91);
          }

          if (byte_2811F66C8 != 1)
          {
LABEL_40:
            v46 = v11;
            v45 = 0;
            v88 = 0;
            goto LABEL_41;
          }

          v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: unsupported network protocol"];
          v48 = MEMORY[0x277D3F178];
          v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent3 = [v49 lastPathComponent];
          v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
          [v48 logMessage:v44 fromFile:lastPathComponent3 fromFunction:v51 fromLineNumber:2889];

          v52 = PLLogCommon();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v96 = v44;
            _os_log_debug_impl(&dword_21A4C6000, v52, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v45 = 0;
          v88 = 0;
LABEL_30:
          v46 = v11;

LABEL_41:
          v53 = +[PLProcessPortMap sharedInstance];
          v54 = [v30 objectForKeyedSubscript:@"ip_destination"];
          v55 = [v30 objectForKeyedSubscript:@"ip_source"];
          v56 = [v30 objectForKeyedSubscript:@"ip_protocol"];
          v57 = [v53 pidAndProcessNameForDestAddress:v54 withDestPort:v88 withSourceAddress:v55 withSourcePort:v45 withProtocol:v56];

          v11 = v46;
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v58 = objc_opt_class();
            v90[0] = MEMORY[0x277D85DD0];
            v90[1] = 3221225472;
            v90[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1082;
            v90[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v90[4] = v58;
            if (qword_2811F67C8 != -1)
            {
              dispatch_once(&qword_2811F67C8, v90);
            }

            if (byte_2811F66C9 == 1)
            {
              v80 = v46;
              v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"pidAndProcessName=%@", v57];
              v60 = MEMORY[0x277D3F178];
              v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent4 = [v61 lastPathComponent];
              v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
              [v60 logMessage:v59 fromFile:lastPathComponent4 fromFunction:v63 fromLineNumber:2898];

              v64 = PLLogCommon();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v96 = v59;
                _os_log_debug_impl(&dword_21A4C6000, v64, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v11 = v80;
            }
          }

          if (v57)
          {
            v65 = [v57 pid];
            [v30 setObject:v65 forKeyedSubscript:@"PID"];

            processName = [v57 processName];
            [v30 setObject:processName forKeyedSubscript:@"ProcessName"];
          }

          wakeCopy = v83;
          v28 = v84;
          v29 = v82;
LABEL_51:
          [(PLOperator *)self logEntry:v30];

          goto LABEL_52;
        }

        v42 = MEMORY[0x277CCABB0];
        v43 = [v30 objectForKeyedSubscript:@"udp_dest_port"];
        v88 = [v42 numberWithInteger:{objc_msgSend(v43, "integerValue")}];

        v37 = MEMORY[0x277CCABB0];
        v38 = @"udp_source_port";
      }

      v44 = [v30 objectForKeyedSubscript:v38];
      v45 = [v37 numberWithInteger:{objc_msgSend(v44, "integerValue")}];
      goto LABEL_30;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v67 = objc_opt_class();
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1021;
      v93[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v93[4] = v67;
      if (qword_2811F67B0 != -1)
      {
        dispatch_once(&qword_2811F67B0, v93);
      }

      if (byte_2811F66C6 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: woke up for wlan but WoW wakeup parameters dictionary returned nil"];
        v68 = MEMORY[0x277D3F178];
        v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent5 = [v69 lastPathComponent];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
        [v68 logMessage:v5 fromFile:lastPathComponent5 fromFunction:v71 fromLineNumber:2859];

        v11 = PLLogCommon();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_52;
        }

        *buf = 138412290;
        v96 = v5;
        goto LABEL_10;
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
    if (qword_2811F67A8 != -1)
    {
      dispatch_once(&qword_2811F67A8, block);
    }

    if (byte_2811F66C5 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"No wifi to log power properties about"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent6 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
      [v7 logMessage:v5 fromFile:lastPathComponent6 fromFunction:v10 fromLineNumber:2845];

      v11 = PLLogCommon();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
LABEL_52:

        goto LABEL_53;
      }

      *buf = 138412290;
      v96 = v5;
LABEL_10:
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      goto LABEL_52;
    }
  }

LABEL_53:
}

void *__33__PLWifiAgent_logEventPointWake___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C5 = result;
  return result;
}

void *__33__PLWifiAgent_logEventPointWake___block_invoke_1021(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C6 = result;
  return result;
}

void *__33__PLWifiAgent_logEventPointWake___block_invoke_1027(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C7 = result;
  return result;
}

void *__33__PLWifiAgent_logEventPointWake___block_invoke_1066(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C8 = result;
  return result;
}

void *__33__PLWifiAgent_logEventPointWake___block_invoke_1082(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C9 = result;
  return result;
}

void *__33__PLWifiAgent_logEventPointWake___block_invoke_1094(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66CA = result;
  return result;
}

- (void)logEventPointWakeDataFrame:(id)frame withParams:(id)params toEntry:(id)entry
{
  v96 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  entryCopy = entry;
  if ([frameCopy length] > 0xE)
  {
    [frameCopy getBytes:buf length:14];
    v15 = [frameCopy subdataWithRange:{14, objc_msgSend(frameCopy, "length") - 14}];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", buf[0], buf[1], buf[2], buf[3], v94, BYTE1(v94)];;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", BYTE2(v94), BYTE3(v94), BYTE4(v94), BYTE5(v94), BYTE6(v94), HIBYTE(v94)];;
    v18 = [MEMORY[0x277D3F1F8] decodeEtherType:bswap32(v95) >> 16];
    [entryCopy setObject:v17 forKeyedSubscript:@"RemoteMAC"];
    [entryCopy setObject:v16 forKeyedSubscript:@"LocalMAC"];
    [entryCopy setObject:v18 forKeyedSubscript:@"EtherType"];
    if (([v18 isEqualToString:@"IPv4"] & 1) != 0 || objc_msgSend(v18, "isEqualToString:", @"IPv6"))
    {
      v19 = [MEMORY[0x277D3F1F8] decodeIPPacket:v15 encryptedPath:0];
      debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
      if (v19)
      {
        v83 = v15;
        v84 = v16;
        if (debugEnabled)
        {
          v21 = objc_opt_class();
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1128;
          v88[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v88[4] = v21;
          if (qword_2811F67E8 != -1)
          {
            dispatch_once(&qword_2811F67E8, v88);
          }

          if (byte_2811F66CD == 1)
          {
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dictionary for IP: %@", v19];
            v23 = MEMORY[0x277D3F178];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
            lastPathComponent = [v24 lastPathComponent];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
            [v23 logMessage:v22 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:2948];

            v27 = PLLogCommon();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *v91 = 138412290;
              v92 = v22;
              _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", v91, 0xCu);
            }
          }
        }

        v28 = [v19 objectForKeyedSubscript:@"destination"];
        [entryCopy setObject:v28 forKeyedSubscript:@"ip_destination"];

        v29 = [v19 objectForKeyedSubscript:@"source"];
        [entryCopy setObject:v29 forKeyedSubscript:@"ip_source"];

        v30 = [v19 objectForKeyedSubscript:@"protocol"];
        [entryCopy setObject:v30 forKeyedSubscript:@"ip_protocol"];

        v31 = MEMORY[0x277CCACA8];
        v32 = [v19 objectForKeyedSubscript:@"version"];
        v33 = [v31 stringWithFormat:@"%@", v32];
        [entryCopy setObject:v33 forKeyedSubscript:@"ip_version"];

        v34 = MEMORY[0x277CCABB0];
        v35 = [v19 objectForKeyedSubscript:@"seqNo"];
        v36 = [v34 numberWithUnsignedInt:{objc_msgSend(v35, "unsignedIntValue")}];
        [entryCopy setObject:v36 forKeyedSubscript:@"seqNo"];

        v37 = MEMORY[0x277CCABB0];
        v38 = [v19 objectForKeyedSubscript:@"spi"];
        v39 = [v37 numberWithUnsignedInt:{objc_msgSend(v38, "unsignedIntValue")}];
        [entryCopy setObject:v39 forKeyedSubscript:@"spi"];

        v40 = [v19 objectForKey:@"protocol"];
        LODWORD(v32) = [v40 isEqualToString:@"TCP"];

        if (v32)
        {
          v41 = MEMORY[0x277CCACA8];
          v42 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v43 = [v42 objectForKeyedSubscript:@"ack"];
          v44 = [v41 stringWithFormat:@"%@", v43];
          [entryCopy setObject:v44 forKeyedSubscript:@"tcp_ack"];

          v45 = MEMORY[0x277CCACA8];
          v46 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v47 = [v46 objectForKeyedSubscript:@"seq"];
          v48 = [v45 stringWithFormat:@"%@", v47];
          [entryCopy setObject:v48 forKeyedSubscript:@"tcp_seq"];

          v49 = MEMORY[0x277CCACA8];
          v50 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v51 = [v50 objectForKeyedSubscript:@"window"];
          v52 = [v49 stringWithFormat:@"%@", v51];
          [entryCopy setObject:v52 forKeyedSubscript:@"tcp_window"];

          v53 = MEMORY[0x277CCACA8];
          v54 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v55 = [v54 objectForKeyedSubscript:@"control"];
          v56 = [v53 stringWithFormat:@"%@", v55];
          [entryCopy setObject:v56 forKeyedSubscript:@"tcp_control"];

          v57 = MEMORY[0x277CCACA8];
          v58 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v59 = [v58 objectForKeyedSubscript:@"dest_port"];
          v60 = [v57 stringWithFormat:@"%@", v59];
          [entryCopy setObject:v60 forKeyedSubscript:@"tcp_dest_port"];

          v61 = MEMORY[0x277CCACA8];
          v62 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v63 = [v62 objectForKeyedSubscript:@"source_port"];
          v64 = [v61 stringWithFormat:@"%@", v63];
          v65 = @"tcp_source_port";
        }

        else
        {
          v76 = [v19 objectForKey:@"protocol"];
          v77 = [v76 isEqualToString:@"UDP"];

          if (!v77)
          {
            v15 = v83;
            v16 = v84;
            goto LABEL_42;
          }

          v78 = MEMORY[0x277CCACA8];
          v79 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v80 = [v79 objectForKeyedSubscript:@"dest_port"];
          v81 = [v78 stringWithFormat:@"%@", v80];
          [entryCopy setObject:v81 forKeyedSubscript:@"udp_dest_port"];

          v82 = MEMORY[0x277CCACA8];
          v62 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v63 = [v62 objectForKeyedSubscript:@"source_port"];
          v64 = [v82 stringWithFormat:@"%@", v63];
          v65 = @"udp_source_port";
        }

        [entryCopy setObject:v64 forKeyedSubscript:v65];

        v16 = v84;
      }

      else
      {
        if (!debugEnabled)
        {
          goto LABEL_40;
        }

        v66 = objc_opt_class();
        v89[0] = MEMORY[0x277D85DD0];
        v89[1] = 3221225472;
        v89[2] = __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1122;
        v89[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v89[4] = v66;
        if (qword_2811F67E0 != -1)
        {
          dispatch_once(&qword_2811F67E0, v89);
        }

        if (byte_2811F66CC != 1)
        {
LABEL_40:
          v19 = 0;
          goto LABEL_42;
        }

        v83 = v15;
        v85 = v16;
        v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to decode IP packet"];
        v67 = MEMORY[0x277D3F178];
        v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent2 = [v68 lastPathComponent];
        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
        [v67 logMessage:v62 fromFile:lastPathComponent2 fromFunction:v70 fromLineNumber:2946];

        v63 = PLLogCommon();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          *v91 = 138412290;
          v92 = v62;
          _os_log_debug_impl(&dword_21A4C6000, v63, OS_LOG_TYPE_DEBUG, "%@", v91, 0xCu);
        }

        v16 = v85;
      }

      v15 = v83;
    }

    else
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_43;
      }

      v71 = objc_opt_class();
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1191;
      v87[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v87[4] = v71;
      if (qword_2811F67F0 != -1)
      {
        dispatch_once(&qword_2811F67F0, v87);
      }

      if (byte_2811F66CE != 1)
      {
        goto LABEL_43;
      }

      v86 = v16;
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unrelated etherType: %@", v18];
      v72 = MEMORY[0x277D3F178];
      v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent3 = [v73 lastPathComponent];
      v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
      [v72 logMessage:v19 fromFile:lastPathComponent3 fromFunction:v75 fromLineNumber:2973];

      v62 = PLLogCommon();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        *v91 = 138412290;
        v92 = v19;
        _os_log_debug_impl(&dword_21A4C6000, v62, OS_LOG_TYPE_DEBUG, "%@", v91, 0xCu);
      }

      v16 = v86;
    }

LABEL_42:
LABEL_43:

    goto LABEL_44;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F67D8 != -1)
    {
      dispatch_once(&qword_2811F67D8, block);
    }

    if (byte_2811F66CB == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: payload too short: length of %lu", objc_msgSend(frameCopy, "length")];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent4 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent4 fromFunction:v13 fromLineNumber:2920];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v94 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

LABEL_44:
}

void *__61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66CB = result;
  return result;
}

void *__61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1122(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66CC = result;
  return result;
}

void *__61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1128(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66CD = result;
  return result;
}

void *__61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1191(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66CE = result;
  return result;
}

- (void)logEventPointWakePNO:(id)o withParams:(id)params toEntry:(id)entry
{
  v55 = *MEMORY[0x277D85DE8];
  oCopy = o;
  entryCopy = entry;
  v9 = [params objectForCFString:@"IO80211InterfaceWoWWakeUpCommand"];
  memset(v52, 0, sizeof(v52));
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  memset(v51, 0, 44);
  v43 = v9;
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
      if (qword_2811F67F8 != -1)
      {
        dispatch_once(&qword_2811F67F8, block);
      }

      if (byte_2811F66CF == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"WoW wake payload too small to decode E_PFN_NET_FOUND"];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakePNO:withParams:toEntry:]"];
        [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:2986];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *v53 = 138412290;
          v54 = v11;
LABEL_40:
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", v53, 0xCu);
          goto LABEL_28;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_31;
  }

  [oCopy getBytes:v52 length:48];
  [oCopy getBytes:v47 range:{48, 56}];
  if (v52[1] != 553648128)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v33 = objc_opt_class();
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1200;
      v45[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v45[4] = v33;
      if (qword_2811F6800 != -1)
      {
        dispatch_once(&qword_2811F6800, v45);
      }

      if (byte_2811F66D0 == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFi Logger wl_event_msg_t.event_type (0x%x) and wow_wakeup_command (%@ 0x%x) don't match", bswap32(v52[1]), v9, 16];
        v34 = MEMORY[0x277D3F178];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent2 = [v35 lastPathComponent];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakePNO:withParams:toEntry:]"];
        [v34 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v37 fromLineNumber:2994];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *v53 = 138412290;
          v54 = v11;
          goto LABEL_40;
        }

LABEL_28:
        v21 = 0;
        goto LABEL_29;
      }
    }

LABEL_31:
    v25 = 0;
    goto LABEL_32;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v47[2]];
  [entryCopy setObject:v17 forKeyedSubscript:@"network_count"];

  v18 = v47[2];
  if (v47[2] >= 5)
  {
    v19 = 5;
  }

  else
  {
    v19 = v47[2];
  }

  v47[2] = v19;
  if (!v18)
  {
    goto LABEL_31;
  }

  v20 = 0;
  v21 = 0;
  v22 = 60;
  while ([oCopy length] >= (v22 + 44))
  {
    if (v20)
    {
      [oCopy getBytes:v51 range:{v22, 44}];
    }

    else
    {
      v23 = *((v47 | 0xC) + 0x10);
      v51[0] = *(v47 | 0xC);
      v51[1] = v23;
      *(&v51[1] + 12) = *((v47 | 0xC) + 0x1C);
    }

    if (BYTE7(v51[0]) >= 0x20u)
    {
      v24 = 32;
    }

    else
    {
      v24 = BYTE7(v51[0]);
    }

    BYTE7(v51[0]) = v24;
    __memcpy_chk();
    v53[v24] = 0;
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", LOBYTE(v51[0]), BYTE1(v51[0]), BYTE2(v51[0]), BYTE3(v51[0]), BYTE4(v51[0]), BYTE5(v51[0])];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v51[0])];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_channel", v20];
    [entryCopy setObject:v26 forKeyedSubscript:v27];

    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:v53];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_ssid", v20];
    [entryCopy setObject:v28 forKeyedSubscript:v29];

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_bssid", v20];
    [entryCopy setObject:v25 forKeyedSubscript:v30];

    v31 = [MEMORY[0x277CCABB0] numberWithInt:SWORD4(v51[2])];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_rssi", v20];
    [entryCopy setObject:v31 forKeyedSubscript:v32];

    ++v20;
    v22 += 44;
    v21 = v25;
    if (v20 >= v47[2])
    {
      goto LABEL_32;
    }
  }

  if (![MEMORY[0x277D3F180] debugEnabled])
  {
    goto LABEL_30;
  }

  v38 = objc_opt_class();
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1209;
  v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v44[4] = v38;
  if (qword_2811F6808 != -1)
  {
    dispatch_once(&qword_2811F6808, v44);
  }

  if (byte_2811F66D1 != 1)
  {
    goto LABEL_30;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"WoW wake payload too small to decode all PNO networks"];
  v39 = MEMORY[0x277D3F178];
  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
  lastPathComponent3 = [v40 lastPathComponent];
  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakePNO:withParams:toEntry:]"];
  [v39 logMessage:v11 fromFile:lastPathComponent3 fromFunction:v42 fromLineNumber:3004];

  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v50 = v11;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

LABEL_29:

LABEL_30:
  v25 = v21;
LABEL_32:
}

void *__55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66CF = result;
  return result;
}

void *__55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1200(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D0 = result;
  return result;
}

void *__55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1209(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D1 = result;
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
LABEL_16:

      goto LABEL_17;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = objc_opt_class();
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __56__PLWifiAgent_logEventPointWakeLink_withParams_toEntry___block_invoke_1236;
      v24 = &__block_descriptor_40_e5_v8__0lu32l8;
      v25 = v16;
      if (qword_2811F6818 != -1)
      {
        dispatch_once(&qword_2811F6818, &v21);
      }

      if (byte_2811F66D3 == 1)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFi Logger wl_event_msg_t.event_type (0x%x) and wow_wakeup_command (0x%x) don't match", bswap32(DWORD1(v29[0])), 16, v21, v22, v23, v24, v25];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeLink:withParams:toEntry:]"];
        [v17 logMessage:v10 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:3044];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v28 = v10;
          goto LABEL_19;
        }

LABEL_15:

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
    if (qword_2811F6810 != -1)
    {
      dispatch_once(&qword_2811F6810, block);
    }

    if (byte_2811F66D2 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"WoW wake payload too small to decode E_LINK"];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent2 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeLink:withParams:toEntry:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent2 fromFunction:v14 fromLineNumber:3035];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v28 = v10;
LABEL_19:
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

LABEL_17:
}

void *__56__PLWifiAgent_logEventPointWakeLink_withParams_toEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D2 = result;
  return result;
}

void *__56__PLWifiAgent_logEventPointWakeLink_withParams_toEntry___block_invoke_1236(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D3 = result;
  return result;
}

- (void)logEventPointJoin:(unsigned __int8)join withStats:(id)stats
{
  joinCopy = join;
  v21 = *MEMORY[0x277D85DE8];
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
    if (qword_2811F6820 != -1)
    {
      dispatch_once(&qword_2811F6820, block);
    }

    if (byte_2811F66D4 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"No wifi to log power properties about"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointJoin:withStats:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:3051];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__43__PLWifiAgent_logEventPointJoin_withStats___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D4 = result;
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
  v34 = *MEMORY[0x277D85DE8];
  if ([(PLWifiAgent *)self hasWiFi])
  {
    v3 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ModuleInfo"];
    v4 = objc_msgSend_storage(self);
    v5 = [v4 lastEntryForKey:v3];

    if (v5)
    {
LABEL_32:

      return;
    }

    [(PLWifiAgent *)self wifiDevice];
    v6 = WiFiDeviceClientCopyProperty();
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __40__PLWifiAgent_logEventForwardModuleInfo__block_invoke_1248;
      v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v30[4] = v7;
      if (qword_2811F6830 != -1)
      {
        dispatch_once(&qword_2811F6830, v30);
      }

      if (byte_2811F66D6 == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Module parameters: %@", v6];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardModuleInfo]"];
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:3139];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v33 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (v6)
    {
      v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
      v15 = [v6 objectForKey:@"ChipInfo"];
      [v14 setObject:v15 forKeyedSubscript:@"ChipInfo"];

      v16 = [v6 objectForKey:@"ManufacturerID"];
      [v14 setObject:v16 forKeyedSubscript:@"ManufacturerId"];

      v17 = [v6 objectForKey:@"ModuleInfo"];
      [v14 setObject:v17 forKeyedSubscript:@"ModuleInfo"];

      v18 = [v6 objectForKey:@"ProductID"];
      [v14 setObject:v18 forKeyedSubscript:@"ProductId"];

      [(PLOperator *)self logEntry:v14];
    }

    else
    {
      v24 = [MEMORY[0x277D3F208] isWiFiClass:1004019];
      v25 = PLLogWifi();
      v14 = v25;
      if (v24)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "Debug: Call to fetch module parameters returned (null).", buf, 2u);
        }

        v14 = MGCopyAnswer();
        v26 = PLLogWifi();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v33 = v14;
          _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "WiFi Chipset: %@", buf, 0xCu);
        }

        if ([v14 length])
        {
          v27 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
          [v27 setObject:v14 forKeyedSubscript:@"ChipInfo"];
          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
          [v27 setObject:v28 forKeyedSubscript:@"ManufacturerId"];

          [v27 setObject:@"V=u" forKeyedSubscript:@"ModuleInfo"];
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
          [v27 setObject:v29 forKeyedSubscript:@"ProductId"];

          [(PLOperator *)self logEntry:v27];
        }

        else
        {
          v27 = PLLogWifi();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_ERROR, "WiFi Chipset is an empty string.", buf, 2u);
          }
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, "Error: Call to fetch module parameters returned (null).", buf, 2u);
      }
    }

LABEL_31:
    goto LABEL_32;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLWifiAgent_logEventForwardModuleInfo__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v19;
    if (qword_2811F6828 != -1)
    {
      dispatch_once(&qword_2811F6828, block);
    }

    if (byte_2811F66D5 == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"No wifi to log module info about"];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardModuleInfo]"];
      [v20 logMessage:v3 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:3129];

      v6 = PLLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v3;
        _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_31;
    }
  }
}

void *__40__PLWifiAgent_logEventForwardModuleInfo__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D5 = result;
  return result;
}

void *__40__PLWifiAgent_logEventForwardModuleInfo__block_invoke_1248(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D6 = result;
  return result;
}

- (void)logEventForwardRSSI:(id)i
{
  v23 = *MEMORY[0x277D85DE8];
  iCopy = i;
  if (iCopy)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __35__PLWifiAgent_logEventForwardRSSI___block_invoke;
      v19 = &__block_descriptor_40_e5_v8__0lu32l8;
      v20 = v5;
      if (qword_2811F6838 != -1)
      {
        dispatch_once(&qword_2811F6838, &block);
      }

      if (byte_2811F66D7 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"LinkQuality Callback: %@", iCopy, block, v17, v18, v19, v20];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardRSSI:]"];
        [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:3184];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v22 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v12 = [iCopy objectForKey:@"RSSI"];
    v13 = [iCopy objectForKey:@"SCALED_RSSI"];
    v14 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"RSSI"];
    v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14];
    [v15 setObject:v12 forKeyedSubscript:@"RSSI"];
    [v15 setObject:v13 forKeyedSubscript:@"ScaledRSSI"];
    [(PLOperator *)self logEntry:v15];
    [(PLWifiAgent *)self setRemainingAllowedRSSIEntryCount:[(PLWifiAgent *)self remainingAllowedRSSIEntryCount]- 1];
  }
}

void *__35__PLWifiAgent_logEventForwardRSSI___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D7 = result;
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
  v23 = *MEMORY[0x277D85DE8];
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
      if (qword_2811F6840 != -1)
      {
        dispatch_once(&qword_2811F6840, block);
      }

      if (byte_2811F66D8 == 1)
      {
        stateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"AWDL Availability Callback: %@", stateCopy];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardAWDLState:]"];
        [v7 logMessage:stateCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:3278];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v22 = stateCopy;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v12 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AWDLState"];
    v13 = objc_msgSend_storage(self);
    v14 = [v13 lastEntryForKey:v12];

    if (!v14 || ([v14 objectForKeyedSubscript:@"AWDLDown"], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(stateCopy, "objectForKeyedSubscript:", @"LINK_CHANGED_IS_LINKDOWN"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v15 != v16))
    {
      v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
      v18 = [stateCopy objectForKeyedSubscript:@"LINK_CHANGED_IS_LINKDOWN"];
      [v17 setObject:v18 forKeyedSubscript:@"AWDLDown"];

      [v17 setObject:&unk_282C12DF8 forKeyedSubscript:@"AWDLRanging"];
      v19 = 0;
      [(PLWifiAgent *)self wifiAwdlDevice];
      WiFiDeviceClientCopyInterfaceStateInfo();
      [(PLOperator *)self logEntry:v17];
      [(PLWifiAgent *)self logAWDLStateEntry:v17];
    }
  }
}

void *__40__PLWifiAgent_logEventForwardAWDLState___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D8 = result;
  return result;
}

void *__40__PLWifiAgent_logEventForwardAWDLState___block_invoke_1289(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D9 = result;
  return result;
}

- (void)logEventForwardHotspotState:(id)state
{
  v48 = *MEMORY[0x277D85DE8];
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
          if (qword_2811F6850 != -1)
          {
            dispatch_once(&qword_2811F6850, block);
          }

          if (byte_2811F66DA == 1)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Hotspot Availability Callback: %@", v5];
            v13 = MEMORY[0x277D3F178];
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
            lastPathComponent = [v14 lastPathComponent];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardHotspotState:]"];
            [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:3307];

            v17 = PLLogCommon();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v47 = v12;
              _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v18 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"HotspotState"];
        v19 = objc_msgSend_storage(self);
        v20 = [v19 lastEntryForKey:v18];

        if (v20)
        {
          v21 = [v20 objectForKeyedSubscript:@"HotSpotOn"];
          if (v21)
          {
            v22 = v21;
            v23 = [v20 objectForKeyedSubscript:@"ADHS"];

            if (v23)
            {
              v24 = [v20 objectForKeyedSubscript:@"HotSpotOn"];
              bOOLValue = [v24 BOOLValue];
              v26 = [v5 objectForKeyedSubscript:v9];
              if (bOOLValue == [v26 BOOLValue])
              {
                v27 = [v20 objectForKeyedSubscript:@"ADHS"];
                bOOLValue2 = [v27 BOOLValue];
                v28 = [v5 objectForKeyedSubscript:v6];
                bOOLValue3 = [v28 BOOLValue];

                if (bOOLValue2 == bOOLValue3)
                {
                  if (![MEMORY[0x277D3F180] debugEnabled])
                  {
                    goto LABEL_19;
                  }

                  v36 = objc_opt_class();
                  v44[0] = MEMORY[0x277D85DD0];
                  v44[1] = 3221225472;
                  v44[2] = __43__PLWifiAgent_logEventForwardHotspotState___block_invoke_1298;
                  v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                  v44[4] = v36;
                  if (qword_2811F6858 != -1)
                  {
                    dispatch_once(&qword_2811F6858, v44);
                  }

                  if (byte_2811F66DB != 1)
                  {
                    goto LABEL_19;
                  }

                  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Same hotspot data: %@", v5];
                  v37 = MEMORY[0x277D3F178];
                  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
                  lastPathComponent2 = [v38 lastPathComponent];
                  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardHotspotState:]"];
                  [v37 logMessage:v29 fromFile:lastPathComponent2 fromFunction:v40 fromLineNumber:3313];

                  v41 = PLLogCommon();
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v47 = v29;
                    _os_log_debug_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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

        v29 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v18];
        v30 = MEMORY[0x277CCABB0];
        v31 = [v5 objectForKeyedSubscript:v9];
        v32 = [v30 numberWithBool:{objc_msgSend(v31, "BOOLValue")}];
        [v29 setObject:v32 forKeyedSubscript:@"HotSpotOn"];

        v33 = MEMORY[0x277CCABB0];
        v34 = [v5 objectForKeyedSubscript:v6];
        v35 = [v33 numberWithBool:{objc_msgSend(v34, "BOOLValue")}];
        [v29 setObject:v35 forKeyedSubscript:@"ADHS"];

        [(PLOperator *)self logEntry:v29];
        goto LABEL_18;
      }
    }
  }

LABEL_20:
}

void *__43__PLWifiAgent_logEventForwardHotspotState___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66DA = result;
  return result;
}

void *__43__PLWifiAgent_logEventForwardHotspotState___block_invoke_1298(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66DB = result;
  return result;
}

- (void)updateEventBackwardUserScanDuration:(id)duration
{
  v31 = *MEMORY[0x277D85DE8];
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
            v21 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __51__PLWifiAgent_updateEventBackwardUserScanDuration___block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v21;
            if (qword_2811F6860 != -1)
            {
              dispatch_once(&qword_2811F6860, block);
            }

            if (byte_2811F66DC == 1)
            {
              v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"User scan counter update: clientName = %@, dwellTime= %lu, channelCountNum = %lu, totalScanTime = %lu\n", v6, intValue, v8, v17];
              v23 = MEMORY[0x277D3F178];
              v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent = [v24 lastPathComponent];
              v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent updateEventBackwardUserScanDuration:]"];
              [v23 logMessage:v22 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:3411];

              v27 = PLLogCommon();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v30 = v22;
                _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
          v20 = 5;
          if (v19)
          {
            v20 = 3;
          }

          v18 = &OBJC_IVAR___PLWifiAgent__lastLoggedTimestamp[v20];
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
  byte_2811F66DC = result;
  return result;
}

- (void)logEventBackwardControlCPUPowerStats
{
  if ([MEMORY[0x277D3F208] isWiFiClass:1004019])
  {
    v3 = CENGetPowerStats();
    v4 = PLLogWifi();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v7 = 0;
        _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Call to fetch Control CPU stats was successful.", v7, 2u);
      }

      v5 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ControlCPUPowerStats"];
      v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v3];
      [(PLOperator *)self logEntry:v6];
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "Error: Call to fetch Control CPU stats failed.", buf, 2u);
    }
  }
}

- (void)logEventBackwardWifiProperties:(BOOL)properties
{
  propertiesCopy = properties;
  v62 = *MEMORY[0x277D85DE8];
  if ([(PLWifiAgent *)self hasWiFi])
  {
    valuePtr = 115;
    v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    [(PLWifiAgent *)self wifiDevice];
    v6 = WiFiDeviceClientCopyProperty();
    CFRelease(v5);
    [(PLWifiAgent *)self wifiDevice];
    v7 = WiFiDeviceClientCopyCurrentNetwork();
    v8 = PLLogWifi();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v61 = v6;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "wifi properties: %@", buf, 0xCu);
    }

    v9 = objc_opt_new();
    [v9 setObject:@"<error>" forKeyedSubscript:@"CurrentSSID"];
    [v9 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentChannel"];
    [v9 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentBandwidth"];
    [v9 setObject:&unk_282C12DF8 forKeyedSubscript:@"Carplay"];
    if (!v7)
    {
      null = [MEMORY[0x277CBEB68] null];
      [v9 setObject:null forKeyedSubscript:@"CurrentSSID"];

      [v9 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentChannel"];
      [v9 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentBandwidth"];
LABEL_35:
      debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
      if (v6)
      {
        if (debugEnabled)
        {
          v38 = objc_opt_class();
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1363;
          v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v54[4] = v38;
          if (qword_2811F6888 != -1)
          {
            dispatch_once(&qword_2811F6888, v54);
          }

          if (byte_2811F66E1 == 1)
          {
            propertiesCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"wifi properties dictionary: %@, need to model power=%d", v6, propertiesCopy];
            v40 = MEMORY[0x277D3F178];
            v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
            lastPathComponent = [v41 lastPathComponent];
            v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:]"];
            [v40 logMessage:propertiesCopy fromFile:lastPathComponent fromFunction:v43 fromLineNumber:3598];

            v44 = PLLogCommon();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v61 = propertiesCopy;
              _os_log_debug_impl(&dword_21A4C6000, v44, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        [(PLWifiAgent *)self logEventBackwardWifiProperties:v6 withNetworkProperties:v9 shallModelPower:propertiesCopy];
      }

      else if (debugEnabled)
      {
        v45 = objc_opt_class();
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1357;
        v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v55[4] = v45;
        if (qword_2811F6880 != -1)
        {
          dispatch_once(&qword_2811F6880, v55);
        }

        if (byte_2811F66E0 == 1)
        {
          v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"No wifi properties"];
          v47 = MEMORY[0x277D3F178];
          v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent2 = [v48 lastPathComponent];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:]"];
          [v47 logMessage:v46 fromFile:lastPathComponent2 fromFunction:v50 fromLineNumber:3596];

          v51 = PLLogCommon();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v61 = v46;
            _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
      [v9 setObject:MEMORY[0x21CEDD0D0](v7) forKeyedSubscript:@"CurrentChannel"];
      v11 = [v9 objectForKeyedSubscript:@"CurrentChannel"];

      if (v11)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PLWifiAgent getCurrentChannelWidth:](self, "getCurrentChannelWidth:", v7)}];
        [v9 setObject:v12 forKeyedSubscript:@"CurrentBandwidth"];

        v13 = MEMORY[0x21CEDD0D0](v7);
        [v9 setObject:v13 forKeyedSubscript:@"CurrentChannel"];
        if (WiFiNetworkGetOperatingBand() == 3)
        {
          v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "intValue") + 1000}];
          [v9 setObject:v14 forKeyedSubscript:@"CurrentChannel"];

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v15 = objc_opt_class();
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1343;
            v57[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v57[4] = v15;
            if (qword_2811F6870 != -1)
            {
              dispatch_once(&qword_2811F6870, v57);
            }

            if (byte_2811F66DE == 1)
            {
              v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"6G chan %lu", v13];
              v52 = MEMORY[0x277D3F178];
              v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent3 = [v17 lastPathComponent];
              v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:]"];
              [v52 logMessage:v16 fromFile:lastPathComponent3 fromFunction:v19 fromLineNumber:3583];

              v20 = v16;
              v21 = PLLogCommon();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v61 = v20;
                _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v22 = objc_opt_class();
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1349;
          v56[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v56[4] = v22;
          if (qword_2811F6878 != -1)
          {
            dispatch_once(&qword_2811F6878, v56);
          }

          if (byte_2811F66DF == 1)
          {
            v53 = v13;
            v23 = MEMORY[0x277CCACA8];
            v24 = [v9 objectForKeyedSubscript:@"CurrentBandwidth"];
            v25 = [v23 stringWithFormat:@"kPLWACurrentChannelWidthInMHz = %@", v24];

            v26 = MEMORY[0x277D3F178];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
            lastPathComponent4 = [v27 lastPathComponent];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:]"];
            [v26 logMessage:v25 fromFile:lastPathComponent4 fromFunction:v29 fromLineNumber:3586];

            v30 = PLLogCommon();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v61 = v25;
              _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v13 = v53;
          }
        }

        goto LABEL_32;
      }
    }

    else
    {
      [v9 setObject:@"<unknown>" forKeyedSubscript:@"CurrentSSID"];
    }

    [v9 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentChannel"];
    [v9 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentBandwidth"];
LABEL_32:
    if (WiFiNetworkIsCarPlay())
    {
      [v9 setObject:&unk_282C12E10 forKeyedSubscript:@"Carplay"];
    }

    CFRelease(v7);
    goto LABEL_35;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v31 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v31;
    if (qword_2811F6868 != -1)
    {
      dispatch_once(&qword_2811F6868, block);
    }

    if (byte_2811F66DD == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"No wifi to log power properties about"];
      v32 = MEMORY[0x277D3F178];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent5 = [v33 lastPathComponent];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:]"];
      [v32 logMessage:v6 fromFile:lastPathComponent5 fromFunction:v35 fromLineNumber:3542];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v61 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_51;
    }
  }
}

void *__46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66DD = result;
  return result;
}

void *__46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1343(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66DE = result;
  return result;
}

void *__46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1349(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66DF = result;
  return result;
}

void *__46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1357(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E0 = result;
  return result;
}

void *__46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1363(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E1 = result;
  return result;
}

- (void)logEventBackwardWifiProperties:(id)properties withNetworkProperties:(id)networkProperties shallModelPower:(BOOL)power
{
  powerCopy = power;
  v420[10] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  networkPropertiesCopy = networkProperties;
  v419[0] = @"SOFTAP_LOWPOWER_STATS_ACTIVE_STATE_DURATION";
  v419[1] = @"SOFTAP_LOWPOWER_STATS_ACTIVE_STATE_COUNT";
  v420[0] = @"ADHSActiveStateDuration";
  v420[1] = @"ADHSActiveStateCount";
  v419[2] = @"SOFTAP_LOWPOWER_STATS_DYNAMIC_STATE_DURATION";
  v419[3] = @"SOFTAP_LOWPOWER_STATS_DYNAMIC_STATE_COUNT";
  v420[2] = @"ADHSDynamicStateDuration";
  v420[3] = @"ADHSDynamicStateDuration";
  v419[4] = @"SOFTAP_LOWPOWER_STATS_LOWPOWER_STATE_COUNT";
  v419[5] = @"SOFTAP_LOWPOWER_STATS_LOWPOWER_STATE_COUNT";
  v420[4] = @"ADHSLowPowerStateDuration";
  v420[5] = @"ADHSLowPowerStateDuration";
  v419[6] = @"SOFTAP_LOWPOWER_STATS_OFF_STATE_COUNT";
  v419[7] = @"SOFTAP_LOWPOWER_STATS_OFF_STATE_COUNT";
  v420[6] = @"ADHSOffStateDuration";
  v420[7] = @"ADHSOffStateDuration";
  v419[8] = @"SOFTAP_LOWPOWER_STATS_TXPACKETS";
  v419[9] = @"SOFTAP_LOWPOWER_STATS_RXPACKETS";
  v420[8] = @"ADHSTXPackets";
  v420[9] = @"ADHSRXPackets";
  v348 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v420 forKeys:v419 count:10];
  allValues = [v348 allValues];
  v8 = *MEMORY[0x277D3F5C8];
  v332 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"HotspotPowerStats"];
  v9 = [propertiesCopy objectForKeyedSubscript:@"CACHED_TIME_STAMP"];
  integerValue = [v9 integerValue];

  v11 = [propertiesCopy objectForKeyedSubscript:@"INSTANT_ASSOCIATED_SLEEP_DURATION"];
  integerValue2 = [v11 integerValue];

  v13 = [propertiesCopy objectForKeyedSubscript:@"INSTANT_UNASSOCIATED_SLEEP_DURATION"];
  integerValue3 = [v13 integerValue];

  v15 = [propertiesCopy objectForKeyedSubscript:@"INSTANT_TIME_STAMP"];
  integerValue4 = [v15 integerValue];

  v17 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"CumulativeProperties"];
  v342 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"DiffProperties"];
  v330 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"BeaconProfile"];
  v335 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"AutoJoin"];
  v334 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"Scans"];
  v333 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"ScanForwardStats"];
  v341 = v17;
  selfCopy = self;
  if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
  {
    v18 = self->_lastEntryForMetricd;
  }

  else
  {
    v19 = objc_msgSend_storage(self);
    v18 = [v19 lastEntryForKey:v17];
  }

  v360 = (integerValue2 | integerValue3) != 0;
  v345 = v18;
  if (v18)
  {
    v20 = [(PLEntry *)v18 objectForKeyedSubscript:@"WifiTimestamp"];
    unsignedIntegerValue = [v20 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v356 = integerValue;
  v21 = objc_opt_new();
  v22 = +[PLWifiAgent isBeaconLoggingEnabled];
  v23 = MEMORY[0x277CBEC10];
  v24 = &unk_282C195E8;
  if (!v22)
  {
    v24 = MEMORY[0x277CBEC10];
  }

  obj = v24;
  isUsingAnOlderWifiChip = [MEMORY[0x277D3F208] isUsingAnOlderWifiChip];
  v26 = &unk_282C19610;
  if (isUsingAnOlderWifiChip)
  {
    v26 = v23;
  }

  v352 = v26;
  v27 = +[PLWifiAgent isScanForwardLoggingEnabled];
  v28 = &unk_282C19638;
  if (!v27)
  {
    v28 = v23;
  }

  v353 = v28;
  v339 = v21;
  [v21 addEntriesFromDictionary:&unk_282C193B8];
  kPLWiFiClassOfDevice = [MEMORY[0x277D3F208] kPLWiFiClassOfDevice];
  v30 = 0;
  HIDWORD(v340) = 0;
  v31 = &unk_282C194F8;
  v32 = &unk_282C194D0;
  v33 = &unk_282C194A8;
  v34 = &unk_282C19408;
  v35 = &unk_282C193E0;
  v362 = propertiesCopy;
  if (kPLWiFiClassOfDevice <= 1004010)
  {
    if (kPLWiFiClassOfDevice <= 1004005)
    {
      if ((kPLWiFiClassOfDevice - 1004001) >= 3)
      {
        LODWORD(v340) = 0;
        v338 = 0;
        if ((kPLWiFiClassOfDevice - 1004004) >= 2)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

LABEL_33:
      LODWORD(v340) = 0;
      v338 = 0;
LABEL_44:
      [v21 addEntriesFromDictionary:v35];
      v35 = v34;
      goto LABEL_45;
    }

    if (kPLWiFiClassOfDevice <= 1004007)
    {
      if (kPLWiFiClassOfDevice == 1004006)
      {
        goto LABEL_33;
      }

      v38 = 0;
      goto LABEL_42;
    }

    if (kPLWiFiClassOfDevice == 1004008)
    {
      goto LABEL_33;
    }

    LODWORD(v340) = 0;
    v338 = 0;
    if (kPLWiFiClassOfDevice != 1004010)
    {
      goto LABEL_45;
    }

LABEL_41:
    [v21 addEntriesFromDictionary:v35];
    v38 = 1;
    v35 = v34;
    v34 = v33;
    v33 = v32;
    v32 = v31;
LABEL_42:
    v338 = HIDWORD(v340);
    [v21 addEntriesFromDictionary:v35];
    LODWORD(v340) = 1;
    HIDWORD(v340) = v38;
    v35 = v34;
    v34 = v33;
    v33 = v32;
    v30 = &unk_282C19660;
    goto LABEL_43;
  }

  v36 = integerValue4;
  v37 = &unk_282C19520;
  if (kPLWiFiClassOfDevice > 1004014)
  {
    if ((kPLWiFiClassOfDevice - 1004016) >= 3)
    {
      if (kPLWiFiClassOfDevice == 1004015)
      {
        v39 = &unk_282C195C0;
        v40 = &unk_282C19430;
      }

      else
      {
        LODWORD(v340) = 0;
        v338 = 0;
        integerValue4 = v36;
        if (kPLWiFiClassOfDevice != 1004019)
        {
          goto LABEL_45;
        }

        [v21 addEntriesFromDictionary:&unk_282C193E0];
        [v21 addEntriesFromDictionary:&unk_282C19408];
        v39 = &unk_282C19480;
        v37 = &unk_282C19458;
        v31 = &unk_282C19430;
        v32 = &unk_282C195C0;
        v33 = &unk_282C19520;
        v40 = &unk_282C194F8;
        v34 = &unk_282C194D0;
        v35 = &unk_282C194A8;
      }
    }

    else
    {
      v39 = &unk_282C19430;
      v37 = &unk_282C195C0;
      v31 = &unk_282C19520;
      v32 = &unk_282C194F8;
      v33 = &unk_282C194D0;
      v40 = &unk_282C194A8;
    }

    [v21 addEntriesFromDictionary:v35];
    [v21 addEntriesFromDictionary:v34];
    HIDWORD(v340) = 1;
    v35 = v40;
    v34 = v33;
    v33 = v32;
    v32 = v31;
    v31 = v37;
    v37 = v39;
LABEL_40:
    [v21 addEntriesFromDictionary:v35];
    v35 = v34;
    v34 = v33;
    v33 = v32;
    v32 = v31;
    v31 = v37;
    propertiesCopy = v362;
    integerValue4 = v36;
    goto LABEL_41;
  }

  if ((kPLWiFiClassOfDevice - 1004013) < 2)
  {
    goto LABEL_40;
  }

  if (kPLWiFiClassOfDevice == 1004011)
  {
    v340 = 0;
    v338 = 0;
    v30 = 0;
    v33 = &unk_282C19570;
    v34 = &unk_282C19548;
    integerValue4 = v36;
LABEL_43:
    [v21 addEntriesFromDictionary:v35];
    v35 = v34;
    v34 = v33;
    goto LABEL_44;
  }

  LODWORD(v340) = 0;
  v338 = 0;
  integerValue4 = v36;
  if (kPLWiFiClassOfDevice != 1004012)
  {
LABEL_45:
    [v21 addEntriesFromDictionary:v35];
    v41 = v30;
    goto LABEL_46;
  }

  [v21 addEntriesFromDictionary:&unk_282C193E0];
  [v21 addEntriesFromDictionary:&unk_282C19548];
  [v21 addEntriesFromDictionary:&unk_282C19570];
  HIDWORD(v340) = 0;
  if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] > 1001204)
  {
    v30 = &unk_282C19660;
    LODWORD(v340) = 1;
    v338 = 0;
    v35 = &unk_282C19598;
    goto LABEL_45;
  }

  v41 = 0;
  LODWORD(v340) = 0;
  v338 = 0;
LABEL_46:
  v42 = v341;
  if (v360)
  {
    if (integerValue4 > v356)
    {
      if (unsignedIntegerValue)
      {
        v43 = v356 > unsignedIntegerValue;
      }

      else
      {
        v43 = 1;
      }

      v44 = v43;
      if (v44)
      {
        v45 = 2;
      }

      else
      {
        v45 = 1;
      }

      goto LABEL_64;
    }

    v46 = v356 > unsignedIntegerValue;
    v45 = 1;
    goto LABEL_60;
  }

  v45 = 1;
  if (v345)
  {
    v46 = v356 > unsignedIntegerValue;
LABEL_60:
    if (v46)
    {
      v44 = 1;
    }

    else
    {
      v44 = 2;
    }

    goto LABEL_64;
  }

  v44 = 1;
LABEL_64:
  v47 = 0x277CCA000uLL;
  v354 = v41;
  while (1)
  {
    v48 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v42];
    v350 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v342];
    v351 = v48;
    v344 = v45;
    if (v44 != 2)
    {
      break;
    }

    if (v345)
    {
      if (![(PLWifiAgent *)selfCopy isWiFiPowered])
      {
        v49 = [(PLEntry *)v345 copy];
        v50 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v342];
        null = [MEMORY[0x277CBEB68] null];
        [v49 setObject:null forKeyedSubscript:@"CurrentSSID"];

        [v49 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentChannel"];
        [v49 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentBandwidth"];
        [v49 setObject:&unk_282C12DF8 forKeyedSubscript:@"WifiPowered"];
        [v49 setObject:&unk_282C12DF8 forKeyedSubscript:@"Carplay"];
        v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_autoJoinScanDuration];
        [v49 setObject:v52 forKeyedSubscript:@"AutojoinScanDuration"];

        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_locationScanDuration];
        [v49 setObject:v53 forKeyedSubscript:@"LocationScanDuration"];

        v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_pipelineScanDuration];
        [v49 setObject:v54 forKeyedSubscript:@"PipelineScanDuration"];

        v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_unknownScanDuration];
        [v49 setObject:v55 forKeyedSubscript:@"UnknownScanDuration"];

        v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_setupScanDuration];
        v57 = v49;
        [v49 setObject:v56 forKeyedSubscript:@"SetupScanDuration"];

        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"AWDLAWDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"AWDLRXDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"AWDLScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"AWDLTXDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"AssociatedScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"AutojoinScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentBandwidth"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentChannel"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentSSID"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"FRTSDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"HSICActiveDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"HSICSuspendDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"LocationScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"MPCDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"OtherScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PCIEActiveDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PCIEPERSTDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PCIESuspendDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PMDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PNOBSSIDDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PNOScanSSIDDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PipelineScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"RXDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"RoamScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SetupScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"TXDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"TimeDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"UnknownScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"UserScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"WifiPowered"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"WowEnabled"];
        if ([MEMORY[0x277D3F208] isWiFiClass:1004005])
        {
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SISOTXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"MIMOTXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"MIMORXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SISORXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"MIMOCSDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SISOCSDuration"];
        }

        if (([MEMORY[0x277D3F208] isWiFiClass:1004007] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004010) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004013) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004014))
        {
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SISOTXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"MIMOTXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"MIMORXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SISORXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"MIMOCSDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SISOCSDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"OCLCSDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"OCLRXDuration"];
        }

        if ([MEMORY[0x277D3F208] isWiFiClass:1004010])
        {
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"OPSFullDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"OPSPartialDuration"];
        }

        propertiesCopy = v362;
        if (([MEMORY[0x277D3F208] isWiFiClass:1004013] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004014))
        {
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"OPSFullDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"OPSPartialDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PSBWDuration"];
        }

        if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
        {
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SCRXDurationSISO"];
        }

        if (v340)
        {
          v369 = 0u;
          v370 = 0u;
          v367 = 0u;
          v368 = 0u;
          v58 = [v41 countByEnumeratingWithState:&v367 objects:v407 count:16];
          if (v58)
          {
            v59 = v58;
            v60 = *v368;
            do
            {
              for (i = 0; i != v59; ++i)
              {
                if (*v368 != v60)
                {
                  objc_enumerationMutation(v41);
                }

                [v50 setObject:&unk_282C12DF8 forKeyedSubscript:*(*(&v367 + 1) + 8 * i)];
              }

              v59 = [v41 countByEnumeratingWithState:&v367 objects:v407 count:16];
            }

            while (v59);
          }
        }

        if (HIDWORD(v340))
        {
          v365 = 0u;
          v366 = 0u;
          v363 = 0u;
          v364 = 0u;
          v62 = allValues;
          v63 = [v62 countByEnumeratingWithState:&v363 objects:v406 count:16];
          if (v63)
          {
            v64 = v63;
            v65 = *v364;
            do
            {
              for (j = 0; j != v64; ++j)
              {
                if (*v364 != v65)
                {
                  objc_enumerationMutation(v62);
                }

                [v50 setObject:&unk_282C12DF8 forKeyedSubscript:*(*(&v363 + 1) + 8 * j)];
              }

              v64 = [v62 countByEnumeratingWithState:&v363 objects:v406 count:16];
            }

            while (v64);
          }

          v41 = v354;
        }

        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"TimeDuration"];
        v67 = [(PLEntry *)v345 objectForKey:@"CurrentChannel"];
        [v50 setObject:v67 forKeyedSubscript:@"CurrentChannel"];

        v68 = [(PLEntry *)v345 objectForKey:@"CurrentSSID"];
        [v50 setObject:v68 forKeyedSubscript:@"CurrentSSID"];

        v69 = [(PLEntry *)v345 objectForKey:@"CurrentBandwidth"];
        [v50 setObject:v69 forKeyedSubscript:@"CurrentBandwidth"];

        v70 = [(PLEntry *)v345 objectForKey:@"WowEnabled"];
        [v50 setObject:v70 forKeyedSubscript:@"WowEnabled"];

        v71 = [(PLEntry *)v345 objectForKey:@"WifiPowered"];
        [v50 setObject:v71 forKeyedSubscript:@"WifiPowered"];

        v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
        [v57 setObject:v72 forKeyedSubscript:@"READINGTYPE"];

        if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
        {
          objc_storeStrong(&selfCopy->_lastEntryForMetricd, v57);
        }

        else
        {
          [(PLOperator *)selfCopy logEntry:v57];
        }

        v42 = v341;
        v45 = v344;
        v208 = v345;
        if (powerCopy)
        {
          [(PLWifiAgent *)selfCopy modelWiFiPower:v50];
        }

        v44 = 2;
        v47 = 0x277CCA000;
LABEL_291:
        v345 = v208;

        goto LABEL_293;
      }
    }

    else
    {
      v345 = 0;
    }

    v44 = 2;
LABEL_293:

    v43 = v45-- <= 1;
    if (v43)
    {
      goto LABEL_310;
    }
  }

  v73 = *(v47 + 2992);
  if (v44)
  {
    v74 = @"CACHED_TIME_STAMP";
  }

  else
  {
    v74 = @"INSTANT_TIME_STAMP";
  }

  v75 = [propertiesCopy objectForKeyedSubscript:v74];
  v76 = [v73 numberWithUnsignedInteger:{objc_msgSend(v75, "integerValue")}];
  [v48 setObject:v76 forKeyedSubscript:@"WifiTimestamp"];

  if (v345)
  {
    v77 = *(v47 + 2992);
    v78 = [v48 objectForKeyedSubscript:@"WifiTimestamp"];
    unsignedIntegerValue2 = [v78 unsignedIntegerValue];
    v80 = [(PLEntry *)v345 objectForKeyedSubscript:@"WifiTimestamp"];
    v81 = [v77 numberWithInteger:{unsignedIntegerValue2 - objc_msgSend(v80, "unsignedIntegerValue")}];
    [v350 setObject:v81 forKeyedSubscript:@"TimeDuration"];
  }

  v343 = v44;
  v359 = &unk_282C16860;
  if (([MEMORY[0x277D3F208] isWiFiClass:1004011] & 1) == 0)
  {
    v82 = [MEMORY[0x277D3F208] isWiFiClass:1004012];
    v83 = &unk_282C16860;
    if (!v82)
    {
      v83 = &unk_282C16878;
    }

    v359 = v83;
  }

  v405 = 0u;
  v404 = 0u;
  v403 = 0u;
  v402 = 0u;
  v84 = v339;
  v85 = v345;
  v361 = [v84 countByEnumeratingWithState:&v402 objects:v418 count:16];
  if (v361)
  {
    v357 = v44 != 0;
    v355 = *v403;
    do
    {
      v86 = 0;
      do
      {
        v87 = v85;
        if (*v403 != v355)
        {
          objc_enumerationMutation(v84);
        }

        v88 = *(*(&v402 + 1) + 8 * v86);
        v89 = [v84 objectForKeyedSubscript:v88];
        v90 = [v89 objectAtIndexedSubscript:v357];
        v91 = [v362 objectForKeyedSubscript:v90];
        integerValue5 = [v91 integerValue];

        if ([v359 containsObject:v88])
        {
          v93 = integerValue5 / 0x3E8uLL;
        }

        else
        {
          v93 = integerValue5;
        }

        v47 = 0x277CCA000uLL;
        v94 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v93];
        [v48 setObject:v94 forKeyedSubscript:v88];

        v85 = v87;
        if (v87)
        {
          v95 = [(PLEntry *)v87 objectForKey:v88];
          if ([v95 isNil])
          {
            goto LABEL_147;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            unsignedLongValue = [v95 unsignedLongValue];
            goto LABEL_124;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            unsignedLongValue = [v95 longLongValue];
LABEL_124:
            v97 = unsignedLongValue;
            v98 = unsignedLongValue - v93;
            if (unsignedLongValue > v93)
            {
              if ([&unk_282C16890 containsObject:v88])
              {
                v99 = MEMORY[0x277CCABB0];
                if (v98 - 858994 <= 0x346DC4)
                {
                  v100 = v93 - v97 + 4294967;
                  goto LABEL_146;
                }
              }

              else
              {
                if ([MEMORY[0x277D3F180] debugEnabled])
                {
                  v109 = objc_opt_class();
                  v401[0] = MEMORY[0x277D85DD0];
                  v401[1] = 3221225472;
                  v401[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke;
                  v401[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                  v401[4] = v109;
                  v110 = v401;
                  if (qword_2811F6890 != -1)
                  {
                    dispatch_once(&qword_2811F6890, v110);
                  }

                  if (byte_2811F66E2 == 1)
                  {
                    v111 = [MEMORY[0x277CCACA8] stringWithFormat:@"diff[%@] = %lu < %lu, ignoring setting to zero", v88, v93, v97];
                    v112 = MEMORY[0x277D3F178];
                    v113 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
                    lastPathComponent = [v113 lastPathComponent];
                    v115 = v111;
                    v116 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
                    [v112 logMessage:v115 fromFile:lastPathComponent fromFunction:v116 fromLineNumber:4228];

                    v117 = PLLogCommon();
                    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v409 = v115;
                      _os_log_debug_impl(&dword_21A4C6000, v117, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }

                    v87 = v345;
                  }
                }

                v99 = MEMORY[0x277CCABB0];
              }

              v100 = 0;
LABEL_146:
              v118 = [v99 numberWithUnsignedInteger:v100];
              [v350 setObject:v118 forKeyedSubscript:v88];

              v85 = v87;
LABEL_147:

              v48 = v351;
              goto LABEL_148;
            }
          }

          else
          {
            v97 = 0;
          }

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v101 = objc_opt_class();
            v400[0] = MEMORY[0x277D85DD0];
            v400[1] = 3221225472;
            v400[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2505;
            v400[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v400[4] = v101;
            v102 = v400;
            if (qword_2811F6898 != -1)
            {
              dispatch_once(&qword_2811F6898, v102);
            }

            if (byte_2811F66E3 == 1)
            {
              v103 = [MEMORY[0x277CCACA8] stringWithFormat:@"diff[%@] = %lu - %lu", v88, v93, v97];
              v346 = MEMORY[0x277D3F178];
              v104 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent2 = [v104 lastPathComponent];
              v106 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
              [v346 logMessage:v103 fromFile:lastPathComponent2 fromFunction:v106 fromLineNumber:4234];

              v107 = v103;
              v108 = PLLogCommon();
              if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v409 = v107;
                _os_log_debug_impl(&dword_21A4C6000, v108, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v87 = v345;
              v47 = 0x277CCA000uLL;
            }
          }

          v99 = MEMORY[0x277CCABB0];
          v100 = v93 - v97;
          goto LABEL_146;
        }

LABEL_148:
        ++v86;
      }

      while (v361 != v86);
      v361 = [v84 countByEnumeratingWithState:&v402 objects:v418 count:16];
    }

    while (v361);
  }

  v345 = v85;
  if (v85 && v343 == 1)
  {
    [(PLEntry *)v85 objectForKey:@"CurrentChannel"];
    v120 = v119 = v85;
    [v48 setObject:v120 forKeyedSubscript:@"CurrentChannel"];

    v121 = [(PLEntry *)v119 objectForKey:@"CurrentSSID"];
    [v48 setObject:v121 forKeyedSubscript:@"CurrentSSID"];

    v122 = [(PLEntry *)v119 objectForKey:@"CurrentBandwidth"];
    [v48 setObject:v122 forKeyedSubscript:@"CurrentBandwidth"];

    v123 = [(PLEntry *)v119 objectForKey:@"WowEnabled"];
    [v48 setObject:v123 forKeyedSubscript:@"WowEnabled"];

    v124 = [(PLEntry *)v119 objectForKey:@"Carplay"];
    [v48 setObject:v124 forKeyedSubscript:@"Carplay"];

    v125 = [(PLEntry *)v119 objectForKey:@"WifiPowered"];
  }

  else
  {
    v126 = [networkPropertiesCopy objectForKeyedSubscript:@"CurrentChannel"];
    [v48 setObject:v126 forKeyedSubscript:@"CurrentChannel"];

    v127 = [networkPropertiesCopy objectForKeyedSubscript:@"CurrentSSID"];
    [v48 setObject:v127 forKeyedSubscript:@"CurrentSSID"];

    v128 = [networkPropertiesCopy objectForKeyedSubscript:@"CurrentBandwidth"];
    [v48 setObject:v128 forKeyedSubscript:@"CurrentBandwidth"];

    v129 = [networkPropertiesCopy objectForKeyedSubscript:@"Carplay"];
    [v48 setObject:v129 forKeyedSubscript:@"Carplay"];

    v130 = [*(v47 + 2992) numberWithBool:{-[PLWifiAgent isWowEnabled](selfCopy, "isWowEnabled")}];
    [v48 setObject:v130 forKeyedSubscript:@"WowEnabled"];

    v125 = [*(v47 + 2992) numberWithBool:{-[PLWifiAgent isWiFiPowered](selfCopy, "isWiFiPowered")}];
  }

  [v48 setObject:v125 forKeyedSubscript:@"WifiPowered"];

  propertiesCopy = v362;
  if (v340)
  {
    v131 = [v362 objectForKeyedSubscript:@"AutoJoinPowerDiag"];
    v132 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v335];
    v396 = 0u;
    v397 = 0u;
    v398 = 0u;
    v399 = 0u;
    allKeys = [v354 allKeys];
    v134 = [allKeys countByEnumeratingWithState:&v396 objects:v417 count:16];
    if (v134)
    {
      v135 = v134;
      v136 = *v397;
      do
      {
        for (k = 0; k != v135; ++k)
        {
          if (*v397 != v136)
          {
            objc_enumerationMutation(allKeys);
          }

          v138 = *(*(&v396 + 1) + 8 * k);
          v139 = [v354 objectForKeyedSubscript:v138];
          [v132 setObject:0 forKeyedSubscript:v139];

          v140 = [v131 objectForKey:v138];

          if (v140)
          {
            v141 = [v131 objectForKeyedSubscript:v138];
            v142 = [v354 objectForKeyedSubscript:v138];
            [v132 setObject:v141 forKeyedSubscript:v142];
          }

          v143 = [v131 objectForKeyedSubscript:@"auto_join_trigger_counts"];
          v144 = [v143 objectForKey:v138];

          if (v144)
          {
            v145 = [v131 objectForKeyedSubscript:@"auto_join_trigger_counts"];
            v146 = [v145 objectForKeyedSubscript:v138];
            v147 = [v354 objectForKeyedSubscript:v138];
            [v132 setObject:v146 forKeyedSubscript:v147];
          }
        }

        v135 = [allKeys countByEnumeratingWithState:&v396 objects:v417 count:16];
      }

      while (v135);
    }

    [(PLOperator *)selfCopy logEntry:v132];
    v48 = v351;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v148 = objc_opt_class();
      v395[0] = MEMORY[0x277D85DD0];
      v395[1] = 3221225472;
      v395[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2517;
      v395[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v395[4] = v148;
      v149 = v395;
      if (qword_2811F68A0 != -1)
      {
        dispatch_once(&qword_2811F68A0, v149);
      }

      if (byte_2811F66E4 == 1)
      {
        v132 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logged AJ keys:%@", v132];
        v151 = MEMORY[0x277D3F178];
        v152 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent3 = [v152 lastPathComponent];
        v154 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
        [v151 logMessage:v132 fromFile:lastPathComponent3 fromFunction:v154 fromLineNumber:4283];

        v155 = PLLogCommon();
        if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v409 = v132;
          _os_log_debug_impl(&dword_21A4C6000, v155, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    propertiesCopy = v362;
  }

  if (HIDWORD(v340))
  {
    v156 = [propertiesCopy objectForKey:@"AutoHotspotLPHSPowerStats"];

    if (v156)
    {
      v157 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v332];
      v158 = [propertiesCopy objectForKeyedSubscript:@"AutoHotspotLPHSPowerStats"];
      v391 = 0u;
      v392 = 0u;
      v393 = 0u;
      v394 = 0u;
      allKeys2 = [v348 allKeys];
      v160 = [allKeys2 countByEnumeratingWithState:&v391 objects:v416 count:16];
      if (v160)
      {
        v161 = v160;
        v162 = *v392;
        do
        {
          for (m = 0; m != v161; ++m)
          {
            if (*v392 != v162)
            {
              objc_enumerationMutation(allKeys2);
            }

            v164 = *(*(&v391 + 1) + 8 * m);
            v165 = [v158 objectForKey:v164];

            if (v165)
            {
              v166 = [v158 objectForKeyedSubscript:v164];
              v167 = [v348 objectForKeyedSubscript:v164];
              [v157 setObject:v166 forKeyedSubscript:v167];
            }
          }

          v161 = [allKeys2 countByEnumeratingWithState:&v391 objects:v416 count:16];
        }

        while (v161);
      }

      [(PLOperator *)selfCopy logEntry:v157];
      v48 = v351;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v168 = objc_opt_class();
        v390[0] = MEMORY[0x277D85DD0];
        v390[1] = 3221225472;
        v390[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2526;
        v390[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v390[4] = v168;
        v169 = v390;
        if (qword_2811F68A8 != -1)
        {
          dispatch_once(&qword_2811F68A8, v169);
        }

        if (byte_2811F66E5 == 1)
        {
          v157 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logged ADHS keys:%@", v157];
          v171 = MEMORY[0x277D3F178];
          v172 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent4 = [v172 lastPathComponent];
          v174 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
          [v171 logMessage:v157 fromFile:lastPathComponent4 fromFunction:v174 fromLineNumber:4298];

          v175 = PLLogCommon();
          if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v409 = v157;
            _os_log_debug_impl(&dword_21A4C6000, v175, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }
  }

  if (v338)
  {
    v388 = 0u;
    v389 = 0u;
    v386 = 0u;
    v387 = 0u;
    v176 = [&unk_282C19688 countByEnumeratingWithState:&v386 objects:v415 count:16];
    if (v176)
    {
      v177 = v176;
      v178 = *v387;
      do
      {
        for (n = 0; n != v177; ++n)
        {
          if (*v387 != v178)
          {
            objc_enumerationMutation(&unk_282C19688);
          }

          v180 = *(*(&v386 + 1) + 8 * n);
          v181 = [&unk_282C19688 objectForKeyedSubscript:v180];
          v182 = [propertiesCopy objectForKey:v181];

          if (v182)
          {
            v183 = [&unk_282C19688 objectForKeyedSubscript:v180];
            v184 = [propertiesCopy objectForKeyedSubscript:v183];
            [v48 setObject:v184 forKeyedSubscript:v180];
          }
        }

        v177 = [&unk_282C19688 countByEnumeratingWithState:&v386 objects:v415 count:16];
      }

      while (v177);
    }
  }

  if (v345)
  {
    v185 = [(PLEntry *)v345 objectForKey:@"CurrentChannel"];
    [v350 setObject:v185 forKeyedSubscript:@"CurrentChannel"];

    v186 = [(PLEntry *)v345 objectForKey:@"CurrentSSID"];
    [v350 setObject:v186 forKeyedSubscript:@"CurrentSSID"];

    v187 = [(PLEntry *)v345 objectForKey:@"CurrentBandwidth"];
    [v350 setObject:v187 forKeyedSubscript:@"CurrentBandwidth"];

    v188 = [(PLEntry *)v345 objectForKey:@"WowEnabled"];
    [v350 setObject:v188 forKeyedSubscript:@"WowEnabled"];

    v189 = [(PLEntry *)v345 objectForKey:@"WifiPowered"];
    [v350 setObject:v189 forKeyedSubscript:@"WifiPowered"];
  }

  v47 = 0x277CCA000uLL;
  v190 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_autoJoinScanDuration];
  [v48 setObject:v190 forKeyedSubscript:@"AutojoinScanDuration"];

  v191 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_locationScanDuration];
  [v48 setObject:v191 forKeyedSubscript:@"LocationScanDuration"];

  v192 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_pipelineScanDuration];
  [v48 setObject:v192 forKeyedSubscript:@"PipelineScanDuration"];

  v193 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_unknownScanDuration];
  [v48 setObject:v193 forKeyedSubscript:@"UnknownScanDuration"];

  v194 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_setupScanDuration];
  [v48 setObject:v194 forKeyedSubscript:@"SetupScanDuration"];

  v41 = v354;
  v45 = v344;
  if (v345)
  {
    v195 = [(PLEntry *)v345 objectForKeyedSubscript:@"AutojoinScanDuration"];
    if (v195)
    {
      v196 = v195;
      v197 = [(PLEntry *)v345 objectForKeyedSubscript:@"LocationScanDuration"];
      if (!v197)
      {

LABEL_224:
        v45 = v344;
        goto LABEL_225;
      }

      v198 = v197;
      v199 = [(PLEntry *)v345 objectForKeyedSubscript:@"PipelineScanDuration"];
      if (v199)
      {
        v200 = v199;
        v201 = [(PLEntry *)v345 objectForKeyedSubscript:@"UnknownScanDuration"];
        if (v201)
        {
          v202 = v201;
          v203 = [(PLEntry *)v345 objectForKeyedSubscript:@"SetupScanDuration"];

          v41 = v354;
          v45 = v344;
          if (!v203)
          {
            goto LABEL_225;
          }

          v204 = [v48 objectForKeyedSubscript:@"AutojoinScanDuration"];
          unsignedLongLongValue = [v204 unsignedLongLongValue];
          v206 = [(PLEntry *)v345 objectForKeyedSubscript:@"AutojoinScanDuration"];
          unsignedLongLongValue2 = [v206 unsignedLongLongValue];

          if (unsignedLongLongValue >= unsignedLongLongValue2)
          {
            v290 = MEMORY[0x277CCABB0];
            v291 = [v48 objectForKeyedSubscript:@"AutojoinScanDuration"];
            unsignedLongLongValue3 = [v291 unsignedLongLongValue];
            v293 = [(PLEntry *)v345 objectForKeyedSubscript:@"AutojoinScanDuration"];
            v294 = [v290 numberWithUnsignedLongLong:{unsignedLongLongValue3 - objc_msgSend(v293, "unsignedLongLongValue")}];
            [v350 setObject:v294 forKeyedSubscript:@"AutojoinScanDuration"];
          }

          else
          {
            [v350 setObject:0 forKeyedSubscript:@"AutojoinScanDuration"];
          }

          v295 = [v48 objectForKeyedSubscript:@"LocationScanDuration"];
          unsignedLongLongValue4 = [v295 unsignedLongLongValue];
          v297 = [(PLEntry *)v345 objectForKeyedSubscript:@"LocationScanDuration"];
          unsignedLongLongValue5 = [v297 unsignedLongLongValue];

          if (unsignedLongLongValue4 >= unsignedLongLongValue5)
          {
            v299 = MEMORY[0x277CCABB0];
            v300 = [v48 objectForKeyedSubscript:@"LocationScanDuration"];
            unsignedLongLongValue6 = [v300 unsignedLongLongValue];
            v302 = [(PLEntry *)v345 objectForKeyedSubscript:@"LocationScanDuration"];
            v303 = [v299 numberWithUnsignedLongLong:{unsignedLongLongValue6 - objc_msgSend(v302, "unsignedLongLongValue")}];
            [v350 setObject:v303 forKeyedSubscript:@"LocationScanDuration"];
          }

          else
          {
            [v350 setObject:0 forKeyedSubscript:@"LocationScanDuration"];
          }

          v304 = [v48 objectForKeyedSubscript:@"PipelineScanDuration"];
          unsignedLongLongValue7 = [v304 unsignedLongLongValue];
          v306 = [(PLEntry *)v345 objectForKeyedSubscript:@"PipelineScanDuration"];
          unsignedLongLongValue8 = [v306 unsignedLongLongValue];

          if (unsignedLongLongValue7 >= unsignedLongLongValue8)
          {
            v308 = MEMORY[0x277CCABB0];
            v309 = [v48 objectForKeyedSubscript:@"PipelineScanDuration"];
            unsignedLongLongValue9 = [v309 unsignedLongLongValue];
            v311 = [(PLEntry *)v345 objectForKeyedSubscript:@"PipelineScanDuration"];
            v312 = [v308 numberWithUnsignedLongLong:{unsignedLongLongValue9 - objc_msgSend(v311, "unsignedLongLongValue")}];
            [v350 setObject:v312 forKeyedSubscript:@"PipelineScanDuration"];
          }

          else
          {
            [v350 setObject:0 forKeyedSubscript:@"PipelineScanDuration"];
          }

          v313 = [v48 objectForKeyedSubscript:@"UnknownScanDuration"];
          unsignedLongLongValue10 = [v313 unsignedLongLongValue];
          v315 = [(PLEntry *)v345 objectForKeyedSubscript:@"UnknownScanDuration"];
          unsignedLongLongValue11 = [v315 unsignedLongLongValue];

          if (unsignedLongLongValue10 >= unsignedLongLongValue11)
          {
            v317 = MEMORY[0x277CCABB0];
            v318 = [v48 objectForKeyedSubscript:@"UnknownScanDuration"];
            unsignedLongLongValue12 = [v318 unsignedLongLongValue];
            v320 = [(PLEntry *)v345 objectForKeyedSubscript:@"UnknownScanDuration"];
            v321 = [v317 numberWithUnsignedLongLong:{unsignedLongLongValue12 - objc_msgSend(v320, "unsignedLongLongValue")}];
            [v350 setObject:v321 forKeyedSubscript:@"UnknownScanDuration"];
          }

          else
          {
            [v350 setObject:0 forKeyedSubscript:@"UnknownScanDuration"];
          }

          v322 = [v48 objectForKeyedSubscript:@"SetupScanDuration"];
          unsignedLongLongValue13 = [v322 unsignedLongLongValue];
          v324 = [(PLEntry *)v345 objectForKeyedSubscript:@"SetupScanDuration"];
          unsignedLongLongValue14 = [v324 unsignedLongLongValue];

          if (unsignedLongLongValue13 < unsignedLongLongValue14)
          {
            [v350 setObject:0 forKeyedSubscript:@"SetupScanDuration"];
            goto LABEL_223;
          }

          v326 = MEMORY[0x277CCABB0];
          v196 = [v48 objectForKeyedSubscript:@"SetupScanDuration"];
          unsignedLongLongValue15 = [v196 unsignedLongLongValue];
          v328 = [(PLEntry *)v345 objectForKeyedSubscript:@"SetupScanDuration"];
          v329 = [v326 numberWithUnsignedLongLong:{unsignedLongLongValue15 - objc_msgSend(v328, "unsignedLongLongValue")}];
          [v350 setObject:v329 forKeyedSubscript:@"SetupScanDuration"];

LABEL_222:
LABEL_223:
          v41 = v354;
          goto LABEL_224;
        }
      }

      goto LABEL_222;
    }
  }

LABEL_225:
  v209 = v343;
  v210 = selfCopy;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v211 = objc_opt_class();
    v385[0] = MEMORY[0x277D85DD0];
    v385[1] = 3221225472;
    v385[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2532;
    v385[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v385[4] = v211;
    v212 = v385;
    if (qword_2811F68B0 != -1)
    {
      dispatch_once(&qword_2811F68B0, v212);
    }

    if (byte_2811F66E6 == 1)
    {
      v213 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last logged data: %@ current data:%@", v345, v48];
      v214 = MEMORY[0x277D3F178];
      v215 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent5 = [v215 lastPathComponent];
      v217 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
      [v214 logMessage:v213 fromFile:lastPathComponent5 fromFunction:v217 fromLineNumber:4364];

      v218 = PLLogCommon();
      if (os_log_type_enabled(v218, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v409 = v213;
        _os_log_debug_impl(&dword_21A4C6000, v218, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v41 = v354;
      v45 = v344;
      v210 = selfCopy;
    }
  }

  v219 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v343];
  [v48 setObject:v219 forKeyedSubscript:@"READINGTYPE"];

  if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
  {
    [(PLWifiAgent *)v210 setLastEntryForMetricd:v48];
  }

  else
  {
    [(PLOperator *)v210 logEntry:v48];
  }

  v220 = v345;
  if (+[PLWifiAgent isBeaconLoggingEnabled])
  {
    v221 = [v48 objectForKeyedSubscript:@"CurrentChannel"];
    if ([v221 integerValue] >= 1)
    {
      v222 = [v48 objectForKeyedSubscript:@"WifiTimestamp"];
      integerValue6 = [v222 integerValue];
      v224 = [(PLEntry *)v345 objectForKeyedSubscript:@"WifiTimestamp"];
      v225 = [v224 integerValue] + 60000;

      v41 = v354;
      v220 = v345;

      v43 = integerValue6 <= v225;
      v210 = selfCopy;
      v45 = v344;
      if (v43)
      {
        goto LABEL_247;
      }

      v221 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v330];
      v381 = 0u;
      v382 = 0u;
      v383 = 0u;
      v384 = 0u;
      v226 = [obj countByEnumeratingWithState:&v381 objects:v414 count:16];
      if (v226)
      {
        v227 = v226;
        v228 = *v382;
        do
        {
          for (ii = 0; ii != v227; ++ii)
          {
            if (*v382 != v228)
            {
              objc_enumerationMutation(obj);
            }

            v230 = *(*(&v381 + 1) + 8 * ii);
            v231 = [obj objectForKeyedSubscript:v230];
            v232 = [v231 objectAtIndexedSubscript:v343 != 0];
            v233 = [v362 objectForKeyedSubscript:v232];
            integerValue7 = [v233 integerValue];

            v47 = 0x277CCA000uLL;
            v235 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue7];
            [v221 setObject:v235 forKeyedSubscript:v230];
          }

          v227 = [obj countByEnumeratingWithState:&v381 objects:v414 count:16];
        }

        while (v227);
      }

      v48 = v351;
      v236 = [v351 objectForKeyedSubscript:@"WifiTimestamp"];
      [v221 setObject:v236 forKeyedSubscript:@"WifiTimestamp"];

      v210 = selfCopy;
      [(PLOperator *)selfCopy logEntry:v221];
      propertiesCopy = v362;
      v220 = v345;
      v41 = v354;
      v209 = v343;
      v45 = v344;
    }
  }

LABEL_247:
  if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
  {
    v237 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v334];
    v377 = 0u;
    v378 = 0u;
    v379 = 0u;
    v380 = 0u;
    v238 = [v352 countByEnumeratingWithState:&v377 objects:v413 count:16];
    if (v238)
    {
      v239 = v238;
      v240 = *v378;
      do
      {
        for (jj = 0; jj != v239; ++jj)
        {
          if (*v378 != v240)
          {
            objc_enumerationMutation(v352);
          }

          v242 = *(*(&v377 + 1) + 8 * jj);
          v243 = [v352 objectForKeyedSubscript:v242];
          v244 = [v243 objectAtIndexedSubscript:v343 != 0];
          v245 = [v362 objectForKeyedSubscript:v244];
          integerValue8 = [v245 integerValue];

          v47 = 0x277CCA000uLL;
          v247 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue8];
          [v237 setObject:v247 forKeyedSubscript:v242];
        }

        v239 = [v352 countByEnumeratingWithState:&v377 objects:v413 count:16];
      }

      while (v239);
    }

    v48 = v351;
    v248 = [v351 objectForKeyedSubscript:@"WifiTimestamp"];
    [v237 setObject:v248 forKeyedSubscript:@"WifiTimestamp"];

    propertiesCopy = v362;
    v210 = selfCopy;
    v220 = v345;
    v41 = v354;
    v45 = v344;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v249 = objc_opt_class();
      v376[0] = MEMORY[0x277D85DD0];
      v376[1] = 3221225472;
      v376[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2538;
      v376[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v376[4] = v249;
      v250 = v376;
      if (qword_2811F68B8 != -1)
      {
        dispatch_once(&qword_2811F68B8, v250);
      }

      v220 = v345;
      if (byte_2811F66E7 == 1)
      {
        v352 = [MEMORY[0x277CCACA8] stringWithFormat:@" current data:%@ %@", v237, v352];
        v252 = MEMORY[0x277D3F178];
        v253 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent6 = [v253 lastPathComponent];
        v255 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
        [v252 logMessage:v352 fromFile:lastPathComponent6 fromFunction:v255 fromLineNumber:4396];

        v256 = PLLogCommon();
        if (os_log_type_enabled(v256, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v409 = v352;
          _os_log_debug_impl(&dword_21A4C6000, v256, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v41 = v354;
        v45 = v344;
        v47 = 0x277CCA000;
        v220 = v345;
        v210 = selfCopy;
      }
    }

    [(PLOperator *)v210 logEntry:v237];

    v209 = v343;
  }

  if (+[PLWifiAgent isScanForwardLoggingEnabled])
  {
    v257 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v333];
    v372 = 0u;
    v373 = 0u;
    v374 = 0u;
    v375 = 0u;
    v258 = [v353 countByEnumeratingWithState:&v372 objects:v412 count:16];
    if (v258)
    {
      v259 = v258;
      v260 = v209 != 0;
      v261 = *v373;
      do
      {
        for (kk = 0; kk != v259; ++kk)
        {
          if (*v373 != v261)
          {
            objc_enumerationMutation(v353);
          }

          v263 = *(*(&v372 + 1) + 8 * kk);
          v264 = [v353 objectForKeyedSubscript:v263];
          v265 = [v264 objectAtIndexedSubscript:v260];
          v266 = [v362 objectForKeyedSubscript:v265];
          integerValue9 = [v266 integerValue];

          v47 = 0x277CCA000uLL;
          v268 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue9];
          [v257 setObject:v268 forKeyedSubscript:v263];
        }

        v259 = [v353 countByEnumeratingWithState:&v372 objects:v412 count:16];
      }

      while (v259);
    }

    v48 = v351;
    v269 = [v351 objectForKeyedSubscript:@"WifiTimestamp"];
    [v257 setObject:v269 forKeyedSubscript:@"WifiTimestamp"];

    v210 = selfCopy;
    v220 = v345;
    v41 = v354;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v270 = objc_opt_class();
      v371[0] = MEMORY[0x277D85DD0];
      v371[1] = 3221225472;
      v371[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2544;
      v371[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v371[4] = v270;
      v271 = v371;
      if (qword_2811F68C0 != -1)
      {
        dispatch_once(&qword_2811F68C0, v271);
      }

      v220 = v345;
      if (byte_2811F66E8 == 1)
      {
        v353 = [MEMORY[0x277CCACA8] stringWithFormat:@"ScanForward current data: %@ %@", v257, v353];
        v273 = MEMORY[0x277D3F178];
        v274 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent7 = [v274 lastPathComponent];
        v276 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
        [v273 logMessage:v353 fromFile:lastPathComponent7 fromFunction:v276 fromLineNumber:4410];

        v277 = PLLogCommon();
        if (os_log_type_enabled(v277, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v409 = v353;
          _os_log_debug_impl(&dword_21A4C6000, v277, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v41 = v354;
        v47 = 0x277CCA000;
        v220 = v345;
        v210 = selfCopy;
      }
    }

    v278 = PLLogWifi();
    propertiesCopy = v362;
    if (os_log_type_enabled(v278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v409 = v257;
      v410 = 2112;
      v411 = v353;
      _os_log_debug_impl(&dword_21A4C6000, v278, OS_LOG_TYPE_DEBUG, "ScanForward current data: %@ %@", buf, 0x16u);
    }

    [(PLOperator *)v210 logEntry:v257];
    v45 = v344;
  }

  v42 = v341;
  if (v220)
  {
    v279 = [v350 objectForKeyedSubscript:@"TimeDuration"];
    integerValue10 = [v279 integerValue];

    v43 = integerValue10 < 1;
    v42 = v341;
    if (!v43)
    {
      if (v45 != 1)
      {
        v281 = [v350 objectForKeyedSubscript:@"TimeDuration"];
        v282 = [v281 integerValue] / 1000.0;

        entryDate = [v350 entryDate];
        entryDate2 = [(PLEntry *)v345 entryDate];
        [entryDate timeIntervalSinceDate:entryDate2];
        v286 = v285;

        v42 = v341;
        if (v282 < v286)
        {
          v287 = MEMORY[0x277CBEAA8];
          entryDate3 = [(PLEntry *)v345 entryDate];
          v289 = [v287 dateWithTimeInterval:entryDate3 sinceDate:v282];
          [v350 setEntryDate:v289];

          v42 = v341;
        }
      }

      if (powerCopy)
      {
        [(PLWifiAgent *)v210 modelWiFiPower:v350];
      }
    }
  }

  if (v45 != 1)
  {
    v208 = v48;

    if (!v208)
    {
      v345 = 0;
      v44 = 0;
      goto LABEL_293;
    }

    v57 = [(PLEntry *)v208 objectForKeyedSubscript:@"WifiTimestamp"];
    [v57 unsignedIntegerValue];
    v44 = 0;
    goto LABEL_291;
  }

LABEL_310:
}

void *__84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E2 = result;
  return result;
}

void *__84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2505(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E3 = result;
  return result;
}

void *__84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2517(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E4 = result;
  return result;
}

void *__84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2526(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E5 = result;
  return result;
}

void *__84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2532(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E6 = result;
  return result;
}

void *__84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2538(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E7 = result;
  return result;
}

void *__84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2544(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E8 = result;
  return result;
}

void *__31__PLWifiAgent_wifiChipsetQuery__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E9 = result;
  return result;
}

void *__36__PLWifiAgent_wifiManufacturerQuery__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66EA = result;
  return result;
}

void *__36__PLWifiAgent_wifiManufacturerQuery__block_invoke_2622(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66EB = result;
  return result;
}

- (void)modelWiFiPower:(id)power
{
  v494 = *MEMORY[0x277D85DE8];
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
LABEL_88:

      goto LABEL_89;
    }

    v6 = 0x277D3F000;
    if (([MEMORY[0x277D3F208] isWiFiClass:1004002] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004003))
    {
      v7 = [powerCopy objectForKeyedSubscript:@"CurrentChannel"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [powerCopy objectForKeyedSubscript:@"PMDuration"];
      [v10 doubleValue];
      v484 = v11;

      v12 = [powerCopy objectForKeyedSubscript:@"MPCDuration"];
      [v12 doubleValue];
      v480 = v13;

      v14 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
      [v14 doubleValue];
      v477 = v15;

      v16 = [powerCopy objectForKeyedSubscript:@"TXDuration"];
      [v16 doubleValue];
      v474 = v17;

      v18 = [powerCopy objectForKeyedSubscript:@"RXDuration"];
      [v18 doubleValue];
      v472 = v19;

      v20 = [powerCopy objectForKeyedSubscript:@"HSICActiveDuration"];
      [v20 doubleValue];
      v469 = v21;

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
      v466 = v45;

      v46 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"wifi"];
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

        v78 = v477 - v484 - v480 - v474 - v472;
        if (v78 < 0.0)
        {
          v78 = 0.0;
        }

        v79 = v78 * v73;
        v80 = v469 + v480 + v484 + v59 - v477;
        if (v80 < 0.0)
        {
          v80 = 0.0;
        }

        v81 = v80 * v77;
        v82 = v474 * v65 + v472 * v69;
        v54 = v82 + v79 + v81;
        v83 = v466 - v472 - v474;
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

        v54 = (v477 - v484 - v480) * v53;
        v55 = 0.0;
      }
    }

    else
    {
      if (([MEMORY[0x277D3F208] isWiFiClass:1004006] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004004) & 1) == 0 && !objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004008))
      {
        if ([MEMORY[0x277D3F208] kPLWiFiClassIsOneOf:{1004005, 1004007, 1004010, 1004013, 1004014, 1004015, 1004016, 1004017, 1004018, 0}])
        {
          v192 = [powerCopy objectForKeyedSubscript:@"CurrentChannel"];
          [v192 doubleValue];
          v478 = v193;

          v194 = [powerCopy objectForKeyedSubscript:@"PMDuration"];
          [v194 doubleValue];
          v196 = v195;

          v197 = [powerCopy objectForKeyedSubscript:@"MPCDuration"];
          [v197 doubleValue];
          v199 = v198;

          v200 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
          [v200 doubleValue];
          v202 = v201;

          v203 = [powerCopy objectForKeyedSubscript:@"TXDuration"];
          [v203 doubleValue];
          v482 = v204;

          v205 = [powerCopy objectForKeyedSubscript:@"MIMOTXDuration"];
          [v205 doubleValue];
          v207 = v206;

          v208 = [powerCopy objectForKeyedSubscript:@"RXDuration"];
          [v208 doubleValue];
          v210 = v209;

          v211 = [powerCopy objectForKeyedSubscript:@"MIMORXDuration"];
          [v211 doubleValue];
          v213 = v212;

          v214 = [powerCopy objectForKeyedSubscript:@"SISORXDuration"];
          [v214 doubleValue];

          v215 = [powerCopy objectForKeyedSubscript:@"MIMOCSDuration"];
          [v215 doubleValue];
          v217 = v216;

          v218 = [powerCopy objectForKeyedSubscript:@"SISOCSDuration"];
          [v218 doubleValue];

          v219 = [powerCopy objectForKeyedSubscript:@"OCLCSDuration"];
          [v219 doubleValue];
          v462 = v220;

          v473 = 0.0;
          if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
          {
            v221 = [powerCopy objectForKeyedSubscript:@"SCRXDurationSISO"];
            [v221 doubleValue];
            v473 = v222;
          }

          v223 = [powerCopy objectForKeyedSubscript:@"FRTSDuration"];
          [v223 doubleValue];
          v467 = v224;

          if (v213 <= v210)
          {
            v225 = v213;
          }

          else
          {
            v225 = v210;
          }

          v464 = v225;
          if (v207 <= v482)
          {
            v226 = v207;
          }

          else
          {
            v226 = v482;
          }

          if (v202 - v210 - v482 - v196 - v199 >= 0.0)
          {
            v227 = v202 - v210 - v482 - v196 - v199;
          }

          else
          {
            v227 = 0.0;
          }

          if (v217 > v227)
          {
            v217 = v227;
          }

          v228 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"wifi"];
          wifiChipsetQuery2 = [(PLWifiAgent *)self wifiChipsetQuery];
          v475 = v228;
          v230 = [v228 objectForKeyedSubscript:wifiChipsetQuery2];
          wifiManufacturerQuery2 = [(PLWifiAgent *)self wifiManufacturerQuery];
          v232 = [v230 objectForKeyedSubscript:wifiManufacturerQuery2];

          if (v478 >= 0.0)
          {
            v471 = v232;
            selfCopy = self;
            v279 = @"5";
            if (v478 != 0.0)
            {
              v280 = @"2.4";
              if (v478 > 11.0)
              {
                v280 = @"5";
              }

              v279 = v280;
            }

            v281 = [powerCopy objectForKeyedSubscript:@"CurrentBandwidth"];
            [v281 doubleValue];
            v283 = v282;

            if (v283)
            {
              v284 = v283;
            }

            else
            {
              v284 = 20;
            }

            v284 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v284];
            v286 = [v232 objectForKeyedSubscript:v279];
            v287 = [v286 objectForKeyedSubscript:v284];
            v288 = [v287 objectForKeyedSubscript:@"mimo_tx"];
            [v288 doubleValue];
            v452 = v289;

            v290 = [v232 objectForKeyedSubscript:v279];
            v291 = [v290 objectForKeyedSubscript:v284];
            v292 = [v291 objectForKeyedSubscript:@"mimo_rx"];
            [v292 doubleValue];
            v450 = v293;

            v294 = [v232 objectForKeyedSubscript:v279];
            v295 = [v294 objectForKeyedSubscript:v284];
            v296 = [v295 objectForKeyedSubscript:@"mimo_cs"];
            [v296 doubleValue];
            v456 = v297;

            v298 = [v232 objectForKeyedSubscript:v279];
            v299 = [v298 objectForKeyedSubscript:v284];
            v300 = [v299 objectForKeyedSubscript:@"siso_tx"];
            [v300 doubleValue];
            v448 = v301;

            v302 = [v232 objectForKeyedSubscript:v279];
            v303 = [v302 objectForKeyedSubscript:v284];
            v304 = [v303 objectForKeyedSubscript:@"siso_rx"];
            [v304 doubleValue];
            v446 = v305;

            v306 = [v232 objectForKeyedSubscript:v279];
            v307 = [v306 objectForKeyedSubscript:v284];
            v308 = [v307 objectForKeyedSubscript:@"siso_cs"];
            [v308 doubleValue];
            v460 = v309;

            v310 = [v232 objectForKeyedSubscript:v279];
            v311 = [v310 objectForKeyedSubscript:v284];
            v312 = [v311 objectForKeyedSubscript:@"ocl_cs"];
            [v312 doubleValue];
            v444 = v313;

            v314 = 0.0;
            if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
            {
              v315 = [v232 objectForKeyedSubscript:v279];
              v316 = [v315 objectForKeyedSubscript:@"sc"];
              [v316 doubleValue];
              v314 = v317;
            }

            v454 = v226;
            v318 = v482 - v226;
            v319 = v210 - v464;
            self = selfCopy;
            v458 = v217;
            if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004007))
            {
              v320 = v319 * v446 + v464 * v450;
              v6 = 0x277D3F000;
              v236 = v475;
            }

            else
            {
              v366 = [powerCopy objectForKeyedSubscript:@"OPSFullDuration"];
              [v366 doubleValue];
              v368 = v367;

              v369 = [powerCopy objectForKeyedSubscript:@"OPSPartialDuration"];
              [v369 doubleValue];
              v371 = v370;

              if (v368 >= 0.0)
              {
                v372 = v368;
              }

              else
              {
                v372 = 0.0;
              }

              v442 = v372;
              if (v371 >= 0.0)
              {
                v373 = v371;
              }

              else
              {
                v373 = 0.0;
              }

              v374 = [v232 objectForKeyedSubscript:v279];
              v375 = [v374 objectForKeyedSubscript:v284];
              v376 = [v375 objectForKeyedSubscript:@"ops_full"];
              [v376 doubleValue];
              v440 = v377;

              v378 = [v232 objectForKeyedSubscript:v279];
              v379 = [v378 objectForKeyedSubscript:v284];
              v380 = [v379 objectForKeyedSubscript:@"ops_partial"];
              [v380 doubleValue];
              v382 = v381;

              v383 = v319 * v446;
              v236 = v475;
              if (v464 <= v442 + v373)
              {
                v320 = v383 + v464 * v450;
              }

              else
              {
                v320 = v383 + (v464 - v442 - v373) * v450 + v373 * v382 + v442 * v440;
              }

              self = selfCopy;
              v6 = 0x277D3F000uLL;
              v217 = v458;
            }

            v402 = v318 * v448;
            v403 = v227 - v217;
            if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100020) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v462 > v217)
            {
              v404 = v456;
              v405 = v403 * v460 + v217 * v456;
            }

            else
            {
              v404 = v456;
              v405 = v462 * v444 + (v217 - v462) * v456 + v403 * v460;
            }

            v406 = v402 + v454 * v452;
            if ([MEMORY[0x277D3F208] isUsingAnOlderWifiChip])
            {
              v407 = 0.0;
            }

            else
            {
              v407 = v473 * v314;
            }

            if ([*(v6 + 384) debugEnabled])
            {
              v408 = objc_opt_class();
              v491[0] = MEMORY[0x277D85DD0];
              v491[1] = 3221225472;
              v491[2] = __30__PLWifiAgent_modelWiFiPower___block_invoke;
              v491[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v491[4] = v408;
              if (qword_2811F68E0 != -1)
              {
                dispatch_once(&qword_2811F68E0, v491);
              }

              if (byte_2811F66EC == 1)
              {
                v409 = [MEMORY[0x277CCACA8] stringWithFormat:@"txE = %f, rxE = %f, csE = %f, scE = %f", *&v406, *&v320, *&v405, *&v407];
                v410 = MEMORY[0x277D3F178];
                v411 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
                lastPathComponent = [v411 lastPathComponent];
                v413 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
                [v410 logMessage:v409 fromFile:lastPathComponent fromFunction:v413 fromLineNumber:4984];

                v414 = PLLogCommon();
                if (os_log_type_enabled(v414, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *&buf[4] = v409;
                  _os_log_debug_impl(&dword_21A4C6000, v414, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                self = selfCopy;
                v6 = 0x277D3F000;
                v236 = v475;
              }
            }

            v415 = v406 + v320;
            v416 = v415 + v405;
            if (v467 - v210 - v482 >= 0.0)
            {
              v417 = v467 - v210 - v482;
            }

            else
            {
              v417 = 0.0;
            }

            v418 = [MEMORY[0x277D3F208] isWiFiClass:1004005];
            if (v417 >= v458)
            {
              if ((v418 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v462 > v417)
              {
                v419 = (v417 - v458) * v460 + v458 * v404;
              }

              else
              {
                v419 = v462 * v444 + (v458 - v462) * v404 + (v417 - v458) * v460;
              }
            }

            else if ((v418 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v462 > v417)
            {
              v419 = v417 * v404;
            }

            else
            {
              v419 = v462 * v444 + (v417 - v462) * v404;
            }

            v54 = v416 + v407;
            if (v419 < 0.0)
            {
              v419 = 0.0;
            }

            v420 = v415 + v419;
            if (v478 == 0.0)
            {
              v55 = 0.0;
            }

            else
            {
              v55 = v420;
            }

            v232 = v471;
          }

          else
          {
            v233 = [v232 objectForKeyedSubscript:{@"scan", v478}];
            [v233 doubleValue];
            v235 = v234;

            v54 = (v202 - v196 - v199) * v235;
            v55 = 0.0;
            v236 = v475;
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

          entryDate = [MEMORY[0x277D3F258] powerModelForOperatorName:@"wifi"];
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

          v156 = v54 - v55 - v154 - v155;
          if (v55 < 0.0)
          {
            v55 = 0.0;
          }

          if (v156 >= 0.0)
          {
            v157 = v156;
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
            v152 = v167 <= v55;
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
              v161 = v55 / v160;
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
            if (qword_2811F68F0 != -1)
            {
              dispatch_once(&qword_2811F68F0, block);
            }

            if (byte_2811F66EE == 1)
            {
              selfCopy2 = self;
              v173 = [MEMORY[0x277CCACA8] stringWithFormat:@"wifi_power = %f, wifi_power_data = %f, wifi_power_location = %f, wifi_power_wow = %f, wifi_power_idle = %f", *&v153, *&v168, *&v170, 0, *&v164];
              v174 = MEMORY[0x277D3F178];
              v175 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent2 = [v175 lastPathComponent];
              v177 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
              [v174 logMessage:v173 fromFile:lastPathComponent2 fromFunction:v177 fromLineNumber:5292];

              v178 = PLLogCommon();
              if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *&buf[4] = v173;
                _os_log_debug_impl(&dword_21A4C6000, v178, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              self = selfCopy2;
            }
          }

          if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
          {
            entryDate2 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MetricMonitorInstantKeys"];
            v180 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:entryDate2];
            v181 = [MEMORY[0x277CCABB0] numberWithDouble:v153];
            [v180 setObject:v181 forKeyedSubscript:@"WifiPower"];
            if ([(PLWifiAgent *)self wifiAwdlDevice])
            {
              *buf = 0;
              selfCopy3 = self;
              [(PLWifiAgent *)self wifiAwdlDevice];
              WiFiDeviceClientCopyInterfaceStateInfo();
              v182 = *buf;
              if (*buf)
              {
                v183 = [*buf objectForKeyedSubscript:@"LINK_CHANGED_IS_LINKDOWN"];

                if (v183)
                {
                  v184 = MEMORY[0x277CCABB0];
                  v185 = [v182 objectForKeyedSubscript:@"LINK_CHANGED_IS_LINKDOWN"];
                  v186 = [v184 numberWithInt:{objc_msgSend(v185, "intValue")}];
                  [v180 setObject:v186 forKeyedSubscript:@"AWDLDown"];
                }

                v187 = [v182 objectForKeyedSubscript:@"RANGING_ACTIVE_SESSION"];

                if (v187)
                {
                  v188 = MEMORY[0x277CCABB0];
                  v189 = [v182 objectForKeyedSubscript:@"RANGING_ACTIVE_SESSION"];
                  v190 = [v188 numberWithInt:{objc_msgSend(v189, "intValue")}];
                  [v180 setObject:v190 forKeyedSubscript:@"AWDLRanging"];
                }
              }

              self = selfCopy3;
            }

            v492 = v180;
            v191 = [MEMORY[0x277CBEA60] arrayWithObjects:&v492 count:1];
            [(PLOperator *)self postEntries:v191];
          }

          else
          {
            entryDate2 = [powerCopy entryDate];
            [(PLWifiAgent *)self modelWiFiSegmentPower:entryDate2 withDataPower:v168 withIdlePower:v164 withLocationPower:v170 withPipelinePower:v169 withTotalDuration:v160 / 1000.0];
          }

          goto LABEL_88;
        }

        v237 = [powerCopy objectForKeyedSubscript:@"CurrentChannel"];
        [v237 doubleValue];
        v479 = v238;

        v239 = [powerCopy objectForKeyedSubscript:@"PMDuration"];
        [v239 doubleValue];
        v241 = v240;

        v242 = [powerCopy objectForKeyedSubscript:@"MPCDuration"];
        [v242 doubleValue];
        v244 = v243;

        v245 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
        [v245 doubleValue];
        v247 = v246;

        v248 = [powerCopy objectForKeyedSubscript:@"TXDuration"];
        [v248 doubleValue];
        v483 = v249;

        v250 = [powerCopy objectForKeyedSubscript:@"MIMOTXDuration"];
        [v250 doubleValue];
        v252 = v251;

        v253 = [powerCopy objectForKeyedSubscript:@"RXDuration"];
        [v253 doubleValue];
        v255 = v254;

        v256 = [powerCopy objectForKeyedSubscript:@"MIMORXDuration"];
        [v256 doubleValue];
        v258 = v257;

        v259 = [powerCopy objectForKeyedSubscript:@"SISORXDuration"];
        [v259 doubleValue];

        v260 = [powerCopy objectForKeyedSubscript:@"MIMOCSDuration"];
        [v260 doubleValue];
        v262 = v261;

        v263 = [powerCopy objectForKeyedSubscript:@"SISOCSDuration"];
        [v263 doubleValue];

        v264 = [powerCopy objectForKeyedSubscript:@"OCLCSDuration"];
        [v264 doubleValue];
        v465 = v265;

        v476 = 0.0;
        if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
        {
          v266 = [powerCopy objectForKeyedSubscript:@"SCRXDurationSISO"];
          [v266 doubleValue];
          v476 = v267;
        }

        v268 = [powerCopy objectForKeyedSubscript:@"FRTSDuration"];
        [v268 doubleValue];
        v470 = v269;

        if (v258 <= v255)
        {
          v270 = v258;
        }

        else
        {
          v270 = v255;
        }

        v468 = v270;
        if (v252 <= v483)
        {
          v271 = v252;
        }

        else
        {
          v271 = v483;
        }

        if (v247 - v255 - v483 - v241 - v244 >= 0.0)
        {
          v272 = v247 - v255 - v483 - v241 - v244;
        }

        else
        {
          v272 = 0.0;
        }

        if (v262 > v272)
        {
          v262 = v272;
        }

        v46 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"wifi"];
        wifiChipsetQuery3 = [(PLWifiAgent *)self wifiChipsetQuery];
        v274 = [v46 objectForKeyedSubscript:wifiChipsetQuery3];
        v275 = [v274 objectForKeyedSubscript:@"usi"];

        if (v479 >= 0.0)
        {
          v461 = v46;
          selfCopy4 = self;
          v321 = @"5";
          if (v479 != 0.0)
          {
            v322 = @"2.4";
            if (v479 > 11.0)
            {
              v322 = @"5";
            }

            v321 = v322;
          }

          v323 = [powerCopy objectForKeyedSubscript:@"CurrentBandwidth"];
          [v323 doubleValue];
          v325 = v324;

          v326 = [(__CFString *)v321 isEqualToString:@"2.4"];
          if (v325)
          {
            v327 = v326;
          }

          else
          {
            v327 = 1;
          }

          if (v327)
          {
            v328 = 20;
          }

          else
          {
            v328 = v325;
          }

          v328 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v328];
          [v275 objectForKeyedSubscript:v321];
          v331 = v330 = v275;
          v332 = [v331 objectForKeyedSubscript:v328];
          v333 = [v332 objectForKeyedSubscript:@"mimo_tx"];
          [v333 doubleValue];
          v453 = v334;

          v335 = [v330 objectForKeyedSubscript:v321];
          v336 = [v335 objectForKeyedSubscript:v328];
          v337 = [v336 objectForKeyedSubscript:@"mimo_rx"];
          [v337 doubleValue];
          v451 = v338;

          v339 = [v330 objectForKeyedSubscript:v321];
          v340 = [v339 objectForKeyedSubscript:v328];
          v341 = [v340 objectForKeyedSubscript:@"mimo_cs"];
          [v341 doubleValue];
          v457 = v342;

          v343 = [v330 objectForKeyedSubscript:v321];
          v344 = [v343 objectForKeyedSubscript:v328];
          v345 = [v344 objectForKeyedSubscript:@"siso_tx"];
          [v345 doubleValue];
          v449 = v346;

          v347 = [v330 objectForKeyedSubscript:v321];
          v348 = [v347 objectForKeyedSubscript:v328];
          v349 = [v348 objectForKeyedSubscript:@"siso_rx"];
          [v349 doubleValue];
          v447 = v350;

          v351 = [v330 objectForKeyedSubscript:v321];
          v352 = [v351 objectForKeyedSubscript:v328];
          v353 = [v352 objectForKeyedSubscript:@"siso_cs"];
          [v353 doubleValue];
          v463 = v354;

          v355 = [v330 objectForKeyedSubscript:v321];
          v356 = [v355 objectForKeyedSubscript:v328];
          v357 = [v356 objectForKeyedSubscript:@"ocl_cs"];
          [v357 doubleValue];
          v445 = v358;

          v359 = 0.0;
          if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
          {
            v360 = [v330 objectForKeyedSubscript:v321];
            v361 = [v360 objectForKeyedSubscript:@"sc"];
            [v361 doubleValue];
            v359 = v362;
          }

          v455 = v271;
          v363 = v483 - v271;
          v364 = v255 - v468;
          self = selfCopy4;
          v459 = v262;
          if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004007))
          {
            v365 = v364 * v447 + v468 * v451;
            v6 = 0x277D3F000;
            v275 = v330;
          }

          else
          {
            v384 = [powerCopy objectForKeyedSubscript:@"OPSFullDuration"];
            [v384 doubleValue];
            v386 = v385;

            v387 = [powerCopy objectForKeyedSubscript:@"OPSPartialDuration"];
            [v387 doubleValue];
            v389 = v388;

            if (v386 >= 0.0)
            {
              v390 = v386;
            }

            else
            {
              v390 = 0.0;
            }

            v443 = v390;
            if (v389 >= 0.0)
            {
              v391 = v389;
            }

            else
            {
              v391 = 0.0;
            }

            v392 = [v330 objectForKeyedSubscript:v321];
            v393 = [v392 objectForKeyedSubscript:v328];
            v394 = [v393 objectForKeyedSubscript:@"ops_full"];
            [v394 doubleValue];
            v441 = v395;

            v396 = [v330 objectForKeyedSubscript:v321];
            v397 = [v396 objectForKeyedSubscript:v328];
            v398 = [v397 objectForKeyedSubscript:@"ops_partial"];
            [v398 doubleValue];
            v400 = v399;

            v401 = v364 * v447;
            if (v468 <= v443 + v391)
            {
              v365 = v401 + v468 * v451;
            }

            else
            {
              v365 = v401 + (v468 - v443 - v391) * v451 + v391 * v400 + v443 * v441;
            }

            self = selfCopy4;
            v6 = 0x277D3F000uLL;
            v275 = v330;
            v262 = v459;
          }

          v421 = v363 * v449;
          v422 = v272 - v262;
          if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100020) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v465 > v262)
          {
            v423 = v457;
            v424 = v422 * v463 + v262 * v457;
          }

          else
          {
            v423 = v457;
            v424 = v465 * v445 + (v262 - v465) * v457 + v422 * v463;
          }

          v425 = v421 + v455 * v453;
          if ([MEMORY[0x277D3F208] isUsingAnOlderWifiChip])
          {
            v426 = 0.0;
          }

          else
          {
            v426 = v476 * v359;
          }

          if ([*(v6 + 384) debugEnabled])
          {
            v427 = objc_opt_class();
            v490[0] = MEMORY[0x277D85DD0];
            v490[1] = 3221225472;
            v490[2] = __30__PLWifiAgent_modelWiFiPower___block_invoke_2685;
            v490[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v490[4] = v427;
            if (qword_2811F68E8 != -1)
            {
              dispatch_once(&qword_2811F68E8, v490);
            }

            if (byte_2811F66ED == 1)
            {
              v428 = [MEMORY[0x277CCACA8] stringWithFormat:@"txE = %f, rxE = %f, csE = %f, scE = %f", *&v425, *&v365, *&v424, *&v426];
              v429 = MEMORY[0x277D3F178];
              v430 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent3 = [v430 lastPathComponent];
              v432 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
              [v429 logMessage:v428 fromFile:lastPathComponent3 fromFunction:v432 fromLineNumber:5175];

              v433 = PLLogCommon();
              if (os_log_type_enabled(v433, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *&buf[4] = v428;
                _os_log_debug_impl(&dword_21A4C6000, v433, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              self = selfCopy4;
              v6 = 0x277D3F000;
              v46 = v461;
              v275 = v330;
            }
          }

          v434 = v425 + v365;
          v435 = v434 + v424;
          if (v470 - v255 - v483 >= 0.0)
          {
            v436 = v470 - v255 - v483;
          }

          else
          {
            v436 = 0.0;
          }

          v437 = [MEMORY[0x277D3F208] isWiFiClass:1004005];
          if (v436 >= v459)
          {
            if ((v437 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v465 > v436)
            {
              v438 = (v436 - v459) * v463 + v459 * v423;
            }

            else
            {
              v438 = v465 * v445 + (v459 - v465) * v423 + (v436 - v459) * v463;
            }
          }

          else if ((v437 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v465 > v436)
          {
            v438 = v436 * v423;
          }

          else
          {
            v438 = v465 * v445 + (v436 - v465) * v423;
          }

          v54 = v435 + v426;
          if (v438 < 0.0)
          {
            v438 = 0.0;
          }

          v439 = v434 + v438;
          if (v479 == 0.0)
          {
            v55 = 0.0;
          }

          else
          {
            v55 = v439;
          }
        }

        else
        {
          v276 = [v275 objectForKeyedSubscript:{@"scan", v479}];
          [v276 doubleValue];
          v278 = v277;

          v54 = (v247 - v241 - v244) * v278;
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

      v46 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"wifi"];
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

      v481 = v105;
      v485 = v90;
      selfCopy5 = self;
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

      v135 = v96 - v485 - v93 - v99 - v102;
      v55 = 0.0;
      if (v135 < 0.0)
      {
        v135 = 0.0;
      }

      v136 = v135 * v134;
      v137 = v99 * v124 + v102 * v129;
      if (v87 != 0.0)
      {
        v138 = v481 - v102 - v99;
        if (v138 < 0.0)
        {
          v138 = 0.0;
        }

        v55 = v137 + v138 * v134;
      }

      v54 = v137 + v136;

      self = selfCopy5;
    }

    v6 = 0x277D3F000uLL;
    goto LABEL_42;
  }

LABEL_89:
}

void *__30__PLWifiAgent_modelWiFiPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66EC = result;
  return result;
}

void *__30__PLWifiAgent_modelWiFiPower___block_invoke_2685(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66ED = result;
  return result;
}

void *__30__PLWifiAgent_modelWiFiPower___block_invoke_2688(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66EE = result;
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