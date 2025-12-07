@interface VGOEMApplicationFinder
- (BOOL)_addOEMApplicationForApplicationRecordIfNeeded:(id)needed;
- (BOOL)_removeOEMApplicationForBundleIdentifier:(id)identifier;
- (NSDictionary)allowlist;
- (NSSet)disabledAppIdentifiers;
- (VGOEMApplicationFinder)init;
- (VGOEMApplicationFinderUpdates)delegate;
- (id)_allowlistPayload;
- (id)_applicationRecordForBundleIdentifier:(id)identifier;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)dealloc;
- (void)findOEMApplications;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation VGOEMApplicationFinder

- (VGOEMApplicationFinder)init
{
  v17.receiver = self;
  v17.super_class = VGOEMApplicationFinder;
  v2 = [(VGOEMApplicationFinder *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("VGOEMApplicationFinderQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_opt_new();
    applications = v2->_applications;
    v2->_applications = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v8 setWithObjects:{v10, v12, 0}];
    requiredIntents = v2->_requiredIntents;
    v2->_requiredIntents = v13;

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace addObserver:v2];

    _GEOConfigAddDelegateListenerForKey();
  }

  return v2;
}

- (void)findOEMApplications
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__VGOEMApplicationFinder_findOEMApplications__block_invoke;
  v4[3] = &unk_279E26E88;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __45__VGOEMApplicationFinder_findOEMApplications__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v21 = VGGetVirtualGarageLog();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 136315394;
    v45 = "[VGOEMApplicationFinder findOEMApplications]_block_invoke";
    v46 = 1024;
    v47 = 221;
    v22 = "strongSelf went away in %s line %d";
    v23 = v21;
    v24 = OS_LOG_TYPE_ERROR;
    v25 = 18;
LABEL_43:
    _os_log_impl(&dword_270EC1000, v23, v24, v22, buf, v25);
    goto LABEL_44;
  }

  v2 = VGGetOEMApplicationLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_270EC1000, v2, OS_LOG_TYPE_INFO, "Finding OEM apps", buf, 2u);
  }

  v3 = VGGetOEMApplicationLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VGGetOEMApplicationLog();
  v6 = v5;
  v7 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270EC1000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "FindOEMApplications", "", buf, 2u);
  }

  BOOL = GEOConfigGetBOOL();
  v9 = VGGetOEMApplicationLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!BOOL)
  {
    v38 = v4 - 1;
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "Allowlist is disabled; querying all installed apps", buf, 2u);
    }

    v11 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
    v26 = objc_autoreleasePoolPush();
    v27 = [v11 nextObject];
    if (v27)
    {
      v28 = v27;
      v14 = 0;
      do
      {
        v29 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [v28 bundleIdentifier];
          *buf = 138412290;
          v45 = v30;
          _os_log_impl(&dword_270EC1000, v29, OS_LOG_TYPE_INFO, "Processing bundle id %@", buf, 0xCu);
        }

        v14 |= [WeakRetained _addOEMApplicationForApplicationRecordIfNeeded:v28];
        objc_autoreleasePoolPop(v26);
        v26 = objc_autoreleasePoolPush();
        v31 = [v11 nextObject];

        v28 = v31;
      }

      while (v31);
    }

    else
    {
      LOBYTE(v14) = 0;
    }

    objc_autoreleasePoolPop(v26);
    goto LABEL_33;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "Allowlist enabled; querying all allowlist apps", buf, 2u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = [WeakRetained allowlist];
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v37 = v4;
    v38 = v4 - 1;
    v14 = 0;
    v15 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v39 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v45 = v17;
          _os_log_impl(&dword_270EC1000, v19, OS_LOG_TYPE_INFO, "Processing bundle id %@", buf, 0xCu);
        }

        v20 = [WeakRetained _applicationRecordForBundleIdentifier:v17];
        v14 |= [WeakRetained _addOEMApplicationForApplicationRecordIfNeeded:v20];

        objc_autoreleasePoolPop(v18);
      }

      v13 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v13);
    v4 = v37;
