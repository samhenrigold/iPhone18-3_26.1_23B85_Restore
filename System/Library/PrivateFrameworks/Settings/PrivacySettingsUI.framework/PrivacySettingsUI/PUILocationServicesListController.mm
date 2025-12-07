@interface PUILocationServicesListController
+ (BOOL)isCoreRoutineAuthorized;
+ (void)setCoreRoutineAuthorized:(BOOL)authorized;
- (BOOL)_isBundleBlacklisted:(id)blacklisted;
- (BOOL)_isFindMyDeviceSpecifier:(id)specifier;
- (BOOL)_shouldEnableLocationSharingSpecifier;
- (PUILocationServicesListController)init;
- (id)_iconForLocationUsage:(int)usage;
- (id)accountStore;
- (id)hiddenBundleIdentifiers;
- (id)isEntityAuthorized:(id)authorized;
- (id)isLocationServicesEnabled:(id)enabled;
- (id)loadSensorKitSpecifiersProvider;
- (id)localizedDisplayNameForBundleID:(id)d;
- (id)locationDetailSpecifiersForAppsAndBundles;
- (id)locationDetailSpecifiersWithDetailsMatching:(id)matching;
- (id)locationSharingSpecifiers;
- (id)primaryAccount;
- (id)specifiers;
- (int)locationUsageBasedOnDetails:(id)details;
- (int)locationUsageForEntity:(id)entity;
- (void)_cancelConfirmDisableForSpecifier:(id)specifier;
- (void)_handleAuthenticationForSender:(id)sender success:(BOOL)success error:(id)error;
- (void)_locationSharingSpecifierWasTapped:(id)tapped;
- (void)_pushCoreRoutineViewController;
- (void)_setEntityAuthorized:(BOOL)authorized specifier:(id)specifier;
- (void)_setLocationServicesEnabled:(BOOL)enabled;
- (void)dealloc;
- (void)didChangeActiveLocationSharingDevice:(id)device;
- (void)didUpdateHidingStatus:(BOOL)status;
- (void)disableAfterLoginConfirmation:(id)confirmation;
- (void)mainThreadConnectionError:(id)error;
- (void)mainThreadDidChangeActiveLocationSharingDevice:(id)device;
- (void)mainThreadDidUpdateHidingStatus:(BOOL)status;
- (void)profileNotification:(id)notification;
- (void)provideNavigationDonations;
- (void)setAuthLevel:(unint64_t)level learnedRoutesAccess:(int)access visitHistoryAccess:(int)historyAccess forCell:(id)cell;
- (void)setEntityAuthorized:(id)authorized specifier:(id)specifier;
- (void)setLocationServicesEnabled:(id)enabled specifier:(id)specifier;
- (void)setSOSEntityAuthorized:(id)authorized specifier:(id)specifier;
- (void)setUsage:(int)usage forCell:(id)cell;
- (void)showCoreRoutineSettings:(id)settings;
- (void)showLocationPrivacyPage;
- (void)startLocationStatusUpdates;
- (void)startUpdatingFindMyPreferences;
- (void)stopLocationStatusUpdates;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateAuthLevelStringForSpecifier:(id)specifier andCell:(id)cell;
- (void)updateFindMyFriendsStateBasedOnRestriction;
- (void)updateForApplicationDidBecomeActive:(id)active;
- (void)updateLocationSharing;
- (void)updateLocationSharingSpecifiersWithReload:(BOOL)reload;
- (void)updateLocationUsage;
- (void)updateMutableStateBasedOnRestriction;
- (void)updateMutableStateForLocationSharing;
- (void)updateRecentlyUsedDate;
- (void)updateSpecifiersForImposedSettingsWithReload:(BOOL)reload;
- (void)updateTribecaText;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBecomeActive;
@end

@implementation PUILocationServicesListController

- (PUILocationServicesListController)init
{
  v11.receiver = self;
  v11.super_class = PUILocationServicesListController;
  v2 = [(PUILocationServicesListController *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC17PrivacySettingsUI19FindMyLocateSession);
    locationSharingSession = v2->_locationSharingSession;
    v2->_locationSharingSession = v3;

    v5 = objc_alloc_init(MEMORY[0x277D01280]);
    routineManager = v2->_routineManager;
    v2->_routineManager = v5;

    [(PUILocationServicesListController *)v2 startUpdatingFindMyPreferences];
    [(PUILocationServicesListController *)v2 updateRecentlyUsedDate];
    v7 = dispatch_queue_create("com.apple.settings.PrivacySettingsUI.PUILocationServicesListController.locationServicesAccessQueue", 0);
    locationServicesAccessQueue = v2->locationServicesAccessQueue;
    v2->locationServicesAccessQueue = v7;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_updateForApplicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
    [defaultCenter addObserver:v2 selector:sel_profileNotification_ name:@"PSProfileConnectionEffectiveSettingsChangedNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel_updateAppClipsSpecifierCount_ name:@"com.apple.PrivacySettingsUI.LocationAppClipsStateChanged" object:0];
    [defaultCenter addObserver:v2 selector:sel_updateCoreRoutineSettings_ name:@"PreferencesRoutineStateChanged" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  presentedViewController = [(PUILocationServicesListController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(PUILocationServicesListController *)self dismissViewControllerAnimated:0 completion:0];
  }

  [(PUILocationServicesListController *)self stopLocationStatusUpdates];
  [(FindMyLocateSession *)self->_locationSharingSession stopMonitoringPreferenceChangesWithCompletionHandler:&__block_literal_global_283];
  v6.receiver = self;
  v6.super_class = PUILocationServicesListController;
  [(PUILocationServicesListController *)&v6 dealloc];
}

void __44__PUILocationServicesListController_dealloc__block_invoke(uint64_t a1)
{
  v1 = _PUILoggingFacility(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2657FE000, v1, OS_LOG_TYPE_DEFAULT, "findmylocate: stopMonitoringPreferenceChanges completed ", v2, 2u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUILocationServicesListController;
  [(PUILocationServicesListController *)&v4 viewDidAppear:appear];
  [(PUILocationServicesListController *)self provideNavigationDonations];
}

- (void)provideNavigationDonations
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = PUI_BundleForPrivacySettingsFramework(self);
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"LOCATION_SERVICES" table:@"Location Services" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale2 bundleURL:bundleURL];

  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/LOCATION"];
  [(PUILocationServicesListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.location" title:v7 localizedNavigationComponents:v11 deepLink:v12];
}

- (void)profileNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__PUILocationServicesListController_profileNotification___block_invoke;
  v6[3] = &unk_279BA10B0;
  v7 = notificationCopy;
  selfCopy = self;
  v5 = notificationCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __57__PUILocationServicesListController_profileNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277D26180]];

  LODWORD(v2) = [v3 intValue];
  if (v2 != getpid())
  {
    [*(a1 + 40) reloadSpecifiers];
  }
}

- (void)setAuthLevel:(unint64_t)level learnedRoutesAccess:(int)access visitHistoryAccess:(int)historyAccess forCell:(id)cell
{
  v6 = *&historyAccess;
  v7 = *&access;
  cellCopy = cell;
  if ([cellCopy isMemberOfClass:objc_opt_class()])
  {
    location = [cellCopy location];
    if (location)
    {
      v10 = location;
      authLevel = [location authLevel];
      learnedRoutesAccess = [v10 learnedRoutesAccess];
      visitHistoryAccess = [v10 visitHistoryAccess];
      if (authLevel != level || learnedRoutesAccess != v7 || visitHistoryAccess != v6 || ([v10 authLevelString], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
      {
        [v10 setAuthLevel:level learnedRoutesAccess:v7 visitHistoryAccess:v6];
      }

      [cellCopy layoutIfNeeded];
    }
  }
}

- (void)setUsage:(int)usage forCell:(id)cell
{
  v4 = *&usage;
  cellCopy = cell;
  if (([cellCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || objc_msgSend(cellCopy, "isMemberOfClass:", objc_opt_class()))
  {
    location = [cellCopy location];
    v6 = location;
    if (location && [location usage] != v4)
    {
      [v6 setUsage:v4];
      [cellCopy setNeedsLayout];
    }
  }

  else
  {
    v6 = 0;
  }
}

- (void)updateLocationUsage
{
  v3 = _PUILoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2657FE000, v3, OS_LOG_TYPE_DEFAULT, "locationManager:updateLocationUsage", buf, 2u);
  }

  v4 = PSUICLCopyAppsUsingLocation();
  allKeys = [(NSDictionary *)self->_locationEntitiesDetails allKeys];
  allKeys2 = [v4 allKeys];
  v7 = [allKeys count];
  if (v7 == [allKeys2 count] && (objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", allKeys), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", allKeys2), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToSet:", v9), v9, v8, (v10 & 1) != 0))
  {
    objc_storeStrong(&self->_locationEntitiesDetails, v4);
    locationEntitiesDetails = self->_locationEntitiesDetails;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__PUILocationServicesListController_updateLocationUsage__block_invoke;
    v12[3] = &unk_279BA1B10;
    v12[4] = self;
    [(NSDictionary *)locationEntitiesDetails enumerateKeysAndObjectsUsingBlock:v12];
  }

  else
  {
    [(PUILocationServicesListController *)self reloadSpecifiers];
  }
}

void __56__PUILocationServicesListController_updateLocationUsage__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v7;
  v10 = v8;
  if (([*(*(a1 + 32) + 1512) containsObject:v9] & 1) == 0)
  {
    v11 = [*(a1 + 32) specifierForID:v9];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 propertyForKey:*MEMORY[0x277D40148]];
      [*(a1 + 32) setUsage:objc_msgSend(*(a1 + 32) forCell:{"locationUsageForEntity:", v9), v13}];
      [*(a1 + 32) updateAuthLevelStringForSpecifier:v12 andCell:v13];
      v14 = [getCLLocationManagerClass() isEntityAuthorizedForLocationDictionary:v10];
      v15 = [v12 propertyForKey:*MEMORY[0x277D3FEB0]];
      if (v14 != [v15 isOn])
      {
        [v15 setOn:v14 animated:1];
      }
    }

    else
    {
      v16 = _PUILoggingFacility(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __56__PUILocationServicesListController_updateLocationUsage__block_invoke_cold_1();
      }

      [*(a1 + 32) reloadSpecifiers];
      *a4 = 1;
    }
  }
}

- (void)startLocationStatusUpdates
{
  if (!self->_locationNotificationsEnabled)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v4 = getCLAppStatusChangedNotification();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, entityStateCallback, v4, 0, 0);

    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, self, appInstallCallback, @"com.apple.LaunchServices.applicationRegistered", 0, 0);
    v6 = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(v6, self, appUninstallCallback, @"com.apple.LaunchServices.applicationUnregistered", 0, 0);
    self->_locationNotificationsEnabled = 1;
  }
}

