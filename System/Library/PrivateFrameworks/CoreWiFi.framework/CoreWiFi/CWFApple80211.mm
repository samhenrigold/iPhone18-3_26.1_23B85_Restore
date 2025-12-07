@interface CWFApple80211
- (BOOL)__setupEventMonitoring;
- (BOOL)isAWDLEnabled;
- (BOOL)isMonitoringEventType:(unsigned int)type interfaceName:(id)name;
- (BOOL)setChannel:(id)channel error:(id *)error;
- (BOOL)setLQMConfig:(id)config error:(id *)error;
- (BOOL)setUCMExtProfile:(id)profile error:(id *)error;
- (CWFApple80211)init;
- (CWFApple80211)initWithInterfaceName:(id)name;
- (_Apple80211)__apple80211RefWithInterfaceName:(id)name;
- (id)AWDLAFTxMode:(id *)mode;
- (id)AWDLAvailabilityWindowAPAlignment:(id *)alignment;
- (id)AWDLBTLEStateParameters:(id *)parameters;
- (id)AWDLContinuousElectionAlgorithmEnabled:(id *)enabled;
- (id)AWDLElectionID:(id *)d;
- (id)AWDLElectionMetric:(id *)metric;
- (id)AWDLElectionParameters:(id *)parameters;
- (id)AWDLElectionRSSIThresholds:(id *)thresholds;
- (id)AWDLEncryptionType:(id *)type;
- (id)AWDLExtensionStateMachineParameters:(id *)parameters;
- (id)AWDLGuardTime:(id *)time;
- (id)AWDLMasterChannel:(id *)channel;
- (id)AWDLOpMode:(id *)mode;
- (id)AWDLPeerDatabase:(id *)database;
- (id)AWDLPeerTrafficRegistration:(id *)registration;
- (id)AWDLPreferredChannels:(id *)channels;
- (id)AWDLPresenceMode:(id *)mode;
- (id)AWDLSecondaryMasterChannel:(id *)channel;
- (id)AWDLSidecarDiagnostics:(id *)diagnostics;
- (id)AWDLSocialTimeSlots:(id *)slots;
- (id)AWDLStatistics:(id *)statistics;
- (id)AWDLStrategy:(id *)strategy;
- (id)AWDLSyncChannelSequence:(id *)sequence;
- (id)AWDLSyncEnabled:(id *)enabled;
- (id)AWDLSyncParameters:(id *)parameters;
- (id)AWDLSyncState:(id *)state;
- (id)BSSID:(id *)d;
- (id)DTIMInterval:(id *)interval;
- (id)LQMConfig:(id *)config;
- (id)LQMSummary:(id *)summary;
- (id)MCSIndex:(id *)index;
- (id)RSSI:(id *)i;
- (id)SSID:(id *)d;
- (id)__MCSIndex:(id *)index;
- (id)__guardInterval:(id *)interval;
- (id)__hardwareSupportedChannels:(id *)channels;
- (id)__numberOfSpatialStreams:(id *)streams;
- (id)__supportedChannelsWithCountryCode:(id)code error:(id *)error;
- (id)activePHYMode:(id *)mode;
- (id)authType:(id *)type;
- (id)backgroundScanCache:(id *)cache;
- (id)beaconCache:(id *)cache;
- (id)blockedBands:(id *)bands;
- (id)bluetoothCoexistenceConfig:(id *)config;
- (id)bluetoothCoexistenceMode:(id *)mode;
- (id)bluetoothCoexistenceProfiles2GHz:(id *)hz;
- (id)bluetoothCoexistenceProfiles5GHz:(id *)hz;
- (id)capabilities:(id *)capabilities;
- (id)cca:(id *)cca;
- (id)chainAck:(id *)ack;
- (id)channel:(id *)channel;
- (id)countryBandSupport:(id *)support;
- (id)countryCode:(id *)code;
- (id)currentNetwork:(id *)network;
- (id)description;
- (id)desense:(id *)desense;
- (id)desenseLevel:(id *)level;
- (id)guardInterval:(id *)interval;
- (id)hardwareMACAddress:(id *)address;
- (id)hardwareSupportedChannels:(id *)channels;
- (id)hostAPStationList:(id *)list;
- (id)interfaceNames:(id *)names;
- (id)leakyAPStats:(id *)stats;
- (id)linkChangedEventData:(id *)data;
- (id)maxLinkSpeed:(id *)speed;
- (id)maxNSSForAP:(id *)p;
- (id)noise:(id *)noise;
- (id)numberOfSpatialStreams:(id *)streams;
- (id)opMode:(id *)mode;
- (id)perAntennaRSSI:(id *)i;
- (id)powerDebugInfo:(id *)info;
- (id)powerOn:(id *)on;
- (id)powerState:(id *)state;
- (id)powerTableInfo:(id *)info;
- (id)powersave:(id *)powersave;
- (id)rangingCapabilities:(id *)capabilities;
- (id)rxRate:(id *)rate;
- (id)state:(id *)state;
- (id)supportedChannelsWithCountryCode:(id)code error:(id *)error;
- (id)supportedPHYModes:(id *)modes;
- (id)txChainPower:(id *)power;
- (id)txNSS:(id *)s;
- (id)txPower:(id *)power;
- (id)txRate:(id *)rate;
- (id)virtualInterfaceNames:(id *)names;
- (id)virtualInterfaceParent:(id *)parent;
- (id)virtualInterfaceRole:(id *)role;
- (id)wowEnabled:(id *)enabled;
- (unsigned)__apple80211FindServiceWithInterfaceName:(id)name;
- (void)dealloc;
- (void)invalidate;
- (void)startMonitoringEventWithType:(unsigned int)type interfaceName:(id)name;
- (void)stopMonitoringEventWithType:(unsigned int)type interfaceName:(id)name;
@end

@implementation CWFApple80211

- (unsigned)__apple80211FindServiceWithInterfaceName:(id)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy)
  {
    v9 = nameCopy;
    v10 = @"IOPropertyMatch";
    v8 = @"IOInterfaceName";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

    if (v6)
    {
      LODWORD(v6) = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v6);
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  return v6;
}

