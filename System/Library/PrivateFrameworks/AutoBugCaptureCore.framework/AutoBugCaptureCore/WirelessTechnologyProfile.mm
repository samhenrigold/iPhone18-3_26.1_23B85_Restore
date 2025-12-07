@interface WirelessTechnologyProfile
+ (id)fetchFormattedHomeCarrierNameForContext:(id)context;
+ (id)fetchMCCMNCHomeCarrierNameForContext:(id)context;
+ (id)fetchRegulatoryDomainCountry;
+ (id)sharedInstance;
- (WirelessTechnologyProfile)init;
- (id)fetchHomeCarrier;
- (void)carrierBundleChange:(id)change;
- (void)currentDataSimChanged:(id)changed;
- (void)dealloc;
- (void)subscriptionInfoDidChange;
- (void)updateHomeCarrier;
@end

@implementation WirelessTechnologyProfile

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[WirelessTechnologyProfile sharedInstance];
  }

  v3 = sharedInstance_sharedProfile;

  return v3;
}

uint64_t __43__WirelessTechnologyProfile_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WirelessTechnologyProfile);
  v1 = sharedInstance_sharedProfile;
  sharedInstance_sharedProfile = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WirelessTechnologyProfile)init
{
  v26 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = WirelessTechnologyProfile;
  v2 = [(WirelessTechnologyProfile *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.autobugcapture.wirelesstechnologyprofile", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    regulatoryDomainCountry = v2->_regulatoryDomainCountry;
    v2->_regulatoryDomainCountry = @"Unknown";

    homeCarrier = v2->_homeCarrier;
    v2->_homeCarrier = @"Unknown";

    dataContext = v2->_dataContext;
    v2->_dataContext = 0;

    out_token = -1;
    objc_initWeak(&location, v2);
    uTF8String = [*MEMORY[0x277D443B8] UTF8String];
    v10 = v2->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __33__WirelessTechnologyProfile_init__block_invoke;
    handler[3] = &unk_278CF09E0;
    objc_copyWeak(&v20, &location);
    v11 = notify_register_dispatch(uTF8String, &out_token, v10, handler);
    v12 = v11;
    if (v11)
    {
      v13 = symptomsLogHandle(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v25 = v12;
        _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "Failed to register for regulatory domain update notification: %u", buf, 8u);
      }
    }

    v2->_regulatoryDomainUpdateNotificationToken = out_token;
    v14 = +[WirelessTechnologyProfile fetchRegulatoryDomainCountry];
    [(WirelessTechnologyProfile *)v2 setRegulatoryDomainCountry:v14];

    v15 = +[CoreTelephonyShim sharedInstance];
    [v15 addDelegate:v2];

    fetchHomeCarrier = [(WirelessTechnologyProfile *)v2 fetchHomeCarrier];
    [(WirelessTechnologyProfile *)v2 setHomeCarrier:fetchHomeCarrier];

    v17 = v2;
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __33__WirelessTechnologyProfile_init__block_invoke(uint64_t a1)
{
  v2 = symptomsLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Received notification for regulatory domain country, updating value", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[WirelessTechnologyProfile fetchRegulatoryDomainCountry];
    [WeakRetained setRegulatoryDomainCountry:v4];
  }
}

- (void)dealloc
{
  regulatoryDomainUpdateNotificationToken = self->_regulatoryDomainUpdateNotificationToken;
  if (regulatoryDomainUpdateNotificationToken != -1)
  {
    notify_cancel(regulatoryDomainUpdateNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = WirelessTechnologyProfile;
  [(WirelessTechnologyProfile *)&v4 dealloc];
}

+ (id)fetchRegulatoryDomainCountry
{
  if (!fetchRegulatoryDomainCountry_enUSLocale)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
    v3 = fetchRegulatoryDomainCountry_enUSLocale;
    fetchRegulatoryDomainCountry_enUSLocale = v2;
  }

  lastKnownEstimates = [MEMORY[0x277D443A8] lastKnownEstimates];
  if ([lastKnownEstimates count])
  {
    v5 = [lastKnownEstimates objectAtIndexedSubscript:0];
    countryCode = [v5 countryCode];

    if (countryCode)
    {
      v8 = [fetchRegulatoryDomainCountry_enUSLocale localizedStringForCountryCode:countryCode];
      v9 = v8;
      if (v8)
      {
        v9 = v8;
        v10 = v9;
LABEL_16:

        goto LABEL_17;
      }

      v11 = symptomsLogHandle(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "Error while fetching regulatory domain country: no localized string", v13, 2u);
      }
    }

    else
    {
      v9 = symptomsLogHandle(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "Error while fetching regulatory domain country: no ISO code", v14, 2u);
      }
    }

    v10 = @"Unknown";
    goto LABEL_16;
  }

  countryCode = symptomsLogHandle(0);
  if (os_log_type_enabled(countryCode, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, countryCode, OS_LOG_TYPE_ERROR, "Error while fetching regulatory domain country: no estimates", buf, 2u);
  }

  v10 = @"Unknown";
LABEL_17:

  return v10;
}