- (void)stopLocationStatusUpdates
{
  if (self->_locationNotificationsEnabled)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v4 = getCLAppStatusChangedNotification();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);

    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterRemoveObserver(DistributedCenter, self, @"com.apple.LaunchServices.applicationRegistered", 0);
    v6 = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterRemoveObserver(v6, self, @"com.apple.LaunchServices.applicationUnregistered", 0);
    self->_locationNotificationsEnabled = 0;
  }
}

- (int)locationUsageBasedOnDetails:(id)details
{
  detailsCopy = details;
  v5 = [getCLLocationManagerClass() activeLocationServiceTypesForLocationDictionary:detailsCopy];
  if ((v5 & 2) != 0)
  {
    v8 = 3;
  }

  else if (v5)
  {
    v8 = 4;
  }

  else
  {
    v6 = [getCLLocationManagerClass() dateLocationLastUsedForLocationDictionary:detailsCopy];
    if (v6)
    {
      v7 = [(NSDate *)self->_twentyFourHoursAgo laterDate:v6];
      if (v7 == v6)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (int)locationUsageForEntity:(id)entity
{
  v75 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  if (![entityCopy isEqualToString:@"SYSTEM_SERVICES"])
  {
    if ([entityCopy isEqualToString:@"APP_CLIPS"])
    {
      v5 = +[PUILocationServicesClipsListController clipsLocationUsage];
      goto LABEL_5;
    }

    if ([entityCopy isEqualToString:@"LOCATION_BASED_ALERTS"])
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      coalescedImproveMapsServices = self->_coalescedLocationBasedAlertsSystemServices;
      v8 = [(NSMutableArray *)coalescedImproveMapsServices countByEnumeratingWithState:&v65 objects:v74 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v66;
        v6 = -1;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v66 != v10)
            {
              objc_enumerationMutation(coalescedImproveMapsServices);
            }

            v12 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:*(*(&v65 + 1) + 8 * i)];
            v13 = [(PUILocationServicesListController *)self locationUsageBasedOnDetails:v12];

            if (v13 > v6)
            {
              v6 = v13;
            }
          }

          v9 = [(NSMutableArray *)coalescedImproveMapsServices countByEnumeratingWithState:&v65 objects:v74 count:16];
        }

        while (v9);
        goto LABEL_73;
      }
    }

    else if ([entityCopy isEqualToString:@"HOMEKIT"])
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      coalescedImproveMapsServices = self->_coalescedHomeKitSystemServices;
      v14 = [(NSMutableArray *)coalescedImproveMapsServices countByEnumeratingWithState:&v61 objects:v73 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v62;
        v6 = -1;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v62 != v16)
            {
              objc_enumerationMutation(coalescedImproveMapsServices);
            }

            v18 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:*(*(&v61 + 1) + 8 * j)];
            v19 = [(PUILocationServicesListController *)self locationUsageBasedOnDetails:v18];

            if (v19 > v6)
            {
              v6 = v19;
            }
          }

          v15 = [(NSMutableArray *)coalescedImproveMapsServices countByEnumeratingWithState:&v61 objects:v73 count:16];
        }

        while (v15);
        goto LABEL_73;
      }
    }

    else if ([entityCopy isEqualToString:@"NETWORKING_WIRELESS"])
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      coalescedImproveMapsServices = self->_coalescedWirelessSystemServices;
      v20 = [(NSMutableArray *)coalescedImproveMapsServices countByEnumeratingWithState:&v57 objects:v72 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v58;
        v6 = -1;
        do
        {
          for (k = 0; k != v21; ++k)
          {
            if (*v58 != v22)
            {
              objc_enumerationMutation(coalescedImproveMapsServices);
            }

            v24 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:*(*(&v57 + 1) + 8 * k)];
            v25 = [(PUILocationServicesListController *)self locationUsageBasedOnDetails:v24];

            if (v25 > v6)
            {
              v6 = v25;
            }
          }

          v21 = [(NSMutableArray *)coalescedImproveMapsServices countByEnumeratingWithState:&v57 objects:v72 count:16];
        }

        while (v21);
        goto LABEL_73;
      }
    }

    else if ([entityCopy isEqualToString:@"ROUTING_AND_TRAFFIC"])
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      coalescedImproveMapsServices = self->_coalescedRoutingAndTrafficSystemServices;
      v26 = [(NSMutableArray *)coalescedImproveMapsServices countByEnumeratingWithState:&v53 objects:v71 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v54;
        v6 = -1;
        do
        {
          for (m = 0; m != v27; ++m)
          {
            if (*v54 != v28)
            {
              objc_enumerationMutation(coalescedImproveMapsServices);
            }

            v30 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:*(*(&v53 + 1) + 8 * m)];
            v31 = [(PUILocationServicesListController *)self locationUsageBasedOnDetails:v30];

            if (v31 > v6)
            {
              v6 = v31;
            }
          }

          v27 = [(NSMutableArray *)coalescedImproveMapsServices countByEnumeratingWithState:&v53 objects:v71 count:16];
        }

        while (v27);
        goto LABEL_73;
      }
    }

    else if ([entityCopy isEqualToString:@"IMPROVE_LOCATION_ACCURACY"])
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      coalescedImproveMapsServices = self->_coalescedImproveLocationAccuracySystemServices;
      v32 = [(NSMutableArray *)coalescedImproveMapsServices countByEnumeratingWithState:&v49 objects:v70 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v50;
        v6 = -1;
        do
        {
          for (n = 0; n != v33; ++n)
          {
            if (*v50 != v34)
            {
              objc_enumerationMutation(coalescedImproveMapsServices);
            }

            v36 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:*(*(&v49 + 1) + 8 * n)];
            v37 = [(PUILocationServicesListController *)self locationUsageBasedOnDetails:v36];

            if (v37 > v6)
            {
              v6 = v37;
            }
          }

          v33 = [(NSMutableArray *)coalescedImproveMapsServices countByEnumeratingWithState:&v49 objects:v70 count:16];
        }

        while (v33);
        goto LABEL_73;
      }
    }

    else
    {
      if (![entityCopy isEqualToString:@"POLARIS"])
      {
        coalescedImproveMapsServices = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:entityCopy];
        v6 = [(PUILocationServicesListController *)self locationUsageBasedOnDetails:coalescedImproveMapsServices];
        goto LABEL_73;
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      coalescedImproveMapsServices = [(PUILocationServicesListController *)self coalescedImproveMapsServices];
      v38 = [(NSMutableArray *)coalescedImproveMapsServices countByEnumeratingWithState:&v45 objects:v69 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v46;
        v6 = -1;
        do
        {
          for (ii = 0; ii != v39; ++ii)
          {
            if (*v46 != v40)
            {
              objc_enumerationMutation(coalescedImproveMapsServices);
            }

            v42 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:*(*(&v45 + 1) + 8 * ii)];
            v43 = [(PUILocationServicesListController *)self locationUsageBasedOnDetails:v42];

            if (v43 > v6)
            {
              v6 = v43;
            }
          }

          v39 = [(NSMutableArray *)coalescedImproveMapsServices countByEnumeratingWithState:&v45 objects:v69 count:16];
        }

        while (v39);
        goto LABEL_73;
      }
    }

    v6 = -1;
LABEL_73:

    goto LABEL_74;
  }

  v5 = +[PUILocationSystemServicesListController systemServicesLocationUsage];
LABEL_5:
  v6 = v5;
LABEL_74:

  return v6;
}

+ (BOOL)isCoreRoutineAuthorized
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = PSUICLCopyAppsUsingLocation();
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [v2 objectForKey:{*(*(&v8 + 1) + 8 * i), v8}];
        if ([getCLLocationManagerClass() primaryEntityClassForLocationDictionary:v6] == 16)
        {
          LOBYTE(v3) = [getCLLocationManagerClass() isEntityAuthorizedForLocationDictionary:v6];

          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

+ (void)setCoreRoutineAuthorized:(BOOL)authorized
{
  authorizedCopy = authorized;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = PSUICLCopyAppsUsingLocation();
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v4 objectForKey:{*(*(&v10 + 1) + 8 * i), v10}];
        if ([getCLLocationManagerClass() primaryEntityClassForLocationDictionary:v9] == 16)
        {
          [getCLLocationManagerClass() setEntityAuthorized:authorizedCopy forLocationDictionary:v9];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)isLocationServicesEnabled:(id)enabled
{
  isLocationServicesEnabled = self->_isLocationServicesEnabled;
  if (!isLocationServicesEnabled)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(getCLLocationManagerClass(), "locationServicesEnabled")}];
    v6 = self->_isLocationServicesEnabled;
    self->_isLocationServicesEnabled = v5;

    isLocationServicesEnabled = self->_isLocationServicesEnabled;
  }

  return isLocationServicesEnabled;
}