- (_Apple80211)__apple80211RefWithInterfaceName:(id)name
{
  nameCopy = name;
  if (Apple80211Open())
  {
    v6 = 0;
    goto LABEL_11;
  }

  if (nameCopy)
  {
    v5 = [(CWFApple80211 *)self __apple80211FindServiceWithInterfaceName:nameCopy];
    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = v5;
    if (Apple80211BindToInterfaceWithService())
    {
LABEL_11:
      Apple80211Close();
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
LABEL_8:
    IOObjectRelease(v6);
  }

LABEL_9:

  return 0;
}

- (CWFApple80211)initWithInterfaceName:(id)name
{
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = CWFApple80211;
  v5 = [(CWFApple80211 *)&v21 init];
  if (!v5 || (v6 = [nameCopy copy], interfaceName = v5->_interfaceName, v5->_interfaceName = v6, interfaceName, dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v8 = objc_claimAutoreleasedReturnValue(), v9 = dispatch_queue_create("com.apple.corewifi.apple80211-mutex", v8), mutexQueue = v5->_mutexQueue, v5->_mutexQueue = v9, mutexQueue, v8, !v5->_mutexQueue) || (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v11 = objc_claimAutoreleasedReturnValue(), v12 = dispatch_queue_create("com.apple.corewifi.apple80211-event", v11), eventQueue = v5->_eventQueue, v5->_eventQueue = v12, eventQueue, v11, !v5->_eventQueue) || (v14 = -[CWFApple80211 __apple80211RefWithInterfaceName:](v5, "__apple80211RefWithInterfaceName:", nameCopy), (v5->_a11Ref = v14) == 0) || (-[CWFApple80211 virtualInterfaceRole:](v5, "virtualInterfaceRole:", 0), v15 = objc_claimAutoreleasedReturnValue(), v5->_virtualInterfaceRole = objc_msgSend(v15, "unsignedIntValue"), v15, -[CWFApple80211 virtualInterfaceParent:](v5, "virtualInterfaceParent:", 0), v16 = objc_claimAutoreleasedReturnValue(), virtualInterfaceParent = v5->_virtualInterfaceParent, v5->_virtualInterfaceParent = v16, virtualInterfaceParent, v18 = objc_alloc_init(MEMORY[0x1E695DF90]), mutableInterfaceNameEventMap = v5->_mutableInterfaceNameEventMap, v5->_mutableInterfaceNameEventMap = v18, mutableInterfaceNameEventMap, !v5->_mutableInterfaceNameEventMap))
  {

    v5 = 0;
  }

  return v5;
}

- (CWFApple80211)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[CWFApple80211 init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (void)invalidate
{
  [(CWFApple80211 *)self setEventHandler:0];
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C1EE84;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (void)dealloc
{
  if (self->_a11Ref)
  {
    Apple80211Close();
  }

  v3.receiver = self;
  v3.super_class = CWFApple80211;
  [(CWFApple80211 *)&v3 dealloc];
}

- (BOOL)__setupEventMonitoring
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = Apple80211RawEventMonitoringInit();
  if (v3)
  {
    v6 = v3;
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    interfaceName = [(CWFApple80211 *)self interfaceName];
    v14 = 138543618;
    v15 = interfaceName;
    v16 = 1024;
    v17 = v6;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 16, "[corewifi] FAILED to setup Apple80211 event monitoring (intf=%{public}@), Apple80211RawEventMonitoringInit() returned %d", &v14, 18);
    goto LABEL_15;
  }

  started = Apple80211RawStartMonitoringEventAll();
  if (started)
  {
    v9 = started;
    v10 = CWFGetOSLog();
    if (v10)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    interfaceName = [(CWFApple80211 *)self interfaceName];
    v14 = 138543618;
    v15 = interfaceName;
    v16 = 1024;
    v17 = v9;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 16, "[corewifi] FAILED to setup Apple80211 event monitoring (intf=%{public}@), Apple80211RawStartMonitoringEventAll() returned %d", &v14, 18);
LABEL_15:

LABEL_16:
    return 0;
  }

  return 1;
}

- (void)startMonitoringEventWithType:(unsigned int)type interfaceName:(id)name
{
  nameCopy = name;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C1F1E0;
  block[3] = &unk_1E86E6708;
  block[4] = self;
  v10 = nameCopy;
  typeCopy = type;
  v8 = nameCopy;
  dispatch_async(eventQueue, block);
}

- (void)stopMonitoringEventWithType:(unsigned int)type interfaceName:(id)name
{
  nameCopy = name;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C1F40C;
  block[3] = &unk_1E86E6708;
  v10 = nameCopy;
  selfCopy = self;
  typeCopy = type;
  v8 = nameCopy;
  dispatch_sync(mutexQueue, block);
}

- (BOOL)isMonitoringEventType:(unsigned int)type interfaceName:(id)name
{
  nameCopy = name;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  mutexQueue = self->_mutexQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E0C1F578;
  v10[3] = &unk_1E86E6730;
  v11 = nameCopy;
  v12 = &v14;
  v10[4] = self;
  typeCopy = type;
  v8 = nameCopy;
  dispatch_sync(mutexQueue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

- (id)interfaceNames:(id *)names
{
  IfListCopy = Apple80211GetIfListCopy();
  if (IfListCopy)
  {
    if (names)
    {
      v6 = IfListCopy;
      v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", IfListCopy);
      *names = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v6, v7);

      names = 0;
    }
  }

  else
  {
    names = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:0];
  }

  return names;
}

- (id)virtualInterfaceNames:(id *)names
{
  VirtualIfListCopy = Apple80211GetVirtualIfListCopy();
  if (VirtualIfListCopy)
  {
    if (names)
    {
      v6 = VirtualIfListCopy;
      v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", VirtualIfListCopy);
      *names = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v6, v7);

      names = 0;
    }
  }

  else
  {
    names = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:0];
  }

  return names;
}

- (id)powerOn:(id *)on
{
  Power = Apple80211GetPower();
  if (Power)
  {
    if (on)
    {
      v7 = Power;
      v8 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", Power);
      *on = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v7, v8);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:0];
  }

  return v5;
}

- (id)__MCSIndex:(id *)index
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 copy];
  }

  if (index && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *index = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)MCSIndex:(id *)index
{
  v5 = [(CWFApple80211 *)self activePHYMode:0];
  if (([v5 unsignedIntValue] & 0x80) != 0)
  {
    [(CWFApple80211 *)self __VHTMCSIndex:index];
  }

  else
  {
    [(CWFApple80211 *)self __MCSIndex:index];
  }
  v6 = ;

  return v6;
}

