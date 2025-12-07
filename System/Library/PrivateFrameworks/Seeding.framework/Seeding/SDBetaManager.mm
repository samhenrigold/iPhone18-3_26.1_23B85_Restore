@interface SDBetaManager
+ (BOOL)_isEnrolledInBetaProgram;
+ (BOOL)canFileFeedbackOnThisDevice:(id *)device;
+ (BOOL)isBuildPrefix:(id)prefix greaterThanOrEqualToBuild:(id)build;
+ (id)_currentBetaProgram;
+ (id)sharedManager;
+ (void)_currentBetaProgram;
+ (void)canFileFeedbackOnThisDeviceWithCompletion:(id)completion;
- (BOOL)_canCurrentDeviceEnrollInBetaUpdates;
- (BOOL)_hasMigratedProfiles;
- (BOOL)_isEnrolledInBetaProgram;
- (BOOL)_isEnrollmentAllowedByDeviceManagement_legacy;
- (BOOL)_isUsingSeedingAppleID;
- (BOOL)_unenrollFromBetaProgramWithUserIdentifier:(id)identifier;
- (BOOL)canCurrentDeviceEnrollInBetaUpdates;
- (BOOL)isCacheValidForPlatforms:(unint64_t)platforms withMDMConfigurationDate:(id)date;
- (BOOL)isCurrentDeviceUsingSeedingAppleID;
- (BOOL)isMigratingFromProfiles;
- (id)_assetServerURLString;
- (id)_brainServerURLString;
- (id)_deviceAppleIDUsername;
- (id)_seedingAppleIDUsername;
- (id)availableBetaProgramsForPlatforms:(unint64_t)platforms;
- (id)deviceAppleIDUsernameForCurrentDevice;
- (id)enrolledBetaProgramForCurrentDevice;
- (id)enrollmentMetadataForCurrentDevice;
- (id)membershipURLForPlatforms:(unint64_t)platforms;
- (id)migrateURLForAssetAudience:(id)audience;
- (id)parseProgramsResponse:(id)response platforms:(unint64_t)platforms shouldCache:(BOOL)cache skipsBuildMatching:(BOOL)matching;
- (id)seedingAppleIDUsernameForCurrentDevice;
- (id)serverURLWithPath:(id)path arguments:(id)arguments;
- (id)verifyURLForAssetAudience:(id)audience programID:(int64_t)d;
- (id)verifyURLForCatalog:(id)catalog;
- (void)_changeFBAVisibilityWithUserIdentifier:(id)identifier isVisible:(BOOL)visible;
- (void)_deleteSeedingAppleAccountWithCompletion:(id)completion;
- (void)_enrollUsingSeedingConfiguration:(id)configuration userIdentifier:(id)identifier;
- (void)_finallyQueryProgramsForSystemAccountsWithPlatforms:(unint64_t)platforms credentials:(id)credentials betaEnrollmentTokens:(id)tokens shouldSavePrograms:(BOOL)programs disableBuildPrefixMatching:(BOOL)matching language:(id)language completion:(id)completion;
- (void)_markMigrationComplete;
- (void)_migrateFromProfilesIfNeeded;
- (void)_queryProgramsForSystemAccountsWithPlatforms:(unint64_t)platforms disableBuildPrefixMatching:(BOOL)matching language:(id)language completion:(id)completion;
- (void)_resetAssetAudience;
- (void)_saveAppleAccountIdentifier:(id)identifier;
- (void)_saveAppleAccountIdentifierWithAlternateDSID:(id)d completion:(id)completion;
- (void)_saveBetaProgram:(id)program;
- (void)_setAssetAudienceString:(id)string;
- (void)_setAssetServerURLString:(id)string;
- (void)_setBrainServerURLString:(id)string;
- (void)_setMemberEnrolled:(BOOL)enrolled;
- (void)cachePrograms:(id)programs forPlatforms:(unint64_t)platforms;
- (void)canFileFeedbackOnDevice:(id)device completion:(id)completion;
- (void)deleteSeedingAppleAccountForCurrentDeviceWithCompletion:(id)completion;
- (void)enrollCurrentDeviceWithEnrollmentMetadata:(id)metadata completion:(id)completion;
- (void)enrollDevice:(id)device inBetaProgram:(id)program completion:(id)completion;
- (void)enrollDevice:(id)device withEnrollmentMetadata:(id)metadata completion:(id)completion;
- (void)enrollInProgramWithToken:(id)token userIdentifier:(id)identifier language:(id)language shouldSaveToken:(BOOL)saveToken completion:(id)completion;
- (void)enrolledBetaProgramForDevice:(id)device completion:(id)completion;
- (void)enrollmentMetadataForCurrentDeviceWithCompletion:(id)completion;
- (void)enrollmentMetadataForDevice:(id)device completion:(id)completion;
- (void)ensureThisRunsAfterMigration:(id)migration;
- (void)getAppleIDAuthenticationAccountForAlternateDSID:(id)d attempt:(int64_t)attempt completion:(id)completion;
- (void)getMigrationProgramForAssetAudience:(id)audience completion:(id)completion;
- (void)invalidateCache;
- (void)invalidateCacheWithCompletion:(id)completion;
- (void)isDeviceEnrolledInBetaProgram:(id)program completion:(id)completion;
- (void)queryProgramsForSystemAccountsWithPlatforms:(unint64_t)platforms disableBuildPrefixMatching:(BOOL)matching completion:(id)completion;
- (void)saveAppleAccountIdentifierWithAlternateDSIDForCurrentDevice:(id)device completion:(id)completion;
- (void)seedingAppleIDUsernameForCurrentDeviceWithCompletion:(id)completion;
- (void)setIsMigratingFromProfiles:(BOOL)profiles;
- (void)setProfilesEnabledFromHeaderInResponse:(id)response;
- (void)unenrollDevice:(id)device completion:(id)completion;
- (void)validateBetaEnrollmentTokens:(id)tokens errorHandler:(id)handler;
- (void)verifyAssetAudience:(id)audience programID:(int64_t)d accountID:(id)iD skipEnrollmentCheck:(BOOL)check withCompletion:(id)completion;
- (void)verifyAssetAudience:(id)audience programID:(int64_t)d accountID:(id)iD withCompletion:(id)completion;
- (void)verifyAssetAudience:(id)audience programID:(int64_t)d withCompletion:(id)completion;
- (void)verifyCatalog:(id)catalog withCompletion:(id)completion;
@end

@implementation SDBetaManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SDBetaManager sharedManager];
  }

  v3 = sharedManager__self;

  return v3;
}

uint64_t __30__SDBetaManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(SDBetaManager);
  v1 = sharedManager__self;
  sharedManager__self = v0;

  v2 = sharedManager__self;

  return [v2 setIsMigratingFromProfiles:0];
}

- (id)verifyURLForCatalog:(id)catalog
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"catalog_url";
  v10[0] = catalog;
  v4 = MEMORY[0x277CBEAC0];
  catalogCopy = catalog;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SDBetaManager *)self serverURLWithPath:@"/catalog/verify" arguments:v6];

  return v7;
}

- (id)verifyURLForAssetAudience:(id)audience programID:(int64_t)d
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"asset_audience";
  v13[1] = @"id";
  v14[0] = audience;
  v6 = MEMORY[0x277CCABB0];
  audienceCopy = audience;
  v8 = [v6 numberWithInteger:d];
  stringValue = [v8 stringValue];
  v14[1] = stringValue;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [(SDBetaManager *)self serverURLWithPath:@"/catalog/verify" arguments:v10];

  return v11;
}

- (id)migrateURLForAssetAudience:(id)audience
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"asset_audience";
  v10[0] = audience;
  v4 = MEMORY[0x277CBEAC0];
  audienceCopy = audience;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SDBetaManager *)self serverURLWithPath:@"/catalog/migrate" arguments:v6];

  return v7;
}

- (id)membershipURLForPlatforms:(unint64_t)platforms
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"platforms";
  v4 = SDStringArrayFromPlatforms(platforms);
  v5 = [v4 componentsJoinedByString:{@", "}];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [(SDBetaManager *)self serverURLWithPath:@"/membership/programs" arguments:v6];

  return v7;
}

- (id)serverURLWithPath:(id)path arguments:(id)arguments
{
  v35 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  argumentsCopy = arguments;
  v7 = +[SDHTTPClient sharedInstance];
  baseURL = [v7 baseURL];

  v9 = [MEMORY[0x277CCACE0] componentsWithURL:baseURL resolvingAgainstBaseURL:1];
  path = [v9 path];
  v11 = [@"/api/v4" stringByAppendingPathComponent:path];

  if (v11)
  {
    v12 = [v11 stringByAppendingPathComponent:pathCopy];
    [v9 setPath:v12];

    if (!argumentsCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [v9 setPath:pathCopy];
    if (!argumentsCopy)
    {
      goto LABEL_13;
    }
  }

  v28 = v9;
  v29 = pathCopy;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(argumentsCopy, "count", v11)}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  allKeys = [argumentsCopy allKeys];
  v15 = [allKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        v20 = MEMORY[0x277CCAD18];
        v21 = [argumentsCopy objectForKeyedSubscript:v19];
        v22 = [v20 queryItemWithName:v19 value:v21];

        [v13 addObject:v22];
      }

      v16 = [allKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v16);
  }

  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v9 = v28;
  [v28 setQueryItems:v23];

  pathCopy = v29;
  v11 = v27;
LABEL_13:
  v24 = [v9 URL];
  v25 = [v24 copy];

  return v25;
}

- (void)invalidateCache
{
  v3 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating program cache", v4, 2u);
  }

  [(SDBetaManager *)self setCachedPrograms:0];
  [(SDBetaManager *)self setCachedPlatform:0];
  [(SDBetaManager *)self setLastCached:0];
}

- (void)invalidateCacheWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v11 = "[SDBetaManager invalidateCacheWithCompletion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  [(SDBetaManager *)self invalidateCache];
  v6 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__SDBetaManager_invalidateCacheWithCompletion___block_invoke;
  v8[3] = &unk_2787CBD78;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 invalidateCacheWithCompletion:v8];
}

- (BOOL)isCacheValidForPlatforms:(unint64_t)platforms withMDMConfigurationDate:(id)date
{
  v35 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  lastCached = [(SDBetaManager *)self lastCached];
  v8 = lastCached;
  v9 = 0;
  if (dateCopy && lastCached)
  {
    lastCached2 = [(SDBetaManager *)self lastCached];
    v9 = [lastCached2 compare:dateCopy] == -1;
  }

  cachedPrograms = [(SDBetaManager *)self cachedPrograms];
  if (cachedPrograms)
  {
    cachedPrograms2 = [(SDBetaManager *)self cachedPrograms];
    v13 = [cachedPrograms2 count] != 0;
  }

  else
  {
    v13 = 0;
  }

  cachedPlatform = [(SDBetaManager *)self cachedPlatform];
  lastCached3 = [(SDBetaManager *)self lastCached];
  if (lastCached3)
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    lastCached4 = [(SDBetaManager *)self lastCached];
    [v16 timeIntervalSinceDate:lastCached4];
    v19 = v18 < 300.0;
  }

  else
  {
    v19 = 0;
  }

  v20 = +[SDSeedingLogging betaHandle];
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v21)
    {
      lastCached5 = [(SDBetaManager *)self lastCached];
      v29 = 138543618;
      v30 = lastCached5;
      v31 = 2114;
      v32 = dateCopy;
      _os_log_impl(&dword_22E41E000, v20, OS_LOG_TYPE_DEFAULT, "MDM configuration invalidated local cache created on [%{public}@]. MDM applied date [%{public}@]", &v29, 0x16u);
    }

    v23 = 0;
  }

  else
  {
    if (v21)
    {
      v24 = @"false";
      if (v13)
      {
        v25 = @"true";
      }

      else
      {
        v25 = @"false";
      }

      if (cachedPlatform == platforms)
      {
        v26 = @"true";
      }

      else
      {
        v26 = @"false";
      }

      v29 = 138543874;
      v30 = v25;
      v31 = 2114;
      v32 = v26;
      if (v19)
      {
        v24 = @"true";
      }

      v33 = 2114;
      v34 = v24;
      _os_log_impl(&dword_22E41E000, v20, OS_LOG_TYPE_DEFAULT, "IsCacheValid: hasPrograms [%{public}@], hasMatchingPlatform [%{public}@], isWithinTimeout: [%{public}@]", &v29, 0x20u);
    }

    v27 = cachedPlatform == platforms && v13;
    v23 = v27 && v19;
  }

  return v23;
}

