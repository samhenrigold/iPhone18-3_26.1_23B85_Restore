@interface CSLPRFLegacyWatchApplicationLibrary
- (CSLPRFLegacyWatchApplicationLibrary)initWithPairedWatch:(id)watch;
- (NSArray)allApplications;
- (NSDictionary)allApplicationsDictionary;
- (id)applicationWithBundleIdentifier:(id)identifier;
- (void)_ensureApplicationsCachedSync;
- (void)_loadApplicationsWithCompletion:(uint64_t)completion;
- (void)addObserver:(id)observer;
- (void)allApplicationsWithCompletion:(id)completion;
- (void)applicationWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)applicationsInstalled:(id)installed onDeviceWithPairingID:(id)d;
- (void)applicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d;
- (void)applicationsUpdated:(id)updated onDeviceWithPairingID:(id)d;
- (void)dealloc;
- (void)nanoRegistrySource:(id)source updatedWithAllApplications:(id)applications;
@end

@implementation CSLPRFLegacyWatchApplicationLibrary

- (void)applicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  uninstalledCopy = uninstalled;
  dCopy = d;
  pairingID = [(PDRDevice *)self->_pairedWatch pairingID];

  if (pairingID == dCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = uninstalledCopy;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(NSMutableDictionary *)self->_lock_cachedApplications removeObjectForKey:*(*(&v17 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    os_unfair_lock_unlock(&self->_lock);
    observationHelper = self->_observationHelper;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __85__CSLPRFLegacyWatchApplicationLibrary_applicationsUninstalled_onDeviceWithPairingID___block_invoke;
    v15[3] = &unk_278744DC0;
    v15[4] = self;
    v16 = v9;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v15];
  }
}

- (void)applicationsUpdated:(id)updated onDeviceWithPairingID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  dCopy = d;
  pairingID = [(PDRDevice *)self->_pairedWatch pairingID];

  if (pairingID == dCopy)
  {
    v9 = [updatedCopy bs_mapNoNulls:&__block_literal_global_15];
    os_unfair_lock_lock(&self->_lock);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          lock_cachedApplications = self->_lock_cachedApplications;
          bundleIdentifier = [v15 bundleIdentifier];
          [(NSMutableDictionary *)lock_cachedApplications setObject:v15 forKey:bundleIdentifier];
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    os_unfair_lock_unlock(&self->_lock);
    observationHelper = self->_observationHelper;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __81__CSLPRFLegacyWatchApplicationLibrary_applicationsUpdated_onDeviceWithPairingID___block_invoke_2;
    v20[3] = &unk_278744DC0;
    v20[4] = self;
    v21 = v10;
    v19 = v10;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v20];
  }
}

- (void)applicationsInstalled:(id)installed onDeviceWithPairingID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  installedCopy = installed;
  dCopy = d;
  pairingID = [(PDRDevice *)self->_pairedWatch pairingID];

  if (pairingID == dCopy)
  {
    v9 = [installedCopy bs_mapNoNulls:&__block_literal_global_12];
    os_unfair_lock_lock(&self->_lock);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          lock_cachedApplications = self->_lock_cachedApplications;
          bundleIdentifier = [v15 bundleIdentifier];
          [(NSMutableDictionary *)lock_cachedApplications setObject:v15 forKey:bundleIdentifier];
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    os_unfair_lock_unlock(&self->_lock);
    observationHelper = self->_observationHelper;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __83__CSLPRFLegacyWatchApplicationLibrary_applicationsInstalled_onDeviceWithPairingID___block_invoke_2;
    v20[3] = &unk_278744DC0;
    v20[4] = self;
    v21 = v10;
    v19 = v10;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v20];
  }
}

