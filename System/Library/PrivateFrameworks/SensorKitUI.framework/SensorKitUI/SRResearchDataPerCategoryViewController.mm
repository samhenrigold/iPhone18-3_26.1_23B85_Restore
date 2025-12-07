@interface SRResearchDataPerCategoryViewController
+ (void)initialize;
- (BOOL)sensorReader:(id)reader fetchingRequest:(id)request didFetchResult:(id)result;
- (id)bundleForIndexPath:(id)path;
- (id)prepareDayCell;
- (id)prepareDeleteCell;
- (id)prepareExportCell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)daysFromDate:(id)date toDate:(id)toDate;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableSectionFromIndexPathSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)authorizationSwitchToggledWithValue:(BOOL)value indexPath:(id)path;
- (void)cancelExport;
- (void)cleanupExportedFile;
- (void)confirmAuthChangeForBundle:(id)bundle value:(BOOL)value authService:(id)service authorizedBundleIds:(id)ids setOverride:(BOOL)override;
- (void)dealloc;
- (void)deleteAllUnreleasedData;
- (void)exportData;
- (void)navigateToAuthorization;
- (void)populateDays;
- (void)presentDownloadPath:(id)path sandboxExtensionToken:(id)token;
- (void)sensorReader:(id)reader didCompleteFetch:(id)fetch;
- (void)sensorReader:(id)reader fetchingRequest:(id)request failedWithError:(id)error;
- (void)showActionSheet;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SRResearchDataPerCategoryViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRResearchPerDataLog = os_log_create("com.apple.SensorKit", "SRResearchPerData");
  }
}

