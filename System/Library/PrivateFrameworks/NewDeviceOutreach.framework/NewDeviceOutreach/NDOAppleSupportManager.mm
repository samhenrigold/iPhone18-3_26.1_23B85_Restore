@interface NDOAppleSupportManager
- (void)appSupportAvailability:(id)availability withReply:(id)reply;
- (void)checkIsAvailableInStore:(id)store withReply:(id)reply;
@end

@implementation NDOAppleSupportManager

- (void)checkIsAvailableInStore:(id)store withReply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  replyCopy = reply;
  v7 = _NDOLogSystem(replyCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = storeCopy;
    _os_log_impl(&dword_25BD52000, v7, OS_LOG_TYPE_DEFAULT, "Checking for %@ in the App Store", buf, 0xCu);
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [standardUserDefaults objectForKey:@"AppSupportAvailability"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v22[0] = @"AppTitleKey";
    v22[1] = @"AppVendorName";
    v23[0] = @"Apple Support";
    v23[1] = @"Apple";
    v22[2] = @"AppAvailablityText";
    v22[3] = @"AppAvailabilityType";
    v23[2] = @"OVERRIDE";
    v23[3] = &unk_286D6E468;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
    replyCopy[2](replyCopy, v11);
  }

  else
  {
    v12 = MEMORY[0x277CEE3F8];
    bagSubProfile = [MEMORY[0x277CEE570] bagSubProfile];
    bagSubProfileVersion = [MEMORY[0x277CEE570] bagSubProfileVersion];
    v11 = [v12 bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

    v15 = [objc_alloc(MEMORY[0x277CEE570]) initWithType:0 clientIdentifier:@"com.apple.preferences.applesupport" clientVersion:@"1" bag:v11];
    v21 = storeCopy;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [v15 setBundleIdentifiers:v16];

    perform = [v15 perform];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__NDOAppleSupportManager_checkIsAvailableInStore_withReply___block_invoke;
    v18[3] = &unk_279976350;
    v19 = storeCopy;
    v20 = replyCopy;
    [perform addFinishBlock:v18];
  }
}

void __60__NDOAppleSupportManager_checkIsAvailableInStore_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v34 = _NDOLogSystem(v6);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 32);
      *buf = 138412546;
      v45 = v35;
      v46 = 2112;
      v47 = v7;
      _os_log_impl(&dword_25BD52000, v34, OS_LOG_TYPE_DEFAULT, "Lookup for %@ in the App Store failed with error %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [v5 responseDataItems];
    v9 = [v8 count];

    if (v9 == 1)
    {
      v10 = [v5 responseDataItems];
      v11 = [v10 firstObject];

      v12 = [v11 objectForKeyedSubscript:@"attributes"];
      v13 = v12;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      if (v11 && v12)
      {
        v14 = [v12 objectForKeyedSubscript:@"artistName"];
        v39 = [v13 objectForKeyedSubscript:@"name"];
        v38 = [v13 objectForKeyedSubscript:@"platformAttributes"];
        v17 = [v38 objectForKeyedSubscript:@"ios"];
        v18 = [v17 objectForKeyedSubscript:@"artwork"];
        v19 = [v18 objectForKeyedSubscript:@"url"];
        v20 = v13;
        v21 = v11;
        v22 = v19;
        v23 = &stru_286D686B8;
        if (v19)
        {
          v23 = v19;
        }

        v16 = v23;

        v11 = v21;
        v13 = v20;

        v15 = v39;
      }

      v24 = [v13 objectForKeyedSubscript:@"url"];
      v25 = v24;
      v26 = &stru_286D686B8;
      if (v24)
      {
        v26 = v24;
      }

      v27 = v26;

      if ([(__CFString *)v27 length])
      {
        v28 = [(__CFString *)v27 stringByAppendingString:@"?pt=2003&ct=coverage.settings&mt=8"];

        v27 = v28;
      }

      v29 = *(a1 + 40);
      v42[0] = @"AppLinkURL";
      v42[1] = @"AppIconURL";
      if (v16)
      {
        v30 = v16;
      }

      else
      {
        v30 = &stru_286D686B8;
      }

      v43[0] = v27;
      v43[1] = v30;
      if (v15)
      {
        v31 = v15;
      }

      else
      {
        v31 = &stru_286D686B8;
      }

      v42[2] = @"AppTitleKey";
      v42[3] = @"AppVendorName";
      if (v14)
      {
        v32 = v14;
      }

      else
      {
        v32 = &stru_286D686B8;
      }

      v43[2] = v31;
      v43[3] = v32;
      v42[4] = @"AppAvailablityText";
      v42[5] = @"AppAvailabilityType";
      v43[4] = @"Free – On the App Store";
      v43[5] = &unk_286D6E480;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:6];
      (*(v29 + 16))(v29, v33);
    }

    else
    {
      v36 = *(a1 + 40);
      v40 = @"AppAvailabilityType";
      v41 = &unk_286D6E498;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      (*(v36 + 16))(v36, v37);
    }
  }
}

