@interface MBAppManager
+ (MBAppManager)appManagerWithSettingsContext:(id)context;
+ (id)_allPersistedDisabledDomainNamesForPersona:(id)persona;
+ (id)_volumesToBackUpForPersona:(id)persona;
+ (id)appManager;
+ (void)_persistDisabledDomainNames:(id)names forPersona:(id)persona;
- (BOOL)_isContainerizedAppDomain:(id)domain;
- (BOOL)isDomainNameEnabled:(id)enabled forPersona:(id)persona;
- (BOOL)loadAppsWithPersona:(id)persona safeHarbors:(BOOL)harbors error:(id *)error;
- (MBAppManager)initWithMobileInstallation:(id)installation;
- (id)_allDisabledDomainNamesForPersona:(id)persona;
- (id)_copyAppsWithPlists:(id)plists volumeMountPoints:(id)points safeHarbor:(BOOL)harbor error:(id *)error;
- (id)_copySafeHarborsWithVolumeMountPoints:(id)points error:(id *)error;
- (id)_copySystemContainersWithPlists:(id)plists volumeMountPoints:(id)points error:(id *)error;
- (id)_copySystemContainersWithVolumeMountPoints:(id)points error:(id *)error;
- (id)_copySystemPluginsForPersona:(id)persona volumeMountPoints:(id)points error:(id *)error;
- (id)_copySystemPluginsWithPlists:(id)plists volumeMountPoints:(id)points error:(id *)error;
- (id)_copyUserAppsForPersona:(id)persona volumeMountPoints:(id)points error:(id *)error;
- (id)_placeholderFilesForBundleID:(id)d;
- (id)_subdomainNamesForAppDomainNames:(id)names;
- (id)allContainers;
- (id)allDisabledDomainNamesForPersona:(id)persona;
- (id)allRestrictedDomainNamesForPersona:(id)persona;
- (id)allSystemContainers;
- (id)containerWithIdentifier:(id)identifier containerType:(int)type;
- (id)createSafeHarborForContainer:(id)container withPersona:(id)persona usingIntermediateRestoreDir:(BOOL)dir error:(id *)error;
- (id)dependentDomainNamesForAppDomainName:(id)name;
- (id)fetchAppWithIdentifier:(id)identifier persona:(id)persona error:(id *)error;
- (void)_addContainer:(id)container;
- (void)_reconcileBooksAndHealthInDisabledDomainsList:(id)list;
- (void)_removeContainer:(id)container;
- (void)_setEnabled:(BOOL)enabled forDomainNames:(id)names persona:(id)persona;
- (void)_syncDisabledDomainsWithAllInstalledAppDomains:(id)domains persona:(id)persona;
- (void)removeOldSafeHarborsWithExpiration:(double)expiration;
- (void)removeStaleStateForUninstalledAppsForPersona:(id)persona;
- (void)setEnabled:(BOOL)enabled forDomainName:(id)name persona:(id)persona;
@end

@implementation MBAppManager

+ (id)appManager
{
  v2 = [[MBAppManager alloc] initWithMobileInstallation:0];

  return v2;
}

+ (MBAppManager)appManagerWithSettingsContext:(id)context
{
  contextCopy = context;
  v4 = [MBAppManager alloc];
  mobileInstallation = [contextCopy mobileInstallation];

  v6 = [(MBAppManager *)v4 initWithMobileInstallation:mobileInstallation];

  return v6;
}

- (MBAppManager)initWithMobileInstallation:(id)installation
{
  installationCopy = installation;
  v9.receiver = self;
  v9.super_class = MBAppManager;
  v6 = [(MBAppManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mobileInstallation, installation);
  }

  return v7;
}

- (id)_subdomainNamesForAppDomainNames:(id)names
{
  namesCopy = names;
  v5 = +[NSMutableSet set];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  selfCopy = self;
  obj = [(MBAppManager *)self allApps];
  v6 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
  v55 = namesCopy;
  if (v6)
  {
    v7 = v6;
    v8 = *v71;
    v47 = *v71;
    do
    {
      v9 = 0;
      v49 = v7;
      do
      {
        if (*v71 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v70 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        domain = [v10 domain];
        name = [domain name];
        v14 = [namesCopy containsObject:name];

        if (v14)
        {
          v53 = v11;
          context = v9;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          containers = [v10 containers];
          v16 = [containers countByEnumeratingWithState:&v66 objects:v76 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v67;
            do
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v67 != v18)
                {
                  objc_enumerationMutation(containers);
                }

                v20 = *(*(&v66 + 1) + 8 * i);
                identifier = [v20 identifier];
                identifier2 = [v10 identifier];
                v23 = [identifier isEqualToString:identifier2];

                if ((v23 & 1) == 0)
                {
                  domain2 = [v20 domain];
                  name2 = [domain2 name];
                  [v5 addObject:name2];
                }
              }

              v17 = [containers countByEnumeratingWithState:&v66 objects:v76 count:16];
            }

            while (v17);
          }

          namesCopy = v55;
          v9 = context;
          v8 = v47;
          v7 = v49;
          v11 = v53;
        }

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
    }

    while (v7);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obja = [(MBAppManager *)selfCopy allApps];
  v26 = [obja countByEnumeratingWithState:&v62 objects:v75 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v63;
    v48 = *v63;
    do
    {
      v29 = 0;
      v50 = v27;
      do
      {
        if (*v63 != v28)
        {
          objc_enumerationMutation(obja);
        }

        v30 = *(*(&v62 + 1) + 8 * v29);
        contexta = objc_autoreleasePoolPush();
        domain3 = [v30 domain];
        name3 = [domain3 name];
        v33 = [namesCopy containsObject:name3];

        if ((v33 & 1) == 0)
        {
          v54 = v29;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          containers2 = [v30 containers];
          v35 = [containers2 countByEnumeratingWithState:&v58 objects:v74 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v59;
            do
            {
              for (j = 0; j != v36; j = j + 1)
              {
                if (*v59 != v37)
                {
                  objc_enumerationMutation(containers2);
                }

                v39 = *(*(&v58 + 1) + 8 * j);
                identifier3 = [v39 identifier];
                identifier4 = [v30 identifier];
                v42 = [identifier3 isEqualToString:identifier4];

                if ((v42 & 1) == 0)
                {
                  domain4 = [v39 domain];
                  name4 = [domain4 name];
                  [v5 removeObject:name4];
                }
              }

              v36 = [containers2 countByEnumeratingWithState:&v58 objects:v74 count:16];
            }

            while (v36);
          }

          v29 = v54;
          namesCopy = v55;
          v28 = v48;
          v27 = v50;
        }

        objc_autoreleasePoolPop(contexta);
        v29 = v29 + 1;
      }

      while (v29 != v27);
      v27 = [obja countByEnumeratingWithState:&v62 objects:v75 count:16];
    }

    while (v27);
  }

  return v5;
}