- (void)viewDidLoad
{
  v92 = *MEMORY[0x277D85DE8];
  v84.receiver = self;
  v84.super_class = SRResearchDataPerCategoryViewController;
  [(SRResearchDataPerCategoryViewController *)&v84 viewDidLoad];
  v55 = [MEMORY[0x277CBEB58] set];
  v52 = [MEMORY[0x277CBEB58] set];
  obj = [(SRAuthorizationStore *)[(SRResearchDataPerCategoryViewController *)self authStore] readerAuthorizationBundleIdValues];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v48 = [obj countByEnumeratingWithState:&v80 objects:v91 count:16];
  if (v48)
  {
    v46 = *v81;
    do
    {
      v2 = 0;
      do
      {
        if (*v81 != v46)
        {
          v3 = v2;
          objc_enumerationMutation(obj);
          v2 = v3;
        }

        v50 = v2;
        v4 = *(*(&v80 + 1) + 8 * v2);
        v5 = [MEMORY[0x277CCA8D8] sk_bundleWithIdentifier:{v4, v46}];
        if (v5)
        {
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v6 = [obj objectForKeyedSubscript:v4];
          v7 = [v6 countByEnumeratingWithState:&v76 objects:v90 count:16];
          if (v7)
          {
            v8 = *v77;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v77 != v8)
                {
                  objc_enumerationMutation(v6);
                }

                v10 = *(*(&v76 + 1) + 8 * i);
                v11 = objc_autoreleasePoolPush();
                if (-[NSString isEqualToString:](-[SRAuthorizationGroup authorizationService](self->_authGroup, "authorizationService"), "isEqualToString:", [objc_msgSend(MEMORY[0x277CDC638] sensorDescriptionForSensor:{v10), "authorizationService"}]))
                {
                  [v55 addObject:v5];
                  if ([objc_msgSend(objc_msgSend(obj objectForKeyedSubscript:{v4), "objectForKeyedSubscript:", v10), "BOOLValue"}])
                  {
                    [v52 addObject:v4];
                  }
                }

                objc_autoreleasePoolPop(v11);
              }

              v7 = [v6 countByEnumeratingWithState:&v76 objects:v90 count:16];
            }

            while (v7);
          }
        }

        v2 = v50 + 1;
      }

      while (v50 + 1 != v48);
      v48 = [obj countByEnumeratingWithState:&v80 objects:v91 count:16];
    }

    while (v48);
  }

  -[SRResearchDataPerCategoryViewController setAuthorizedBundleIds:](self, "setAuthorizedBundleIds:", [MEMORY[0x277CBEB58] setWithSet:v52]);
  -[SRResearchDataPerCategoryViewController setAppBundles:](self, "setAppBundles:", [objc_msgSend(v55 "allObjects")]);
  [v55 removeAllObjects];
  [v52 removeAllObjects];
  obja = [(SRAuthorizationStore *)[(SRResearchDataPerCategoryViewController *)self authStore] writerAuthorizationValues];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v49 = [obja countByEnumeratingWithState:&v72 objects:v89 count:16];
  if (v49)
  {
    v47 = *v73;
    do
    {
      v12 = 0;
      do
      {
        if (*v73 != v47)
        {
          v13 = v12;
          objc_enumerationMutation(obja);
          v12 = v13;
        }

        v51 = v12;
        v14 = *(*(&v72 + 1) + 8 * v12);
        v15 = [MEMORY[0x277CCA8D8] sk_bundleWithIdentifier:{v14, v47}];
        if (v15)
        {
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v16 = [obja objectForKeyedSubscript:v14];
          v17 = [v16 countByEnumeratingWithState:&v68 objects:v88 count:16];
          if (v17)
          {
            v18 = *v69;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v69 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v68 + 1) + 8 * j);
                v21 = objc_autoreleasePoolPush();
                if (-[NSString isEqualToString:](-[SRAuthorizationGroup authorizationService](self->_authGroup, "authorizationService"), "isEqualToString:", -[SRAuthorizationGroup authorizationService](+[SRAuthorizationGroup authorizationGroupWithServiceName:](SRAuthorizationGroup, "authorizationGroupWithServiceName:", [objc_msgSend(MEMORY[0x277CDC638] sensorDescriptionForSensor:{v20), "writerAuthorizationService"}]), "authorizationService")))
                {
                  [v55 addObject:v15];
                  if ([objc_msgSend(objc_msgSend(obja objectForKeyedSubscript:{v14), "objectForKeyedSubscript:", v20), "BOOLValue"}])
                  {
                    [v52 addObject:v14];
                  }
                }

                objc_autoreleasePoolPop(v21);
              }

              v17 = [v16 countByEnumeratingWithState:&v68 objects:v88 count:16];
            }

            while (v17);
          }
        }

        v12 = v51 + 1;
      }

      while (v51 + 1 != v49);
      v49 = [obja countByEnumeratingWithState:&v72 objects:v89 count:16];
    }

    while (v49);
  }

  -[SRResearchDataPerCategoryViewController setWriterAppBundles:](self, "setWriterAppBundles:", [objc_msgSend(v55 "allObjects")]);
  -[SRResearchDataPerCategoryViewController setAuthorizedWriterBundleIds:](self, "setAuthorizedWriterBundleIds:", [MEMORY[0x277CBEB58] setWithSet:v52]);
  [(SRResearchDataPerCategoryViewController *)self setNumberOfDays:0];
  v22 = [MEMORY[0x277CDC638] sensorDescriptionsForAuthorizationService:{-[SRAuthorizationGroup authorizationService](self->_authGroup, "authorizationService")}];
  v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v24 = [v22 countByEnumeratingWithState:&v64 objects:v87 count:16];
  if (v24)
  {
    v25 = *v65;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v65 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [v23 addObject:{objc_msgSend(*(*(&v64 + 1) + 8 * k), "name")}];
      }

      v24 = [v22 countByEnumeratingWithState:&v64 objects:v87 count:16];
    }

    while (v24);
  }

  [(SRResearchDataPerCategoryViewController *)self setSensorIdentifiers:v23];

  v27 = [MEMORY[0x277CDC638] sensorDescriptionForSensor:{-[NSSet anyObject](-[SRResearchDataPerCategoryViewController sensorIdentifiers](self, "sensorIdentifiers"), "anyObject")}];
  if (!v27)
  {
    v28 = SRResearchPerDataLog;
    if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_FAULT))
    {
      anyObject = [(NSSet *)[(SRResearchDataPerCategoryViewController *)self sensorIdentifiers] anyObject];
      LODWORD(location[0]) = 138543362;
      *(location + 4) = anyObject;
      _os_log_fault_impl(&dword_265602000, v28, OS_LOG_TYPE_FAULT, "Failed to find sensor description for %{public}@", location, 0xCu);
    }
  }

  -[SRResearchDataPerCategoryViewController setDatastoreBackend:](self, "setDatastoreBackend:", [v27 datastoreBackend]);
  if (![(SRResearchDataPerCategoryViewController *)self datastoreBackend])
  {
    v29 = [objc_alloc(MEMORY[0x277CDC648]) initWithSensor:{-[NSSet anyObject](-[SRResearchDataPerCategoryViewController sensorIdentifiers](self, "sensorIdentifiers"), "anyObject")}];
    [v29 serviceStartTime];
    [(SRResearchDataPerCategoryViewController *)self setStart:?];

    [(SRResearchDataPerCategoryViewController *)self start];
    if (v30 != 0.0)
    {
      -[SRResearchDataPerCategoryViewController setTombstones:](self, "setTombstones:", [MEMORY[0x277CBEB18] array]);
      [(SRResearchDataPerCategoryViewController *)self setEnd:SRAbsoluteTimeGetCurrent()];
      v31 = dispatch_group_create();
      [(SRResearchDataPerCategoryViewController *)self setFetchGroup:v31];
      dispatch_release(v31);
      -[SRResearchDataPerCategoryViewController setReaders:](self, "setReaders:", [MEMORY[0x277CBEB18] array]);
      -[SRResearchDataPerCategoryViewController setPruners:](self, "setPruners:", [MEMORY[0x277CBEB18] array]);
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      sensorIdentifiers = [(SRResearchDataPerCategoryViewController *)self sensorIdentifiers];
      v32 = [(NSSet *)sensorIdentifiers countByEnumeratingWithState:&v60 objects:v85 count:16];
      if (v32)
      {
        v33 = *v61;
        do
        {
          for (m = 0; m != v32; ++m)
          {
            if (*v61 != v33)
            {
              objc_enumerationMutation(sensorIdentifiers);
            }

            v35 = *(*(&v60 + 1) + 8 * m);
            v36 = [objc_alloc(MEMORY[0x277CDC648]) initWithSensor:v35];
            [v36 earliestEligibleTime];
            v38 = v37;
            [(SRResearchDataPerCategoryViewController *)self end];
            [(SRResearchDataPerCategoryViewController *)self setEnd:fmin(v38, v39)];

            v40 = [objc_alloc(MEMORY[0x277CDC648]) initWithSensor:{objc_msgSend(v35, "sr_sensorForDeletionRecordsFromSensor")}];
            [v40 setDelegate:self];
            [(NSMutableArray *)[(SRResearchDataPerCategoryViewController *)self readers] addObject:v40];
            dispatch_group_enter([(SRResearchDataPerCategoryViewController *)self fetchGroup]);
            v41 = objc_alloc_init(MEMORY[0x277CDC630]);
            [v41 setFrom:0.0];
            [v41 setTo:INFINITY];
            [v41 setDevice:{objc_msgSend(MEMORY[0x277CDC628], "currentDevice")}];
            [v40 fetch:v41];

            v42 = objc_alloc(MEMORY[0x277CDC640]);
            v43 = [v42 initWithSensor:v35 device:{objc_msgSend(MEMORY[0x277CDC628], "currentDevice")}];
            [v43 setDelegate:self];
            [(NSMutableArray *)[(SRResearchDataPerCategoryViewController *)self pruners] addObject:v43];
          }

          v32 = [(NSSet *)sensorIdentifiers countByEnumeratingWithState:&v60 objects:v85 count:16];
        }

        while (v32);
      }

      objc_initWeak(location, self);
      fetchGroup = [(SRResearchDataPerCategoryViewController *)self fetchGroup];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__SRResearchDataPerCategoryViewController_viewDidLoad__block_invoke_14;
      block[3] = &unk_279B98368;
      objc_copyWeak(&v59, location);
      dispatch_group_notify(fetchGroup, MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v59);
      objc_destroyWeak(location);
    }
  }
}

