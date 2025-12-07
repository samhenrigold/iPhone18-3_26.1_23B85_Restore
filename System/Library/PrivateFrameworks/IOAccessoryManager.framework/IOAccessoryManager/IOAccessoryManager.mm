void __powerBatteryInterest(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -536723200)
  {
    __powerUpdateBatteryState(a2);
  }
}

void __powerUpdateBatteryState(io_registry_entry_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  properties = 0;
  if (!IORegistryEntryCreateCFProperties(a1, &properties, 0, 0))
  {
    v1 = byte_2812C44D4;
    v2 = [-[__CFDictionary objectForKey:](properties objectForKey:{@"ExternalConnected", "BOOLValue"}];
    byte_2812C44D4 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = [gUserLdcmParams enableHalogenMitigationsAndUI];
      *buf = 67109632;
      v22 = v1;
      v23 = 1024;
      *v24 = v2;
      *&v24[4] = 2048;
      *&v24[6] = v3;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "handle battery state update: isExtChg=%u->%u, enableHalogenMitigationsAndUI %llu", buf, 0x18u);
    }

    if ([gUserLdcmParams enableHalogenMitigationsAndUI] == 1 && byte_2812C44D4 != v1 && byte_2812C44D4 != 0)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = [gHalogenMeasurements allKeys];
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v25 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        v9 = MEMORY[0x277D86220];
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            v12 = [gHalogenMeasurements objectForKey:v11];
            v13 = v12;
            if (v12 && [v12 attachDelayTimerRunning])
            {
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109634;
                v22 = byte_2812C44D4;
                v23 = 2112;
                *v24 = v11;
                *&v24[8] = 2112;
                *&v24[10] = v13;
                _os_log_impl(&dword_2548F1000, v9, OS_LOG_TYPE_DEFAULT, "handle battery state update: isExtChg=%u, stop (delay) timer and perform measurement, key %@, halogenWrapper %@", buf, 0x1Cu);
              }

              dispatch_source_set_timer([v13 timer], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
              [v13 setAttachDelayTimerRunning:0];
              v14 = [v13 halogenMeasurementDispatchQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = ____powerUpdateBatteryState_block_invoke;
              block[3] = &unk_279793038;
              block[4] = v13;
              dispatch_async(v14, block);
            }

            else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109634;
              v22 = byte_2812C44D4;
              v23 = 2112;
              *v24 = v11;
              *&v24[8] = 2112;
              *&v24[10] = v13;
              _os_log_impl(&dword_2548F1000, v9, OS_LOG_TYPE_DEFAULT, "handle battery state update: isExtChg=%u, (delay) timer not running, don't perform measurement, key %@, halogenWrapper %@", buf, 0x1Cu);
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v16 objects:v25 count:16];
        }

        while (v7);
      }
    }

    CFRelease(properties);
  }
}

void IOPortLDCMPortInterestCallback(void *a1, io_registry_entry_t entry, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3 == -469794615)
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, @"ConnectionActive", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v5 = a1;
      if (v5)
      {
        v6 = [CFProperty BOOLValue];
        v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          if (v7)
          {
            v8 = 136315138;
            v9 = "IOPortLDCMPortInterestCallback";
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s kIOPort_Message_ConnectionStateChange attach\n", &v8, 0xCu);
          }

          [v5 handleAttachEvent];
        }

        else
        {
          if (v7)
          {
            v8 = 136315138;
            v9 = "IOPortLDCMPortInterestCallback";
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s kIOPort_Message_ConnectionStateChange detach \n", &v8, 0xCu);
          }

          [v5 handleDetachEvent];
        }
      }
    }
  }
}

void systemPowerCallback(void *a1, uint64_t a2, uint64_t a3, intptr_t a4)
{
  if (a3 > -536870145)
  {
    if (a3 == -536870144)
    {
      v10 = dispatch_walltime(0, 100000000);
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __systemPowerCallback_block_invoke;
      block[3] = &unk_279793038;
      block[4] = a1;
      dispatch_after(v10, global_queue, block);
      return;
    }

    if (a3 != -536870112)
    {
      return;
    }

    [objc_msgSend(a1 powerStateCond];
    v6 = a1;
    v7 = 1;
    goto LABEL_8;
  }

  if (a3 != -536870288)
  {
    if (a3 != -536870272)
    {
      return;
    }

    IOAllowPowerChange([a1 systemPowerPort], a4);
    [objc_msgSend(a1 "powerStateCond")];
    v6 = a1;
    v7 = 0;
LABEL_8:
    [v6 setPowerState:v7];
    [objc_msgSend(a1 "powerStateCond")];
    v8 = [a1 powerStateCond];

    [v8 unlock];
    return;
  }

  v9 = [a1 systemPowerPort];

  IOAllowPowerChange(v9, a4);
}

uint64_t __systemPowerCallback_block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "powerStateCond")];
  [*(a1 + 32) setPowerState:2];
  [objc_msgSend(*(a1 + 32) "powerStateCond")];
  v2 = [*(a1 + 32) powerStateCond];

  return [v2 unlock];
}

uint64_t recordCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [a1 halogenUnitDelegate];

  return [v11 recordCallBackFunc:a2 AudioTimeStamp:a3 busNum:a4 numFrames:a5 AudioBufferList:a6];
}

uint64_t playbackCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [a1 halogenUnitDelegate];

  return [v11 playbackCallBackFunc:a2 AudioTimeStamp:a3 busNum:a4 numFrames:a5 AudioBufferList:a6];
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, va, 8u);
}

void IOAccessoryNotifyWetCallback(uint64_t a1, uint64_t a2)
{
  v2 = gLdcmNotificationContext;
  if (gLdcmNotificationContext)
  {
    if (*gLdcmNotificationContext == 1)
    {
      *gLdcmNotificationContext = 0;
      IOAccessoryNotifyWetHandler(v2, a2);
    }
  }
}

void IOAccessoryNotifyWetHandlerDismiss()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v0 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM UI Dismiss!!!\n", v0, 2u);
  }
}

uint64_t IOAccessoryNotifyWetHandlerEmergencyOverride(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM UI Emergency Override!!!\n", v3, 2u);
  }

  return [*(a1 + 48) setOverride:1];
}

void IOAccessoryNotifyWetCancel()
{
  v0 = gLdcmNotificationContext;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM UI Cancel!!!\n", v4, 2u);
  }

  if (v0)
  {
    if (*v0 == 1)
    {
      v1 = [MEMORY[0x277CBEB38] dictionary];
      v2 = [MEMORY[0x277CCABB0] numberWithLong:llround(CFAbsoluteTimeGetCurrent() - *(v0 + 8))];
      [v1 setObject:v2 forKey:@"notificationDuration"];

      v3 = [MEMORY[0x277CCABB0] numberWithInt:3];
      [v1 setObject:v3 forKey:@"notificationUserAction"];

      AnalyticsSendEvent();
      CFUserNotificationCancel(*(v0 + 24));
      *v0 = 0;
      CFRunLoopRemoveSource(*(v0 + 40), *(v0 + 32), *MEMORY[0x277CBF048]);
      CFRelease(*(v0 + 32));
      CFRelease(*(v0 + 24));
    }
  }
}

void __IOAccessoryFileRadarLDCMV4_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "IOAccessoryFileRadarLDCMV4_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Error while filing radar. %@\n", &v6, 0x16u);
  }
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

uint64_t OUTLINED_FUNCTION_3()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

void IOPortLDCMFeatureInterestCallback(void *a1, io_registry_entry_t a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case -469794613:
      v10 = a1;
      CFProperty = IORegistryEntryCreateCFProperty(a2, @"MitigationsStatus", *MEMORY[0x277CBECE8], 0);
      v12 = CFProperty;
      if (v10 && CFProperty)
      {
        v13 = [CFProperty intValue];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 136315394;
          *&v14[4] = "IOPortLDCMFeatureInterestCallback";
          *&v14[12] = 1024;
          *&v14[14] = v13;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s kIOPortFeatureLDCMMessageTypeMitigationsStatusChange: %d\n", v14, 0x12u);
        }

        [v10 handleLDCMMitigationsStatusChange:v13];
      }

      break;
    case -469794614:
      v8 = a1;
      if (v8)
      {
        v5 = v8;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 136315138;
          *&v14[4] = "IOPortLDCMFeatureInterestCallback";
          v6 = MEMORY[0x277D86220];
          v7 = "%s kIOPortFeatureLDCMMessageTypeMeasurementStatusChange\n";
          goto LABEL_10;
        }

LABEL_11:
        [v5 handleLDCMInterrupt];
      }

      break;
    case -469794616:
      v4 = a1;
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 136315138;
          *&v14[4] = "IOPortLDCMFeatureInterestCallback";
          v6 = MEMORY[0x277D86220];
          v7 = "%s kIOPortFeatureLDCMMessageTypeLiquidDetectedChange\n";
LABEL_10:
          _os_log_impl(&dword_2548F1000, v6, OS_LOG_TYPE_DEFAULT, v7, v14, 0xCu);
          goto LABEL_11;
        }

        goto LABEL_11;
      }

      break;
    default:
      return;
  }
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, va, 0xCu);
}

uint64_t isDeviceTypeC_V3()
{
  *existing = 0;
  v0 = *MEMORY[0x277CD2898];
  v1 = IOServiceMatching("IOPort");
  if (IOServiceGetMatchingServices(v0, v1, &existing[1]))
  {
    v2 = 1;
  }

  else
  {
    v2 = existing[1] == 0;
  }

  if (v2)
  {
    v3 = 0;
LABEL_12:
    v7 = 0;
    v8 = 0;
    goto LABEL_13;
  }

  v4 = IOIteratorNext(existing[1]);
  v3 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *MEMORY[0x277CBECE8];
  while (1)
  {
    valuePtr = 0;
    CFProperty = IORegistryEntryCreateCFProperty(v3, @"PortType", v5, 0);
    v7 = CFProperty;
    if (CFProperty)
    {
      CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
      if (valuePtr == 2)
      {
        break;
      }
    }

    IOObjectRelease(v3);
    CFRelease(v7);
    v3 = IOIteratorNext(existing[1]);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  v8 = 1;
LABEL_13:
  v9 = IOServiceMatching("IOPortFeatureLDCM");
  if (IOServiceGetMatchingServices(v0, v9, existing))
  {
    v10 = 1;
  }

  else
  {
    v10 = existing[0] == 0;
  }

  if (v10)
  {
    v11 = 0;
    v12 = 0;
LABEL_19:
    v13 = 1;
    if (!v3)
    {
      goto LABEL_21;
    }

LABEL_20:
    IOObjectRelease(v3);
    goto LABEL_21;
  }

  v15 = IOIteratorNext(existing[0]);
  v11 = v15;
  if (v15)
  {
    v16 = *MEMORY[0x277CBECE8];
    do
    {
      valuePtr = -1431655766;
      v17 = IORegistryEntryCreateCFProperty(v11, @"ArchitectureVersion", v16, 0);
      if (v17)
      {
        v12 = v17;
        CFNumberGetValue(v17, kCFNumberIntType, &valuePtr);
        if (valuePtr == 3)
        {
          goto LABEL_19;
        }

        IOObjectRelease(v11);
        CFRelease(v12);
      }

      v11 = IOIteratorNext(existing[0]);
    }

    while (v11);
  }

  v12 = 0;
  v13 = 0;
  if (v3)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (existing[1])
  {
    IOObjectRelease(existing[1]);
  }

  if (v11)
  {
    IOObjectRelease(v11);
  }

  if (existing[0])
  {
    IOObjectRelease(existing[0]);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v8 & v13;
}

void IOAccessoryServiceMatchingCallbackTypeC(IONotificationPort *a1, io_iterator_t a2)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "LDCM", 0x8000100u);
  v6 = IOIteratorNext(a2);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      notification = -1431655766;
      CFProperty = IORegistryEntryCreateCFProperty(v7, @"FeaturesSupported", v4, 0);
      if (CFProperty)
      {
        v10 = CFProperty;
        if (CFArrayGetCount(CFProperty) >= 1)
        {
          v15.length = CFArrayGetCount(v10);
          v15.location = 0;
          if (CFArrayContainsValue(v10, v15, v5))
          {
            v11 = [[IOAccessoryLDCMPortManagerTypeC alloc] initWithParams:60 dryPollingIntervalNs:30];
            v8 = v11;
            if (v11 && [(IOAccessoryLDCMPortManagerTypeC *)v11 typeC])
            {
              v12 = [(IOAccessoryLDCMPortManagerTypeC *)v8 halogenTypeCDispatchQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __IOAccessoryServiceMatchingCallbackTypeC_block_invoke;
              block[3] = &unk_279793038;
              block[4] = v8;
              dispatch_async(v12, block);
            }

            if (IOServiceAddInterestNotification(a1, v7, "IOGeneralInterest", IOAccessoryInterestNotificationCallbackTypeC, v8, &notification))
            {
              IOObjectRelease(v7);
              if (!v5)
              {
                goto LABEL_17;
              }

LABEL_16:
              CFRelease(v5);
              goto LABEL_17;
            }
          }
        }

        IOObjectRelease(v7);
        CFRelease(v10);
      }

      else
      {
        IOObjectRelease(v7);
      }

      v7 = IOIteratorNext(a2);
      if (!v7)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = 0;
LABEL_15:
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v8)
  {
  }
}

void IOAccessoryServiceMatchingCallback(IONotificationPort *a1, io_iterator_t iterator)
{
  v69 = *MEMORY[0x277D85DE8];
  v54 = 0;
  v2 = IOIteratorNext(iterator);
  v3 = 0;
  if (!v2)
  {
LABEL_67:
    v44 = 1;
    goto LABEL_68;
  }

  allocator = *MEMORY[0x277CBECE8];
  identifier = *MEMORY[0x277CBEE80];
  v4 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
  v5 = MEMORY[0x277D86220];
  while (1)
  {
    notification = -1431655766;
    Type = IOAccessoryManagerGetType();
    v7 = (Type & 0x600) != 0 && (Type & 0xF0) == 0;
    if ((IOAccessoryManagerGetType() & 0xF0) != 0 || (CFProperty = IORegistryEntryCreateCFProperty(v2, @"SupportsEisAfe", allocator, 0)) == 0)
    {
      PrimaryPort = IOAccessoryManagerGetPrimaryPort();
      v12 = 0;
      if (!v7)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v9 = CFProperty;
      Value = CFBooleanGetValue(CFProperty);
      CFRelease(v9);
      PrimaryPort = IOAccessoryManagerGetPrimaryPort();
      if (Value)
      {
        if ([v4[22].cache enableHalogenMitigationsAndUI] == 1)
        {
          [v4[22].cache setUserBehaviorMask:47];
        }

        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (!v7)
        {
          goto LABEL_47;
        }
      }
    }

    v49 = v7;
    v13 = v3;
    v14 = v5;
    v15 = v4;
    [gIOAMLogLock lock];
    if (gIOAMLogFilepath)
    {

      gIOAMLogFilepath = 0;
    }

    gIOAMLogFilepath = [MEMORY[0x277CCAB68] stringWithString:@"/private/var/mobile/Library/Logs/com.apple.ioam/ioam_logs/"];
    v16 = gIOAMLogFilepath;
    v59 = 0;
    *connect = 0;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v17 = CFTimeZoneCopySystem();
    if (v17)
    {
      break;
    }

LABEL_26:
    [gIOAMLogLock unlock];
    connect[0] = 0;
    if (IOServiceOpen(v2, *MEMORY[0x277D85F48], 0, connect))
    {
      v27 = 0;
    }

    else
    {
      v27 = IOAccessoryManagerGetLdcmParams() == 0;
    }

    v4 = v15;
    v5 = v14;
    if (connect[0])
    {
      IOServiceClose(connect[0]);
    }

    v3 = v13;
    if (!v27)
    {
      goto LABEL_76;
    }

    if ((Type & 0x200) != 0)
    {
      [v4[22].cache setUserBehaviorMask:{objc_msgSend(v4[22].cache, "userBehaviorMask") & 0xFFFFFFFBLL}];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      connect[0] = 136315138;
      *&connect[1] = "retrievePersistentConfigDictParams";
      _os_log_impl(&dword_2548F1000, v5, OS_LOG_TYPE_DEFAULT, "%s", connect, 0xCu);
    }

    v28 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if (v28)
    {
      v29 = [v28 objectForKey:@"configDictionary"];
      if (v29)
      {
        if (v49)
        {
          processLdcmBehaviorPlist(v29, Type);
        }
      }

      else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        connect[0] = 136315138;
        *&connect[1] = "retrievePersistentConfigDictParams";
        _os_log_impl(&dword_2548F1000, v5, OS_LOG_TYPE_DEFAULT, "%s: no persistent dictionary", connect, 0xCu);
      }
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __IOAccessoryServiceMatchingCallback_block_invoke;
    block[3] = &__block_descriptor_36_e5_v8__0l;
    v52 = Type;
    dispatch_async(global_queue, block);
    if (IOServiceOpen(v2, *MEMORY[0x277D85F48], 0, &v54))
    {
      goto LABEL_76;
    }

    if (IOAccessoryManagerSetVoltageDetected())
    {
      goto LABEL_76;
    }

    setDriverMitigationEnabled(PrimaryPort, v2, ([v4[22].cache userBehaviorMask] >> 3) & 1);
    v31 = IOServiceClose(v54);
    v54 = 0;
    if (v31)
    {
      goto LABEL_76;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(connect[0]) = 0;
      _os_log_impl(&dword_2548F1000, v5, OS_LOG_TYPE_DEFAULT, ">>> showing initial accy health dictionary", connect, 2u);
    }

    dbgShowAccyHealthDictionary();
LABEL_47:
    v32 = malloc_type_calloc(1uLL, 0x88uLL, 0x10800406FDFDDCEuLL);
    if (!v32)
    {
      goto LABEL_76;
    }

    v33 = v32;
    *v32 = 2;
    *(v32 + 13) = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33[32] = 5000;
    *connect = *v33;
    v34 = *(v33 + 1);
    v35 = *(v33 + 2);
    v36 = *(v33 + 4);
    v63 = *(v33 + 3);
    v64 = v36;
    v61 = v34;
    v62 = v35;
    v37 = *(v33 + 5);
    v38 = *(v33 + 6);
    v39 = *(v33 + 7);
    v68 = *(v33 + 16);
    v66 = v38;
    v67 = v39;
    v65 = v37;
    v40 = [MEMORY[0x277CCAE60] valueWithDockState:connect];
    free(v33);
    [gDockState setObject:v40 forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", PrimaryPort)}];
    if (v12)
    {
      v41 = objc_alloc_init(HalogenWrapper);
      if (v41)
      {
        v3 = v41;
        [gHalogenMeasurements setObject:v41 forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", PrimaryPort)}];
        v42 = -[HalogenMeasurement initWithSize:onPort:]([HalogenMeasurement alloc], "initWithSize:onPort:", [v4[22].cache numEisHalogenSamples], PrimaryPort);
        if (v42)
        {
          [(HalogenWrapper *)v3 setHalogenMeasurement:v42];
          [(HalogenWrapper *)v3 setService:v2];
          [(HalogenWrapper *)v3 setPortID:PrimaryPort];
        }

        else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          connect[0] = 136315138;
          *&connect[1] = "IOAccessoryServiceMatchingCallback";
          _os_log_impl(&dword_2548F1000, v5, OS_LOG_TYPE_DEFAULT, "%s failed to allocate HalogenMeasurement\n", connect, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          connect[0] = 136315138;
          *&connect[1] = "IOAccessoryServiceMatchingCallback";
          _os_log_impl(&dword_2548F1000, v5, OS_LOG_TYPE_DEFAULT, "%s Failed to create halogenWrapper\n", connect, 0xCu);
        }

        v3 = 0;
      }
    }

    if (IOServiceAddInterestNotification(a1, v2, "IOGeneralInterest", IOAccessoryInterestNotificationCallback, 0, &notification))
    {
      goto LABEL_76;
    }

    if (IOAccessoryManagerGetAccessoryID() == 91)
    {
      IOAccessoryHandleAttach(v2);
    }

    else if (v3 && ([v4[22].cache userBehaviorMask] & 0x10) != 0)
    {
      [(HalogenWrapper *)v3 setIsMeasurementEnabled:1];
      v43 = [(HalogenWrapper *)v3 halogenMeasurementDispatchQueue];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __IOAccessoryServiceMatchingCallback_block_invoke_535;
      v50[3] = &unk_279793038;
      v50[4] = v3;
      dispatch_async(v43, v50);
    }

    IOObjectRelease(v2);
    v2 = IOIteratorNext(iterator);
    if (!v2)
    {
      goto LABEL_67;
    }
  }

  v18 = v17;
  v19 = CFCalendarCreateWithIdentifier(0, identifier);
  if (!v19)
  {
    CFRelease(v18);
    goto LABEL_26;
  }

  v20 = v19;
  CFCalendarSetTimeZone(v19, v18);
  Current = CFAbsoluteTimeGetCurrent();
  CFCalendarDecomposeAbsoluteTime(v20, Current, "MdyHms", connect, &v59, &v58, &v57, &v56, &v55);
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02d%02d%02d-%02d%02d", *connect, v59, v58 % 0x64, v57, v56];
  CFRelease(v18);
  CFRelease(v20);
  if (!v22)
  {
    goto LABEL_26;
  }

  [gIOAMLogFilepath appendString:v22];
  [gIOAMLogFilepath appendString:@".log"];
  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) != 0 || objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", @"/private/var/mobile/Library/Logs/com.apple.ioam/ioam_logs/", 1, 0, 0))
  {
    v23 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v23 fileExistsAtPath:gIOAMLogFilepath] & 1) != 0 || (v24 = objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), objc_msgSend(v24, "createFileAtPath:contents:attributes:", gIOAMLogFilepath, 0, 0)))
    {
      v25 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      if ([v25 count] < 4)
      {
        goto LABEL_26;
      }

      v26 = [@"/private/var/mobile/Library/Logs/com.apple.ioam/ioam_logs/" stringByAppendingPathComponent:{objc_msgSend(objc_msgSend(v25, "sortedArrayUsingComparator:", &__block_literal_global_0), "firstObject")}];
      if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
      {
        goto LABEL_26;
      }
    }
  }

  IOAccessoryServiceMatchingCallback_cold_1();
  v3 = v13;
LABEL_76:
  v44 = 0;
LABEL_68:
  if (v54)
  {
    IOServiceClose(v54);
  }

  if ((v44 & 1) == 0)
  {
    IOObjectRelease(v2);
  }

  if (v3)
  {
  }
}

uint64_t IOAccessoryVoltageEventMonitorMode(uint64_t result, char a2, char a3)
{
  enableVoltageEventMonitorModeAggD = result;
  enableVoltageEventMonitorModeAppleCareLogging = a2;
  enableVoltageEventMonitorModeConsole = a3;
  return result;
}

unint64_t absoluteToNanoseconds(uint64_t a1)
{
  v2 = dword_2812C4324;
  if (!dword_2812C4324)
  {
    mach_timebase_info(&dword_2812C4320);
    v2 = dword_2812C4324;
  }

  return dword_2812C4320 * a1 / v2;
}

void IOAccessoryInterestNotificationCallbackTypeC(void *a1, io_registry_entry_t entry, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3 == -469794615)
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, @"ConnectionActive", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      if (a1)
      {
        Value = CFBooleanGetValue(CFProperty);
        v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (Value)
        {
          if (v7)
          {
            v8 = 136315138;
            v9 = "IOAccessoryInterestNotificationCallbackTypeC";
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s kIOPort_Message_ConnectionStateChange attach\n", &v8, 0xCu);
          }

          [a1 handleAttachEvent];
        }

        else
        {
          if (v7)
          {
            v8 = 136315138;
            v9 = "IOAccessoryInterestNotificationCallbackTypeC";
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s kIOPort_Message_ConnectionStateChange detach \n", &v8, 0xCu);
          }

          [a1 handleDetachEvent];
        }
      }

      CFRelease(v5);
    }
  }
}

void __IOAccessoryServiceMatchingCallback_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "IOAccessoryServiceMatchingCallback_block_invoke";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s starting remote asset query\n", &v2, 0xCu);
  }

  performAssetQuery(0, *(a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "IOAccessoryServiceMatchingCallback_block_invoke";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished remote asset query\n", &v2, 0xCu);
  }
}