- (void)nanoRegistrySource:(id)source updatedWithAllApplications:(id)applications
{
  v64 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_lock_firstPartyApplications;
  v7 = MEMORY[0x277CBEB38];
  v8 = [applicationsCopy bs_mapNoNulls:&__block_literal_global_2443];
  v9 = [v7 dictionaryWithObjects:applicationsCopy forKeys:v8];

  objc_storeStrong(&self->_lock_firstPartyApplications, v9);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v10 = applicationsCopy;
  v11 = [v10 countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v59;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v59 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v58 + 1) + 8 * i);
        lock_cachedApplications = self->_lock_cachedApplications;
        bundleIdentifier = [v15 bundleIdentifier];
        [(NSMutableDictionary *)lock_cachedApplications setObject:v15 forKey:bundleIdentifier];
      }

      v12 = [v10 countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v12);
  }

  os_unfair_lock_unlock(&self->_lock);
  v18 = MEMORY[0x277CBEB98];
  v43 = v6;
  allKeys = [(NSMutableDictionary *)v6 allKeys];
  v20 = [v18 setWithArray:allKeys];

  v21 = MEMORY[0x277CBEB98];
  v41 = v9;
  allKeys2 = [v9 allKeys];
  v23 = [v21 setWithArray:allKeys2];

  v24 = [v23 mutableCopy];
  [v24 minusSet:v20];
  v25 = [v23 mutableCopy];
  [v25 minusSet:v24];
  v42 = v20;
  v26 = [v20 mutableCopy];
  [v26 minusSet:v23];
  os_unfair_lock_lock(&self->_lock);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v27 = v26;
  v28 = [v27 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v55;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v55 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(NSMutableDictionary *)self->_lock_cachedApplications removeObjectForKey:*(*(&v54 + 1) + 8 * j)];
      }

      v29 = [v27 countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v29);
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([v24 count])
  {
    allValues = [v41 allValues];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_2;
    v52[3] = &unk_278744C28;
    v53 = v24;
    v33 = [allValues bs_filter:v52];

    observationHelper = self->_observationHelper;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_3;
    v50[3] = &unk_278744DC0;
    v50[4] = self;
    v51 = v33;
    v35 = v33;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v50];
  }

  if ([v25 count])
  {
    allValues2 = [v41 allValues];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_4;
    v48[3] = &unk_278744C28;
    v49 = v25;
    v37 = [allValues2 bs_filter:v48];

    v38 = self->_observationHelper;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_5;
    v46[3] = &unk_278744DC0;
    v46[4] = self;
    v47 = v37;
    v39 = v37;
    [(CSLPRFObservationHelper *)v38 notifyObserversWithBlock:v46];
  }

  if ([v27 count])
  {
    v40 = self->_observationHelper;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_6;
    v44[3] = &unk_278744DC0;
    v44[4] = self;
    v45 = v27;
    [(CSLPRFObservationHelper *)v40 notifyObserversWithBlock:v44];
  }
}

uint64_t __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 allObjects];
  [v4 applicationLibrary:v2 didRemoveApplications:v5];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CSLPRFLegacyWatchApplicationLibrary_addObserver___block_invoke;
  v6[3] = &unk_278744C00;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  [(CSLPRFLegacyWatchApplicationLibrary *)self _loadApplicationsWithCompletion:v6];
}

void __51__CSLPRFLegacyWatchApplicationLibrary_addObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 24);
  v5 = a2;
  [v4 addObserver:v3];
  [*(a1 + 40) applicationLibrary:*(a1 + 32) didAddApplications:v5];
}

- (void)_loadApplicationsWithCompletion:(uint64_t)completion
{
  v3 = a2;
  v4 = v3;
  if (completion)
  {
    v5 = *(completion + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__CSLPRFLegacyWatchApplicationLibrary__loadApplicationsWithCompletion___block_invoke;
    v6[3] = &unk_278744F48;
    v6[4] = completion;
    v7 = v3;
    [v5 allApplicationsWithCompletion:v6];
  }
}

void __71__CSLPRFLegacyWatchApplicationLibrary__loadApplicationsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v2;
  if (v3)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __108__CSLPRFLegacyWatchApplicationLibrary__withFirstPartyApplications_loadAppConduitApplicationsWithCompletion___block_invoke;
    v16[3] = &unk_278744C70;
    v17 = v4;
    v7 = v6;
    v18 = v7;
    v19 = v3;
    v20 = v5;
    v8 = MEMORY[0x2318C26B0](v16);
    v9 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    [v9 addObserver:v3];
    v10 = [*(v3 + 16) pairingID];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __108__CSLPRFLegacyWatchApplicationLibrary__withFirstPartyApplications_loadAppConduitApplicationsWithCompletion___block_invoke_2;
    v13[3] = &unk_278744C98;
    v14 = v7;
    v15 = v8;
    v13[4] = v3;
    v11 = v7;
    v12 = v8;
    [v9 enumerateLocallyAvailableApplicationsForDeviceWithPairingID:v10 options:1 withBlock:v13];
  }
}

void __108__CSLPRFLegacyWatchApplicationLibrary__withFirstPartyApplications_loadAppConduitApplicationsWithCompletion___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v24;
    *&v5 = 138412802;
    v18 = v5;
    v19 = v2;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 bundleIdentifier];
        v11 = [*(a1 + 40) objectForKey:v10];

        if (v11)
        {
          v12 = cslprf_app_library_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = *(a1 + 48);
            v14 = [*(a1 + 40) objectForKey:v10];
            *buf = v18;
            v28 = v13;
            v2 = v19;
            v29 = 2112;
            v30 = v14;
            v31 = 2112;
            v32 = v9;
            _os_log_error_impl(&dword_22CE92000, v12, OS_LOG_TYPE_ERROR, "%@ appConduit has same app:%@ as nanoAppRegistry:%@", buf, 0x20u);
          }
        }

        else
        {
          [*(a1 + 40) setObject:v9 forKey:v10];
          [v2 setObject:v9 forKey:v10];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v6);
  }

  os_unfair_lock_lock((*(a1 + 48) + 48));
  v15 = *(a1 + 48);
  v16 = *(v15 + 40);
  *(v15 + 40) = v2;
  v17 = v2;

  os_unfair_lock_unlock((*(a1 + 48) + 48));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__CSLPRFLegacyWatchApplicationLibrary__withFirstPartyApplications_loadAppConduitApplicationsWithCompletion___block_invoke_16;
  block[3] = &unk_278744F20;
  v22 = *(a1 + 56);
  v21 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __108__CSLPRFLegacyWatchApplicationLibrary__withFirstPartyApplications_loadAppConduitApplicationsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = cslprf_app_library_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = [v6 localizedDescription];
      v18 = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_error_impl(&dword_22CE92000, v7, OS_LOG_TYPE_ERROR, "%@ loadApplications error: %@", &v18, 0x16u);
    }