uint64_t __54__SRResearchDataPerCategoryViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 sk_appName];
  v5 = [a3 sk_appName];

  return [v4 compare:v5];
}

uint64_t __54__SRResearchDataPerCategoryViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 sk_appName];
  v5 = [a3 sk_appName];

  return [v4 compare:v5];
}

uint64_t __54__SRResearchDataPerCategoryViewController_viewDidLoad__block_invoke_14(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak populateDays];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = MEMORY[0x277D755E8];
  authGroup = self->_authGroup;
  [-[SRResearchDataPerCategoryViewController tableView](self "tableView")];
  [-[SRResearchDataPerCategoryViewController tableView](self "tableView")];
  [(SRResearchDataPerCategoryViewController *)self setSb_handle:-1];
  v9.receiver = self;
  v9.super_class = SRResearchDataPerCategoryViewController;
  [(SRResearchDataPerCategoryViewController *)&v9 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(SRResearchDataPerCategoryViewController *)self setFetchGroup:0];
  [(SRResearchDataPerCategoryViewController *)self cleanupExportedFile];
  v5.receiver = self;
  v5.super_class = SRResearchDataPerCategoryViewController;
  [(SRResearchDataPerCategoryViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)dealloc
{
  [(SRResearchDataPerCategoryViewController *)self setAuthorizedBundleIds:0];
  [(SRResearchDataPerCategoryViewController *)self setAuthorizedWriterBundleIds:0];
  [(SRResearchDataPerCategoryViewController *)self setAppBundles:0];
  [(SRResearchDataPerCategoryViewController *)self setWriterAppBundles:0];
  [(SRResearchDataPerCategoryViewController *)self setAuthGroup:0];
  [(SRResearchDataPerCategoryViewController *)self setReaders:0];
  [(SRResearchDataPerCategoryViewController *)self setPruners:0];
  [(SRResearchDataPerCategoryViewController *)self setSensorIdentifiers:0];
  [(SRResearchDataPerCategoryViewController *)self setTombstones:0];
  [(SRResearchDataPerCategoryViewController *)self setCancelExportBlock:0];
  [(SRResearchDataPerCategoryViewController *)self setAuthStore:0];
  [(SRResearchDataPerCategoryViewController *)self setFetchGroup:0];
  [(SRResearchDataPerCategoryViewController *)self setExportedDataURL:0];
  v3.receiver = self;
  v3.super_class = SRResearchDataPerCategoryViewController;
  [(SRResearchDataPerCategoryViewController *)&v3 dealloc];
}

- (int64_t)tableSectionFromIndexPathSection:(int64_t)section
{
  sectionCopy = section;
  if ((section - 2) >= 4)
  {
    if (section != 1)
    {
      return sectionCopy;
    }

    v8 = [(NSArray *)[(SRResearchDataPerCategoryViewController *)self appBundles] count]== 0;
    v7 = 1;
  }

  else
  {
    v5 = [(NSArray *)[(SRResearchDataPerCategoryViewController *)self appBundles] count];
    v6 = [(NSArray *)[(SRResearchDataPerCategoryViewController *)self writerAppBundles] count];
    if (v5)
    {
      v7 = sectionCopy;
    }

    else
    {
      v7 = sectionCopy + 1;
    }

    v8 = v6 == 0;
  }

  if (v8)
  {
    return v7 + 1;
  }

  else
  {
    return v7;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(NSArray *)[(SRResearchDataPerCategoryViewController *)self writerAppBundles] count])
  {
    v4 = 6;
  }

  else
  {
    v4 = 5;
  }

  v5 = (__PAIR128__(v4, [(NSArray *)[(SRResearchDataPerCategoryViewController *)self appBundles] count]) - 1) >> 64;
  return v5 - ([(SRResearchDataPerCategoryViewController *)self datastoreBackend]== 1);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(SRResearchDataPerCategoryViewController *)self tableSectionFromIndexPathSection:section];
  if (v5 > 2)
  {
    return (v5 - 3) < 3;
  }

  if (!v5)
  {
    return 2;
  }

  if (v5 == 1)
  {
    appBundles = [(SRResearchDataPerCategoryViewController *)self appBundles];
    goto LABEL_11;
  }

  if (v5 != 2)
  {
    return 0;
  }

  appBundles = [(SRResearchDataPerCategoryViewController *)self writerAppBundles];
