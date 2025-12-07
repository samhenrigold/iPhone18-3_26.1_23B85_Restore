@interface NCGuidesManager
+ (NCGuidesManager)sharedManager;
- (BOOL)guideEnabled:(id)enabled;
- (BOOL)guideWithIdentifierEnabled:(id)enabled;
- (NCGuidesManager)init;
- (NSArray)allEnabledWaypoints;
- (NSArray)allEnabledWaypointsLimitedByDistance;
- (NSArray)allProviderAndMapsDatabaseWaypoints;
- (NSArray)allWaypoints;
- (NSArray)nonSystemEnabledWaypointsLimitedByDistance;
- (NSArray)systemWaypoints;
- (NSArray)systemWaypointsLimitedByDistance;
- (id)_allSystemWaypoints;
- (id)_currentlyDisabledGuides;
- (id)_enabledCompassWaypointsRestrictedTo:(double)to ofLocation:(id)location maxCount:(unint64_t)count;
- (id)_enabledWaypointsForGuideType:(int64_t)type subType:(id)subType restrictedTo:(double)to ofLocation:(id)location maxCount:(unint64_t)count;
- (id)_getUpdatedDatabaseWaypoints:(id)waypoints;
- (id)_systemWaypointsRestrictedTo:(double)to ofLocation:(id)location;
- (id)_waypointWithUUID:(id)d;
- (id)fetchTargetedWaypoint;
- (id)userGuides;
- (int64_t)numDisabledGuides;
- (int64_t)numEnabledGuideWaypoints;
- (int64_t)numEnabledPOIs;
- (int64_t)numGuideWaypoints;
- (int64_t)numTotalPOIs;
- (unint64_t)maxAllowedWaypoints;
- (unint64_t)maxPriorityCompassWaypoints;
- (void)_addEnabledWaypointsForGuide:(id)guide;
- (void)_fetchAllPlaceItemsRestrictingMapGuidesTo:(double)to ofLocation:(id)location handler:(id)handler;
- (void)_fetchAllWaypointsRestrictingMapGuidesTo:(double)to ofLocation:(id)location handler:(id)handler;
- (void)_fetchEnabledWaypointsForUserGuidesRestrictedToRadius:(double)radius around:(id)around maximumCount:(unint64_t)count handler:(id)handler;
- (void)_fetchEnabledWaypointsRestrictingMapGuidesTo:(double)to ofLocation:(id)location maxCount:(unint64_t)count handler:(id)handler;
- (void)_handleFirstUnlock;
- (void)_handleWaypointListChanged:(id)changed;
- (void)_loadDisabledGuidesFromDefaults;
- (void)_loadGuides;
- (void)_refreshAllWaypoints;
- (void)_refreshGuides;
- (void)_refreshNonDistanceLimitedWaypoints;
- (void)_removeDisabledWaypointsForGuide:(id)guide;
- (void)_saveDisabledGuidesToDefaults;
- (void)_updateUserGuidesUsingCollections:(id)collections;
- (void)enableWaypoints:(BOOL)waypoints forGuide:(id)guide;
- (void)loadGuides;
- (void)refreshWaypointsWithCenterLocation:(id)location maxDiameterInMeters:(double)meters completion:(id)completion;
- (void)registerGuideProviders:(id)providers;
- (void)reloadWaypoints;
- (void)setGlobalEnabledState:(BOOL)state forGuideType:(int64_t)type;
- (void)storeControllerWithDataChanged:(id)changed;
- (void)storeControllerWithDidLoad:(id)load;
- (void)storeControllerWithFailedToLoad:(id)load;
@end

@implementation NCGuidesManager

+ (NCGuidesManager)sharedManager
{
  if (qword_27E1C53D0 != -1)
  {
    sub_23BD679B8();
  }

  v3 = qword_27E1C53C8;

  return v3;
}

- (NCGuidesManager)init
{
  v53 = *MEMORY[0x277D85DE8];
  v48.receiver = self;
  v48.super_class = NCGuidesManager;
  v4 = [(NCGuidesManager *)&v48 init];
  if (v4)
  {
    v5 = objc_msgSend_sharedInstance(NCGuidesEnabledState, v2, v3);
    guidesEnabledState = v4->_guidesEnabledState;
    v4->_guidesEnabledState = v5;

    v7 = dispatch_queue_create("com.apple.nanocompass.guidesmanager.disabledguides", 0);
    disabledGuidesQueue = v4->_disabledGuidesQueue;
    v4->_disabledGuidesQueue = v7;

    v9 = v4->_disabledGuidesQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD5C24C;
    block[3] = &unk_278B93FB0;
    v10 = v4;
    v47 = v10;
    dispatch_sync(v9, block);
    v13 = sub_23BD68730(v11) == 3 || sub_23BD68704(v12) == 1;
    v10->_hasBeenUnlockedSinceBoot = v13;
    v14 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"has NOT";
      if (v10->_hasBeenUnlockedSinceBoot)
      {
        v15 = @"has";
      }

      *buf = 136315394;
      v50 = "[NCGuidesManager init]";
      v51 = 2112;
      v52 = v15;
      _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "%s: device %@ been unlocked", buf, 0x16u);
    }

    if (!v10->_hasBeenUnlockedSinceBoot)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v10, sub_23BD5C254, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v17 = NanoCompassLocalizedString(@"COMPASS_WAYPOINTS_GUIDE_NAME");
    v18 = [NCCompassWaypointGuide alloc];
    v20 = objc_msgSend_initWithName_(v18, v19, v17);
    compassGuide = v10->_compassGuide;
    v10->_compassGuide = v20;

    v22 = objc_opt_new();
    userGuides = v10->_userGuides;
    v10->_userGuides = v22;

    v24 = objc_opt_new();
    allEnabledWaypointsLimitedByDistance = v10->_allEnabledWaypointsLimitedByDistance;
    v10->_allEnabledWaypointsLimitedByDistance = v24;

    v26 = objc_opt_new();
    nonSystemEnabledWaypointsLimitedByDistance = v10->_nonSystemEnabledWaypointsLimitedByDistance;
    v10->_nonSystemEnabledWaypointsLimitedByDistance = v26;

    v28 = objc_opt_new();
    systemWaypoints = v10->_systemWaypoints;
    v10->_systemWaypoints = v28;

    v30 = objc_opt_new();
    systemWaypointsLimitedByDistance = v10->_systemWaypointsLimitedByDistance;
    v10->_systemWaypointsLimitedByDistance = v30;

    v10->_areWaypointsLimited = 0;
    v32 = objc_opt_new();
    allEnabledWaypoints = v10->_allEnabledWaypoints;
    v10->_allEnabledWaypoints = v32;

    v34 = objc_opt_new();
    allWaypoints = v10->_allWaypoints;
    v10->_allWaypoints = v34;

    v36 = objc_opt_new();
    allProviderAndMapsDatabaseWaypoints = v10->_allProviderAndMapsDatabaseWaypoints;
    v10->_allProviderAndMapsDatabaseWaypoints = v36;

    objc_initWeak(buf, v10);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_23BD5C2A0;
    v44[3] = &unk_278B94000;
    objc_copyWeak(&v45, buf);
    dispatch_async(MEMORY[0x277D85CD0], v44);
    v38 = dispatch_group_create();
    storeGroup = v10->_storeGroup;
    v10->_storeGroup = v38;

    dispatch_group_enter(v10->_storeGroup);
    v40 = dispatch_get_global_queue(2, 0);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_23BD5C2E4;
    v42[3] = &unk_278B94000;
    objc_copyWeak(&v43, buf);
    dispatch_async(v40, v42);

    objc_destroyWeak(&v43);
    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);
  }

  return v4;
}

