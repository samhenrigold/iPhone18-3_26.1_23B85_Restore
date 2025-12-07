@interface CSLPRFLocalApplicationLibrary
- (BOOL)_isVisibleApplicationForRecord:(uint64_t)record;
- (CSLPRFLocalApplicationLibrary)init;
- (NSArray)allApplications;
- (NSDictionary)allApplicationsDictionary;
- (id)applicationWithBundleIdentifier:(id)identifier;
- (void)_applicationsUninstalledWithRecords:(uint64_t)records;
- (void)_stopObserving;
- (void)addObserver:(id)observer;
- (void)allApplicationsWithCompletion:(id)completion;
- (void)applicationInstallsDidStart:(id)start;
- (void)applicationWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation CSLPRFLocalApplicationLibrary

- (void)applicationInstallsDidStart:(id)start
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__CSLPRFLocalApplicationLibrary_applicationInstallsDidStart___block_invoke;
  v5[3] = &unk_2787444D8;
  v5[4] = self;
  v4 = [start bs_mapNoNulls:v5];
  if ([v4 count])
  {
    [(CSLPRFLocalApplicationLibrary *)self _applicationsUninstalledWithRecords:v4];
  }
}

id __61__CSLPRFLocalApplicationLibrary_applicationInstallsDidStart___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 appState];
  if (([v4 isValid] & 1) == 0)
  {

    goto LABEL_7;
  }

  v5 = [v3 appState];
  v6 = [v5 isDowngraded];

  if (!v6)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v7 = cslprf_app_library_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = [v3 bundleIdentifier];
    v12 = 134218242;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_22CE92000, v7, OS_LOG_TYPE_INFO, "%p App with bundleID %@ is offloaded, will attempt to remove counterparts if needed", &v12, 0x16u);
  }

  v10 = [v3 cslprf_safeCorrespondingApplicationRecord];
LABEL_8:

  return v10;
}

- (void)_applicationsUninstalledWithRecords:(uint64_t)records
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (records)
  {
    array = [MEMORY[0x277CBEB18] array];
    os_unfair_lock_lock((records + 24));
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          bundleIdentifier = [v10 bundleIdentifier];
          v12 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:0];
          v13 = v12;
          if ((!v12 || [v12 isPlaceholder]) && -[CSLPRFLocalApplicationLibrary _isVisibleApplicationForRecord:](records, v10))
          {
            v14 = [*(records + 16) objectForKey:bundleIdentifier];

            if (v14)
            {
              v15 = cslprf_app_library_log();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 134218242;
                recordsCopy = records;
                v26 = 2112;
                v27 = bundleIdentifier;
                _os_log_impl(&dword_22CE92000, v15, OS_LOG_TYPE_INFO, "%p uninstalled, will remove application:%@", buf, 0x16u);
              }

              [*(records + 16) removeObjectForKey:bundleIdentifier];
              [array addObject:bundleIdentifier];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock((records + 24));
    if ([array count])
    {
      v16 = *(records + 8);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __69__CSLPRFLocalApplicationLibrary__applicationsUninstalledWithRecords___block_invoke;
      v18[3] = &unk_278744DC0;
      v18[4] = records;
      v19 = array;
      [v16 notifyObserversWithBlock:v18];
    }

    v3 = v17;
  }
}