LABEL_11:

  return [(NSArray *)appBundles count];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(SRResearchDataPerCategoryViewController *)self tableSectionFromIndexPathSection:section];
  if ((v4 - 1) > 2)
  {
    return 0;
  }

  v5 = qword_2656139B8[v4 - 1];
  v6 = MEMORY[0x277CCACA8];

  return [v6 srui_localizedStringForCode:v5];
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [(SRResearchDataPerCategoryViewController *)self tableSectionFromIndexPathSection:section];
  v7 = 0;
  if (v6 <= 2)
  {
    switch(v6)
    {
      case 0:
        return v7;
      case 1:
        if ([(SRResearchDataPerCategoryViewController *)self tableView:view numberOfRowsInSection:1])
        {
          v7 = 13;
        }

        else
        {
          v7 = 14;
        }

        break;
      case 2:
        v8 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:15];
        v13 = 0;
        v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:&v13, -[SRAuthorizationGroup localizedDisplayName](self->_authGroup, "localizedDisplayName")];
        if (!v7)
        {
          v9 = SRResearchPerDataLog;
          if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v15 = v13;
            _os_log_fault_impl(&dword_265602000, v9, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
          }
        }

        return v7;
    }
  }

  else
  {
    if (v6 <= 4)
    {
      if (v6 == 3)
      {
        datastoreBackend = [(SRResearchDataPerCategoryViewController *)self datastoreBackend];
        if (datastoreBackend == 1)
        {
          v7 = 92;
        }

        else
        {
          v7 = 16 * (datastoreBackend == 0);
        }
      }

      else
      {
        if (-[NSString isEqualToString:](-[SRAuthorizationGroup authorizationService](-[SRResearchDataPerCategoryViewController authGroup](self, "authGroup"), "authorizationService"), "isEqualToString:", [objc_msgSend(MEMORY[0x277CDC638] sensorDescriptionForSensor:{*MEMORY[0x277CDC658]), "authorizationService"}]))
        {
          v7 = 91;
        }

        else
        {
          v7 = 17;
        }

        if ([(SRResearchDataPerCategoryViewController *)self datastoreBackend]== 1)
        {
          v7 = 93;
        }
      }

      goto LABEL_26;
    }

    if (v6 == 5)
    {
      v7 = 18;
    }

    else if (v6 == 6)
    {
      return v7;
    }
  }

LABEL_26:
  v12 = MEMORY[0x277CCACA8];

  return [v12 srui_localizedStringForCode:v7];
}

- (id)bundleForIndexPath:(id)path
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = -[SRResearchDataPerCategoryViewController tableSectionFromIndexPathSection:](self, "tableSectionFromIndexPathSection:", [path section]);
  if (v5 - 3 < 4)
  {
    return 0;
  }

  if (v5 >= 2)
  {
    if (v5 != 2)
    {
      v7 = 0;
      goto LABEL_8;
    }

    writerAppBundles = [(SRResearchDataPerCategoryViewController *)self writerAppBundles];
  }

  else
  {
    writerAppBundles = [(SRResearchDataPerCategoryViewController *)self appBundles];
  }

  v7 = writerAppBundles;
LABEL_8:
  v8 = [path row];
  if ([(NSArray *)v7 count]<= v8)
  {
    v10 = SRResearchPerDataLog;
    if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_FAULT))
    {
      localizedDisplayName = [(SRAuthorizationGroup *)self->_authGroup localizedDisplayName];
      v12 = 138543874;
      v13 = localizedDisplayName;
      v14 = 2048;
      v15 = [(NSArray *)v7 count];
      v16 = 2048;
      v17 = v8 + 1;
      _os_log_fault_impl(&dword_265602000, v10, OS_LOG_TYPE_FAULT, "Not enough bundle IDs found for category %{public}@. Have %lu, expecting %lu", &v12, 0x20u);
    }

    return 0;
  }

  return [(NSArray *)v7 objectAtIndexedSubscript:v8];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7 = [path row];
  v8 = -[SRResearchDataPerCategoryViewController tableSectionFromIndexPathSection:](self, "tableSectionFromIndexPathSection:", [path section]);
  if (v8 > 2)
  {
    switch(v8)
    {
      case 3:

        return [(SRResearchDataPerCategoryViewController *)self prepareDeleteCell];
      case 4:

        return [(SRResearchDataPerCategoryViewController *)self prepareExportCell];
      case 5:

        return [(SRResearchDataPerCategoryViewController *)self prepareDayCell];
      default:
LABEL_24:
        v24 = objc_opt_new();

        return v24;
    }
  }

  else
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v22 = [(SRResearchDataPerCategoryViewController *)self bundleForIndexPath:path];
        if (v22)
        {
          v10 = v22;
          sk_appName = [v22 sk_appName];
          v12 = MEMORY[0x277CCABB0];
          authorizedBundleIds = [(SRResearchDataPerCategoryViewController *)self authorizedBundleIds];
          goto LABEL_21;
        }
      }

      else if (v8 == 2)
      {
        v9 = [(SRResearchDataPerCategoryViewController *)self bundleForIndexPath:path];
        if (v9)
        {
          v10 = v9;
          sk_appName = [v9 sk_appName];
          v12 = MEMORY[0x277CCABB0];
          authorizedBundleIds = [(SRResearchDataPerCategoryViewController *)self authorizedWriterBundleIds];
LABEL_21:
          v23 = [v12 numberWithBool:{-[NSMutableSet containsObject:](authorizedBundleIds, "containsObject:", objc_msgSend(v10, "bundleIdentifier"))}];

          return [SRAuthorizationCell authorizationCellForIndexPath:path title:sk_appName state:v23 delegate:self tableView:view];
        }
      }

      goto LABEL_24;
    }

    if (v7 != 1)
    {
      if (!v7)
      {
        v15 = *MEMORY[0x277D76918];
        v16 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] addingSymbolicTraits:2 options:2];
        v17 = [MEMORY[0x277D74300] fontWithDescriptor:v16 size:0.0];
        v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:v15];
        v19 = +[SRAuthorizationCategoryDetailCell categoryDetailCellForAuthGroup:bundle:titleFont:bodyFont:textColor:OBKStyle:](SRAuthorizationCategoryDetailCell, "categoryDetailCellForAuthGroup:bundle:titleFont:bodyFont:textColor:OBKStyle:", self->_authGroup, 0, v17, v18, [MEMORY[0x277D75348] labelColor], 0);
        [view separatorInset];
        [objc_msgSend(v19 "contentView")];
        return v19;
      }

      goto LABEL_24;
    }

    v25 = MEMORY[0x277D75B48];

    return [v25 skui_tableViewCellForDataSample:view];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v7 = -[SRResearchDataPerCategoryViewController tableSectionFromIndexPathSection:](self, "tableSectionFromIndexPathSection:", [path section]);
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      [(SRResearchDataPerCategoryViewController *)self exportData];
      goto LABEL_15;
    }

    if (v7 != 5)
    {
      goto LABEL_15;
    }

    v9 = objc_opt_new();
    [v9 setNumberOfDays:{-[SRResearchDataPerCategoryViewController numberOfDays](self, "numberOfDays")}];
    [(SRResearchDataPerCategoryViewController *)self end];
    [v9 setEnd:?];
    [v9 setTombstones:{-[SRResearchDataPerCategoryViewController tombstones](self, "tombstones")}];
    selfCopy2 = self;
    v11 = v9;