- (BOOL)canCurrentDeviceEnrollInBetaUpdates
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = 136446210;
    v7 = "[SDBetaManager canCurrentDeviceEnrollInBetaUpdates]";
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "%{public}s", &v6, 0xCu);
  }

  v3 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  canCurrentDeviceEnrollInBetaProgram = [v3 canCurrentDeviceEnrollInBetaProgram];

  return canCurrentDeviceEnrollInBetaProgram;
}

- (BOOL)_canCurrentDeviceEnrollInBetaUpdates
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = SeedingDefaults(self);
  v4 = [v3 BOOLForKey:@"AlwaysShowBetaUpdates"];

  v5 = [(SDBetaManager *)self availableBetaProgramsForPlatforms:+[SDDevice currentDevicePlatform]];
  v6 = [v5 count];

  _isEnrolledInBetaProgram = [(SDBetaManager *)self _isEnrolledInBetaProgram];
  _isEnrollmentAllowedByDeviceManagement_legacy = [(SDBetaManager *)self _isEnrollmentAllowedByDeviceManagement_legacy];
  v9 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"NO";
    if (v4)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    if (_isEnrolledInBetaProgram)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v15 = 138544130;
    v16 = v11;
    if (v6)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v17 = 2114;
    v18 = v12;
    v19 = 2114;
    v20 = v13;
    if (_isEnrollmentAllowedByDeviceManagement_legacy)
    {
      v10 = @"YES";
    }

    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_22E41E000, v9, OS_LOG_TYPE_INFO, "Can Enroll? Override: %{public}@ || Enrolled: %{public}@ || HasPrograms: %{public}@ && isMDMAllowed: %{public}@", &v15, 0x2Au);
  }

  return (v4 & 1) != 0 || _isEnrolledInBetaProgram || v6 != 0 && _isEnrollmentAllowedByDeviceManagement_legacy;
}

- (BOOL)_isEnrollmentAllowedByDeviceManagement_legacy
{
  v2 = SeedingDefaults(self);
  v3 = [v2 BOOLForKey:@"RestrictEnrollment"];

  if (v3)
  {
    return 0;
  }

  return +[SDProfileUtilities isProfileInstallationAllowed];
}

- (void)queryProgramsForSystemAccountsWithPlatforms:(unint64_t)platforms disableBuildPrefixMatching:(BOOL)matching completion:(id)completion
{
  matchingCopy = matching;
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v16 = "[SDBetaManager queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:completion:]";
    _os_log_impl(&dword_22E41E000, v9, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v10 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__SDBetaManager_queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_completion___block_invoke;
  v12[3] = &unk_2787CBE20;
  v13 = completionCopy;
  platformsCopy = platforms;
  v12[4] = self;
  v11 = completionCopy;
  [v10 queryProgramsForSystemAccountsWithPlatforms:platforms disableBuildPrefixMatching:matchingCopy completion:v12];
}

void __99__SDBetaManager_queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 description];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "programs returned: %{public}@", &v6, 0xCu);
  }

  [*(a1 + 32) cachePrograms:v3 forPlatforms:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
}

- (void)_queryProgramsForSystemAccountsWithPlatforms:(unint64_t)platforms disableBuildPrefixMatching:(BOOL)matching language:(id)language completion:(id)completion
{
  v77 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  completionCopy = completion;
  v7 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[SDBetaManager _queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}s", &buf, 0xCu);
  }

  v8 = [SDPersistence loadMDMConfigurationWithError:0];
  v48 = v8;
  if (!v8)
  {
    v9 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22E41E000, v9, OS_LOG_TYPE_INFO, "No MDM configuration found", &buf, 2u);
    }

    v8 = 0;
  }

  configurationDate = [v8 configurationDate];
  v11 = [(SDBetaManager *)self isCacheValidForPlatforms:platforms withMDMConfigurationDate:configurationDate];

  v12 = +[SDSeedingLogging betaHandle];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (v13)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = platforms;
      _os_log_impl(&dword_22E41E000, v12, OS_LOG_TYPE_DEFAULT, "Fetching new program list from server for platform [%ld] (resetting cache).", &buf, 0xCu);
    }

    [(SDBetaManager *)self setCachedPlatform:0];
    [(SDBetaManager *)self setLastCached:0];
    [(SDBetaManager *)self setCachedPrograms:MEMORY[0x277CBEBF8]];
    context = objc_autoreleasePoolPush();
    group = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v73 = 0x3032000000;
    v74 = __Block_byref_object_copy__1;
    v75 = __Block_byref_object_dispose__1;
    v76 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
    if (!v48)
    {
      v17 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v70 = 0;
        _os_log_impl(&dword_22E41E000, v17, OS_LOG_TYPE_INFO, "No MDM configuration found", v70, 2u);
      }

      v16 = 0;
      v39 = 0;
      goto LABEL_29;
    }

    if ([v48 policy] == 3)
    {
      v15 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v70 = 0;
        _os_log_impl(&dword_22E41E000, v15, OS_LOG_TYPE_INFO, "MDM configuration AlwaysOff. Returning empty set", v70, 2u);
      }

      (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEBF8], 0);
      v16 = 0;
      goto LABEL_58;
    }

    restrictUserPrograms = [v48 restrictUserPrograms];
    tokens = [v48 tokens];
    v16 = tokens;
    if (tokens)
    {
      v39 = [tokens count] != 0;
      if ((restrictUserPrograms & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v39 = 0;
      if (!restrictUserPrograms)
      {
        v16 = 0;
LABEL_29:
        v23 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [SDBetaManager _queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:];
        }

        defaultStore = [MEMORY[0x277CB8F48] defaultStore];
        aida_accountForPrimaryiCloudAccount = [defaultStore aida_accountForPrimaryiCloudAccount];
        v50 = defaultStore;
        v25 = SeedingDefaults(aida_accountForPrimaryiCloudAccount);
        v38 = [v25 stringForKey:@"AppleAccountIdentifier"];

        if (v38)
        {
          v40 = [v50 accountWithIdentifier:?];
        }

        else
        {
          v40 = 0;
        }

        v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
        if (aida_accountForPrimaryiCloudAccount)
        {
          v27 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *v70 = 0;
            _os_log_impl(&dword_22E41E000, v27, OS_LOG_TYPE_DEFAULT, "Will use iCloud account", v70, 2u);
          }

          [v26 addObject:aida_accountForPrimaryiCloudAccount];
        }

        if (v40)
        {
          v28 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *v70 = 0;
            _os_log_impl(&dword_22E41E000, v28, OS_LOG_TYPE_DEFAULT, "Will use Seeding account", v70, 2u);
          }

          [v26 addObject:v40];
        }

        v29 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v26 count];
          *v70 = 134217984;
          v71 = v30;
          _os_log_impl(&dword_22E41E000, v29, OS_LOG_TYPE_DEFAULT, "Fetched accounts [%lu]", v70, 0xCu);
        }

        if ([v26 count] == 0 && !v39)
        {
          v37 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [SDBetaManager _queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:];
          }

          (*(completionCopy + 2))(completionCopy, 0, 1);
          v36 = v50;
          goto LABEL_57;
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        obj = v26;
        v31 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
        if (v31)
        {
          v32 = *v66;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v66 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v34 = *(*(&v65 + 1) + 8 * i);
              v35 = objc_autoreleasePoolPush();
              dispatch_group_enter(group);
              v61[0] = MEMORY[0x277D85DD0];
              v61[1] = 3221225472;
              v61[2] = __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke;
              v61[3] = &unk_2787CBE48;
              v61[4] = v34;
              v62 = group;
              v63 = v50;
              p_buf = &buf;
              [v34 fetchCredentialTokenWithCompletion:v61];

              objc_autoreleasePoolPop(v35);
            }

            v31 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
          }

          while (v31);
        }

        v22 = 0;
        v21 = group;
LABEL_53:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke_358;
        block[3] = &unk_2787CBE70;
        v56 = &buf;
        v58 = v22;
        v59 = v39;
        v55 = completionCopy;
        block[4] = self;
        platformsCopy = platforms;
        v16 = v16;
        v53 = v16;
        matchingCopy = matching;
        v54 = languageCopy;
        dispatch_group_notify(v21, MEMORY[0x277D85CD0], block);

        v36 = v55;
LABEL_57:

LABEL_58:
        _Block_object_dispose(&buf, 8);

        objc_autoreleasePoolPop(context);
        goto LABEL_59;
      }
    }

    v20 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [SDBetaManager _queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:];
    }

    v21 = group;
    dispatch_group_enter(group);
    dispatch_group_leave(group);
    v22 = 1;
    goto LABEL_53;
  }

  if (v13)
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = platforms;
    _os_log_impl(&dword_22E41E000, v12, OS_LOG_TYPE_DEFAULT, "Query for platforms [%ld] was cached, reusing answer.", &buf, 0xCu);
  }

  cachedPrograms = [(SDBetaManager *)self cachedPrograms];
  (*(completionCopy + 2))(completionCopy, cachedPrograms, 0);

LABEL_59:
}

void __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 48) credentialForAccount:*(a1 + 32) serviceID:@"com.apple.gs.beta.auth"];
    v5 = [*(a1 + 32) aida_alternateDSID];
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_INFO, "altDSID:     %@", buf, 0xCu);
    }

    v7 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) username];
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_INFO, "username:    %@", buf, 0xCu);
    }

    v9 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v4 keysForCredentialItems];
      v11 = [v10 count];
      *buf = 134217984;
      v21 = v11;
      _os_log_impl(&dword_22E41E000, v9, OS_LOG_TYPE_INFO, "credentials: %ld", buf, 0xCu);
    }

    v12 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v4 token];
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_22E41E000, v12, OS_LOG_TYPE_INFO, "cred token:  %@", buf, 0xCu);
    }

    if (v5)
    {
      v14 = *(*(*(a1 + 56) + 8) + 40);
      v18[0] = @"credential_token";
      v18[1] = @"adsid_token";
      v19[0] = v3;
      v19[1] = v5;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
      [v14 addObject:v15];
    }

    else
    {
      v15 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke_cold_1((a1 + 32));
      }
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v16 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138412290;
      v21 = v17;
      _os_log_impl(&dword_22E41E000, v16, OS_LOG_TYPE_DEFAULT, "No credential token for account %@", buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 40));
  }
}

uint64_t __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke_358(uint64_t a1)
{
  if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    return [*(a1 + 32) _finallyQueryProgramsForSystemAccountsWithPlatforms:*(a1 + 72) credentials:*(*(*(a1 + 64) + 8) + 40) betaEnrollmentTokens:*(a1 + 40) shouldSavePrograms:1 disableBuildPrefixMatching:*(a1 + 82) language:*(a1 + 48) completion:*(a1 + 56)];
  }

  if (*(a1 + 80) == 1)
  {
    v2 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_DEFAULT, "Not using AppleID accounts to query for programs.", buf, 2u);
    }

    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
