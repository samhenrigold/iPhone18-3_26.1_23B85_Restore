@interface NDORequestProperties
+ (id)makePropertiesProvider;
- (NDORequestProperties)init;
- (id)OASHeadersWithOfferID:(id)d serialNumber:(id)number primarySerialNumber:(id)serialNumber currentStoreLocaleHeader:(id)header;
- (id)_GSHeadersForAccount:(id)account forceReprovisioning:(BOOL)reprovisioning avoidUI:(BOOL)i;
- (id)_accountHeadersFor:(id)for forceReprovisioning:(BOOL)reprovisioning avoidUI:(BOOL)i;
- (id)_appleIDSesssion;
- (id)_baaManager;
- (id)_deviceProductType;
- (id)_osVersion;
- (id)_storeLocale;
- (id)_userAgentWithBundleID:(id)d;
- (id)basicHeadersWithBundleID:(id)d;
- (id)coverageRequestBodyWithSerialNumber:(id)number primarySerialNumber:(id)serialNumber displayedEvents:(id)events;
- (id)deviceListRequestBodyWithSerialNumber:(id)number localDevices:(id)devices;
- (id)signatureHeadersForBody:(id)body;
- (void)_storeLocale;
@end

@implementation NDORequestProperties

+ (id)makePropertiesProvider
{
  v2 = objc_alloc_init(NDORequestProperties);

  return v2;
}

- (NDORequestProperties)init
{
  v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v4 = [(NDORequestProperties *)self initWithAccountStore:v3];

  return v4;
}

- (id)basicHeadersWithBundleID:(id)d
{
  v14[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    bundleIdentifier = dCopy;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  v13[0] = @"User-Agent";
  v8 = [(NDORequestProperties *)self _userAgentWithBundleID:bundleIdentifier];
  v14[0] = v8;
  v14[1] = bundleIdentifier;
  v13[1] = @"x-apple-bundle-id";
  v13[2] = @"x-apple-os-version";
  _osVersion = [(NDORequestProperties *)self _osVersion];
  v14[2] = _osVersion;
  v13[3] = @"x-apple-primary-device-model";
  _deviceProductType = [(NDORequestProperties *)self _deviceProductType];
  v14[3] = _deviceProductType;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

- (id)deviceListRequestBodyWithSerialNumber:(id)number localDevices:(id)devices
{
  v57 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  devicesCopy = devices;
  v44 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = devicesCopy;
  v6 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v46 + 1) + 8 * i);
        v54[0] = @"serialNumber";
        serialNumber = [v10 serialNumber];
        v55[0] = serialNumber;
        v54[1] = @"modelInfo";
        productID = [v10 productID];
        v55[1] = productID;
        v54[2] = @"deviceName";
        name = [v10 name];
        v55[2] = name;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:3];
        v15 = [v14 mutableCopy];

        color = [v10 color];
        [NDOTypeChecking safeAddValue:color forKey:@"color" toDictionary:v15];

        [v44 addObject:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v7);
  }

  v50[0] = @"primarySN";
  v50[1] = @"localDevices";
  v51[0] = numberCopy;
  v51[1] = v44;
  v52[0] = @"devicesInfo";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
  v53[0] = v17;
  v52[1] = @"storefrontLocale";
  _storeLocale = [(NDORequestProperties *)self _storeLocale];
  v53[1] = _storeLocale;
  v52[2] = @"locale";
  preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];
  v53[2] = localeIdentifier;
  v52[3] = @"requestTimestamp";
  v21 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v24 = [v21 numberWithUnsignedLongLong:(v23 * 1000.0)];
  v53[3] = v24;
  v52[4] = @"requestTimezone";
  v25 = MEMORY[0x277CCABB0];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v27 = [v25 numberWithInt:{(objc_msgSend(localTimeZone, "secondsFromGMT") / 3600)}];
  v53[4] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:5];

  v45 = 0;
  v29 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v28 options:0 error:&v45];
  v30 = v45;
  v31 = v30;
  if (v29)
  {
    v32 = v29;
  }

  else
  {
    v33 = _NDOLogSystem(v30);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [(NDORequestProperties *)v31 deviceListRequestBodyWithSerialNumber:v33 localDevices:v34, v35, v36, v37, v38, v39];
    }
  }

  return v29;
}