- (void)setLocationServicesEnabled:(id)enabled specifier:(id)specifier
{
  v41 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  specifierCopy = specifier;
  objc_storeStrong(&self->_isLocationServicesEnabled, enabled);
  bOOLValue = [enabledCopy BOOLValue];
  v10 = bOOLValue;
  v11 = _PUILoggingFacility(bOOLValue);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v38 = "[PUILocationServicesListController setLocationServicesEnabled:specifier:]";
    v39 = 1024;
    v40 = v10;
    _os_log_impl(&dword_2657FE000, v11, OS_LOG_TYPE_DEFAULT, "%s - enable: %d", buf, 0x12u);
  }

  locationServicesEnabled = [getCLLocationManagerClass() locationServicesEnabled];
  if (v10 != locationServicesEnabled)
  {
    if (v10)
    {
      [(PUILocationServicesListController *)self _setLocationServicesEnabled:1];
      if (isModificationAllowedForID(@"com.apple.findmy"))
      {
LABEL_22:
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Maps.LocationAuthorizationChangedNotification", 0, 0, 1u);
        goto LABEL_23;
      }

      [specifierCopy setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
      v13 = [specifierCopy propertyForKey:*MEMORY[0x277D40148]];
      [v13 setCellEnabled:0];
    }

    else
    {
      if (PSIsInEDUMode())
      {
        v15 = @"CONFIRM_LOCATION_EDU_TITLE";
      }

      else
      {
        v15 = @"CONFIRM_LOCATION_TITLE";
      }

      v13 = PUI_LocalizedStringForLocationServices(v15);
      v16 = MEMORY[0x277D75110];
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v19 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
      name = v13;
      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        name = [specifierCopy name];
      }

      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

      if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v23 = v13;
      }

      else
      {
        v23 = 0;
      }

      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

      v26 = [v16 alertControllerWithTitle:name message:v23 preferredStyle:(userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1];
      if (v19 == 1)
      {
      }

      v27 = MEMORY[0x277D750F8];
      v28 = PUI_LocalizedStringForLocationServices(@"CANCEL");
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __74__PUILocationServicesListController_setLocationServicesEnabled_specifier___block_invoke;
      v35[3] = &unk_279BA1178;
      v35[4] = self;
      v36 = specifierCopy;
      v29 = [v27 actionWithTitle:v28 style:1 handler:v35];
      [v26 addAction:v29];

      v30 = MEMORY[0x277D750F8];
      v31 = PUI_LocalizedStringForLocationServices(@"CONFIRM_LOCATION_TURN_OFF");
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __74__PUILocationServicesListController_setLocationServicesEnabled_specifier___block_invoke_2;
      v34[3] = &unk_279BA1B38;
      v34[4] = self;
      v32 = [v30 actionWithTitle:v31 style:2 handler:v34];
      [v26 addAction:v32];

      [(PUILocationServicesListController *)self presentViewController:v26 animated:1 completion:0];
    }

    goto LABEL_22;
  }

  v14 = _PUILoggingFacility(locationServicesEnabled);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v38 = "[PUILocationServicesListController setLocationServicesEnabled:specifier:]";
    _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "%s - loc services were already enabled.", buf, 0xCu);
  }

LABEL_23:
}

uint64_t __74__PUILocationServicesListController_setLocationServicesEnabled_specifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1560);
  *(v2 + 1560) = MEMORY[0x277CBEC38];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _cancelConfirmDisableForSpecifier:v5];
}

- (void)_cancelConfirmDisableForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__PUILocationServicesListController__cancelConfirmDisableForSpecifier___block_invoke;
  v6[3] = &unk_279BA10B0;
  v6[4] = self;
  v7 = specifierCopy;
  v5 = specifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void *__71__PUILocationServicesListController__cancelConfirmDisableForSpecifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1520] == 1)
  {
    result = [v2 reloadSpecifiers];
    *(*(a1 + 32) + 1520) = 0;
  }

  else
  {
    v4 = *(a1 + 40);

    return [v2 reloadSpecifier:v4 animated:1];
  }

  return result;
}

- (void)_setLocationServicesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v17 = *MEMORY[0x277D85DE8];
  v5 = _PUILoggingFacility(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[PUILocationServicesListController _setLocationServicesEnabled:]";
    v15 = 1024;
    v16 = enabledCopy;
    _os_log_impl(&dword_2657FE000, v5, OS_LOG_TYPE_DEFAULT, "%s - enable: %d", &v13, 0x12u);
  }

  if (!enabledCopy)
  {
    [(PUILocationServicesListController *)self stopLocationStatusUpdates];
    locationEntitiesDetails = self->_locationEntitiesDetails;
    self->_locationEntitiesDetails = 0;
  }

  [getCLLocationManagerClass() setLocationServicesEnabled:enabledCopy];
  v7 = [(PUILocationServicesListController *)self rangeOfSpecifiersInGroupID:@"LOCATION_SHARING_GROUP"];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(PUILocationServicesListController *)self rangeOfSpecifiersInGroupID:@"LOCATION_SERVICES_MASTER"];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [PUILocationServicesListController _setLocationServicesEnabled:];
    }
  }

  v9 = v7;
  v10 = v8;
  if (enabledCopy)
  {
    locationDetailSpecifiersForAppsAndBundles = [(PUILocationServicesListController *)self locationDetailSpecifiersForAppsAndBundles];
    [(PUILocationServicesListController *)self insertContiguousSpecifiers:locationDetailSpecifiersForAppsAndBundles atIndex:v9 + v10 animated:1];
  }

  else
  {
    locationDetailSpecifiersForAppsAndBundles = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) subarrayWithRange:{v7 + v8, objc_msgSend(*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), "count") - (v7 + v8)}];
    [(PUILocationServicesListController *)self removeContiguousSpecifiers:locationDetailSpecifiersForAppsAndBundles animated:1];
  }

  [(PUILocationServicesListController *)self updateLocationSharingSpecifiersWithReload:1];
  [(PUILocationServicesListController *)self updateFindMyFriendsStateBasedOnRestriction];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.PrivacySettingsUI.LocationServicesStateChanged" object:0];
}

- (BOOL)_isFindMyDeviceSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  v4 = [identifier hasSuffix:@"FindMyDevice.framework"];

  return v4;
}

- (id)isEntityAuthorized:(id)authorized
{
  identifier = [authorized identifier];
  v5 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:identifier];
  v6 = [getCLLocationManagerClass() isEntityAuthorizedForLocationDictionary:v5];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];

  return v7;
}

- (void)_setEntityAuthorized:(BOOL)authorized specifier:(id)specifier
{
  authorizedCopy = authorized;
  v17 = *MEMORY[0x277D85DE8];
  identifier = [specifier identifier];
  v7 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:identifier];
  v8 = _PUILoggingFacility(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:authorizedCopy];
    v11 = 136446722;
    v12 = "[PUILocationServicesListController _setEntityAuthorized:specifier:]";
    v13 = 2114;
    v14 = v9;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: authorized: %{public}@ for location dictionary: %{details}@", &v11, 0x20u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.PrivacySettingsUI.LocationServicesStateChanged" object:0];

  [getCLLocationManagerClass() setEntityAuthorized:authorizedCopy forLocationDictionary:v7];
}

- (void)setEntityAuthorized:(id)authorized specifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [authorized BOOLValue];
  if ((bOOLValue & 1) == 0 && -[PUILocationServicesListController _isFindMyDeviceSpecifier:](self, "_isFindMyDeviceSpecifier:", specifierCopy) && ([getPSGFindMyiPhoneControllerClass() shared], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isFindMyiPhoneEnabled"), v7, v8))
  {
    [(PUILocationServicesListController *)self disableAfterLoginConfirmation:specifierCopy];
  }

  else
  {
    [(PUILocationServicesListController *)self _setEntityAuthorized:bOOLValue specifier:specifierCopy];
  }
}

- (void)setSOSEntityAuthorized:(id)authorized specifier:(id)specifier
{
  authorizedCopy = authorized;
  specifierCopy = specifier;
  if ([authorizedCopy BOOLValue])
  {
    [(PUILocationServicesListController *)self setEntityAuthorized:authorizedCopy specifier:specifierCopy];
  }

  else
  {
    v8 = MEMORY[0x277D75110];
    v9 = PUI_LocalizedStringForLocationServices(@"SOS_DISABLE_LOCATION_SERVICES_CONFIRMATION_TITLE");
    v10 = PUI_LocalizedStringForLocationServices(@"SOS_DISABLE_LOCATION_SERVICES_CONFIRMATION_BODY");
    v11 = [v8 alertControllerWithTitle:v9 message:v10 preferredStyle:0];

    objc_initWeak(&location, self);
    v12 = MEMORY[0x277D750F8];
    v13 = PUI_LocalizedStringForLocationServices(@"SOS_DISABLE_LOCATION_SERVICES_CONFIRMATION_TURN_OFF_BUTTON");
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __70__PUILocationServicesListController_setSOSEntityAuthorized_specifier___block_invoke;
    v21[3] = &unk_279BA1B60;
    objc_copyWeak(&v24, &location);
    v22 = authorizedCopy;
    v14 = specifierCopy;
    v23 = v14;
    v15 = [v12 actionWithTitle:v13 style:0 handler:v21];
    [v11 addAction:v15];

    v16 = MEMORY[0x277D750F8];
    v17 = PUI_LocalizedStringForLocationServices(@"SOS_DISABLE_LOCATION_SERVICES_CONFIRMATION_CANCEL_BUTTON");
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__PUILocationServicesListController_setSOSEntityAuthorized_specifier___block_invoke_2;
    v19[3] = &unk_279BA1B38;
    v20 = v14;
    v18 = [v16 actionWithTitle:v17 style:1 handler:v19];
    [v11 addAction:v18];

    if (PSIsiPad())
    {
      [v11 setPreferredStyle:1];
    }

    [(PUILocationServicesListController *)self presentViewController:v11 animated:1 completion:0];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

void __70__PUILocationServicesListController_setSOSEntityAuthorized_specifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setEntityAuthorized:*(a1 + 32) specifier:*(a1 + 40)];
}

void __70__PUILocationServicesListController_setSOSEntityAuthorized_specifier___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) propertyForKey:*MEMORY[0x277D3FEB0]];
  [v1 setOn:1 animated:1];
}