+ (id)_allPersistedDisabledDomainNamesForPersona:(id)persona
{
  personaCopy = persona;
  v4 = sub_100061CEC(personaCopy);
  dispatch_assert_queue_V2(v4);

  v5 = [personaCopy copyPreferencesValueForKey:@"DisabledDomains" class:objc_opt_class()];
  if (v5)
  {
    v6 = [NSMutableSet setWithArray:v5];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  return v7;
}

+ (void)_persistDisabledDomainNames:(id)names forPersona:(id)persona
{
  namesCopy = names;
  personaCopy = persona;
  v6 = sub_100061CEC(personaCopy);
  dispatch_assert_queue_V2(v6);

  if (!namesCopy)
  {
    sub_10009F084();
  }

  allObjects = [namesCopy allObjects];
  v8 = [allObjects sortedArrayUsingSelector:"compare:"];

  [personaCopy setPreferencesValue:v8 forKey:@"DisabledDomains"];
}

- (id)_allDisabledDomainNamesForPersona:(id)persona
{
  personaCopy = persona;
  v5 = sub_100061CEC(personaCopy);
  dispatch_assert_queue_V2(v5);

  v6 = [objc_opt_class() _allPersistedDisabledDomainNamesForPersona:personaCopy];

  v7 = [(MBAppManager *)self _subdomainNamesForAppDomainNames:v6];
  [v6 unionSet:v7];

  return v6;
}

- (id)allDisabledDomainNamesForPersona:(id)persona
{
  personaCopy = persona;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100061FB0;
  v16 = sub_100061FC0;
  v17 = 0;
  v5 = sub_100061CEC(personaCopy);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061FC8;
  block[3] = &unk_1000FE140;
  v10 = personaCopy;
  v11 = &v12;
  block[4] = self;
  v6 = personaCopy;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_syncDisabledDomainsWithAllInstalledAppDomains:(id)domains persona:(id)persona
{
  domainsCopy = domains;
  personaCopy = persona;
  v8 = sub_100061CEC(personaCopy);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000620EC;
  block[3] = &unk_1000FE168;
  block[4] = self;
  v12 = personaCopy;
  v13 = domainsCopy;
  v9 = domainsCopy;
  v10 = personaCopy;
  dispatch_sync(v8, block);
}

- (void)_reconcileBooksAndHealthInDisabledDomainsList:(id)list
{
  listCopy = list;
  if (([listCopy containsObject:@"AppDomain-com.apple.iBooks"] & 1) == 0)
  {
    [listCopy removeObject:@"BooksDomain"];
  }

  if (([listCopy containsObject:@"AppDomain-com.apple.Health"] & 1) == 0)
  {
    [listCopy removeObject:@"HealthDomain"];
  }

  if (([listCopy containsObject:@"HealthDomain"] & 1) == 0)
  {
    [listCopy removeObject:@"AppDomain-com.apple.Health"];
  }
}

- (BOOL)_isContainerizedAppDomain:(id)domain
{
  domainCopy = domain;
  if (([MBDomain isAppName:domainCopy]& 1) != 0 || ([MBDomain isAppPluginName:domainCopy]& 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [MBDomain isAppGroupName:domainCopy];
  }

  return v4;
}

- (BOOL)isDomainNameEnabled:(id)enabled forPersona:(id)persona
{
  enabledCopy = enabled;
  v7 = [(MBAppManager *)self allDisabledDomainNamesForPersona:persona];
  LOBYTE(self) = [v7 containsObject:enabledCopy];

  return self ^ 1;
}

- (void)_setEnabled:(BOOL)enabled forDomainNames:(id)names persona:(id)persona
{
  namesCopy = names;
  personaCopy = persona;
  v10 = sub_100061CEC(personaCopy);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000625A8;
  v13[3] = &unk_1000FE190;
  v13[4] = self;
  v14 = personaCopy;
  enabledCopy = enabled;
  v15 = namesCopy;
  v11 = namesCopy;
  v12 = personaCopy;
  dispatch_sync(v10, v13);
}

- (void)setEnabled:(BOOL)enabled forDomainName:(id)name persona:(id)persona
{
  enabledCopy = enabled;
  nameCopy = name;
  personaCopy = persona;
  v10 = sub_1000628E0(personaCopy);
  v11 = [v10 containsObject:nameCopy];
  if (v11)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (enabledCopy)
      {
        v13 = "Enabling";
      }

      else
      {
        v13 = "Disabling";
      }

      *buf = 136315394;
      v22 = v13;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s books domains %{public}@", buf, 0x16u);
      _MBLog(@"Df", "%s books domains %{public}@", v13, v10);
    }

    [(MBAppManager *)self _setEnabled:enabledCopy forDomainNames:v10 persona:personaCopy];
  }

  else
  {
    v14 = sub_100062924(v11);
    v15 = [v14 containsObject:nameCopy];
    v16 = MBGetDefaultLog();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        if (enabledCopy)
        {
          v18 = "Enabling";
        }

        else
        {
          v18 = "Disabling";
        }

        *buf = 136315394;
        v22 = v18;
        v23 = 2114;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s health domains %{public}@", buf, 0x16u);
        _MBLog(@"Df", "%s health domains %{public}@", v18, v14);
      }

      [(MBAppManager *)self _setEnabled:enabledCopy forDomainNames:v14 persona:personaCopy];
    }

    else
    {
      if (v17)
      {
        if (enabledCopy)
        {
          v19 = "Enabling";
        }

        else
        {
          v19 = "Disabling";
        }

        *buf = 136315394;
        v22 = v19;
        v23 = 2114;
        v24 = nameCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s domain %{public}@", buf, 0x16u);
        _MBLog(@"Df", "%s domain %{public}@", v19, nameCopy);
      }

      v20 = [NSSet setWithObject:nameCopy];
      [(MBAppManager *)self _setEnabled:enabledCopy forDomainNames:v20 persona:personaCopy];
    }
  }
}

