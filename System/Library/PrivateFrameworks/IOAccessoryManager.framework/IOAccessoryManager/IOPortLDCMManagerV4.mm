@interface IOPortLDCMManagerV4
- (BOOL)checkIsReceptacleEmpty;
- (IOPortLDCMManagerV4)initWithParams:(unint64_t)params withDryPollingInterval:(unint64_t)interval withService:(unsigned int)service withNotificationPort:(IONotificationPort *)port withServerRunloop:(__CFRunLoop *)runloop;
- (id)buildMeasurementOutputString:(id)string withMeasurementReason:(int)reason withMeasurementEvent:(id)event;
- (id)extractData:(unsigned int *)data :(unint64_t)a4;
- (id)publishAnalytics:(id)analytics withMeasurementReason:(int)reason withWaveformRawData:(char *)data withWaveformDataLen:(unint64_t)len;
- (int)disableOVPInterrupts;
- (int)getData:(char *)outputStruct :(unint64_t *)outputStructCnt;
- (int)setLDCMMeasurementStatus:(int)status;
- (int)setLDCMState:(int)state;
- (int)setLiquidDetected:(unsigned __int8)detected;
- (int)setMitigations:(unsigned __int8)mitigations;
- (int)setUserOverride:(unsigned __int8)override;
- (int)setWaveformExtractionEnabled:(unsigned __int8)enabled;
- (void)dealloc;
- (void)generateLDCMCSVData;
- (void)handleAttachEvent;
- (void)handleDetachEvent;
- (void)handleLDCMInterrupt;
- (void)handleLDCMMitigationsStatusChange:(int)change;
- (void)handleMeasurementResults:(int)results;
- (void)hideUI;
- (void)logInfo:(id)info;
- (void)measureOccupiedWetPortDuration;
- (void)performLDCMMeasurement:(int)measurement;
- (void)processBehaviorDictionary:(id)dictionary;
- (void)showUI;
- (void)storeWaveform:(char *)waveform withWaveformDataLen:(unint64_t)len;
@end

@implementation IOPortLDCMManagerV4

- (BOOL)checkIsReceptacleEmpty
{
  existing = 0;
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("IOPort");
  MatchingServices = IOServiceGetMatchingServices(v2, v3, &existing);
  v5 = existing;
  if (MatchingServices)
  {
    v6 = 1;
  }

  else
  {
    v6 = existing == 0;
  }

  if (v6)
  {
    LOBYTE(v7) = 0;
    if (!existing)
    {
      return v7;
    }

    goto LABEL_21;
  }

  v8 = IOIteratorNext(existing);
  v7 = v8;
  if (v8)
  {
    v9 = *MEMORY[0x277CBECE8];
    do
    {
      valuePtr = 0;
      CFProperty = IORegistryEntryCreateCFProperty(v7, @"PortType", v9, 0);
      v11 = CFProperty;
      if (CFProperty)
      {
        CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
        if (valuePtr == 2)
        {
          v13 = IORegistryEntryCreateCFProperty(v7, @"ConnectionActive", v9, 0);
          if (v13)
          {
            v14 = v13;
            v12 = CFBooleanGetValue(v13) == 0;
            CFRelease(v14);
          }

          else
          {
            v12 = 0;
          }

          IOObjectRelease(v7);
          goto LABEL_19;
        }
      }

      v7 = IOIteratorNext(existing);
    }

    while (v7);
    v12 = 0;
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    CFRelease(v11);
    LOBYTE(v7) = v12;
  }

LABEL_20:
  v5 = existing;
  if (existing)
  {
LABEL_21:
    IOObjectRelease(v5);
  }

  return v7;
}

- (void)generateLDCMCSVData
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Nothing to write to csv file.\n", v0, 2u);
  }
}

uint64_t __42__IOPortLDCMManagerV4_generateLDCMCSVData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", *(a1 + 32), v5];
  v23 = 0;
  v9 = [v7 attributesOfItemAtPath:v8 error:&v23];
  v10 = v23;

  if (v10)
  {
    v11 = [v10 localizedDescription];
    NSLog(&cfstr_ErrorFetchingF.isa, v11, v5);
  }

  v12 = *MEMORY[0x277CCA108];
  v13 = [v9 objectForKey:*MEMORY[0x277CCA108]];
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", *(a1 + 32), v6];
  v22 = 0;
  v16 = [v14 attributesOfItemAtPath:v15 error:&v22];
  v17 = v22;

  if (v17)
  {
    v18 = [v17 localizedDescription];
    NSLog(&cfstr_ErrorFetchingF_0.isa, v18, v6);
  }

  v19 = [v16 objectForKey:v12];
  v20 = [v13 compare:v19];

  return v20;
}

- (IOPortLDCMManagerV4)initWithParams:(unint64_t)params withDryPollingInterval:(unint64_t)interval withService:(unsigned int)service withNotificationPort:(IONotificationPort *)port withServerRunloop:(__CFRunLoop *)runloop
{
  v44 = *MEMORY[0x277D85DE8];
  parent = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __112__IOPortLDCMManagerV4_initWithParams_withDryPollingInterval_withService_withNotificationPort_withServerRunloop___block_invoke;
  v39[3] = &unk_279793120;
  selfCopy = self;
  v40 = selfCopy;
  v13 = MEMORY[0x259C1ED40](v39);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v38.receiver = selfCopy;
  v38.super_class = IOPortLDCMManagerV4;
  v15 = [(IOPortLDCMManagerV4 *)&v38 init];
  v16 = v15;
  if (!v15)
  {
    [IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:];
    goto LABEL_45;
  }

  *(v15 + 6) = 0;
  *(v15 + 4) = 0;
  *(v15 + 9) = params;
  *(v15 + 10) = interval;
  *(v15 + 11) = 0;
  v15[15] = [standardUserDefaults BOOLForKey:@"LDCMV4DisableMitigations"];
  v16[16] = [standardUserDefaults BOOLForKey:@"LDCMV4DisableUI"];
  v16[14] = [standardUserDefaults BOOLForKey:@"LDCMWaveformExtractionDisabled"];
  v16[17] = [standardUserDefaults BOOLForKey:@"LDCMDisableIntrusiveUI"];
  v16[18] = [standardUserDefaults BOOLForKey:@"LDCMForcePortWet"];
  *(v16 + 10) = 0;
  v16[10] = [v16 checkIsReceptacleEmpty];
  *(v16 + 19) = 0;
  v17 = [[LDCMNotificationUIManagerV4 alloc] initWithParams:runloop];
  v18 = *(v16 + 8);
  *(v16 + 8) = v17;

  if (IOServiceOpen(service, *MEMORY[0x277D85F48], 0, v16 + 7))
  {
    [IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:];
    goto LABEL_45;
  }

  if (IOServiceAddInterestNotification(port, service, "IOGeneralInterest", IOPortLDCMFeatureInterestCallback, v16, v16 + 6))
  {
    [IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:];
    goto LABEL_45;
  }

  if (IORegistryEntryGetParentEntry(service, "IOService", &parent) || !parent || !IOObjectConformsTo(parent, "IOPort"))
  {
    [IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:];
    goto LABEL_45;
  }

  if (IOServiceAddInterestNotification(port, parent, "IOGeneralInterest", IOPortLDCMPortInterestCallback, v16, v16 + 6))
  {
    [IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:];
    goto LABEL_45;
  }

  v19 = MGCopyAnswer();
  if (v19)
  {
    v20 = v19;
    if (CFEqual(v19, @"Internal"))
    {
      *(v16 + 8) = 0;
    }

    else
    {
      if (CFEqual(v20, @"NonUI"))
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      *(v16 + 8) = v21;
    }

    CFRelease(v20);
  }

  else
  {
    *(v16 + 8) = 2;
  }

  v22 = MGCopyAnswer();
  if (v22)
  {
    v23 = v22;
    if (CFEqual(v22, @"iPhone"))
    {
      *(v16 + 9) = 0;
    }

    else
    {
      if (CFEqual(v23, @"iPad"))
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      *(v16 + 9) = v24;
    }

    CFRelease(v23);
  }

  else
  {
    *(v16 + 9) = 2;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v25 = v16[14];
    *buf = 67109120;
    v43 = v25;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Waveform extraction default setting: %d", buf, 8u);
  }

  v26 = *(v16 + 8);
  if ((v16[14] & 1) == 0)
  {
    if (v26 != 2)
    {
      if ([v16 setWaveformExtractionEnabled:1])
      {
        v16[14] = 1;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_41;
        }

        *buf = 0;
        v27 = MEMORY[0x277D86220];
        v28 = "LDCM - Failed to enable waveform extraction!";
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_41;
        }

        *buf = 0;
        v27 = MEMORY[0x277D86220];
        v28 = "LDCM - Successfully enabled waveform extraction.";
      }

      goto LABEL_40;
    }