- (id)DTIMInterval:(id *)interval
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 1;
  v11 = 0u;
  v12 = 0u;
  __strlcpy_chk();
  LODWORD(v12) = 41;
  DWORD2(v12) = 8;
  v13 = &v10;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (interval)
    {
      v7 = *MEMORY[0x1E696A798];
      v8 = v4;
      v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *interval = CWFErrorWithDescription(v7, v8, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v10)];
  }

  return v5;
}

- (id)perAntennaRSSI:(id *)i
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v14 = 0u;
  v15 = 0u;
  __strlcpy_chk();
  v10 = 1;
  LODWORD(v15) = 16;
  DWORD2(v15) = 52;
  v16 = &v10;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (i)
    {
      v7 = *MEMORY[0x1E696A798];
      v8 = v4;
      v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *i = CWFErrorWithDescription(v7, v8, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:52];
  }

  return v5;
}

- (id)RSSI:(id *)i
{
  v3 = [(CWFApple80211 *)self perAntennaRSSI:0];
  v4 = 0;
  if ([v3 length] == 52)
  {
    bytes = [v3 bytes];
    v6 = 28;
    if (*(bytes + 4) == 1)
    {
      v6 = 12;
    }

    v4 = [MEMORY[0x1E696AD98] numberWithInt:*(bytes + v6)];
  }

  return v4;
}

- (id)noise:(id *)noise
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 objectForKeyedSubscript:@"NOISE_CTL_AGR"];
  }

  if (noise && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *noise = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)authType:(id *)type
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v11 = 0;
  v13 = 0u;
  v14 = 0u;
  __strlcpy_chk();
  v10 = 1;
  LODWORD(v14) = 2;
  DWORD2(v14) = 16;
  v15 = &v10;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (type)
    {
      v7 = *MEMORY[0x1E696A798];
      v8 = v4;
      v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *type = CWFErrorWithDescription(v7, v8, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:16];
  }

  return v5;
}

- (id)activePHYMode:(id *)mode
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 objectForKeyedSubscript:@"PHYMODE_ACTIVE"];
  }

  if (mode && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *mode = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)supportedPHYModes:(id *)modes
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 objectForKeyedSubscript:@"PHYMODE_SUPPORTED"];
  }

  if (modes && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *modes = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)txRate:(id *)rate
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 copy];
  }

  if (rate && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *rate = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)txPower:(id *)power
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  __strlcpy_chk();
  v10 = 1;
  LODWORD(v13) = 7;
  DWORD2(v13) = 12;
  v14 = &v10;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (power)
    {
      v7 = *MEMORY[0x1E696A798];
      v8 = v4;
      v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *power = CWFErrorWithDescription(v7, v8, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v11)];
  }

  return v5;
}

- (id)opMode:(id *)mode
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 copy];
  }

  if (mode && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *mode = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)__guardInterval:(id *)interval
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 copy];
  }

  if (interval && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *interval = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)guardInterval:(id *)interval
{
  v5 = [(CWFApple80211 *)self activePHYMode:0];
  if (([v5 unsignedIntValue] & 0x80) != 0)
  {
    [(CWFApple80211 *)self __VHTGuardInterval:interval];
  }

  else
  {
    [(CWFApple80211 *)self __guardInterval:interval];
  }
  v6 = ;

  return v6;
}

- (id)__numberOfSpatialStreams:(id *)streams
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 copy];
  }

  if (streams && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *streams = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)numberOfSpatialStreams:(id *)streams
{
  v5 = [(CWFApple80211 *)self activePHYMode:0];
  if (([v5 unsignedIntValue] & 0x80) != 0)
  {
    [(CWFApple80211 *)self __VHTNumberOfSpatialStreams:streams];
  }

  else
  {
    [(CWFApple80211 *)self __numberOfSpatialStreams:streams];
  }
  v6 = ;

  return v6;
}

- (id)capabilities:(id *)capabilities
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = Apple80211Get();
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v5];
    }

    CFRelease(v5);
    if (!capabilities)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v6 = -3901;
    if (!capabilities)
    {
      goto LABEL_7;
    }
  }

  if (v6)
  {
    v8 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v6);
    *capabilities = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v6, v8);
  }

LABEL_7:

  return v7;
}

- (id)SSID:(id *)d
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 copy];
  }

  if (d && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *d = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)BSSID:(id *)d
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v5 = [0 copy];
    v6 = CWFCorrectEthernetAddressString(v5);
  }

  if (d && v4)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *d = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v7);
  }

  return v6;
}

- (id)countryCode:(id *)code
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 copy];
  }

  if (code && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *code = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)virtualInterfaceParent:(id *)parent
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 copy];
  }

  if (parent && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *parent = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)virtualInterfaceRole:(id *)role
{
  v4 = Apple80211Get();
  if (v4)
  {
    if (role)
    {
      v7 = v4;
      v8 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
      *role = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v7, v8);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:0];
  }

  return v5;
}

- (id)wowEnabled:(id *)enabled
{
  v4 = Apple80211Get();
  if (v4)
  {
    if (enabled)
    {
      v7 = v4;
      v8 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
      *enabled = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v7, v8);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:0];
  }

  return v5;
}

- (id)linkChangedEventData:(id *)data
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  v11 = 0u;
  __strlcpy_chk();
  LODWORD(v11) = 156;
  DWORD2(v11) = 32;
  v12 = v10;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (data)
    {
      v7 = *MEMORY[0x1E696A798];
      v8 = v4;
      v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *data = CWFErrorWithDescription(v7, v8, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v10 length:32];
  }

  return v5;
}

- (id)channel:(id *)channel
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = objc_alloc_init(CWFChannel);
    v6 = [0 objectForKeyedSubscript:@"CHANNEL"];
    -[CWFChannel setChannel:](v5, "setChannel:", [v6 unsignedIntegerValue]);

    v7 = [0 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
    -[CWFChannel setFlags:](v5, "setFlags:", [v7 intValue]);
  }

  if (channel && v4)
  {
    v8 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *channel = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v8);
  }

  return v5;
}

