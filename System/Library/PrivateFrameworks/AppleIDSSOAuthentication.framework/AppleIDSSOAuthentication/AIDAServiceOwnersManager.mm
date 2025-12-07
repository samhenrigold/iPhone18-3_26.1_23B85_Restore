@interface AIDAServiceOwnersManager
+ (NSArray)supportedServices;
+ (NSSet)serviceOwnerBundles;
+ (id)_loadServiceOwnerBundles;
+ (id)_loadServiceOwnerBundlesIfNeeded;
+ (id)_rejectionlistedBundleIDs;
+ (id)_sharedTelemetryReporter;
+ (id)_supplementalServiceTypes;
+ (void)configureProcessSpecificServiceOwnerRejectionlist:(id)rejectionlist;
+ (void)configureProcessSpecificSupplementalServiceTypes:(id)types;
+ (void)supportedServices;
- (AIDAServiceOwnersManager)init;
- (AIDAServiceOwnersManager)initWithAccountStore:(id)store;
- (NSDictionary)serviceOwners;
- (id)DSIDForAccount:(id)account service:(id)service;
- (id)_buildServiceOwnerMapping;
- (id)_postCloudSupportedServicesForAltDSID:(id)d;
- (id)accountForService:(id)service;
- (id)altDSIDForAccount:(id)account service:(id)service;
- (id)nameComponentsForAccount:(id)account service:(id)service;
- (void)_completeSignInSignpost:(id)signpost forService:(id)service context:(id)context success:(BOOL)success error:(id)error;
- (void)_publishSignInTelemetryEventForContext:(id)context;
- (void)signInService:(id)service withContext:(id)context completion:(id)completion;
- (void)signInToAllServicesInBackground:(BOOL)background usingContext:(id)context completion:(id)completion;
- (void)signInToServices:(id)services usingContext:(id)context completion:(id)completion;
- (void)signOutOfAllServicesUsingContext:(id)context completion:(id)completion;
- (void)signOutOfServices:(id)services usingContext:(id)context completion:(id)completion;
- (void)signOutService:(id)service withContext:(id)context completion:(id)completion;
@end

@implementation AIDAServiceOwnersManager

- (NSDictionary)serviceOwners
{
  serviceOwners = self->_serviceOwners;
  if (!serviceOwners)
  {
    os_unfair_lock_lock(&self->_serviceOwnersLock);
    if (!self->_serviceOwners)
    {
      _buildServiceOwnerMapping = [(AIDAServiceOwnersManager *)self _buildServiceOwnerMapping];
      v5 = self->_serviceOwners;
      self->_serviceOwners = _buildServiceOwnerMapping;
    }

    os_unfair_lock_unlock(&self->_serviceOwnersLock);
    serviceOwners = self->_serviceOwners;
  }

  return serviceOwners;
}

- (id)_buildServiceOwnerMapping
{
  v14 = *MEMORY[0x1E69E9840];
  accountStore = self->_accountStore;
  if (accountStore)
  {
    defaultStore = accountStore;
  }

  else
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  }

  v4 = defaultStore;
  _loadServiceOwnerBundlesIfNeeded = [objc_opt_class() _loadServiceOwnerBundlesIfNeeded];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke;
  v10[3] = &unk_1E86834E0;
  v6 = v4;
  v11 = v6;
  v7 = [_loadServiceOwnerBundlesIfNeeded aaf_map:v10];
  v8 = _AIDALogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&dword_1DEB1B000, v8, OS_LOG_TYPE_DEFAULT, "Finished building service owner mapping: %@", buf, 0xCu);
  }

  return v7;
}

uint64_t __60__AIDAServiceOwnersManager__loadServiceOwnerBundlesIfNeeded__block_invoke(uint64_t a1)
{
  _loadServiceOwnerBundlesIfNeeded_bundles = [*(a1 + 32) _loadServiceOwnerBundles];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_loadServiceOwnerBundlesIfNeeded
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AIDAServiceOwnersManager__loadServiceOwnerBundlesIfNeeded__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_loadServiceOwnerBundlesIfNeededOnceToken != -1)
  {
    dispatch_once(&_loadServiceOwnerBundlesIfNeededOnceToken, block);
  }

  v2 = _loadServiceOwnerBundlesIfNeeded_bundles;

  return v2;
}