LABEL_33:
    v16[14] = 1;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v27 = MEMORY[0x277D86220];
    v28 = "LDCM - Waveform extraction not enabled due to build type.";
LABEL_40:
    _os_log_impl(&dword_2548F1000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
    goto LABEL_41;
  }

  if (v26 == 2)
  {
    goto LABEL_33;
  }

LABEL_41:
  v30 = dispatch_queue_create("ldcmV4DispatchQueue", 0);
  v31 = *(v16 + 6);
  *(v16 + 6) = v30;

  v32 = *(v16 + 6);
  if (v32)
  {
    v33 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v32);
    v34 = *(v16 + 7);
    *(v16 + 7) = v33;

    v35 = *(v16 + 7);
    if (v35)
    {
      dispatch_source_set_event_handler(v35, v13);
      dispatch_source_set_timer(*(v16 + 7), 0, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(*(v16 + 7));
      [v16 setOverride:0];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - IOPortLDCMManagerV4 successfully initialized!", buf, 2u);
      }
    }

    else
    {
      [IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:];
    }
  }

  else
  {
    [IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:];
  }

LABEL_45:
  if (parent)
  {
    IOObjectRelease(parent);
  }

  v36 = v16;

  return v36;
}

- (void)dealloc
{
  ldcmFeatureConnect = self->_ldcmFeatureConnect;
  if (ldcmFeatureConnect)
  {
    IOServiceClose(ldcmFeatureConnect);
  }

  notification = self->_notification;
  if (notification)
  {
    IOObjectRelease(notification);
  }

  v5.receiver = self;
  v5.super_class = IOPortLDCMManagerV4;
  [(IOPortLDCMManagerV4 *)&v5 dealloc];
}

- (void)performLDCMMeasurement:(int)measurement
{
  v3 = *&measurement;
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v3;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Beginning LDCM measurement. Reason: %d", buf, 8u);
  }

  v14 = 55;
  memset(v17, 0, sizeof(v17));
  v13 = 1152;
  bzero(buf, 0x480uLL);
  if (!self->_waveformExtractionDisabled)
  {
    if ([(IOPortLDCMManagerV4 *)self getWaveform:buf])
    {
      [IOPortLDCMManagerV4 performLDCMMeasurement:];
    }

    if (v13 != 1152)
    {
      [IOPortLDCMManagerV4 performLDCMMeasurement:];
    }
  }

  if ([(IOPortLDCMManagerV4 *)self getData:v17])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IOPortLDCMManagerV4 performLDCMMeasurement:];
    }

    goto LABEL_34;
  }

  if (v14 != 55)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IOPortLDCMManagerV4 performLDCMMeasurement:];
    }

LABEL_34:
    v7 = 0;
    v8 = @"None";
    goto LABEL_27;
  }

  v5 = [LDCMMeasurementV4 alloc];
  v6 = [(LDCMMeasurementV4 *)v5 initWithParams:v17];
  v7 = v6;
  if (v3 != 2)
  {
    [(IOPortLDCMManagerV4 *)self handleMeasurementResults:[(LDCMMeasurementV4 *)v6 ldcmPortStatus]];
  }

  v8 = [(IOPortLDCMManagerV4 *)self publishAnalytics:v7 withMeasurementReason:v3 withWaveformRawData:buf withWaveformDataLen:v13];
  self->_measurementInfoOutputString = [(IOPortLDCMManagerV4 *)self buildMeasurementOutputString:v7 withMeasurementReason:v3 withMeasurementEvent:v8];
  if (self->_buildType != 2)
  {
    [(IOPortLDCMManagerV4 *)self logInfo:v7];
    [(IOPortLDCMManagerV4 *)self generateLDCMCSVData];
  }

  if ([(LDCMMeasurementV4 *)v7 ldcmPortStatus]== 1 || self->_behaviorOverrideForcePortWet)
  {
    self->_isWet = 1;
    [(IOPortLDCMManagerV4 *)self setMitigations:1];
    if (!self->_isReceptacleEmpty)
    {
      [(IOPortLDCMManagerV4 *)self measureOccupiedWetPortDuration];
    }
  }

  else
  {
    if ([(IOPortLDCMManagerV4 *)self checkIsReceptacleEmpty])
    {
      [(IOPortLDCMManagerV4 *)self setUserOverride:0];
      [(IOPortLDCMManagerV4 *)self setMitigations:0];
    }

    self->_isWet = 0;
  }

  if (v3 == 1)
  {
    [(IOPortLDCMManagerV4 *)self measureOccupiedWetPortDuration];
  }

  if ([(LDCMMeasurementV4 *)v7 ldcmCompletion]== 2)
  {
    [(IOPortLDCMManagerV4 *)self setOvpErrorCount:([(IOPortLDCMManagerV4 *)self ovpErrorCount]+ 1)];
    if ([(IOPortLDCMManagerV4 *)self ovpErrorCount]>= 0x32 && ![(IOPortLDCMManagerV4 *)self ovpInterruptsDisabled])
    {
      [(IOPortLDCMManagerV4 *)self disableOVPInterrupts];
      [(IOPortLDCMManagerV4 *)self setOvpInterruptsDisabled:1];
    }
  }

LABEL_27:
  v9 = 72;
  if (!self->_isWet)
  {
    v9 = 80;
  }

  v10 = *(&self->super.isa + v9);
  timer = self->_timer;
  v12 = dispatch_walltime(0, v10);
  dispatch_source_set_timer(timer, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)handleAttachEvent
{
  ldcmV4DispatchQueue = self->_ldcmV4DispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__IOPortLDCMManagerV4_handleAttachEvent__block_invoke;
  block[3] = &unk_279793120;
  block[4] = self;
  dispatch_async(ldcmV4DispatchQueue, block);
}

- (void)handleDetachEvent
{
  ldcmV4DispatchQueue = self->_ldcmV4DispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__IOPortLDCMManagerV4_handleDetachEvent__block_invoke;
  block[3] = &unk_279793120;
  block[4] = self;
  dispatch_async(ldcmV4DispatchQueue, block);
}

uint64_t __40__IOPortLDCMManagerV4_handleDetachEvent__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 10) = 1;
  [*(a1 + 32) hideUI];
  v2 = *(a1 + 32);

  return [v2 performLDCMMeasurement:1];
}

- (void)handleLDCMInterrupt
{
  ldcmV4DispatchQueue = self->_ldcmV4DispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__IOPortLDCMManagerV4_handleLDCMInterrupt__block_invoke;
  block[3] = &unk_279793120;
  block[4] = self;
  dispatch_async(ldcmV4DispatchQueue, block);
}

- (void)handleLDCMMitigationsStatusChange:(int)change
{
  ldcmV4DispatchQueue = self->_ldcmV4DispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__IOPortLDCMManagerV4_handleLDCMMitigationsStatusChange___block_invoke;
  v4[3] = &unk_279793148;
  v4[4] = self;
  changeCopy = change;
  dispatch_async(ldcmV4DispatchQueue, v4);
}