- (id)allRestrictedDomainNamesForPersona:(id)persona
{
  personaCopy = persona;
  if (!personaCopy)
  {
    personaCopy = [MBPersona personalPersonaWithError:0];
  }

  v4 = [personaCopy copyPreferencesValueForKey:@"RestrictedDomains" class:objc_opt_class()];
  if ([v4 count])
  {
    v5 = [NSMutableSet setWithArray:v4];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = +[MCProfileConnection sharedConnection];
  doNotBackupAppIDs = [v7 doNotBackupAppIDs];

  v9 = [doNotBackupAppIDs countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(doNotBackupAppIDs);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [MBDomain nameWithAppID:v13];
        [v6 addObject:v14];

        v15 = [MBDomain placeholderNameWithAppID:v13];
        [v6 addObject:v15];
      }

      v10 = [doNotBackupAppIDs countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [(MBAppManager *)self _subdomainNamesForAppDomainNames:v6];
  [v6 unionSet:v16];

  return v6;
}

+ (id)_volumesToBackUpForPersona:(id)persona
{
  volumesToBackUp = [persona volumesToBackUp];
  allObjects = [volumesToBackUp allObjects];
  v5 = [allObjects sortedArrayUsingComparator:&stru_1000FE1D0];

  return v5;
}

- (BOOL)loadAppsWithPersona:(id)persona safeHarbors:(BOOL)harbors error:(id *)error
{
  harborsCopy = harbors;
  personaCopy = persona;
  user = [personaCopy user];
  if ([user isPrimaryUser])
  {
    isPersonalPersona = [personaCopy isPersonalPersona];
  }

  else
  {
    isPersonalPersona = 0;
  }

  v7 = +[UMUserManager sharedManager];
  currentPersona = [v7 currentPersona];
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v116 = personaCopy;
    v117 = 2112;
    v118 = userPersonaUniqueString;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Enumerating apps for persona %@ with current persona %@", buf, 0x16u);
    _MBLog(@"Df", "Enumerating apps for persona %@ with current persona %@", personaCopy, userPersonaUniqueString);
  }

  v67 = objc_autoreleasePoolPush();
  v75 = [objc_opt_class() _volumesToBackUpForPersona:personaCopy];
  v74 = [[NSMutableArray alloc] initWithCapacity:0];
  v111 = 0;
  v69 = [(MBAppManager *)self _copyUserAppsForPersona:personaCopy volumeMountPoints:v75 error:&v111];
  v76 = v111;
  v10 = v69;
  if (!v69)
  {
    v68 = 0;
    goto LABEL_72;
  }

  [v74 addObjectsFromArray:?];
  if ((isPersonalPersona & harborsCopy) == 1)
  {
    v110 = v76;
    v11 = [(MBAppManager *)self _copySafeHarborsWithVolumeMountPoints:v75 error:&v110];
    v12 = v110;

    if (!v11)
    {
      v68 = 0;
LABEL_70:
      v76 = v12;
      goto LABEL_71;
    }

    [v74 addObjectsFromArray:v11];

    v76 = v12;
  }

  v13 = objc_opt_new();
  systemDataContainersByID = self->_systemDataContainersByID;
  self->_systemDataContainersByID = v13;

  v15 = objc_opt_new();
  systemSharedContainersByID = self->_systemSharedContainersByID;
  self->_systemSharedContainersByID = v15;

  v17 = objc_opt_new();
  appContainersByID = self->_appContainersByID;
  self->_appContainersByID = v17;

  v19 = objc_opt_new();
  appGroupContainersByID = self->_appGroupContainersByID;
  self->_appGroupContainersByID = v19;

  v21 = objc_opt_new();
  appPluginContainersByID = self->_appPluginContainersByID;
  self->_appPluginContainersByID = v21;

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = v74;
  context = [obj countByEnumeratingWithState:&v106 objects:v122 count:16];
  if (context)
  {
    v81 = *v107;
    do
    {
      for (i = 0; i != context; i = i + 1)
      {
        if (*v107 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v106 + 1) + 8 * i);
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        containers = [v23 containers];
        v25 = [containers countByEnumeratingWithState:&v102 objects:v121 count:16];
        if (v25)
        {
          v26 = *v103;
          do
          {
            for (j = 0; j != v25; j = j + 1)
            {
              if (*v103 != v26)
              {
                objc_enumerationMutation(containers);
              }

              v28 = *(*(&v102 + 1) + 8 * j);
              v29 = objc_autoreleasePoolPush();
              containerType = [v28 containerType];
              identifier = [v28 identifier];
              containerDir = [v28 containerDir];
              v33 = sub_10003884C(containerType);
              v34 = MBGetDefaultLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v116 = identifier;
                v117 = 2112;
                v118 = v33;
                v119 = 2112;
                v120 = containerDir;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "App: Found container %@ (%@) at %@", buf, 0x20u);
                _MBLog(@"I ", "App: Found container %@ (%@) at %@", identifier, v33, containerDir);
              }

              [(MBAppManager *)self _addContainer:v28];
              objc_autoreleasePoolPop(v29);
            }

            v25 = [containers countByEnumeratingWithState:&v102 objects:v121 count:16];
          }

          while (v25);
        }
      }

      context = [obj countByEnumeratingWithState:&v106 objects:v122 count:16];
    }

    while (context);
  }

  if (isPersonalPersona)
  {
    v101 = v76;
    v66 = [(MBAppManager *)self _copySystemContainersWithVolumeMountPoints:v75 error:&v101];
    v12 = v101;

    if (v66)
    {
      v100 = v12;
      v65 = [(MBAppManager *)self _copySystemPluginsForPersona:personaCopy volumeMountPoints:v75 error:&v100];
      v77 = v100;

      v35 = v65;
      v68 = v65 != 0;
      if (v65)
      {
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v73 = v65;
        v36 = [v73 countByEnumeratingWithState:&v96 objects:v114 count:16];
        if (v36)
        {
          obja = *v97;
          do
          {
            v37 = 0;
            v82 = v36;
            do
            {
              if (*v97 != obja)
              {
                objc_enumerationMutation(v73);
              }

              v86 = v37;
              v38 = *(*(&v96 + 1) + 8 * v37);
              contexta = objc_autoreleasePoolPush();
              identifier2 = [v38 identifier];
              v40 = MBGetDefaultLog();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
              {
                v41 = v40;
                if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                {
                  containerDir2 = [v38 containerDir];
                  *buf = 138412546;
                  v116 = identifier2;
                  v117 = 2112;
                  v118 = containerDir2;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "System Plugin: Found container %@ %@", buf, 0x16u);
                }

                containerDir3 = [v38 containerDir];
                _MBLog(@"I ", "System Plugin: Found container %@ %@", identifier2, containerDir3);
              }

              [(NSMutableDictionary *)self->_appPluginContainersByID setObject:v38 forKeyedSubscript:identifier2];
              v94 = 0u;
              v95 = 0u;
              v92 = 0u;
              v93 = 0u;
              allAppGroupContainers = [v38 allAppGroupContainers];
              v45 = [allAppGroupContainers countByEnumeratingWithState:&v92 objects:v113 count:16];
              if (v45)
              {
                v46 = *v93;
                do
                {
                  for (k = 0; k != v45; k = k + 1)
                  {
                    if (*v93 != v46)
                    {
                      objc_enumerationMutation(allAppGroupContainers);
                    }

                    v48 = *(*(&v92 + 1) + 8 * k);
                    identifier3 = [v48 identifier];
                    v50 = [(NSMutableDictionary *)self->_appGroupContainersByID objectForKeyedSubscript:identifier3];
                    v51 = v50 == 0;

                    if (v51)
                    {
                      v52 = MBGetDefaultLog();
                      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                      {
                        v53 = v52;
                        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                        {
                          containerDir4 = [v48 containerDir];
                          *buf = 138412802;
                          v116 = identifier3;
                          v117 = 2112;
                          v118 = containerDir4;
                          v119 = 2112;
                          v120 = identifier2;
                          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "System Plugin: Found app group container %@ at %@ for %@", buf, 0x20u);
                        }

                        containerDir5 = [v48 containerDir];
                        _MBLog(@"I ", "System Plugin: Found app group container %@ at %@ for %@", identifier3, containerDir5, identifier2);
                      }

                      [(NSMutableDictionary *)self->_appGroupContainersByID setObject:v48 forKeyedSubscript:identifier3];
                    }
                  }

                  v45 = [allAppGroupContainers countByEnumeratingWithState:&v92 objects:v113 count:16];
                }

                while (v45);
              }

              objc_autoreleasePoolPop(contexta);
              v37 = v86 + 1;
            }

            while ((v86 + 1) != v82);
            v36 = [v73 countByEnumeratingWithState:&v96 objects:v114 count:16];
          }

          while (v36);
        }

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v56 = v66;
        v57 = [v56 countByEnumeratingWithState:&v88 objects:v112 count:16];
        if (v57)
        {
          v58 = *v89;
          do
          {
            for (m = 0; m != v57; m = m + 1)
            {
              if (*v89 != v58)
              {
                objc_enumerationMutation(v56);
              }

              v60 = *(*(&v88 + 1) + 8 * m);
              if ([v60 isSystemSharedContainer])
              {
                v61 = self->_systemSharedContainersByID;
              }

              else
              {
                v61 = self->_systemDataContainersByID;
              }

              identifier4 = [v60 identifier];
              [(NSMutableDictionary *)v61 setObject:v60 forKeyedSubscript:identifier4];
            }

            v57 = [v56 countByEnumeratingWithState:&v88 objects:v112 count:16];
          }

          while (v57);
        }

        v35 = v65;
      }

      v12 = v77;
    }

    else
    {
      v68 = 0;
    }

    goto LABEL_70;
  }

  v68 = 1;
