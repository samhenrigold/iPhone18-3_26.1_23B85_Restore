@interface INCAppLaunchRequest
+ (id)removeDenyListedApplicationProxies:(id)proxies;
+ (id)specialElementIdentifierForBundleIdentifier:(id)identifier;
+ (void)initialize;
- (BOOL)_retainsSiri;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSupportedInCarPlay;
- (INCAppLaunchRequest)initWithAudioCallIntentForCarousel:(id)carousel error:(id *)p_isa;
- (INCAppLaunchRequest)initWithBundleIdentifier:(id)identifier options:(id)options URL:(id)l userActivity:(id)activity;
- (INCAppLaunchRequest)initWithBundleIdentifier:(id)identifier options:(id)options URL:(id)l userActivity:(id)activity retainsSiri:(BOOL)siri;
- (INCAppLaunchRequest)initWithIntent:(id)intent userActivity:(id)activity inBackground:(BOOL)background error:(id *)error;
- (INCAppLaunchRequest)initWithIntent:(id)intent userActivity:(id)activity inBackground:(BOOL)background retainsSiri:(BOOL)siri error:(id *)error;
- (INCAppLaunchRequest)initWithInteraction:(id)interaction userActivity:(id)activity inBackground:(BOOL)background error:(id *)error;
- (INCAppLaunchRequest)initWithInteraction:(id)interaction userActivity:(id)activity inBackground:(BOOL)background retainsSiri:(BOOL)siri error:(id *)error;
- (INCAppLaunchRequest)initWithURL:(id)l error:(id *)error;
- (id)URLOverrideForURL:(id)l;
- (id)description;
- (unint64_t)hash;
- (void)observeForAppLaunchWithTimeout:(double)timeout completionHandler:(id)handler;
- (void)performWithCompletionHandler:(id)handler;
- (void)performWithService:(id)service retainsSiri:(BOOL)siri completionHandler:(id)handler;
@end

@implementation INCAppLaunchRequest

- (void)observeForAppLaunchWithTimeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_alloc_init(INCDisplayLayoutMonitor);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__867;
  v27[4] = __Block_byref_object_dispose__868;
  v8 = objc_alloc(MEMORY[0x277CD4300]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__INCAppLaunchRequest_observeForAppLaunchWithTimeout_completionHandler___block_invoke;
  v24[3] = &unk_2797E8068;
  v9 = v7;
  v25 = v9;
  v10 = handlerCopy;
  v26 = v10;
  v28 = [v8 initWithTimeoutInterval:v24 timeoutHandler:timeout];
  v11 = objc_opt_class();
  bundleIdentifier = [(INCAppLaunchRequest *)self bundleIdentifier];
  v13 = [v11 specialElementIdentifierForBundleIdentifier:bundleIdentifier];

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __72__INCAppLaunchRequest_observeForAppLaunchWithTimeout_completionHandler___block_invoke_2;
  v19 = &unk_2797E8090;
  selfCopy = self;
  v14 = v13;
  v21 = v14;
  v15 = v10;
  v22 = v15;
  v23 = v27;
  [(INCDisplayLayoutMonitor *)v9 setTransitionHandler:&v16];
  [(INCDisplayLayoutMonitor *)v9 resume:v16];

  _Block_object_dispose(v27, 8);
}

uint64_t __72__INCAppLaunchRequest_observeForAppLaunchWithTimeout_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __72__INCAppLaunchRequest_observeForAppLaunchWithTimeout_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(getCARSessionStatusClass_870()) initAndWaitUntilSessionUpdated];
  v9 = [v8 currentSession];

  if (!v9 || ![*(a1 + 32) isSupportedInCarPlay] || objc_msgSend(v6, "isCarDisplay"))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v7 elements];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      v19 = v6;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v15 identifier];
          if ([v16 isEqualToString:*(a1 + 40)])
          {

LABEL_15:
            (*(*(a1 + 48) + 16))();
            [*(*(*(a1 + 56) + 8) + 40) cancel];
            v6 = v19;
            goto LABEL_16;
          }

          v17 = [v15 bundleIdentifier];
          v18 = [v17 isEqualToString:*(a1 + 40)];

          if (v18)
          {
            goto LABEL_15;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v6 = v19;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }
}

