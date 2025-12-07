@interface FMDPasscodeActivationUnlockIdentityEncoder
- (BOOL)_certificateRequestAndRefKeyWithError:(id *)error;
- (FMDPasscodeActivationUnlockIdentityEncoder)initWithCertificateDataSource:(id)source signatureDataSource:(id)dataSource;
- (id)_payloadWithContext:(id)context error:(id *)error;
- (id)_signatureForPayload:(id)payload error:(id *)error;
- (void)_populateDeviceIdentifiersIntoDict:(id)dict;
- (void)identityForPasscodeActivationUnlockWithContext:(id)context completion:(id)completion;
@end

@implementation FMDPasscodeActivationUnlockIdentityEncoder

- (FMDPasscodeActivationUnlockIdentityEncoder)initWithCertificateDataSource:(id)source signatureDataSource:(id)dataSource
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  v12.receiver = self;
  v12.super_class = FMDPasscodeActivationUnlockIdentityEncoder;
  v9 = [(FMDPasscodeActivationUnlockIdentityEncoder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_certificateDataSource, source);
    objc_storeStrong(&v10->_signatureDataSource, dataSource);
  }

  return v10;
}

- (void)identityForPasscodeActivationUnlockWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = +[NSMutableDictionary dictionary];
  v27[0] = 0;
  v9 = [(FMDPasscodeActivationUnlockIdentityEncoder *)self _payloadWithContext:contextCopy error:v27];
  v10 = v27[0];
  v11 = [v9 base64EncodedStringWithOptions:0];
  [v8 fm_safelyMapKey:@"payload" toObject:v11];
  if (!v10)
  {
    v26 = 0;
    [(FMDPasscodeActivationUnlockIdentityEncoder *)self _certificateRequestAndRefKeyWithError:&v26];
    v10 = v26;
    certRequest = [(FMDPasscodeActivationUnlockIdentityEncoder *)self certRequest];
    [v8 fm_safelyMapKey:@"certRequest" toObject:certRequest];

    if (!v10)
    {
      v25 = 0;
      v13 = [(FMDPasscodeActivationUnlockIdentityEncoder *)self _signatureForPayload:v9 error:&v25];
      v10 = v25;
      v14 = [v13 base64EncodedStringWithOptions:0];
      [v8 fm_safelyMapKey:@"signature" toObject:v14];
    }
  }

  v15 = [v10 description];
  [v8 fm_safelyMapKey:@"error" toObject:v15];

  v17 = sub_100001AC8(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "resultDict : %@", buf, 0xCu);
  }

  v24 = 0;
  v18 = [NSJSONSerialization dataWithJSONObject:v8 options:0 error:&v24];
  v19 = v24;
  v20 = v19;
  if (v19)
  {
    v21 = sub_100001AC8(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100004354();
    }
  }

  v22 = [v18 base64EncodedStringWithOptions:0];
  if (completionCopy)
  {
    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v10;
    }

    (completionCopy)[2](completionCopy, v22, v23);
  }
}

- (id)_payloadWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = [NSMutableDictionary dictionaryWithDictionary:contextCopy];
  v8 = sub_100001AC8([(FMDPasscodeActivationUnlockIdentityEncoder *)self _populateDeviceIdentifiersIntoDict:v7]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Payload dict : %@", buf, 0xCu);
  }

  v15 = 0;
  v9 = [NSJSONSerialization dataWithJSONObject:v7 options:0 error:&v15];
  v10 = v15;
  v11 = v10;
  if (v10)
  {
    v12 = sub_100001AC8(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100004354();
    }

    if (error)
    {
      v16 = NSUnderlyingErrorKey;
      v17 = v11;
      v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      *error = [NSError errorWithDomain:@"com.apple.icloud.findmydevice.PasscodeActivationUnlock" code:0 userInfo:v13];
    }
  }

  return v9;
}