id *__57__IOPortLDCMManagerV4_handleLDCMMitigationsStatusChange___block_invoke(id *result)
{
  v1 = result;
  v2 = *(result + 10);
  *(result[4] + 10) = v2;
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Mitigations successful. Showing UI", buf, 2u);
        }

        return [v1[4] showUI];
      }

      return result;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return [v1[4] hideUI];
    }

    *v8 = 0;
    v3 = MEMORY[0x277D86220];
    v4 = "LDCM - Mitigations no longer active.";
    v5 = v8;
LABEL_13:
    _os_log_impl(&dword_2548F1000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    return [v1[4] hideUI];
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      return result;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return [v1[4] hideUI];
    }

    LOWORD(v7) = 0;
    v3 = MEMORY[0x277D86220];
    v4 = "LDCM - Mitigations triggered... Waiting for attach and/or mitigations success.";
    v5 = &v7;
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - WARNING: Mitigations failed!!!", v9, 2u);
  }

  v6 = v1[4];
  if (*(v6 + 9) == 1 || *(v6 + 17) == 1)
  {
    [v6 showUI];
  }

  else
  {
    [v6 hideUI];
  }

  return AnalyticsSendEvent();
}

- (void)handleMeasurementResults:(int)results
{
  selfCopy = self;
  if (results == 1)
  {
    self->_isWet = 1;
LABEL_3:

    [(IOPortLDCMManagerV4 *)self setMitigations:?];
    return;
  }

  self->_isWet = 0;
  if ([(IOPortLDCMManagerV4 *)self checkIsReceptacleEmpty])
  {
    if (selfCopy->_overrideEnabled)
    {
      [(IOPortLDCMManagerV4 *)selfCopy setUserOverride:0];
    }

    if (selfCopy->_mitigationsEnabled)
    {
      self = selfCopy;
      goto LABEL_3;
    }
  }
}

- (void)logInfo:(id)info
{
  v46 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    ldcmFeatureStatus = [infoCopy ldcmFeatureStatus];
    ldcmMitigationsStatus = [infoCopy ldcmMitigationsStatus];
    mitigationsEnabled = self->_mitigationsEnabled;
    overrideEnabled = self->_overrideEnabled;
    v36 = 67111168;
    *v37 = ldcmFeatureStatus;
    *&v37[4] = 1024;
    *&v37[6] = ldcmMitigationsStatus;
    LOWORD(v38) = 1024;
    *(&v38 + 2) = mitigationsEnabled;
    HIWORD(v38) = 1024;
    *v39 = overrideEnabled;
    *&v39[4] = 1024;
    *&v39[6] = [infoCopy ldcmPortStatus];
    v40 = 1024;
    *v41 = [infoCopy ldcmWet];
    *&v41[4] = 1024;
    *&v41[6] = [infoCopy ldcmWetStateDuration];
    v42 = 1024;
    checkIsReceptacleEmpty = [(IOPortLDCMManagerV4 *)self checkIsReceptacleEmpty];
    v44 = 1024;
    ldcmRREFGated = [infoCopy ldcmRREFGated];
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Feature Status: %x, Mitigations Status: %d, Mitigations Framework State: %d, Override Framework State: %d, Wet Declared %d, Wet Measured: %d, Wet State Duration: %d, Receptacle Empty: %d, RREF Gated: %d", &v36, 0x38u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    previousLDCMPortStatus = self->_previousLDCMPortStatus;
    ldcmPortStatus = [infoCopy ldcmPortStatus];
    ldcmMeasurePin = [infoCopy ldcmMeasurePin];
    ldcmCompletion = [infoCopy ldcmCompletion];
    ldcmLowImp = [infoCopy ldcmLowImp];
    v36 = 67110144;
    *v37 = previousLDCMPortStatus;
    *&v37[4] = 1024;
    *&v37[6] = ldcmPortStatus;
    LOWORD(v38) = 1024;
    *(&v38 + 2) = ldcmMeasurePin;
    HIWORD(v38) = 1024;
    *v39 = ldcmCompletion;
    *&v39[4] = 1024;
    *&v39[6] = ldcmLowImp;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Analytics bitfields - _previousLDCMPortStatus %d, ldcmPortStatus %d, ldcmMeasurePin %d, ldcmCompletion %d, ldcmLowImp %d", &v36, 0x20u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    [infoCopy ldcmLoadImpMag];
    v15 = v14;
    [infoCopy ldcmLoadImpPhase];
    v17 = v16;
    [infoCopy ldcmCalculatedRes];
    v19 = v18;
    [infoCopy ldcmCalculatedCap];
    v36 = 134218752;
    *v37 = v15;
    *&v37[8] = 2048;
    v38 = v17;
    *v39 = 2048;
    *&v39[2] = v19;
    v40 = 2048;
    *v41 = v20;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Measurement Data - loadImpMag: %f, loadImpPhase: %f, calculatedRes: %f, calculatedCap: %f", &v36, 0x2Au);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    ldcmWetStateDuration = [infoCopy ldcmWetStateDuration];
    ldcmWetStateTooLong = [infoCopy ldcmWetStateTooLong];
    ldcmWetTooLongLDCMDisabled = [infoCopy ldcmWetTooLongLDCMDisabled];
    v36 = 67109632;
    *v37 = ldcmWetStateDuration;
    *&v37[4] = 1024;
    *&v37[6] = ldcmWetStateTooLong;
    LOWORD(v38) = 1024;
    *(&v38 + 2) = ldcmWetTooLongLDCMDisabled;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Measurement Data - wetStateDuration: %d, wetStateTooLong: %d, wetTooLongLDCMDisabled: %d", &v36, 0x14u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    [infoCopy ldcmMeasureTIASNR];
    v25 = v24;
    [infoCopy ldcmMeasureVoltageSNR];
    v27 = v26;
    [infoCopy ldcmCalTIASNR];
    v29 = v28;
    [infoCopy ldcmCalVoltageSNR];
    v36 = 134218752;
    *v37 = v25;
    *&v37[8] = 2048;
    v38 = v27;
    *v39 = 2048;
    *&v39[2] = v29;
    v40 = 2048;
    *v41 = v30;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Measurement Data - MeasureTIASNR: %f, MeasureVoltageSNR: %f, CalTIASNR: %f, CalVoltageSNR: %f", &v36, 0x2Au);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    [infoCopy ldcmTIAGainCorrection];
    v32 = v31;
    [infoCopy ldcmVoltageGainCorrection];
    v34 = v33;
    [infoCopy ldcmPhaseComp];
    v36 = 134218496;
    *v37 = v32;
    *&v37[8] = 2048;
    v38 = v34;
    *v39 = 2048;
    *&v39[2] = v35;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Measurement Data - TIAGainCorrection: %f, VoltageGainCorrection: %f, PhaseComp: %f", &v36, 0x20u);
  }
}