LABEL_12:
    [(UIViewController *)selfCopy2 sk_showViewController:v11 animated:1];
    goto LABEL_15;
  }

  if (!v7)
  {
    if ([path row] != 1)
    {
      goto LABEL_15;
    }

    v11 = [SRSampleViewController sampleViewControllerForAuthGroup:self->_authGroup];
    selfCopy2 = self;
    goto LABEL_12;
  }

  if (v7 == 3)
  {
    datastoreBackend = [(SRResearchDataPerCategoryViewController *)self datastoreBackend];
    if (datastoreBackend == 1)
    {
      [(SRResearchDataPerCategoryViewController *)self navigateToAuthorization];
    }

    else if (!datastoreBackend)
    {
      [(SRResearchDataPerCategoryViewController *)self showActionSheet];
    }
  }

LABEL_15:

  [view deselectRowAtIndexPath:path animated:1];
}

- (id)prepareDayCell
{
  v3 = [-[SRResearchDataPerCategoryViewController tableView](self "tableView")];
  if (!v3)
  {
    v3 = [[SRDetailedTableCell alloc] initWithStyle:1 reuseIdentifier:@"SRDataDayRowReuseIdentifier"];
  }

  v4 = [(SRResearchDataPerCategoryViewController *)self numberOfDays]> 0;
  [(SRDetailedTableCell *)v3 setAccessoryType:v4];
  [(SRDetailedTableCell *)v3 setUserInteractionEnabled:v4];
  -[UILabel setText:](-[SRDetailedTableCell titleLabel](v3, "titleLabel"), "setText:", [MEMORY[0x277CCACA8] srui_localizedStringForCode:19]);
  if (([(SRResearchDataPerCategoryViewController *)self numberOfDays]& 0x8000000000000000) == 0)
  {
    v5 = objc_opt_new();
    [v5 setDay:{-[SRResearchDataPerCategoryViewController numberOfDays](self, "numberOfDays")}];
    -[UILabel setText:](-[SRDetailedTableCell detailLabel](v3, "detailLabel"), "setText:", [MEMORY[0x277CCA958] localizedStringFromDateComponents:v5 unitsStyle:3]);
  }

  return v3;
}

- (id)prepareDeleteCell
{
  v3 = [-[SRResearchDataPerCategoryViewController tableView](self "tableView")];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"SRDataDeleteRowReuseIdentifier"];
  }

  datastoreBackend = [(SRResearchDataPerCategoryViewController *)self datastoreBackend];
  if (datastoreBackend == 1)
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v6 = 95;
    goto LABEL_7;
  }

  if (!datastoreBackend)
  {
    systemBlueColor = [MEMORY[0x277D75348] redColor];
    v6 = 20;
LABEL_7:
    [objc_msgSend(v3 "textLabel")];
    [objc_msgSend(v3 "textLabel")];
  }

  [objc_msgSend(v3 "textLabel")];
  [objc_msgSend(v3 "textLabel")];
  return v3;
}

- (id)prepareExportCell
{
  v2 = [-[SRResearchDataPerCategoryViewController tableView](self "tableView")];
  if (!v2)
  {
    v2 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"SRDataExportRowReuseIdentifier"];
    [objc_msgSend(v2 "textLabel")];
  }

  [objc_msgSend(v2 "textLabel")];
  [objc_msgSend(v2 "textLabel")];
  [objc_msgSend(v2 "textLabel")];
  return v2;
}

- (void)authorizationSwitchToggledWithValue:(BOOL)value indexPath:(id)path
{
  valueCopy = value;
  v7 = [(SRResearchDataPerCategoryViewController *)self bundleForIndexPath:path];
  if (v7 && self->_authGroup)
  {
    v8 = v7;
    v9 = -[SRResearchDataPerCategoryViewController tableSectionFromIndexPathSection:](self, "tableSectionFromIndexPathSection:", [path section]);
    if (v9 == 2)
    {
      writerAuthorizationService = [(SRAuthorizationGroup *)self->_authGroup writerAuthorizationService];
      authorizedWriterBundleIds = [(SRResearchDataPerCategoryViewController *)self authorizedWriterBundleIds];
      v12 = 0;
      if (valueCopy)
      {
LABEL_10:
        [(SRResearchDataPerCategoryViewController *)self confirmAuthChangeForBundle:v8 value:valueCopy authService:writerAuthorizationService authorizedBundleIds:authorizedWriterBundleIds setOverride:v12];
        return;
      }
    }

    else
    {
      if (v9 != 1)
      {
        return;
      }

      writerAuthorizationService = [(SRAuthorizationGroup *)self->_authGroup authorizationService];
      authorizedWriterBundleIds = [(SRResearchDataPerCategoryViewController *)self authorizedBundleIds];
      v12 = 1;
      if (valueCopy)
      {
        goto LABEL_10;
      }
    }

    v13 = MEMORY[0x277D75110];
    authGroup = self->_authGroup;
    tableView = [(SRResearchDataPerCategoryViewController *)self tableView];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __89__SRResearchDataPerCategoryViewController_authorizationSwitchToggledWithValue_indexPath___block_invoke;
    v17[3] = &unk_279B98390;
    v17[4] = self;
    v17[5] = v8;
    v18 = valueCopy;
    v17[6] = writerAuthorizationService;
    v17[7] = authorizedWriterBundleIds;
    v19 = v12;
    v16 = [v13 skui_alertControllerForRequiredAuthorizationIfNeccesaryForBundle:v8 authGroup:authGroup tableView:tableView indexPath:path destructiveHandler:v17];
    if (v16)
    {
      [(SRResearchDataPerCategoryViewController *)self presentViewController:v16 animated:1 completion:0];
      return;
    }

    goto LABEL_10;
  }
}

