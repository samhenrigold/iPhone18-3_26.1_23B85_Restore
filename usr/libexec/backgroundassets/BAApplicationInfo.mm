@interface BAApplicationInfo
+ (BOOL)applicationForIdentifierAllowsBackgroundActivity:(id)activity;
+ (id)classesForSerialization;
+ (id)extensionContainingApplicationList;
+ (id)extensionPointQueriesWithPostProcessing:(BOOL)processing;
- (BAApplicationInfo)initWithCoder:(id)coder;
- (BAApplicationInfo)initWithIdentifier:(id)identifier applicationTeamIdentifier:(id)teamIdentifier;
- (BOOL)_consumeAllowanceShouldStopWithAdditionalBytes:(unint64_t)bytes downloadNecessity:(int64_t)necessity isManifest:(BOOL)manifest;
- (BOOL)allowsBackgroundActivity;
- (BOOL)awaitingNetworkConsent;
- (BOOL)consumeAllowanceShouldStopWithAdditionalBytes:(unint64_t)bytes downloadNecessity:(int64_t)necessity isManifest:(BOOL)manifest;
- (BOOL)hasManagedAssetPacks;
- (BOOL)isEqual:(id)equal;
- (BOOL)receivedInstalledNotification;
- (BOOL)receivedInstallingNotification;
- (BOOL)setAwaitingNetworkConsent:(BOOL)consent;
- (BOOL)shouldDoPeriodicCheck;
- (BOOL)userForceQuitApp;
- (BOOL)usesAppleHosting;
- (NSData)persistentIdentifier;
- (NSMutableArray)allowedDownloadDomainWildcards;
- (NSMutableArray)allowedDownloadDomains;
- (double)extensionRuntime;
- (id)applicationSecurityGroups;
- (id)debugDescription;
- (id)extensionIdentityWithParentAppRecordPtr:(id *)ptr;
- (int64_t)applicationExtensionState;
- (int64_t)applicationState;
- (int64_t)installSource;
- (unint64_t)_remainingDownloadAllowanceWithNecessity:(int64_t)necessity isManifest:(BOOL)manifest;
- (unint64_t)remainingDownloadAllowanceWithNecessity:(int64_t)necessity isManifest:(BOOL)manifest;
- (void)_debugConsumeTime:(double)time;
- (void)_populateAllowedDomainInfoWithArray:(id)array;
- (void)applicationInstalled;
- (void)applicationInstallingWithUpdateInstall:(BOOL)install;
- (void)applicationLaunched;
- (void)applicationPrepareWithDescriptor:(id)descriptor;
- (void)determineInstallSourceIfUnsetFromAuditToken:(id *)token;
- (void)donePeriodicCheck;
- (void)encodeWithCoder:(id)coder;
- (void)extensionExited;
- (void)performAfterNetworkConsentProvided:(id)provided queue:(id)queue;
- (void)resetExtensionRuntime;
- (void)setAllowedDownloadDomainWildcards:(id)wildcards;
- (void)setAllowedDownloadDomains:(id)domains;
- (void)setApplicationExtensionState:(int64_t)state;
- (void)setApplicationState:(int64_t)state;
- (void)setHasManagedAssetPacks:(BOOL)packs;
- (void)setInstallSource:(int64_t)source;
- (void)setPersistentIdentifier:(id)identifier;
- (void)setReceivedInstalledNotification:(BOOL)notification;
- (void)setReceivedInstallingNotification:(BOOL)notification;
- (void)setUserForceQuitApp:(BOOL)app;
- (void)setUsesAppleHosting:(BOOL)hosting;
- (void)updateApplicationWithInfoDictionary:(id)dictionary applicationRecord:(id)record overrides:(id)overrides;
- (void)willLaunchExtension;
@end

@implementation BAApplicationInfo

+ (BOOL)applicationForIdentifierAllowsBackgroundActivity:(id)activity
{
  activityCopy = activity;
  if (qword_100089CB0 != -1)
  {
    sub_10004BCF0();
  }

  v4 = +[NSProcessInfo processInfo];
  isLowPowerModeEnabled = [v4 isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    v7 = sub_1000104FC(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = activityCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Denying background activity for %{public}@ because device is in low power mode.", &v16, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v7 = +[MCProfileConnection sharedConnection];
    isAutomaticAppUpdatesAllowed = [v7 isAutomaticAppUpdatesAllowed];
    if (isAutomaticAppUpdatesAllowed)
    {
      v10 = [qword_100089CA8 objectForKey:@"KeepAppsUpToDateAppList"];
      v11 = [v10 objectForKey:activityCopy];
      v12 = v11;
      if (v11 && (v13 = [v11 BOOLValue], (v13 & 1) == 0))
      {
        v14 = sub_1000104FC(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138543362;
          v17 = activityCopy;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Denying background activity for %{public}@ because background app refresh for this app is disabled.", &v16, 0xCu);
        }

        v8 = 0;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v10 = sub_1000104FC(isAutomaticAppUpdatesAllowed);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = activityCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Denying background activity for %{public}@ because background app refresh is globally disabled.", &v16, 0xCu);
      }

      v8 = 0;
    }
  }

  return v8;
}

+ (id)classesForSerialization
{
  if (qword_100089CC0 != -1)
  {
    sub_10004BD04();
  }

  v3 = qword_100089CB8;

  return v3;
}

+ (id)extensionPointQueriesWithPostProcessing:(BOOL)processing
{
  processingCopy = processing;
  v4 = [_EXQuery extensionPointIdentifierQuery:@"com.apple.background-asset-downloader-extension"];
  v17 = v4;
  v5 = [NSArray arrayWithObjects:&v17 count:1];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * i) setIncludePostprocessing:{processingCopy, v12}];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (id)extensionContainingApplicationList
{
  v23 = +[NSMutableArray array];
  v22 = [objc_opt_class() extensionPointQueriesWithPostProcessing:1];
  v2 = [_EXQueryController executeQueries:?];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = &lockdown_checkin_xpc_ptr;
    p_inst_meths = &OBJC_PROTOCOL___BAAgentSystemXPCProtocol.inst_meths;
    v7 = *v27;
    v24 = *v27;
    do
    {
      v8 = 0;
      v25 = v4;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        containingBundleRecord = [v9 containingBundleRecord];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bundleIdentifier = [containingBundleRecord bundleIdentifier];
          if (bundleIdentifier)
          {
            v12 = [v9 entitlementNamed:p_inst_meths[107] ofClass:objc_opt_class()];
            v13 = [NSBundle alloc];
            v14 = [containingBundleRecord URL];
            v15 = [v13 _initUniqueWithURL:v14];

            infoDictionary = [v15 infoDictionary];
            v17 = [[BAApplicationInfo alloc] initWithIdentifier:bundleIdentifier applicationTeamIdentifier:v12];
            if (v17)
            {
              [v23 addObject:v17];
              if (infoDictionary)
              {
                [BAApplicationConfigurationOverrides overridesForAppBundleIdentifier:bundleIdentifier];
                v18 = v5;
                v20 = v19 = v2;
                [(BAApplicationInfo *)v17 updateApplicationWithInfoDictionary:infoDictionary applicationRecord:containingBundleRecord overrides:v20];

                v2 = v19;
                v5 = v18;
                p_inst_meths = (&OBJC_PROTOCOL___BAAgentSystemXPCProtocol + 24);
              }
            }

            v7 = v24;
            v4 = v25;
          }
        }

        v8 = v8 + 1;
      }

      while (v4 != v8);
      v4 = [v2 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }

  return v23;
}

