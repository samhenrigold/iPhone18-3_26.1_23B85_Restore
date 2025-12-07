@interface WCM_WiFiServiceIOS
- (BOOL)isAssociated;
- (BOOL)isWiFiNetworkCaptive;
- (BOOL)isWiFiPrimaryInterface;
- (BOOL)setLQMReportInterval:(int)interval;
- (BOOL)setWiFiBTCoexProfile:(id)profile atIndex:(int64_t)index;
- (BOOL)setWiFiBTExtCoexProfile:(id)profile atIndex:(int64_t)index;
- (WCM_WiFiServiceIOS)init;
- (id)createChannelConfigurationForConditionId:(unsigned int)id enable2G:(BOOL)g enable5G:(BOOL)enable5G enable6G:(BOOL)enable6G wifi_channel_lower:(unsigned int)wifi_channel_lower wifi_channel_upper:(unsigned int)wifi_channel_upper;
- (id)getLeastCongestedWifiParam;
- (int)getPhyMode;
- (int)sendMessage:(void *)message withValue:(void *)value;
- (void)checkWiFiState;
- (void)dealloc;
- (void)disableLQMUpdate;
- (void)disableWiFi;
- (void)dispatchCarplayInfotoBT:(BOOL)t reason:(int)reason;
- (void)dispatchContentionFreeWiFiNetworkToRC2:(unsigned int)c2 count:(unsigned int)count;
- (void)enableLQMUpdate;
- (void)forceCopresence:(BOOL)copresence scanGrantDuration:(unsigned int)duration;
- (void)notifyWiFiStateChange:(BOOL)change;
- (void)performScan:(id)scan;
- (void)processWifiDeviceExtendedLinkEvent:(__CFDictionary *)event;
- (void)registerWiFiCallbacks;
- (void)setAccessoryCoexConfigEnable:(BOOL)enable AccessoryType:(unsigned __int8)type CellRAT:(unsigned __int8)t CellBand:(unsigned __int16)band;
- (void)setAggregatedConditionIdConfig:(id)config;
- (void)setAntennaCellPolicy:(id)policy;
- (void)setAntennaSelection:(id)selection;
- (void)setAntennaSelectionV2:(id)v2;
- (void)setAntennaSelectionWiFiEnh:(id)enh;
- (void)setBTConnectionReport:(id)report;
- (void)setCatsState:(unsigned __int8)state bitmap:(unint64_t)bitmap;
- (void)setCellularFrequencyConfig:(id)config;
- (void)setChannelConfigurationForConditionId:(unsigned int)id enable2G:(BOOL)g enable5G:(BOOL)enable5G enable6G:(BOOL)enable6G wifi_channel_lower:(unsigned int)wifi_channel_lower wifi_channel_upper:(unsigned int)wifi_channel_upper;
- (void)setChannelsForCellularScanProtectionWiFiEnh:(id)enh wiFiEnhChannels:(id)channels indexArrayForScanThrottling:(id)throttling;
- (void)setChannelsForCellularScanProtectionWithMode:(id)mode indexArrayForScanThrottling:(id)throttling;
- (void)setChannelsForTimeSharingMode:(id)mode;
- (void)setChannelsToBlocklist:(id)blocklist;
- (void)setChannelsToDisableOCL:(id)l;
- (void)setChannelsToDisableOCLWiFiEnh:(id)enh WiFiEnhChannels:(id)channels;
- (void)setChannelsToEnableAssocProtectionModeWiFiEnh;
- (void)setChannelsToEnableType7MSG2GWiFi:(id)fi;
- (void)setChannelsToEnableType7MSG:(id)g;
- (void)setChannelsToEnableType7MSGWiFiEnh:(id)enh WiFiEnhChannels:(id)channels;
- (void)setChannelsToEnableWCI2:(id)i2;
- (void)setChannelsToEnableWCI2V2:(id)v2;
- (void)setChannelsToEnableWCI2WiFiEnh:(id)enh WiFiEnhChannels:(id)channels;
- (void)setChannelsToEnablerFemModeWiFiEnh:(BOOL)enh enable5G:(BOOL)g enable6G:(BOOL)enable6G;
- (void)setCoexParams:(const char *)params withValue:(id)value;
- (void)setCriticalWiFiTraffic:(BOOL)traffic duration:(unsigned int)duration criticalityPercentage:(unsigned __int16)percentage forProcessID:(int)d;
- (void)setEnableAgcCoexMode:(id)mode;
- (void)setEnableEnvelopeIndicationFor2G:(id)g;
- (void)setEnvelopeIndicationTimerFor2G:(id)g;
- (void)setHPovrLEscanGrantDuration:(unsigned int)duration;
- (void)setLAACoexConfigEnableTxInd;
- (void)setLAACoexConfigScanThrottleMask:(id)mask;
- (void)setLAACoexConfigWci2TxDurationThreshold:(id)threshold;
- (void)setLAACoexConfigWifiDwellTime:(id)time;
- (void)setMWSChannelParameters:(id)parameters;
- (void)setMWSFrameConfig:(id)config;
- (void)setMWSSignalingConfig:(id)config;
- (void)setMaxDurationForCellularScanProtection:(id)protection;
- (void)setMedtronicState:(int)state;
- (void)setNBRanigngSessionActive:(BOOL)active;
- (void)setRCU2CoexParams:(id)params;
- (void)setRxAntennaPreference:(id)preference;
- (void)setRxPriorityThreshold:(id)threshold;
- (void)setRxProtectAutoModeParamWeight:(id)weight andThresh:(id)thresh;
- (void)setRxProtectMode:(id)mode;
- (void)setScanJoinRxProtectDuration:(id)duration;
- (void)setTxAntennaPreference:(id)preference;
- (void)setTxOnIndication:(id)indication;
- (void)setWiFiBTCoexActiveProfileFor2G:(int64_t)g and5G:(int64_t)and5G;
- (void)setWiFiBTLeConnEnable:(BOOL)enable andPeakOutageMs:(unsigned int)ms andDurationMs:(unsigned int)durationMs andDutyCycle:(unsigned int)cycle andReason:(unsigned int)reason;
- (void)setWiFiBTULOFDMAstate:(BOOL)astate;
- (void)setWiFiCallingState:(BOOL)state;
- (void)setWiFiDevice:(__WiFiDeviceClient *)device;
- (void)setWiFiRCU1ModeChanged:(BOOL)changed andChannelChanged:(BOOL)channelChanged andMode:(id)mode andChannel:(id)channel;
- (void)setWiFiRCU1ULOFDMAstate:(BOOL)astate;
- (void)setWiFiRCU2CoexMode:(id)mode;
- (void)setWiFiRCU2PMProtectionMode:(id)mode;
- (void)setWiFiRCU2TimingArray:(id)array;
- (void)setWiFiRCU2ULOFDMAstate:(BOOL)astate;
- (void)setWifiBTA2DPLLAStatus:(int)status;
- (void)setWifiBTA2DPStatus:(int)status;
- (void)setWifiBTeSCOHidStatus:(int)status andUseCase:(int)case;
- (void)setWifiBTeSCOStatus:(int)status;
- (void)unregisterWiFiCallbacks;
- (void)updateContentionFreeWiFiInfoToRC2:(unsigned int)c2 count:(unsigned int)count;
- (void)updateHostAPState:(BOOL)state channel:(unsigned int)channel;
@end

@implementation WCM_WiFiServiceIOS

- (int)getPhyMode
{
  if (!self->mWifiDevice)
  {
    v10 = @"WiFiS: device not attached";
    v11 = 0;
LABEL_21:
    [WCM_Logging logLevel:v11 message:v10];
    return 0;
  }

  v2 = WiFiDeviceClientCopyCurrentNetwork();
  if (!v2)
  {
    v10 = @"WiFiS: not associated to network";
    v11 = 2;
    goto LABEL_21;
  }

  v3 = v2;
  PhyMode = WiFiNetworkGetPhyMode();
  [WCM_Logging logLevel:2 message:@"WiFiNetworkGetPhyMode is 0x%x", PhyMode];
  if ((PhyMode & 4) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = (PhyMode & 0x22) != 0;
  }

  if ((PhyMode & 0x48) != 0)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  if ((PhyMode & 0x10) != 0)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  if ((PhyMode & 0x80) != 0)
  {
    v8 = 5;
  }

  else
  {
    v8 = v7;
  }

  if ((PhyMode & 0x100) != 0)
  {
    v9 = 6;
  }

  else
  {
    v9 = v8;
  }

  CFRelease(v3);
  return v9;
}