LABEL_33:
    v7 = v38;
    goto LABEL_34;
  }

  LOBYTE(v14) = 0;
LABEL_34:

  v32 = VGGetOEMApplicationLog();
  v33 = v32;
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270EC1000, v33, OS_SIGNPOST_INTERVAL_END, v4, "FindOEMApplications", "", buf, 2u);
  }

  v21 = VGGetOEMApplicationLog();
  v34 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if ((v14 & 1) == 0)
  {
    if (!v34)
    {
      goto LABEL_44;
    }

    *buf = 0;
    v22 = "No OEM apps found";
    v23 = v21;
    v24 = OS_LOG_TYPE_INFO;
    v25 = 2;
    goto LABEL_43;
  }

  if (v34)
  {
    *buf = 0;
    _os_log_impl(&dword_270EC1000, v21, OS_LOG_TYPE_INFO, "Found OEM apps", buf, 2u);
  }

  v21 = [WeakRetained delegate];
  v35 = [WeakRetained applications];
  v36 = [v35 allValues];
  [v21 OEMAppsUpdated:v36];

LABEL_44:
}

- (NSDictionary)allowlist
{
  v29 = *MEMORY[0x277D85DE8];
  allowlist = self->_allowlist;
  if (allowlist)
  {
    goto LABEL_21;
  }

  selfCopy = self;
  _allowlistPayload = [(VGOEMApplicationFinder *)self _allowlistPayload];
  v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(_allowlistPayload, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = _allowlistPayload;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = v6;
  v8 = *v23;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v22 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = GEOConfigGetString();
        v12 = [v10 objectForKeyedSubscript:v11];

        v13 = GEOConfigGetString();
        v14 = [v10 objectForKeyedSubscript:v13];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSDictionary *)v21 setObject:v14 forKeyedSubscript:v12];

            goto LABEL_14;
          }
        }
      }

      v12 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v10;
        _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_ERROR, "Encountered a bundle that is malformed: %@", buf, 0xCu);
      }

LABEL_14:
    }

    v7 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  }

  while (v7);
LABEL_16:

  v15 = selfCopy->_allowlist;
  selfCopy->_allowlist = v21;
  v16 = v21;

  v17 = [(NSDictionary *)selfCopy->_allowlist count];
  if (!v17)
  {
    v18 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270EC1000, v18, OS_LOG_TYPE_ERROR, "Error parsing manifest resource. Not having any allowlisted apps is a grave error.", buf, 2u);
    }
  }

  allowlist = selfCopy->_allowlist;
LABEL_21:

  return allowlist;
}

- (id)_allowlistPayload
{
  v2 = objc_autoreleasePoolPush();
  v3 = VGAllowlistPayload();
  v4 = GEOConfigGetString();
  v5 = [v3 objectForKeyedSubscript:v4];

  if ([v5 count])
  {
    v6 = v5;
  }

  else
  {
    v7 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "No allowlisted apps. Returning.", v9, 2u);
    }

    v6 = 0;
  }

  objc_autoreleasePoolPop(v2);

  return v6;
}

- (VGOEMApplicationFinderUpdates)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  GEOConfigRemoveDelegateListenerForAllKeys();
  v4.receiver = self;
  v4.super_class = VGOEMApplicationFinder;
  [(VGOEMApplicationFinder *)&v4 dealloc];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v15 = *MEMORY[0x277D85DE8];
  uninstallCopy = uninstall;
  v6 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__VGOEMApplicationFinder_applicationsDidUninstall___block_invoke;
  v10[3] = &unk_279E26F20;
  objc_copyWeak(&v12, buf);
  v11 = uninstallCopy;
  v9 = uninstallCopy;
  dispatch_async(queue, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __51__VGOEMApplicationFinder_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[VGOEMApplicationFinder applicationsDidUninstall:]_block_invoke";
      v21 = 1024;
      v22 = 300;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }

    goto LABEL_15;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v4)
  {
LABEL_15:

    goto LABEL_16;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v15;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v14 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 bundleIdentifier];
        v6 |= [WeakRetained _removeOEMApplicationForBundleIdentifier:v11];

        objc_autoreleasePoolPop(v10);
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v5);

  if (v6)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 3);
    v12 = [WeakRetained applications];
    v13 = [v12 allValues];
    [v3 OEMAppsUpdated:v13];

    goto LABEL_15;
  }