- (BAApplicationInfo)initWithIdentifier:(id)identifier applicationTeamIdentifier:(id)teamIdentifier
{
  identifierCopy = identifier;
  teamIdentifierCopy = teamIdentifier;
  v29.receiver = self;
  v29.super_class = BAApplicationInfo;
  v8 = [(BAApplicationInfo *)&v29 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  if (!identifierCopy)
  {
    v27 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"identifier can not be nil" userInfo:0];
    [v27 raise];
LABEL_9:

    v26 = 0;
    goto LABEL_10;
  }

  _baassets_validUTI = [identifierCopy _baassets_validUTI];
  v10 = [_baassets_validUTI isEqualToString:identifierCopy];

  if ((v10 & 1) == 0)
  {
    v27 = sub_1000104FC(v11);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10004BD18();
    }

    goto LABEL_9;
  }

  v12 = objc_alloc_init(NSRecursiveLock);
  [(BAApplicationInfo *)v8 setAppInfoRecursiveLock:v12];

  appInfoRecursiveLock = [(BAApplicationInfo *)v8 appInfoRecursiveLock];
  identifierCopy = [NSString stringWithFormat:@"%@ App Info Recursive Lock", identifierCopy];
  [appInfoRecursiveLock setName:identifierCopy];

  appInfoRecursiveLock2 = [(BAApplicationInfo *)v8 appInfoRecursiveLock];
  [appInfoRecursiveLock2 lock];

  [(BAApplicationInfo *)v8 setApplicationIdentifier:identifierCopy];
  [(BAApplicationInfo *)v8 setOptionalAmountDownloaded:0];
  [(BAApplicationInfo *)v8 setEssentialAmountDownloaded:0];
  [(BAApplicationInfo *)v8 setOptionalAssetDownloadAllowance:0];
  [(BAApplicationInfo *)v8 setEssentialAssetDownloadAllowance:0];
  [(BAApplicationInfo *)v8 setPermittedForInitialBackgroundActivity:0];
  [(BAApplicationInfo *)v8 setInitialBackgroundCellularPolicy:0];
  [(BAApplicationInfo *)v8 setReceivedInstallingNotification:0];
  [(BAApplicationInfo *)v8 setReceivedInstalledNotification:0];
  [(BAApplicationInfo *)v8 setHasLaunchedApplication:0];
  [(BAApplicationInfo *)v8 setApplicationTeamIdentifier:teamIdentifierCopy];
  [(BAApplicationInfo *)v8 setInstallSource:0];
  v16 = [NSMutableArray arrayWithCapacity:10];
  [(BAApplicationInfo *)v8 setExtensionRuntimeEvents:v16];

  v17 = +[NSDate distantPast];
  [(BAApplicationInfo *)v8 setLastPeriodicCheckTime:v17];

  v18 = +[NSDate distantPast];
  [(BAApplicationInfo *)v8 setLastApplicationLaunchTime:v18];

  [(BAApplicationInfo *)v8 setManifestURL:0];
  [(BAApplicationInfo *)v8 setUserForceQuitApp:0];
  v19 = objc_alloc_init(NSMutableArray);
  allowedDownloadDomains = v8->_allowedDownloadDomains;
  v8->_allowedDownloadDomains = v19;

  v21 = objc_alloc_init(NSMutableArray);
  allowedDownloadDomainWildcards = v8->_allowedDownloadDomainWildcards;
  v8->_allowedDownloadDomainWildcards = v21;

  v8->_awaitingNetworkConsent = 0;
  v23 = +[NSMutableDictionary dictionary];
  blocksAwaitingNetworkConsent = v8->_blocksAwaitingNetworkConsent;
  v8->_blocksAwaitingNetworkConsent = v23;

  *&v8->_hasManagedAssetPacks = 0;
  appInfoRecursiveLock3 = [(BAApplicationInfo *)v8 appInfoRecursiveLock];
  [appInfoRecursiveLock3 unlock];

LABEL_5:
  v26 = v8;
LABEL_10:

  return v26;
}