- (BOOL)setChannel:(id)channel error:(id *)error
{
  v6 = MEMORY[0x1E695DF90];
  channelCopy = channel;
  dictionary = [v6 dictionary];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(channelCopy, "channel")}];
  [dictionary setObject:v9 forKeyedSubscript:@"CHANNEL"];

  v10 = MEMORY[0x1E696AD98];
  flags = [channelCopy flags];

  v12 = [v10 numberWithUnsignedInt:flags];
  [dictionary setObject:v12 forKeyedSubscript:@"CHANNEL_FLAGS"];

  v13 = MEMORY[0x1E12E9420](self->_a11Ref, 4, 0, dictionary, 0xFFFFFFFFLL);
  v14 = v13;
  if (error && v13)
  {
    v15 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v13);
    *error = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v14, v15);
  }

  return v14 == 0;
}

- (id)__supportedChannelsWithCountryCode:(id)code error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  bzero(v23 + 4, 0x12D4uLL);
  LODWORD(v23[0]) = 1;
  v24[1198] = -1;
  if (codeCopy)
  {
    v25 = 1;
    uTF8String = [codeCopy UTF8String];
    v7 = *uTF8String;
    v27 = *(uTF8String + 2);
    v26 = v7;
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  __strlcpy_chk();
  LODWORD(v31) = 27;
  DWORD2(v31) = 4824;
  v32 = v23;
  v8 = Apple80211RawGet();
  if (v8)
  {
    array = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    if (!HIDWORD(v23[0]))
    {
      goto LABEL_10;
    }

    v20 = v8;
    errorCopy = error;
    v22 = codeCopy;
    v10 = 0;
    v11 = v24;
    do
    {
      v28[0] = @"SUP_CHANNEL";
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{*(v11 - 1), v20, errorCopy, v22, v23[0]}];
      v28[1] = @"SUP_CHANNEL_FLAGS";
      v29[0] = v12;
      v13 = *v11;
      v11 += 3;
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13];
      v29[1] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

      [array addObject:v15];
      ++v10;
    }

    while (v10 < HIDWORD(v23[0]));
    error = errorCopy;
    codeCopy = v22;
    LODWORD(v8) = v20;
    if (!errorCopy)
    {
      goto LABEL_10;
    }
  }

  if (v8)
  {
    v16 = *MEMORY[0x1E696A798];
    v17 = CWFErrorDescription(*MEMORY[0x1E696A798], v8);
    *error = CWFErrorWithDescription(v16, v8, v17);
  }

LABEL_10:
  v18 = [array copy];

  return v18;
}

- (id)supportedChannelsWithCountryCode:(id)code error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v5 = [(CWFApple80211 *)self __supportedChannelsWithCountryCode:code error:&v31];
  v6 = v31;
  if (v6)
  {
    array = 0;
    if (error)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  errorCopy = error;
  array = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = v5;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = *v28;
  do
  {
    v12 = 0;
    do
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v27 + 1) + 8 * v12);
      v14 = [v13 objectForKeyedSubscript:@"SUP_CHANNEL"];
      v15 = [v13 objectForKeyedSubscript:@"SUP_CHANNEL_FLAGS"];
      unsignedIntValue = [v15 unsignedIntValue];
      v17 = unsignedIntValue;
      if ((unsignedIntValue & 2) != 0)
      {
        v19 = objc_alloc_init(CWFChannel);
        -[CWFChannel setChannel:](v19, "setChannel:", [v14 unsignedIntegerValue]);
        [(CWFChannel *)v19 setFlags:v17 & 0xFFFFF3FA];
        [array addObject:v19];

        if ((v17 & 4) == 0)
        {
LABEL_9:
          if ((v17 & 0x400) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }

      else if ((unsignedIntValue & 4) == 0)
      {
        goto LABEL_9;
      }

      v20 = objc_alloc_init(CWFChannel);
      -[CWFChannel setChannel:](v20, "setChannel:", [v14 unsignedIntegerValue]);
      [(CWFChannel *)v20 setFlags:v17 & 0xFFFFF3FC];
      [array addObject:v20];

      if ((v17 & 0x400) == 0)
      {
LABEL_10:
        if ((v17 & 0x800) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        v18 = objc_alloc_init(CWFChannel);
        -[CWFChannel setChannel:](v18, "setChannel:", [v14 unsignedIntegerValue]);
        [(CWFChannel *)v18 setFlags:v17 & 0xFFFFFBF8];
        [array addObject:v18];

        goto LABEL_12;
      }

LABEL_16:
      v21 = objc_alloc_init(CWFChannel);
      -[CWFChannel setChannel:](v21, "setChannel:", [v14 unsignedIntegerValue]);
      [(CWFChannel *)v21 setFlags:v17 & 0xFFFFF7F8];
      [array addObject:v21];

      if ((v17 & 0x800) != 0)
      {
        goto LABEL_11;
      }

LABEL_12:

      ++v12;
    }

    while (v10 != v12);
    v22 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    v10 = v22;
  }

  while (v22);
LABEL_19:

  v5 = v25;
  error = errorCopy;
  v6 = 0;
  if (errorCopy)
  {
LABEL_20:
    if (v6)
    {
      v23 = v6;
      *error = v6;
    }
  }

LABEL_22:

  return array;
}

- (id)__hardwareSupportedChannels:(id *)channels
{
  v26 = *MEMORY[0x1E69E9840];
  bzero(v18, 0x12D4uLL);
  v20 = 1;
  v17 = 1;
  v19[1198] = -1;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  __strlcpy_chk();
  LODWORD(v24) = 27;
  DWORD2(v24) = 4824;
  v25 = &v17;
  v4 = Apple80211RawGet();
  if (v4)
  {
    array = 0;
    if (!channels)
    {
      goto LABEL_8;
    }
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    if (!v18[0])
    {
      goto LABEL_8;
    }

    channelsCopy = channels;
    v6 = 0;
    v7 = v19;
    do
    {
      v21[0] = @"SUP_CHANNEL";
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v7 - 1)];
      v21[1] = @"SUP_CHANNEL_FLAGS";
      v22[0] = v8;
      v9 = *v7;
      v7 += 3;
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
      v22[1] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

      [array addObject:v11];
      ++v6;
    }

    while (v6 < v18[0]);
    channels = channelsCopy;
    if (!channelsCopy)
    {
      goto LABEL_8;
    }
  }

  if (v4)
  {
    v12 = *MEMORY[0x1E696A798];
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *channels = CWFErrorWithDescription(v12, v4, v13);
  }

LABEL_8:
  v14 = [array copy];

  return v14;
}

