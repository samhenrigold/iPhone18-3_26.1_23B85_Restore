@interface SiriCoreWiFiManagerClient
- (BOOL)hasAssociatedNetworkWithRSSI:(int64_t *)i andSNR:(int64_t *)r andCCA:(int64_t *)a andPhyMode:(id *)mode andChannelInfo:(id *)info isCaptive:(BOOL *)captive;
- (SiriCoreWiFiManagerClient)init;
- (__WiFiManagerClient)_primitiveWiFiManagerClient;
- (void)_setWiFiManagerClientType:(int)type;
- (void)dealloc;
@end

@implementation SiriCoreWiFiManagerClient

- (BOOL)hasAssociatedNetworkWithRSSI:(int64_t *)i andSNR:(int64_t *)r andCCA:(int64_t *)a andPhyMode:(id *)mode andChannelInfo:(id *)info isCaptive:(BOOL *)captive
{
  v49 = *MEMORY[0x277D85DE8];
  v15 = MEMORY[0x277CEF0A0];
  v16 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v42 = "[SiriCoreWiFiManagerClient hasAssociatedNetworkWithRSSI:andSNR:andCCA:andPhyMode:andChannelInfo:isCaptive:]";
    _os_log_impl(&dword_2669D1000, v16, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (i)
  {
    *i = self->_rssi;
  }

  if (r)
  {
    *r = self->_snr;
  }

  if (a)
  {
    *a = self->_cca;
  }

  if (mode)
  {
    *mode = 0;
  }

  if (info)
  {
    *info = 0;
  }

  if (captive)
  {
    *captive = 0;
  }

  [(SiriCoreWiFiManagerClient *)self _primitiveWiFiManagerClient];
  v17 = WiFiManagerClientCopyDevices();
  if (![v17 count] || (objc_msgSend(v17, "firstObject"), (v18 = WiFiDeviceClientCopyCurrentNetwork()) == 0))
  {
    v27 = 0;
    goto LABEL_57;
  }

  v19 = v18;
  IntProperty = WiFiNetworkGetIntProperty();
  self->_rssi = IntProperty;
  if (i)
  {
    *i = IntProperty;
  }

  v21 = WiFiNetworkGetIntProperty();
  self->_snr = v21;
  if (r)
  {
    *r = v21;
  }

  v22 = WiFiNetworkGetIntProperty();
  self->_cca = v22;
  if (a)
  {
    *a = v22;
  }

  if (info)
  {
    v23 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"Channel "];
    *info = v23;
    Channel = WiFiNetworkGetChannel();
    if (Channel)
    {
      objc_msgSend(v23, "appendFormat:", @"%@ ("), Channel;
      OperatingBand = WiFiNetworkGetOperatingBand();
      if (OperatingBand == 2)
      {
        v26 = @"5GHz";
      }

      else if (OperatingBand == 1)
      {
        v26 = @"2.4GHz";
      }

      else if (OperatingBand)
      {
        v40 = OperatingBand;
        v26 = @"[Unknown enum=%u]GHz";
      }

      else
      {
        v26 = @"?GHz";
      }

      [v23 appendFormat:v26, v40];
      [v23 appendFormat:@", %uMHz", WiFiNetworkGetChannelWidthInMHz()];
      [v23 appendString:@""]);
    }

    else
    {
      [v23 appendFormat:@"unknown"];
    }

    v28 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *info;
      *buf = 136315394;
      v42 = "[SiriCoreWiFiManagerClient hasAssociatedNetworkWithRSSI:andSNR:andCCA:andPhyMode:andChannelInfo:isCaptive:]";
      v43 = 2112;
      *v44 = v29;
      _os_log_impl(&dword_2669D1000, v28, OS_LOG_TYPE_DEFAULT, "%s Channel Info: %@", buf, 0x16u);
    }
  }

  if (mode)
  {
    PhyMode = WiFiNetworkGetPhyMode();
    if ((PhyMode & 0x7E) != 0)
    {
      v31 = @"802.11b";
      if ((PhyMode & 4) == 0)
      {
        v31 = @"802.11a";
      }

      if ((PhyMode & 0x48) != 0)
      {
        v31 = @"802.11g";
      }

      if ((PhyMode & 0x10) != 0)
      {
        v31 = @"802.11n";
      }

      *mode = v31;
    }

    if ((PhyMode & 0x80) != 0)
    {
      phyMode = @"802.11ac";
    }

    else
    {
      phyMode = *mode;
      if (*mode)
      {
        goto LABEL_52;
      }

      phyMode = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown=0x%04x", PhyMode];
      v33 = phyMode;
    }

    *mode = phyMode;
LABEL_52:
    v34 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v42 = "[SiriCoreWiFiManagerClient hasAssociatedNetworkWithRSSI:andSNR:andCCA:andPhyMode:andChannelInfo:isCaptive:]";
      v43 = 2112;
      *v44 = phyMode;
      _os_log_impl(&dword_2669D1000, v34, OS_LOG_TYPE_DEFAULT, "%s PhyMode: %@", buf, 0x16u);
    }
  }

  if (captive)
  {
    *captive = WiFiNetworkIsCaptive() != 0;
  }

  CFRelease(v19);
  v27 = 1;
LABEL_57:
  v35 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
  {
    rssi = self->_rssi;
    snr = self->_snr;
    cca = self->_cca;
    *buf = 136316162;
    v42 = "[SiriCoreWiFiManagerClient hasAssociatedNetworkWithRSSI:andSNR:andCCA:andPhyMode:andChannelInfo:isCaptive:]";
    v43 = 1024;
    *v44 = v27;
    *&v44[4] = 2048;
    *&v44[6] = rssi;
    v45 = 2048;
    v46 = snr;
    v47 = 2048;
    v48 = cca;
    _os_log_impl(&dword_2669D1000, v35, OS_LOG_TYPE_DEFAULT, "%s Associated: %d RSSI is %ld SNR is %ld CCA is %ld", buf, 0x30u);
  }

  return v27;
}

- (void)_setWiFiManagerClientType:(int)type
{
  v10 = *MEMORY[0x277D85DE8];
  [(SiriCoreWiFiManagerClient *)self _primitiveWiFiManagerClient];
  if (self->_type != type)
  {
    v5 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[SiriCoreWiFiManagerClient _setWiFiManagerClientType:]";
      v8 = 1024;
      typeCopy = type;
      _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", &v6, 0x12u);
    }

    self->_type = type;
    [(SiriCoreWiFiManagerClient *)self _primitiveWiFiManagerClient];
    WiFiManagerClientSetType();
  }
}

- (__WiFiManagerClient)_primitiveWiFiManagerClient
{
  result = self->_primitiveWiFiManagerClient;
  if (!result)
  {
    result = WiFiManagerClientCreate();
    self->_primitiveWiFiManagerClient = result;
  }

  return result;
}

- (void)dealloc
{
  primitiveWiFiManagerClient = self->_primitiveWiFiManagerClient;
  if (primitiveWiFiManagerClient)
  {
    CFRelease(primitiveWiFiManagerClient);
  }

  v4.receiver = self;
  v4.super_class = SiriCoreWiFiManagerClient;
  [(SiriCoreWiFiManagerClient *)&v4 dealloc];
}

- (SiriCoreWiFiManagerClient)init
{
  v3.receiver = self;
  v3.super_class = SiriCoreWiFiManagerClient;
  result = [(SiriCoreWiFiManagerClient *)&v3 init];
  if (result)
  {
    result->_type = 0;
  }

  return result;
}

@end