- (id)publishAnalytics:(id)analytics withMeasurementReason:(int)reason withWaveformRawData:(char *)data withWaveformDataLen:(unint64_t)len
{
  v224 = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v11 = analyticsCopy;
  if (!self->_previousLDCMPortStatus && [analyticsCopy ldcmPortStatus] == 1 && (!objc_msgSend(v11, "ldcmMeasurePin") || objc_msgSend(v11, "ldcmMeasurePin") == 1) && !objc_msgSend(v11, "ldcmCompletion") && !objc_msgSend(v11, "ldcmLowImp"))
  {
    [(IOPortLDCMManagerV4 *)self storeWaveform:data withWaveformDataLen:len];
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v137 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedCap];
    v138 = [v137 numberWithDouble:?];
    [v12 setObject:v138 forKey:@"capacitance"];

    v139 = MEMORY[0x277CCABB0];
    [v11 ldcmLoadImpMag];
    v140 = [v139 numberWithDouble:?];
    [v12 setObject:v140 forKey:@"impedance"];

    v141 = MEMORY[0x277CCABB0];
    [v11 ldcmLoadImpPhase];
    v142 = [v141 numberWithDouble:?];
    [v12 setObject:v142 forKey:@"impedancePhase"];

    v143 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedRes];
    v144 = [v143 numberWithDouble:?];
    [v12 setObject:v144 forKey:@"resistance"];

    v145 = MEMORY[0x277CCABB0];
    [v11 ldcmMeasureTIASNR];
    v146 = [v145 numberWithDouble:?];
    [v12 setObject:v146 forKey:@"measurementCurrentSNR"];

    v147 = MEMORY[0x277CCABB0];
    [v11 ldcmMeasureVoltageSNR];
    v148 = [v147 numberWithDouble:?];
    [v12 setObject:v148 forKey:@"measurementVoltageSNR"];

    ldcmWet = [v11 ldcmWet];
    if (!reason || ldcmWet == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v223 = 0;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetOnConnect!!!", v223, 2u);
      }

      v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.wetOnConnect";
    }

    else
    {
      ldcmWet2 = [v11 ldcmWet];
      if (reason == 1 || ldcmWet2 == 2)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v223 = 0;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetOnDisconnect!!!", v223, 2u);
        }

        v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.wetOnDisconnect";
      }

      else
      {
        checkIsReceptacleEmpty = [(IOPortLDCMManagerV4 *)self checkIsReceptacleEmpty];
        v152 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (checkIsReceptacleEmpty)
        {
          if (v152)
          {
            *v223 = 0;
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - dryToWetTransition!!!", v223, 2u);
          }

          v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.dryToWetTransition";
        }

        else
        {
          if (v152)
          {
            *v223 = 0;
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - dryToWetTransitionPortNotEmpty!!!", v223, 2u);
          }

          v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.dryToWetTransitionPortNotEmpty";
        }
      }
    }

    AnalyticsSendEvent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmLoadImpMag];
      v193 = v192;
      [v11 ldcmLoadImpPhase];
      v195 = v194;
      [v11 ldcmCalculatedRes];
      v197 = v196;
      [v11 ldcmCalculatedCap];
      *v223 = 134218752;
      *&v223[4] = v193;
      *&v223[12] = 2048;
      *&v223[14] = v195;
      *&v223[22] = 2048;
      *&v223[24] = v197;
      *&v223[32] = 2048;
      *&v223[34] = v198;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - dryToWetTransition - loadImpMag: %f, loadImpPhase: %f, calculatedRes: %f, calculatedCap: %f", v223, 0x2Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmTIACurrentAmp];
      v200 = v199;
      [v11 ldcmVoltageAmp];
      v202 = v201;
      [v11 ldcmLeakageCurrentAmp];
      *v223 = 134218496;
      *&v223[4] = v200;
      *&v223[12] = 2048;
      *&v223[14] = v202;
      *&v223[22] = 2048;
      *&v223[24] = v203;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - dryToWetTransition - TIACurrentAmp: %f, VoltageAmp: %f, LeakageCurrentAmp: %f", v223, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmMeasureTIASNR];
      v205 = v204;
      [v11 ldcmMeasureVoltageSNR];
      v207 = v206;
      [v11 ldcmLeakageCurrentAmp];
      *v223 = 134218496;
      *&v223[4] = v205;
      *&v223[12] = 2048;
      *&v223[14] = v207;
      *&v223[22] = 2048;
      *&v223[24] = v208;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - dryToWetTransition - MeasureTIASNR: %f, MeasureVoltageSNR: %f, LeakageCurrentAmp: %f", v223, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmCalTIAAmp];
      v210 = v209;
      [v11 ldcmCalVoltageAmp];
      v212 = v211;
      [v11 ldcmCalTIASNR];
      v214 = v213;
      [v11 ldcmCalVoltageSNR];
      *v223 = 134218752;
      *&v223[4] = v210;
      *&v223[12] = 2048;
      *&v223[14] = v212;
      *&v223[22] = 2048;
      *&v223[24] = v214;
      *&v223[32] = 2048;
      *&v223[34] = v215;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - dryToWetTransition - CalTIAAmp: %f, CalVoltageAmp: %f, CalTIASNR: %f, CalVoltageSNR: %f", v223, 0x2Au);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_127;
    }

    [v11 ldcmTIAGainCorrection];
    v217 = v216;
    [v11 ldcmVoltageGainCorrection];
    v219 = v218;
    [v11 ldcmPhaseComp];
    *v223 = 134218496;
    *&v223[4] = v217;
    *&v223[12] = 2048;
    *&v223[14] = v219;
    *&v223[22] = 2048;
    *&v223[24] = v220;
    v48 = MEMORY[0x277D86220];
    v49 = "LDCM - dryToWetTransition - TIAGainCorrection: %f, VoltageGainCorrection: %f, PhaseComp: %f";
    v52 = 32;
    goto LABEL_32;
  }

  if (-[IOPortLDCMManagerV4 previousLDCMPortStatus](self, "previousLDCMPortStatus") == 1 && ![v11 ldcmPortStatus] && (!objc_msgSend(v11, "ldcmMeasurePin") || objc_msgSend(v11, "ldcmMeasurePin") == 1) && !objc_msgSend(v11, "ldcmCompletion") && !objc_msgSend(v11, "ldcmLowImp"))
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v153 = MEMORY[0x277CCABB0];
    [v11 ldcmLoadImpMag];
    v154 = [v153 numberWithDouble:?];
    [v12 setObject:v154 forKey:@"initialImpedance"];

    v155 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedRes];
    v156 = [v155 numberWithDouble:?];
    [v12 setObject:v156 forKey:@"initialResistance"];

    v157 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedCap];
    v158 = [v157 numberWithDouble:?];
    [v12 setObject:v158 forKey:@"initialCapacitance"];

    v159 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "ldcmWetStateDuration")}];
    [v12 setObject:v159 forKey:@"wetDuration"];

    LODWORD(v159) = [(IOPortLDCMManagerV4 *)self checkIsReceptacleEmpty];
    v160 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v159)
    {
      if (v160)
      {
        *v223 = 0;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransition!!!", v223, 2u);
      }

      v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.wetToDryTransition";
    }

    else
    {
      if (v160)
      {
        *v223 = 0;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransitionPortNotEmpty!!!", v223, 2u);
      }

      v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.wetToDryTransitionPortNotEmpty";
    }

    AnalyticsSendEvent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v223 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransition!!!", v223, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmLoadImpMag];
      v162 = v161;
      [v11 ldcmLoadImpPhase];
      v164 = v163;
      [v11 ldcmCalculatedRes];
      v166 = v165;
      [v11 ldcmCalculatedCap];
      *v223 = 134218752;
      *&v223[4] = v162;
      *&v223[12] = 2048;
      *&v223[14] = v164;
      *&v223[22] = 2048;
      *&v223[24] = v166;
      *&v223[32] = 2048;
      *&v223[34] = v167;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransition - loadImpMag: %f, loadImpPhase: %f, calculatedRes: %f, calculatedCap: %f", v223, 0x2Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmTIACurrentAmp];
      v169 = v168;
      [v11 ldcmVoltageAmp];
      v171 = v170;
      [v11 ldcmLeakageCurrentAmp];
      *v223 = 134218496;
      *&v223[4] = v169;
      *&v223[12] = 2048;
      *&v223[14] = v171;
      *&v223[22] = 2048;
      *&v223[24] = v172;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransition - TIACurrentAmp: %f, VoltageAmp: %f, LeakageCurrentAmp: %f", v223, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmMeasureTIASNR];
      v174 = v173;
      [v11 ldcmMeasureVoltageSNR];
      v176 = v175;
      [v11 ldcmLeakageCurrentAmp];
      *v223 = 134218496;
      *&v223[4] = v174;
      *&v223[12] = 2048;
      *&v223[14] = v176;
      *&v223[22] = 2048;
      *&v223[24] = v177;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransition - MeasureTIASNR: %f, MeasureVoltageSNR: %f, LeakageCurrentAmp: %f", v223, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmCalTIAAmp];
      v179 = v178;
      [v11 ldcmCalVoltageAmp];
      v181 = v180;
      [v11 ldcmCalTIASNR];
      v183 = v182;
      [v11 ldcmCalVoltageSNR];
      *v223 = 134218752;
      *&v223[4] = v179;
      *&v223[12] = 2048;
      *&v223[14] = v181;
      *&v223[22] = 2048;
      *&v223[24] = v183;
      *&v223[32] = 2048;
      *&v223[34] = v184;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransition - CalTIAAmp: %f, CalVoltageAmp: %f, CalTIASNR: %f, CalVoltageSNR: %f", v223, 0x2Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmTIAGainCorrection];
      v186 = v185;
      [v11 ldcmVoltageGainCorrection];
      v188 = v187;
      [v11 ldcmPhaseComp];
      *v223 = 134218496;
      *&v223[4] = v186;
      *&v223[12] = 2048;
      *&v223[14] = v188;
      *&v223[22] = 2048;
      *&v223[24] = v189;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransition - TIAGainCorrection: %f, VoltageGainCorrection: %f, PhaseComp: %f", v223, 0x20u);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_127;
    }

    ldcmWetStateDuration = [v11 ldcmWetStateDuration];
    ldcmWetStateTooLong = [v11 ldcmWetStateTooLong];
    *v223 = 67109376;
    *&v223[4] = ldcmWetStateDuration;
    *&v223[8] = 1024;
    *&v223[10] = ldcmWetStateTooLong;
    v48 = MEMORY[0x277D86220];
    v49 = "LDCM - wetToDryTransition - WetStateDuration: %d, WetStateTooLong: %d";
    v52 = 14;
    goto LABEL_32;
  }

  if ([v11 ldcmCompletion] == 1)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v223 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - badMeasurement!!!", v223, 2u);
    }

    v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "ldcmIncompSNRAmpCnt")}];
    [v12 setObject:v13 forKey:@"count"];

    v14 = MEMORY[0x277CCABB0];
    [v11 ldcmTIACurrentAmp];
    v15 = [v14 numberWithDouble:?];
    [v12 setObject:v15 forKey:@"badMeasurementCurrentAmp"];

    v16 = MEMORY[0x277CCABB0];
    [v11 ldcmVoltageAmp];
    v17 = [v16 numberWithDouble:?];
    [v12 setObject:v17 forKey:@"badMeasurementVoltageAmp"];

    v18 = MEMORY[0x277CCABB0];
    [v11 ldcmCalVoltageAmp];
    v19 = [v18 numberWithDouble:?];
    [v12 setObject:v19 forKey:@"badCalVoltageAmp"];

    v20 = MEMORY[0x277CCABB0];
    [v11 ldcmCalTIAAmp];
    v21 = [v20 numberWithDouble:?];
    [v12 setObject:v21 forKey:@"badCalCurrentAmp"];

    v22 = MEMORY[0x277CCABB0];
    [v11 ldcmMeasureTIASNR];
    v23 = [v22 numberWithDouble:?];
    [v12 setObject:v23 forKey:@"badMeasurementCurrentSNR"];

    v24 = MEMORY[0x277CCABB0];
    [v11 ldcmMeasureVoltageSNR];
    v25 = [v24 numberWithDouble:?];
    [v12 setObject:v25 forKey:@"badMeasurementVoltageSNR"];

    v26 = MEMORY[0x277CCABB0];
    [v11 ldcmCalVoltageSNR];
    v27 = [v26 numberWithDouble:?];
    [v12 setObject:v27 forKey:@"badCalVoltageSNR"];

    v28 = MEMORY[0x277CCABB0];
    [v11 ldcmCalTIASNR];
    v29 = [v28 numberWithDouble:?];
    [v12 setObject:v29 forKey:@"badCalCurrentSNR"];

    AnalyticsSendEvent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      ldcmIncompSNRAmpCnt = [v11 ldcmIncompSNRAmpCnt];
      [v11 ldcmTIACurrentAmp];
      v32 = v31;
      [v11 ldcmVoltageAmp];
      v34 = v33;
      [v11 ldcmCalTIAAmp];
      v36 = v35;
      [v11 ldcmCalVoltageAmp];
      *v223 = 67110144;
      *&v223[4] = ldcmIncompSNRAmpCnt;
      *&v223[8] = 2048;
      *&v223[10] = v32;
      *&v223[18] = 2048;
      *&v223[20] = v34;
      *&v223[28] = 2048;
      *&v223[30] = v36;
      *&v223[38] = 2048;
      *&v223[40] = v37;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - IncompSNRAmpCnt: %d, TIACurrentAmp: %f, VoltageAmp: %f, CalTIAAmp: %f, CalVoltageAmp: %f", v223, 0x30u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmMeasureTIASNR];
      v39 = v38;
      [v11 ldcmMeasureVoltageSNR];
      v41 = v40;
      [v11 ldcmCalTIASNR];
      v43 = v42;
      [v11 ldcmCalVoltageSNR];
      *v223 = 134218752;
      *&v223[4] = v39;
      *&v223[12] = 2048;
      *&v223[14] = v41;
      *&v223[22] = 2048;
      *&v223[24] = v43;
      *&v223[32] = 2048;
      *&v223[34] = v44;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - TIACurrentSNR: %f, VoltageSNR: %f, CalTIASNR: %f, CalVoltageSNR: %f", v223, 0x2Au);
    }

    v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.badMeasurement";
    goto LABEL_127;
  }

  if ([v11 ldcmCompletion] == 2)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v223 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - ovpError!!!", v223, 2u);
    }

    v46 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "ldcmIncompOVPCnt")}];
    [v12 setObject:v46 forKey:@"count"];

    v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.ovpError";
    AnalyticsSendEvent();
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_127;
    }

    ldcmIncompOVPCnt = [v11 ldcmIncompOVPCnt];
    *v223 = 67109120;
    *&v223[4] = ldcmIncompOVPCnt;
    v48 = MEMORY[0x277D86220];
    v49 = "LDCM - IncompOVPCnt: %d";
    goto LABEL_31;
  }

  if ([v11 ldcmCompletion] == 3)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v223 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - ldcmPreempted!!!", v223, 2u);
    }

    v50 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "ldcmIncompTimeoutCnt")}];
    [v12 setObject:v50 forKey:@"count"];

    v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.ldcmPreempted";
    AnalyticsSendEvent();
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_127;
    }

    ldcmIncompTimeoutCnt = [v11 ldcmIncompTimeoutCnt];
    *v223 = 67109120;
    *&v223[4] = ldcmIncompTimeoutCnt;
    v48 = MEMORY[0x277D86220];
    v49 = "LDCM - IncompTimeoutCnt: %d";
