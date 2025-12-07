@interface DTApplicationWorkspaceObserver
+ (id)sharedInstance;
- (DTApplicationWorkspaceObserver)init;
- (id)registerNotificationToken:(id)token observer:(id)observer query:(id)query;
- (void)_notifyWithApplicationProxy:(id)proxy addition:(BOOL)addition;
- (void)_notifyWithDictionaryRepresentation:(id)representation addition:(BOOL)addition;
- (void)_unregisterNotificationTokenInternal:(id)internal;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)unregisterNotificationToken:(id)token observer:(id)observer;
@end

@implementation DTApplicationWorkspaceObserver

+ (id)sharedInstance
{
  if (qword_27EE841E8 != -1)
  {
    sub_24802BD74();
  }

  v3 = qword_27EE841F0;

  return v3;
}

- (DTApplicationWorkspaceObserver)init
{
  v8.receiver = self;
  v8.super_class = DTApplicationWorkspaceObserver;
  v2 = [(DTApplicationWorkspaceObserver *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    registrationsByToken = v2->_registrationsByToken;
    v2->_registrationsByToken = v3;

    v5 = objc_opt_new();
    knownAppsByPath = v2->_knownAppsByPath;
    v2->_knownAppsByPath = v5;
  }

  return v2;
}

- (void)_notifyWithApplicationProxy:(id)proxy addition:(BOOL)addition
{
  additionCopy = addition;
  v25 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  correspondingApplicationRecord = [proxyCopy correspondingApplicationRecord];
  v8 = correspondingApplicationRecord;
  if (!additionCopy)
  {
    correspondingApplicationRecord2 = [proxyCopy correspondingApplicationRecord];
    goto LABEL_8;
  }

  correspondingApplicationRecord2 = [correspondingApplicationRecord bundleIdentifier];
  if (!correspondingApplicationRecord2)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v23 = 0;
  v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:correspondingApplicationRecord2 allowPlaceholder:0 error:&v23];
  applicationExtensionRecords = v23;
  if (v10)
  {
    v12 = v10;

LABEL_7:
    correspondingApplicationRecord2 = v12;
LABEL_8:
    v13 = sub_247F6CCA0(correspondingApplicationRecord2, !additionCopy);
    [(DTApplicationWorkspaceObserver *)self _notifyWithDictionaryRepresentation:v13 addition:additionCopy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    applicationExtensionRecords = [correspondingApplicationRecord2 applicationExtensionRecords];
    v14 = [applicationExtensionRecords countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(applicationExtensionRecords);
          }

          v18 = sub_247F6D034(*(*(&v19 + 1) + 8 * i), !additionCopy);
          [(DTApplicationWorkspaceObserver *)self _notifyWithDictionaryRepresentation:v18 addition:additionCopy];
        }

        v15 = [applicationExtensionRecords countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v15);
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_24802BD88(correspondingApplicationRecord2, applicationExtensionRecords);
  }

LABEL_15:
}