+ (id)_loadServiceOwnerBundles
{
  v20 = *MEMORY[0x1E69E9840];
  serviceOwnerBundles = [objc_opt_class() serviceOwnerBundles];
  v4 = _AIDALogSystem(serviceOwnerBundles);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = serviceOwnerBundles;
    _os_log_impl(&dword_1DEB1B000, v4, OS_LOG_TYPE_DEFAULT, "Building AIDA service owner bundle mapping for bundles: %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _rejectionlistedBundleIDs = [self _rejectionlistedBundleIDs];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __52__AIDAServiceOwnersManager__loadServiceOwnerBundles__block_invoke;
  v15 = &unk_1E8683528;
  v16 = _rejectionlistedBundleIDs;
  v7 = v5;
  v17 = v7;
  v8 = _rejectionlistedBundleIDs;
  v9 = _AIDALogSystem([serviceOwnerBundles enumerateObjectsUsingBlock:&v12]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v7;
    _os_log_impl(&dword_1DEB1B000, v9, OS_LOG_TYPE_DEFAULT, "Completed building AIDA service owner mapping with result: %@", buf, 0xCu);
  }

  v10 = [v7 copy];

  return v10;
}

+ (NSSet)serviceOwnerBundles
{
  if (serviceOwnerBundles_onceToken != -1)
  {
    +[AIDAServiceOwnersManager serviceOwnerBundles];
  }

  v3 = serviceOwnerBundles_serviceOwnerBundles;

  return v3;
}

uint64_t __47__AIDAServiceOwnersManager_serviceOwnerBundles__block_invoke()
{
  serviceOwnerBundles_serviceOwnerBundles = [MEMORY[0x1E6959A78] pluginBundlesAtSubpath:@"ServiceOwners"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_rejectionlistedBundleIDs
{
  v2 = [_AIDAServiceOwnersManagerRejectionlist copy];

  return v2;
}

void __52__AIDAServiceOwnersManager__loadServiceOwnerBundles__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 bundleIdentifier];
  v6 = [v4 containsObject:v5];

  v8 = _AIDALogSystem(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      *buf = 138412290;
      v29 = v3;
      _os_log_impl(&dword_1DEB1B000, v8, OS_LOG_TYPE_DEFAULT, "Skipping rejectionlisted AIDA bundle: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 138412290;
      v29 = v3;
      _os_log_impl(&dword_1DEB1B000, v8, OS_LOG_TYPE_DEFAULT, "Loading AIDA service owner bundle: %@", buf, 0xCu);
    }

    v26 = 0;
    v10 = [v3 loadAndReturnError:&v26];
    v8 = v26;
    v11 = _AIDALogSystem(v8);
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v3;
        _os_log_impl(&dword_1DEB1B000, v12, OS_LOG_TYPE_DEFAULT, "Loaded bundle: %@", buf, 0xCu);
      }

      v13 = [v3 principalClass];
      v14 = [v13 conformsToProtocol:&unk_1F59D2108];
      if (v14)
      {
        v12 = [v13 supportedServices];
        v15 = [v12 count];
        v16 = _AIDALogSystem(v15);
        v17 = v16;
        if (v15)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v29 = v3;
            v30 = 2112;
            v31 = v13;
            v32 = 2112;
            v33 = v12;
            _os_log_impl(&dword_1DEB1B000, v17, OS_LOG_TYPE_DEFAULT, "Loaded AIDA service owner bundle (%@) with principal class (%@) for services: %@", buf, 0x20u);
          }

          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v17 = v12;
          v18 = [v17 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v23;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v23 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                [*(a1 + 40) setObject:v3 forKeyedSubscript:{*(*(&v22 + 1) + 8 * i), v22}];
              }

              v19 = [v17 countByEnumeratingWithState:&v22 objects:v27 count:16];
            }

            while (v19);
          }
        }

        else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __52__AIDAServiceOwnersManager__loadServiceOwnerBundles__block_invoke_cold_3();
        }
      }

      else
      {
        v12 = _AIDALogSystem(v14);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke_cold_2();
        }
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __52__AIDAServiceOwnersManager__loadServiceOwnerBundles__block_invoke_cold_1();
    }
  }
}

NSObject *__53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AIDALogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_1DEB1B000, v5, OS_LOG_TYPE_DEFAULT, "Building service owner for bundle: %@", &v14, 0xCu);
  }

  v6 = [v4 isLoaded];
  if ((v6 & 1) == 0)
  {
    v9 = _AIDALogSystem(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke_cold_1();
    }

    goto LABEL_13;
  }

  v7 = [v4 principalClass];
  v8 = [v7 conformsToProtocol:&unk_1F59D2108];
  if ((v8 & 1) == 0)
  {
    v9 = _AIDALogSystem(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke_cold_2();
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v9 = [[v7 alloc] initWithAccountStore:*(a1 + 32)];
  v10 = _AIDALogSystem(v9);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1DEB1B000, v11, OS_LOG_TYPE_DEFAULT, "Allocated and initialized service owner: %@", &v14, 0xCu);
    }

    v9 = v9;
    v12 = v9;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke_cold_3();
    }

    v12 = 0;
  }

LABEL_14:

  return v12;
}