- (void)disableAfterLoginConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  shared = [getPSGFindMyiPhoneControllerClass() shared];
  preferredFindMyiPhoneAccount = [shared preferredFindMyiPhoneAccount];
  username = [preferredFindMyiPhoneAccount username];

  v8 = PUI_LocalizedStringForLocationServices(@"CONFIRM_FMIP_LOCATION_TITLE");
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:v8, username];
  v10 = PUI_LocalizedStringForLocationServices(@"CONFIRM_LOCATION_TURN_OFF");
  shared2 = [getPSGFindMyiPhoneControllerClass() shared];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__PUILocationServicesListController_disableAfterLoginConfirmation___block_invoke;
  v13[3] = &unk_279BA1B88;
  v13[4] = self;
  v14 = confirmationCopy;
  v12 = confirmationCopy;
  [shared2 disablePhoneLocatorWithMessageString:v9 buttonTitle:v10 presentingViewController:self completion:v13];
}

void __67__PUILocationServicesListController_disableAfterLoginConfirmation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v16 = [v6 length];
    if (v16)
    {
      v17 = _PUILoggingFacility(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2657FE000, v17, OS_LOG_TYPE_DEFAULT, "########## authenticated - disable FMiP location service", &buf, 2u);
      }

      [*(a1 + 32) _setEntityAuthorized:0 specifier:*(a1 + 40)];
    }

    goto LABEL_19;
  }

  v8 = [v5 domain];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v9 = getFindMyiPhoneControllerErrorDomainSymbolLoc_ptr;
  v22 = getFindMyiPhoneControllerErrorDomainSymbolLoc_ptr;
  if (!getFindMyiPhoneControllerErrorDomainSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v24 = __getFindMyiPhoneControllerErrorDomainSymbolLoc_block_invoke;
    v25 = &unk_279BA0D08;
    v26 = &v19;
    v10 = GeneralSettingsUILibrary();
    v11 = dlsym(v10, "FindMyiPhoneControllerErrorDomain");
    *(v26[1] + 24) = v11;
    getFindMyiPhoneControllerErrorDomainSymbolLoc_ptr = *(v26[1] + 24);
    v9 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v9)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    __break(1u);
  }

  v12 = [v8 isEqualToString:{*v9, v19}];

  if (!v12)
  {
    v18 = _PUILoggingFacility(v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_2657FE000, v18, OS_LOG_TYPE_DEFAULT, "*** Unknown error: %@. Cancelling out of disabling FMiP location service", &buf, 0xCu);
    }

    goto LABEL_18;
  }

  v14 = [v5 code];
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = _PUILoggingFacility(2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2657FE000, v15, OS_LOG_TYPE_DEFAULT, "########## already disabled - disable FMiP location service", &buf, 2u);
      }

      goto LABEL_11;
    }

    if (v14 != 3)
    {
      goto LABEL_19;
    }

    v18 = _PUILoggingFacility(3);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2657FE000, v18, OS_LOG_TYPE_DEFAULT, "########## FMiP state in flux - canceling out of disabling FMiP location service", &buf, 2u);
    }

LABEL_18:

    [*(a1 + 32) _cancelConfirmDisableForSpecifier:*(a1 + 40)];
    goto LABEL_19;
  }

  if (!v14)
  {
    v18 = _PUILoggingFacility(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2657FE000, v18, OS_LOG_TYPE_DEFAULT, "########## User canceled out of disabling FMiP location service", &buf, 2u);
    }

    goto LABEL_18;
  }

  if (v14 == 1)
  {
    v15 = _PUILoggingFacility(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2657FE000, v15, OS_LOG_TYPE_DEFAULT, "########## no account - disable FMiP location service", &buf, 2u);
    }

LABEL_11:

    [*(a1 + 32) _setEntityAuthorized:0 specifier:*(a1 + 40)];
  }

LABEL_19:
}

- (void)updateMutableStateBasedOnRestriction
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:{+[PUILocationServicesListController isLocationRestricted](PUILocationServicesListController, "isLocationRestricted") ^ 1}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v7 = *MEMORY[0x277D3FF38];
    v22 = *MEMORY[0x277D40148];
    v8 = MEMORY[0x277D3FC90];
    v21 = *MEMORY[0x277D3FF38];
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        if (*&v10[*v8] == 6 || (v11 = [*(*(&v24 + 1) + 8 * v9) detailControllerClass], v11 == objc_opt_class()))
        {
          v12 = [v10 propertyForKey:v7];
          if (!v12 || (v13 = v12, [v10 propertyForKey:v7], v14 = v5, v15 = v6, v16 = v8, v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "BOOLValue"), v19 = objc_msgSend(v3, "BOOLValue"), v17, v8 = v16, v6 = v15, v5 = v14, v7 = v21, v13, v18 != v19))
          {
            [v10 setProperty:v3 forKey:v7];
            v20 = [v10 propertyForKey:v22];
            [v20 setCellEnabled:{objc_msgSend(v3, "BOOLValue")}];
          }
        }

        ++v9;
      }

      while (v5 != v9);
      v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }
}

- (void)updateFindMyFriendsStateBasedOnRestriction
{
  if (!isModificationAllowedForID(@"com.apple.findmy"))
  {
    v5 = [(PUILocationServicesListController *)self specifierForID:@"com.apple.findmy"];
    v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [v5 setProperty:v3 forKey:*MEMORY[0x277D3FF38]];

    v4 = [v5 propertyForKey:*MEMORY[0x277D40148]];
    [v4 setCellEnabled:0];
  }
}

- (void)updateSpecifiersForImposedSettingsWithReload:(BOOL)reload
{
  reloadCopy = reload;
  [(PUILocationServicesListController *)self updateMutableStateBasedOnRestriction];
  [(PUILocationServicesListController *)self updateLocationSharingSpecifiersWithReload:reloadCopy];
  [(PUILocationServicesListController *)self updateMutableStateForLocationSharing];

  [(PUILocationServicesListController *)self updateFindMyFriendsStateBasedOnRestriction];
}

- (void)updateMutableStateForLocationSharing
{
  if (!isModificationAllowedForID(@"com.apple.findmy"))
  {
    v3 = [(PUILocationServicesListController *)self isLocationServicesEnabled:0];
    bOOLValue = [v3 BOOLValue];

    if (bOOLValue)
    {
      v6 = [(PUILocationServicesListController *)self specifierForID:@"LOCATION_SERVICES_MASTER"];
      [v6 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
      v5 = [v6 propertyForKey:*MEMORY[0x277D40148]];
      [v5 setCellEnabled:0];
    }
  }
}

- (void)updateRecentlyUsedDate
{
  v3 = objc_alloc(MEMORY[0x277CBEA80]);
  v8 = [v3 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v4 setHour:-24];
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [v8 dateByAddingComponents:v4 toDate:date options:0];
  twentyFourHoursAgo = self->_twentyFourHoursAgo;
  self->_twentyFourHoursAgo = v6;
}

- (void)updateForApplicationDidBecomeActive:(id)active
{
  [(PUILocationServicesListController *)self updateRecentlyUsedDate];
  table = [(PUILocationServicesListController *)self table];
  [table reloadData];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUILocationServicesListController;
  [(PUILocationServicesListController *)&v4 viewWillAppear:appear];
  [(PUILocationServicesListController *)self updateSpecifiersForImposedSettings];
}

- (void)willBecomeActive
{
  v4.receiver = self;
  v4.super_class = PUILocationServicesListController;
  [(PUILocationServicesListController *)&v4 willBecomeActive];
  presentedViewController = [(PUILocationServicesListController *)self presentedViewController];

  if (presentedViewController)
  {
    [(PUILocationServicesListController *)self reloadSpecifiers];
  }

  else
  {
    self->_deferredRefreshDueToConfirm = 1;
  }
}

- (void)showLocationPrivacyPage
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.locationservices"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (id)hiddenBundleIdentifiers
{
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.siri", @"/System/Library/LocationBundles/ClipServicesLocation.bundle", 0}];
  if (PSIsInEDUMode())
  {
    v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"/System/Library/PrivateFrameworks/FMF.framework", 0}];
    v4 = [v2 setByAddingObjectsFromSet:v3];
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

- (id)localizedDisplayNameForBundleID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:@"com.apple.mobilesafari"])
  {
    localizedName = PUI_LocalizedStringForLocationServices(@"SAFARI_WEBSITES");
  }

  else
  {
    v5 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:dCopy];
    localizedName = [v5 localizedName];
  }

  return localizedName;
}