LABEL_71:
  v10 = v69;
LABEL_72:

  objc_autoreleasePoolPop(v67);
  if (error)
  {
    v63 = v76;
    *error = v76;
  }

  return v68;
}

- (id)_copyUserAppsForPersona:(id)persona volumeMountPoints:(id)points error:(id *)error
{
  personaCopy = persona;
  pointsCopy = points;
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Looking up user apps", buf, 2u);
    _MBLog(@"I ", "Looking up user apps");
  }

  v11 = objc_autoreleasePoolPush();
  mobileInstallation = self->_mobileInstallation;
  v20 = 0;
  v13 = [(MBMobileInstallation *)mobileInstallation userAppsForPersona:personaCopy error:&v20];
  v14 = v20;
  allValues = [v13 allValues];

  if (allValues)
  {

    v19 = 0;
    v16 = [(MBAppManager *)self _copyAppsWithPlists:allValues volumeMountPoints:pointsCopy safeHarbor:0 error:&v19];
    v14 = v19;
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v11);
  if (error)
  {
    v17 = v14;
    *error = v14;
  }

  return v16;
}

- (id)_copySystemPluginsForPersona:(id)persona volumeMountPoints:(id)points error:(id *)error
{
  personaCopy = persona;
  pointsCopy = points;
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Looking up system plugins", buf, 2u);
    _MBLog(@"I ", "Looking up system plugins");
  }

  v11 = objc_autoreleasePoolPush();
  mobileInstallation = self->_mobileInstallation;
  v20 = 0;
  v13 = [(MBMobileInstallation *)mobileInstallation systemPluginsForPersona:personaCopy error:&v20];
  v14 = v20;
  allValues = [v13 allValues];

  if (allValues)
  {

    v19 = 0;
    v16 = [(MBAppManager *)self _copySystemPluginsWithPlists:allValues volumeMountPoints:pointsCopy error:&v19];
    v14 = v19;
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v11);
  if (error)
  {
    v17 = v14;
    *error = v14;
  }

  return v16;
}

- (id)_copySafeHarborsWithVolumeMountPoints:(id)points error:(id *)error
{
  pointsCopy = points;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Copying safe harbors", buf, 2u);
    _MBLog(@"I ", "Copying safe harbors");
  }

  v8 = objc_autoreleasePoolPush();
  mobileInstallation = self->_mobileInstallation;
  v17 = 0;
  v10 = [(MBMobileInstallation *)mobileInstallation safeHarborsWithError:&v17];
  v11 = v17;
  allValues = [v10 allValues];

  if (allValues)
  {

    v16 = 0;
    v13 = [(MBAppManager *)self _copyAppsWithPlists:allValues volumeMountPoints:pointsCopy safeHarbor:1 error:&v16];
    v11 = v16;
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v8);
  if (error)
  {
    v14 = v11;
    *error = v11;
  }

  return v13;
}