- (void)registerGuideProviders:(id)providers
{
  v20 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_setGuideProviders_(selfCopy, v6, providersCopy);
  objc_sync_exit(selfCopy);

  v7 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[NCGuidesManager registerGuideProviders:]";
    v18 = 2048;
    v19 = objc_msgSend_count(providersCopy, v8, v9);
    _os_log_impl(&dword_23BD26000, v7, OS_LOG_TYPE_DEFAULT, "%s: Registered %lu app-specific guide providers.", &v16, 0x16u);
  }

  v12 = objc_msgSend_store(selfCopy, v10, v11);

  if (v12)
  {
    v13 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[NCGuidesManager registerGuideProviders:]";
      _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "%s: Store is already available. Triggering refresh.", &v16, 0xCu);
    }

    objc_msgSend__refreshGuides(selfCopy, v14, v15);
  }
}

- (unint64_t)maxAllowedWaypoints
{
  if (qword_27E1C53E0 != -1)
  {
    sub_23BD679CC();
  }

  return qword_27E1C53D8;
}

- (unint64_t)maxPriorityCompassWaypoints
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD5C7A4;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  if (qword_27E1C53F0 != -1)
  {
    dispatch_once(&qword_27E1C53F0, block);
  }

  return qword_27E1C53E8;
}

- (id)userGuides
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_userGuides;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)allEnabledWaypoints
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_allEnabledWaypoints;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)allEnabledWaypointsLimitedByDistance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_allEnabledWaypointsLimitedByDistance;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)nonSystemEnabledWaypointsLimitedByDistance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_nonSystemEnabledWaypointsLimitedByDistance;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)allWaypoints
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_allWaypoints;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)allProviderAndMapsDatabaseWaypoints
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_allProviderAndMapsDatabaseWaypoints;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)systemWaypoints
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_systemWaypoints;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)systemWaypointsLimitedByDistance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_systemWaypointsLimitedByDistance;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)fetchTargetedWaypoint
{
  v4 = objc_msgSend_sharedManager(NCTargetedWaypointManager, a2, v2);
  v7 = objc_msgSend_fetchTargetedWaypointUUID(v4, v5, v6);
  v10 = objc_msgSend_UUIDString(v7, v8, v9);

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v13 = objc_msgSend_initWithUUIDString_(v11, v12, v10);
    v15 = objc_msgSend__waypointWithUUID_(self, v14, v13);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_waypointWithUUID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_allWaypoints(self, v5, v6);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23BD5CCF8;
  v14[3] = &unk_278B949B0;
  v8 = dCopy;
  v15 = v8;
  v10 = objc_msgSend_indexOfObjectPassingTest_(v7, v9, v14);
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(v7, v11, v10);
  }

  return v12;
}

- (id)_enabledWaypointsForGuideType:(int64_t)type subType:(id)subType restrictedTo:(double)to ofLocation:(id)location maxCount:(unint64_t)count
{
  v92 = *MEMORY[0x277D85DE8];
  subTypeCopy = subType;
  locationCopy = location;
  v77 = objc_opt_new();
  v14 = objc_opt_new();
  v17 = v14;
  if (count)
  {
    countCopy = count;
    v79 = objc_msgSend__currentlyDisabledGuides(self, v15, v16);
    v20 = objc_msgSend_loadedProviderGuidesByType(self, v18, v19);
    v22 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v21, type);
    v24 = objc_msgSend_objectForKeyedSubscript_(v20, v23, v22);

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v25 = v24;
    v78 = v25;
    v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v86, v91, 16);
    if (v81)
    {
      v80 = *v87;
      while (2)
      {
        for (i = 0; i != v81; ++i)
        {
          if (*v87 != v80)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v86 + 1) + 8 * i);
          if (subTypeCopy)
          {
            NSClassFromString(&cfstr_Ncmapsdatabase.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v31 = objc_msgSend_valueForKey_(v30, v27, @"databaseGuideType");
            isEqualToNumber = objc_msgSend_isEqualToNumber_(v31, v32, subTypeCopy);

            if (!isEqualToNumber)
            {
              continue;
            }
          }

          guidesEnabledState = self->_guidesEnabledState;
          v35 = objc_msgSend_type(v30, v27, v28);
          isEnabledForGuideType = objc_msgSend_isEnabledForGuideType_(guidesEnabledState, v36, v35);
          v40 = objc_msgSend_uuid(v30, v38, v39);
          objc_msgSend_UUIDString(v40, v41, v42);
          v43 = v17;
          v45 = v44 = subTypeCopy;
          v47 = objc_msgSend_containsObject_(v79, v46, v45);

          subTypeCopy = v44;
          v17 = v43;

          v25 = v78;
          if (isEnabledForGuideType)
          {
            if ((v47 & 1) == 0)
            {
              v48 = objc_msgSend_fetchWaypoints(v30, v27, v28);
              if (!v48)
              {
                v53 = v78;
                goto LABEL_30;
              }

              v51 = v48;
              objc_msgSend_addObjectsFromArray_(v77, v49, v48);
            }
          }
        }

        v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v86, v91, 16);
        if (v81)
        {
          continue;
        }

        break;
      }
    }

    v53 = objc_msgSend__getUpdatedDatabaseWaypoints_(self, v52, v77);
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v82, v90, 16);
    if (v55)
    {
      v58 = v55;
      v59 = *v83;
      do
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v83 != v59)
          {
            objc_enumerationMutation(v53);
          }

          v61 = *(*(&v82 + 1) + 8 * j);
          v62 = objc_msgSend_location(v61, v56, v57);
          objc_msgSend_distanceFromLocation_(v62, v63, locationCopy);
          v65 = v64;

          if (v65 < to)
          {
            v66 = [NCWaypointWithDistance alloc];
            v68 = objc_msgSend_initWithWaypoint_distance_(v66, v67, v61, v65);
            objc_msgSend_addObject_(v17, v69, v68);
          }
        }

        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v56, &v82, v90, 16);
      }

      while (v58);
    }

    objc_msgSend_sortUsingSelector_(v17, v56, sel_compare_);
    if (objc_msgSend_count(v17, v70, v71) > countCopy)
    {
      v72 = objc_msgSend_count(v17, v49, v50);
      objc_msgSend_removeObjectsInRange_(v17, v73, countCopy, v72 - countCopy);
    }

    v25 = v78;
LABEL_30:
    v74 = objc_msgSend_copy(v17, v49, v50);
  }

  else
  {
    v74 = objc_msgSend_copy(v14, v15, v16);
  }

  return v74;
}