- (void)performWithService:(id)service retainsSiri:(BOOL)siri completionHandler:(id)handler
{
  siriCopy = siri;
  v43 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  handlerCopy = handler;
  options = [(INCAppLaunchRequest *)self options];
  v11 = [options mutableCopy];

  userActivity = [(INCAppLaunchRequest *)self userActivity];
  v28 = [(INCAppLaunchRequest *)self URL];
  if (userActivity)
  {
    v32 = 0;
    v13 = INCSerializeNSUserActivity(userActivity, &v32);
    v27 = v32;
    if (v13)
    {
      v38 = &unk_28676D630;
      v39 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v33 = 0;
      v34 = &v33;
      v35 = 0x2050000000;
      v15 = getUIActivityContinuationActionClass_softClass;
      v36 = getUIActivityContinuationActionClass_softClass;
      if (!getUIActivityContinuationActionClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getUIActivityContinuationActionClass_block_invoke;
        v41 = &unk_2797E8190;
        v42 = &v33;
        __getUIActivityContinuationActionClass_block_invoke(buf);
        v15 = v34[3];
      }

      v16 = v15;
      _Block_object_dispose(&v33, 8);
      v17 = [[v15 alloc] initWithSettings:v14];
      v37 = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      [v11 setObject:v18 forKeyedSubscript:*MEMORY[0x277D0ABD0]];
    }

    else
    {
      v19 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[INCAppLaunchRequest performWithService:retainsSiri:completionHandler:]";
        *&buf[12] = 2114;
        *&buf[14] = v27;
        _os_log_error_impl(&dword_255503000, v19, OS_LOG_TYPE_ERROR, "%s Failed to serialize user activity: %{public}@", buf, 0x16u);
      }
    }
  }

  else if (v28)
  {
    [v11 setObject:v28 forKeyedSubscript:*MEMORY[0x277D0AC40]];
  }

  [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:{*MEMORY[0x277D0AC70], v27}];
  [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D0AC58]];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:siriCopy];
  [v11 setObject:v20 forKeyedSubscript:*MEMORY[0x277D670D8]];

  userActivity2 = [(INCAppLaunchRequest *)self userActivity];
  interaction = [userActivity2 interaction];

  v23 = [MEMORY[0x277D0AD60] optionsWithDictionary:v11];
  bundleIdentifier = [(INCAppLaunchRequest *)self bundleIdentifier];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __72__INCAppLaunchRequest_performWithService_retainsSiri_completionHandler___block_invoke;
  v29[3] = &unk_2797E8040;
  v30 = interaction;
  v31 = handlerCopy;
  v25 = handlerCopy;
  v26 = interaction;
  [serviceCopy openApplication:bundleIdentifier withOptions:v23 completion:v29];
}

void __72__INCAppLaunchRequest_performWithService_retainsSiri_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = objc_msgSend_auditToken(v5);
    v9 = v8;
    if (v8)
    {
      objc_msgSend_realToken(v8);
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    [v7 inc_associateFileURLsWithAuditToken:v11];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v6 == 0, v6);
  }
}

- (void)performWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  initAndWaitUntilSessionUpdated = [objc_alloc(getCARSessionStatusClass_870()) initAndWaitUntilSessionUpdated];
  currentSession = [initAndWaitUntilSessionUpdated currentSession];

  if (!currentSession || ![(INCAppLaunchRequest *)self isSupportedInCarPlay])
  {
    goto LABEL_11;
  }

  v13 = 0;
  if (!CarPlayServicesLibraryCore_frameworkLibrary_882)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v15 = __CarPlayServicesLibraryCore_block_invoke_883;
    v16 = &__block_descriptor_40_e5_v8__0l;
    v17 = &v13;
    v18 = xmmword_2797E80E0;
    v19 = 0;
    CarPlayServicesLibraryCore_frameworkLibrary_882 = _sl_dlopen();
    v8 = v13;
    if (CarPlayServicesLibraryCore_frameworkLibrary_882)
    {
      if (!v13)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = abort_report_np("%s", v13);
    }

    free(v8);
  }

LABEL_6:
  dashboardService = [MEMORY[0x277D0AD78] dashboardService];
  v10 = dashboardService;
  if (dashboardService)
  {
    v11 = dashboardService;

    serviceWithDefaultShellEndpoint = v11;
  }

  else
  {
    v12 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[INCAppLaunchRequest performWithCompletionHandler:]";
      _os_log_error_impl(&dword_255503000, v12, OS_LOG_TYPE_ERROR, "%s Failed to get the CarPlay dashboard service (is the process properly entitled?). Falling back to the default service.", &buf, 0xCu);
    }
  }

