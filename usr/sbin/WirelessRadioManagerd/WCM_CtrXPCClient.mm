@interface WCM_CtrXPCClient
- (BOOL)getListenCoexLoadChange;
- (BOOL)getRCU2Status;
- (BOOL)sendFullWirelessLoad:(unsigned int)load wifiBandInfo:(unsigned __int8)info AWDLRealTimeModeInfo:(BOOL)modeInfo wifiChannelInfo:(int64_t)channelInfo;
- (BOOL)storeListenCoexLoadChange:(BOOL)change;
- (BOOL)storeRCU2Status:(BOOL)status;
- (BOOL)threadCOEXStatus;
- (WCM_CtrXPCClient)init;
- (void)HandleThreadStart:(id)start;
- (void)HandleThreadStop:(id)stop;
- (void)RCU2Init;
- (void)setCellScanFreqTable:(id)table;
- (void)setWirelessLoad:(unsigned int)load;
- (void)updateAWDLRealTimeMode:(BOOL)mode;
- (void)updateAccessoryCoexCellularBand:(unsigned __int16)band CellularRat:(unsigned __int8)rat AccessoryType:(unsigned __int8)type;
- (void)updateAntennaPreference:(unsigned __int16)preference;
- (void)updateCellScanFreqTable;
- (void)updateWiFiBand:(unsigned __int8)band;
- (void)updateWiFiChannel:(int64_t)channel;
@end

@implementation WCM_CtrXPCClient

- (BOOL)getRCU2Status
{
  v2 = +[WCM_PolicyManager singleton];
  activeCoexFeatures = [v2 activeCoexFeatures];
  v4 = [activeCoexFeatures containsObject:@"RCU2SupportIntegrated"];

  if (v4)
  {
    [WCM_Logging logLevel:4 message:@" RCU2: In getRCU2Status - Reading value"];
    v5 = CFPreferencesCopyAppValue(@"previousRCU2State", @"com.apple.WirelessRadioManager.debug");
    if (v5)
    {
      v6 = v5;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v6))
      {
        value = 0;
        [WCM_Logging logLevel:4 message:@" RCU2: In getRCU2Status - for RCU2 state info %@", v6];
        if (CFDictionaryGetValueIfPresent(v6, @"state", &value))
        {
          v8 = CFStringCompare(@"TRUE", value, 0) == kCFCompareEqualTo;
          v9 = "FALSE";
          if (v8)
          {
            v9 = "TRUE";
          }

          [WCM_Logging logLevel:4 message:@" RCU2: In getRCU2Status - Reading value %s", v9];
          goto LABEL_14;
        }

        v12 = @" RCU2: In getRCU2Status - Reading value FAILED";
      }

      else
      {
        v12 = @" RCU2: In getRCU2Status - previousRCU2State not found";
      }

      [WCM_Logging logLevel:4 message:v12];
      v8 = 0;
LABEL_14:
      CFRelease(v6);
      return v8;
    }

    v10 = @" RCU2: In getRCU2Status - previousRCU2State not found";
    v11 = 4;
  }

  else
  {
    v10 = @"RCU2 Controller - RCU2_SUPPORT_INTEGRATED - Feature not enabled - return from getRCU2Status";
    v11 = 2;
  }

  [WCM_Logging logLevel:v11 message:v10];
  return 0;
}

- (void)setCellScanFreqTable:(id)table
{
  tableCopy = table;
  v4 = objc_alloc_init(NSMutableString);
  v5 = objc_alloc_init(NSMutableString);
  if (tableCopy)
  {
    [WCM_Logging logLevel:2 message:@"RCU2 Controller - setCellScanFreqTable: %@ ", tableCopy];
    v6 = [tableCopy count];
    [v4 appendFormat:@"%02X", v6];
    if (v6)
    {
      v7 = 0;
      v8 = v6;
      do
      {
        v9 = [tableCopy objectAtIndex:v7];
        v10 = [v9 objectAtIndex:0];
        integerValue = [v10 integerValue];

        v12 = [v9 objectAtIndex:1];
        LOWORD(v10) = [v12 integerValue];

        [v4 appendFormat:@"%02X", HIBYTE(integerValue)];
        [v4 appendFormat:@"%02X", integerValue];
        [v5 appendFormat:@"%02X", BYTE1(v10)];
        [v5 appendFormat:@"%02X", v10];

        ++v7;
      }

      while (v7 < v8);
    }

    [v4 appendString:v5];
  }

  cellScanFreqTableStr = self->cellScanFreqTableStr;
  self->cellScanFreqTableStr = v4;
}