- (void)confirmAuthChangeForBundle:(id)bundle value:(BOOL)value authService:(id)service authorizedBundleIds:(id)ids setOverride:(BOOL)override
{
  valueCopy = value;
  if (-[SRAuthorizationStore setAuthorizationForBundleId:service:value:setOverride:](-[SRResearchDataPerCategoryViewController authStore](self, "authStore"), "setAuthorizationForBundleId:service:value:setOverride:", [bundle bundleIdentifier], service, value, override))
  {
    bundleIdentifier = [bundle bundleIdentifier];
    if (valueCopy)
    {

      [ids addObject:bundleIdentifier];
    }

    else
    {

      [ids removeObject:bundleIdentifier];
    }
  }
}

- (BOOL)sensorReader:(id)reader fetchingRequest:(id)request didFetchResult:(id)result
{
  [result sample];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[NSMutableArray addObject:](self->_tombstones, "addObject:", [result sample]);
  }

  return 1;
}

- (void)sensorReader:(id)reader didCompleteFetch:(id)fetch
{
  if ([(SRResearchDataPerCategoryViewController *)self fetchGroup:reader])
  {
    fetchGroup = [(SRResearchDataPerCategoryViewController *)self fetchGroup];

    dispatch_group_leave(fetchGroup);
  }
}

- (void)sensorReader:(id)reader fetchingRequest:(id)request failedWithError:(id)error
{
  if ([(SRResearchDataPerCategoryViewController *)self fetchGroup:reader])
  {
    fetchGroup = [(SRResearchDataPerCategoryViewController *)self fetchGroup];

    dispatch_group_leave(fetchGroup);
  }
}

- (void)populateDays
{
  v11[1] = *MEMORY[0x277D85DE8];
  [(SRResearchDataPerCategoryViewController *)self start];
  v4 = v3;
  [(SRResearchDataPerCategoryViewController *)self end];
  if (v4 < v5)
  {
    v6 = MEMORY[0x277CBEAA8];
    [(SRResearchDataPerCategoryViewController *)self start];
    v7 = [v6 dateWithSRAbsoluteTime:?];
    v8 = MEMORY[0x277CBEAA8];
    [(SRResearchDataPerCategoryViewController *)self end];
    -[SRResearchDataPerCategoryViewController setNumberOfDays:](self, "setNumberOfDays:", -[SRResearchDataPerCategoryViewController daysFromDate:toDate:](self, "daysFromDate:toDate:", v7, [v8 dateWithSRAbsoluteTime:?]));
    [-[SRResearchDataPerCategoryViewController tableView](self "tableView")];
    v9 = [(SRResearchDataPerCategoryViewController *)self numberOfSectionsInTableView:[(SRResearchDataPerCategoryViewController *)self tableView]]- 1;
    tableView = [(SRResearchDataPerCategoryViewController *)self tableView];
    v11[0] = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v9];
    [tableView reloadRowsAtIndexPaths:objc_msgSend(MEMORY[0x277CBEA60] withRowAnimation:{"arrayWithObjects:count:", v11, 1), 100}];
    [-[SRResearchDataPerCategoryViewController tableView](self "tableView")];
  }
}

- (int64_t)daysFromDate:(id)date toDate:(id)toDate
{
  v8 = 0;
  v9 = 0;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  [currentCalendar rangeOfUnit:16 startDate:&v9 interval:0 forDate:date];
  [currentCalendar rangeOfUnit:16 startDate:&v8 interval:0 forDate:toDate];
  return [objc_msgSend(currentCalendar components:16 fromDate:v9 toDate:v8 options:{0), "day"}] + 1;
}

- (void)showActionSheet
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277D75110] alertControllerWithTitle:objc_msgSend(MEMORY[0x277CCACA8] message:"srui_localizedStringForCode:" preferredStyle:{23), 0, 0}];
  v4 = MEMORY[0x277D750F8];
  v5 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:25];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __58__SRResearchDataPerCategoryViewController_showActionSheet__block_invoke;
  v10 = &unk_279B983B8;
  objc_copyWeak(&v11, &location);
  v6 = [v4 actionWithTitle:v5 style:2 handler:&v7];
  [v3 addAction:{v6, v7, v8, v9, v10}];
  [v3 addAction:{objc_msgSend(MEMORY[0x277D750F8], "actionWithTitle:style:handler:", objc_msgSend(MEMORY[0x277CCACA8], "srui_localizedStringForCode:", 26), 1, 0)}];
  [(SRResearchDataPerCategoryViewController *)self presentViewController:v3 animated:1 completion:0];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

uint64_t __58__SRResearchDataPerCategoryViewController_showActionSheet__block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak deleteAllUnreleasedData];
}

