@interface PLBatteryUIResponseTypePausedCharging
- (_PLTimeIntervalRange)range;
- (id)result;
- (int)configureState:(id)state;
- (int)getState:(signed __int16)state;
- (void)configure:(id)configure;
- (void)configureCameraStreaming;
- (void)configureTLCWithCameraStreaming;
- (void)getCameraStreamingState;
- (void)getChargingData;
- (void)getTLCWithCameraStreamingState;
- (void)result;
- (void)run;
- (void)setChargingPausedStates;
- (void)setCurrentlyChargingStates;
- (void)setTerminatedChargingStates;
@end

@implementation PLBatteryUIResponseTypePausedCharging

- (void)getChargingData
{
  [self isCharging];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 8u);
}

- (int)getState:(signed __int16)state
{
  stateCopy = state;
  v34 = *MEMORY[0x277D85DE8];
  v5 = PLLogCommon(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v33 = stateCopy;
    _os_log_debug_impl(&dword_25EE51000, v5, OS_LOG_TYPE_DEBUG, "Get state for type: %d", buf, 8u);
  }

  v6 = MEMORY[0x277CCACA8];
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v8 = v7;
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v11 = v9 + v10;
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v13 = v12;
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  stateCopy = [v6 stringWithFormat:@"((timestamp BETWEEN %f AND %f) OR (%@ BETWEEN %f AND %f)) AND %@=%hd", v8, *&v11, @"timestampEnd", v13, v14 + v15, @"intervalType", stateCopy];
  v17 = objc_msgSend_storage(self);
  chargingStateIntervalsEntryKey = [(PLBatteryUIResponseTypePausedCharging *)self chargingStateIntervalsEntryKey];
  v31 = stateCopy;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v20 = [v17 lastEntryForKey:chargingStateIntervalsEntryKey withFilters:v19];
  [(PLBatteryUIResponseTypePausedCharging *)self setLastEntry:v20];

  lastEntry = [(PLBatteryUIResponseTypePausedCharging *)self lastEntry];

  lastEntry4 = PLLogCommon(v22);
  v24 = os_log_type_enabled(lastEntry4, OS_LOG_TYPE_INFO);
  if (lastEntry)
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, lastEntry4, OS_LOG_TYPE_INFO, "Entry exists in last 24hrs.", buf, 2u);
    }

    if (stateCopy == 8)
    {
      lastEntry2 = [(PLBatteryUIResponseTypePausedCharging *)self lastEntry];
      v26 = [lastEntry2 objectForKeyedSubscript:@"chargeLimitTargetSoC"];

      if (v26)
      {
        lastEntry3 = [(PLBatteryUIResponseTypePausedCharging *)self lastEntry];
        v28 = [lastEntry3 objectForKeyedSubscript:@"chargeLimitTargetSoC"];
        [(PLBatteryUIResponseTypePausedCharging *)self setFixedChargingLimit:v28];
      }
    }

    lastEntry4 = [(PLBatteryUIResponseTypePausedCharging *)self lastEntry];
    v29 = [(PLBatteryUIResponseTypePausedCharging *)self configureState:lastEntry4];
  }

  else if (v24)
  {
    *buf = 0;
    v29 = 1;
    _os_log_impl(&dword_25EE51000, lastEntry4, OS_LOG_TYPE_INFO, "No entries in 24hr time range", buf, 2u);
  }

  else
  {
    v29 = 1;
  }

  return v29;
}