LABEL_31:
    v52 = 8;
LABEL_32:
    _os_log_impl(&dword_2548F1000, v48, OS_LOG_TYPE_DEFAULT, v49, v223, v52);
LABEL_127:

    goto LABEL_128;
  }

  if ([v11 ldcmCompletion] == 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v223 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - ldcmDisabled!!!", v223, 2u);
    }

    v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v54 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "ldcmFeatureStatus")}];
    [v53 setObject:v54 forKey:@"disable_reason"];

    AnalyticsSendEvent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      ldcmFeatureStatus = [v11 ldcmFeatureStatus];
      *v223 = 67109120;
      *&v223[4] = ldcmFeatureStatus;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - ldcmDisabled - FeatureStatus: %d", v223, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v223 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - selfTestFailure!!!", v223, 2u);
    }

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);

    v56 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedRes];
    v57 = [v56 numberWithDouble:?];
    [v12 setObject:v57 forKey:@"resistance"];

    v58 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedCap];
    v59 = [v58 numberWithDouble:?];
    [v12 setObject:v59 forKey:@"capacitance"];

    AnalyticsSendEvent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmLoadImpMag];
      v61 = v60;
      [v11 ldcmLoadImpPhase];
      v63 = v62;
      [v11 ldcmCalculatedRes];
      v65 = v64;
      [v11 ldcmCalculatedCap];
      *v223 = 134218752;
      *&v223[4] = v61;
      *&v223[12] = 2048;
      *&v223[14] = v63;
      *&v223[22] = 2048;
      *&v223[24] = v65;
      *&v223[32] = 2048;
      *&v223[34] = v66;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - selfTestFailure - loadImpMag: %f, loadImpPhase: %f, calculatedRes: %f, calculatedCap: %f", v223, 0x2Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmTIACurrentAmp];
      v68 = v67;
      [v11 ldcmVoltageAmp];
      v70 = v69;
      [v11 ldcmLeakageCurrentAmp];
      *v223 = 134218496;
      *&v223[4] = v68;
      *&v223[12] = 2048;
      *&v223[14] = v70;
      *&v223[22] = 2048;
      *&v223[24] = v71;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - selfTestFailure - TIACurrentAmp: %f, VoltageAmp: %f, LeakageCurrentAmp: %f", v223, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmMeasureTIASNR];
      v73 = v72;
      [v11 ldcmMeasureVoltageSNR];
      v75 = v74;
      [v11 ldcmLeakageCurrentAmp];
      *v223 = 134218496;
      *&v223[4] = v73;
      *&v223[12] = 2048;
      *&v223[14] = v75;
      *&v223[22] = 2048;
      *&v223[24] = v76;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - selfTestFailure - MeasureTIASNR: %f, MeasureVoltageSNR: %f, LeakageCurrentAmp: %f", v223, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmCalTIAAmp];
      v78 = v77;
      [v11 ldcmCalVoltageAmp];
      v80 = v79;
      [v11 ldcmCalTIASNR];
      v82 = v81;
      [v11 ldcmCalVoltageSNR];
      *v223 = 134218752;
      *&v223[4] = v78;
      *&v223[12] = 2048;
      *&v223[14] = v80;
      *&v223[22] = 2048;
      *&v223[24] = v82;
      *&v223[32] = 2048;
      *&v223[34] = v83;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - selfTestFailure - CalTIAAmp: %f, CalVoltageAmp: %f, CalTIASNR: %f, CalVoltageSNR: %f", v223, 0x2Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmTIAGainCorrection];
      v85 = v84;
      [v11 ldcmVoltageGainCorrection];
      v87 = v86;
      [v11 ldcmPhaseComp];
      *v223 = 134218496;
      *&v223[4] = v85;
      *&v223[12] = 2048;
      *&v223[14] = v87;
      *&v223[22] = 2048;
      *&v223[24] = v88;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - selfTestFailure - TIAGainCorrection: %f, VoltageGainCorrection: %f, PhaseComp: %f", v223, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      ldcmWetStateDuration2 = [v11 ldcmWetStateDuration];
      ldcmWetStateTooLong2 = [v11 ldcmWetStateTooLong];
      *v223 = 67109376;
      *&v223[4] = ldcmWetStateDuration2;
      *&v223[8] = 1024;
      *&v223[10] = ldcmWetStateTooLong2;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - selfTestFailure - WetStateDuration: %d, WetStateTooLong: %d", v223, 0xEu);
    }

    v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.selfTestFailure";
    goto LABEL_127;
  }

  if ([v11 ldcmCompletion] == 5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v223 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - ldcmDisabled!!!", v223, 2u);
    }

    v91 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v92 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "ldcmFeatureStatus")}];
    [v91 setObject:v92 forKey:@"disable_reason"];

    AnalyticsSendEvent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      ldcmFeatureStatus2 = [v11 ldcmFeatureStatus];
      *v223 = 67109120;
      *&v223[4] = ldcmFeatureStatus2;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - ldcmDisabled - FeatureStatus: %d", v223, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v223 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - referenceMeasurementFailure!!!", v223, 2u);
    }

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);

    v94 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedRes];
    v95 = [v94 numberWithDouble:?];
    [v12 setObject:v95 forKey:@"resistance"];

    v96 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedCap];
    v97 = [v96 numberWithDouble:?];
    [v12 setObject:v97 forKey:@"capacitance"];

    AnalyticsSendEvent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmLoadImpMag];
      v99 = v98;
      [v11 ldcmLoadImpPhase];
      v101 = v100;
      [v11 ldcmCalculatedRes];
      v103 = v102;
      [v11 ldcmCalculatedCap];
      *v223 = 134218752;
      *&v223[4] = v99;
      *&v223[12] = 2048;
      *&v223[14] = v101;
      *&v223[22] = 2048;
      *&v223[24] = v103;
      *&v223[32] = 2048;
      *&v223[34] = v104;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - referenceMeasurementFailure - loadImpMag: %f, loadImpPhase: %f, calculatedRes: %f, calculatedCap: %f", v223, 0x2Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmTIACurrentAmp];
      v106 = v105;
      [v11 ldcmVoltageAmp];
      v108 = v107;
      [v11 ldcmLeakageCurrentAmp];
      *v223 = 134218496;
      *&v223[4] = v106;
      *&v223[12] = 2048;
      *&v223[14] = v108;
      *&v223[22] = 2048;
      *&v223[24] = v109;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - referenceMeasurementFailure - TIACurrentAmp: %f, VoltageAmp: %f, LeakageCurrentAmp: %f", v223, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmMeasureTIASNR];
      v111 = v110;
      [v11 ldcmMeasureVoltageSNR];
      v113 = v112;
      [v11 ldcmLeakageCurrentAmp];
      *v223 = 134218496;
      *&v223[4] = v111;
      *&v223[12] = 2048;
      *&v223[14] = v113;
      *&v223[22] = 2048;
      *&v223[24] = v114;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - referenceMeasurementFailure - MeasureTIASNR: %f, MeasureVoltageSNR: %f, LeakageCurrentAmp: %f", v223, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmCalTIAAmp];
      v116 = v115;
      [v11 ldcmCalVoltageAmp];
      v118 = v117;
      [v11 ldcmCalTIASNR];
      v120 = v119;
      [v11 ldcmCalVoltageSNR];
      *v223 = 134218752;
      *&v223[4] = v116;
      *&v223[12] = 2048;
      *&v223[14] = v118;
      *&v223[22] = 2048;
      *&v223[24] = v120;
      *&v223[32] = 2048;
      *&v223[34] = v121;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - referenceMeasurementFailure - CalTIAAmp: %f, CalVoltageAmp: %f, CalTIASNR: %f, CalVoltageSNR: %f", v223, 0x2Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmTIAGainCorrection];
      v123 = v122;
      [v11 ldcmVoltageGainCorrection];
      v125 = v124;
      [v11 ldcmPhaseComp];
      *v223 = 134218496;
      *&v223[4] = v123;
      *&v223[12] = 2048;
      *&v223[14] = v125;
      *&v223[22] = 2048;
      *&v223[24] = v126;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - referenceMeasurementFailure - TIAGainCorrection: %f, VoltageGainCorrection: %f, PhaseComp: %f", v223, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      ldcmWetStateDuration3 = [v11 ldcmWetStateDuration];
      ldcmWetStateTooLong3 = [v11 ldcmWetStateTooLong];
      *v223 = 67109376;
      *&v223[4] = ldcmWetStateDuration3;
      *&v223[8] = 1024;
      *&v223[10] = ldcmWetStateTooLong3;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - referenceMeasurementFailure - WetStateDuration: %d, WetStateTooLong: %d", v223, 0xEu);
    }

    v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.referenceMeasurementFailure";
    goto LABEL_127;
  }

  if ([v11 ldcmLowImp] == 1)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v223 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - impedanceTooLow!!!", v223, 2u);
    }

    v129 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "ldcmIncompTimeoutCnt")}];
    [v12 setObject:v129 forKey:@"count"];

    v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.impedanceTooLow";
    AnalyticsSendEvent();
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_127;
    }

    [v11 ldcmLoadImpMag];
    v131 = v130;
    [v11 ldcmLoadImpPhase];
    v133 = v132;
    [v11 ldcmCalculatedRes];
    v135 = v134;
    [v11 ldcmCalculatedCap];
    *v223 = 134218752;
    *&v223[4] = v131;
    *&v223[12] = 2048;
    *&v223[14] = v133;
    *&v223[22] = 2048;
    *&v223[24] = v135;
    *&v223[32] = 2048;
    *&v223[34] = v136;
    v48 = MEMORY[0x277D86220];
    v49 = "LDCM - impedanceTooLow - loadImpMag: %f, loadImpPhase: %f, calculatedRes: %f, calculatedCap: %f";
    v52 = 42;
    goto LABEL_32;
  }

  v45 = @"None";