LABEL_16:
}

- (void)applicationsDidInstall:(id)install
{
  v15 = *MEMORY[0x277D85DE8];
  installCopy = install;
  v6 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__VGOEMApplicationFinder_applicationsDidInstall___block_invoke;
  v10[3] = &unk_279E26F20;
  objc_copyWeak(&v12, buf);
  v11 = installCopy;
  v9 = installCopy;
  dispatch_async(queue, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __49__VGOEMApplicationFinder_applicationsDidInstall___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[VGOEMApplicationFinder applicationsDidInstall:]_block_invoke";
      v22 = 1024;
      v23 = 275;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }

    goto LABEL_15;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v4)
  {
LABEL_15:

    goto LABEL_16;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v16;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v15 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 bundleIdentifier];
        v12 = [WeakRetained _applicationRecordForBundleIdentifier:v11];
        v6 |= [WeakRetained _addOEMApplicationForApplicationRecordIfNeeded:v12];

        objc_autoreleasePoolPop(v10);
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v5);

  if (v6)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 3);
    v13 = [WeakRetained applications];
    v14 = [v13 allValues];
    [v3 OEMAppsUpdated:v14];

    goto LABEL_15;
  }

LABEL_16:
}

- (BOOL)_removeOEMApplicationForBundleIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  applications = [(VGOEMApplicationFinder *)self applications];
  v6 = [applications objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    v7 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = identifierCopy;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "Removed application: %@", &v10, 0xCu);
    }

    applications2 = [(VGOEMApplicationFinder *)self applications];
    [applications2 setObject:0 forKeyedSubscript:identifierCopy];
  }

  return v6 != 0;
}