- (BOOL)_isBundleBlacklisted:(id)blacklisted
{
  blacklistedCopy = blacklisted;
  if (_isBundleBlacklisted__onceToken != -1)
  {
    [PUILocationServicesListController _isBundleBlacklisted:];
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  effectiveBlacklistedAppBundleIDs = [mEMORY[0x277D262A0] effectiveBlacklistedAppBundleIDs];

  v6 = [MEMORY[0x277CBEBC0] URLWithString:blacklistedCopy];
  lastPathComponent = [v6 lastPathComponent];

  v8 = [_isBundleBlacklisted__appForBundle objectForKeyedSubscript:lastPathComponent];
  if ([v8 length])
  {
    v9 = [effectiveBlacklistedAppBundleIDs containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __58__PUILocationServicesListController__isBundleBlacklisted___block_invoke()
{
  v0 = _isBundleBlacklisted__appForBundle;
  _isBundleBlacklisted__appForBundle = &unk_28772B6A8;
}

- (id)locationDetailSpecifiersForAppsAndBundles
{
  v3 = objc_opt_new();
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __78__PUILocationServicesListController_locationDetailSpecifiersForAppsAndBundles__block_invoke;
  v25[3] = &unk_279BA1BB0;
  v25[4] = &v26;
  v4 = [(PUILocationServicesListController *)self locationDetailSpecifiersWithDetailsMatching:v25];
  [v3 addObjectsFromArray:v4];

  v5 = _os_feature_enabled_impl();
  v6 = MEMORY[0x277D3FE58];
  v7 = MEMORY[0x277D40020];
  v8 = MEMORY[0x277D3FFD8];
  if (v5)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    isAppClipsAllowed = [mEMORY[0x277D262A0] isAppClipsAllowed];

    if (isAppClipsAllowed)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *(v27 + 6)];
      v12 = PUI_LocalizedStringForPrivacy(v11);
      [(PUILocationServicesListController *)self setAppClipsCount:v12];

      v13 = MEMORY[0x277D3FAD8];
      v14 = PUI_LocalizedStringForDimSum(@"APP_CLIPS");
      v15 = [v13 preferenceSpecifierNamed:v14 target:self set:0 get:sel_getAppClipsCount_ detail:objc_opt_class() cell:2 edit:0];

      [v15 setIdentifier:@"APP_CLIPS"];
      [v15 setProperty:objc_opt_class() forKey:*v6];
      [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*v7];
      [v15 setObject:@"com.apple.graphic-icon.app-clips" forKeyedSubscript:*v8];
      [v3 insertObject:v15 atIndex:1];
    }
  }

  v16 = MEMORY[0x277D3FAD8];
  v17 = PUI_LocalizedStringForLocationServices(@"SYSTEM_SERVICES");
  v18 = [v16 preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v18 setIdentifier:@"SYSTEM_SERVICES"];
  [v18 setProperty:objc_opt_class() forKey:*v6];
  [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*v7];
  [v18 setObject:@"com.apple.graphic-icon.gear" forKeyedSubscript:*v8];
  [v3 addObject:v18];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPhone = [currentDevice sf_isiPhone];

  if (sf_isiPhone)
  {
    loadSensorKitSpecifiersProvider = [(PUILocationServicesListController *)self loadSensorKitSpecifiersProvider];
    sensorKitSpecifiersProvider = self->_sensorKitSpecifiersProvider;
    self->_sensorKitSpecifiersProvider = loadSensorKitSpecifiersProvider;

    v23 = [(SRRelatedSettingsProvider *)self->_sensorKitSpecifiersProvider specifiersForRelatedSettings:@"Location"];
    if (v23)
    {
      [v3 addObjectsFromArray:v23];
    }
  }

  _Block_object_dispose(&v26, 8);

  return v3;
}

BOOL __78__PUILocationServicesListController_locationDetailSpecifiersForAppsAndBundles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"BundleId"];
  v5 = PUIIsAppClip(v4);

  if (v5 && [getCLLocationManagerClass() isEntityAuthorizedForLocationDictionary:v3])
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return !v5;
}

- (id)locationDetailSpecifiersWithDetailsMatching:(id)matching
{
  v81 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  obj = PSUICLCopyAppsUsingLocation();
  v4 = _PUILoggingFacility(obj);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v77 = obj;
    _os_log_impl(&dword_2657FE000, v4, OS_LOG_TYPE_DEFAULT, "specifiers -- CLCopyAppsUsingLocation:\n%@", buf, 0xCu);
  }

  v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSObject count](obj, "count")}];
  objc_storeStrong(&self->_locationEntitiesDetails, obj);
  v45 = PUIGetActivePairedDevice();
  mEMORY[0x277D2BD58] = [MEMORY[0x277D2BD58] sharedInstance];
  ScreenScale();
  if (v5 == 2)
  {
    v6 = 47;
  }

  else
  {
    v6 = 48;
  }

  v53 = v6;
  v67 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([obj count])
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    effectiveBlacklistedAppBundleIDs = [mEMORY[0x277D262A0] effectiveBlacklistedAppBundleIDs];

    v8 = MEMORY[0x277CBEB98];
    hiddenBundleIdentifiers = [(PUILocationServicesListController *)self hiddenBundleIdentifiers];
    v64 = [v8 setWithSet:hiddenBundleIdentifiers];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v10 = obj;
    v11 = [v10 countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (!v11)
    {
      goto LABEL_74;
    }

    v68 = *v73;
    v50 = *MEMORY[0x277CBEC40];
    v49 = *MEMORY[0x277D40020];
    v48 = *MEMORY[0x277D40008];
    v52 = *MEMORY[0x277D3FFC0];
    v55 = *MEMORY[0x277D3FE58];
    v56 = *MEMORY[0x277D3FFB8];
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v73 != v68)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v72 + 1) + 8 * v12);
        v14 = [v10 objectForKey:v13];
        if (matchingCopy && (matchingCopy[2](matchingCopy, v14) & 1) == 0)
        {
          goto LABEL_20;
        }

        v15 = [v14 objectForKeyedSubscript:@"BundleId"];
        if ([effectiveBlacklistedAppBundleIDs containsObject:v15])
        {

LABEL_20:
          [(NSArray *)v67 addObject:v13];
          goto LABEL_66;
        }

        v16 = [v14 objectForKeyedSubscript:@"BundlePath"];
        v17 = [(PUILocationServicesListController *)self _isBundleBlacklisted:v16];

        if (v17 || [v64 containsObject:v13])
        {
          goto LABEL_20;
        }

        v18 = [getCLLocationManagerClass() primaryEntityClassForLocationDictionary:v14];
        v19 = v18;
        v20 = 0;
        v21 = 0;
        if (v18 > 3)
        {
          if (v18 == 4)
          {
            goto LABEL_20;
          }

          if (v18 == 16)
          {
            goto LABEL_20;
          }

          v59 = 0;
          bundleURL = 0;
          v61 = 0;
          oslog = 0;
          v60 = 0;
          if (v18 == 32)
          {
            goto LABEL_20;
          }

          goto LABEL_55;
        }

        if (!v18)
        {
          v23 = _PUILoggingFacility(0);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v77 = v13;
            v78 = 2112;
            v79 = v14;
            _os_log_impl(&dword_2657FE000, v23, OS_LOG_TYPE_DEFAULT, "EntityClassUnknown:\n%@\n%@", buf, 0x16u);
          }

          goto LABEL_20;
        }

        if (v18 != 1)
        {
          v59 = 0;
          bundleURL = 0;
          v61 = 0;
          oslog = 0;
          v60 = 0;
          if (v18 == 2)
          {
            v60 = [v14 objectForKey:@"BundlePath"];
            osloga = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:v60];
            v22 = [osloga objectForInfoDictionaryKey:v50];
            if ([v22 length])
            {
              bundleURL = [osloga bundleURL];
              v21 = 0;
              v20 = 0;
              v59 = 0;
              v61 = 0;
            }

            else
            {
              lastPathComponent = [v60 lastPathComponent];

              v28 = _PUILoggingFacility(v27);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v77 = v60;
                _os_log_impl(&dword_2657FE000, v28, OS_LOG_TYPE_DEFAULT, "No display name found for bundle: %@", buf, 0xCu);
              }

              v21 = 0;
              v20 = 0;
              v59 = 0;
              bundleURL = 0;
              v61 = 0;
              v22 = lastPathComponent;
            }

LABEL_54:

            oslog = v22;
            goto LABEL_55;
          }

          goto LABEL_55;
        }

        v61 = [v14 objectForKey:@"BundleId"];
        v59 = [MEMORY[0x277D75D70] bundleIdentifierContainsWebClipIdentifier:v61];
        if (v59)
        {
          oslog = [(PUILocationServicesListController *)self localizedDisplayNameForBundleID:v61];
          if (![oslog length])
          {
            goto LABEL_37;
          }
        }

        else
        {
          v24 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v61];
          appState = [v24 appState];
          isInstalled = [appState isInstalled];

          if (!isInstalled)
          {
            if (!v45)
            {
              [(NSArray *)v67 addObject:v13];

              goto LABEL_66;
            }

            oslog = PUIDisplayNameForWatchApp(v61);
            if (oslog)
            {
              v21 = v61;
            }

            else
            {
              v21 = PUIWatchBundleIDForBundleID(v61);
              oslog = PUIDisplayNameForWatchApp(v21);
            }

            if (!v21)
            {
LABEL_37:
              [(NSArray *)v67 addObject:v13];

              goto LABEL_66;
            }

            v20 = 1;
            goto LABEL_41;
          }

          oslog = [(PUILocationServicesListController *)self localizedDisplayNameForBundleID:v61];
        }

        v21 = 0;
        v20 = 0;