void performAssetQuery(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v35 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "performAssetQuery";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
  }

  v27 = 0;
  v4 = [objc_alloc(MEMORY[0x277D289A8]) initWithAssetType:@"com.apple.MobileAsset.IOAccessoryManager"];
  [v4 setQueriesLocalAssetInformationOnly:a1];
  v5 = [v4 runQueryAndReturnError:&v27];
  v6 = v27;
  if (v27)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_msgSend(v6 "localizedDescription")];
      *buf = 136315394;
      v30 = "performAssetQuery";
      v31 = 2080;
      v32 = v7;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: encountered error: %s\n", buf, 0x16u);
    }

    return;
  }

  v8 = v5;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_msgSend(v8 "description")];
    *buf = 136315394;
    v30 = "performAssetQuery";
    v31 = 2080;
    v32 = v9;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: MobileAsset query results: %s\n", buf, 0x16u);
  }

  v10 = [v8 lastObject];
  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "getAsset";
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
    }

    if ((a1 & 1) == 0 && ([v10 state] != 1 || !objc_msgSend(v10, "localURL")))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = [objc_msgSend(v10 "description")];
        *buf = 136315394;
        v30 = "getAsset";
        v31 = 2080;
        v32 = v11;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Asset not yet downloaded, fetching: %s", buf, 0x16u);
      }

      v28 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v30 = "downloadAssetWithError";
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
      }

      if (([v10 requiredDiskSpaceIsAvailable:0 error:&v28] & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v23 = [objc_msgSend(v10 "description")];
          v24 = [objc_msgSend(v28 "description")];
          *buf = 136315650;
          v30 = "downloadAssetWithError";
          v31 = 2080;
          v32 = v23;
          v33 = 2080;
          v34 = v24;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Skipping download for uninstalled asset. Error in asset %s: %s\n", buf, 0x20u);
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        *buf = 136315138;
        v30 = "getAsset";
        v21 = MEMORY[0x277D86220];
        v22 = "%s: failed\n";
        goto LABEL_42;
      }

      [v10 beginDownloadWithOptions:0];
    }

    if (![v10 localURL])
    {
      goto LABEL_43;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = [objc_msgSend(objc_msgSend(v10 "localURL")];
      *buf = 136315394;
      v30 = "getAsset";
      v31 = 2080;
      v32 = v12;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Asset on disk, found at: %s\n", buf, 0x16u);
    }

    v13 = [objc_msgSend(objc_msgSend(v10 "localURL")];
    v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v14];
    v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        *buf = 136315138;
        v30 = "load_dict";
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dictionaryWithContentsOfURL succeeded\n", buf, 0xCu);
      }

      gLdcmBehaviorPlist = v15;
      v17 = v15;
      v18 = gLdcmBehaviorPlist;
      if (v18)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v30 = "commitPersistentConfigDictParams";
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        }

        v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        if (v19)
        {
          [v19 setObject:gLdcmBehaviorPlist forKey:@"configDictionary"];
        }

        performAssetQuery_cold_1();
        v20 = processLdcmBehaviorPlist(v18, v2);
        goto LABEL_44;
      }
    }

    else if (v16)
    {
      *buf = 136315138;
      v30 = "load_dict";
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dictionaryWithContentsOfURL failed\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_43:
      v20 = 0;
LABEL_44:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (v20)
        {
          v25 = "true";
        }

        else
        {
          v25 = "false";
        }

        *buf = 136315394;
        v30 = "getAsset";
        v31 = 2080;
        v32 = v25;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: success=%s\n", buf, 0x16u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (v20)
        {
          v26 = "true";
        }

        else
        {
          v26 = "false";
        }

        *buf = 136315394;
        v30 = "performAssetQuery";
        v31 = 2080;
        v32 = v26;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: getOrDownloadAsset: %s\n", buf, 0x16u);
      }

      return;
    }

    *buf = 136315138;
    v30 = "getAsset";
    v21 = MEMORY[0x277D86220];
    v22 = "%s: load_dict failed\n";
LABEL_42:
    _os_log_impl(&dword_2548F1000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
    goto LABEL_43;
  }
}

void sub_2548FCFE0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 != 1)
  {
    j___Unwind_Resume(a1);
  }

  objc_begin_catch(a1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "performAssetQuery";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: exception\n", &buf, 0xCu);
  }

  objc_end_catch();
  JUMPOUT(0x2548FC9B4);
}

uint64_t __IOAccessoryCreateIOAMLoggingFile_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v5 = *MEMORY[0x277CCA108];
  v6 = [v4 objectForKey:*MEMORY[0x277CCA108]];
  v7 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];

  return [v6 compare:v7];
}

void *dbgShowAccyHealthDictionary()
{
  v40 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v0 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
  obj = gAccyHealthDictionary;
  result = [gAccyHealthDictionary countByEnumeratingWithState:&v21 objects:v39 count:16];
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = *v22;
    v6 = MEMORY[0x277D86220];
    *&v2 = 67110658;
    v18 = v2;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = [v0[31].cache objectForKey:{v8, v18}];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v8 UTF8String];
          v10 = [v9 lastSeenTimestamp];
          v11 = [v9 isHealthy];
          v12 = [v9 leakagePassedCount];
          v13 = v3;
          v14 = v5;
          v15 = v0;
          v16 = [v9 dryCount];
          v17 = [v9 wetCount];
          *buf = v18;
          v26 = v4;
          v27 = 2082;
          v28 = v20;
          v29 = 2048;
          v30 = v10;
          v6 = MEMORY[0x277D86220];
          v31 = 1024;
          v32 = v11;
          v33 = 2048;
          v34 = v12;
          v35 = 2048;
          v36 = v16;
          v0 = v15;
          v5 = v14;
          v3 = v13;
          v37 = 2048;
          v38 = v17;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[health %d] <%{public}s> : %llu, isHealthy %d, leakagePassedCount %llu, dryCount %llu, wetCount %llu", buf, 0x40u);
        }

        ++v4;
        v7 = v7 + 1;
      }

      while (v3 != v7);
      result = [obj countByEnumeratingWithState:&v21 objects:v39 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

void *appendEventToHistory(void *a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v14 = v4;
  *&v14[16] = v4;
  *&v12[2] = v4;
  v13 = v4;
  if (![a1 count])
  {
    return appendEventToHistory_cold_1(v11, a2, a1);
  }

  [objc_msgSend(a1 "lastObject")];
  if (*(a2 + 12) != v11[12])
  {
    return appendEventToHistory_cold_1(v11, a2, a1);
  }

  v5 = *(a2 + 14) == *v12 && *(a2 + 18) == *&v12[4];
  if (!v5 || *(a2 + 51) != v14[3])
  {
    return appendEventToHistory_cold_1(v11, a2, a1);
  }

  if (*(a2 + 26) != *&v12[12] || *(a2 + 30) != *&v12[16])
  {
    return appendEventToHistory_cold_1(v11, a2, a1);
  }

  if (*(a2 + 20) != *&v12[6] || *(a2 + 24) != *&v12[10])
  {
    return appendEventToHistory_cold_1(v11, a2, a1);
  }

  if (*(a2 + 32) != v13 || *(a2 + 40) != DWORD2(v13))
  {
    return appendEventToHistory_cold_1(v11, a2, a1);
  }

  ++*&v14[21];
  *&v14[13] = *(a2 + 4);
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:80];
  [a1 removeLastObject];
  return [a1 addObject:v9];
}

BOOL isChargingCableAttached(_BYTE *a1)
{
  if (*a1 != 16)
  {
    return 0;
  }

  if ((a1[1] & 3) != 1)
  {
    return (a1[1] & 3) == 0 && !a1[2] && !a1[3] && !a1[4] && !a1[5];
  }

  if ((a1[2] & 8) == 0 || a1[3] || a1[4])
  {
    return 0;
  }

  return a1[5] == 0;
}

uint64_t digitalIdNumPinsFree(unint64_t a1, uint64_t a2)
{
  v2 = (a1 >> 40) & 4;
  v3 = (a1 >> 40) & 3;
  *(a2 + 4) = 257;
  *a2 = 16843009;
  v4 = (a1 >> 40) & 0x18;
  if (((a1 >> 40) & 0x18) != 0)
  {
    *a2 = 0;
    v5 = 2;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v6 = v4 == 0;
  v7 = v4 != 0;
  v5 += 2;
  v8 = (a2 + 3);
  if (v6)
  {
    v8 = (a2 + 1);
  }

  *v8 = 0;
  *(a2 + 2 * v7) = 0;
LABEL_7:
  if (v2)
  {
    v5 += 2;
    v9 = (a2 + 3);
    if ((a1 & 0x1B0000000000) == 0)
    {
      v9 = (a2 + 1);
    }

    *v9 = 0;
    *(a2 + 2 * ((a1 & 0x1B0000000000) != 0)) = 0;
  }

  if ((a1 & 0x8000000) != 0)
  {
    v5 += (BYTE3(a1) & 1) + 1;
    v10 = (a2 + 3);
    if ((a1 & 0x1F0000000000) == 0)
    {
      v10 = (a2 + 1);
    }

    *v10 = !(a1 & 0x1000000);
    v11 = v2 >> 1;
    if ((a1 & 0x1B0000000000) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    *(a2 + v12) = 0;
  }

  if (v5 <= 4)
  {
    return 4 - v5;
  }

  else
  {
    return 0;
  }
}

uint64_t _retrieveDeviceInterfaceSerialNumber(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = 4;
  while (1)
  {
    v3 = IOAccessoryManagerCopyDeviceInfo();
    if (!v3)
    {
      break;
    }

    usleep(0x186A0u);
    if (!--v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315394;
        v6 = "_retrieveDeviceInterfaceSerialNumber";
        v7 = 1024;
        v8 = v3;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s IOAccessoryManagerCopyDeviceInfo returned %x\n", &v5, 0x12u);
      }

      return v3;
    }
  }

  return v3;
}

void __IOAccessoryHandleAttach_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "IOAccessoryHandleAttach_block_invoke";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s starting local asset query\n", &v2, 0xCu);
  }

  performAssetQuery(1, *(a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "IOAccessoryHandleAttach_block_invoke";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished local asset query\n", &v2, 0xCu);
  }
}

void _generateUIAnalyticEvents(void *a1, uint64_t a2)
{
  v2 = a2;
  valuePtr[1] = *MEMORY[0x277D85DE8];
  if ([a1 didNotify])
  {
    return;
  }

  IOAccessoryAggDPostScalarKey(@"com.apple.ioaccessorymanager.ldcm.notification.count", a1);
  [a1 setDidNotify:1];
  if ([a1 didConfidentNotify])
  {
LABEL_18:
    _generateUIAnalyticEvents_cold_2(a1, v2);
    return;
  }

  number = 0xAAAAAAAAAAAAAAAALL;
  valuePtr[0] = 0;
  if (!gAccyHealthDictionary)
  {
    v12 = 0;
    v4 = 0;
    goto LABEL_87;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%012llx_%1d_%012llx", 0, 0, 0];
  v5 = [gAccyHealthDictionary objectForKey:v4];
  if (!v5 || ![v5 isHealthy])
  {
    v12 = 0;
LABEL_87:
    v10 = 1;
LABEL_90:
    v11 = 1;
    goto LABEL_12;
  }

  if (!digitalIdNumPinsFree([a1 connectedAccessoryDigitalID], buf))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_12;
  }

  if (_retrieveDeviceInterfaceSerialNumber([a1 service], &number))
  {
    v10 = 0;
    v12 = 0;
    goto LABEL_90;
  }

  CFNumberGetValue(number, kCFNumberSInt64Type, valuePtr);
  CFRelease(number);
  v6 = MEMORY[0x277CCACA8];
  v7 = [a1 connectedAccessoryDigitalID];
  v8 = [a1 connectedAccessoryOrientation];
  v4 = [v6 stringWithFormat:@"%012llx_%1d_%012llx", v7, v8, valuePtr[0]];
  v9 = [gAccyHealthDictionary objectForKey:v4];
  v10 = 0;
  if (v9)
  {
    v11 = [v9 isHealthy] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = 1;
LABEL_12:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v45 = v4;
    v46 = 1024;
    LODWORD(v47[0]) = v10;
    WORD2(v47[0]) = 1024;
    *(v47 + 6) = v11;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[eval] <%{public}@> : emptyFail %d, accyFail %d", buf, 0x18u);
  }

  if (v10)
  {
    IOAccessoryAggDPostScalarKey(@"com.apple.ioaccessorymanager.ldcm.notification.suppress.phone", a1);
    goto LABEL_18;
  }

  if (v11)
  {
    _generateUIAnalyticEvents_cold_1(a1, v12);
    goto LABEL_18;
  }

  IOAccessoryAggDPostScalarKey(@"com.apple.ioaccessorymanager.ldcm.notification.confidentcount", a1);
  [a1 setDidConfidentNotify:1];
  if ([gUserLdcmParams enableHalogenMitigationsAndUI] == 1)
  {
    number = 0;
    if (([gUserLdcmParams userBehaviorMask] & 2) != 0 && (gLiquidNotificationContext & 1) == 0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - *&qword_2812C4390 >= 480.0)
      {
        v14 = 0;
        qword_2812C4390 = *&Current;
      }

      else
      {
        v14 = 1;
      }

      byte_2812C4398 = v14;
      v15 = [gUserLdcmParams userBehaviorMask];
      if ((v15 & 4) == 0)
      {
        byte_2812C4398 = 0;
        qword_2812C4390 = *&Current;
      }

      v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
      if (v16)
      {
        v17 = v16;
        v18 = MEMORY[0x277CBEC28];
        v19 = MEMORY[0x277CBEC38];
        if ((v15 & 4) != 0)
        {
          v20 = MEMORY[0x277CBEC28];
        }

        else
        {
          v20 = MEMORY[0x277CBEC38];
        }

        [v16 setObject:v20 forKeyedSubscript:@"legacy"];
        if (byte_2812C44D4)
        {
          v21 = v19;
        }

        else
        {
          v21 = v18;
        }

        [v17 setObject:v21 forKeyedSubscript:@"chargerConnected"];
        if (byte_2812C4398)
        {
          v22 = v19;
        }

        else
        {
          v22 = v18;
        }

        [v17 setObject:v22 forKeyedSubscript:@"reinsertion"];
        v23 = objc_alloc_init(MEMORY[0x277CCA9D8]);
        if (v23)
        {
          v24 = v23;
          [v23 setUserInfo:v17];
          valuePtr[0] = v24;
          v25 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:objc_msgSend(MEMORY[0x277CBEA60] requiringSecureCoding:"arrayWithObjects:count:" error:{valuePtr, 1), 1, &number}];
          v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
          if (v26)
          {
            v27 = v26;
            [v26 setObject:@"com.apple.IOAccessoryManagerFramework.WetNotification" forKeyedSubscript:*MEMORY[0x277D67350]];
            [v27 setObject:v25 forKeyedSubscript:*MEMORY[0x277D67358]];
            v28 = MEMORY[0x277CBEC38];
            [v27 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBF1B0]];
            [v27 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67320]];
            [v27 setObject:v28 forKeyedSubscript:*MEMORY[0x277D67340]];
            v29 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.IOAccessoryManagerFramework"];
            v30 = v29;
            if (v29)
            {
              v31 = [v29 pathForResource:@"PlugIns/WetNotification.appex/Assets.car" ofType:&stru_2866AF328];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v45 = "IOAccessoryNotifyWet";
                v46 = 2112;
                v47[0] = v31;
                _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Setting asset path for LDCM wet icon:%@", buf, 0x16u);
              }

              [v27 setObject:v31 forKeyedSubscript:*MEMORY[0x277D673A0]];
              [v27 setObject:@"lockScreenLiquidDetection" forKeyedSubscript:*MEMORY[0x277D67398]];
              [v27 setObject:@"YES" forKeyedSubscript:*MEMORY[0x277D67390]];
              [v27 setObject:v31 forKeyedSubscript:*MEMORY[0x277D67378]];
              [v27 setObject:@"lockScreenLiquidDetection" forKeyedSubscript:*MEMORY[0x277D67370]];
              v32 = [v30 resourceURL];
              [v27 setObject:v32 forKeyedSubscript:*MEMORY[0x277CBF208]];
            }

            if ((v15 & 4) != 0)
            {
              if (v30)
              {
                v34 = @"WETMSG_DIALOG_HEADER_LOCKSCREEN";
              }

              else
              {
                v34 = @"LIQUID DETECTED";
              }

              if (v30)
              {
                v35 = @"WETMSG_DIALOG_BODY_LOCKSCREEN";
              }

              else
              {
                v35 = @"Charging is not available because liquid has been detected in the Lightning connector. Disconnect to allow the connector to dry.";
              }

              if (v30)
              {
                v36 = @"WETMSG_BUTTON_DISMISS";
              }

              else
              {
                v36 = @"Dismiss";
              }

              v37 = @"WETMSG_BUTTON_EMERGENCY_OVERRIDE";
              if (!v30)
              {
                v37 = @"Emergency Override";
              }

              if (byte_2812C4398)
              {
                v33 = v37;
              }

              else
              {
                v33 = 0;
              }
            }

            else
            {
              v33 = 0;
              if (v30)
              {
                v34 = @"WETMSG_DIALOG_HEADER_LOCKSCREEN_LEGACY";
              }

              else
              {
                v34 = @"LIQUID DETECTED";
              }

              if (v30)
              {
                v35 = @"WETMSG_DIALOG_BODY_LOCKSCREEN_LEGACY";
              }

              else
              {
                v35 = @"Liquid has been detected in the Lightning connector. Disconnect to allow the connector to dry. Charging now may damage your iPhone.";
              }

              if (v30)
              {
                v36 = @"WETMSG_BUTTON_CLOSE";
              }

              else
              {
                v36 = @"Close";
              }
            }

            [v27 setObject:v34 forKeyedSubscript:*MEMORY[0x277D673B8]];
            [v27 setObject:v35 forKeyedSubscript:*MEMORY[0x277D673C8]];
            [v27 setObject:v36 forKeyedSubscript:*MEMORY[0x277CBF1E8]];
            [v27 setObject:v33 forKeyedSubscript:*MEMORY[0x277CBF218]];
            if (gEnableTapToRadarPopup == 1 && gGiveUserRadarOption == 1 && gIsInternalBuild == 1)
            {
              if (v30)
              {
                v38 = @"WETMSG_BUTTON_RADAR";
              }

              else
              {
                v38 = @"Radar";
              }

              [v27 setObject:v38 forKeyedSubscript:*MEMORY[0x277CBF1C0]];
            }

            gLiquidNotificationContext = 1;
            if (a1)
            {
              qword_2812C43B8 = a1;
            }

            v39 = *MEMORY[0x277CBECE8];
            qword_2812C43A0 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v27);
            RunLoopSource = CFUserNotificationCreateRunLoopSource(v39, qword_2812C43A0, IOAccessoryNotifyWetCallback_0, 0);
            qword_2812C43A8 = RunLoopSource;
            if (RunLoopSource)
            {
              CFRunLoopAddSource(qword_2812C43B0, RunLoopSource, *MEMORY[0x277CBF048]);
            }

            v24 = v17;
            v17 = v27;
          }
        }
      }

      v41 = number;
      if (number)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v42 = [-[__CFNumber localizedDescription](v41 "localizedDescription")];
          *buf = 136315394;
          v45 = "IOAccessoryNotifyWet";
          v46 = 2080;
          v47[0] = v42;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s err: %s", buf, 0x16u);
          v41 = number;
        }
      }
    }
  }
}

uint64_t halogenMeasurementCleanup(void *a1)
{
  [a1 setConnectedAccessoryPDigitalID:0];
  [a1 setIsTimestampValid:0];
  [a1 setIsWet:0];
  [a1 setWasTapToRadarShown:0];
  [a1 setIsMeasurementEnabled:0];
  [a1 setDidNotify:0];
  [a1 setDidConfidentNotify:0];
  [a1 setDidHighConfidentNotify:0];
  [a1 setDidWetDuration:0];
  [a1 setAccessoryConnectedWhileWet:0];
  [a1 setDidWetTooLong:0];
  [a1 setIsHeadsetConnected:0];
  [a1 setIsDebugAccessoryConnected:0];

  return [a1 setIsBlacklistedAccessoryConnected:0];
}

void IOAccessoryNotifyWetHandlerDismiss_0()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "UI Dismiss!!!\n", v0, 2u);
  }
}

void __IOAccessoryGiveUserRadarOption_block_invoke(uint64_t a1)
{
  if ([gUserLdcmParams enableHalogenMitigationsAndUI] == 1)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    IOAccessoryFileRadarHalogen(v5, v6);
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAAALL;
    if (*(a1 + 48))
    {
      v2 = @"SNR failure while doing Liquid Detection.\n File a Radar?";
    }

    else
    {
      v2 = @"Liquid detected in Lightning port.\n File a Radar?";
    }

    v3 = CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v2, 0, @"Not Now", @"Yes", 0, &v7);
    [*(a1 + 40) setIsTapToRadarPending:0];
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v7 == 1;
    }

    if (v4)
    {
      IOAccessoryFileRadarHalogen(*(a1 + 32), *(a1 + 48));
    }
  }
}

uint64_t _holdPowerAssertion(int a1, void *a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v4 = [a2 isPowerAssertionHeld];
  if (a1)
  {
    if ((v4 & 1) == 0)
    {
      v11[0] = @"AssertType";
      v11[1] = @"AssertLevel";
      v12[0] = @"NoIdleSleepAssertion";
      v12[1] = &unk_2866B8ED0;
      v11[2] = @"AssertName";
      v11[3] = @"AllowsDeviceRestart";
      v5 = *MEMORY[0x277CBED28];
      v12[2] = @"com.apple.ioaccessorymanager.halogen";
      v12[3] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
      AssertionID = [a2 sleepAssertionID];
      if (IOPMAssertionCreateWithProperties(v6, &AssertionID))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          _holdPowerAssertion_cold_2();
        }

        return [a2 isPowerAssertionHeld] ^ a1 ^ 1;
      }

      [a2 setSleepAssertionID:AssertionID];
      v7 = a2;
      v8 = 1;
LABEL_14:
      [v7 setIsPowerAssertionHeld:v8];
      return [a2 isPowerAssertionHeld] ^ a1 ^ 1;
    }

    goto LABEL_10;
  }

  if (!v4)
  {
LABEL_10:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      _holdPowerAssertion_cold_3(a2);
    }

    return [a2 isPowerAssertionHeld] ^ a1 ^ 1;
  }

  if (!IOPMAssertionRelease([a2 sleepAssertionID]))
  {
    v7 = a2;
    v8 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    _holdPowerAssertion_cold_1();
  }

  return [a2 isPowerAssertionHeld] ^ a1 ^ 1;
}

uint64_t reportEisMeasurementStateChange(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  connect = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "reportEisMeasurementStateChange";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s handleEisMeasurement entry\n", buf, 0xCu);
  }

  v2 = [a1 service];
  result = IOServiceOpen(v2, *MEMORY[0x277D85F48], 0, &connect);
  if (!result)
  {
    memset(buf, 170, 6);
    [objc_msgSend(a1 "connectedAccessoryPDigitalID")];
    [objc_msgSend(a1 "halogenMeasurement")];
    if (!IOAccessoryManagerSetVoltageDetected())
    {
      v4 = [objc_msgSend(a1 "halogenMeasurement")];
      v5.i32[0] = *buf;
      v6 = vmovl_u8(v5).u64[0];
      if (vuzp1_s8(v6, v6).u32[0] == 61700 && !buf[4] && v4 == 2 && !buf[5] && ([a1 isReceptacleEmpty] & 1) == 0)
      {
        IOAccessoryAggDPostScalarKey(@"com.apple.ioaccessorymanager.voltage.headset", a1);
      }
    }

    result = connect;
    if (connect)
    {
      return IOServiceClose(connect);
    }
  }

  return result;
}