- (BAApplicationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v44.receiver = self;
  v44.super_class = BAApplicationInfo;
  v5 = [(BAApplicationInfo *)&v44 init];
  if (!v5)
  {
LABEL_37:
    v28 = v5;
    goto LABEL_38;
  }

  v6 = coderCopy;
  v7 = objc_alloc_init(NSRecursiveLock);
  [(BAApplicationInfo *)v5 setAppInfoRecursiveLock:v7];

  appInfoRecursiveLock = [(BAApplicationInfo *)v5 appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:off_100089368[0]];
  [(BAApplicationInfo *)v5 setApplicationIdentifier:v9];

  applicationIdentifier = [(BAApplicationInfo *)v5 applicationIdentifier];

  if (applicationIdentifier)
  {
    v11 = objc_alloc_init(NSMutableArray);
    allowedDownloadDomains = v5->_allowedDownloadDomains;
    v5->_allowedDownloadDomains = v11;

    v13 = objc_alloc_init(NSMutableArray);
    allowedDownloadDomainWildcards = v5->_allowedDownloadDomainWildcards;
    v5->_allowedDownloadDomainWildcards = v13;

    -[BAApplicationInfo setPermittedForInitialBackgroundActivity:](v5, "setPermittedForInitialBackgroundActivity:", [v6 decodeBoolForKey:off_1000893B0[0]]);
    -[BAApplicationInfo setInitialBackgroundCellularPolicy:](v5, "setInitialBackgroundCellularPolicy:", [v6 decodeIntegerForKey:off_1000893B8[0]]);
    -[BAApplicationInfo setHasLaunchedApplication:](v5, "setHasLaunchedApplication:", [v6 decodeBoolForKey:off_1000893D0[0]]);
    v15 = [v6 decodeObjectOfClass:objc_opt_class() forKey:off_1000893D8[0]];
    [(BAApplicationInfo *)v5 setLastApplicationLaunchTime:v15];

    v16 = [v6 decodeObjectOfClass:objc_opt_class() forKey:off_1000893F8[0]];
    [(BAApplicationInfo *)v5 setManifestURL:v16];

    v17 = [v6 decodeObjectOfClass:objc_opt_class() forKey:off_100089370[0]];
    [(BAApplicationInfo *)v5 setApplicationTeamIdentifier:v17];

    v18 = [v6 decodeObjectOfClass:objc_opt_class() forKey:off_1000893E8[0]];
    [(BAApplicationInfo *)v5 setLastPeriodicCheckTime:v18];

    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v19 = [NSArray arrayWithObjects:v46 count:2];
    v20 = [NSSet setWithArray:v19];
    v21 = [v6 decodeObjectOfClasses:v20 forKey:@"extensionRuntimeEvents"];
    v22 = [v21 mutableCopy];
    [(BAApplicationInfo *)v5 setExtensionRuntimeEvents:v22];

    v5->_awaitingNetworkConsent = 0;
    v23 = +[NSMutableDictionary dictionary];
    blocksAwaitingNetworkConsent = v5->_blocksAwaitingNetworkConsent;
    v5->_blocksAwaitingNetworkConsent = v23;

    if ([v6 containsValueForKey:off_1000893E0[0]])
    {
      -[BAApplicationInfo setUserForceQuitApp:](v5, "setUserForceQuitApp:", [v6 decodeBoolForKey:off_1000893E0[0]]);
    }

    if ([v6 containsValueForKey:off_1000893A8[0]])
    {
      v25 = objc_opt_class();
      v26 = off_1000893A8[0];
    }

    else
    {
      if (![v6 containsValueForKey:off_100089398[0]])
      {
        [(BAApplicationInfo *)v5 setOptionalAssetDownloadAllowance:0];
LABEL_12:
        if ([v6 containsValueForKey:off_1000893A0[0]])
        {
          v30 = [v6 decodeObjectOfClass:objc_opt_class() forKey:off_1000893A0[0]];
          -[BAApplicationInfo setEssentialAssetDownloadAllowance:](v5, "setEssentialAssetDownloadAllowance:", [v30 unsignedLongLongValue]);
        }

        if ([v6 containsValueForKey:off_100089390[0]])
        {
          v31 = objc_opt_class();
          v32 = off_100089390[0];
        }

        else
        {
          if (![v6 containsValueForKey:off_100089380[0]])
          {
            [(BAApplicationInfo *)v5 setOptionalAmountDownloaded:0];
            goto LABEL_20;
          }

          v31 = objc_opt_class();
          v32 = off_100089380[0];
        }

        v33 = [v6 decodeObjectOfClass:v31 forKey:v32];
        -[BAApplicationInfo setOptionalAmountDownloaded:](v5, "setOptionalAmountDownloaded:", [v33 unsignedLongLongValue]);

LABEL_20:
        if ([v6 containsValueForKey:off_1000893C0[0]])
        {
          v34 = [v6 decodeBoolForKey:off_1000893C0[0]];
        }

        else
        {
          v34 = 1;
        }

        [(BAApplicationInfo *)v5 setReceivedInstallingNotification:v34];
        if ([v6 containsValueForKey:off_1000893C8[0]])
        {
          v35 = [v6 decodeBoolForKey:off_1000893C8[0]];
        }

        else
        {
          v35 = 1;
        }

        [(BAApplicationInfo *)v5 setReceivedInstalledNotification:v35];
        if ([v6 containsValueForKey:off_100089378[0]])
        {
          v36 = [v6 decodeObjectOfClass:objc_opt_class() forKey:off_100089378[0]];
          [(BAApplicationInfo *)v5 setPersistentIdentifier:v36];
        }

        if ([v6 containsValueForKey:off_100089400[0]])
        {
          -[BAApplicationInfo setInstallSource:](v5, "setInstallSource:", [v6 decodeIntegerForKey:off_100089400[0]]);
        }

        if ([v6 containsValueForKey:off_100089408[0]])
        {
          v37 = [v6 decodeBoolForKey:off_100089408[0]];
        }

        else
        {
          v37 = 0;
        }

        [(BAApplicationInfo *)v5 setUsesAppleHosting:v37];
        if ([v6 containsValueForKey:off_100089410])
        {
          v38 = [v6 decodeBoolForKey:off_100089410];
        }

        else
        {
          v38 = 0;
        }

        [(BAApplicationInfo *)v5 setUsesAppleHosting:v38];
        v45[0] = objc_opt_class();
        v45[1] = objc_opt_class();
        v39 = [NSArray arrayWithObjects:v45 count:2];
        v40 = [NSSet setWithArray:v39];
        v41 = [v6 decodeObjectOfClasses:v40 forKey:off_1000893F0[0]];

        [(BAApplicationInfo *)v5 _populateAllowedDomainInfoWithArray:v41];
        appInfoRecursiveLock2 = [(BAApplicationInfo *)v5 appInfoRecursiveLock];
        [appInfoRecursiveLock2 unlock];

        goto LABEL_37;
      }

      v25 = objc_opt_class();
      v26 = off_100089398[0];
    }

    v29 = [v6 decodeObjectOfClass:v25 forKey:v26];
    -[BAApplicationInfo setOptionalAssetDownloadAllowance:](v5, "setOptionalAssetDownloadAllowance:", [v29 unsignedLongLongValue]);

    goto LABEL_12;
  }

  appInfoRecursiveLock3 = [(BAApplicationInfo *)v5 appInfoRecursiveLock];
  [appInfoRecursiveLock3 unlock];

  v28 = 0;
LABEL_38:

  return v28;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  applicationIdentifier = [(BAApplicationInfo *)self applicationIdentifier];
  [coderCopy encodeObject:applicationIdentifier forKey:off_100089368[0]];

  v6 = [NSNumber numberWithUnsignedLongLong:[(BAApplicationInfo *)self optionalAmountDownloaded]];
  [coderCopy encodeObject:v6 forKey:off_100089390[0]];

  v7 = [NSNumber numberWithUnsignedLongLong:[(BAApplicationInfo *)self essentialAmountDownloaded]];
  [coderCopy encodeObject:v7 forKey:off_100089388[0]];

  v8 = [NSNumber numberWithUnsignedLongLong:[(BAApplicationInfo *)self optionalAssetDownloadAllowance]];
  [coderCopy encodeObject:v8 forKey:off_1000893A8[0]];

  v9 = [NSNumber numberWithUnsignedLongLong:[(BAApplicationInfo *)self essentialAssetDownloadAllowance]];
  [coderCopy encodeObject:v9 forKey:off_1000893A0[0]];

  permittedForInitialBackgroundActivity = [(BAApplicationInfo *)self permittedForInitialBackgroundActivity];
  [coderCopy encodeBool:permittedForInitialBackgroundActivity forKey:off_1000893B0[0]];
  initialBackgroundCellularPolicy = [(BAApplicationInfo *)self initialBackgroundCellularPolicy];
  [coderCopy encodeInteger:initialBackgroundCellularPolicy forKey:off_1000893B8[0]];
  receivedInstallingNotification = [(BAApplicationInfo *)self receivedInstallingNotification];
  [coderCopy encodeBool:receivedInstallingNotification forKey:off_1000893C0[0]];
  receivedInstalledNotification = [(BAApplicationInfo *)self receivedInstalledNotification];
  [coderCopy encodeBool:receivedInstalledNotification forKey:off_1000893C8[0]];
  hasLaunchedApplication = [(BAApplicationInfo *)self hasLaunchedApplication];
  [coderCopy encodeBool:hasLaunchedApplication forKey:off_1000893D0[0]];
  lastApplicationLaunchTime = [(BAApplicationInfo *)self lastApplicationLaunchTime];
  [coderCopy encodeObject:lastApplicationLaunchTime forKey:off_1000893D8[0]];

  userForceQuitApp = [(BAApplicationInfo *)self userForceQuitApp];
  [coderCopy encodeBool:userForceQuitApp forKey:off_1000893E0[0]];
  lastPeriodicCheckTime = [(BAApplicationInfo *)self lastPeriodicCheckTime];
  [coderCopy encodeObject:lastPeriodicCheckTime forKey:off_1000893E8[0]];

  applicationTeamIdentifier = [(BAApplicationInfo *)self applicationTeamIdentifier];

  if (applicationTeamIdentifier)
  {
    applicationTeamIdentifier2 = [(BAApplicationInfo *)self applicationTeamIdentifier];
    [coderCopy encodeObject:applicationTeamIdentifier2 forKey:off_100089370[0]];
  }

  persistentIdentifier = [(BAApplicationInfo *)self persistentIdentifier];

  if (persistentIdentifier)
  {
    persistentIdentifier2 = [(BAApplicationInfo *)self persistentIdentifier];
    [coderCopy encodeObject:persistentIdentifier2 forKey:off_100089378[0]];
  }

  _serializableAllowedDomainInfo = [(BAApplicationInfo *)self _serializableAllowedDomainInfo];
  [coderCopy encodeObject:_serializableAllowedDomainInfo forKey:off_1000893F0[0]];
  manifestURL = [(BAApplicationInfo *)self manifestURL];
  [coderCopy encodeObject:manifestURL forKey:off_1000893F8[0]];

  extensionRuntimeEvents = [(BAApplicationInfo *)self extensionRuntimeEvents];
  [coderCopy encodeObject:extensionRuntimeEvents forKey:@"extensionRuntimeEvents"];

  installSource = [(BAApplicationInfo *)self installSource];
  [coderCopy encodeInteger:installSource forKey:off_100089400[0]];
  hasManagedAssetPacks = [(BAApplicationInfo *)self hasManagedAssetPacks];
  [coderCopy encodeBool:hasManagedAssetPacks forKey:off_100089408[0]];
  usesAppleHosting = [(BAApplicationInfo *)self usesAppleHosting];
  [coderCopy encodeBool:usesAppleHosting forKey:off_100089410];
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      applicationIdentifier = [(BAApplicationInfo *)self applicationIdentifier];
      applicationIdentifier2 = [(BAApplicationInfo *)equalCopy applicationIdentifier];
      v7 = [applicationIdentifier isEqualToString:applicationIdentifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)applicationState
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  applicationState = self->_applicationState;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return applicationState;
}

