@interface LSApplicationWorkspace
+ (id)_defaultAppQueue;
+ (id)_remoteObserver;
+ (id)callbackQueue;
+ (id)defaultWorkspace;
+ (id)progressQueue;
- (BOOL)_LSPrivateAskLSDToExitSafely:(double)safely completionHandler:(id)handler;
- (BOOL)_LSPrivateDatabaseNeedsRebuild;
- (BOOL)_LSPrivateRebuildApplicationDatabasesForSystemApps:(BOOL)apps internal:(BOOL)internal user:(BOOL)user uid:(unsigned int *)uid;
- (BOOL)_LSPrivateRebuildDatabaseAtNextRestart:(id)restart;
- (BOOL)_getBundleIdentifierForBundleAtURL:(id)l invokeUpdateBlockAndReregister:(id)reregister error:(id *)error;
- (BOOL)allowsAlternateIcons;
- (BOOL)applicationIsInstalled:(id)installed;
- (BOOL)downgradeApplicationToPlaceholder:(id)placeholder withOptions:(id)options error:(id *)error;
- (BOOL)establishConnection;
- (BOOL)forceDatabaseSaveForTestingWithError:(id *)error;
- (BOOL)garbageCollectDatabaseWithError:(id *)error;
- (BOOL)getClaimedActivityTypes:(id *)types domains:(id *)domains;
- (BOOL)getDefaultApplicationCategories:(unint64_t *)categories withCurrentDefaultApplication:(id)application error:(id *)error;
- (BOOL)initiateProgressForApp:(id)app withType:(unint64_t)type;
- (BOOL)installApplication:(id)application withOptions:(id)options error:(id *)error usingBlock:(id)block;
- (BOOL)installContainerizedApplicationArtifactAtURL:(id)l withOptions:(id)options returningRecordPromise:(id *)promise error:(id *)error progressBlock:(id)block;
- (BOOL)installPhaseFinishedForProgress:(id)progress;
- (BOOL)invalidateIconCache:(id)cache;
- (BOOL)isApplicationAvailableToOpenURLCommon:(id)common includePrivateURLSchemes:(BOOL)schemes error:(id *)error;
- (BOOL)isApplicationEligibleForReadOnlyDocumentOpenBehavior:(id)behavior;
- (BOOL)isBundleEligibleForOpenDocumentViaOpenURL:(id)l;
- (BOOL)isCurrentProcessEligibleForOpenDocumentViaOpenURL;
- (BOOL)isCurrentProcessEligibleForReadOnlyDocumentOpenBehavior;
- (BOOL)isVersion:(id)version greaterThanOrEqualToVersion:(id)toVersion;
- (BOOL)ls_injectUTTypeWithDeclaration:(id)declaration inDatabase:(id)database error:(id *)error;
- (BOOL)openApplicationWithBundleID:(id)d;
- (BOOL)openSensitiveURL:(id)l withOptions:(id)options error:(id *)error;
- (BOOL)openURL:(id)l withOptions:(id)options error:(id *)error;
- (BOOL)refreshUnbundledSystemExtensionPointsWithOperationUUID:(id)d requestContext:(id)context saveObserver:(id)observer registrationError:(id *)error;
- (BOOL)registerApplication:(id)application;
- (BOOL)registerApplicationDictionary:(id)dictionary withObserverNotification:(int)notification;
- (BOOL)registerApplicationForRebuildWithInfoDictionaries:(id)dictionaries personaUniqueStrings:(id)strings requestContext:(id)context registrationError:(id *)error;
- (BOOL)registerApplicationForRebuildWithInstallationRecord:(id)record extensionInstallationRecords:(id)records personaUniqueStrings:(id)strings requestContext:(id)context registrationError:(id *)error;
- (BOOL)registerBuiltinApplicationWithInstallationRecord:(id)record extensionInstallationRecords:(id)records personaUniqueStrings:(id)strings operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer registrationError:(id *)error;
- (BOOL)registerBuiltinStandaloneExtension:(id)extension personaUniqueStrings:(id)strings operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer registrationError:(id *)error;
- (BOOL)registerPlugin:(id)plugin;
- (BOOL)revertContainerizedApplicationWithIdentifier:(id)identifier options:(id)options returningRecordPromise:(id *)promise error:(id *)error progressBlock:(id)block;
- (BOOL)sendNotificationOfType:(unsigned int)type forApplicationWithBundleIdentifier:(id)identifier requestContext:(id)context error:(id *)error;
- (BOOL)setPersonaUniqueStrings:(id)strings forApplicationWithBundleIdentifier:(id)identifier operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer error:(id *)error;
- (BOOL)setPersonaUniqueStrings:(id)strings forApplicationsWithBundleIdentifiers:(id)identifiers operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer error:(id *)error;
- (BOOL)setPreferredAppMarketplaces:(id)marketplaces error:(id *)error;
- (BOOL)setProgressProportionsByPhase:(id)phase forInstallOfApplicationWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)uninstallApplication:(id)application withOptions:(id)options error:(id *)error usingBlock:(id)block;
- (BOOL)uninstallContainerizedApplicationWithIdentifier:(id)identifier options:(id)options error:(id *)error progressBlock:(id)block;
- (BOOL)unregisterApplication:(id)application;
- (BOOL)unregisterApplicationsAtMountPoint:(id)point operationUUID:(id)d saveObserver:(id)observer requestContext:(id)context;
- (BOOL)unregisterBuiltinApplicationAtURL:(id)l operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer error:(id *)error;
- (BOOL)unregisterBuiltinStandaloneExtensionAtURL:(id)l operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer error:(id *)error;
- (BOOL)unregisterContainerizedApplicationWithBundleIdentifier:(id)identifier operationUUID:(id)d unregistrationOperation:(unsigned int)operation precondition:(id)precondition requestContext:(id)context saveObserver:(id)observer unregistrationError:(id *)error;
- (BOOL)unregisterPlugin:(id)plugin;
- (BOOL)updatePlaceholderMetadataForApp:(id)app installType:(unint64_t)type failure:(unint64_t)failure underlyingError:(id)error source:(unint64_t)source outError:(id *)outError;
- (BOOL)updatePlaceholderMetadataForApplicationWithIdentifier:(id)identifier operationUUID:(id)d requestContext:(id)context installType:(unint64_t)type failure:(unint64_t)failure saveObserver:(id)observer error:(id *)error;
- (BOOL)updateRecordForApp:(id)app withSINF:(id)f iTunesMetadata:(id)metadata placeholderMetadata:(id)placeholderMetadata sendNotification:(int)notification operationUUID:(id)d outSaveToken:(id *)token error:(id *)self0;
- (BOOL)updateSINFMetadataForApplicationWithIdentifier:(id)identifier operationUUID:(id)d requestContext:(id)context parsedSINFInfo:(id)info saveObserver:(id)observer error:(id *)error;
- (BOOL)updateSINFWithData:(id)data forApplication:(id)application options:(id)options error:(id *)error;
- (BOOL)updateSINFWithData:(id)data forApplicationAtURL:(id)l error:(id *)error;
- (BOOL)updateiTunesMetadataForApplicationWithIdentifier:(id)identifier operationUUID:(id)d requestContext:(id)context metadataPlist:(id)plist saveObserver:(id)observer error:(id *)error;
- (BOOL)updateiTunesMetadataWithData:(id)data forApplication:(id)application options:(id)options error:(id *)error;
- (BOOL)updateiTunesMetadataWithData:(id)data forApplicationAtURL:(id)l error:(id *)error;
- (BOOL)urlContainsDeviceIdentifierForAdvertising:(id)advertising;
- (id)URLOverrideForURL:(id)l;
- (id)_LSPrivateRemovedSystemAppIdentifiers;
- (id)applicationForOpeningResource:(id)resource;
- (id)applicationForUserActivityDomainName:(id)name;
- (id)applicationForUserActivityType:(id)type;
- (id)applicationProxiesWithPlistFlags:(unsigned int)flags bundleFlags:(unint64_t)bundleFlags;
- (id)applicationsAvailableForHandlingURLScheme:(id)scheme;
- (id)applicationsAvailableForOpeningURL:(id)l legacySPI:(BOOL)i;
- (id)applicationsForUserActivityType:(id)type limit:(unint64_t)limit;
- (id)applicationsOfType:(unint64_t)type;
- (id)createDeviceIdentifierWithVendorName:(id)name bundleIdentifier:(id)identifier;
- (id)defaultApplicationForCategory:(unint64_t)category error:(id *)error;
- (id)deviceIdentifierForAdvertising;
- (id)deviceIdentifierForVendor;
- (id)deviceIdentifierForVendorSeedData;
- (id)getPreferredAppMarketplacesWithError:(id *)error;
- (id)installProgressForApplication:(id)application withPhase:(unint64_t)phase;
- (id)installProgressForBundleID:(id)d makeSynchronous:(unsigned __int8)synchronous;
- (id)installedPlugins;
- (id)legacyApplicationProxiesListWithType:(unint64_t)type;
- (id)observerProxy;
- (id)openURL:(id)l configuration:(id)configuration error:(id *)error;
- (id)operationToOpenResource:(id)resource usingApplication:(id)application uniqueDocumentIdentifier:(id)identifier isContentManaged:(BOOL)managed sourceAuditToken:(id *)token userInfo:(id)info configuration:(id)configuration delegate:(id)self0;
- (id)operationToOpenResource:(id)resource usingApplication:(id)application uniqueDocumentIdentifier:(id)identifier isContentManaged:(BOOL)managed sourceAuditToken:(id *)token userInfo:(id)info options:(id)options delegate:(id)self0;
- (id)optionsFromOpenConfiguration:(id)configuration;
- (id)pluginsMatchingQuery:(id)query applyFilter:(id)filter;
- (id)pluginsWithIdentifiers:(id)identifiers protocols:(id)protocols version:(id)version applyFilter:(id)filter;
- (id)pluginsWithIdentifiers:(id)identifiers protocols:(id)protocols version:(id)version withFilter:(id)filter;
- (id)privateURLSchemes;
- (id)publicURLSchemes;
- (id)registerContainerizedApplicationWithInfoDictionaries:(id)dictionaries personaUniqueStrings:(id)strings operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer registrationError:(id *)error;
- (id)registerContainerizedApplicationWithInstallationRecord:(id)record extensionInstallationRecords:(id)records personaUniqueStrings:(id)strings operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer registrationError:(id *)error;
- (id)remoteObserver;
- (id)scanForApplicationStateChangesFromRank:(id)rank toRank:(id)toRank exceptions:(id)exceptions;
- (id)scanForApplicationStateChangesWithAllowlist:(id)allowlist;
- (id)scanForAppsInRatingRankExceptionsList:(id)list;
- (id)scanForForDeletableSystemApps;
- (id)syncObserverProxy;
- (id)systemMode;
- (void)_LSClearSchemaCaches;
- (void)_LSFailedToOpenURL:(id)l withBundle:(id)bundle;
- (void)_LSPrivateNoteMigratorRunning;
- (void)_LSPrivateSetRemovedSystemAppIdentifiers:(id)identifiers;
- (void)_LSPrivateUpdateAppRemovalRestrictions;
- (void)_openUserActivity:(id)activity orUserActivityUUID:(id)d activityTypeForUUID:(id)iD withApplicationProxy:(id)proxy options:(id)options completionHandler:(id)handler;
- (void)addObserver:(id)observer;
- (void)clearAdvertisingIdentifier;
- (void)clearCreatedProgressForBundleID:(id)d;
- (void)commonClientOpenURL:(id)l options:(id)options configuration:(id)configuration synchronous:(BOOL)synchronous completionHandler:(id)handler;
- (void)deviceIdentifierForVendorSeedData;
- (void)enumerateApplicationsOfType:(unint64_t)type legacySPI:(BOOL)i block:(id)block;
- (void)enumerateBundlesOfType:(unint64_t)type legacySPI:(BOOL)i block:(id)block;
- (void)enumerateBundlesOfType:(unint64_t)type usingBlock:(id)block;
- (void)enumeratePluginsMatchingQuery:(id)query withBlock:(id)block;
- (void)getKnowledgeUUID:(id *)d andSequenceNumber:(id *)number;
- (void)ls_resetTestingDatabase;
- (void)ls_testWithCleanDatabaseWithError:(id *)error;
- (void)noteRestrictionsUpdateForOpensWithCompletion:(id)completion;
- (void)openURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
- (void)openUserActivity:(id)activity usingApplicationRecord:(id)record configuration:(id)configuration completionHandler:(id)handler;
- (void)openUserActivityWithUUID:(id)d activityType:(id)type usingApplicationRecord:(id)record configuration:(id)configuration completionHandler:(id)handler;
- (void)placeholderInstalledForIdentifier:(id)identifier filterDowngrades:(BOOL)downgrades;
- (void)rebuildDatabaseContentForFrameworkAtURL:(id)l completionHandler:(id)handler;
- (void)relaxApplicationTypeRequirements:(BOOL)requirements forApplicationRecord:(id)record completionHandler:(id)handler;
- (void)removeAllDefaultApplicationPreferencesWithCompletionHandler:(id)handler;
- (void)removeDeviceIdentifierForVendorName:(id)name bundleIdentifier:(id)identifier;
- (void)removeObserver:(id)observer;
- (void)sendApplicationStateChangedNotificationsFor:(id)for stateProvider:(id)provider completion:(id)completion;
- (void)sendExtensionNotificationsForExtensionBundleIdentifier:(id)identifier changingRestrictionStateTo:(BOOL)to;
- (void)sendExtensionNotificationsForSystemModeChangeFrom:(id)from to:(id)to;
- (void)setDefaultApplicationForCategory:(unint64_t)category toApplicationRecord:(id)record completionHandler:(id)handler;
- (void)setDefaultHandlerForTypeRecord:(id)record toApplicationRecord:(id)applicationRecord completionHandler:(id)handler;
- (void)setDefaultMailClientToApplicationRecord:(id)record completionHandler:(id)handler;
- (void)setDefaultURLHandlerForScheme:(id)scheme to:(id)to completion:(id)completion;
- (void)setDefaultWebBrowserToApplicationRecord:(id)record completionHandler:(id)handler;
- (void)setPreferenceForNoHandlerForCategory:(unint64_t)category completionHandler:(id)handler;
- (void)systemMode;
@end

@implementation LSApplicationWorkspace

+ (id)defaultWorkspace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__LSApplicationWorkspace_defaultWorkspace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultWorkspace_once != -1)
  {
    dispatch_once(&defaultWorkspace_once, block);
  }

  v2 = defaultWorkspace_gDefaultWorkspace;

  return v2;
}

- (id)remoteObserver
{
  establishConnection = [(LSApplicationWorkspace *)self establishConnection];
  if ((establishConnection & 1) == 0)
  {
    v4 = _LSDefaultLog(establishConnection);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "failed to establish connection to xpc service", v11, 2u);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = +[LSApplicationWorkspace _remoteObserver];
  if (([v6 isObservinglsd] & 1) == 0)
  {
    v7 = +[LSApplicationWorkspace _remoteObserver];
    currentObserverCount = [v7 currentObserverCount];

    if (!currentObserverCount)
    {
      goto LABEL_9;
    }

    [_sObserverProxy addObserver];
    v6 = +[LSApplicationWorkspace _remoteObserver];
    [v6 setObservinglsd:1];
  }

LABEL_9:
  objc_sync_exit(selfCopy);

  v9 = +[LSApplicationWorkspace _remoteObserver];

  return v9;
}

void __42__LSApplicationWorkspace_defaultWorkspace__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultWorkspace_gDefaultWorkspace;
  defaultWorkspace_gDefaultWorkspace = v1;
}

- (BOOL)establishConnection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v2 = +[LSApplicationWorkspace progressQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__LSApplicationWorkspace_establishConnection__block_invoke;
  block[3] = &unk_1E6A19988;
  block[4] = &v5;
  dispatch_sync(v2, block);

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (id)progressQueue
{
  if (progressQueue_once != -1)
  {
    +[LSApplicationWorkspace progressQueue];
  }

  v3 = progressQueue_result;

  return v3;
}

void __39__LSApplicationWorkspace_progressQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.clientprogress", v2);
  v1 = progressQueue_result;
  progressQueue_result = v0;
}

void __45__LSApplicationWorkspace_establishConnection__block_invoke(uint64_t a1)
{
  if (!_sObserverConnection)
  {
    if (_LSProcessCanAccessProgressPort_onceToken != -1)
    {
      __45__LSApplicationWorkspace_establishConnection__block_invoke_cold_1();
    }

    if (_LSProcessCanAccessProgressPort_canAccessProgressPort == 1)
    {
      v2 = objc_alloc(MEMORY[0x1E696B0B8]);
      v4 = [__LSDefaultsGetSharedInstance(v2 v3)];
      v5 = [v2 initWithMachServiceName:v4 options:4096];

      v7 = installProgressInterface(v6);
      [v5 setRemoteObjectInterface:v7];

      v9 = workspaceObserverInterface(v8);
      [v5 setExportedInterface:v9];

      v10 = _sObserverConnection;
      _sObserverConnection = v5;

      v12 = _LSProgressLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Establishing xpc connection to lsd", buf, 2u);
      }

      if (_sObserverConnection)
      {
        [_sObserverConnection setInvalidationHandler:&__block_literal_global_191];
        [_sObserverConnection setInterruptionHandler:&__block_literal_global_196];
        v13 = +[LSApplicationWorkspace _remoteObserver];
        [_sObserverConnection setExportedObject:v13];

        [_sObserverConnection resume];
        v14 = [_sObserverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_205];
        v15 = _sObserverProxy;
        _sObserverProxy = v14;

        [_sObserverProxy _lsPing:@"LSWorkspaceObserverPing" reply:&__block_literal_global_212];
      }

      else
      {
        v16 = _LSProgressLog(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEFAULT, "Failed to establish xpc connection to lsd", v18, 2u);
        }

        v17 = _sObserverProxy;
        _sObserverProxy = 0;

        *(*(*(a1 + 32) + 8) + 24) = 0;
      }
    }
  }
}

+ (id)_remoteObserver
{
  if (_remoteObserver_onceToken != -1)
  {
    +[LSApplicationWorkspace _remoteObserver];
  }

  v3 = _sRemoteObserver;

  return v3;
}

void __41__LSApplicationWorkspace__remoteObserver__block_invoke()
{
  v0 = objc_alloc_init(LSApplicationWorkspaceRemoteObserver);
  v1 = _sRemoteObserver;
  _sRemoteObserver = v0;
}

- (id)observerProxy
{
  establishConnection = [(LSApplicationWorkspace *)self establishConnection];
  if ((establishConnection & 1) == 0)
  {
    v3 = _LSDefaultLog(establishConnection);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "failed to establish connection to xpc service", v6, 2u);
    }
  }

  v4 = _sObserverProxy;

  return v4;
}

- (id)systemMode
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4;
  v23 = __Block_byref_object_dispose__4;
  v24 = 0;
  if ([__LSDefaultsGetSharedInstance(self a2)])
  {
    v2 = +[LSApplicationRestrictionsManager sharedInstance];
    systemMode = [(LSApplicationRestrictionsManager *)v2 systemMode];
    v5 = v20[5];
    v20[5] = systemMode;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__4;
    v17 = __Block_byref_object_dispose__4;
    v18 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __36__LSApplicationWorkspace_systemMode__block_invoke;
    v12[3] = &unk_1E6A198D0;
    v12[4] = &v13;
    v6 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__LSApplicationWorkspace_systemMode__block_invoke_2;
    v11[3] = &unk_1E6A198F8;
    v11[4] = &v13;
    v11[5] = &v19;
    v7 = [v6 getSystemModeWithCompletionHandler:v11];
    if (v14[5])
    {
      v8 = _LSDefaultLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [LSApplicationWorkspace systemMode];
      }
    }

    _Block_object_dispose(&v13, 8);
  }

  v9 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __36__LSApplicationWorkspace_systemMode__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (id)deviceIdentifierForVendor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke;
  v5[3] = &unk_1E6A19D20;
  v5[4] = &v6;
  v2 = _LSRetryForConnectionInterrupted(v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

id __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_2;
  v7[3] = &unk_1E6A198D0;
  v7[4] = &v8;
  v2 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_376;
  v6[3] = &unk_1E6A19CF8;
  v6[4] = *(a1 + 32);
  [v2 getIdentifierOfType:0 completionHandler:v6];
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = 0;
  }

  else
  {
    v3 = v9[5];
  }

  v4 = v3;

  _Block_object_dispose(&v8, 8);

  return v4;
}

+ (id)callbackQueue
{
  if (callbackQueue_once != -1)
  {
    +[LSApplicationWorkspace callbackQueue];
  }

  v3 = callbackQueue_result;

  return v3;
}

void __39__LSApplicationWorkspace_callbackQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.clientcallbacks", v2);
  v1 = callbackQueue_result;
  callbackQueue_result = v0;
}

- (void)getKnowledgeUUID:(id *)d andSequenceNumber:(id *)number
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  if (_LSCurrentProcessMayMapDatabase())
  {
    v13 = 0;
    if (!_LSContextInit(&v13))
    {
      v6 = _LSDatabaseGetCacheGUID(v13);
      v7 = v21[5];
      v21[5] = v6;

      SequenceNumber = _LSDatabaseGetSequenceNumber(v13);
      if (SequenceNumber)
      {
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:SequenceNumber];
        v10 = v15[5];
        v15[5] = v9;
      }

      _LSContextDestroy(&v13);
    }

    if (d)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
    __LAUNCH_SERVICES_IS_ABORTING_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
    v11 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__LSApplicationWorkspace_getKnowledgeUUID_andSequenceNumber___block_invoke;
    v12[3] = &unk_1E6A19920;
    v12[4] = &v20;
    v12[5] = &v14;
    [v11 getKnowledgeUUIDAndSequenceNumberWithCompletionHandler:v12];

    if (d)
    {
LABEL_7:
      *d = v21[5];
    }
  }

  if (number)
  {
    *number = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
}

void __61__LSApplicationWorkspace_getKnowledgeUUID_andSequenceNumber___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __45__LSApplicationWorkspace_establishConnection__block_invoke_189(uint64_t a1)
{
  v1 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEFAULT, "progress connection invalidationHandler called", v3, 2u);
  }

  v2 = +[LSApplicationWorkspace progressQueue];
  dispatch_sync(v2, &__block_literal_global_194);
}