- (void)refreshWaypointsWithCenterLocation:(id)location maxDiameterInMeters:(double)meters completion:(id)completion
{
  v75 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  completionCopy = completion;
  v10 = NCLogForCategory(9uLL);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (locationCopy)
  {
    if (v11)
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "[NCGuidesManager refreshWaypointsWithCenterLocation:maxDiameterInMeters:completion:]";
      _os_log_impl(&dword_23BD26000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Refreshing.", &buf, 0xCu);
    }

    v13 = objc_msgSend__systemWaypointsRestrictedTo_ofLocation_(self, v12, locationCopy, meters);
    v16 = objc_msgSend_count(v13, v14, v15);
    if (v16 >= objc_msgSend_maxAllowedWaypoints(self, v17, v18) || (v21 = objc_msgSend_maxAllowedWaypoints(self, v19, v20), v22 = v21 - v16, v21 == v16))
    {
      dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
      self->_areWaypointsLimited = 1;
      v24 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v23, v13);
      allEnabledWaypointsLimitedByDistance = self->_allEnabledWaypointsLimitedByDistance;
      self->_allEnabledWaypointsLimitedByDistance = v24;

      v26 = objc_alloc_init(MEMORY[0x277CBEA60]);
      nonSystemEnabledWaypointsLimitedByDistance = self->_nonSystemEnabledWaypointsLimitedByDistance;
      self->_nonSystemEnabledWaypointsLimitedByDistance = v26;

      v29 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v28, v13);
      systemWaypointsLimitedByDistance = self->_systemWaypointsLimitedByDistance;
      self->_systemWaypointsLimitedByDistance = v29;

      completionCopy[2](completionCopy);
    }

    else
    {
      v31 = meters * 0.5;
      v32 = dispatch_group_create();
      v34 = objc_msgSend__enabledCompassWaypointsRestrictedTo_ofLocation_maxCount_(self, v33, locationCopy, v22, v31);
      v36 = objc_msgSend__enabledWaypointsForGuideType_subType_restrictedTo_ofLocation_maxCount_(self, v35, 3, &unk_284E8B040, locationCopy, v22, v31);
      v53 = objc_msgSend__enabledWaypointsForGuideType_subType_restrictedTo_ofLocation_maxCount_(self, v37, 3, &unk_284E8B058, locationCopy, v22, v31);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v71 = 0x3032000000;
      v72 = sub_23BD5D640;
      v73 = sub_23BD5D650;
      v74 = 0;
      dispatch_group_enter(v32);
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = sub_23BD5D658;
      v67[3] = &unk_278B94AF8;
      p_buf = &buf;
      group = v32;
      v68 = group;
      objc_msgSend__fetchEnabledWaypointsForUserGuidesRestrictedToRadius_around_maximumCount_handler_(self, v38, locationCopy, v22, v67, v31);
      v40 = objc_msgSend__enabledWaypointsForGuideType_subType_restrictedTo_ofLocation_maxCount_(self, v39, 2, 0, locationCopy, v22, v31);
      v52 = v13;
      v41 = v36;
      v43 = objc_msgSend__enabledWaypointsForGuideType_subType_restrictedTo_ofLocation_maxCount_(self, v42, 3, &unk_284E8B070, locationCopy, v22, v31);
      queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23BD5D6B8;
      block[3] = &unk_278B94B48;
      v56 = v41;
      v57 = v53;
      v58 = v40;
      v59 = v43;
      v44 = v40;
      v60 = v34;
      selfCopy = self;
      v64 = &buf;
      v65 = v22;
      v62 = v52;
      v66 = v16;
      v63 = completionCopy;
      v45 = v34;
      v46 = v43;
      v47 = v44;
      v13 = v52;
      v48 = v47;
      v49 = v53;
      v50 = v41;
      dispatch_group_notify(group, queue, block);

      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    if (v11)
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "[NCGuidesManager refreshWaypointsWithCenterLocation:maxDiameterInMeters:completion:]";
      _os_log_impl(&dword_23BD26000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Unable to calculate waypoints within range as location is nil", &buf, 0xCu);
    }

    completionCopy[2](completionCopy);
  }
}

- (id)_getUpdatedDatabaseWaypoints:(id)waypoints
{
  v39 = *MEMORY[0x277D85DE8];
  waypointsCopy = waypoints;
  v6 = objc_msgSend_sharedAppManager(NCWaypointManager, v4, v5);
  v9 = objc_msgSend_fetchDatabaseWaypointsWithElevation(v6, v7, v8);

  v10 = convertWaypointArrayToDict(waypointsCopy);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = v9;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v34, v38, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v35;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        v20 = objc_msgSend_uuid(v19, v14, v15, v34);
        v22 = objc_msgSend_objectForKey_(v10, v21, v20);

        if (v22 && (objc_msgSend_isAltitudePopulated(v22, v23, v24) & 1) == 0)
        {
          objc_msgSend_altitude(v19, v25, v26);
          objc_msgSend_setAltitude_(v22, v27, v28);
          objc_msgSend_setAltitudePopulated_(v22, v29, 1);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v34, v38, 16);
    }

    while (v16);
  }

  v32 = objc_msgSend_allValues(v10, v30, v31);

  return v32;
}

- (void)_fetchEnabledWaypointsForUserGuidesRestrictedToRadius:(double)radius around:(id)around maximumCount:(unint64_t)count handler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  aroundCopy = around;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (aroundCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_loadedGuides && selfCopy->_store)
    {
      objc_sync_exit(selfCopy);

      v14 = NCLogForCategory(9uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v27 = "[NCGuidesManager _fetchEnabledWaypointsForUserGuidesRestrictedToRadius:around:maximumCount:handler:]";
        _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Fetching waypoints for user guides only.", buf, 0xCu);
      }

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_23BD5E070;
      v21[3] = &unk_278B94B70;
      v23 = v12;
      v21[4] = selfCopy;
      v22 = aroundCopy;
      radiusCopy = radius;
      countCopy = count;
      v15 = MEMORY[0x23EEBBDF0](v21);
      v16 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23BD5E7B4;
      block[3] = &unk_278B94718;
      block[4] = selfCopy;
      v20 = v15;
      v17 = v15;
      dispatch_async(v16, block);
    }

    else
    {
      v18 = NCLogForCategory(9uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v27 = "[NCGuidesManager _fetchEnabledWaypointsForUserGuidesRestrictedToRadius:around:maximumCount:handler:]";
        _os_log_impl(&dword_23BD26000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: returning empty list, guides or store are not loaded", buf, 0xCu);
      }

      v12[2](v12, MEMORY[0x277CBEBF8]);
      objc_sync_exit(selfCopy);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8]);
  }
}

- (void)_addEnabledWaypointsForGuide:(id)guide
{
  guideCopy = guide;
  v6 = objc_msgSend_mutableCopy(self->_allEnabledWaypoints, v4, v5);
  v9 = objc_msgSend_fetchWaypoints(guideCopy, v7, v8);
  objc_msgSend_addObjectsFromArray_(v6, v10, v9);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v12, v6);
  allEnabledWaypoints = self->_allEnabledWaypoints;
  self->_allEnabledWaypoints = v13;

  objc_sync_exit(selfCopy);
  objc_msgSend__postNotification_(selfCopy, v15, @"GuideEnabledListChangedNotification");
}

- (void)_removeDisabledWaypointsForGuide:(id)guide
{
  guideCopy = guide;
  v6 = objc_msgSend_mutableCopy(self->_allEnabledWaypoints, v4, v5);
  v9 = objc_msgSend_fetchWaypoints(guideCopy, v7, v8);
  objc_msgSend_removeObjectsInArray_(v6, v10, v9);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v12, v6);
  allEnabledWaypoints = self->_allEnabledWaypoints;
  self->_allEnabledWaypoints = v13;

  objc_sync_exit(selfCopy);
  objc_msgSend__postNotification_(selfCopy, v15, @"GuideEnabledListChangedNotification");
}