- (id)_copyAppsWithPlists:(id)plists volumeMountPoints:(id)points safeHarbor:(BOOL)harbor error:(id *)error
{
  plistsCopy = plists;
  pointsCopy = points;
  v26 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(plistsCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = plistsCopy;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = sub_100063F94(v12, pointsCopy);
        if (v14)
        {
          v15 = [(MBContainer *)[MBApp alloc] initWithPropertyList:v12 volumeMountPoint:v14];
          if (!v15)
          {
            sub_10009F0D8();
          }

          v16 = v15;
          bundleID = [(MBApp *)v15 bundleID];
          bundleDir = [v16 bundleDir];
          v19 = bundleDir;
          if (harbor)
          {
LABEL_11:
            containerDir = [v16 containerDir];
            v21 = MBGetDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              isPlaceholder = [v16 isPlaceholder];
              *buf = 138413058;
              v35 = bundleID;
              v36 = 1024;
              *v37 = isPlaceholder;
              *&v37[4] = 2112;
              *&v37[6] = v19;
              v38 = 2112;
              v39 = containerDir;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Found installed app, bundleID:%@, isPlaceholder:%d, bundleDir:%@, containerDir:%@", buf, 0x26u);
              _MBLog(@"Db", "Found installed app, bundleID:%@, isPlaceholder:%d, bundleDir:%@, containerDir:%@", bundleID, [v16 isPlaceholder], v19, containerDir);
            }

            [v26 addObject:v16];
          }

          else if (bundleID)
          {
            if (bundleDir)
            {
              goto LABEL_11;
            }

            containerDir = MBGetDefaultLog();
            if (os_log_type_enabled(containerDir, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v35 = bundleID;
              v36 = 2112;
              *v37 = v12;
              _os_log_impl(&_mh_execute_header, containerDir, OS_LOG_TYPE_ERROR, "Found nil bundleDir for %@: %@", buf, 0x16u);
              _MBLog(@"E ", "Found nil bundleDir for %@: %@", bundleID, v12);
            }
          }

          else
          {
            containerDir = MBGetDefaultLog();
            if (os_log_type_enabled(containerDir, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v35 = v12;
              _os_log_impl(&_mh_execute_header, containerDir, OS_LOG_TYPE_ERROR, "Found nil bundleID: %@", buf, 0xCu);
              _MBLog(@"E ", "Found nil bundleID: %@", v12, v25);
            }
          }

          goto LABEL_17;
        }

        v16 = [v12 objectForKeyedSubscript:kCFBundleIdentifierKey];
        bundleID = [v12 objectForKeyedSubscript:@"Container"];
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v35 = v16;
          v36 = 2112;
          *v37 = bundleID;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Skipping app %@, because it's container path %@ is on the wrong volume", buf, 0x16u);
          _MBLog(@"F ", "Skipping app %@, because it's container path %@ is on the wrong volume", v16, bundleID);
        }

LABEL_17:

        objc_autoreleasePoolPop(v13);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v23 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
      v9 = v23;
    }

    while (v23);
  }

  return v26;
}

- (id)_copySystemPluginsWithPlists:(id)plists volumeMountPoints:(id)points error:(id *)error
{
  plistsCopy = plists;
  pointsCopy = points;
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(plistsCopy, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = plistsCopy;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    v13 = &OBJC_IVAR___MBDriveBackupEngine__fullBackup;
    while (2)
    {
      v14 = 0;
      v30 = v11;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v31 + 1) + 8 * v14);
        v16 = sub_100063F94(v15, pointsCopy);
        if (v16)
        {
          v17 = v16;
          v18 = [objc_alloc((v13 + 946)) initWithPropertyList:v15 volumeMountPoint:v16];
          if (!v18)
          {

            v28 = 0;
            goto LABEL_17;
          }

          v19 = v18;
          v20 = MBGetDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [v19 identifier];
            v21 = v12;
            v22 = pointsCopy;
            v23 = v8;
            v24 = v9;
            v26 = v25 = v13;
            *buf = 138412290;
            v36 = v26;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Installed system plugin: %@", buf, 0xCu);

            identifier = [v19 identifier];
            _MBLog(@"Db", "Installed system plugin: %@", identifier);

            v13 = v25;
            v9 = v24;
            v8 = v23;
            pointsCopy = v22;
            v12 = v21;
            v11 = v30;
          }

          [v8 addObject:v19];
        }

        else
        {
          v17 = [v15 objectForKeyedSubscript:kCFBundleIdentifierKey];
          v19 = MBGetDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v36 = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Skipping system plugin %@, because it's container path is on the wrong volume", buf, 0xCu);
            _MBLog(@"E ", "Skipping system plugin %@, because it's container path is on the wrong volume", v17);
          }
        }

        v14 = v14 + 1;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v28 = v8;
LABEL_17:

  return v28;
}

- (id)_copySystemContainersWithVolumeMountPoints:(id)points error:(id *)error
{
  pointsCopy = points;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Looking up system containers", buf, 2u);
    _MBLog(@"I ", "Looking up system containers");
  }

  v8 = objc_alloc_init(NSMutableArray);
  v9 = objc_autoreleasePoolPush();
  v10 = [(MBMobileInstallation *)self->_mobileInstallation systemContainersWithError:0];
  allValues = [v10 allValues];

  if (allValues)
  {
    v22 = 0;
    v12 = [(MBAppManager *)self _copySystemContainersWithPlists:allValues volumeMountPoints:pointsCopy error:&v22];
    v13 = v22;
    if (!v12)
    {
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to copy system containers from generated plists, error:%@", buf, 0xCu);
        _MBLog(@"E ", "Failed to copy system containers from generated plists, error:%@", v13);
      }

      allValues2 = v8;
      goto LABEL_16;
    }

    [v8 addObjectsFromArray:v12];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(MBMobileInstallation *)self->_mobileInstallation systemSharedContainersWithError:0];
  allValues2 = [v15 allValues];

  if (allValues2)
  {
    v21 = v14;
    v17 = [(MBAppManager *)self _copySystemContainersWithPlists:allValues2 volumeMountPoints:pointsCopy error:&v21];
    v13 = v21;

    if (v17)
    {
      [v8 addObjectsFromArray:v17];
LABEL_17:

      v14 = v13;
      goto LABEL_18;
    }

    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to copy system shared containers from generated plists, error:%@", buf, 0xCu);
      _MBLog(@"E ", "Failed to copy system shared containers from generated plists, error:%@", v13);
    }

LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

LABEL_18:

  objc_autoreleasePoolPop(v9);
  if (error && v14)
  {
    v19 = v14;
    *error = v14;
  }

  return v8;
}