- (void)updateCellScanFreqTable
{
  cellScanFreqTableStr = self->cellScanFreqTableStr;
  if (!cellScanFreqTableStr)
  {
    v4 = +[WCM_PolicyManager singleton];
    platformManager = [v4 platformManager];
    wcmCellularScanProtectionCellFrequenciesforBT = [platformManager wcmCellularScanProtectionCellFrequenciesforBT];
    [(WCM_CtrXPCClient *)self setCellScanFreqTable:wcmCellularScanProtectionCellFrequenciesforBT];

    cellScanFreqTableStr = self->cellScanFreqTableStr;
  }

  [WCM_Logging logLevel:2 message:@"RCU2 Controller - updateCellScanFreqTable: %@ ", cellScanFreqTableStr];
  v7 = self->cellScanFreqTableStr;
  if (v7)
  {
    if ([(NSString *)v7 length])
    {
      CtrClientPtr = self->CtrClientPtr;
      if (CtrClientPtr)
      {
        if (self->threadRadioUp)
        {
          [(NSString *)self->cellScanFreqTableStr UTF8String];
          objc_msgSend_setProperty_prperty_val_(CtrClientPtr);
          if (v9)
          {
            [WCM_Logging logLevel:2 message:@"RCU2 Controller - updateCellScanFreqTable failed! "];
          }

          if (v11 < 0)
          {
            operator delete(__p);
          }
        }
      }
    }
  }
}

- (BOOL)threadCOEXStatus
{
  [WCM_Logging logLevel:2 message:@"RCU2 Controller COEX status - ENTER"];
  [WCM_Logging logLevel:2 message:@"RCU2 Controller COEX status- %d EXIT", 1];
  return 1;
}

- (BOOL)storeRCU2Status:(BOOL)status
{
  statusCopy = status;
  v4 = +[WCM_PolicyManager singleton];
  activeCoexFeatures = [v4 activeCoexFeatures];
  v6 = [activeCoexFeatures containsObject:@"RCU2SupportIntegrated"];

  if (v6)
  {
    [WCM_Logging logLevel:4 message:@" RCU2: In storeRCU2Status.."];
    if (statusCopy)
    {
      v7 = off_1002B7790;
    }

    else
    {
      v7 = off_1002B7798;
    }

    if (statusCopy)
    {
      v8 = @" RCU2: In storeRCU2Status.. - Writing value TRUE";
    }

    else
    {
      v8 = @" RCU2: In storeRCU2Status.. - Writing value FALSE";
    }

    v9 = CFDictionaryCreate(kCFAllocatorDefault, off_1002B7788, v7, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [WCM_Logging logLevel:4 message:v8];
    CFPreferencesSetAppValue(@"previousRCU2State", v9, @"com.apple.WirelessRadioManager.debug");
    if (CFPreferencesAppSynchronize(@"com.apple.WirelessRadioManager.debug"))
    {
      v10 = @" RCU2: In storeRCU2Status.. - Actual write:- passed";
    }

    else
    {
      v10 = @" RCU2: In storeRCU2Status.. - Actual write:- failed";
    }

    [WCM_Logging logLevel:1 message:v10];
    CFRelease(v9);
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"RCU2 Controller - RCU2_SUPPORT_INTEGRATED - Feature not enabled - return from storeRCU2Status"];
  }

  return v6;
}

- (BOOL)getListenCoexLoadChange
{
  [WCM_Logging logLevel:4 message:@" RCU2: In storeListenCoexLoadChange - Reading value"];
  v2 = CFPreferencesCopyAppValue(@"previousStoreListenCoexLoadChange", @"com.apple.WirelessRadioManager.debug");
  if (v2)
  {
    v3 = v2;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      value = 0;
      [WCM_Logging logLevel:4 message:@" RCU2: In getListenCoexLoadChange - for RCU2 state info %@", v3];
      if (CFDictionaryGetValueIfPresent(v3, @"ListenCoexLoad", &value))
      {
        v5 = CFStringCompare(@"TRUE", value, 0) == kCFCompareEqualTo;
        v6 = "FALSE";
        if (v5)
        {
          v6 = "TRUE";
        }

        [WCM_Logging logLevel:4 message:@" RCU2: In getListenCoexLoadChange - Reading value %s", v6];
        goto LABEL_11;
      }

      v7 = @" RCU2: In getListenCoexLoadChange - Reading value FAILED";
    }

    else
    {
      v7 = @" RCU2: In getListenCoexLoadChange - previousStoreListenCoexLoadChange not found";
    }

    [WCM_Logging logLevel:4 message:v7];
    v5 = 0;
LABEL_11:
    CFRelease(v3);
    return v5;
  }

  [WCM_Logging logLevel:4 message:@" RCU2: In getListenCoexLoadChange - previousStoreListenCoexLoadChange not found"];
  return 0;
}