- (void)_refreshAllWaypoints
{
  v141 = *MEMORY[0x277D85DE8];
  v121 = objc_msgSend__currentlyDisabledGuides(self, a2, v2);
  v118 = objc_opt_new();
  objc_msgSend_userGuides(self, v4, v5);
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  obj = v131 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v130, v140, 16);
  if (v9)
  {
    v10 = *v131;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v131 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v130 + 1) + 8 * i);
        guidesEnabledState = self->_guidesEnabledState;
        v14 = objc_msgSend_type(v12, v7, v8);
        isEnabledForGuideType = objc_msgSend_isEnabledForGuideType_(guidesEnabledState, v15, v14);
        v19 = objc_msgSend_uuid(v12, v17, v18);
        v22 = objc_msgSend_UUIDString(v19, v20, v21);
        LOBYTE(guidesEnabledState) = objc_msgSend_containsObject_(v121, v23, v22);

        if (!(guidesEnabledState & 1 | ((isEnabledForGuideType & 1) == 0)))
        {
          v24 = objc_msgSend_fetchWaypoints(v12, v7, v8);
          objc_msgSend_addObjectsFromArray_(v118, v25, v24);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v130, v140, 16);
    }

    while (v9);
  }

  v120 = objc_opt_new();
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v28 = objc_msgSend_loadedProviderGuidesByType(self, v26, v27);
  v114 = objc_msgSend_allValues(v28, v29, v30);

  v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v31, &v126, v139, 16);
  if (v116)
  {
    v115 = *v127;
    do
    {
      v32 = 0;
      do
      {
        if (*v127 != v115)
        {
          v33 = v32;
          objc_enumerationMutation(v114);
          v32 = v33;
        }

        v117 = v32;
        v34 = *(*(&v126 + 1) + 8 * v32);
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v35 = v34;
        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v122, v138, 16);
        if (v39)
        {
          v40 = *v123;
          do
          {
            for (j = 0; j != v39; ++j)
            {
              if (*v123 != v40)
              {
                objc_enumerationMutation(v35);
              }

              v42 = *(*(&v122 + 1) + 8 * j);
              v43 = self->_guidesEnabledState;
              v44 = objc_msgSend_type(v42, v37, v38, v114);
              v46 = objc_msgSend_isEnabledForGuideType_(v43, v45, v44);
              v49 = objc_msgSend_uuid(v42, v47, v48);
              v52 = objc_msgSend_UUIDString(v49, v50, v51);
              v54 = objc_msgSend_containsObject_(v121, v53, v52);

              if (!(v54 & 1 | ((v46 & 1) == 0)))
              {
                v55 = objc_msgSend_fetchWaypoints(v42, v37, v38);
                objc_msgSend_addObjectsFromArray_(v120, v56, v55);
              }
            }

            v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v122, v138, 16);
          }

          while (v39);
        }

        v32 = v117 + 1;
      }

      while (v117 + 1 != v116);
      v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v57, &v126, v139, 16);
    }

    while (v116);
  }

  v58 = objc_opt_new();
  objc_msgSend_addObjectsFromArray_(v58, v59, v118);
  objc_msgSend_addObjectsFromArray_(v58, v60, v120);
  v61 = objc_opt_new();
  v62 = self->_guidesEnabledState;
  v65 = objc_msgSend_type(self->_compassGuide, v63, v64);
  v67 = objc_msgSend_isEnabledForGuideType_(v62, v66, v65);
  v70 = objc_msgSend_uuid(self->_compassGuide, v68, v69);
  v73 = objc_msgSend_UUIDString(v70, v71, v72);
  v75 = objc_msgSend_containsObject_(v121, v74, v73);

  if (!(v75 & 1 | ((v67 & 1) == 0)))
  {
    v78 = objc_msgSend_enabledWaypoints(self->_compassGuide, v76, v77);
    objc_msgSend_addObjectsFromArray_(v61, v79, v78);
  }

  objc_msgSend_addObjectsFromArray_(v61, v76, v118, v114);
  objc_msgSend_addObjectsFromArray_(v61, v80, v120);
  v81 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    v84 = objc_msgSend_count(v61, v82, v83);
    *buf = 136446466;
    v135 = "[NCGuidesManager _refreshAllWaypoints]";
    v136 = 2048;
    v137 = v84;
    _os_log_impl(&dword_23BD26000, v81, OS_LOG_TYPE_DEFAULT, "%{public}s: setting allEnabledWaypoints with %lu items", buf, 0x16u);
  }

  v85 = MEMORY[0x277CBEB18];
  v88 = objc_msgSend_fetchWaypoints(self->_compassGuide, v86, v87);
  v90 = objc_msgSend_arrayWithArray_(v85, v89, v88);

  objc_msgSend_addObjectsFromArray_(v90, v91, v118);
  objc_msgSend_addObjectsFromArray_(v90, v92, v120);
  v95 = objc_msgSend__allSystemWaypoints(self, v93, v94);
  objc_msgSend_addObjectsFromArray_(v90, v96, v95);
  v97 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
  {
    v100 = objc_msgSend_count(v90, v98, v99);
    *buf = 136446466;
    v135 = "[NCGuidesManager _refreshAllWaypoints]";
    v136 = 2048;
    v137 = v100;
    _os_log_impl(&dword_23BD26000, v97, OS_LOG_TYPE_DEFAULT, "%{public}s: setting allWaypoints with %lu items", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v103 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v102, v61);
  allEnabledWaypoints = selfCopy->_allEnabledWaypoints;
  selfCopy->_allEnabledWaypoints = v103;

  v106 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v105, v90);
  allWaypoints = selfCopy->_allWaypoints;
  selfCopy->_allWaypoints = v106;

  v109 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v108, v58);
  allProviderAndMapsDatabaseWaypoints = selfCopy->_allProviderAndMapsDatabaseWaypoints;
  selfCopy->_allProviderAndMapsDatabaseWaypoints = v109;

  v112 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v111, v95);
  systemWaypoints = selfCopy->_systemWaypoints;
  selfCopy->_systemWaypoints = v112;

  objc_sync_exit(selfCopy);
}

- (id)_allSystemWaypoints
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = objc_msgSend_systemWaypoints(self->_compassGuide, a2, v2);
  v7 = objc_msgSend_arrayWithArray_(v4, v6, v5);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_userGuides;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_systemWaypoints(*(*(&v22 + 1) + 8 * i), v11, v12, v22);
        objc_msgSend_addObjectsFromArray_(v7, v17, v16);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v22, v26, 16);
    }

    while (v13);
  }

  v20 = objc_msgSend_copy(v7, v18, v19);

  return v20;
}