void __45__LSApplicationWorkspace_establishConnection__block_invoke_192()
{
  v0 = _sObserverConnection;
  _sObserverConnection = 0;

  v1 = +[LSApplicationWorkspace _remoteObserver];
  [v1 setObservinglsd:0];
}

void __45__LSApplicationWorkspace_establishConnection__block_invoke_2(uint64_t a1)
{
  v1 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEFAULT, "interruptionHandler called, re-establishing connection to lsd", v3, 2u);
  }

  v2 = +[LSApplicationWorkspace progressQueue];
  dispatch_sync(v2, &__block_literal_global_199);
}

void __45__LSApplicationWorkspace_establishConnection__block_invoke_197()
{
  v0 = [_sObserverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_202];
  [v0 addObserver];

  v1 = +[LSApplicationWorkspace _remoteObserver];
  [v1 setObservinglsd:1];
}

void __45__LSApplicationWorkspace_establishConnection__block_invoke_2_200(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _LSDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Error %@ trying to re-establish observing connection to lsd", &v5, 0xCu);
  }

  v4 = +[LSApplicationWorkspace _remoteObserver];
  [v4 setObservinglsd:0];
}

void __45__LSApplicationWorkspace_establishConnection__block_invoke_203(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _LSDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Error %@ trying to establish observing connection to lsd", &v5, 0xCu);
  }

  v4 = +[LSApplicationWorkspace _remoteObserver];
  [v4 setObservinglsd:0];
}

void __45__LSApplicationWorkspace_establishConnection__block_invoke_209(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _LSProgressLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Received %@, xpc connection established", &v4, 0xCu);
  }
}

- (id)syncObserverProxy
{
  establishConnection = [(LSApplicationWorkspace *)self establishConnection];
  if ((establishConnection & 1) == 0)
  {
    v3 = _LSDefaultLog(establishConnection);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "failed to establish connection to xpc service", buf, 2u);
    }
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  v4 = +[LSApplicationWorkspace progressQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__LSApplicationWorkspace_syncObserverProxy__block_invoke;
  block[3] = &unk_1E6A19988;
  block[4] = buf;
  dispatch_sync(v4, block);

  v5 = *(v9 + 5);
  _Block_object_dispose(buf, 8);

  return v5;
}

void __43__LSApplicationWorkspace_syncObserverProxy__block_invoke(uint64_t a1)
{
  v2 = [_sObserverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_214];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __43__LSApplicationWorkspace_syncObserverProxy__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _LSDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Error %@ trying to establish observing connection to lsd", &v4, 0xCu);
  }
}

- (void)addObserver:(id)observer
{
  v18 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = shouldConnectToLSD(observerCopy);
  v6 = v5;
  v7 = _LSDefaultLog(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = objc_opt_class();
    v16 = 2048;
    v17 = observerCopy;
    v8 = v15;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "LSApplicationWorkspace: adding observer %@ @ %p", buf, 0x16u);
  }

  performWithLSAWDistributedNotificationNameBasedOnObserverConformance(observerCopy, subscribeToLSAWDistributedNotification);
  if (DeviceManagementLibrary_frameworkLibrary_0 || (DeviceManagementLibrary_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/DeviceManagement.framework/DeviceManagement", 2)) != 0)
  {
    objc_opt_class();
    v9 = (objc_opt_isKindOfClass() & 1) != 0 ? [objc_opt_class() actuallyOverridesDMFObserverMethod] : objc_opt_respondsToSelector();
    if (v9)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__LSApplicationWorkspace_addObserver___block_invoke;
      block[3] = &unk_1E6A195E0;
      block[4] = self;
      if (addObserver__onceToken != -1)
      {
        dispatch_once(&addObserver__onceToken, block);
      }
    }
  }

  remoteObserver = [(LSApplicationWorkspace *)self remoteObserver];
  if (remoteObserver)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [remoteObserver setObservinglsd:1];
    [remoteObserver addLocalObserver:observerCopy];
    if (v6)
    {
      observerProxy = [(LSApplicationWorkspace *)selfCopy observerProxy];
      [observerProxy addObserver];
    }

    objc_sync_exit(selfCopy);
  }
}

void __38__LSApplicationWorkspace_addObserver___block_invoke(uint64_t a1)
{
  v2 = _LSGetDMFNotificationCenter();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__LSApplicationWorkspace_addObserver___block_invoke_2;
  v4[3] = &unk_1E6A199B0;
  v4[4] = *(a1 + 32);
  v3 = [v2 addObserverForName:@"com.apple.launchservices.private._LSDMFPolicyDidChangeNotification" object:0 queue:0 usingBlock:v4];
}

void __38__LSApplicationWorkspace_addObserver___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 remoteObserver];
  v4 = [v3 object];

  [v5 deviceManagementPolicyDidChange:v4];
}

- (void)removeObserver:(id)observer
{
  v20 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = shouldConnectToLSD(observerCopy);
  v6 = v5;
  v7 = _LSDefaultLog(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = objc_opt_class();
    v18 = 2048;
    v19 = observerCopy;
    v8 = v17;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "LSApplicationWorkspace: removing observer %@ @ %p", &v16, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  remoteObserver = [(LSApplicationWorkspace *)selfCopy remoteObserver];
  [remoteObserver removeLocalObserver:observerCopy];

  remoteObserver2 = [(LSApplicationWorkspace *)selfCopy remoteObserver];
  v12 = [remoteObserver2 currentObserverCount] == 0;

  if (v6)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    observerProxy = [(LSApplicationWorkspace *)selfCopy observerProxy];
    [observerProxy removeObserver];

    v15 = +[LSApplicationWorkspace progressQueue];
    dispatch_async(v15, &__block_literal_global_265);
  }

  performWithLSAWDistributedNotificationNameBasedOnObserverConformance(observerCopy, unsubscribeFromLSAWDistributedNotification);
  objc_sync_exit(selfCopy);
}

- (id)applicationProxiesWithPlistFlags:(unsigned int)flags bundleFlags:(unint64_t)bundleFlags
{
  v5 = *&flags;
  array = [MEMORY[0x1E695DF70] array];
  v7 = [_LSApplicationProxiesWithFlagsQuery queryWithPlistFlags:v5 bundleFlags:bundleFlags];
  if (v7)
  {
    v8 = +[_LSQueryContext defaultContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__LSApplicationWorkspace_applicationProxiesWithPlistFlags_bundleFlags___block_invoke;
    v10[3] = &unk_1E6A199D8;
    v11 = array;
    [v8 enumerateResolvedResultsOfQuery:v7 withBlock:v10];
  }

  return array;
}

id *__71__LSApplicationWorkspace_applicationProxiesWithPlistFlags_bundleFlags___block_invoke(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

- (id)applicationsForUserActivityType:(id)type limit:(unint64_t)limit
{
  v20 = *MEMORY[0x1E69E9840];
  if (!type)
  {
    type = &stru_1EEF65710;
  }

  v4 = [LSApplicationRecord applicationRecordsForUserActivityType:type limit:limit error:0];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          compatibilityObject = [*(*(&v15 + 1) + 8 * i) compatibilityObject];
          v12 = compatibilityObject;
          if (compatibilityObject)
          {
            [compatibilityObject detach];
            [v5 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)applicationForUserActivityType:(id)type
{
  v3 = [(LSApplicationWorkspace *)self applicationsForUserActivityType:type limit:1];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)applicationForUserActivityDomainName:(id)name
{
  if (!name)
  {
    name = &stru_1EEF65710;
  }

  v3 = [LSApplicationRecord applicationRecordsForUserActivityDomainName:name limit:1 error:0];
  firstObject = [v3 firstObject];

  if (firstObject)
  {
    compatibilityObject = [firstObject compatibilityObject];
    [compatibilityObject detach];
  }

  else
  {
    compatibilityObject = 0;
  }

  return compatibilityObject;
}

- (BOOL)openApplicationWithBundleID:(id)d
{
  dCopy = d;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = objc_autoreleasePoolPush();
  _LSFaultIfRunningOnMainThreadOfShellApp();
  v5 = [(_LSDService *)_LSDOpenService synchronousXPCProxyWithErrorHandler:?];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__LSApplicationWorkspace_openApplicationWithBundleID___block_invoke;
  v7[3] = &unk_1E6A19A00;
  v7[4] = &v8;
  [v5 openApplicationWithIdentifier:dCopy options:MEMORY[0x1E695E0F8] useClientProcessHandle:0 completionHandler:v7];

  objc_autoreleasePoolPop(v4);
  LOBYTE(v4) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (BOOL)openURL:(id)l withOptions:(id)options error:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  _LSFaultIfRunningOnMainThreadOfShellApp();
  v9 = openOptionsModifiedForOneTapOpen(lCopy, optionsCopy);

  v10 = (v21 + 5);
  obj = v21[5];
  v19 = 0;
  FileHandleForOpeningResourceIfNecessary = getFileHandleForOpeningResourceIfNecessary(lCopy, 0, 0, &v19, &obj);
  v12 = v19;
  objc_storeStrong(v10, obj);
  if (FileHandleForOpeningResourceIfNecessary)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __52__LSApplicationWorkspace_openURL_withOptions_error___block_invoke;
    v17[3] = &unk_1E6A198D0;
    v17[4] = &v20;
    v13 = [(_LSDService *)_LSDOpenService synchronousXPCProxyWithErrorHandler:v17];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__LSApplicationWorkspace_openURL_withOptions_error___block_invoke_2;
    v16[3] = &unk_1E6A19A28;
    v16[4] = &v26;
    v16[5] = &v20;
    [v13 openURL:lCopy fileHandle:v12 options:v9 completionHandler:v16];
  }

  v14 = *(v27 + 24);
  if (error && (v27[3] & 1) == 0)
  {
    *error = v21[5];
    v14 = *(v27 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v14 & 1;
}

- (BOOL)openSensitiveURL:(id)l withOptions:(id)options error:(id *)error
{
  if (options)
  {
    lCopy = l;
    v10 = [options mutableCopy];
  }

  else
  {
    v11 = MEMORY[0x1E695DF90];
    lCopy2 = l;
    v10 = objc_alloc_init(v11);
  }

  v13 = v10;
  [v10 setObject:MEMORY[0x1E695E118] forKey:@"LSOpenSensitiveURLOption"];
  v14 = [(LSApplicationWorkspace *)self openURL:l withOptions:v13 error:error];

  return v14;
}

- (void)_openUserActivity:(id)activity orUserActivityUUID:(id)d activityTypeForUUID:(id)iD withApplicationProxy:(id)proxy options:(id)options completionHandler:(id)handler
{
  v53[1] = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  dCopy = d;
  iDCopy = iD;
  proxyCopy = proxy;
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    handlerCopy = [&__block_literal_global_276 copy];
  }

  if (_openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler__once != -1)
  {
    [LSApplicationWorkspace _openUserActivity:orUserActivityUUID:activityTypeForUUID:withApplicationProxy:options:completionHandler:];
    if (activityCopy)
    {
      goto LABEL_5;
    }

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  if (!activityCopy)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (proxyCopy)
  {
    appState = [proxyCopy appState];
    v21 = [appState isInstalled] ^ 1;
  }

  else
  {
    appState = [activityCopy _determineMatchingApplicationBundleIdentifierWithOptions:0];
    if (appState)
    {
      proxyCopy = [LSApplicationProxy applicationProxyForIdentifier:appState placeholder:0];
    }

    else
    {
      v42 = iDCopy;
      v22 = *MEMORY[0x1E695E480];
      _teamIdentifier = [activityCopy _teamIdentifier];
      activityType = [activityCopy activityType];
      v25 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType(v22, _teamIdentifier, activityType);

      if (v25)
      {
        proxyCopy = [(LSApplicationWorkspace *)self applicationForUserActivityType:v25];
      }

      else
      {
        proxyCopy = 0;
      }

      iDCopy = v42;
    }

    v21 = 1;
  }

LABEL_17:
  if (activityCopy | dCopy && proxyCopy && [proxyCopy isInstalled] && (objc_msgSend(proxyCopy, "isRestricted") & 1) == 0)
  {
    v41 = _openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler__openUAQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __130__LSApplicationWorkspace__openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler___block_invoke_3;
    block[3] = &unk_1E6A19A98;
    v44 = activityCopy;
    v45 = dCopy;
    v46 = iDCopy;
    v49 = handlerCopy;
    v47 = proxyCopy;
    v48 = optionsCopy;
    dispatch_async(v41, block);
  }

  else if (v21)
  {
    bundleIdentifier = [proxyCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [proxyCopy bundleIdentifier];
      v28 = [LSApplicationProxy applicationProxyForSystemPlaceholder:bundleIdentifier2];

      if (v28)
      {
        webpageURL = [activityCopy webpageURL];
        bundleIdentifier3 = [v28 bundleIdentifier];
        [(LSApplicationWorkspace *)self _LSFailedToOpenURL:webpageURL withBundle:bundleIdentifier3];
      }
    }

    v31 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[LSApplicationWorkspace _openUserActivity:orUserActivityUUID:activityTypeForUUID:withApplicationProxy:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 1905);
    (*(handlerCopy + 2))(handlerCopy, 0, v31);
  }

  else
  {
    if (dCopy && ([proxyCopy appState], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "isInstalled"), v32, (v33 & 1) == 0))
    {
      v39 = *MEMORY[0x1E696A768];
      v52 = *MEMORY[0x1E696A278];
      v53[0] = @"Application must be non-nil and installed.";
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
      v36 = v39;
      v37 = v35;
      v38 = 1909;
    }

    else
    {
      v34 = *MEMORY[0x1E696A768];
      v50 = *MEMORY[0x1E696A278];
      v51 = @"invalid input parameters";
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v36 = v34;
      v37 = v35;
      v38 = 1913;
    }

    v40 = _LSMakeNSErrorImpl(v36, -50, v37, "[LSApplicationWorkspace _openUserActivity:orUserActivityUUID:activityTypeForUUID:withApplicationProxy:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", v38);
    (*(handlerCopy + 2))(handlerCopy, 0, v40);
  }
}

void __130__LSApplicationWorkspace__openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler___block_invoke_2()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LSApplicationWorkspace openUserActivity queue", v2);
  v1 = _openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler__openUAQueue;
  _openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler__openUAQueue = v0;
}

void __130__LSApplicationWorkspace__openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (!v3)
  {
    v4 = *(a1 + 40);
    v8 = *(a1 + 48);
    v7 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  v4 = [v3 _uniqueIdentifier];
  v5 = *(a1 + 32);
  v16 = 0;
  v6 = _LSGetDataForUserActivity(v5, &v16);
  v7 = v16;
  v8 = [*(a1 + 32) activityType];
  if (v6)
  {
LABEL_5:
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __130__LSApplicationWorkspace__openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler___block_invoke_4;
    v14 = &unk_1E6A19A70;
    v15 = *(a1 + 72);
    v9 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:?];
    v10 = [*(a1 + 56) bundleIdentifier];
    [v9 openUserActivityWithUniqueIdentifier:v4 activityData:v6 activityType:v8 bundleIdentifier:v10 options:*(a1 + 64) completionHandler:*(a1 + 72)];

    goto LABEL_6;
  }

  (*(*(a1 + 72) + 16))();
LABEL_6:

  objc_autoreleasePoolPop(v2);
}

- (void)openUserActivity:(id)activity usingApplicationRecord:(id)record configuration:(id)configuration completionHandler:(id)handler
{
  activityCopy = activity;
  recordCopy = record;
  configurationCopy = configuration;
  handlerCopy = handler;
  if (!activityCopy)
  {
    [LSApplicationWorkspace openUserActivity:usingApplicationRecord:configuration:completionHandler:];
  }

  compatibilityObject = [recordCopy compatibilityObject];
  v14 = [(LSApplicationWorkspace *)self optionsFromOpenConfiguration:configurationCopy];
  [(LSApplicationWorkspace *)self _openUserActivity:activityCopy orUserActivityUUID:0 activityTypeForUUID:0 withApplicationProxy:compatibilityObject options:v14 completionHandler:handlerCopy];
}

- (void)openUserActivityWithUUID:(id)d activityType:(id)type usingApplicationRecord:(id)record configuration:(id)configuration completionHandler:(id)handler
{
  dCopy = d;
  typeCopy = type;
  recordCopy = record;
  configurationCopy = configuration;
  handlerCopy = handler;
  if (dCopy)
  {
    if (typeCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [LSApplicationWorkspace openUserActivityWithUUID:activityType:usingApplicationRecord:configuration:completionHandler:];
    if (recordCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [LSApplicationWorkspace openUserActivityWithUUID:activityType:usingApplicationRecord:configuration:completionHandler:];
  if (!typeCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (recordCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [LSApplicationWorkspace openUserActivityWithUUID:activityType:usingApplicationRecord:configuration:completionHandler:];
LABEL_4:
  compatibilityObject = [recordCopy compatibilityObject];
  v17 = [(LSApplicationWorkspace *)self optionsFromOpenConfiguration:configurationCopy];
  [(LSApplicationWorkspace *)self _openUserActivity:0 orUserActivityUUID:dCopy activityTypeForUUID:typeCopy withApplicationProxy:compatibilityObject options:v17 completionHandler:handlerCopy];
}

- (id)operationToOpenResource:(id)resource usingApplication:(id)application uniqueDocumentIdentifier:(id)identifier isContentManaged:(BOOL)managed sourceAuditToken:(id *)token userInfo:(id)info configuration:(id)configuration delegate:(id)self0
{
  managedCopy = managed;
  delegateCopy = delegate;
  infoCopy = info;
  identifierCopy = identifier;
  applicationCopy = application;
  resourceCopy = resource;
  v22 = [(LSApplicationWorkspace *)self optionsFromOpenConfiguration:configuration];
  v23 = [(LSApplicationWorkspace *)self operationToOpenResource:resourceCopy usingApplication:applicationCopy uniqueDocumentIdentifier:identifierCopy isContentManaged:managedCopy sourceAuditToken:token userInfo:infoCopy options:v22 delegate:delegateCopy];

  return v23;
}

- (id)operationToOpenResource:(id)resource usingApplication:(id)application uniqueDocumentIdentifier:(id)identifier isContentManaged:(BOOL)managed sourceAuditToken:(id *)token userInfo:(id)info options:(id)options delegate:(id)self0
{
  resourceCopy = resource;
  applicationCopy = application;
  identifierCopy = identifier;
  infoCopy = info;
  optionsCopy = options;
  delegateCopy = delegate;
  v21 = [MEMORY[0x1E696AAE0] blockOperationWithBlock:&__block_literal_global_309];
  v37 = v21;
  if (delegateCopy)
  {
    v22 = [[_LSOpenResourceOperationDelegateWrapper alloc] initWithOperation:v21 wrappedDelegate:delegateCopy];

    if (token)
    {
LABEL_3:
      v23 = [MEMORY[0x1E695DEF0] dataWithBytes:token length:32];
      goto LABEL_6;
    }
  }

  else
  {
    v22 = 0;
    if (token)
    {
      goto LABEL_3;
    }
  }

  v23 = 0;
LABEL_6:
  v24 = [optionsCopy mutableCopy];
  v25 = v24;
  if (v24)
  {
    dictionary = v24;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v27 = dictionary;

  [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"LSBlockUntilComplete"];
  v28 = openOptionsModifiedForOneTapOpen(resourceCopy, v27);

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __152__LSApplicationWorkspace_operationToOpenResource_usingApplication_uniqueDocumentIdentifier_isContentManaged_sourceAuditToken_userInfo_options_delegate___block_invoke_2;
  v38[3] = &unk_1E6A19AE8;
  v39 = resourceCopy;
  v40 = infoCopy;
  v41 = v28;
  v42 = v22;
  v43 = applicationCopy;
  v44 = identifierCopy;
  managedCopy = managed;
  v45 = v23;
  v29 = v23;
  v30 = identifierCopy;
  v31 = applicationCopy;
  v32 = v22;
  v33 = v28;
  v34 = infoCopy;
  v35 = resourceCopy;
  [v37 addExecutionBlock:v38];

  return v37;
}

void __152__LSApplicationWorkspace_operationToOpenResource_usingApplication_uniqueDocumentIdentifier_isContentManaged_sourceAuditToken_userInfo_options_delegate___block_invoke_2(uint64_t a1)
{
  _LSFaultIfRunningOnMainThreadOfShellApp();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v22[0] = 0;
  v21 = 0;
  FileHandleForOpeningResourceIfNecessary = getFileHandleForOpeningResourceIfNecessary(v2, v3, v4, v22, &v21);
  v6 = v22[0];
  v7 = v21;
  if (FileHandleForOpeningResourceIfNecessary)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __152__LSApplicationWorkspace_operationToOpenResource_usingApplication_uniqueDocumentIdentifier_isContentManaged_sourceAuditToken_userInfo_options_delegate___block_invoke_3;
    v19[3] = &unk_1E6A19AC0;
    v20 = *(a1 + 56);
    v8 = [(_LSDService *)_LSDOpenService synchronousXPCProxyWithErrorHandler:v19];
    v9 = *(a1 + 32);
    v10 = *(a1 + 72);
    v16 = *(a1 + 64);
    v11 = *(a1 + 88);
    v12 = [*(a1 + 80) bytes];
    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    v15 = *(a1 + 56);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __152__LSApplicationWorkspace_operationToOpenResource_usingApplication_uniqueDocumentIdentifier_isContentManaged_sourceAuditToken_userInfo_options_delegate___block_invoke_4;
    v17[3] = &unk_1E6A19888;
    v18 = v15;
    [v8 performOpenOperationWithURL:v9 fileHandle:v6 bundleIdentifier:v16 documentIdentifier:v10 isContentManaged:v11 sourceAuditToken:v12 userInfo:v14 options:v13 delegate:v18 completionHandler:v17];
  }

  else
  {
    [*(a1 + 56) openResourceOperation:0 didFailWithError:v7];
  }
}

uint64_t __152__LSApplicationWorkspace_operationToOpenResource_usingApplication_uniqueDocumentIdentifier_isContentManaged_sourceAuditToken_userInfo_options_delegate___block_invoke_4(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 openResourceOperationDidComplete:0];
  }

  else
  {
    return [v3 openResourceOperation:0 didFailWithError:a3];
  }
}

- (id)optionsFromOpenConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (configurationCopy)
  {
    frontBoardOptions = [configurationCopy frontBoardOptions];

    if (frontBoardOptions)
    {
      frontBoardOptions2 = [configurationCopy frontBoardOptions];
      [dictionary addEntriesFromDictionary:frontBoardOptions2];
    }

    referrerURL = [configurationCopy referrerURL];
    [dictionary setObject:referrerURL forKeyedSubscript:@"ReferrerURL"];

    if ([configurationCopy isSensitive])
    {
      [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"LSOpenSensitiveURLOption"];
    }

    if (([configurationCopy allowURLOverrides] & 1) == 0)
    {
      [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NoOverrides"];
    }

    targetConnectionEndpoint = [configurationCopy targetConnectionEndpoint];

    if (targetConnectionEndpoint)
    {
      targetConnectionEndpoint2 = [configurationCopy targetConnectionEndpoint];
      [dictionary setObject:targetConnectionEndpoint2 forKeyedSubscript:@"LSTargetBSServiceConnectionEndpointKey"];
    }

    clickAttribution = [configurationCopy clickAttribution];
    if (clickAttribution)
    {
      v11 = clickAttribution;
      UISOpenApplicationOptionClickAttribution = getUISOpenApplicationOptionClickAttribution();

      if (UISOpenApplicationOptionClickAttribution)
      {
        clickAttribution2 = [configurationCopy clickAttribution];
        [dictionary setObject:clickAttribution2 forKeyedSubscript:getUISOpenApplicationOptionClickAttribution()];
      }
    }

    pasteSharingToken = [configurationCopy pasteSharingToken];
    if (pasteSharingToken)
    {
      v15 = pasteSharingToken;
      UISOpenApplicationOptionPasteSharingToken = getUISOpenApplicationOptionPasteSharingToken();

      if (UISOpenApplicationOptionPasteSharingToken)
      {
        pasteSharingToken2 = [configurationCopy pasteSharingToken];
        [dictionary setObject:pasteSharingToken2 forKeyedSubscript:getUISOpenApplicationOptionPasteSharingToken()];
      }
    }

    v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(configurationCopy, "shouldSetHandlerOnDocumentOpen")}];
    [dictionary setObject:v18 forKeyedSubscript:@"LSSetHandlerOnDocumentOpenKey"];

    v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(configurationCopy, "useOneTapOpenBehavior")}];
    [dictionary setObject:v19 forKeyedSubscript:@"LSOneTapOpenBehaviorKey"];
  }

  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"LSBlockUntilComplete"];
  v20 = [dictionary copy];

  return v20;
}