LABEL_4:

    (*(*(a1 + 48) + 16))();
    v8 = 0;
    goto LABEL_9;
  }

  v9 = cslprf_app_library_log();
  v7 = v9;
  if (!v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) count];
      v18 = 138412546;
      v19 = v13;
      v20 = 1024;
      LODWORD(v21) = v14;
      _os_log_impl(&dword_22CE92000, v7, OS_LOG_TYPE_INFO, "%@ loadApplications found %d apps", &v18, 0x12u);
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v18 = 138412546;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEBUG, "%@ loadApplications app %@", &v18, 0x16u);
  }

  v10 = [CSLPRFApp appWithACXRemoteApplication:v5];
  v11 = [v10 bundleIdentifier];
  [*(a1 + 40) setObject:v10 forKey:v11];

  v8 = 1;
LABEL_9:

  return v8;
}

void __108__CSLPRFLegacyWatchApplicationLibrary__withFirstPartyApplications_loadAppConduitApplicationsWithCompletion___block_invoke_16(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) allValues];
  (*(v1 + 16))(v1, v2);
}

- (void)allApplicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__CSLPRFLegacyWatchApplicationLibrary_allApplicationsWithCompletion___block_invoke;
  v6[3] = &unk_278744BD8;
  v7 = completionCopy;
  v5 = completionCopy;
  [(CSLPRFLegacyWatchApplicationLibrary *)self _loadApplicationsWithCompletion:v6];
}

- (void)applicationWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__CSLPRFLegacyWatchApplicationLibrary_applicationWithBundleIdentifier_completion___block_invoke;
  v10[3] = &unk_278744BB0;
  v11 = identifierCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = identifierCopy;
  v9 = completionCopy;
  [(CSLPRFLegacyWatchApplicationLibrary *)self _loadApplicationsWithCompletion:v10];
}

void __82__CSLPRFLegacyWatchApplicationLibrary_applicationWithBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) applicationWithBundleIdentifier:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (NSDictionary)allApplicationsDictionary
{
  [(CSLPRFLegacyWatchApplicationLibrary *)self _ensureApplicationsCachedSync];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_lock_cachedApplications copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_ensureApplicationsCachedSync
{
  v10 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    v2 = *(self + 32);
    os_unfair_lock_unlock((self + 48));
    if (v2)
    {
      v3 = dispatch_semaphore_create(0);
      v4 = cslprf_app_library_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_22CE92000, v4, OS_LOG_TYPE_DEFAULT, "%@ will block while fetching applications asynchronously", buf, 0xCu);
      }

      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __68__CSLPRFLegacyWatchApplicationLibrary__ensureApplicationsCachedSync__block_invoke;
      v6[3] = &unk_278744B88;
      v7 = v3;
      v5 = v3;
      [self allApplicationsWithCompletion:v6];
      dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

- (NSArray)allApplications
{
  allApplicationsDictionary = [(CSLPRFLegacyWatchApplicationLibrary *)self allApplicationsDictionary];
  allValues = [allApplicationsDictionary allValues];

  return allValues;
}

- (id)applicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(CSLPRFLegacyWatchApplicationLibrary *)self _ensureApplicationsCachedSync];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_cachedApplications objectForKey:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)dealloc
{
  if (self)
  {
    mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    [mEMORY[0x277CEAF80] removeObserver:self];

    [(CSLPRFNanoAppRegistryApplicationSource *)self->_nanoAppRegistrySource setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = CSLPRFLegacyWatchApplicationLibrary;
  [(CSLPRFLegacyWatchApplicationLibrary *)&v4 dealloc];
}

- (CSLPRFLegacyWatchApplicationLibrary)initWithPairedWatch:(id)watch
{
  watchCopy = watch;
  v13.receiver = self;
  v13.super_class = CSLPRFLegacyWatchApplicationLibrary;
  v6 = [(CSLPRFLegacyWatchApplicationLibrary *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_pairedWatch, watch);
    v8 = objc_alloc_init(CSLPRFObservationHelper);
    observationHelper = v7->_observationHelper;
    v7->_observationHelper = v8;

    v10 = objc_alloc_init(CSLPRFNanoAppRegistryApplicationSource);
    nanoAppRegistrySource = v7->_nanoAppRegistrySource;
    v7->_nanoAppRegistrySource = v10;

    [(CSLPRFNanoAppRegistryApplicationSource *)v7->_nanoAppRegistrySource setDelegate:v7];
  }

  return v7;
}

@end