LABEL_11:
  [(INCAppLaunchRequest *)self performWithService:serviceWithDefaultShellEndpoint retainsSiri:[(INCAppLaunchRequest *)self retainsSiri] completionHandler:handlerCopy];
}

- (BOOL)isSupportedInCarPlay
{
  bundleIdentifier = [(INCAppLaunchRequest *)self bundleIdentifier];
  v4 = [(INCAppLaunchRequest *)self URL];
  if (v4)
  {
    v5 = [INCCarPlayUtils appIsSupportedInCarPlayWithBundleId:bundleIdentifier hasPayload:1];
  }

  else
  {
    userActivity = [(INCAppLaunchRequest *)self userActivity];
    v5 = [INCCarPlayUtils appIsSupportedInCarPlayWithBundleId:bundleIdentifier hasPayload:userActivity != 0];
  }

  return v5;
}

- (id)URLOverrideForURL:(id)l
{
  v16[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"https"])
  {
  }

  else
  {
    scheme2 = [lCopy scheme];
    v6 = [scheme2 isEqualToString:@"http"];

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  host = [lCopy host];
  v8 = [host isEqualToString:@"facetime.apple.com"];

  if (v8)
  {
    v9 = objc_opt_new();
    [v9 setScheme:@"facetime-open-link"];
    v10 = objc_alloc(MEMORY[0x277CCAD18]);
    absoluteString = [lCopy absoluteString];
    v12 = [v10 initWithName:@"link" value:absoluteString];
    v16[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [v9 setQueryItems:v13];

    v14 = [v9 URL];

    goto LABEL_7;
  }

LABEL_6:
  v14 = 0;
LABEL_7:

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(NSString *)self->_bundleIdentifier isEqual:v5->_bundleIdentifier]&& [(NSDictionary *)self->_options isEqual:v5->_options]&& ((URL = self->_URL, URL == v5->_URL) || [(NSURL *)URL isEqual:?]))
      {
        userActivity = self->_userActivity;
        if (userActivity == v5->_userActivity)
        {
          v8 = 1;
        }

        else
        {
          v8 = [(NSUserActivity *)userActivity isEqual:?];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleIdentifier hash];
  v4 = [(NSDictionary *)self->_options hash]^ v3;
  v5 = [(NSURL *)self->_URL hash];
  return v4 ^ v5 ^ [(NSUserActivity *)self->_userActivity hash];
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" {\n    bundleIdentifier = %@, \n    options = %@, \n    URL = %@, \n    userActivity = %@\n}", self->_bundleIdentifier, self->_options, self->_URL, self->_userActivity];
  v7.receiver = self;
  v7.super_class = INCAppLaunchRequest;
  v4 = [(INCAppLaunchRequest *)&v7 description];
  v5 = [v4 stringByAppendingString:v3];

  return v5;
}

- (BOOL)_retainsSiri
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getAFIsPersistentSiriAvailableSymbolLoc_ptr_893;
  v10 = getAFIsPersistentSiriAvailableSymbolLoc_ptr_893;
  if (!getAFIsPersistentSiriAvailableSymbolLoc_ptr_893)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getAFIsPersistentSiriAvailableSymbolLoc_block_invoke_894;
    v6[3] = &unk_2797E8190;
    v6[4] = &v7;
    __getAFIsPersistentSiriAvailableSymbolLoc_block_invoke_894(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v4 = dlerror();
    v5 = abort_report_np("%s", v4);
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  return v2();
}

- (INCAppLaunchRequest)initWithBundleIdentifier:(id)identifier options:(id)options URL:(id)l userActivity:(id)activity retainsSiri:(BOOL)siri
{
  identifierCopy = identifier;
  optionsCopy = options;
  lCopy = l;
  activityCopy = activity;
  v26.receiver = self;
  v26.super_class = INCAppLaunchRequest;
  v16 = [(INCAppLaunchRequest *)&v26 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    bundleIdentifier = v16->_bundleIdentifier;
    v16->_bundleIdentifier = v17;

    v19 = [optionsCopy copy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v16->_options, v21);

    v22 = [lCopy copy];
    URL = v16->_URL;
    v16->_URL = v22;

    objc_storeStrong(&v16->_userActivity, activity);
    v16->_retainsSiri = siri;
    v24 = v16;
  }

  return v16;
}