- (void)_populateDeviceIdentifiersIntoDict:(id)dict
{
  dictCopy = dict;
  v4 = +[FMSystemInfo sharedInstance];
  deviceUDID = [v4 deviceUDID];
  [dictCopy fm_safelyMapKey:@"udid" toObject:deviceUDID];

  v6 = +[FMSystemInfo sharedInstance];
  imei = [v6 imei];
  [dictCopy fm_safelyMapKey:@"imei" toObject:imei];

  v8 = +[FMSystemInfo sharedInstance];
  meid = [v8 meid];
  [dictCopy fm_safelyMapKey:@"meid" toObject:meid];

  v10 = +[FMSystemInfo sharedInstance];
  serialNumber = [v10 serialNumber];
  [dictCopy fm_safelyMapKey:@"serialNumber" toObject:serialNumber];

  v12 = +[FMSystemInfo sharedInstance];
  ecid = [v12 ecid];
  v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [ecid longLongValue]);
  [dictCopy fm_safelyMapKey:@"ecid" toObject:v14];

  v15 = +[FMSystemInfo sharedInstance];
  chipId = [v15 chipId];
  v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [chipId longLongValue]);
  [dictCopy fm_safelyMapKey:@"chipId" toObject:v17];

  v18 = +[FMSystemInfo sharedInstance];
  wifiMacAddress = [v18 wifiMacAddress];
  [dictCopy fm_safelyMapKey:@"wifiMac" toObject:wifiMacAddress];

  v21 = +[FMSystemInfo sharedInstance];
  btMacAddress = [v21 btMacAddress];
  [dictCopy fm_safelyMapKey:@"btMac" toObject:btMacAddress];
}

- (BOOL)_certificateRequestAndRefKeyWithError:(id *)error
{
  v15 = 0;
  certificateDataSource = [(FMDPasscodeActivationUnlockIdentityEncoder *)self certificateDataSource];
  v13 = 0;
  v14 = 0;
  [certificateDataSource passcodeActivationUnlockCertificateRequest:&v14 withValidityInMins:10 refKey:&v15 error:&v13];
  v6 = v14;
  v7 = v13;

  if (!v7)
  {
    hTTPBody = [v6 HTTPBody];
    v8 = [hTTPBody base64EncodedStringWithOptions:0];

    v10 = +[NSMutableDictionary dictionary];
    allHTTPHeaderFields = [v6 allHTTPHeaderFields];
    [v10 fm_safelyMapKey:@"headers" toObject:allHTTPHeaderFields];

    [v10 fm_safelyMapKey:@"body" toObject:v8];
    [(FMDPasscodeActivationUnlockIdentityEncoder *)self setCertRequest:v10];
    [(FMDPasscodeActivationUnlockIdentityEncoder *)self setRefKey:v15];

    goto LABEL_5;
  }

  if (error)
  {
    v16 = NSUnderlyingErrorKey;
    v17 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    *error = [NSError errorWithDomain:@"com.apple.icloud.findmydevice.PasscodeActivationUnlock" code:1 userInfo:v8];
LABEL_5:
  }

  return v7 != 0;
}

- (id)_signatureForPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  signatureDataSource = [(FMDPasscodeActivationUnlockIdentityEncoder *)self signatureDataSource];
  v12 = 0;
  v8 = [signatureDataSource passcodeActivationUnlockSignatureForPayload:payloadCopy usingKey:-[FMDPasscodeActivationUnlockIdentityEncoder refKey](self error:{"refKey"), &v12}];

  v9 = v12;
  if (!v8)
  {
    if (v9)
    {
      v13 = NSUnderlyingErrorKey;
      v14 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      if (!error)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      v10 = 0;
      if (!error)
      {
        goto LABEL_5;
      }
    }

    *error = [NSError errorWithDomain:@"com.apple.icloud.findmydevice.PasscodeActivationUnlock" code:2 userInfo:v10];
    goto LABEL_5;
  }

LABEL_6:

  return v8;
}

@end