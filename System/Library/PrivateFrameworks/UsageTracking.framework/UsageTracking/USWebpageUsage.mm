@interface USWebpageUsage
+ (id)getProcessIdentifier;
- (USWebpageUsage)initWithURL:(id)l bundleIdentifier:(id)identifier auditToken:(id *)token;
- (USWebpageUsage)initWithURL:(id)l bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier;
- (USWebpageUsage)initWithURL:(id)l bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier auditToken:(id *)token;
- (USWebpageUsage)initWithURL:(id)l context:(id)context eventStorage:(id)storage source:(id)source bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier usageTrusted:(BOOL)trusted;
- (id)description;
- (void)changeState:(int64_t)state completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation USWebpageUsage

- (USWebpageUsage)initWithURL:(id)l context:(id)context eventStorage:(id)storage source:(id)source bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier usageTrusted:(BOOL)trusted
{
  contextCopy = context;
  storageCopy = storage;
  sourceCopy = source;
  identifierCopy = identifier;
  v39.receiver = self;
  v39.super_class = USWebpageUsage;
  profileIdentifierCopy = profileIdentifier;
  lCopy = l;
  v19 = [(USWebpageUsage *)&v39 init];
  v20 = objc_opt_new();
  v21 = [v20 normalizeURL:lCopy];

  v22 = [v21 copy];
  URL = v19->_URL;
  v19->_URL = v22;

  v24 = objc_opt_new();
  uUIDString = [v24 UUIDString];
  uniqueIdentifier = v19->_uniqueIdentifier;
  v19->_uniqueIdentifier = uUIDString;

  v27 = [profileIdentifierCopy copy];
  profileIdentifier = v19->_profileIdentifier;
  v19->_profileIdentifier = v27;

  objc_storeStrong(&v19->_context, context);
  objc_storeStrong(&v19->_eventStorage, storage);
  objc_storeStrong(&v19->_source, source);
  v19->_state = 0;
  v19->_usageTrusted = trusted;
  v29 = objc_opt_new();
  contextUsageRecord = v19->_contextUsageRecord;
  v19->_contextUsageRecord = v29;

  v31 = +[USWebpageUsage getProcessIdentifier];
  v32 = v31;
  if (!identifierCopy)
  {
    identifierCopy = v31;
  }

  if ([v32 isEqualToString:@"com.apple.SafariViewService"])
  {

    identifierCopy = @"com.apple.mobilesafari";
  }

  v33 = [(__CFString *)identifierCopy copy];
  bundleIdentifier = v19->_bundleIdentifier;
  v19->_bundleIdentifier = v33;

  return v19;
}

- (USWebpageUsage)initWithURL:(id)l bundleIdentifier:(id)identifier auditToken:(id *)token
{
  v5 = *&token->var0[4];
  v7[0] = *token->var0;
  v7[1] = v5;
  return [(USWebpageUsage *)self initWithURL:l bundleIdentifier:identifier profileIdentifier:0 auditToken:v7];
}

- (USWebpageUsage)initWithURL:(id)l bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier auditToken:(id *)token
{
  profileIdentifierCopy = profileIdentifier;
  identifierCopy = identifier;
  lCopy = l;
  v11 = [USUsageTrust validateTrustForSecTask:0];
  userContext = [MEMORY[0x277CFE318] userContext];
  userKnowledgeStore = [MEMORY[0x277CFE208] userKnowledgeStore];
  v14 = BiomeLibrary();
  v15 = [v14 App];
  webUsage = [v15 WebUsage];
  source = [webUsage source];
  LOBYTE(v20) = v11;
  v18 = [(USWebpageUsage *)self initWithURL:lCopy context:userContext eventStorage:userKnowledgeStore source:source bundleIdentifier:identifierCopy profileIdentifier:profileIdentifierCopy usageTrusted:v20];

  return v18;
}

- (USWebpageUsage)initWithURL:(id)l bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier
{
  v8 = initWithURL_bundleIdentifier_profileIdentifier__onceToken;
  profileIdentifierCopy = profileIdentifier;
  identifierCopy = identifier;
  lCopy = l;
  if (v8 != -1)
  {
    [USWebpageUsage initWithURL:bundleIdentifier:profileIdentifier:];
  }

  userContext = [MEMORY[0x277CFE318] userContext];
  userKnowledgeStore = [MEMORY[0x277CFE208] userKnowledgeStore];
  v14 = BiomeLibrary();
  v15 = [v14 App];
  webUsage = [v15 WebUsage];
  source = [webUsage source];
  LOBYTE(v20) = initWithURL_bundleIdentifier_profileIdentifier__trusted;
  v18 = [(USWebpageUsage *)self initWithURL:lCopy context:userContext eventStorage:userKnowledgeStore source:source bundleIdentifier:identifierCopy profileIdentifier:profileIdentifierCopy usageTrusted:v20];

  return v18;
}