LABEL_41:
        if (![oslog length])
        {
          v29 = v61;
          if (v21)
          {
            v29 = v21;
          }

          v22 = v29;

          osloga = _PUILoggingFacility(v30);
          if (os_log_type_enabled(osloga, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v77 = v22;
            _os_log_impl(&dword_2657FE000, osloga, OS_LOG_TYPE_DEFAULT, "No display name found for application: %@", buf, 0xCu);
          }

          bundleURL = 0;
          v60 = 0;
          goto LABEL_54;
        }

        bundleURL = 0;
        v60 = 0;
LABEL_55:
        v31 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:oslog target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
        if (v20)
        {
          v32 = PSBlankIconImage();
          [v31 setProperty:v32 forKey:v52];

          objc_initWeak(buf, self);
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __81__PUILocationServicesListController_locationDetailSpecifiersWithDetailsMatching___block_invoke;
          v69[3] = &unk_279BA1900;
          v70 = v31;
          objc_copyWeak(&v71, buf);
          [mEMORY[0x277D2BD58] getIconForBundleID:v21 iconVariant:v53 block:v69 timeout:-1.0];
          objc_destroyWeak(&v71);

          objc_destroyWeak(buf);
        }

        else if (v19 == 1)
        {
          v33 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v31 setProperty:v33 forKey:v49];

          [v31 setProperty:v61 forKey:v48];
        }

        else if (v19 == 2 && bundleURL)
        {
          v34 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v31 setProperty:v34 forKey:v49];

          v35 = [MEMORY[0x277CCA8D8] bundleWithURL:bundleURL];
          bundleIdentifier = [v35 bundleIdentifier];

          if ([bundleIdentifier isEqualToString:@"com.apple.AssistantServices"])
          {
            [v31 setProperty:@"com.apple.siri" forKey:v48];
          }

          else
          {
            [v31 setProperty:bundleURL forKey:@"_BundleUrl_"];
          }
        }

        [v31 setProperty:v13 forKey:v56];
        v37 = [MEMORY[0x277CCABB0] numberWithBool:v59];
        [v31 setProperty:v37 forKey:@"WebApp"];

        [v31 setProperty:objc_opt_class() forKey:v55];
        [v57 addObject:v31];

LABEL_66:
        ++v12;
      }

      while (v11 != v12);
      v38 = [v10 countByEnumeratingWithState:&v72 objects:v80 count:16];
      v11 = v38;
      if (!v38)
      {
LABEL_74:

        [v57 sortUsingFunction:PUICompareSpecifiersByName context:0];
        break;
      }
    }
  }

  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  specifier = [(PUILocationServicesListController *)self specifier];
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"APP_CLIPS"])
  {
    v42 = @"PUIClipLocationIndicatorExplanationView";
  }

  else
  {
    v42 = @"PUILocationIndicatorExplanationView";
  }

  [emptyGroupSpecifier setProperty:v42 forKey:*MEMORY[0x277D3FF48]];

  [emptyGroupSpecifier setProperty:@"APP" forKey:@"_ExplanationIdSuffix_"];
  [v47 addObject:emptyGroupSpecifier];
  [v47 addObjectsFromArray:v57];
  ignoredLocationEntities = self->_ignoredLocationEntities;
  self->_ignoredLocationEntities = v67;

  [(PUILocationServicesListController *)self startLocationStatusUpdates];

  return v47;
}

void __81__PUILocationServicesListController_locationDetailSpecifiersWithDetailsMatching___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__PUILocationServicesListController_locationDetailSpecifiersWithDetailsMatching___block_invoke_2;
  block[3] = &unk_279BA18D8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __81__PUILocationServicesListController_locationDetailSpecifiersWithDetailsMatching___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D3FFC0]];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

- (id)loadSensorKitSpecifiersProvider
{
  v2 = PSBundlePathForPreferenceBundle();
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:v2];
  v4 = v3;
  if (v3 && (v5 = [v3 classNamed:@"SRRelatedSpecifiers"]) != 0)
  {
    v6 = objc_alloc_init(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = v6;
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

  return v7;
}

- (void)_locationSharingSpecifierWasTapped:(id)tapped
{
  v4 = MEMORY[0x277D07C40];
  tappedCopy = tapped;
  v7 = objc_alloc_init(v4);
  [v7 setSpecifier:tappedCopy];

  [v7 setParentController:self];
  rootController = [(PUILocationServicesListController *)self rootController];
  [v7 setRootController:rootController];

  [(PUILocationServicesListController *)self showController:v7 animate:1];
}

- (id)accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = objc_alloc_init(MEMORY[0x277CB8F48]);
    v5 = self->_accountStore;
    self->_accountStore = v4;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (id)primaryAccount
{
  primaryAccount = self->_primaryAccount;
  if (!primaryAccount)
  {
    accountStore = [(PUILocationServicesListController *)self accountStore];
    aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];
    v6 = self->_primaryAccount;
    self->_primaryAccount = aa_primaryAppleAccount;

    primaryAccount = self->_primaryAccount;
  }

  return primaryAccount;
}

- (BOOL)_shouldEnableLocationSharingSpecifier
{
  if ([objc_opt_class() isLocationRestricted])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    primaryAccount = [(PUILocationServicesListController *)self primaryAccount];
    if ([primaryAccount aa_isPrimaryEmailVerified])
    {
      primaryAccount2 = [(PUILocationServicesListController *)self primaryAccount];
      v3 = [primaryAccount2 aa_needsToVerifyTerms] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (id)locationSharingSpecifiers
{
  v3 = PSIsInEDUMode();
  if (!v3)
  {
    _shouldEnableLocationSharingSpecifier = [(PUILocationServicesListController *)self _shouldEnableLocationSharingSpecifier];
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier setProperty:@"LOCATION_SHARING_GROUP" forKey:*MEMORY[0x277D3FFB8]];
    [array addObject:emptyGroupSpecifier];
    v8 = MEMORY[0x277D3FAD8];
    v9 = PUI_LocalizedStringForLocationServices(@"LOCATION_SHARING");
    v10 = [v8 preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:2 edit:0];

    [v10 setControllerLoadAction:sel__locationSharingSpecifierWasTapped_];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:_shouldEnableLocationSharingSpecifier];
    [v10 setProperty:v11 forKey:*MEMORY[0x277D3FF38]];

    [v10 setIdentifier:@"LOCATION_SHARING"];
    [array addObject:v10];
    if (!_shouldEnableLocationSharingSpecifier || ![(PUILocationServicesListController *)self isLocationSharingEnabled])
    {
      goto LABEL_16;
    }

    locationSharingDevice = [(PUILocationServicesListController *)self locationSharingDevice];
    if ([locationSharingDevice isThisDevice])
    {
      if ([getCLLocationManagerClass() locationServicesEnabled])
      {
        v13 = @"LOCATION_SHARING_FOOTER";
      }

      else
      {
        v13 = @"LOCATION_SHARING_DISABLED_FOOTER";
      }

      v14 = PUI_LocalizedStringForLocationServices(v13);
    }

    else
    {
      deviceName = [locationSharingDevice deviceName];

      if (!deviceName)
      {
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }

      v16 = MEMORY[0x277CCACA8];
      v17 = PUI_LocalizedStringForLocationServices(@"LOCATION_SHARING_FOOTER_OTHER_DEVICE");
      deviceName2 = [locationSharingDevice deviceName];
      v14 = [v16 stringWithFormat:v17, deviceName2];
    }

    [emptyGroupSpecifier setProperty:v14 forKey:*MEMORY[0x277D3FF88]];

    goto LABEL_15;
  }

  v4 = _PUILoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2657FE000, v4, OS_LOG_TYPE_DEFAULT, "Configuration does not want location sharing specifiers.", buf, 2u);
  }

  array = 0;
LABEL_17:

  return array;
}