- (void)exportData
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = SRResearchPerDataLog;
  if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_265602000, v3, OS_LOG_TYPE_DEFAULT, "Export data", buf, 2u);
  }

  objc_initWeak(&location, self);
  *buf = 0;
  v30 = buf;
  v31 = 0x2020000000;
  v32 = 0;
  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:27];
  v6 = [v4 alertControllerWithTitle:v5 message:objc_msgSend(MEMORY[0x277CCACA8] preferredStyle:{"srui_localizedStringForCode:", 28), 1}];
  v7 = MEMORY[0x277D750F8];
  v8 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:26];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __53__SRResearchDataPerCategoryViewController_exportData__block_invoke;
  v27[3] = &unk_279B983E0;
  v27[4] = buf;
  objc_copyWeak(&v28, &location);
  [v6 addAction:{objc_msgSend(v7, "actionWithTitle:style:handler:", v8, 1, v27)}];
  [(SRResearchDataPerCategoryViewController *)self presentViewController:v6 animated:1 completion:0];
  v9 = [MEMORY[0x277CDC638] sensorDescriptionsForAuthorizationService:{-[SRAuthorizationGroup authorizationService](self->_authGroup, "authorizationService")}];
  v10 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v9, "count")}];
  v18 = v6;
  selfCopy = self;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v23 objects:v36 count:16];
  if (v11)
  {
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if ([v14 name])
        {
          [v10 addObject:{objc_msgSend(v14, "name")}];
        }

        else
        {
          v15 = SRResearchPerDataLog;
          if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_FAULT))
          {
            *v34 = 138543362;
            v35 = v14;
            _os_log_fault_impl(&dword_265602000, v15, OS_LOG_TYPE_FAULT, "Trying to export a data stream without a name. %{public}@", v34, 0xCu);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v36 count:16];
    }

    while (v11);
  }

  if ([v10 count])
  {
    objc_initWeak(v34, selfCopy);
    v16 = MEMORY[0x277CDC648];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_54;
    v20[3] = &unk_279B98458;
    objc_copyWeak(&v21, v34);
    objc_copyWeak(&v22, &location);
    v20[4] = v18;
    v20[5] = buf;
    selfCopy->_cancelExportBlock = [v16 createExportDataForServices:v10 withCompletionHandler:v20];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(v34);
  }

  else
  {
    v17 = SRResearchPerDataLog;
    if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_ERROR))
    {
      *v34 = 138543362;
      v35 = v9;
      _os_log_error_impl(&dword_265602000, v17, OS_LOG_TYPE_ERROR, "Failed to find any sensors to export from %{public}@", v34, 0xCu);
    }
  }

  objc_destroyWeak(&v28);
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&location);
}

uint64_t __53__SRResearchDataPerCategoryViewController_exportData__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  Weak = objc_loadWeak((a1 + 40));

  return [Weak cancelExport];
}

void __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = SRResearchPerDataLog;
  if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v14 = a3;
    _os_log_debug_impl(&dword_265602000, v8, OS_LOG_TYPE_DEBUG, "Got sandbox extension token %{public}@", buf, 0xCu);
  }

  [objc_loadWeak((a1 + 48)) setExportedDataURL:a2];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_55;
  v11[3] = &unk_279B98430;
  objc_copyWeak(&v12, (a1 + 56));
  v11[4] = a4;
  v11[5] = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11[7] = a3;
  v11[8] = v9;
  v11[6] = v10;
  dispatch_async(MEMORY[0x277D85CD0], v11);
  objc_destroyWeak(&v12);
}

void __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_55(uint64_t a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  [objc_loadWeak((a1 + 72)) setCancelExportBlock:0];
  v2 = *(a1 + 32);
  if (!v2 && *(a1 + 40))
  {
    goto LABEL_7;
  }

  v3 = SRResearchPerDataLog;
  if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_ERROR))
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v2;
    _os_log_error_impl(&dword_265602000, v3, OS_LOG_TYPE_ERROR, "Failed to get exported file %@", location, 0xCu);
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
LABEL_7:
    v6 = 0;
  }

  else
  {
    v4 = MEMORY[0x277D75110];
    v5 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:27];
    v6 = [v4 alertControllerWithTitle:v5 message:objc_msgSend(MEMORY[0x277CCACA8] preferredStyle:{"srui_localizedStringForCode:", 29), 1}];
    objc_initWeak(location, v6);
    v7 = MEMORY[0x277D750F8];
    v8 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:30];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_56;
    v14[3] = &unk_279B983B8;
    objc_copyWeak(&v15, location);
    [v6 addAction:{objc_msgSend(v7, "actionWithTitle:style:handler:", v8, 0, v14)}];
    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  v9 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_2;
  v11[3] = &unk_279B98408;
  objc_copyWeak(&v13, (a1 + 72));
  v10 = *(a1 + 40);
  v11[4] = v6;
  v11[5] = v10;
  v12 = *(a1 + 56);
  [v9 dismissViewControllerAnimated:0 completion:v11];
  objc_destroyWeak(&v13);
}

uint64_t __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_56(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak dismissViewControllerAnimated:0 completion:0];
}

id __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_2(uint64_t a1)
{
  result = objc_loadWeak((a1 + 64));
  v3 = result;
  if (*(a1 + 32))
  {

    return [result presentViewController:? animated:? completion:?];
  }

  else if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v4 = [*(a1 + 40) path];
    v5 = *(a1 + 48);

    return [v3 presentDownloadPath:v4 sandboxExtensionToken:v5];
  }

  return result;
}

- (void)cancelExport
{
  cancelExportBlock = [(SRResearchDataPerCategoryViewController *)self cancelExportBlock];
  if (cancelExportBlock)
  {
    cancelExportBlock[2]();
  }

  [(SRResearchDataPerCategoryViewController *)self setCancelExportBlock:0];
}