- (BOOL)_isVisibleApplicationForRecord:(uint64_t)record
{
  v3 = a2;
  v4 = v3;
  if (record && ([v3 appTags], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", @"hidden"), v5, (v6 & 1) == 0))
  {
    typeForInstallMachinery = [v4 typeForInstallMachinery];
    v7 = ([typeForInstallMachinery isEqualToString:*MEMORY[0x277CC1E30]] & 1) != 0 || objc_msgSend(typeForInstallMachinery, "isEqualToString:", *MEMORY[0x277CC1E40]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v4 = [uninstall bs_mapNoNulls:&__block_literal_global_8];
  [(CSLPRFLocalApplicationLibrary *)self _applicationsUninstalledWithRecords:v4];
}

- (void)applicationsDidInstall:(id)install
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = [install bs_mapNoNulls:&__block_literal_global_48];
  v23 = v4;
  if (self)
  {
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    array3 = [MEMORY[0x277CBEB18] array];
    os_unfair_lock_lock(&self->_lock);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = v23;
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          if ([(CSLPRFLocalApplicationLibrary *)self _isVisibleApplicationForRecord:v10])
          {
            bundleIdentifier = [v10 bundleIdentifier];
            v12 = [(NSMutableDictionary *)self->_lock_cachedApplications objectForKey:bundleIdentifier];

            applicationState = [v10 applicationState];
            isInstalled = [applicationState isInstalled];

            if (isInstalled)
            {
              v15 = [CSLPRFApp appWithApplicationRecord:v10];
              [(NSMutableDictionary *)self->_lock_cachedApplications setObject:v15 forKey:bundleIdentifier];
              v16 = cslprf_app_library_log();
              v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
              if (v12)
              {
                v18 = array2;
                if (v17)
                {
                  *buf = 134218242;
                  *&buf[4] = self;
                  *&buf[12] = 2112;
                  *&buf[14] = v15;
                  _os_log_impl(&dword_22CE92000, v16, OS_LOG_TYPE_INFO, "%p updated application:%@", buf, 0x16u);
                  v18 = array2;
                }
              }

              else
              {
                v18 = array;
                if (v17)
                {
                  *buf = 134218242;
                  *&buf[4] = self;
                  *&buf[12] = 2112;
                  *&buf[14] = v15;
                  _os_log_impl(&dword_22CE92000, v16, OS_LOG_TYPE_INFO, "%p added application:%@", buf, 0x16u);
                  v18 = array;
                }
              }

              [v18 addObject:v15];
            }

            else if (v12)
            {
              v19 = cslprf_app_library_log();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                *buf = 134218242;
                *&buf[4] = self;
                *&buf[12] = 2112;
                *&buf[14] = bundleIdentifier;
                _os_log_impl(&dword_22CE92000, v19, OS_LOG_TYPE_INFO, "%p not installed, will remove application:%@", buf, 0x16u);
              }

              [(NSMutableDictionary *)self->_lock_cachedApplications removeObjectForKey:bundleIdentifier];
              [array3 addObject:bundleIdentifier];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_lock);
    if ([array count])
    {
      observationHelper = self->_observationHelper;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __66__CSLPRFLocalApplicationLibrary_applicationsInstalledWithRecords___block_invoke;
      v36 = &unk_278744DC0;
      selfCopy = self;
      v38 = array;
      [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:buf];
    }

    if ([array2 count])
    {
      v21 = self->_observationHelper;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __66__CSLPRFLocalApplicationLibrary_applicationsInstalledWithRecords___block_invoke_2;
      v29[3] = &unk_278744DC0;
      v29[4] = self;
      v30 = array2;
      [(CSLPRFObservationHelper *)v21 notifyObserversWithBlock:v29];
    }

    if ([array3 count])
    {
      v22 = self->_observationHelper;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __66__CSLPRFLocalApplicationLibrary_applicationsInstalledWithRecords___block_invoke_3;
      v27[3] = &unk_278744DC0;
      v27[4] = self;
      v28 = array3;
      [(CSLPRFObservationHelper *)v22 notifyObserversWithBlock:v27];
    }

    v4 = v23;
  }
}

- (void)removeObserver:(id)observer
{
  [(CSLPRFObservationHelper *)self->_observationHelper removeObserver:observer];
  if (![(CSLPRFObservationHelper *)self->_observationHelper observerCount])
  {

    [(CSLPRFLocalApplicationLibrary *)self _stopObserving];
  }
}

- (void)_stopObserving
{
  if (self)
  {
    os_unfair_lock_lock((self + 24));
    v2 = *(self + 28);
    *(self + 28) = 0;
    os_unfair_lock_unlock((self + 24));
    if (v2 == 1)
    {
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      [defaultWorkspace removeObserver:self];
    }
  }
}

- (void)addObserver:(id)observer
{
  observationHelper = self->_observationHelper;
  observerCopy = observer;
  observerCount = [(CSLPRFObservationHelper *)observationHelper observerCount];
  [(CSLPRFObservationHelper *)self->_observationHelper addObserver:observerCopy];
  allApplications = [(CSLPRFLocalApplicationLibrary *)self allApplications];
  [observerCopy applicationLibrary:self didAddApplications:allApplications];

  if (!observerCount)
  {
    os_unfair_lock_lock(&self->_lock);
    lock_observing = self->_lock_observing;
    self->_lock_observing = 1;
    os_unfair_lock_unlock(&self->_lock);
    if (!lock_observing)
    {
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      [defaultWorkspace addObserver:self];
    }
  }
}

- (void)allApplicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  allApplications = [(CSLPRFLocalApplicationLibrary *)self allApplications];
  (*(completion + 2))(completionCopy, allApplications);
}

- (NSDictionary)allApplicationsDictionary
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__CSLPRFLocalApplicationLibrary_allApplicationsDictionary__block_invoke;
  v21[3] = &unk_278744490;
  v21[4] = self;
  v4 = MEMORY[0x2318C26B0](v21);
  v5 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  [v5 setFilter:v4];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [CSLPRFApp appWithApplicationRecord:*(*(&v17 + 1) + 8 * i), v17];
        bundleIdentifier = [v11 bundleIdentifier];
        [(NSMutableDictionary *)dictionary setObject:v11 forKey:bundleIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  os_unfair_lock_lock(&self->_lock);
  lock_cachedApplications = self->_lock_cachedApplications;
  self->_lock_cachedApplications = dictionary;
  v14 = dictionary;

  os_unfair_lock_unlock(&self->_lock);
  v15 = [(NSMutableDictionary *)v14 copy];

  return v15;
}

BOOL __58__CSLPRFLocalApplicationLibrary_allApplicationsDictionary__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isPlaceholder] & 1) != 0 || objc_msgSend(v3, "isSystemPlaceholder"))
  {
    v4 = cslprf_app_library_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = [v3 bundleIdentifier];
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_22CE92000, v4, OS_LOG_TYPE_ERROR, "%@ Unexpectedly received a placeholder for %@", &v9, 0x16u);
    }

    v5 = 0;
  }

  else
  {
    v5 = [(CSLPRFLocalApplicationLibrary *)*(a1 + 32) _isVisibleApplicationForRecord:v3];
  }

  return v5;
}