- (INCAppLaunchRequest)initWithBundleIdentifier:(id)identifier options:(id)options URL:(id)l userActivity:(id)activity
{
  activityCopy = activity;
  lCopy = l;
  optionsCopy = options;
  identifierCopy = identifier;
  v14 = [(INCAppLaunchRequest *)self initWithBundleIdentifier:identifierCopy options:optionsCopy URL:lCopy userActivity:activityCopy retainsSiri:[(INCAppLaunchRequest *)self _retainsSiri]];

  return v14;
}

- (INCAppLaunchRequest)initWithURL:(id)l error:(id *)error
{
  v47[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v8 = [defaultWorkspace URLOverrideForURL:lCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;

    lCopy = v10;
  }

  v11 = [(INCAppLaunchRequest *)self URLOverrideForURL:lCopy];

  if (v11)
  {
    v12 = v11;

    lCopy = v12;
  }

  v39 = 0;
  v13 = [MEMORY[0x277CC1E48] appLinksWithURL:lCopy limit:2 error:&v39];
  v14 = v39;
  if ([v13 count])
  {
    firstObject = [v13 firstObject];
    if ([v13 count] >= 2)
    {
      v16 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        v29 = v16;
        targetApplicationProxy = [firstObject targetApplicationProxy];
        bundleIdentifier = [targetApplicationProxy bundleIdentifier];
        *buf = 136315394;
        v41 = "[INCAppLaunchRequest initWithURL:error:]";
        v42 = 2114;
        v43 = bundleIdentifier;
        _os_log_error_impl(&dword_255503000, v29, OS_LOG_TYPE_ERROR, "%s Multiple app links are available to handle the URL, picking the first one: %{public}@", buf, 0x16u);
      }
    }

    targetApplicationProxy2 = [firstObject targetApplicationProxy];
    bundleIdentifier2 = [targetApplicationProxy2 bundleIdentifier];
    v19 = [firstObject URL];
    self = [(INCAppLaunchRequest *)self initWithBundleIdentifier:bundleIdentifier2 options:0 URL:v19 userActivity:0];

    selfCopy2 = self;
    goto LABEL_21;
  }

  if (v14)
  {
    v21 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "[INCAppLaunchRequest initWithURL:error:]";
      v42 = 2112;
      v43 = v14;
      _os_log_error_impl(&dword_255503000, v21, OS_LOG_TYPE_ERROR, "%s Failed to get app links for URL: %@", buf, 0x16u);
    }
  }

  v22 = [defaultWorkspace applicationsAvailableForOpeningURL:lCopy];
  firstObject = [INCAppLaunchRequest removeDenyListedApplicationProxies:v22];

  if ([firstObject count])
  {
    targetApplicationProxy2 = [firstObject firstObject];
    if ([firstObject count] >= 2)
    {
      v23 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        log = v23;
        scheme = [lCopy scheme];
        bundleIdentifier3 = [targetApplicationProxy2 bundleIdentifier];
        *buf = 136315650;
        v41 = "[INCAppLaunchRequest initWithURL:error:]";
        v42 = 2114;
        v43 = scheme;
        v44 = 2114;
        v45 = bundleIdentifier3;
        _os_log_error_impl(&dword_255503000, log, OS_LOG_TYPE_ERROR, "%s Multiple applications are available to handle the %{public}@ scheme, picking the first one: %{public}@", buf, 0x20u);
      }
    }

    bundleIdentifier2 = [targetApplicationProxy2 bundleIdentifier];
    self = [(INCAppLaunchRequest *)self initWithBundleIdentifier:bundleIdentifier2 options:0 URL:lCopy userActivity:0];
    selfCopy2 = self;
    goto LABEL_21;
  }

  v24 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v32 = v24;
    scheme2 = [lCopy scheme];
    *buf = 136315394;
    v41 = "[INCAppLaunchRequest initWithURL:error:]";
    v42 = 2114;
    v43 = scheme2;
    _os_log_error_impl(&dword_255503000, v32, OS_LOG_TYPE_ERROR, "%s No applications are available to handle the %{public}@ scheme", buf, 0x16u);

    if (error)
    {
      goto LABEL_20;
    }

LABEL_24:
    selfCopy2 = 0;
    goto LABEL_22;
  }

  if (!error)
  {
    goto LABEL_24;
  }

