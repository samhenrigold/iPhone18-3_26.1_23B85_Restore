@interface PBFLegacyPosterMigrationHelper
- (PBFLegacyPosterMigrationHelper)initWithDataStore:(id)store legacyPosterPair:(id)pair;
- (id)lockScreenMigrationViewController;
- (void)finalizeMigrationWithMigratedConfigurationUUID:(id)d;
- (void)lockScreenMigrationViewController;
- (void)migrateHomePosterAndAssociateToConfiguration:(id)configuration completion:(id)completion;
- (void)revertMigrationWithMigratedConfigurationUUID:(id)d;
@end

@implementation PBFLegacyPosterMigrationHelper

- (PBFLegacyPosterMigrationHelper)initWithDataStore:(id)store legacyPosterPair:(id)pair
{
  v48 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  pairCopy = pair;
  v39.receiver = self;
  v39.super_class = PBFLegacyPosterMigrationHelper;
  v9 = [(PBFLegacyPosterMigrationHelper *)&v39 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_legacyPosterPair, pair);
    objc_storeStrong(&v10->_dataStore, store);
    v10->_migrationEnabled = _os_feature_enabled_impl();
    v11 = _os_feature_enabled_impl();
    v10->_distinctHomeScreenMigrationEnabled = v11;
    v12 = PBFLogLegacyPosterMigration(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(PBFLegacyPosterMigrationHelper *)&v10->_migrationEnabled initWithDataStore:v12 legacyPosterPair:?];
    }

    _shouldAllowMigration = [(PBFLegacyPosterMigrationHelper *)v10 _shouldAllowMigration];
    if (_shouldAllowMigration)
    {
      v14 = objc_alloc_init(MEMORY[0x277D37C70]);
      posterMigrationInfo = [v14 posterMigrationInfo];

      objc_storeStrong(&v10->_migrationInfo, posterMigrationInfo);
      pairingType = [posterMigrationInfo pairingType];
      v17 = [posterMigrationInfo homeProvider] == 2 && objc_msgSend(posterMigrationInfo, "pairingType") != 1;
      if ([posterMigrationInfo homeProvider] == 1 && objc_msgSend(posterMigrationInfo, "pairingType") == 2)
      {
        distinctHomeScreenMigrationEnabled = v10->_distinctHomeScreenMigrationEnabled;
        v20 = 1;
      }

      else
      {
        v20 = 0;
        distinctHomeScreenMigrationEnabled = 1;
      }

      migrationInfo = [(PBFLegacyPosterMigrationHelper *)v10 migrationInfo];
      lockProvider = [migrationInfo lockProvider];

      if (!lockProvider)
      {
        v24 = PBFLogLegacyPosterMigration(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [PBFLegacyPosterMigrationHelper initWithDataStore:v24 legacyPosterPair:?];
        }
      }

      v25 = PBFLogLegacyPosterMigration(v23);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 67109888;
        v41 = pairingType != 0;
        v42 = 1024;
        v43 = v17;
        v44 = 1024;
        v45 = v20;
        v46 = 1024;
        v47 = distinctHomeScreenMigrationEnabled & 1;
        _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_INFO, "Supported migration: %d, Collections Home Mismatched: %d, Distinct Photo Home: %d, canMigrateHome:%d", buf, 0x1Au);
      }

      v26 = lockProvider != 0;
      v27 = pairingType != 0;

      v28 = v27 & ~v17 & distinctHomeScreenMigrationEnabled & v26;
      v10->_canMigrateLegacyPoster = v27 & ~v17 & distinctHomeScreenMigrationEnabled & v26;
      v10->_canMigrateLegacyLockPoster = v26;
      v30 = PBFLogLegacyPosterMigration(v29);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
      if (v28 == 1)
      {
        if (v31)
        {
          canMigrateLegacyPoster = v10->_canMigrateLegacyPoster;
          *buf = 67109120;
          v41 = canMigrateLegacyPoster;
          v33 = "Can Migrate:%d";
          v34 = v30;
          v35 = 8;
LABEL_26:
          _os_log_impl(&dword_21B526000, v34, OS_LOG_TYPE_INFO, v33, buf, v35);
        }
      }

      else if (v31)
      {
        v36 = v10->_canMigrateLegacyPoster;
        canMigrateLegacyLockPoster = v10->_canMigrateLegacyLockPoster;
        *buf = 67109376;
        v41 = v36;
        v42 = 1024;
        v43 = canMigrateLegacyLockPoster;
        v33 = "Can Migrate:%d, Lock:%d";
        v34 = v30;
        v35 = 14;
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    v18 = PBFLogLegacyPosterMigration(_shouldAllowMigration);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_INFO, "Migration not enabled", buf, 2u);
    }

    v10->_canMigrateLegacyPoster = 0;
  }