uint64_t __powerBatteryMatch(void *a1, io_iterator_t iterator)
{
  v14 = *MEMORY[0x277D85DE8];
  notification = -1431655766;
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    v6 = MEMORY[0x277D86220];
    do
    {
      __powerUpdateBatteryState(v5);
      v7 = IOServiceAddInterestNotification(gBatteryStatusNotificationContext, v5, "IOGeneralInterest", __powerBatteryInterest, a1, &notification);
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v11 = "__powerBatteryMatch";
          v12 = 1024;
          v13 = v8;
          _os_log_error_impl(&dword_2548F1000, v6, OS_LOG_TYPE_ERROR, "%s IOServiceAddInterestNotification failed: %08x", buf, 0x12u);
        }
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void OUTLINED_FUNCTION_29(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_30(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_34()
{
  v3 = *(v1 + 2992);

  return [v3 numberWithInt:v0];
}

void OUTLINED_FUNCTION_43(float a1)
{
  *(v3 - 128) = a1;
  *(v1 + 4) = v2;
  *(v3 - 116) = 2112;
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);

  return [v8 countByEnumeratingWithState:va objects:va1 count:16];
}

void handleLDCMNotification(int a1, void *a2, CFStringRef theString1)
{
  if (CFStringCompare(theString1, @"com.apple.CoreAccessories.LDCMPreferencesNotification", 1uLL) == kCFCompareEqualTo)
  {
    [a2 _processLDCMDefauts:0];
  }

  if (CFStringCompare(theString1, @"com.apple.CoreAccessories.TestLDCMAnalyticsNotification", 1uLL) == kCFCompareEqualTo)
  {
    v5 = [a2 halogenTypeCDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __handleLDCMNotification_block_invoke;
    block[3] = &unk_279793038;
    block[4] = a2;
    dispatch_async(v5, block);
  }

  if (CFStringCompare(theString1, @"com.apple.CoreAccessories.LDCMSettingsDidChangeNotification", 1uLL) == kCFCompareEqualTo)
  {
    v6 = [a2 halogenTypeCDispatchQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __handleLDCMNotification_block_invoke_2;
    v11[3] = &unk_279793038;
    v11[4] = a2;
    dispatch_async(v6, v11);
  }

  if (CFStringCompare(theString1, @"com.apple.CoreAccessories.LDCMMitigationsOverrideNotification", 1uLL) == kCFCompareEqualTo)
  {
    v7 = [a2 halogenTypeCDispatchQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __handleLDCMNotification_block_invoke_3;
    v10[3] = &unk_279793038;
    v10[4] = a2;
    dispatch_async(v7, v10);
  }

  if (CFStringCompare(theString1, @"com.apple.CoreAccessories.LDCMActiveMeasurementsDidChangeNotification", 1uLL) == kCFCompareEqualTo)
  {
    v8 = [a2 halogenTypeCDispatchQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __handleLDCMNotification_block_invoke_4;
    v9[3] = &unk_279793038;
    v9[4] = a2;
    dispatch_async(v8, v9);
  }
}

void handleUserRequestedRadarNotification(uint64_t a1, void *a2)
{
  v3 = [a2 halogenTypeCUserPromptDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __handleUserRequestedRadarNotification_block_invoke;
  block[3] = &unk_279793038;
  block[4] = a2;
  dispatch_async(v3, block);
}

void handleWetPromptResponse(uint64_t a1, uint64_t a2)
{
  v3 = qword_27F612858;
  v4 = [qword_27F612858 halogenTypeCUserPromptDispatchQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __handleWetPromptResponse_block_invoke;
  v5[3] = &unk_279793300;
  v5[4] = v3;
  v5[5] = a2;
  dispatch_async(v4, v5);
}

void clearNotificationContext()
{
  if (gWetNotificationContext)
  {
    CFUserNotificationCancel(gWetNotificationContext);
  }

  if (qword_27F612850)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, qword_27F612850, *MEMORY[0x277CBF048]);
    CFRelease(qword_27F612850);
    qword_27F612850 = 0;
  }

  if (gWetNotificationContext)
  {
    CFRelease(gWetNotificationContext);
    gWetNotificationContext = 0;
  }
}

uint64_t __handleUserRequestedRadarNotification_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] stringWithString:@"Manual HalogenTypeC radar request.\n"];
  v3 = *(a1 + 32);

  return [v3 _fileRadarHalogenTypeC:v2 TTRCategory:1];
}

void __handleWetPromptResponse_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  clearNotificationContext();
  [*(a1 + 32) setLastUserNotificationTimeNS:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW)];
  if (*(a1 + 40))
  {
    if ([*(a1 + 32) isInternalBuild] && *(a1 + 40) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315138;
        v5 = "handleWetPromptResponse_block_invoke";
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s alternate response", &v4, 0xCu);
      }

      [*(a1 + 32) _fileRadarHalogenTypeC:objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) TTRCategory:{"typeC"), "getVerboseMeasurementOutputString"), "mutableCopy"), 0}];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "handleWetPromptResponse_block_invoke";
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s unexpected response", &v4, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "handleWetPromptResponse_block_invoke";
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s default response", &v4, 0xCu);
    }

    v2 = [*(a1 + 32) timerPortStateCheck];
    v3 = dispatch_walltime(0, 3600000000000);
    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

uint64_t OUTLINED_FUNCTION_2_3()
{
  result = *(v0 + 192);
  *(v1 - 136) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_4_0(dispatch_time_t start)
{

  dispatch_source_set_timer(v1, start, 0xFFFFFFFFFFFFFFFFLL, 0);
}

void OUTLINED_FUNCTION_7_0(int a1@<W8>)
{
  *(v2 + 4) = v1;
  *(v3 - 84) = 1024;
  *(v2 + 14) = a1;
  *(v3 - 78) = 2048;
  *(v2 + 20) = 3600;
}

void OUTLINED_FUNCTION_13_0(uint64_t a1@<X8>)
{
  *(v2 + 4) = a1;
  *(v3 - 84) = 1024;
  *(v2 + 14) = v1;
}

dispatch_time_t OUTLINED_FUNCTION_14_0()
{

  return dispatch_walltime(0, 1000000000 * v0);
}

dispatch_source_t OUTLINED_FUNCTION_15_0(const dispatch_source_type_s *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{

  return dispatch_source_create(a1, 0, 0, a4);
}

uint64_t compare(double *a1, double *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, va, 2u);
}

uint64_t recordCallback_0(void *a1, AudioUnitRenderActionFlags *a2, const AudioTimeStamp *a3, UInt32 a4, uint64_t a5)
{
  v5 = a5;
  v25 = *MEMORY[0x277D85DE8];
  v10 = [a1 inputFrameSizeInBytes] * a5;
  memset(v22, 170, 24);
  v11 = [a1 pcmInputDataMaxSzInBytes];
  if ((v11 - [a1 pcmInputDataIndexInBytes]) < v10)
  {
    recordCallback_cold_1(a1);
  }

  else if (([a1 isMeasurementDone] & 1) == 0)
  {
    LODWORD(v22[1]) = 1;
    v12 = [objc_msgSend(a1 "pcmInputData")];
    v22[3] = v12 + [a1 pcmInputDataIndexInBytes];
    HIDWORD(v22[2]) = v10;
    v13 = AudioUnitRender([a1 audioComponentInst], a2, a3, a4, v5, &v22[1]);
    if (v13)
    {
      v14 = v13;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v24 = v14;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenMeasurement:render failed osstatus=0x%x", buf, 8u);
      }
    }

    [a1 setPcmInputDataIndexInBytes:{objc_msgSend(a1, "pcmInputDataIndexInBytes") + v10}];
    [a1 setPcmInputDataSampleCnt:{objc_msgSend(a1, "pcmInputDataSampleCnt") + v5}];
    v15 = [a1 pcmInputDataSampleCnt];
    v16 = [a1 calibrationSampleOffsetInFrames];
    if (v15 >= ([a1 nMeasurementSamples] + v16))
    {
      if (([a1 isCalibrationDone] & 1) == 0)
      {
        [a1 setIsCalibrationDone:1];
        [a1 setMeasurementSampleOffsetInFrames:{objc_msgSend(a1, "nHydraSettlingSamples") + objc_msgSend(a1, "pcmInputDataSampleCnt")}];
        [a1 connect];
        [a1 pinToMeasure];
        v17 = IOAccessoryManagerSelectEisPin();
        if (v17)
        {
          v18 = v17;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v24 = v18;
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenMeasurement:IOAccessoryManagerSelectEisPin failed to set the pin ret = 0x%x", buf, 8u);
          }
        }

        else
        {
          [a1 setEisPinToken2:v22[0]];
        }
      }

      v19 = [a1 pcmInputDataSampleCnt];
      v20 = [a1 measurementSampleOffsetInFrames];
      if (v19 >= ([a1 nMeasurementSamples] + v20))
      {
        [a1 setIsMeasurementDone:1];
        [objc_msgSend(a1 "audioTimeoutCond")];
      }
    }
  }

  return 0;
}

uint64_t playbackCallback_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v8 = [objc_msgSend(a1 pcmOutputData];
  v9 = [a1 pcmOutputDataIndexInBytes];
  v10 = [a1 pcmOutputDataMaxSzInBytes];
  v11 = *a6;
  if (v11)
  {
    v12 = v10;
    v13 = 0;
    v14 = (a6 + 4);
    do
    {
      v15 = *(v14 - 1);
      if (v12 - v9 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = (v12 - v9);
      }

      if (v16)
      {
        memcpy(*v14, (v8 + [a1 pcmOutputDataIndexInBytes]), v16);
        v9 = (v16 + v9);
        v11 = *a6;
      }

      ++v13;
      v14 += 2;
    }

    while (v13 < v11);
  }

  [a1 setPcmOutputDataIndexInBytes:v9];
  return 0;
}

void systemPowerCallback_0(void *a1, uint64_t a2, uint64_t a3, intptr_t a4)
{
  if (a3 > -536870145)
  {
    if (a3 == -536870144)
    {
      v10 = dispatch_walltime(0, 100000000);
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __systemPowerCallback_block_invoke_0;
      block[3] = &unk_279793038;
      block[4] = a1;
      dispatch_after(v10, global_queue, block);
      return;
    }

    if (a3 != -536870112)
    {
      return;
    }

    [objc_msgSend(a1 powerStateCond];
    v6 = a1;
    v7 = 1;
    goto LABEL_8;
  }

  if (a3 != -536870288)
  {
    if (a3 != -536870272)
    {
      return;
    }

    IOAllowPowerChange([a1 systemPowerPort], a4);
    [objc_msgSend(a1 "powerStateCond")];
    v6 = a1;
    v7 = 0;
LABEL_8:
    [v6 setPowerState:v7];
    [objc_msgSend(a1 "powerStateCond")];
    v8 = [a1 powerStateCond];

    [v8 unlock];
    return;
  }

  v9 = [a1 systemPowerPort];

  IOAllowPowerChange(v9, a4);
}

uint64_t __systemPowerCallback_block_invoke_0(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "powerStateCond")];
  [*(a1 + 32) setPowerState:2];
  [objc_msgSend(*(a1 + 32) "powerStateCond")];
  v2 = [*(a1 + 32) powerStateCond];

  return [v2 unlock];
}

void IOAccessoryStopSystemStateMonitor()
{
  v0 = *monitor;
  *monitor = 0;
}

uint64_t ProcessPublishedEndpoints(void *a1, io_iterator_t iterator)
{
  v11 = *MEMORY[0x277D85DE8];
  result = IOIteratorNext(iterator);
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0x277D86220];
    *&v5 = 136315138;
    v8 = v5;
    do
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = v8;
        v10 = "ProcessPublishedEndpoints";
        _os_log_impl(&dword_2548F1000, v7, OS_LOG_TYPE_INFO, "%s adding endpoint", buf, 0xCu);
      }

      [a1 addEndpointForService:{v6, v8}];
      IOObjectRelease(v6);
      result = IOIteratorNext(iterator);
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t ProcessTerminatedEndpoints(void *a1, io_iterator_t iterator)
{
  v11 = *MEMORY[0x277D85DE8];
  result = IOIteratorNext(iterator);
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0x277D86220];
    *&v5 = 136315138;
    v8 = v5;
    do
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = v8;
        v10 = "ProcessTerminatedEndpoints";
        _os_log_impl(&dword_2548F1000, v7, OS_LOG_TYPE_INFO, "%s removing endpoint", buf, 0xCu);
      }

      [a1 removeEndpointForService:{v6, v8}];
      IOObjectRelease(v6);
      result = IOIteratorNext(iterator);
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 4) = a2;
  *(v5 - 100) = 1024;
  *(v3 + 14) = v4;
  *(v5 - 94) = 1024;
  *(v5 - 92) = v2;
  *(v5 - 88) = 2048;
  *(v3 + 26) = result;
  return result;
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void IOPortLDCMServiceMatchingCallback(uint64_t *a1, io_iterator_t iterator)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = IOIteratorNext(iterator);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = 0;
  v7 = *MEMORY[0x277CBECE8];
  while (1)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v5, @"ArchitectureVersion", v7, 0);
    v9 = CFProperty;
    if (!CFProperty)
    {
      IOPortLDCMServiceMatchingCallback_cold_2(v6, &v14);
      goto LABEL_18;
    }

    if (([CFProperty intValue] & 0xFFFFFFFE) == 4)
    {
      break;
    }

LABEL_9:
    IOObjectRelease(v5);

    v5 = IOIteratorNext(iterator);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v10 = [[IOPortLDCMManagerV4 alloc] initWithParams:64000000000 withDryPollingInterval:32000000000 withService:v5 withNotificationPort:v3 withServerRunloop:v4];

  if (v10)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [_MergedGlobals_0 setObject:v10 forKey:v11];
    if (!ldcmMobileAssetManager)
    {
      v12 = objc_opt_new();
      v13 = ldcmMobileAssetManager;
      ldcmMobileAssetManager = v12;

      [ldcmMobileAssetManager setDelegate:qword_2812C4330];
    }

    v6 = v10;
    goto LABEL_9;
  }

  IOPortLDCMServiceMatchingCallback_cold_1(&v14);
LABEL_18:
  v6 = v14;

LABEL_10:
LABEL_11:
  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v5)
  {
    IOObjectRelease(v5);
  }
}

double __divdc3(double a1, double a2, double a3, double a4)
{
  v4 = fmax(fabs(a3), fabs(a4));
  v5 = -INFINITY;
  v6 = __clz(*&v4);
  v7 = (((*&v4 << (v6 - 11) >> 52) & 0x7FF) - v6 - 1012);
  if (*&v4 >> 52)
  {
    v7 = ((*&v4 >> 52) - 1023);
  }

  if (v4 != 0.0)
  {
    v5 = v7;
  }

  if (*&v4 >> 52 == 2047)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v9 = v8;
  v22 = -v8;
  if (a3 == 0.0 || (v23 = (*&a3 >> 52) & 0x7FFLL, v23 == 2047))
  {
LABEL_34:
    if (a4 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

  v24 = *&a3 & 0xFFFFFFFFFFFFFLL;
  if (!v23)
  {
    v25 = __clz(v24);
    v26 = v24 << (v25 - 11);
    LODWORD(v23) = 12 - v25;
    v24 = v26 & 0xFFEFFFFFFFFFFFFFLL;
  }

  v20 = __OFADD__(v23, v22);
  LODWORD(v23) = v23 - v8;
  if (v20)
  {
    v23 = (v23 >> 31) ^ 0x80000000;
  }

  else
  {
    v23 = v23;
  }

  v27 = *&a3 & 0x8000000000000000;
  if (v23 < 2047)
  {
    if (v23 <= 0)
    {
      v37 = v24 | v27 | 0x10000000000000;
      if (v23 <= -1021)
      {
        v38 = -1021;
      }

      else
      {
        v38 = v23;
      }

      a3 = *&v37 * COERCE_DOUBLE((v38 + 1022) << 52);
      if (a4 == 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }

    *&a3 = v27 | (v23 << 52) | v24;
    goto LABEL_34;
  }

  a3 = COERCE_DOUBLE(v27 | 0x7FE0000000000000) + COERCE_DOUBLE(v27 | 0x7FE0000000000000);
  if (a4 == 0.0)
  {
    goto LABEL_10;
  }

LABEL_35:
  v28 = (*&a4 >> 52) & 0x7FFLL;
  if (v28 != 2047)
  {
    v29 = *&a4 & 0xFFFFFFFFFFFFFLL;
    if (!v28)
    {
      v30 = __clz(v29);
      v31 = v29 << (v30 - 11);
      LODWORD(v28) = 12 - v30;
      v29 = v31 & 0xFFEFFFFFFFFFFFFFLL;
    }

    v20 = __OFADD__(v28, v22);
    LODWORD(v32) = v28 - v8;
    if (v20)
    {
      v32 = (v32 >> 31) ^ 0x80000000;
    }

    else
    {
      v32 = v32;
    }

    v33 = *&a4 & 0x8000000000000000;
    if (v32 < 2047)
    {
      if (v32 <= 0)
      {
        if (v32 <= -1021)
        {
          LODWORD(v32) = -1021;
        }

        a4 = COERCE_DOUBLE(v29 | v33 | 0x10000000000000) * COERCE_DOUBLE((v32 + 1022) << 52);
      }

      else
      {
        *&a4 = v33 | (v32 << 52) | v29;
      }
    }

    else
    {
      a4 = COERCE_DOUBLE(v33 | 0x7FE0000000000000) + COERCE_DOUBLE(v33 | 0x7FE0000000000000);
    }
  }

LABEL_10:
  v10 = a4 * a4 + a3 * a3;
  v11 = (a4 * a2 + a1 * a3) / v10;
  v12 = -v9;
  if (v11 != 0.0)
  {
    v13 = (a4 * a2 + a1 * a3) / v10;
    v14 = (*&v11 >> 52) & 0x7FFLL;
    if (v14 != 2047)
    {
      v15 = *&v13 & 0xFFFFFFFFFFFFFLL;
      v16 = __clz(*&v13 & 0xFFFFFFFFFFFFFLL);
      v17 = (*&v13 & 0xFFFFFFFFFFFFFLL) << (v16 - 11);
      v18 = 12 - v16;
      v19 = v17 & 0xFFEFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v19;
        LODWORD(v14) = v18;
      }

      v20 = __OFADD__(v14, v12);
      LODWORD(v14) = v14 + v12;
      if (v20)
      {
        v14 = (v14 >> 31) ^ 0x80000000;
      }

      else
      {
        v14 = v14;
      }

      v21 = *&v11 & 0x8000000000000000;
      if (v14 < 2047)
      {
        if (v14 <= 0)
        {
          v34 = v15 | v21 | 0x10000000000000;
          if (v14 <= -1021)
          {
            v35 = -1021;
          }

          else
          {
            v35 = v14;
          }

          return *&v34 * COERCE_DOUBLE((v35 + 1022) << 52);
        }

        else
        {
          *&v11 = v21 | (v14 << 52) | v15;
        }
      }

      else
      {
        return COERCE_DOUBLE(v21 | 0x7FE0000000000000) + COERCE_DOUBLE(v21 | 0x7FE0000000000000);
      }
    }
  }

  return v11;
}

void IOAccessoryNotifyWet(uint64_t a1, _BYTE *a2, void *a3)
{
  v41[1] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM - Popping up a wet notification!!!", buf, 2u);
  }

  v12 = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_38;
  }

  v35 = a3;
  OUTLINED_FUNCTION_0_1();
  if (a2)
  {
    if (*a2 != 1 || (*a1 & 1) != 0)
    {
      v12 = 0;
      v4 = 0;
      v5 = 0;
      v3 = 0;
      a3 = 0;
LABEL_8:
      v13 = 0;
      v8 = 0;
      v7 = 0;
      v6 = 0;
      goto LABEL_38;
    }

    Current = CFAbsoluteTimeGetCurrent();
    *(a1 + 16) = Current - *(a1 + 8) < 480.0;
    *(a1 + 8) = Current;
    v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    a3 = v15;
    if (v15)
    {
      v16 = MEMORY[0x277CBEC38];
      if (*(a1 + 16))
      {
        v17 = MEMORY[0x277CBEC38];
      }

      else
      {
        v17 = MEMORY[0x277CBEC28];
      }

      [v15 setObject:v17 forKeyedSubscript:@"reinsertion"];
      [a3 setObject:v16 forKeyedSubscript:@"typeC"];
      [a3 setObject:v16 forKeyedSubscript:@"chargerConnected"];
      v18 = objc_alloc_init(MEMORY[0x277CCA9D8]);
      v12 = v18;
      if (v18)
      {
        [(__CFString *)v18 setUserInfo:a3];
        v19 = MEMORY[0x277CCAAB0];
        v41[0] = v12;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
        v36 = 0;
        v7 = [v19 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v36];
        v34 = v36;

        v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v3 = v21;
        v33 = v12;
        if (v21)
        {
          [v21 setObject:@"com.apple.IOAccessoryManagerFramework.WetNotification" forKeyedSubscript:*MEMORY[0x277D67350]];
          [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277D67358]];
          OUTLINED_FUNCTION_1_0();
          [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67320]];
          OUTLINED_FUNCTION_1_0();
          v22 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.IOAccessoryManagerFramework"];
          v6 = v22;
          if (v22)
          {
            v23 = [v22 pathForResource:@"PlugIns/WetNotification.appex/Assets.car" ofType:&stru_2866AF328];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v38 = "IOAccessoryNotifyWet";
              v39 = 2112;
              v40 = v23;
              _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Setting asset path for LDCM wet icon:%@", buf, 0x16u);
            }

            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_1_0();
            [v3 setObject:@"YES" forKeyedSubscript:*MEMORY[0x277D67390]];
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_1_0();
            v24 = [v6 resourceURL];
            OUTLINED_FUNCTION_1_0();

            v12 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"WETMSG_DIALOG_BODY_LOCKSCREEN_TYPEC"];
          }

          else
          {
            v12 = @"Disconnect cable from charger and device. Unplug charger and allow all connectors to dry. This may take several hours.";
          }

          if (*(a1 + 16) == 1)
          {
            v25 = @"WETMSG_BUTTON_EMERGENCY_OVERRIDE";
            if (!v6)
            {
              v25 = @"Emergency Override";
            }

            v4 = v25;
          }

          else
          {
            v4 = 0;
          }

          OUTLINED_FUNCTION_1_0();
          [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x277D673C8]];
          OUTLINED_FUNCTION_3();
          [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277CBF218]];
          [v3 setObject:&unk_2866B8EA0 forKeyedSubscript:*MEMORY[0x277D67408]];
          [v3 setObject:&unk_2866B8EB8 forKeyedSubscript:*MEMORY[0x277D67430]];
          if (v35)
          {
            v26 = @"WETMSG_BUTTON_RADAR";
            if (!v6)
            {
              v26 = @"Radar";
            }

            v5 = v26;
            OUTLINED_FUNCTION_3();
          }

          else
          {
            v5 = 0;
          }

          *a1 = 1;
          v27 = *MEMORY[0x277CBECE8];
          v28 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v3);
          *(a1 + 24) = v28;
          gLdcmNotificationContext = a1;
          RunLoopSource = CFUserNotificationCreateRunLoopSource(v27, v28, IOAccessoryNotifyWetCallback, 0);
          *(a1 + 32) = RunLoopSource;
          if (RunLoopSource)
          {
            CFRunLoopAddSource(*(a1 + 40), RunLoopSource, *MEMORY[0x277CBF048]);
          }
        }

        else
        {
          v12 = 0;
          v4 = 0;
          v5 = 0;
          v6 = 0;
        }

        v13 = v34;
        if (v34)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v8 = v33;
            v13 = v34;
            goto LABEL_38;
          }

          v30 = [v34 localizedDescription];
          v31 = [v30 UTF8String];
          *buf = 136315394;
          v38 = "IOAccessoryNotifyWet";
          v39 = 2080;
          v40 = v31;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s err: %s", buf, 0x16u);

          v13 = v34;
        }

        v8 = v33;
        goto LABEL_38;
      }
    }

    else
    {
      v12 = 0;
    }

    v4 = 0;
    v5 = 0;
    v3 = 0;
    goto LABEL_8;
  }

LABEL_38:
  v32 = v13;
}

void IOAccessoryNotifyWetHandler(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (!a1)
  {
    goto LABEL_13;
  }

  v5 = llround(CFAbsoluteTimeGetCurrent() - *(a1 + 8));
  v6 = [MEMORY[0x277CCABB0] numberWithLong:v5];
  [v4 setObject:v6 forKey:@"notificationDuration"];

  if (*(a1 + 16) != 1)
  {
    if (a2)
    {
LABEL_7:
      if (a2 == 1)
      {
        v8 = [MEMORY[0x277CCABB0] numberWithInt:1];
        [OUTLINED_FUNCTION_2_1() setObject:? forKey:?];

        IOAccessoryFileRadarLDCMV4();
      }

      goto LABEL_10;
    }

LABEL_9:
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [OUTLINED_FUNCTION_2_1() setObject:? forKey:?];

    IOAccessoryNotifyWetHandlerDismiss();
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  if (a2 != 2)
  {
    goto LABEL_7;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInt:2];
  [OUTLINED_FUNCTION_2_1() setObject:? forKey:?];

  IOAccessoryNotifyWetHandlerEmergencyOverride(a1);
LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = 134217984;
    v11 = v5;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM UI Notification Duration: %ld\n", &v10, 0xCu);
  }

  AnalyticsSendEvent();
  CFRunLoopRemoveSource(*(a1 + 40), *(a1 + 32), *MEMORY[0x277CBF048]);
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 24));
LABEL_13:
}

void IOAccessoryFileRadarLDCMV4()
{
  v28 = [MEMORY[0x277CBEB38] dictionary];
  v29 = [MEMORY[0x277CCAB68] stringWithUTF8String:"LIQUID DETECTION REPORT (detected via HalogenTypeC)\n\n"];
  [v29 appendString:@"Has your device or charging cable been near liquid in the past 5 hours? \n\n"];
  [v29 appendString:@"If yes:\n\n"];
  [v29 appendString:@"- Cable or device?\n\n"];
  [v29 appendString:{@"- What kind of liquid? (e.g. tap water, rain, sweat, soda, beer, etc.)\n\n"}];
  [v29 appendString:{@"- What kind of exposure? (e.g. submersion, splash, droplet, sitting in puddle, using device with wet/sweaty hands, etc)\n\n"}];
  [v29 appendString:{@"- If the exposure was limited to a certain part of the device, where was it?\n\n"}];
  [v29 appendString:@"- How long was the exposure?\n\n"];
  [v29 appendString:@"- Time since exposure\n"];
  [v29 appendString:@"\n\nIf no:\n\n"];
  [v29 appendString:@"Please describe what happened just before seeing the dialog. For example… Did you just connect an accessory? Did you drop your device? Are you in a humid environment?\n\n\n"];
  v0 = [MEMORY[0x277CCAB68] stringWithString:@"tap-to-radar://new?ComponentName=LDCM&ComponentVersion=AutofilledBugs&ComponentID=750390&Classification=Other Bug&Reproducibility=Not Applicable&"];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [v1 contentsOfDirectoryAtPath:@"/var/logs/ldcm/" error:0];

  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self BEGINSWITH[cd] 'internalMeasurementData'"];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self BEGINSWITH[cd] 'internalWaveformData'"];
  v6 = [v2 filteredArrayUsingPredicate:v5];

  v26 = v6;
  v27 = v4;
  v25 = [v4 arrayByAddingObjectsFromArray:v6];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v25];
  if ([v7 count])
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [v7 objectAtIndex:v8];
      v12 = [v10 stringWithFormat:@"%@%@", @"/var/logs/ldcm/", v11];

      [v7 replaceObjectAtIndex:v8 withObject:v12];
      v8 = v9;
    }

    while ([v7 count] > v9++);
  }

  if ([v7 count])
  {
    v14 = [v7 componentsJoinedByString:{@", "}];
    [v0 appendFormat:@"Attachments=%@", v14];
  }

  [v0 appendString:@"&"];
  [v0 appendFormat:@"Description=%@", v29];
  v15 = MEMORY[0x277CBEBC0];
  v16 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v17 = [OUTLINED_FUNCTION_2_1() stringByAddingPercentEncodingWithAllowedCharacters:?];
  v18 = [v15 URLWithString:v17];

  if (_FBSOpenApplicationOptionKeyPromptUnlockDevice)
  {
    goto LABEL_9;
  }

  v19 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 4);
  if (!v19)
  {
    if (_FBSOpenApplicationOptionKeyPromptUnlockDevice)
    {
      goto LABEL_9;
    }

LABEL_16:
    v22 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v22 openURL:v18 configuration:0 completionHandler:&__block_literal_global];
    goto LABEL_11;
  }

  _FBSOpenApplicationOptionKeyPromptUnlockDevice = dlsym(v19, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
  if (!_FBSOpenApplicationOptionKeyPromptUnlockDevice)
  {
    goto LABEL_16;
  }

LABEL_9:
  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v21 = [v20 initWithBytes:_FBSOpenApplicationOptionKeyPromptUnlockDevice length:8 encoding:1];
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = v21;
  v23 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v28 setObject:v23 forKey:v22];

  v24 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v24 openSensitiveURL:v18 withOptions:v28];

