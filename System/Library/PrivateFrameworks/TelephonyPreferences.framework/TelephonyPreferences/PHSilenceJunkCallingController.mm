@interface PHSilenceJunkCallingController
- (BOOL)supportsCallBlockingForSubscriptionContext:(id)context;
- (NSArray)specifiers;
- (PHSilenceJunkCallingController)initWithCoreTelephonyClient:(id)client queue:(id)queue;
- (id)getSilenceJunkCallingEnabled:(id)enabled;
- (id)informationalUrlForSubscriptionContext:(id)context;
- (id)objectForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error;
- (id)stringForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error;
- (void)setSilenceJunkCallingEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation PHSilenceJunkCallingController

- (PHSilenceJunkCallingController)initWithCoreTelephonyClient:(id)client queue:(id)queue
{
  clientCopy = client;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = PHSilenceJunkCallingController;
  v9 = [(PHSilenceJunkCallingController *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ctClient, client);
    v11 = objc_alloc_init(MEMORY[0x277D6EED8]);
    featureFlags = v10->_featureFlags;
    v10->_featureFlags = v11;

    v13 = objc_alloc_init(MEMORY[0x277D6EE48]);
    configurationProvider = v10->_configurationProvider;
    v10->_configurationProvider = v13;

    v15 = objc_alloc_init(PHCallBlockingServiceProviderController);
    serviceProviderController = v10->_serviceProviderController;
    v10->_serviceProviderController = v15;

    v17 = objc_alloc_init(TPSCarrierBundleController);
    carrierBundleController = v10->_carrierBundleController;
    v10->_carrierBundleController = v17;

    [(TPSController *)v10->_carrierBundleController addDelegate:v10 queue:queueCopy];
  }

  return v10;
}

- (NSArray)specifiers
{
  v39 = *MEMORY[0x277D85DE8];
  p_specifiers = &self->_specifiers;
  specifiers = self->_specifiers;
  if (specifiers)
  {
    v4 = specifiers;
    goto LABEL_17;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  serviceProviderController = [(PHSilenceJunkCallingController *)self serviceProviderController];
  serviceProviders = [serviceProviderController serviceProviders];
  v8 = [serviceProviders count];

  serviceProviderController2 = [(PHSilenceJunkCallingController *)self serviceProviderController];
  serviceProvidersSupportingSpamBlocking = [serviceProviderController2 serviceProvidersSupportingSpamBlocking];

  v13 = TPSLog(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = serviceProvidersSupportingSpamBlocking;
    v37 = 2048;
    v38 = v8;
    _os_log_impl(&dword_21B8E9000, v13, OS_LOG_TYPE_DEFAULT, "addSpamBlockingSpecifiersIfNecessary service providers %@ allServiceProviderCount=%ld", buf, 0x16u);
  }

  if ([serviceProvidersSupportingSpamBlocking count] && objc_msgSend(MEMORY[0x277D6EDE8], "supportsPrimaryCalling"))
  {
    if (v8 == 2)
    {
      v14 = [serviceProvidersSupportingSpamBlocking count];
      firstObject = [serviceProvidersSupportingSpamBlocking firstObject];
      localizedName = [firstObject localizedName];
      if (v14 != 2)
      {

        v26 = MEMORY[0x277CCACA8];
        v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        firstObject2 = [v22 localizedStringForKey:@"SPAM_SIMS_EXTENSIONS_LIST_FOOTER_%@_%@_DS_SINGLE" value:&stru_282D54710 table:@"CallDirectorySettings"];
        v25 = [v26 stringWithFormat:firstObject2, localizedName, localizedName];
        goto LABEL_15;
      }

      lastObject = [serviceProvidersSupportingSpamBlocking lastObject];
      localizedName2 = [lastObject localizedName];
      v19 = [localizedName isEqualToString:localizedName2];

      v20 = MEMORY[0x277CCACA8];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      localizedName = v21;
      if (!v19)
      {
        v22 = [v21 localizedStringForKey:@"SPAM_SIMS_EXTENSIONS_LIST_FOOTER_%@_%@_DS_BOTH" value:&stru_282D54710 table:@"CallDirectorySettings"];
        firstObject2 = [serviceProvidersSupportingSpamBlocking firstObject];
        localizedName3 = [firstObject2 localizedName];
        lastObject2 = [serviceProvidersSupportingSpamBlocking lastObject];
        localizedName4 = [lastObject2 localizedName];
        v25 = [v20 stringWithFormat:v22, localizedName3, localizedName4];

        goto LABEL_15;
      }
    }

    else
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      localizedName = v21;
    }

    v22 = [v21 localizedStringForKey:@"SPAM_SIMS_EXTENSIONS_LIST_FOOTER_%@" value:&stru_282D54710 table:@"CallDirectorySettings"];
    firstObject2 = [serviceProvidersSupportingSpamBlocking firstObject];
    localizedName5 = [firstObject2 localizedName];
    v25 = [v20 stringWithFormat:v22, localizedName5];

LABEL_15:
    v29 = MEMORY[0x277D3FAD8];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"SPAM_TOGGLE_TITLE" value:&stru_282D54710 table:@"CallDirectorySettings"];
    v32 = [v29 preferenceSpecifierNamed:v31 target:self set:sel_setSilenceJunkCallingEnabled_specifier_ get:sel_getSilenceJunkCallingEnabled_ detail:0 cell:6 edit:0];

    [v32 setProperty:v25 forKey:*MEMORY[0x277D40160]];
    [(NSArray *)v4 addObject:v32];
    [(PHSilenceJunkCallingController *)self setHasSpamEnabledSim:1];
  }

  objc_storeStrong(p_specifiers, v4);