- (int)configureState:(id)state
{
  v88 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = PLLogCommon(stateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging configureState:];
  }

  v6 = [stateCopy objectForKeyedSubscript:@"timestamp"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [stateCopy objectForKeyedSubscript:@"timestampEnd"];

  if (!v9)
  {
    v36 = [stateCopy objectForKeyedSubscript:@"intervalType"];
    intValue = [v36 intValue];

    v39 = PLLogCommon(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v87 = intValue;
      _os_log_debug_impl(&dword_25EE51000, v39, OS_LOG_TYPE_DEBUG, "Entry is open: %d", buf, 8u);
    }

    v41 = 1;
    if (intValue <= 6)
    {
      if (intValue != 2)
      {
        if (intValue == 3)
        {
          v55 = PLLogCommon(v40);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryUIResponseTypePausedCharging configureState:];
          }

          monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
          entryDate = [stateCopy entryDate];
          [monotonicDate timeIntervalSinceDate:entryDate];
          v59 = v58;

          v61 = PLLogCommon(v60);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryUIResponseTypePausedCharging configureState:];
          }

          if (v59 >= 960.0 || v59 <= 0.0)
          {
            v63 = 1;
          }

          else
          {
            v63 = 2;
          }

          if (v59 >= 960.0)
          {
            v41 = 3;
          }

          else
          {
            v41 = v63;
          }
        }

        goto LABEL_81;
      }

      v75 = PLLogCommon(v40);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging configureState:];
      }

      [(PLBatteryUIResponseTypePausedCharging *)self setSmartChargingDeadline:0];
      v76 = objc_alloc(MEMORY[0x277D3F078]);
      v77 = [v76 initWithClientName:*MEMORY[0x277D3F080]];
      [(PLBatteryUIResponseTypePausedCharging *)self setSmartChargingClient:v77];

      smartChargingClient = [(PLBatteryUIResponseTypePausedCharging *)self smartChargingClient];
      v85 = 0;
      v68 = [smartChargingClient fullChargeDeadline:&v85];
      v69 = v85;

      if (v69)
      {
        v80 = PLLogCommon(v79);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryUIResponseTypePausedCharging configureState:];
        }
      }

      else
      {
        v81 = [(PLBatteryUIResponseTypePausedCharging *)self setSmartChargingDeadline:v68];
      }

      v82 = PLLogCommon(v81);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging configureState:?];
      }
    }

    else
    {
      if (intValue != 7)
      {
        if (intValue == 9)
        {
          supportsSlowCharging = [MEMORY[0x277D3F058] supportsSlowCharging];
          if (!supportsSlowCharging)
          {
LABEL_66:
            v41 = 1;
            goto LABEL_81;
          }

          v74 = PLLogCommon(supportsSlowCharging);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryUIResponseTypePausedCharging configureState:];
          }
        }

        else
        {
          if (intValue != 8)
          {
            goto LABEL_81;
          }

          v42 = PLLogCommon(v40);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryUIResponseTypePausedCharging configureState:];
          }

          fixedChargingLimit = [(PLBatteryUIResponseTypePausedCharging *)self fixedChargingLimit];
          if (fixedChargingLimit)
          {
            v44 = fixedChargingLimit;
            currentChargeLevel = [(PLBatteryUIResponseTypePausedCharging *)self currentChargeLevel];
            if (currentChargeLevel)
            {
              v46 = currentChargeLevel;
              fixedChargingLimit2 = [(PLBatteryUIResponseTypePausedCharging *)self fixedChargingLimit];
              [fixedChargingLimit2 doubleValue];
              v49 = v48;
              currentChargeLevel2 = [(PLBatteryUIResponseTypePausedCharging *)self currentChargeLevel];
              [currentChargeLevel2 doubleValue];
              v52 = v51;

              if (v49 < v52)
              {
                v54 = PLLogCommon(v53);
                if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                {
                  [PLBatteryUIResponseTypePausedCharging configureState:];
                }

                v41 = 5;
                goto LABEL_81;
              }
            }

            else
            {
            }
          }
        }

LABEL_80:
        v41 = 3;
        goto LABEL_81;
      }

      v64 = PLLogCommon(v40);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging configureState:];
      }

      [(PLBatteryUIResponseTypePausedCharging *)self setCleanEnergyChargingDeadline:0];
      v65 = objc_alloc(MEMORY[0x277D3F078]);
      v66 = [v65 initWithClientName:*MEMORY[0x277D3F080]];
      [(PLBatteryUIResponseTypePausedCharging *)self setCleanEnergyChargingClient:v66];

      cleanEnergyChargingClient = [(PLBatteryUIResponseTypePausedCharging *)self cleanEnergyChargingClient];
      v84 = 0;
      v68 = [cleanEnergyChargingClient cecFullChargeDeadline:&v84];
      v69 = v84;

      if (v69)
      {
        v71 = PLLogCommon(v70);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          [PLBatteryUIResponseTypePausedCharging configureState:];
        }
      }

      else
      {
        v72 = [(PLBatteryUIResponseTypePausedCharging *)self setCleanEnergyChargingDeadline:v68];
      }

      v82 = PLLogCommon(v72);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging configureState:?];
      }
    }

    goto LABEL_80;
  }

  v11 = PLLogCommon(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging configureState:stateCopy];
  }

  v12 = [stateCopy objectForKeyedSubscript:@"timestampEnd"];
  [v12 timeIntervalSince1970];
  v14 = v13;

  v16 = PLLogCommon(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging configureState:];
  }

  lastConnectedEntry = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];

  v19 = PLLogCommon(v18);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (lastConnectedEntry)
  {
    if (v20)
    {
      [PLBatteryUIResponseTypePausedCharging configureState:?];
    }

    lastConnectedEntry2 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
    v22 = [lastConnectedEntry2 objectForKeyedSubscript:@"timestamp"];
    [v22 doubleValue];
    v24 = v23;

    lastConnectedEntry3 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
    v26 = [lastConnectedEntry3 objectForKeyedSubscript:@"timestampEnd"];

    v28 = PLLogCommon(v27);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
    if (v26)
    {
      if (v29)
      {
        [PLBatteryUIResponseTypePausedCharging configureState:];
      }

      lastConnectedEntry4 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
      v31 = [lastConnectedEntry4 objectForKeyedSubscript:@"timestampEnd"];
      [v31 timeIntervalSince1970];
      v33 = v32;

      v35 = PLLogCommon(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging configureState:];
      }

      if (v24 > v14 || v33 < v8)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v29)
      {
        [PLBatteryUIResponseTypePausedCharging configureState:];
      }

      if (v24 > v14)
      {
        goto LABEL_66;
      }
    }
  }

  else
  {
    if (v20)
    {
      [PLBatteryUIResponseTypePausedCharging configureState:];
    }
  }

  v41 = 4;
