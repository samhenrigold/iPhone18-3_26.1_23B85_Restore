@interface FMDRequestIdentityV5
- (BOOL)canReplace:(id)replace;
- (BOOL)canRequestBeRetriedNow;
- (FMDRequestIdentityV5)initWithProvider:(id)provider identityInfo:(id)info;
- (FMDServiceProvider)provider;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
- (void)_calculateSignatureForBody:(id)body;
@end

@implementation FMDRequestIdentityV5

- (FMDRequestIdentityV5)initWithProvider:(id)provider identityInfo:(id)info
{
  providerCopy = provider;
  infoCopy = info;
  account = [providerCopy account];
  v14.receiver = self;
  v14.super_class = FMDRequestIdentityV5;
  v9 = [(FMDRequest *)&v14 initWithAccount:account];

  if (v9)
  {
    [(FMDRequestIdentityV5 *)v9 setProvider:providerCopy];
    timeoutIntervalInSec = [infoCopy timeoutIntervalInSec];
    if (timeoutIntervalInSec >= 0)
    {
      v11 = timeoutIntervalInSec;
    }

    else
    {
      v11 = 60;
    }

    [(FMDRequestIdentityV5 *)v9 setBaaIdentityTimeoutIntervalInSec:v11];
    commandID = [infoCopy commandID];
    [(FMDRequestIdentityV5 *)v9 setCommandID:commandID];
  }

  return v9;
}

- (id)requestUrl
{
  v3 = +[FMDSystemConfig sharedInstance];
  deviceUDID = [v3 deviceUDID];

  v5 = objc_alloc_init(RequestTemplateURL);
  provider = [(FMDRequestIdentityV5 *)self provider];
  account = [provider account];
  v8 = [(RequestTemplateURL *)v5 urlFromTemplate:@"${scheme}://${hostname}/fmipservice/${service}/${dsid}/${udid}/identityV5" account:account udid:deviceUDID];

  return v8;
}

- (id)requestHeaders
{
  v14.receiver = self;
  v14.super_class = FMDRequestIdentityV5;
  requestHeaders = [(FMDRequest *)&v14 requestHeaders];
  signatureHeader = [(FMDRequestIdentityV5 *)self signatureHeader];
  [requestHeaders fm_safelyMapKey:@"X-Mme-Sign1" toObject:signatureHeader];

  skAuthHeader = [(FMDRequestIdentityV5 *)self skAuthHeader];
  [requestHeaders fm_safelyMapKey:@"X-Mme-Sign2" toObject:skAuthHeader];

  baaAttestationHeader = [(FMDRequestIdentityV5 *)self baaAttestationHeader];
  [requestHeaders fm_safelyMapKey:@"X-Mme-Sign5" toObject:baaAttestationHeader];

  baaSignatureHeader = [(FMDRequestIdentityV5 *)self baaSignatureHeader];
  [requestHeaders fm_safelyMapKey:@"X-Mme-Sign6" toObject:baaSignatureHeader];

  activationLockRequestUUID = [(FMDRequestIdentityV5 *)self activationLockRequestUUID];
  uUIDString = [activationLockRequestUUID UUIDString];
  [requestHeaders fm_safelyMapKey:@"X-Apple-AL-ID" toObject:uUIDString];

  signatureError = [(FMDRequestIdentityV5 *)self signatureError];
  [requestHeaders fm_safelyMapKey:@"X-Apple-Sign1-Error" toObject:signatureError];

  baaError = [(FMDRequestIdentityV5 *)self baaError];
  [requestHeaders fm_safelyMapKey:@"X-Apple-Sign5-Error" toObject:baaError];

  baaErrorDescription = [(FMDRequestIdentityV5 *)self baaErrorDescription];
  [requestHeaders fm_safelyMapKey:@"X-Apple-Sign5-Error-Desc" toObject:baaErrorDescription];

  return requestHeaders;
}

