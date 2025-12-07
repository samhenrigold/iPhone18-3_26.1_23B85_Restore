@interface MNTraceNetworkConditionHelper
+ (BOOL)disableNLC;
+ (BOOL)enableNLC:(id)c;
+ (BOOL)hasActiveNetworkConditionInducer;
+ (BOOL)isCellDataEnabled;
+ (BOOL)isWiFiEnabled;
+ (BOOL)setCellDataEnabled:(BOOL)enabled;
+ (BOOL)setWiFiEnabled:(BOOL)enabled;
+ (id)activeNLCProfile;
+ (id)availableNLCProfiles;
+ (id)getCurrentState;
+ (id)getNLCProfile:(id)profile;
+ (id)nlcProfiles;
+ (void)setCurrentState:(id)state;
@end

@implementation MNTraceNetworkConditionHelper

+ (id)getNLCProfile:(id)profile
{
  profileCopy = profile;
  nlcProfiles = [self nlcProfiles];
  v6 = [nlcProfiles objectForKeyedSubscript:profileCopy];

  return v6;
}

+ (id)availableNLCProfiles
{
  nlcProfiles = [self nlcProfiles];
  allKeys = [nlcProfiles allKeys];
  v4 = [allKeys sortedArrayUsingSelector:sel_compare_];

  return v4;
}

+ (id)nlcProfiles
{
  v2 = _CFPreferencesCopyValueWithContainer();
  if (![v2 count])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfFile:@"/Developer/Library/PreferenceBundles/Developer Settings.bundle/com.apple.network.prefPaneSimulate.plist"];
    v4 = [v3 objectForKeyedSubscript:@"Profiles"];

    _CFPreferencesSetValueWithContainer();
    v2 = v4;
  }

  return v2;
}

+ (id)activeNLCProfile
{
  v2 = _CFPreferencesCopyValueWithContainer();
  v3 = _CFPreferencesCopyValueWithContainer();
  bOOLValue = [v3 BOOLValue];

  v5 = _CFPreferencesCopyValueWithContainer();
  longValue = [v5 longValue];

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
  v9 = v8;

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v12 = v11 - longValue <= v9;

  if ((v12 & bOOLValue) != 0)
  {
    v13 = v2;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

+ (BOOL)disableNLC
{
  memset(v27, 0, sizeof(v27));
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 21;
  v14 = 0;
  v2 = _nlc_connect(&v14);
  v3 = v2 == 1;
  if (v2 != 1)
  {
    v10 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *v13 = 0;
    v7 = "_nlc_connect failed";
    v8 = v10;
    v9 = OS_LOG_TYPE_ERROR;
    goto LABEL_16;
  }

  v4 = _nlc_stop_simulation(&v14, &v15);
  if (v4 != 1)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "_nlc_stop_simulation failed", v13, 2u);
    }
  }

  if (_nlc_disconnect(&v14) != 1)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "_nlc_disconnect failed", v13, 2u);
    }
  }

  if (v4 != 1)
  {
    return 0;
  }

  _CFPreferencesSetValueWithContainer();
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    v7 = "Network Link Conditioner disabled";
    v8 = v10;
    v9 = OS_LOG_TYPE_INFO;
LABEL_16:
    _os_log_impl(&dword_1D311E000, v8, v9, v7, v13, 2u);
  }

LABEL_17:

  return v3;
}