LABEL_20:
  v25 = MEMORY[0x277CCACA8];
  [lCopy scheme];
  v26 = loga = error;
  targetApplicationProxy2 = [v25 stringWithFormat:@"No applications are available to handle the %@ scheme", v26];

  v35 = MEMORY[0x277CCA9B8];
  v27 = *MEMORY[0x277CD3848];
  v46 = *MEMORY[0x277CCA068];
  v47[0] = targetApplicationProxy2;
  bundleIdentifier2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  [v35 errorWithDomain:v27 code:2005 userInfo:bundleIdentifier2];
  loga->isa = selfCopy2 = 0;
LABEL_21:

LABEL_22:
  return selfCopy2;
}

- (INCAppLaunchRequest)initWithAudioCallIntentForCarousel:(id)carousel error:(id *)p_isa
{
  v32 = *MEMORY[0x277D85DE8];
  carouselCopy = carousel;
  contacts = [carouselCopy contacts];
  firstObject = [contacts firstObject];

  personHandle = [firstObject personHandle];
  v10 = personHandle;
  if (!personHandle)
  {
    v19 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v24 = v19;
      _className = [carouselCopy _className];
      *buf = 136315394;
      v29 = "[INCAppLaunchRequest initWithAudioCallIntentForCarousel:error:]";
      v30 = 2114;
      v31 = _className;
      _os_log_error_impl(&dword_255503000, v24, OS_LOG_TYPE_ERROR, "%s %{public}@ is missing a personHandle to call", buf, 0x16u);

      if (!p_isa)
      {
        goto LABEL_9;
      }
    }

    else if (!p_isa)
    {
      goto LABEL_9;
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CD3848];
    v26 = *MEMORY[0x277CCA068];
    v27 = @"Missing personHandle from INStartAudioCallIntent";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *p_isa = [v20 errorWithDomain:v21 code:3002 userInfo:v22];

    p_isa = 0;
    goto LABEL_9;
  }

  value = [personHandle value];
  uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v13 = [value stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  preferredCallProvider = [carouselCopy preferredCallProvider];
  v15 = MEMORY[0x277CBEBC0];
  if (preferredCallProvider == 2)
  {
    v16 = @"facetime://%@";
  }

  else
  {
    v16 = @"tel://%@";
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:v16, v13];
  v18 = [v15 URLWithString:v17];

  self = [(INCAppLaunchRequest *)self initWithBundleIdentifier:@"com.apple.Carousel" options:0 URL:v18 userActivity:0];
  p_isa = &self->super.isa;
LABEL_9:

  return p_isa;
}

- (INCAppLaunchRequest)initWithIntent:(id)intent userActivity:(id)activity inBackground:(BOOL)background retainsSiri:(BOOL)siri error:(id *)error
{
  siriCopy = siri;
  backgroundCopy = background;
  v36 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  activityCopy = activity;
  userInfo = [activityCopy userInfo];
  v15 = [userInfo objectForKey:*MEMORY[0x277CD4430]];

  if (v15)
  {
    self = [(INCAppLaunchRequest *)self initWithURL:v15 error:error];
    selfCopy3 = self;
  }

  else
  {
    _intents_bundleIdForLaunching = [intentCopy _intents_bundleIdForLaunching];
    if (_intents_bundleIdForLaunching)
    {
      v18 = intentCopy;
      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v21 = v19;

      if ([_intents_bundleIdForLaunching isEqualToString:@"com.apple.Carousel"] && v21)
      {
        self = [(INCAppLaunchRequest *)self initWithAudioCallIntentForCarousel:v21 error:error];
      }

      else
      {
        if (!activityCopy)
        {
          v22 = *MEMORY[0x277CD38C8];
          if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v31 = "[INCAppLaunchRequest initWithIntent:userActivity:inBackground:retainsSiri:error:]";
            v32 = 2114;
            selfCopy4 = self;
            _os_log_error_impl(&dword_255503000, v22, OS_LOG_TYPE_ERROR, "%s %{public}@ was not given a user activity, making one", buf, 0x16u);
          }

          activityCopy = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithIntent:v18];
        }

        [activityCopy _setExecutionContext:{objc_msgSend(v18, "_executionContext")}];
        v23 = [MEMORY[0x277CCABB0] numberWithBool:{backgroundCopy, *MEMORY[0x277CC1E10]}];
        v29 = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

        self = [(INCAppLaunchRequest *)self initWithBundleIdentifier:_intents_bundleIdForLaunching options:v24 URL:0 userActivity:activityCopy retainsSiri:siriCopy];
      }

      selfCopy3 = self;
    }

    else
    {
      v20 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        v26 = v20;
        _className = [intentCopy _className];
        *buf = 136315650;
        v31 = "[INCAppLaunchRequest initWithIntent:userActivity:inBackground:retainsSiri:error:]";
        v32 = 2114;
        selfCopy4 = self;
        v34 = 2114;
        v35 = _className;
        _os_log_error_impl(&dword_255503000, v26, OS_LOG_TYPE_ERROR, "%s %{public}@ was given a %{public}@ without a bundle identifier to launch", buf, 0x20u);
      }

      selfCopy3 = 0;
    }
  }

  return selfCopy3;
}