- (void)setApplicationState:(int64_t)state
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  self->_applicationState = state;
  if ((state & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    [(BAApplicationInfo *)self applicationLaunched];
  }

  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (int64_t)applicationExtensionState
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  applicationExtensionState = self->_applicationExtensionState;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return applicationExtensionState;
}

- (void)setApplicationExtensionState:(int64_t)state
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  self->_applicationExtensionState = state;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (BOOL)userForceQuitApp
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  LOBYTE(appInfoRecursiveLock) = self->_userForceQuitApp;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return appInfoRecursiveLock;
}

- (void)setUserForceQuitApp:(BOOL)app
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  self->_userForceQuitApp = app;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (int64_t)installSource
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  installSource = self->_installSource;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return installSource;
}

- (void)setInstallSource:(int64_t)source
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  self->_installSource = source;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (void)determineInstallSourceIfUnsetFromAuditToken:(id *)token
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  if (!self->_installSource)
  {
    applicationIdentifier = [(BAApplicationInfo *)self applicationIdentifier];
    v7 = *&token->var0[4];
    v9[0] = *token->var0;
    v9[1] = v7;
    self->_installSource = [BAInstallationSourceUtilities installationSourceFromAuditToken:v9 applicationIdentifier:applicationIdentifier];
  }

  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (NSMutableArray)allowedDownloadDomains
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  v4 = [(NSMutableArray *)self->_allowedDownloadDomains copy];
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return v4;
}

- (void)setAllowedDownloadDomains:(id)domains
{
  domainsCopy = domains;
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  v6 = [NSMutableArray arrayWithArray:domainsCopy];

  allowedDownloadDomains = self->_allowedDownloadDomains;
  self->_allowedDownloadDomains = v6;

  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (NSMutableArray)allowedDownloadDomainWildcards
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  v4 = [(NSMutableArray *)self->_allowedDownloadDomainWildcards copy];
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return v4;
}

- (void)setAllowedDownloadDomainWildcards:(id)wildcards
{
  wildcardsCopy = wildcards;
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  v6 = [NSMutableArray arrayWithArray:wildcardsCopy];

  allowedDownloadDomainWildcards = self->_allowedDownloadDomainWildcards;
  self->_allowedDownloadDomainWildcards = v6;

  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (void)applicationPrepareWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  [descriptorCopy clientType];
  [(BAApplicationInfo *)self setPermittedForInitialBackgroundActivity:sub_100016294(BAAgentUtilities)];
  cellularPolicy = [descriptorCopy cellularPolicy];

  v7 = sub_1000104FC([(BAApplicationInfo *)self setInitialBackgroundCellularPolicy:cellularPolicy]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    applicationIdentifier = [(BAApplicationInfo *)self applicationIdentifier];
    permittedForInitialBackgroundActivity = [(BAApplicationInfo *)self permittedForInitialBackgroundActivity];
    v10 = @"NO";
    if (permittedForInitialBackgroundActivity)
    {
      v10 = @"YES";
    }

    v12 = 138543618;
    v13 = applicationIdentifier;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Preparing app using descriptor for: %{public}@. Permitted for initial background activity: %{public}@", &v12, 0x16u);
  }

  [(BAApplicationInfo *)self setReceivedInstalledNotification:0];
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (BOOL)receivedInstalledNotification
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  LOBYTE(appInfoRecursiveLock) = self->_receivedInstalledNotification;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return appInfoRecursiveLock;
}

- (void)setReceivedInstalledNotification:(BOOL)notification
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  self->_receivedInstalledNotification = notification;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (BOOL)receivedInstallingNotification
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  LOBYTE(appInfoRecursiveLock) = self->_receivedInstallingNotification;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return appInfoRecursiveLock;
}

- (void)setReceivedInstallingNotification:(BOOL)notification
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  self->_receivedInstallingNotification = notification;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (BOOL)awaitingNetworkConsent
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  LOBYTE(appInfoRecursiveLock) = self->_awaitingNetworkConsent;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return appInfoRecursiveLock;
}

- (BOOL)setAwaitingNetworkConsent:(BOOL)consent
{
  consentCopy = consent;
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  awaitingNetworkConsent = self->_awaitingNetworkConsent;
  if (awaitingNetworkConsent == consentCopy)
  {
    appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
    [appInfoRecursiveLock2 unlock];
  }

  else
  {
    v8 = sub_1000104FC(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (consentCopy)
    {
      if (v9)
      {
        applicationIdentifier = [(BAApplicationInfo *)self applicationIdentifier];
        v16 = 138543362;
        v17 = applicationIdentifier;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "App awaiting network consent: %{public}@", &v16, 0xCu);
      }

      v11 = 0;
      self->_awaitingNetworkConsent = consentCopy;
    }

    else
    {
      if (v9)
      {
        applicationIdentifier2 = [(BAApplicationInfo *)self applicationIdentifier];
        v16 = 138543362;
        v17 = applicationIdentifier2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "App no longer awaiting network consent: %{public}@", &v16, 0xCu);
      }

      self->_awaitingNetworkConsent = 0;
      v11 = [(NSMutableDictionary *)self->_blocksAwaitingNetworkConsent copy];
      [(NSMutableDictionary *)self->_blocksAwaitingNetworkConsent removeAllObjects];
    }

    appInfoRecursiveLock3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
    [appInfoRecursiveLock3 unlock];

    if (v11)
    {
      [v11 enumerateKeysAndObjectsWithOptions:1 usingBlock:&stru_10007A128];
    }
  }

  return awaitingNetworkConsent != consentCopy;
}