- (id)hardwareSupportedChannels:(id *)channels
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v4 = [(CWFApple80211 *)self __hardwareSupportedChannels:&v30];
  v5 = v30;
  if (v5)
  {
    array = 0;
    if (channels)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  channelsCopy = channels;
  array = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v24 = v4;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  v10 = *v27;
  do
  {
    v11 = 0;
    do
    {
      if (*v27 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v26 + 1) + 8 * v11);
      v13 = [v12 objectForKeyedSubscript:@"SUP_CHANNEL"];
      v14 = [v12 objectForKeyedSubscript:@"SUP_CHANNEL_FLAGS"];
      unsignedIntValue = [v14 unsignedIntValue];
      v16 = unsignedIntValue;
      if ((unsignedIntValue & 2) != 0)
      {
        v18 = objc_alloc_init(CWFChannel);
        -[CWFChannel setChannel:](v18, "setChannel:", [v13 unsignedIntegerValue]);
        [(CWFChannel *)v18 setFlags:v16 & 0xFFFFF3FA];
        [array addObject:v18];

        if ((v16 & 4) == 0)
        {
LABEL_9:
          if ((v16 & 0x400) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }

      else if ((unsignedIntValue & 4) == 0)
      {
        goto LABEL_9;
      }

      v19 = objc_alloc_init(CWFChannel);
      -[CWFChannel setChannel:](v19, "setChannel:", [v13 unsignedIntegerValue]);
      [(CWFChannel *)v19 setFlags:v16 & 0xFFFFF3FC];
      [array addObject:v19];

      if ((v16 & 0x400) == 0)
      {
LABEL_10:
        if ((v16 & 0x800) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        v17 = objc_alloc_init(CWFChannel);
        -[CWFChannel setChannel:](v17, "setChannel:", [v13 unsignedIntegerValue]);
        [(CWFChannel *)v17 setFlags:v16 & 0xFFFFFBF8];
        [array addObject:v17];

        goto LABEL_12;
      }

LABEL_16:
      v20 = objc_alloc_init(CWFChannel);
      -[CWFChannel setChannel:](v20, "setChannel:", [v13 unsignedIntegerValue]);
      [(CWFChannel *)v20 setFlags:v16 & 0xFFFFF7F8];
      [array addObject:v20];

      if ((v16 & 0x800) != 0)
      {
        goto LABEL_11;
      }

LABEL_12:

      ++v11;
    }

    while (v9 != v11);
    v21 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    v9 = v21;
  }

  while (v21);
LABEL_19:

  v4 = v24;
  channels = channelsCopy;
  v5 = 0;
  if (channelsCopy)
  {
LABEL_20:
    if (v5)
    {
      v22 = v5;
      *channels = v5;
    }
  }

LABEL_22:

  return array;
}

- (BOOL)isAWDLEnabled
{
  v2 = [(CWFApple80211 *)self AWDLSyncEnabled:0];
  v3 = v2;
  if (v2)
  {
    v4 = *([v2 bytes] + 8) != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)AWDLSyncEnabled:(id *)enabled
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  __strlcpy_chk();
  v10 = 1;
  LODWORD(v13) = 117;
  DWORD2(v13) = 12;
  v14 = &v10;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (enabled)
    {
      v7 = *MEMORY[0x1E696A798];
      v8 = v4;
      v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *enabled = CWFErrorWithDescription(v7, v8, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:12];
  }

  return v5;
}

- (id)AWDLSyncChannelSequence:(id *)sequence
{
  v38 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v33 = 0u;
    memset(v34, 0, sizeof(v34));
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
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
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v35 = 0u;
    v36 = 0u;
    __strlcpy_chk();
    v10 = 1;
    LODWORD(v36) = 129;
    DWORD2(v36) = 400;
    v37 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:400];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (sequence)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *sequence = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLSyncState:(id *)state
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v12 = 0;
    v11 = 0;
    v13 = 0;
    v14 = 0u;
    v15 = 0u;
    __strlcpy_chk();
    v10 = 1;
    LODWORD(v15) = 134;
    DWORD2(v15) = 24;
    v16 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:24];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (state)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *state = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLSyncParameters:(id *)parameters
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v12 = 0;
    v11 = 0;
    v13 = 0;
    v14 = 0u;
    v15 = 0u;
    __strlcpy_chk();
    v10 = 1;
    LODWORD(v15) = 116;
    DWORD2(v15) = 24;
    v16 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:24];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (parameters)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *parameters = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLElectionID:(id *)d
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v10 = 1;
    v11 = 0u;
    v12 = 0u;
    __strlcpy_chk();
    LODWORD(v12) = 122;
    DWORD2(v12) = 8;
    v13 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (d)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *d = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLElectionParameters:(id *)parameters
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v14 = 0;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v15 = 0u;
    v16 = 0u;
    __strlcpy_chk();
    v10 = 1;
    LODWORD(v16) = 155;
    DWORD2(v16) = 56;
    v17 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:56];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (parameters)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *parameters = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLElectionRSSIThresholds:(id *)thresholds
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v11 = 0;
    v12 = 0;
    v13 = 0u;
    v14 = 0u;
    __strlcpy_chk();
    v10 = 1;
    LODWORD(v14) = 135;
    DWORD2(v14) = 20;
    v15 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:20];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (thresholds)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *thresholds = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLSocialTimeSlots:(id *)slots
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v10 = 1;
    v11 = 0u;
    v12 = 0u;
    __strlcpy_chk();
    LODWORD(v12) = 163;
    DWORD2(v12) = 8;
    v13 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (slots)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *slots = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLPeerDatabase:(id *)database
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    bzero(v11, 0x32E60uLL);
    v10 = 0u;
    __strlcpy_chk();
    v11[0] = 1;
    LODWORD(v10) = 203;
    DWORD2(v10) = 208480;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v11 length:{208480, 0, 0, v10, v11}];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (database)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *database = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLStatistics:(id *)statistics
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    bzero(v10, 0xE88uLL);
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    __strlcpy_chk();
    v10[0] = 1;
    LODWORD(v12) = 223;
    DWORD2(v12) = 3720;
    v13 = v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v10 length:3720];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (statistics)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *statistics = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLMasterChannel:(id *)channel
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v10 = 1;
    v11 = 0u;
    v12 = 0u;
    __strlcpy_chk();
    LODWORD(v12) = 132;
    DWORD2(v12) = 8;
    v13 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (channel)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *channel = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLSecondaryMasterChannel:(id *)channel
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v10 = 1;
    v11 = 0u;
    v12 = 0u;
    __strlcpy_chk();
    LODWORD(v12) = 205;
    DWORD2(v12) = 8;
    v13 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (channel)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *channel = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLPreferredChannels:(id *)channels
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v11 = 0;
    v12 = 0u;
    v13 = 0u;
    __strlcpy_chk();
    v10 = 1;
    LODWORD(v13) = 244;
    DWORD2(v13) = 12;
    v14 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:12];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (channels)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *channels = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLOpMode:(id *)mode
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v10 = 1;
    v11 = 0u;
    v12 = 0u;
    __strlcpy_chk();
    LODWORD(v12) = 217;
    DWORD2(v12) = 8;
    v13 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (mode)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *mode = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLStrategy:(id *)strategy
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v10[1] = 0;
    v10[2] = 0;
    v11 = 0u;
    v12 = 0u;
    __strlcpy_chk();
    v10[0] = 1;
    LODWORD(v12) = 148;
    DWORD2(v12) = 24;
    v13 = v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v10 length:24];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (strategy)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *strategy = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)rangingCapabilities:(id *)capabilities
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v11 = 0;
  v13 = 0;
  v14 = 0u;
  v15 = 0u;
  __strlcpy_chk();
  v10 = 1;
  LODWORD(v15) = 266;
  DWORD2(v15) = 24;
  v16 = &v10;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (capabilities)
    {
      v7 = *MEMORY[0x1E696A798];
      v8 = v4;
      v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *capabilities = CWFErrorWithDescription(v7, v8, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:24];
  }

  return v5;
}