- (AIDAServiceOwnersManager)init
{
  [(AIDAServiceOwnersManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (AIDAServiceOwnersManager)initWithAccountStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = AIDAServiceOwnersManager;
  v6 = [(AIDAServiceOwnersManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    serviceOwners = v6->_serviceOwners;
    v6->_serviceOwners = 0;

    v7->_serviceOwnersLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v7->_accountStore, store);
  }

  return v7;
}

+ (void)configureProcessSpecificServiceOwnerRejectionlist:(id)rejectionlist
{
  v9 = *MEMORY[0x1E69E9840];
  rejectionlistCopy = rejectionlist;
  v4 = _AIDALogSystem(rejectionlistCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = rejectionlistCopy;
    _os_log_impl(&dword_1DEB1B000, v4, OS_LOG_TYPE_DEFAULT, "Configuring process-specific rejectionlist: %@", &v7, 0xCu);
  }

  v5 = [rejectionlistCopy copy];
  v6 = _AIDAServiceOwnersManagerRejectionlist;
  _AIDAServiceOwnersManagerRejectionlist = v5;
}

+ (void)configureProcessSpecificSupplementalServiceTypes:(id)types
{
  v9 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v4 = _AIDALogSystem(typesCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = typesCopy;
    _os_log_impl(&dword_1DEB1B000, v4, OS_LOG_TYPE_DEFAULT, "Configuring process-specific supplemental services: %@", &v7, 0xCu);
  }

  v5 = [typesCopy copy];
  v6 = _AIDAServiceOwnersManagerSupplementalServiceTypes;
  _AIDAServiceOwnersManagerSupplementalServiceTypes = v5;
}

+ (id)_supplementalServiceTypes
{
  v2 = [_AIDAServiceOwnersManagerSupplementalServiceTypes copy];

  return v2;
}

+ (NSArray)supportedServices
{
  _loadServiceOwnerBundlesIfNeeded = [self _loadServiceOwnerBundlesIfNeeded];
  v4 = MEMORY[0x1E695DFA0];
  allKeys = [_loadServiceOwnerBundlesIfNeeded allKeys];
  v6 = [v4 orderedSetWithArray:allKeys];

  _supplementalServiceTypes = [self _supplementalServiceTypes];
  if (_supplementalServiceTypes)
  {
    [v6 unionSet:_supplementalServiceTypes];
  }

  v8 = [v6 containsObject:@"com.apple.AppleID.Service.Cloud"];
  if (v8)
  {
    [v6 removeObject:@"com.apple.AppleID.Service.Cloud"];
    v8 = [v6 insertObject:@"com.apple.AppleID.Service.Cloud" atIndex:0];
  }

  v9 = _AIDALogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[AIDAServiceOwnersManager supportedServices];
  }

  array = [v6 array];

  return array;
}

- (id)accountForService:(id)service
{
  serviceCopy = service;
  serviceOwners = [(AIDAServiceOwnersManager *)self serviceOwners];
  v6 = [serviceOwners objectForKeyedSubscript:serviceCopy];
  v7 = [v6 accountForService:serviceCopy];

  return v7;
}

- (id)altDSIDForAccount:(id)account service:(id)service
{
  serviceCopy = service;
  accountCopy = account;
  serviceOwners = [(AIDAServiceOwnersManager *)self serviceOwners];
  v9 = [serviceOwners objectForKeyedSubscript:serviceCopy];
  v10 = [v9 altDSIDForAccount:accountCopy service:serviceCopy];

  return v10;
}

- (id)DSIDForAccount:(id)account service:(id)service
{
  serviceCopy = service;
  accountCopy = account;
  serviceOwners = [(AIDAServiceOwnersManager *)self serviceOwners];
  v9 = [serviceOwners objectForKeyedSubscript:serviceCopy];
  v10 = [v9 DSIDForAccount:accountCopy service:serviceCopy];

  return v10;
}

- (id)nameComponentsForAccount:(id)account service:(id)service
{
  serviceCopy = service;
  accountCopy = account;
  serviceOwners = [(AIDAServiceOwnersManager *)self serviceOwners];
  v9 = [serviceOwners objectForKeyedSubscript:serviceCopy];
  v10 = [v9 nameComponentsForAccount:accountCopy service:serviceCopy];

  return v10;
}

- (void)signInService:(id)service withContext:(id)context completion:(id)completion
{
  v52 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  contextCopy = context;
  completionCopy = completion;
  serviceOwners = [(AIDAServiceOwnersManager *)self serviceOwners];
  v12 = [serviceOwners objectForKeyedSubscript:serviceCopy];

  if (v12)
  {
    mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
    v15 = MEMORY[0x1E6985DB0];
    authenticationResults = [contextCopy authenticationResults];
    v37 = [v15 aida_analyticsStartEventForAIDAServiceType:serviceCopy accountManager:mEMORY[0x1E698DC80] authenticationResults:authenticationResults];

    v17 = +[AIDAAnalyticsReporterRTC sharedTelemetryReporter];
    [v17 sendEvent:v37];

    v18 = MEMORY[0x1E6985DB0];
    authenticationResults2 = [contextCopy authenticationResults];
    v36 = [v18 aida_analyticsDurationEventForAIDAServiceType:serviceCopy accountManager:mEMORY[0x1E698DC80] authenticationResults:authenticationResults2];

    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v35 = _os_activity_create(&dword_1DEB1B000, "AIDA/signInService", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v35, &state);
    v21 = _AIDASignpostLogSystem(v20);
    v22 = _AIDASignpostCreate(v21);
    v24 = v23;

    v26 = _AIDASignpostLogSystem(v25);
    v27 = v26;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 138543362;
      v49 = serviceCopy;
      _os_signpost_emit_with_name_impl(&dword_1DEB1B000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v22, "SignInService", " ServiceType=%{public,signpost.telemetry:string1,name=ServiceType}@  enableTelemetry=YES ", buf, 0xCu);
    }

    v29 = _AIDASignpostLogSystem(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v49 = v22;
      v50 = 2114;
      v51 = serviceCopy;
      _os_log_impl(&dword_1DEB1B000, v29, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInService  ServiceType=%{public,signpost.telemetry:string1,name=ServiceType}@  enableTelemetry=YES ", buf, 0x16u);
    }

    v30 = [contextCopy copy];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __65__AIDAServiceOwnersManager_signInService_withContext_completion___block_invoke;
    v38[3] = &unk_1E8683550;
    v31 = v36;
    v39 = v31;
    selfCopy = self;
    v45 = v22;
    v46 = v24;
    v41 = serviceCopy;
    v32 = v30;
    v42 = v32;
    v44 = completionCopy;
    v33 = mEMORY[0x1E698DC80];
    v43 = v33;
    [v12 signInService:v41 withContext:v32 completion:v38];

    os_activity_scope_leave(&state);
  }

  else
  {
    v34 = _AIDALogSystem(v13);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [AIDAServiceOwnersManager signInService:withContext:completion:];
    }

    v33 = [MEMORY[0x1E696ABC0] aida_errorWithCode:-1001];
    (*(completionCopy + 2))(completionCopy, 0, v33);
  }
}