LABEL_81:

  return v41;
}

- (void)getCameraStreamingState
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v5 = v4;
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v8 = v6 + v7;
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v10 = v9;
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v13 = [v3 stringWithFormat:@"((timestamp BETWEEN %f AND %f) AND (%@ BETWEEN %f AND %f)) AND %@=%hd", v5, *&v8, @"timestampEnd", v10, v11 + v12, @"intervalType", 4];
  v14 = objc_msgSend_storage(self);
  chargingStateIntervalsEntryKey = [(PLBatteryUIResponseTypePausedCharging *)self chargingStateIntervalsEntryKey];
  v23[0] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v17 = [v14 lastEntryForKey:chargingStateIntervalsEntryKey withFilters:v16];
  [(PLBatteryUIResponseTypePausedCharging *)self setLastCameraStreamingEntry:v17];

  lastCameraStreamingEntry = [(PLBatteryUIResponseTypePausedCharging *)self lastCameraStreamingEntry];

  v20 = PLLogCommon(v19);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (lastCameraStreamingEntry)
  {
    if (v21)
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_INFO, "Camera Streaming Entry exists in last 24hrs.", buf, 2u);
    }

    [(PLBatteryUIResponseTypePausedCharging *)self configureCameraStreaming];
  }

  else
  {
    if (v21)
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_INFO, "No Camera Streaming entries in 24hr time range", buf, 2u);
    }
  }
}