- (id)openURL:(id)l configuration:(id)configuration error:(id *)error
{
  lCopy = l;
  configurationCopy = configuration;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  v10 = [(LSApplicationWorkspace *)self optionsFromOpenConfiguration:configurationCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__LSApplicationWorkspace_openURL_configuration_error___block_invoke;
  v13[3] = &unk_1E6A19B10;
  v13[4] = &v20;
  v13[5] = &v14;
  [(LSApplicationWorkspace *)self commonClientOpenURL:lCopy options:v10 configuration:configurationCopy synchronous:1 completionHandler:v13];
  if (error)
  {
    *error = v15[5];
  }

  v11 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v11;
}

void __54__LSApplicationWorkspace_openURL_configuration_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)openURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  lCopy = l;
  v11 = [(LSApplicationWorkspace *)self optionsFromOpenConfiguration:configurationCopy];
  [(LSApplicationWorkspace *)self commonClientOpenURL:lCopy options:v11 configuration:configurationCopy synchronous:0 completionHandler:handlerCopy];
}

- (void)commonClientOpenURL:(id)l options:(id)options configuration:(id)configuration synchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  v50 = *MEMORY[0x1E69E9840];
  lCopy = l;
  optionsCopy = options;
  configurationCopy = configuration;
  handlerCopy = handler;
  v16 = handlerCopy;
  if (!lCopy)
  {
    [LSApplicationWorkspace commonClientOpenURL:options:configuration:synchronous:completionHandler:];
  }

  v17 = _LSDefaultLog(handlerCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v30 = loggableURL(lCopy);
    *buf = 138478339;
    v45 = v30;
    v46 = 2113;
    v47 = optionsCopy;
    v48 = 1024;
    v49 = synchronousCopy;
    _os_log_debug_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEBUG, "Opening URL %{private}@ with options dictionary %{private}@ synchronous: %u", buf, 0x1Cu);
  }

  v18 = openOptionsModifiedForOneTapOpen(lCopy, optionsCopy);

  if ([lCopy isFileURL])
  {
    isCurrentProcessEligibleForOpenDocumentViaOpenURL = [(LSApplicationWorkspace *)self isCurrentProcessEligibleForOpenDocumentViaOpenURL];
    if ((isCurrentProcessEligibleForOpenDocumentViaOpenURL & 1) == 0)
    {
      v20 = _LSDefaultLog(isCurrentProcessEligibleForOpenDocumentViaOpenURL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [LSApplicationWorkspace commonClientOpenURL:options:configuration:synchronous:completionHandler:];
      }

      v21 = *MEMORY[0x1E696A768];
      v42 = *MEMORY[0x1E696A278];
      v43 = @"This process needs to be linked against Fall 2025 SDKs or later to open file: URLs with openURL interfaces.";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v23 = _LSMakeNSErrorImpl(v21, -50, v22, "[LSApplicationWorkspace commonClientOpenURL:options:configuration:synchronous:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 2202);

      if (v23)
      {
        v24 = 0;
LABEL_14:
        (v16)[2](v16, 0, v23);
        goto LABEL_17;
      }
    }
  }

  v40 = 0;
  v41 = 0;
  FileHandleForOpeningResourceIfNecessary = getFileHandleForOpeningResourceIfNecessary(lCopy, 0, v18, &v41, &v40);
  v24 = v41;
  v23 = v40;
  if (!FileHandleForOpeningResourceIfNecessary)
  {
    goto LABEL_14;
  }

  if (synchronousCopy)
  {
    _LSFaultIfRunningOnMainThreadOfShellApp();
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke;
    v37[3] = &unk_1E6A19B38;
    v26 = &v38;
    v38 = lCopy;
    v27 = &v39;
    v39 = v16;
    v28 = [(_LSDService *)_LSDOpenService synchronousXPCProxyWithErrorHandler:v37];
  }

  else
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_319;
    v34[3] = &unk_1E6A19B38;
    v26 = &v35;
    v35 = lCopy;
    v27 = &v36;
    v36 = v16;
    v28 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:v34];
  }

  v29 = v28;

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_320;
  v31[3] = &unk_1E6A18DC8;
  v32 = lCopy;
  v33 = v16;
  [v29 openURL:v32 fileHandle:v24 options:v18 completionHandler:v31];

LABEL_17:
}

void __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_319(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_319_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_320(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = _LSDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_320_cold_1();
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    if (a2)
    {
      v9 = MEMORY[0x1E695E0F8];
    }

    else
    {
      v9 = 0;
    }

    (*(v8 + 16))(v8, v9, v6);
  }
}

- (id)installedPlugins
{
  if (_LSEntitledForPluginQuery())
  {
    v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v3 = +[LSPlugInQuery pluginQuery];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__LSApplicationWorkspace_installedPlugins__block_invoke;
    v6[3] = &unk_1E6A19B60;
    v4 = v2;
    v7 = v4;
    enumeratePluginsMatchingQuery(v3, v6);
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

void __42__LSApplicationWorkspace_installedPlugins__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  else
  {
    v7 = _LSDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get all plugins: <%@>", &v8, 0xCu);
    }
  }
}

- (id)pluginsWithIdentifiers:(id)identifiers protocols:(id)protocols version:(id)version applyFilter:(id)filter
{
  identifiersCopy = identifiers;
  protocolsCopy = protocols;
  filterCopy = filter;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v13 = v12;
  if (identifiersCopy)
  {
    [v12 setValue:identifiersCopy forKey:@"NSExtensionIdentifier"];
    if (protocolsCopy)
    {
      [v13 setValue:protocolsCopy forKey:@"NSExtensionPointName"];
      v14 = MEMORY[0x1E695E118];
      v15 = @"LSShouldORIdentifiers";
      v12 = v13;
LABEL_6:
      [v12 setValue:v14 forKey:v15];
    }
  }

  else if (protocolsCopy)
  {
    v15 = @"NSExtensionPointName";
    v14 = protocolsCopy;
    goto LABEL_6;
  }

  v16 = [LSPlugInQuery pluginQueryWithQueryDictionary:v13 applyFilter:filterCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __79__LSApplicationWorkspace_pluginsWithIdentifiers_protocols_version_applyFilter___block_invoke;
  v22[3] = &unk_1E6A19B88;
  v17 = v11;
  v23 = v17;
  v24 = v13;
  v18 = v13;
  enumeratePluginsMatchingQuery(v16, v22);
  v19 = v24;
  v20 = v17;

  return v17;
}

void __79__LSApplicationWorkspace_pluginsWithIdentifiers_protocols_version_applyFilter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  else if (v6)
  {
    v8 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get plugins matching query %@: <%@>", &v10, 0x16u);
    }
  }
}

- (void)enumeratePluginsMatchingQuery:(id)query withBlock:(id)block
{
  blockCopy = block;
  if (query)
  {
    queryCopy = query;
  }

  else
  {
    queryCopy = MEMORY[0x1E695E0F8];
  }

  v7 = [LSPlugInQuery pluginQueryWithQueryDictionary:queryCopy applyFilter:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__LSApplicationWorkspace_enumeratePluginsMatchingQuery_withBlock___block_invoke;
  v9[3] = &unk_1E6A19BB0;
  v10 = blockCopy;
  v8 = blockCopy;
  enumeratePluginsMatchingQuery(v7, v9);
}

- (id)pluginsMatchingQuery:(id)query applyFilter:(id)filter
{
  v25 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v6 = MEMORY[0x1E695DF70];
  filterCopy = filter;
  v8 = [v6 arrayWithCapacity:0];
  if (queryCopy)
  {
    v9 = queryCopy;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  v10 = [LSPlugInQuery pluginQueryWithQueryDictionary:v9 applyFilter:filterCopy];

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __59__LSApplicationWorkspace_pluginsMatchingQuery_applyFilter___block_invoke;
  v20 = &unk_1E6A19B88;
  v11 = v8;
  v21 = v11;
  v12 = queryCopy;
  v22 = v12;
  enumeratePluginsMatchingQuery(v10, &v17);
  if (![v11 count])
  {
    v13 = _LSDefaultLog(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v12;
      _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "No plugins found to match query %@", buf, 0xCu);
    }
  }

  v14 = v22;
  v15 = v11;

  return v11;
}

void __59__LSApplicationWorkspace_pluginsMatchingQuery_applyFilter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  else if (v6)
  {
    v8 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get plugins matching query %@: <%@>", &v10, 0x16u);
    }
  }
}

- (void)enumerateBundlesOfType:(unint64_t)type legacySPI:(BOOL)i block:(id)block
{
  iCopy = i;
  blockCopy = block;
  if (blockCopy)
  {
    if (type == 6)
    {
      v8 = +[LSPlugInQuery pluginQuery];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __65__LSApplicationWorkspace_enumerateBundlesOfType_legacySPI_block___block_invoke;
      v14[3] = &unk_1E6A19BB0;
      v9 = &v15;
      v15 = blockCopy;
      enumeratePluginsMatchingQuery(v8, v14);
    }

    else
    {
      v10 = [_LSBundleProxiesOfTypeQuery queryWithType:type];
      v8 = v10;
      if (!v10)
      {
LABEL_7:

        goto LABEL_8;
      }

      [v10 setLegacy:iCopy];
      v11 = +[_LSQueryContext defaultContext];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__LSApplicationWorkspace_enumerateBundlesOfType_legacySPI_block___block_invoke_2;
      v12[3] = &unk_1E6A19BD8;
      v9 = &v13;
      v13 = blockCopy;
      [v11 enumerateResolvedResultsOfQuery:v8 withBlock:v12];
    }

    goto LABEL_7;
  }

LABEL_8:
}

uint64_t __65__LSApplicationWorkspace_enumerateBundlesOfType_legacySPI_block___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __65__LSApplicationWorkspace_enumerateBundlesOfType_legacySPI_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    (*(*(a1 + 32) + 16))();
    v3 = v4;
  }
}

- (void)enumerateApplicationsOfType:(unint64_t)type legacySPI:(BOOL)i block:(id)block
{
  iCopy = i;
  blockCopy = block;
  if (blockCopy)
  {
    v8 = [_LSApplicationProxiesOfTypeQuery queryWithType:type];
    v9 = v8;
    if (v8)
    {
      [v8 setLegacy:iCopy];
      v10 = +[_LSQueryContext defaultContext];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __70__LSApplicationWorkspace_enumerateApplicationsOfType_legacySPI_block___block_invoke;
      v11[3] = &unk_1E6A19BD8;
      v12 = blockCopy;
      [v10 enumerateResolvedResultsOfQuery:v9 withBlock:v11];
    }
  }
}

uint64_t __70__LSApplicationWorkspace_enumerateApplicationsOfType_legacySPI_block___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (BOOL)applicationIsInstalled:(id)installed
{
  installedCopy = installed;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (installedCopy)
  {
    v4 = [_LSApplicationIsInstalledQuery queryWithBundleIdentifier:installedCopy];
    if (v4)
    {
      v5 = +[_LSQueryContext defaultContext];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __49__LSApplicationWorkspace_applicationIsInstalled___block_invoke;
      v8[3] = &unk_1E6A18F00;
      v8[4] = &v9;
      [v5 enumerateResolvedResultsOfQuery:v4 withBlock:v8];
    }

    v6 = *(v10 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6 & 1;
}

void __49__LSApplicationWorkspace_applicationIsInstalled___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = a2;
    v7 = [v6 propertyListWithClass:objc_opt_class()];

    *(*(*(a1 + 32) + 8) + 24) = [v7 BOOLValue];
    *a4 = 1;
  }
}

- (BOOL)getClaimedActivityTypes:(id *)types domains:(id *)domains
{
  v10 = 0;
  cf = 0;
  v6 = _LSCopyClaimedActivityIdentifiersAndDomains(&cf, &v10);
  if (!v6)
  {
    v7 = cf;
    if (cf)
    {
      if (types)
      {
        *types = [cf copy];
        v7 = cf;
      }

      CFRelease(v7);
    }

    v8 = v10;
    if (v10)
    {
      if (domains)
      {
        *domains = [v10 copy];
        v8 = v10;
      }

      CFRelease(v8);
    }
  }

  return v6 == 0;
}

- (id)registerContainerizedApplicationWithInfoDictionaries:(id)dictionaries personaUniqueStrings:(id)strings operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer registrationError:(id *)error
{
  dictionariesCopy = dictionaries;
  stringsCopy = strings;
  dCopy = d;
  contextCopy = context;
  observerCopy = observer;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__4;
  v43 = __Block_byref_object_dispose__4;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4;
  v37 = __Block_byref_object_dispose__4;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = 0;
  v18 = objc_opt_class();
  v19 = serviceDomainForRequestContext(contextCopy);
  v20 = _LSDServiceGetXPCConnection(v18, v19);

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __160__LSApplicationWorkspace_registerContainerizedApplicationWithInfoDictionaries_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke;
  v26[3] = &unk_1E6A198D0;
  v26[4] = &v27;
  v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __160__LSApplicationWorkspace_registerContainerizedApplicationWithInfoDictionaries_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke_2;
  v25[3] = &unk_1E6A19C00;
  v25[4] = &v33;
  v25[5] = &v39;
  v25[6] = &v27;
  [v21 performPostInstallationRegistration:dictionariesCopy personaUniqueStrings:stringsCopy operationUUID:dCopy reply:v25];

  handleSaveObserverBehavior(observerCopy, v34[5], dCopy, v28[5]);
  v22 = v40[5];
  if (error && !v22)
  {
    *error = v28[5];
    v22 = v40[5];
  }

  v23 = v22;

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);

  return v23;
}

void __160__LSApplicationWorkspace_registerContainerizedApplicationWithInfoDictionaries_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
  v17 = v8;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
  v14 = v7;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

- (id)registerContainerizedApplicationWithInstallationRecord:(id)record extensionInstallationRecords:(id)records personaUniqueStrings:(id)strings operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer registrationError:(id *)error
{
  selfCopy = self;
  errorCopy = error;
  v35 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  recordsCopy = records;
  dCopy = d;
  contextCopy = context;
  observerCopy = observer;
  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(recordsCopy, "count") + 1}];
  legacyRecordDictionary = [recordCopy legacyRecordDictionary];
  [v18 addObject:legacyRecordDictionary];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = recordsCopy;
  v21 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        legacyRecordDictionary2 = [*(*(&v30 + 1) + 8 * i) legacyRecordDictionary];
        [v18 addObject:legacyRecordDictionary2];
      }

      v22 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v22);
  }

  v26 = [(LSApplicationWorkspace *)selfCopy registerContainerizedApplicationWithInfoDictionaries:v18 operationUUID:dCopy requestContext:contextCopy saveObserver:observerCopy registrationError:errorCopy];

  return v26;
}

- (BOOL)unregisterContainerizedApplicationWithBundleIdentifier:(id)identifier operationUUID:(id)d unregistrationOperation:(unsigned int)operation precondition:(id)precondition requestContext:(id)context saveObserver:(id)observer unregistrationError:(id *)error
{
  v12 = *&operation;
  identifierCopy = identifier;
  dCopy = d;
  preconditionCopy = precondition;
  contextCopy = context;
  observerCopy = observer;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4;
  v37 = __Block_byref_object_dispose__4;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = 0;
  v19 = objc_opt_class();
  v20 = serviceDomainForRequestContext(contextCopy);
  v21 = _LSDServiceGetXPCConnection(v19, v20);

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __180__LSApplicationWorkspace_unregisterContainerizedApplicationWithBundleIdentifier_operationUUID_unregistrationOperation_precondition_requestContext_saveObserver_unregistrationError___block_invoke;
  v26[3] = &unk_1E6A198D0;
  v26[4] = &v33;
  v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __180__LSApplicationWorkspace_unregisterContainerizedApplicationWithBundleIdentifier_operationUUID_unregistrationOperation_precondition_requestContext_saveObserver_unregistrationError___block_invoke_2;
  v25[3] = &unk_1E6A19C28;
  v25[4] = &v27;
  v25[5] = &v33;
  v25[6] = &v39;
  [v22 performPostUninstallationUnregistrationOfBundleID:identifierCopy operationUUID:dCopy unregisterType:v12 precondition:preconditionCopy reply:v25];

  handleSaveObserverBehavior(observerCopy, v28[5], dCopy, v34[5]);
  v23 = *(v40 + 24);
  if (error && (v40[3] & 1) == 0)
  {
    *error = v34[5];
    v23 = *(v40 + 24);
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  return v23 & 1;
}

void __180__LSApplicationWorkspace_unregisterContainerizedApplicationWithBundleIdentifier_operationUUID_unregistrationOperation_precondition_requestContext_saveObserver_unregistrationError___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  *(*(a1[6] + 8) + 24) = v11 == 0;
}

- (BOOL)setPersonaUniqueStrings:(id)strings forApplicationsWithBundleIdentifiers:(id)identifiers operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer error:(id *)error
{
  stringsCopy = strings;
  identifiersCopy = identifiers;
  dCopy = d;
  contextCopy = context;
  observerCopy = observer;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__4;
  v36 = __Block_byref_object_dispose__4;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__4;
  v30 = __Block_byref_object_dispose__4;
  v31 = 0;
  v18 = objc_opt_class();
  v19 = serviceDomainForRequestContext(contextCopy);
  v20 = _LSDServiceGetXPCConnection(v18, v19);

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __135__LSApplicationWorkspace_setPersonaUniqueStrings_forApplicationsWithBundleIdentifiers_operationUUID_requestContext_saveObserver_error___block_invoke;
  v25[3] = &unk_1E6A198D0;
  v25[4] = &v32;
  v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler:v25];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __135__LSApplicationWorkspace_setPersonaUniqueStrings_forApplicationsWithBundleIdentifiers_operationUUID_requestContext_saveObserver_error___block_invoke_2;
  v24[3] = &unk_1E6A19C28;
  v24[4] = &v26;
  v24[5] = &v32;
  v24[6] = &v38;
  [v21 performUpdateOfPersonasOfBundleIDs:identifiersCopy toPersonaUniqueStrings:stringsCopy operationUUID:dCopy reply:v24];

  handleSaveObserverBehavior(observerCopy, v27[5], dCopy, v33[5]);
  v22 = *(v39 + 24);
  if (error && (v39[3] & 1) == 0)
  {
    *error = v33[5];
    v22 = *(v39 + 24);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  return v22 & 1;
}

void __135__LSApplicationWorkspace_setPersonaUniqueStrings_forApplicationsWithBundleIdentifiers_operationUUID_requestContext_saveObserver_error___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  *(*(a1[6] + 8) + 24) = v11 == 0;
}

- (BOOL)setPersonaUniqueStrings:(id)strings forApplicationWithBundleIdentifier:(id)identifier operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer error:(id *)error
{
  v14 = MEMORY[0x1E695DFD8];
  observerCopy = observer;
  contextCopy = context;
  dCopy = d;
  stringsCopy = strings;
  v19 = [v14 setWithObject:identifier];
  LOBYTE(error) = [(LSApplicationWorkspace *)self setPersonaUniqueStrings:stringsCopy forApplicationsWithBundleIdentifiers:v19 operationUUID:dCopy requestContext:contextCopy saveObserver:observerCopy error:error];

  return error;
}