- (BOOL)storeListenCoexLoadChange:(BOOL)change
{
  changeCopy = change;
  [WCM_Logging logLevel:4 message:@" RCU2: In storeListenCoexLoadChange.."];
  if (changeCopy)
  {
    v4 = off_1002B77A8;
  }

  else
  {
    v4 = &off_1002B77B0;
  }

  if (changeCopy)
  {
    v5 = @" RCU2: In storeListenCoexLoadChange.. - Writing value TRUE";
  }

  else
  {
    v5 = @" RCU2: In storeListenCoexLoadChange.. - Writing value FALSE";
  }

  v6 = CFDictionaryCreate(kCFAllocatorDefault, off_1002B77A0, v4, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  [WCM_Logging logLevel:4 message:v5];
  CFPreferencesSetAppValue(@"previousStoreListenCoexLoadChange", v6, @"com.apple.WirelessRadioManager.debug");
  if (CFPreferencesAppSynchronize(@"com.apple.WirelessRadioManager.debug"))
  {
    v7 = @" RCU2: In storeListenCoexLoadChange.. - Actual write:- passed";
  }

  else
  {
    v7 = @" RCU2: In storeListenCoexLoadChange.. - Actual write:- failed";
  }

  [WCM_Logging logLevel:1 message:v7];
  CFRelease(v6);
  return 1;
}

- (void)setWirelessLoad:(unsigned int)load
{
  v3 = *&load;
  v5 = +[WCM_PolicyManager singleton];
  activeCoexFeatures = [v5 activeCoexFeatures];
  v7 = [activeCoexFeatures containsObject:@"RCU2SupportIntegrated"];

  if (v7)
  {
    v8 = +[WCM_PolicyManager singleton];
    [v8 sendWirelessBtLoad:v3];

    [WCM_Logging logLevel:2 message:@"RCU2 Controller updating btWirelessLoad from %d to %d", self->btWirelessLoad, v3];
    self->btWirelessLoad = v3;
    wifiBandLoad = self->wifiBandLoad;
    AWDLRealTimeModeEnabled = self->AWDLRealTimeModeEnabled;
    wifiChannelLoad = self->wifiChannelLoad;

    [(WCM_CtrXPCClient *)self sendFullWirelessLoad:v3 wifiBandInfo:wifiBandLoad AWDLRealTimeModeInfo:AWDLRealTimeModeEnabled wifiChannelInfo:wifiChannelLoad];
  }
}

- (void)updateAntennaPreference:(unsigned __int16)preference
{
  preferenceCopy = preference;
  [WCM_Logging logLevel:2 message:@"RCU2 Controller - sendAntennaPreference: %d", preference];
  v5 = [NSNumber numberWithUnsignedShort:preferenceCopy];
  stringValue = [v5 stringValue];

  [stringValue UTF8String];
  if (!self->CtrClientPtr)
  {
    [WCM_Logging logLevel:2 message:@"RCU2 Controller - CtrClientPtr is nil"];
  }

  if (self->threadRadioUp)
  {
    CtrClientPtr = self->CtrClientPtr;
    if (CtrClientPtr)
    {
      objc_msgSend_setProperty_prperty_val_(CtrClientPtr);
      if (LODWORD(__p[0]))
      {
        v8 = @"RCU2 Controller - sendAntennaPreference Failure - preference set to %hu ";
      }

      else
      {
        v8 = @"RCU2 Controller - sendAntennaPreference Success - preference set to %hu";
      }
    }

    else
    {
      *__p = 0u;
      v10 = 0u;
      v8 = @"RCU2 Controller - sendAntennaPreference Success - preference set to %hu";
    }

    [WCM_Logging logLevel:2 message:v8, preferenceCopy];
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[1]);
    }
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"RCU2 Controller - Thread radio not enabled"];
  }
}

