@interface DAWiFiNetwork
- (BOOL)isEqual:(id)equal;
- (id)descriptionWithLevel:(int)level;
- (unint64_t)hash;
@end

@implementation DAWiFiNetwork

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if ([(DAWiFiNetwork *)v6 isMemberOfClass:objc_opt_class()])
    {
      if (self->_SSID)
      {
        sSID = [(DAWiFiNetwork *)v6 SSID];
        if ([sSID isEqualToString:self->_SSID])
        {
          isUnsecured = [(DAWiFiNetwork *)v6 isUnsecured];
          LODWORD(self) = isUnsecured ^ [(DAWiFiNetwork *)self isUnsecured]^ 1;
        }

        else
        {
          LOBYTE(self) = 0;
        }

LABEL_24:

        goto LABEL_25;
      }

      if (self->_wifiAwarePairedID && ([(DAWiFiNetwork *)v6 wifiAwarePairedID], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
      {
        wifiAwarePairedID = [(DAWiFiNetwork *)v6 wifiAwarePairedID];
        uUIDString = [wifiAwarePairedID UUIDString];

        self = [(DAWiFiNetwork *)self wifiAwarePairedID];
        uUIDString2 = [(DAWiFiNetwork *)self UUIDString];

        LOBYTE(self) = [uUIDString isEqualToString:uUIDString2];
      }

      else
      {
        signature = self->_signature;
        if (!signature)
        {
          sSID = [(DAWiFiNetwork *)v6 serviceName];
          serviceName = [(DAWiFiNetwork *)self serviceName];
          if ([sSID isEqualToString:serviceName])
          {
            wifiAwareVendorName = [(DAWiFiNetwork *)v6 wifiAwareVendorName];
            wifiAwareVendorName2 = [(DAWiFiNetwork *)self wifiAwareVendorName];
            if ([wifiAwareVendorName isEqualToString:wifiAwareVendorName2])
            {
              wifiAwareModelName = [(DAWiFiNetwork *)v6 wifiAwareModelName];
              wifiAwareModelName2 = [(DAWiFiNetwork *)self wifiAwareModelName];
              if ([wifiAwareModelName isEqualToString:wifiAwareModelName2])
              {
                [(DAWiFiNetwork *)v6 wifiAwareOTAName];
                v19 = v22 = wifiAwareModelName;
                wifiAwareOTAName = [(DAWiFiNetwork *)self wifiAwareOTAName];
                LOBYTE(self) = [v19 isEqualToString:wifiAwareOTAName];

                wifiAwareModelName = v22;
              }

              else
              {
                LOBYTE(self) = 0;
              }
            }

            else
            {
              LOBYTE(self) = 0;
            }
          }

          else
          {
            LOBYTE(self) = 0;
          }

          goto LABEL_24;
        }

        LOBYTE(self) = signature == [(DAWiFiNetwork *)v6 signature];
      }
    }

    else
    {
      LOBYTE(self) = 0;
    }

LABEL_25:

    goto LABEL_26;
  }

  LOBYTE(self) = 1;
LABEL_26:

  return self;
}

- (unint64_t)hash
{
  serviceName = self->_serviceName;
  if (!serviceName)
  {
    serviceName = self->_SSID;
  }

  return [(NSString *)serviceName hash];
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v30 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v29 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v29, &v30, "%@", v5);
    v6 = v29;
  }

  wifiAwarePairedID = self->_wifiAwarePairedID;
  if (wifiAwarePairedID)
  {
    v28 = v6;
    v8 = wifiAwarePairedID;
    uUIDString = [(NSUUID *)v8 UUIDString];
    CUAppendF(&v28, &v30, "WiFiAwarePairedUUID: %@", uUIDString);
    v10 = v28;

    v6 = v10;
  }

  SSID = self->_SSID;
  if (SSID)
  {
    v27 = v6;
    v12 = SSID;
    CUAppendF(&v27, &v30, "SSID %@", v12);
    v13 = v27;

    v6 = v13;
  }

  serviceName = self->_serviceName;
  if (serviceName)
  {
    v26 = v6;
    v15 = serviceName;
    CUAppendF(&v26, &v30, "Service Name %@", v15);
    v16 = v26;

    v6 = v16;
  }

  wifiAwareOTAName = self->_wifiAwareOTAName;
  if (wifiAwareOTAName)
  {
    v25 = v6;
    v18 = wifiAwareOTAName;
    CUAppendF(&v25, &v30, "WiFi Aware OTA Name %@", v18);
    v19 = v25;

    v6 = v19;
  }

  if (self->_unsecured)
  {
    v24 = v6;
    CUAppendF(&v24, &v30, "unsecured %s", "yes");
    v20 = v24;

    v6 = v20;
  }

  v21 = &stru_10005A2C8;
  if (v6)
  {
    v21 = v6;
  }

  v22 = v21;

  return v22;
}

@end