- (void)setPersistentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  persistentIdentifier = self->_persistentIdentifier;
  self->_persistentIdentifier = identifierCopy;

  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (NSData)persistentIdentifier
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  v4 = self->_persistentIdentifier;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return v4;
}

- (void)setHasManagedAssetPacks:(BOOL)packs
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  self->_hasManagedAssetPacks = packs;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (BOOL)hasManagedAssetPacks
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  LOBYTE(appInfoRecursiveLock) = self->_hasManagedAssetPacks;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return appInfoRecursiveLock;
}

- (void)setUsesAppleHosting:(BOOL)hosting
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  self->_usesAppleHosting = hosting;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (BOOL)usesAppleHosting
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  LOBYTE(appInfoRecursiveLock) = self->_usesAppleHosting;
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return appInfoRecursiveLock;
}

- (void)applicationInstallingWithUpdateInstall:(BOOL)install
{
  installCopy = install;
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  v7 = sub_1000104FC(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (installCopy)
  {
    if (v8)
    {
      applicationIdentifier = [(BAApplicationInfo *)self applicationIdentifier];
      v12 = 138543362;
      v13 = applicationIdentifier;
      v10 = "Application is updating: %{public}@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);
    }
  }

  else if (v8)
  {
    applicationIdentifier = [(BAApplicationInfo *)self applicationIdentifier];
    v12 = 138543362;
    v13 = applicationIdentifier;
    v10 = "Application is installing: %{public}@";
    goto LABEL_6;
  }

  [(BAApplicationInfo *)self setReceivedInstallingNotification:1];
  [(BAApplicationInfo *)self setReceivedInstalledNotification:0];
  [(BAApplicationInfo *)self setHasLaunchedApplication:0];
  [(BAApplicationInfo *)self setOptionalAmountDownloaded:0];
  [(BAApplicationInfo *)self setEssentialAmountDownloaded:0];
  [(BAApplicationInfo *)self resetExtensionRuntime];
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (void)applicationInstalled
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  v5 = sub_1000104FC(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    applicationIdentifier = [(BAApplicationInfo *)self applicationIdentifier];
    v8 = 138543362;
    v9 = applicationIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Application installed to final location: %{public}@", &v8, 0xCu);
  }

  [(BAApplicationInfo *)self setReceivedInstallingNotification:1];
  [(BAApplicationInfo *)self setReceivedInstalledNotification:1];
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (void)updateApplicationWithInfoDictionary:(id)dictionary applicationRecord:(id)record overrides:(id)overrides
{
  dictionaryCopy = dictionary;
  recordCopy = record;
  overridesCopy = overrides;
  v10 = [dictionaryCopy objectForKey:@"BAInitialDownloadRestrictions"];
  -[BAApplicationInfo setHasManagedAssetPacks:](self, "setHasManagedAssetPacks:", [dictionaryCopy infoDictionaryHasManagedAssetPacks]);
  -[BAApplicationInfo setUsesAppleHosting:](self, "setUsesAppleHosting:", [dictionaryCopy infoDictionaryUsesAppleHosting]);
  if (v10)
  {
    v11 = [v10 objectForKey:@"BADownloadDomainAllowList"];
    v12 = [v10 objectForKey:@"BAEssentialDownloadAllowance"];
    v13 = [v10 objectForKey:@"BADownloadAllowance"];
  }

  else
  {
    usesAppleHosting = [(BAApplicationInfo *)self usesAppleHosting];
    if (usesAppleHosting)
    {
      v15 = sub_1000104FC(usesAppleHosting);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        applicationIdentifier = [(BAApplicationInfo *)self applicationIdentifier];
        *buf = 138543362;
        v61 = applicationIdentifier;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "The application with the identifier “%{public}@” is configured to use Apple hosting.", buf, 0xCu);
      }

      v17 = [BADevelopmentOverrides URLForApplicationRecord:recordCopy];
      host = [v17 host];

      if (host)
      {
        v20 = sub_1000104FC(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          applicationIdentifier2 = [(BAApplicationInfo *)self applicationIdentifier];
          *buf = 138543618;
          v61 = v17;
          v62 = 2114;
          v63 = applicationIdentifier2;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using the development-override URL “%{public}@” for the application with the identifier “%{public}@”…", buf, 0x16u);
        }

        v59[0] = @"*.apple.com";
        host2 = [v17 host];
        v59[1] = host2;
        v11 = [NSArray arrayWithObjects:v59 count:2];
      }

      else
      {
        v11 = &off_10007D470;
      }

      v12 = [NSNumber numberWithUnsignedLongLong:-1];
      v13 = [NSNumber numberWithUnsignedLongLong:-1];
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v11 = 0;
    }
  }

  v23 = [dictionaryCopy objectForKey:@"BAManifestURL"];
  if (os_variant_has_internal_content())
  {
    v57 = v10;
    essentialDownloadAllowance = [overridesCopy essentialDownloadAllowance];

    if (essentialDownloadAllowance)
    {
      v26 = sub_1000104FC(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        applicationIdentifier3 = [(BAApplicationInfo *)self applicationIdentifier];
        [overridesCopy essentialDownloadAllowance];
        v29 = v28 = v11;
        *buf = 138543618;
        v61 = applicationIdentifier3;
        v62 = 2114;
        v63 = v29;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Essential download allowance for %{public}@ overridden to %{public}@", buf, 0x16u);

        v11 = v28;
      }

      essentialDownloadAllowance2 = [overridesCopy essentialDownloadAllowance];

      v12 = essentialDownloadAllowance2;
    }

    downloadAllowance = [overridesCopy downloadAllowance];

    if (downloadAllowance)
    {
      v33 = sub_1000104FC(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        applicationIdentifier4 = [(BAApplicationInfo *)self applicationIdentifier];
        [overridesCopy downloadAllowance];
        v36 = v35 = v11;
        *buf = 138543618;
        v61 = applicationIdentifier4;
        v62 = 2114;
        v63 = v36;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Download allowance for %{public}@ overridden to %{public}@", buf, 0x16u);

        v11 = v35;
      }

      downloadAllowance2 = [overridesCopy downloadAllowance];

      v13 = downloadAllowance2;
    }

    manifestURL = [overridesCopy manifestURL];

    if (manifestURL)
    {
      v40 = sub_1000104FC(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        applicationIdentifier5 = [(BAApplicationInfo *)self applicationIdentifier];
        [overridesCopy manifestURL];
        v43 = v42 = v11;
        *buf = 138543618;
        v61 = applicationIdentifier5;
        v62 = 2114;
        v63 = v43;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Manifest URL overridden for %{public}@ to %{public}@", buf, 0x16u);

        v11 = v42;
      }

      manifestURL2 = [overridesCopy manifestURL];

      v23 = manifestURL2;
    }

    domainAllowlist = [overridesCopy domainAllowlist];

    if (domainAllowlist)
    {
      v47 = sub_1000104FC(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        applicationIdentifier6 = [(BAApplicationInfo *)self applicationIdentifier];
        [overridesCopy domainAllowlist];
        v49 = v56 = v11;
        v50 = [v49 componentsJoinedByString:{@", "}];
        *buf = 138543618;
        v61 = applicationIdentifier6;
        v62 = 2114;
        v63 = v50;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Domain allowlist for %{public}@ overridden to %{public}@", buf, 0x16u);

        v11 = v56;
      }

      domainAllowlist2 = [overridesCopy domainAllowlist];

      v11 = domainAllowlist2;
    }

    v10 = v57;
  }

  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  [(BAApplicationInfo *)self _populateAllowedDomainInfoWithArray:v11];
  persistentIdentifier = [recordCopy persistentIdentifier];
  [(BAApplicationInfo *)self setPersistentIdentifier:persistentIdentifier];

  -[BAApplicationInfo setOptionalAssetDownloadAllowance:](self, "setOptionalAssetDownloadAllowance:", [v13 unsignedLongLongValue]);
  -[BAApplicationInfo setEssentialAssetDownloadAllowance:](self, "setEssentialAssetDownloadAllowance:", [v12 unsignedLongLongValue]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v54 = [NSURL URLWithString:v23];
    [(BAApplicationInfo *)self setManifestURL:v54];
  }

  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (id)extensionIdentityWithParentAppRecordPtr:(id *)ptr
{
  selfCopy = self;
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  applicationIdentifier = [(BAApplicationInfo *)selfCopy applicationIdentifier];
  v7 = [applicationIdentifier copy];

  LODWORD(applicationIdentifier) = [(BAApplicationInfo *)selfCopy receivedInstalledNotification];
  appInfoRecursiveLock2 = [(BAApplicationInfo *)selfCopy appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  v9 = [objc_opt_class() extensionPointQueriesWithPostProcessing:applicationIdentifier ^ 1];
  [_EXQueryController executeQueries:v9];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = v47 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    ptrCopy = ptr;
    v42 = v9;
    v13 = 0;
    v14 = *v45;
    while (2)
    {
      v15 = 0;
      v16 = v13;
      v43 = v12;
      do
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v44 + 1) + 8 * v15);
        bundleIdentifier = [v17 bundleIdentifier];
        v19 = [bundleIdentifier hasPrefix:v7];

        if (v19)
        {
          v13 = v17;

          persistentIdentifier = [(BAApplicationInfo *)selfCopy persistentIdentifier];
          containingBundleRecord = [v13 containingBundleRecord];
          v22 = containingBundleRecord;
          if (persistentIdentifier)
          {
            if (containingBundleRecord)
            {
              [containingBundleRecord persistentIdentifier];
              v23 = v14;
              v24 = selfCopy;
              v25 = v7;
              v27 = v26 = v10;
              v28 = _LSPersistentIdentifierCompare();

              v10 = v26;
              v7 = v25;
              selfCopy = v24;
              v14 = v23;
              v12 = v43;
              if (v28 == 100)
              {
                v30 = v13;

                v9 = v42;
                if (!v30)
                {
                  goto LABEL_26;
                }

LABEL_19:
                isKindOfClass = [v30 containingBundleRecord];
                v33 = isKindOfClass;
                if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
                {
                  bundleIdentifier2 = [v33 bundleIdentifier];
                  v35 = [bundleIdentifier2 isEqualToString:v7];

                  if (v35)
                  {
                    if (ptrCopy)
                    {
                      v37 = v33;
                      *ptrCopy = v33;
                    }

                    v38 = v30;
                    goto LABEL_32;
                  }

                  v39 = sub_100010584(v36);
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    sub_10004BD8C(v33, v7, v39);
                  }
                }

                else
                {
                  v39 = sub_100010584(isKindOfClass);
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    sub_10004BE38(v30, v39);
                  }
                }

                v38 = 0;
LABEL_32:

                goto LABEL_33;
              }
            }
          }

          v16 = v13;
        }

        else
        {
          v13 = v16;
        }

        v15 = v15 + 1;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v9 = v42;
    if (v13)
    {
      v30 = v13;
      v31 = sub_100010584(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v49 = v7;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Could not find extension identity from persistant identifier, falling back to bundle identifier match. (ID:%{public}@)", buf, 0xCu);
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

LABEL_26:
  v30 = sub_100010584(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_10004BECC();
  }

  v38 = 0;
LABEL_33:

  return v38;
}

- (id)applicationSecurityGroups
{
  extensionIdentity = [(BAApplicationInfo *)self extensionIdentity];
  v3 = extensionIdentity;
  if (extensionIdentity)
  {
    containingBundleRecord = [extensionIdentity containingBundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [LSApplicationExtensionRecord alloc];
      v6 = [v3 url];
      v17 = 0;
      v7 = [v5 initWithURL:v6 requireValid:0 error:&v17];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        groupContainerURLs = [v7 groupContainerURLs];
        allKeys = [groupContainerURLs allKeys];

        groupContainerURLs2 = [containingBundleRecord groupContainerURLs];
        allKeys2 = [groupContainerURLs2 allKeys];

        if (allKeys && allKeys2)
        {
          v12 = [NSSet setWithArray:allKeys];
          v13 = [NSSet setWithArray:allKeys2];
          v14 = [v13 mutableCopy];

          [v14 intersectSet:v12];
          allObjects = [v14 allObjects];
        }

        else
        {
          allObjects = +[NSArray array];
        }
      }

      else
      {
        allObjects = +[NSArray array];
      }
    }

    else
    {
      allObjects = +[NSArray array];
    }
  }

  else
  {
    allObjects = +[NSArray array];
  }

  return allObjects;
}