LABEL_6:

    return [*(a1 + 32) _finallyQueryProgramsForSystemAccountsWithPlatforms:*(a1 + 72) credentials:*(*(*(a1 + 64) + 8) + 40) betaEnrollmentTokens:*(a1 + 40) shouldSavePrograms:1 disableBuildPrefixMatching:*(a1 + 82) language:*(a1 + 48) completion:*(a1 + 56)];
  }

  v6 = *(a1 + 81);
  v7 = +[SDSeedingLogging betaHandle];
  v4 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "Proceeding without account info.", v8, 2u);
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke_358_cold_1();
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)validateBetaEnrollmentTokens:(id)tokens errorHandler:(id)handler
{
  tokensCopy = tokens;
  handlerCopy = handler;
  if (tokensCopy && [tokensCopy count])
  {
    v8 = +[SDDevice devicePlatform];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__SDBetaManager_validateBetaEnrollmentTokens_errorHandler___block_invoke;
    v18[3] = &unk_2787CBE98;
    v20 = handlerCopy;
    v19 = tokensCopy;
    [(SDBetaManager *)self _finallyQueryProgramsForSystemAccountsWithPlatforms:v8 credentials:0 betaEnrollmentTokens:v19 shouldSavePrograms:0 disableBuildPrefixMatching:0 language:0 completion:v18];

    v9 = v20;
  }

  else
  {
    v10 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v10 validateBetaEnrollmentTokens:v11 errorHandler:v12, v13, v14, v15, v16, v17];
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:15 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

void __59__SDBetaManager_validateBetaEnrollmentTokens_errorHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__SDBetaManager_validateBetaEnrollmentTokens_errorHandler___block_invoke_cold_1();
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:a3 userInfo:0];
LABEL_5:
    (*(*(a1 + 40) + 16))();
    goto LABEL_34;
  }

  if (![v5 count])
  {
    v30 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      __59__SDBetaManager_validateBetaEnrollmentTokens_errorHandler___block_invoke_cold_2();
    }

    v31 = SDMDMConfiguratorErrorWithType(3uLL);
    v8 = SDMDMConfiguratorErrorAddInvalidTokens(v31, *(a1 + 32));

    goto LABEL_5;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        v15 = [v14 betaEnrollmentTokens];

        if (v15)
        {
          v16 = [v14 betaEnrollmentTokens];
          v17 = [v16 allObjects];
          [v8 addObjectsFromArray:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v11);
  }

  v18 = [MEMORY[0x277CBEB58] setWithSet:*(a1 + 32)];
  [v18 minusSet:v8];
  if ([v18 count])
  {
    v33 = a1;
    v34 = v6;
    v19 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v18 count];
      *buf = 134217984;
      v45 = v20;
      _os_log_impl(&dword_22E41E000, v19, OS_LOG_TYPE_DEFAULT, "Found [%lu] invalid BETs", buf, 0xCu);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = v18;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v36;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v35 + 1) + 8 * j);
          v27 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v45 = v26;
            _os_log_impl(&dword_22E41E000, v27, OS_LOG_TYPE_DEFAULT, "Invalid BET: [%{public}@]", buf, 0xCu);
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v23);
    }

    v28 = SDMDMConfiguratorErrorWithType(3uLL);
    v29 = SDMDMConfiguratorErrorAddInvalidTokens(v28, v21);

    (*(*(v33 + 40) + 16))();
    v6 = v34;
    v18 = v32;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

LABEL_34:
}

- (void)_finallyQueryProgramsForSystemAccountsWithPlatforms:(unint64_t)platforms credentials:(id)credentials betaEnrollmentTokens:(id)tokens shouldSavePrograms:(BOOL)programs disableBuildPrefixMatching:(BOOL)matching language:(id)language completion:(id)completion
{
  v67 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  tokensCopy = tokens;
  languageCopy = language;
  completionCopy = completion;
  v11 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v66 = "[SDBetaManager _finallyQueryProgramsForSystemAccountsWithPlatforms:credentials:betaEnrollmentTokens:shouldSavePrograms:disableBuildPrefixMatching:language:completion:]";
    _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}s", buf, 0xCu);
  }

  v12 = [tokensCopy count] == 0;
  v13 = +[SDSeedingLogging betaHandle];
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v13, OS_LOG_TYPE_DEFAULT, "Querying programs", buf, 2u);
    }
  }

  else
  {
    if (v14)
    {
      v15 = [tokensCopy count];
      *buf = 134217984;
      v66 = v15;
      _os_log_impl(&dword_22E41E000, v13, OS_LOG_TYPE_DEFAULT, "Querying programs with [%ld] Beta Enrollment Tokens", buf, 0xCu);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v13 = tokensCopy;
    v16 = [v13 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v16)
    {
      v17 = *v61;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v61 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v60 + 1) + 8 * i);
          v20 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v66 = v19;
            _os_log_impl(&dword_22E41E000, v20, OS_LOG_TYPE_DEFAULT, "Will use BET: [%{public}@]", buf, 0xCu);
          }
        }

        v16 = [v13 countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v16);
    }
  }

  currentDevice = [MEMORY[0x277CF0218] currentDevice];
  uniqueDeviceIdentifier = [currentDevice uniqueDeviceIdentifier];
  serverFriendlyDescription = [currentDevice serverFriendlyDescription];
  v21 = MEMORY[0x277CCAB70];
  v22 = [(SDBetaManager *)self membershipURLForPlatforms:platforms];
  v23 = [v21 requestWithURL:v22];

  v24 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"com.apple.gs.beta.auth"];
  v25 = MEMORY[0x277CBEB38];
  allHTTPHeaderFields = [v23 allHTTPHeaderFields];
  v27 = [v25 dictionaryWithDictionary:allHTTPHeaderFields];

  [v27 setValue:@"application/json" forKey:@"Content-Type"];
  [v27 setValue:@"application/json" forKey:@"Accept"];
  [v27 setValue:uniqueDeviceIdentifier forKey:@"X-Mme-Device-Id"];
  [v27 setValue:@"AAAABQAAABAxmM8oXLJsHORxxxxxxxxxAAAAAw==" forKey:@"X-Apple-I-MD"];
  [v27 setValue:serverFriendlyDescription forKey:@"X-MMe-Client-Info"];
  if (languageCopy)
  {
    [v27 setValue:languageCopy forKey:@"Accept-Language"];
  }

  [v23 setAllHTTPHeaderFields:v27];
  v28 = +[SDHTTPClient sharedInstance];
  urlSession = [v28 urlSession];

  configuration = [urlSession configuration];
  [configuration set_appleIDContext:v24];
  v30 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v66 = v27;
    _os_log_impl(&dword_22E41E000, v30, OS_LOG_TYPE_INFO, "headers: %@", buf, 0xCu);
  }

  v31 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    hTTPAdditionalHeaders = [configuration HTTPAdditionalHeaders];
    *buf = 138543362;
    v66 = hTTPAdditionalHeaders;
    _os_log_impl(&dword_22E41E000, v31, OS_LOG_TYPE_INFO, "Additional Headers: %{public}@", buf, 0xCu);
  }

  [configuration set_appleIDContext:v24];
  v33 = MEMORY[0x277CCAD30];
  v34 = +[SDHTTPClient sharedInstance];
  v35 = [v33 sessionWithConfiguration:configuration delegate:v34 delegateQueue:0];

  v36 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  if (tokensCopy)
  {
    allObjects = [tokensCopy allObjects];
    [v36 setObject:allObjects forKeyedSubscript:@"beta_enrollment_tokens"];
  }

  if (credentialsCopy)
  {
    [v36 setObject:credentialsCopy forKeyedSubscript:@"tokens"];
  }

  v38 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [SDBetaManager _finallyQueryProgramsForSystemAccountsWithPlatforms:v23 credentials:v38 betaEnrollmentTokens:? shouldSavePrograms:? disableBuildPrefixMatching:? language:? completion:?];
  }

  v39 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    [SDBetaManager _finallyQueryProgramsForSystemAccountsWithPlatforms:credentials:betaEnrollmentTokens:shouldSavePrograms:disableBuildPrefixMatching:language:completion:];
  }

  v40 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v36 options:1 error:0];
  [v23 setHTTPBody:v40];
  [v23 setHTTPMethod:@"POST"];
  objc_initWeak(buf, self);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __168__SDBetaManager__finallyQueryProgramsForSystemAccountsWithPlatforms_credentials_betaEnrollmentTokens_shouldSavePrograms_disableBuildPrefixMatching_language_completion___block_invoke;
  v55[3] = &unk_2787CBEC0;
  v41 = completionCopy;
  v55[4] = self;
  v56 = v41;
  matchingCopy = matching;
  objc_copyWeak(v57, buf);
  v57[1] = platforms;
  programsCopy = programs;
  v42 = [v35 dataTaskWithRequest:v23 completionHandler:v55];
  [v42 resume];

  objc_destroyWeak(v57);
  objc_destroyWeak(buf);
}

void __168__SDBetaManager__finallyQueryProgramsForSystemAccountsWithPlatforms_credentials_betaEnrollmentTokens_shouldSavePrograms_disableBuildPrefixMatching_language_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 allHeaderFields];
    v13 = [v12 objectForKeyedSubscript:@"X-Request-Id"];
    *buf = 138543362;
    v67 = v13;
    _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_DEFAULT, "/programs X-Request-Id: %{public}@", buf, 0xCu);
  }

  if (!v9)
  {
    [*(a1 + 32) setProfilesEnabledFromHeaderInResponse:v10];
    v64 = 0;
    v15 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v64];
    v16 = v64;
    if (!v15)
    {
      v19 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __168__SDBetaManager__finallyQueryProgramsForSystemAccountsWithPlatforms_credentials_betaEnrollmentTokens_shouldSavePrograms_disableBuildPrefixMatching_language_completion___block_invoke_cold_3();
      }

      (*(*(a1 + 40) + 16))();
      goto LABEL_54;
    }

    v17 = [v15 objectForKey:@"programs"];
    if (!v17)
    {
      v20 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __168__SDBetaManager__finallyQueryProgramsForSystemAccountsWithPlatforms_credentials_betaEnrollmentTokens_shouldSavePrograms_disableBuildPrefixMatching_language_completion___block_invoke_cold_2();
      }

      (*(*(a1 + 40) + 16))();
      goto LABEL_53;
    }

    v53 = v7;
    v51 = v15;
    v52 = v10;
    v50 = v16;
    if (*(a1 + 64))
    {
      v18 = 1;
    }

    else
    {
      v21 = SDIsInternalInstall();
      if (v21)
      {
        v22 = SeedingDefaults(v21);
        v18 = [v22 BOOLForKey:@"DisableBuildFiltering"];
      }

      else
      {
        v18 = 0;
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v54 = a1;
    v49 = v17;
    v24 = [WeakRetained parseProgramsResponse:v17 platforms:*(a1 + 56) shouldCache:*(a1 + 65) skipsBuildMatching:v18];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v24;
    v25 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v61;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v61 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v60 + 1) + 8 * i);
          v30 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [v29 title];
            v32 = [v29 programID];
            v33 = [v29 assetAudience];
            *buf = 138543874;
            v67 = v31;
            v68 = 2048;
            v69 = v32;
            v70 = 2114;
            v71 = v33;
            _os_log_impl(&dword_22E41E000, v30, OS_LOG_TYPE_DEFAULT, "Loaded program [%{public}@ - %lu] assetAudience: [%{public}@]", buf, 0x20u);
          }
        }

        v26 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
      }

      while (v26);
    }

    v34 = v54;
    v35 = *(v54 + 65);
    v36 = +[SDSeedingLogging betaHandle];
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
    if (v35)
    {
      if (v37)
      {
        *buf = 0;
        _os_log_impl(&dword_22E41E000, v36, OS_LOG_TYPE_INFO, "Saving programs", buf, 2u);
      }

      v36 = [objc_opt_class() _currentBetaProgram];
      v7 = v53;
      if (v36)
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v38 = obj;
        v39 = [v38 countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v57;
          while (2)
          {
            for (j = 0; j != v40; ++j)
            {
              if (*v57 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v56 + 1) + 8 * j);
              v44 = [v43 programID];
              if (v44 == [v36 programID])
              {
                v45 = +[SDSeedingLogging betaHandle];
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  v46 = [v36 description];
                  v47 = [v43 description];
                  *buf = 138543618;
                  v67 = v46;
                  v68 = 2114;
                  v69 = v47;
                  _os_log_impl(&dword_22E41E000, v45, OS_LOG_TYPE_DEFAULT, "Replacing current program %{public}@ with new program %{public}@", buf, 0x16u);
                }

                [*(v54 + 32) _saveBetaProgram:v43];
                goto LABEL_49;
              }
            }

            v40 = [v38 countByEnumeratingWithState:&v56 objects:v65 count:16];
            if (v40)
            {
              continue;
            }

            break;
          }
        }

