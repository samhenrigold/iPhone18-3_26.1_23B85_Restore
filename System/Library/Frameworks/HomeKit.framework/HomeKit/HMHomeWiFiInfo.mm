@interface HMHomeWiFiInfo
- (BOOL)isEqual:(id)equal;
- (HMHomeWiFiInfo)initWithCoder:(id)coder;
- (HMHomeWiFiInfo)initWithSSID:(id)d requiresPassword:(BOOL)password macAddress:(id)address BSSID:(id)iD displayName:(id)name security:(id)security RSSI:(id)i;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMHomeWiFiInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  sSID = [(HMHomeWiFiInfo *)self SSID];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMHomeWiFiInfo requiresPassword](self, "requiresPassword")}];
  bSSID = [(HMHomeWiFiInfo *)self BSSID];
  displayName = [(HMHomeWiFiInfo *)self displayName];
  security = [(HMHomeWiFiInfo *)self security];
  rSSI = [(HMHomeWiFiInfo *)self RSSI];
  v10 = [v3 stringWithFormat:@"[HMHomeWiFiInfo: SSID = %@, requiresPassword = %@ BSSID = %@ Display Name = %@ Security Type = %@ RSSI = %@]", sSID, v5, bSSID, displayName, security, rSSI];

  return v10;
}

- (unint64_t)hash
{
  sSID = [(HMHomeWiFiInfo *)self SSID];
  v4 = [sSID hash];

  v5 = v4 + [(HMHomeWiFiInfo *)self requiresPassword];
  bSSID = [(HMHomeWiFiInfo *)self BSSID];
  v7 = [bSSID hash];

  displayName = [(HMHomeWiFiInfo *)self displayName];
  v9 = v7 ^ [displayName hash];

  security = [(HMHomeWiFiInfo *)self security];
  v11 = v9 ^ [security hash] ^ v5;

  rSSI = [(HMHomeWiFiInfo *)self RSSI];
  v13 = [rSSI hash];

  return v11 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (-[HMHomeWiFiInfo SSID](self, "SSID"), v7 = objc_claimAutoreleasedReturnValue(), [v6 SSID], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9) && (v10 = -[HMHomeWiFiInfo requiresPassword](self, "requiresPassword"), v10 == objc_msgSend(v6, "requiresPassword")) && (-[HMHomeWiFiInfo BSSID](self, "BSSID"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "BSSID"), v12 = objc_claimAutoreleasedReturnValue(), v13 = HMFEqualObjects(), v12, v11, v13) && (-[HMHomeWiFiInfo RSSI](self, "RSSI"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "RSSI"), v15 = objc_claimAutoreleasedReturnValue(), v16 = HMFEqualObjects(), v15, v14, v16) && (-[HMHomeWiFiInfo displayName](self, "displayName"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "displayName"), v18 = objc_claimAutoreleasedReturnValue(), v19 = HMFEqualObjects(), v18, v17, v19))
  {
    security = [(HMHomeWiFiInfo *)self security];
    security2 = [v6 security];
    v22 = HMFEqualObjects();
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (HMHomeWiFiInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PWD"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MAC"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BSSID"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DISPLAY"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RSSI"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SEC"];

  v12 = -[HMHomeWiFiInfo initWithSSID:requiresPassword:macAddress:BSSID:displayName:security:RSSI:](self, "initWithSSID:requiresPassword:macAddress:BSSID:displayName:security:RSSI:", v5, [v6 BOOLValue], v7, v8, v9, v11, v10);
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sSID = [(HMHomeWiFiInfo *)self SSID];

  if (sSID)
  {
    sSID2 = [(HMHomeWiFiInfo *)self SSID];
    [coderCopy encodeObject:sSID2 forKey:@"SSID"];

    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMHomeWiFiInfo requiresPassword](self, "requiresPassword")}];
    [coderCopy encodeObject:v6 forKey:@"PWD"];

    macAddress = [(HMHomeWiFiInfo *)self macAddress];
    [coderCopy encodeObject:macAddress forKey:@"MAC"];

    bSSID = [(HMHomeWiFiInfo *)self BSSID];
    [coderCopy encodeObject:bSSID forKey:@"BSSID"];

    rSSI = [(HMHomeWiFiInfo *)self RSSI];
    [coderCopy encodeObject:rSSI forKey:@"RSSI"];

    displayName = [(HMHomeWiFiInfo *)self displayName];
    [coderCopy encodeObject:displayName forKey:@"DISPLAY"];

    security = [(HMHomeWiFiInfo *)self security];
    [coderCopy encodeObject:security forKey:@"SEC"];
  }
}

- (HMHomeWiFiInfo)initWithSSID:(id)d requiresPassword:(BOOL)password macAddress:(id)address BSSID:(id)iD displayName:(id)name security:(id)security RSSI:(id)i
{
  dCopy = d;
  addressCopy = address;
  iDCopy = iD;
  nameCopy = name;
  securityCopy = security;
  iCopy = i;
  v25.receiver = self;
  v25.super_class = HMHomeWiFiInfo;
  v18 = [(HMHomeWiFiInfo *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_SSID, d);
    v19->_requiresPassword = password;
    objc_storeStrong(&v19->_macAddress, address);
    objc_storeStrong(&v19->_BSSID, iD);
    objc_storeStrong(&v19->_displayName, name);
    objc_storeStrong(&v19->_security, security);
    objc_storeStrong(&v19->_RSSI, i);
  }

  return v19;
}

@end