- (unint64_t)remainingDownloadAllowanceWithNecessity:(int64_t)necessity isManifest:(BOOL)manifest
{
  manifestCopy = manifest;
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  v8 = [(BAApplicationInfo *)self _remainingDownloadAllowanceWithNecessity:necessity isManifest:manifestCopy];
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return v8;
}

- (unint64_t)_remainingDownloadAllowanceWithNecessity:(int64_t)necessity isManifest:(BOOL)manifest
{
  if (manifest)
  {
    v5 = [(BAApplicationInfo *)self _remainingDownloadAllowanceWithNecessity:0 isManifest:0];
    return [(BAApplicationInfo *)self _remainingDownloadAllowanceWithNecessity:1 isManifest:0]+ v5;
  }

  else
  {
    if (necessity == 1)
    {
      essentialAssetDownloadAllowance = [(BAApplicationInfo *)self essentialAssetDownloadAllowance];
      if (essentialAssetDownloadAllowance < [(BAApplicationInfo *)self essentialAmountDownloaded])
      {
        [(BAApplicationInfo *)self setEssentialAmountDownloaded:[(BAApplicationInfo *)self essentialAssetDownloadAllowance]];
      }

      essentialAssetDownloadAllowance2 = [(BAApplicationInfo *)self essentialAssetDownloadAllowance];
      essentialAmountDownloaded = [(BAApplicationInfo *)self essentialAmountDownloaded];
    }

    else
    {
      optionalAssetDownloadAllowance = [(BAApplicationInfo *)self optionalAssetDownloadAllowance];
      if (optionalAssetDownloadAllowance < [(BAApplicationInfo *)self optionalAmountDownloaded])
      {
        [(BAApplicationInfo *)self setOptionalAmountDownloaded:[(BAApplicationInfo *)self optionalAssetDownloadAllowance]];
      }

      essentialAssetDownloadAllowance2 = [(BAApplicationInfo *)self optionalAssetDownloadAllowance];
      essentialAmountDownloaded = [(BAApplicationInfo *)self optionalAmountDownloaded];
    }

    return essentialAssetDownloadAllowance2 - essentialAmountDownloaded;
  }
}