- (id)coverageRequestBodyWithSerialNumber:(id)number primarySerialNumber:(id)serialNumber displayedEvents:(id)events
{
  v40[5] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  serialNumberCopy = serialNumber;
  eventsCopy = events;
  if (numberCopy)
  {
    v9 = numberCopy;
  }

  else
  {
    v9 = @"empty";
  }

  v10 = v9;
  if (serialNumberCopy)
  {
    v11 = serialNumberCopy;
  }

  else
  {
    v11 = @"empty";
  }

  v39[0] = @"serialNumber";
  v39[1] = @"x-apple-primary-sn";
  v37 = v11;
  v38 = v10;
  v40[0] = v10;
  v40[1] = v37;
  v39[2] = @"locale";
  preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];
  v40[2] = localeIdentifier;
  v39[3] = @"requestTimestamp";
  v14 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v17 = [v14 numberWithUnsignedLongLong:(v16 * 1000.0)];
  v40[3] = v17;
  v39[4] = @"requestTimezone";
  v18 = MEMORY[0x277CCABB0];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v20 = [v18 numberWithInt:{(objc_msgSend(localTimeZone, "secondsFromGMT") / 3600)}];
  v40[4] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:5];
  v22 = [v21 mutableCopy];

  v23 = eventsCopy;
  if (eventsCopy)
  {
    [NDOTypeChecking safeAddValue:eventsCopy forKey:@"displayedEvents" toDictionary:v22];
  }

  v24 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v22 options:0 error:{0, eventsCopy}];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v27 = _NDOLogSystem(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(NDORequestProperties *)v27 coverageRequestBodyWithSerialNumber:v28 primarySerialNumber:v29 displayedEvents:v30, v31, v32, v33, v34];
    }
  }

  return v25;
}

- (id)OASHeadersWithOfferID:(id)d serialNumber:(id)number primarySerialNumber:(id)serialNumber currentStoreLocaleHeader:(id)header
{
  v26 = *MEMORY[0x277D85DE8];
  headerCopy = header;
  v11 = MEMORY[0x277CBEB38];
  serialNumberCopy = serialNumber;
  numberCopy = number;
  dCopy = d;
  dictionary = [v11 dictionary];
  [NDOTypeChecking safeAddValue:numberCopy forKey:@"X-Apple-SN" toDictionary:dictionary];

  [NDOTypeChecking safeAddValue:serialNumberCopy forKey:@"x-apple-primary-sn" toDictionary:dictionary];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [NDOTypeChecking safeAddValue:uUIDString forKey:@"X-Apple-Txn-ID" toDictionary:dictionary];

  v18 = CFPreferencesCopyAppValue(@"UIPreferredContentSizeCategoryName", @"com.apple.UIKit");
  [NDOTypeChecking safeAddValue:v18 forKey:@"X-Apple-Content-Size" toDictionary:dictionary];
  [NDOTypeChecking safeAddValue:@"No" forKey:@"X-Apple-DM" toDictionary:dictionary];
  [NDOTypeChecking safeAddValue:dCopy forKey:@"Offer-ID" toDictionary:dictionary];

  v19 = [NDOTypeChecking isNotEmptyString:headerCopy];
  if (v19)
  {
    _storeLocale = _NDOLogSystem(v19);
    if (os_log_type_enabled(_storeLocale, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = headerCopy;
      _os_log_impl(&dword_25BD52000, _storeLocale, OS_LOG_TYPE_DEFAULT, "storeLocale already set to %@", &v24, 0xCu);
    }
  }

  else
  {
    _storeLocale = [(NDORequestProperties *)self _storeLocale];
    v21 = _NDOLogSystem(_storeLocale);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = _storeLocale;
      _os_log_impl(&dword_25BD52000, v21, OS_LOG_TYPE_DEFAULT, "storeLocale %@", &v24, 0xCu);
    }

    [NDOTypeChecking safeAddValue:_storeLocale forKey:@"storefrontLocale" toDictionary:dictionary];
  }

  v22 = [dictionary copy];

  return v22;
}