- (NSArray)allApplications
{
  allApplicationsDictionary = [(CSLPRFLocalApplicationLibrary *)self allApplicationsDictionary];
  allValues = [allApplicationsDictionary allValues];

  return allValues;
}

- (void)applicationWithBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8 = [(CSLPRFLocalApplicationLibrary *)self applicationWithBundleIdentifier:identifier];
  (*(completion + 2))(completionCopy, v8);
}

- (id)applicationWithBundleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy && [identifierCopy length])
  {
    v12 = 0;
    v6 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v5 allowPlaceholder:0 error:&v12];
    v7 = v12;
    if (v7)
    {
      v8 = cslprf_app_library_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        selfCopy = self;
        v15 = 2112;
        v16 = v5;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_22CE92000, v8, OS_LOG_TYPE_INFO, "%@ failed to lookup LSApplicationRecord for bundleIdentifier:%@  error:%@", buf, 0x20u);
      }

      os_unfair_lock_lock(&self->_lock);
      [(NSMutableDictionary *)self->_lock_cachedApplications removeObjectForKey:v5];
      os_unfair_lock_unlock(&self->_lock);
      v9 = 0;
    }

    else
    {
      v9 = [CSLPRFApp appWithApplicationRecord:v6];
      bundleIdentifier = [v9 bundleIdentifier];
      if (bundleIdentifier)
      {
        os_unfair_lock_lock(&self->_lock);
        [(NSMutableDictionary *)self->_lock_cachedApplications setObject:v9 forKey:bundleIdentifier];
        os_unfair_lock_unlock(&self->_lock);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  [(CSLPRFLocalApplicationLibrary *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = CSLPRFLocalApplicationLibrary;
  [(CSLPRFLocalApplicationLibrary *)&v3 dealloc];
}

- (CSLPRFLocalApplicationLibrary)init
{
  v9.receiver = self;
  v9.super_class = CSLPRFLocalApplicationLibrary;
  v2 = [(CSLPRFLocalApplicationLibrary *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(CSLPRFObservationHelper);
    observationHelper = v3->_observationHelper;
    v3->_observationHelper = v4;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    lock_cachedApplications = v3->_lock_cachedApplications;
    v3->_lock_cachedApplications = dictionary;
  }

  return v3;
}

@end