- (id)requestBody
{
  v43.receiver = self;
  v43.super_class = FMDRequestIdentityV5;
  requestBody = [(FMDRequest *)&v43 requestBody];
  provider = [(FMDRequestIdentityV5 *)self provider];
  if (provider)
  {
    v5 = objc_alloc_init(FMDActingRequestDecorator);
    standardDeviceContext = [(FMDActingRequestDecorator *)v5 standardDeviceContext];

    account = [provider account];
    authId = [account authId];
    [requestBody fm_safelyMapKey:@"dsid" toObject:authId];

    [requestBody fm_safelyMapKey:@"deviceContext" toObject:standardDeviceContext];
    v9 = +[ServerDeviceInfo sharedInstance];
    account2 = [provider account];
    v11 = [v9 identityDeviceInfoForAccount:account2];
    [requestBody fm_safelyMapKey:@"deviceInfo" toObject:v11];
  }

  commandID = [(FMDRequestIdentityV5 *)self commandID];
  [requestBody fm_safelyMapKey:@"cmdId" toObject:commandID];

  v13 = +[FMDSystemConfig sharedInstance];
  internationalMobileEquipmentIdentity = [v13 internationalMobileEquipmentIdentity];
  [requestBody fm_safelyMapKey:@"imei" toObject:internationalMobileEquipmentIdentity];

  v15 = +[FMDSystemConfig sharedInstance];
  internationalMobileEquipmentIdentityTwo = [v15 internationalMobileEquipmentIdentityTwo];
  [requestBody fm_safelyMapKey:@"imei2" toObject:internationalMobileEquipmentIdentityTwo];

  v17 = +[FMDSystemConfig sharedInstance];
  mobileEquipmentIdentifier = [v17 mobileEquipmentIdentifier];
  [requestBody fm_safelyMapKey:@"meid" toObject:mobileEquipmentIdentifier];

  v19 = +[FMDSystemConfig sharedInstance];
  serialNumber = [v19 serialNumber];

  [requestBody fm_safelyMapKey:@"serialNumber" toObject:serialNumber];
  v21 = +[FMDSystemConfig sharedInstance];
  escrowHash = [v21 escrowHash];
  hexString = [escrowHash hexString];
  [requestBody fm_safelyMapKey:@"escrowHash" toObject:hexString];

  v24 = +[FMDSystemConfig sharedInstance];
  ecid = [v24 ecid];
  v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [ecid longLongValue]);
  [requestBody fm_safelyMapKey:@"ecid" toObject:v26];

  v27 = +[FMDSystemConfig sharedInstance];
  chipId = [v27 chipId];
  v29 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [chipId longLongValue]);
  [requestBody fm_safelyMapKey:@"chipId" toObject:v29];

  v30 = +[FMDSystemConfig sharedInstance];
  wifiMacAddress = [v30 wifiMacAddress];
  [requestBody fm_safelyMapKey:@"wifiMac" toObject:wifiMacAddress];

  v32 = +[FMDSystemConfig sharedInstance];
  btMacAddress = [v32 btMacAddress];
  [requestBody fm_safelyMapKey:@"btMac" toObject:btMacAddress];

  v34 = +[FMDAbsintheV3SigningInterface sharedInterface];
  v42 = 0;
  v35 = [v34 inFieldCollectionReceipt:&v42];
  v36 = v42;
  [requestBody fm_safelyMapKey:@"ifcReceipt" toObject:v35];

  fm_commaSeparatedString = [v36 fm_commaSeparatedString];
  [requestBody fm_safelyMapKey:@"collectionError" toObject:fm_commaSeparatedString];

  v38 = +[FMSystemInfo sharedInstance];
  LODWORD(v35) = [v38 isInternalBuild];

  if (v35)
  {
    v39 = [v36 description];
    [requestBody fm_safelyMapKey:@"collectionErrorDetail" toObject:v39];
  }

  v40 = +[NSUUID UUID];
  [(FMDRequestIdentityV5 *)self setActivationLockRequestUUID:v40];
  [(FMDRequestIdentityV5 *)self _calculateSignatureForBody:requestBody];

  return requestBody;
}