LABEL_49:

        v10 = v52;
        v34 = v54;
        goto LABEL_50;
      }
    }

    else
    {
      if (v37)
      {
        *buf = 0;
        _os_log_impl(&dword_22E41E000, v36, OS_LOG_TYPE_INFO, "Not saving programs at this time", buf, 2u);
      }

      v7 = v53;
    }

    v10 = v52;
LABEL_50:
    v16 = v50;
    v15 = v51;
    v17 = v49;

    v48 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v67 = v49;
      _os_log_impl(&dword_22E41E000, v48, OS_LOG_TYPE_DEFAULT, "JSON response: %{private}@", buf, 0xCu);
    }

    (*(*(v34 + 40) + 16))();
LABEL_53:

LABEL_54:
    goto LABEL_55;
  }

  v14 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __168__SDBetaManager__finallyQueryProgramsForSystemAccountsWithPlatforms_credentials_betaEnrollmentTokens_shouldSavePrograms_disableBuildPrefixMatching_language_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
LABEL_55:
}

- (void)cachePrograms:(id)programs forPlatforms:(unint64_t)platforms
{
  v11 = *MEMORY[0x277D85DE8];
  programsCopy = programs;
  v7 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    platformsCopy = platforms;
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "Saving programs to cache for platforms [%ld].", &v9, 0xCu);
  }

  v8 = [MEMORY[0x277CBEAA8] now];
  [(SDBetaManager *)self setLastCached:v8];

  [(SDBetaManager *)self setCachedPlatform:platforms];
  [(SDBetaManager *)self setCachedPrograms:programsCopy];
}

- (id)parseProgramsResponse:(id)response platforms:(unint64_t)platforms shouldCache:(BOOL)cache skipsBuildMatching:(BOOL)matching
{
  matchingCopy = matching;
  cacheCopy = cache;
  v39 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = +[SDDevice osBuild];
    v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(responseCopy, "count")}];
    if (matchingCopy)
    {
      v10 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_DEFAULT, "Skipping build prefix filtering", buf, 2u);
      }
    }

    v25 = cacheCopy;
    platformsCopy = platforms;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = responseCopy;
    v11 = responseCopy;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
    selfCopy2 = self;
    if (v12)
    {
      v14 = v12;
      v15 = *v31;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [SDBetaProgram betaProgramWithJSON:*(*(&v30 + 1) + 8 * i)];
          if (v17)
          {
            if (matchingCopy || (v18 = objc_opt_class(), [v17 buildPrefix], v19 = objc_claimAutoreleasedReturnValue(), LODWORD(v18) = objc_msgSend(v18, "isBuildPrefix:greaterThanOrEqualToBuild:", v19, v28), v19, v18))
            {
              [v29 addObject:v17];
            }

            else
            {
              v20 = +[SDSeedingLogging betaHandle];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [v17 description];
                buildPrefix = [v17 buildPrefix];
                *buf = 138543618;
                v35 = v21;
                v36 = 2114;
                v37 = buildPrefix;
                _os_log_impl(&dword_22E41E000, v20, OS_LOG_TYPE_DEFAULT, "Skipping beta program %{public}@ because build prefix %{public}@ doesn't match device build.", buf, 0x16u);

                selfCopy2 = self;
              }
            }
          }
        }

        v14 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v14);
    }

    if (v25)
    {
      [(SDBetaManager *)selfCopy2 cachePrograms:v29 forPlatforms:platformsCopy];
    }

    responseCopy = v26;
  }

  else
  {
    v29 = MEMORY[0x277CBEBF8];
  }

  return v29;
}

+ (BOOL)isBuildPrefix:(id)prefix greaterThanOrEqualToBuild:(id)build
{
  prefixCopy = prefix;
  buildCopy = build;
  v7 = buildCopy;
  v8 = 1;
  if (prefixCopy && buildCopy)
  {
    v9 = [prefixCopy length];
    if (v9 > [v7 length])
    {
      v10 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[SDBetaManager isBuildPrefix:greaterThanOrEqualToBuild:];
      }

      v8 = 1;
LABEL_26:

      goto LABEL_27;
    }

    if (([v7 hasPrefix:prefixCopy] & 1) == 0)
    {
      v34 = 0;
      v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(\\d+)([A-Za-z])?" options:1 error:&v34];
      v10 = v34;
      if (v10)
      {
        firstObject = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
        {
          [SDBetaManager isBuildPrefix:v10 greaterThanOrEqualToBuild:?];
        }

        v8 = 1;
      }

      else
      {
        v13 = [v11 matchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
        firstObject = [v13 firstObject];

        v14 = [v11 matchesInString:prefixCopy options:0 range:{0, objc_msgSend(prefixCopy, "length")}];
        firstObject2 = [v14 firstObject];

        if (firstObject && firstObject2 && -[NSObject numberOfRanges](firstObject, "numberOfRanges") == 3 && [firstObject2 numberOfRanges] == 3)
        {
          v8 = 1;
          v16 = [firstObject rangeAtIndex:1];
          v18 = [v7 substringWithRange:{v16, v17}];
          integerValue = [v18 integerValue];

          v20 = [firstObject2 rangeAtIndex:1];
          v22 = [prefixCopy substringWithRange:{v20, v21}];
          integerValue2 = [v22 integerValue];

          if (integerValue2 <= integerValue)
          {
            if ([firstObject2 rangeAtIndex:2] == 0x7FFFFFFFFFFFFFFFLL || -[NSObject rangeAtIndex:](firstObject, "rangeAtIndex:", 2) == 0x7FFFFFFFFFFFFFFFLL)
            {
              v8 = integerValue2 == integerValue;
            }

            else if (integerValue2 == integerValue)
            {
              v26 = [firstObject rangeAtIndex:2];
              v28 = [v7 substringWithRange:{v26, v27}];
              uppercaseString = [v28 uppercaseString];

              v30 = [firstObject2 rangeAtIndex:2];
              v32 = [v7 substringWithRange:{v30, v31}];
              uppercaseString2 = [v32 uppercaseString];

              v8 = [uppercaseString2 compare:uppercaseString] != 1;
            }

            else
            {
              v8 = 0;
            }
          }
        }

        else
        {
          v24 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            +[SDBetaManager isBuildPrefix:greaterThanOrEqualToBuild:];
          }

          v8 = 1;
        }
      }

      goto LABEL_26;
    }

    v8 = 1;
  }

LABEL_27:

  return v8;
}

- (id)availableBetaProgramsForPlatforms:(unint64_t)platforms
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v20 = "[SDBetaManager availableBetaProgramsForPlatforms:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v6 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  cachedPrograms = [(SDBetaManager *)self cachedPrograms];
  v8 = [cachedPrograms countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(cachedPrograms);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([v12 platform] & platforms) != 0)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [cachedPrograms countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)enrollDevice:(id)device inBetaProgram:(id)program completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  programCopy = program;
  completionCopy = completion;
  v10 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v24 = "[SDBetaManager enrollDevice:inBetaProgram:completion:]";
    _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  if ([deviceCopy isErrorDevice])
  {
    v11 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v11 enrollDevice:v12 inBetaProgram:v13 completion:v14, v15, v16, v17, v18];
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:14 userInfo:0];
    completionCopy[2](completionCopy, v19);
  }

  else
  {
    v20 = +[SDBetaEnrollmentServiceProxy sharedInstance];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__SDBetaManager_enrollDevice_inBetaProgram_completion___block_invoke;
    v21[3] = &unk_2787CBD78;
    v22 = completionCopy;
    [v20 enrollDevice:deviceCopy inProgram:programCopy completion:v21];

    v19 = v22;
  }
}

- (void)enrollDevice:(id)device withEnrollmentMetadata:(id)metadata completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  metadataCopy = metadata;
  v11 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_DEFAULT, "Enrolling device with metadata", buf, 2u);
  }

  v12 = [metadataCopy objectForKeyedSubscript:@"AssetAudience"];
  v13 = [metadataCopy objectForKeyedSubscript:@"ProgramID"];

  if ([deviceCopy isErrorDevice])
  {
    v14 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v14 enrollDevice:v15 withEnrollmentMetadata:v16 completion:v17, v18, v19, v20, v21];
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = 14;
    goto LABEL_13;
  }

  if (!v12)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = 4;
LABEL_13:
    v27 = [v22 errorWithDomain:@"com.apple.seeding.beta-manager" code:v23 userInfo:0];
    completionCopy[2](completionCopy, v27);

    goto LABEL_18;
  }

  if (v13)
  {
    integerValue = [v13 integerValue];
    v25 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = v13;
      _os_log_impl(&dword_22E41E000, v25, OS_LOG_TYPE_DEFAULT, "Metadata has catalog ID %{public}@, will verify", buf, 0xCu);
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __64__SDBetaManager_enrollDevice_withEnrollmentMetadata_completion___block_invoke_412;
    v29[3] = &unk_2787CBAD0;
    v29[4] = self;
    v30 = deviceCopy;
    v31 = completionCopy;
    [(SDBetaManager *)self verifyAssetAudience:v12 programID:integerValue accountID:0 skipEnrollmentCheck:1 withCompletion:v29];

    v26 = v30;
  }

  else
  {
    v28 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v28, OS_LOG_TYPE_DEFAULT, "Metadata has no catalog ID, will migrate", buf, 2u);
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __64__SDBetaManager_enrollDevice_withEnrollmentMetadata_completion___block_invoke;
    v32[3] = &unk_2787CBEE8;
    v34 = completionCopy;
    v32[4] = self;
    v33 = deviceCopy;
    [(SDBetaManager *)self getMigrationProgramForAssetAudience:v12 completion:v32];

    v26 = v34;
  }

LABEL_18:
}

void __64__SDBetaManager_enrollDevice_withEnrollmentMetadata_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "Metadata enroll via migration returned %{public}@", &v9, 0xCu);
  }

  if (a3)
  {
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:7 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    [*(a1 + 32) enrollDevice:*(a1 + 40) inBetaProgram:v5 completion:*(a1 + 48)];
  }
}

void __64__SDBetaManager_enrollDevice_withEnrollmentMetadata_completion___block_invoke_412(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "Metadata enroll via verify returned %{public}@", &v9, 0xCu);
  }

  if (v5 && a2)
  {
    [*(a1 + 32) enrollDevice:*(a1 + 40) inBetaProgram:v5 completion:*(a1 + 48)];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:7 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }
}

- (void)enrollCurrentDeviceWithEnrollmentMetadata:(id)metadata completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  completionCopy = completion;
  v8 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v15 = "[SDBetaManager enrollCurrentDeviceWithEnrollmentMetadata:completion:]";
    _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__SDBetaManager_enrollCurrentDeviceWithEnrollmentMetadata_completion___block_invoke;
  v11[3] = &unk_2787CBF10;
  v12 = metadataCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = metadataCopy;
  v10 = completionCopy;
  [SDDevice getCurrentDevice:v11];
}

void __70__SDBetaManager_enrollCurrentDeviceWithEnrollmentMetadata_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isErrorDevice])
  {
    v4 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__SDBetaManager_enrollCurrentDeviceWithEnrollmentMetadata_completion___block_invoke_cold_1();
    }

    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:14 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) enrollDevice:v3 withEnrollmentMetadata:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)enrollmentMetadataForDevice:(id)device completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  v7 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136446210;
    v24 = "[SDBetaManager enrollmentMetadataForDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s", &v23, 0xCu);
  }

  if ([deviceCopy isErrorDevice])
  {
    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v8 enrollmentMetadataForDevice:v9 completion:v10, v11, v12, v13, v14, v15];
    }
  }

  currentConfiguration = [deviceCopy currentConfiguration];
  v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  assetAudience = [currentConfiguration assetAudience];
  [v17 setObject:assetAudience forKeyedSubscript:@"AssetAudience"];

  seedProgramID = [currentConfiguration seedProgramID];
  stringValue = [seedProgramID stringValue];
  [v17 setObject:stringValue forKeyedSubscript:@"ProgramID"];

  v21 = +[SDSeedProgramManager stringForSeedProgram:](SDSeedProgramManager, "stringForSeedProgram:", [currentConfiguration seedProgram]);
  [v17 setObject:v21 forKeyedSubscript:@"SeedProgram"];

  v22 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v17];
  completionCopy[2](completionCopy, v22);
}