- (BOOL)sendNotificationOfType:(unsigned int)type forApplicationWithBundleIdentifier:(id)identifier requestContext:(id)context error:(id *)error
{
  v8 = *&type;
  v33[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = 0;
  if (v8 > 4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown notification type %d", v8];
    syncObserverProxy = v14;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = @"invalid input parameters";
    }

    v32 = *MEMORY[0x1E696A278];
    v33[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v16, "[LSApplicationWorkspace sendNotificationOfType:forApplicationWithBundleIdentifier:requestContext:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 2767);
    v18 = v23[5];
    v23[5] = v17;
  }

  else
  {
    v12 = dword_1817E8B70[v8];
    syncObserverProxy = [(LSApplicationWorkspace *)self syncObserverProxy];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __105__LSApplicationWorkspace_sendNotificationOfType_forApplicationWithBundleIdentifier_requestContext_error___block_invoke;
    v21[3] = &unk_1E6A19C50;
    v21[4] = &v22;
    v21[5] = &v28;
    [syncObserverProxy sendNotification:v12 forApplicationWithBundleIdentifier:identifierCopy completion:v21];
  }

  v19 = *(v29 + 24);
  if (error && (v29[3] & 1) == 0)
  {
    *error = v23[5];
    v19 = *(v29 + 24);
  }

  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  return v19 & 1;
}

void __105__LSApplicationWorkspace_sendNotificationOfType_forApplicationWithBundleIdentifier_requestContext_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = v4 == 0;
}

- (BOOL)registerApplicationForRebuildWithInfoDictionaries:(id)dictionaries personaUniqueStrings:(id)strings requestContext:(id)context registrationError:(id *)error
{
  dictionariesCopy = dictionaries;
  stringsCopy = strings;
  contextCopy = context;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v12 = objc_opt_class();
  v13 = serviceDomainForRequestContext(contextCopy);
  v14 = _LSDServiceGetXPCConnection(v12, v13);

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __130__LSApplicationWorkspace_registerApplicationForRebuildWithInfoDictionaries_personaUniqueStrings_requestContext_registrationError___block_invoke;
  v19[3] = &unk_1E6A198D0;
  v19[4] = &v20;
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __130__LSApplicationWorkspace_registerApplicationForRebuildWithInfoDictionaries_personaUniqueStrings_requestContext_registrationError___block_invoke_2;
  v18[3] = &unk_1E6A19C50;
  v18[4] = &v26;
  v18[5] = &v20;
  [v15 performRebuildRegistration:dictionariesCopy personaUniqueStrings:stringsCopy reply:v18];

  v16 = *(v27 + 24);
  if (error && (v27[3] & 1) == 0)
  {
    *error = v21[5];
    v16 = *(v27 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v16 & 1;
}

- (BOOL)registerApplicationForRebuildWithInstallationRecord:(id)record extensionInstallationRecords:(id)records personaUniqueStrings:(id)strings requestContext:(id)context registrationError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  recordsCopy = records;
  stringsCopy = strings;
  contextCopy = context;
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(recordsCopy, "count") + 1}];
  legacyRecordDictionary = [recordCopy legacyRecordDictionary];
  [v15 addObject:legacyRecordDictionary];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = recordsCopy;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      v21 = 0;
      do
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        legacyRecordDictionary2 = [*(*(&v26 + 1) + 8 * v21) legacyRecordDictionary];
        [v15 addObject:legacyRecordDictionary2];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v19);
  }

  v23 = [(LSApplicationWorkspace *)self registerApplicationForRebuildWithInfoDictionaries:v15 personaUniqueStrings:stringsCopy requestContext:contextCopy registrationError:error];
  return v23;
}

- (BOOL)updatePlaceholderMetadataForApplicationWithIdentifier:(id)identifier operationUUID:(id)d requestContext:(id)context installType:(unint64_t)type failure:(unint64_t)failure saveObserver:(id)observer error:(id *)error
{
  v31[2] = *MEMORY[0x1E69E9840];
  v30[0] = @"LSInstallType";
  v14 = MEMORY[0x1E696AD98];
  observerCopy = observer;
  dCopy = d;
  identifierCopy = identifier;
  v18 = [v14 numberWithUnsignedInteger:type];
  v30[1] = @"PlaceholderFailureReason";
  v31[0] = v18;
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:failure];
  v31[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v22 = type - 7 < 3 && failure != 0;
  v28 = 0;
  v29 = 0;
  v23 = [(LSApplicationWorkspace *)self updateRecordForApp:identifierCopy withSINF:0 iTunesMetadata:0 placeholderMetadata:v20 sendNotification:v22 operationUUID:dCopy outSaveToken:&v29 error:&v28];

  v24 = v29;
  v25 = v28;

  handleSaveObserverBehavior(observerCopy, v24, dCopy, v25);
  if (error && !v23)
  {
    v26 = v25;
    *error = v25;
  }

  return v23;
}

- (BOOL)updateiTunesMetadataForApplicationWithIdentifier:(id)identifier operationUUID:(id)d requestContext:(id)context metadataPlist:(id)plist saveObserver:(id)observer error:(id *)error
{
  v20 = 0;
  v21 = 0;
  observerCopy = observer;
  dCopy = d;
  v15 = [(LSApplicationWorkspace *)self updateRecordForApp:identifier withSINF:0 iTunesMetadata:plist placeholderMetadata:0 sendNotification:0 operationUUID:dCopy outSaveToken:&v21 error:&v20];
  v16 = v21;
  v17 = v20;
  handleSaveObserverBehavior(observerCopy, v16, dCopy, v17);

  if (error && !v15)
  {
    v18 = v17;
    *error = v17;
  }

  return v15;
}

- (BOOL)updateSINFMetadataForApplicationWithIdentifier:(id)identifier operationUUID:(id)d requestContext:(id)context parsedSINFInfo:(id)info saveObserver:(id)observer error:(id *)error
{
  v20 = 0;
  v21 = 0;
  observerCopy = observer;
  dCopy = d;
  v15 = [(LSApplicationWorkspace *)self updateRecordForApp:identifier withSINF:info iTunesMetadata:0 placeholderMetadata:0 sendNotification:0 operationUUID:dCopy outSaveToken:&v21 error:&v20];
  v16 = v21;
  v17 = v20;
  handleSaveObserverBehavior(observerCopy, v16, dCopy, v17);

  if (error && !v15)
  {
    v18 = v17;
    *error = v17;
  }

  return v15;
}

- (BOOL)setProgressProportionsByPhase:(id)phase forInstallOfApplicationWithIdentifier:(id)identifier error:(id *)error
{
  phaseCopy = phase;
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  syncObserverProxy = [(LSApplicationWorkspace *)self syncObserverProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __100__LSApplicationWorkspace_setProgressProportionsByPhase_forInstallOfApplicationWithIdentifier_error___block_invoke;
  v14[3] = &unk_1E6A198D0;
  v14[4] = &v15;
  [syncObserverProxy setProgressProportionsByPhase:phaseCopy forInstallOfApplicationWithIdentifier:identifierCopy completion:v14];

  v11 = v16[5];
  if (error && v11)
  {
    v11 = v11;
    *error = v11;
  }

  v12 = v11 == 0;
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (void)placeholderInstalledForIdentifier:(id)identifier filterDowngrades:(BOOL)downgrades
{
  downgradesCopy = downgrades;
  v6 = [LSApplicationProxy applicationProxyForIdentifier:identifier placeholder:1];
  v12 = v6;
  if (!downgradesCopy || (v7 = [v6 installType], v8 = v12, v7 != 8) && (v9 = objc_msgSend(v12, "installType"), v8 = v12, v9 != 7) && (v10 = objc_msgSend(v12, "installType"), v8 = v12, v10 != 9))
  {
    v11 = [(LSApplicationWorkspace *)self installProgressForApplication:v12 withPhase:3];
    [v11 setInstallState:5];
    [(LSApplicationWorkspace *)self installPhaseFinishedForProgress:v11];

    v8 = v12;
  }
}

- (BOOL)installApplication:(id)application withOptions:(id)options error:(id *)error usingBlock:(id)block
{
  v7 = _LSInstallLog(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [(LSApplicationWorkspace *)v7 installApplication:v8 withOptions:v9 error:v10 usingBlock:v11, v12, v13, v14];
  }

  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace installApplication:withOptions:error:usingBlock:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3015);
  }

  return 0;
}

- (BOOL)installContainerizedApplicationArtifactAtURL:(id)l withOptions:(id)options returningRecordPromise:(id *)promise error:(id *)error progressBlock:(id)block
{
  v8 = _LSInstallLog(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [(LSApplicationWorkspace *)v8 installContainerizedApplicationArtifactAtURL:v9 withOptions:v10 returningRecordPromise:v11 error:v12 progressBlock:v13, v14, v15];
  }

  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace installContainerizedApplicationArtifactAtURL:withOptions:returningRecordPromise:error:progressBlock:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3058);
  }

  return 0;
}

- (BOOL)uninstallContainerizedApplicationWithIdentifier:(id)identifier options:(id)options error:(id *)error progressBlock:(id)block
{
  v7 = _LSInstallLog(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [(LSApplicationWorkspace *)v7 uninstallContainerizedApplicationWithIdentifier:v8 options:v9 error:v10 progressBlock:v11, v12, v13, v14];
  }

  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace uninstallContainerizedApplicationWithIdentifier:options:error:progressBlock:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3069);
  }

  return 0;
}

- (BOOL)downgradeApplicationToPlaceholder:(id)placeholder withOptions:(id)options error:(id *)error
{
  v6 = _LSInstallLog(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [LSApplicationWorkspace downgradeApplicationToPlaceholder:withOptions:error:];
  }

  v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace downgradeApplicationToPlaceholder:withOptions:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3116);
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (BOOL)uninstallApplication:(id)application withOptions:(id)options error:(id *)error usingBlock:(id)block
{
  v7 = _LSInstallLog(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [(LSApplicationWorkspace *)v7 uninstallApplication:v8 withOptions:v9 error:v10 usingBlock:v11, v12, v13, v14];
  }

  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace uninstallApplication:withOptions:error:usingBlock:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3141);
  }

  return 0;
}

- (BOOL)unregisterApplicationsAtMountPoint:(id)point operationUUID:(id)d saveObserver:(id)observer requestContext:(id)context
{
  v35 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  dCopy = d;
  observerCopy = observer;
  contextCopy = context;
  v31 = 0;
  v32[0] = &v31;
  v32[1] = 0x3032000000;
  v32[2] = __Block_byref_object_copy__4;
  v32[3] = __Block_byref_object_dispose__4;
  v33 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v10 = MEMORY[0x1E69E9820];
  do
  {
    v11 = objc_opt_class();
    v12 = serviceDomainForRequestContext(contextCopy);
    v13 = _LSDServiceGetXPCConnection(v11, v12);

    v24[0] = v10;
    v24[1] = 3221225472;
    v24[2] = __103__LSApplicationWorkspace_unregisterApplicationsAtMountPoint_operationUUID_saveObserver_requestContext___block_invoke;
    v24[3] = &unk_1E6A198D0;
    v24[4] = &v31;
    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v24];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __103__LSApplicationWorkspace_unregisterApplicationsAtMountPoint_operationUUID_saveObserver_requestContext___block_invoke_2;
    v23[3] = &unk_1E6A19C78;
    v23[4] = &v25;
    v23[5] = &v31;
    [v14 unregisterApplicationsAtMountPoint:pointCopy operationUUID:dCopy reply:v23];
  }

  while (_LSNSErrorIsXPCConnectionInterrupted(*(v32[0] + 40)));
  handleSaveObserverBehavior(observerCopy, v26[5], dCopy, *(v32[0] + 40));
  if (*(v32[0] + 40))
  {
    v16 = _LSDefaultLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      absoluteString = [pointCopy absoluteString];
      [LSApplicationWorkspace unregisterApplicationsAtMountPoint:absoluteString operationUUID:v32 saveObserver:v34 requestContext:v16];
    }

    v18 = *(v32[0] + 40) == 0;
  }

  else
  {
    v18 = 1;
  }

  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  return v18;
}

void __103__LSApplicationWorkspace_unregisterApplicationsAtMountPoint_operationUUID_saveObserver_requestContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)unregisterApplication:(id)application
{
  applicationCopy = application;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = 0;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  do
  {
    v5 = v14[5];
    v14[5] = 0;

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__LSApplicationWorkspace_unregisterApplication___block_invoke;
    v12[3] = &unk_1E6A198D0;
    v12[4] = &v13;
    v6 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__LSApplicationWorkspace_unregisterApplication___block_invoke_2;
    v11[3] = &unk_1E6A19CA0;
    v11[4] = &v13;
    [v6 unregisterApplicationAtURL:applicationCopy operationUUID:uUID reply:v11];

    IsXPCConnectionInterrupted = _LSNSErrorIsXPCConnectionInterrupted(v14[5]);
  }

  while (IsXPCConnectionInterrupted);
  if (v14[5])
  {
    v8 = _LSDefaultLog(IsXPCConnectionInterrupted);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace unregisterApplication:];
    }

    v9 = v14[5] == 0;
  }

  else
  {
    v9 = 1;
  }

  _Block_object_dispose(&v13, 8);
  return v9;
}

void __48__LSApplicationWorkspace_unregisterApplication___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v5 = v6;
  }
}

- (BOOL)unregisterBuiltinApplicationAtURL:(id)l operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer error:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  contextCopy = context;
  observerCopy = observer;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__4;
  v42 = __Block_byref_object_dispose__4;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__4;
  v36 = __Block_byref_object_dispose__4;
  v37 = 0;
  v10 = [FSNode alloc];
  v11 = v39;
  obj = v39[5];
  v25 = [(FSNode *)v10 initWithURL:lCopy flags:0 error:&obj];
  objc_storeStrong(v11 + 5, obj);
  if (v25)
  {
    if ([(FSNode *)v25 isSecuredSystemContent])
    {
      v12 = MEMORY[0x1E69E9820];
      do
      {
        v13 = objc_opt_class();
        v14 = serviceDomainForRequestContext(contextCopy);
        v15 = _LSDServiceGetXPCConnection(v13, v14);

        v30[0] = v12;
        v30[1] = 3221225472;
        v30[2] = __108__LSApplicationWorkspace_unregisterBuiltinApplicationAtURL_operationUUID_requestContext_saveObserver_error___block_invoke;
        v30[3] = &unk_1E6A198D0;
        v30[4] = &v38;
        v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v30];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __108__LSApplicationWorkspace_unregisterBuiltinApplicationAtURL_operationUUID_requestContext_saveObserver_error___block_invoke_2;
        v29[3] = &unk_1E6A19C78;
        v29[4] = &v32;
        v29[5] = &v38;
        [v16 unregisterApplicationAtURL:lCopy operationUUID:dCopy reply:v29];
      }

      while (_LSNSErrorIsXPCConnectionInterrupted(v39[5]));
    }

    else
    {
      v44 = *MEMORY[0x1E696A278];
      v45[0] = @"not a builtin application";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v17, "[LSApplicationWorkspace unregisterBuiltinApplicationAtURL:operationUUID:requestContext:saveObserver:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3298);
      v19 = v39[5];
      v39[5] = v18;
    }
  }

  handleSaveObserverBehavior(observerCopy, v33[5], dCopy, v39[5]);
  v20 = v39[5];
  if (error && v20)
  {
    *error = v20;
    v20 = v39[5];
  }

  v21 = v20 == 0;

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v21;
}

void __108__LSApplicationWorkspace_unregisterBuiltinApplicationAtURL_operationUUID_requestContext_saveObserver_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)unregisterBuiltinStandaloneExtensionAtURL:(id)l operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer error:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  contextCopy = context;
  observerCopy = observer;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__4;
  v42 = __Block_byref_object_dispose__4;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__4;
  v36 = __Block_byref_object_dispose__4;
  v37 = 0;
  v10 = [FSNode alloc];
  v11 = v39;
  obj = v39[5];
  v25 = [(FSNode *)v10 initWithURL:lCopy flags:0 error:&obj];
  objc_storeStrong(v11 + 5, obj);
  if (v25)
  {
    if ([(FSNode *)v25 isSecuredSystemContent])
    {
      v12 = MEMORY[0x1E69E9820];
      do
      {
        v13 = objc_opt_class();
        v14 = serviceDomainForRequestContext(contextCopy);
        v15 = _LSDServiceGetXPCConnection(v13, v14);

        v30[0] = v12;
        v30[1] = 3221225472;
        v30[2] = __116__LSApplicationWorkspace_unregisterBuiltinStandaloneExtensionAtURL_operationUUID_requestContext_saveObserver_error___block_invoke;
        v30[3] = &unk_1E6A198D0;
        v30[4] = &v38;
        v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v30];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __116__LSApplicationWorkspace_unregisterBuiltinStandaloneExtensionAtURL_operationUUID_requestContext_saveObserver_error___block_invoke_2;
        v29[3] = &unk_1E6A19C78;
        v29[4] = &v32;
        v29[5] = &v38;
        [v16 unregisterPluginAtURL:lCopy operationUUID:dCopy reply:v29];
      }

      while (_LSNSErrorIsXPCConnectionInterrupted(v39[5]));
    }

    else
    {
      v44 = *MEMORY[0x1E696A278];
      v45[0] = @"not a builtin plugin";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v17, "[LSApplicationWorkspace unregisterBuiltinStandaloneExtensionAtURL:operationUUID:requestContext:saveObserver:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3336);
      v19 = v39[5];
      v39[5] = v18;
    }
  }

  handleSaveObserverBehavior(observerCopy, v33[5], dCopy, v39[5]);
  v20 = v39[5];
  if (error && v20)
  {
    *error = v20;
    v20 = v39[5];
  }

  v21 = v20 == 0;

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v21;
}

void __116__LSApplicationWorkspace_unregisterBuiltinStandaloneExtensionAtURL_operationUUID_requestContext_saveObserver_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)registerBuiltinApplicationWithInstallationRecord:(id)record extensionInstallationRecords:(id)records personaUniqueStrings:(id)strings operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer registrationError:(id *)error
{
  v63 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  recordsCopy = records;
  stringsCopy = strings;
  dCopy = d;
  contextCopy = context;
  observerCopy = observer;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__4;
  v58 = __Block_byref_object_dispose__4;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__4;
  v52 = __Block_byref_object_dispose__4;
  v53 = 0;
  v14 = [FSNode alloc];
  bundleURL = [recordCopy bundleURL];
  v16 = (v55 + 5);
  obj = v55[5];
  v37 = [(FSNode *)v14 initWithURL:bundleURL flags:0 error:&obj];
  objc_storeStrong(v16, obj);

  if (v37)
  {
    if ([(FSNode *)v37 isSecuredSystemContent])
    {
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(recordsCopy, "count") + 1}];
      legacyRecordDictionary = [recordCopy legacyRecordDictionary];
      [v17 addObject:legacyRecordDictionary];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v19 = recordsCopy;
      v20 = [v19 countByEnumeratingWithState:&v43 objects:v62 count:16];
      if (v20)
      {
        v21 = *v44;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v44 != v21)
            {
              objc_enumerationMutation(v19);
            }

            legacyRecordDictionary2 = [*(*(&v43 + 1) + 8 * i) legacyRecordDictionary];
            [v17 addObject:legacyRecordDictionary2];
          }

          v20 = [v19 countByEnumeratingWithState:&v43 objects:v62 count:16];
        }

        while (v20);
      }

      v24 = MEMORY[0x1E69E9820];
      do
      {
        v25 = objc_opt_class();
        v26 = serviceDomainForRequestContext(contextCopy);
        v27 = _LSDServiceGetXPCConnection(v25, v26);

        v42[0] = v24;
        v42[1] = 3221225472;
        v42[2] = __185__LSApplicationWorkspace_registerBuiltinApplicationWithInstallationRecord_extensionInstallationRecords_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke;
        v42[3] = &unk_1E6A198D0;
        v42[4] = &v54;
        v28 = [v27 synchronousRemoteObjectProxyWithErrorHandler:v42];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __185__LSApplicationWorkspace_registerBuiltinApplicationWithInstallationRecord_extensionInstallationRecords_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke_2;
        v41[3] = &unk_1E6A19C78;
        v41[4] = &v48;
        v41[5] = &v54;
        [v28 registerBuiltinApplication:v17 personaUniqueStrings:stringsCopy operationUUID:dCopy reply:v41];
      }

      while (_LSNSErrorIsXPCConnectionInterrupted(v55[5]));
    }

    else
    {
      v60 = *MEMORY[0x1E696A278];
      v61 = @"not a builtin application";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v29 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v17, "[LSApplicationWorkspace registerBuiltinApplicationWithInstallationRecord:extensionInstallationRecords:personaUniqueStrings:operationUUID:requestContext:saveObserver:registrationError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3381);
      v30 = v55[5];
      v55[5] = v29;
    }
  }

  handleSaveObserverBehavior(observerCopy, v49[5], dCopy, v55[5]);
  v31 = v55[5];
  if (error && v31)
  {
    *error = v31;
    v31 = v55[5];
  }

  v32 = v31 == 0;

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);

  return v32;
}

void __185__LSApplicationWorkspace_registerBuiltinApplicationWithInstallationRecord_extensionInstallationRecords_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)registerBuiltinStandaloneExtension:(id)extension personaUniqueStrings:(id)strings operationUUID:(id)d requestContext:(id)context saveObserver:(id)observer registrationError:(id *)error
{
  v50[1] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  stringsCopy = strings;
  dCopy = d;
  contextCopy = context;
  observerCopy = observer;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__4;
  v47 = __Block_byref_object_dispose__4;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__4;
  v41 = __Block_byref_object_dispose__4;
  v42 = 0;
  v12 = [FSNode alloc];
  bundleURL = [extensionCopy bundleURL];
  v14 = v44;
  obj = v44[5];
  v30 = [(FSNode *)v12 initWithURL:bundleURL flags:0 error:&obj];
  objc_storeStrong(v14 + 5, obj);

  if (v30)
  {
    if ([(FSNode *)v30 isSecuredSystemContent])
    {
      v15 = MEMORY[0x1E69E9820];
      do
      {
        v16 = objc_opt_class();
        v17 = serviceDomainForRequestContext(contextCopy);
        v18 = _LSDServiceGetXPCConnection(v16, v17);

        v35[0] = v15;
        v35[1] = 3221225472;
        v35[2] = __142__LSApplicationWorkspace_registerBuiltinStandaloneExtension_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke;
        v35[3] = &unk_1E6A198D0;
        v35[4] = &v43;
        v19 = [v18 synchronousRemoteObjectProxyWithErrorHandler:v35];
        legacyRecordDictionary = [extensionCopy legacyRecordDictionary];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __142__LSApplicationWorkspace_registerBuiltinStandaloneExtension_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke_2;
        v34[3] = &unk_1E6A19C78;
        v34[4] = &v43;
        v34[5] = &v37;
        [v19 registerBuiltinAppex:legacyRecordDictionary operationUUID:dCopy reply:v34];
      }

      while (_LSNSErrorIsXPCConnectionInterrupted(v44[5]));
    }

    else
    {
      v49 = *MEMORY[0x1E696A278];
      v50[0] = @"not a builtin application";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
      v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v21, "[LSApplicationWorkspace registerBuiltinStandaloneExtension:personaUniqueStrings:operationUUID:requestContext:saveObserver:registrationError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3420);
      v23 = v44[5];
      v44[5] = v22;
    }
  }

  handleSaveObserverBehavior(observerCopy, v38[5], dCopy, v44[5]);
  v24 = v44[5];
  if (error && v24)
  {
    *error = v24;
    v24 = v44[5];
  }

  v25 = v24 == 0;

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  return v25;
}