- (id)signatureHeadersForBody:(id)body
{
  v25 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  v5 = _NDOLogSystem(bodyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v24 = "[NDORequestProperties signatureHeadersForBody:]";
    _os_log_impl(&dword_25BD52000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Initiating device authentication", buf, 0xCu);
  }

  _baaManager = [(NDORequestProperties *)self _baaManager];
  v7 = [_baaManager generateBAACertficate:&__block_literal_global];
  v8 = _NDOLogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    *buf = 138412290;
    v24 = v9;
    _os_log_impl(&dword_25BD52000, v8, OS_LOG_TYPE_DEFAULT, "BAA certificate generation success: %@", buf, 0xCu);
  }

  if (v7)
  {
    v22 = 0;
    v10 = [_baaManager BAAAuthenticationHeadersForBody:bodyCopy error:&v22];
    v11 = v22;
    v12 = _NDOLogSystem(v11);
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25BD52000, v13, OS_LOG_TYPE_DEFAULT, "Device authentication successful", buf, 2u);
      }

      v14 = v10;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(NDORequestProperties *)v11 signatureHeadersForBody:v13, v15, v16, v17, v18, v19, v20];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __48__NDORequestProperties_signatureHeadersForBody___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v5 = v4;
  if (v4)
  {
    v6 = _NDOLogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __48__NDORequestProperties_signatureHeadersForBody___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

- (id)_accountHeadersFor:(id)for forceReprovisioning:(BOOL)reprovisioning avoidUI:(BOOL)i
{
  iCopy = i;
  reprovisioningCopy = reprovisioning;
  v27 = *MEMORY[0x277D85DE8];
  forCopy = for;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  accountStore = [(NDORequestProperties *)self accountStore];
  aida_accountForPrimaryiCloudAccount = [accountStore aida_accountForPrimaryiCloudAccount];

  if (aida_accountForPrimaryiCloudAccount)
  {
    v13 = [(NDORequestProperties *)self _GSHeadersForAccount:aida_accountForPrimaryiCloudAccount forceReprovisioning:reprovisioningCopy avoidUI:iCopy];
    if (v13)
    {
      [dictionary addEntriesFromDictionary:v13];
      ak_clientInfoHeader = [MEMORY[0x277CCAB70] ak_clientInfoHeader];
      [dictionary addEntriesFromDictionary:ak_clientInfoHeader];

      ak_deviceUDIDHeader = [MEMORY[0x277CCAB70] ak_deviceUDIDHeader];
      [dictionary addEntriesFromDictionary:ak_deviceUDIDHeader];

      _appleIDSesssion = [(NDORequestProperties *)self _appleIDSesssion];
      v17 = [_appleIDSesssion appleIDHeadersForRequest:forCopy];
      [dictionary addEntriesFromDictionary:v17];

      aa_altDSID = [aida_accountForPrimaryiCloudAccount aa_altDSID];
      [NDOTypeChecking safeAddValue:aa_altDSID forKey:@"X-Apple-I-Identity-Id" toDictionary:dictionary];

      v19 = [forCopy valueForHTTPHeaderField:@"storefrontLocale"];
      v20 = [NDOTypeChecking isNotEmptyString:v19];
      if (v20)
      {
        _storeLocale = _NDOLogSystem(v20);
        if (os_log_type_enabled(_storeLocale, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = v19;
          _os_log_impl(&dword_25BD52000, _storeLocale, OS_LOG_TYPE_DEFAULT, "storeLocale already set to %@", &v25, 0xCu);
        }
      }

      else
      {
        _storeLocale = [(NDORequestProperties *)self _storeLocale];
        v23 = _NDOLogSystem(_storeLocale);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = _storeLocale;
          _os_log_impl(&dword_25BD52000, v23, OS_LOG_TYPE_DEFAULT, "storeLocale %@", &v25, 0xCu);
        }

        [NDOTypeChecking safeAddValue:_storeLocale forKey:@"storefrontLocale" toDictionary:dictionary];
      }

      v22 = [dictionary copy];
    }

    else
    {
      v19 = _NDOLogSystem(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_25BD52000, v19, OS_LOG_TYPE_DEFAULT, "Failed to add GS headers, can't sign this request", &v25, 2u);
      }

      v22 = 0;
    }
  }

  else
  {
    v13 = _NDOLogSystem(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_25BD52000, v13, OS_LOG_TYPE_DEFAULT, "No primary iCloud account, can't sign this request", &v25, 2u);
    }

    v22 = 0;
  }

  return v22;
}

- (id)_GSHeadersForAccount:(id)account forceReprovisioning:(BOOL)reprovisioning avoidUI:(BOOL)i
{
  iCopy = i;
  reprovisioningCopy = reprovisioning;
  v46[2] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  accountStore = [(NDORequestProperties *)self accountStore];
  v10 = [accountStore aida_accountForiCloudAccount:accountCopy];

  if (!v10)
  {
    v15 = _NDOLogSystem(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&dword_25BD52000, v15, OS_LOG_TYPE_DEFAULT, "GrandSlam signing failed because no GS account was provided.", v37, 2u);
    }

    goto LABEL_14;
  }

  aida_alternateDSID = [v10 aida_alternateDSID];

  if (!aida_alternateDSID)
  {
    v15 = _NDOLogSystem(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [NDORequestProperties _GSHeadersForAccount:v15 forceReprovisioning:? avoidUI:?];
    }

LABEL_14:
    v25 = 0;
    goto LABEL_15;
  }

  accountStore2 = [(NDORequestProperties *)self accountStore];
  v15 = [accountStore2 credentialForAccount:v10 serviceID:@"com.apple.gs.supportapp.auth"];

  *v37 = 0;
  v38 = v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  token = [v15 token];
  v42 = token;
  v17 = *(v38 + 5);
  if (v17 && !reprovisioningCopy)
  {
    goto LABEL_8;
  }

  v18 = _NDOLogSystem(token);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25BD52000, v18, OS_LOG_TYPE_DEFAULT, "Reprovision GS tokens", buf, 2u);
  }

  v19 = dispatch_semaphore_create(0);
  v45[0] = *MEMORY[0x277CB9098];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:iCopy];
  v45[1] = *MEMORY[0x277CB9090];
  v46[0] = v20;
  v46[1] = &unk_286D6E510;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];

  accountStore3 = [(NDORequestProperties *)self accountStore];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __73__NDORequestProperties__GSHeadersForAccount_forceReprovisioning_avoidUI___block_invoke;
  v31 = &unk_279976290;
  selfCopy = self;
  v33 = v10;
  v35 = v37;
  v23 = v19;
  v34 = v23;
  [accountStore3 renewCredentialsForAccount:v33 options:v21 completion:&v28];

  dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
  v17 = *(v38 + 5);
  if (v17)
  {
LABEL_8:
    v43 = @"X-Apple-GS-Token";
    v44 = v17;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:{1, v28, v29, v30, v31, selfCopy}];
  }

  else
  {
    v27 = _NDOLogSystem(v24);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25BD52000, v27, OS_LOG_TYPE_DEFAULT, "Error: still no GS token even after calling renewCredentialsForAccount.", buf, 2u);
    }

    v25 = 0;
  }

  _Block_object_dispose(v37, 8);