- (void)updateLocationSharingSpecifiersWithReload:(BOOL)reload
{
  reloadCopy = reload;
  self->receivedAppListFromCoreLocation = 0;
  locationSharingAppList = self->locationSharingAppList;
  self->locationSharingAppList = 0;

  if (reloadCopy)
  {
    v6 = [(PUILocationServicesListController *)self indexOfSpecifierID:@"LOCATION_SHARING_GROUP"];
    locationSharingSpecifiers = [(PUILocationServicesListController *)self locationSharingSpecifiers];
    v8 = locationSharingSpecifiers;
    if (v6 != 0x7FFFFFFFFFFFFFFFLL && locationSharingSpecifiers)
    {
      v9 = [locationSharingSpecifiers count];
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = *MEMORY[0x277D3FFB8];
        do
        {
          v12 = [(PUILocationServicesListController *)self specifierAtIndex:v6 + v10];
          v13 = [v12 propertyForKey:v11];

          if (v13)
          {
            v14 = [v8 objectAtIndexedSubscript:v10];
            [v14 setProperty:v13 forKey:v11];
          }

          ++v10;
        }

        while (v9 != v10);
      }

      [(PUILocationServicesListController *)self updateSpecifiersInRange:v6 withSpecifiers:v9, v8];
    }
  }

  v15 = [(PUILocationServicesListController *)self specifierForID:@"/System/Library/PrivateFrameworks/FMF.framework"];
  if (v15)
  {
    v18 = v15;
    v16 = !+[PUILocationServicesListController isLocationRestricted]&& [(PUILocationServicesListController *)self isLocationSharingModificationAllowed];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    [v18 setProperty:v17 forKey:*MEMORY[0x277D3FF38]];

    v15 = v18;
    if (reloadCopy)
    {
      [(PUILocationServicesListController *)self reloadSpecifier:v18 animated:1];
      v15 = v18;
    }
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = MGGetBoolAnswer();
    v8 = PUI_LocalizedStringForLocationServices(@"ABOUT_LOCATION_AND_PRIVACY");
    v9 = MEMORY[0x277CCACA8];
    v10 = SFLocalizableWAPIStringKeyForKey();
    v11 = PUI_LocalizedStringForLocationServices(v10);
    v37 = v8;
    v12 = [v9 stringWithFormat:@"%@ %@", v11, v8];

    if ((v7 & 1) == 0 && ([MEMORY[0x277D3FB28] wifiEnabled] & 1) == 0)
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = SFLocalizableWAPIStringKeyForKey();
      v15 = PUI_LocalizedStringForLocationServices(v14);
      v16 = [v13 stringWithFormat:@"%@\n\n%@", v15, v12];

      v12 = v16;
    }

    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    isPaired = [mEMORY[0x277D2BCF8] isPaired];

    if (isPaired)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = PUI_LocalizedStringForLocationServices(@"DESCRIPTION_WATCH");
      v21 = [v19 stringWithFormat:@"%@\n\n%@", v12, v20];

      v12 = v21;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [emptyGroupSpecifier setProperty:v23 forKey:*MEMORY[0x277D3FF48]];

    [emptyGroupSpecifier setProperty:v12 forKey:*MEMORY[0x277D3FF70]];
    v43.location = [v12 rangeOfString:v8];
    v24 = NSStringFromRange(v43);
    [emptyGroupSpecifier setProperty:v24 forKey:*MEMORY[0x277D3FF58]];

    v25 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [emptyGroupSpecifier setProperty:v25 forKey:*MEMORY[0x277D3FF68]];

    [emptyGroupSpecifier setProperty:@"showLocationPrivacyPage" forKey:*MEMORY[0x277D3FF50]];
    [v5 addObject:emptyGroupSpecifier];
    v26 = MEMORY[0x277D3FAD8];
    v27 = PUI_LocalizedStringForLocationServices(@"LOCATION_SERVICES");
    v28 = [v26 preferenceSpecifierNamed:v27 target:self set:sel_setLocationServicesEnabled_specifier_ get:sel_isLocationServicesEnabled_ detail:0 cell:6 edit:0];

    [v5 addObject:v28];
    v29 = MEMORY[0x277D3FAD8];
    v30 = PUI_LocalizedStringForLocationServices(@"PRIVACY_ALERTS");
    v31 = [v29 preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v31 setIdentifier:@"LOCATION_ALERTS"];
    [v5 addObject:v31];
    lastObject = [v5 lastObject];
    [lastObject setProperty:@"LOCATION_SERVICES_MASTER" forKey:*MEMORY[0x277D3FFB8]];
    objc_initWeak(&location, self);
    if (self->receivedAppListFromCoreLocation)
    {
      [v5 addObjectsFromArray:self->locationSharingAppList];
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
      locationServicesAccessQueue = self->locationServicesAccessQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__PUILocationServicesListController_specifiers__block_invoke;
      block[3] = &unk_279BA18D8;
      block[4] = self;
      v39 = array;
      v35 = array;
      objc_copyWeak(&v40, &location);
      dispatch_async(locationServicesAccessQueue, block);
      objc_destroyWeak(&v40);
    }

    objc_storeStrong((&self->super.super.super.super.super.isa + v3), v5);
    [(PUILocationServicesListController *)self updateSpecifiersForImposedSettingsWithReload:0];
    [(PUILocationServicesListController *)self updateLocationSharing];
    [(PUILocationServicesListController *)self updateTribecaText];
    objc_destroyWeak(&location);

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

void __47__PUILocationServicesListController_specifiers__block_invoke(id *a1)
{
  v2 = [getCLLocationManagerClass() locationServicesEnabled];
  v3 = [a1[4] locationSharingSpecifiers];
  v4 = v3;
  if (!v2)
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = [a1[4] locationDetailSpecifiersForAppsAndBundles];
  if (v4)
  {
LABEL_5:
    [a1[5] addObjectsFromArray:v4];
  }

LABEL_6:
  if (v5)
  {
    [a1[5] addObjectsFromArray:v5];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__PUILocationServicesListController_specifiers__block_invoke_2;
  v6[3] = &unk_279BA1060;
  objc_copyWeak(&v8, a1 + 6);
  v7 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v8);
}

void __47__PUILocationServicesListController_specifiers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) copy];
    v3 = WeakRetained[199];
    WeakRetained[199] = v2;

    *(WeakRetained + 1584) = 1;
  }

  [WeakRetained reloadSpecifiers];
}

- (id)_iconForLocationUsage:(int)usage
{
  switch(usage)
  {
    case 2:
      v3 = MEMORY[0x277D755B8];
      v4 = MEMORY[0x277D755D0];
      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      goto LABEL_7;
    case 4:
      v3 = MEMORY[0x277D755B8];
      v6 = MEMORY[0x277D755D0];
      systemPurpleColor = [MEMORY[0x277D75348] systemPurpleColor];
      v8 = [v6 configurationWithHierarchicalColor:systemPurpleColor];
      v9 = @"location";
LABEL_8:
      v10 = [v3 systemImageNamed:v9 withConfiguration:v8];

      goto LABEL_10;
    case 3:
      v3 = MEMORY[0x277D755B8];
      v4 = MEMORY[0x277D755D0];
      secondaryLabelColor = [MEMORY[0x277D75348] systemPurpleColor];
LABEL_7:
      systemPurpleColor = secondaryLabelColor;
      v8 = [v4 configurationWithHierarchicalColor:secondaryLabelColor];
      v9 = @"location.fill";
      goto LABEL_8;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v8 = [(PUILocationServicesListController *)self indexForIndexPath:path];
  v9 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v8];
  identifier = [v9 identifier];
  v11 = [(PUILocationServicesListController *)self locationUsageForEntity:identifier];

  objc_opt_class();
  v18 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v12 = v18;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if ([v9 cellType] == 6)
  {
    v14 = [(PUILocationServicesListController *)self _iconForLocationUsage:v11];
    if (v14)
    {
      [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x277D40180]];
    }

    else
    {
      [v9 removePropertyForKey:*MEMORY[0x277D40180]];
    }

    [v13 refreshCellContentsWithSpecifier:v9];
  }

  else
  {
    [(PUILocationServicesListController *)self setUsage:v11 forCell:v13];
    if ([v18 isMemberOfClass:objc_opt_class()])
    {
      identifier2 = [v9 identifier];
      if ([identifier2 isEqualToString:@"SYSTEM_SERVICES"])
      {
      }

      else
      {
        identifier3 = [v9 identifier];
        v17 = [identifier3 isEqualToString:@"APP_CLIPS"];

        if ((v17 & 1) == 0)
        {
          [(PUILocationServicesListController *)self updateAuthLevelStringForSpecifier:v9 andCell:v13];
        }
      }
    }
  }
}

- (void)updateAuthLevelStringForSpecifier:(id)specifier andCell:(id)cell
{
  v32 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  identifier = [specifier identifier];
  v8 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:identifier];
  if (v8)
  {
    v9 = [getCLLocationManagerClass() entityAuthorizationForLocationDictionary:v8];
  }

  else
  {
    v10 = _PUILoggingFacility(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PUILocationServicesListController updateAuthLevelStringForSpecifier:andCell:];
    }

    v9 = 1;
  }

  v25 = 0;
  v11 = [getCLLocationManagerClass() getVisitHistoryAccess:&v25 + 4 forBundleIdentifier:identifier];
  v12 = [getCLLocationManagerClass() getLearnedRoutesAccess:&v25 forBundleIdentifier:identifier];
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    v14 = _PUILoggingFacility(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [PUILocationServicesListController updateAuthLevelStringForSpecifier:andCell:];
    }

    HIDWORD(v25) = 0;
  }

  if ((v13 & 1) == 0)
  {
    v15 = _PUILoggingFacility(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PUILocationServicesListController updateAuthLevelStringForSpecifier:andCell:];
    }

    LODWORD(v25) = 0;
  }

  v16 = [identifier isEqualToString:@"com.apple.Maps"];
  if (v16)
  {
    v17 = _PUILoggingFacility(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v27 = v9;
      v28 = 2048;
      v29 = v25;
      v30 = 2048;
      v31 = HIDWORD(v25);
      _os_log_impl(&dword_2657FE000, v17, OS_LOG_TYPE_DEFAULT, "[153673845] Setting auth level to %lu %lu %lu", buf, 0x20u);
    }
  }

  [(PUILocationServicesListController *)self setAuthLevel:v9 learnedRoutesAccess:v25 visitHistoryAccess:HIDWORD(v25) forCell:cellCopy];
  if ([identifier isEqualToString:@"com.apple.Maps"])
  {
    location = [cellCopy location];
    authLevelString = [location authLevelString];
    v20 = authLevelString;
    v21 = @"(nil)";
    if (authLevelString)
    {
      v21 = authLevelString;
    }

    v22 = v21;

    v24 = _PUILoggingFacility(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v22;
      _os_log_impl(&dword_2657FE000, v24, OS_LOG_TYPE_DEFAULT, "[153673845] Set auth level string: %@", buf, 0xCu);
    }
  }
}

- (void)startUpdatingFindMyPreferences
{
  objc_initWeak(&location, self);
  [(FindMyLocateSession *)self->_locationSharingSession startMonitoringPrefrenceChangesWithCompletionHandler:&__block_literal_global_514];
  locationSharingSession = self->_locationSharingSession;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__PUILocationServicesListController_startUpdatingFindMyPreferences__block_invoke_515;
  v7[3] = &unk_279BA1BD8;
  objc_copyWeak(&v8, &location);
  [(FindMyLocateSession *)locationSharingSession setMeDeviceUpdateCallback:v7];
  v4 = self->_locationSharingSession;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__PUILocationServicesListController_startUpdatingFindMyPreferences__block_invoke_517;
  v5[3] = &unk_279BA1C00;
  objc_copyWeak(&v6, &location);
  [(FindMyLocateSession *)v4 setShareMyLocationUpdateCallback:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __67__PUILocationServicesListController_startUpdatingFindMyPreferences__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _PUILoggingFacility(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67__PUILocationServicesListController_startUpdatingFindMyPreferences__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2657FE000, v4, OS_LOG_TYPE_DEFAULT, "findmylocate: startMonitoringPrefrenceChanges completed successfully", v5, 2u);
  }
}