- (id)_enabledCompassWaypointsRestrictedTo:(double)to ofLocation:(id)location maxCount:(unint64_t)count
{
  v79 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v9 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD67A60();
  }

  guidesEnabledState = self->_guidesEnabledState;
  v13 = objc_msgSend_type(self->_compassGuide, v11, v12);
  if (objc_msgSend_isEnabledForGuideType_(guidesEnabledState, v14, v13) && (objc_msgSend_guideEnabled_(self, v15, self->_compassGuide) & 1) != 0)
  {
    countCopy = count;
    v18 = objc_msgSend_enabledWaypoints(self->_compassGuide, v16, v17);
    v19 = objc_opt_new();
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v20 = v18;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v66, v78, 16);
    if (!v22)
    {
      goto LABEL_22;
    }

    v25 = v22;
    v26 = *v67;
    while (1)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v67 != v26)
        {
          objc_enumerationMutation(v20);
        }

        v28 = *(*(&v66 + 1) + 8 * i);
        v29 = objc_msgSend_location(v28, v23, v24);
        objc_msgSend_distanceFromLocation_(v29, v30, locationCopy);
        v32 = v31;

        v35 = allowVerboseLog(v33, v34);
        if (v32 >= to)
        {
          if (!v35)
          {
            continue;
          }

          v41 = NCLogForCategory(9uLL);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            v46 = objc_msgSend_label(v28, v43, v44);
            *buf = 136446722;
            v71 = "[NCGuidesManager _enabledCompassWaypointsRestrictedTo:ofLocation:maxCount:]";
            v72 = 2112;
            v73 = v46;
            v74 = 2048;
            v75 = v32;
            _os_log_debug_impl(&dword_23BD26000, v41, OS_LOG_TYPE_DEBUG, "%{public}s Excluding compass waypoint %@, distance is %f", buf, 0x20u);
          }
        }

        else
        {
          if (v35)
          {
            v36 = NCLogForCategory(9uLL);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              v45 = objc_msgSend_label(v28, v37, v38);
              *buf = 136446722;
              v71 = "[NCGuidesManager _enabledCompassWaypointsRestrictedTo:ofLocation:maxCount:]";
              v72 = 2112;
              v73 = v45;
              v74 = 2048;
              v75 = v32;
              _os_log_debug_impl(&dword_23BD26000, v36, OS_LOG_TYPE_DEBUG, "%{public}s Including compass waypoint %@, distance is %f", buf, 0x20u);
            }
          }

          v39 = [NCWaypointWithDistance alloc];
          v41 = objc_msgSend_initWithWaypoint_distance_(v39, v40, v28, v32);
          objc_msgSend_addObject_(v19, v42, v41);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v66, v78, 16);
      if (!v25)
      {
LABEL_22:

        v47 = NCLogForCategory(9uLL);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v50 = objc_msgSend_count(v19, v48, v49);
          v53 = objc_msgSend_count(v20, v51, v52);
          *buf = 136446978;
          v71 = "[NCGuidesManager _enabledCompassWaypointsRestrictedTo:ofLocation:maxCount:]";
          v72 = 2048;
          v73 = v50;
          v74 = 2048;
          v75 = *&v53;
          v76 = 2048;
          v77 = countCopy;
          _os_log_impl(&dword_23BD26000, v47, OS_LOG_TYPE_INFO, "%{public}s: found %lu of %lu compass waypoints in range.  Max allowed is: %lu", buf, 0x2Au);
        }

        objc_msgSend_sortUsingSelector_(v19, v54, sel_compare_);
        if (objc_msgSend_count(v19, v55, v56) > countCopy)
        {
          v59 = objc_msgSend_count(v19, v57, v58);
          v61 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v60, countCopy, v59 - countCopy);
          objc_msgSend_removeObjectsAtIndexes_(v19, v62, v61);
        }

        v63 = objc_msgSend_copy(v19, v57, v58);

        goto LABEL_30;
      }
    }
  }

  v20 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v71 = "[NCGuidesManager _enabledCompassWaypointsRestrictedTo:ofLocation:maxCount:]";
    _os_log_impl(&dword_23BD26000, v20, OS_LOG_TYPE_INFO, "%s: Compass guide is disabled (globally or individually), returning no waypoints.", buf, 0xCu);
  }

  v63 = MEMORY[0x277CBEBF8];
LABEL_30:

  return v63;
}

- (id)_systemWaypointsRestrictedTo:(double)to ofLocation:(id)location
{
  v59 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v7 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD67AE4();
  }

  v10 = objc_msgSend_systemWaypoints(self->_compassGuide, v8, v9);
  v11 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v12 = v10;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v48, v58, 16);
  if (v14)
  {
    v18 = v14;
    v19 = *v49;
    *&v17 = 136446722;
    v47 = v17;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(v12);
        }

        v21 = *(*(&v48 + 1) + 8 * i);
        v22 = objc_msgSend_location(v21, v15, v16, v47, v48);
        objc_msgSend_distanceFromLocation_(v22, v23, locationCopy);
        v25 = v24;

        v26 = NCLogForCategory(9uLL);
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
        if (v25 >= to)
        {
          if (v27)
          {
            v34 = objc_msgSend_label(v21, v28, v29);
            *buf = v47;
            v53 = "[NCGuidesManager _systemWaypointsRestrictedTo:ofLocation:]";
            v54 = 2112;
            v55 = v34;
            v56 = 2048;
            v57 = v25;
            _os_log_debug_impl(&dword_23BD26000, v26, OS_LOG_TYPE_DEBUG, "%{public}s Excluding system waypoint %@, distance is %f", buf, 0x20u);
          }
        }

        else
        {
          if (v27)
          {
            v33 = objc_msgSend_label(v21, v28, v29);
            *buf = v47;
            v53 = "[NCGuidesManager _systemWaypointsRestrictedTo:ofLocation:]";
            v54 = 2112;
            v55 = v33;
            v56 = 2048;
            v57 = v25;
            _os_log_debug_impl(&dword_23BD26000, v26, OS_LOG_TYPE_DEBUG, "%{public}s Including system waypoint %@, distance is %f", buf, 0x20u);
          }

          v30 = [NCWaypointWithDistance alloc];
          v26 = objc_msgSend_initWithWaypoint_distance_(v30, v31, v21, v25);
          objc_msgSend_addObject_(v11, v32, v26);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v48, v58, 16);
    }

    while (v18);
  }

  v35 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v38 = objc_msgSend_count(v11, v36, v37);
    v41 = objc_msgSend_count(v12, v39, v40);
    *buf = 136446722;
    v53 = "[NCGuidesManager _systemWaypointsRestrictedTo:ofLocation:]";
    v54 = 2048;
    v55 = v38;
    v56 = 2048;
    v57 = *&v41;
    _os_log_impl(&dword_23BD26000, v35, OS_LOG_TYPE_INFO, "%{public}s: including %lu of %lu system waypoints", buf, 0x20u);
  }

  objc_msgSend_sortUsingSelector_(v11, v42, sel_compare_);
  v45 = objc_msgSend_copy(v11, v43, v44);

  return v45;
}

- (void)_fetchEnabledWaypointsRestrictingMapGuidesTo:(double)to ofLocation:(id)location maxCount:(unint64_t)count handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_loadedGuides)
  {
    objc_sync_exit(selfCopy);

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23BD5FC28;
    v15[3] = &unk_278B94BC0;
    v15[4] = selfCopy;
    v16 = locationCopy;
    countCopy = count;
    v17 = handlerCopy;
    objc_msgSend__fetchAllPlaceItemsRestrictingMapGuidesTo_ofLocation_handler_(selfCopy, v13, v16, v15, to);
  }

  else
  {
    v14 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v20 = "[NCGuidesManager _fetchEnabledWaypointsRestrictingMapGuidesTo:ofLocation:maxCount:handler:]";
      _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: returning empty list, guides are not loaded", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8]);
    objc_sync_exit(selfCopy);
  }
}