- (void)updateWiFiBand:(unsigned __int8)band
{
  wifiBandLoad = self->wifiBandLoad;
  if (wifiBandLoad == band)
  {

    [WCM_Logging logLevel:2 message:@"RCU2 Controller No Change in WiFi Band - Not Updataing"];
  }

  else
  {
    bandCopy = band;
    [WCM_Logging logLevel:2 message:@"RCU2 Controller WiFi band changed from %d to %d", wifiBandLoad, band];
    self->wifiBandLoad = bandCopy;
    btWirelessLoad = self->btWirelessLoad;
    AWDLRealTimeModeEnabled = self->AWDLRealTimeModeEnabled;
    wifiChannelLoad = self->wifiChannelLoad;

    [(WCM_CtrXPCClient *)self sendFullWirelessLoad:btWirelessLoad wifiBandInfo:bandCopy AWDLRealTimeModeInfo:AWDLRealTimeModeEnabled wifiChannelInfo:wifiChannelLoad];
  }
}

- (void)updateWiFiChannel:(int64_t)channel
{
  wifiChannelLoad = self->wifiChannelLoad;
  if (wifiChannelLoad == channel)
  {

    [WCM_Logging logLevel:2 message:@"RCU2 Controller No Change in WiFi Channel - Not Updating"];
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"RCU2 Controller WiFi channel changed from %ld to %ld", wifiChannelLoad, channel];
    self->wifiChannelLoad = channel;
    btWirelessLoad = self->btWirelessLoad;
    wifiBandLoad = self->wifiBandLoad;
    AWDLRealTimeModeEnabled = self->AWDLRealTimeModeEnabled;

    [(WCM_CtrXPCClient *)self sendFullWirelessLoad:btWirelessLoad wifiBandInfo:wifiBandLoad AWDLRealTimeModeInfo:AWDLRealTimeModeEnabled wifiChannelInfo:channel];
  }
}

- (void)updateAWDLRealTimeMode:(BOOL)mode
{
  AWDLRealTimeModeEnabled = self->AWDLRealTimeModeEnabled;
  if (mode == AWDLRealTimeModeEnabled)
  {

    [WCM_Logging logLevel:2 message:@"RCU2 Controller No Change in AWDLRealTime state - not updating"];
  }

  else
  {
    modeCopy = mode;
    [WCM_Logging logLevel:2 message:@"RCU2 Controller AWDLRealTime status changed from %d to %d", AWDLRealTimeModeEnabled, mode];
    self->AWDLRealTimeModeEnabled = modeCopy;
    btWirelessLoad = self->btWirelessLoad;
    wifiBandLoad = self->wifiBandLoad;
    wifiChannelLoad = self->wifiChannelLoad;

    [(WCM_CtrXPCClient *)self sendFullWirelessLoad:btWirelessLoad wifiBandInfo:wifiBandLoad AWDLRealTimeModeInfo:modeCopy wifiChannelInfo:wifiChannelLoad];
  }
}