void __142__LSApplicationWorkspace_registerBuiltinStandaloneExtension_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)refreshUnbundledSystemExtensionPointsWithOperationUUID:(id)d requestContext:(id)context saveObserver:(id)observer registrationError:(id *)error
{
  dCopy = d;
  contextCopy = context;
  observerCopy = observer;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  do
  {
    v10 = objc_opt_class();
    v11 = serviceDomainForRequestContext(contextCopy);
    v12 = _LSDServiceGetXPCConnection(v10, v11);

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __127__LSApplicationWorkspace_refreshUnbundledSystemExtensionPointsWithOperationUUID_requestContext_saveObserver_registrationError___block_invoke;
    v20[3] = &unk_1E6A198D0;
    v20[4] = &v27;
    v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __127__LSApplicationWorkspace_refreshUnbundledSystemExtensionPointsWithOperationUUID_requestContext_saveObserver_registrationError___block_invoke_2;
    v19[3] = &unk_1E6A19C78;
    v19[4] = &v27;
    v19[5] = &v21;
    [v13 refreshExtensionPointsWithOperationUUID:dCopy reply:v19];
  }

  while (_LSNSErrorIsXPCConnectionInterrupted(v28[5]));
  handleSaveObserverBehavior(observerCopy, v22[5], dCopy, v28[5]);
  v14 = v28[5];
  if (error && v14)
  {
    *error = v14;
    v14 = v28[5];
  }

  v15 = v14 == 0;
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  return v15;
}

void __127__LSApplicationWorkspace_refreshUnbundledSystemExtensionPointsWithOperationUUID_requestContext_saveObserver_registrationError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)updateRecordForApp:(id)app withSINF:(id)f iTunesMetadata:(id)metadata placeholderMetadata:(id)placeholderMetadata sendNotification:(int)notification operationUUID:(id)d outSaveToken:(id *)token error:(id *)self0
{
  v11 = *&notification;
  appCopy = app;
  fCopy = f;
  metadataCopy = metadata;
  placeholderMetadataCopy = placeholderMetadata;
  dCopy = d;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__4;
  v38 = __Block_byref_object_dispose__4;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __139__LSApplicationWorkspace_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_outSaveToken_error___block_invoke;
  v27[3] = &unk_1E6A198D0;
  v27[4] = &v34;
  v19 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v27];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __139__LSApplicationWorkspace_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_outSaveToken_error___block_invoke_2;
  v26[3] = &unk_1E6A19CC8;
  v26[4] = &v28;
  v26[5] = &v40;
  v26[6] = &v34;
  LOBYTE(v24) = token != 0;
  v20 = [v19 updateRecordForApp:appCopy withSINF:fCopy iTunesMetadata:metadataCopy placeholderMetadata:placeholderMetadataCopy sendNotification:v11 operationUUID:dCopy returnSaveToken:v24 completionHandler:v26];
  _LSContextInvalidate(v20, v21);
  v22 = *(v41 + 24);
  if (token && (v41[3] & 1) != 0)
  {
    *token = v29[5];
    v22 = *(v41 + 24);
  }

  if (error && (v22 & 1) == 0)
  {
    *error = v35[5];
    v22 = *(v41 + 24);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
  return v22 & 1;
}

void __139__LSApplicationWorkspace_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_outSaveToken_error___block_invoke_2(void *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v13 = v7;

  *(*(a1[5] + 8) + 24) = a2;
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

- (BOOL)updateSINFWithData:(id)data forApplication:(id)application options:(id)options error:(id *)error
{
  v7 = _LSDefaultLog(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [(LSApplicationWorkspace *)v7 updateSINFWithData:v8 forApplication:v9 options:v10 error:v11, v12, v13, v14];
  }

  v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace updateSINFWithData:forApplication:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3514);
  if (error)
  {
    v15 = v15;
    *error = v15;
  }

  return 0;
}

- (BOOL)_getBundleIdentifierForBundleAtURL:(id)l invokeUpdateBlockAndReregister:(id)reregister error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  reregisterCopy = reregister;
  v25 = 0;
  v9 = [[LSApplicationRecord alloc] initWithURL:lCopy allowPlaceholder:1 error:&v25];
  v10 = v25;
  v11 = v10;
  if (!v9)
  {
    bundleIdentifier = _LSDefaultLog(v10);
    if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace _getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:];
    }

    goto LABEL_14;
  }

  bundleIdentifier = [(LSBundleRecord *)v9 bundleIdentifier];
  if (bundleIdentifier)
  {
    v24 = v11;
    v13 = reregisterCopy[2](reregisterCopy, lCopy, bundleIdentifier, &v24);
    v14 = v24;

    if (v13)
    {
      v16 = 1;
      v17 = LSRegisterURL(lCopy, 1u);
      v23 = v14;
      v18 = _LSGetNSErrorFromOSStatusImpl(v17, &v23, 0, "[LSApplicationWorkspace _getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3534);
      v11 = v23;

      if (v18)
      {
        goto LABEL_15;
      }

      v20 = _LSDefaultLog(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [LSApplicationWorkspace _getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:];
      }

      goto LABEL_13;
    }

    v20 = _LSDefaultLog(v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace _getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:];
    }
  }

  else
  {
    v26 = *MEMORY[0x1E696A278];
    v27[0] = @"provided bundle URL was not a bundle with a bundle identifier";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v14 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 112, v20, "[LSApplicationWorkspace _getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3545);
  }

  v11 = v14;
LABEL_13:

LABEL_14:
  v16 = 0;
LABEL_15:

  if (error)
  {
    v21 = v11;
    *error = v11;
  }

  return v16;
}

- (BOOL)updateSINFWithData:(id)data forApplicationAtURL:(id)l error:(id *)error
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace updateSINFWithData:forApplicationAtURL:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3582);
  }

  return 0;
}

- (BOOL)updateiTunesMetadataWithData:(id)data forApplication:(id)application options:(id)options error:(id *)error
{
  v7 = _LSDefaultLog(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [(LSApplicationWorkspace *)v7 updateiTunesMetadataWithData:v8 forApplication:v9 options:v10 error:v11, v12, v13, v14];
  }

  v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace updateiTunesMetadataWithData:forApplication:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3594);
  if (error)
  {
    v15 = v15;
    *error = v15;
  }

  return 0;
}

- (BOOL)updateiTunesMetadataWithData:(id)data forApplicationAtURL:(id)l error:(id *)error
{
  v6 = _LSDefaultLog(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [(LSApplicationWorkspace *)v6 updateiTunesMetadataWithData:v7 forApplicationAtURL:v8 error:v9, v10, v11, v12, v13];
  }

  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace updateiTunesMetadataWithData:forApplicationAtURL:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3606);
  }

  return 0;
}

- (BOOL)updatePlaceholderMetadataForApp:(id)app installType:(unint64_t)type failure:(unint64_t)failure underlyingError:(id)error source:(unint64_t)source outError:(id *)outError
{
  v45[2] = *MEMORY[0x1E69E9840];
  appCopy = app;
  v14 = MEMORY[0x1E696AD98];
  errorCopy = error;
  v16 = [v14 numberWithUnsignedInteger:failure];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:source];
  v41 = v40 = errorCopy;
  v39 = v17;
  _LSLogStepStart(11, 0, appCopy, @"Updating PlaceholderMetadata for %@ with failure %@ <LSInstallType %@, underlyingError (%@), source %@>", v18, v19, v20, v21, appCopy);

  v22 = softLinkMobileInstallationUpdatePlaceholderMetadata(appCopy, type, failure, errorCopy, source);

  if (v22)
  {
    observerProxy = _LSDefaultLog(v23);
    if (os_log_type_enabled(observerProxy, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace updatePlaceholderMetadataForApp:installType:failure:underlyingError:source:outError:];
    }

    v25 = 0;
  }

  else
  {
    v27 = type - 7 < 3 && failure != 0;
    v44[0] = @"LSInstallType";
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
    v44[1] = @"PlaceholderFailureReason";
    v45[0] = v28;
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:failure];
    v45[1] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v43 = 0;
    v25 = [(LSApplicationWorkspace *)self updateRecordForApp:appCopy withSINF:0 iTunesMetadata:0 placeholderMetadata:v30 sendNotification:v27 operationUUID:uUID outSaveToken:0 error:&v43, v39, v40, v41];
    v22 = v43;

    if (!v27)
    {
      outErrorCopy2 = outError;
      goto LABEL_14;
    }

    observerProxy = [(LSApplicationWorkspace *)self observerProxy];
    [observerProxy installationEndedForApplication:appCopy withState:4];
  }

  outErrorCopy2 = outError;

LABEL_14:
  _LSLogStepFinished(11, v25, appCopy, @"Updated PlaceholderMetadata for app with error %@", v32, v33, v34, v35, v22);
  if (outErrorCopy2 && !v25)
  {
    v37 = v22;
    *outErrorCopy2 = v22;
  }

  return v25;
}

- (BOOL)initiateProgressForApp:(id)app withType:(unint64_t)type
{
  v6 = MEMORY[0x1E696AD98];
  appCopy = app;
  v19 = [v6 numberWithUnsignedInteger:type];
  _LSLogStepStart(11, 0, appCopy, @"Updating PlaceholderMetadata for %@ with LSInstallType %@", v8, v9, v10, v11, appCopy);

  [(LSApplicationWorkspace *)self placeholderInstalledForIdentifier:appCopy filterDowngrades:0];
  v20 = 0;
  updated = _updatePlaceholderInstallType(self, appCopy, type, &v20);
  v13 = v20;
  _LSLogStepFinished(11, updated, appCopy, @"Updated PlaceholderMetadata for app with error %@", v14, v15, v16, v17, v13);

  return updated;
}

- (BOOL)revertContainerizedApplicationWithIdentifier:(id)identifier options:(id)options returningRecordPromise:(id *)promise error:(id *)error progressBlock:(id)block
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace revertContainerizedApplicationWithIdentifier:options:returningRecordPromise:error:progressBlock:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3706);
  }

  return 0;
}

- (BOOL)unregisterPlugin:(id)plugin
{
  pluginCopy = plugin;
  v9 = 0;
  v4 = _LSUnregisterPluginsAtURL(pluginCopy, &v9);
  v5 = v9;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v7 = _LSDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace unregisterPlugin:];
    }
  }

  return v4;
}

- (BOOL)allowsAlternateIcons
{
  SharedInstance = __LSDefaultsGetSharedInstance(self, a2);

  return [SharedInstance allowsAlternateIcons];
}

- (BOOL)garbageCollectDatabaseWithError:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__LSApplicationWorkspace_garbageCollectDatabaseWithError___block_invoke;
  v8[3] = &unk_1E6A198D0;
  v8[4] = &v9;
  v4 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__LSApplicationWorkspace_garbageCollectDatabaseWithError___block_invoke_2;
  v7[3] = &unk_1E6A19A28;
  v7[4] = &v15;
  v7[5] = &v9;
  [v4 garbageCollectDatabaseWithCompletionHandler:v7];
  v5 = *(v16 + 24);
  if (error && (v16[3] & 1) == 0)
  {
    *error = v10[5];
    v5 = *(v16 + 24);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);
  return v5 & 1;
}

- (BOOL)isVersion:(id)version greaterThanOrEqualToVersion:(id)toVersion
{
  v12 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  toVersionCopy = toVersion;
  v7 = toVersionCopy;
  if (!versionCopy)
  {
    [LSApplicationWorkspace isVersion:greaterThanOrEqualToVersion:];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    [LSApplicationWorkspace isVersion:greaterThanOrEqualToVersion:];
    goto LABEL_3;
  }

  if (!toVersionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  _LSVersionNumberMakeWithString();
  _LSVersionNumberMakeWithString();
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v8 = _LSVersionNumberCompare(v11, v10) != -1;

  return v8;
}

- (BOOL)invalidateIconCache:(id)cache
{
  cacheCopy = cache;
  if (IconServicesLibrary_frameworkLibrary_0 || (IconServicesLibrary_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
  {
    softLink_ISInvalidateCacheEntriesForBundleIdentifier(cacheCopy);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearAdvertisingIdentifier
{
  v2 = [(_LSDService *)_LSDDeviceIdentifierService XPCProxyWithErrorHandler:?];
  [v2 clearAllIdentifiersOfType:1];
}

- (id)deviceIdentifierForAdvertising
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke;
  v5[3] = &unk_1E6A19D20;
  v5[4] = &v6;
  v2 = _LSRetryForConnectionInterrupted(v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

id __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_2;
  v7[3] = &unk_1E6A198D0;
  v7[4] = &v8;
  v2 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_373;
  v6[3] = &unk_1E6A19CF8;
  v6[4] = *(a1 + 32);
  [v2 getIdentifierOfType:1 completionHandler:v6];
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = 0;
  }

  else
  {
    v3 = v9[5];
  }

  v4 = v3;

  _Block_object_dispose(&v8, 8);

  return v4;
}

void __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_2_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_373(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = _LSDefaultLog(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_373_cold_1();
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_2_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_376(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = _LSDefaultLog(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_376_cold_1();
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)urlContainsDeviceIdentifierForAdvertising:(id)advertising
{
  advertisingCopy = advertising;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__LSApplicationWorkspace_urlContainsDeviceIdentifierForAdvertising___block_invoke;
  v8[3] = &unk_1E6A19D98;
  v4 = advertisingCopy;
  v9 = v4;
  v10 = &v11;
  v5 = _LSRetryForConnectionInterrupted(v8);
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

id __68__LSApplicationWorkspace_urlContainsDeviceIdentifierForAdvertising___block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__LSApplicationWorkspace_urlContainsDeviceIdentifierForAdvertising___block_invoke_2;
  v7[3] = &unk_1E6A19D48;
  v8 = *(a1 + 32);
  v9 = &v10;
  v2 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__LSApplicationWorkspace_urlContainsDeviceIdentifierForAdvertising___block_invoke_377;
  v6[3] = &unk_1E6A19D70;
  v3 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  [v2 urlContainsDeviceIdentifierForAdvertising:v3 completionHandler:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

void __68__LSApplicationWorkspace_urlContainsDeviceIdentifierForAdvertising___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__LSApplicationWorkspace_urlContainsDeviceIdentifierForAdvertising___block_invoke_2_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)createDeviceIdentifierWithVendorName:(id)name bundleIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  v7 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:?];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__LSApplicationWorkspace_createDeviceIdentifierWithVendorName_bundleIdentifier___block_invoke;
  v10[3] = &unk_1E6A19CF8;
  v10[4] = &v11;
  [v7 getIdentifierOfType:0 vendorName:nameCopy bundleIdentifier:identifierCopy completionHandler:v10];
  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)removeDeviceIdentifierForVendorName:(id)name bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  nameCopy = name;
  v7 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:?];
  [v7 clearIdentifiersForUninstallationWithVendorName:nameCopy bundleIdentifier:identifierCopy];
}

- (id)deviceIdentifierForVendorSeedData
{
  v14[2] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  v2 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:?];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__LSApplicationWorkspace_deviceIdentifierForVendorSeedData__block_invoke;
  v7[3] = &unk_1E6A19CF8;
  v7[4] = &v8;
  [v2 getIdentifierOfType:2 completionHandler:v7];
  v3 = v9[5];
  if (v3)
  {
    v14[0] = 0;
    v14[1] = 0;
    [v3 getUUIDBytes:v14];
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:16];
  }

  else
  {
    v5 = _LSDefaultLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace deviceIdentifierForVendorSeedData];
    }

    v4 = 0;
  }

  _Block_object_dispose(&v8, 8);

  return v4;
}

- (id)installProgressForBundleID:(id)d makeSynchronous:(unsigned __int8)synchronous
{
  dCopy = d;
  v6 = _LSProgressLog(dCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspace installProgressForBundleID:makeSynchronous:];
  }

  v7 = +[LSApplicationWorkspace progressQueue];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke;
  v15 = &unk_1E6A18F50;
  selfCopy = self;
  v8 = dCopy;
  v17 = v8;
  dispatch_sync(v7, &v12);

  selfCopy = [(LSInstallProgressList *)self->_observedInstallProgresses progressForBundleID:v8, v12, v13, v14, v15, selfCopy];
  v10 = _LSProgressLog(selfCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspace installProgressForBundleID:selfCopy makeSynchronous:?];
  }

  return selfCopy;
}

void __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  if (!v3)
  {
    v4 = objc_alloc_init(LSInstallProgressList);
    v5 = *(*v2 + 16);
    *(*v2 + 16) = v4;

    v3 = *(*v2 + 16);
  }

  v7 = *(a1 + 40);
  v6 = (a1 + 40);
  v8 = [v3 progressForBundleID:v7];
  if (v8)
  {

    goto LABEL_6;
  }

  v10 = [*(*v2 + 16) subscriberForBundleID:*v6 andPublishingKey:*v6];

  if (v10)
  {
LABEL_6:
    v11 = _LSProgressLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_cold_1();
    }

    goto LABEL_8;
  }

  v12 = _LSProgressLog(v9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_cold_2();
  }

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_380;
  v23 = &unk_1E6A19DC0;
  v13 = *v6;
  v14 = *v2;
  v24 = v13;
  v25 = v14;
  v15 = MEMORY[0x1865D71B0](&v20);
  v16 = [MEMORY[0x1E696AE38] _addSubscriberForCategory:*v6 usingPublishingHandler:{v15, v20, v21, v22, v23}];
  v17 = v16;
  if (v16)
  {
    v16 = [*(*v2 + 16) addSubscriber:v16 forPublishingKey:*v6 andBundleID:*v6];
  }

  v18 = _LSProgressLog(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *v6;
    *buf = 138412290;
    v27 = v19;
    _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "Subscribing to progress for app %@, ", buf, 0xCu);
  }

  v11 = v24;
LABEL_8:
}

id __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_380(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSProgressLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 _LSDescription];
    v6 = *(a1 + 32);
    *buf = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Got progress %@ for app %@, ", buf, 0x16u);
  }

  [*(*(a1 + 40) + 16) setProgress:v3 forBundleID:*(a1 + 32)];
  v7 = [*(a1 + 40) remoteObserver];
  v17 = *(a1 + 32);
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  [v7 applicationInstallsDidChange:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_381;
  v14[3] = &unk_1E6A18F50;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v15 = v9;
  v16 = v10;
  v11 = [v14 copy];
  v12 = MEMORY[0x1865D71B0]();

  return v12;
}

void __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_381(int8x16_t *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _LSProgressLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[2].i64[0];
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "Unpublishing progress block called for app %@", buf, 0xCu);
  }

  v4 = +[LSApplicationWorkspace progressQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_382;
  block[3] = &unk_1E6A18F50;
  v6 = a1[2];
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  dispatch_async(v4, block);
}

void *__69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_382(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    [result removeProgressForBundleID:*(a1 + 40)];
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 16);

    return [v4 removeSubscriberForPublishingKey:v3 andBundleID:v3];
  }

  return result;
}

- (id)installProgressForApplication:(id)application withPhase:(unint64_t)phase
{
  v27 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  v7 = applicationCopy;
  if (applicationCopy)
  {
    bundleIdentifier = [applicationCopy bundleIdentifier];
    v9 = [MEMORY[0x1E696AE38] publishingKeyForApp:bundleIdentifier withPhase:phase];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    createdInstallProgresses = selfCopy->_createdInstallProgresses;
    if (!createdInstallProgresses)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
      v13 = selfCopy->_createdInstallProgresses;
      selfCopy->_createdInstallProgresses = v12;

      createdInstallProgresses = selfCopy->_createdInstallProgresses;
    }

    v14 = [(NSMutableDictionary *)createdInstallProgresses objectForKeyedSubscript:v9];
    if (!v14)
    {
      isPlaceholder = [v7 isPlaceholder];
      if (isPlaceholder)
      {
        v14 = [MEMORY[0x1E696AE38] childProgressForBundleID:bundleIdentifier andPhase:phase];
        syncObserverProxy = [(LSApplicationWorkspace *)selfCopy syncObserverProxy];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __66__LSApplicationWorkspace_installProgressForApplication_withPhase___block_invoke;
        v23[3] = &unk_1E6A19AC0;
        v24 = v7;
        [syncObserverProxy createInstallProgressForApplication:v24 withPhase:phase andPublishingString:v9 reply:v23];

        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __66__LSApplicationWorkspace_installProgressForApplication_withPhase___block_invoke_385;
        v21[3] = &unk_1E6A18F50;
        v21[4] = selfCopy;
        v22 = bundleIdentifier;
        [v14 setCancellationHandler:v21];
        [(NSMutableDictionary *)selfCopy->_createdInstallProgresses setObject:v14 forKeyedSubscript:v9];
        v17 = _LSProgressLog([v14 _publish]);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          _LSDescription = [v14 _LSDescription];
          *buf = 138412290;
          v26 = _LSDescription;
          _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEFAULT, "Published install progress %@", buf, 0xCu);
        }

        v19 = v24;
      }

      else
      {
        v19 = _LSProgressLog(isPlaceholder);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v7;
          _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_DEFAULT, "App %@ is not a placeholder so cannot have progress", buf, 0xCu);
        }

        v14 = 0;
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __66__LSApplicationWorkspace_installProgressForApplication_withPhase___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _LSProgressLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__LSApplicationWorkspace_installProgressForApplication_withPhase___block_invoke_cold_1();
    }
  }
}

void __66__LSApplicationWorkspace_installProgressForApplication_withPhase___block_invoke_385(uint64_t a1)
{
  v2 = [*(a1 + 32) observerProxy];
  [v2 installationEndedForApplication:*(a1 + 40) withState:3];
}