- (id)enrollmentMetadataForCurrentDevice
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v8 = 136446210;
    v9 = "[SDBetaManager enrollmentMetadataForCurrentDevice]";
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "%{public}s", &v8, 0xCu);
  }

  v3 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  getCurrentDeviceSynchronously = [v3 getCurrentDeviceSynchronously];

  currentConfiguration = [getCurrentDeviceSynchronously currentConfiguration];
  enrollmentMetadata = [currentConfiguration enrollmentMetadata];

  return enrollmentMetadata;
}

- (void)enrollmentMetadataForCurrentDeviceWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v10 = "[SDBetaManager enrollmentMetadataForCurrentDeviceWithCompletion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__SDBetaManager_enrollmentMetadataForCurrentDeviceWithCompletion___block_invoke;
  v7[3] = &unk_2787CBF38;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [SDDevice getCurrentDevice:v7];
}

- (void)_enrollUsingSeedingConfiguration:(id)configuration userIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  identifierCopy = identifier;
  v8 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = configurationCopy;
    _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_DEFAULT, "Enrolling [%{public}@]", &v15, 0xCu);
  }

  assetAudience = [configurationCopy assetAudience];
  [(SDBetaManager *)self _setAssetAudienceString:assetAudience];

  catalog = [configurationCopy catalog];
  if (catalog)
  {
    v11 = catalog;
    catalog2 = [configurationCopy catalog];
    v13 = [catalog2 isEqualToString:&stru_28424D460];

    if ((v13 & 1) == 0)
    {
      catalog3 = [configurationCopy catalog];
      [(SDBetaManager *)self _setAssetServerURLString:catalog3];
    }
  }

  +[SDSeedProgramManager _setSeedProgramPref:](SDSeedProgramManager, "_setSeedProgramPref:", [configurationCopy seedProgram]);
  [(SDBetaManager *)self _setMemberEnrolled:1];
  if ([configurationCopy seedProgram] != 4)
  {
    [(SDBetaManager *)self _changeFBAVisibilityWithUserIdentifier:identifierCopy isVisible:1];
  }

  [(SDBetaManager *)self _synchronizeCFPreferences];
}

- (void)_saveBetaProgram:(id)program
{
  programCopy = program;
  v8 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:programCopy requiringSecureCoding:1 error:&v8];
  v5 = v8;
  v6 = +[SDSeedingLogging betaHandle];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)programCopy _saveBetaProgram:v5];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SDBetaManager _saveBetaProgram:];
    }

    CFPreferencesSetValue(@"BetaProgramObject", v4, @"com.apple.seeding", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  }
}

+ (id)_currentBetaProgram
{
  v2 = CFPreferencesCopyValue(@"BetaProgramObject", @"com.apple.seeding", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v2)
  {
    v8 = 0;
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v8];
    v4 = v8;
    if (v4)
    {
      v5 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[(SDBetaManager *)v4];
      }

      v6 = 0;
    }

    else
    {
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)enrolledBetaProgramForDevice:(id)device completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  v7 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [deviceCopy identifier];
    *buf = 138477827;
    v21 = identifier;
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "Getting current program for device %{private}@", buf, 0xCu);
  }

  if ([deviceCopy isErrorDevice])
  {
    v9 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v9 enrolledBetaProgramForDevice:v10 completion:v11, v12, v13, v14, v15, v16];
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v17 = +[SDBetaEnrollmentServiceProxy sharedInstance];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__SDBetaManager_enrolledBetaProgramForDevice_completion___block_invoke;
    v18[3] = &unk_2787CBF60;
    v19 = completionCopy;
    [v17 enrolledBetaProgramForDevice:deviceCopy completion:v18];
  }
}

- (id)enrolledBetaProgramForCurrentDevice
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = 136446210;
    v7 = "[SDBetaManager enrolledBetaProgramForCurrentDevice]";
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "%{public}s", &v6, 0xCu);
  }

  v3 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  getCurrentDeviceEnrolledBetaProgramSynchronously = [v3 getCurrentDeviceEnrolledBetaProgramSynchronously];

  return getCurrentDeviceEnrolledBetaProgramSynchronously;
}

- (void)verifyCatalog:(id)catalog withCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  catalogCopy = catalog;
  completionCopy = completion;
  v8 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = catalogCopy;
    _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_DEFAULT, "Verifying %@", buf, 0xCu);
  }

  v9 = MEMORY[0x277CCAB70];
  v10 = [(SDBetaManager *)self verifyURLForCatalog:catalogCopy];
  v11 = [v9 requestWithURL:v10 cachePolicy:1 timeoutInterval:15.0];

  v12 = +[SDHTTPClient sharedInstance];
  urlSession = [v12 urlSession];

  [v11 setHTTPMethod:@"GET"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke;
  v16[3] = &unk_2787CBF88;
  v17 = completionCopy;
  v14 = completionCopy;
  v15 = [urlSession dataTaskWithRequest:v11 completionHandler:v16];
  [v15 resume];
}

void __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke_cold_1();
    }

    goto LABEL_5;
  }

  if ([v8 statusCode] != 200)
  {
    if ([v8 statusCode] == 204)
    {
      v15 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke_cold_2();
      }

      v11 = *(*(a1 + 32) + 16);
      goto LABEL_6;
    }

LABEL_5:
    v11 = *(*(a1 + 32) + 16);
LABEL_6:
    v11();
    goto LABEL_7;
  }

  v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:0];
  v13 = [v12 objectForKey:@"catalog"];

  if (v13)
  {
    v14 = [SDBetaProgram betaProgramWithJSON:v12];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v16 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke_cold_3();
    }

    (*(*(a1 + 32) + 16))();
  }

LABEL_7:
}

- (void)verifyAssetAudience:(id)audience programID:(int64_t)d withCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  audienceCopy = audience;
  v10 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 136446210;
    v12 = "[SDBetaManager verifyAssetAudience:programID:withCompletion:]";
    _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_INFO, "%{public}s", &v11, 0xCu);
  }

  [(SDBetaManager *)self verifyAssetAudience:audienceCopy programID:d accountID:0 skipEnrollmentCheck:0 withCompletion:completionCopy];
}

- (void)verifyAssetAudience:(id)audience programID:(int64_t)d accountID:(id)iD withCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  iDCopy = iD;
  audienceCopy = audience;
  v13 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = 136446210;
    v15 = "[SDBetaManager verifyAssetAudience:programID:accountID:withCompletion:]";
    _os_log_impl(&dword_22E41E000, v13, OS_LOG_TYPE_INFO, "%{public}s", &v14, 0xCu);
  }

  [(SDBetaManager *)self verifyAssetAudience:audienceCopy programID:d accountID:iDCopy skipEnrollmentCheck:0 withCompletion:completionCopy];
}

- (void)verifyAssetAudience:(id)audience programID:(int64_t)d accountID:(id)iD skipEnrollmentCheck:(BOOL)check withCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  audienceCopy = audience;
  iDCopy = iD;
  completionCopy = completion;
  if (check || [(SDBetaManager *)self _isEnrolledInBetaProgram])
  {
    v15 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = audienceCopy;
      _os_log_impl(&dword_22E41E000, v15, OS_LOG_TYPE_DEFAULT, "Verifying asset audience %@", buf, 0xCu);
    }

    v16 = MEMORY[0x277CCAB70];
    v17 = [(SDBetaManager *)self verifyURLForAssetAudience:audienceCopy programID:d];
    v18 = [v16 requestWithURL:v17 cachePolicy:1 timeoutInterval:15.0];

    v19 = +[SDHTTPClient sharedInstance];
    urlSession = [v19 urlSession];

    [v18 setHTTPMethod:@"GET"];
    if (iDCopy)
    {
      stringValue = [iDCopy stringValue];
      [v18 setValue:stringValue forHTTPHeaderField:@"Seeding-Account-Id"];
    }

    v22 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = iDCopy;
      _os_log_impl(&dword_22E41E000, v22, OS_LOG_TYPE_INFO, "[VERIFY] Seeding-Account-Id: %@", buf, 0xCu);
    }

    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __92__SDBetaManager_verifyAssetAudience_programID_accountID_skipEnrollmentCheck_withCompletion___block_invoke;
    v28 = &unk_2787CB8A8;
    selfCopy = self;
    v30 = completionCopy;
    v23 = [urlSession dataTaskWithRequest:v18 completionHandler:&v25];
    [v23 resume];
  }

  else
  {
    v24 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v24, OS_LOG_TYPE_DEFAULT, "Device is not enrolled in a beta program, will not verify.", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __92__SDBetaManager_verifyAssetAudience_programID_accountID_skipEnrollmentCheck_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 allHeaderFields];
      v11 = [v10 objectForKeyedSubscript:@"X-Request-Id"];
      v12 = v11;
      v13 = @"(null)";
      if (v11)
      {
        v13 = v11;
      }

      v14 = v13;
    }

    else
    {
      v14 = @"(non-HTTP response)";
    }

    v24 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138543362;
      v29 = v14;
      _os_log_impl(&dword_22E41E000, v24, OS_LOG_TYPE_DEFAULT, "/verify X-Request-Id: %{public}@", &v28, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = v8;
    v15 = [(__CFString *)v14 allHeaderFields];
    v16 = [v15 objectForKeyedSubscript:@"X-Request-Id"];
    v17 = v16;
    v18 = @"(null)";
    if (v16)
    {
      v18 = v16;
    }

    v19 = v18;

    v20 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138543362;
      v29 = v19;
      _os_log_impl(&dword_22E41E000, v20, OS_LOG_TYPE_DEFAULT, "/verify X-Request-Id: %{public}@", &v28, 0xCu);
    }

    if ([(__CFString *)v14 statusCode]== 200)
    {
      [*(a1 + 32) setProfilesEnabledFromHeaderInResponse:v14];
      v21 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:0];
      v22 = [v21 objectForKey:@"catalog"];

      if (v22)
      {
        v23 = [SDBetaProgram betaProgramWithJSON:v21];
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v27 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke_cold_3();
        }

        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      if ([(__CFString *)v14 statusCode]== 204)
      {
        v25 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke_cold_2();
        }

        [*(a1 + 32) setProfilesEnabledFromHeaderInResponse:v14];
        v26 = *(*(a1 + 40) + 16);
      }

      else
      {
        v26 = *(*(a1 + 40) + 16);
      }

      v26();
    }
  }
}

- (void)unenrollDevice:(id)device completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  v7 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v20 = "[SDBetaManager unenrollDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  if ([deviceCopy isErrorDevice])
  {
    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v8 unenrollDevice:v9 completion:v10, v11, v12, v13, v14, v15];
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v16 = +[SDBetaEnrollmentServiceProxy sharedInstance];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __43__SDBetaManager_unenrollDevice_completion___block_invoke;
    v17[3] = &unk_2787CBFB0;
    v18 = completionCopy;
    [v16 unenrollDevice:deviceCopy completion:v17];
  }
}