- (INCAppLaunchRequest)initWithIntent:(id)intent userActivity:(id)activity inBackground:(BOOL)background error:(id *)error
{
  backgroundCopy = background;
  activityCopy = activity;
  intentCopy = intent;
  v12 = [(INCAppLaunchRequest *)self initWithIntent:intentCopy userActivity:activityCopy inBackground:backgroundCopy retainsSiri:[(INCAppLaunchRequest *)self _retainsSiri] error:error];

  return v12;
}

- (INCAppLaunchRequest)initWithInteraction:(id)interaction userActivity:(id)activity inBackground:(BOOL)background retainsSiri:(BOOL)siri error:(id *)error
{
  siriCopy = siri;
  backgroundCopy = background;
  v38 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  activityCopy = activity;
  if (activityCopy)
  {
    goto LABEL_4;
  }

  intent = [interactionCopy intent];
  if (intent)
  {
    v15 = intent;
    v16 = objc_alloc(MEMORY[0x277CC1EF0]);
    _className = [v15 _className];
    activityCopy = [v16 initWithActivityType:_className];

LABEL_4:
    v30 = 0;
    v31 = activityCopy;
    v18 = INCUnderlyingInteractionFromInteraction(interactionCopy, &v31, &v30);
    v19 = v31;

    v20 = v30;
    intent2 = [v18 intent];
    [v19 _setInteraction:v18 donate:0];
    v22 = intent2;
    if (intent2 || (v22 = v20) != 0)
    {
      intent3 = v22;
    }

    else
    {
      intent3 = [interactionCopy intent];
    }

    v24 = intent3;
    self = [(INCAppLaunchRequest *)self initWithIntent:intent3 userActivity:v19 inBackground:backgroundCopy retainsSiri:siriCopy error:error];

    selfCopy = self;
    goto LABEL_8;
  }

  v27 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v35 = "[INCAppLaunchRequest initWithInteraction:userActivity:inBackground:retainsSiri:error:]";
    v36 = 2112;
    v37 = interactionCopy;
    _os_log_fault_impl(&dword_255503000, v27, OS_LOG_TYPE_FAULT, "%s No intent was provided in the interaction: %@", buf, 0x16u);
  }

  v28 = MEMORY[0x277CCA9B8];
  v29 = *MEMORY[0x277CBE658];
  v32 = *MEMORY[0x277CCA450];
  v33 = @"No intent was provided in the interaction.";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  [v28 errorWithDomain:v29 code:0 userInfo:v19];
  *error = selfCopy = 0;
LABEL_8:

  return selfCopy;
}

- (INCAppLaunchRequest)initWithInteraction:(id)interaction userActivity:(id)activity inBackground:(BOOL)background error:(id *)error
{
  backgroundCopy = background;
  activityCopy = activity;
  interactionCopy = interaction;
  v12 = [(INCAppLaunchRequest *)self initWithInteraction:interactionCopy userActivity:activityCopy inBackground:backgroundCopy retainsSiri:[(INCAppLaunchRequest *)self _retainsSiri] error:error];

  return v12;
}

+ (id)removeDenyListedApplicationProxies:(id)proxies
{
  v20 = *MEMORY[0x277D85DE8];
  proxiesCopy = proxies;
  v4 = [proxiesCopy mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = proxiesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        bundleIdentifier = [v10 bundleIdentifier];
        v12 = [&unk_28676D670 containsObject:bundleIdentifier];

        if (v12)
        {
          [v4 removeObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

+ (id)specialElementIdentifierForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [&unk_28676D648 objectForKey:identifierCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = identifierCopy;
  }

  v7 = v6;

  return v6;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    INLogInitIfNeeded();
  }
}

@end