LABEL_11:
LABEL_12:
}

uint64_t performEisMeasurement(void *a1)
{
  v180 = *MEMORY[0x277D85DE8];
  v163 = -21846;
  connect = 0;
  v162 = -1431655766;
  v160 = 0xAAAAAAAAAAAAAAAALL;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_46();
    *&v167[2] = 2048;
    *&v167[4] = a1;
    OUTLINED_FUNCTION_9();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  if (a1)
  {
    if (![a1 isMeasurementEnabled])
    {
      goto LABEL_175;
    }

    [objc_msgSend(a1 "cond")];
    [OUTLINED_FUNCTION_13() setIsMeasurementActive:?];
    [objc_msgSend(a1 "cond")];
    v7 = [a1 halogenMeasurement];
    v159 = [a1 portID];
    if ([a1 isReceptacleEmpty])
    {
      v8 = [a1 eventBasedDigitalID];
      v9 = [a1 eventBasedOrientation];
      if ([a1 justDetached])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_46();
          OUTLINED_FUNCTION_9();
          _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
        }

        [OUTLINED_FUNCTION_14() setJustDetached:?];
LABEL_14:
        v20 = 1;
LABEL_16:
        if (digitalIdNumPinsFree(v8, &v162))
        {
          v21 = [a1 service];
          if (!IOServiceOpen(v21, *MEMORY[0x277D85F48], 0, &connect))
          {
            if (!_holdPowerAssertion(1, a1))
            {
              v23 = 7;
LABEL_163:
              if ([a1 isMeasurementEnabled])
              {
                if (v23 == 8)
                {
                  v108 = [a1 ldcmStartMeasurementsRetryNs];
                  v109 = 1;
                }

                else
                {
                  if (v23 == 6)
                  {
                    v107 = [a1 ldcmArbiterRetryNs];
                  }

                  else if ([a1 isWet])
                  {
                    v107 = [a1 wetPollingIntervalNs];
                  }

                  else
                  {
                    v107 = [a1 dryPollingIntervalNs];
                  }

                  v108 = v107;
                  v109 = 0;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  OUTLINED_FUNCTION_46();
                  *&v167[2] = 2048;
                  *&v167[4] = v110;
                  OUTLINED_FUNCTION_9();
                  _os_log_impl(v111, v112, v113, v114, v115, 0x16u);
                }

                v116 = [a1 timer];
                v117 = dispatch_walltime(0, v108);
                dispatch_source_set_timer(v116, v117, 0xFFFFFFFFFFFFFFFFLL, 0);
                [a1 setAttachDelayTimerRunning:v109];
              }

              goto LABEL_175;
            }

            v22 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
            if (v20)
            {
              v23 = 7;
              goto LABEL_156;
            }

            HIDWORD(v155) = 0;
            v24 = 0;
            v23 = 7;
            *(&v25 + 1) = 0x300000001;
            *&v25 = 67110146;
            v151 = v25;
            *&v25 = 67109376;
            v157 = v25;
            *&v25 = 67110402;
            v154 = v25;
            *&v25 = 67111680;
            v153 = v25;
            *&v25 = 67110912;
            v152 = v25;
            v26 = 1000.0;
            v158 = v7;
            v156 = v8;
            while (2)
            {
              if (IOAccessoryManagerGetFreePinMask())
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  OUTLINED_FUNCTION_4();
                  OUTLINED_FUNCTION_9();
                  v85 = 8;
LABEL_112:
                  _os_log_impl(v80, v81, v82, v83, v84, v85);
                }

LABEL_113:
                v22 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
                if (v23)
                {
                  goto LABEL_156;
                }

                if ((v155 & 0x100000000) == 0)
                {
                  updateAccyHalogenHealthDictionary(a1);
                }

                v86 = [v158 halogenResult];
                v23 = 0;
                if (v86 > 8)
                {
                  goto LABEL_156;
                }

                if (((1 << v86) & 0x160) != 0)
                {
                  if ([gUserLdcmParams enableHalogenSnrTtr])
                  {
                    OUTLINED_FUNCTION_33();
                    if (v42)
                    {
                      OUTLINED_FUNCTION_32();
                      if (v42)
                      {
                        OUTLINED_FUNCTION_7();
                        if (v42)
                        {
                          if (([a1 isTapToRadarPending] & 1) == 0)
                          {
                            [OUTLINED_FUNCTION_13() setIsTapToRadarPending:?];
                            IOAccessoryGiveUserRadarOption(a1, 1);
                          }
                        }
                      }
                    }
                  }
                }

                else if (((1 << v86) & 3) != 0)
                {
                  if ([a1 isWet])
                  {
                    [a1 dryCnt];
                    [a1 setDryCnt:{objc_msgSend(OUTLINED_FUNCTION_27(), "dryCnt") + 1}];
                    [a1 setFirstDryTimestamp:mach_continuous_time()];
                    v22 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
                    goto LABEL_156;
                  }
                }

                else
                {
                  if (v86 != 2)
                  {
                    goto LABEL_156;
                  }

                  if ([a1 dryCnt])
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      [a1 dryCnt];
                      [OUTLINED_FUNCTION_27() minDryReadings];
                      *buf = 67109632;
                      OUTLINED_FUNCTION_1_2();
                      *v167 = 0;
                      *&v167[8] = v87;
                      *&v167[10] = v88;
                      OUTLINED_FUNCTION_9();
                      _os_log_impl(v89, v90, v91, v92, v93, 0x1Cu);
                    }

                    [OUTLINED_FUNCTION_39() setDryCnt:?];
                  }

                  if (([a1 isWet] & 1) == 0)
                  {
                    v119 = [a1 connectedAccessoryPDigitalID];
                    [OUTLINED_FUNCTION_12() setEventBasedPDigitalID:?];
                    [a1 connectedAccessoryDigitalID];
                    [OUTLINED_FUNCTION_12() setEventBasedDigitalID:?];
                    [a1 setEventBasedOrientation:{objc_msgSend(a1, "connectedAccessoryOrientation")}];
                    mach_continuous_time();
                    if ([OUTLINED_FUNCTION_27() isTimestampValid])
                    {
                      [a1 wetDryTransitionTimestamp];
                      if (!dword_2812C4324)
                      {
                        mach_timebase_info(&dword_2812C4320);
                        if (!dword_2812C4324)
                        {
                          mach_timebase_info(&dword_2812C4320);
                        }
                      }

                      v120 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                      if (v120)
                      {
                        OUTLINED_FUNCTION_38(v120, v121, v122, v123, v124, v125, v126, v127, v149, v150, v151, *(&v151 + 1), v152, *(&v152 + 1), v153, *(&v153 + 1), v154, *(&v154 + 1), v155, v156, v157);
                        v165 = v159;
                        v166 = 2048;
                        *v167 = v128;
                        OUTLINED_FUNCTION_9();
                        _os_log_impl(v129, v130, v131, v132, v133, 0x12u);
                      }
                    }

                    IOAccessoryAggDPostScalarKey(@"com.apple.ioaccessorymanager.voltage.count", a1);
                    [v158 capacitanceInNanoF];
                    IOAccessoryAggDPostHistogramKey(@"com.apple.ioaccessorymanager.ldcm.eis.initial.wet.capacitance.histogram", a1, v134);
                    [v158 goertzelImpedance];
                    IOAccessoryAggDPostHistogramKey(@"com.apple.ioaccessorymanager.ldcm.eis.initial.wet.impedance.histogram", a1, v135 / v26);
                    if (([a1 isReceptacleEmpty] & 1) == 0 && (objc_msgSend(a1, "isHeadsetConnected") & 1) == 0)
                    {
                      _generateUIAnalyticEvents(a1, v159);
                    }

                    [a1 setWetDryTransitionTimestamp:0];
                    [OUTLINED_FUNCTION_13() setIsTimestampValid:?];
                    [OUTLINED_FUNCTION_13() setIsWet:?];
                    reportEisMeasurementStateChange(a1);
                    v22 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
                  }

                  if ([v22[22].cache enableHalogenMitigationsAndUI] != 1)
                  {
                    OUTLINED_FUNCTION_33();
                    if (v42)
                    {
                      OUTLINED_FUNCTION_32();
                      if (v42)
                      {
                        OUTLINED_FUNCTION_7();
                        if (v42)
                        {
                          if ([a1 wasTapToRadarShown] & 1) != 0 || (objc_msgSend(a1, "isTapToRadarPending"))
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              OUTLINED_FUNCTION_4();
                              OUTLINED_FUNCTION_9();
                              _os_log_impl(v94, v95, v96, v97, v98, 8u);
                            }
                          }

                          else
                          {
                            [OUTLINED_FUNCTION_13() setWasTapToRadarShown:?];
                            [OUTLINED_FUNCTION_13() setIsTapToRadarPending:?];
                            IOAccessoryGiveUserRadarOption(a1, 0);
                          }
                        }
                      }
                    }
                  }

                  if ([a1 isTimestampValid] && (objc_msgSend(a1, "isHeadsetConnected") & 1) == 0)
                  {
                    [a1 wetDryTransitionTimestamp];
                    if (!dword_2812C4324)
                    {
                      mach_timebase_info(&dword_2812C4320);
                    }

                    mach_continuous_time();
                    if (!dword_2812C4324)
                    {
                      mach_timebase_info(&dword_2812C4320);
                    }

                    OUTLINED_FUNCTION_18();
                    v22 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
                    v101 = v99 / v100;
                    if (v99 / v100 >= [gUserLdcmParams maxVhiDurationSec] && (objc_msgSend(a1, "didWetTooLong") & 1) == 0)
                    {
                      v136 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                      if (v136)
                      {
                        OUTLINED_FUNCTION_38(v136, v137, v138, v139, v140, v141, v142, v143, v149, v150, v151, *(&v151 + 1), v152, *(&v152 + 1), v153, *(&v153 + 1), v154, *(&v154 + 1), v155, v156, v157);
                        OUTLINED_FUNCTION_1_2();
                        *v167 = v101;
                        OUTLINED_FUNCTION_9();
                        _os_log_impl(v144, v145, v146, v147, v148, 0x12u);
                      }

                      IOAccessoryAggDPostHistogramKey(@"com.apple.ioaccessorymanager.ldcm.notification.wettoolong", a1, v101);
                      [OUTLINED_FUNCTION_13() setDidWetTooLong:?];
                    }
                  }
                }

                v23 = 0;
LABEL_156:
                if (([v22[22].cache userBehaviorMask] & 0x10) == 0 && objc_msgSend(a1, "isReceptacleEmpty") && (objc_msgSend(a1, "isWet") & 1) == 0)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    OUTLINED_FUNCTION_4();
                    OUTLINED_FUNCTION_9();
                    _os_log_impl(v102, v103, v104, v105, v106, 8u);
                  }

                  halogenMeasurementCleanup(a1);
                }

                _holdPowerAssertion(0, a1);
                goto LABEL_163;
              }

              v27 = v160;
              if (v8 == 0x18FE81000000)
              {
                v27 = v160 & 0xFFFFFFFFFFFFFFFBLL;
                v160 &= ~4uLL;
              }

              v28 = 0;
              v179 = xmmword_25491C1D0;
              while (1)
              {
                v29 = *(&v179 + v28);
                if ((v27 & (1 << v29)) != 0)
                {
                  v30 = v29 + 2;
                  if (v9 != 2)
                  {
                    v30 = *(&v179 + v28);
                  }

                  if (*(&v162 + v30))
                  {
                    break;
                  }
                }

                v28 += 4;
                if (v28 == 16)
                {
                  goto LABEL_110;
                }
              }

              if (v29 == 6)
              {
LABEL_110:
                v72 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (!v72)
                {
                  goto LABEL_113;
                }

                OUTLINED_FUNCTION_38(v72, v73, v74, v75, v76, v77, v78, v79, v149, v150, v151, *(&v151 + 1), v152, *(&v152 + 1), v153, *(&v153 + 1), v154, *(&v154 + 1), v155, v156, v157);
                OUTLINED_FUNCTION_1_2();
                *v167 = v27;
                OUTLINED_FUNCTION_9();
                v85 = 18;
                goto LABEL_112;
              }

              [a1 setPinID:*(&v179 + v28)];
              v31 = [a1 isReceptacleEmpty];
              v32 = [a1 isWet];
              [gUserLdcmParams wetTransitionCapacitanceThreshold];
              v34 = v33;
              [gUserLdcmParams dryTransitionCapacitanceThreshold];
              v36 = [v158 doMeasurement:1 onPin:v29 isReceptacleEmpty:v31 isReceptacleWet:v32 withWetTransitionThreshold:v34 withDryTransitionThreshold:v35];
              v23 = v36;
              if (v36)
              {
                if (v36 <= 6 && ((1 << v36) & 0x58) != 0)
                {
                  v37 = MEMORY[0x277D86220];
                  v8 = v156;
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    OUTLINED_FUNCTION_4();
                    v166 = 1024;
                    *v167 = v24;
                    _os_log_impl(&dword_2548F1000, v37, OS_LOG_TYPE_DEFAULT, "(%d) EIS measurement #%d triggered abort due to sleep / failed arbitration / audio failure", buf, 0xEu);
                  }

                  v38 = 1;
LABEL_82:
                  if ([a1 isWet] && (objc_msgSend(a1, "isReceptacleEmpty") & 1) == 0 && (objc_msgSend(a1, "isHeadsetConnected") & 1) == 0)
                  {
                    if (!((v23 != 0) | BYTE4(v155) & 1))
                    {
                      HIDWORD(v155) = updateAccyHalogenHealthDictionary(a1);
                    }

                    _generateUIAnalyticEvents(a1, v159);
                  }

                  if (!v38)
                  {
                    usleep(0x186A0u);
                    v67 = v24++ > 3;
                    v68 = v67;
                    if (!v68 && !v38)
                    {
                      continue;
                    }
                  }

                  goto LABEL_113;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  if (v29 > 3)
                  {
                    v66 = "Invalid";
                  }

                  else
                  {
                    v66 = IOAccessoryGetPinStrForIndex_pinStr[v29];
                  }

                  *buf = v151;
                  v165 = v159;
                  v166 = 1024;
                  *v167 = v24;
                  *&v167[4] = 1024;
                  *&v167[6] = v29;
                  *&v167[10] = 2082;
                  *&v167[12] = v66;
                  v168 = 1024;
                  v169 = v23;
                  _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "(%d) EIS measurement #%d on %d (%{public}s) returned %#x", buf, 0x24u);
                }

                goto LABEL_80;
              }

              break;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              if (v29 > 3)
              {
                v39 = "Invalid";
              }

              else
              {
                v39 = IOAccessoryGetPinStrForIndex_pinStr[v29];
              }

              v150 = v39;
              v40 = [v158 halogenResult];
              [v158 getResultString];
              OUTLINED_FUNCTION_4();
              v166 = 1024;
              *v167 = v24;
              *&v167[4] = 1024;
              *&v167[6] = v29;
              *&v167[10] = 2082;
              *&v167[12] = v150;
              v168 = 1024;
              v169 = v40;
              v170 = 2114;
              v171 = v41;
              _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "(%d) EIS measurement #%d on %d (%{public}s) returned %d (%{public}@)", buf, 0x2Eu);
            }

            OUTLINED_FUNCTION_7();
            if (v42)
            {
              [v158 saveAsWav:@"/tmp/halogen.wav"];
            }

            v43 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              [v158 voltageGainCorrection];
              v150 = v44;
              [v158 currentGainCorrection];
              v149 = v45;
              [v158 currentPhaseCompensation];
              [v158 goertzelImpedance];
              [v158 goertzelPhase];
              [v158 compensatedImpedance];
              [v158 compensatedPhase];
              v46 = v26;
              v48 = v47;
              [v158 clippingScore];
              v50 = v49;
              [v158 resistanceInOhms];
              v52 = v51;
              [v158 capacitanceInNanoF];
              *buf = v153;
              OUTLINED_FUNCTION_1_2();
              *v167 = v150;
              *&v167[8] = v53;
              *&v167[10] = v149;
              OUTLINED_FUNCTION_15();
              v172 = v48;
              v26 = v46;
              v173 = v54;
              v174 = v50;
              v175 = v54;
              v176 = v52;
              v177 = v54;
              v178 = v55;
              _os_log_impl(&dword_2548F1000, v43, OS_LOG_TYPE_DEFAULT, "(%d) halogen measurement = [%.13f, %.13f, %.13f, %.13f, %.13f, %.13f, %.13f, %.13f, %.13f, %.13f]", buf, 0x6Cu);
            }

            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              [v158 precalVoltageSNR];
              v57 = v56;
              [v158 precalCurrentSNR];
              v59 = v58;
              [v158 calVoltageSNR];
              [v158 calCurrentSNR];
              [v158 measurementVoltageSNR];
              [v158 measurementCurrentSNR];
              [v158 measurementCondetSNR];
              *buf = v152;
              OUTLINED_FUNCTION_1_2();
              *v167 = v57;
              *&v167[8] = v60;
              *&v167[10] = v59;
              OUTLINED_FUNCTION_15();
              v172 = v61;
              _os_log_impl(&dword_2548F1000, v43, OS_LOG_TYPE_DEFAULT, "(%d) halogen SNR = [precal: %.13f, %.13f cal: %.13f, %.13f measurement: %.13f, %.13f condet: %.13f]", buf, 0x4Eu);
            }

            v62 = [v158 halogenResult];
            if (v62 <= 8)
            {
              if (((1 << v62) & 7) != 0)
              {
                v38 = 1;
LABEL_62:
                v63 = [a1 halogenMeasurement];
                v64 = [v63 halogenResult];
                if (v38)
                {
                  if (v64 && [v63 halogenResult] != 1 && objc_msgSend(v63, "halogenResult") != 2)
                  {
                    goto LABEL_66;
                  }

                  [v63 capacitanceInNanoF];
                  IOAccessoryAggDPostHistogramKey(@"com.apple.ioaccessorymanager.ldcm.eis.capacitance.histogram", a1, v69);
                  [v63 goertzelImpedance];
                  IOAccessoryAggDPostHistogramKey(@"com.apple.ioaccessorymanager.ldcm.eis.impedance.histogram", a1, v70 / v26);
                  [v63 goertzelPhase];
                  IOAccessoryAggDPostHistogramKey(@"com.apple.ioaccessorymanager.ldcm.eis.phase.histogram", a1, v71);
                  if ([v63 isLowerBoundViolation_goertzelImpedance])
                  {
                    IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.impedance.low", a1);
                  }

                  if ([v63 isUpperBoundViolation_goertzelImpedance])
                  {
                    IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.impedance.high", a1);
                  }

                  if ([v63 isLowerBoundViolation_goertzelPhase])
                  {
                    IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.phase.low", a1);
                  }

                  if ([v63 isUpperBoundViolation_goertzelPhase])
                  {
                    IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.phase.high", a1);
                  }

                  if (![v63 isBoundViolation_measurementCondetSNR])
                  {
LABEL_66:
                    v38 = 1;
LABEL_81:
                    v8 = v156;
                    goto LABEL_82;
                  }

                  v65 = @"com.apple.ioaccessorymanager.ldcm.eis.digitalnoise.fault";
LABEL_107:
                  v8 = v156;
                  IOAccessoryAggDPostScalarPrefixKey(v65, a1);
                  goto LABEL_82;
                }

                if (v64 == 3)
                {
                  v65 = @"com.apple.ioaccessorymanager.ldcm.eis.clipping";
                  goto LABEL_107;
                }

                if ([v63 halogenResult] == 4)
                {
                  if ([v63 isBoundViolation_currentGainCorrection])
                  {
                    IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.currentgaincorrection.outofrange", a1);
                  }

                  if ([v63 isBoundViolation_currentPhaseCompensation])
                  {
                    v65 = @"com.apple.ioaccessorymanager.ldcm.eis.currentphasecompensation.outofrange";
                    goto LABEL_107;
                  }
                }

                else
                {
                  if ([v63 halogenResult] == 5 || objc_msgSend(v63, "halogenResult") == 6)
                  {
                    v65 = @"com.apple.ioaccessorymanager.ldcm.eis.calibration.bad.snr";
                    goto LABEL_107;
                  }

                  if ([v63 halogenResult] == 8)
                  {
                    v65 = @"com.apple.ioaccessorymanager.ldcm.eis.measurement.bad.snr";
                    goto LABEL_107;
                  }
                }

LABEL_80:
                v38 = 0;
                goto LABEL_81;
              }

              if (((1 << v62) & 0x160) != 0)
              {
                OUTLINED_FUNCTION_33();
                if (v42)
                {
                  OUTLINED_FUNCTION_32();
                  if (v42)
                  {
                    OUTLINED_FUNCTION_7();
                    if (v42)
                    {
                      v38 = [gUserLdcmParams enableHalogenSnrTtr] != 0;
                      goto LABEL_62;
                    }
                  }
                }
              }
            }

            v38 = 0;
            goto LABEL_62;
          }
        }

LABEL_175:
        [objc_msgSend(a1 "cond")];
        [OUTLINED_FUNCTION_14() setIsMeasurementActive:?];
        [objc_msgSend(a1 "cond")];
        [objc_msgSend(a1 "cond")];
        goto LABEL_176;
      }
    }

    else
    {
      v8 = [a1 connectedAccessoryDigitalID];
      v9 = [a1 connectedAccessoryOrientation];
      if ([a1 justAttachedCase])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_46();
          OUTLINED_FUNCTION_9();
          _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
        }

        [OUTLINED_FUNCTION_14() setJustAttachedCase:?];
        goto LABEL_14;
      }
    }

    v20 = 0;
    goto LABEL_16;
  }

LABEL_176:
  result = connect;
  if (connect)
  {
    return IOServiceClose(connect);
  }

  return result;
}