+ (BOOL)enableNLC:(id)c
{
  v66 = *MEMORY[0x1E69E9840];
  cCopy = c;
  if (([self hasActiveNetworkConditionInducer] & 1) == 0)
  {
    v6 = [self getNLCProfile:cCopy];
    v7 = v6;
    if (!v6)
    {
      v5 = 0;
LABEL_44:

      goto LABEL_45;
    }

    memset(v57, 0, sizeof(v57));
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 21;
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    memset(v62, 0, sizeof(v62));
    v60 = 0u;
    v61 = 0u;
    v8 = [v6 objectForKeyedSubscript:@"DownlinkBandwidth"];
    unsignedIntValue = [v8 unsignedIntValue];

    v10 = [v7 objectForKeyedSubscript:@"DownlinkBandwidthUnit"];
    bOOLValue = [v10 BOOLValue];

    v12 = [v7 objectForKeyedSubscript:@"DownlinkPacketLossRatio"];
    [v12 floatValue];
    v14 = v13 * 0.01;

    v15 = [v7 objectForKeyedSubscript:@"DownlinkDelay"];
    unsignedIntValue2 = [v15 unsignedIntValue];

    if (!unsignedIntValue && (v14 == 0.0 ? (v17 = unsignedIntValue2 == 0) : (v17 = 0), v17))
    {
      v18 = 5;
    }

    else
    {
      LODWORD(v60) = 9;
      *&v63 = __PAIR64__(bOOLValue, unsignedIntValue);
      *(&v63 + 1) = __PAIR64__(unsignedIntValue2, LODWORD(v14));
      v64 = 0uLL;
      v18 = 13;
      v65 = 0;
    }

    v19 = [v7 objectForKeyedSubscript:@"UplinkBandwidth"];
    unsignedIntValue3 = [v19 unsignedIntValue];

    v21 = [v7 objectForKeyedSubscript:@"UplinkBandwidthUnit"];
    bOOLValue2 = [v21 BOOLValue];

    v23 = [v7 objectForKeyedSubscript:@"UplinkPacketLossRatio"];
    [v23 floatValue];
    v25 = v24 * 0.01;

    v26 = [v7 objectForKeyedSubscript:@"UplinkDelay"];
    unsignedIntValue4 = [v26 unsignedIntValue];

    if (unsignedIntValue3 || v25 != 0.0 || unsignedIntValue4)
    {
      LODWORD(v60) = v18;
      HIDWORD(v61) = unsignedIntValue3;
      *&v62[0] = __PAIR64__(LODWORD(v25), bOOLValue2);
      memset(v62 + 12, 0, 20);
      DWORD2(v62[0]) = unsignedIntValue4;
    }

    v28 = [v7 objectForKeyedSubscript:@"RunOnInterface"];
    if ([v28 length])
    {
      [v28 cStringUsingEncoding:1];
      __strlcpy_chk();
      LODWORD(v60) = v60 | 1;
    }

    v29 = [v7 objectForKeyedSubscript:@"ProtocolFamily"];
    DWORD1(v60) = [v29 unsignedIntValue];

    if (DWORD1(v60))
    {
      LODWORD(v60) = v60 | 1;
    }

    v30 = [v7 objectForKeyedSubscript:@"ExcludeLoopback"];
    DWORD2(v60) = [v30 unsignedIntValue];

    if (v60)
    {
      *&v57[56] = v62[1];
      *&v57[72] = v63;
      *&v57[88] = v64;
      *&v57[104] = v65;
      *&v57[8] = v60;
      *&v57[24] = v61;
      *&v57[40] = v62[0];
    }

    v31 = [v7 objectForKeyedSubscript:@"DNSDelayValue"];
    unsignedIntValue5 = [v31 unsignedIntValue];

    if (unsignedIntValue5)
    {
      v33 = [v7 objectForKeyedSubscript:@"ExcludeLoopback"];
      unsignedIntValue6 = [v33 unsignedIntValue];

      *(&v51 + 4) = 6;
      HIDWORD(v51) = unsignedIntValue6;
      v52 = 0uLL;
      *&v53 = 0;
      DWORD2(v53) = 0;
      HIDWORD(v53) = unsignedIntValue5;
      *&v54 = 0;
      *(&v54 + 1) = 0x3500000011;
      v55 = 0u;
      v56 = 0u;
      *v57 = 0;
    }

    v49 = 0;
    v35 = _nlc_connect(&v49);
    v5 = v35 == 1;
    if (v35 == 1)
    {
      started = _nlc_start_simulation(&v49, &v50);
      if (started != 1)
      {
        v37 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1D311E000, v37, OS_LOG_TYPE_ERROR, "_nlc_start_simulation failed", buf, 2u);
        }
      }

      if (_nlc_disconnect(&v49) != 1)
      {
        v38 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1D311E000, v38, OS_LOG_TYPE_ERROR, "_nlc_disconnect failed", buf, 2u);
        }
      }

      if (started != 1)
      {
        v5 = 0;
        goto LABEL_43;
      }

      _CFPreferencesSetValueWithContainer();
      _CFPreferencesSetValueWithContainer();
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v41 = v40;

      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v41];
      _CFPreferencesSetValueWithContainer();
      CFPreferencesAppSynchronize(@"com.apple.network.prefPaneSimulate");
      v46 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