- (id)_copySystemContainersWithPlists:(id)plists volumeMountPoints:(id)points error:(id *)error
{
  plistsCopy = plists;
  pointsCopy = points;
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(plistsCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = plistsCopy;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = sub_100063F94(v14, pointsCopy);
        if (v15)
        {
          v16 = v15;
          v17 = [(MBContainer *)[MBSystemContainer alloc] initWithPropertyList:v14 volumeMountPoint:v15];
          v18 = MBGetDefaultLog();
          v19 = v18;
          if (!v17)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v30 = v14;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to parse system container plist: %@", buf, 0xCu);
              _MBLog(@"E ", "Failed to parse system container plist: %@", v14);
            }

            if (error)
            {
              *error = [MBError errorWithCode:1 format:@"Failed to parse system container plist"];
            }

            v22 = 0;
            goto LABEL_21;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            identifier = [(MBContainer *)v17 identifier];
            *buf = 138412290;
            v30 = identifier;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "System container: %@", buf, 0xCu);

            identifier2 = [(MBContainer *)v17 identifier];
            _MBLog(@"Db", "System container: %@", identifier2);
          }

          [v8 addObject:v17];
        }

        else
        {
          v16 = [v14 objectForKeyedSubscript:kCFBundleIdentifierKey];
          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(&v17->super.super, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v16;
            _os_log_impl(&_mh_execute_header, &v17->super.super, OS_LOG_TYPE_ERROR, "Skipping system container %@, because it's path is on the wrong volume", buf, 0xCu);
            _MBLog(@"E ", "Skipping system container %@, because it's path is on the wrong volume", v16);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v22 = v8;
LABEL_21:

  return v22;
}

- (id)allContainers
{
  allValues = [(NSMutableDictionary *)self->_appContainersByID allValues];
  v4 = [allValues mutableCopy];

  allValues2 = [(NSMutableDictionary *)self->_appGroupContainersByID allValues];
  [v4 addObjectsFromArray:allValues2];

  allValues3 = [(NSMutableDictionary *)self->_appPluginContainersByID allValues];
  [v4 addObjectsFromArray:allValues3];

  allValues4 = [(NSMutableDictionary *)self->_systemDataContainersByID allValues];
  [v4 addObjectsFromArray:allValues4];

  allValues5 = [(NSMutableDictionary *)self->_systemSharedContainersByID allValues];
  [v4 addObjectsFromArray:allValues5];

  return v4;
}

- (id)allSystemContainers
{
  allValues = [(NSMutableDictionary *)self->_systemDataContainersByID allValues];
  v4 = [allValues mutableCopy];

  allValues2 = [(NSMutableDictionary *)self->_systemSharedContainersByID allValues];
  [v4 addObjectsFromArray:allValues2];

  return v4;
}

- (id)containerWithIdentifier:(id)identifier containerType:(int)type
{
  identifierCopy = identifier;
  if ((type - 1) > 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(&self->super.isa + qword_1000B7378[type - 1]) objectForKeyedSubscript:identifierCopy];
  }

  return v7;
}

- (id)dependentDomainNamesForAppDomainName:(id)name
{
  nameCopy = name;
  v5 = objc_opt_new();
  v6 = [MBDomain containerIDWithName:nameCopy];
  v7 = [(MBAppManager *)self appWithIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v19 = v6;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    containers = [v7 containers];
    v10 = [containers countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(containers);
          }

          domain = [*(*(&v20 + 1) + 8 * i) domain];
          name = [domain name];
          v16 = [name isEqualToString:nameCopy];

          if ((v16 & 1) == 0)
          {
            name2 = [domain name];
            [v5 addObject:name2];
          }
        }

        v11 = [containers countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v6 = v19;
  }

  return v5;
}

- (id)fetchAppWithIdentifier:(id)identifier persona:(id)persona error:(id *)error
{
  identifierCopy = identifier;
  personaCopy = persona;
  mobileInstallation = self->_mobileInstallation;
  v43 = 0;
  v38 = identifierCopy;
  v11 = [(MBMobileInstallation *)mobileInstallation userAppWithBundleID:identifierCopy placeholder:1 persona:personaCopy error:&v43];
  v12 = v43;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:@"Container"];
    if (v13)
    {
      v14 = [objc_opt_class() _volumesToBackUpForPersona:personaCopy];
      v15 = sub_100063F94(v11, v14);
      if (v15)
      {
        v16 = [(MBContainer *)[MBApp alloc] initWithPropertyList:v11 volumeMountPoint:v15];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        containers = [(MBApp *)v16 containers];
        v18 = [containers countByEnumeratingWithState:&v39 objects:v52 count:16];
        if (v18)
        {
          v19 = v18;
          v32 = v15;
          v33 = v16;
          v34 = v14;
          v35 = v13;
          v36 = v12;
          v37 = personaCopy;
          v20 = *v40;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v40 != v20)
              {
                objc_enumerationMutation(containers);
              }

              v22 = *(*(&v39 + 1) + 8 * i);
              v23 = objc_autoreleasePoolPush();
              containerType = [v22 containerType];
              identifier = [v22 identifier];
              containerDir = [v22 containerDir];
              v27 = sub_10003884C(containerType);
              v28 = MBGetDefaultLog();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 138413058;
                v45 = identifier;
                v46 = 2112;
                v47 = v27;
                v48 = 2112;
                v49 = containerDir;
                v50 = 2112;
                v51 = v38;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Loaded container %@ (%@) at %@ for parent app %@", buf, 0x2Au);
                _MBLog(@"I ", "Loaded container %@ (%@) at %@ for parent app %@", identifier, v27, containerDir, v38);
              }

              objc_autoreleasePoolPop(v23);
            }

            v19 = [containers countByEnumeratingWithState:&v39 objects:v52 count:16];
          }

          while (v19);
          personaCopy = v37;
          v13 = v35;
          v12 = v36;
          v16 = v33;
          v14 = v34;
          v15 = v32;
        }
      }

      else
      {
        containers = [v14 componentsJoinedByString:{@", "}];
        if (error)
        {
          [MBError errorWithCode:3 format:@"%@ does not exist on expected volume(s) [%@]", v38, containers];
          *error = v16 = 0;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else if (error)
    {
      [MBError errorWithCode:245 format:@"App not installed: %@", v38];
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v29 = MBGetDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v45 = identifierCopy;
      v46 = 2112;
      v47 = v12;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to load app with identifier %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to load app with identifier %@: %@", identifierCopy, v12);
    }

    if (error)
    {
      v30 = v12;
      v16 = 0;
      *error = v12;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)removeOldSafeHarborsWithExpiration:(double)expiration
{
  v4 = [NSDate dateWithTimeIntervalSinceNow:-expiration];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing safe harbors created before %@", buf, 0xCu);
    _MBLog(@"Df", "Removing safe harbors created before %@", v4);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  allContainers = [(MBAppManager *)self allContainers];
  v7 = [allContainers countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      v10 = 0;
      v30 = v8;
      do
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(allContainers);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        if ([v11 isSafeHarbor])
        {
          datePlacedInSafeHarbor = [v11 datePlacedInSafeHarbor];
          if (!datePlacedInSafeHarbor)
          {
            sub_10009F130(v11, a2, self);
          }

          if ([datePlacedInSafeHarbor compare:v4] == -1)
          {
            v21 = MBGetDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              identifier = [v11 identifier];
              *buf = 138412546;
              v36 = identifier;
              v37 = 2112;
              v38 = datePlacedInSafeHarbor;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removing safe harbor %@ created at %@", buf, 0x16u);

              identifier2 = [v11 identifier];
              _MBLog(@"Df", "Removing safe harbor %@ created at %@", identifier2, datePlacedInSafeHarbor);
            }

            mobileInstallation = self->_mobileInstallation;
            identifier3 = [v11 identifier];
            LODWORD(mobileInstallation) = -[MBMobileInstallation removeSafeHarborWithIdentifier:type:error:](mobileInstallation, "removeSafeHarborWithIdentifier:type:error:", identifier3, [v11 containerType], 0);

            if (mobileInstallation)
            {
              [(MBAppManager *)self _removeContainer:v11];
            }

            else
            {
              v26 = MBGetDefaultLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                identifier4 = [v11 identifier];
                *buf = 138412290;
                v36 = identifier4;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Error removing safe harbor: %@", buf, 0xCu);

                identifier5 = [v11 identifier];
                _MBLog(@"Df", "Error removing safe harbor: %@", identifier5);
              }
            }
          }

          else
          {
            datePlacedInSafeHarbor2 = [v11 datePlacedInSafeHarbor];
            v14 = MBGetDefaultLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              [v11 identifier];
              v15 = v9;
              v16 = allContainers;
              v17 = v4;
              v19 = v18 = self;
              *buf = 138412546;
              v36 = v19;
              v37 = 2112;
              v38 = datePlacedInSafeHarbor2;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not removing safe harbor %@ created at %@", buf, 0x16u);

              identifier6 = [v11 identifier];
              _MBLog(@"Df", "Not removing safe harbor %@ created at %@", identifier6, datePlacedInSafeHarbor2);

              self = v18;
              v4 = v17;
              allContainers = v16;
              v9 = v15;
              v8 = v30;
            }
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allContainers countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v8);
  }
}