- (void)updateAccessoryCoexCellularBand:(unsigned __int16)band CellularRat:(unsigned __int8)rat AccessoryType:(unsigned __int8)type
{
  typeCopy = type;
  ratCopy = rat;
  bandCopy = band;
  [WCM_Logging logLevel:2 message:@"RCU2 Controller - updateAccessoryCoexCellularBand with CellBand: %d, CellRat: %d AccessoryType:%d", band, rat, type];
  bandCopy = [NSNumber numberWithUnsignedInt:(ratCopy << 16) | (typeCopy << 24) | bandCopy];
  stringValue = [bandCopy stringValue];
  [stringValue UTF8String];

  CtrClientPtr = self->CtrClientPtr;
  if (CtrClientPtr && self->threadRadioUp)
  {
    objc_msgSend_setProperty_prperty_val_(CtrClientPtr);
    if (v12)
    {
      [WCM_Logging logLevel:0 message:@"RCU2 Controller - updateAccessoryCoexCellularBand failed to update Thread driver"];
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {

    [WCM_Logging logLevel:2 message:@"RCU2 Controller - updateAccessoryCoexCellularBand: Thread radio not enabled"];
  }
}

- (BOOL)sendFullWirelessLoad:(unsigned int)load wifiBandInfo:(unsigned __int8)info AWDLRealTimeModeInfo:(BOOL)modeInfo wifiChannelInfo:(int64_t)channelInfo
{
  v7 = 0x800000000;
  if (!modeInfo)
  {
    v7 = 0;
  }

  self->wifi_bt_cellular_load = (load | ((info & 7) << 32) | v7) & 0xFF00FFFFFFFFFFFFLL | (channelInfo << 48);
  [WCM_Logging logLevel:2 message:@"RCU2 Controller - sendFullWirelessLoad with BT load %d WiFiBand %d AWDLRealTime:%d wifiChannel:%ld FullValue: %llu", *&load, info, modeInfo, channelInfo, (load | ((info & 7) << 32) | v7) & 0xFF00FFFFFFFFFFFFLL | (channelInfo << 48)];
  v8 = [NSNumber numberWithUnsignedLongLong:self->wifi_bt_cellular_load];
  stringValue = [v8 stringValue];

  [stringValue UTF8String];
  CtrClientPtr = self->CtrClientPtr;
  if (CtrClientPtr)
  {
    if (self->threadListenCoexLoadChange)
    {
      objc_msgSend_setProperty_prperty_val_(CtrClientPtr);
      if (v14)
      {
        v11 = @"RCU2 Controller - setWirelessLoad Failure - Load set to %llu ";
      }

      else
      {
        v11 = @"RCU2 Controller - setWirelessLoad Success - Load set to %llu";
      }

      [WCM_Logging logLevel:2 message:v11, self->wifi_bt_cellular_load];
      if (v16 < 0)
      {
        operator delete(__p);
        if (!v14)
        {
LABEL_16:
          v12 = 1;
          goto LABEL_14;
        }
      }

      else if (!v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      [WCM_Logging logLevel:2 message:@"RCU2 Controller - Thread radio not listening"];
    }
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"RCU2 Controller - CtrClientPtr is nil"];
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (void)HandleThreadStart:(id)start
{
  startCopy = start;
  self->threadRadioUp = 1;
  v10 = startCopy;
  v5 = xpc_dictionary_get_value(startCopy, "kMessageArgs");
  v6 = xpc_dictionary_get_BOOL(v5, "kWCMThreadListenCoexLoadChange");
  self->threadListenCoexLoadChange = v6;
  [WCM_Logging logLevel:2 message:@"RCU2 Controller - Threadradio started - enabling sending messages - Current value = %d ListenCoexLoadChange = %d", self->threadRadioUp, v6];
  [(WCM_CtrXPCClient *)self RCU2Init];
  [(WCM_CtrXPCClient *)self setWirelessLoad:LODWORD(self->wifi_bt_cellular_load)];
  [(WCM_CtrXPCClient *)self storeRCU2Status:self->threadRadioUp];
  [(WCM_CtrXPCClient *)self storeListenCoexLoadChange:self->threadListenCoexLoadChange];
  [(WCM_CtrXPCClient *)self updateCellScanFreqTable];
  v7 = +[WCM_PolicyManager singleton];
  [v7 handleWiFiBTCoexChange];

  v8 = +[WCM_PolicyManager singleton];
  [v8 configureBTAntennaSelection];

  v9 = +[WCM_PolicyManager singleton];
  [v9 updateThreadRadioState:self->threadRadioUp];
}

- (void)RCU2Init
{
  v3 = [[CtrClient alloc] init:"client.xpc.WirelessRadioManager"];
  CtrClientPtr = self->CtrClientPtr;
  self->CtrClientPtr = v3;

  _objc_release_x1(v3, CtrClientPtr);
}

- (void)HandleThreadStop:(id)stop
{
  stopCopy = stop;
  v4 = xpc_dictionary_get_value(stopCopy, "kMessageArgs");
  self->threadListenCoexLoadChange = xpc_dictionary_get_BOOL(v4, "kWCMThreadListenCoexLoadChange");
  self->threadRadioUp = 0;
  [(WCM_CtrXPCClient *)self storeRCU2Status:0];
  [(WCM_CtrXPCClient *)self storeListenCoexLoadChange:self->threadListenCoexLoadChange];
  [WCM_Logging logLevel:2 message:@"RCU2 Controller - Threadradio Stopped - Disabling sending messages- Current value = %d ListenCoexLoadChange = %d", self->threadRadioUp, self->threadListenCoexLoadChange];
  v5 = +[WCM_PolicyManager singleton];
  [v5 handleWiFiBTCoexChange];

  if (!self->threadListenCoexLoadChange)
  {
    CtrClientPtr = self->CtrClientPtr;
    self->CtrClientPtr = 0;
  }
}

- (WCM_CtrXPCClient)init
{
  v4.receiver = self;
  v4.super_class = WCM_CtrXPCClient;
  v2 = [(WCM_CtrXPCClient *)&v4 init];
  [WCM_Logging logLevel:2 message:@"RCU2 Controller - Initilization"];
  *(v2 + 2) = 0;
  v2[24] = 0;
  *(v2 + 7) = 0;
  v2[64] = 0;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  *(v2 + 45) = 0;
  v2[25] = [v2 getRCU2Status];
  v2[26] = [v2 getListenCoexLoadChange];
  if (v2[25] == 1)
  {
    [v2 RCU2Init];
  }

  return v2;
}

@end