LABEL_128:
  if (self->_previousLDCMPortStatus == 1)
  {
    ldcmPortStatus = [v11 ldcmPortStatus];
    if (!reason && ldcmPortStatus == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v223 = 0;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - WetReplug", v223, 2u);
      }

      AnalyticsSendEvent();
    }
  }

  self->_previousLDCMPortStatus = [v11 ldcmPortStatus];

  return v45;
}

- (void)storeWaveform:(char *)waveform withWaveformDataLen:(unint64_t)len
{
  v41 = *MEMORY[0x277D85DE8];
  if (len == 1152)
  {
    if (self->_waveformExtractionDisabled)
    {
      [IOPortLDCMManagerV4 storeWaveform:withWaveformDataLen:];
    }

    else
    {
      v27 = [MEMORY[0x277CBEA90] dataWithBytes:waveform length:1152];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v5 = [defaultManager contentsOfDirectoryAtPath:@"/var/logs/ldcm/" error:0];

      v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self BEGINSWITH[cd] 'internalWaveformData'"];
      v26 = v5;
      v7 = [v5 filteredArrayUsingPredicate:v6];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v33;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v33 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"/var/logs/ldcm/", *(*(&v32 + 1) + 8 * i)];
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            v31 = 0;
            [defaultManager2 removeItemAtPath:v13 error:&v31];
          }

          v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v10);
      }

      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      v17 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@%@%@.bin", @"/var/logs/ldcm/", @"internalWaveformData", uUIDString];
      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager3 createFileAtPath:v17 contents:0 attributes:0];

      v19 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v17];
      v30 = 0;
      v20 = [v19 seekToEndReturningOffset:0 error:&v30];
      v21 = v30;
      if (v20)
      {
        v29 = 0;
        v22 = v27;
        [v19 writeData:v27 error:&v29];
        v23 = v29;

        v21 = v23;
      }

      else
      {
        v22 = v27;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v37 = "[IOPortLDCMManagerV4 storeWaveform:withWaveformDataLen:]";
          v38 = 2112;
          v39 = v21;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s LDCM - Error in seeking to end of file. %@\n", buf, 0x16u);
        }
      }

      v28 = 0;
      v24 = [v19 closeAndReturnError:&v28];
      v25 = v28;

      if ((v24 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v37 = "[IOPortLDCMManagerV4 storeWaveform:withWaveformDataLen:]";
        v38 = 2112;
        v39 = v25;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s LDCM - Error in closing file. %@\n", buf, 0x16u);
      }
    }
  }

  else
  {
    [IOPortLDCMManagerV4 storeWaveform:withWaveformDataLen:];
  }
}

