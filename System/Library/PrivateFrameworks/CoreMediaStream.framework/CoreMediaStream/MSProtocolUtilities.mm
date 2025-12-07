@interface MSProtocolUtilities
+ (id)Win32SHA1OfUDID:(id)d;
+ (id)_urlSession;
+ (id)appleIDSession;
+ (id)deviceInfoDictForPersonID:(id)d;
+ (id)retryAfterDateBasedOnRetryAfterHeaderString:(id)string;
+ (void)applyUserDefaultOverridesToResponse:(id)response;
+ (void)fetchMPSStateWithBaseAvailabilityURL:(id)l personID:(id)d originalLibrarySize:(id)size completionBlock:(id)block;
@end

@implementation MSProtocolUtilities

+ (void)applyUserDefaultOverridesToResponse:(id)response
{
  v18 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults stringForKey:@"MPSStateResponseOverride"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 componentsSeparatedByString:@":"];
    if ([v7 count] == 6)
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      [responseCopy setHasRetryAfterSeconds:{objc_msgSend(v8, "BOOLValue")}];

      v9 = [v7 objectAtIndexedSubscript:1];
      [responseCopy setRetryAfterSeconds:{objc_msgSend(v9, "integerValue")}];

      v10 = [v7 objectAtIndexedSubscript:2];
      [responseCopy setHasMpsAction:{objc_msgSend(v10, "BOOLValue")}];

      v11 = [v7 objectAtIndexedSubscript:3];
      [responseCopy setMpsAction:{objc_msgSend(v11, "intValue")}];

      v12 = [v7 objectAtIndexedSubscript:4];
      [responseCopy setHasIcplAction:{objc_msgSend(v12, "BOOLValue")}];

      v13 = [v7 objectAtIndexedSubscript:5];
      [responseCopy setIcplAction:{objc_msgSend(v13, "intValue")}];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543618;
        v15 = responseCopy;
        v16 = 2114;
        v17 = @"MPSStateResponseOverride";
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Overriding MPS state response to %{public}@ because %{public}@ user default is set", &v14, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v7;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invalid override string, unexpected item count: %{public}@", &v14, 0xCu);
    }
  }
}

+ (void)fetchMPSStateWithBaseAvailabilityURL:(id)l personID:(id)d originalLibrarySize:(id)size completionBlock:(id)block
{
  v61 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  sizeCopy = size;
  v12 = [l URLByAppendingPathComponent:dCopy];
  v13 = [v12 URLByAppendingPathComponent:@"sharedstreams"];
  v14 = [v13 URLByAppendingPathComponent:@"mpsstate"];

  v46 = v14;
  v15 = [MEMORY[0x277CBAB50] requestWithURL:v14];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  selfCopy = self;
  v17 = [self deviceInfoDictForPersonID:dCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v17;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "deviceInfo %@", buf, 0xCu);
  }

  v18 = [(__CFString *)v17 objectForKey:@"authToken"];
  if (v18)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", dCopy, v18];
    v20 = [v19 dataUsingEncoding:4];
    v21 = MSPCUCreateBase64StringFromData(v20);
    if (v21)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"X-MobileMe-AuthToken %@", v21];
      [dictionary setObject:v22 forKey:@"authorization"];
    }
  }

  v23 = [(__CFString *)v17 objectForKey:@"clientInfo"];
  if (v23)
  {
    [dictionary setObject:v23 forKey:@"X-MMe-Client-Info"];
  }

  v41 = v23;
  v47 = dCopy;
  [dictionary setObject:@"application/protobuf" forKey:@"Content-Type"];
  [(__CFString *)v15 setAllHTTPHeaderFields:dictionary];
  v24 = objc_alloc_init(MPSStateRequest);
  v39 = [(__CFString *)v17 objectForKey:@"UDID"];
  SHA1StringOfUDID = createSHA1StringOfUDID(v39);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = SHA1StringOfUDID;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting MPS deviceID: %@", buf, 0xCu);
  }

  v38 = SHA1StringOfUDID;
  [(MPSStateRequest *)v24 setMPSDeviceID:SHA1StringOfUDID];
  v26 = dispatch_group_create();
  v27 = [getCKContainerClass() containerWithIdentifier:@"com.apple.photos.cloud"];
  if (v27)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v60 = v27;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "iCPLContainer is %p", buf, 0xCu);
    }

    dispatch_group_enter(v26);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __105__MSProtocolUtilities_fetchMPSStateWithBaseAvailabilityURL_personID_originalLibrarySize_completionBlock___block_invoke;
    v56[3] = &unk_278E91B28;
    v57 = v24;
    v58 = v26;
    [(__CFString *)v27 fetchCurrentDeviceIDWithCompletionHandler:v56];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v60 = 0;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "iCPLContainer is %p", buf, 0xCu);
  }

  v48 = [getCKContainerClass() containerWithIdentifier:@"com.apple.backup.ios"];
  v44 = v17;
  if (v48)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v60 = v48;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "backupContainer is %p", buf, 0xCu);
    }

    dispatch_group_enter(v26);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __105__MSProtocolUtilities_fetchMPSStateWithBaseAvailabilityURL_personID_originalLibrarySize_completionBlock___block_invoke_54;
    v53[3] = &unk_278E91B28;
    v54 = v24;
    v55 = v26;
    [(__CFString *)v48 fetchCurrentDeviceIDWithCompletionHandler:v53];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v60 = 0;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "backupContainer is %p", buf, 0xCu);
  }

  v42 = v18;
  v28 = objc_alloc_init(MEMORY[0x277D28A40]);
  backupDeviceUUID = [v28 backupDeviceUUID];
  if (backupDeviceUUID)
  {
    [(MPSStateRequest *)v24 setBackupDeviceUUID:backupDeviceUUID];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = backupDeviceUUID;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting Backup deviceUUID: %@", buf, 0xCu);
    }
  }

  v37 = v27;
  backupDeviceUDID = [v28 backupDeviceUDID];
  if (backupDeviceUDID)
  {
    [(MPSStateRequest *)v24 setBackupDeviceUDID:backupDeviceUDID];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = backupDeviceUDID;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting Backup deviceUDID: %@", buf, 0xCu);
    }
  }

  v45 = dictionary;
  dispatch_group_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
  longLongValue = [sizeCopy longLongValue];

  [(MPSStateRequest *)v24 setOriginalLibrarySize:longLongValue];
  data = [(MPSStateRequest *)v24 data];
  [(__CFString *)v15 setHTTPBody:data];
  [(__CFString *)v15 setHTTPMethod:@"POST"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v15;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Request %@", buf, 0xCu);
  }

  _urlSession = [objc_opt_class() _urlSession];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __105__MSProtocolUtilities_fetchMPSStateWithBaseAvailabilityURL_personID_originalLibrarySize_completionBlock___block_invoke_59;
  v49[3] = &unk_278E91B50;
  v50 = v15;
  v51 = blockCopy;
  v52 = selfCopy;
  v34 = blockCopy;
  v35 = v15;
  v36 = [_urlSession dataTaskWithRequest:v35 completionHandler:v49];

  [v36 resume];
}