void __65__AIDAServiceOwnersManager_signInService_withContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 aida_updateEventWithSuccess:a2 error:v6];
  v7 = +[AIDAAnalyticsReporterRTC sharedTelemetryReporter];
  [v7 sendEvent:*(a1 + 32)];

  [*(a1 + 40) _completeSignInSignpost:*(a1 + 80) forService:*(a1 + 88) context:*(a1 + 48) success:*(a1 + 56) error:{a2, v6}];
  (*(*(a1 + 72) + 16))();
  v8 = MEMORY[0x1E6985DB0];
  v9 = *(a1 + 64);
  v10 = *(a1 + 48);
  v11 = [*(a1 + 56) authenticationResults];
  v13 = [v8 aida_analyticsFinishEventForAIDAServiceType:v10 accountManager:v9 authenticationResults:v11 success:a2 error:v6];

  v12 = +[AIDAAnalyticsReporterRTC sharedTelemetryReporter];
  [v12 sendEvent:v13];
}

- (id)_postCloudSupportedServicesForAltDSID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [(AIDAServiceOwnersManager *)self accountForService:@"com.apple.AppleID.Service.Cloud"];
    if (v5)
    {
      v6 = [(AIDAServiceOwnersManager *)self altDSIDForAccount:v5 service:@"com.apple.AppleID.Service.Cloud"];
      if (v6 && [dCopy isEqualToString:v6])
      {
        v7 = +[AIDAServiceOwnersManager supportedServices];
        v8 = [v7 mutableCopy];

        [v8 removeObject:@"com.apple.AppleID.Service.Cloud"];
        v9 = [v8 copy];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)signInToAllServicesInBackground:(BOOL)background usingContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v10 = _AIDALogSystem(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AIDAServiceOwnersManager signInToAllServicesInBackground:contextCopy usingContext:? completion:?];
  }

  v12 = _AIDALogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [AIDAServiceOwnersManager signInToAllServicesInBackground:contextCopy usingContext:? completion:?];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke;
  v15[3] = &unk_1E86835F0;
  v16 = contextCopy;
  v17 = completionCopy;
  v15[4] = self;
  backgroundCopy = background;
  v13 = contextCopy;
  v14 = completionCopy;
  [(AIDAServiceOwnersManager *)self signInService:@"com.apple.AppleID.Service.Cloud" withContext:v13 completion:v15];
}