uint64_t IOAccessoryStartVoltageEventMonitorLegacy(uint64_t result)
{
  v42 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = dlopen("/System/Library/PrivateFrameworks/AggregateDictionary.framework/AggregateDictionary", 4);
    if (v2)
    {
      v3 = v2;
      _MergedGlobals = dlsym(v2, "ADClientAddValueForScalarKey");
      qword_2812C42F0 = dlsym(v3, "ADClientClearDistributionKey");
      qword_2812C42F8 = dlsym(v3, "ADClientClearScalarKey");
      off_2812C4300 = dlsym(v3, "ADClientPushValueForDistributionKey");
      off_2812C4308 = dlsym(v3, "ADClientSetValueForScalarKey");
    }

    v4 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 4);
    if (v4)
    {
      off_2812C4310 = dlsym(v4, "logEventForAppleCare");
    }

    v5 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 4);
    if (v5)
    {
      qword_2812C4318 = dlsym(v5, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
    }

    result = objc_alloc_init(MEMORY[0x277CCAAF8]);
    gIOAMLogLock = result;
    if (result)
    {
      v6 = MGCopyAnswer();
      if (v6)
      {
        v7 = v6;
        gIsInternalBuild = CFEqual(v6, @"Internal") != 0;
        CFRelease(v7);
      }

      else
      {
        gIsInternalBuild = 0;
      }

      mainPort = *MEMORY[0x277CD28A0];
      result = IONotificationPortCreate(*MEMORY[0x277CD28A0]);
      gIOnotify = result;
      if (result)
      {
        result = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
        gDockState = result;
        if (result)
        {
          v8 = result;
          result = objc_alloc_init(IOAccessoryUserLdcmParamClass);
          gUserLdcmParams = result;
          if (result)
          {
            result = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
            gHalogenMeasurements = result;
            if (result)
            {
              v9 = result;
              result = [MEMORY[0x277CBEB38] dictionary];
              gDigitalIDTimeWetDict = result;
              if (result)
              {
                v10 = result;
                result = [MEMORY[0x277CBEB38] dictionary];
                gDigitalIDCountWetDict = result;
                if (result)
                {
                  v11 = result;
                  v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
                  if (!v12)
                  {
                    goto LABEL_42;
                  }

                  v13 = [v12 objectForKey:@"accyHealthDict"];
                  if (!v13)
                  {
                    goto LABEL_42;
                  }

                  v14 = v13;
                  v37 = 0;
                  v15 = MEMORY[0x277CCAAC8];
                  v16 = MEMORY[0x277CBEB98];
                  v17 = objc_opt_class();
                  v18 = objc_opt_class();
                  v19 = [v15 unarchivedObjectOfClasses:objc_msgSend(v16 fromData:"setWithObjects:" error:{v17, v18, objc_opt_class(), 0), v14, &v37}];
                  v20 = v37;
                  if (v37)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      v21 = [objc_msgSend(v20 "localizedDescription")];
                      *buf = 136315394;
                      v39 = "retrievePersistentAccyHealthDictionary";
                      v40 = 2080;
                      v41 = v21;
                      OUTLINED_FUNCTION_29(&dword_2548F1000, MEMORY[0x277D86220], v22, "%s err: %s", buf);
                      v20 = v37;
                    }
                  }

                  if (v19)
                  {
                    gAccyHealthDictionary = [v19 mutableCopy];
                    if (gAccyHealthDictionary)
                    {
                      goto LABEL_27;
                    }
                  }

                  else
                  {
LABEL_42:
                    if (gAccyHealthDictionary)
                    {
LABEL_27:
                      gAssetContext = 0;
                      byte_2812C44E0 = 0;
                      v24 = isDeviceTypeC_V3();
                      v25 = gIOnotify;
                      if (v24)
                      {
                        v26 = IOServiceMatching("IOPort");
                        v27 = IOServiceAddMatchingNotification(v25, "IOServiceFirstPublish", v26, IOAccessoryServiceMatchingCallbackTypeC, gIOnotify, &gIOiter);
                        IOAccessoryServiceMatchingCallbackTypeC(gIOnotify, gIOiter);
                      }

                      else
                      {
                        v28 = IOServiceMatching("AppleTriStarBuiltIn");
                        v27 = IOServiceAddMatchingNotification(v25, "IOServiceFirstPublish", v28, IOAccessoryServiceMatchingCallback, gIOnotify, &gIOiter);
                        IOAccessoryServiceMatchingCallback(gIOnotify, gIOiter);
                      }

                      if (v27)
                      {
                        return 0;
                      }

                      result = IONotificationPortGetRunLoopSource(gIOnotify);
                      if (result)
                      {
                        CFRunLoopAddSource(v1, result, *MEMORY[0x277CBF048]);
                        if ([gUserLdcmParams enableHalogenMitigationsAndUI] == 1)
                        {
                          qword_2812C4390 = 0;
                          qword_2812C43B0 = v1;
                          qword_2812C43B8 = 0;
                        }

                        if (!gBatteryStatusNotificationContext)
                        {
                          gBatteryStatusNotificationContext = IONotificationPortCreate(mainPort);
                          RunLoopSource = IONotificationPortGetRunLoopSource(gBatteryStatusNotificationContext);
                          if (RunLoopSource)
                          {
                            v30 = RunLoopSource;
                            Main = CFRunLoopGetMain();
                            CFRunLoopAddSource(Main, v30, *MEMORY[0x277CBF058]);
                            v32 = gBatteryStatusNotificationContext;
                            v33 = IOServiceMatching("IOPMPowerSource");
                            v34 = IOServiceAddMatchingNotification(v32, "IOServiceFirstMatch", v33, __powerBatteryMatch, &gBatteryStatusNotificationContext, &dword_2812C44D0);
                            if (v34)
                            {
                              v35 = v34;
                              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136315394;
                                v39 = "setupBatteryNotification";
                                v40 = 1024;
                                LODWORD(v41) = v35;
                                _os_log_error_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s IOServiceAddMatchingNotification falied: %08x", buf, 0x12u);
                              }
                            }

                            else
                            {
                              __powerBatteryMatch(&gBatteryStatusNotificationContext, dword_2812C44D0);
                            }
                          }
                        }

                        return 1;
                      }

                      return result;
                    }
                  }

                  gAccyHealthDictionary = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
                  v23 = gAccyHealthDictionary;
                  goto LABEL_27;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t IOAccessoryResetLifetimeDuration(io_registry_entry_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = IORegistryEntrySetCFProperty(a1, @"acc-mb-ld-lifetime", v3);
  CFRelease(v4);
  return v5;
}

uint64_t IOAccessoryRequestResetLifetimeDuration(int a1)
{
  existing = 0;
  v2 = *MEMORY[0x277CD28A0];
  v3 = IOServiceMatching("AppleTriStarBuiltIn");
  MatchingServices = IOServiceGetMatchingServices(v2, v3, &existing);
  if (MatchingServices)
  {
    v7 = MatchingServices;
  }

  else
  {
    while (1)
    {
      v5 = IOIteratorNext(existing);
      if (!v5)
      {
        break;
      }

      v6 = v5;
      v7 = IOAccessoryResetLifetimeDuration(v5, a1);
      IOObjectRelease(v6);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v7 = 0;
  }

LABEL_6:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v7;
}

void setDriverMitigationEnabled(int a1, io_service_t service, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  connect = 0;
  if (IOServiceOpen(service, *MEMORY[0x277D85F48], 0, &connect))
  {
    v5 = 0;
  }

  else
  {
    [gUserLdcmParams userBehaviorMask];
    [gUserLdcmParams userBehaviorMask];
    v5 = IOAccessoryManagerConfigureGoldbondMode() == 0;
  }

  if (connect)
  {
    IOServiceClose(connect);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v8 = a1;
    v9 = 1024;
    v10 = a3;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "(%d) ~~~ setDriverMitigationEnabled [%d] returned %d", buf, 0x14u);
  }
}

void IOAccessoryInterestNotificationCallback(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v4 = a2;
  __dst[17] = *MEMORY[0x277D85DE8];
  v5 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
  v6 = 0x277CCA000uLL;
  switch(a3)
  {
    case -536870896:
      if (gDockState)
      {
        PrimaryPort = IOAccessoryManagerGetPrimaryPort();
        if (PrimaryPort)
        {
          v62 = PrimaryPort;
          OUTLINED_FUNCTION_34();
          v63 = [OUTLINED_FUNCTION_11() objectForKey:?];
          if (v63)
          {
            objc_msgSend_dockStateValue(v63);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__dst[0]) = 67109120;
              HIDWORD(__dst[0]) = v62;
              OUTLINED_FUNCTION_19();
              _os_log_impl(v64, v65, v66, v67, v68, v69);
            }

            OUTLINED_FUNCTION_34();
            [OUTLINED_FUNCTION_11() removeObjectForKey:?];
            OUTLINED_FUNCTION_34();
            [OUTLINED_FUNCTION_11() removeObjectForKey:?];
          }
        }
      }

      goto LABEL_113;
    case -536870608:
      memset(v237, 170, 6);
      if (!gDockState)
      {
        goto LABEL_113;
      }

      v21 = a2;
      v22 = IOAccessoryManagerGetPrimaryPort();
      if (!v22)
      {
        goto LABEL_113;
      }

      v23 = v22;
      OUTLINED_FUNCTION_34();
      v24 = [OUTLINED_FUNCTION_6() objectForKey:?];
      if (!v24)
      {
        goto LABEL_113;
      }

      LODWORD(valuePtr) = -1431655766;
      objc_msgSend_dockStateValue(v24);
      memcpy(__src, __dst, 0x48uLL);
      v25 = __dst[9];
      v240[0] = *(&__dst[9] + 1);
      *(v240 + 15) = __dst[11];
      v241 = *(&__dst[12] + 2);
      *v242 = *(&__dst[14] + 2);
      *&v242[14] = __dst[16];
      if ((__dst[9] & 1) == 0)
      {
        goto LABEL_113;
      }

      if (__dst[12])
      {
        goto LABEL_113;
      }

      if ((__dst[12] & 0x100) != 0)
      {
        goto LABEL_113;
      }

      if (IOAccessoryManagerGetDigitalID())
      {
        goto LABEL_113;
      }

      v26 = *MEMORY[0x277CBECE8];
      CFProperty = IORegistryEntryCreateCFProperty(v21, @"IOAccessoryOrientation", *MEMORY[0x277CBECE8], 0);
      if (!CFProperty)
      {
        goto LABEL_113;
      }

      v28 = CFProperty;
      Value = CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
      CFRelease(v28);
      if (!Value)
      {
        goto LABEL_113;
      }

      v30 = IORegistryEntryCreateCFProperty(v21, @"IOAccessoryPowerHandshake", v26, 0);
      if (!v30)
      {
        goto LABEL_113;
      }

      v31 = v30;
      v32 = CFBooleanGetValue(v30);
      CFRelease(v31);
      v33 = v32 == 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__dst[0]) = 67109632;
        HIDWORD(__dst[0]) = v23;
        LOWORD(__dst[1]) = 1024;
        *(&__dst[1] + 2) = v32 == 0;
        HIWORD(__dst[1]) = 1024;
        LODWORD(__dst[2]) = v32 == 1;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "(%d) Event: PH update, failed = %d, success = %d", __dst, 0x14u);
      }

      if (v32)
      {
        v42 = 0;
      }

      else
      {
        v230 = valuePtr;
        v34 = OUTLINED_FUNCTION_24();
        v37 = CFStringCreateWithFormat(v34, v35, v36, v237[0], v237[1], v237[2], v237[3], v237[4], v237[5], v230);
        v38 = OUTLINED_FUNCTION_24();
        MutableCopy = CFStringCreateMutableCopy(v38, v39, v40);
        CFStringAppend(MutableCopy, v37);
        if (_MergedGlobals)
        {
          _MergedGlobals(MutableCopy, 1);
        }

        CFRelease(MutableCopy);
        CFRelease(v37);
        v42 = 1;
      }

      v43 = MEMORY[0x277CCAE60];
      memcpy(__dst, __src, 0x48uLL);
      LOBYTE(__dst[9]) = v25;
      *(&__dst[9] + 1) = v240[0];
      __dst[11] = *(v240 + 15);
      LOBYTE(__dst[12]) = v42;
      BYTE1(__dst[12]) = v33;
      *(&__dst[12] + 2) = v241;
      *(&__dst[14] + 2) = *v242;
      __dst[16] = *&v242[14];
      goto LABEL_111;
    case -469794799:
LABEL_10:
      memcpy(__dst, &xmmword_25491C2B8, 0x88uLL);
      v9 = [gUserLdcmParams userBehaviorMask];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__src[0]) = 136315138;
        *(__src + 4) = "IOAccessoryHandleDetach";
        OUTLINED_FUNCTION_21();
        _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      }

      v15 = IOAccessoryManagerGetPrimaryPort();
      if (!v15)
      {
        goto LABEL_113;
      }

      v16 = v15;
      OUTLINED_FUNCTION_34();
      v17 = (v9 >> 3) & 1;
      if ([OUTLINED_FUNCTION_25() objectForKey:?])
      {
        OUTLINED_FUNCTION_34();
        v18 = [OUTLINED_FUNCTION_6() objectForKey:?];
        v19 = v18;
        if (v18)
        {
          if ([v18 isReceptacleEmpty])
          {
            goto LABEL_16;
          }

          setDriverMitigationEnabled(v16, v4, v17);
          [OUTLINED_FUNCTION_36() setIsReceptacleEmpty:?];
          [OUTLINED_FUNCTION_36() setJustDetached:?];
          [OUTLINED_FUNCTION_42() setJustAttachedCase:?];
          if (([gUserLdcmParams userBehaviorMask] & 0x10) == 0 && !objc_msgSend(v19, "isWet"))
          {
            goto LABEL_16;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_41();
            OUTLINED_FUNCTION_19();
            _os_log_impl(v130, v131, v132, v133, v134, v135);
          }

          if (!digitalIdNumPinsFree([v19 connectedAccessoryDigitalID], __src) || (objc_msgSend(v19, "isDebugAccessoryConnected") & 1) != 0 || objc_msgSend(v19, "isBlacklistedAccessoryConnected"))
          {
            v20 = 1;
            [OUTLINED_FUNCTION_36() setIsMeasurementEnabled:?];

            v136 = [v19 eventBasedPDigitalID];
            [OUTLINED_FUNCTION_6() setConnectedAccessoryPDigitalID:?];
            [v19 eventBasedDigitalID];
            [OUTLINED_FUNCTION_6() setConnectedAccessoryDigitalID:?];
            [v19 setConnectedAccessoryOrientation:{objc_msgSend(v19, "eventBasedOrientation")}];
          }

          else
          {
LABEL_16:
            v20 = 0;
          }

          if ([v19 isTimestampValid] && objc_msgSend(v19, "isMeasurementEnabled") && objc_msgSend(v19, "didConfidentNotify"))
          {
            mach_continuous_time();
            if ([v19 accessoryConnectedWhileWet])
            {
              [v19 wetAccessoryAttachTimestamp];
            }

            else
            {
              [v19 wetDryTransitionTimestamp];
            }

            if (!dword_2812C4324)
            {
              mach_timebase_info(&dword_2812C4320);
              OUTLINED_FUNCTION_37();
              if (!v188)
              {
                mach_timebase_info(&dword_2812C4320);
              }
            }

            OUTLINED_FUNCTION_18();
            v191 = v189 / v190;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_41();
              LOWORD(__src[1]) = 2048;
              *(&__src[1] + 2) = v191;
              OUTLINED_FUNCTION_21();
              _os_log_impl(v192, v193, v194, v195, v196, 0x12u);
            }

            if (([v19 didHighConfidentNotify] & 1) == 0)
            {
              IOAccessoryAggDPostScalarKey(@"com.apple.ioaccessorymanager.ldcm.notification.highconfidentcount", v19);
              [OUTLINED_FUNCTION_36() setDidHighConfidentNotify:?];
            }

            if (([v19 didWetDuration] & 1) == 0)
            {
              IOAccessoryAggDPostHistogramKey(@"com.apple.ioaccessorymanager.ldcm.notification.wetduration", v19, v191);
              [OUTLINED_FUNCTION_36() setDidWetDuration:?];
            }
          }
        }

        else
        {
          v20 = 0;
        }

        mach_continuous_time();
        [OUTLINED_FUNCTION_6() setWetAccessoryAttachTimestamp:?];
        [OUTLINED_FUNCTION_42() setIsHeadsetConnected:?];
        [OUTLINED_FUNCTION_42() setIsDebugAccessoryConnected:?];
        [OUTLINED_FUNCTION_42() setIsBlacklistedAccessoryConnected:?];
        if ([gUserLdcmParams enableHalogenMitigationsAndUI] == 1 && gLiquidNotificationContext == 1)
        {
          CFUserNotificationCancel(qword_2812C43A0);
          gLiquidNotificationContext = 0;
          qword_2812C43B8 = 0;
          CFRunLoopRemoveSource(qword_2812C43B0, qword_2812C43A8, *MEMORY[0x277CBF048]);
          CFRelease(qword_2812C43A8);
          CFRelease(qword_2812C43A0);
          if ((v20 & 1) == 0)
          {
            goto LABEL_113;
          }
        }

        else if (!v20)
        {
          goto LABEL_113;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_41();
          OUTLINED_FUNCTION_19();
          _os_log_impl(v75, v76, v77, v78, v79, v80);
        }

        v81 = [v19 halogenMeasurementDispatchQueue];
        __src[0] = MEMORY[0x277D85DD0];
        __src[1] = 3221225472;
        __src[2] = __IOAccessoryHandleDetach_block_invoke;
        __src[3] = &unk_279793038;
        __src[4] = v19;
        dispatch_async(v81, __src);
        goto LABEL_113;
      }

      if (!gDockState)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_34();
      v70 = [OUTLINED_FUNCTION_6() objectForKey:?];
      if (!v70)
      {
        goto LABEL_113;
      }

      objc_msgSend_dockStateValue(v70);
      if (LOBYTE(__dst[9]) == 1)
      {
        if (enableVoltageEventMonitorModeAppleCareLogging == 1 && (IOAccessoryManagerGetType() & 0x600) != 0)
        {
          IOAccessoryAppleCareLoggingForNonVoltageEvents("accessoryUnplug", &__dst[4], v16);
        }

        v137 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        v138 = __dst[0];
        if (v137)
        {
          OUTLINED_FUNCTION_41();
          LOWORD(__src[1]) = 1024;
          *(&__src[1] + 2) = v138;
          HIWORD(__src[1]) = 1024;
          LODWORD(__src[2]) = 1;
          OUTLINED_FUNCTION_21();
          _os_log_impl(v139, v140, v141, v142, v143, 0x14u);
        }

        if (!v138)
        {
          evaluateFalseDetectPreventionDry(__dst, 0);
        }

        setDriverMitigationEnabled(v16, v4, v17);
      }

      LOBYTE(__dst[9]) = 0;
      LOWORD(__dst[12]) = 0;
      v71 = BYTE1(__dst[9]);
      if (BYTE1(__dst[9]))
      {
        v71 = 0;
      }

      BYTE1(__dst[9]) = v71;
      v43 = MEMORY[0x277CCAE60];
      memcpy(__src, __dst, 0x88uLL);
      v72 = __src;