- (id)AWDLSidecarDiagnostics:(id *)diagnostics
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    memset(v15, 0, sizeof(v15));
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v10 = 0u;
    __strlcpy_chk();
    v11 = 1;
    LODWORD(v10) = 351;
    DWORD2(v10) = 80;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v11 length:{80, 0, 0, v10, &v11}];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (diagnostics)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *diagnostics = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)powerState:(id *)state
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v11 = 0;
  v13 = 0;
  v14 = 0u;
  v15 = 0u;
  __strlcpy_chk();
  v10 = 1;
  LODWORD(v15) = 19;
  DWORD2(v15) = 24;
  v16 = &v10;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (state)
    {
      v7 = *MEMORY[0x1E696A798];
      v8 = v4;
      v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *state = CWFErrorWithDescription(v7, v8, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:24];
  }

  return v5;
}

- (id)chainAck:(id *)ack
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v11 = 0;
  v13 = 0;
  v14 = 0u;
  v15 = 0u;
  __strlcpy_chk();
  v10 = 1;
  LODWORD(v15) = 174;
  DWORD2(v15) = 24;
  v16 = &v10;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (ack)
    {
      v7 = *MEMORY[0x1E696A798];
      v8 = v4;
      v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *ack = CWFErrorWithDescription(v7, v8, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:24];
  }

  return v5;
}

- (id)txChainPower:(id *)power
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v17 = 0u;
  v18 = 0u;
  __strlcpy_chk();
  v10 = 1;
  LODWORD(v18) = 108;
  DWORD2(v18) = 88;
  v19 = &v10;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (power)
    {
      v7 = *MEMORY[0x1E696A798];
      v8 = v4;
      v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *power = CWFErrorWithDescription(v7, v8, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:88];
  }

  return v5;
}

- (id)desense:(id *)desense
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v11 = 0;
  v13 = 0u;
  v14 = 0u;
  __strlcpy_chk();
  v10 = 1;
  LODWORD(v14) = 175;
  DWORD2(v14) = 16;
  v15 = &v10;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (desense)
    {
      v7 = *MEMORY[0x1E696A798];
      v8 = v4;
      v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *desense = CWFErrorWithDescription(v7, v8, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:16];
  }

  return v5;
}

- (id)desenseLevel:(id *)level
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 1;
  v11 = 0u;
  v12 = 0u;
  __strlcpy_chk();
  LODWORD(v12) = 194;
  DWORD2(v12) = 8;
  v13 = &v10;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (level)
    {
      v7 = *MEMORY[0x1E696A798];
      v8 = v4;
      v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *level = CWFErrorWithDescription(v7, v8, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:8];
  }

  return v5;
}

- (id)bluetoothCoexistenceConfig:(id *)config
{
  if (config)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    *config = CWFErrorWithDescription(v4, 45, v5);
  }

  return 0;
}

- (id)bluetoothCoexistenceProfiles2GHz:(id *)hz
{
  if (hz)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    *hz = CWFErrorWithDescription(v4, 45, v5);
  }

  return 0;
}

- (id)bluetoothCoexistenceProfiles5GHz:(id *)hz
{
  if (hz)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    *hz = CWFErrorWithDescription(v4, 45, v5);
  }

  return 0;
}

- (id)bluetoothCoexistenceMode:(id *)mode
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 1;
  v11 = 0u;
  v12 = 0u;
  __strlcpy_chk();
  LODWORD(v12) = 87;
  DWORD2(v12) = 8;
  v13 = &v10;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (mode)
    {
      v7 = *MEMORY[0x1E696A798];
      v8 = v4;
      v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *mode = CWFErrorWithDescription(v7, v8, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v10)];
  }

  return v5;
}

- (id)leakyAPStats:(id *)stats
{
  *&v12[9044] = *MEMORY[0x1E69E9840];
  bzero(v12, 0x2354uLL);
  v10 = 0u;
  __strlcpy_chk();
  v11 = 1;
  LODWORD(v10) = 232;
  DWORD2(v10) = 9048;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (stats)
    {
      v7 = *MEMORY[0x1E696A798];
      v8 = v4;
      v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *stats = CWFErrorWithDescription(v7, v8, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v11 length:{9048, 0, 0, v10, &v11}];
  }

  return v5;
}

- (id)LQMSummary:(id *)summary
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(v10, 0x15A0uLL);
  v12 = 0;
  v10[346] = 0u;
  v11 = 0u;
  __strlcpy_chk();
  LODWORD(v11) = 386;
  DWORD2(v11) = 5536;
  v12 = v10;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (summary)
    {
      v7 = *MEMORY[0x1E696A798];
      v8 = v4;
      v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *summary = CWFErrorWithDescription(v7, v8, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v10 length:5536];
  }

  return v5;
}