- (void)configureCameraStreaming
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon([(PLBatteryUIResponseTypePausedCharging *)self setWasCameraStreaming:0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    lastCameraStreamingEntry = [(PLBatteryUIResponseTypePausedCharging *)self lastCameraStreamingEntry];
    v47 = 138412290;
    v48 = *&lastCameraStreamingEntry;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "Camera Entry:%@", &v47, 0xCu);
  }

  lastCameraStreamingEntry2 = [(PLBatteryUIResponseTypePausedCharging *)self lastCameraStreamingEntry];
  v6 = [lastCameraStreamingEntry2 objectForKeyedSubscript:@"timestampEnd"];

  if (!v6)
  {
    goto LABEL_19;
  }

  v8 = PLLogCommon(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    lastCameraStreamingEntry3 = [(PLBatteryUIResponseTypePausedCharging *)self lastCameraStreamingEntry];
    v10 = [lastCameraStreamingEntry3 objectForKeyedSubscript:@"timestamp"];
    lastCameraStreamingEntry4 = [(PLBatteryUIResponseTypePausedCharging *)self lastCameraStreamingEntry];
    v12 = [lastCameraStreamingEntry4 objectForKeyedSubscript:@"timestampEnd"];
    v47 = 138412546;
    v48 = *&v10;
    v49 = 2112;
    v50 = *&v12;
    _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_INFO, "Last Camera Streaming Entry was opened at %@ and closed at %@", &v47, 0x16u);
  }

  lastCameraStreamingEntry5 = [(PLBatteryUIResponseTypePausedCharging *)self lastCameraStreamingEntry];
  v14 = [lastCameraStreamingEntry5 objectForKeyedSubscript:@"timestamp"];
  [v14 doubleValue];
  v16 = v15;

  lastCameraStreamingEntry6 = [(PLBatteryUIResponseTypePausedCharging *)self lastCameraStreamingEntry];
  v18 = [lastCameraStreamingEntry6 objectForKeyedSubscript:@"timestampEnd"];
  [v18 timeIntervalSince1970];
  v20 = v19;

  v22 = PLLogCommon(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v47 = 134218240;
    v48 = v16;
    v49 = 2048;
    v50 = v20;
    _os_log_impl(&dword_25EE51000, v22, OS_LOG_TYPE_INFO, "Converted values to doubles: start: %f and end: %f", &v47, 0x16u);
  }

  lastConnectedEntry = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];

  v25 = PLLogCommon(v24);
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
  if (lastConnectedEntry)
  {
    if (v26)
    {
      lastConnectedEntry2 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
      v47 = 138412290;
      v48 = *&lastConnectedEntry2;
      _os_log_impl(&dword_25EE51000, v25, OS_LOG_TYPE_INFO, "Connected Entry:%@", &v47, 0xCu);
    }

    lastConnectedEntry3 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
    v29 = [lastConnectedEntry3 objectForKeyedSubscript:@"timestamp"];
    [v29 doubleValue];
    v31 = v30;

    lastConnectedEntry4 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
    v33 = [lastConnectedEntry4 objectForKeyedSubscript:@"timestampEnd"];

    v35 = PLLogCommon(v34);
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
    if (v33)
    {
      if (v36)
      {
        LOWORD(v47) = 0;
        _os_log_impl(&dword_25EE51000, v35, OS_LOG_TYPE_INFO, "Closed External Connected Entry", &v47, 2u);
      }

      lastConnectedEntry5 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
      v38 = [lastConnectedEntry5 objectForKeyedSubscript:@"timestampEnd"];
      [v38 timeIntervalSince1970];
      v40 = v39;

      v42 = PLLogCommon(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v47 = 134218240;
        v48 = v31;
        v49 = 2048;
        v50 = v40;
        _os_log_impl(&dword_25EE51000, v42, OS_LOG_TYPE_INFO, "start: %f, end: %f", &v47, 0x16u);
      }

      if (v31 <= v20 && v40 >= v16)
      {
LABEL_18:
        v7 = [(PLBatteryUIResponseTypePausedCharging *)self setWasCameraStreaming:1];
      }
    }

    else
    {
      if (v36)
      {
        LOWORD(v47) = 0;
        _os_log_impl(&dword_25EE51000, v35, OS_LOG_TYPE_INFO, "Open External Connected Entry", &v47, 2u);
      }

      if (v31 <= v20)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    v25 = PLLogCommon(v7);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      wasCameraStreaming = [(PLBatteryUIResponseTypePausedCharging *)self wasCameraStreaming];
      v47 = 67109120;
      LODWORD(v48) = wasCameraStreaming;
      v44 = "Was Camera Streaming: %d";
      v45 = v25;
      v46 = 8;
LABEL_23:
      _os_log_impl(&dword_25EE51000, v45, OS_LOG_TYPE_INFO, v44, &v47, v46);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (v26)
  {
    LOWORD(v47) = 0;
    v44 = "No External Connected Entry exists in last 24hrs";
    v45 = v25;
    v46 = 2;
    goto LABEL_23;
  }

LABEL_24:
}

- (void)getTLCWithCameraStreamingState
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v5 = v4;
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v8 = v6 + v7;
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v10 = v9;
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v13 = [v3 stringWithFormat:@"((timestamp BETWEEN %f AND %f) AND (%@ BETWEEN %f AND %f)) AND %@=%hd", v5, *&v8, @"timestampEnd", v10, v11 + v12, @"intervalType", 6];
  v14 = objc_msgSend_storage(self);
  chargingStateIntervalsEntryKey = [(PLBatteryUIResponseTypePausedCharging *)self chargingStateIntervalsEntryKey];
  v23[0] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v17 = [v14 lastEntryForKey:chargingStateIntervalsEntryKey withFilters:v16];
  [(PLBatteryUIResponseTypePausedCharging *)self setLastTLCWithCameraStreamingEntry:v17];

  lastTLCWithCameraStreamingEntry = [(PLBatteryUIResponseTypePausedCharging *)self lastTLCWithCameraStreamingEntry];

  v20 = PLLogCommon(v19);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (lastTLCWithCameraStreamingEntry)
  {
    if (v21)
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_INFO, "TLC with Camera Streaming Entry exists in last 24hrs.", buf, 2u);
    }

    [(PLBatteryUIResponseTypePausedCharging *)self configureTLCWithCameraStreaming];
  }

  else
  {
    if (v21)
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_INFO, "No TLC with Camera Streaming entries in 24hr time range", buf, 2u);
    }
  }
}