- (void)measureOccupiedWetPortDuration
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_isReceptacleEmpty)
  {
    if (measureOccupiedWetPortDuration_currentlyMeasuring)
    {
      [(NSDate *)self->_portAttachedTime timeIntervalSinceNow];
      v4 = llround(-v3);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "[IOPortLDCMManagerV4 measureOccupiedWetPortDuration]";
        v10 = 2048;
        v11 = v4;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s LDCM - Duration of port attached: %ld\n", &v8, 0x16u);
      }

      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = [MEMORY[0x277CCABB0] numberWithLong:v4];
      [v5 setObject:v6 forKey:@"attachDuration"];

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_currentMitigationsStatus];
      [v5 setObject:v7 forKey:@"mitigationStatus"];

      AnalyticsSendEvent();
      measureOccupiedWetPortDuration_currentlyMeasuring = 0;
    }
  }

  else if ((measureOccupiedWetPortDuration_currentlyMeasuring & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[IOPortLDCMManagerV4 measureOccupiedWetPortDuration]";
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Starting measurement of occupied port\n", &v8, 0xCu);
    }

    self->_portAttachedTime = [MEMORY[0x277CBEAA8] now];
    measureOccupiedWetPortDuration_currentlyMeasuring = 1;
  }
}

- (id)extractData:(unsigned int *)data :(unint64_t)a4
{
  v4 = [[LDCMMeasurementV4 alloc] initWithParams:data];

  return v4;
}

- (int)setLiquidDetected:(unsigned __int8)detected
{
  input[1] = *MEMORY[0x277D85DE8];
  ldcmFeatureConnect = self->_ldcmFeatureConnect;
  input[0] = detected;
  return IOConnectCallMethod(ldcmFeatureConnect, 0x3E8u, input, 1u, 0, 0, 0, 0, 0, 0);
}

- (int)setMitigations:(unsigned __int8)mitigations
{
  mitigationsCopy = mitigations;
  v10 = *MEMORY[0x277D85DE8];
  if (mitigations && self->_behaviorOverrideDisableMitigations)
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Skipping mitigations due to behavior override!", buf, 2u);
      return 0;
    }
  }

  else
  {
    *buf = mitigations;
    self->_mitigationsEnabled = mitigations != 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 67109120;
      v8 = mitigationsCopy;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Setting Mitigations in Port Manager: %d!!!", v7, 8u);
    }

    return IOConnectCallMethod(self->_ldcmFeatureConnect, 0x3E9u, buf, 1u, 0, 0, 0, 0, 0, 0);
  }

  return result;
}

- (int)setUserOverride:(unsigned __int8)override
{
  overrideCopy = override;
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = override;
  if (override && self->_overrideEnabled == override)
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Override already enabled, no action taken", buf, 2u);
      return 0;
    }
  }

  else
  {
    if (override)
    {
      AnalyticsSendEvent();
    }

    self->_overrideEnabled = overrideCopy != 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = overrideCopy;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Setting Override in Port Manager: %d!!!", buf, 8u);
    }

    return IOConnectCallMethod(self->_ldcmFeatureConnect, 0x3EAu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  return result;
}

- (int)setLDCMState:(int)state
{
  input[1] = *MEMORY[0x277D85DE8];
  ldcmFeatureConnect = self->_ldcmFeatureConnect;
  input[0] = state;
  return IOConnectCallMethod(ldcmFeatureConnect, 0x3EBu, input, 1u, 0, 0, 0, 0, 0, 0);
}

- (int)setLDCMMeasurementStatus:(int)status
{
  input[1] = *MEMORY[0x277D85DE8];
  ldcmFeatureConnect = self->_ldcmFeatureConnect;
  input[0] = status;
  return IOConnectCallMethod(ldcmFeatureConnect, 0x3ECu, input, 1u, 0, 0, 0, 0, 0, 0);
}

- (int)getData:(char *)outputStruct :(unint64_t *)outputStructCnt
{
  input[1] = *MEMORY[0x277D85DE8];
  ldcmFeatureConnect = self->_ldcmFeatureConnect;
  input[0] = 1;
  return IOConnectCallMethod(ldcmFeatureConnect, 0x3EDu, input, 1u, 0, 0, 0, 0, outputStruct, outputStructCnt);
}

- (int)setWaveformExtractionEnabled:(unsigned __int8)enabled
{
  enabledCopy = enabled;
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = enabled;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v7 = enabledCopy;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM - Setting waveform extraction: %d...", buf, 8u);
  }

  return IOConnectCallMethod(self->_ldcmFeatureConnect, 0x3F1u, input, 1u, 0, 0, 0, 0, 0, 0);
}

- (int)disableOVPInterrupts
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM - Request to disable OVP interrupts", buf, 2u);
  }

  return IOConnectCallMethod(self->_ldcmFeatureConnect, 0x3F2u, 0, 0, 0, 0, 0, 0, 0, 0);
}