- (BOOL)_consumeAllowanceShouldStopWithAdditionalBytes:(unint64_t)bytes downloadNecessity:(int64_t)necessity isManifest:(BOOL)manifest
{
  manifestCopy = manifest;
  v9 = [(BAApplicationInfo *)self _remainingDownloadAllowanceWithNecessity:necessity isManifest:0];
  if (necessity != 1)
  {
    if (v9 > bytes)
    {
      [(BAApplicationInfo *)self setOptionalAmountDownloaded:[(BAApplicationInfo *)self optionalAmountDownloaded]+ bytes];
      return 0;
    }

    [(BAApplicationInfo *)self setOptionalAmountDownloaded:[(BAApplicationInfo *)self optionalAssetDownloadAllowance]];
    return 1;
  }

  if (v9 > bytes)
  {
    [(BAApplicationInfo *)self setEssentialAmountDownloaded:[(BAApplicationInfo *)self essentialAmountDownloaded]+ bytes];
    return 0;
  }

  if (!manifestCopy)
  {
    [(BAApplicationInfo *)self setEssentialAmountDownloaded:[(BAApplicationInfo *)self essentialAssetDownloadAllowance]];
    return 1;
  }

  return [(BAApplicationInfo *)self _consumeAllowanceShouldStopWithAdditionalBytes:bytes downloadNecessity:0 isManifest:1];
}

- (BOOL)consumeAllowanceShouldStopWithAdditionalBytes:(unint64_t)bytes downloadNecessity:(int64_t)necessity isManifest:(BOOL)manifest
{
  manifestCopy = manifest;
  if ([(BAApplicationInfo *)self hasLaunchedApplication])
  {
    return 0;
  }

  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  v11 = [(BAApplicationInfo *)self _consumeAllowanceShouldStopWithAdditionalBytes:bytes downloadNecessity:necessity isManifest:manifestCopy];
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return v11;
}

- (BOOL)allowsBackgroundActivity
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  hasLaunchedApplication = [(BAApplicationInfo *)self hasLaunchedApplication];
  if ((hasLaunchedApplication & 1) != 0 || ![(BAApplicationInfo *)self permittedForInitialBackgroundActivity])
  {
    userForceQuitApp = [(BAApplicationInfo *)self userForceQuitApp];
    if (userForceQuitApp)
    {
      v8 = sub_1000104FC(userForceQuitApp);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        applicationIdentifier = [(BAApplicationInfo *)self applicationIdentifier];
        v15 = 138543362;
        v16 = applicationIdentifier;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Background activity denied for (%{public}@) because the app was terminated by the user.", &v15, 0xCu);
      }

      v6 = 0;
      v2 = 0;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
    v2 = 1;
  }

  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  if (v6)
  {
    if (hasLaunchedApplication)
    {
      applicationIdentifier2 = [(BAApplicationInfo *)self applicationIdentifier];
      v2 = [BAApplicationInfo applicationForIdentifierAllowsBackgroundActivity:applicationIdentifier2];
    }

    else
    {
      applicationIdentifier2 = sub_1000104FC(v11);
      if (os_log_type_enabled(applicationIdentifier2, OS_LOG_TYPE_DEFAULT))
      {
        applicationIdentifier3 = [(BAApplicationInfo *)self applicationIdentifier];
        v15 = 138543362;
        v16 = applicationIdentifier3;
        _os_log_impl(&_mh_execute_header, applicationIdentifier2, OS_LOG_TYPE_DEFAULT, "Background activity denied for (%{public}@) because the user has not launched the app.", &v15, 0xCu);
      }

      v2 = 0;
    }
  }

  return v2 & 1;
}

- (BOOL)shouldDoPeriodicCheck
{
  lastPeriodicCheckTime = [(BAApplicationInfo *)self lastPeriodicCheckTime];
  lastApplicationLaunchTime = [(BAApplicationInfo *)self lastApplicationLaunchTime];
  if (![(BAApplicationInfo *)self hasLaunchedApplication]|| ![(BAApplicationInfo *)self allowsBackgroundActivity])
  {
    goto LABEL_8;
  }

  [lastApplicationLaunchTime timeIntervalSinceNow];
  if (v5 <= -604800.0)
  {
    if (v5 > -2419200.0)
    {
      v6 = 604800.0;
      goto LABEL_7;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v6 = 86400.0;
LABEL_7:
  [lastPeriodicCheckTime timeIntervalSinceNow];
  v8 = v6 <= -v7;
LABEL_9:

  return v8;
}

- (double)extensionRuntime
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  extensionRuntimeEvents = [(BAApplicationInfo *)self extensionRuntimeEvents];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [extensionRuntimeEvents count]);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  extensionRuntimeEvents2 = [(BAApplicationInfo *)self extensionRuntimeEvents];
  v7 = [extensionRuntimeEvents2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(extensionRuntimeEvents2);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 isMoreThan24HoursAgo])
        {
          [v5 addObject:v12];
        }

        else
        {
          [v12 elapsedTime];
          v10 = v10 + v13;
        }
      }

      v8 = [extensionRuntimeEvents2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  extensionRuntimeEvents3 = [(BAApplicationInfo *)self extensionRuntimeEvents];
  [extensionRuntimeEvents3 removeObjectsInArray:v5];

  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return v10;
}