- (void)configureTLCWithCameraStreaming
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon([(PLBatteryUIResponseTypePausedCharging *)self setWasTLCWithCameraStreaming:0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    lastTLCWithCameraStreamingEntry = [(PLBatteryUIResponseTypePausedCharging *)self lastTLCWithCameraStreamingEntry];
    v47 = 138412290;
    v48 = *&lastTLCWithCameraStreamingEntry;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "TLC with Camera Entry:%@", &v47, 0xCu);
  }

  lastTLCWithCameraStreamingEntry2 = [(PLBatteryUIResponseTypePausedCharging *)self lastTLCWithCameraStreamingEntry];
  v6 = [lastTLCWithCameraStreamingEntry2 objectForKeyedSubscript:@"timestampEnd"];

  if (!v6)
  {
    goto LABEL_19;
  }

  v8 = PLLogCommon(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    lastTLCWithCameraStreamingEntry3 = [(PLBatteryUIResponseTypePausedCharging *)self lastTLCWithCameraStreamingEntry];
    v10 = [lastTLCWithCameraStreamingEntry3 objectForKeyedSubscript:@"timestamp"];
    lastTLCWithCameraStreamingEntry4 = [(PLBatteryUIResponseTypePausedCharging *)self lastTLCWithCameraStreamingEntry];
    v12 = [lastTLCWithCameraStreamingEntry4 objectForKeyedSubscript:@"timestampEnd"];
    v47 = 138412546;
    v48 = *&v10;
    v49 = 2112;
    v50 = *&v12;
    _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_INFO, "Last TLC with Camera Streaming Entry was opened at %@ and closed at %@", &v47, 0x16u);
  }

  lastTLCWithCameraStreamingEntry5 = [(PLBatteryUIResponseTypePausedCharging *)self lastTLCWithCameraStreamingEntry];
  v14 = [lastTLCWithCameraStreamingEntry5 objectForKeyedSubscript:@"timestamp"];
  [v14 doubleValue];
  v16 = v15;

  lastTLCWithCameraStreamingEntry6 = [(PLBatteryUIResponseTypePausedCharging *)self lastTLCWithCameraStreamingEntry];
  v18 = [lastTLCWithCameraStreamingEntry6 objectForKeyedSubscript:@"timestampEnd"];
  [v18 timeIntervalSince1970];
  v20 = v19;

  v22 = PLLogCommon(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v47 = 134218240;
    v48 = v16;
    v49 = 2048;
    v50 = v20;
    _os_log_impl(&dword_25EE51000, v22, OS_LOG_TYPE_INFO, "Converted values to doubles: start: %f and end: %f", &v47, 0x16u);
  }

  lastConnectedEntry = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];

  v25 = PLLogCommon(v24);
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
  if (lastConnectedEntry)
  {
    if (v26)
    {
      lastConnectedEntry2 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
      v47 = 138412290;
      v48 = *&lastConnectedEntry2;
      _os_log_impl(&dword_25EE51000, v25, OS_LOG_TYPE_INFO, "Connected Entry:%@", &v47, 0xCu);
    }

    lastConnectedEntry3 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
    v29 = [lastConnectedEntry3 objectForKeyedSubscript:@"timestamp"];
    [v29 doubleValue];
    v31 = v30;

    lastConnectedEntry4 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
    v33 = [lastConnectedEntry4 objectForKeyedSubscript:@"timestampEnd"];

    v35 = PLLogCommon(v34);
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
    if (v33)
    {
      if (v36)
      {
        LOWORD(v47) = 0;
        _os_log_impl(&dword_25EE51000, v35, OS_LOG_TYPE_INFO, "Closed External Connected Entry", &v47, 2u);
      }

      lastConnectedEntry5 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
      v38 = [lastConnectedEntry5 objectForKeyedSubscript:@"timestampEnd"];
      [v38 timeIntervalSince1970];
      v40 = v39;

      v42 = PLLogCommon(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v47 = 134218240;
        v48 = v31;
        v49 = 2048;
        v50 = v40;
        _os_log_impl(&dword_25EE51000, v42, OS_LOG_TYPE_INFO, "start: %f, end: %f", &v47, 0x16u);
      }

      if (v31 <= v20 && v40 >= v16)
      {
LABEL_18:
        v7 = [(PLBatteryUIResponseTypePausedCharging *)self setWasTLCWithCameraStreaming:1];
      }
    }

    else
    {
      if (v36)
      {
        LOWORD(v47) = 0;
        _os_log_impl(&dword_25EE51000, v35, OS_LOG_TYPE_INFO, "Open External Connected Entry", &v47, 2u);
      }

      if (v31 <= v20)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    v25 = PLLogCommon(v7);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      wasTLCWithCameraStreaming = [(PLBatteryUIResponseTypePausedCharging *)self wasTLCWithCameraStreaming];
      v47 = 67109120;
      LODWORD(v48) = wasTLCWithCameraStreaming;
      v44 = "Was TLC with Camera Streaming: %d";
      v45 = v25;
      v46 = 8;
LABEL_23:
      _os_log_impl(&dword_25EE51000, v45, OS_LOG_TYPE_INFO, v44, &v47, v46);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (v26)
  {
    LOWORD(v47) = 0;
    v44 = "No External Connected Entry exists in last 24hrs";
    v45 = v25;
    v46 = 2;
    goto LABEL_23;
  }

LABEL_24:
}

- (void)configure:(id)configure
{
  [(PLBatteryUIResponseTypePausedCharging *)self setPausedChargingState:100];
  [(PLBatteryUIResponseTypePausedCharging *)self setIntervalStateTLC:1];
  [(PLBatteryUIResponseTypePausedCharging *)self setIntervalStateSmartCharging:1];
  [(PLBatteryUIResponseTypePausedCharging *)self getChargingData];
  [(PLBatteryUIResponseTypePausedCharging *)self getCameraStreamingState];
  [(PLBatteryUIResponseTypePausedCharging *)self getTLCWithCameraStreamingState];
  v4 = PLLogCommon([(PLBatteryUIResponseTypePausedCharging *)self setIntervalStateFixedCharging:[(PLBatteryUIResponseTypePausedCharging *)self getState:8]]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging configure:?];
  }

  if ([MEMORY[0x277D3F058] supportsSlowCharging])
  {
    v5 = PLLogCommon([(PLBatteryUIResponseTypePausedCharging *)self setIntervalStateChargingSpeed:[(PLBatteryUIResponseTypePausedCharging *)self getState:9]]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging configure:?];
    }
  }

  v6 = PLLogCommon([(PLBatteryUIResponseTypePausedCharging *)self setIntervalStateSmartCharging:[(PLBatteryUIResponseTypePausedCharging *)self getState:2]]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging configure:?];
  }

  v7 = PLLogCommon([(PLBatteryUIResponseTypePausedCharging *)self setIntervalStateCEC:[(PLBatteryUIResponseTypePausedCharging *)self getState:7]]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging configure:?];
  }

  v8 = PLLogCommon([(PLBatteryUIResponseTypePausedCharging *)self setIntervalStateTLC:[(PLBatteryUIResponseTypePausedCharging *)self getState:3]]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging configure:?];
  }
}