+ (id)fetchFormattedHomeCarrierNameForContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (!fetchFormattedHomeCarrierNameForContext__sInvalidCarrierNames)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_28537A6B0];
    v5 = fetchFormattedHomeCarrierNameForContext__sInvalidCarrierNames;
    fetchFormattedHomeCarrierNameForContext__sInvalidCarrierNames = v4;
  }

  v6 = +[CoreTelephonyShim sharedInstance];
  v7 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
  v30 = 0;
  v8 = [v6 copyCarrierBundleValue:contextCopy key:@"CarrierName" bundleType:v7 error:&v30];
  v9 = v30;

  if (!v9)
  {
    if (v8)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v11 = +[CoreTelephonyShim sharedInstance];
        v29 = 0;
        v12 = [v11 getEnglishCarrierNameFor:v8 error:&v29];
        v9 = v29;

        if (v9 || !v12)
        {
          v15 = symptomsLogHandle(v13);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v9;
            _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, "Error fetching english carrier name: %@", buf, 0xCu);
          }
        }

        else
        {
          v14 = [fetchFormattedHomeCarrierNameForContext__sInvalidCarrierNames containsObject:v12];
          if (v14)
          {
            v15 = symptomsLogHandle(v14);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v32 = v12;
              _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_INFO, "Carrier name invalid: %@", buf, 0xCu);
            }

            v9 = 0;
          }

          else
          {
            v17 = +[CoreTelephonyShim sharedInstance];
            v18 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:5];
            v28 = 0;
            v15 = [v17 copyCarrierBundleValue:contextCopy key:@"ISOAlpha2CountryCode" bundleType:v18 error:&v28];
            v9 = v28;

            if (!v9)
            {
              if (v15)
              {
                objc_opt_class();
                v19 = objc_opt_isKindOfClass();
                if (v19)
                {
                  v15 = v15;
                  if ([v15 count])
                  {
                    v20 = [v15 objectAtIndexedSubscript:0];
                    objc_opt_class();
                    v21 = objc_opt_isKindOfClass();
                    if (v21)
                    {
                      v22 = v20;
                      v23 = [v22 length];
                      if (v23 == 2)
                      {
                        v24 = objc_alloc(MEMORY[0x277CCACA8]);
                        uppercaseString = [v22 uppercaseString];
                        v16 = [v24 initWithFormat:@"%@ %@", v12, uppercaseString];
                      }

                      else
                      {
                        uppercaseString = symptomsLogHandle(v23);
                        if (os_log_type_enabled(uppercaseString, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_241804000, uppercaseString, OS_LOG_TYPE_ERROR, "Country code has unexpected length", buf, 2u);
                        }

                        v16 = 0;
                      }
                    }

                    else
                    {
                      v22 = symptomsLogHandle(v21);
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_ERROR, "Country code is not a string", buf, 2u);
                      }

                      v16 = 0;
                    }
                  }

                  else
                  {
                    v20 = symptomsLogHandle(0);
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_ERROR, "Country codes from bundle are empty", buf, 2u);
                    }

                    v16 = 0;
                  }

                  goto LABEL_28;
                }
              }
            }

            v26 = symptomsLogHandle(v19);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v32 = v9;
              _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_ERROR, "Error fetching country code from bundle: %@", buf, 0xCu);
            }
          }
        }

        v16 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }
  }

  v12 = symptomsLogHandle(isKindOfClass);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v32 = v9;
    _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "Error fetching carrier name from bundle: %@", buf, 0xCu);
  }

  v16 = 0;
LABEL_29:

  return v16;
}