- (id)AWDLExtensionStateMachineParameters:(id *)parameters
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v11 = 0;
    v12 = 0;
    v13 = 0u;
    v14 = 0u;
    __strlcpy_chk();
    v10 = 1;
    LODWORD(v14) = 118;
    DWORD2(v14) = 20;
    v15 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:20];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (parameters)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *parameters = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLElectionMetric:(id *)metric
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v11 = 0;
    v12 = 0u;
    v13 = 0u;
    __strlcpy_chk();
    v10 = 1;
    LODWORD(v13) = 126;
    DWORD2(v13) = 12;
    v14 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:12];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (metric)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *metric = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLPresenceMode:(id *)mode
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v10 = 1;
    v11 = 0u;
    v12 = 0u;
    __strlcpy_chk();
    LODWORD(v12) = 136;
    DWORD2(v12) = 8;
    v13 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (mode)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *mode = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLGuardTime:(id *)time
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v10 = 1;
    v11 = 0u;
    v12 = 0u;
    __strlcpy_chk();
    LODWORD(v12) = 124;
    DWORD2(v12) = 8;
    v13 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (time)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *time = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLAvailabilityWindowAPAlignment:(id *)alignment
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v12 = 0;
    v11 = 0;
    v13 = 0u;
    v14 = 0u;
    __strlcpy_chk();
    v10 = 1;
    LODWORD(v14) = 127;
    DWORD2(v14) = 16;
    v15 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:16];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (alignment)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *alignment = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLContinuousElectionAlgorithmEnabled:(id *)enabled
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v10 = 1;
    v11 = 0u;
    v12 = 0u;
    __strlcpy_chk();
    LODWORD(v12) = 121;
    DWORD2(v12) = 8;
    v13 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (enabled)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *enabled = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLAFTxMode:(id *)mode
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v10 = 1;
    v11 = 0u;
    v12 = 0u;
    __strlcpy_chk();
    LODWORD(v12) = 208;
    DWORD2(v12) = 8;
    v13 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (mode)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *mode = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLPeerTrafficRegistration:(id *)registration
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v23 = 0;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v10 = 0u;
    __strlcpy_chk();
    v11 = 1;
    LODWORD(v10) = 164;
    DWORD2(v10) = 184;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v11 length:{184, 0, 0, v10, &v11}];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (registration)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *registration = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLEncryptionType:(id *)type
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v10 = 1;
    v11 = 0u;
    v12 = 0u;
    __strlcpy_chk();
    LODWORD(v12) = 220;
    DWORD2(v12) = 8;
    v13 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (type)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *type = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)AWDLBTLEStateParameters:(id *)parameters
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0u;
    v15 = 0u;
    __strlcpy_chk();
    v10 = 1;
    LODWORD(v15) = 202;
    DWORD2(v15) = 28;
    v16 = &v10;
    v4 = Apple80211RawGet();
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:28];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 6;
  }

  if (parameters)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = v4;
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
    *parameters = CWFErrorWithDescription(v7, v8, v9);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)powerDebugInfo:(id *)info
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = Apple80211Get();
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v5];
    }

    CFRelease(v5);
    if (!info)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v6 = -3901;
    if (!info)
    {
      goto LABEL_7;
    }
  }

  if (v6)
  {
    v8 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v6);
    *info = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v6, v8);
  }

LABEL_7:

  return v7;
}

- (id)cca:(id *)cca
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 copy];
  }

  if (cca && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *cca = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)rxRate:(id *)rate
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 copy];
  }

  if (rate && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *rate = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)maxLinkSpeed:(id *)speed
{
  v4 = Apple80211MaxLinkSpeed();
  if (v4)
  {
    if (speed)
    {
      v7 = v4;
      v8 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
      *speed = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v7, v8);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  }

  return v5;
}

- (id)state:(id *)state
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 copy];
  }

  if (state && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *state = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)powersave:(id *)powersave
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 copy];
  }

  if (powersave && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *powersave = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)maxNSSForAP:(id *)p
{
  v4 = Apple80211CopyValue();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [0 copy];
  }

  if (p && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *p = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)txNSS:(id *)s
{
  v4 = Apple80211Get();
  if (v4)
  {
    if (s)
    {
      v7 = v4;
      v8 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
      *s = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v7, v8);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  }

  return v5;
}

- (id)countryBandSupport:(id *)support
{
  v4 = Apple80211Get();
  if (v4)
  {
    if (support)
    {
      v7 = v4;
      v8 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
      *support = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v7, v8);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  }

  return v5;
}

- (id)beaconCache:(id *)cache
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    array = 0;
    v10 = -3901;
    if (!cache)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v5 = Mutable;
  v6 = Apple80211Get();
  if (v6)
  {
    v10 = v6;
    array = 0;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    if (CFArrayGetCount(v5) >= 1)
    {
      v8 = 0;
      do
      {
        v9 = [[CWFScanResult alloc] initWithScanRecord:CFArrayGetValueAtIndex(v5 includeProperties:v8), 0];
        if (v9)
        {
          [array addObject:v9];
        }

        ++v8;
      }

      while (CFArrayGetCount(v5) > v8);
    }

    v10 = 0;
  }

  CFRelease(v5);
  if (cache)
  {
LABEL_10:
    if (v10)
    {
      v11 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v10);
      *cache = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v10, v11);
    }
  }

LABEL_12:
  v12 = [array copy];

  return v12;
}