- (void)setCurrentlyChargingStates
{
  v3 = PLLogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
  }

  intervalStateCEC = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateCEC];
  if (intervalStateCEC == 4)
  {
    v5 = PLLogCommon(intervalStateCEC);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
    }

    v6 = 306;
    goto LABEL_33;
  }

  if ([MEMORY[0x277D3F058] supportsSlowCharging])
  {
    intervalStateChargingSpeed = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateChargingSpeed];
    if (intervalStateChargingSpeed == 3)
    {
      v5 = PLLogCommon(intervalStateChargingSpeed);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
      }

      v6 = 601;
      goto LABEL_33;
    }
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]== 1)
  {
    intervalStateTLC = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC];
    if (intervalStateTLC == 1)
    {
      v5 = PLLogCommon(intervalStateTLC);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
      }

LABEL_32:
      v6 = 200;
      goto LABEL_33;
    }
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]== 4)
  {
    intervalStateTLC2 = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC];
    if (intervalStateTLC2 == 1)
    {
      v5 = PLLogCommon(intervalStateTLC2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
      }

      goto LABEL_29;
    }
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]!= 1 || (v10 = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC], v10 != 4))
  {
    intervalStateSmartCharging = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging];
    if (intervalStateSmartCharging != 4 || (intervalStateSmartCharging = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC], intervalStateSmartCharging != 4))
    {
      v5 = PLLogCommon(intervalStateSmartCharging);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
      }

      goto LABEL_32;
    }

    v5 = PLLogCommon(intervalStateSmartCharging);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
    }

LABEL_29:
    v6 = 301;
    goto LABEL_33;
  }

  v5 = PLLogCommon(v10);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
  }

  v6 = 302;
LABEL_33:

  [(PLBatteryUIResponseTypePausedCharging *)self setPausedChargingState:v6];
}

- (void)setChargingPausedStates
{
  v3 = PLLogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "Setting Charging Paused States", v15, 2u);
  }

  if ([MEMORY[0x277D3F058] supportsSlowCharging])
  {
    intervalStateChargingSpeed = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateChargingSpeed];
    if (intervalStateChargingSpeed == 3)
    {
      v5 = PLLogCommon(intervalStateChargingSpeed);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
      }

      v6 = 601;
      goto LABEL_34;
    }
  }

  intervalStateFixedCharging = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateFixedCharging];
  if (intervalStateFixedCharging == 3)
  {
    v5 = PLLogCommon(intervalStateFixedCharging);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
    }

    v6 = 205;
    goto LABEL_34;
  }

  intervalStateFixedCharging2 = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateFixedCharging];
  if (intervalStateFixedCharging2 == 5)
  {
    v5 = PLLogCommon(intervalStateFixedCharging2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
    }

    v6 = 206;
    goto LABEL_34;
  }

  intervalStateSmartCharging = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging];
  if (intervalStateSmartCharging == 3)
  {
    v5 = PLLogCommon(intervalStateSmartCharging);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
    }

    v6 = 401;
    goto LABEL_34;
  }

  intervalStateCEC = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateCEC];
  if (intervalStateCEC == 3)
  {
    v5 = PLLogCommon(intervalStateCEC);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
    }

    v6 = 406;
    goto LABEL_34;
  }

  intervalStateTLC = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC];
  if (intervalStateTLC == 2)
  {
    v5 = PLLogCommon(intervalStateTLC);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
    }

LABEL_33:
    v6 = 200;
    goto LABEL_34;
  }

  intervalStateTLC2 = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC];
  v13 = intervalStateTLC2;
  v5 = PLLogCommon(intervalStateTLC2);
  v14 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v13 != 3)
  {
    if (v14)
    {
      [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
    }

    goto LABEL_33;
  }

  if (v14)
  {
    [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
  }

  v6 = 402;
LABEL_34:

  [(PLBatteryUIResponseTypePausedCharging *)self setPausedChargingState:v6];
}

- (void)setTerminatedChargingStates
{
  v3 = PLLogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v29 = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "Setting Charging Terminated States", v29, 2u);
  }

  +[PLUtilities containerPath];
  v4 = _CFPreferencesCopyValueWithContainer();
  intValue = [v4 intValue];
  if (intValue == 100)
  {
    v6 = PLLogCommon(intValue);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setTerminatedChargingStates];
    }

LABEL_6:

LABEL_7:
    v7 = 202;
    goto LABEL_43;
  }

  wasTLCWithCameraStreaming = [(PLBatteryUIResponseTypePausedCharging *)self wasTLCWithCameraStreaming];
  if (wasTLCWithCameraStreaming)
  {
    v9 = PLLogCommon(wasTLCWithCameraStreaming);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setTerminatedChargingStates];
    }

    v7 = 505;
    goto LABEL_43;
  }

  wasCameraStreaming = [(PLBatteryUIResponseTypePausedCharging *)self wasCameraStreaming];
  if (wasCameraStreaming)
  {
    v11 = PLLogCommon(wasCameraStreaming);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setTerminatedChargingStates];
    }

    v7 = 503;
    goto LABEL_43;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateFixedCharging]== 4)
  {
    fixedChargingLimit = [(PLBatteryUIResponseTypePausedCharging *)self fixedChargingLimit];
    if (fixedChargingLimit)
    {
      v13 = fixedChargingLimit;
      currentChargeLevel = [(PLBatteryUIResponseTypePausedCharging *)self currentChargeLevel];
      if (currentChargeLevel)
      {
        v15 = currentChargeLevel;
        fixedChargingLimit2 = [(PLBatteryUIResponseTypePausedCharging *)self fixedChargingLimit];
        intValue2 = [fixedChargingLimit2 intValue];
        currentChargeLevel2 = [(PLBatteryUIResponseTypePausedCharging *)self currentChargeLevel];
        intValue3 = [currentChargeLevel2 intValue];

        if (intValue2 < intValue3)
        {
          v7 = 508;
          goto LABEL_43;
        }
      }

      else
      {
      }
    }

    v7 = 507;
    goto LABEL_43;
  }

  intervalStateCEC = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateCEC];
  if (intervalStateCEC == 4)
  {
    v21 = PLLogCommon(intervalStateCEC);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
    }

    v7 = 506;
    goto LABEL_43;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateCEC]== 1 && [(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]== 1 && [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC]== 1)
  {
    goto LABEL_7;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]== 1)
  {
    intervalStateTLC = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC];
    if (intervalStateTLC == 1)
    {
      v6 = PLLogCommon(intervalStateTLC);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
      }

      goto LABEL_6;
    }
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]== 4)
  {
    intervalStateTLC2 = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC];
    if (intervalStateTLC2 == 1)
    {
      v24 = PLLogCommon(intervalStateTLC2);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
      }

LABEL_48:

      v7 = 501;
      goto LABEL_43;
    }
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]== 1 && (v25 = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC], v25 == 4))
  {
    v26 = PLLogCommon(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
    }

    v7 = 502;
  }

  else
  {
    intervalStateSmartCharging = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging];
    if (intervalStateSmartCharging == 4)
    {
      intervalStateSmartCharging = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC];
      if (intervalStateSmartCharging == 4)
      {
        v24 = PLLogCommon(intervalStateSmartCharging);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
        }

        goto LABEL_48;
      }
    }

    v28 = PLLogCommon(intervalStateSmartCharging);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setTerminatedChargingStates];
    }

    v7 = 100;
  }

LABEL_43:
  [(PLBatteryUIResponseTypePausedCharging *)self setPausedChargingState:v7];
}

- (void)run
{
  v17 = *MEMORY[0x277D85DE8];
  currentChargeLevel = [(PLBatteryUIResponseTypePausedCharging *)self currentChargeLevel];
  [currentChargeLevel doubleValue];
  v5 = v4;

  if (v5 >= 100.0)
  {
    v13 = PLLogCommon(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging run];
    }

    [(PLBatteryUIResponseTypePausedCharging *)self setPausedChargingState:201];
    externalConnected = [(PLBatteryUIResponseTypePausedCharging *)self externalConnected];
    if (externalConnected)
    {
      externalConnected = [(PLBatteryUIResponseTypePausedCharging *)self setPausedChargingState:203];
    }
  }

  else
  {
    externalConnected2 = [(PLBatteryUIResponseTypePausedCharging *)self externalConnected];
    if (externalConnected2)
    {
      isCharging = [(PLBatteryUIResponseTypePausedCharging *)self isCharging];
      v9 = isCharging;
      v10 = PLLogCommon(isCharging);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        if (v11)
        {
          [PLBatteryUIResponseTypePausedCharging run];
        }

        externalConnected = [(PLBatteryUIResponseTypePausedCharging *)self setCurrentlyChargingStates];
      }

      else
      {
        if (v11)
        {
          [PLBatteryUIResponseTypePausedCharging run];
        }

        externalConnected = [(PLBatteryUIResponseTypePausedCharging *)self setChargingPausedStates];
      }
    }

    else
    {
      v14 = PLLogCommon(externalConnected2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging run];
      }

      externalConnected = [(PLBatteryUIResponseTypePausedCharging *)self setTerminatedChargingStates];
    }
  }

  v15 = PLLogCommon(externalConnected);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = [(PLBatteryUIResponseTypePausedCharging *)self pausedChargingState];
    _os_log_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEFAULT, "Paused Charging State set to: %d", v16, 8u);
  }
}