- (BOOL)_unenrollFromBetaProgramWithUserIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v14 = 136446210;
    v15 = "[SDBetaManager _unenrollFromBetaProgramWithUserIdentifier:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", &v14, 0xCu);
  }

  if ([(SDBetaManager *)self _isEnrolledInBetaProgram])
  {
    CFPreferencesAppSynchronize(@"com.apple.seeding");
    v6 = *MEMORY[0x277CBF020];
    v7 = *MEMORY[0x277CBF010];
    v8 = CFPreferencesCopyValue(@"OriginalSoftwareUpdate", @"com.apple.seeding", *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);
    v9 = CFPreferencesCopyValue(@"OriginalUpdateBrain", @"com.apple.seeding", v6, v7);
    v10 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SDBetaManager _unenrollFromBetaProgramWithUserIdentifier:];
    }

    [(SDBetaManager *)self _setAssetServerURLString:v8];
    [(SDBetaManager *)self _setBrainServerURLString:v9];
    v11 = +[SDSUPreferences sharedInstance];
    [v11 clearCatalogURL];

    [(SDBetaManager *)self _changeFBAVisibilityWithUserIdentifier:identifierCopy isVisible:0];
    [(SDBetaManager *)self _deleteBetaProgram];
    CFPreferencesAppSynchronize(@"com.apple.seeding");
    v12 = *MEMORY[0x277CBF040];
    CFPreferencesSetValue(@"OriginalSoftwareUpdate", 0, @"com.apple.seeding", *MEMORY[0x277CBF040], v7);
    CFPreferencesSetValue(@"OriginalUpdateBrain", 0, @"com.apple.seeding", v12, v7);
    [(SDBetaManager *)self _setMemberEnrolled:0];
    [(SDBetaManager *)self _synchronizeCFPreferences];
    [(SDBetaManager *)self _resetAssetAudience];
    +[SDAnalytics deviceDidUnenrollFromSeeding];
  }

  else
  {
    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_DEFAULT, "Unenrolling device that is already unenrolled.", &v14, 2u);
    }
  }

  return 1;
}

- (void)isDeviceEnrolledInBetaProgram:(id)program completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  programCopy = program;
  completionCopy = completion;
  v7 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v20 = "[SDBetaManager isDeviceEnrolledInBetaProgram:completion:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  if ([programCopy isErrorDevice])
  {
    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v8 isDeviceEnrolledInBetaProgram:v9 completion:v10, v11, v12, v13, v14, v15];
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v16 = +[SDBetaEnrollmentServiceProxy sharedInstance];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__SDBetaManager_isDeviceEnrolledInBetaProgram_completion___block_invoke;
    v17[3] = &unk_2787CBFB0;
    v18 = completionCopy;
    [v16 isDeviceEnrolledInBetaProgram:programCopy completion:v17];
  }
}

- (BOOL)_isEnrolledInBetaProgram
{
  v2 = objc_opt_class();

  return [v2 _isEnrolledInBetaProgram];
}

+ (BOOL)_isEnrolledInBetaProgram
{
  _currentBetaProgram = [self _currentBetaProgram];
  if (_currentBetaProgram)
  {
    v3 = 1;
  }

  else
  {
    v4 = CFPreferencesCopyValue(@"MemberEnrolled", @"com.apple.seeding", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v3 = v4 == *MEMORY[0x277CBED28];
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v3;
}

- (void)_setMemberEnrolled:(BOOL)enrolled
{
  if (enrolled)
  {
    v3 = *MEMORY[0x277CBED28];
  }

  else
  {
    v3 = 0;
  }

  CFPreferencesSetValue(@"MemberEnrolled", v3, @"com.apple.seeding", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
}

- (id)_assetServerURLString
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = ASServerURLForAssetType();
  v3 = 0;
  if (v3)
  {
    v4 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v8 = @"com.apple.MobileAsset.SoftwareUpdate";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_INFO, "Failed to get asset URL for type:%@ [%@]", buf, 0x16u);
    }
  }

  absoluteString = [v2 absoluteString];

  return absoluteString;
}

- (void)_setAssetServerURLString:(id)string
{
  v11 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  if (v4 || ![(__CFString *)stringCopy length])
  {
    v5 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = stringCopy;
      _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "Setting asset server to %@", &v7, 0xCu);
    }

    ASSetAssetServerURLForAssetType();
  }

  else
  {
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = @"com.apple.MobileAsset.SoftwareUpdate";
      v9 = 2112;
      v10 = stringCopy;
      _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_INFO, "Failed to set asset URL for type:%@ (bad URL string %@)", &v7, 0x16u);
    }
  }
}

- (id)_brainServerURLString
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = ASServerURLForAssetType();
  v3 = 0;
  if (v3)
  {
    v4 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v8 = @"com.apple.MobileAsset.MobileSoftwareUpdate.UpdateBrain";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_INFO, "Failed to get brain URL for type:%@ [%@]", buf, 0x16u);
    }
  }

  absoluteString = [v2 absoluteString];

  return absoluteString;
}

- (void)_setBrainServerURLString:(id)string
{
  v10 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  if (v4 || ![stringCopy length])
  {
    ASSetAssetServerURLForAssetType();
  }

  else
  {
    v5 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412546;
      v7 = @"com.apple.MobileAsset.MobileSoftwareUpdate.UpdateBrain";
      v8 = 2112;
      v9 = stringCopy;
      _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "Failed to set brain URL for type:%@ (bad URL string %@)", &v6, 0x16u);
    }
  }
}

- (void)_setAssetAudienceString:(id)string
{
  v13 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = stringCopy;
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "will set mobile asset audience [%{public}@]", &v11, 0xCu);
  }

  if ([stringCopy length])
  {
    v5 = MASetPallasAudience();
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v5;
      v7 = "did set mobile asset audience with result [%lld]";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 12;
LABEL_8:
      _os_log_impl(&dword_22E41E000, v8, v9, v7, &v11, v10);
    }
  }

  else
  {
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      v7 = "Failed to set audience: given value is nil";
      v8 = v6;
      v9 = OS_LOG_TYPE_INFO;
      v10 = 2;
      goto LABEL_8;
    }
  }
}

- (void)_resetAssetAudience
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_DEFAULT, "will reset mobile asset audience", &v5, 2u);
  }

  v3 = MASetPallasAudience();
  v4 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "did reset mobile asset audience with result [%lld]", &v5, 0xCu);
  }
}

- (void)_changeFBAVisibilityWithUserIdentifier:(id)identifier isVisible:(BOOL)visible
{
  visibleCopy = visible;
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([(SDBetaManager *)self canToggleFBAVisibility])
  {
    longValue = [identifierCopy longValue];
    if (!longValue)
    {
      goto LABEL_6;
    }

    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v17 = 134217984;
      v18 = longValue;
      _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_INFO, "Fetching user for uid: [%lu]", &v17, 0xCu);
    }

    v9 = _CFPreferencesGetUserIdentifierForUID();
    if (!v9)
    {
LABEL_6:
      v10 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_INFO, "Falling back to default user", &v17, 2u);
      }

      v9 = @"mobile";
    }

    v11 = +[SDSeedingLogging betaHandle];
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (visibleCopy)
    {
      if (v12)
      {
        v17 = 138477827;
        v18 = v9;
        v13 = "Making FBA visible for user: [%{private}@]";
LABEL_16:
        _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_INFO, v13, &v17, 0xCu);
      }
    }

    else if (v12)
    {
      v17 = 138477827;
      v18 = v9;
      v13 = "Hiding FBA for user: [%{private}@]";
      goto LABEL_16;
    }

    if (visibleCopy)
    {
      v14 = *MEMORY[0x277CBED28];
    }

    else
    {
      v14 = 0;
    }

    v15 = *MEMORY[0x277CBF010];
    CFPreferencesSetValue(@"SBIconVisibility", v14, @"com.apple.appleseed.FeedbackAssistant", v9, *MEMORY[0x277CBF010]);
    CFPreferencesSynchronize(@"com.apple.appleseed.FeedbackAssistant", *MEMORY[0x277CBF020], v15);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.appIconVisibilityPreferencesChanged", 0, 0, 1u);
    goto LABEL_21;
  }

  v9 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_22E41E000, v9, OS_LOG_TYPE_DEFAULT, "Device cannot file feedback. Cannot change FBA visibility", &v17, 2u);
  }

LABEL_21:
}

- (void)canFileFeedbackOnDevice:(id)device completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  v7 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v20 = "[SDBetaManager canFileFeedbackOnDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  if ([deviceCopy isErrorDevice])
  {
    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v8 canFileFeedbackOnDevice:v9 completion:v10, v11, v12, v13, v14, v15];
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v16 = +[SDBetaEnrollmentServiceProxy sharedInstance];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__SDBetaManager_canFileFeedbackOnDevice_completion___block_invoke;
    v17[3] = &unk_2787CBFB0;
    v18 = completionCopy;
    [v16 canFileFeedbackOnDevice:deviceCopy completion:v17];
  }
}

uint64_t __52__SDBetaManager_canFileFeedbackOnDevice_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    a2 = 0;
  }

  else
  {
    a2 = a2;
  }

  return (*(v3 + 16))(v3, a2);
}

+ (BOOL)canFileFeedbackOnThisDevice:(id *)device
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "+[SDBetaManager canFileFeedbackOnThisDevice:]";
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_INFO, "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  v5 = dispatch_semaphore_create(0);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __45__SDBetaManager_canFileFeedbackOnThisDevice___block_invoke;
  v24[3] = &unk_2787CBFD8;
  p_buf = &buf;
  v6 = v5;
  v25 = v6;
  [SDDevice getCurrentDevice:v24];
  v7 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    if (device)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:6 userInfo:0];
      *device = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = dispatch_semaphore_create(0);

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v10 = +[SDBetaManager sharedManager];
    v11 = *(*(&buf + 1) + 40);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __45__SDBetaManager_canFileFeedbackOnThisDevice___block_invoke_2;
    v17 = &unk_2787CC000;
    v19 = &v20;
    v6 = v9;
    v18 = v6;
    [v10 canFileFeedbackOnDevice:v11 completion:&v14];

    v12 = dispatch_time(0, 15000000000);
    if (dispatch_semaphore_wait(v6, v12))
    {
      if (device)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:6 userInfo:{0, v14, v15, v16, v17}];
        *device = v8 = 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = *(v21 + 24);
    }

    _Block_object_dispose(&v20, 8);
  }

  _Block_object_dispose(&buf, 8);
  return v8 & 1;
}

void __45__SDBetaManager_canFileFeedbackOnThisDevice___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)canFileFeedbackOnThisDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = dispatch_get_global_queue(0, 0);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__SDBetaManager_canFileFeedbackOnThisDeviceWithCompletion___block_invoke;
  v12[3] = &unk_2787CC078;
  v5 = v4;
  v13 = v5;
  v15 = v16;
  v6 = completionCopy;
  v14 = v6;
  [SDDevice getCurrentDevice:v12];
  v7 = dispatch_time(0, 15000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SDBetaManager_canFileFeedbackOnThisDeviceWithCompletion___block_invoke_4;
  block[3] = &unk_2787CC0A0;
  v10 = v6;
  v11 = v16;
  v8 = v6;
  dispatch_after(v7, v5, block);

  _Block_object_dispose(v16, 8);
}

void __59__SDBetaManager_canFileFeedbackOnThisDeviceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SDBetaManager sharedManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SDBetaManager_canFileFeedbackOnThisDeviceWithCompletion___block_invoke_2;
  v7[3] = &unk_2787CC050;
  v8 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = v6;
  v9 = v6;
  [v4 canFileFeedbackOnDevice:v3 completion:v7];
}

void __59__SDBetaManager_canFileFeedbackOnThisDeviceWithCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SDBetaManager_canFileFeedbackOnThisDeviceWithCompletion___block_invoke_3;
  block[3] = &unk_2787CC028;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  v8 = a2;
  dispatch_async(v3, block);
}

void __59__SDBetaManager_canFileFeedbackOnThisDeviceWithCompletion___block_invoke_4(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:6 userInfo:0];
    (*(v2 + 16))(v2, 0, v3);
  }
}