void __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v23 = v5;
  if (v5)
  {
    v6 = _AIDALogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB1B000, v6, OS_LOG_TYPE_DEFAULT, "Failed global signin with authentication results for cloud service.", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v21 = a2;
    v22 = a1;
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = [v7[1] authenticationResults];
    v10 = [v9 objectForKeyedSubscript:@"AKAltDSID"];
    v11 = [v8 _postCloudSupportedServicesForAltDSID:v10];

    v25 = [v7[1] mutableCopy];
    [v25 setOperationUIPermissions:0];
    v12 = dispatch_group_create();
    *buf = 0;
    v41 = buf;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy_;
    v44 = __Block_byref_object_dispose_;
    v45 = *v7;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v11;
    v13 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v13)
    {
      v14 = *v37;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          dispatch_group_enter(v12);
          v17 = dispatch_get_global_queue(33, 0);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke_101;
          block[3] = &unk_1E86835A0;
          block[4] = v16;
          v35 = buf;
          v33 = v25;
          v34 = v12;
          dispatch_async(v17, block);
        }

        v13 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v13);
    }

    v18 = *(v22 + 56);
    if (v18 == 1)
    {
      (*(*(v22 + 48) + 16))();
      LOBYTE(v18) = *(v22 + 56);
    }

    v19 = dispatch_get_global_queue(33, 0);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke_106;
    v26[3] = &unk_1E86835C8;
    v30 = v18;
    v20 = *(v22 + 48);
    v31 = v21;
    v27 = 0;
    v28 = v20;
    v29 = buf;
    dispatch_group_notify(v12, v19, v26);

    _Block_object_dispose(buf, 8);
  }
}

void __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke_101(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _AIDALogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1DEB1B000, v2, OS_LOG_TYPE_DEFAULT, "Logging into service %{public}@", buf, 0xCu);
  }

  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke_102;
  v7[3] = &unk_1E8683578;
  v7[4] = v5;
  v8 = *(a1 + 48);
  [v4 signInService:v5 withContext:v6 completion:v7];
}

void __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke_102(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AIDALogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v9 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1DEB1B000, v6, OS_LOG_TYPE_DEFAULT, "Log in to service %@ completed with result: %@, error: %@", &v9, 0x20u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke_106(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)signInToServices:(id)services usingContext:(id)context completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  contextCopy = context;
  completionCopy = completion;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy_;
  v30[4] = __Block_byref_object_dispose_;
  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke;
  v26[3] = &unk_1E8683690;
  v26[4] = self;
  v11 = contextCopy;
  v27 = v11;
  v29 = v30;
  v12 = completionCopy;
  v28 = v12;
  v13 = MEMORY[0x1E12C4D20](v26);
  v14 = [servicesCopy mutableCopy];
  if (![v14 containsObject:@"com.apple.AppleID.Service.Cloud"])
  {
    v16 = servicesCopy;
    goto LABEL_7;
  }

  v15 = @"com.apple.AppleID.Service.Cloud";
  [v14 removeObject:v15];
  v16 = [v14 copy];

  if (!v15)
  {
LABEL_7:
    (v13)[2](v13, v14);
    goto LABEL_8;
  }

  v18 = _AIDALogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v15;
    _os_log_impl(&dword_1DEB1B000, v18, OS_LOG_TYPE_DEFAULT, "signInToServices - Logging into service %{public}@", buf, 0xCu);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_111;
  v20[3] = &unk_1E86836B8;
  v25 = v30;
  v19 = v15;
  v21 = v19;
  v23 = v12;
  v24 = v13;
  v22 = v14;
  [(AIDAServiceOwnersManager *)self signInService:v19 withContext:v11 completion:v20];

LABEL_8:
  _Block_object_dispose(v30, 8);
}

void __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 1;
  v4 = dispatch_group_create();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        dispatch_group_enter(v4);
        v9 = dispatch_get_global_queue(33, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_2;
        block[3] = &unk_1E8683640;
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        block[4] = v8;
        block[5] = v10;
        v21 = v11;
        v12 = *(a1 + 56);
        v23 = v29;
        v24 = v12;
        v22 = v4;
        dispatch_async(v9, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v5);
  }

  v13 = dispatch_get_global_queue(33, 0);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_2_109;
  v17[3] = &unk_1E8683668;
  v19 = v29;
  v15 = *(a1 + 48);
  v14 = v15;
  v18 = v15;
  dispatch_group_notify(v4, v13, v17);

  _Block_object_dispose(v29, 8);
}

void __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _AIDALogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v13 = v3;
    _os_log_impl(&dword_1DEB1B000, v2, OS_LOG_TYPE_DEFAULT, "signInToServices - Logging into service %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_107;
  v9[3] = &unk_1E8683618;
  v11 = *(a1 + 72);
  v9[4] = v5;
  v8 = *(a1 + 56);
  v7 = v8;
  v10 = v8;
  [v4 signInService:v5 withContext:v6 completion:v9];
}

void __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_107(void *a1, uint64_t a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 0;
  }

  v5 = a3;
  v6 = [[AIDAServiceOperationResult alloc] initWithSuccess:a2 error:v5 type:a1[4]];

  [*(*(a1[7] + 8) + 40) setObject:v6 forKeyedSubscript:a1[4]];
  v7 = a1[5];

  dispatch_group_leave(v7);
}