LABEL_28:

  return v10;
}

- (id)lockScreenMigrationViewController
{
  if ([(PBFLegacyPosterMigrationHelper *)self canMigrateLegacyPoster]|| (v3 = [(PBFLegacyPosterMigrationHelper *)self canMigrateLegacyLockPoster], (v3 & 1) != 0))
  {
    migrationInfo = [(PBFLegacyPosterMigrationHelper *)self migrationInfo];
    [migrationInfo lockProvider];

    v5 = PBUIExtensionIdentifierForPosterWallpaperMigrationProvider();
    v6 = *MEMORY[0x277D3EA38];
    v7 = [MEMORY[0x277D3EB88] temporaryPathForRole:v6];
    v8 = MEMORY[0x277D3EB98];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v10 = [v8 incomingConfigurationIdentityWithProvider:v5 role:v6 posterUUID:uUID version:1 supplement:0];

    v11 = MEMORY[0x277D3EBA0];
    contentsURL = [v7 contentsURL];
    v13 = [v11 pathWithContainerURL:contentsURL identity:v10];

    v14 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
    dataStore = [v14 dataStore];

    v16 = [dataStore providerForPath:v13];
    if (!v16)
    {
      v18 = PBFLogLegacyPosterMigration(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PBFLegacyPosterMigrationHelper lockScreenMigrationViewController];
      }

      v20 = 0;
      goto LABEL_18;
    }

    v27 = 0;
    [v13 ensureContentsURLIsReachableAndReturnError:&v27];
    v17 = v27;
    if (v17)
    {
      v18 = v17;
      v19 = PBFLogLegacyPosterMigration(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(PBFLegacyPosterMigrationHelper *)v18 lockScreenMigrationViewController];
      }
    }

    else
    {
      v26 = 0;
      [v13 storeUserInfo:&unk_282D0A3F8 error:&v26];
      v21 = v26;
      if (!v21)
      {
        v23 = MEMORY[0x277D3EB78];
        identity = [v16 identity];
        uUID2 = [MEMORY[0x277CCAD78] UUID];
        v18 = [v23 extensionInstanceForIdentity:identity instanceIdentifier:uUID2];

        v20 = [[PBFLegacyMigrationEditingSceneViewController alloc] initWithProvider:v18 contents:v13 exnihiloPathAssertion:v7 replacing:0];
        v19 = PBFLogLegacyPosterMigration(v20);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_INFO, "(lockScreenMigrationViewController) will provide editing view controller for lock screen legacy migration", buf, 2u);
        }

        goto LABEL_17;
      }

      v18 = v21;
      v19 = PBFLogLegacyPosterMigration(v21);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(PBFLegacyPosterMigrationHelper *)v18 lockScreenMigrationViewController];
      }
    }

    v20 = 0;
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  v5 = PBFLogLegacyPosterMigration(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "(lockScreenMigrationViewController) Unable to migrate legacy poster, returning nil", buf, 2u);
  }

  v20 = 0;
LABEL_19:

  return v20;
}

- (void)migrateHomePosterAndAssociateToConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  _shouldAllowMigration = [(PBFLegacyPosterMigrationHelper *)self _shouldAllowMigration];
  if (!_shouldAllowMigration || (_shouldAllowMigration = [(PBFLegacyPosterMigrationHelper *)self isDistinctHomeScreenMigrationEnabled], (_shouldAllowMigration & 1) == 0))
  {
    v25 = PBFLogLegacyPosterMigration(_shouldAllowMigration);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      (*(completionCopy + 2))(completionCopy, 0, 0);
      goto LABEL_13;
    }

    *buf = 0;
    v26 = "(migrateHomeScreenWallpaperIfNeeded...) Home screen migration not enabled.";
    goto LABEL_10;
  }

  migrationInfo = [(PBFLegacyPosterMigrationHelper *)self migrationInfo];
  pairingType = [migrationInfo pairingType];

  if (pairingType != 2)
  {
    v25 = PBFLogLegacyPosterMigration(v11);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v26 = "(migrateHomeScreenWallpaperIfNeeded...) Home screen migration not needed.";
LABEL_10:
    v27 = v25;
    v28 = OS_LOG_TYPE_INFO;
LABEL_11:
    _os_log_impl(&dword_21B526000, v27, v28, v26, buf, 2u);
    goto LABEL_12;
  }

  migrationInfo2 = [(PBFLegacyPosterMigrationHelper *)self migrationInfo];
  homeProvider = [migrationInfo2 homeProvider];

  if (!homeProvider)
  {
    v25 = PBFLogLegacyPosterMigration(v14);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v26 = "Unable to migrate legacy home wallpaper because we could not resolve a home provider";
    v27 = v25;
    v28 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_11;
  }

  v15 = PBUIExtensionIdentifierForPosterWallpaperMigrationProvider();
  v16 = objc_alloc_init(MEMORY[0x277D3E9E8]);
  [v16 setUserInfo:&unk_282D0A420];
  v17 = [MEMORY[0x277D3E9C8] posterUpdateHomeScreenPosterProvider:v15 sessionInfo:v16];
  v18 = [MEMORY[0x277D3E9C8] posterUpdateHomeScreenAppearance:4];
  homeMigrationQueue = self->_homeMigrationQueue;
  if (!homeMigrationQueue)
  {
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.PosterBoard.LegacyPosterHomeMigration", v20);
    v22 = self->_homeMigrationQueue;
    self->_homeMigrationQueue = v21;

    homeMigrationQueue = self->_homeMigrationQueue;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __90__PBFLegacyPosterMigrationHelper_migrateHomePosterAndAssociateToConfiguration_completion___block_invoke;
  v29[3] = &unk_2782C6338;
  v30 = configurationCopy;
  v31 = v17;
  v32 = v18;
  v33 = completionCopy;
  v23 = v18;
  v24 = v17;
  dispatch_async(homeMigrationQueue, v29);

LABEL_13:
}

void __90__PBFLegacyPosterMigrationHelper_migrateHomePosterAndAssociateToConfiguration_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
  v3 = [v2 dataStore];

  v5 = PBFLogLegacyPosterMigration(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_INFO, "(migrateHomeScreenWallpaperIfNeeded...) Home screen migration required, updating configuration for UUID: %{public}@", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v12[0] = *(a1 + 40);
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__PBFLegacyPosterMigrationHelper_migrateHomePosterAndAssociateToConfiguration_completion___block_invoke_26;
  v10[3] = &unk_2782C5D00;
  v11 = *(a1 + 56);
  [v3 updatePosterConfigurationMatchingUUID:v7 updates:v9 completion:v10];
}