- (void)_notifyWithDictionaryRepresentation:(id)representation addition:(BOOL)addition
{
  additionCopy = addition;
  representationCopy = representation;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [representationCopy objectForKeyedSubscript:@"CFBundleIdentifier"];
  if ([v8 length])
  {
    v9 = [representationCopy objectForKeyedSubscript:@"Type"];
    isAppleInternal = [MEMORY[0x277CCAC38] isAppleInternal];
    if (isAppleInternal & 1 | (([v9 isEqualToString:@"System"] & 1) == 0))
    {
      if (![v9 isEqualToString:@"Internal"])
      {
LABEL_9:
        v14 = [(NSMutableDictionary *)selfCopy->_knownAppsByPath objectForKeyedSubscript:v8];
        v15 = v14;
        if (v14)
        {
          registrationsByToken = selfCopy->_registrationsByToken;
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = sub_247F6D420;
          v20[3] = &unk_278EF1190;
          v21 = v14;
          [(NSMutableDictionary *)registrationsByToken enumerateKeysAndObjectsUsingBlock:v20];
          [(NSMutableDictionary *)selfCopy->_knownAppsByPath removeObjectForKey:v8];
        }

        if (additionCopy)
        {
          [(NSMutableDictionary *)selfCopy->_knownAppsByPath setObject:representationCopy forKeyedSubscript:v8];
          v17 = selfCopy->_registrationsByToken;
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = sub_247F6D438;
          v18[3] = &unk_278EF1190;
          v19 = representationCopy;
          [(NSMutableDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v18];
        }

        goto LABEL_14;
      }

      if (isAppleInternal)
      {
        v11 = CFPreferencesCopyValue(@"SBShowInternalApps", @"com.apple.springboard", @"mobile", *MEMORY[0x277CBF010]);
        v12 = v11;
        if (v11)
        {
          v13 = CFGetTypeID(v11);
          if (v13 == CFBooleanGetTypeID())
          {
            CFBooleanGetValue(v12);
          }

          CFRelease(v12);
        }

        goto LABEL_9;
      }
    }

LABEL_14:
  }

  objc_sync_exit(selfCopy);
}

- (id)registerNotificationToken:(id)token observer:(id)observer query:(id)query
{
  v63 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  val = observer;
  queryCopy = query;
  v41 = tokenCopy;
  if (val)
  {
    v40 = [tokenCopy length];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    obj = selfCopy;
    if (![(NSMutableDictionary *)selfCopy->_registrationsByToken count])
    {
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      if (v40)
      {
        [defaultWorkspace addObserver:selfCopy];
      }

      v44 = [MEMORY[0x277CBEB58] set];
      v11 = [queryCopy objectForKeyedSubscript:@"Type"];
      v12 = [v11 isEqualToString:@"PluginKit"];

      if ((v12 & 1) == 0)
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v13 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
        v14 = [v13 countByEnumeratingWithState:&v57 objects:v62 count:16];
        if (v14)
        {
          v15 = *v58;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v58 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v57 + 1) + 8 * i);
              applicationState = [v17 applicationState];
              isRestricted = [applicationState isRestricted];

              if ((isRestricted & 1) == 0)
              {
                applicationState = [v17 bundleIdentifier];
                [v44 addObject:applicationState];
              }

              v19 = sub_247F6CCA0(v17, 0);
              [(DTApplicationWorkspaceObserver *)selfCopy _notifyWithDictionaryRepresentation:v19 addition:1];
            }

            v14 = [v13 countByEnumeratingWithState:&v57 objects:v62 count:16];
          }

          while (v14);
        }
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v20 = [MEMORY[0x277CC1E50] enumeratorWithOptions:0];
      v21 = [v20 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v21)
      {
        v22 = *v54;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v54 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v53 + 1) + 8 * j);
            v25 = sub_247F6D034(v24, 0);
            containingBundleRecord = [v24 containingBundleRecord];
            bundleIdentifier = [containingBundleRecord bundleIdentifier];

            if (!bundleIdentifier)
            {
              v28 = 1;
LABEL_25:
              isAppleInternal = [MEMORY[0x277CCAC38] isAppleInternal];
              if (!bundleIdentifier)
              {
                goto LABEL_27;
              }

              goto LABEL_26;
            }

            v28 = [v44 containsObject:bundleIdentifier];
            applicationState = [v24 bundleIdentifier];
            if ([applicationState hasPrefix:@"com.apple."])
            {
              goto LABEL_25;
            }

            isAppleInternal = 1;
LABEL_26:

LABEL_27:
            v30 = [MEMORY[0x277CCABB0] numberWithInt:isAppleInternal & v28 ^ 1u];
            [v25 setObject:v30 forKeyedSubscript:@"Restricted"];

            [(DTApplicationWorkspaceObserver *)obj _notifyWithDictionaryRepresentation:v25 addition:1];
          }

          v21 = [v20 countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v21);
      }
    }

    if (v40)
    {
      objc_initWeak(&location, val);
      v31 = [v41 stringByAppendingFormat:@".%p", val];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_247F6DA18;
      aBlock[3] = &unk_278EF11B8;
      v50 = queryCopy;
      objc_copyWeak(&v51, &location);
      v32 = _Block_copy(aBlock);
      [(NSMutableDictionary *)obj->_registrationsByToken setObject:v32 forKeyedSubscript:v31];

      objc_destroyWeak(&v51);
      objc_destroyWeak(&location);
    }

    array = [MEMORY[0x277CBEB18] array];
    knownAppsByPath = obj->_knownAppsByPath;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_247F6DB90;
    v46[3] = &unk_278EF11E0;
    v47 = queryCopy;
    v35 = array;
    v48 = v35;
    [(NSMutableDictionary *)knownAppsByPath enumerateKeysAndObjectsUsingBlock:v46];
    v36 = v48;
    v37 = v35;

    objc_sync_exit(obj);
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (void)_unregisterNotificationTokenInternal:(id)internal
{
  internalCopy = internal;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_registrationsByToken count];
  [(NSMutableDictionary *)selfCopy->_registrationsByToken setObject:0 forKeyedSubscript:internalCopy];
  if (v5 && ![(NSMutableDictionary *)selfCopy->_registrationsByToken count])
  {
    [(NSMutableDictionary *)selfCopy->_knownAppsByPath removeAllObjects];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace removeObserver:selfCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)unregisterNotificationToken:(id)token observer:(id)observer
{
  observer = [token stringByAppendingFormat:@".%p", observer];
  [(DTApplicationWorkspaceObserver *)self _unregisterNotificationTokenInternal:observer];
}

- (void)applicationsDidInstall:(id)install
{
  v14 = *MEMORY[0x277D85DE8];
  installCopy = install;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [installCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(installCopy);
        }

        [(DTApplicationWorkspaceObserver *)self _notifyWithApplicationProxy:*(*(&v9 + 1) + 8 * v8++) addition:1];
      }

      while (v6 != v8);
      v6 = [installCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v14 = *MEMORY[0x277D85DE8];
  uninstallCopy = uninstall;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [uninstallCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        [(DTApplicationWorkspaceObserver *)self _notifyWithApplicationProxy:*(*(&v9 + 1) + 8 * v8++) addition:0];
      }

      while (v6 != v8);
      v6 = [uninstallCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end