void __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_2_109(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1[5] + 8) + 40) copy];
  v3 = _AIDALogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1[6] + 8) + 24))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = 138412546;
    v6 = v4;
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1DEB1B000, v3, OS_LOG_TYPE_DEFAULT, "signInToServices completed with success %@ and results: %@", &v5, 0x16u);
  }

  (*(a1[4] + 16))();
}

void __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_111(void *a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [[AIDAServiceOperationResult alloc] initWithSuccess:a2 error:v5 type:a1[4]];

  [*(*(a1[8] + 8) + 40) setObject:v6 forKeyedSubscript:a1[4]];
  if (a2)
  {
    v8 = *(a1[7] + 16);

    v8();
  }

  else
  {
    v9 = _AIDALogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1[8] + 8) + 40);
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_1DEB1B000, v9, OS_LOG_TYPE_DEFAULT, "signInToServices failed sign in for primary account with results: %@", &v13, 0xCu);
    }

    v11 = a1[6];
    v12 = [*(*(a1[8] + 8) + 40) copy];
    (*(v11 + 16))(v11, 0, v12);
  }
}

- (void)signOutService:(id)service withContext:(id)context completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  contextCopy = context;
  completionCopy = completion;
  v11 = _AIDASignpostLogSystem(completionCopy);
  v12 = _AIDASignpostCreate(v11);
  v14 = v13;

  v16 = _AIDASignpostLogSystem(v15);
  v17 = v16;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 138543362;
    *&buf[4] = serviceCopy;
    _os_signpost_emit_with_name_impl(&dword_1DEB1B000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SignOutService", " ServiceType=%{public,signpost.telemetry:string1,name=ServiceType}@  enableTelemetry=YES ", buf, 0xCu);
  }

  v19 = _AIDASignpostLogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = v12;
    *&buf[12] = 2114;
    *&buf[14] = serviceCopy;
    _os_log_impl(&dword_1DEB1B000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignOutService  ServiceType=%{public,signpost.telemetry:string1,name=ServiceType}@  enableTelemetry=YES ", buf, 0x16u);
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __66__AIDAServiceOwnersManager_signOutService_withContext_completion___block_invoke;
  v26[3] = &unk_1E86836E0;
  v28 = v12;
  v29 = v14;
  v20 = completionCopy;
  v27 = v20;
  v21 = MEMORY[0x1E12C4D20](v26);
  serviceOwners = [(AIDAServiceOwnersManager *)self serviceOwners];
  v23 = [serviceOwners objectForKeyedSubscript:serviceCopy];

  if (v23)
  {
    v24 = _os_activity_create(&dword_1DEB1B000, "AIDA/signOutService", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *buf = 0;
    *&buf[8] = 0;
    os_activity_scope_enter(v24, buf);
    v25 = [contextCopy copy];
    [v23 signOutService:serviceCopy withContext:v25 completion:v21];

    os_activity_scope_leave(buf);
  }

  else
  {
    v24 = [MEMORY[0x1E696ABC0] aida_errorWithCode:-1001];
    (v21)[2](v21, 0, v24);
  }
}

void __66__AIDAServiceOwnersManager_signOutService_withContext_completion___block_invoke(void *a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _AIDASignpostGetNanoseconds(a1[5], a1[6]);
  v7 = _AIDASignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[5];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v15 = 67240448;
    *v16 = a2;
    *&v16[4] = 1026;
    *&v16[6] = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_1DEB1B000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SignOutService", " Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v15, 0xEu);
  }

  v11 = _AIDASignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[5];
    v14 = [v5 code];
    v15 = 134218752;
    *v16 = v13;
    *&v16[8] = 2048;
    v17 = v12;
    v18 = 1026;
    v19 = a2;
    v20 = 1026;
    v21 = v14;
    _os_log_impl(&dword_1DEB1B000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignOutService  Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v15, 0x22u);
  }

  (*(a1[4] + 16))();
}

- (void)signOutOfAllServicesUsingContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v8 = +[AIDAServiceOwnersManager supportedServices];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__AIDAServiceOwnersManager_signOutOfAllServicesUsingContext_completion___block_invoke;
  v10[3] = &unk_1E8683708;
  v11 = completionCopy;
  v9 = completionCopy;
  [(AIDAServiceOwnersManager *)self signOutOfServices:v8 usingContext:contextCopy completion:v10];
}

void __72__AIDAServiceOwnersManager_signOutOfAllServicesUsingContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"com.apple.AppleID.Service.Cloud"];
  v5 = *(a1 + 32);
  v8 = v4;
  if (v4)
  {
    v6 = [v4 success];
    v7 = [v8 error];
    (*(v5 + 16))(v5, v6, v7);
  }

  else
  {
    (*(v5 + 16))(v5, 1, 0);
  }
}