LABEL_112:
      -[__objc2_class setObject:forKey:](v5[30].isa, "setObject:forKey:", [v43 valueWithDockState:v72], OUTLINED_FUNCTION_34());
      goto LABEL_113;
    case -469794789:
      v44 = a4;
      if (!a4)
      {
        goto LABEL_113;
      }

      if (!gDockState)
      {
        goto LABEL_113;
      }

      v45 = *a4;
      [MEMORY[0x277CCABB0] numberWithInt:v45];
      if (![OUTLINED_FUNCTION_25() objectForKey:?])
      {
        goto LABEL_113;
      }

      v236 = v44;
      if (enableVoltageEventMonitorModeConsole == 1)
      {
        v46 = *(v44 + 12);
        if (v46 > 3)
        {
          v47 = "Invalid";
        }

        else
        {
          v47 = IOAccessoryGetEventCodeForIndex_eventCodeStr[v46];
        }

        v48 = [MEMORY[0x277CCAB68] stringWithFormat:@" (%d) Event: %s, TimeStamp = %llu, Vhi = %d, CumulativeTimeVhi = %d sec, ", v45, v47, *(v44 + 1), *(v44 + 13), *(v44 + 46)];
        v49 = [MEMORY[0x277CCAB68] stringWithFormat:@" (%d) Event: %s, Vhi = %d, CumulativeTimeVhi = %d sec, ", v45, v47, *(v44 + 13), *(v44 + 46)];
        OUTLINED_FUNCTION_22();
        OUTLINED_FUNCTION_26();
        [v50 stringWithFormat:@" DigitalID = [%02x %02x %02x %02x %02x %02x], ORIENT = %s, PH = %s, ACC_PWR = %s", v51];
        [OUTLINED_FUNCTION_25() appendString:?];
        OUTLINED_FUNCTION_22();
        OUTLINED_FUNCTION_26();
        [v52 stringWithFormat:@" DigitalID = [%02x %02x %02x %02x %02x %02x], ORIENT = %s, PH = %s, ACC_PWR = %s", v53];
        [OUTLINED_FUNCTION_6() appendString:?];
        v55 = 0;
        v56 = v44 + 5;
        do
        {
          if (*(v56 + v55))
          {
            v57 = *(v56 + v55 + 6);
            if (v57 > 1)
            {
              v58 = "Invalid";
            }

            else
            {
              v58 = IOAccessoryGetMeasStrForIndex_measStr[v57];
            }

            LOWORD(v54) = *(v56 + v55 + 6);
            v59 = v54 / 1000.0;
            v60 = IOAccessoryGetPinStrForIndex_pinStr[v55];
            [MEMORY[0x277CCACA8] stringWithFormat:@", %s(%s) = %.3fV", v58, v60, *&v59];
            [OUTLINED_FUNCTION_25() appendString:?];
            [MEMORY[0x277CCACA8] stringWithFormat:@", %s(%s) = .3%fV", v58, v60, *&v59];
            [OUTLINED_FUNCTION_6() appendString:?];
            v44 = v236;
          }

          ++v55;
        }

        while (v55 != 4);
        if (os_log_type_enabled(0, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__dst[0]) = 138412290;
          *(__dst + 4) = v48;
          OUTLINED_FUNCTION_30(&dword_2548F1000, 0, v74, "%@", __dst);
          v6 = 0x277CCA000;
          v5 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
        }

        else
        {
          v6 = 0x277CCA000uLL;
          v5 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
        }
      }

      else
      {
        v49 = 0;
      }

      if (gPrevLog)
      {

        gPrevLog = 0;
      }

      if (v49)
      {
        gPrevLog = [MEMORY[0x277CCACA8] stringWithString:v49];
        v82 = gPrevLog;
      }

      IOAccessoryManagerGetType();
      if (enableVoltageEventMonitorModeAppleCareLogging == 1)
      {
        v83 = [MEMORY[0x277CBEB18] array];
        if (enableVoltageEventMonitorModeAppleCareLogging == 1)
        {
          v84 = *(v44 + 12);
          if (v84 <= 2)
          {
            v85 = v83;
            v86 = off_2797932B8[v84];
            [*(v6 + 2992) numberWithInt:100];
            [OUTLINED_FUNCTION_6() addObject:?];
            [v85 addObject:v86];
            for (i = 0; i != 4; ++i)
            {
              if (*(v44 + i + 20))
              {
                LOWORD(v87) = *(v44 + i + 16);
                v89 = v87 / 1000.0;
              }

              else
              {
                v89 = 0.0;
              }

              [MEMORY[0x277CCACA8] stringWithFormat:@"%s", IOAccessoryGetPinStrForIndex_pinStr[i]];
              [OUTLINED_FUNCTION_6() addObject:?];
              [*(v6 + 2992) numberWithDouble:v89];
              [OUTLINED_FUNCTION_6() addObject:?];
            }

            OUTLINED_FUNCTION_35();
            [v90 stringWithFormat:@"%02x %02x %02x %02x %02x %02x"];
            [OUTLINED_FUNCTION_6() addObject:?];
            v44 = v236;
            [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", *v236];
            [OUTLINED_FUNCTION_6() addObject:?];
            [*(v6 + 2992) numberWithBool:0];
            [OUTLINED_FUNCTION_6() addObject:?];
            [*(v6 + 2992) numberWithBool:0];
            [OUTLINED_FUNCTION_6() addObject:?];
            [*(v6 + 2992) numberWithBool:*(v236 + 44) != 0];
            [OUTLINED_FUNCTION_6() addObject:?];
            if (gAppleCareLogArray)
            {
              v91 = [v85 isEqualToArray:?];

              gAppleCareLogArray = 0;
            }

            else
            {
              v91 = 0;
            }

            gAppleCareLogArray = [MEMORY[0x277CBEA60] arrayWithArray:v85];
            v92 = gAppleCareLogArray;
            if (off_2812C4310)
            {
              if ((v91 & 1) == 0)
              {
                off_2812C4310(v85);
              }
            }
          }
        }
      }

      v93 = *(v44 + 12);
      if (v93 != 3)
      {
        if (v93 != 2)
        {
          goto LABEL_113;
        }

        if (!v5[30].isa)
        {
          goto LABEL_113;
        }

        v94 = *v44;
        [*(v6 + 2992) numberWithInt:*v44];
        v95 = [OUTLINED_FUNCTION_25() objectForKey:?];
        if (!v95)
        {
          goto LABEL_113;
        }

        v96 = v95;
        memcpy(__dst, &xmmword_25491C2B8, 0x88uLL);
        objc_msgSend_dockStateValue(v96);
        memcpy(__dst, __src, 0x88uLL);
        connect[0] = 0;
        *&v97 = 0xAAAAAAAAAAAAAAAALL;
        *(&v97 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v238[13] = v97;
        *&v237[16] = v97;
        *v238 = v97;
        *v237 = v97;
        if (HIDWORD(__dst[15]))
        {
          --HIDWORD(__dst[15]);
        }

        service = v4;
        v98 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
        v233 = IOServiceOpen(v4, *MEMORY[0x277D85F48], 0, connect);
        v234 = v94;
        if (v233)
        {
          v231 = 0;
          goto LABEL_255;
        }

        BYTE2(v241) = -86;
        v99 = memcmp(v44 + 14, &updateLdcmStateWithEventReport_zeros, 6uLL);
        v100 = v99;
        v101 = *(v44 + 44);
        if (*(v44 + 44))
        {
          v102 = 2 * (*(v44 + 51) == 2);
        }

        else
        {
          v102 = 0;
        }

        if (v99)
        {
          v108 = &gLdcmParams + 12 * !isChargingCableAttached(v44 + 14);
          v109 = (v108 + 24);
          v110 = (v108 + 48);
        }

        else
        {
          v109 = &unk_2812C4454;
          v108 = &unk_2812C4448;
          v110 = &unk_2812C4460;
        }

        v111 = 0;
        v112 = 0;
        v113 = 0;
        v114 = word_2812C446C;
        v115 = LOBYTE(__dst[14]);
        LOWORD(v241) = 257;
        v116 = 1;
        v117 = 16;
        v118 = 1;
        do
        {
          v119 = (v117 - 16) >> 1;
          if (*(v44 + v117 + 4))
          {
            v120 = *(v44 + v117);
            v121 = (v102 + v117 - 16) & 3;
            v122 = v120 < v109[v121];
            if (v120 >= *&v108[2 * v121])
            {
              v111 = 1;
            }

            else
            {
              v242[v119 - 16] = 0;
            }

            ++v113;
            v116 &= v122;
            v118 &= v120 < v114;
            if (v120 >= v110[v121])
            {
              ++v112;
            }
          }

          else
          {
            v242[v119 - 16] = 0;
          }

          ++v117;
        }

        while (v117 != 20);
        v232 = v115;
        if (v113)
        {
          if (v100)
          {
            v123 = isChargingCableAttached(v44 + 14);
            v124 = 0;
            if (!v101 && v123)
            {
              v124 = *(v44 + 52) == 0;
            }
          }

          else
          {
            v124 = 0;
          }

          if ((v115 & 1) != 0 || v124 || !((v241 | BYTE1(v241)) & 1 | (v113 == 1) & v111))
          {
            LODWORD(__dst[15]) = 0;
            if ((v115 & v116) != 1)
            {
              v231 = 0;
              HIDWORD(__dst[14]) = 0;
              goto LABEL_167;
            }

            if (++HIDWORD(__dst[14]) >= *&algn_2812C446E[4])
            {
              v231 = 0;
              LOBYTE(__dst[14]) = 0;
              goto LABEL_167;
            }

            if (!IOAccessoryManagerRequestLdcmMeasurement())
            {
              v231 = *&algn_2812C446E[12];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
LABEL_144:
                OUTLINED_FUNCTION_10();
                OUTLINED_FUNCTION_21();
                _os_log_impl(v125, v126, v127, v128, v129, 0x1Eu);
              }

LABEL_167:
              v144 = v241;
              v145 = BYTE1(v241);
              if (*(v44 + 53) != -1)
              {
                goto LABEL_170;
              }

              __src[0] = 0xAAAAAAAAAAAAAAAALL;
              if (!IOAccessoryManagerCopyDeviceInfo())
              {
                CFNumberGetValue(__src[0], kCFNumberSInt64Type, v44 + 53);
                CFRelease(__src[0]);
LABEL_170:
                if (gAccyHealthDictionary)
                {
                  v146 = v144 | v145 | (v113 == 1) & v111;
                  v147 = [MEMORY[0x277CCACA8] stringWithFormat:@"%012llx_%1d_%012llx", (*(v44 + 14) << 40) | (*(v44 + 15) << 32) | (*(v44 + 16) << 24) | (*(v44 + 17) << 16) | (*(v44 + 18) << 8) | *(v44 + 19), *(v44 + 51), *(v44 + 53)];
                  v148 = [gAccyHealthDictionary objectForKey:v147];
                  v149 = v148;
                  if (!v148)
                  {
                    v149 = objc_alloc_init(IOAccessoryLdcmHealthClass);
                    v197 = v149;
                    trimAccyHealthDictionary();
                  }

                  [(IOAccessoryLdcmHealthClass *)v149 setLastSeenTimestamp:*(v44 + 1)];
                  [(IOAccessoryLdcmHealthClass *)v149 setLeakagePassedCount:[(IOAccessoryLdcmHealthClass *)v149 leakagePassedCount]+ (v118 & 1)];
                  [(IOAccessoryLdcmHealthClass *)v149 setDryCount:[(IOAccessoryLdcmHealthClass *)v149 dryCount]+ (v116 & 1)];
                  [(IOAccessoryLdcmHealthClass *)v149 setWetCount:[(IOAccessoryLdcmHealthClass *)v149 wetCount]+ (v146 & 1)];
                  [(IOAccessoryLdcmHealthClass *)v149 setOverVoltageCount:[(IOAccessoryLdcmHealthClass *)v149 overVoltageCount]+ v112];
                  v150 = [(IOAccessoryLdcmHealthClass *)v149 isHealthy];
                  if (([gUserLdcmParams fdpBehaviorMask] & 1) == 0)
                  {
                    [(IOAccessoryLdcmHealthClass *)v149 setIsHealthy:1];
                  }

                  v98 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
                  if (([gUserLdcmParams fdpBehaviorMask] & 1) != 0 && (objc_msgSend(gUserLdcmParams, "fdpBehaviorMask") & 2) != 0)
                  {
                    [(IOAccessoryLdcmHealthClass *)v149 setIsHealthy:[(IOAccessoryLdcmHealthClass *)v149 leakagePassedCount]!= 0];
                  }

                  if (v112)
                  {
                    [(IOAccessoryLdcmHealthClass *)v149 setOverVoltageTimestamp:[(IOAccessoryLdcmHealthClass *)v149 lastSeenTimestamp]];
                    if (([gUserLdcmParams fdpBehaviorMask] & 1) != 0 && (objc_msgSend(gUserLdcmParams, "fdpBehaviorMask") & 4) != 0)
                    {
                      [(IOAccessoryLdcmHealthClass *)v149 setIsHealthy:0];
                      [(IOAccessoryLdcmHealthClass *)v149 setLeakagePassedCount:0];
                    }
                  }

                  [gAccyHealthDictionary setObject:v149 forKey:v147];
                  v151 = [(IOAccessoryLdcmHealthClass *)v149 isHealthy];
                  if (!v148 || v150 != v151)
                  {
                    commitPersistentAccyHealthDictionary();
                    v152 = &OBJC_IVAR___IOPortLDCMManagerV4__wetPollingInterval;
                    if (![(IOAccessoryLdcmHealthClass *)v149 isHealthy])
                    {
                      IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.ldcm.notification.badaccessorycount", v44);
                    }

                    dbgShowAccyHealthDictionary();
LABEL_185:
                    v153 = LOBYTE(__dst[14]);
                    appendEventToHistory(__dst[13], v44);
                    if (v153 != v232)
                    {
                      IOAccessoryManagerSetVoltageDetected();
                      v154 = *(v44 + 1);
                      *v237 = *v44;
                      *&v237[16] = v154;
                      *v238 = *(v44 + 2);
                      *&v238[13] = *(v44 + 45);
                      v237[12] = LOBYTE(__dst[14]) ^ 1;
                      v237[13] = __dst[14];
                      appendEventToHistory(__dst[13], v237);
                      if (LOBYTE(__dst[14]) != 1)
                      {
                        v166 = *v237;
                        v167 = __dst[0];
                        if (LODWORD(__dst[0]) != 1)
                        {
                          HIDWORD(__dst[15]) = 0;
                          LODWORD(__dst[0]) = 1;
                          ++dword_27F61282C;
                          *(&__dst[1] + 4) = *&v237[4];
                          __dst[10] = CFAbsoluteTimeGetCurrent();
                          IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.voltage.averagetime", v237);
                          if (gEnableTimeToDryPopup == 1)
                          {
                            OUTLINED_FUNCTION_7();
                            if (v205)
                            {
                              CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, [MEMORY[0x277CCACA8] stringWithFormat:@"Time To Dry\n %02llu:%02llu:%02llu", (*&__dst[10] - *&__dst[11]) / 0xE10, (*&__dst[10] - *&__dst[11]) / 0x3C % 0x3C, (*&__dst[10] - *&__dst[11]) % 0x3C], 0, @"Ok", 0, 0, 0);
                            }
                          }
                        }

                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          __src[0] = __PAIR64__(v166, 67109888);
                          LOWORD(__src[1]) = 1024;
                          *(&__src[1] + 2) = v167;
                          HIWORD(__src[1]) = 1024;
                          LODWORD(__src[2]) = __dst[0];
                          WORD2(__src[2]) = 1024;
                          *(&__src[2] + 6) = LOBYTE(__dst[9]);
                          OUTLINED_FUNCTION_21();
                          _os_log_impl(v168, v169, v170, v171, v172, 0x1Au);
                        }

                        dbgShowAccyHealthDictionary();
                        goto LABEL_211;
                      }

                      IOAccessoryManagerGetType();
                      v155 = *v237;
                      v156 = __dst[0];
                      if (LODWORD(__dst[0]))
                      {
                        v157 = *(v44 + 14) == 4 && *(v44 + 15) == 241 && !*(v44 + 16) && !*(v44 + 17) && !*(v44 + 18) && *(v44 + 19) == 0;
                        v158 = v237[14];
                        v159 = v238[18];
                        HIDWORD(__dst[15]) = 11;
                        LODWORD(__dst[0]) = 0;
                        ++stats;
                        v160 = *&v237[4];
                        *(__dst + 4) = *&v237[4];
                        __dst[11] = CFAbsoluteTimeGetCurrent();
                        IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.voltage.count", v237);
                        __dst[3] = (v158 << 40) | (v237[15] << 32) | (v237[16] << 24) | (v237[17] << 16) | (v237[18] << 8) | v237[19];
                        LODWORD(__dst[4]) = *&v237[14];
                        WORD2(__dst[4]) = *&v237[18];
                        if (v157)
                        {
                          IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.voltage.headset", v237);
                          if (v159 && (v158 & 0x20) == 0 && __dst[3])
                          {
                            goto LABEL_197;
                          }
                        }

                        else if ((v158 & 0x20) == 0 && (v158 << 40) | (v237[15] << 32) | (v237[16] << 24) | (v237[17] << 16) | (v237[18] << 8) | v237[19])
                        {
LABEL_197:
                          IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.ldcm.notification.count", v237);
                          if (evaluateAccyHealthDictionary(__dst[3], v237))
                          {
                            __dst[5] = __dst[3];
                            LOBYTE(__dst[6]) = v238[19];
                            __dst[7] = *&v238[21];
                            __dst[8] = v160;
                          }

                          else
                          {
                            setDriverMitigationEnabled(v155, service, 0);
                          }

                          if ((__dst[9] & 0x100) == 0)
                          {
                            BYTE1(__dst[9]) = 1;
                            *(v152 + 1956) = 1;
                          }
                        }
                      }

                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        LODWORD(__src[0]) = 67111936;
                        HIDWORD(__src[0]) = v155;
                        LOWORD(__src[1]) = 1024;
                        *(&__src[1] + 2) = v156;
                        HIWORD(__src[1]) = 1024;
                        LODWORD(__src[2]) = __dst[0];
                        WORD2(__src[2]) = 1024;
                        *(&__src[2] + 6) = LOBYTE(__dst[9]);
                        WORD1(__src[3]) = 1024;
                        HIDWORD(__src[3]) = stats;
                        LOWORD(__src[4]) = 1024;
                        *(&__src[4] + 2) = v237[14];
                        HIWORD(__src[4]) = 1024;
                        LODWORD(__src[5]) = v237[15];
                        WORD2(__src[5]) = 1024;
                        *(&__src[5] + 6) = v237[16];
                        WORD1(__src[6]) = 1024;
                        HIDWORD(__src[6]) = v237[17];
                        LOWORD(__src[7]) = 1024;
                        *(&__src[7] + 2) = v237[18];
                        HIWORD(__src[7]) = 1024;
                        LODWORD(__src[8]) = v237[19];
                        WORD2(__src[8]) = 1024;
                        *(&__src[8] + 6) = v238[18];
                        OUTLINED_FUNCTION_21();
                        _os_log_impl(v161, v162, v163, v164, v165, 0x4Au);
                      }

LABEL_211:
                      v173 = 1;
                      goto LABEL_212;
                    }

LABEL_255:
                    v173 = 0;
LABEL_212:
                    if (HIDWORD(__dst[15]) && !v231)
                    {
                      IOAccessoryManagerRequestLdcmMeasurement();
                    }

                    if (connect[0])
                    {
                      IOServiceClose(connect[0]);
                    }

                    if (LOBYTE(__dst[14]) == 1)
                    {
                      if ((__dst[16] & 0x100000000) == 0 && __dst[5])
                      {
                        OUTLINED_FUNCTION_17();
                        v175 = [v98[31].cache objectForKey:{objc_msgSend(v174, "stringWithFormat:", @"%012llx_%1d_%012llx"}];
                        if (v175 && (v176 = v175, v177 = __dst[8], v177 <= [v175 overVoltageTimestamp]))
                        {
                          v178 = __dst[8];
                          v179 = dword_2812C4324;
                          if (!dword_2812C4324)
                          {
                            mach_timebase_info(&dword_2812C4320);
                            v179 = dword_2812C4324;
                          }

                          v180 = dword_2812C4320;
                          v181 = [v176 overVoltageTimestamp];
                          v182 = dword_2812C4324;
                          if (!dword_2812C4324)
                          {
                            mach_timebase_info(&dword_2812C4320);
                            v182 = dword_2812C4324;
                          }

                          v183 = dword_2812C4320;
                          OUTLINED_FUNCTION_31();
                          v185 = CFStringCreateWithFormat(v184, 0, @".%012llx.%1d");
                          if (v185)
                          {
                            v186 = v185;
                            IOAccessoryAggDCollectDataWithInterval(@"com.apple.ioaccessorymanager.ldcm.notification.overvoltage", v185, (v181 * v183 / v182 - v178 * v180 / v179) / 0x3B9ACA00);
                            BYTE4(__dst[16]) = 1;
                            CFRelease(v186);
                          }
                        }

                        else
                        {
                          v245 = 0;
                          valuePtr = 0;
                          OUTLINED_FUNCTION_17();
                          if ([v98[31].cache objectForKey:{objc_msgSend(v198, "stringWithFormat:", @"%012llx_%1d_%012llx"}])
                          {
                            *&v199 = 0xAAAAAAAAAAAAAAAALL;
                            *(&v199 + 1) = 0xAAAAAAAAAAAAAAAALL;
                            *&v242[32] = v199;
                            v243 = v199;
                            *v242 = v199;
                            *&v242[16] = v199;
                            v241 = v199;
                            v200 = [__dst[13] reverseObjectEnumerator];
                            memset(v240, 0, sizeof(v240));
                            v201 = [v200 countByEnumeratingWithState:v240 objects:__src count:16];
                            if (v201)
                            {
                              v202 = v201;
                              v203 = **&v240[1];
                              do
                              {
                                v204 = 0;
LABEL_260:
                                if (**&v240[1] != v203)
                                {
                                  objc_enumerationMutation(v200);
                                }

                                [*(*(&v240[0] + 1) + 8 * v204) getBytes:&v241 length:80];
                                v205 = __dst[7] == *&v242[37] && BYTE12(v241) == 2;
                                v44 = v236;
                                if (!v205 || isChargingCableAttached(v236 + 14) && !v242[36])
                                {
                                  break;
                                }

                                for (j = 0; j != 4; ++j)
                                {
                                  if (v242[j + 4])
                                  {
                                    v207 = *&v242[2 * j + 16];
                                    v208 = *(&valuePtr + j) - v207;
                                    *(&valuePtr + j) = v207;
                                    if ((v208 & 0x8000) == 0)
                                    {
                                      v209 = v208;
                                      if ([gUserLdcmParams maxUpFluctuationMv] <= v208)
                                      {
                                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                        {
                                          connect[1] = 67109120;
                                          connect[2] = v209;
                                          OUTLINED_FUNCTION_19();
                                          _os_log_impl(v212, v213, v214, v215, v216, v217);
                                        }

                                        if (__dst[8] <= *(v236 + 1))
                                        {
                                          if (!dword_2812C4324)
                                          {
                                            mach_timebase_info(&dword_2812C4320);
                                            if (!dword_2812C4324)
                                            {
                                              mach_timebase_info(&dword_2812C4320);
                                            }
                                          }

                                          OUTLINED_FUNCTION_31();
                                          v219 = CFStringCreateWithFormat(v218, 0, @".%012llx.%1d");
                                          if (v219)
                                          {
                                            v220 = v219;
                                            OUTLINED_FUNCTION_18();
                                            IOAccessoryAggDCollectDataWithInterval(@"com.apple.ioaccessorymanager.ldcm.notification.voltagefluctuation", v220, v221 / v222);
                                            CFRelease(v220);
                                            BYTE4(__dst[16]) = 1;
                                          }
                                        }

                                        v44 = v236;
                                        goto LABEL_230;
                                      }
                                    }
                                  }
                                }

                                if (++v204 != v202)
                                {
                                  goto LABEL_260;
                                }

                                v202 = [v200 countByEnumeratingWithState:v240 objects:__src count:16];
                                v44 = v236;
                              }

                              while (v202);
                            }
                          }

                          OUTLINED_FUNCTION_17();
                          v211 = [v210 stringWithFormat:@"%012llx_%1d_%012llx"];
                          if ([gAccyHealthDictionary objectForKey:v211] && __dst[8] <= *(v44 + 1))
                          {
                            if (dword_2812C4324)
                            {
                              OUTLINED_FUNCTION_37();
                            }

                            else
                            {
                              mach_timebase_info(&dword_2812C4320);
                              OUTLINED_FUNCTION_37();
                              if (!v223)
                              {
                                mach_timebase_info(&dword_2812C4320);
                              }
                            }

                            OUTLINED_FUNCTION_18();
                            v226 = v224 / v225;
                            v44 = v236;
                            if (v224 / v225 >= [gUserLdcmParams maxVhiDurationSec])
                            {
                              OUTLINED_FUNCTION_31();
                              v228 = CFStringCreateWithFormat(v227, 0, @".%012llx.%1d");
                              if (v228)
                              {
                                v229 = v228;
                                IOAccessoryAggDCollectDataWithInterval(@"com.apple.ioaccessorymanager.ldcm.notification.wettoolong", v228, v226);
                                CFRelease(v229);
                                BYTE4(__dst[16]) = 1;
                              }
                            }
                          }
                        }
                      }
                    }

                    else if (v173)
                    {
                      evaluateFalseDetectPreventionDry(__dst, v44);
                    }

LABEL_230:
                    if (!v233)
                    {
                      memcpy(__src, __dst, 0x88uLL);
                      v187 = [MEMORY[0x277CCAE60] valueWithDockState:__src];
                      [gDockState setObject:v187 forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v234)}];
                      IOAccessoryAggDCollectData(@"histogramVoltage", v44);
                      IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.voltage.cumulativetime", v44);
                    }

                    goto LABEL_113;
                  }
                }

                else
                {
                  v98 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
                }

LABEL_184:
                v152 = &OBJC_IVAR___IOPortLDCMManagerV4__wetPollingInterval;
                goto LABEL_185;
              }

LABEL_253:
              v98 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
              goto LABEL_184;
            }
          }

          else
          {
            HIDWORD(__dst[14]) = 0;
            if (++LODWORD(__dst[15]) >= *algn_2812C446E)
            {
              v231 = 0;
              LOBYTE(__dst[14]) = 1;
              goto LABEL_167;
            }

            if (!IOAccessoryManagerRequestLdcmMeasurement())
            {
              v231 = *&algn_2812C446E[8];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_144;
              }

              goto LABEL_167;
            }
          }
        }

        v231 = 0;
        goto LABEL_253;
      }

      if (!v5[30].isa)
      {
        goto LABEL_113;
      }

      v103 = *v44;
      OUTLINED_FUNCTION_34();
      v104 = [OUTLINED_FUNCTION_11() objectForKey:?];
      if (!v104)
      {
        goto LABEL_113;
      }

      objc_msgSend_dockStateValue(v104);
      v105 = __dst[0];
      memcpy(__src, __dst + 4, 0x44uLL);
      v106 = __dst[9];
      v107 = BYTE1(__dst[9]);
      v241 = *(&__dst[9] + 2);
      *v242 = *(&__dst[11] + 2);
      *&v242[16] = *(&__dst[13] + 2);
      *&v242[30] = *&__dst[15];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__dst[0]) = 67109632;
        HIDWORD(__dst[0]) = v103;
        LOWORD(__dst[1]) = 1024;
        *(&__dst[1] + 2) = v105;
        HIWORD(__dst[1]) = 1024;
        LODWORD(__dst[2]) = v106 & 1;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "(%d) Event: GoldbondDisabledMbHeadset, CurrentVoltageState = %d, gPlug = %d", __dst, 0x14u);
      }

      if (v107)
      {
        goto LABEL_113;
      }

      gGiveUserRadarOption = 1;
      v43 = MEMORY[0x277CCAE60];
      LODWORD(__dst[0]) = v105;
      memcpy(__dst + 4, __src, 0x44uLL);
      LOBYTE(__dst[9]) = v106;
      BYTE1(__dst[9]) = 1;
      *(&__dst[9] + 2) = v241;
      *(&__dst[11] + 2) = *v242;
      *(&__dst[13] + 2) = *&v242[16];
      *&__dst[15] = *&v242[30];
LABEL_111:
      v72 = __dst;
      goto LABEL_112;
    case -469794726:
      goto LABEL_10;
  }

  if (a3 != -469794725)
  {
LABEL_113:
    OUTLINED_FUNCTION_49();
    return;
  }

  OUTLINED_FUNCTION_49();

  IOAccessoryHandleAttach(v7);
}