- (id)_placeholderFilesForBundleID:(id)d
{
  if (d)
  {
    dCopy = d;
    v4 = [dCopy stringByAppendingPathExtension:@"zip"];
    v8[0] = v4;
    v5 = [dCopy stringByAppendingPathExtension:@"ipa"];

    v8[1] = v5;
    v6 = [NSArray arrayWithObjects:v8 count:2];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (void)removeStaleStateForUninstalledAppsForPersona:(id)persona
{
  personaCopy = persona;
  v4 = objc_autoreleasePoolPush();
  v5 = +[NSFileManager defaultManager];
  [personaCopy appPlaceholderArchiveDirectory];
  v70 = 0;
  v51 = v50 = v5;
  v6 = [v5 contentsOfDirectoryAtPath:? error:?];
  v52 = 0;
  v43 = v6;
  context = v4;
  if (v6)
  {
    v7 = [NSMutableSet setWithArray:v6];
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v76 = v51;
      v77 = 2112;
      v78 = v52;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch the contents of %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to fetch the contents of %@: %@", v51, v52);
    }

    v7 = objc_opt_new();
  }

  v9 = v7;
  v49 = objc_opt_new();
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v45 = personaCopy;
  v10 = [(MBAppManager *)self allRestrictedDomainNamesForPersona:personaCopy];
  v11 = [v10 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v67;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v67 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v66 + 1) + 8 * i);
        if ([MBDomain isLegacyPerAppPlaceholderName:v15])
        {
          v16 = [MBDomain containerIDWithName:v15];
          [v49 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v12);
  }

  v17 = +[NSMutableSet set];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  allApps = [(MBAppManager *)self allApps];
  v19 = [allApps countByEnumeratingWithState:&v62 objects:v73 count:16];
  v46 = v17;
  if (v19)
  {
    v20 = v19;
    v21 = *v63;
    v48 = allApps;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v63 != v21)
        {
          objc_enumerationMutation(allApps);
        }

        v23 = *(*(&v62 + 1) + 8 * j);
        domain = [v23 domain];
        name = [domain name];

        if (name)
        {
          [v17 addObject:name];
        }

        if (([v23 isSystemApp] & 1) == 0)
        {
          bundleID = [v23 bundleID];
          if (([v49 containsObject:bundleID] & 1) == 0)
          {
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            bundleID2 = [v23 bundleID];
            v28 = [(MBAppManager *)self _placeholderFilesForBundleID:bundleID2];

            v29 = [v28 countByEnumeratingWithState:&v58 objects:v72 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v59;
              do
              {
                for (k = 0; k != v30; k = k + 1)
                {
                  if (*v59 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  [v9 removeObject:*(*(&v58 + 1) + 8 * k)];
                }

                v30 = [v28 countByEnumeratingWithState:&v58 objects:v72 count:16];
              }

              while (v30);
            }

            v17 = v46;
            allApps = v48;
          }
        }
      }

      v20 = [allApps countByEnumeratingWithState:&v62 objects:v73 count:16];
    }

    while (v20);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v33 = v9;
  v34 = [v33 countByEnumeratingWithState:&v54 objects:v71 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v55;
    do
    {
      v37 = 0;
      v38 = v52;
      do
      {
        if (*v55 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v39 = [v51 stringByAppendingPathComponent:*(*(&v54 + 1) + 8 * v37)];
        v40 = MBGetDefaultLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v76 = v39;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Removing old placeholder archive at %@", buf, 0xCu);
          _MBLog(@"Df", "Removing old placeholder archive at %@", v39);
        }

        v53 = v38;
        v41 = [v50 removeItemAtPath:v39 error:&v53];
        v52 = v53;

        if ((v41 & 1) == 0)
        {
          v42 = MBGetDefaultLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v76 = v39;
            v77 = 2112;
            v78 = v52;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to remove the placeholder archive at %@: %@", buf, 0x16u);
            _MBLog(@"E ", "Failed to remove the placeholder archive at %@: %@", v39, v52);
          }
        }

        v37 = v37 + 1;
        v38 = v52;
      }

      while (v35 != v37);
      v35 = [v33 countByEnumeratingWithState:&v54 objects:v71 count:16];
    }

    while (v35);
  }

  [(MBAppManager *)self _syncDisabledDomainsWithAllInstalledAppDomains:v46 persona:v45];
  objc_autoreleasePoolPop(context);
}