- (void)resetExtensionRuntime
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  v5 = sub_1000104FC(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    applicationIdentifier = [(BAApplicationInfo *)self applicationIdentifier];
    v9 = 138543362;
    v10 = applicationIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting extension runtime for: %{public}@", &v9, 0xCu);
  }

  extensionRuntimeEvents = [(BAApplicationInfo *)self extensionRuntimeEvents];
  [extensionRuntimeEvents removeAllObjects];

  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (void)willLaunchExtension
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  currentRuntime = [(BAApplicationInfo *)self currentRuntime];

  if (currentRuntime)
  {
    [(BAApplicationInfo *)self extensionExited];
  }

  v7 = objc_alloc_init(BAExtensionRuntime);
  extensionRuntimeEvents = [(BAApplicationInfo *)self extensionRuntimeEvents];
  [extensionRuntimeEvents addObject:v7];

  [(BAApplicationInfo *)self setCurrentRuntime:v7];
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (void)extensionExited
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  currentRuntime = [(BAApplicationInfo *)self currentRuntime];

  if (currentRuntime)
  {
    currentRuntime2 = [(BAApplicationInfo *)self currentRuntime];
    [currentRuntime2 extensionExited];

    v7 = sub_1000104FC(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      applicationIdentifier = [(BAApplicationInfo *)self applicationIdentifier];
      currentRuntime3 = [(BAApplicationInfo *)self currentRuntime];
      [currentRuntime3 elapsedTime];
      v12 = 138543618;
      v13 = applicationIdentifier;
      v14 = 2050;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Extension for app identifier %{public}@ ran for %{public}.1f seconds.", &v12, 0x16u);
    }

    [(BAApplicationInfo *)self setCurrentRuntime:0];
  }

  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (void)donePeriodicCheck
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  v4 = +[NSDate date];
  [(BAApplicationInfo *)self setLastPeriodicCheckTime:v4];

  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (void)applicationLaunched
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  if ((self->_applicationState & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    self->_applicationState = 5;
  }

  [(BAApplicationInfo *)self setHasLaunchedApplication:1];
  v4 = +[NSDate date];
  [(BAApplicationInfo *)self setLastApplicationLaunchTime:v4];

  [(BAApplicationInfo *)self setUserForceQuitApp:0];
  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];
}

- (void)performAfterNetworkConsentProvided:(id)provided queue:(id)queue
{
  providedCopy = provided;
  queueCopy = queue;
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  if (!self->_awaitingNetworkConsent)
  {
    appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
    [appInfoRecursiveLock2 unlock];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002F1C4;
    block[3] = &unk_100079838;
    v19 = providedCopy;
    dispatch_async(queueCopy, block);

    v15 = v19;
LABEL_6:

    goto LABEL_7;
  }

  blocksAwaitingNetworkConsent = [(BAApplicationInfo *)self blocksAwaitingNetworkConsent];
  v10 = objc_retainBlock(providedCopy);
  [blocksAwaitingNetworkConsent setObject:queueCopy forKey:v10];

  blocksAwaitingNetworkConsent2 = [(BAApplicationInfo *)self blocksAwaitingNetworkConsent];
  v12 = [blocksAwaitingNetworkConsent2 count];

  appInfoRecursiveLock3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock3 unlock];

  if (v12)
  {
    v15 = sub_1000104FC(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      applicationIdentifier = [(BAApplicationInfo *)self applicationIdentifier];
      *buf = 134218242;
      v21 = v12;
      v22 = 2114;
      v23 = applicationIdentifier;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "There are %lu blocks enqueued awaiting network for identifier: %{public}@", buf, 0x16u);
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (void)_debugConsumeTime:(double)time
{
  v11 = [NSDate dateWithTimeIntervalSinceNow:-time];
  if (time <= 0.0)
  {
    appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
    [appInfoRecursiveLock lock];

    extensionRuntimeEvents = [(BAApplicationInfo *)self extensionRuntimeEvents];
    [extensionRuntimeEvents removeAllObjects];

    appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
    [(BAExtensionRuntime *)appInfoRecursiveLock2 unlock];
  }

  else
  {
    appInfoRecursiveLock2 = [[BAExtensionRuntime alloc] initWithStartDate:v11];
    [(BAExtensionRuntime *)appInfoRecursiveLock2 extensionExited];
    appInfoRecursiveLock3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
    [appInfoRecursiveLock3 lock];

    extensionRuntimeEvents2 = [(BAApplicationInfo *)self extensionRuntimeEvents];
    [extensionRuntimeEvents2 addObject:appInfoRecursiveLock2];

    appInfoRecursiveLock4 = [(BAApplicationInfo *)self appInfoRecursiveLock];
    [appInfoRecursiveLock4 unlock];
  }
}

- (void)_populateAllowedDomainInfoWithArray:(id)array
{
  arrayCopy = array;
  p_allowedDownloadDomainWildcards = &self->_allowedDownloadDomainWildcards;
  [(NSMutableArray *)self->_allowedDownloadDomainWildcards removeAllObjects];
  allowedDownloadDomains = self->_allowedDownloadDomains;
  p_allowedDownloadDomains = &self->_allowedDownloadDomains;
  [(NSMutableArray *)allowedDownloadDomains removeAllObjects];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = arrayCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if (![v13 hasPrefix:{@"*", v18}])
        {
          _baassets_validUTI = [v13 _baassets_validUTI];
          v17 = p_allowedDownloadDomains;
          if (!_baassets_validUTI)
          {
            goto LABEL_12;
          }

LABEL_11:
          [*v17 addObject:_baassets_validUTI];
          goto LABEL_12;
        }

        _baassets_validUTIWithWildcard = [v13 _baassets_validUTIWithWildcard];
        _baassets_validUTI = _baassets_validUTIWithWildcard;
        if (_baassets_validUTIWithWildcard)
        {
          v16 = [_baassets_validUTIWithWildcard length];
          v17 = p_allowedDownloadDomainWildcards;
          if (v16 > 1)
          {
            goto LABEL_11;
          }
        }

LABEL_12:
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (id)debugDescription
{
  appInfoRecursiveLock = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock lock];

  applicationIdentifier = [(BAApplicationInfo *)self applicationIdentifier];
  optionalAssetDownloadAllowance = [(BAApplicationInfo *)self optionalAssetDownloadAllowance];
  essentialAssetDownloadAllowance = [(BAApplicationInfo *)self essentialAssetDownloadAllowance];
  optionalAmountDownloaded = [(BAApplicationInfo *)self optionalAmountDownloaded];
  essentialAmountDownloaded = [(BAApplicationInfo *)self essentialAmountDownloaded];
  v7 = @"YES";
  if ([(BAApplicationInfo *)self receivedInstallingNotification])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(BAApplicationInfo *)self receivedInstalledNotification])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  _serializableAllowedDomainInfo = [(BAApplicationInfo *)self _serializableAllowedDomainInfo];
  lastPeriodicCheckTime = [(BAApplicationInfo *)self lastPeriodicCheckTime];
  if (![(BAApplicationInfo *)self hasLaunchedApplication])
  {
    v7 = @"NO";
  }

  lastApplicationLaunchTime = [(BAApplicationInfo *)self lastApplicationLaunchTime];
  [(BAApplicationInfo *)self extensionRuntime];
  v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", CFSTR("Application Identifier: %@\nInitial (Optional Download Allowance: %llu\nInitial (Essential Download Allowance: %llu\nAmount Downloaded (Optional): %llu\nAmount Downloaded (Essential): %llu\nReceived Installing Notification: %@\nReceived Installed Notification: %@\nAllowed Domains: %@\nLast Check Time: %@\nApp Has Been Launched: %@\nLast Launch Time: %@\nExtension Runtime In Last 24h: %lf"), applicationIdentifier, optionalAssetDownloadAllowance, essentialAssetDownloadAllowance, optionalAmountDownloaded, essentialAmountDownloaded, v8, v9, _serializableAllowedDomainInfo, lastPeriodicCheckTime, v7, lastApplicationLaunchTime, v13);

  appInfoRecursiveLock2 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [appInfoRecursiveLock2 unlock];

  return v14;
}

@end