void IOAccessoryHandleAttach(uint64_t a1)
{
  v106[9] = *MEMORY[0x277D85DE8];
  v94 = -21846;
  v93 = -1431655766;
  memset(&v106[4], 170, 36);
  v104 = *(&xmmword_25491C2F8 + 10);
  v105 = unk_25491C312;
  memset(v106, 170, 30);
  v91 = 0xAAAAAAAAAAAAAAAALL;
  memset(number, 170, 15);
  connect = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    valuePtr = 136315138;
    *v96 = "IOAccessoryHandleAttach";
    OUTLINED_FUNCTION_23();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  PrimaryPort = IOAccessoryManagerGetPrimaryPort();
  if (PrimaryPort)
  {
    [MEMORY[0x277CCABB0] numberWithInt:PrimaryPort];
    v7 = [OUTLINED_FUNCTION_11() objectForKey:?];
    if (!IOAccessoryManagerGetDigitalID())
    {
      OUTLINED_FUNCTION_0_3();
      v10 = v8 | v9;
      if (v8 | v9)
      {
        v11 = digitalIdNumPinsFree(v8 | v9, &valuePtr);
        valuePtr = 0;
        CFProperty = IORegistryEntryCreateCFProperty(a1, @"IOAccessoryOrientation", *MEMORY[0x277CBECE8], 0);
        if (CFProperty)
        {
          v13 = CFProperty;
          CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
          CFRelease(v13);
          v85 = valuePtr;
        }

        else
        {
          v85 = 0;
        }

        if (v7)
        {
          v14 = [v7 isWet];
          v84 = [v7 isTimestampValid];
          [OUTLINED_FUNCTION_28() setIsReceptacleEmpty:?];
          [OUTLINED_FUNCTION_28() setJustDetached:?];
          mach_continuous_time();
          [OUTLINED_FUNCTION_11() setWetAccessoryAttachTimestamp:?];
          v83 = [v7 halogenMeasurement];
          if ([v7 isMeasurementEnabled])
          {
            [objc_msgSend(v7 "cond")];
            v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
            if ([v7 isMeasurementActive])
            {
              do
              {
                v16 = [objc_msgSend(v7 "cond")];
              }

              while ([v7 isMeasurementActive] && (v16 & 1) != 0);
              if ((v16 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(valuePtr) = 0;
                OUTLINED_FUNCTION_23();
                _os_log_impl(v17, v18, v19, v20, v21, 2u);
              }
            }

            halogenMeasurementCleanup(v7);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              valuePtr = 136315138;
              *v96 = "halogenMeasurementCleanupSafe";
              OUTLINED_FUNCTION_23();
              _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
            }

            dispatch_source_set_timer([v7 timer], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
            [OUTLINED_FUNCTION_28() setAttachDelayTimerRunning:?];
            [objc_msgSend(v7 "cond")];
            v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v11)
            {
              if (v27)
              {
                goto LABEL_37;
              }
            }

            else if (v27)
            {
LABEL_37:
              OUTLINED_FUNCTION_20();
              OUTLINED_FUNCTION_19();
              _os_log_impl(v46, v47, v48, v49, v50, v51);
            }
          }

          if (IOServiceOpen(a1, *MEMORY[0x277D85F48], 0, &connect))
          {
            goto LABEL_72;
          }

          IOAccessoryManagerSetVoltageDetected();
          [v7 setIsHeadsetConnected:0];
          IOServiceClose(connect);
          connect = 0;
          Type = IOAccessoryManagerGetType();
          global_queue = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __IOAccessoryHandleAttach_block_invoke;
          block[3] = &__block_descriptor_36_e5_v8__0l;
          v89 = Type;
          dispatch_async(global_queue, block);
          [v7 setIsDebugAccessoryConnected:(v93 >> 5) & 1];
          if ([v7 isDebugAccessoryConnected])
          {
            goto LABEL_72;
          }

          [v7 setIsBlacklistedAccessoryConnected:v10 == 0x18F281000000];
          if ([v7 isBlacklistedAccessoryConnected])
          {
            goto LABEL_72;
          }

          if (v83)
          {
            v54 = v11 == 0;
          }

          else
          {
            v54 = 1;
          }

          v55 = !v54;
          if (v54)
          {
            [v7 setWasTapToRadarShown:1];
          }

          else
          {
            [v7 setIsMeasurementEnabled:1];
          }

          if (v14)
          {
            [v7 setIsWet:1];
            [OUTLINED_FUNCTION_40() setAccessoryConnectedWhileWet:?];
            [OUTLINED_FUNCTION_28() setIsMeasurementActive:?];
            [v7 setIsTimestampValid:v84];
            v56 = [MEMORY[0x277CBEA90] dataWithBytes:&v93 length:6];
            [OUTLINED_FUNCTION_11() setConnectedAccessoryPDigitalID:?];
            OUTLINED_FUNCTION_0_3();
            [v7 setConnectedAccessoryDigitalID:v57 | v58];
            [v7 setConnectedAccessoryOrientation:v85];
            if (v11)
            {
              v62 = @"com.apple.ioaccessorymanager.ldcm.eis.accessory.connection";
              goto LABEL_59;
            }

            _generateUIAnalyticEvents(v7, PrimaryPort);
            IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.accessory.connection", v7);
          }

          else
          {
            [v7 setIsMeasurementActive:0];
            [v7 setIsTimestampValid:v84];
            v59 = [MEMORY[0x277CBEA90] dataWithBytes:&v93 length:6];
            [OUTLINED_FUNCTION_11() setConnectedAccessoryPDigitalID:?];
            OUTLINED_FUNCTION_0_3();
            [v7 setConnectedAccessoryDigitalID:v60 | v61];
            [v7 setConnectedAccessoryOrientation:v85];
            IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.accessory.connection", v7);
            if (v11)
            {
              if (!v55)
              {
                goto LABEL_72;
              }

LABEL_60:
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                OUTLINED_FUNCTION_20();
                OUTLINED_FUNCTION_19();
                _os_log_impl(v63, v64, v65, v66, v67, v68);
              }

              if (v10 == 0x4F100000000)
              {
                goto LABEL_78;
              }

              if (v10 == 0x18FE81000000)
              {
                [OUTLINED_FUNCTION_40() setJustAttachedCase:?];
              }

              if (([gUserLdcmParams userBehaviorMask] & 0x20) != 0)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v75 = [v7 ldcmStartMeasurementsDelayNs];
                  valuePtr = 136315650;
                  *v96 = "IOAccessoryHandleAttach";
                  *&v96[8] = 2048;
                  *&v96[10] = v10;
                  *&v96[18] = 2048;
                  *&v96[20] = v75 / 0xF4240;
                  OUTLINED_FUNCTION_23();
                  _os_log_impl(v76, v77, v78, v79, v80, 0x20u);
                }

                v81 = [v7 timer];
                v82 = dispatch_walltime(0, [v7 ldcmStartMeasurementsDelayNs]);
                dispatch_source_set_timer(v81, v82, 0xFFFFFFFFFFFFFFFFLL, 0);
                [OUTLINED_FUNCTION_40() setAttachDelayTimerRunning:?];
              }

              else
              {
LABEL_78:
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  valuePtr = 136315394;
                  *v96 = "IOAccessoryHandleAttach";
                  *&v96[8] = 2048;
                  *&v96[10] = v10;
                  OUTLINED_FUNCTION_23();
                  _os_log_impl(v69, v70, v71, v72, v73, 0x16u);
                }

                v74 = [v7 halogenMeasurementDispatchQueue];
                v87[0] = MEMORY[0x277D85DD0];
                v87[1] = 3221225472;
                v87[2] = __IOAccessoryHandleAttach_block_invoke_745;
                v87[3] = &unk_279793038;
                v87[4] = v7;
                dispatch_async(v74, v87);
              }

              goto LABEL_72;
            }
          }

          v62 = @"com.apple.ioaccessorymanager.ldcm.eis.accessory.nofreepins";
LABEL_59:
          IOAccessoryAggDPostScalarPrefixKey(v62, v7);
          if ((v55 & 1) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_60;
        }

        if (gDockState)
        {
          [MEMORY[0x277CCABB0] numberWithInt:PrimaryPort];
          v28 = [OUTLINED_FUNCTION_11() objectForKey:?];
          if (v28)
          {
            objc_msgSend_dockStateValue(v28);
            v29 = valuePtr;
            *&v106[4] = *v96;
            *&v106[6] = *&v96[16];
            LODWORD(v106[8]) = *v97;
            v30 = *&v97[4];
            v31 = v97[12];
            LODWORD(number[1]) = *&v97[13];
            *(&number[1] + 3) = *&v97[16];
            v33 = *&v97[20];
            v32 = v98;
            v34 = v100;
            *(&v106[1] + 6) = *(v103 + 14);
            v105 = v102;
            *v106 = v103[0];
            v104 = v101;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_20();
              *&v96[4] = 1024;
              *&v96[6] = v29;
              *&v96[10] = 1024;
              *&v96[12] = 1;
              OUTLINED_FUNCTION_23();
              _os_log_impl(v35, v36, v37, v38, v39, 0x14u);
            }

            if (enableVoltageEventMonitorModeAppleCareLogging == 1 && (IOAccessoryManagerGetType() & 0x600) != 0)
            {
              IOAccessoryAppleCareLoggingForNonVoltageEvents("accessoryPlug", &v93, PrimaryPort);
            }

            if (!IOServiceOpen(a1, *MEMORY[0x277D85F48], 0, &connect))
            {
              IOAccessoryManagerSetVoltageDetected();
              IOServiceClose(connect);
              connect = 0;
              if ((v93 & 0x20) == 0 && !(v29 | v34 & 1))
              {
                if (_retrieveDeviceInterfaceSerialNumber(a1, number))
                {
                  v29 = 0;
                }

                else
                {
                  CFNumberGetValue(number[0], kCFNumberSInt64Type, &v91);
                  CFRelease(number[0]);
                  *&v40 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  *v97 = v40;
                  v97[16] = -86;
                  *&v96[16] = v40;
                  *v96 = v40;
                  valuePtr = PrimaryPort;
                  v97[15] = v85;
                  *&v97[17] = v91;
                  IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.ldcm.notification.count", &valuePtr);
                  OUTLINED_FUNCTION_0_3();
                  if (evaluateAccyHealthDictionary(v41 | v42, &valuePtr))
                  {
                    OUTLINED_FUNCTION_0_3();
                    v30 = v43 | v44;
                    v33 = v91;
                    v32 = mach_continuous_time();
                    v31 = v85;
                  }

                  else
                  {
                    setDriverMitigationEnabled(PrimaryPort, a1, 0);
                  }

                  v29 = 0;
                  v34 = 1;
                  gGiveUserRadarOption = 1;
                }
              }
            }

            *v96 = *&v106[4];
            *&v96[16] = *&v106[6];
            v101 = v104;
            valuePtr = v29;
            *v97 = v106[8];
            *&v97[4] = v30;
            v97[12] = v31;
            *&v97[13] = number[1];
            *&v97[16] = *(&number[1] + 3);
            *&v97[20] = v33;
            v98 = v32;
            v99 = 1;
            v100 = v34;
            v102 = v105;
            v103[0] = *v106;
            *(v103 + 14) = *(&v106[1] + 6);
            v45 = [MEMORY[0x277CCAE60] valueWithDockState:&valuePtr];
            [gDockState setObject:v45 forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", PrimaryPort)}];
          }
        }
      }
    }
  }

LABEL_72:
  OUTLINED_FUNCTION_49();
}

uint64_t processLdcmBehaviorPlist(void *a1, __int16 a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v78 = 0;
    OUTLINED_FUNCTION_0();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  if ((a2 & 0xF0) != 0)
  {
    return 0;
  }

  v9 = kIOAMLDCMBehaviorPlistLegacySubKey;
  if ((a2 & 0x400) != 0)
  {
    v9 = kIOAMLDCMBehaviorPlistDeviceGen1SubKey;
  }

  v10 = *v9;
  result = [a1 objectForKey:{kIOAMLDCMBehaviorPlistVersionKey, *v78}];
  if (!result)
  {
    return result;
  }

  v12 = [result unsignedIntValue];
  v13 = v12 - 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v78 = 136315650;
    *&v78[4] = "processLdcmBehaviorPlist";
    *&v78[12] = 1024;
    *&v78[14] = v12;
    *&v78[18] = 1024;
    *&v78[20] = v13 < 2;
    OUTLINED_FUNCTION_0();
    _os_log_impl(v14, v15, v16, v17, v18, 0x18u);
  }

  if (v13 > 1)
  {
    return 0;
  }

  if (v12 != 2)
  {
    if (v12 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v78 = 0;
        OUTLINED_FUNCTION_0();
        _os_log_impl(v19, v20, v21, v22, v23, 2u);
      }

      result = [a1 objectForKey:{kIOAMLDCMBehaviorPlistBehaviorBitmaskKey, *v78, *&v78[8]}];
      if (result)
      {
        result = [result objectForKey:v10];
        if (result)
        {
          v24 = [result unsignedIntValue];
          [gUserLdcmParams setUserBehaviorMask:v24];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_3_0();
            OUTLINED_FUNCTION_5();
            _os_log_impl(v25, v26, v27, v28, v29, v30);
          }

          result = [a1 objectForKey:kIOAMLDCMBehaviorPlistFdpBitmaskKey];
          if (result)
          {
            result = [result objectForKey:v10];
            if (result)
            {
              v31 = [result unsignedIntValue];
              [gUserLdcmParams setFdpBehaviorMask:v31];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                OUTLINED_FUNCTION_3_0();
                OUTLINED_FUNCTION_5();
                _os_log_impl(v32, v33, v34, v35, v36, v37);
              }

              result = [a1 objectForKey:kIOAMLDCMBehaviorPlistConsecutiveDetectedThresh];
              if (result)
              {
                v38 = [result unsignedIntValue];
                if (v38)
                {
                  *algn_2812C446E = v38;
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    OUTLINED_FUNCTION_3_0();
                    OUTLINED_FUNCTION_5();
                    _os_log_impl(v39, v40, v41, v42, v43, v44);
                  }
                }

                result = [a1 objectForKey:kIOAMLDCMBehaviorPlistConsecutiveNotDetectedThresh];
                if (result)
                {
                  v45 = [result unsignedIntValue];
                  if (v45)
                  {
                    *&algn_2812C446E[4] = v45;
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      OUTLINED_FUNCTION_3_0();
                      OUTLINED_FUNCTION_5();
                      _os_log_impl(v46, v47, v48, v49, v50, v51);
                    }
                  }

                  result = [a1 objectForKey:kIOAMLDCMBehaviorPlistConsecutiveDetectedInterval];
                  if (result)
                  {
                    v52 = [result unsignedIntValue];
                    if (v52)
                    {
                      *&algn_2812C446E[8] = v52;
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        OUTLINED_FUNCTION_3_0();
                        OUTLINED_FUNCTION_5();
                        _os_log_impl(v53, v54, v55, v56, v57, v58);
                      }
                    }

                    result = [a1 objectForKey:kIOAMLDCMBehaviorPlistConsecutiveNotDetectedInterval];
                    if (result)
                    {
                      v59 = [result unsignedIntValue];
                      if (!v59)
                      {
                        return 1;
                      }

                      *&algn_2812C446E[12] = v59;
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        return 1;
                      }

                      OUTLINED_FUNCTION_3_0();
                      OUTLINED_FUNCTION_5();
                      goto LABEL_50;
                    }
                  }
                }
              }
            }
          }
        }
      }

      return result;
    }

    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v78 = 136315138;
    *&v78[4] = "processLdcmBehaviorPlistForVersion2";
    OUTLINED_FUNCTION_0();
    _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
  }

  result = MGGetStringAnswer();
  if (result)
  {
    v71 = result;
    result = [a1 objectForKey:kIOAMLDCMBehaviorWetThresholdDictionaryKey];
    if (result)
    {
      v72 = result;
      result = [result objectForKey:v71];
      if (result || (result = [v72 objectForKey:kIOAMLDCMBehaviorThresholdDefaultKey]) != 0)
      {
        [result doubleValue];
        v74 = v73;
        result = [a1 objectForKey:kIOAMLDCMBehaviorDryThresholdDictionarykey];
        if (result)
        {
          v75 = result;
          result = [result objectForKey:v71];
          if (result || (result = [v75 objectForKey:kIOAMLDCMBehaviorThresholdDefaultKey]) != 0)
          {
            [result doubleValue];
            v77 = v76;
            [gUserLdcmParams setWetTransitionCapacitanceThreshold:v74];
            [gUserLdcmParams setDryTransitionCapacitanceThreshold:v77];
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 1;
            }

            OUTLINED_FUNCTION_0();
            v65 = 32;
LABEL_50:
            _os_log_impl(v60, v61, v62, v63, v64, v65);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void IOAccessoryAggDCollectData(const void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (enableVoltageEventMonitorModeAggD == 1)
  {
    memcpy(__dst, &xmmword_25491C2B8, sizeof(__dst));
    if (_MergedGlobals)
    {
      if (gDockState)
      {
        [MEMORY[0x277CCABB0] numberWithInt:1];
        v4 = [OUTLINED_FUNCTION_6() objectForKey:?];
        if (v4)
        {
          objc_msgSend_dockStateValue(v4);
          if (CFEqual(a1, @"com.apple.ioaccessorymanager.voltage.count") == 1)
          {
            v5 = _MergedGlobals;
            if (!_MergedGlobals)
            {
              return;
            }

            v6 = @"com.apple.ioaccessorymanager.voltage.count";
            goto LABEL_14;
          }

          if (CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.count") == 1)
          {
            v5 = _MergedGlobals;
            v6 = @"com.apple.ioaccessorymanager.ldcm.notification.count";
LABEL_14:
            v7 = 1;
LABEL_15:
            v5(v6, v7);
            return;
          }

          if (CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.suppress.phone") == 1)
          {
            v5 = _MergedGlobals;
            v6 = @"com.apple.ioaccessorymanager.ldcm.notification.suppress.phone";
            goto LABEL_14;
          }

          if (CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.suppress.accessory") == 1)
          {
            v5 = _MergedGlobals;
            v6 = @"com.apple.ioaccessorymanager.ldcm.notification.suppress.accessory";
            goto LABEL_14;
          }

          if (CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.confidentcount") == 1)
          {
            _MergedGlobals(@"com.apple.ioaccessorymanager.ldcm.notification.confidentcount", 1);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v12 = 138543362;
              v13 = a1;
              v9 = MEMORY[0x277D86220];
              v10 = "(!) Event: AggD key %{public}@ increment";
LABEL_23:
              OUTLINED_FUNCTION_30(&dword_2548F1000, v9, v8, v10, &v12);
            }
          }

          else if (CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.highconfidentcount") == 1)
          {
            _MergedGlobals(@"com.apple.ioaccessorymanager.ldcm.notification.highconfidentcount", 1);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v12 = 138543362;
              v13 = a1;
              v9 = MEMORY[0x277D86220];
              v10 = "(!) Event: AggD key %{public}@ increment";
              goto LABEL_23;
            }
          }

          else
          {
            if (CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.badaccessorycount") == 1)
            {
              IOAccessoryAggDBadAccyEventData(a2);
              return;
            }

            if (CFEqual(a1, @"com.apple.ioaccessorymanager.voltage.cumulativetime") == 1)
            {
              v7 = *(a2 + 46);
              qword_27F612838 = v7;
              v5 = off_2812C4308;
              if (off_2812C4308)
              {
                v6 = @"com.apple.ioaccessorymanager.voltage.cumulativetime";
                goto LABEL_15;
              }
            }

            else
            {
              if (CFEqual(a1, @"com.apple.ioaccessorymanager.voltage.averagetime") == 1)
              {
                IOAccessoryAggDAverageVhiTimeData(__dst, a2);
                return;
              }

              if (CFEqual(a1, @"histogramVoltage") == 1)
              {
                IOAccessoryAggDVoltageData(a2);
                return;
              }

              if (CFEqual(a1, @"com.apple.ioaccessorymanager.voltage.headset") == 1)
              {
                _MergedGlobals(@"com.apple.ioaccessorymanager.voltage.headset", 1);
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v12 = 138543362;
                  v13 = a1;
                  v9 = MEMORY[0x277D86220];
                  v10 = "(!) Event: AggD key %{public}@ increment";
                  goto LABEL_23;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                v12 = 136315138;
                v13 = "IOAccessoryAggDCollectData";
                v9 = MEMORY[0x277D86220];
                v10 = "%s Invalid AggD key\n";
                goto LABEL_23;
              }
            }
          }
        }
      }
    }
  }
}

void evaluateFalseDetectPreventionDry(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 132) & 1) == 0)
  {
    if (*(a1 + 40))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @".%012llx.%1d", *(a1 + 40), *(a1 + 48));
      if (v4)
      {
        v5 = v4;
        v6 = mach_continuous_time();
        if (a2)
        {
          v7 = *(a2 + 4);
          v8 = *(a1 + 64);
          if (dword_2812C4324)
          {
            OUTLINED_FUNCTION_47();
          }

          else
          {
            mach_timebase_info(&dword_2812C4320);
            OUTLINED_FUNCTION_47();
            if (!v9)
            {
              mach_timebase_info(&dword_2812C4320);
              v10 = dword_2812C4320;
              v9 = dword_2812C4324;
            }
          }

          v11 = (v7 * v10 / v9 - v8) / 0x3B9ACA00;
          if (v11 < [gUserLdcmParams minVhiDurationSec])
          {
            v12 = @"com.apple.ioaccessorymanager.ldcm.notification.drytooshort";
            v13 = v5;
            v14 = v11;
LABEL_11:
            IOAccessoryAggDCollectDataWithInterval(v12, v13, v14);
            CFRelease(v5);
            goto LABEL_12;
          }
        }

        else
        {
          v7 = v6;
        }

        IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.ldcm.notification.highconfidentcount", 0);
        v15 = *(a1 + 64);
        if (dword_2812C4324)
        {
          OUTLINED_FUNCTION_47();
        }

        else
        {
          mach_timebase_info(&dword_2812C4320);
          OUTLINED_FUNCTION_47();
          if (!v16)
          {
            mach_timebase_info(&dword_2812C4320);
            v17 = dword_2812C4320;
            v16 = dword_2812C4324;
          }
        }

        v14 = (v7 * v17 / v16 - v15) / 0x3B9ACA00;
        v12 = @"com.apple.ioaccessorymanager.ldcm.notification.wetduration";
        v13 = v5;
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  *(a1 + 132) = 0;
  *(a1 + 40) = 0;
}

void trimAccyHealthDictionary()
{
  v30 = *MEMORY[0x277D85DE8];
  if ([gAccyHealthDictionary count] >= 0x20)
  {
    v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%012llx_%1d_%012llx", 0, 0, 0];
    v1 = gAccyHealthDictionary;
    v9 = OUTLINED_FUNCTION_50(v0, v2, v3, v4, v5, v6, v7, v8);
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = MEMORY[0];
      v13 = -1;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(v1);
          }

          v15 = *(8 * i);
          v16 = [v15 isEqualToString:v0];
          if ((v16 & 1) == 0)
          {
            v24 = [gAccyHealthDictionary objectForKey:v15];
            v16 = [v24 lastSeenTimestamp];
            if (v16 < v13)
            {
              if (v11)
              {
              }

              v11 = v15;
              v16 = [v24 lastSeenTimestamp];
              v13 = v16;
            }
          }
        }

        v10 = OUTLINED_FUNCTION_50(v16, v17, v18, v19, v20, v21, v22, v23);
      }

      while (v10);
      if (v11)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136446466;
          v27 = [v11 UTF8String];
          v28 = 2048;
          v29 = v13;
          OUTLINED_FUNCTION_29(&dword_2548F1000, MEMORY[0x277D86220], v25, "[trim] <%{public}s> : %llu", &v26);
        }

        [gAccyHealthDictionary removeObjectForKey:v11];
      }
    }
  }
}

void commitPersistentAccyHealthDictionary()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if (v0)
  {
    v1 = v0;
    v6 = 0;
    v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:gAccyHealthDictionary requiringSecureCoding:1 error:&v6];
    v3 = v6;
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v4 = [objc_msgSend(v3 "localizedDescription")];
        v7 = 136315394;
        v8 = "commitPersistentAccyHealthDictionary";
        v9 = 2080;
        v10 = v4;
        OUTLINED_FUNCTION_29(&dword_2548F1000, MEMORY[0x277D86220], v5, "%s err: %s", &v7);
        v3 = v6;
      }
    }

    if (v2)
    {
      [v1 setObject:v2 forKey:@"accyHealthDict"];
    }
  }
}

BOOL evaluateAccyHealthDictionary(unint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (gAccyHealthDictionary && (v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%012llx_%1d_%012llx", 0, 0, 0], (v5 = objc_msgSend(gAccyHealthDictionary, "objectForKey:", v4)) != 0) && objc_msgSend(v5, "isHealthy"))
  {
    if (!digitalIdNumPinsFree(a1, buf))
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_7;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%012llx_%1d_%012llx", a1, *(a2 + 51), *(a2 + 53)];
    v7 = [gAccyHealthDictionary objectForKey:v6];
    if (v7)
    {
      v8 = 0;
      v9 = [v7 isHealthy] ^ 1;
      goto LABEL_7;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = 1;
LABEL_7:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a2 + 51);
    v11 = *(a2 + 53);
    *buf = 134219008;
    v16 = a1;
    v17 = 1024;
    v18 = v10;
    v19 = 2048;
    v20 = v11;
    v21 = 1024;
    v22 = v8;
    v23 = 1024;
    v24 = v9;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[eval] <%012llx_%1d_%012llx> : emptyFail %d, accyFail %d", buf, 0x28u);
  }

  v12 = @"com.apple.ioaccessorymanager.ldcm.notification.confidentcount";
  if (v9)
  {
    v12 = @"com.apple.ioaccessorymanager.ldcm.notification.suppress.accessory";
  }

  if (v8)
  {
    v13 = @"com.apple.ioaccessorymanager.ldcm.notification.suppress.phone";
  }

  else
  {
    v13 = v12;
  }

  IOAccessoryAggDCollectData(v13, a2);
  return ((v8 | v9) & 1) == 0;
}

void IOAccessoryAggDCollectDataWithInterval(const __CFString *a1, const __CFString *a2, unint64_t a3)
{
  v3 = enableVoltageEventMonitorModeAggD != 1 || off_2812C4300 == 0;
  if (!v3 && (CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.overvoltage") || CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.drytooshort") || CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.voltagefluctuation") || CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.wettoolong") || CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.wetduration")))
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a1);
    v8 = MutableCopy;
    if (a2)
    {
      CFStringAppend(MutableCopy, a2);
    }

    if (v8)
    {
      off_2812C4300(v8, a3);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0();
        _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
      }

      CFRelease(v8);
    }
  }
}

void IOAccessoryAggDBadAccyEventData(unsigned __int8 *a1)
{
  if (_MergedGlobals)
  {
    v1 = 0;
    v2 = (a1[14] << 40) | (a1[15] << 32) | (a1[16] << 24) | (a1[17] << 16) | (a1[18] << 8) | a1[19];
    while (kAggDKnownDigitalID[v1] != v2)
    {
      if (++v1 == 6)
      {
        v2 = 0xFFFFFFFFFFFFLL;
        break;
      }
    }

    if (a1[51] <= 1u)
    {
      v3 = 1;
    }

    else
    {
      v3 = a1[51];
    }

    v14 = v2;
    v15 = v3;
    v4 = OUTLINED_FUNCTION_48();
    v7 = CFStringCreateWithFormat(v4, v5, v6, v14, v15);
    if (v7)
    {
      v8 = v7;
      v9 = OUTLINED_FUNCTION_48();
      MutableCopy = CFStringCreateMutableCopy(v9, v10, v11);
      if (MutableCopy)
      {
        v13 = MutableCopy;
        CFStringAppend(MutableCopy, v8);
        _MergedGlobals(v13, 1);
        CFRelease(v13);
      }

      CFRelease(v8);
    }
  }
}

void IOAccessoryAggDAverageVhiTimeData(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (dword_27F61282C == stats)
    {
      v2 = *(a2 + 4);
      v3 = *(a1 + 4);
      if (v3 < v2)
      {
        if (dword_2812C4324)
        {
          OUTLINED_FUNCTION_37();
        }

        else
        {
          mach_timebase_info(&dword_2812C4320);
          OUTLINED_FUNCTION_37();
          if (!v4)
          {
            mach_timebase_info(&dword_2812C4320);
            v5 = dword_2812C4320;
            v4 = dword_2812C4324;
          }
        }

        v6 = v2 - v5 * v3 / v4;
        if (v6 >= 0x3B9ACA00)
        {
          qword_27F612830 = (v6 / 0x3B9ACA00 + qword_27F612830 * (stats - 1)) / stats;
          v7 = off_2812C4308;
          if (off_2812C4308)
          {

            v7(@"com.apple.ioaccessorymanager.voltage.averagetime");
          }
        }
      }
    }
  }
}