- (void)signOutOfServices:(id)services usingContext:(id)context completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  contextCopy = context;
  completionCopy = completion;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy_;
  v30[4] = __Block_byref_object_dispose_;
  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke;
  v26[3] = &unk_1E8683690;
  v26[4] = self;
  v11 = contextCopy;
  v27 = v11;
  v29 = v30;
  v12 = completionCopy;
  v28 = v12;
  v13 = MEMORY[0x1E12C4D20](v26);
  v14 = [servicesCopy mutableCopy];
  if (![v14 containsObject:@"com.apple.AppleID.Service.Cloud"])
  {
    v16 = servicesCopy;
    goto LABEL_7;
  }

  v15 = @"com.apple.AppleID.Service.Cloud";
  [v14 removeObject:v15];
  v16 = [v14 copy];

  if (!v15)
  {
LABEL_7:
    (v13)[2](v13, v14);
    goto LABEL_8;
  }

  v18 = _AIDALogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v15;
    _os_log_impl(&dword_1DEB1B000, v18, OS_LOG_TYPE_DEFAULT, "signOutOfServices - Logging out of primary service %{public}@", buf, 0xCu);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_115;
  v20[3] = &unk_1E86836B8;
  v25 = v30;
  v19 = v15;
  v21 = v19;
  v23 = v12;
  v24 = v13;
  v22 = v14;
  [(AIDAServiceOwnersManager *)self signOutService:v19 withContext:v11 completion:v20];

LABEL_8:
  _Block_object_dispose(v30, 8);
}

void __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 1;
  v4 = dispatch_group_create();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        dispatch_group_enter(v4);
        v9 = dispatch_get_global_queue(33, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_2;
        block[3] = &unk_1E8683640;
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        block[4] = v8;
        block[5] = v10;
        v21 = v11;
        v12 = *(a1 + 56);
        v23 = v29;
        v24 = v12;
        v22 = v4;
        dispatch_async(v9, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v5);
  }

  v13 = dispatch_get_global_queue(33, 0);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_2_114;
  v17[3] = &unk_1E8683668;
  v19 = v29;
  v15 = *(a1 + 48);
  v14 = v15;
  v18 = v15;
  dispatch_group_notify(v4, v13, v17);

  _Block_object_dispose(v29, 8);
}

void __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _AIDALogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v13 = v3;
    _os_log_impl(&dword_1DEB1B000, v2, OS_LOG_TYPE_DEFAULT, "signOutOfServices - Logging out of service %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_113;
  v9[3] = &unk_1E8683618;
  v11 = *(a1 + 72);
  v9[4] = v5;
  v8 = *(a1 + 56);
  v7 = v8;
  v10 = v8;
  [v4 signOutService:v5 withContext:v6 completion:v9];
}

void __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_113(void *a1, uint64_t a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 0;
  }

  v5 = a3;
  v6 = [[AIDAServiceOperationResult alloc] initWithSuccess:a2 error:v5 type:a1[4]];

  [*(*(a1[7] + 8) + 40) setObject:v6 forKeyedSubscript:a1[4]];
  v7 = a1[5];

  dispatch_group_leave(v7);
}

void __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_2_114(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1[5] + 8) + 40) copy];
  v3 = _AIDALogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1[6] + 8) + 24))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = 138412546;
    v6 = v4;
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1DEB1B000, v3, OS_LOG_TYPE_DEFAULT, "signOutOfServices completed with success %@ and results: %@", &v5, 0x16u);
  }

  (*(a1[4] + 16))();
}

void __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_115(void *a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [[AIDAServiceOperationResult alloc] initWithSuccess:a2 error:v5 type:a1[4]];

  [*(*(a1[8] + 8) + 40) setObject:v6 forKeyedSubscript:a1[4]];
  if (a2)
  {
    v8 = *(a1[7] + 16);

    v8();
  }

  else
  {
    v9 = _AIDALogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1[8] + 8) + 40);
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_1DEB1B000, v9, OS_LOG_TYPE_DEFAULT, "signOutOfServices failed sign out for primary account with results: %@", &v13, 0xCu);
    }

    v11 = a1[6];
    v12 = [*(*(a1[8] + 8) + 40) copy];
    (*(v11 + 16))(v11, 0, v12);
  }
}

+ (id)_sharedTelemetryReporter
{
  if (_sharedTelemetryReporter_once != -1)
  {
    +[AIDAServiceOwnersManager _sharedTelemetryReporter];
  }

  v3 = _sharedTelemetryReporter_reporter;

  return v3;
}

void __52__AIDAServiceOwnersManager__sharedTelemetryReporter__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  v3 = [MEMORY[0x1E6985DB8] analyticsReporterWithTransport:v5];
  v4 = _sharedTelemetryReporter_reporter;
  _sharedTelemetryReporter_reporter = v3;
}