- (void)enrollInProgramWithToken:(id)token userIdentifier:(id)identifier language:(id)language shouldSaveToken:(BOOL)saveToken completion:(id)completion
{
  saveTokenCopy = saveToken;
  v25 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  completionCopy = completion;
  languageCopy = language;
  v14 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v24 = "[SDBetaManager enrollInProgramWithToken:userIdentifier:language:shouldSaveToken:completion:]";
    _os_log_impl(&dword_22E41E000, v14, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  if (saveTokenCopy)
  {
    v15 = [MEMORY[0x277CBEB98] setWithObject:tokenCopy];
    [SDPersistence saveBetaEnrollmentTokens:v15];
  }

  v16 = +[SDDevice devicePlatform];
  v17 = [MEMORY[0x277CBEB98] setWithObject:tokenCopy];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __93__SDBetaManager_enrollInProgramWithToken_userIdentifier_language_shouldSaveToken_completion___block_invoke;
  v20[3] = &unk_2787CB728;
  v21 = tokenCopy;
  v22 = completionCopy;
  v18 = completionCopy;
  v19 = tokenCopy;
  [(SDBetaManager *)self _finallyQueryProgramsForSystemAccountsWithPlatforms:v16 credentials:0 betaEnrollmentTokens:v17 shouldSavePrograms:1 disableBuildPrefixMatching:0 language:languageCopy completion:v20];
}

void __93__SDBetaManager_enrollInProgramWithToken_userIdentifier_language_shouldSaveToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    if ([v3 count] >= 2)
    {
      v4 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __93__SDBetaManager_enrollInProgramWithToken_userIdentifier_language_shouldSaveToken_completion___block_invoke_cold_1();
      }
    }

    v5 = [v3 firstObject];
    v6 = [v5 platform];
    if (v6 == +[SDDevice devicePlatform])
    {
      v7 = +[SDDevice _currentDevice];
      [v7 _enrollInBetaProgram:v5];
    }

    else
    {
      v7 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __93__SDBetaManager_enrollInProgramWithToken_userIdentifier_language_shouldSaveToken_completion___block_invoke_cold_2(v5);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __93__SDBetaManager_enrollInProgramWithToken_userIdentifier_language_shouldSaveToken_completion___block_invoke_cold_3();
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_migrateFromProfilesIfNeeded
{
  v1 = [self description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __45__SDBetaManager__migrateFromProfilesIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = +[SDSeedingLogging betaHandle];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        v9 = [v5 description];
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "Migrating into program %{public}@", &v10, 0xCu);
      }

      +[SDProfileUtilities forceRemoveSeedingProfile];
      v7 = +[SDDevice _currentDevice];
      [v7 _enrollInBetaProgram:v5 userIdentifier:0];
    }

    else if (v8)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "Profile migration returned no program and no error, setting complete flag.", &v10, 2u);
    }

    [*(a1 + 32) _markMigrationComplete];
  }

  [*(a1 + 32) setIsMigratingFromProfiles:0];
}

- (BOOL)_hasMigratedProfiles
{
  v2 = SeedingDefaults(self);
  v3 = [v2 BOOLForKey:@"HasRunMigration"];

  return v3;
}

- (void)_markMigrationComplete
{
  v2 = SeedingDefaults(self);
  [v2 setBool:1 forKey:@"HasRunMigration"];
}

- (void)getMigrationProgramForAssetAudience:(id)audience completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CCAB70];
  v8 = [(SDBetaManager *)self migrateURLForAssetAudience:audience];
  v9 = [v7 requestWithURL:v8 cachePolicy:1 timeoutInterval:15.0];

  v10 = +[SDHTTPClient sharedInstance];
  urlSession = [v10 urlSession];

  [v9 setHTTPMethod:@"GET"];
  v12 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SDBetaManager getMigrationProgramForAssetAudience:v9 completion:v12];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke;
  v16[3] = &unk_2787CC0F0;
  selfCopy = self;
  v19 = completionCopy;
  v17 = v9;
  v13 = completionCopy;
  v14 = v9;
  v15 = [urlSession dataTaskWithRequest:v14 completionHandler:v16];
  [v15 resume];
}

void __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 allHeaderFields];
    v13 = [v12 objectForKeyedSubscript:@"X-Request-Id"];
    v14 = v13;
    v15 = @"(null)";
    if (v13)
    {
      v15 = v13;
    }

    *buf = 138543362;
    v32 = v15;
    _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_DEFAULT, "/migrate X-Request-Id: %{public}@", buf, 0xCu);
  }

  v16 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_1(a1, v10, v16);
  }

  if (!v9)
  {
    if ([v10 statusCode] > 499 || objc_msgSend(v10, "statusCode") == 403)
    {
      v18 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_5(v10);
      }

      v19 = *(a1 + 48);
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:3 userInfo:0];
      (*(v19 + 16))(v19, 0, v20);
LABEL_16:

      goto LABEL_17;
    }

    v21 = [v10 statusCode];
    [*(a1 + 40) setProfilesEnabledFromHeaderInResponse:v10];
    if (v21 != 200)
    {
      v17 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v10 statusCode];
        *buf = 134217984;
        v32 = v26;
        _os_log_impl(&dword_22E41E000, v17, OS_LOG_TYPE_DEFAULT, "Received code [%lu]. Considering migration successful.", buf, 0xCu);
      }

      goto LABEL_10;
    }

    v30 = 0;
    v20 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v30];
    v22 = v30;
    if (v22)
    {
      v23 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_3();
      }
    }

    else
    {
      v27 = [v20 objectForKey:@"catalog"];

      if (v27)
      {
        v28 = [SDBetaProgram betaProgramWithJSON:v20];
        v29 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v32 = v28;
          _os_log_impl(&dword_22E41E000, v29, OS_LOG_TYPE_DEFAULT, "Received program %{public}@ for migration", buf, 0xCu);
        }

        (*(*(a1 + 48) + 16))();
        goto LABEL_16;
      }

      v23 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_4();
      }
    }

    v24 = *(a1 + 48);
    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:8 userInfo:0];
    (*(v24 + 16))(v24, 0, v25);

    goto LABEL_17;
  }

  v17 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_2(v9);
  }

LABEL_10:

  (*(*(a1 + 48) + 16))();
LABEL_17:
}

- (BOOL)isMigratingFromProfiles
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isMigratingFromProfiles = selfCopy->_isMigratingFromProfiles;
  objc_sync_exit(selfCopy);

  return isMigratingFromProfiles;
}

- (void)setIsMigratingFromProfiles:(BOOL)profiles
{
  profilesCopy = profiles;
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isMigratingFromProfiles = selfCopy->_isMigratingFromProfiles;
  selfCopy->_isMigratingFromProfiles = profilesCopy;
  if (profilesCopy)
  {
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "Migrating from profiles", buf, 2u);
    }

LABEL_18:

    goto LABEL_19;
  }

  if (isMigratingFromProfiles)
  {
    v7 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "Profile migration finished", buf, 2u);
    }

    postMigrationTasks = [(SDBetaManager *)selfCopy postMigrationTasks];
    v9 = [postMigrationTasks count] == 0;

    if (!v9)
    {
      v10 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_DEFAULT, "Found pending tasks. Executing now", buf, 2u);
      }

      v6 = dispatch_get_global_queue(25, 0);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      postMigrationTasks2 = [(SDBetaManager *)selfCopy postMigrationTasks];
      v12 = [postMigrationTasks2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v12)
      {
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(postMigrationTasks2);
            }

            v15 = *(*(&v18 + 1) + 8 * i);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __44__SDBetaManager_setIsMigratingFromProfiles___block_invoke;
            block[3] = &unk_2787CC118;
            block[4] = v15;
            dispatch_async(v6, block);
          }

          v12 = [postMigrationTasks2 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v12);
      }

      postMigrationTasks3 = [(SDBetaManager *)selfCopy postMigrationTasks];
      [postMigrationTasks3 removeAllObjects];

      goto LABEL_18;
    }
  }

LABEL_19:
  objc_sync_exit(selfCopy);
}

- (void)ensureThisRunsAfterMigration:(id)migration
{
  migrationCopy = migration;
  if ([(SDBetaManager *)self isMigratingFromProfiles])
  {
    postMigrationTasks = [(SDBetaManager *)self postMigrationTasks];

    if (!postMigrationTasks)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
      [(SDBetaManager *)self setPostMigrationTasks:v5];
    }

    postMigrationTasks2 = [(SDBetaManager *)self postMigrationTasks];
    v7 = MEMORY[0x2318E68F0](migrationCopy);
    [postMigrationTasks2 addObject:v7];
  }

  else
  {
    migrationCopy[2]();
  }
}

- (void)setProfilesEnabledFromHeaderInResponse:(id)response
{
  v23 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v4 = _os_feature_enabled_impl();
  if (responseCopy && v4)
  {
    v5 = [responseCopy valueForHTTPHeaderField:@"Disable-Profile"];
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"(null)";
      if (v5)
      {
        v7 = v5;
      }

      v21 = 138543362;
      v22 = v7;
      _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "Disable-Profile: %{public}@", &v21, 0xCu);
    }

    if (v5)
    {
      v9 = SDPlatformsFromCommaSeparatedString(v5);
      v10 = SeedingDefaults(v9);
      v11 = [v10 BOOLForKey:@"EnableProfiles"];

      v12 = +[SDDevice devicePlatform]& v9;
      if (v11 && v12)
      {
        v13 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_22E41E000, v13, OS_LOG_TYPE_DEFAULT, "Profiles are no longer allowed on this platform, disabling and removing.", &v21, 2u);
        }

        v15 = SeedingDefaults(v14);
        [v15 setBool:0 forKey:@"EnableProfiles"];

        +[SDProfileUtilities removeSeedProfileIfRestricted];
      }

      else
      {
        if (v12)
        {
          v17 = 1;
        }

        else
        {
          v17 = v11;
        }

        if ((v17 & 1) == 0)
        {
          v18 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v21) = 0;
            _os_log_impl(&dword_22E41E000, v18, OS_LOG_TYPE_DEFAULT, "Profiles are now enabled on this platform.", &v21, 2u);
          }

          v20 = SeedingDefaults(v19);
          [v20 setBool:1 forKey:@"EnableProfiles"];
        }
      }
    }

    else
    {
      v16 = SeedingDefaults(v8);
      [v16 removeObjectForKey:@"EnableProfiles"];
    }
  }
}

- (id)seedingAppleIDUsernameForCurrentDevice
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = 136446210;
    v7 = "[SDBetaManager seedingAppleIDUsernameForCurrentDevice]";
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "%{public}s", &v6, 0xCu);
  }

  v3 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  seedingAppleIDUsernameForCurrentDevice = [v3 seedingAppleIDUsernameForCurrentDevice];

  return seedingAppleIDUsernameForCurrentDevice;
}

- (void)seedingAppleIDUsernameForCurrentDeviceWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v10 = "[SDBetaManager seedingAppleIDUsernameForCurrentDeviceWithCompletion:]";
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v5 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__SDBetaManager_seedingAppleIDUsernameForCurrentDeviceWithCompletion___block_invoke;
  v7[3] = &unk_2787CBCD8;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 seedingAppleIDUsernameForCurrentDevice:v7];
}

- (id)_seedingAppleIDUsername
{
  v2 = SeedingDefaults(self);
  v3 = [v2 stringForKey:@"AppleAccountIdentifier"];
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v5 = defaultStore;
  if (v3)
  {
    aida_accountForPrimaryiCloudAccount = [defaultStore accountWithIdentifier:v3];
    if (aida_accountForPrimaryiCloudAccount)
    {
LABEL_6:
      v7 = aida_accountForPrimaryiCloudAccount;
      username = [aida_accountForPrimaryiCloudAccount username];

      goto LABEL_8;
    }
  }

  else
  {
    [v2 removeObjectForKey:@"AppleAccountIdentifier"];
  }

  aida_accountForPrimaryiCloudAccount = [v5 aida_accountForPrimaryiCloudAccount];
  if (aida_accountForPrimaryiCloudAccount)
  {
    goto LABEL_6;
  }

  username = 0;
LABEL_8:

  return username;
}

- (id)deviceAppleIDUsernameForCurrentDevice
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = 136446210;
    v7 = "[SDBetaManager deviceAppleIDUsernameForCurrentDevice]";
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "%{public}s", &v6, 0xCu);
  }

  v3 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  deviceAppleIDUsernameForCurrentDevice = [v3 deviceAppleIDUsernameForCurrentDevice];

  return deviceAppleIDUsernameForCurrentDevice;
}

- (id)_deviceAppleIDUsername
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aida_accountForPrimaryiCloudAccount = [defaultStore aida_accountForPrimaryiCloudAccount];
  username = [aida_accountForPrimaryiCloudAccount username];

  return username;
}