- (BOOL)installPhaseFinishedForProgress:(id)progress
{
  v20 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  userInfo = [progressCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"bundleID"];

  v7 = [v6 substringToIndex:{objc_msgSend(v6, "rangeOfString:options:", @".", 4)}];
  installState = [progressCopy installState];
  v9 = installState;
  if (installState == 4)
  {
    v10 = _LSDefaultLog(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      _LSDescription = [progressCopy _LSDescription];
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = _LSDescription;
      _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "installPhaseFinishedForProgress: %@ - %@ called", &v16, 0x16u);
    }

    syncObserverProxy = [(LSApplicationWorkspace *)self syncObserverProxy];
    [syncObserverProxy installationFailedForApplication:v7 reply:&__block_literal_global_393];
  }

  v13 = _LSDefaultLog(installState);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspace installPhaseFinishedForProgress:];
  }

  [progressCopy _unpublish];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (v6)
  {
    [(NSMutableDictionary *)selfCopy->_createdInstallProgresses removeObjectForKey:v6];
  }

  objc_sync_exit(selfCopy);

  return v9 != 4;
}

- (void)clearCreatedProgressForBundleID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_createdInstallProgresses allKeys];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v6 = v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v9 = *v15;
    *&v8 = 138412290;
    v13 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 hasPrefix:{dCopy, v13, v14}])
        {
          v12 = _LSProgressLog([(NSMutableDictionary *)selfCopy->_createdInstallProgresses removeObjectForKey:v11]);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            v19 = v11;
            _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Clearing progress for key %@ from cache", buf, 0xCu);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)_LSPrivateRebuildApplicationDatabasesForSystemApps:(BOOL)apps internal:(BOOL)internal user:(BOOL)user uid:(unsigned int *)uid
{
  userCopy = user;
  internalCopy = internal;
  appsCopy = apps;
  v31 = *MEMORY[0x1E69E9840];
  v10 = _LSDefaultLog(self);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "Rebuilding LS database.", buf, 2u);
  }

  *buf = 0;
  v26 = buf;
  v27 = 0x2020000000;
  v28 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = +[_LSDServiceDomain defaultServiceDomain];
  v13 = v12;
  if (uid)
  {
    if (*uid)
    {
      v14 = [[_LSDServiceDomain alloc] initWithUID:?];
    }

    else
    {
      v14 = +[_LSDServiceDomain systemSessionDomain];
    }

    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  v16 = objc_opt_class();
  v17 = _LSDServiceGetXPCConnection(v16, v15);
  v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_396];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __95__LSApplicationWorkspace__LSPrivateRebuildApplicationDatabasesForSystemApps_internal_user_uid___block_invoke_397;
  v24[3] = &unk_1E6A19A00;
  v24[4] = buf;
  [v18 rebuildApplicationDatabasesForSystem:appsCopy internal:internalCopy user:userCopy completionHandler:v24];

  objc_autoreleasePoolPop(v11);
  v20 = _LSDefaultLog(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (v26[24])
    {
      v21 = "SUCCESS";
    }

    else
    {
      v21 = "FAILED";
    }

    *v29 = 136315138;
    v30 = v21;
    _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEFAULT, "%s Finished rebuilding LS database.", v29, 0xCu);
  }

  v22 = v26[24];
  _Block_object_dispose(buf, 8);
  return v22;
}

void __95__LSApplicationWorkspace__LSPrivateRebuildApplicationDatabasesForSystemApps_internal_user_uid___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LSDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __95__LSApplicationWorkspace__LSPrivateRebuildApplicationDatabasesForSystemApps_internal_user_uid___block_invoke_cold_1();
  }
}

- (void)rebuildDatabaseContentForFrameworkAtURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__LSApplicationWorkspace_rebuildDatabaseContentForFrameworkAtURL_completionHandler___block_invoke;
  v12[3] = &unk_1E6A19A70;
  v6 = handlerCopy;
  v13 = v6;
  lCopy = l;
  v8 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__LSApplicationWorkspace_rebuildDatabaseContentForFrameworkAtURL_completionHandler___block_invoke_2;
  v10[3] = &unk_1E6A19A70;
  v11 = v6;
  v9 = v6;
  [v8 refreshContentInFrameworkAtURL:lCopy reply:v10];
}

uint64_t __84__LSApplicationWorkspace_rebuildDatabaseContentForFrameworkAtURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, a2);
  }

  return result;
}

uint64_t __84__LSApplicationWorkspace_rebuildDatabaseContentForFrameworkAtURL_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, a2);
  }

  return result;
}

- (void)noteRestrictionsUpdateForOpensWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__LSApplicationWorkspace_noteRestrictionsUpdateForOpensWithCompletion___block_invoke;
  v6[3] = &unk_1E6A19A70;
  v7 = completionCopy;
  v4 = completionCopy;
  v5 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:v6];
  [v5 updateRestrictionKnowledgeWithCompletionHandler:v4];
}

- (void)_LSPrivateUpdateAppRemovalRestrictions
{
  v2 = +[LSApplicationRestrictionsManager sharedInstance];
  [(LSApplicationRestrictionsManager *)v2 cleanRemovedSystemApplicationsList];
}

- (void)_LSPrivateSetRemovedSystemAppIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = +[LSApplicationRestrictionsManager sharedInstance];
  [(LSApplicationRestrictionsManager *)v4 setRemovedSystemApplicationIdentifiers:identifiersCopy];
}

- (id)_LSPrivateRemovedSystemAppIdentifiers
{
  v2 = +[LSApplicationRestrictionsManager sharedInstance];
  removedSystemApplicationIdentifiers = [(LSApplicationRestrictionsManager *)v2 removedSystemApplicationIdentifiers];

  return removedSystemApplicationIdentifiers;
}

- (BOOL)_LSPrivateDatabaseNeedsRebuild
{
  v2 = _LSGetStatus();
  v3 = v2;
  if ((v2 & 0x200) != 0)
  {
    v4 = _LSDefaultLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Incomplete database seed detected, _LSPrivateDatabaseNeedsRebuild = YES", v7, 2u);
    }
  }

  return (v3 >> 9) & 1;
}

- (BOOL)_LSPrivateRebuildDatabaseAtNextRestart:(id)restart
{
  restartCopy = restart;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__LSApplicationWorkspace__LSPrivateRebuildDatabaseAtNextRestart___block_invoke;
  v10[3] = &unk_1E6A19A70;
  v4 = restartCopy;
  v11 = v4;
  v5 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__LSApplicationWorkspace__LSPrivateRebuildDatabaseAtNextRestart___block_invoke_3;
  v8[3] = &unk_1E6A19E58;
  v9 = v4;
  v6 = v4;
  [v5 removeDatabaseStoreOnNextOpportunity:v8];

  return 1;
}

void __65__LSApplicationWorkspace__LSPrivateRebuildDatabaseAtNextRestart___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__LSApplicationWorkspace__LSPrivateRebuildDatabaseAtNextRestart___block_invoke_2;
    v6[3] = &unk_1E6A19E08;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __65__LSApplicationWorkspace__LSPrivateRebuildDatabaseAtNextRestart___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__LSApplicationWorkspace__LSPrivateRebuildDatabaseAtNextRestart___block_invoke_4;
    block[3] = &unk_1E6A19E30;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (BOOL)_LSPrivateAskLSDToExitSafely:(double)safely completionHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__LSApplicationWorkspace__LSPrivateAskLSDToExitSafely_completionHandler___block_invoke;
  v12[3] = &unk_1E6A19A70;
  v6 = handlerCopy;
  v13 = v6;
  v7 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:v12];
  if (safely <= 0.0)
  {
    safely = 1.0e99;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__LSApplicationWorkspace__LSPrivateAskLSDToExitSafely_completionHandler___block_invoke_3;
  v10[3] = &unk_1E6A19E58;
  v11 = v6;
  v8 = v6;
  [v7 requestLSDExitSafely:v10 completionHandler:safely];

  return 1;
}

void __73__LSApplicationWorkspace__LSPrivateAskLSDToExitSafely_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__LSApplicationWorkspace__LSPrivateAskLSDToExitSafely_completionHandler___block_invoke_2;
    v6[3] = &unk_1E6A19E08;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __73__LSApplicationWorkspace__LSPrivateAskLSDToExitSafely_completionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__LSApplicationWorkspace__LSPrivateAskLSDToExitSafely_completionHandler___block_invoke_4;
    block[3] = &unk_1E6A19E30;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)_LSPrivateNoteMigratorRunning
{
  v2 = objc_opt_class();
  v3 = +[_LSDServiceDomain defaultServiceDomain];
  v5 = _LSDServiceGetXPCConnection(v2, v3);

  v4 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_401];
  [v4 noteMigratorRunningWithReply:&__block_literal_global_404];
}

void __55__LSApplicationWorkspace__LSPrivateNoteMigratorRunning__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LSDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__LSApplicationWorkspace__LSPrivateNoteMigratorRunning__block_invoke_cold_1();
  }
}

void __55__LSApplicationWorkspace__LSPrivateNoteMigratorRunning__block_invoke_402(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _LSDefaultLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__LSApplicationWorkspace__LSPrivateNoteMigratorRunning__block_invoke_402_cold_1();
    }
  }
}

- (void)_LSFailedToOpenURL:(id)l withBundle:(id)bundle
{
  v16 = *MEMORY[0x1E69E9840];
  lCopy = l;
  bundleCopy = bundle;
  v7 = _LSDefaultLog(bundleCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138478083;
    v13 = lCopy;
    v14 = 2113;
    v15 = bundleCopy;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "_LSFailedToOpenURL:%{private}@ withBundle:%{private}@", buf, 0x16u);
  }

  v8 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:?];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__LSApplicationWorkspace__LSFailedToOpenURL_withBundle___block_invoke;
  v10[3] = &unk_1E6A19888;
  v11 = bundleCopy;
  v9 = bundleCopy;
  [v8 failedToOpenApplication:v9 withURL:lCopy completionHandler:v10];
}

void __56__LSApplicationWorkspace__LSFailedToOpenURL_withBundle___block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _LSDefaultLog(v5);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 138477827;
      v10 = v8;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "Finished presenting restoration prompt for %{private}@.", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __56__LSApplicationWorkspace__LSFailedToOpenURL_withBundle___block_invoke_cold_1();
  }
}

- (void)_LSClearSchemaCaches
{
  if (_LSCurrentProcessMayMapDatabase())
  {
    v3 = 0;
    if (!_LSContextInit(&v3))
    {
      schema = [(_LSDatabase *)v3 schema];
      _LSSchemaClearAllCaches(schema);
      _LSContextDestroy(&v3);
    }
  }
}

- (void)sendExtensionNotificationsForSystemModeChangeFrom:(id)from to:(id)to
{
  v24 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  v7 = _LSExtensionsLog(toCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v21 = fromCopy;
    v22 = 2112;
    v23 = toCopy;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "Begin updating extensions for mode change %@ -> %@", buf, 0x16u);
  }

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = _LSServer_DatabaseExecutionContext();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__LSApplicationWorkspace_sendExtensionNotificationsForSystemModeChangeFrom_to___block_invoke;
  v15[3] = &unk_1E6A19E80;
  v16 = toCopy;
  v17 = v8;
  v18 = fromCopy;
  v19 = v9;
  v11 = v9;
  v12 = fromCopy;
  v13 = v8;
  v14 = toCopy;
  [(LSDBExecutionContext *)v10 syncRead:v15];
}

void __79__LSApplicationWorkspace_sendExtensionNotificationsForSystemModeChangeFrom_to___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = +[LSExtensionPointRecord enumerator];
  v2 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v48;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v48 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v47 + 1) + 8 * i);
        v7 = [v6 SDKDictionary];
        v8 = objc_opt_class();
        v9 = [v7 objectForKey:@"LSExtensionRestrictedSystemModes" ofClass:v8 valuesOfClass:objc_opt_class()];

        if ([v9 containsObject:*(a1 + 32)])
        {
          [*(a1 + 40) addObject:v6];
        }

        if ([v9 containsObject:*(a1 + 48)])
        {
          [*(a1 + 56) addObject:v6];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v3);
  }

  v10 = [*(a1 + 40) mutableCopy];
  [v10 minusSet:*(a1 + 56)];
  v11 = [*(a1 + 56) mutableCopy];
  [v11 minusSet:*(a1 + 40)];
  v12 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v44;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [LSApplicationExtensionRecord enumeratorWithExtensionPointRecord:*(*(&v43 + 1) + 8 * j) options:0];
        v19 = [v18 allObjects];
        [v12 addObjectsFromArray:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v15);
  }

  obja = v13;

  v20 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v21 = v10;
  v22 = [v21 countByEnumeratingWithState:&v39 objects:v55 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v40;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [LSApplicationExtensionRecord enumeratorWithExtensionPointRecord:*(*(&v39 + 1) + 8 * k) options:0];
        v27 = [v26 allObjects];
        [v20 addObjectsFromArray:v27];
      }

      v23 = [v21 countByEnumeratingWithState:&v39 objects:v55 count:16];
    }

    while (v23);
  }

  v28 = [v12 count];
  if (v28)
  {
    v29 = _LSExtensionsLog(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v12;
      _os_log_impl(&dword_18162D000, v29, OS_LOG_TYPE_DEFAULT, "Sending system mode unrestricted app extension installedNotifications for %@", buf, 0xCu);
    }

    v30 = +[_LSInstallProgressService sharedInstance];
    [v30 detachAndSendNotification:@"com.apple.LaunchServices.pluginsregistered" forApplicationExtensionRecords:v12];
  }

  v31 = [v20 count];
  if (v31)
  {
    v32 = _LSExtensionsLog(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v20;
      _os_log_impl(&dword_18162D000, v32, OS_LOG_TYPE_DEFAULT, "Sending system mode restricted app extension uninstalledNotifications for %@", buf, 0xCu);
    }

    v33 = +[_LSInstallProgressService sharedInstance];
    [v33 detachAndSendNotification:@"com.apple.LaunchServices.pluginsunregistered" forApplicationExtensionRecords:v20];
  }

  v34 = _LSExtensionsLog(v31);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = *(a1 + 48);
    v36 = *(a1 + 32);
    *buf = 138412546;
    v52 = v35;
    v53 = 2112;
    v54 = v36;
    _os_log_impl(&dword_18162D000, v34, OS_LOG_TYPE_INFO, "Done updating extensions for mode change %@ -> %@", buf, 0x16u);
  }
}

- (void)sendExtensionNotificationsForExtensionBundleIdentifier:(id)identifier changingRestrictionStateTo:(BOOL)to
{
  identifierCopy = identifier;
  v6 = _LSServer_DatabaseExecutionContext();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __108__LSApplicationWorkspace_sendExtensionNotificationsForExtensionBundleIdentifier_changingRestrictionStateTo___block_invoke;
  v8[3] = &unk_1E6A19EA8;
  v9 = identifierCopy;
  toCopy = to;
  v7 = identifierCopy;
  [(LSDBExecutionContext *)v6 syncRead:v8];
}

void __108__LSApplicationWorkspace_sendExtensionNotificationsForExtensionBundleIdentifier_changingRestrictionStateTo___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = [LSApplicationExtensionRecord alloc];
  v3 = *(a1 + 32);
  v14 = 0;
  v4 = [(LSApplicationExtensionRecord *)v2 initWithBundleIdentifier:v3 error:&v14];
  v5 = v14;
  v6 = v5;
  if (v4)
  {
    if (*(a1 + 40))
    {
      v7 = @"com.apple.LaunchServices.pluginsunregistered";
    }

    else
    {
      v7 = @"com.apple.LaunchServices.pluginsregistered";
    }

    v8 = v7;
    v9 = _LSInstallLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v8;
      v17 = 2112;
      v18[0] = v4;
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "Sending %@ for %@", buf, 0x16u);
    }

    v10 = +[_LSInstallProgressService sharedInstance];
    v19[0] = v4;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v10 detachAndSendNotification:v8 forApplicationExtensionRecords:v11];
  }

  else
  {
    v8 = _LSInstallLog(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      *buf = 138412802;
      v16 = v12;
      v17 = 1024;
      LODWORD(v18[0]) = v13;
      WORD2(v18[0]) = 2112;
      *(v18 + 6) = v6;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "no record for %@, could not change restriction state to %d: %@", buf, 0x1Cu);
    }
  }
}

- (void)sendApplicationStateChangedNotificationsFor:(id)for stateProvider:(id)provider completion:(id)completion
{
  forCopy = for;
  providerCopy = provider;
  completionCopy = completion;
  v11 = [__LSDefaultsGetSharedInstance(completionCopy v10)];
  if (v11)
  {
    v12 = _LSServer_DatabaseExecutionContext();
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __95__LSApplicationWorkspace_sendApplicationStateChangedNotificationsFor_stateProvider_completion___block_invoke;
    v27[3] = &unk_1E6A19680;
    v13 = forCopy;
    v28 = v13;
    [(LSDBExecutionContext *)v12 syncWrite:v27];

    v14 = _LSServer_DatabaseExecutionContext();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__LSApplicationWorkspace_sendApplicationStateChangedNotificationsFor_stateProvider_completion___block_invoke_2;
    v23[3] = &unk_1E6A19860;
    v24 = v13;
    v25 = providerCopy;
    v26 = completionCopy;
    [(LSDBExecutionContext *)v14 syncRead:v23];
  }

  else
  {
    v15 = _LSDefaultLog(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(LSApplicationWorkspace *)v15 sendApplicationStateChangedNotificationsFor:v16 stateProvider:v17 completion:v18, v19, v20, v21, v22];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __95__LSApplicationWorkspace_sendApplicationStateChangedNotificationsFor_stateProvider_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v6 = v2;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v1);
        }

        _LSServer_UpdateDatabaseWithInfo(*(*(&v9 + 1) + 8 * v8++), 0, 0, 0, 1, v3, v4, v5);
      }

      while (v6 != v8);
      v6 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  _LSArmSaveTimer(1);
}

void __95__LSApplicationWorkspace_sendApplicationStateChangedNotificationsFor_stateProvider_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = 0;
  v13 = 0;
  inited = _LSContextInitReturningError(&v13, &v12);
  v8 = v12;
  v9 = v8;
  if (inited)
  {
    _LSServer_SendStateChangedNotificationsForBundlesWithIdentifiers(&v13, a1[4], a1[5]);
    _LSContextDestroy(&v13);
  }

  else
  {
    v10 = _LSDefaultLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __95__LSApplicationWorkspace_sendApplicationStateChangedNotificationsFor_stateProvider_completion___block_invoke_2_cold_1();
    }
  }

  v11 = a1[6];
  if (v11)
  {
    (*(v11 + 16))();
  }
}

- (id)scanForApplicationStateChangesFromRank:(id)rank toRank:(id)toRank exceptions:(id)exceptions
{
  rankCopy = rank;
  toRankCopy = toRank;
  exceptionsCopy = exceptions;
  v11 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  if ([__LSDefaultsGetSharedInstance(v11 v12)])
  {
    v13 = _LSServer_DatabaseExecutionContext();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __83__LSApplicationWorkspace_scanForApplicationStateChangesFromRank_toRank_exceptions___block_invoke;
    v15[3] = &unk_1E6A19EF8;
    v15[4] = self;
    v16 = exceptionsCopy;
    v17 = rankCopy;
    v18 = toRankCopy;
    v19 = v11;
    [(LSDBExecutionContext *)v13 syncRead:v15];
  }

  return v11;
}

void __83__LSApplicationWorkspace_scanForApplicationStateChangesFromRank_toRank_exceptions___block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__LSApplicationWorkspace_scanForApplicationStateChangesFromRank_toRank_exceptions___block_invoke_2;
  v9[3] = &unk_1E6A19ED0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v2 enumerateApplicationsOfType:0 block:v9];
}

void __83__LSApplicationWorkspace_scanForApplicationStateChangesFromRank_toRank_exceptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v5 = [v3 bundleIdentifier];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = [v10 ratingRank];
    v7 = [v6 intValue];

    LODWORD(v6) = v7 > [*(a1 + 40) intValue];
    if (((v6 ^ (v7 <= [*(a1 + 48) intValue])) & 1) == 0)
    {
      v8 = *(a1 + 56);
      v9 = [v10 bundleIdentifier];
      [v8 addObject:v9];
    }
  }
}

- (id)scanForApplicationStateChangesWithAllowlist:(id)allowlist
{
  allowlistCopy = allowlist;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  if ([__LSDefaultsGetSharedInstance(v5 v6)])
  {
    v7 = _LSServer_DatabaseExecutionContext();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__LSApplicationWorkspace_scanForApplicationStateChangesWithAllowlist___block_invoke;
    v9[3] = &unk_1E6A19F48;
    v9[4] = self;
    v10 = allowlistCopy;
    v11 = v5;
    [(LSDBExecutionContext *)v7 syncRead:v9];
  }

  return v5;
}

void __70__LSApplicationWorkspace_scanForApplicationStateChangesWithAllowlist___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__LSApplicationWorkspace_scanForApplicationStateChangesWithAllowlist___block_invoke_2;
  v3[3] = &unk_1E6A19F20;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateBundlesOfType:0 block:v3];
}

void __70__LSApplicationWorkspace_scanForApplicationStateChangesWithAllowlist___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleIdentifier];
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = [v6 appState];
    v5 = [v4 isAlwaysAvailable];

    if ((v5 & 1) == 0)
    {
      [*(a1 + 40) addObject:v3];
    }
  }
}

- (id)scanForForDeletableSystemApps
{
  v3 = objc_opt_new();
  if ([__LSDefaultsGetSharedInstance(v3 v4)])
  {
    v5 = _LSServer_DatabaseExecutionContext();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__LSApplicationWorkspace_scanForForDeletableSystemApps__block_invoke;
    v7[3] = &unk_1E6A19F98;
    v7[4] = self;
    v8 = v3;
    [(LSDBExecutionContext *)v5 syncRead:v7];
  }

  return v3;
}

void __55__LSApplicationWorkspace_scanForForDeletableSystemApps__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__LSApplicationWorkspace_scanForForDeletableSystemApps__block_invoke_2;
  v2[3] = &unk_1E6A19F70;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateApplicationsOfType:1 block:v2];
}