BOOL __65__USWebpageUsage_initWithURL_bundleIdentifier_profileIdentifier___block_invoke()
{
  result = [USUsageTrust validateTrustForSecTask:0];
  initWithURL_bundleIdentifier_profileIdentifier__trusted = result;
  return result;
}

- (void)dealloc
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Tried to create Duet event with start date %@ later than end date %@", v0, 0x16u);
}

void __25__USWebpageUsage_dealloc__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __25__USWebpageUsage_dealloc__block_invoke_cold_1(a1, v5);
  }
}

- (id)description
{
  v3 = self->_contextUsageRecord;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_contextUsageRecord copy];
  objc_sync_exit(v3);

  v5 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = USWebpageUsage;
  v6 = [(USWebpageUsage *)&v10 description];
  v7 = [(USWebpageUsage *)self URL];
  v8 = [v5 stringWithFormat:@"%@ %@ %@", v6, v7, v4];

  return v8;
}

+ (id)getProcessIdentifier
{
  MainBundle = CFBundleGetMainBundle();
  Identifier = CFBundleGetIdentifier(MainBundle);
  if (Identifier)
  {
    processName = Identifier;
  }

  else
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
  }

  return processName;
}

- (void)changeState:(int64_t)state completionHandler:(id)handler
{
  v69 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v48 = objc_opt_new();
  v51 = [(USWebpageUsage *)self URL];
  host = [v51 host];
  if (host)
  {
    appWebUsageType = [MEMORY[0x277CFE338] appWebUsageType];
    v6 = self->_contextUsageRecord;
    objc_sync_enter(v6);
    obj = v6;
    v7 = [(NSMutableDictionary *)self->_contextUsageRecord objectForKeyedSubscript:appWebUsageType];
    v8 = 0x277CFE000;
    v43 = v7;
    switch(state)
    {
      case 0:
        if (v7)
        {
          v45 = [(NSMutableDictionary *)self->_contextUsageRecord copy];
          [(NSMutableDictionary *)self->_contextUsageRecord removeAllObjects];
          v9 = 0;
        }

        else
        {
          v9 = 0;
          v45 = 0;
        }

        v11 = 1;
        v10 = 1;
        goto LABEL_26;
      case 1:
        if (v7)
        {
          if (![v7 integerValue])
          {
            v9 = 0;
            v45 = 0;
            v10 = 2;
            goto LABEL_18;
          }

          v45 = [(NSMutableDictionary *)self->_contextUsageRecord copy];
          v11 = 0;
        }

        else
        {
          v11 = 0;
          v45 = 0;
        }

        v10 = 2;
        v9 = &unk_288087210;
        goto LABEL_26;
      case 2:
        if (v7)
        {
          if ([v7 integerValue] == 1)
          {
            v9 = 0;
            v45 = 0;
            v10 = 3;
LABEL_18:
            v11 = 1;
LABEL_26:
            bundleIdentifier = [(USWebpageUsage *)self bundleIdentifier];
            v42 = v9;
            profileIdentifier = [(USWebpageUsage *)self profileIdentifier];
            v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[USWebpageUsage usageTrusted](self, "usageTrusted")}];
            if ([(USWebpageUsage *)self state]!= v10)
            {
              v14 = objc_alloc(MEMORY[0x277CF1010]);
              uniqueIdentifier = [(USWebpageUsage *)self uniqueIdentifier];
              v16 = v51;
              absoluteString = [v16 absoluteString];
              v18 = absoluteString;
              if (absoluteString)
              {
                relativeString = absoluteString;
              }

              else
              {
                relativeString = [v16 relativeString];
              }

              v20 = relativeString;

              v21 = [v14 initWithUniqueID:uniqueIdentifier absoluteTimestamp:v48 usageState:v10 webpageURL:v20 webDomain:host applicationID:bundleIdentifier deviceID:0 isUsageTrusted:v13 safariProfileID:profileIdentifier];
              source = [(USWebpageUsage *)self source];
              [source sendEvent:v21];

              [(USWebpageUsage *)self setState:v10];
              v8 = 0x277CFE000uLL;
            }

            if (v11)
            {
              v23 = 0;
            }

            else
            {
              appWebUsageWepageURL = [*(v8 + 824) appWebUsageWepageURL];
              appWebUsageWebDomain = [*(v8 + 824) appWebUsageWebDomain];
              appWebUsageStartDate = [*(v8 + 824) appWebUsageStartDate];
              appWebUsageBundleID = [*(v8 + 824) appWebUsageBundleID];
              v28 = v8;
              v29 = appWebUsageBundleID;
              isUsageTrusted = [*(v28 + 824) isUsageTrusted];
              v31 = isUsageTrusted;
              if (profileIdentifier)
              {
                appUsageSafariProfileID = [MEMORY[0x277CFE338] appUsageSafariProfileID];
                v63[0] = appWebUsageWepageURL;
                v63[1] = appWebUsageWebDomain;
                v64[0] = v51;
                v64[1] = host;
                v63[2] = appWebUsageType;
                v63[3] = appWebUsageStartDate;
                v64[2] = v42;
                v64[3] = v48;
                v63[4] = v29;
                v63[5] = appUsageSafariProfileID;
                v64[4] = bundleIdentifier;
                v64[5] = profileIdentifier;
                v63[6] = v31;
                v64[6] = v13;
                v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:7];
              }

              else
              {
                v65[0] = appWebUsageWepageURL;
                v65[1] = appWebUsageWebDomain;
                v66[0] = v51;
                v66[1] = host;
                v65[2] = appWebUsageType;
                v65[3] = appWebUsageStartDate;
                v66[2] = v42;
                v66[3] = v48;
                v65[4] = v29;
                v65[5] = isUsageTrusted;
                v66[4] = bundleIdentifier;
                v66[5] = v13;
                v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:6];
              }

              [(NSMutableDictionary *)self->_contextUsageRecord setDictionary:v23];
            }

            objc_sync_exit(obj);
            if (v45)
            {
              v54[0] = MEMORY[0x277D85DD0];
              v54[1] = 3221225472;
              v54[2] = __48__USWebpageUsage_changeState_completionHandler___block_invoke;
              v54[3] = &unk_279E0A690;
              v33 = v45;
              v55 = v33;
              v56 = v48;
              selfCopy = self;
              v58 = handlerCopy;
              v34 = MEMORY[0x2743AAC50](v54);
              context = [(USWebpageUsage *)self context];
              if (v23)
              {
                v62 = v23;
                v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
                v61 = v33;
                keyPathForAppWebUsageDataDictionaries2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
                keyPathForAppWebUsageDataDictionaries = [MEMORY[0x277CFE338] keyPathForAppWebUsageDataDictionaries];
                [context addObjects:v36 andRemoveObjects:keyPathForAppWebUsageDataDictionaries2 fromArrayAtKeyPath:keyPathForAppWebUsageDataDictionaries responseQueue:0 withCompletion:v34];
              }

              else
              {
                v60 = v33;
                v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
                keyPathForAppWebUsageDataDictionaries2 = [MEMORY[0x277CFE338] keyPathForAppWebUsageDataDictionaries];
                [context removeObjects:v36 fromArrayAtKeyPath:keyPathForAppWebUsageDataDictionaries2 responseQueue:0 withCompletion:v34];
              }
            }

            else if (v23)
            {
              context2 = [(USWebpageUsage *)self context];
              v59 = v23;
              v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
              keyPathForAppWebUsageDataDictionaries3 = [MEMORY[0x277CFE338] keyPathForAppWebUsageDataDictionaries];
              v52[0] = MEMORY[0x277D85DD0];
              v52[1] = 3221225472;
              v52[2] = __48__USWebpageUsage_changeState_completionHandler___block_invoke_3;
              v52[3] = &unk_279E0A6B8;
              v53 = handlerCopy;
              [context2 addObjects:v40 toArrayAtKeyPath:keyPathForAppWebUsageDataDictionaries3 responseQueue:0 withCompletion:v52];
            }

            else if (handlerCopy)
            {
              (*(handlerCopy + 2))(handlerCopy, 0);
            }

            goto LABEL_45;
          }

          v45 = [(NSMutableDictionary *)self->_contextUsageRecord copy];
          v11 = 0;
        }

        else
        {
          v11 = 0;
          v45 = 0;
        }

        v10 = 3;
        v9 = &unk_288087228;
        goto LABEL_26;
    }

    v9 = 0;
    v10 = 0;
    v45 = 0;
    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138739971;
    v68 = v51;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "No hostname for URL %{sensitive}@", buf, 0xCu);
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_45:
}