void __90__PBFLegacyPosterMigrationHelper_migrateHomePosterAndAssociateToConfiguration_completion___block_invoke_26(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = PBFLogLegacyPosterMigration(v7);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __90__PBFLegacyPosterMigrationHelper_migrateHomePosterAndAssociateToConfiguration_completion___block_invoke_26_cold_1(v7);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_INFO, "Home screen migrated successfully", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__PBFLegacyPosterMigrationHelper_migrateHomePosterAndAssociateToConfiguration_completion___block_invoke_27;
  block[3] = &unk_2782C6180;
  v10 = *(a1 + 32);
  v15 = v7;
  v16 = v10;
  v14 = v6;
  v11 = v7;
  v12 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)revertMigrationWithMigratedConfigurationUUID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
  dataStore = [v5 dataStore];

  switcherConfiguration = [dataStore switcherConfiguration];
  legacyPosterPair = [(PBFLegacyPosterMigrationHelper *)self legacyPosterPair];
  configurationUUID = [legacyPosterPair configurationUUID];

  configurations = [switcherConfiguration configurations];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __79__PBFLegacyPosterMigrationHelper_revertMigrationWithMigratedConfigurationUUID___block_invoke;
  v30[3] = &unk_2782C61F8;
  v11 = dCopy;
  v31 = v11;
  v12 = [configurations bs_firstObjectPassingTest:v30];

  configurations2 = [switcherConfiguration configurations];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __79__PBFLegacyPosterMigrationHelper_revertMigrationWithMigratedConfigurationUUID___block_invoke_2;
  v28[3] = &unk_2782C61F8;
  v14 = configurationUUID;
  v29 = v14;
  v15 = [configurations2 bs_firstObjectPassingTest:v28];

  if (!v12 || !v15)
  {
    if (!v12 || v15)
    {
      v18 = PBFLogLegacyPosterMigration(v16);
      v24 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v12 || !v15)
      {
        if (!v24)
        {
          goto LABEL_20;
        }

        *buf = 138543618;
        v33 = v14;
        v34 = 2114;
        v35 = v11;
        v23 = "revertMigration: Could not locate configs to remove or set for legacy UUID: %{public}@, UUID: %{public}@";
        v25 = v18;
        v26 = 22;
LABEL_19:
        _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_DEFAULT, v23, buf, v26);
        goto LABEL_20;
      }

      if (!v24)
      {
        goto LABEL_20;
      }

      *buf = 138543362;
      v33 = v11;
      v23 = "revertMigration: Could not locate config to remove for UUID: %{public}@";
    }

    else
    {
      v18 = PBFLogLegacyPosterMigration(v16);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 138543362;
      v33 = v14;
      v23 = "revertMigration: Could not locate config to set for legacy UUID: %{public}@";
    }

    v25 = v18;
    v26 = 12;
    goto LABEL_19;
  }

  switcherConfiguration2 = [dataStore switcherConfiguration];
  v18 = [switcherConfiguration2 mutableCopy];

  [v18 removeConfiguration:v12];
  [v18 setSelectedConfiguration:v15];
  [v18 setDesiredActiveConfiguration:v15];
  v27 = 0;
  v19 = [dataStore updateDataStoreForSwitcherConfiguration:v18 options:0 reason:@"Reverting legacy migration" error:&v27];
  v20 = v27;
  v21 = v20;
  if (v20)
  {
    v22 = PBFLogLegacyPosterMigration(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [PBFLegacyPosterMigrationHelper revertMigrationWithMigratedConfigurationUUID:v21];
    }
  }

LABEL_20:
}

uint64_t __79__PBFLegacyPosterMigrationHelper_revertMigrationWithMigratedConfigurationUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _path];
  v4 = [v3 serverIdentity];
  v5 = [v4 posterUUID];
  v6 = [v5 isEqual:*(a1 + 32)];

  return v6;
}

uint64_t __79__PBFLegacyPosterMigrationHelper_revertMigrationWithMigratedConfigurationUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 _path];
  v4 = [v3 serverIdentity];
  v5 = [v4 posterUUID];
  v6 = [v5 isEqual:*(a1 + 32)];

  return v6;
}