void __67__PUILocationServicesListController_startUpdatingFindMyPreferences__block_invoke_515(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _PUILoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2657FE000, v4, OS_LOG_TYPE_DEFAULT, "findmylocate: didUpdateMeDevice: %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didChangeActiveLocationSharingDevice:v3];
}

void __67__PUILocationServicesListController_startUpdatingFindMyPreferences__block_invoke_517(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _PUILoggingFacility(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_2657FE000, v4, OS_LOG_TYPE_DEFAULT, "findmylocate: didUpdaLocationSharingStatus. Sharing?: %d", v6, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didUpdateHidingStatus:a2 ^ 1u];
}

- (void)updateLocationSharing
{
  objc_initWeak(&location, self);
  locationSharingSession = self->_locationSharingSession;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__PUILocationServicesListController_updateLocationSharing__block_invoke;
  v7[3] = &unk_279BA1C28;
  objc_copyWeak(&v8, &location);
  [(FindMyLocateSession *)locationSharingSession isMyLocationEnabledWithCompletionHandler:v7];
  v4 = self->_locationSharingSession;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__PUILocationServicesListController_updateLocationSharing__block_invoke_520;
  v5[3] = &unk_279BA1C50;
  objc_copyWeak(&v6, &location);
  [(FindMyLocateSession *)v4 getActiveLocationSharingDeviceWithCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __58__PUILocationServicesListController_updateLocationSharing__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = _PUILoggingFacility(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "findmylocate: locationSharingEnabled error %@", &v9, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didUpdateHidingStatus:a2 ^ 1u];
}

void __58__PUILocationServicesListController_updateLocationSharing__block_invoke_520(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _PUILoggingFacility(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "findmylocate: locationSharingDevice error %@", &v10, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didChangeActiveLocationSharingDevice:v5];
}

- (void)mainThreadConnectionError:(id)error
{
  locationSharingSession = self->_locationSharingSession;
  self->_locationSharingSession = 0;

  [(PUILocationServicesListController *)self mainThreadDidChangeActiveLocationSharingDevice:0];
}

- (void)mainThreadDidChangeActiveLocationSharingDevice:(id)device
{
  deviceCopy = device;
  if (self->_locationSharingDevice != deviceCopy)
  {
    v6 = deviceCopy;
    objc_storeStrong(&self->_locationSharingDevice, device);
    [(PUILocationServicesListController *)self updateLocationSharingSpecifiersWithReload:1];
    deviceCopy = v6;
  }
}

- (void)mainThreadDidUpdateHidingStatus:(BOOL)status
{
  statusCopy = status;
  locationSharingEnabled = self->_locationSharingEnabled;
  if (!locationSharingEnabled || [(NSNumber *)locationSharingEnabled BOOLValue]== status)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:!statusCopy];
    v7 = self->_locationSharingEnabled;
    self->_locationSharingEnabled = v6;

    [(PUILocationServicesListController *)self updateLocationSharingSpecifiersWithReload:1];
  }
}

- (void)didChangeActiveLocationSharingDevice:(id)device
{
  deviceCopy = device;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__PUILocationServicesListController_didChangeActiveLocationSharingDevice___block_invoke;
  v6[3] = &unk_279BA10B0;
  v6[4] = self;
  v7 = deviceCopy;
  v5 = deviceCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)didUpdateHidingStatus:(BOOL)status
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__PUILocationServicesListController_didUpdateHidingStatus___block_invoke;
  v3[3] = &unk_279BA1850;
  v3[4] = self;
  statusCopy = status;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)updateTribecaText
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isInternalInstall = [currentDevice sf_isInternalInstall];

  if (sf_isInternalInstall)
  {
    mEMORY[0x277D08F78] = [MEMORY[0x277D08F78] sharedInstance];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__PUILocationServicesListController_updateTribecaText__block_invoke;
    v6[3] = &unk_279BA1C78;
    v6[4] = self;
    [mEMORY[0x277D08F78] fmipStateWithCompletion:v6];
  }
}

void __54__PUILocationServicesListController_updateTribecaText__block_invoke(uint64_t a1, unint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    if (a2 >= 3)
    {
      v7 = _PUILoggingFacility(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v13 = "[PUILocationServicesListController updateTribecaText]_block_invoke";
        _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "%s: FMIP state is off or unknown.", buf, 0xCu);
      }

      v6 = PUITribecaSupportedText(v8);
    }

    else
    {
      v6 = 0;
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__PUILocationServicesListController_updateTribecaText__block_invoke_523;
    v10[3] = &unk_279BA10B0;
    v10[4] = *(a1 + 32);
    v11 = v6;
    v9 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __54__PUILocationServicesListController_updateTribecaText__block_invoke_523(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) tribecaSpecifier];

  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = [v4 tribecaSpecifier];
    [v4 removeSpecifier:v5 animated:1];
  }

  v6 = *(a1 + 40);
  v7 = _PUILoggingFacility(v3);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[PUILocationServicesListController updateTribecaText]_block_invoke";
      _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "%s: showing tribeca text", &v13, 0xCu);
    }

    v8 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"TRIBECA_GROUP"];
    [v8 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x277D3FF88]];
    [*(a1 + 32) setTribecaSpecifier:v8];
    v9 = *(a1 + 32);
    v10 = [v9 tribecaSpecifier];
    v11 = [*(a1 + 32) specifiers];
    v12 = [v11 lastObject];
    [v9 insertSpecifier:v10 afterSpecifier:v12];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __54__PUILocationServicesListController_updateTribecaText__block_invoke_523_cold_1();
  }
}

- (void)showCoreRoutineSettings:(id)settings
{
  v26 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"FrequentLocationsDisableAuthentication", @"com.apple.routined", &keyExistsAndHasValidFormat);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice sf_isInternalInstall])
  {
    v7 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {

    goto LABEL_8;
  }

  if (!AppBooleanValue)
  {
LABEL_8:
    v8 = objc_alloc_init(MEMORY[0x277CD4790]);
    v22 = 0;
    v9 = [v8 canEvaluatePolicy:2 error:&v22];
    v10 = v22;
    v11 = v10;
    if (v9)
    {
      v12 = PUI_LocalizedStringForLocationServices(@"VIEW_CORE_ROUTINE");
      if (_os_feature_enabled_impl())
      {
        v13 = PUI_LocalizedStringForLocationServices(@"VIEW_CORE_ROUTINE_LOCATION_PLUS");

        v12 = v13;
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __61__PUILocationServicesListController_showCoreRoutineSettings___block_invoke_543;
      v19[3] = &unk_279BA1CC8;
      v19[4] = self;
      v20 = settingsCopy;
      [v8 evaluatePolicy:2 localizedReason:v12 reply:v19];

LABEL_21:
      goto LABEL_22;
    }

    domain = [v10 domain];
    if ([domain isEqualToString:*MEMORY[0x277CD4770]])
    {
      code = [v11 code];

      if (code == -5)
      {
        v17 = _PUILoggingFacility(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2657FE000, v17, OS_LOG_TYPE_DEFAULT, "Cannot evaluate authentication policy for significant locations, no passcode set, allowing access.", buf, 2u);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __61__PUILocationServicesListController_showCoreRoutineSettings___block_invoke;
        block[3] = &unk_279BA0B28;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
        goto LABEL_21;
      }
    }

    else
    {
    }

    v18 = _PUILoggingFacility(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v11;
      _os_log_impl(&dword_2657FE000, v18, OS_LOG_TYPE_DEFAULT, "Cannot evaluate authentication policy for significant locations, error %@, returning.", buf, 0xCu);
    }

    goto LABEL_21;
  }

LABEL_22:
}

void __61__PUILocationServicesListController_showCoreRoutineSettings___block_invoke_543(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__PUILocationServicesListController_showCoreRoutineSettings___block_invoke_2;
  v8[3] = &unk_279BA1CA0;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v11 = a2;
  v9 = v6;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)_handleAuthenticationForSender:(id)sender success:(BOOL)success error:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (errorCopy || !success)
  {
    v9 = _PUILoggingFacility(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (errorCopy)
      {
        v10 = [errorCopy description];
      }

      else
      {
        v10 = &stru_28771E540;
      }

      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "Autentication policy did not evaluate successfully, returning, %@", &v11, 0xCu);
      if (errorCopy)
      {
      }
    }
  }

  else
  {
    [(PUILocationServicesListController *)self _pushCoreRoutineViewController];
  }
}

- (void)_pushCoreRoutineViewController
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  v10 = [v3 objectAtIndex:0];

  v4 = [v10 stringByAppendingPathComponent:@"PreferenceBundles/CoreRoutineSettings.bundle"];
  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:v4];
  load = [v5 load];
  if (v5)
  {
    v7 = load == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = [MEMORY[0x277D75AC8] storyboardWithName:@"Main" bundle:v5];
    instantiateInitialViewController = [v8 instantiateInitialViewController];
    if (instantiateInitialViewController)
    {
      [(PUILocationServicesListController *)self showController:instantiateInitialViewController animate:1];
    }
  }
}

void __56__PUILocationServicesListController_updateLocationUsage__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)updateAuthLevelStringForSpecifier:andCell:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAuthLevelStringForSpecifier:andCell:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAuthLevelStringForSpecifier:andCell:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end