- (BOOL)_addOEMApplicationForApplicationRecordIfNeeded:(id)needed
{
  v30 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  bundleIdentifier = [neededCopy bundleIdentifier];
  if (bundleIdentifier)
  {
    applications = [(VGOEMApplicationFinder *)self applications];
    v7 = [applications objectForKeyedSubscript:bundleIdentifier];

    if (!v7)
    {
      v9 = [MEMORY[0x277CD3A68] appInfoWithApplicationRecord:neededCopy];
      supportedIntents = [v9 supportedIntents];

      v8 = [(NSSet *)self->_requiredIntents isSubsetOfSet:supportedIntents];
      if (v8)
      {
        v11 = [[VGOEMApplication alloc] initWithIdentifier:bundleIdentifier applicationRecord:neededCopy];
        allowlist = [(VGOEMApplicationFinder *)self allowlist];
        v13 = [allowlist objectForKeyedSubscript:bundleIdentifier];
        [(VGOEMApplication *)v11 setAllowedFormulaIDs:v13];

        disabledAppIdentifiers = [(VGOEMApplicationFinder *)self disabledAppIdentifiers];
        -[VGOEMApplication setEnabled:](v11, "setEnabled:", [disabledAppIdentifiers containsObject:bundleIdentifier] ^ 1);

        v15 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v26 = 138412290;
          v27 = bundleIdentifier;
          _os_log_impl(&dword_270EC1000, v15, OS_LOG_TYPE_INFO, "Added application: %@", &v26, 0xCu);
        }

        applications2 = [(VGOEMApplicationFinder *)self applications];
        [applications2 setObject:v11 forKeyedSubscript:bundleIdentifier];

        goto LABEL_14;
      }

      allowlist2 = [(VGOEMApplicationFinder *)self allowlist];
      v18 = [allowlist2 objectForKeyedSubscript:bundleIdentifier];

      v19 = VGGetOEMApplicationLog();
      v11 = v19;
      if (v18)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          requiredIntents = self->_requiredIntents;
          v26 = 138412546;
          v27 = bundleIdentifier;
          v28 = 2112;
          v29 = requiredIntents;
          v21 = "allowlisted application '%@' doesn't support our required intents: %@";
          p_super = &v11->super;
          v23 = OS_LOG_TYPE_ERROR;
LABEL_13:
          _os_log_impl(&dword_270EC1000, p_super, v23, v21, &v26, 0x16u);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v24 = self->_requiredIntents;
        v26 = 138412546;
        v27 = bundleIdentifier;
        v28 = 2112;
        v29 = v24;
        v21 = "application '%@' doesn't support our required intents: %@";
        p_super = &v11->super;
        v23 = OS_LOG_TYPE_INFO;
        goto LABEL_13;
      }

LABEL_14:

      goto LABEL_15;
    }
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (id)_applicationRecordForBundleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy && (!GEOConfigGetBOOL() || (-[VGOEMApplicationFinder allowlist](self, "allowlist"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:identifierCopy], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6)))
  {
    applications = [(VGOEMApplicationFinder *)self applications];
    v8 = [applications objectForKeyedSubscript:identifierCopy];

    if (v8)
    {
      v9 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v16 = identifierCopy;
        _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_DEBUG, "Won't create an LSAppRecord for bundleId: %@ as we already have this app saved.", buf, 0xCu);
      }

      v10 = 0;
    }

    else
    {
      v14 = 0;
      v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v14];
      v9 = v14;
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v12 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v16 = identifierCopy;
          v17 = 2112;
          v18 = v9;
          _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_ERROR, "Failed making LSApplicationRecord for '%@': %@. App is not installed", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  var1 = key.var1;
  v4 = *&key.var0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__VGOEMApplicationFinder_valueChangedForGEOConfigKey___block_invoke;
  v7[3] = &unk_279E26B90;
  objc_copyWeak(v8, &location);
  v8[1] = v4;
  v8[2] = var1;
  dispatch_async(queue, v7);
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __54__VGOEMApplicationFinder_valueChangedForGEOConfigKey___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v14 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[VGOEMApplicationFinder valueChangedForGEOConfigKey:]_block_invoke";
      v24 = 1024;
      v25 = 137;
      _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }

    goto LABEL_17;
  }

  if (*(a1 + 40) == 17 && *(a1 + 48) == &VirtualGarageConfig_EVRoutingDisabledApplications_Metadata)
  {
    [WeakRetained setDisabledAppIdentifiers:0];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [v3 applications];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v3 applications];
          v12 = [v11 objectForKeyedSubscript:v10];

          v13 = [v3 disabledAppIdentifiers];
          [v12 setEnabled:{objc_msgSend(v13, "containsObject:", v10) ^ 1}];
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v14 = [v3 delegate];
    v15 = [v3 applications];
    v16 = [v15 allValues];
    [v14 OEMAppsUpdated:v16];

LABEL_17:
  }
}

- (NSSet)disabledAppIdentifiers
{
  disabledAppIdentifiers = self->_disabledAppIdentifiers;
  if (!disabledAppIdentifiers)
  {
    v4 = GEOConfigGetString();
    v5 = MEMORY[0x277CBEB98];
    v6 = [v4 componentsSeparatedByString:{@", "}];
    v7 = [v5 setWithArray:v6];
    v8 = self->_disabledAppIdentifiers;
    self->_disabledAppIdentifiers = v7;

    disabledAppIdentifiers = self->_disabledAppIdentifiers;
  }

  return disabledAppIdentifiers;
}

@end