- (void)finalizeMigrationWithMigratedConfigurationUUID:(id)d
{
  v55 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
  dataStore = [v5 dataStore];

  switcherConfiguration = [dataStore switcherConfiguration];
  legacyPosterPair = [(PBFLegacyPosterMigrationHelper *)self legacyPosterPair];
  configurationUUID = [legacyPosterPair configurationUUID];

  configurations = [switcherConfiguration configurations];
  v11 = [configurations mutableCopy];

  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0x7FFFFFFFFFFFFFFFLL;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0x7FFFFFFFFFFFFFFFLL;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__6;
  v44 = __Block_byref_object_dispose__6;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__6;
  v38 = __Block_byref_object_dispose__6;
  v39 = 0;
  v12 = objc_opt_class();
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __81__PBFLegacyPosterMigrationHelper_finalizeMigrationWithMigratedConfigurationUUID___block_invoke;
  v27[3] = &unk_2782C8C98;
  v13 = dCopy;
  v28 = v13;
  v30 = &v40;
  v31 = &v50;
  v14 = configurationUUID;
  v29 = v14;
  v32 = &v34;
  v33 = &v46;
  v15 = [v11 bs_enumerateObjectsOfClass:v12 usingBlock:v27];
  if (v51[3] == 0x7FFFFFFFFFFFFFFFLL || v47[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = PBFLogLegacyPosterMigration(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PBFLegacyPosterMigrationHelper finalizeMigrationWithMigratedConfigurationUUID:v16];
    }
  }

  else
  {
    v16 = [switcherConfiguration mutableCopy];
    [v11 replaceObjectAtIndex:v47[3] withObject:v41[5]];
    [v11 replaceObjectAtIndex:v51[3] withObject:v35[5]];
    [v16 setConfigurations:v11];
    selectedConfiguration = [v16 selectedConfiguration];
    v18 = [selectedConfiguration isEqual:v35[5]];

    if (v18)
    {
      [v16 setSelectedConfiguration:v41[5]];
    }

    activeConfiguration = [v16 activeConfiguration];
    v20 = [activeConfiguration isEqual:v35[5]];

    if (v20)
    {
      [v16 setDesiredActiveConfiguration:v41[5]];
    }

    [v16 removeConfiguration:v35[5]];
    v26 = 0;
    v21 = [dataStore updateDataStoreForSwitcherConfiguration:v16 options:0 reason:@"Finalizing legacy migration" error:&v26];
    v22 = v26;
    v23 = v22;
    if (v22)
    {
      v24 = PBFLogLegacyPosterMigration(v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v23 localizedDescription];
        [(PBFLegacyPosterMigrationHelper *)localizedDescription finalizeMigrationWithMigratedConfigurationUUID:buf, v24];
      }
    }
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
}

void __81__PBFLegacyPosterMigrationHelper_finalizeMigrationWithMigratedConfigurationUUID___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v8 = [v16 _path];
  v9 = [v8 serverIdentity];
  v10 = [v9 posterUUID];
  v11 = [v10 isEqual:a1[4]];

  if (v11)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *(*(a1[7] + 8) + 24) = a3;
  }

  v12 = [v16 _path];
  v13 = [v12 serverIdentity];
  v14 = [v13 posterUUID];
  v15 = [v14 isEqual:a1[5]];

  if (v15)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), a2);
    *(*(a1[9] + 8) + 24) = a3;
  }

  if (*(*(a1[7] + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL && *(*(a1[9] + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *a4 = 1;
  }
}

- (void)initWithDataStore:(os_log_t)log legacyPosterPair:.cold.1(unsigned __int8 *a1, unsigned __int8 *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_debug_impl(&dword_21B526000, log, OS_LOG_TYPE_DEBUG, "MigrationFF: %d, HomeMigrationFF: %d", v5, 0xEu);
}

- (void)lockScreenMigrationViewController
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_21B526000, v0, OS_LOG_TYPE_ERROR, "(lockScreenMigrationViewController) Failed to migrate legacy wallpaper because we could not find provider %{public}@", v1, 0xCu);
}

void __90__PBFLegacyPosterMigrationHelper_migrateHomePosterAndAssociateToConfiguration_completion___block_invoke_26_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_5(&dword_21B526000, v2, v3, "Home screen migration failed: %{public}@", v4, v5, v6, v7);
}

- (void)revertMigrationWithMigratedConfigurationUUID:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_5(&dword_21B526000, v2, v3, "revertMigration: Failed to revert legacy migration: %{public}@", v4, v5, v6, v7);
}

- (void)finalizeMigrationWithMigratedConfigurationUUID:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_21B526000, log, OS_LOG_TYPE_ERROR, "finalizeMigration: Failed to finalize legacy migration: %{public}@", buf, 0xCu);
}

@end