- (id)result
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(PLBatteryUIResponseTypePausedCharging *)self setResultDictionary:v3];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBatteryUIResponseTypePausedCharging pausedChargingState](self, "pausedChargingState")}];
  resultDictionary = [(PLBatteryUIResponseTypePausedCharging *)self resultDictionary];
  [resultDictionary setObject:v4 forKeyedSubscript:@"PLBatteryUIPausedChargingStateKey"];

  currentChargeLevel = [(PLBatteryUIResponseTypePausedCharging *)self currentChargeLevel];
  resultDictionary2 = [(PLBatteryUIResponseTypePausedCharging *)self resultDictionary];
  [resultDictionary2 setObject:currentChargeLevel forKeyedSubscript:@"PLBatteryUIPausedChargingCurrentPercentageKey"];

  fixedChargingLimit = [(PLBatteryUIResponseTypePausedCharging *)self fixedChargingLimit];

  if (fixedChargingLimit)
  {
    fixedChargingLimit2 = [(PLBatteryUIResponseTypePausedCharging *)self fixedChargingLimit];
    resultDictionary3 = [(PLBatteryUIResponseTypePausedCharging *)self resultDictionary];
    [resultDictionary3 setObject:fixedChargingLimit2 forKeyedSubscript:@"PLBatteryUIPausedChargingFixedChargeLimitKey"];
  }

  smartChargingDeadline = [(PLBatteryUIResponseTypePausedCharging *)self smartChargingDeadline];

  smartChargingDeadline2 = PLLogCommon(v12);
  v14 = os_log_type_enabled(smartChargingDeadline2, OS_LOG_TYPE_ERROR);
  if (smartChargingDeadline)
  {
    if (v14)
    {
      [(PLBatteryUIResponseTypePausedCharging *)self result];
    }

    smartChargingDeadline2 = [(PLBatteryUIResponseTypePausedCharging *)self smartChargingDeadline];
    resultDictionary4 = [(PLBatteryUIResponseTypePausedCharging *)self resultDictionary];
    [resultDictionary4 setObject:smartChargingDeadline2 forKeyedSubscript:@"PLBatteryUIScheduleOBCKey"];
  }

  else if (v14)
  {
    [PLBatteryUIResponseTypePausedCharging result];
  }

  cleanEnergyChargingDeadline = [(PLBatteryUIResponseTypePausedCharging *)self cleanEnergyChargingDeadline];

  cleanEnergyChargingDeadline2 = PLLogCommon(v17);
  v19 = os_log_type_enabled(cleanEnergyChargingDeadline2, OS_LOG_TYPE_ERROR);
  if (cleanEnergyChargingDeadline)
  {
    if (v19)
    {
      [(PLBatteryUIResponseTypePausedCharging *)self result];
    }

    cleanEnergyChargingDeadline2 = [(PLBatteryUIResponseTypePausedCharging *)self cleanEnergyChargingDeadline];
    resultDictionary5 = [(PLBatteryUIResponseTypePausedCharging *)self resultDictionary];
    [resultDictionary5 setObject:cleanEnergyChargingDeadline2 forKeyedSubscript:@"PLBatteryUIScheduleCECKey"];
  }

  else if (v19)
  {
    [PLBatteryUIResponseTypePausedCharging result];
  }

  resultDictionary6 = [(PLBatteryUIResponseTypePausedCharging *)self resultDictionary];

  return resultDictionary6;
}

- (_PLTimeIntervalRange)range
{
  objc_copyStruct(v4, &self->_range, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)configureState:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)configureState:(void *)a1 .cold.2(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"timestamp"];
  v3 = [a1 objectForKeyedSubscript:@"timestampEnd"];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)configureState:.cold.3()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)configureState:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 lastConnectedEntry];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)configureState:.cold.6()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)configureState:.cold.12()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "Clean Energy Charge Deadline Error: %@", v1, 0xCu);
}

- (void)configureState:(void *)a1 .cold.13(void *a1)
{
  v1 = [a1 cleanEnergyChargingDeadline];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)configureState:.cold.15()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)configureState:(void *)a1 .cold.16(void *a1)
{
  v1 = [a1 smartChargingDeadline];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)configure:(void *)a1 .cold.1(void *a1)
{
  [a1 intervalStateFixedCharging];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)configure:(void *)a1 .cold.2(void *a1)
{
  [a1 intervalStateChargingSpeed];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)configure:(void *)a1 .cold.3(void *a1)
{
  [a1 intervalStateSmartCharging];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)configure:(void *)a1 .cold.4(void *a1)
{
  [a1 intervalStateCEC];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)configure:(void *)a1 .cold.5(void *a1)
{
  [a1 intervalStateTLC];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)result
{
  cleanEnergyChargingDeadline = [self cleanEnergyChargingDeadline];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

@end