- (void)_fetchAllWaypointsRestrictingMapGuidesTo:(double)to ofLocation:(id)location handler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_loadedGuides)
  {
    objc_sync_exit(selfCopy);

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_23BD60270;
    v13[3] = &unk_278B94BE8;
    v14 = handlerCopy;
    objc_msgSend__fetchAllPlaceItemsRestrictingMapGuidesTo_ofLocation_handler_(selfCopy, v11, locationCopy, v13, to);
    selfCopy = v14;
  }

  else
  {
    v12 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = "[NCGuidesManager _fetchAllWaypointsRestrictingMapGuidesTo:ofLocation:handler:]";
      _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: returning empty list, guides are not loaded", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8]);
    objc_sync_exit(selfCopy);
  }
}

- (void)_fetchAllPlaceItemsRestrictingMapGuidesTo:(double)to ofLocation:(id)location handler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  locationCopy = location;
  v10 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v33 = "[NCGuidesManager _fetchAllPlaceItemsRestrictingMapGuidesTo:ofLocation:handler:]";
    _os_log_impl(&dword_23BD26000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Determining which guide waypoints are within range and enabled.", buf, 0xCu);
  }

  v11 = objc_alloc(MEMORY[0x277D26680]);
  objc_msgSend_coordinate(locationCopy, v12, v13);
  v15 = v14;
  objc_msgSend_coordinate(locationCopy, v16, v17);
  v19 = v18;

  v22 = objc_msgSend_initWithCenterLatitude_centerLongitude_squareSideLengthMeters_(v11, v20, v21, v15, v19, to);
  v23 = objc_alloc(MEMORY[0x277D26678]);
  v25 = objc_msgSend_initWithPredicate_sortDescriptors_range_(v23, v24, v22, 0, 0);
  v26 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD60670;
  block[3] = &unk_278B94920;
  block[4] = self;
  v30 = v25;
  v31 = handlerCopy;
  v27 = handlerCopy;
  v28 = v25;
  dispatch_async(v26, block);
}

- (void)loadGuides
{
  v3 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD608B8;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)guideEnabled:(id)enabled
{
  v4 = objc_msgSend_uuid(enabled, a2, enabled);
  LOBYTE(self) = objc_msgSend_guideWithIdentifierEnabled_(self, v5, v4);

  return self;
}

- (BOOL)guideWithIdentifierEnabled:(id)enabled
{
  enabledCopy = enabled;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  disabledGuidesQueue = self->_disabledGuidesQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD609D4;
  block[3] = &unk_278B94C10;
  v9 = enabledCopy;
  v10 = &v11;
  block[4] = self;
  v6 = enabledCopy;
  dispatch_sync(disabledGuidesQueue, block);
  LOBYTE(disabledGuidesQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return disabledGuidesQueue;
}

- (void)enableWaypoints:(BOOL)waypoints forGuide:(id)guide
{
  guideCopy = guide;
  disabledGuidesQueue = self->_disabledGuidesQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD60AE8;
  block[3] = &unk_278B94080;
  waypointsCopy = waypoints;
  v10 = guideCopy;
  selfCopy = self;
  v8 = guideCopy;
  dispatch_async(disabledGuidesQueue, block);
}

- (void)setGlobalEnabledState:(BOOL)state forGuideType:(int64_t)type
{
  stateCopy = state;
  v19 = *MEMORY[0x277D85DE8];
  isEnabledForGuideType = objc_msgSend_isEnabledForGuideType_(self->_guidesEnabledState, a2, type);
  v8 = NCLogForCategory(9uLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (isEnabledForGuideType == stateCopy)
  {
    if (v9)
    {
      v13 = 136315650;
      v14 = "[NCGuidesManager setGlobalEnabledState:forGuideType:]";
      v15 = 2048;
      typeCopy2 = type;
      v17 = 1024;
      v18 = stateCopy;
      _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_INFO, "%s: No change needed. Global enabled state for type %ld is already %d.", &v13, 0x1Cu);
    }
  }

  else
  {
    if (v9)
    {
      v13 = 136315650;
      v14 = "[NCGuidesManager setGlobalEnabledState:forGuideType:]";
      v15 = 2048;
      typeCopy2 = type;
      v17 = 1024;
      v18 = stateCopy;
      _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_INFO, "%s: Setting global enabled state for guide type %ld to %d", &v13, 0x1Cu);
    }

    objc_msgSend_setEnabled_forGuideType_(self->_guidesEnabledState, v10, stateCopy, type);
    objc_msgSend__refreshNonDistanceLimitedWaypoints(self, v11, v12);
  }
}