void __55__LSApplicationWorkspace_scanForForDeletableSystemApps__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isDeletableIgnoringRestrictions])
  {
    v3 = *(a1 + 32);
    v4 = [v5 bundleIdentifier];
    [v3 addObject:v4];
  }
}

- (id)scanForAppsInRatingRankExceptionsList:(id)list
{
  listCopy = list;
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(listCopy, "count")}];
  if ([__LSDefaultsGetSharedInstance(v4 v5)])
  {
    v6 = _LSServer_DatabaseExecutionContext();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__LSApplicationWorkspace_scanForAppsInRatingRankExceptionsList___block_invoke;
    v8[3] = &unk_1E6A19F98;
    v9 = listCopy;
    v10 = v4;
    [(LSDBExecutionContext *)v6 syncRead:v8];
  }

  return v4;
}

void __64__LSApplicationWorkspace_scanForAppsInRatingRankExceptionsList___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v18 = a3;
  v27 = 0;
  v28 = 0;
  LODWORD(a3) = _LSContextInitReturningError(&v28, &v27);
  v4 = v27;
  v19 = v4;
  if (a3)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = *(a1 + 32);
    v5 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = *v24;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [LSApplicationRecord alloc];
        v22 = 0;
        v10 = [(LSApplicationRecord *)v9 _initWithNode:0 bundleIdentifier:v8 placeholderBehavior:1 systemPlaceholder:0 itemID:0 forceInBundleContainer:0 context:&v28 error:&v22];
        v11 = v22;
        v12 = v11;
        if (v10)
        {
          v13 = [v10 bundleIdentifier];

          if (!v13)
          {
            goto LABEL_13;
          }

          v14 = *(a1 + 40);
          v15 = [v10 bundleIdentifier];
          [v14 addObject:v15];
        }

        else
        {
          v15 = _LSDefaultLog(v11);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v30 = v8;
            v31 = 2112;
            v32 = v12;
            _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "App %@ on rating rank exceptions list does not appear to be installed (this may be expected): %@", buf, 0x16u);
          }
        }

LABEL_13:
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (!v5)
      {
LABEL_15:

        _LSContextDestroy(&v28);
        goto LABEL_19;
      }
    }
  }

  v16 = _LSDefaultLog(v4);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __64__LSApplicationWorkspace_scanForAppsInRatingRankExceptionsList___block_invoke_cold_1();
  }

LABEL_19:
}

- (BOOL)forceDatabaseSaveForTestingWithError:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__LSApplicationWorkspace_forceDatabaseSaveForTestingWithError___block_invoke;
  v10[3] = &unk_1E6A198D0;
  v10[4] = &v11;
  v4 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__LSApplicationWorkspace_forceDatabaseSaveForTestingWithError___block_invoke_2;
  v9[3] = &unk_1E6A19C50;
  v9[4] = &v11;
  v9[5] = &v17;
  v5 = [v4 forceSaveForTestingWithCompletion:v9];
  _LSContextInvalidate(v5, v6);
  v7 = *(v18 + 24);
  if (error && (v18[3] & 1) == 0)
  {
    *error = v12[5];
    v7 = *(v18 + 24);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v7 & 1;
}

void __63__LSApplicationWorkspace_forceDatabaseSaveForTestingWithError___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = v4 == 0;
}

- (void)ls_testWithCleanDatabaseWithError:(id *)error
{
  if (![__LSDefaultsGetSharedInstance(self a2)])
  {
    v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -5500, 0, "[LSApplicationWorkspace ls_testWithCleanDatabaseWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4468);
    v6 = 0;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v9 = 0;
  v4 = _LSDatabaseCreateCleanForTesting(&v9);
  v5 = v9;
  if (v4)
  {
    _LSSetLocalDatabase(v4);
    v6 = CFAutorelease(v4);
  }

  else
  {
    v6 = 0;
  }

  if (error)
  {
LABEL_8:
    if (!v6)
    {
      v7 = v5;
      *error = v5;
    }
  }

LABEL_10:

  return v6;
}

- (BOOL)ls_injectUTTypeWithDeclaration:(id)declaration inDatabase:(id)database error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  declarationCopy = declaration;
  databaseCopy = database;
  if (![__LSDefaultsGetSharedInstance(databaseCopy v9)])
  {
    v14 = 0;
    v15 = 0;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (declarationCopy && databaseCopy)
  {
    v10 = [declarationCopy objectForKeyedSubscript:@"UTTypeDescription"];
    v11 = v10;
    if (v10)
    {
      v23 = v10;
      v24 = v10;
      v22 = @"LSDefaultLocalizedValue";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v25[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    }

    else
    {
      v13 = 0;
    }

    v17 = _UTTypeAddWithDeclarationDictionary(databaseCopy);
    v15 = v17 == 0;
    if (v17)
    {
      v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v17, 0, "[LSApplicationWorkspace ls_injectUTTypeWithDeclaration:inDatabase:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4496);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v16 = *MEMORY[0x1E696A768];
    v20 = *MEMORY[0x1E696A278];
    v21 = @"invalid input parameters";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v14 = _LSMakeNSErrorImpl(v16, -50, v13, "[LSApplicationWorkspace ls_injectUTTypeWithDeclaration:inDatabase:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4500);
    v15 = 0;
  }

  if (error)
  {
LABEL_15:
    if (!v15)
    {
      v18 = v14;
      *error = v14;
    }
  }

LABEL_17:

  return v15;
}

- (void)ls_resetTestingDatabase
{
  if ([__LSDefaultsGetSharedInstance(self a2)])
  {
    v2 = 0;
    if (!_LSContextInit(&v2))
    {
      _LSContextUpdate(&v2, 1, 0);
      _LSContextDestroy(&v2);
    }
  }
}

- (id)pluginsWithIdentifiers:(id)identifiers protocols:(id)protocols version:(id)version withFilter:(id)filter
{
  filterCopy = filter;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101__LSApplicationWorkspace_DeprecatedEnumeration__pluginsWithIdentifiers_protocols_version_withFilter___block_invoke;
  v14[3] = &unk_1E6A19FC0;
  v15 = filterCopy;
  v11 = filterCopy;
  v12 = [(LSApplicationWorkspace *)self pluginsWithIdentifiers:identifiers protocols:protocols version:version applyFilter:v14];

  return v12;
}

- (void)enumerateBundlesOfType:(unint64_t)type usingBlock:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__LSApplicationWorkspace_DeprecatedEnumeration__enumerateBundlesOfType_usingBlock___block_invoke;
    v8[3] = &unk_1E6A1A008;
    v9 = blockCopy;
    [(LSApplicationWorkspace *)self enumerateBundlesOfType:type legacySPI:1 block:v8];
  }
}

- (id)applicationsOfType:(unint64_t)type
{
  array = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__LSApplicationWorkspace_DeprecatedEnumeration__applicationsOfType___block_invoke;
  v8[3] = &unk_1E6A19F70;
  v6 = array;
  v9 = v6;
  [(LSApplicationWorkspace *)self enumerateApplicationsOfType:type legacySPI:1 block:v8];

  return v6;
}

- (id)legacyApplicationProxiesListWithType:(unint64_t)type
{
  array = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__LSApplicationWorkspace_DeprecatedEnumeration__legacyApplicationProxiesListWithType___block_invoke;
  v8[3] = &unk_1E6A19F70;
  v6 = array;
  v9 = v6;
  [(LSApplicationWorkspace *)self enumerateBundlesOfType:type legacySPI:1 block:v8];

  return v6;
}

+ (id)_defaultAppQueue
{
  if (_defaultAppQueue_once != -1)
  {
    +[LSApplicationWorkspace(DefaultApps) _defaultAppQueue];
  }

  v3 = _defaultAppQueue_result;

  return v3;
}

void __55__LSApplicationWorkspace_DefaultApps___defaultAppQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LS default app setter queue", v2);
  v1 = _defaultAppQueue_result;
  _defaultAppQueue_result = v0;
}

- (void)setDefaultURLHandlerForScheme:(id)scheme to:(id)to completion:(id)completion
{
  schemeCopy = scheme;
  toCopy = to;
  completionCopy = completion;
  _defaultAppQueue = [objc_opt_class() _defaultAppQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__LSApplicationWorkspace_DefaultApps__setDefaultURLHandlerForScheme_to_completion___block_invoke;
  v15[3] = &unk_1E6A1A058;
  v16 = toCopy;
  v17 = schemeCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = schemeCopy;
  v14 = toCopy;
  dispatch_async(_defaultAppQueue, v15);
}

void __83__LSApplicationWorkspace_DefaultApps__setDefaultURLHandlerForScheme_to_completion___block_invoke(id *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [a1[4] claimRecords];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v19 + 1) + 8 * v6) URLSchemes];
        v8 = [a1[5] lowercaseString];
        v9 = [v7 containsObject:v8];

        if (v9)
        {

          v14 = [objc_opt_class() _defaultAppQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __83__LSApplicationWorkspace_DefaultApps__setDefaultURLHandlerForScheme_to_completion___block_invoke_2;
          block[3] = &unk_1E6A1A030;
          v16 = a1[5];
          v17 = a1[4];
          v18 = a1[7];
          dispatch_async(v14, block);

          v12 = v16;
          goto LABEL_12;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = a1[7];
  if (v10)
  {
    v11 = *MEMORY[0x1E696A768];
    v23 = *MEMORY[0x1E696A278];
    v24 = @"scheme";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v13 = _LSMakeNSErrorImpl(v11, -50, v12, "[LSApplicationWorkspace(DefaultApps) setDefaultURLHandlerForScheme:to:completion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4661);
    v10[2](v10, 0, v13);

LABEL_12:
  }
}

void __83__LSApplicationWorkspace_DefaultApps__setDefaultURLHandlerForScheme_to_completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleIdentifier];
  v4 = *(a1 + 40);
  if (v4)
  {
    objc_msgSend__bundleVersion(v4);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v5 = _LSSetSchemeHandler(v2, v3, v10);
  v9 = 0;
  v6 = _LSGetNSErrorFromOSStatusImpl(v5, &v9, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultURLHandlerForScheme:to:completion:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4655);
  v7 = v9;

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
  }
}

- (void)setDefaultWebBrowserToApplicationRecord:(id)record completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  recordCopy = record;
  handlerCopy = handler;
  if (!_os_feature_enabled_impl())
  {
    if (recordCopy)
    {
      if (([recordCopy isWebBrowser] & 1) == 0)
      {
        if (!handlerCopy)
        {
          goto LABEL_11;
        }

        v13 = *MEMORY[0x1E696A768];
        v20 = *MEMORY[0x1E696A278];
        v21[0] = @"input application record was not a web browser";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
        v14 = _LSMakeNSErrorImpl(v13, -50, v12, "[LSApplicationWorkspace(DefaultApps) setDefaultWebBrowserToApplicationRecord:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4679);
        handlerCopy[2](handlerCopy, 0, v14);

LABEL_10:
        goto LABEL_11;
      }

      bundleIdentifier = [recordCopy bundleIdentifier];
      objc_msgSend__bundleVersion(recordCopy);
      v9 = _LSVersionNumberGetStringRepresentation(&v19);
    }

    else
    {
      bundleIdentifier = 0;
      v9 = 0;
    }

    _defaultAppQueue = [objc_opt_class() _defaultAppQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __97__LSApplicationWorkspace_DefaultApps__setDefaultWebBrowserToApplicationRecord_completionHandler___block_invoke;
    v15[3] = &unk_1E6A1A030;
    v16 = bundleIdentifier;
    v17 = v9;
    v18 = handlerCopy;
    v11 = v9;
    v12 = bundleIdentifier;
    dispatch_async(_defaultAppQueue, v15);

    goto LABEL_10;
  }

  [(LSApplicationWorkspace *)self setDefaultApplicationForCategory:1 toApplicationRecord:recordCopy completionHandler:handlerCopy];
LABEL_11:
}

void __97__LSApplicationWorkspace_DefaultApps__setDefaultWebBrowserToApplicationRecord_completionHandler___block_invoke(void *a1)
{
  v2 = _LSSetDefaultWebBrowserWithBundleIdentifierAndVersion(a1[4], a1[5]);
  v6 = 0;
  v3 = _LSGetNSErrorFromOSStatusImpl(v2, &v6, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultWebBrowserToApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4691);
  v4 = v6;
  v5 = a1[6];
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

- (void)setDefaultMailClientToApplicationRecord:(id)record completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  recordCopy = record;
  handlerCopy = handler;
  if (!_os_feature_enabled_impl())
  {
    if (recordCopy)
    {
      if (([recordCopy isMailClient] & 1) == 0)
      {
        if (!handlerCopy)
        {
          goto LABEL_11;
        }

        v11 = *MEMORY[0x1E696A768];
        v20 = *MEMORY[0x1E696A278];
        v21[0] = @"input application record was not a mail client";
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
        v12 = _LSMakeNSErrorImpl(v11, -50, v10, "[LSApplicationWorkspace(DefaultApps) setDefaultMailClientToApplicationRecord:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4713);
        handlerCopy[2](handlerCopy, 0, v12);

LABEL_10:
        goto LABEL_11;
      }

      bundleIdentifier = [recordCopy bundleIdentifier];
      v18 = 0u;
      v19 = 0u;
      objc_msgSend__bundleVersion(recordCopy);
    }

    else
    {
      bundleIdentifier = 0;
      v18 = kLSVersionNumberNull;
      v19 = unk_1817E90C0;
    }

    _defaultAppQueue = [objc_opt_class() _defaultAppQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __97__LSApplicationWorkspace_DefaultApps__setDefaultMailClientToApplicationRecord_completionHandler___block_invoke;
    v13[3] = &unk_1E6A1A080;
    v14 = bundleIdentifier;
    v16 = v18;
    v17 = v19;
    v15 = handlerCopy;
    v10 = bundleIdentifier;
    dispatch_async(_defaultAppQueue, v13);

    goto LABEL_10;
  }

  [(LSApplicationWorkspace *)self setDefaultApplicationForCategory:2 toApplicationRecord:recordCopy completionHandler:handlerCopy];
LABEL_11:
}

void __97__LSApplicationWorkspace_DefaultApps__setDefaultMailClientToApplicationRecord_completionHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v9[0] = *(a1 + 48);
  v9[1] = v3;
  v4 = _LSSetSchemeHandler(@"mailto", v2, v9);
  v8 = 0;
  v5 = _LSGetNSErrorFromOSStatusImpl(v4, &v8, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultMailClientToApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4720);
  v6 = v8;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

- (void)relaxApplicationTypeRequirements:(BOOL)requirements forApplicationRecord:(id)record completionHandler:(id)handler
{
  requirementsCopy = requirements;
  recordCopy = record;
  handlerCopy = handler;
  if (!recordCopy)
  {
    [LSApplicationWorkspace(DefaultApps) relaxApplicationTypeRequirements:forApplicationRecord:completionHandler:];
  }

  bundleIdentifier = [recordCopy bundleIdentifier];
  v10 = &__block_literal_global_676;
  if (handlerCopy)
  {
    v10 = handlerCopy;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __111__LSApplicationWorkspace_DefaultApps__relaxApplicationTypeRequirements_forApplicationRecord_completionHandler___block_invoke_2;
  v13[3] = &unk_1E6A19A70;
  v14 = v10;
  v11 = v10;
  v12 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:v13];
  [v12 relaxApplicationTypeRequirements:requirementsCopy forBundleIdentifier:bundleIdentifier completionHandler:v11];
}

- (void)removeAllDefaultApplicationPreferencesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    handlerCopy = &__block_literal_global_678;
  }

  v5 = handlerCopy;
  v4 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:?];
  [v4 removeAllHandlersWithCompletionHandler:v5];
}

- (void)setDefaultApplicationForCategory:(unint64_t)category toApplicationRecord:(id)record completionHandler:(id)handler
{
  recordCopy = record;
  handlerCopy = handler;
  _defaultAppQueue = [objc_opt_class() _defaultAppQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__LSApplicationWorkspace_DefaultApps__setDefaultApplicationForCategory_toApplicationRecord_completionHandler___block_invoke;
  block[3] = &unk_1E6A1A0A8;
  v14 = handlerCopy;
  categoryCopy = category;
  v13 = recordCopy;
  v10 = handlerCopy;
  v11 = recordCopy;
  dispatch_async(_defaultAppQueue, block);
}

void __110__LSApplicationWorkspace_DefaultApps__setDefaultApplicationForCategory_toApplicationRecord_completionHandler___block_invoke(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(LSGetDefaultAppCategoryInfoForCategory(a1[6]) + 1);
  v3 = _os_feature_enabled_impl();
  if (!v3)
  {
    v7 = (a1 + 4);
    if (a1[4])
    {
      v15 = -4;
      goto LABEL_17;
    }

LABEL_13:
    v13 = _LSRemoveDefaultRoleHandlerForContentType(v2, 0xFFFFFFFFLL);
    if (v13)
    {
      v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v13, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultApplicationForCategory:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4836);
      v9 = v13;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_29;
  }

  v5 = _LSGetAuditTokenForSelf(v3, v4);
  v6 = _LSCheckEntitlementForChangingDefaultHandler(v5, 0, v2);
  v7 = (a1 + 4);
  if (!a1[4])
  {
    goto LABEL_13;
  }

  if (!v6)
  {
    v15 = -54;
LABEL_17:
    v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v15, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultApplicationForCategory:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4804);
    v9 = v13;
    if (v13)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  *&v22 = 0;
  v20 = 0;
  inited = _LSContextInitReturningError(&v22, &v20);
  v9 = v20;
  if (inited)
  {
    v10 = _LSCanBundleHandleNodeOrSchemeOrUTI(&v22, [*v7 unitID], 0, 0, v2, 14);
    if (!v10)
    {
      v11 = _LSDefaultLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __110__LSApplicationWorkspace_DefaultApps__setDefaultApplicationForCategory_toApplicationRecord_completionHandler___block_invoke_cold_1([*v7 unitID], v2, v24, v11);
      }

      v12 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", -105, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultApplicationForCategory:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4799);

      v9 = v12;
    }
  }

  if (!v9)
  {
LABEL_18:
    if (!*v7 || ([*v7 bundleIdentifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, !v17) || (_LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 118, 0, "-[LSApplicationWorkspace(DefaultApps) setDefaultApplicationForCategory:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4811), v13 = objc_claimAutoreleasedReturnValue(), (v9 = v13) == 0))
    {
      v18 = [*v7 bundleIdentifier];
      v22 = 0u;
      v23 = 0u;
      if (*v7)
      {
        objc_msgSend__bundleVersion(*v7);
      }

      if (*v7)
      {
        v21[0] = v22;
        v21[1] = v23;
        v19 = _LSSetContentTypeHandler(v2, 0xFFFFFFFFLL, v18, v21);
      }

      else
      {
        v19 = _LSRemoveDefaultRoleHandlerForContentType(v2, 0xFFFFFFFFLL);
      }

      if (v19)
      {
        v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v19, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultApplicationForCategory:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4829);
      }

      else
      {
        v9 = 0;
      }
    }
  }

LABEL_29:
  _LSContextInvalidate(v13, v14);
  (*(a1[5] + 16))(a1[5], v9 == 0, v9);
}

- (id)defaultApplicationForCategory:(unint64_t)category error:(id *)error
{
  if (_os_feature_enabled_impl())
  {
    v6 = LSGetDefaultAppCategoryInfoForCategory(category);
    v7 = [LSClaimBindingConfiguration alloc];
    v8 = [LSClaimBindingBindable bindableWithTypeIdentifier:*(v6 + 1)];
    v9 = [(LSClaimBindingConfiguration *)v7 initWithBindable:v8];

    [(LSClaimBindingConfiguration *)v9 setHonorPreferenceForNoHandler:1];
    v10 = [[LSClaimBinding alloc] initWithConfiguration:v9 error:error];
    v11 = v10;
    if (v10)
    {
      bundleRecord = [(LSClaimBinding *)v10 bundleRecord];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        bundleRecord2 = [(LSClaimBinding *)v11 bundleRecord];
LABEL_15:

        goto LABEL_23;
      }

      if (error)
      {
        _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10811, 0, "[LSApplicationWorkspace(DefaultApps) defaultApplicationForCategory:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4874);
        *error = bundleRecord2 = 0;
        goto LABEL_15;
      }
    }

    bundleRecord2 = 0;
    goto LABEL_15;
  }

  if (category > 2)
  {
    if (category == 3)
    {
      v16 = [LSApplicationRecord alloc];
      v17 = @"com.apple.MobileSMS";
    }

    else
    {
      if (category != 4)
      {
        goto LABEL_16;
      }

      v16 = [LSApplicationRecord alloc];
      v17 = @"com.apple.mobilephone";
    }

    v18 = [(LSApplicationRecord *)v16 initWithBundleIdentifier:v17 allowPlaceholder:0 error:error];
    goto LABEL_22;
  }

  if (category == 1)
  {
    v15 = @"https";
    goto LABEL_19;
  }

  if (category == 2)
  {
    v15 = @"mailto";
LABEL_19:
    v18 = bestRecordForScheme(v15, error);
LABEL_22:
    bundleRecord2 = v18;
    goto LABEL_23;
  }

LABEL_16:
  if (error)
  {
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace(DefaultApps) defaultApplicationForCategory:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4899);
    *error = bundleRecord2 = 0;
  }

  else
  {
    bundleRecord2 = 0;
  }

LABEL_23:

  return bundleRecord2;
}

- (BOOL)getDefaultApplicationCategories:(unint64_t *)categories withCurrentDefaultApplication:(id)application error:(id *)error
{
  applicationCopy = application;
  supportedDefaultAppCategories = [applicationCopy supportedDefaultAppCategories];
  if (supportedDefaultAppCategories)
  {
    v8 = supportedDefaultAppCategories;
    v9 = 0;
    v10 = *MEMORY[0x1E696A768];
    while (1)
    {
      v11 = LSDefaultAppCategoryForMask(v8);
      v21 = 0;
      v12 = [(LSApplicationWorkspace *)self defaultApplicationForCategory:v11 error:&v21];
      v13 = v21;
      if ([v12 isEqual:applicationCopy])
      {
        v9 |= LSDefaultAppCategoryMaskForCategory(v11);
      }

      domain = [v13 domain];
      if ([domain isEqual:v10])
      {
        code = [v13 code];

        if (code != -10814)
        {
          goto LABEL_9;
        }

        domain = v13;
        v13 = 0;
      }

LABEL_9:
      v8 &= ~LSDefaultAppCategoryMaskForCategory(v11);

      v16 = v13 == 0;
      if (!v8 || v13)
      {
        goto LABEL_13;
      }
    }
  }

  v9 = 0;
  v13 = 0;
  v16 = 1;
LABEL_13:
  if (categories && v16)
  {
    *categories = v9;
  }

  if (error)
  {
    v17 = v13;
    *error = v13;
  }

  return v16;
}