void __105__MSProtocolUtilities_fetchMPSStateWithBaseAvailabilityURL_personID_originalLibrarySize_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setICPLDeviceID:v5];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting iCPL deviceID: %@ Error: %@", &v7, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __105__MSProtocolUtilities_fetchMPSStateWithBaseAvailabilityURL_personID_originalLibrarySize_completionBlock___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setBackupDeviceID:v5];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting Backup deviceID: %@ Error: %@", &v7, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __105__MSProtocolUtilities_fetchMPSStateWithBaseAvailabilityURL_personID_originalLibrarySize_completionBlock___block_invoke_59(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Response %@", buf, 0xCu);
    }

    v12 = v8;
    v13 = [(MPSStateResponse *)v12 statusCode];
    if (v13 == 200)
    {
      if (v7)
      {
        v11 = [[MPSStateResponse alloc] initWithData:v7];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v18 = v11;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MPSStateResponse %{public}@", buf, 0xCu);
        }

        [*(a1 + 48) applyUserDefaultOverridesToResponse:v11];
        v10 = 0;
        goto LABEL_16;
      }

      v10 = [MEMORY[0x277CCA9B8] MSErrorWithDomain:@"MSASProtocolErrorDomain" code:4 description:@"Missing data in the response"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Missing data from response", buf, 2u);
      }
    }

    else
    {
      v14 = v13;
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid status code %ld in the response", v13];
      v10 = [MEMORY[0x277CCA9B8] MSErrorWithDomain:@"MSASProtocolErrorDomain" code:4 description:v15];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v18 = v14;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid status code %ld, ignoring", buf, 0xCu);
      }
    }

    v11 = 0;
LABEL_16:

    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 32);
    *buf = 138412546;
    v18 = v16;
    v19 = 2112;
    v20 = v9;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Received error for request %@: %@", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CCA9B8] MSErrorWithDomain:@"MSASProtocolErrorDomain" code:10 description:@"received an error from server" underlyingError:v9];
  v11 = 0;
LABEL_17:
  (*(*(a1 + 40) + 16))();
}

+ (id)_urlSession
{
  if (_urlSession_onceToken != -1)
  {
    dispatch_once(&_urlSession_onceToken, &__block_literal_global_18);
  }

  v3 = _urlSession_session;

  return v3;
}

void __34__MSProtocolUtilities__urlSession__block_invoke()
{
  v3 = [MEMORY[0x277CBABC8] defaultSessionConfiguration];
  v0 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"com.apple.mediastream"];
  [v3 set_appleIDContext:v0];

  v1 = [MEMORY[0x277CBABB8] sessionWithConfiguration:v3];
  v2 = _urlSession_session;
  _urlSession_session = v1;
}

+ (id)appleIDSession
{
  if (appleIDSession_onceToken != -1)
  {
    dispatch_once(&appleIDSession_onceToken, &__block_literal_global_6336);
  }

  v3 = appleIDSession_session;

  return v3;
}