- (BOOL)canRequestBeRetriedNow
{
  if ([(FMDRequest *)self httpResponseStatus]== 501)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = FMDRequestIdentityV5;
  return [(FMDRequest *)&v4 canRequestBeRetriedNow];
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)_calculateSignatureForBody:(id)body
{
  bodyCopy = body;
  activationLockRequestUUID = [(FMDRequestIdentityV5 *)self activationLockRequestUUID];
  [(FMDRequestIdentityV5 *)self setSignatureHeader:0];
  [(FMDRequestIdentityV5 *)self setSkAuthHeader:0];
  [(FMDRequestIdentityV5 *)self setRequestBodyDataForSignature:0];
  [(FMDRequestIdentityV5 *)self setBaaSignatureHeader:0];
  [(FMDRequestIdentityV5 *)self setBaaAttestationHeader:0];
  if (bodyCopy)
  {
    v66 = 0;
    v5 = [NSJSONSerialization dataWithJSONObject:bodyCopy options:0 error:&v66];
    v6 = v66;
    [(FMDRequestIdentityV5 *)self setRequestBodyDataForSignature:v5];

    requestBodyDataForSignature = [(FMDRequestIdentityV5 *)self requestBodyDataForSignature];
    LODWORD(v5) = requestBodyDataForSignature == 0;

    if (v5)
    {
      v9 = sub_100002880(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10022A4BC(self);
      }
    }

    if (v6)
    {
      v10 = sub_100002880(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10022A550(self);
      }

      v12 = sub_10017D9A8(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10022A5EC(self);
      }
    }
  }

  requestBodyDataForSignature2 = [(FMDRequestIdentityV5 *)self requestBodyDataForSignature];
  v14 = requestBodyDataForSignature2 == 0;

  if (!v14)
  {
    v15 = +[NSMutableData data];
    authHeaderValue = [(FMDRequest *)self authHeaderValue];
    if ([authHeaderValue length])
    {
      v16 = [authHeaderValue dataUsingEncoding:4];
      [v15 appendData:v16];
    }

    requestBodyDataForSignature3 = [(FMDRequestIdentityV5 *)self requestBodyDataForSignature];
    [v15 appendData:requestBodyDataForSignature3];

    v18 = v15;
    CC_SHA256([v15 bytes], objc_msgSend(v15, "length"), md);
    v19 = [NSData dataWithBytes:md length:32];
    v20 = +[FMDAbsintheV3SigningInterface sharedInterface];
    v65 = 0;
    v45 = [v20 signatureForData:v19 requestUUID:activationLockRequestUUID mode:0 error:&v65];
    v21 = v65;

    if (v21)
    {
      code = [v21 code];
      userInfo = [v21 userInfo];
      base64EncodedString = [userInfo objectForKeyedSubscript:@"kFMDUnderlyingErrorCodeKey"];
      v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld,%ld", code, [base64EncodedString integerValue]);
      [(FMDRequestIdentityV5 *)self setSignatureError:v25];
    }

    else
    {
      if ([v45 count] != 2)
      {
        goto LABEL_19;
      }

      v42 = [v45 objectAtIndexedSubscript:0];
      userInfo = [v42 base64EncodedString];

      v43 = [v45 objectAtIndexedSubscript:1];
      base64EncodedString = [v43 base64EncodedString];

      v44 = sub_100002880([(FMDRequestIdentityV5 *)self setSignatureHeader:userInfo]);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v69) = 138412290;
        *(&v69 + 4) = userInfo;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Signature header: %@", &v69, 0xCu);
      }

      v25 = sub_100002880([(FMDRequestIdentityV5 *)self setSkAuthHeader:base64EncodedString]);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v69) = 138412290;
        *(&v69 + 4) = base64EncodedString;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "SkAuth header: %@", &v69, 0xCu);
      }
    }

LABEL_19:
    v26 = objc_alloc_init(FMDDeviceIdentityFactory);
    *&v69 = 0;
    *(&v69 + 1) = &v69;
    v70 = 0x3032000000;
    v71 = sub_10000AA44;
    v72 = sub_100002AEC;
    v73 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = sub_10000AA44;
    v63 = sub_100002AEC;
    v64 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = sub_10000AA44;
    v57 = sub_100002AEC;
    v58 = 0;
    v27 = [[FMDIdentitySigningRequest alloc] initWithData:v19];
    v28 = sub_100002880(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      baaIdentityTimeoutIntervalInSec = [(FMDRequestIdentityV5 *)self baaIdentityTimeoutIntervalInSec];
      *buf = 134217984;
      v68 = baaIdentityTimeoutIntervalInSec;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Sign Using BAA with timeout: %lu seconds", buf, 0xCu);
    }

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1001780E4;
    v48[3] = &unk_1002CF378;
    v50 = &v53;
    v51 = &v69;
    v52 = &v59;
    v30 = [[FMSynchronizer alloc] initWithDescription:@"FMDRequestIdentityV5.BAASigning" andTimeout:{-[FMDRequestIdentityV5 baaIdentityTimeoutIntervalInSec](self, "baaIdentityTimeoutIntervalInSec")}];
    v49 = v30;
    [v26 baaIdentityAttestationForSigningRequest:v27 completion:v48];
    [v30 wait];
    if ([v30 timeoutOccurred])
    {
      v31 = [NSError errorWithDomain:kFMDErrorDomain code:4 userInfo:0];
      v32 = v54[5];
      v54[5] = v31;
    }

    base64EncodedString2 = [*(*(&v69 + 1) + 40) base64EncodedString];
    [(FMDRequestIdentityV5 *)self setBaaSignatureHeader:base64EncodedString2];

    base64EncodedString3 = [v60[5] base64EncodedString];
    [(FMDRequestIdentityV5 *)self setBaaAttestationHeader:base64EncodedString3];

    v35 = v54[5];
    if (v35)
    {
      domain = [v35 domain];
      v37 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@|%ld", domain, [v54[5] code]);
      [(FMDRequestIdentityV5 *)self setBaaError:v37];

      v38 = [v54[5] description];
      [(FMDRequestIdentityV5 *)self setBaaErrorDescription:v38];

      v39 = [FMDALFailureAnalyticsManager alloc];
      WeakRetained = objc_loadWeakRetained(&self->_provider);
      v41 = [(FMDALFailureAnalyticsManager *)v39 initWithProvider:WeakRetained context:@"IdentityV5"];

      [(FMDALFailureAnalyticsManager *)v41 performAnalytics:v54[5]];
    }

    else
    {
      [(FMDRequestIdentityV5 *)self setBaaError:0];
      [(FMDRequestIdentityV5 *)self setBaaErrorDescription:0];
    }

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v59, 8);

    _Block_object_dispose(&v69, 8);
  }
}

- (FMDServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end