- (int64_t)numEnabledGuideWaypoints
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = objc_msgSend__currentlyDisabledGuides(self, a2, v2);
  selfCopy = self;
  objc_msgSend_userGuides(self, v4, v5);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v38 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v35, v39, 16);
  if (v8)
  {
    v9 = v8;
    v33 = 0;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v12;
          guidesEnabledState = selfCopy->_guidesEnabledState;
          v18 = objc_msgSend_type(v14, v16, v17);
          isEnabledForGuideType = objc_msgSend_isEnabledForGuideType_(guidesEnabledState, v19, v18);
          v23 = objc_msgSend_uuid(v14, v21, v22);
          v26 = objc_msgSend_UUIDString(v23, v24, v25);
          v28 = objc_msgSend_containsObject_(v34, v27, v26);

          if (isEnabledForGuideType && (v28 & 1) == 0)
          {
            v33 += objc_msgSend_waypointCount(v14, v29, v30);
          }
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v35, v39, 16);
    }

    while (v9);
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (int64_t)numGuideWaypoints
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_userGuides(self, a2, v2);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v14, v18, 16);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 += objc_msgSend_waypointCount(v10, v11, v12);
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v11, &v14, v18, 16);
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)numDisabledGuides
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  disabledGuidesQueue = self->_disabledGuidesQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23BD610B8;
  v5[3] = &unk_278B94C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(disabledGuidesQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)numEnabledPOIs
{
  v51 = *MEMORY[0x277D85DE8];
  v40 = objc_msgSend__currentlyDisabledGuides(self, a2, v2);
  v6 = objc_msgSend_loadedProviderGuidesByType(self, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, &unk_284E8B088);

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v8;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v45, v50, 16);
  if (v10)
  {
    v13 = v10;
    v14 = 0;
    v15 = *v46;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v45 + 1) + 8 * i);
        guidesEnabledState = self->_guidesEnabledState;
        v19 = objc_msgSend_type(v17, v11, v12);
        isEnabledForGuideType = objc_msgSend_isEnabledForGuideType_(guidesEnabledState, v20, v19);
        v24 = objc_msgSend_uuid(v17, v22, v23);
        v27 = objc_msgSend_UUIDString(v24, v25, v26);
        v29 = objc_msgSend_containsObject_(v40, v28, v27);

        if (isEnabledForGuideType && (v29 & 1) == 0)
        {
          v30 = objc_msgSend_fetchWaypoints(v17, v11, v12);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v41, v49, 16);
          if (v32)
          {
            v35 = v32;
            v36 = *v42;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v42 != v36)
                {
                  objc_enumerationMutation(v30);
                }

                v14 += objc_msgSend_isEnabled(*(*(&v41 + 1) + 8 * j), v33, v34);
              }

              v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v41, v49, 16);
            }

            while (v35);
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v45, v50, 16);
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int64_t)numTotalPOIs
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_loadedProviderGuidesByType(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, &unk_284E8B088);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v23, 16);
  if (v8)
  {
    v11 = v8;
    v12 = 0;
    v13 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_fetchWaypoints(*(*(&v19 + 1) + 8 * i), v9, v10, v19);
        v12 += objc_msgSend_count(v15, v16, v17);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v19, v23, 16);
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_handleFirstUnlock
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[NCGuidesManager _handleFirstUnlock]";
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "%s: Received notification that device has been unlocked.", buf, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_hasBeenUnlockedSinceBoot)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy->_hasBeenUnlockedSinceBoot = 1;
    objc_sync_exit(selfCopy);

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD615B0;
    block[3] = &unk_278B93FB0;
    block[4] = selfCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (id)_currentlyDisabledGuides
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_23BD5D640;
  v10 = sub_23BD5D650;
  v11 = 0;
  disabledGuidesQueue = self->_disabledGuidesQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23BD61768;
  v5[3] = &unk_278B94C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(disabledGuidesQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_loadDisabledGuidesFromDefaults
{
  v30[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_disabledGuidesQueue);
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = objc_msgSend_initWithSuiteName_(v3, v4, @"com.apple.compass");
  v9 = objc_msgSend_objectForKey_(v5, v6, @"DisabledGuides");
  if (v9)
  {
    v10 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB58], v7, v9);
    disabledGuides = self->_disabledGuides;
    self->_disabledGuides = v10;
  }

  else
  {
    v12 = objc_msgSend_placesSavedPlacesGuideUUID(NCFixedGuidesUUID, v7, v8);
    v15 = objc_msgSend_UUIDString(v12, v13, v14);

    v16 = MEMORY[0x277CBEB58];
    v30[0] = v15;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v30, 1);
    v20 = objc_msgSend_setWithArray_(v16, v19, v18);
    v21 = self->_disabledGuides;
    self->_disabledGuides = v20;

    objc_msgSend__saveDisabledGuidesToDefaults(self, v22, v23);
  }

  v24 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = self->_disabledGuides;
    v26 = 136315394;
    v27 = "[NCGuidesManager _loadDisabledGuidesFromDefaults]";
    v28 = 2112;
    v29 = v25;
    _os_log_impl(&dword_23BD26000, v24, OS_LOG_TYPE_INFO, "%s: Final _disabledGuides array contents: %@", &v26, 0x16u);
  }
}

- (void)_saveDisabledGuidesToDefaults
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_disabledGuidesQueue);
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = objc_msgSend_initWithSuiteName_(v3, v4, @"com.apple.compass");
  v8 = objc_msgSend_allObjects(self->_disabledGuides, v6, v7);
  objc_msgSend_setObject_forKey_(v5, v9, v8, @"DisabledGuides");

  objc_msgSend_synchronize(v5, v10, v11);
  v12 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[NCGuidesManager _saveDisabledGuidesToDefaults]";
    _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_INFO, "%s: _saveDisabledGuidesToDefaults", &v15, 0xCu);
  }

  objc_msgSend__backupDisabledGuides(self, v13, v14);
}

- (void)_loadGuides
{
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_hasBeenUnlockedSinceBoot)
  {
    v3 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[NCGuidesManager _loadGuides]";
      v4 = "%s: We can't refresh guides until the device is unlocked the first time.";
      goto LABEL_13;
    }

LABEL_14:

    objc_sync_exit(selfCopy);
    v5 = selfCopy;
    goto LABEL_15;
  }

  if (!selfCopy->_store)
  {
    v3 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[NCGuidesManager _loadGuides]";
      v4 = "%s: We can't refresh guides because store didn't load or failed to load.";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (selfCopy->_loadingGuides)
  {
    v3 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[NCGuidesManager _loadGuides]";
      v4 = "%s: Not refreshing guides as they are currently loading.";
LABEL_13:
      _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_INFO, v4, buf, 0xCu);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (selfCopy->_loadedGuides)
  {
    v3 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[NCGuidesManager _loadGuides]";
      v4 = "%s: Guides are already loaded.";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  objc_sync_exit(selfCopy);

  v6 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[NCGuidesManager _loadGuides]";
    _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "%s: Fetching map guide collections", buf, 0xCu);
  }

  v7 = selfCopy;
  objc_sync_enter(v7);
  selfCopy->_loadingGuides = 1;
  objc_sync_exit(v7);

  v10 = objc_msgSend_storeGroup(v7, v8, v9);
  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);

  v11 = objc_alloc(MEMORY[0x277D26618]);
  v14 = objc_msgSend_store(v7, v12, v13);
  v16 = objc_msgSend_initWithStore_(v11, v15, v14);

  v28 = 0;
  v18 = objc_msgSend_fetchSyncAndReturnError_(v16, v17, &v28);
  v5 = v28;
  objc_msgSend__updateUserGuidesUsingCollections_(v7, v19, v18);
  v20 = v7;
  objc_sync_enter(v20);
  selfCopy->_loadingGuides = 0;
  objc_sync_exit(v20);

  v21 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_msgSend_count(v18, v22, v23);
    *buf = 136315394;
    v30 = "[NCGuidesManager _loadGuides]";
    v31 = 2048;
    v32 = v24;
    _os_log_impl(&dword_23BD26000, v21, OS_LOG_TYPE_DEFAULT, "%s: Fetched collections, num collections is %lu", buf, 0x16u);
  }

  if (v5)
  {
    v25 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_23BD67BE0();
    }
  }

  else
  {
    v26 = v20;
    objc_sync_enter(v26);
    selfCopy->_loadedGuides = 1;
    objc_sync_exit(v26);

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_23BD61ED8;
    v27[3] = &unk_278B93FB0;
    v27[4] = v26;
    dispatch_async(MEMORY[0x277D85CD0], v27);
  }

LABEL_15:
}

- (void)_refreshGuides
{
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_store)
  {
    selfCopy->_loadedGuides = 0;
    objc_sync_exit(selfCopy);

    objc_msgSend_loadGuides(selfCopy, v3, v4);
    v7 = objc_msgSend_guideProviders(selfCopy, v5, v6);
    v10 = objc_msgSend_count(v7, v8, v9);

    if (!v10)
    {
      return;
    }

    v11 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_msgSend_guideProviders(selfCopy, v12, v13);
      *buf = 136315394;
      *&buf[4] = "[NCGuidesManager _refreshGuides]";
      *&buf[12] = 2048;
      *&buf[14] = objc_msgSend_count(v14, v15, v16);
      _os_log_impl(&dword_23BD26000, v11, OS_LOG_TYPE_DEFAULT, "%s: Refreshing guides from %lu providers.", buf, 0x16u);
    }

    p_super = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v42 = sub_23BD5D640;
    v43 = sub_23BD5D650;
    v44 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v20 = objc_msgSend_guideProviders(selfCopy, v18, v19);
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v36, v40, 16);
    if (v22)
    {
      v23 = *v37;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v36 + 1) + 8 * i);
          dispatch_group_enter(p_super);
          v28 = objc_msgSend_store(selfCopy, v26, v27);
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = sub_23BD62368;
          v33[3] = &unk_278B94AF8;
          v35 = buf;
          v34 = p_super;
          objc_msgSend_refreshGuidesWithStore_completion_(v25, v29, v28, v33);
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v30, &v36, v40, 16);
      }

      while (v22);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD62404;
    block[3] = &unk_278B94C38;
    block[5] = buf;
    block[4] = selfCopy;
    dispatch_group_notify(p_super, MEMORY[0x277D85CD0], block);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v31 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[NCGuidesManager _refreshGuides]";
      _os_log_impl(&dword_23BD26000, v31, OS_LOG_TYPE_INFO, "%s: Aborting refresh because the store is not available.", buf, 0xCu);
    }

    p_super = &selfCopy->super;
    objc_sync_exit(selfCopy);
  }
}