void IOAccessoryAggDVoltageData(uint64_t a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"com.apple.ioaccessorymanager.voltage.histogram.dp1";
  v9[1] = @"com.apple.ioaccessorymanager.voltage.histogram.dn1";
  v9[2] = @"com.apple.ioaccessorymanager.voltage.histogram.dp2";
  v9[3] = @"com.apple.ioaccessorymanager.voltage.histogram.dn2";
  if (off_2812C4300)
  {
    v2 = *MEMORY[0x277CBECE8];
    OUTLINED_FUNCTION_35();
    v3 = CFStringCreateWithFormat(v2, 0, @".%02x%02x%02x%02x%02x%02x");
    v5 = 0;
    v6 = a1 + 20;
    do
    {
      if (*(v6 + v5))
      {
        LOWORD(v4) = *(v6 + 2 * v5 + 12);
        v7 = v4 / 1000.0;
        MutableCopy = CFStringCreateMutableCopy(v2, 0, v9[v5]);
        CFStringAppend(MutableCopy, v3);
        off_2812C4300(MutableCopy, v7);
        CFRelease(MutableCopy);
      }

      ++v5;
    }

    while (v5 != 4);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

void *IOAccessoryAppleCareLoggingForNonVoltageEvents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [MEMORY[0x277CBEB18] array];
  if (enableVoltageEventMonitorModeAppleCareLogging == 1)
  {
    v6 = result;
    [MEMORY[0x277CCABB0] numberWithInt:100];
    [OUTLINED_FUNCTION_12() addObject:?];
    [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a1];
    [OUTLINED_FUNCTION_12() addObject:?];
    OUTLINED_FUNCTION_35();
    [v7 stringWithFormat:@"%02x %02x %02x %02x %02x %02x"];
    [OUTLINED_FUNCTION_12() addObject:?];
    [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", a3];
    [OUTLINED_FUNCTION_12() addObject:?];
    [MEMORY[0x277CCABB0] numberWithBool:0];
    [OUTLINED_FUNCTION_12() addObject:?];
    [MEMORY[0x277CCABB0] numberWithBool:0];
    [OUTLINED_FUNCTION_12() addObject:?];
    [MEMORY[0x277CCABB0] numberWithBool:0];
    result = [OUTLINED_FUNCTION_12() addObject:?];
    v8 = off_2812C4310;
    if (off_2812C4310)
    {

      return v8(v6);
    }
  }

  return result;
}

uint64_t IOAccessoryAggDPostScalarKey(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = _MergedGlobals;
      if (_MergedGlobals)
      {
        v3 = result;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_0();
          _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
          v2 = _MergedGlobals;
        }

        return v2(v3, 1);
      }
    }
  }

  return result;
}

void IOAccessoryAggDPostHistogramKey(const __CFString *a1, void *a2, double a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1 && a2 && off_2812C4300)
  {
    if (CFStringCompare(a1, @"com.apple.ioaccessorymanager.ldcm.notification.wetduration", 1uLL) && CFStringCompare(a1, @"com.apple.ioaccessorymanager.ldcm.notification.wettoolong", 1uLL) && CFStringCompare(a1, @"com.apple.ioaccessorymanager.ldcm.notification.drytooshort", 1uLL))
    {
      if (IOAccessoryShouldKeyUseEventBasedData(a1))
      {
        [a2 eventBasedDigitalID];
        v7 = [OUTLINED_FUNCTION_45() eventBasedOrientation];
      }

      else
      {
        [a2 connectedAccessoryDigitalID];
        v7 = [OUTLINED_FUNCTION_45() connectedAccessoryOrientation];
      }

      v18 = v3;
      v19 = v7;
    }

    else
    {
      if (IOAccessoryShouldKeyUseEventBasedData(a1))
      {
        [a2 eventBasedDigitalID];
        v8 = [OUTLINED_FUNCTION_45() eventBasedOrientation];
      }

      else
      {
        [a2 connectedAccessoryDigitalID];
        v8 = [OUTLINED_FUNCTION_45() connectedAccessoryOrientation];
      }

      v18 = v3;
      v19 = v8;
    }

    v9 = OUTLINED_FUNCTION_48();
    v12 = CFStringCreateWithFormat(v9, v10, v11, v18, v19);
    if (v12)
    {
      v13 = OUTLINED_FUNCTION_48();
      MutableCopy = CFStringCreateMutableCopy(v13, v14, a1);
      if (MutableCopy)
      {
        v16 = MutableCopy;
        CFStringAppend(MutableCopy, v12);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138543618;
          v21 = v16;
          v22 = 2048;
          v23 = a3;
          OUTLINED_FUNCTION_29(&dword_2548F1000, MEMORY[0x277D86220], v17, "Logging aggd key: %{public}@ value: %f", &v20);
        }

        off_2812C4300(v16, a3);
        CFRelease(v16);
        CFRelease(v12);
      }
    }
  }
}

void IOAccessoryAggDPostScalarPrefixKey(const __CFString *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      if (_MergedGlobals)
      {
        CFStringCompare(a1, @"com.apple.ioaccessorymanager.ldcm.notification.badaccessorycount", 1uLL);
        v4 = [a2 connectedAccessoryDigitalID];
        v15 = [a2 connectedAccessoryOrientation];
        v5 = OUTLINED_FUNCTION_24();
        v8 = CFStringCreateWithFormat(v5, v6, v7, v4, v15);
        if (v8)
        {
          v9 = v8;
          v10 = OUTLINED_FUNCTION_24();
          MutableCopy = CFStringCreateMutableCopy(v10, v11, a1);
          if (MutableCopy)
          {
            v13 = MutableCopy;
            CFStringAppend(MutableCopy, v9);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v16 = 138543362;
              v17 = v13;
              OUTLINED_FUNCTION_30(&dword_2548F1000, MEMORY[0x277D86220], v14, "Incrementing aggd key: %{public}@", &v16);
            }

            _MergedGlobals(v13, 1);
            CFRelease(v13);
            CFRelease(v9);
          }
        }
      }
    }
  }
}

void IOAccessoryNotifyWetCallback_0(uint64_t a1, uint64_t a2)
{
  if (gLiquidNotificationContext == 1)
  {
    gLiquidNotificationContext = 0;
    if (qword_2812C43B8)
    {
      if (byte_2812C4398 == 1)
      {
        switch(a2)
        {
          case 2:
            ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
            if (ServiceWithPrimaryPort)
            {
              setDriverMitigationEnabled(1, ServiceWithPrimaryPort, 0);
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                OUTLINED_FUNCTION_0();
                _os_log_impl(v3, v4, v5, v6, v7, 2u);
              }

              if (qword_2812C43B8)
              {
                IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.mitigation.override", qword_2812C43B8);
              }
            }

            break;
          case 1:
            IOAccessoryGiveUserRadarOption(qword_2812C43B8, 0);
            break;
          case 0:
            IOAccessoryNotifyWetHandlerDismiss_0();
            break;
        }

        IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.mitigation.override.seen", qword_2812C43B8);
      }

      else if (a2)
      {
        if (a2 == 1)
        {
          IOAccessoryGiveUserRadarOption(qword_2812C43B8, 0);
        }
      }

      else
      {
        IOAccessoryNotifyWetHandlerDismiss_0();
      }

      CFRunLoopRemoveSource(qword_2812C43B0, qword_2812C43A8, *MEMORY[0x277CBF048]);
      CFRelease(qword_2812C43A8);
      CFRelease(qword_2812C43A0);
    }
  }
}

void IOAccessoryGiveUserRadarOption(void *a1, int a2)
{
  v4 = [a1 halogenMeasurement];
  [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v5 = [MEMORY[0x277CCAB68] stringWithString:@"Halogen Measurements:\n\n"];
  [v5 appendFormat:@"precalibrationSampleOffsetInFrames -> %d\n", objc_msgSend(v4, "precalibrationSampleOffsetInFrames")];
  [v5 appendFormat:@"calibrationSampleOffsetInFrames -> %d\n", objc_msgSend(v4, "calibrationSampleOffsetInFrames")];
  [v5 appendFormat:@"measurementSampleOffsetInFrames -> %d\n", objc_msgSend(v4, "measurementSampleOffsetInFrames")];
  [v4 voltageGainCorrection];
  [v5 appendFormat:@"voltageGainCorrection -> %.13f\n", v6];
  [v4 currentGainCorrection];
  [v5 appendFormat:@"currentGainCorrection -> %.13f\n", v7];
  [v4 currentPhaseCompensation];
  [v5 appendFormat:@"currentPhaseCompensation -> %.13f\n", v8];
  [v4 goertzelImpedance];
  [v5 appendFormat:@"goertzelImpedance -> %.13f\n", v9];
  [v4 goertzelPhase];
  [v5 appendFormat:@"goertzelPhase -> %.13f\n", v10];
  [v4 compensatedImpedance];
  [v5 appendFormat:@"compensatedImpedance -> %.13f\n", v11];
  [v4 compensatedPhase];
  [v5 appendFormat:@"compensatedPhase -> %.13f\n", v12];
  [v4 clippingScore];
  [v5 appendFormat:@"clippingScore -> %.13f\n", v13];
  [v4 resistanceInOhms];
  [v5 appendFormat:@"Resistance in Ohms -> %.13f\n", v14];
  [v4 capacitanceInNanoF];
  [v5 appendFormat:@"Capacitance in nF -> %.13f\n", v15];
  [v4 precalVoltageSignalLevel];
  [v5 appendFormat:@"precalVoltageSignalLevel -> %.13f\n", v16];
  [v4 precalVoltageNoiseLevel];
  [v5 appendFormat:@"precalVoltageNoiseLevel -> %.13f\n", v17];
  [v4 precalVoltageSNR];
  [v5 appendFormat:@"precalVoltageSNR -> %.13f\n", v18];
  [v4 precalCurrentSignalLevel];
  [v5 appendFormat:@"precalCurrentSignalLevel -> %.13f\n", v19];
  [v4 precalCurrentNoiseLevel];
  [v5 appendFormat:@"precalCurrentNoiseLevel -> %.13f\n", v20];
  [v4 precalCurrentSNR];
  [v5 appendFormat:@"precalCurrentSNR -> %.13f\n", v21];
  [v4 calVoltageSignalLevel];
  [v5 appendFormat:@"calVoltageSignalLevel -> %.13f\n", v22];
  [v4 calVoltageNoiseLevel];
  [v5 appendFormat:@"calVoltageNoiseLevel -> %.13f\n", v23];
  [v4 calVoltageSNR];
  [v5 appendFormat:@"calVoltageSNR -> %.13f\n", v24];
  [v4 calCurrentSignalLevel];
  [v5 appendFormat:@"calCurrentSignalLevel -> %.13f\n", v25];
  [v4 calCurrentNoiseLevel];
  [v5 appendFormat:@"calCurrentNoiseLevel -> %.13f\n", v26];
  [v4 calCurrentSNR];
  [v5 appendFormat:@"calCurrentSNR -> %.13f\n", v27];
  [v4 measurementVoltageSignalLevel];
  [v5 appendFormat:@"measurementVoltageSignalLevel -> %.13f\n", v28];
  [v4 measurementVoltageNoiseLevel];
  [v5 appendFormat:@"measurementVoltageNoiseLevel -> %.13f\n", v29];
  [v4 measurementVoltageSNR];
  [v5 appendFormat:@"measurementVoltageSNR -> %.13f\n", v30];
  [v4 measurementCurrentSignalLevel];
  [v5 appendFormat:@"measurementCurrentSignalLevel -> %.13f\n", v31];
  [v4 measurementCurrentNoiseLevel];
  [v5 appendFormat:@"measurementCurrentNoiseLevel -> %.13f\n", v32];
  [v4 measurementCurrentSNR];
  [v5 appendFormat:@"measurementCurrentSNR -> %.13f\n", v33];
  [v4 measurementCondetSNR];
  [v5 appendFormat:@"measurementCondetSNR -> %.13f\n", v34];
  [v5 appendFormat:@"Measurement Result -> %@\n\n", objc_msgSend(v4, "getResultString")];
  [v5 appendFormat:@"event based DigitalID -> 0x%012llx\n", objc_msgSend(a1, "eventBasedDigitalID")];
  [v5 appendFormat:@"connected accessory DigitalID -> 0x%012llx\n", objc_msgSend(a1, "connectedAccessoryDigitalID")];
  [v5 appendFormat:@"event based orientation -> %d\n", objc_msgSend(a1, "eventBasedOrientation")];
  [v5 appendFormat:@"connected accessory orientation -> %d\n", objc_msgSend(a1, "connectedAccessoryOrientation")];
  v35 = [a1 pinID];
  if (v35 > 3)
  {
    v36 = "Invalid";
  }

  else
  {
    v36 = IOAccessoryGetPinStrForIndex_pinStr[v35];
  }

  [v5 appendFormat:@"pin -> %s\n", v36];
  v37 = [a1 halogenTtrDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __IOAccessoryGiveUserRadarOption_block_invoke;
  block[3] = &unk_279793298;
  v39 = a2;
  block[4] = v5;
  block[5] = a1;
  dispatch_async(v37, block);
}

void IOAccessoryFileRadarHalogen(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v28 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = [MEMORY[0x277CCAC10] pipe];
  v6 = [MEMORY[0x277CCAC10] pipe];
  v7 = objc_alloc_init(MEMORY[0x277CCACB0]);
  [v7 setLaunchPath:@"/usr/local/bin/aggregatectl"];
  [v7 setArguments:&unk_2866B8F00];
  [v7 setStandardOutput:v5];
  [v7 setStandardError:v6];
  v8 = [v5 fileHandleForReading];
  v9 = [v6 fileHandleForReading];
  [v7 launch];
  do
  {
    v10 = [v8 readDataOfLength:1024];
    [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
    [OUTLINED_FUNCTION_25() appendString:?];
  }

  while ([v10 length]);
  [v7 waitUntilExit];
  v11 = [v9 readDataToEndOfFile];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
    OUTLINED_FUNCTION_43(4.8151e-34);
    v35 = v12;
    OUTLINED_FUNCTION_29(&dword_2548F1000, MEMORY[0x277D86220], v13, "%s:\n%@", v34);
  }

  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_43(4.8151e-34);
    v35 = @"/tmp/ioam_aggregatectl.log";
    OUTLINED_FUNCTION_29(&dword_2548F1000, MEMORY[0x277D86220], v14, "%s Unable to create file at '%@'", v34);
  }

  if (a2)
  {
    v15 = "SNR Failure\n\n";
  }

  else
  {
    v15 = "LIQUID DETECTION REPORT (detected via Halogen)\n\n";
  }

  v16 = [MEMORY[0x277CCAB68] stringWithUTF8String:v15];
  [v16 appendString:@"Has your phone or charging cable been near liquid in the past 5 hours? \n\n"];
  [v16 appendString:@"If yes:\n\n"];
  [v16 appendString:@"- Cable or Phone?\n\n"];
  [v16 appendString:{@"- What kind of liquid? (e.g. tap water, rain, sweat, soda, beer, etc.)\n\n"}];
  [v16 appendString:{@"- What kind of exposure? (e.g. submersion, splash, droplet, sitting in puddle, using device with wet/sweaty hands, etc)\n\n"}];
  [v16 appendString:{@"- If the exposure was limited to a certain part of the device, where was it?\n\n"}];
  [v16 appendString:@"- How long was the exposure?\n\n"];
  [v16 appendString:@"- Time since exposure\n"];
  [v16 appendString:@"\n\nIf no:\n\n"];
  [v16 appendString:@"Please describe what happened just before seeing the dialog. For example… Did you just connect an accessory? Did you drop your device? Are you in a humid environment?\n\n\n"];
  [v16 appendString:a1];
  v17 = [MEMORY[0x277CCAB68] stringWithString:@"tap-to-radar://new?ComponentName=LDCM&ComponentVersion=AutofilledBugs&ComponentID=750390&Classification=Other Bug&Reproducibility=Not Applicable&"];
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    [v17 appendFormat:@"Attachments=%@", @"/tmp/halogen_ttr.wav"];
  }

  [v17 appendString:{@", "}];
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    [v17 appendFormat:@"%@", @"/tmp/ioam_aggregatectl.log"];
  }

  v18 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * i);
        [v17 appendString:{@", "}];
        [@"/private/var/mobile/Library/Logs/com.apple.ioam/ioam_logs/" stringByAppendingPathComponent:v23];
        [OUTLINED_FUNCTION_11() appendString:?];
      }

      v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v20);
  }

  [v17 appendString:@"&"];
  [v17 appendFormat:@"Description=%@", v16];
  [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  [OUTLINED_FUNCTION_11() stringByAddingPercentEncodingWithAllowedCharacters:?];
  v24 = [OUTLINED_FUNCTION_6() URLWithString:?];
  if (qword_2812C4318)
  {
    v25 = objc_alloc(MEMORY[0x277CCACA8]);
    v26 = [v25 initWithBytes:qword_2812C4318 length:8 encoding:1];
    if (v26)
    {
      v27 = v26;
      [v28 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 1), v26}];
      [objc_msgSend(MEMORY[0x277CC1E80] "defaultWorkspace")];
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x277CC1E80] "defaultWorkspace")];
  }
}

uint64_t updateAccyHalogenHealthDictionary(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!gAccyHealthDictionary || [objc_msgSend(a1 "halogenMeasurement")] > 2)
  {
    return 0;
  }

  number = 0xAAAAAAAAAAAAAAAALL;
  if (gAccyHealthDictionary && [objc_msgSend(a1 "halogenMeasurement")] <= 2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%012llx_%1d_%012llx", 0, 0, 0];
    v3 = [gAccyHealthDictionary objectForKey:v2];
    v4 = v3;
    if (!v3)
    {
      v4 = objc_alloc_init(IOAccessoryLdcmHealthClass);
      v17 = v4;
      [OUTLINED_FUNCTION_28() setIsHealthy:?];
      trimAccyHealthDictionary();
    }

    if ([objc_msgSend(a1 "halogenMeasurement")] && objc_msgSend(objc_msgSend(a1, "halogenMeasurement"), "halogenResult") != 1)
    {
      if ([objc_msgSend(a1 "halogenMeasurement")] == 2)
      {
        [(IOAccessoryLdcmHealthClass *)v4 wetCount];
        [OUTLINED_FUNCTION_44() setWetCount:?];
      }
    }

    else
    {
      [(IOAccessoryLdcmHealthClass *)v4 dryCount];
      [OUTLINED_FUNCTION_44() setDryCount:?];
    }

    v5 = [(IOAccessoryLdcmHealthClass *)v4 isHealthy];
    if ([(IOAccessoryLdcmHealthClass *)v4 dryCount])
    {
      [OUTLINED_FUNCTION_40() setIsHealthy:?];
    }

    [gAccyHealthDictionary setObject:v4 forKey:v2];
    v6 = [(IOAccessoryLdcmHealthClass *)v4 isHealthy];
    if (!v3 || v5 != v6)
    {
      commitPersistentAccyHealthDictionary();
      if (![(IOAccessoryLdcmHealthClass *)v4 isHealthy])
      {
        if (a1)
        {
          if (_MergedGlobals)
          {
            v18 = OUTLINED_FUNCTION_24();
            v21 = CFStringCreateWithFormat(v18, v19, v20, 0, 0);
            if (v21)
            {
              v22 = v21;
              v23 = OUTLINED_FUNCTION_24();
              MutableCopy = CFStringCreateMutableCopy(v23, v24, v25);
              if (MutableCopy)
              {
                v27 = MutableCopy;
                CFStringAppend(MutableCopy, v22);
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v31 = 138543362;
                  v32 = v27;
                  OUTLINED_FUNCTION_30(&dword_2548F1000, MEMORY[0x277D86220], v28, "Incrementing aggd key: %{public}@", &v31);
                }

                _MergedGlobals(v27, 1);
                CFRelease(v27);
                CFRelease(v22);
              }
            }
          }
        }
      }

      dbgShowAccyHealthDictionary();
    }
  }

  if (_retrieveDeviceInterfaceSerialNumber([a1 service], &number))
  {
    return 0;
  }

  CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
  CFRelease(number);
  v7 = MEMORY[0x277CCACA8];
  v8 = [a1 connectedAccessoryDigitalID];
  v9 = [a1 connectedAccessoryOrientation];
  v10 = [v7 stringWithFormat:@"%012llx_%1d_%012llx", v8, v9, valuePtr];
  v11 = [gAccyHealthDictionary objectForKey:v10];
  v12 = v11;
  if (!v11)
  {
    v12 = objc_alloc_init(IOAccessoryLdcmHealthClass);
    v16 = v12;
    [OUTLINED_FUNCTION_28() setIsHealthy:?];
    trimAccyHealthDictionary();
  }

  if ([objc_msgSend(a1 "halogenMeasurement")] && objc_msgSend(objc_msgSend(a1, "halogenMeasurement"), "halogenResult") != 1)
  {
    if ([objc_msgSend(a1 "halogenMeasurement")] == 2)
    {
      [(IOAccessoryLdcmHealthClass *)v12 wetCount];
      [OUTLINED_FUNCTION_44() setWetCount:?];
    }
  }

  else
  {
    [(IOAccessoryLdcmHealthClass *)v12 dryCount];
    [OUTLINED_FUNCTION_44() setDryCount:?];
  }

  v13 = [(IOAccessoryLdcmHealthClass *)v12 isHealthy];
  if ([(IOAccessoryLdcmHealthClass *)v12 dryCount])
  {
    [OUTLINED_FUNCTION_40() setIsHealthy:?];
  }

  [gAccyHealthDictionary setObject:v12 forKey:v10];
  v14 = [(IOAccessoryLdcmHealthClass *)v12 isHealthy];
  if (!v11 || v13 != v14)
  {
    commitPersistentAccyHealthDictionary();
    if (![(IOAccessoryLdcmHealthClass *)v12 isHealthy])
    {
      IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.notification.badaccessorycount", a1);
    }

    dbgShowAccyHealthDictionary();
  }

  return 1;
}

void performAssetQuery_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }
}

void *appendEventToHistory_cold_1(uint64_t a1, __int128 *a2, void *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  *(a1 + 69) = 1;
  *(a1 + 61) = *(a2 + 4);
  [MEMORY[0x277CBEA90] dataWithBytes:a1 length:80];
  [OUTLINED_FUNCTION_12() addObject:?];
  result = [a3 count];
  if (result >= 3)
  {
    return [OUTLINED_FUNCTION_39() removeObjectAtIndex:?];
  }

  return result;
}

void _generateUIAnalyticEvents_cold_1(void *a1, char a2)
{
  IOAccessoryAggDPostScalarKey(@"com.apple.ioaccessorymanager.ldcm.notification.suppress.accessory", a1);
  IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.suppress.accessory", a1);
  if ((a2 & 1) == 0)
  {
    IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.error.suppress.accessory", a1);
  }
}

void _holdPowerAssertion_cold_1()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[0] = 136315394;
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s failed to release power assertion. Error 0x%x\n", v0, 0x12u);
}

void _holdPowerAssertion_cold_2()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[0] = 136315394;
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s failed to acquire power assertion. Error 0x%x\n", v0, 0x12u);
}

void _holdPowerAssertion_cold_3(void *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  [a1 isPowerAssertionHeld];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s halogen power assertion already in the correct state: %d.\n", v1, 0x12u);
}

void recordCallback_cold_1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    [a1 pcmInputDataMaxSzInBytes];
    [a1 pcmInputDataIndexInBytes];
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0x14u);
  }
}

BOOL IOAccessoryStartSystemStateMonitor()
{
  if (*monitor)
  {
    return 0;
  }

  v0 = objc_alloc_init(IOAccessorySystemStateMonitor);
  v1 = *monitor;
  *monitor = v0;

  return *monitor != 0;
}

BOOL IOAccessoryStartLDCM(__CFRunLoop *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  refCon = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"LDCMDiscoveryDisabled"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Starting LDCM Now", buf, 2u);
  }

  if (!_MergedGlobals_0)
  {
    v4 = objc_opt_new();
    v5 = _MergedGlobals_0;
    _MergedGlobals_0 = v4;
  }

  if (!qword_2812C4330)
  {
    v6 = objc_opt_new();
    v7 = qword_2812C4330;
    qword_2812C4330 = v6;
  }

  started = IOAccessoryStartVoltageEventMonitorLegacy(a1);
  v9 = started;
  v10 = started != 0;
  notification = -1431655766;
  v11 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v21 = v3;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - LDCM Discovery disabled? default setting: %d", buf, 8u);
  }

  if ((v3 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM Discovery is enabled.", buf, 2u);
    }

    refCon = v11;
    v19 = a1;
    v12 = IOServiceMatching("IOPortFeatureLDCM");
    v13 = IOServiceAddMatchingNotification(v11, "IOServiceFirstPublish", v12, IOPortLDCMServiceMatchingCallback, &refCon, &notification);
    if (v9)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == 0;
    }

    v10 = v14;
    IOPortLDCMServiceMatchingCallback(&refCon, notification);
  }

  RunLoopSource = IONotificationPortGetRunLoopSource(v11);
  if (RunLoopSource)
  {
    CFRunLoopAddSource(a1, RunLoopSource, *MEMORY[0x277CBF048]);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void IOPortLDCMServiceMatchingCallback_cold_1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "LDCM - Failed to instantiate IOPortLDCMManagerV4!!!", v2, 2u);
  }

  *a1 = 0;
}

void IOPortLDCMServiceMatchingCallback_cold_2(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "LDCM - Failed to read LDCM architecture version!!!", v4, 2u);
  }

  *a2 = a1;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x28210F308](calendar, v3, at);
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}