LABEL_41:

LABEL_43:
        goto LABEL_44;
      }

      *buf = 138412290;
      v59 = cCopy;
      v42 = "Network Link Conditioner set to %@";
      v43 = v46;
      v44 = OS_LOG_TYPE_INFO;
      v45 = 12;
    }

    else
    {
      v46 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      *buf = 0;
      v42 = "_nlc_connect failed";
      v43 = v46;
      v44 = OS_LOG_TYPE_ERROR;
      v45 = 2;
    }

    _os_log_impl(&dword_1D311E000, v43, v44, v42, buf, v45);
    goto LABEL_41;
  }

  v5 = 0;
LABEL_45:

  return v5;
}

+ (BOOL)hasActiveNetworkConditionInducer
{
  v21 = *MEMORY[0x1E69E9840];
  ConditionInducerLibrary();
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v2 = getCOConditionSessionClass_softClass;
  v19 = getCOConditionSessionClass_softClass;
  if (!getCOConditionSessionClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getCOConditionSessionClass_block_invoke;
    v15[3] = &unk_1E842FE88;
    v15[4] = &v16;
    __getCOConditionSessionClass_block_invoke(v15);
    v2 = v17[3];
  }

  v3 = v2;
  _Block_object_dispose(&v16, 8);
  getActiveConditions = [v3 getActiveConditions];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allKeys = [getActiveConditions allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v11 objects:v20 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        if ([*(*(&v11 + 1) + 8 * i) containsString:@"SlowNetwork"])
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v11 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

+ (BOOL)isCellDataEnabled
{
  v8 = *MEMORY[0x1E69E9840];
  ctConnection();
  IsEnabled = _CTServerConnectionGetCellularDataIsEnabled();
  v3 = errorFromCTError(IsEnabled);
  if (v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "Couldn't get cell data state: %@", buf, 0xCu);
    }
  }

  return 0;
}

+ (BOOL)setCellDataEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v15 = *MEMORY[0x1E69E9840];
  ctConnection();
  IsEnabled = _CTServerConnectionSetCellularDataIsEnabled();
  v5 = errorFromCTError(IsEnabled);
  v6 = GEOFindOrCreateLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v5;
      v8 = "Couldn't set cell data state: %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_1D311E000, v9, v10, v8, &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = "dis";
    if (enabledCopy)
    {
      v11 = "en";
    }

    v13 = 136315138;
    v14 = v11;
    v8 = "Cell Data %sabled";
    v9 = v7;
    v10 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }

  return v5 == 0;
}

+ (BOOL)isWiFiEnabled
{
  CoreWiFiLibrary();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getCWFInterfaceClass_softClass;
  v11 = getCWFInterfaceClass_softClass;
  if (!getCWFInterfaceClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getCWFInterfaceClass_block_invoke;
    v7[3] = &unk_1E842FE88;
    v7[4] = &v8;
    __getCWFInterfaceClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = objc_alloc_init(v3);
  [v4 activate];
  powerOn = [v4 powerOn];
  [v4 invalidate];

  return powerOn;
}

+ (BOOL)setWiFiEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v25 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (!ATKLoggerLibraryCore_frameworkLibrary)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v19 = __ATKLoggerLibraryCore_block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0l;
    v21 = &v17;
    v22 = xmmword_1E842FEF8;
    v23 = 0;
    ATKLoggerLibraryCore_frameworkLibrary = _sl_dlopen();
    v4 = v17;
    if (ATKLoggerLibraryCore_frameworkLibrary)
    {
      if (!v17)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = abort_report_np("%s", v17);
      __break(1u);
    }

    free(v4);
  }