+ (id)fetchMCCMNCHomeCarrierNameForContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = +[CoreTelephonyShim sharedInstance];
  v16 = 0;
  v5 = [v4 copyMobileCountryCode:contextCopy error:&v16];
  v6 = v16;

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5 == 0;
  }

  if (v8)
  {
    v10 = symptomsLogHandle(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Failed to fetch MCC: %@", buf, 0xCu);
    }
  }

  else
  {
    v9 = +[CoreTelephonyShim sharedInstance];
    v15 = 0;
    v10 = [v9 copyMobileNetworkCode:contextCopy error:&v15];
    v6 = v15;

    if (!v6 && v10)
    {
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown (mcc=%@, mnc=%@)", v5, v10];
      goto LABEL_15;
    }

    v13 = symptomsLogHandle(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch MNC: %@", buf, 0xCu);
    }
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (id)fetchHomeCarrier
{
  v17 = *MEMORY[0x277D85DE8];
  dataContext = [(WirelessTechnologyProfile *)self dataContext];
  if (dataContext)
  {
LABEL_5:
    v7 = [WirelessTechnologyProfile fetchFormattedHomeCarrierNameForContext:dataContext];
    v5 = v7;
    if (v7)
    {
      v5 = v7;
      v8 = v5;
    }

    else
    {
      v9 = [WirelessTechnologyProfile fetchMCCMNCHomeCarrierNameForContext:dataContext];
      v10 = v9;
      v11 = @"Unknown";
      if (v9)
      {
        v11 = v9;
      }

      v8 = v11;
    }

    goto LABEL_13;
  }

  v4 = +[CoreTelephonyShim sharedInstance];
  v14 = 0;
  dataContext = [v4 getCurrentDataSubscriptionContextSync:&v14];
  v5 = v14;

  if (!v5 && dataContext)
  {
    [(WirelessTechnologyProfile *)self setDataContext:dataContext];
    goto LABEL_5;
  }

  v12 = symptomsLogHandle(v6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "Error while fetching data context: %@", buf, 0xCu);
  }

  v8 = @"Unknown";
LABEL_13:

  return v8;
}

- (void)updateHomeCarrier
{
  v3 = symptomsLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "Received notification for home carrier, updating value", v5, 2u);
  }

  fetchHomeCarrier = [(WirelessTechnologyProfile *)self fetchHomeCarrier];
  [(WirelessTechnologyProfile *)self setHomeCarrier:fetchHomeCarrier];
}

- (void)subscriptionInfoDidChange
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[CoreTelephonyShim sharedInstance];
  v16 = 0;
  v4 = [v3 getCurrentDataSubscriptionContextSync:&v16];
  v5 = v16;

  v7 = symptomsLogHandle(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "Error while fetching data context: %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      dataContext = [(WirelessTechnologyProfile *)self dataContext];
      uuid = [dataContext uuid];
      uuid2 = [v4 uuid];
      *buf = 138412546;
      v18 = uuid;
      v19 = 2112;
      v20 = uuid2;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "subscriptionInfoDidChange: %@ -> %@", buf, 0x16u);
    }

    if (v4)
    {
      uuid3 = [v4 uuid];
      dataContext2 = [(WirelessTechnologyProfile *)self dataContext];
      uuid4 = [dataContext2 uuid];
      v15 = [uuid3 isEqual:uuid4];

      if ((v15 & 1) == 0)
      {
        [(WirelessTechnologyProfile *)self setDataContext:v4];
        [(WirelessTechnologyProfile *)self updateHomeCarrier];
      }
    }

    else
    {
      [(WirelessTechnologyProfile *)self setDataContext:0];
      [(WirelessTechnologyProfile *)self setHomeCarrier:@"Unknown"];
    }
  }
}

- (void)currentDataSimChanged:(id)changed
{
  v17 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = symptomsLogHandle(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    dataContext = [(WirelessTechnologyProfile *)self dataContext];
    uuid = [dataContext uuid];
    uuid2 = [changedCopy uuid];
    v13 = 138412546;
    v14 = uuid;
    v15 = 2112;
    v16 = uuid2;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "currentDataSimChanged: %@ -> %@", &v13, 0x16u);
  }

  if (changedCopy)
  {
    uuid3 = [changedCopy uuid];
    dataContext2 = [(WirelessTechnologyProfile *)self dataContext];
    uuid4 = [dataContext2 uuid];
    v12 = [uuid3 isEqual:uuid4];

    if ((v12 & 1) == 0)
    {
      [(WirelessTechnologyProfile *)self setDataContext:changedCopy];
      [(WirelessTechnologyProfile *)self updateHomeCarrier];
    }
  }
}

- (void)carrierBundleChange:(id)change
{
  v13 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = symptomsLogHandle(changeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uuid = [changeCopy uuid];
    v11 = 138412290;
    v12 = uuid;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "carrierBundleChange: %@", &v11, 0xCu);
  }

  uuid2 = [changeCopy uuid];
  dataContext = [(WirelessTechnologyProfile *)self dataContext];
  uuid3 = [dataContext uuid];
  v10 = [uuid2 isEqual:uuid3];

  if (v10)
  {
    [(WirelessTechnologyProfile *)self updateHomeCarrier];
  }
}

@end