- (void)_completeSignInSignpost:(id)signpost forService:(id)service context:(id)context success:(BOOL)success error:(id)error
{
  successCopy = success;
  var1 = signpost.var1;
  var0 = signpost.var0;
  v43 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  contextCopy = context;
  errorCopy = error;
  v32 = [serviceCopy stringByReplacingOccurrencesOfString:@"." withString:@"_"];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%@", "SignInService", v32];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_errorCode", v14];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_errorDomain", v14];
  if (errorCopy)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  }

  else
  {
    v17 = 0;
  }

  _telemetryTimeSeries = [contextCopy _telemetryTimeSeries];
  [_telemetryTimeSeries setObject:v17 forKeyedSubscript:v15];

  if (errorCopy)
  {
  }

  domain = [errorCopy domain];
  _telemetryTimeSeries2 = [contextCopy _telemetryTimeSeries];
  [_telemetryTimeSeries2 setObject:domain forKeyedSubscript:v16];

  Nanoseconds = _AIDASignpostGetNanoseconds(var0, var1);
  v22 = Nanoseconds;
  v23 = _AIDASignpostLogSystem(Nanoseconds);
  v24 = v23;
  if (var0 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 138543874;
    v35 = serviceCopy;
    v36 = 1026;
    *v37 = successCopy;
    *&v37[4] = 1026;
    *&v37[6] = [errorCopy code];
    _os_signpost_emit_with_name_impl(&dword_1DEB1B000, v24, OS_SIGNPOST_INTERVAL_END, var0, "SignInService", " ServiceType=%{public,signpost.telemetry:string2,name=ServiceType}@  Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x18u);
  }

  v25 = v22 / 1000000000.0;

  v27 = _AIDASignpostLogSystem(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    code = [errorCopy code];
    *buf = 134219010;
    v35 = var0;
    v36 = 2048;
    *v37 = v25;
    *&v37[8] = 2114;
    v38 = serviceCopy;
    v39 = 1026;
    v40 = successCopy;
    v41 = 1026;
    v42 = code;
    _os_log_impl(&dword_1DEB1B000, v27, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInService  ServiceType=%{public,signpost.telemetry:string2,name=ServiceType}@  Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x2Cu);
  }

  _telemetryTimeSeries3 = [contextCopy _telemetryTimeSeries];
  v30 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
  [_telemetryTimeSeries3 setObject:v30 forKeyedSubscript:v14];

  [(AIDAServiceOwnersManager *)self _publishSignInTelemetryEventForContext:contextCopy];
}

- (void)_publishSignInTelemetryEventForContext:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  _telemetryTimeSeries = [contextCopy _telemetryTimeSeries];
  v5 = [_telemetryTimeSeries copy];

  v7 = _AIDALogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = contextCopy;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1DEB1B000, v7, OS_LOG_TYPE_DEFAULT, "Publishing AIDA sign in telemetry event for context (%@) with time series: %@", &v12, 0x16u);
  }

  v8 = [MEMORY[0x1E6985DB0] analyticsEventWithName:@"com.apple.com.apple.appleidauthentication.sign-in-service" eventCategory:0 initData:v5];
  v9 = +[AIDAServiceOwnersManager _sharedTelemetryReporter];
  [v9 sendEvent:v8];

  v11 = _AIDALogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = contextCopy;
    _os_log_impl(&dword_1DEB1B000, v11, OS_LOG_TYPE_DEFAULT, "Published AIDA sign in telemetry event for context (%@)", &v12, 0xCu);
  }
}

void __53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_1DEB1B000, v0, OS_LOG_TYPE_FAULT, "Bundle already expected to be loaded: %@", v1, 0xCu);
}

void __52__AIDAServiceOwnersManager__loadServiceOwnerBundles__block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1DEB1B000, v1, OS_LOG_TYPE_ERROR, "Failed to load bundle (%{public}@), error: %@", v2, 0x16u);
}

+ (void)supportedServices
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1DEB1B000, v0, OS_LOG_TYPE_DEBUG, "AIDA returning supported services: %@", v1, 0xCu);
}

- (void)signInToAllServicesInBackground:(void *)a1 usingContext:completion:.cold.1(void *a1)
{
  v7 = [a1 cdpUiProvider];
  v8 = @"YES";
  if (!v7)
  {
    v8 = 0;
  }

  LODWORD(v9) = 138412290;
  HIDWORD(v9) = v8;
  OUTLINED_FUNCTION_2(&dword_1DEB1B000, v1, v2, "CDP provider set on context: %@", v3, v4, v5, v6, v9, HIDWORD(v8));
}

- (void)signInToAllServicesInBackground:(void *)a1 usingContext:completion:.cold.2(void *a1)
{
  v7 = [a1 aaSignInFlowControllerDelegate];
  v8 = @"YES";
  if (!v7)
  {
    v8 = 0;
  }

  LODWORD(v9) = 138412290;
  HIDWORD(v9) = v8;
  OUTLINED_FUNCTION_2(&dword_1DEB1B000, v1, v2, "AAFlowControllerDelegate set on context: %@", v3, v4, v5, v6, v9, HIDWORD(v8));
}

@end