- (void)setDefaultHandlerForTypeRecord:(id)record toApplicationRecord:(id)applicationRecord completionHandler:(id)handler
{
  recordCopy = record;
  applicationRecordCopy = applicationRecord;
  handlerCopy = handler;
  if (!recordCopy)
  {
    [LSApplicationWorkspace(DefaultApps) setDefaultHandlerForTypeRecord:toApplicationRecord:completionHandler:];
  }

  _defaultAppQueue = [objc_opt_class() _defaultAppQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__LSApplicationWorkspace_DefaultApps__setDefaultHandlerForTypeRecord_toApplicationRecord_completionHandler___block_invoke;
  block[3] = &unk_1E6A1A030;
  v15 = applicationRecordCopy;
  v16 = recordCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = recordCopy;
  v13 = applicationRecordCopy;
  dispatch_async(_defaultAppQueue, block);
}

void __108__LSApplicationWorkspace_DefaultApps__setDefaultHandlerForTypeRecord_toApplicationRecord_completionHandler___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v9 = _LSRemoveDefaultRoleHandlerForContentType([*(a1 + 40) identifier], 0xFFFFFFFFLL);
    if (v9)
    {
      v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v9, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultHandlerForTypeRecord:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 5027);
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_29;
  }

  v19 = 0;
  v20.db = 0;
  inited = _LSContextInitReturningError(&v20.db, &v19);
  v3 = v19;
  v4 = v3;
  if (!inited)
  {
    v8 = v3;
    goto LABEL_18;
  }

  v26 = 0;
  v27 = 0;
  v5 = [*(a1 + 40) identifier];
  v6 = _LSGetBindingForNodeOrSchemeOrUTI(&v20, 0, 0, v5, [*(a1 + 32) unitID], 14, 0, 12320, &v24);

  if (!v6)
  {
    if (*(&v25 + 1))
    {
      if (_LSClaimFlagsAreWildcard(*(*(&v25 + 1) + 8)))
      {
        v11 = 4986;
        v12 = 120;
LABEL_12:
        v8 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", v12, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultHandlerForTypeRecord:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", v11);
        goto LABEL_13;
      }

      if (*(&v25 + 1) && !*(*(&v25 + 1) + 12))
      {
        v11 = 4990;
        v12 = 121;
        goto LABEL_12;
      }
    }

    v8 = v4;
    goto LABEL_17;
  }

  v22 = *MEMORY[0x1E696A278];
  v23 = @"_LSGetBindingForNodeOrSchemeOrUTI failed";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v6, v7, "[LSApplicationWorkspace(DefaultApps) setDefaultHandlerForTypeRecord:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4994);

  v4 = v7;
LABEL_13:

LABEL_17:
  _LSContextDestroy(&v20.db);

LABEL_18:
  if (!v8)
  {
    v13 = [*(a1 + 32) bundleIdentifier];
    v14 = v13 == 0;

    if (!v14 || (_LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 118, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultHandlerForTypeRecord:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 5005), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v15 = [*(a1 + 32) bundleIdentifier];
      v24 = 0u;
      v25 = 0u;
      v16 = *(a1 + 32);
      if (v16)
      {
        objc_msgSend__bundleVersion(v16);
      }

      v17 = [*(a1 + 40) identifier];
      v21[0] = v24;
      v21[1] = v25;
      v18 = _LSSetContentTypeHandler(v17, 0xFFFFFFFFLL, v15, v21);
      if (v18)
      {
        v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v18, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultHandlerForTypeRecord:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 5020);
      }

      else
      {
        v8 = 0;
      }
    }
  }

LABEL_29:
  _LSContextInvalidate(v9, v10);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v8 == 0, v8);
}

- (void)setPreferenceForNoHandlerForCategory:(unint64_t)category completionHandler:(id)handler
{
  handlerCopy = handler;
  _defaultAppQueue = [objc_opt_class() _defaultAppQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__LSApplicationWorkspace_DefaultApps__setPreferenceForNoHandlerForCategory_completionHandler___block_invoke;
  v8[3] = &unk_1E6A1A0D0;
  v9 = handlerCopy;
  categoryCopy = category;
  v7 = handlerCopy;
  dispatch_async(_defaultAppQueue, v8);
}

void __94__LSApplicationWorkspace_DefaultApps__setPreferenceForNoHandlerForCategory_completionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(LSGetDefaultAppCategoryInfoForCategory(*(a1 + 40)) + 1);
  memset(v6, 0, sizeof(v6));
  v3 = _LSSetContentTypeHandler(v2, 0xFFFFFFFFLL, @"com.apple.coreservices.nohandler$BF6A2FC2-EAE7-4116-BEF3-495EAA007C85", v6);
  if (v3)
  {
    v3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v3, 0, "[LSApplicationWorkspace(DefaultApps) setPreferenceForNoHandlerForCategory:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 5056);
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  _LSContextInvalidate(v3, v4);
  (*(*(a1 + 32) + 16))(*(a1 + 32), v5 == 0, v5);
}

- (BOOL)setPreferredAppMarketplaces:(id)marketplaces error:(id *)error
{
  marketplacesCopy = marketplaces;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__LSApplicationWorkspace_Marketplaces__setPreferredAppMarketplaces_error___block_invoke;
  v11[3] = &unk_1E6A198D0;
  v11[4] = &v12;
  v6 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__LSApplicationWorkspace_Marketplaces__setPreferredAppMarketplaces_error___block_invoke_2;
  v10[3] = &unk_1E6A198D0;
  v10[4] = &v12;
  [v6 setPreferredAppMarketplaces:marketplacesCopy completion:v10];

  v7 = v13[5];
  if (error && v7)
  {
    *error = v7;
    v7 = v13[5];
  }

  v8 = v7 == 0;
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (id)getPreferredAppMarketplacesWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__LSApplicationWorkspace_Marketplaces__getPreferredAppMarketplacesWithError___block_invoke;
  v9[3] = &unk_1E6A198D0;
  v9[4] = &v10;
  v4 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__LSApplicationWorkspace_Marketplaces__getPreferredAppMarketplacesWithError___block_invoke_2;
  v8[3] = &unk_1E6A1A0F8;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getPreferredAppMarketplacesWithCompletion:v8];

  v5 = v17[5];
  if (error && !v5)
  {
    *error = v11[5];
    v5 = v17[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __77__LSApplicationWorkspace_Marketplaces__getPreferredAppMarketplacesWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)applicationsAvailableForOpeningURL:(id)l legacySPI:(BOOL)i
{
  iCopy = i;
  v37 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = objc_autoreleasePoolPush();
  if (lCopy && ([lCopy isFileURL] & 1) == 0)
  {
    v8 = [_LSCanOpenURLManager queryForApplicationsAvailableForOpeningURL:lCopy];
    v9 = v8;
    if (v8)
    {
      v27 = v6;
      [v8 setLegacy:iCopy];
      v10 = +[_LSQueryContext defaultContext];
      v26 = v9;
      v11 = [MEMORY[0x1E695DFD8] setWithObject:v9];
      v12 = [v10 resolveQueries:v11 error:0];
      allValues = [v12 allValues];
      firstObject = [allValues firstObject];

      if (firstObject)
      {
        v15 = firstObject;
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v7 = firstObject;
      v16 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v29;
        do
        {
          v19 = 0;
          do
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v7);
            }

            v20 = *(*(&v28 + 1) + 8 * v19);
            v21 = _LSDefaultLog(v16);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              bundleIdentifier = [v20 bundleIdentifier];
              [lCopy scheme];
              v24 = v23 = lCopy;
              *buf = 138478083;
              v33 = bundleIdentifier;
              v34 = 2113;
              v35 = v24;
              _os_log_impl(&dword_18162D000, v21, OS_LOG_TYPE_DEFAULT, "Found application: %{private}@ to handle url scheme: %{private}@", buf, 0x16u);

              lCopy = v23;
            }

            ++v19;
          }

          while (v17 != v19);
          v16 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
          v17 = v16;
        }

        while (v16);
      }

      v9 = v26;
      v6 = v27;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v6);

  return v7;
}

- (BOOL)isApplicationAvailableToOpenURLCommon:(id)common includePrivateURLSchemes:(BOOL)schemes error:(id *)error
{
  schemesCopy = schemes;
  v32[1] = *MEMORY[0x1E69E9840];
  commonCopy = common;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  scheme = [commonCopy scheme];
  v10 = scheme;
  if (scheme)
  {
    if ([__LSDefaultsGetSharedInstance(scheme v9)])
    {
      v11 = +[_LSCanOpenURLManager sharedManager];
      v12 = (v22 + 5);
      obj = v22[5];
      v13 = [v11 canOpenURL:commonCopy publicSchemes:1 privateSchemes:schemesCopy XPCConnection:0 error:&obj];
      objc_storeStrong(v12, obj);
      *(v28 + 24) = v13;
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __107__LSApplicationWorkspace_URLQueries__isApplicationAvailableToOpenURLCommon_includePrivateURLSchemes_error___block_invoke;
      v19[3] = &unk_1E6A198D0;
      v19[4] = &v21;
      v11 = [(_LSDService *)_LSDOpenService synchronousXPCProxyWithErrorHandler:v19];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __107__LSApplicationWorkspace_URLQueries__isApplicationAvailableToOpenURLCommon_includePrivateURLSchemes_error___block_invoke_2;
      v18[3] = &unk_1E6A19A28;
      v18[4] = &v27;
      v18[5] = &v21;
      [v11 canOpenURL:commonCopy publicSchemes:1 privateSchemes:schemesCopy completionHandler:v18];
    }
  }

  else
  {
    v31 = *MEMORY[0x1E696A578];
    v32[0] = @"Invalid input URL";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v14 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", -105, v11, "[LSApplicationWorkspace(URLQueries) isApplicationAvailableToOpenURLCommon:includePrivateURLSchemes:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 5220);
    v15 = v22[5];
    v22[5] = v14;
  }

  v16 = *(v28 + 24);
  if (error && (v28[3] & 1) == 0)
  {
    *error = v22[5];
    v16 = *(v28 + 24);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v16 & 1;
}

- (id)applicationForOpeningResource:(id)resource
{
  v3 = [(LSApplicationWorkspace *)self applicationsAvailableForOpeningURL:resource legacySPI:1];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)applicationsAvailableForHandlingURLScheme:(id)scheme
{
  if (scheme)
  {
    v4 = MEMORY[0x1E695DFF8];
    schemeCopy = scheme;
    v6 = [v4 alloc];
    schemeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://", schemeCopy];

    v8 = [v6 initWithString:schemeCopy];
    if ([v8 isFileURL])
    {
      v9 = 0;
    }

    else
    {
      v9 = [(LSApplicationWorkspace *)self applicationsAvailableForOpeningURL:v8 legacySPI:1];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)publicURLSchemes
{
  v2 = _LSDefaultLog(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [LSApplicationWorkspace(DeprecatedURLQueries) publicURLSchemes];
  }

  return MEMORY[0x1E695E0F0];
}

- (id)privateURLSchemes
{
  v2 = _LSDefaultLog(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [LSApplicationWorkspace(DeprecatedURLQueries) publicURLSchemes];
  }

  return MEMORY[0x1E695E0F0];
}

- (BOOL)isApplicationEligibleForReadOnlyDocumentOpenBehavior:(id)behavior
{
  v15 = *MEMORY[0x1E69E9840];
  behaviorCopy = behavior;
  v4 = &ReadOnlyDocumentOpenCheckList;
  v5 = 48;
  while (1)
  {
    bundleIdentifier = [behaviorCopy bundleIdentifier];
    v7 = bundleIdentifier;
    v8 = strcmp([bundleIdentifier UTF8String], *v4) == 0;

    if (v8 && [behaviorCopy platform] == *(v4 + 2))
    {
      if (behaviorCopy)
      {
        objc_msgSend_execSDKVersion(behaviorCopy);
      }

      else
      {
        v11 = 0u;
        v12 = 0u;
      }

      _LSVersionNumberMakeWithDYLDVersion(*(v4 + 3), v10);
      v14[0] = v11;
      v14[1] = v12;
      v13[0] = v10[0];
      v13[1] = v10[1];
      if (_LSVersionNumberCompare(v14, v13) == -1)
      {
        break;
      }
    }

    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      v4 = off_1E6A1C9F8;
      break;
    }
  }

  return v4 == off_1E6A1C9F8;
}

- (BOOL)isCurrentProcessEligibleForReadOnlyDocumentOpenBehavior
{
  v3 = +[LSBundleRecord bundleRecordForCurrentProcess];
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [(LSApplicationWorkspace *)self isApplicationEligibleForReadOnlyDocumentOpenBehavior:v3];

  return v4;
}

- (BOOL)isBundleEligibleForOpenDocumentViaOpenURL:(id)l
{
  v13 = *MEMORY[0x1E69E9840];
  lCopy = l;
  bundleIdentifier = [lCopy bundleIdentifier];
  v5 = strcmp([bundleIdentifier UTF8String], "org.reactjs.native.Popspedia");

  if (v5 || [lCopy platform] != 2)
  {
    goto LABEL_7;
  }

  if (lCopy)
  {
    objc_msgSend_execSDKVersion(lCopy);
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  _LSVersionNumberMakeWithDYLDVersion(1703936, v8);
  v12[0] = v9;
  v12[1] = v10;
  v11[0] = v8[0];
  v11[1] = v8[1];
  if (_LSVersionNumberCompare(v12, v11) == -1)
  {
    v6 = 0;
  }

  else
  {
LABEL_7:
    v6 = 1;
  }

  return v6;
}

- (BOOL)isCurrentProcessEligibleForOpenDocumentViaOpenURL
{
  v3 = +[LSBundleRecord bundleRecordForCurrentProcess];
  if (v3)
  {
    v4 = [(LSApplicationWorkspace *)self isBundleEligibleForOpenDocumentViaOpenURL:v3];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)URLOverrideForURL:(id)l
{
  v3 = LaunchServices::URLOverrides::getURLOverrideCommon(l, a2);

  return v3;
}

- (BOOL)registerApplicationDictionary:(id)dictionary withObserverNotification:(int)notification
{
  v4 = *&notification;
  v20[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"IsPlaceholder"];
  bOOLValue = [v7 BOOLValue];

  v9 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
  if (!v9)
  {
    v10 = 0;
LABEL_11:
    v14 = 0;
    goto LABEL_9;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"Path"];
  if (!v10 || registerApplicationWithDictionary(dictionaryCopy, 1u))
  {
    goto LABEL_11;
  }

  v11 = [LSApplicationProxy applicationProxyForIdentifier:v9 placeholder:bOOLValue];
  if (v11)
  {
    observerProxy = [(LSApplicationWorkspace *)self observerProxy];
    v20[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [observerProxy sendNotification:v4 forApplications:v13 withPlugins:0];
  }

  else
  {
    observerProxy = _LSProgressLog(0);
    if (os_log_type_enabled(observerProxy, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412546;
      v17 = v9;
      v18 = 1024;
      v19 = 0;
      _os_log_error_impl(&dword_18162D000, observerProxy, OS_LOG_TYPE_ERROR, "Failed to create application proxy for %@, regustration result was %d", &v16, 0x12u);
    }
  }

  v14 = 1;
LABEL_9:

  return v14;
}

- (BOOL)registerApplication:(id)application
{
  v3 = LSRegisterURL(application, 0);
  v4 = v3;
  if (!v3)
  {
    v5 = _LSInstallLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "Not sending applicationsDidInstall notification, please file a bug with Purple LaunchServices if you need this", v7, 2u);
    }
  }

  return v4 == 0;
}

- (BOOL)registerPlugin:(id)plugin
{
  if (!plugin)
  {
    return 0;
  }

  pluginCopy = plugin;
  _LSUnregisterPluginsAtURL(pluginCopy, 0);
  v4 = _LSRegisterPluginWithInfo(pluginCopy, 0);

  return v4 == 0;
}

- (void)systemMode
{
  OUTLINED_FUNCTION_17(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)openUserActivity:usingApplicationRecord:configuration:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"userActivity != nil" object:? file:? lineNumber:? description:?];
}

- (void)openUserActivityWithUUID:activityType:usingApplicationRecord:configuration:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"uuid != nil" object:? file:? lineNumber:? description:?];
}

- (void)openUserActivityWithUUID:activityType:usingApplicationRecord:configuration:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"activityType != nil" object:? file:? lineNumber:? description:?];
}

- (void)openUserActivityWithUUID:activityType:usingApplicationRecord:configuration:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"appRecord != nil" object:? file:? lineNumber:? description:?];
}

- (void)commonClientOpenURL:options:configuration:synchronous:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"url != nil" object:? file:? lineNumber:? description:?];
}

- (void)commonClientOpenURL:options:configuration:synchronous:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_319_cold_1()
{
  OUTLINED_FUNCTION_12_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_320_cold_1()
{
  OUTLINED_FUNCTION_12_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)installApplication:(uint64_t)a3 withOptions:(uint64_t)a4 error:(uint64_t)a5 usingBlock:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[LSApplicationWorkspace installApplication:withOptions:error:usingBlock:]";
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "this process is using %{public}s to install applications, which is not supported. Use InstallCoordination to install and uninstall applications on this platform.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)installContainerizedApplicationArtifactAtURL:(uint64_t)a3 withOptions:(uint64_t)a4 returningRecordPromise:(uint64_t)a5 error:(uint64_t)a6 progressBlock:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[LSApplicationWorkspace installContainerizedApplicationArtifactAtURL:withOptions:returningRecordPromise:error:progressBlock:]";
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "this process is using %{public}s to install applications, which is not supported. Use InstallCoordination to install and uninstall applications on this platform.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)uninstallContainerizedApplicationWithIdentifier:(uint64_t)a3 options:(uint64_t)a4 error:(uint64_t)a5 progressBlock:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[LSApplicationWorkspace uninstallContainerizedApplicationWithIdentifier:options:error:progressBlock:]";
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "this process is using %{public}s to uninstall applications, which is not supported. Use InstallCoordination to install and uninstall applications on this platform.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)downgradeApplicationToPlaceholder:withOptions:error:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)uninstallApplication:(uint64_t)a3 withOptions:(uint64_t)a4 error:(uint64_t)a5 usingBlock:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[LSApplicationWorkspace uninstallApplication:withOptions:error:usingBlock:]";
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "this process is using %{public}s to uninstall applications, which is not supported. Use InstallCoordination to install and uninstall applications on this platform.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)unregisterApplicationsAtMountPoint:(void *)a1 operationUUID:(uint64_t)a2 saveObserver:(uint64_t)a3 requestContext:(NSObject *)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v5 = *(*a2 + 40);
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = v5;
  OUTLINED_FUNCTION_15_0(&dword_18162D000, a4, a3, "Unable to unregister applications at mount point: %@: %@", a3);
}

- (void)unregisterApplication:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)updateSINFWithData:(uint64_t)a3 forApplication:(uint64_t)a4 options:(uint64_t)a5 error:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[LSApplicationWorkspace updateSINFWithData:forApplication:options:error:]";
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "%s is no longer supported. Adopt InstallCoordination to update iTMD and SINF.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateiTunesMetadataWithData:(uint64_t)a3 forApplication:(uint64_t)a4 options:(uint64_t)a5 error:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[LSApplicationWorkspace updateiTunesMetadataWithData:forApplication:options:error:]";
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "%s is no longer supported. Adopt InstallCoordination to update iTMD and SINF.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)updateiTunesMetadataWithData:(uint64_t)a3 forApplicationAtURL:(uint64_t)a4 error:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[LSApplicationWorkspace updateiTunesMetadataWithData:forApplicationAtURL:error:]";
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "%s is no longer supported. Adopt InstallCoordination to update iTMD and SINF.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)updatePlaceholderMetadataForApp:installType:failure:underlyingError:source:outError:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)unregisterPlugin:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)isVersion:greaterThanOrEqualToVersion:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"version != nil" object:? file:? lineNumber:? description:?];
}

- (void)isVersion:greaterThanOrEqualToVersion:.cold.2()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"minVersion != nil" object:? file:? lineNumber:? description:?];
}

void __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_373_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_376_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __68__LSApplicationWorkspace_urlContainsDeviceIdentifierForAdvertising___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_12_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)deviceIdentifierForVendorSeedData
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)installProgressForBundleID:(void *)a1 makeSynchronous:.cold.2(void *a1)
{
  v1 = [a1 _LSDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_17(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3(&dword_18162D000, v0, v1, "NOT subscribing to progress for %@, existing subscriptions %@");
}

void __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_17(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Attempting subscribe to progress for %@", v2, v3, v4, v5);
}

void __66__LSApplicationWorkspace_installProgressForApplication_withPhase___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __95__LSApplicationWorkspace__LSPrivateRebuildApplicationDatabasesForSystemApps_internal_user_uid___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __55__LSApplicationWorkspace__LSPrivateNoteMigratorRunning__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __55__LSApplicationWorkspace__LSPrivateNoteMigratorRunning__block_invoke_402_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __56__LSApplicationWorkspace__LSFailedToOpenURL_withBundle___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)sendApplicationStateChangedNotificationsFor:(uint64_t)a3 stateProvider:(uint64_t)a4 completion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[LSApplicationWorkspace sendApplicationStateChangedNotificationsFor:stateProvider:completion:]";
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "Called %s but not in the database server. Please file a bug.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __95__LSApplicationWorkspace_sendApplicationStateChangedNotificationsFor_stateProvider_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __64__LSApplicationWorkspace_scanForAppsInRatingRankExceptionsList___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __110__LSApplicationWorkspace_DefaultApps__setDefaultApplicationForCategory_toApplicationRecord_completionHandler___block_invoke_cold_1(unsigned int a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 134218242;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  OUTLINED_FUNCTION_15_0(&dword_18162D000, a4, a3, "Record with unit 0x%llx does not claim %@", a3);
}

@end