- (void)cleanupExportedFile
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(SRResearchDataPerCategoryViewController *)self exportedDataURL])
  {
    v8 = 0;
    if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      v3 = SRResearchPerDataLog;
      if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_ERROR))
      {
        exportedDataURL = [(SRResearchDataPerCategoryViewController *)self exportedDataURL];
        *buf = 138543618;
        v10 = exportedDataURL;
        v11 = 2114;
        v12 = v8;
        _os_log_error_impl(&dword_265602000, v3, OS_LOG_TYPE_ERROR, "Failed to remove exported URL %{public}@ because %{public}@", buf, 0x16u);
      }
    }

    [(SRResearchDataPerCategoryViewController *)self setExportedDataURL:0];
  }

  if ([(SRResearchDataPerCategoryViewController *)self sb_handle]!= -1)
  {
    [(SRResearchDataPerCategoryViewController *)self sb_handle];
    if ((sandbox_extension_release() & 0x80000000) != 0)
    {
      v4 = SRResearchPerDataLog;
      if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_ERROR))
      {
        sb_handle = [(SRResearchDataPerCategoryViewController *)self sb_handle];
        v7 = *__error();
        *buf = 134218240;
        v10 = sb_handle;
        v11 = 1026;
        LODWORD(v12) = v7;
        _os_log_error_impl(&dword_265602000, v4, OS_LOG_TYPE_ERROR, "Error releasing sandbox handle %lld because %{public, errno}d", buf, 0x12u);
      }
    }

    [(SRResearchDataPerCategoryViewController *)self setSb_handle:-1];
  }
}

- (void)presentDownloadPath:(id)path sandboxExtensionToken:(id)token
{
  v27 = *MEMORY[0x277D85DE8];
  if (token)
  {
    [token UTF8String];
    [(SRResearchDataPerCategoryViewController *)self setSb_handle:sandbox_extension_consume()];
    sb_handle = [(SRResearchDataPerCategoryViewController *)self sb_handle];
    v8 = SRResearchPerDataLog;
    if (sb_handle == -1)
    {
      if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_ERROR))
      {
        v18 = *__error();
        *buf = 138543618;
        tokenCopy2 = token;
        v25 = 1026;
        LODWORD(pathCopy) = v18;
        _os_log_error_impl(&dword_265602000, v8, OS_LOG_TYPE_ERROR, "Error consuming sandbox extension token %{public}@ because %{public, errno}d", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      tokenCopy2 = token;
      v25 = 2114;
      pathCopy = path;
      _os_log_debug_impl(&dword_265602000, v8, OS_LOG_TYPE_DEBUG, "Consumed sandbox extension token %{public}@ for %{public}@", buf, 0x16u);
    }
  }

  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
  v10 = objc_alloc(MEMORY[0x277D546D8]);
  v22 = v9;
  v11 = [v10 initWithActivityItems:objc_msgSend(MEMORY[0x277CBEA60] applicationActivities:{"arrayWithObjects:count:", &v22, 1), 0}];
  v12 = *MEMORY[0x277D54748];
  v21[0] = *MEMORY[0x277D54760];
  v21[1] = v12;
  v13 = *MEMORY[0x277D54778];
  v21[2] = *MEMORY[0x277D54770];
  v21[3] = v13;
  v14 = *MEMORY[0x277D54718];
  v21[4] = *MEMORY[0x277D54720];
  v21[5] = v14;
  v15 = *MEMORY[0x277D54708];
  v21[6] = *MEMORY[0x277D54780];
  v21[7] = v15;
  v16 = *MEMORY[0x277D54768];
  v21[8] = *MEMORY[0x277D54750];
  v21[9] = v16;
  v21[10] = *MEMORY[0x277D54758];
  v21[11] = v15;
  v17 = *MEMORY[0x277D54730];
  v21[12] = *MEMORY[0x277D54740];
  v21[13] = v17;
  [v11 setExcludedActivityTypes:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v21, 14)}];
  [(SRResearchDataPerCategoryViewController *)self presentViewController:v11 animated:1 completion:&__block_literal_global_62];
  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__SRResearchDataPerCategoryViewController_presentDownloadPath_sandboxExtensionToken___block_invoke_2;
  v19[3] = &unk_279B98480;
  v19[4] = v11;
  objc_copyWeak(&v20, buf);
  [v11 setCompletionWithItemsHandler:v19];
  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

uint64_t __85__SRResearchDataPerCategoryViewController_presentDownloadPath_sandboxExtensionToken___block_invoke_2(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));

  return [Weak cleanupExportedFile];
}

- (void)deleteAllUnreleasedData
{
  v16 = *MEMORY[0x277D85DE8];
  [(SRResearchDataPerCategoryViewController *)self end];
  if (v3 <= SRAbsoluteTimeGetCurrent())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    pruners = [(SRResearchDataPerCategoryViewController *)self pruners];
    v5 = [(NSMutableArray *)pruners countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(pruners);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          [(SRResearchDataPerCategoryViewController *)self end];
          [v9 removeSamplesFrom:v10 to:SRAbsoluteTimeGetCurrent()];
          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)pruners countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (void)navigateToAuthorization
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = 0;
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:+[NSURL sk_PreferencesMotionAndFitness](MEMORY[0x277CBEBC0]) withOptions:0 error:&v5];
  if (v5)
  {
    v3 = SRResearchPerDataLog;
    if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_ERROR))
    {
      v4 = +[(NSURL *)MEMORY[0x277CBEBC0]];
      *buf = 138543618;
      v7 = v4;
      v8 = 2114;
      v9 = v5;
      _os_log_error_impl(&dword_265602000, v3, OS_LOG_TYPE_ERROR, "Error opening %{public}@ because %{public}@", buf, 0x16u);
    }
  }
}

@end