- (void)_addContainer:(id)container
{
  containerCopy = container;
  identifier = [containerCopy identifier];
  containerType = [containerCopy containerType];
  if (containerType > 2)
  {
    switch(containerType)
    {
      case 3:
        appGroupContainersByID = self->_appGroupContainersByID;
        goto LABEL_15;
      case 4:
        appGroupContainersByID = self->_systemDataContainersByID;
        break;
      case 5:
        appGroupContainersByID = self->_systemSharedContainersByID;
        break;
      default:
        goto LABEL_19;
    }

    v9 = containerCopy;
    v10 = containerCopy;
    goto LABEL_18;
  }

  if (containerType)
  {
    if (containerType == 1)
    {
      appGroupContainersByID = self->_appContainersByID;
      goto LABEL_15;
    }

    if (containerType == 2)
    {
      appGroupContainersByID = self->_appPluginContainersByID;
LABEL_15:
      v9 = containerCopy;
      v10 = identifier;
LABEL_18:
      [(NSMutableDictionary *)appGroupContainersByID setObject:v9 forKeyedSubscript:v10];
    }
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v12 = containerCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Invalid container type to add for %@", buf, 0xCu);
      _MBLog(@"F ", "Invalid container type to add for %@", containerCopy);
    }
  }

LABEL_19:
}

- (void)_removeContainer:(id)container
{
  containerCopy = container;
  identifier = [containerCopy identifier];
  containerType = [containerCopy containerType];
  if (containerType > 2)
  {
    switch(containerType)
    {
      case 3:
        appGroupContainersByID = self->_appGroupContainersByID;
        goto LABEL_16;
      case 4:
        appGroupContainersByID = self->_systemDataContainersByID;
        goto LABEL_16;
      case 5:
        appGroupContainersByID = self->_systemSharedContainersByID;
        goto LABEL_16;
    }
  }

  else if (containerType)
  {
    if (containerType == 1)
    {
      appGroupContainersByID = self->_appContainersByID;
      goto LABEL_16;
    }

    if (containerType == 2)
    {
      appGroupContainersByID = self->_appPluginContainersByID;
LABEL_16:
      [(NSMutableDictionary *)appGroupContainersByID setObject:0 forKeyedSubscript:identifier];
    }
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v10 = containerCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Invalid container type to remove for %@", buf, 0xCu);
      _MBLog(@"F ", "Invalid container type to remove for %@", containerCopy);
    }
  }
}

- (id)createSafeHarborForContainer:(id)container withPersona:(id)persona usingIntermediateRestoreDir:(BOOL)dir error:(id *)error
{
  containerCopy = container;
  personaCopy = persona;
  if (qword_10011E440 != -1)
  {
    sub_10009F1BC();
  }

  v10 = +[NSFileManager defaultManager];
  v11 = MBMobileFileAttributes();
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_100061FB0;
  v71 = sub_100061FC0;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_100061FB0;
  v65 = sub_100061FC0;
  v66 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_100061FB0;
  v55 = sub_100061FC0;
  v56 = 0;
  v12 = qword_10011E438;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100066784;
  block[3] = &unk_1000FE218;
  v13 = personaCopy;
  v41 = v13;
  selfCopy = self;
  dirCopy = dir;
  v46 = &v67;
  v47 = &v61;
  v14 = containerCopy;
  v43 = v14;
  v48 = &v57;
  v15 = v10;
  v44 = v15;
  v16 = v11;
  v45 = v16;
  v49 = &v51;
  dispatch_sync(v12, block);
  if (v58[3])
  {
    v17 = kMBSafeHarborDataDirName;
    v18 = [v62[5] stringByAppendingPathComponent:kMBSafeHarborDataDirName];
    errorCopy = error;
    v20 = [v62[5] stringByAppendingPathComponent:kMBSafeHarborInfoDirName];
    v38 = [v20 stringByAppendingPathComponent:kMBSafeHarborInfoPlistFilename];
    volumeMountPoint = [v13 volumeMountPoint];
    v22 = [v14 copyWithVolumeMountPoint:volumeMountPoint];

    v23 = [v68[5] stringByAppendingPathComponent:v17];
    [v22 setContainerDir:v23];

    v24 = +[NSDate date];
    [v22 setDatePlacedInSafeHarbor:v24];

    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v74 = v18;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Creating directory %@", buf, 0xCu);
      _MBLog(@"Db", "Creating directory %@", v18);
    }

    if ([v15 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:v16 error:errorCopy])
    {
      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v74 = v20;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Creating directory %@", buf, 0xCu);
        _MBLog(@"Db", "Creating directory %@", v20);
      }

      if ([v15 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:v16 error:errorCopy])
      {
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v74 = v38;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Writing %@", buf, 0xCu);
          _MBLog(@"Db", "Writing %@", v38);
        }

        propertyListForSafeHarborInfo = [v22 propertyListForSafeHarborInfo];
        v29 = [propertyListForSafeHarborInfo writeToFile:v38 atomically:1];

        if (v29)
        {
          v30 = v38;
          fileSystemRepresentation = [v38 fileSystemRepresentation];
          v32 = MBMobileUID();
          v33 = MBMobileUID();
          if (!lchown(fileSystemRepresentation, v32, v33))
          {
            [(MBAppManager *)self _addContainer:v14];
            v35 = v22;
            goto LABEL_23;
          }

          if (errorCopy)
          {
            v34 = [MBError posixErrorWithCode:100 path:v38 format:@"Error changing ownership of Safe Harbor Info.plist"];
LABEL_21:
            v35 = 0;
            *errorCopy = v34;
LABEL_23:

            goto LABEL_24;
          }
        }

        else if (errorCopy)
        {
          v34 = [MBError errorWithCode:100 path:v38 format:@"Error writing Safe Harbor Info.plist"];
          goto LABEL_21;
        }
      }
    }

    v35 = 0;
    goto LABEL_23;
  }

  v35 = 0;
  if (error)
  {
    *error = v52[5];
  }

LABEL_24:

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(&v67, 8);

  return v35;
}

@end