void __48__USWebpageUsage_changeState_completionHandler___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  v4 = [MEMORY[0x277CFE338] appWebUsageWepageURL];
  v42 = [MEMORY[0x277CFE338] appWebUsageWebDomain];
  v5 = [MEMORY[0x277CFE338] appWebUsageType];
  v41 = [MEMORY[0x277CFE338] isUsageTrusted];
  v6 = [MEMORY[0x277CFE338] appWebUsageStartDate];
  v7 = [MEMORY[0x277CFE338] appWebUsageBundleID];
  v8 = [MEMORY[0x277CFE338] appUsageSafariProfileID];
  v9 = [MEMORY[0x277CFE1D0] webpageURL];
  v10 = [MEMORY[0x277CFE1D0] webDomain];
  v40 = [MEMORY[0x277CFE1D0] usageType];
  v38 = [MEMORY[0x277CFE1D0] safariProfileID];
  v39 = [MEMORY[0x277CFE1D0] isUsageTrusted];
  v34 = [MEMORY[0x277CFE298] appWebUsageStream];
  v37 = v6;
  v11 = [v2 objectForKeyedSubscript:v6];
  v36 = v7;
  if ([v11 compare:v3] == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [USWebpageUsage dealloc];
    }

    v12 = 0;
    v13 = v8;
    v14 = v34;
  }

  else
  {
    v32 = v3;
    v33 = v5;
    v15 = MEMORY[0x277CFE1A8];
    v16 = [v2 objectForKeyedSubscript:v7];
    v29 = [v15 withBundle:v16];

    v30 = v8;
    v17 = [v2 objectForKeyedSubscript:v8];
    v31 = v4;
    if (v17)
    {
      v46 = v9;
      v18 = [v2 objectForKeyedSubscript:v4];
      v51 = v18;
      v47 = v10;
      v19 = [v2 objectForKeyedSubscript:v42];
      v52 = v19;
      v48 = v40;
      v20 = [v2 objectForKeyedSubscript:v33];
      v53 = v20;
      v54 = v17;
      v49 = v38;
      v50 = v39;
      v21 = [v2 objectForKeyedSubscript:v41];
      v55 = v21;
      v22 = MEMORY[0x277CBEAC0];
      v23 = 5;
    }

    else
    {
      v46 = v9;
      v18 = [v2 objectForKeyedSubscript:v4];
      v51 = v18;
      v47 = v10;
      v19 = [v2 objectForKeyedSubscript:v42];
      v52 = v19;
      v48 = v40;
      v20 = [v2 objectForKeyedSubscript:v33];
      v53 = v20;
      v49 = v39;
      v21 = [v2 objectForKeyedSubscript:v41];
      v54 = v21;
      v22 = MEMORY[0x277CBEAC0];
      v23 = 4;
    }

    v24 = [v22 dictionaryWithObjects:&v51 forKeys:&v46 count:{v23, v10}];

    v14 = v34;
    v3 = v32;
    v12 = [MEMORY[0x277CFE1D8] eventWithStream:v34 startDate:v11 endDate:v32 value:v29 metadata:v24];

    v13 = v30;
    v4 = v31;
    v5 = v33;
    v10 = v28;
  }

  if (v12)
  {
    v25 = [*(a1 + 48) eventStorage];
    v45 = v12;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __48__USWebpageUsage_changeState_completionHandler___block_invoke_2;
    v43[3] = &unk_279E0A668;
    v44 = *(a1 + 56);
    [v25 saveObjects:v26 responseQueue:0 withCompletion:v43];
  }

  else
  {
    v27 = *(a1 + 56);
    if (v27)
    {
      (*(v27 + 16))(v27, 0);
    }
  }
}

uint64_t __48__USWebpageUsage_changeState_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

uint64_t __48__USWebpageUsage_changeState_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __25__USWebpageUsage_dealloc__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138740483;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to reset web page usage to not-in-use on dealloc for URL %{sensitive}@ and bundle identifier %@ with error: %@", &v4, 0x20u);
}

@end