- (BOOL)isWiFiNetworkCaptive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009204;
  v4[3] = &unk_10023DDB0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(&_dispatch_main_q, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isWiFiPrimaryInterface
{
  v3 = [-[NWPathEvaluator path](self->mWiFiPathEvaluator "path")];
  v4 = v3;
  [WCM_Logging logLevel:19 message:@"isWiFiPrimaryInterface %d, path: %x", v3, self->mWiFiPathEvaluator];
  return v4;
}

- (WCM_WiFiServiceIOS)init
{
  v5.receiver = self;
  v5.super_class = WCM_WiFiServiceIOS;
  v2 = [(WCM_WiFiService *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->mWifiDevice = 0;
    v2->mWifiManager = 0;
    v2->mLQMRecevied = 0;
    v2->mAWDLInProgress = 0;
    v2->mP2pRCU2CoexEventInProgress = 0;
    v2->mCarPlaySessionInProgress = 0;
    v2->mCarPlayBTScanRelaxReason = 4;
    v2->mLeastCongestedChannel = 0;
    v2->mLeastCongestedChannelCount = 0;
    v2->mWiFiDeviceReset = 0;
    v2->mWifiDevicePowerState = 0;
    v2->mWiFiLinkUP = 0;
    v2->mWiFiPathEvaluator = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:0];
    v3->mWifiBand = 0;
    v3->mBandwidthMHz = 0;
    v3->mCurrentSSID = 0;
  }

  return v3;
}

- (void)dealloc
{
  mWiFiPathEvaluator = self->mWiFiPathEvaluator;
  if (mWiFiPathEvaluator)
  {

    self->mWiFiPathEvaluator = 0;
  }

  v4.receiver = self;
  v4.super_class = WCM_WiFiServiceIOS;
  [(WCM_WiFiService *)&v4 dealloc];
}

- (void)registerWiFiCallbacks
{
  if (self->mWifiManager)
  {
    [WCM_Logging logLevel:0 message:@"WiFiS: mWifiManager was not releaed previously"];
    CFRunLoopGetMain();
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(self->mWifiManager);
  }

  v3 = WiFiManagerClientCreate();
  self->mWifiManager = v3;
  if (v3)
  {
    CFRunLoopGetMain();
    WiFiManagerClientScheduleWithRunLoop();
    WiFiManagerClientRegisterWowStateChangedCallback();
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    v4 = WiFiManagerClientCopyDevices();
    if (v4)
    {
      v5 = v4;
      if (CFArrayGetCount(v4))
      {
        [(WCM_WiFiServiceIOS *)self setWiFiDevice:CFArrayGetValueAtIndex(v5, 0)];
      }

      else
      {
        self->mWifiDevicePowerState = 0;
        [WCM_Logging logLevel:0 message:@"WiFiS: there is no device attached"];
      }

      CFRelease(v5);
    }

    else
    {
      self->mWifiDevicePowerState = 0;
      [WCM_Logging logLevel:0 message:@"WiFiS: there is no device attached"];
    }

    if (self->mWifiDevice)
    {
      v6 = WiFiDeviceClientCopyCurrentNetwork();
      if (v6)
      {
        v7 = v6;
        if (WiFiNetworkGetProperty() || WiFiNetworkGetProperty() || WiFiNetworkGetProperty())
        {
          self->mCurrentSSID = [WiFiNetworkGetProperty() copy];
        }

        CFRelease(v7);
      }
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WiFiS: failed to create WiFi manager client"];
  }
}

- (void)unregisterWiFiCallbacks
{
  if (self->mWifiDevice)
  {
    [WCM_Logging logLevel:2 message:@"WiFiS: unregister device callbacks and release the device"];
    WiFiDeviceClientRegisterDeviceAvailableCallback();
    WiFiDeviceClientRegisterExtendedLinkCallback();
    WiFiDeviceClientRegisterHostApStateChangedCallback();
    WiFiDeviceClientRegisterLQMCallback();
    WiFiDeviceClientRegisterWeightAvgLQMCallback();
    WiFiDeviceClientRegisterBTCoexStatsCallback();
    WiFiDeviceClientRegisterBssidChangeCallback();
    WiFiDeviceClientRegisterCatsUpdateCallback();
    WiFiDeviceClientRegisterBTScanIntervalRelaxCallback();
    WiFiDeviceClientRegisterScanUpdateCallback();
    WiFiDeviceClientRegisterResumeScanCallback();
    WiFiDeviceClientRegisterBgScanSuspendResumeCallback();
    WiFiDeviceClientRegisterUCMEventCallback();
    CFRelease(self->mWifiDevice);
    self->mWifiDevice = 0;
    self->super.m_lqmRefCount = 0;
    self->mLQMRecevied = 0;
  }

  if (self->mWifiManager)
  {
    [WCM_Logging logLevel:2 message:@"WiFiS: unregister manager callbacks and release the manager"];
    WiFiManagerClientRegisterWowStateChangedCallback();
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    CFRunLoopGetMain();
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(self->mWifiManager);
    self->mWifiManager = 0;
  }
}

- (BOOL)setLQMReportInterval:(int)interval
{
  if (!self->mWifiManager)
  {
    v8 = @"setLQMReportInterval: failed, null pointer";
LABEL_7:
    [WCM_Logging logLevel:3 message:v8, v10];
    return 0;
  }

  v3 = *&interval;
  v4 = WiFiManagerClientCopyDevices();
  if (!v4)
  {
    v10 = v3;
    v8 = @"setLQMReportInterval: failed, LQM report interval: %d";
    goto LABEL_7;
  }

  v5 = v4;
  if (CFArrayGetCount(v4))
  {
    CFArrayGetValueAtIndex(v5, 0);
    v6 = WiFiDeviceClientSetLQMEventInterval();
    [WCM_Logging logLevel:3 message:@"setLQMReportInterval: success, LQM report interval: %d, result: %d ", v3, v6];
    v7 = v6 >= 0;
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"setLQMReportInterval: failed, LQM report interval: %d", v3];
    v7 = 0;
  }

  CFRelease(v5);
  return v7;
}

- (BOOL)isAssociated
{
  if (self->mWifiDevice)
  {
    v2 = WiFiDeviceClientCopyCurrentNetwork();
    if (v2)
    {
      CFRelease(v2);
      return 1;
    }

    v4 = @"WiFiS: not associated to network";
    v5 = 2;
  }

  else
  {
    v4 = @"WiFiS: device not attached";
    v5 = 0;
  }

  [WCM_Logging logLevel:v5 message:v4];
  return 0;
}

- (int)sendMessage:(void *)message withValue:(void *)value
{
  mWifiDevice = self->mWifiDevice;
  if (mWifiDevice)
  {
    CFRetain(mWifiDevice);
  }

  if ([+[WCM_PolicyManager singleton](WCM_PolicyManager singleton])
  {
    if (self->mWifiDevice)
    {
      if (self->mWifiDevicePowerState)
      {
        [WCM_Logging logLevel:2 message:@"WiFiS: send WiFi message (%@)", message];
        v7 = WiFiDeviceClientSetCoexParameters();
        goto LABEL_12;
      }

      v8 = @"WiFiS: not send message as device power off";
    }

    else
    {
      v8 = @"WiFiS: not send message as device not attached";
    }

    v9 = 2;
  }

  else
  {
    v8 = @"WiFiS: not send message as LTE Coex is not enabled";
    v9 = 1;
  }

  [WCM_Logging logLevel:v9 message:v8];
  v7 = -3902;
LABEL_12:
  v10 = self->mWifiDevice;
  if (v10)
  {
    CFRelease(v10);
  }

  return v7;
}

- (void)setChannelsToBlocklist:(id)blocklist
{
  blocklistCopy = blocklist;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F299C;
  v6[3] = &unk_10023DC80;
  v6[4] = blocklist;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsToEnableWCI2:(id)i2
{
  i2Copy = i2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F2B94;
  v6[3] = &unk_10023DC80;
  v6[4] = i2;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsToEnableWCI2V2:(id)v2
{
  v2Copy = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F2D8C;
  v6[3] = &unk_10023DC80;
  v6[4] = v2;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsToEnableWCI2WiFiEnh:(id)enh WiFiEnhChannels:(id)channels
{
  enhCopy = enh;
  channelsCopy = channels;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F3288;
  block[3] = &unk_10023E058;
  block[4] = enh;
  block[5] = channels;
  block[6] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setChannelsToEnableType7MSG:(id)g
{
  gCopy = g;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F3C1C;
  v6[3] = &unk_10023DC80;
  v6[4] = g;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsToEnableType7MSG2GWiFi:(id)fi
{
  fiCopy = fi;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F405C;
  v6[3] = &unk_10023DC80;
  v6[4] = fi;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsToEnableType7MSGWiFiEnh:(id)enh WiFiEnhChannels:(id)channels
{
  enhCopy = enh;
  channelsCopy = channels;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F4294;
  block[3] = &unk_10023E058;
  block[4] = enh;
  block[5] = channels;
  block[6] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setChannelsToDisableOCL:(id)l
{
  lCopy = l;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F4C28;
  v6[3] = &unk_10023DC80;
  v6[4] = l;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsToDisableOCLWiFiEnh:(id)enh WiFiEnhChannels:(id)channels
{
  enhCopy = enh;
  channelsCopy = channels;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F4E54;
  block[3] = &unk_10023E058;
  block[4] = enh;
  block[5] = channels;
  block[6] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setRxPriorityThreshold:(id)threshold
{
  thresholdCopy = threshold;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F57E8;
  v6[3] = &unk_10023DC80;
  v6[4] = threshold;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setMWSChannelParameters:(id)parameters
{
  parametersCopy = parameters;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F58DC;
  v6[3] = &unk_10023DC80;
  v6[4] = parameters;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setMWSFrameConfig:(id)config
{
  configCopy = config;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F59D0;
  v6[3] = &unk_10023DC80;
  v6[4] = config;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setMWSSignalingConfig:(id)config
{
  configCopy = config;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5ADC;
  v6[3] = &unk_10023DC80;
  v6[4] = config;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setRxAntennaPreference:(id)preference
{
  preferenceCopy = preference;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5BE8;
  v6[3] = &unk_10023DC80;
  v6[4] = preference;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setTxAntennaPreference:(id)preference
{
  preferenceCopy = preference;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5CE4;
  v6[3] = &unk_10023DC80;
  v6[4] = preference;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setAntennaCellPolicy:(id)policy
{
  policyCopy = policy;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5DE0;
  v6[3] = &unk_10023DC80;
  v6[4] = policy;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setAntennaSelection:(id)selection
{
  selectionCopy = selection;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5EDC;
  v6[3] = &unk_10023DC80;
  v6[4] = selection;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setAntennaSelectionV2:(id)v2
{
  v2Copy = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5FD0;
  v6[3] = &unk_10023DC80;
  v6[4] = v2;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setAntennaSelectionWiFiEnh:(id)enh
{
  enhCopy = enh;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F60C4;
  v6[3] = &unk_10023DC80;
  v6[4] = enh;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsForCellularScanProtectionWithMode:(id)mode indexArrayForScanThrottling:(id)throttling
{
  modeCopy = mode;
  throttlingCopy = throttling;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F61EC;
  block[3] = &unk_10023E058;
  block[4] = mode;
  block[5] = self;
  block[6] = throttling;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setChannelsForCellularScanProtectionWiFiEnh:(id)enh wiFiEnhChannels:(id)channels indexArrayForScanThrottling:(id)throttling
{
  enhCopy = enh;
  channelsCopy = channels;
  throttlingCopy = throttling;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F6C0C;
  v12[3] = &unk_1002421B0;
  v12[4] = enh;
  v12[5] = channels;
  v12[6] = throttling;
  v12[7] = self;
  dispatch_async(&_dispatch_main_q, v12);
}

- (id)createChannelConfigurationForConditionId:(unsigned int)id enable2G:(BOOL)g enable5G:(BOOL)enable5G enable6G:(BOOL)enable6G wifi_channel_lower:(unsigned int)wifi_channel_lower wifi_channel_upper:(unsigned int)wifi_channel_upper
{
  enable6GCopy = enable6G;
  enable5GCopy = enable5G;
  gCopy = g;
  v122 = *&id;
  [WCM_Logging logLevel:4 message:@"WiFiS: setting condition id %d for the following range of channels[%d, %d] in band 2g: %d 5g: %d 6g: %d", *&id, *&wifi_channel_lower, *&wifi_channel_upper, g, enable5G, enable6G];
  v13 = +[NSMutableArray array];
  if (gCopy)
  {
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v14 = [&off_1002867F8 countByEnumeratingWithState:&v179 objects:v198 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v180;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v180 != v16)
          {
            objc_enumerationMutation(&off_1002867F8);
          }

          v18 = *(*(&v179 + 1) + 8 * i);
          if ([v18 unsignedIntValue] >= wifi_channel_lower && objc_msgSend(v18, "unsignedIntValue") <= wifi_channel_upper)
          {
            [v13 addObject:v18];
          }
        }

        v15 = [&off_1002867F8 countByEnumeratingWithState:&v179 objects:v198 count:16];
      }

      while (v15);
    }

    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    v19 = [&off_100286810 countByEnumeratingWithState:&v175 objects:v197 count:16];
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      v22 = *v176;
      do
      {
        v23 = 0;
        v24 = v20;
        do
        {
          if (*v176 != v22)
          {
            objc_enumerationMutation(&off_100286810);
          }

          v25 = [v13 containsObject:*(*(&v175 + 1) + 8 * v23)];
          v26 = 1 << v24;
          if (!v25)
          {
            LOWORD(v26) = 0;
          }

          v21 |= v26;
          ++v24;
          v23 = v23 + 1;
        }

        while (v19 != v23);
        v20 += v19;
        v19 = [&off_100286810 countByEnumeratingWithState:&v175 objects:v197 count:16];
      }

      while (v19);
      v27 = 0;
      v28 = 0;
      enable6GCopy = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = v21 & 0xFFFE;
      goto LABEL_105;
    }

    v27 = 0;
    v28 = 0;
    enable6GCopy = 0;
    v29 = 0;
    goto LABEL_80;
  }

  if (enable5GCopy)
  {
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v34 = [&off_100286750 countByEnumeratingWithState:&v171 objects:v196 count:16];
    if (v34)
    {
      v35 = v34;
      v123 = *v172;
      do
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v172 != v123)
          {
            objc_enumerationMutation(&off_100286750);
          }

          v37 = *(*(&v171 + 1) + 8 * j);
          v167 = 0u;
          v168 = 0u;
          v169 = 0u;
          v170 = 0u;
          v38 = [v37 countByEnumeratingWithState:&v167 objects:v195 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v168;
            do
            {
              for (k = 0; k != v39; k = k + 1)
              {
                if (*v168 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = *(*(&v167 + 1) + 8 * k);
                if ([v42 unsignedIntValue] >= wifi_channel_lower && objc_msgSend(v42, "unsignedIntValue") <= wifi_channel_upper)
                {
                  [v13 addObject:v42];
                }
              }

              v39 = [v37 countByEnumeratingWithState:&v167 objects:v195 count:16];
            }

            while (v39);
          }
        }

        v35 = [&off_100286750 countByEnumeratingWithState:&v171 objects:v196 count:16];
      }

      while (v35);
    }

    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v43 = [&off_100286828 countByEnumeratingWithState:&v163 objects:v194 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = 0;
      v46 = 0;
      v47 = *v164;
      do
      {
        v48 = 0;
        v49 = v45;
        do
        {
          if (*v164 != v47)
          {
            objc_enumerationMutation(&off_100286828);
          }

          v50 = [v13 containsObject:*(*(&v163 + 1) + 8 * v48)];
          v51 = 1 << v49;
          if (!v50)
          {
            LOWORD(v51) = 0;
          }

          v46 |= v51;
          ++v49;
          v48 = v48 + 1;
        }

        while (v44 != v48);
        v45 += v44;
        v44 = [&off_100286828 countByEnumeratingWithState:&v163 objects:v194 count:16];
      }

      while (v44);
      v32 = v46;
    }

    else
    {
      v32 = 0;
    }

    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v70 = [&off_100286840 countByEnumeratingWithState:&v159 objects:v193 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = 0;
      v73 = 0;
      v74 = *v160;
      do
      {
        v75 = 0;
        v76 = v72;
        do
        {
          if (*v160 != v74)
          {
            objc_enumerationMutation(&off_100286840);
          }

          v77 = [v13 containsObject:*(*(&v159 + 1) + 8 * v75)];
          v78 = 1 << v76;
          if (!v77)
          {
            LOWORD(v78) = 0;
          }

          v73 |= v78;
          ++v76;
          v75 = v75 + 1;
        }

        while (v71 != v75);
        v72 += v71;
        v71 = [&off_100286840 countByEnumeratingWithState:&v159 objects:v193 count:16];
      }

      while (v71);
      v31 = v73;
    }

    else
    {
      v31 = 0;
    }

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v19 = [&off_100286858 countByEnumeratingWithState:&v155 objects:v192 count:16];
    if (!v19)
    {
      v27 = 0;
      v28 = 0;
      enable6GCopy = 0;
      v29 = 0;
      v30 = 0;
      goto LABEL_104;
    }

    v126 = v32;
    v79 = 0;
    v80 = 0;
    v81 = *v156;
    do
    {
      v82 = 0;
      v83 = v79;
      do
      {
        if (*v156 != v81)
        {
          objc_enumerationMutation(&off_100286858);
        }

        v84 = [v13 containsObject:*(*(&v155 + 1) + 8 * v82)];
        v85 = 1 << v83;
        if (!v84)
        {
          LOWORD(v85) = 0;
        }

        v80 |= v85;
        ++v83;
        v82 = v82 + 1;
      }

      while (v19 != v82);
      v79 += v19;
      v19 = [&off_100286858 countByEnumeratingWithState:&v155 objects:v192 count:16];
    }

    while (v19);
    v27 = 0;
    v28 = 0;
    enable6GCopy = 0;
    v29 = 0;
    v33 = 0;
    v30 = v80;
    v32 = v126;
  }

  else
  {
    if (!enable6GCopy)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v19 = 0;
LABEL_80:
      v30 = 0;
      v31 = 0;
      v32 = 0;
LABEL_104:
      v33 = 0;
      goto LABEL_105;
    }

    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v52 = [&off_1002867E0 countByEnumeratingWithState:&v151 objects:v191 count:16];
    if (v52)
    {
      v53 = v52;
      v124 = *v152;
      do
      {
        for (m = 0; m != v53; m = m + 1)
        {
          if (*v152 != v124)
          {
            objc_enumerationMutation(&off_1002867E0);
          }

          v55 = *(*(&v151 + 1) + 8 * m);
          v147 = 0u;
          v148 = 0u;
          v149 = 0u;
          v150 = 0u;
          v56 = [v55 countByEnumeratingWithState:&v147 objects:v190 count:16];
          if (v56)
          {
            v57 = v56;
            v58 = *v148;
            do
            {
              for (n = 0; n != v57; n = n + 1)
              {
                if (*v148 != v58)
                {
                  objc_enumerationMutation(v55);
                }

                v60 = *(*(&v147 + 1) + 8 * n);
                if ([v60 unsignedIntValue] >= wifi_channel_lower && objc_msgSend(v60, "unsignedIntValue") <= wifi_channel_upper)
                {
                  [v13 addObject:v60];
                }
              }

              v57 = [v55 countByEnumeratingWithState:&v147 objects:v190 count:16];
            }

            while (v57);
          }
        }

        v53 = [&off_1002867E0 countByEnumeratingWithState:&v151 objects:v191 count:16];
      }

      while (v53);
    }

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v61 = [&off_100286870 countByEnumeratingWithState:&v143 objects:v189 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = 0;
      v64 = 0;
      v65 = *v144;
      do
      {
        v66 = 0;
        v67 = v63;
        do
        {
          if (*v144 != v65)
          {
            objc_enumerationMutation(&off_100286870);
          }

          v68 = [v13 containsObject:*(*(&v143 + 1) + 8 * v66)];
          v69 = 1 << v67;
          if (!v68)
          {
            LOWORD(v69) = 0;
          }

          v64 |= v69;
          ++v67;
          v66 = v66 + 1;
        }

        while (v62 != v66);
        v63 += v62;
        v62 = [&off_100286870 countByEnumeratingWithState:&v143 objects:v189 count:16];
      }

      while (v62);
      v125 = v64;
    }

    else
    {
      v125 = 0;
    }

    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v87 = [&off_100286888 countByEnumeratingWithState:&v139 objects:v188 count:16];
    if (v87)
    {
      v88 = v87;
      v89 = 0;
      v90 = 0;
      v91 = *v140;
      do
      {
        v92 = 0;
        v93 = v89;
        do
        {
          if (*v140 != v91)
          {
            objc_enumerationMutation(&off_100286888);
          }

          v94 = [v13 containsObject:*(*(&v139 + 1) + 8 * v92)];
          v95 = 1 << v93;
          if (!v94)
          {
            LOWORD(v95) = 0;
          }

          v90 |= v95;
          ++v93;
          v92 = v92 + 1;
        }

        while (v88 != v92);
        v89 += v88;
        v88 = [&off_100286888 countByEnumeratingWithState:&v139 objects:v188 count:16];
      }

      while (v88);
      v96 = v90;
    }

    else
    {
      v96 = 0;
    }

    v121 = v96;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    enable6GCopy = [&off_1002868A0 countByEnumeratingWithState:&v135 objects:v187 count:16];
    if (enable6GCopy)
    {
      v97 = 0;
      v98 = 0;
      v99 = *v136;
      do
      {
        v100 = 0;
        v101 = v97;
        do
        {
          if (*v136 != v99)
          {
            objc_enumerationMutation(&off_1002868A0);
          }

          v102 = [v13 containsObject:*(*(&v135 + 1) + 8 * v100)];
          v103 = 1 << v101;
          if (!v102)
          {
            LOWORD(v103) = 0;
          }

          v98 |= v103;
          ++v101;
          v100 = v100 + 1;
        }

        while (enable6GCopy != v100);
        v97 += enable6GCopy;
        enable6GCopy = [&off_1002868A0 countByEnumeratingWithState:&v135 objects:v187 count:16];
      }

      while (enable6GCopy);
      enable6GCopy = v98;
    }

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v104 = [&off_1002868B8 countByEnumeratingWithState:&v131 objects:v186 count:16];
    if (v104)
    {
      v105 = v104;
      v106 = 0;
      v107 = 0;
      v108 = *v132;
      do
      {
        v109 = 0;
        v110 = v106;
        do
        {
          if (*v132 != v108)
          {
            objc_enumerationMutation(&off_1002868B8);
          }

          v111 = [v13 containsObject:*(*(&v131 + 1) + 8 * v109)];
          v112 = 1 << v110;
          if (!v111)
          {
            LOWORD(v112) = 0;
          }

          v107 |= v112;
          ++v110;
          v109 = v109 + 1;
        }

        while (v105 != v109);
        v106 += v105;
        v105 = [&off_1002868B8 countByEnumeratingWithState:&v131 objects:v186 count:16];
      }

      while (v105);
      v28 = v107;
    }

    else
    {
      v28 = 0;
    }

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v32 = [&off_1002868D0 countByEnumeratingWithState:&v127 objects:v185 count:16];
    if (v32)
    {
      v120 = enable6GCopy;
      v113 = 0;
      v114 = 0;
      v115 = *v128;
      do
      {
        v116 = 0;
        v117 = v113;
        do
        {
          if (*v128 != v115)
          {
            objc_enumerationMutation(&off_1002868D0);
          }

          v118 = [v13 containsObject:*(*(&v127 + 1) + 8 * v116)];
          v119 = 1 << v117;
          if (!v118)
          {
            LOWORD(v119) = 0;
          }

          v114 |= v119;
          ++v117;
          v116 = v116 + 1;
        }

        while (v32 != v116);
        v113 += v32;
        v32 = [&off_1002868D0 countByEnumeratingWithState:&v127 objects:v185 count:16];
      }

      while (v32);
      v30 = 0;
      v31 = 0;
      v33 = 0;
      v27 = v114;
      v19 = v125;
      enable6GCopy = v120;
      v29 = v121;
    }

    else
    {
      v27 = 0;
      v30 = 0;
      v31 = 0;
      v33 = 0;
      v19 = v125;
      v29 = v121;
    }
  }

LABEL_105:
  v183[0] = @"MWS_CONDITION_ID_Value";
  v184[0] = [NSNumber numberWithInt:v122];
  v183[1] = @"MWS2GBITMAPWiFiEnh";
  v184[1] = [NSNumber numberWithInt:v33];
  v183[2] = @"MWS5GBITMAPLOWWiFiEnh";
  v184[2] = [NSNumber numberWithInt:v32];
  v183[3] = @"MWS5GBITMAPMIDWiFiEnh";
  v184[3] = [NSNumber numberWithInt:v31];
  v183[4] = @"MWS5GBITMAPHIWiFiEnh";
  v184[4] = [NSNumber numberWithInt:v30];
  v183[5] = @"MWSU5LowBITMAPWiFiEnh";
  v184[5] = [NSNumber numberWithInt:v19];
  v183[6] = @"MWSU5HighBITMAPWiFiEnh";
  v184[6] = [NSNumber numberWithInt:v29];
  v183[7] = @"MWSU6BITMAPWiFiEnh";
  v184[7] = [NSNumber numberWithInt:enable6GCopy];
  v183[8] = @"MWSU7BITMAPWiFiEnh";
  v184[8] = [NSNumber numberWithInt:v28];
  v183[9] = @"MWSU8BITMAPWiFiEnh";
  v184[9] = [NSNumber numberWithInt:v27];
  return [NSDictionary dictionaryWithObjects:v184 forKeys:v183 count:10];
}

- (void)setChannelConfigurationForConditionId:(unsigned int)id enable2G:(BOOL)g enable5G:(BOOL)enable5G enable6G:(BOOL)enable6G wifi_channel_lower:(unsigned int)wifi_channel_lower wifi_channel_upper:(unsigned int)wifi_channel_upper
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F8EAC;
  block[3] = &unk_1002421D8;
  block[4] = self;
  gCopy = g;
  enable5GCopy = enable5G;
  enable6GCopy = enable6G;
  idCopy = id;
  wifi_channel_lowerCopy = wifi_channel_lower;
  wifi_channel_upperCopy = wifi_channel_upper;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setAggregatedConditionIdConfig:(id)config
{
  configCopy = config;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F8FB8;
  v6[3] = &unk_10023DC80;
  v6[4] = config;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsToEnablerFemModeWiFiEnh:(BOOL)enh enable5G:(BOOL)g enable6G:(BOOL)enable6G
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F92F8;
  v5[3] = &unk_100242200;
  enhCopy = enh;
  gCopy = g;
  enable6GCopy = enable6G;
  v5[4] = self;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)setChannelsToEnableAssocProtectionModeWiFiEnh
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F986C;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setMaxDurationForCellularScanProtection:(id)protection
{
  protectionCopy = protection;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F9DDC;
  v6[3] = &unk_10023DC80;
  v6[4] = protection;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsForTimeSharingMode:(id)mode
{
  modeCopy = mode;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F9ED0;
  v6[3] = &unk_10023DC80;
  v6[4] = mode;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setRxProtectMode:(id)mode
{
  if (mode)
  {
    modeCopy = mode;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FA02C;
    v6[3] = &unk_10023DC80;
    v6[4] = mode;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setRxProtectAutoModeParamWeight:(id)weight andThresh:(id)thresh
{
  if (weight)
  {
    if (thresh)
    {
      weightCopy = weight;
      threshCopy = thresh;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000FA140;
      block[3] = &unk_10023E058;
      block[4] = weight;
      block[5] = thresh;
      block[6] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)setTxOnIndication:(id)indication
{
  if (indication)
  {
    indicationCopy = indication;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FA29C;
    v6[3] = &unk_10023DC80;
    v6[4] = indication;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setScanJoinRxProtectDuration:(id)duration
{
  durationCopy = duration;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000FA390;
  v6[3] = &unk_10023DC80;
  v6[4] = duration;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setCellularFrequencyConfig:(id)config
{
  if (config)
  {
    configCopy = config;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FA4A4;
    v6[3] = &unk_10023DC80;
    v6[4] = config;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setEnableEnvelopeIndicationFor2G:(id)g
{
  if (g)
  {
    gCopy = g;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FA5A0;
    v6[3] = &unk_10023DC80;
    v6[4] = g;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setEnvelopeIndicationTimerFor2G:(id)g
{
  if (g)
  {
    gCopy = g;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FA69C;
    v6[3] = &unk_10023DC80;
    v6[4] = g;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setEnableAgcCoexMode:(id)mode
{
  modeCopy = mode;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000FA790;
  v6[3] = &unk_10023DC80;
  v6[4] = mode;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setLAACoexConfigEnableTxInd
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FA870;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setLAACoexConfigWci2TxDurationThreshold:(id)threshold
{
  if (threshold)
  {
    thresholdCopy = threshold;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FA98C;
    v6[3] = &unk_10023DC80;
    v6[4] = threshold;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setLAACoexConfigScanThrottleMask:(id)mask
{
  if (mask)
  {
    maskCopy = mask;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FAA88;
    v6[3] = &unk_10023DC80;
    v6[4] = mask;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setLAACoexConfigWifiDwellTime:(id)time
{
  if (time)
  {
    timeCopy = time;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FAB84;
    v6[3] = &unk_10023DC80;
    v6[4] = time;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setAccessoryCoexConfigEnable:(BOOL)enable AccessoryType:(unsigned __int8)type CellRAT:(unsigned __int8)t CellBand:(unsigned __int16)band
{
  bandCopy = band;
  tCopy = t;
  typeCopy = type;
  enableCopy = enable;
  [WCM_Logging logLevel:2 message:@"WiFiS: Setting accessory coex, enable(%u), accType(%u), CellRAT(%u), CellBand(%u)", enable, type, t, band];
  v11[0] = @"APPLE80211KEY_MWS_ACCESSORY_COEX_ENABLE";
  v12[0] = [NSNumber numberWithInt:enableCopy];
  v11[1] = @"APPLE80211KEY_MWS_ACCESSORY_COEX_ACCESSORY_TYPE";
  v12[1] = [NSNumber numberWithUnsignedChar:typeCopy];
  v11[2] = @"APPLE80211KEY_MWS_ACCESSORY_COEX_CELL_RAT";
  v12[2] = [NSNumber numberWithUnsignedChar:tCopy];
  v11[3] = @"APPLE80211KEY_MWS_ACCESSORY_COEX_CELL_BAND";
  v12[3] = [NSNumber numberWithUnsignedShort:bandCopy];
  [(WCM_WiFiServiceIOS *)self sendMessage:@"APPLE80211KEY_MWS_ACCESSORY_COEX_CONFIG" withValue:[NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4]];
}

- (void)setHPovrLEscanGrantDuration:(unsigned int)duration
{
  v3 = *&duration;
  [WCM_Logging logLevel:2 message:@"WiFiS: Setting HPovrLEscanGrantDuration to %lu", *&duration];
  v5 = [NSNumber numberWithUnsignedInt:v3];

  [(WCM_WiFiServiceIOS *)self sendMessage:@"MWS_LE_NORM_SCAN_GRANT_DUR" withValue:v5];
}

- (void)setCriticalWiFiTraffic:(BOOL)traffic duration:(unsigned int)duration criticalityPercentage:(unsigned __int16)percentage forProcessID:(int)d
{
  percentageCopy = percentage;
  v8 = *&duration;
  trafficCopy = traffic;
  v11 = "off";
  if (traffic)
  {
    v11 = "on";
  }

  [WCM_Logging logLevel:4 message:@"WiFiS: Setting critical wifi traffic to %s for %llu", v11, *&d];
  v13[0] = @"APPLE80211KEY_MWS_WIFI_CRITICAL";
  v14[0] = [NSNumber numberWithInt:trafficCopy];
  v13[1] = @"APPLE80211KEY_MWS_WIFI_CRITICAL_TYPE";
  if (d == 31)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v14[1] = [NSNumber numberWithInt:v12];
  v13[2] = @"APPLE80211KEY_MWS_WIFI_CRITICAL_DURATION";
  v14[2] = [NSNumber numberWithUnsignedInt:v8];
  v13[3] = @"APPLE80211KEY_MWS_WIFI_CRITICAL_RESERVED";
  v14[3] = [NSNumber numberWithUnsignedShort:percentageCopy];
  [(WCM_WiFiServiceIOS *)self sendMessage:@"APPLE80211KEY_MWS_WIFI_CRITICAL_PARAM" withValue:[NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4]];
}

- (void)setWiFiBTULOFDMAstate:(BOOL)astate
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FAF64;
  v3[3] = &unk_10023E008;
  astateCopy = astate;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)setWiFiRCU1ULOFDMAstate:(BOOL)astate
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FB05C;
  v3[3] = &unk_10023E008;
  astateCopy = astate;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)setWiFiRCU2ULOFDMAstate:(BOOL)astate
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FB154;
  v3[3] = &unk_10023E008;
  astateCopy = astate;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)setWiFiRCU1ModeChanged:(BOOL)changed andChannelChanged:(BOOL)channelChanged andMode:(id)mode andChannel:(id)channel
{
  if (mode)
  {
    if (channel)
    {
      modeCopy = mode;
      channelCopy = channel;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000FB294;
      v13[3] = &unk_100242228;
      changedCopy = changed;
      channelChangedCopy = channelChanged;
      v13[4] = mode;
      v13[5] = channel;
      v13[6] = self;
      dispatch_async(&_dispatch_main_q, v13);
    }
  }
}

- (void)setWiFiBTLeConnEnable:(BOOL)enable andPeakOutageMs:(unsigned int)ms andDurationMs:(unsigned int)durationMs andDutyCycle:(unsigned int)cycle andReason:(unsigned int)reason
{
  v7 = *&reason;
  v8 = *&cycle;
  v9 = *&durationMs;
  v10 = *&ms;
  enableCopy = enable;
  [WCM_Logging logLevel:2 message:@"WiFiS: Update WiFi LEConn params"];
  v13[0] = @"MWS_LE_SCAN_EN";
  v14[0] = [NSNumber numberWithInt:enableCopy];
  v13[1] = @"MWS_LE_SCAN_PEAK";
  v14[1] = [NSNumber numberWithUnsignedInt:v10];
  v13[2] = @"MWS_LE_SCAN_DUR";
  v14[2] = [NSNumber numberWithUnsignedInt:v9];
  v13[3] = @"MWS_LE_SCAN_DC";
  v14[3] = [NSNumber numberWithUnsignedInt:v8];
  v13[4] = @"MWS_LE_SCAN_REASON";
  v14[4] = [NSNumber numberWithUnsignedInt:v7];
  [(WCM_WiFiServiceIOS *)self sendMessage:@"MWS_LE_SCAN_PARAM_INFO" withValue:[NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:5]];
}

- (void)setWiFiRCU2CoexMode:(id)mode
{
  if (mode)
  {
    modeCopy = mode;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FB578;
    v6[3] = &unk_10023DC80;
    v6[4] = mode;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setWiFiRCU2PMProtectionMode:(id)mode
{
  if (mode)
  {
    modeCopy = mode;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FB674;
    v6[3] = &unk_10023DC80;
    v6[4] = mode;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setWiFiRCU2TimingArray:(id)array
{
  if (array)
  {
    arrayCopy = array;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FB770;
    v6[3] = &unk_10023DC80;
    v6[4] = array;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setWifiBTeSCOStatus:(int)status
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FB898;
  v3[3] = &unk_10023DBA0;
  statusCopy = status;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)setWifiBTeSCOHidStatus:(int)status andUseCase:(int)case
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000FB98C;
  v4[3] = &unk_10023DD88;
  statusCopy = status;
  caseCopy = case;
  v4[4] = self;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)setWifiBTA2DPStatus:(int)status
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FBADC;
  v3[3] = &unk_10023DBA0;
  statusCopy = status;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)setWifiBTA2DPLLAStatus:(int)status
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FBBD0;
  v3[3] = &unk_10023DBA0;
  statusCopy = status;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)setBTConnectionReport:(id)report
{
  if (report)
  {
    reportCopy = report;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FBCDC;
    v6[3] = &unk_10023DC80;
    v6[4] = report;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setRCU2CoexParams:(id)params
{
  if (params)
  {
    paramsCopy = params;
    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000FBF0C;
      v6[3] = &unk_10023DC80;
      v6[4] = params;
      v6[5] = self;
      dispatch_async(&_dispatch_main_q, v6);
    }
  }
}

- (void)enableLQMUpdate
{
  [WCM_Logging logLevel:26 message:@"WiFiS: enableLQMUpdate. %d", self->super.m_lqmRefCount];
  if (self->super.m_lqmRefCount)
  {
    [WCM_Logging logLevel:26 message:@"WiFiS: not registering to WiFi manager because LQM is already registered.\n"];
    ++self->super.m_lqmRefCount;
  }

  else
  {
    if (self->mWifiDevice)
    {
      WiFiDeviceClientRegisterLQMCallback();
      WiFiDeviceClientRegisterWeightAvgLQMCallback();
      self->super.m_lqmRefCount = 1;
      [WCM_Logging logLevel:26 message:@"WiFiS: Client: WiFiDeviceClientRegisterLQMCallback.ref count %d", 1];
      mWifiDevice = self->mWifiDevice;
    }

    else
    {
      mWifiDevice = 0;
    }

    v4 = "YES";
    if (!mWifiDevice)
    {
      v4 = "NO";
    }

    [WCM_Logging logLevel:19 message:@"WiFiS: Register Wifi LQM. result=%s mWiFiDevice=%p context=%p", v4, mWifiDevice, self];
  }
}

- (void)disableLQMUpdate
{
  [WCM_Logging logLevel:26 message:@"WiFiS: disableLQMUpdate. %d", self->super.m_lqmRefCount];
  m_lqmRefCount = self->super.m_lqmRefCount;
  v4 = __OFSUB__(m_lqmRefCount--, 1);
  self->super.m_lqmRefCount = m_lqmRefCount;
  if ((m_lqmRefCount < 0) ^ v4 | (m_lqmRefCount == 0))
  {
    if (self->mWifiDevice)
    {
      WiFiDeviceClientRegisterLQMCallback();
      WiFiDeviceClientRegisterWeightAvgLQMCallback();
      self->super.m_lqmRefCount = 0;
      [WCM_Logging logLevel:26 message:@"WiFiS: Client: WiFiDeviceClientRegisterLQMCallback.ref count %d", 0];
      mWifiDevice = self->mWifiDevice;
    }

    else
    {
      mWifiDevice = 0;
    }

    v6 = "YES";
    if (!mWifiDevice)
    {
      v6 = "NO";
    }

    [WCM_Logging logLevel:19 message:@"WiFiS: Unregister Wifi LQM. result=%s mWiFiDevice=%p context=%p", v6, mWifiDevice, self];
  }

  else
  {

    [WCM_Logging logLevel:26 message:@"WiFiS: Not de-registering LQM from WiFi Manager becuase reference count is non zero"];
  }
}

- (void)setWiFiDevice:(__WiFiDeviceClient *)device
{
  if (device)
  {
    if (self->mWifiDevice)
    {
      [WCM_Logging logLevel:2 message:@"WiFiS: unregister device callbacks and release the existing device"];
      WiFiDeviceClientRegisterDeviceAvailableCallback();
      WiFiDeviceClientRegisterExtendedLinkCallback();
      WiFiDeviceClientRegisterHostApStateChangedCallback();
      WiFiDeviceClientRegisterLQMCallback();
      WiFiDeviceClientRegisterCatsUpdateCallback();
      WiFiDeviceClientRegisterBTScanIntervalRelaxCallback();
      WiFiDeviceClientRegisterScanUpdateCallback();
      WiFiDeviceClientRegisterResumeScanCallback();
      WiFiDeviceClientRegisterBgScanSuspendResumeCallback();
      WiFiDeviceClientRegisterWeightAvgLQMCallback();
      WiFiDeviceClientRegisterBTCoexStatsCallback();
      WiFiDeviceClientRegisterUCMEventCallback();
      CFRelease(self->mWifiDevice);
      self->mWifiDevice = 0;
    }

    self->mWifiDevice = CFRetain(device);
    Power = WiFiDeviceClientGetPower();
    self->mWifiDevicePowerState = Power != 0;
    v7 = "off";
    if (Power)
    {
      v7 = "on";
    }

    [WCM_Logging logLevel:5 message:@"WiFiS: device power %s", v7];
    [(WCM_WiFiDelegate *)self->super.mDelegate updatePowerState:self->mWifiDevicePowerState];
    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
      [(WCM_WiFiDelegate *)self->super.mDelegate updateTxPowerCapForHead:14 forBody:14];
    }

    if (self->mWifiDevicePowerState)
    {
      [(WCM_WiFiServiceIOS *)self checkWiFiState];
    }

    [WCM_Logging logLevel:2 message:@"WiFiS: register device callbacks"];
    WiFiDeviceClientRegisterDeviceAvailableCallback();
    WiFiDeviceClientRegisterExtendedLinkCallback();
    WiFiDeviceClientRegisterHostApStateChangedCallback();
    WiFiDeviceClientRegisterBssidChangeCallback();
    WiFiDeviceClientRegisterCatsUpdateCallback();
    WiFiDeviceClientRegisterBTScanIntervalRelaxCallback();
    WiFiDeviceClientRegisterScanUpdateCallback();
    WiFiDeviceClientRegisterResumeScanCallback();
    WiFiDeviceClientRegisterBgScanSuspendResumeCallback();
    WiFiDeviceClientRegisterLQMCallback();
    WiFiDeviceClientRegisterWeightAvgLQMCallback();
    ++self->super.m_lqmRefCount;
    if ([+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      if ([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
      {
        self->super.m_lqmRefCount = 0;
        [(WCM_WiFiServiceIOS *)self enableLQMUpdate];
      }

      if ([+[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton](WRM_IDSLinkEvalManager "WRM_IDSLinkEvalManagerSingleton")])
      {
        [(WCM_WiFiServiceIOS *)self enableLQMUpdate];
      }

      if ([+[WRM_BWEvalManager WRM_BWEvalManagerSingleton](WRM_BWEvalManager "WRM_BWEvalManagerSingleton")])
      {
        [(WCM_WiFiServiceIOS *)self enableLQMUpdate];
      }

      if ([+[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton](WRM_FT_HandoverManager "WRM:"needWiFiLQM" FT:?HandoverManagerSingleton")])
      {
        [(WCM_WiFiServiceIOS *)self enableLQMUpdate];
      }
    }

    WiFiDeviceClientRegisterBTCoexStatsCallback();

    WiFiDeviceClientRegisterUCMEventCallback();
  }

  else
  {

    [WCM_Logging logLevel:2 message:@"WiFiS: setWiFiDevice: device is NULL"];
  }
}

- (void)processWifiDeviceExtendedLinkEvent:(__CFDictionary *)event
{
  value_7 = 0;
  if (event)
  {
    v5 = CFDictionaryGetValue(event, @"LINK_CHANGED_IS_LINKDOWN");
    CFNumberGetValue(v5, kCFNumberCharType, &value_7);
    if (value_7)
    {
      LOBYTE(value) = 0;
      LODWORD(keys[0]) = 0;
      LODWORD(values) = 0;
      v6 = CFDictionaryGetValue(event, @"LINKDOWN_IS_INVOL");
      CFNumberGetValue(v6, kCFNumberCharType, &value);
      v7 = CFDictionaryGetValue(event, @"LINKDOWN_REASON_CODE");
      CFNumberGetValue(v7, kCFNumberSInt32Type, keys);
      v8 = CFDictionaryGetValue(event, @"LINKDOWN_SUBREASON_CODE");
      CFNumberGetValue(v8, kCFNumberSInt32Type, &values);
      [WCM_Logging logLevel:5 message:@"WiFiS: WiFi linkdown: Invol=%d, Reason=%d, Subreason=%d", value, LODWORD(keys[0]), values];
      mDelegate = self->super.mDelegate;
      if (mDelegate)
      {
        v10 = LODWORD(keys[0]) == 5;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        [(WCM_WiFiDelegate *)mDelegate handleWiFiLinkDown:?];
      }
    }

    else
    {
      [(WCM_WiFiServiceIOS *)self checkWiFiState];
    }
  }

  if ([+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    if (value_7)
    {
      [WCM_Logging logLevel:18 message:@"WiFiS: send WiFi linkdown status to iRAT managers"];
      v11 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v11, "kWRM_WiFi_LINK_STATUS", value_7);
      *keys = *off_100242280;
      values = xpc_uint64_create(0x67uLL);
      v28 = v11;
      v12 = xpc_dictionary_create(keys, &values, 2uLL);
      [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
      [+[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton](WRM_IDSLinkEvalManager "WRM_IDSLinkEvalManagerSingleton")];
      [+[WRM_BWEvalManager WRM_BWEvalManagerSingleton](WRM_BWEvalManager "WRM_BWEvalManagerSingleton")];
      [+[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton](WRM_FT_HandoverManager "WRM:"updateControllerState:" FT:v12HandoverManagerSingleton")];
      self->mWiFiLinkUP = 0;
      xpc_release(values);
      xpc_release(v12);
      xpc_release(v11);
      return;
    }

    value = 0;
    if (self->mWifiDevice)
    {
      v13 = WiFiDeviceClientCopyCurrentNetwork();
      if (v13)
      {
        v14 = v13;
        NetworkChannel = WiFiGetNetworkChannel();
        CFNumberGetValue(NetworkChannel, kCFNumberIntType, &value);
        if (WiFiNetworkGetProperty() || WiFiNetworkGetProperty() || WiFiNetworkGetProperty())
        {
          if (WiFiNetworkGetProperty())
          {
            if (WiFiNetworkGetProperty())
            {
              CFNumberGetValue(NetworkChannel, kCFNumberIntType, &value);
            }

            Property = WiFiNetworkGetProperty();
            if (Property)
            {
              v17 = Property;
              mCurrentSSID = self->mCurrentSSID;
              if (mCurrentSSID)
              {
              }

              self->mCurrentSSID = [v17 copy];
              goto LABEL_25;
            }

            [WCM_Logging logLevel:0 message:@"WiFiS: WiFi network has invalid SSID"];
          }

LABEL_37:
          CFRelease(v14);
          return;
        }

        v17 = 0;
LABEL_25:
        valuePtr = 0xFFFFFDA8FFFFFDA8;
        v19 = WiFiNetworkGetProperty();
        if (v19)
        {
          CFNumberGetValue(v19, kCFNumberIntType, &valuePtr + 4);
        }

        v20 = WiFiNetworkGetProperty();
        if (v20)
        {
          CFNumberGetValue(v20, kCFNumberIntType, &valuePtr);
        }

        if ((valuePtr & 0x8000000000000000) == 0)
        {
          valuePtr = 0xFFFFFDA8FFFFFDA8;
        }

        self->mWiFiLinkUP = 1;
        [WCM_Logging logLevel:3 message:@"WiFiS: send WiFi linkup status to Handover Manager"];
        v21 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_int64(v21, "kWRM_WiFi_LINK_STATUS", 0);
        xpc_dictionary_set_int64(v21, "kWRM_CONNECTED_CHANNEL_ID", value);
        xpc_dictionary_set_int64(v21, "kWRMM_WiFi_SNR", valuePtr);
        xpc_dictionary_set_int64(v21, "kWRMM_WiFi_RSSI", SHIDWORD(valuePtr));
        if (v17)
        {
          xpc_dictionary_set_string(v21, "kWRM_CONNECTED_AP_SSID", [v17 UTF8String]);
        }

        v22 = WiFiNetworkGetProperty();
        if (v22)
        {
          xpc_dictionary_set_string(v21, "kWRM_CONNECTED_AP_BSSID", [v22 UTF8String]);
        }

        *keys = *off_100242280;
        values = xpc_uint64_create(0x67uLL);
        v28 = v21;
        v23 = xpc_dictionary_create(keys, &values, 2uLL);
        [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
        [+[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton](WRM_IDSLinkEvalManager "WRM_IDSLinkEvalManagerSingleton")];
        xpc_release(values);
        xpc_release(v23);
        xpc_release(v21);
        goto LABEL_37;
      }
    }
  }
}

- (void)notifyWiFiStateChange:(BOOL)change
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, "kWRM_is5G", change);
  *keys = *off_100242280;
  object[0] = xpc_uint64_create(0x6DuLL);
  object[1] = v4;
  v5 = xpc_dictionary_create(keys, object, 2uLL);
  [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  xpc_release(object[0]);
  xpc_release(v5);
  xpc_release(v4);
}

- (void)checkWiFiState
{
  valuePtr = 0;
  if (self->mWifiDevice)
  {
    v3 = WiFiDeviceClientCopyCurrentNetwork();
    if (v3)
    {
      v4 = v3;
      Channel = WiFiNetworkGetChannel();
      if (!Channel || ((CFNumberGetValue(Channel, kCFNumberIntType, &valuePtr), (OperatingBand = WiFiNetworkGetOperatingBand()) != 0) ? (v7 = valuePtr == 0) : (v7 = 1), v7))
      {
        ChannelWidthInMHz = 0;
        v9 = 0;
      }

      else
      {
        v11 = OperatingBand;
        ChannelWidthInMHz = WiFiNetworkGetChannelWidthInMHz();
        if (v11 == 2)
        {
          v12 = 3;
        }

        else
        {
          v12 = 4;
        }

        if (v11 == 1)
        {
          v12 = 2;
        }

        self->mWifiBand = v12;
        if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
        {
          v13 = sub_10008F0C8(valuePtr, ChannelWidthInMHz, self->mWifiBand);
        }

        else
        {
          v13 = sub_10008F030(valuePtr);
        }

        v9 = v13;
        self->mBandwidthMHz = ChannelWidthInMHz;
      }

      if (self->super.mDelegate)
      {
        [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
        [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
        [(WCM_WiFiDelegate *)self->super.mDelegate updateWiFiState:self->mWifiBand channel:valuePtr centerFreq:v9 bandwidth:ChannelWidthInMHz hostAp:0];
      }

      CFRelease(v4);
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"WiFiS: not associated to network"];
      v10 = +[WCM_PolicyManager singleton];

      [v10 updateWiFiRadioState:1];
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WiFiS: device not attached"];
  }
}

- (void)updateHostAPState:(BOOL)state channel:(unsigned int)channel
{
  stateCopy = state;
  channelCopy = channel;
  theArray = 0;
  WiFiDeviceClientCopyHostedNetworks();
  [(WCM_WiFiService *)self updateCurrentHostAPState:stateCopy channel:channelCopy centerFreq:0 bandwidth:0 apState:1];
  [(WCM_WiFiServiceIOS *)self checkWiFiState];
}

- (void)setCatsState:(unsigned __int8)state bitmap:(unint64_t)bitmap
{
  mDelegate = self->super.mDelegate;
  if (mDelegate)
  {
    [(WCM_WiFiDelegate *)mDelegate updateCatsState:state bitmap:bitmap];
  }
}

- (void)forceCopresence:(BOOL)copresence scanGrantDuration:(unsigned int)duration
{
  if (self->super.mDelegate)
  {
    if (copresence)
    {
      v5 = 64;
    }

    else
    {
      v5 = 0;
    }

    if (copresence)
    {
      durationCopy = duration;
    }

    else
    {
      durationCopy = 0;
    }

    v7 = 2;
    if (copresence)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (!copresence)
    {
      v7 = 0;
    }

    [WCM_Logging logLevel:2 message:@"Forcing Copresence=%d via priority=%d, bitmap=0x%X, and scanGrantDur=%d.", copresence, v7, v5, durationCopy];
    mDelegate = self->super.mDelegate;

    [(WCM_WiFiDelegate *)mDelegate updateCatsStateWrapper:v8 bitmap:v5 scanGrantDuration:durationCopy];
  }
}

- (void)dispatchCarplayInfotoBT:(BOOL)t reason:(int)reason
{
  if (self->mWifiDevice)
  {
    if (self->super.mDelegate)
    {
      v5 = *&reason;
      tCopy = t;
      [WCM_Logging logLevel:2 message:@"WiFiS: dispatchCarplayInfotoBT Carplay state:(%d), reason: (%d)", t, *&reason];
      mDelegate = self->super.mDelegate;

      [(WCM_WiFiDelegate *)mDelegate updateCarPlaySessionState:tCopy reason:v5];
      return;
    }

    v8 = @"WiFiS: dispatchCarplayInfotoBT failed no controller delegate";
    v9 = 2;
  }

  else
  {
    v8 = @"WiFiS: device not attached";
    v9 = 0;
  }

  [WCM_Logging logLevel:v9 message:v8];
}

- (void)dispatchContentionFreeWiFiNetworkToRC2:(unsigned int)c2 count:(unsigned int)count
{
  v4 = *&count;
  v5 = *&c2;
  if (self->mWifiDevice)
  {
    if (self->super.mDelegate)
    {
      [WCM_Logging logLevel:3 message:@"WiFiS: %s channel :(%d), count: (%d)", "[WCM_WiFiServiceIOS dispatchContentionFreeWiFiNetworkToRC2:count:]", *&c2, *&count];
      mDelegate = self->super.mDelegate;

      [(WCM_WiFiDelegate *)mDelegate updateContentionFreeWiFiInfoToRC2:v5 count:v4];
    }

    else
    {

      [WCM_Logging logLevel:3 message:@"WiFiS: dispatchContentionFreeWiFiNetworkToRC2 failed no controller delegate"];
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"WiFiS: %s device not attached", "[WCM_WiFiServiceIOS dispatchContentionFreeWiFiNetworkToRC2:count:]", *&c2, *&count];
  }
}

- (void)performScan:(id)scan
{
  if (self->mWifiDevice)
  {
    +[NSMutableArray array];
    CFRunLoopGetCurrent();
    +[NSMutableDictionary dictionary];
    v3 = WiFiDeviceClientScanAsync();
    if (CFRunLoopRunInMode(NSDefaultRunLoopMode, 120.0, 0) == kCFRunLoopRunTimedOut)
    {
      [WCM_Logging logLevel:0 message:@"%s WiFiS: Runloop timed out", "[WCM_WiFiServiceIOS performScan:]"];
    }

    if (v3)
    {
      [WCM_Logging logLevel:0 message:@"WiFiS: Async Scan returned error %d %d", v3, 0];
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"%s WiFiS: device not attached", "[WCM_WiFiServiceIOS performScan:]", v4];
  }
}

- (void)updateContentionFreeWiFiInfoToRC2:(unsigned int)c2 count:(unsigned int)count
{
  [WCM_Logging logLevel:0 message:@"WCM_WiFiService updateContentionFreeWiFiInfoToRC2 channel (%d), count (%d)", *&c2, *&count];
  self->mLeastCongestedChannel = c2;
  self->mLeastCongestedChannelCount = count;
}

- (id)getLeastCongestedWifiParam
{
  [WCM_Logging logLevel:0 message:@"WCM_WiFiService getLeastCongestedWifiParam"];
  v3 = +[NSMutableArray array];
  [v3 addObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", self->mLeastCongestedChannel)}];
  [v3 addObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", self->mLeastCongestedChannelCount)}];
  return v3;
}

- (void)setWiFiCallingState:(BOOL)state
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FDF14;
  block[3] = &unk_10023E008;
  block[4] = self;
  stateCopy = state;
  dispatch_async(&_dispatch_main_q, block);
  [WCM_Logging logLevel:19 message:@"setWiFiCallingState called, mWifiManager: %x", self->mWifiManager];
}

- (void)disableWiFi
{
  if (self->mWifiDevice)
  {
    v2 = WiFiDeviceClientCopyCurrentNetwork();
    if (v2)
    {
      v3 = v2;
      [WCM_Logging logLevel:19 message:@"DisableWiFi %@", WiFiNetworkGetSSID()];
      WiFiManagerClientTemporarilyDisableNetwork();
      CFRelease(v3);
      if (WiFiManagerClientGetDevice())
      {
        v4 = WiFiDeviceClientDisassociate();
        if (v4)
        {
          [WCM_Logging logLevel:19 message:@"WiFiDeviceClientDisassociate failed: %d", v4];
        }
      }

      return;
    }

    v5 = @"returning from disableWiFi, network is NULL";
  }

  else
  {
    v5 = @"returning from disableWiFi, mWiFiDevice is NULL";
  }

  [WCM_Logging logLevel:19 message:v5];
}

- (void)setMedtronicState:(int)state
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FE0D0;
  v3[3] = &unk_10023DBA0;
  stateCopy = state;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (BOOL)setWiFiBTCoexProfile:(id)profile atIndex:(int64_t)index
{
  v7 = [NSMutableDictionary dictionaryWithDictionary:?];
  [(NSMutableDictionary *)v7 setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:index], @"UCM_PROFILE_INDEX"];
  v8 = [(WCM_WiFiServiceIOS *)self sendMessage:&off_100272258 withValue:v7];
  if (v8)
  {
    [WCM_Logging logLevel:0 message:@"WiFiS: failed to download profile to index %d with error(%s)\n%@", index, Apple80211ErrToStr(), profile];
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"WiFiS: succeed to download profile to index %d\n%@", index, v7, v10];
  }

  return v8 == 0;
}

- (void)setWiFiBTCoexActiveProfileFor2G:(int64_t)g and5G:(int64_t)and5G
{
  v5 = g | (and5G << 16);
  [WCM_Logging logLevel:2 message:@"WiFiS: Set Active Profile index2G(%ld) and index5G(%ld)", g, and5G];
  v6 = [NSNumber numberWithUnsignedInt:v5];

  [(WCM_WiFiServiceIOS *)self sendMessage:&off_100272270 withValue:v6];
}

- (BOOL)setWiFiBTExtCoexProfile:(id)profile atIndex:(int64_t)index
{
  v7 = [NSMutableDictionary dictionaryWithDictionary:?];
  [(NSMutableDictionary *)v7 setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:index], @"UCM_EXT_PROFILE_INDEX"];
  v8 = [(WCM_WiFiServiceIOS *)self sendMessage:&off_100272288 withValue:v7];
  if (v8)
  {
    [WCM_Logging logLevel:0 message:@"WiFiS: failed to download extended profile to index %ld with error(%s)\n%@", index, Apple80211ErrToStr(), profile];
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"WiFiS: succeed to download extended profile to index %ld\n%@", index, v7, v10];
  }

  return v8 == 0;
}

- (void)setNBRanigngSessionActive:(BOOL)active
{
  activeCopy = active;
  [WCM_Logging logLevel:2 message:@"WiFiS: Set NB Ranging Active to %d", active];
  if (activeCopy)
  {
    v5 = &off_1002719B8;
  }

  else
  {
    v5 = &off_1002719A0;
  }

  [(WCM_WiFiServiceIOS *)self sendMessage:&off_1002722A0 withValue:v5];
}

- (void)setCoexParams:(const char *)params withValue:(id)value
{
  [WCM_Logging logLevel:2 message:@"%s: %s", "[WCM_WiFiServiceIOS setCoexParams:withValue:]", params];
  v7 = CFStringCreateWithCString(0, params, 0x8000100u);

  [(WCM_WiFiServiceIOS *)self sendMessage:v7 withValue:value];
}

@end