uint64_t __37__MSProtocolUtilities_appleIDSession__block_invoke()
{
  appleIDSession_session = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"com.apple.mediastream"];

  return MEMORY[0x2821F96F8]();
}

+ (id)retryAfterDateBasedOnRetryAfterHeaderString:(id)string
{
  v15 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (!stringCopy)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (_nonNumericNonSpaceCharacterSet_onceToken != -1)
  {
    dispatch_once(&_nonNumericNonSpaceCharacterSet_onceToken, &__block_literal_global_93);
  }

  v4 = _nonNumericNonSpaceCharacterSet_charSet_6338;
  v17.length = CFStringGetLength(stringCopy);
  v17.location = 0;
  if (!CFStringFindCharacterFromSet(stringCopy, v4, v17, 0, 0))
  {
    goto LABEL_11;
  }

  if (_retryAfterDateFormatter_once_6339 != -1)
  {
    dispatch_once(&_retryAfterDateFormatter_once_6339, &__block_literal_global_98);
  }

  DateFromString = CFDateFormatterCreateDateFromString(0, _retryAfterDateFormatter_df_6340, stringCopy, 0);
  if (!DateFromString)
  {
LABEL_11:
    intValue = [(__CFString *)stringCopy intValue];
    if (intValue >= 1)
    {
      v8 = intValue;
      Current = CFAbsoluteTimeGetCurrent();
      v10 = CFDateCreate(0, Current + v8);
      if (v10)
      {
        v6 = v10;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v13 = 67109378;
          *v14 = v8;
          *&v14[4] = 2114;
          *&v14[6] = v6;
          _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Found a retry-after header with a relative interval of %d seconds. Date: %{public}@", &v13, 0x12u);
        }

        goto LABEL_15;
      }
    }

LABEL_19:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      *v14 = stringCopy;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Found a retry-after header that could not be parsed: %{public}@", &v13, 0xCu);
    }

    goto LABEL_21;
  }

  v6 = DateFromString;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = 138543618;
    *v14 = stringCopy;
    *&v14[8] = 2114;
    *&v14[10] = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Found a retry-after header with a date string: %{public}@. Date: %{public}@", &v13, 0x16u);
  }

LABEL_15:
  [(__CFDate *)v6 timeIntervalSinceNow];
  if (v11 > 0.0)
  {
    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    *v14 = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received a retry-after date which occurs in the past: %{public}@. Ignoring.", &v13, 0xCu);
  }

LABEL_21:
  v6 = 0;
LABEL_22:

  return v6;
}

+ (id)deviceInfoDictForPersonID:(id)d
{
  dCopy = d;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MSProtocolUtilities_deviceInfoDictForPersonID___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (deviceInfoDictForPersonID__once != -1)
  {
    dispatch_once(&deviceInfoDictForPersonID__once, block);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = MSPlatform();
  uDID = [v6 UDID];
  if (uDID)
  {
    [dictionary setObject:uDID forKey:@"UDID"];
  }

  if (deviceInfoDictForPersonID__clientInfo)
  {
    [dictionary setObject:deviceInfoDictForPersonID__clientInfo forKey:@"clientInfo"];
  }

  v8 = MSPlatform();
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = MSPlatform();
    v11 = [v10 pushTokenForPersonID:dCopy];

    if (v11)
    {
      [dictionary setObject:v11 forKey:@"pushToken"];
    }
  }

  v12 = MSPlatform();
  v13 = [v12 authTokenForPersonID:dCopy];

  if (v13)
  {
    [dictionary setObject:v13 forKey:@"authToken"];
  }

  return dictionary;
}

void __49__MSProtocolUtilities_deviceInfoDictForPersonID___block_invoke(uint64_t a1)
{
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v14 infoDictionary];
  v13 = [v1 objectForKey:*MEMORY[0x277CBED38]];
  v2 = [v1 objectForKey:@"CFBundleShortVersionString"];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", v13, v2];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = MSPlatform();
  v6 = [v5 hardwareString];
  v7 = MSPlatform();
  v8 = [v7 OSString];
  v9 = MSPlatform();
  v10 = [v9 appBundleInfoString];
  v11 = [v4 initWithFormat:@"<%@><%@><%@ (%@)>", v6, v8, v3, v10];
  v12 = deviceInfoDictForPersonID__clientInfo;
  deviceInfoDictForPersonID__clientInfo = v11;
}

+ (id)Win32SHA1OfUDID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  memset(&v9, 0, sizeof(v9));
  CC_SHA1_Init(&v9);
  CC_SHA1_Update(&v9, &Win32SHA1OfUDID___prepend, 3u);
  uTF8String = [dCopy UTF8String];
  v5 = strlen(uTF8String);
  if (v5 >= 0xFFFFFFFF)
  {
    __assert_rtn("+[MSProtocolUtilities Win32SHA1OfUDID:]", "MSProtocolUtilities.m", 54, "udidLength < UINT32_MAX");
  }

  CC_SHA1_Update(&v9, uTF8String, v5);
  CC_SHA1_Final(md, &v9);
  v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:md length:20 freeWhenDone:0];
  mSHexString = [v6 MSHexString];

  return mSHexString;
}

@end