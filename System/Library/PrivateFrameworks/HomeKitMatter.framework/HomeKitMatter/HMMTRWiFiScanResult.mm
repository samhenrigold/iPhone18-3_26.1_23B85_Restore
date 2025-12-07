@interface HMMTRWiFiScanResult
- (HMMTRWiFiScanResult)initWithMTRNetworkCommissioningClusterWiFiInterfaceScanResult:(id)result;
- (HMMTRWiFiScanResult)initWithSSID:(id)d rssi:(id)rssi security:(unsigned __int8)security band:(unsigned __int8)band;
@end

@implementation HMMTRWiFiScanResult

- (HMMTRWiFiScanResult)initWithSSID:(id)d rssi:(id)rssi security:(unsigned __int8)security band:(unsigned __int8)band
{
  bandCopy = band;
  securityCopy = security;
  dCopy = d;
  rssiCopy = rssi;
  v20.receiver = self;
  v20.super_class = HMMTRWiFiScanResult;
  v13 = [(HMMTRWiFiScanResult *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_ssid, d);
    objc_storeStrong(&v14->_rssi, rssi);
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:securityCopy];
    security = v14->_security;
    v14->_security = v15;

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:bandCopy];
    band = v14->_band;
    v14->_band = v17;
  }

  return v14;
}

- (HMMTRWiFiScanResult)initWithMTRNetworkCommissioningClusterWiFiInterfaceScanResult:(id)result
{
  resultCopy = result;
  v15.receiver = self;
  v15.super_class = HMMTRWiFiScanResult;
  v5 = [(HMMTRWiFiScanResult *)&v15 init];
  if (v5)
  {
    ssid = [resultCopy ssid];
    ssid = v5->_ssid;
    v5->_ssid = ssid;

    rssi = [resultCopy rssi];
    rssi = v5->_rssi;
    v5->_rssi = rssi;

    security = [resultCopy security];
    security = v5->_security;
    v5->_security = security;

    wiFiBand = [resultCopy wiFiBand];
    band = v5->_band;
    v5->_band = wiFiBand;
  }

  return v5;
}

@end