- (void)_updateUserGuidesUsingCollections:(id)collections
{
  v91 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  v71 = objc_opt_new();
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = collectionsCopy;
  v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v79, v90, 16);
  if (v73)
  {
    v72 = *v80;
    do
    {
      v7 = 0;
      do
      {
        if (*v80 != v72)
        {
          v8 = v7;
          objc_enumerationMutation(obj);
          v7 = v8;
        }

        v74 = v7;
        v9 = *(*(&v79 + 1) + 8 * v7);
        v10 = objc_msgSend_title(v9, v5, v6);

        v11 = NCLogForCategory(9uLL);
        v12 = v11;
        if (v10)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_msgSend_title(v9, v13, v14);
            v16 = v15;
            v19 = objc_msgSend_UTF8String(v15, v17, v18);
            v20 = MEMORY[0x277CCABB0];
            v23 = objc_msgSend_placesCount(v9, v21, v22);
            v25 = objc_msgSend_numberWithInt_(v20, v24, v23);
            *buf = 136315650;
            v85 = "[NCGuidesManager _updateUserGuidesUsingCollections:]";
            v86 = 2080;
            v87 = v19;
            v88 = 2112;
            v89 = v25;
            _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_DEFAULT, "%s: Converting to Guide - Collection: %s, num items is %@", buf, 0x20u);
          }

          v12 = objc_opt_new();
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v28 = objc_msgSend_fetchPlaces(v9, v26, v27);
          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v75, v83, 16);
          if (v30)
          {
            v31 = *v76;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v76 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v75 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v35 = v33;
                  v38 = objc_msgSend_identifier(v9, v36, v37);
                  v40 = objc_msgSend_waypointForCollectionPlaceItem_inGuide_(NCWaypoint, v39, v35, v38);

                  objc_msgSend_addObject_(v12, v41, v40);
                }
              }

              v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v34, &v75, v83, 16);
            }

            while (v30);
          }

          v42 = MEMORY[0x277CCACA8];
          v45 = objc_msgSend_title(v9, v43, v44);
          v46 = v45;
          v49 = objc_msgSend_UTF8String(v45, v47, v48);
          v51 = objc_msgSend_stringWithUTF8String_(v42, v50, v49);

          v52 = [NCMapsUserGuide alloc];
          v55 = objc_msgSend_identifier(v9, v53, v54);
          v57 = objc_msgSend_initWithIdentifier_name_waypoints_(v52, v56, v55, v51, v12);

          v58 = NCLogForCategory(9uLL);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v85 = v51;
            v86 = 2112;
            v87 = v12;
            _os_log_impl(&dword_23BD26000, v58, OS_LOG_TYPE_DEFAULT, "Created guide with name %@ and waypoints %@", buf, 0x16u);
          }

          objc_msgSend_addObject_(v71, v59, v57);
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v62 = objc_msgSend_identifier(v9, v60, v61);
          *buf = 136315394;
          v85 = "[NCGuidesManager _updateUserGuidesUsingCollections:]";
          v86 = 2112;
          v87 = v62;
          _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_INFO, "%s: Skipping collection %@, it has no title", buf, 0x16u);
        }

        v7 = v74 + 1;
      }

      while (v74 + 1 != v73);
      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v79, v90, 16);
    }

    while (v73);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v64 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v67 = objc_msgSend_count(v71, v65, v66);
    *buf = 136315394;
    v85 = "[NCGuidesManager _updateUserGuidesUsingCollections:]";
    v86 = 2048;
    v87 = v67;
    _os_log_impl(&dword_23BD26000, v64, OS_LOG_TYPE_INFO, "%s: setting _userGuides with %lu guides", buf, 0x16u);
  }

  userGuides = selfCopy->_userGuides;
  selfCopy->_userGuides = v71;

  objc_sync_exit(selfCopy);
}

- (void)_refreshNonDistanceLimitedWaypoints
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[NCGuidesManager _refreshNonDistanceLimitedWaypoints]";
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_INFO, "%s: refreshing allEnabledWaypoints and allWaypoints.", &v7, 0xCu);
  }

  objc_msgSend__refreshAllWaypoints(self, v4, v5);
  objc_msgSend__postNotification_(self, v6, @"GuideWaypointsChangedNotification");
}

- (void)_handleWaypointListChanged:(id)changed
{
  v15 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = objc_msgSend_name(changedCopy, v6, v7);
    *buf = 136315394;
    v12 = "[NCGuidesManager _handleWaypointListChanged:]";
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_INFO, "%s: %@", buf, 0x16u);
  }

  disabledGuidesQueue = self->_disabledGuidesQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD62DD4;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  dispatch_async(disabledGuidesQueue, block);
}

- (void)reloadWaypoints
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[NCGuidesManager reloadWaypoints]";
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_INFO, "%s: will refresh waypoints/guides.", buf, 0xCu);
  }

  disabledGuidesQueue = self->_disabledGuidesQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD62F6C;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  dispatch_async(disabledGuidesQueue, block);
}

- (void)storeControllerWithDidLoad:(id)load
{
  v15 = *MEMORY[0x277D85DE8];
  loadCopy = load;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_setStore_(selfCopy, v6, loadCopy);
  objc_sync_exit(selfCopy);

  v9 = objc_msgSend_storeGroup(selfCopy, v7, v8);
  dispatch_group_leave(v9);

  v10 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[NCGuidesManager storeControllerWithDidLoad:]";
    _os_log_impl(&dword_23BD26000, v10, OS_LOG_TYPE_DEFAULT, "%s: storeControllerWithDidLoad completed, loading guides", &v13, 0xCu);
  }

  objc_msgSend__refreshGuides(selfCopy, v11, v12);
}

- (void)storeControllerWithFailedToLoad:(id)load
{
  v13 = *MEMORY[0x277D85DE8];
  loadCopy = load;
  v5 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[NCGuidesManager storeControllerWithFailedToLoad:]";
    v11 = 2114;
    v12 = loadCopy;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "%s: storeControllerWithFailedToLoad, error is %{public}@", &v9, 0x16u);
  }

  v8 = objc_msgSend_storeGroup(self, v6, v7);
  dispatch_group_leave(v8);
}

- (void)storeControllerWithDataChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[NCGuidesManager storeControllerWithDataChanged:]";
    v10 = 2114;
    v11 = changedCopy;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "%s: storeControllerWithDataChanged, error is %{public}@", &v8, 0x16u);
  }

  objc_msgSend__refreshGuides(self, v6, v7);
}

@end