LABEL_17:

  return v4;
}

- (id)getSilenceJunkCallingEnabled:(id)enabled
{
  featureFlags = [(PHSilenceJunkCallingController *)self featureFlags];
  deviceExpertMigrationEnabled = [featureFlags deviceExpertMigrationEnabled];

  if (deviceExpertMigrationEnabled)
  {
    v6 = MEMORY[0x277CCABB0];
    configurationProvider = [(PHSilenceJunkCallingController *)self configurationProvider];
    v8 = [v6 numberWithBool:{objc_msgSend(configurationProvider, "isSilenceJunkCallingEnabled")}];
  }

  else
  {
    acceptableJunkConfidence = [MEMORY[0x277D6EDE0] acceptableJunkConfidence];
    v10 = objc_alloc(MEMORY[0x277CBEBD0]);
    v11 = [v10 initWithSuiteName:*MEMORY[0x277D6EFA0]];
    configurationProvider = [v11 objectForKey:*MEMORY[0x277D6F058]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      acceptableJunkConfidence = [configurationProvider integerValue];
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D6EDE0], "isJunkConfidenceLevelJunk:", acceptableJunkConfidence) ^ 1}];
  }

  v12 = v8;

  return v12;
}

- (void)setSilenceJunkCallingEnabled:(id)enabled specifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v7 = TPSLog(enabledCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = enabledCopy;
    _os_log_impl(&dword_21B8E9000, v7, OS_LOG_TYPE_DEFAULT, "User toggled silence junk calling enabled switch to %@", &v14, 0xCu);
  }

  featureFlags = [(PHSilenceJunkCallingController *)self featureFlags];
  deviceExpertMigrationEnabled = [featureFlags deviceExpertMigrationEnabled];

  if (deviceExpertMigrationEnabled)
  {
    bOOLValue = [enabledCopy BOOLValue];
    configurationProvider = [(PHSilenceJunkCallingController *)self configurationProvider];
    [configurationProvider setSilenceJunkCallingEnabled:bOOLValue];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CBEBD0]);
    configurationProvider = [v12 initWithSuiteName:*MEMORY[0x277D6EFA0]];
    if ([enabledCopy integerValue])
    {
      acceptableJunkConfidence = [MEMORY[0x277D6EDE0] acceptableJunkConfidence];
    }

    else
    {
      acceptableJunkConfidence = [MEMORY[0x277D6EDE0] maxJunkConfidence];
    }

    [configurationProvider setInteger:acceptableJunkConfidence forKey:*MEMORY[0x277D6F058]];
  }
}

- (id)objectForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error
{
  v8 = MEMORY[0x277CC3620];
  contextCopy = context;
  hierarchyCopy = hierarchy;
  v11 = [[v8 alloc] initWithBundleType:1];
  carrierBundleController = [(PHSilenceJunkCallingController *)self carrierBundleController];
  telephonyClient = [carrierBundleController telephonyClient];
  v14 = [telephonyClient copyCarrierBundleValue:contextCopy keyHierarchy:hierarchyCopy bundleType:v11 error:error];

  return v14;
}

- (id)stringForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error
{
  v5 = [(PHSilenceJunkCallingController *)self objectForKeyHierarchy:hierarchy subscriptionContext:context error:error];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsCallBlockingForSubscriptionContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v13 = 0;
  v5 = [(PHSilenceJunkCallingController *)self stringForKeyHierarchy:&unk_282D5D618 subscriptionContext:contextCopy error:&v13];
  v6 = v13;
  v8 = v6;
  if (v5)
  {
    v9 = TPSLog(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = contextCopy;
      v10 = "Retrieved call blocking value '%@' for subscription %@";
LABEL_7:
      _os_log_impl(&dword_21B8E9000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0x16u);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v9 = TPSLog(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = contextCopy;
      v16 = 2112;
      v17 = v8;
      v10 = "Retrieving call blocking value for subscription %@ failed with error %@";
      goto LABEL_7;
    }
  }

LABEL_9:
  if ([v5 isEqualToIgnoringCase:@"Enabled"])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v5 isEqualToIgnoringCase:@"Dynamic"];
  }

  return v11;
}

- (id)informationalUrlForSubscriptionContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v12 = 0;
  v5 = [(PHSilenceJunkCallingController *)self stringForKeyHierarchy:&unk_282D5D630 subscriptionContext:contextCopy error:&v12];
  v6 = v12;
  v8 = v6;
  if (v5)
  {
    v9 = TPSLog(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = contextCopy;
      v10 = "Retrieved informational url value '%@' for subscription %@";
LABEL_7:
      _os_log_impl(&dword_21B8E9000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0x16u);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v9 = TPSLog(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = contextCopy;
      v15 = 2112;
      v16 = v8;
      v10 = "Retrieving informational url value for subscription %@ failed with error %@";
      goto LABEL_7;
    }
  }

LABEL_9:

  return v5;
}

@end