LABEL_4:
  CoreAutomationDeviceLibrary();
  *&v22 = 0;
  *(&v22 + 1) = &v22;
  v23 = 0x2050000000;
  v5 = getCAMDEmbeddedDeviceServiceClass_softClass;
  v24 = getCAMDEmbeddedDeviceServiceClass_softClass;
  if (!getCAMDEmbeddedDeviceServiceClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v19 = __getCAMDEmbeddedDeviceServiceClass_block_invoke;
    v20 = &unk_1E842FE88;
    v21 = &v22;
    __getCAMDEmbeddedDeviceServiceClass_block_invoke(&buf);
    v5 = *(*(&v22 + 1) + 24);
  }

  v6 = v5;
  _Block_object_dispose(&v22, 8);
  initAsMobile = [[v6 alloc] initAsMobile];
  [initAsMobile setDirectInvocations:0];
  [initAsMobile start];
  wiFi = [initAsMobile WiFi];
  v9 = wiFi;
  if (enabledCopy)
  {
    [wiFi on];
  }

  else
  {
    [wiFi off];
  }
  v10 = ;

  error = [v10 error];

  v12 = GEOFindOrCreateLog();
  v13 = v12;
  if (error)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      error2 = [v10 error];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = error2;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_ERROR, "Unable to change WiFi state: %@", &buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15 = "OFF";
    if (enabledCopy)
    {
      v15 = "ON";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v15;
    _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_INFO, "WiFi power set to %s", &buf, 0xCu);
  }

  return error == 0;
}

+ (void)setCurrentState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    global_queue = geo_get_global_queue();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__MNTraceNetworkConditionHelper_setCurrentState___block_invoke;
    v6[3] = &unk_1E8430A10;
    selfCopy = self;
    v7 = stateCopy;
    dispatch_async(global_queue, v6);
  }
}

void __49__MNTraceNetworkConditionHelper_setCurrentState___block_invoke(uint64_t a1)
{
  [*(a1 + 40) setWiFiEnabled:{objc_msgSend(*(a1 + 32), "wifiEnabled")}];
  [*(a1 + 40) setCellDataEnabled:{objc_msgSend(*(a1 + 32), "cellEnabled")}];
  if ([*(a1 + 32) nlcEnabled] && (objc_msgSend(*(a1 + 32), "nlcProfile"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "length"), v2, v3))
  {
    v4 = *(a1 + 40);
    v6 = [*(a1 + 32) nlcProfile];
    [v4 enableNLC:v6];
  }

  else
  {
    v5 = *(a1 + 40);

    [v5 disableNLC];
  }
}

+ (id)getCurrentState
{
  v3 = objc_alloc_init(MNTraceNetworkEvent);
  -[MNTraceNetworkEvent setWifiEnabled:](v3, "setWifiEnabled:", [self isWiFiEnabled]);
  -[MNTraceNetworkEvent setCellEnabled:](v3, "setCellEnabled:", [self isCellDataEnabled]);
  activeNLCProfile = [self activeNLCProfile];
  [(MNTraceNetworkEvent *)v3 setNlcProfile:activeNLCProfile];

  nlcProfile = [(MNTraceNetworkEvent *)v3 nlcProfile];
  -[MNTraceNetworkEvent setNlcEnabled:](v3, "setNlcEnabled:", [nlcProfile length] != 0);

  return v3;
}

@end