- (BOOL)isCurrentDeviceUsingSeedingAppleID
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = 136446210;
    v7 = "[SDBetaManager isCurrentDeviceUsingSeedingAppleID]";
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "%{public}s", &v6, 0xCu);
  }

  v3 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  isCurrentDeviceUsingSeedingAppleID = [v3 isCurrentDeviceUsingSeedingAppleID];

  return isCurrentDeviceUsingSeedingAppleID;
}

- (BOOL)_isUsingSeedingAppleID
{
  v2 = SeedingDefaults(self);
  v3 = [v2 stringForKey:@"AppleAccountIdentifier"];
  v4 = v3 != 0;

  return v4;
}

- (void)saveAppleAccountIdentifierWithAlternateDSIDForCurrentDevice:(id)device completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  deviceCopy = device;
  v8 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v14 = "[SDBetaManager saveAppleAccountIdentifierWithAlternateDSIDForCurrentDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v9 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__SDBetaManager_saveAppleAccountIdentifierWithAlternateDSIDForCurrentDevice_completion___block_invoke;
  v11[3] = &unk_2787CB7C8;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 setAppleAccountIdentifierWithAlternateDSIDForCurrentDevice:deviceCopy completion:v11];
}

void __88__SDBetaManager_saveAppleAccountIdentifierWithAlternateDSIDForCurrentDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidateCache];
  (*(*(a1 + 40) + 16))();
}

- (void)_saveAppleAccountIdentifierWithAlternateDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = SeedingDefaults(completionCopy);
  v9 = [v8 stringForKey:@"AppleAccountIdentifier"];

  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aida_accountForPrimaryiCloudAccount = [defaultStore aida_accountForPrimaryiCloudAccount];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke;
  v16[3] = &unk_2787CC168;
  selfCopy = self;
  v21 = completionCopy;
  v17 = dCopy;
  v18 = v9;
  v19 = aida_accountForPrimaryiCloudAccount;
  v12 = aida_accountForPrimaryiCloudAccount;
  v13 = v9;
  v14 = completionCopy;
  v15 = dCopy;
  [(SDBetaManager *)self getAppleIDAuthenticationAccountForAlternateDSID:v15 attempt:0 completion:v16];
}

void __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_cold_4();
    }

    v7 = *(a1 + 64);
    v8 = MEMORY[0x277CCA9B8];
    v9 = 11;
    goto LABEL_7;
  }

  v5 = [v3 identifier];
  if (![v5 isEqualToString:*(a1 + 40)])
  {
    v11 = [v4 identifier];
    v12 = [*(a1 + 48) identifier];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      goto LABEL_10;
    }

    v15 = [v4 username];
    v16 = [*(a1 + 48) username];
    v17 = [v15 isEqualToString:v16];

    if (!v17)
    {
      v10 = [v4 identifier];
      if (*(a1 + 40))
      {
        v21 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_cold_1();
        }

        v22 = *(a1 + 56);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_462;
        v23[3] = &unk_2787CC140;
        v23[4] = v22;
        v24 = v10;
        v25 = *(a1 + 64);
        [v22 _deleteSeedingAppleAccountWithCompletion:v23];
      }

      else
      {
        [*(a1 + 56) _saveAppleAccountIdentifier:v10];
        (*(*(a1 + 64) + 16))();
      }

      [*(a1 + 56) invalidateCache];
      goto LABEL_8;
    }

    v18 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_cold_2();
    }

    v20 = SeedingDefaults(v19);
    [v20 removeObjectForKey:@"AppleAccountIdentifier"];

    v7 = *(a1 + 64);
    v8 = MEMORY[0x277CCA9B8];
    v9 = 12;
LABEL_7:
    v10 = [v8 errorWithDomain:@"com.apple.seeding.beta-manager" code:v9 userInfo:0];
    (*(v7 + 16))(v7, v10);
LABEL_8:

    goto LABEL_13;
  }

LABEL_10:
  v14 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_cold_3(v4);
  }

  (*(*(a1 + 64) + 16))();
LABEL_13:
}

void __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_462(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 _saveAppleAccountIdentifier:v4];
  (*(a1[6] + 16))();
}

- (void)getAppleIDAuthenticationAccountForAlternateDSID:(id)d attempt:(int64_t)attempt completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10 = completionCopy;
  if (attempt < 8)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v12 = [defaultStore aida_accountForAltDSID:dCopy];
    if (v12)
    {
      (v10)[2](v10, v12);
    }

    else
    {
      v13 = dispatch_time(0, 250000000);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __84__SDBetaManager_getAppleIDAuthenticationAccountForAlternateDSID_attempt_completion___block_invoke;
      v14[3] = &unk_2787CC190;
      v14[4] = self;
      v15 = dCopy;
      attemptCopy = attempt;
      v16 = v10;
      dispatch_after(v13, MEMORY[0x277D85CD0], v14);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_saveAppleAccountIdentifier:(id)identifier
{
  v9 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = +[SDSeedingLogging betaHandle];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (identifierCopy)
  {
    if (v5)
    {
      v7 = 138412290;
      v8 = identifierCopy;
      _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "Saving new Seeding account %@", &v7, 0xCu);
    }

    v4 = SeedingDefaults(v6);
    [v4 setObject:identifierCopy forKey:@"AppleAccountIdentifier"];
  }

  else if (v5)
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "Attempted to save a nil account identifier.", &v7, 2u);
  }
}

- (void)deleteSeedingAppleAccountForCurrentDeviceWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v11 = "[SDBetaManager deleteSeedingAppleAccountForCurrentDeviceWithCompletion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v6 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SDBetaManager_deleteSeedingAppleAccountForCurrentDeviceWithCompletion___block_invoke;
  v8[3] = &unk_2787CB7C8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 deleteSeedingAppleAccountWithCompletion:v8];
}

void __73__SDBetaManager_deleteSeedingAppleAccountForCurrentDeviceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidateCache];
  (*(*(a1 + 40) + 16))();
}

- (void)_deleteSeedingAppleAccountWithCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = SeedingDefaults(completionCopy);
  v6 = [v5 stringForKey:@"AppleAccountIdentifier"];

  if (v6)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v8 = [defaultStore accountWithIdentifier:v6];
    v9 = v8;
    if (v8)
    {
      username = [v8 username];
      aida_accountForPrimaryiCloudAccount = [defaultStore aida_accountForPrimaryiCloudAccount];
      username2 = [aida_accountForPrimaryiCloudAccount username];
      v13 = [username isEqualToString:username2];

      if (v13)
      {
        v14 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          [SDBetaManager _deleteSeedingAppleAccountWithCompletion:];
        }

        v16 = SeedingDefaults(v15);
        [v16 removeObjectForKey:@"AppleAccountIdentifier"];

        [(SDBetaManager *)self invalidateCache];
        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:12 userInfo:0];
        completionCopy[2](completionCopy, v17);
      }

      else
      {
        [(SDBetaManager *)self invalidateCache];
        v22 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v6;
          _os_log_impl(&dword_22E41E000, v22, OS_LOG_TYPE_DEFAULT, "Removing Seeding account %@ from account store", buf, 0xCu);
        }

        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __58__SDBetaManager__deleteSeedingAppleAccountWithCompletion___block_invoke;
        v23[3] = &unk_2787CBFB0;
        v24 = completionCopy;
        [defaultStore removeAccount:v9 withCompletionHandler:v23];
      }
    }

    else
    {
      v19 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SDBetaManager _deleteSeedingAppleAccountWithCompletion:];
      }

      v21 = SeedingDefaults(v20);
      [v21 removeObjectForKey:@"AppleAccountIdentifier"];

      [(SDBetaManager *)self invalidateCache];
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v18 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SDBetaManager _deleteSeedingAppleAccountWithCompletion:];
    }

    defaultStore = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:10 userInfo:0];
    completionCopy[2](completionCopy, defaultStore);
  }
}

void __58__SDBetaManager__deleteSeedingAppleAccountWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[SDSeedingLogging betaHandle];
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "Seeding account deleted successfully", v9, 2u);
    }

    v7 = SeedingDefaults(v8);
    [v7 removeObjectForKey:@"AppleAccountIdentifier"];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __58__SDBetaManager__deleteSeedingAppleAccountWithCompletion___block_invoke_cold_1(v5);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 username];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke_358_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)validateBetaEnrollmentTokens:(uint64_t)a3 errorHandler:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SDBetaManager validateBetaEnrollmentTokens:errorHandler:]";
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "[%{public}s called with zero tokens", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __59__SDBetaManager_validateBetaEnrollmentTokens_errorHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_finallyQueryProgramsForSystemAccountsWithPlatforms:(void *)a1 credentials:(NSObject *)a2 betaEnrollmentTokens:shouldSavePrograms:disableBuildPrefixMatching:language:completion:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 URL];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_22E41E000, a2, OS_LOG_TYPE_DEBUG, "URL: %@", v4, 0xCu);
}

- (void)_finallyQueryProgramsForSystemAccountsWithPlatforms:credentials:betaEnrollmentTokens:shouldSavePrograms:disableBuildPrefixMatching:language:completion:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)isBuildPrefix:(void *)a1 greaterThanOrEqualToBuild:.cold.1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)enrollDevice:(uint64_t)a3 inBetaProgram:(uint64_t)a4 completion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SDBetaManager enrollDevice:inBetaProgram:completion:]";
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "Error device passed into %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)enrollDevice:(uint64_t)a3 withEnrollmentMetadata:(uint64_t)a4 completion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SDBetaManager enrollDevice:withEnrollmentMetadata:completion:]";
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "Error device passed into %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __70__SDBetaManager_enrollCurrentDeviceWithEnrollmentMetadata_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)enrollmentMetadataForDevice:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SDBetaManager enrollmentMetadataForDevice:completion:]";
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "Error device passed into %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_saveBetaProgram:(void *)a1 .cold.1(void *a1, void *a2)
{
  [a1 programID];
  v3 = [a2 description];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_saveBetaProgram:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_currentBetaProgram
{
  v1 = [self description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)enrolledBetaProgramForDevice:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SDBetaManager enrolledBetaProgramForDevice:completion:]";
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "Error device passed into %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)unenrollDevice:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SDBetaManager unenrollDevice:completion:]";
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "Error device passed into %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_unenrollFromBetaProgramWithUserIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_22E41E000, v0, OS_LOG_TYPE_DEBUG, "Original asset server [%{public}@] original brain server [%{public}@]", v1, 0x16u);
}

- (void)isDeviceEnrolledInBetaProgram:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SDBetaManager isDeviceEnrolledInBetaProgram:completion:]";
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "Error device passed into %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)canFileFeedbackOnDevice:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SDBetaManager canFileFeedbackOnDevice:completion:]";
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "Error device passed into %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __93__SDBetaManager_enrollInProgramWithToken_userIdentifier_language_shouldSaveToken_completion___block_invoke_cold_2(void *a1)
{
  [a1 programID];
  v7 = SDStringForPlatform([a1 platform]);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)getMigrationProgramForAssetAudience:(void *)a1 completion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [a1 HTTPMethod];
  v5 = [a1 URL];
  v6 = [v5 path];
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(&dword_22E41E000, a2, OS_LOG_TYPE_DEBUG, "-> %{public}@ %{public}@", v7, 0x16u);
}

void __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) HTTPMethod];
  v7 = [*(a1 + 32) URL];
  v8 = [v7 path];
  v9 = 138543874;
  v10 = v6;
  v11 = 2114;
  v12 = v8;
  v13 = 2048;
  v14 = [a2 statusCode];
  _os_log_debug_impl(&dword_22E41E000, a3, OS_LOG_TYPE_DEBUG, "<- %{public}@ %{public}@ %li", &v9, 0x20u);
}

void __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_2(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_5(void *a1)
{
  [a1 statusCode];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_cold_3(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_deleteSeedingAppleAccountWithCompletion:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_deleteSeedingAppleAccountWithCompletion:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__SDBetaManager__deleteSeedingAppleAccountWithCompletion___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end