- (void)showUI
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM - Showing UI, if applicable", v6, 2u);
  }

  if (self->_buildType == 1 || self->_behaviorOverrideDisableUI || self->_overrideEnabled)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buildType = self->_buildType;
      behaviorOverrideDisableUI = self->_behaviorOverrideDisableUI;
      overrideEnabled = self->_overrideEnabled;
      v6[0] = 67109632;
      v6[1] = buildType;
      v7 = 1024;
      v8 = behaviorOverrideDisableUI;
      v9 = 1024;
      v10 = overrideEnabled;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM - Not showing UI (buildtype: %d override: %d userOverride: %d)", v6, 0x14u);
    }
  }

  else
  {
    if (self->_uiActive)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LOWORD(v6[0]) = 0;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM - UI already active, not showing UI", v6, 2u);
      }
    }

    else
    {
      AnalyticsSendEvent();
      [(LDCMNotificationUIManagerV4 *)self->_notificationUIManager showUI:1];
    }

    self->_uiActive = 1;
  }
}

- (void)hideUI
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM - Hiding UI, if applicable", v3, 2u);
  }

  if (self->_uiActive)
  {
    IOAccessoryNotifyWetCancel();
  }

  self->_uiActive = 0;
}

- (id)buildMeasurementOutputString:(id)string withMeasurementReason:(int)reason withMeasurementEvent:(id)event
{
  v7 = MEMORY[0x277CCA968];
  eventCopy = event;
  stringCopy = string;
  v9 = objc_alloc_init(v7);
  [v9 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  if (reason > 3)
  {
    v10 = @"None";
  }

  else
  {
    v10 = off_279793190[reason];
  }

  v60 = v10;
  v59 = MEMORY[0x277CCAB68];
  date = [MEMORY[0x277CBEAA8] date];
  v12 = [v9 stringFromDate:date];
  ldcmPortStatus = [stringCopy ldcmPortStatus];
  ldcmMitigationsStatus = [stringCopy ldcmMitigationsStatus];
  ldcmFeatureStatus = [stringCopy ldcmFeatureStatus];
  ldcmMeasurePin = [stringCopy ldcmMeasurePin];
  ldcmCompletion = [stringCopy ldcmCompletion];
  ldcmWet = [stringCopy ldcmWet];
  ldcmLowImp = [stringCopy ldcmLowImp];
  [stringCopy ldcmLoadImpMag];
  v52 = v14;
  [stringCopy ldcmLoadImpPhase];
  v51 = v15;
  [stringCopy ldcmCalculatedRes];
  v50 = v16;
  [stringCopy ldcmCalculatedCap];
  v49 = v17;
  [stringCopy ldcmTIACurrentAmp];
  v48 = v18;
  [stringCopy ldcmVoltageAmp];
  v47 = v19;
  [stringCopy ldcmLeakageCurrentAmp];
  v46 = v20;
  [stringCopy ldcmMeasureTIASNR];
  v45 = v21;
  [stringCopy ldcmMeasureVoltageSNR];
  v23 = v22;
  [stringCopy ldcmCalTIAAmp];
  v25 = v24;
  [stringCopy ldcmCalVoltageAmp];
  v27 = v26;
  [stringCopy ldcmCalTIASNR];
  v29 = v28;
  [stringCopy ldcmCalVoltageSNR];
  v31 = v30;
  [stringCopy ldcmTIAGainCorrection];
  v33 = v32;
  [stringCopy ldcmVoltageGainCorrection];
  v35 = v34;
  [stringCopy ldcmPhaseComp];
  v37 = v36;
  ldcmWetStateDuration = [stringCopy ldcmWetStateDuration];
  ldcmWetStateTooLong = [stringCopy ldcmWetStateTooLong];
  ldcmIncompSNRAmpCnt = [stringCopy ldcmIncompSNRAmpCnt];
  ldcmIncompOVPCnt = [stringCopy ldcmIncompOVPCnt];
  ldcmIncompTimeoutCnt = [stringCopy ldcmIncompTimeoutCnt];

  v43 = [v59 stringWithFormat:@"%@, %@, %@, %.12d, %.12d, %.12d, %.12d, %.12d, %.12d, %.12d, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12d, %.12d, %.12d, %.12d, %.12d\n", v12, v60, eventCopy, ldcmPortStatus, ldcmMitigationsStatus, ldcmFeatureStatus, ldcmMeasurePin, ldcmCompletion, ldcmWet, ldcmLowImp, v52, v51, v50, v49, v48, v47, v46, v45, v23, v25, v27, v29, v31, v33, v35, v37, ldcmWetStateDuration, ldcmWetStateTooLong, ldcmIncompSNRAmpCnt, ldcmIncompOVPCnt, ldcmIncompTimeoutCnt];

  return v43;
}

- (void)processBehaviorDictionary:(id)dictionary
{
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [dictionaryCopy objectForKeyedSubscript:@"DisableMitigations"];
    if (v6)
    {
      v7 = v6;
      v8 = [dictionaryCopy objectForKeyedSubscript:@"DisableMitigations"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v10 = [dictionaryCopy objectForKeyedSubscript:@"DisableMitigations"];
        self->_behaviorOverrideDisableMitigations = [v10 BOOLValue];

        [standardUserDefaults setBool:self->_behaviorOverrideDisableMitigations forKey:@"LDCMV4DisableMitigations"];
      }
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"DisableUI"];
    if (v11)
    {
      v12 = v11;
      v13 = [dictionaryCopy objectForKeyedSubscript:@"DisableUI"];
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();

      if (v14)
      {
        v15 = [dictionaryCopy objectForKeyedSubscript:@"DisableUI"];
        self->_behaviorOverrideDisableUI = [v15 BOOLValue];

        [standardUserDefaults setBool:self->_behaviorOverrideDisableUI forKey:@"LDCMV4DisableUI"];
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      behaviorOverrideDisableMitigations = self->_behaviorOverrideDisableMitigations;
      behaviorOverrideDisableUI = self->_behaviorOverrideDisableUI;
      v18 = 136315650;
      v19 = "[IOPortLDCMManagerV4 processBehaviorDictionary:]";
      v20 = 1024;
      v21 = behaviorOverrideDisableMitigations;
      v22 = 1024;
      v23 = behaviorOverrideDisableUI;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s behavior overrides - mitigations: %d ui: %d", &v18, 0x18u);
    }
  }
}

- (void)initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 136315138;
    *(&v5 + 4) = "[IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:]";
    OUTLINED_FUNCTION_0_2(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to open LDCM kernel service\n", v1, v2, v3, v4, v5, DWORD2(v5));
  }
}

- (void)initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 136315138;
    *(&v5 + 4) = "[IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:]";
    OUTLINED_FUNCTION_0_2(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to set up LDCM interrupts interest notification\n", v1, v2, v3, v4, v5, DWORD2(v5));
  }
}

- (void)initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:.cold.3()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 136315138;
    *(&v5 + 4) = "[IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:]";
    OUTLINED_FUNCTION_0_2(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to get IOPort kernel service\n", v1, v2, v3, v4, v5, DWORD2(v5));
  }
}

- (void)initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:.cold.4()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 136315138;
    *(&v5 + 4) = "[IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:]";
    OUTLINED_FUNCTION_0_2(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to set up LDCM attach/detach interest notification\n", v1, v2, v3, v4, v5, DWORD2(v5));
  }
}

- (void)initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:.cold.5()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 136315138;
    *(&v5 + 4) = "[IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:]";
    OUTLINED_FUNCTION_0_2(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to create LDCM V4 Timer\n", v1, v2, v3, v4, v5, DWORD2(v5));
  }
}

- (void)initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:.cold.6()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 136315138;
    *(&v5 + 4) = "[IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:]";
    OUTLINED_FUNCTION_0_2(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to create ldcmV4DispatchQueue\n", v1, v2, v3, v4, v5, DWORD2(v5));
  }
}

- (void)initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:.cold.9()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 136315138;
    *(&v5 + 4) = "[IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:]";
    OUTLINED_FUNCTION_0_2(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to initialize IOPortLDCMManagerV4 super\n", v1, v2, v3, v4, v5, DWORD2(v5));
  }
}

- (void)performLDCMMeasurement:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  }
}

- (void)performLDCMMeasurement:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

- (void)storeWaveform:withWaveformDataLen:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

- (void)storeWaveform:withWaveformDataLen:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

@end