LABEL_15:

  return v25;
}

void __73__NDORequestProperties__GSHeadersForAccount_forceReprovisioning_avoidUI___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = _NDOLogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__NDORequestProperties__GSHeadersForAccount_forceReprovisioning_avoidUI___block_invoke_cold_1(v6, a2, v7);
    }
  }

  else
  {
    v8 = [*(a1 + 32) accountStore];
    v7 = [v8 credentialForAccount:*(a1 + 40) serviceID:@"com.apple.gs.supportapp.auth"];

    v9 = [v7 token];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (id)_storeLocale
{
  v31 = *MEMORY[0x277D85DE8];
  accountStore = [(NDORequestProperties *)self accountStore];
  ams_sharedAccountStore = [objc_opt_class() ams_sharedAccountStore];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults objectForKey:@"storefrontLocale"];

  if ([NDOTypeChecking isNotEmptyString:v5])
  {
    ams_storefront = v5;
    goto LABEL_15;
  }

  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  if (!ams_activeiTunesAccount)
  {
    v19 = _NDOLogSystem(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136446210;
      v30 = "[NDORequestProperties _storeLocale]";
      _os_log_impl(&dword_25BD52000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s No active itunes account. Falling back to local account", &v29, 0xCu);
    }

    ams_localiTunesAccount = [ams_sharedAccountStore ams_localiTunesAccount];
    v8 = ams_localiTunesAccount;
    goto LABEL_11;
  }

  v8 = ams_activeiTunesAccount;
  ams_storefront = [ams_activeiTunesAccount ams_storefront];
  v9 = [NDOTypeChecking isNotEmptyString:ams_storefront];
  if ((v9 & 1) == 0)
  {
    v10 = _NDOLogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(NDORequestProperties *)v10 _storeLocale:v11];
    }

LABEL_11:
    v20 = _NDOLogSystem(ams_localiTunesAccount);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(NDORequestProperties *)v20 _storeLocale:v21];
    }

    ams_storefront = &stru_286D686B8;
  }

LABEL_15:

  return ams_storefront;
}

- (id)_osVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)_deviceProductType
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)_userAgentWithBundleID:(id)d
{
  dCopy = d;
  _osVersion = [(NDORequestProperties *)self _osVersion];
  _deviceProductType = [(NDORequestProperties *)self _deviceProductType];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@/%@/%@>", dCopy, _osVersion, _deviceProductType];

  return v7;
}

- (id)_appleIDSesssion
{
  v2 = objc_opt_new();

  return v2;
}

- (id)_baaManager
{
  v2 = objc_opt_new();

  return v2;
}

- (void)deviceListRequestBodyWithSerialNumber:(uint64_t)a3 localDevices:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_25BD52000, a2, a3, "Unable to serialize device list request body, error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)signatureHeadersForBody:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_25BD52000, a2, a3, "Device authentication failed with error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __48__NDORequestProperties_signatureHeadersForBody___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_25BD52000, a2, a3, "Device authentication failed while generating certificate with error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __73__NDORequestProperties__GSHeadersForAccount_forceReprovisioning_avoidUI___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_25BD52000, log, OS_LOG_TYPE_ERROR, "No way to sign request with GS token because renewal of GS credential failed: %ld, %@", &v3, 0x16u);
}

- (void)_storeLocale
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[NDORequestProperties _storeLocale]";
  OUTLINED_FUNCTION_0_0(&dword_25BD52000, self, a3, "%{public}s Failed to determine storefront locale", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end