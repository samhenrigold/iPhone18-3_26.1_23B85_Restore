@interface DMDCoreTelephonyUtilities
+ (BOOL)_supportsVoiceRoaming;
+ (BOOL)dataRoamingEnabled;
+ (BOOL)hasCDMA;
+ (BOOL)hasGSM;
+ (BOOL)isRoaming;
+ (BOOL)isSubscriptionRoaming:(id)roaming client:(id)client;
+ (BOOL)voiceRoamingEnabled;
+ (NSString)ICCID;
+ (NSString)IMEI;
+ (NSString)MEID;
+ (NSString)carrierBundleVersion;
+ (NSString)carrierName;
+ (NSString)currentMobileCountryCode;
+ (NSString)currentMobileNetworkCode;
+ (NSString)currentNetworkName;
+ (NSString)modemFirmwareVersion;
+ (id)formattedICCIDStringFromString:(id)string;
+ (id)formattedIMEIStringFromString:(id)string;
+ (void)setDataRoamingEnabled:(BOOL)enabled;
+ (void)setVoiceRoamingEnabled:(BOOL)enabled;
+ (void)withCurrentDataServiceDescriptorDo:(id)do;
@end

@implementation DMDCoreTelephonyUtilities

+ (id)formattedIMEIStringFromString:(id)string
{
  if (string)
  {
    v3 = [NSMutableString stringWithString:?];
    if ([v3 length] >= 3)
    {
      [v3 insertString:@" " atIndex:2];
    }

    if ([v3 length] >= 0xA)
    {
      [v3 insertString:@" " atIndex:9];
    }

    if ([v3 length] >= 0x11)
    {
      [v3 insertString:@" " atIndex:16];
    }

    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)formattedICCIDStringFromString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v4 = [NSMutableString stringWithString:stringCopy];
    if ([stringCopy length] >= 4 && objc_msgSend(stringCopy, "length") >= 5)
    {
      v5 = 0;
      v6 = 4;
      do
      {
        if ([stringCopy length] > v6)
        {
          [v4 insertString:@" " atIndex:(v5 + v6)];
          ++v5;
        }

        v6 = (v6 + 4);
      }

      while ([stringCopy length] > v6);
    }

    v7 = [v4 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (NSString)IMEI
{
  v3 = sub_1000323EC(self);
  iMEI = [v3 IMEI];

  if ([iMEI length])
  {
    v5 = [self formattedIMEIStringFromString:iMEI];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NSString)MEID
{
  if (qword_1000FF0A0 != -1)
  {
    sub_100081414();
  }

  v3 = qword_1000FF098;

  return v3;
}

+ (NSString)modemFirmwareVersion
{
  if (+[DMDMobileGestalt hasCellularDataCapability])
  {
    if (qword_1000FF0B0 != -1)
    {
      sub_100081428();
    }

    v2 = qword_1000FF0A8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (NSString)ICCID
{
  v3 = +[DMDMobileGestalt hasCellularDataCapability];
  if (v3)
  {
    v4 = sub_1000323EC(v3);
    iCCID = [v4 ICCID];

    if ([iCCID length])
    {
      v6 = [self formattedICCIDStringFromString:iCCID];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (NSString)currentNetworkName
{
  v2 = +[DMDMobileGestalt hasCellularDataCapability];
  if (!v2)
  {
    v7 = 0;
    goto LABEL_13;
  }

  v3 = sub_100032A20(v2);
  v4 = sub_100032A64(v3);
  if (v4)
  {
    v9 = 0;
    v5 = [v3 getLocalizedOperatorName:v4 error:&v9];
    v6 = v9;
    if (v5)
    {
      if ([v5 length])
      {
        v7 = v5;
LABEL_11:

        goto LABEL_12;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10008143C();
    }

    v7 = 0;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

LABEL_13:

  return v7;
}

+ (NSString)carrierName
{
  v2 = sub_100032A20(self);
  v3 = sub_100032A64(v2);
  v4 = [[CTBundle alloc] initWithBundleType:1];
  v8 = 0;
  v5 = [v2 copyCarrierBundleValue:v3 key:@"CarrierName" bundleType:v4 error:&v8];
  v6 = v8;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100081504();
  }

  return v5;
}

+ (NSString)carrierBundleVersion
{
  v2 = sub_100032A20(self);
  v3 = sub_100032A64(v2);
  if (v3)
  {
    v8 = 0;
    v4 = [v2 copyCarrierBundleVersion:v3 error:&v8];
    v5 = v8;
    if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100081574();
    }

    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (NSString)currentMobileCountryCode
{
  v2 = +[DMDMobileGestalt hasCellularDataCapability];
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = sub_100032A20(v2);
  v4 = sub_100032A64(v3);
  if (!v4)
  {
LABEL_10:

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v5 = v4;
  v9 = 0;
  v6 = [v3 copyMobileCountryCode:v4 error:&v9];
  v7 = v9;
  if (!v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000815E4();
    }

    goto LABEL_10;
  }

  if (![v6 length])
  {

    v6 = 0;
  }

LABEL_12:

  return v6;
}

+ (NSString)currentMobileNetworkCode
{
  v2 = +[DMDMobileGestalt hasCellularDataCapability];
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = sub_100032A20(v2);
  v4 = sub_100032A64(v3);
  if (!v4)
  {
LABEL_10:

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v5 = v4;
  v9 = 0;
  v6 = [v3 copyMobileNetworkCode:v4 error:&v9];
  v7 = v9;
  if (!v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100081654();
    }

    goto LABEL_10;
  }

  if (![v6 length])
  {

    v6 = 0;
  }

LABEL_12:

  return v6;
}

+ (BOOL)dataRoamingEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (+[DMDMobileGestalt hasCellularDataCapability])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000330C8;
    v4[3] = &unk_1000CEDB0;
    v4[4] = &v5;
    [objc_opt_class() withCurrentDataServiceDescriptorDo:v4];
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)setDataRoamingEnabled:(BOOL)enabled
{
  if (+[DMDMobileGestalt hasCellularDataCapability])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10003324C;
    v4[3] = &unk_1000CEDD0;
    enabledCopy = enabled;
    [objc_opt_class() withCurrentDataServiceDescriptorDo:v4];
  }
}

+ (void)withCurrentDataServiceDescriptorDo:(id)do
{
  doCopy = do;
  v6 = doCopy;
  if (!doCopy)
  {
    sub_100081884(a2, self);
  }

  v7 = sub_100032A20(doCopy);
  v10 = 0;
  v8 = [v7 getCurrentDataServiceDescriptorSync:&v10];
  v9 = v10;
  (v6)[2](v6, v8, v9);
}

+ (BOOL)isSubscriptionRoaming:(id)roaming client:(id)client
{
  v8 = 0;
  v4 = [client copyRegistrationStatus:roaming error:&v8];
  v5 = v8;
  if (v4)
  {
    v6 = [v4 isEqualToString:kCTRegistrationStatusRegisteredRoaming];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000818F8();
    }

    v6 = 0;
  }

  return v6;
}

+ (BOOL)isRoaming
{
  v2 = +[DMDMobileGestalt hasCellularDataCapability];
  if (v2)
  {
    v3 = sub_100032A20(v2);
    v4 = sub_100032A64(v3);
    v5 = [objc_opt_class() isSubscriptionRoaming:v4 client:v3];

    LOBYTE(v2) = v5;
  }

  return v2;
}

+ (BOOL)voiceRoamingEnabled
{
  if (![self _supportsVoiceRoaming])
  {
    return 0;
  }

  v2 = _CTServerConnectionCreate();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _CTServerConnectionGetEnableOnlyHomeNetwork() >> 32 == 0;
  CFRelease(v3);
  return v4;
}

+ (void)setVoiceRoamingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([self _supportsVoiceRoaming])
  {
    if ([self voiceRoamingEnabled] == enabledCopy)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100081988();
      }
    }

    else
    {
      v5 = _CTServerConnectionCreate();
      if (v5)
      {
        v6 = v5;
        _CTServerConnectionSetEnableOnlyHomeNetwork();
        CFRelease(v6);
      }
    }
  }
}

+ (BOOL)hasGSM
{
  iMEI = [self IMEI];
  v3 = iMEI != 0;

  return v3;
}

+ (BOOL)hasCDMA
{
  mEID = [self MEID];
  v3 = mEID != 0;

  return v3;
}

+ (BOOL)_supportsVoiceRoaming
{
  v2 = +[DMDMobileGestalt hasTelephonyCapability];
  if (!v2)
  {
    bOOLValue = 0;
    goto LABEL_12;
  }

  v3 = sub_100032A20(v2);
  v4 = sub_100032A64(v3);
  v5 = [[CTBundle alloc] initWithBundleType:1];
  v12 = 0;
  v6 = [v3 copyCarrierBundleValue:v4 key:@"ShowVoiceRoamingSwitch" bundleType:v5 error:&v12];
  v7 = v12;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v6 BOOLValue];
      v9 = 1;
      goto LABEL_11;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100081A04();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100081A74();
  }

  v9 = 0;
  bOOLValue = 0;
LABEL_11:

  if (!v9)
  {
    LOBYTE(bOOLValue) = 0;
    return bOOLValue;
  }

LABEL_12:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = @"NO";
    if (bOOLValue)
    {
      v10 = @"YES";
    }

    *buf = 138543362;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "device supports voice roaming: %{public}@", buf, 0xCu);
  }

  return bOOLValue;
}

@end