- (void)appSupportAvailability:(id)availability withReply:(id)reply
{
  v40[1] = *MEMORY[0x277D85DE8];
  availabilityCopy = availability;
  replyCopy = reply;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v39 = @"AppBundleID";
  v40[0] = availabilityCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v32 = [v8 mutableCopy];

  v9 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:availabilityCopy];
  appState = [v9 appState];
  isInstalled = [appState isInstalled];

  if (isInstalled)
  {
    vendorName = [v9 vendorName];
    localizedName = [v9 localizedName];
    v14 = _NDOLogSystem(localizedName);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = availabilityCopy;
      v37 = 2112;
      v38 = localizedName;
      _os_log_impl(&dword_25BD52000, v14, OS_LOG_TYPE_DEFAULT, "appSupportAvailability %@ %@ is installed.", buf, 0x16u);
    }

    v15 = v28[5];
    v16 = &stru_286D686B8;
    v33[0] = @"AppTitleKey";
    v33[1] = @"AppVendorName";
    if (localizedName)
    {
      v17 = localizedName;
    }

    else
    {
      v17 = &stru_286D686B8;
    }

    if (vendorName)
    {
      v16 = vendorName;
    }

    v34[0] = v17;
    v34[1] = v16;
    v33[2] = @"AppAvailablityText";
    v18 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
    v19 = [v18 localizedStringForKey:@"INSTALLED" value:&stru_286D686B8 table:@"Localizable"];
    v33[3] = @"AppAvailabilityType";
    v34[2] = v19;
    v34[3] = &unk_286D6E468;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
    [v15 addEntriesFromDictionary:v20];

    replyCopy[2](replyCopy, v28[5]);
  }

  else
  {
    vendorName = [(NDOAppleSupportManager *)self checkAppIsPurchased:availabilityCopy];
    v21 = [(__CFString *)vendorName objectForKey:@"AppAvailabilityType"];
    localizedName = v21;
    if (vendorName && (v22 = [(__CFString *)v21 intValue], v22))
    {
      v23 = _NDOLogSystem(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = availabilityCopy;
        _os_log_impl(&dword_25BD52000, v23, OS_LOG_TYPE_DEFAULT, "appSupportAvailability %@ is purchased.", buf, 0xCu);
      }

      [v28[5] addEntriesFromDictionary:vendorName];
      replyCopy[2](replyCopy, v28[5]);
    }

    else
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __59__NDOAppleSupportManager_appSupportAvailability_withReply___block_invoke;
      v24[3] = &unk_279976378;
      v26 = &v27;
      v25 = replyCopy;
      [(NDOAppleSupportManager *)self checkIsAvailableInStore:availabilityCopy withReply:v24];
    }
  }

  _Block_object_dispose(&v27, 8);
}

void __59__NDOAppleSupportManager_appSupportAvailability_withReply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25BD52000, v4, OS_LOG_TYPE_DEFAULT, "AppStore --> appSupportAvailability %@.", &v5, 0xCu);
  }

  if (v3)
  {
    [*(*(*(a1 + 40) + 8) + 40) addEntriesFromDictionary:v3];
  }

  (*(*(a1 + 32) + 16))();
}

@end