- (id)backgroundScanCache:(id *)cache
{
  v46 = *MEMORY[0x1E69E9840];
  bzero(v32, 0x1910uLL);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  __strlcpy_chk();
  LODWORD(v44) = 215;
  DWORD2(v44) = 6416;
  v45 = v32;
  array = 0;
  v28 = Apple80211RawGet();
  if (v28)
  {
    v4 = 1;
  }

  else
  {
    v4 = v32[0] == 0;
  }

  if (!v4)
  {
    v8 = 0;
    array = 0;
    v9 = 1;
    while (1)
    {
      v30 = *&v32[v9];
      v31 = v32[v9 + 4];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      if (snprintf(__str, 0x12uLL, "%02x:%02x:%02x:%02x:%02x:%02x", v30, BYTE1(v30), BYTE2(v30), BYTE3(v30), BYTE4(v30), BYTE5(v30)) != 17)
      {
        break;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__str];
      v12 = CWFCorrectEthernetAddressString(v11);
      [dictionary setObject:v12 forKeyedSubscript:@"BSSID"];

      v13 = [MEMORY[0x1E696AD98] numberWithShort:v31];
      [dictionary setObject:v13 forKeyedSubscript:@"RSSI"];

      if (HIDWORD(v30))
      {
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
        [dictionary setObject:v14 forKeyedSubscript:@"CHANNEL"];

        if (HIDWORD(v30) <= 0xE)
        {
          v15 = 10;
        }

        else
        {
          v15 = 18;
        }

        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:BYTE6(v30) & 1];
        [dictionary setObject:v16 forKeyedSubscript:@"CONNECTED_BSSID"];

        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
        [dictionary setObject:v17 forKeyedSubscript:@"CHANNEL_FLAGS"];

        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1000 * DWORD2(v30)];
        [dictionary setObject:v18 forKeyedSubscript:@"AGE"];

        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v33 - 1000000000 * DWORD2(v30)];
        [dictionary setObject:v19 forKeyedSubscript:@"TIMESTAMP"];

        [dictionary setObject:&unk_1F5BB9AF0 forKeyedSubscript:@"SCAN_RESULT_NET_FLAGS"];
        [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SCAN_RESULT_FROM_BG_SCAN"];
        v20 = [CWFScanResult alloc];
        v21 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5BBB830, &unk_1F5BBB848, &unk_1F5BBB860, &unk_1F5BBB878, &unk_1F5BBB890, &unk_1F5BBB8A8, 0}];
        v22 = [(CWFScanResult *)v20 initWithScanRecord:dictionary includeProperties:v21];

        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        [array addObject:v22];
      }

      else
      {
        v23 = CWFGetOSLog();
        if (v23)
        {
          v22 = CWFGetOSLog();
        }

        else
        {
          v22 = MEMORY[0x1E69E9C10];
          v24 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v27 = [MEMORY[0x1E695DEF0] dataWithBytes:&v30 length:20];
          v25 = CWFHexadecimalStringFromData(v27);
          v34 = 136446978;
          v35 = "[CWFApple80211 backgroundScanCache:]";
          v36 = 2082;
          v37 = "CWFApple80211.m";
          v38 = 1024;
          v39 = 2472;
          v40 = 2112;
          v41 = v25;
          LODWORD(v26) = 38;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 16, "[corewifi] %{public}s (%{public}s:%u) Background scan result is missing channel, skipping (0x%@)", &v34, v26);
        }
      }

      ++v8;
      v9 += 5;
      if (v8 >= v32[0])
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:
  if (cache && v28)
  {
    v5 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v28);
    *cache = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v28, v5);
  }

  v6 = [array copy];

  return v6;
}

- (id)blockedBands:(id *)bands
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = Apple80211Get();
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v5];
    }

    CFRelease(v5);
    if (!bands)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v6 = -3901;
    if (!bands)
    {
      goto LABEL_7;
    }
  }

  if (v6)
  {
    v8 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v6);
    *bands = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v6, v8);
  }

LABEL_7:

  return v7;
}

- (id)hostAPStationList:(id *)list
{
  v27 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    array = 0;
    v17 = -3901;
    if (!list)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v5 = Mutable;
  v6 = Apple80211Get();
  if (v6)
  {
    v17 = v6;
    array = 0;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v5;
    v8 = v5;
    v9 = [(__CFArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = objc_alloc_init(CWFHostAPStation);
          v15 = [v13 objectForKeyedSubscript:@"STATION_MAC"];
          v16 = CWFCorrectEthernetAddressString(v15);
          [(CWFHostAPStation *)v14 setBSSID:v16];

          [array addObject:v14];
        }

        v10 = [(__CFArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    v17 = 0;
    v5 = v21;
  }

  CFRelease(v5);
  if (list)
  {
LABEL_12:
    if (v17)
    {
      v18 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v17);
      *list = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v17, v18);
    }
  }

LABEL_14:
  v19 = [array copy];

  return v19;
}

- (id)LQMConfig:(id *)config
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = Apple80211Get();
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v5];
    }

    CFRelease(v5);
    if (!config)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v6 = -3901;
    if (!config)
    {
      goto LABEL_7;
    }
  }

  if (v6)
  {
    v8 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v6);
    *config = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v6, v8);
  }

LABEL_7:

  return v7;
}

- (BOOL)setLQMConfig:(id)config error:(id *)error
{
  v5 = MEMORY[0x1E12E9420](self->_a11Ref, 337, 0, config, 0xFFFFFFFFLL);
  v6 = v5;
  if (error && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *error = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v6, v7);
  }

  return v6 == 0;
}

- (id)currentNetwork:(id *)network
{
  v4 = Apple80211CopyCurrentNetwork();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[CWFScanResult alloc] initWithScanRecord:0 includeProperties:0];
  }

  if (network && v4)
  {
    v6 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v4);
    *network = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v4, v6);
  }

  return v5;
}

- (id)hardwareMACAddress:(id *)address
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = 0u;
  v14 = 0u;
  __strlcpy_chk();
  v11 = 1;
  LODWORD(v14) = 359;
  DWORD2(v14) = 12;
  v15 = &v11;
  v4 = Apple80211RawGet();
  if (v4)
  {
    if (address)
    {
      v8 = *MEMORY[0x1E696A798];
      v9 = v4;
      v10 = CWFErrorDescription(*MEMORY[0x1E696A798], v4);
      *address = CWFErrorWithDescription(v8, v9, v10);

      address = 0;
    }

    v6 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v12 length:6];
    v6 = v5;
    if (v5)
    {
      address = CWFEthernetAddressStringFromData(v5);
    }

    else
    {
      address = 0;
    }
  }

  return address;
}

- (id)powerTableInfo:(id *)info
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = Apple80211Get();
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v5];
    }

    CFRelease(v5);
    if (!info)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v6 = -3901;
    if (!info)
    {
      goto LABEL_7;
    }
  }

  if (v6)
  {
    v8 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v6);
    *info = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v6, v8);
  }

LABEL_7:

  return v7;
}

- (BOOL)setUCMExtProfile:(id)profile error:(id *)error
{
  v5 = MEMORY[0x1E12E9420](self->_a11Ref, 562, 0, profile, 0xFFFFFFFFLL);
  v6 = v5;
  if (error && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *error = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v6, v7);
  }

  return v6 == 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  interfaceName = self->_interfaceName;
  v5 = sub_1E0BEE7B4(self->_virtualInterfaceRole);
  v6 = [v3 stringWithFormat:@"name=%@, role=%@, parent=%@", interfaceName, v5, self->_virtualInterfaceParent];

  return v6;
}

@end