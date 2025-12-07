@interface BRCPeriodicSyncOperation
- (BOOL)scheduleSyncDownIfNeededForZoneID:(id)d zoneIfAny:(id)any zoneType:(unsigned __int8 *)type;
- (BOOL)shouldRetryForError:(id)error;
- (BRCPeriodicSyncOperation)initWithContainerScheduler:(id)scheduler metadataChangeToken:(id)token zoneHealthChangeToken:(id)changeToken sideCarChangeToken:(id)carChangeToken sessionContext:(id)context;
- (id)createActivity;
- (void)main;
@end

@implementation BRCPeriodicSyncOperation

- (BRCPeriodicSyncOperation)initWithContainerScheduler:(id)scheduler metadataChangeToken:(id)token zoneHealthChangeToken:(id)changeToken sideCarChangeToken:(id)carChangeToken sessionContext:(id)context
{
  schedulerCopy = scheduler;
  tokenCopy = token;
  changeTokenCopy = changeToken;
  carChangeTokenCopy = carChangeToken;
  contextCopy = context;
  syncContextProvider = [contextCopy syncContextProvider];
  defaultSyncContext = [syncContextProvider defaultSyncContext];

  v22.receiver = self;
  v22.super_class = BRCPeriodicSyncOperation;
  v18 = [(_BRCOperation *)&v22 initWithName:@"sync-down/periodic-sync" syncContext:defaultSyncContext sessionContext:contextCopy];

  if (v18)
  {
    objc_storeStrong(&v18->_scheduler, scheduler);
    objc_storeStrong(&v18->_metadataChangeToken, token);
    objc_storeStrong(&v18->_zoneHealthChangeToken, changeToken);
    objc_storeStrong(&v18->_sideCarChangeToken, carChangeToken);
    [(BRCPeriodicSyncOperation *)v18 setQualityOfService:9, tokenCopy, schedulerCopy];
  }

  return v18;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync-down/periodic-sync", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)shouldRetryForError:(id)error
{
  v4.receiver = self;
  v4.super_class = BRCPeriodicSyncOperation;
  return [(_BRCOperation *)&v4 shouldRetryForError:error];
}

- (BOOL)scheduleSyncDownIfNeededForZoneID:(id)d zoneIfAny:(id)any zoneType:(unsigned __int8 *)type
{
  v77 = *MEMORY[0x277D85DE8];
  dCopy = d;
  anyCopy = any;
  session = [(BRCContainerScheduler *)self->_scheduler session];
  zoneName = [dCopy zoneName];
  memset(v70, 0, sizeof(v70));
  __brc_create_section(0, "[BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:zoneIfAny:zoneType:]", 75, 0, v70);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v72 = v70[0];
    v73 = 2112;
    v74 = zoneName;
    v75 = 2112;
    v76 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx considering whether or not to schedule sync down for %@%@", buf, 0x20u);
  }

  if (![zoneName isEqualToString:*MEMORY[0x277CFAD58]])
  {
    if ([zoneName isEqualToString:*MEMORY[0x277CFADD0]])
    {
      zoneHealthChangeToken = self->_zoneHealthChangeToken;
      currentServerChangeToken = [anyCopy currentServerChangeToken];
      v16 = zoneHealthChangeToken;
      v22 = currentServerChangeToken;
      periodicSyncInvestigation = v22;
      if (v16 == v22)
      {
        goto LABEL_18;
      }

      if (v22)
      {
        v23 = [(CKServerChangeToken *)v16 isEqual:v22];

        if (v23)
        {
          goto LABEL_56;
        }
      }

      else
      {
      }

      v44 = brc_bread_crumbs();
      v45 = brc_default_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:zoneIfAny:zoneType:];
      }

      scheduler = self->_scheduler;
      group = [(_BRCOperation *)self group];
      [(BRCContainerScheduler *)scheduler scheduleSyncDownForZoneHealthWithGroup:group];
      v36 = 4;
LABEL_40:

      *type |= v36;
LABEL_41:
      periodicSyncInvestigation = [session periodicSyncInvestigation];
      [periodicSyncInvestigation startInvestigation];
      v28 = 1;
      goto LABEL_42;
    }

    if ([zoneName isEqualToString:*MEMORY[0x277CFB070]])
    {
      sideCarChangeToken = self->_sideCarChangeToken;
      currentServerChangeToken2 = [anyCopy currentServerChangeToken];
      v16 = sideCarChangeToken;
      v26 = currentServerChangeToken2;
      periodicSyncInvestigation = v26;
      if (v16 == v26)
      {
        goto LABEL_18;
      }

      if (v26)
      {
        v27 = [(CKServerChangeToken *)v16 isEqual:v26];

        if (v27)
        {
          goto LABEL_56;
        }
      }

      else
      {
      }

      v47 = brc_bread_crumbs();
      v48 = brc_default_log();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        [BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:zoneIfAny:zoneType:];
      }

      v49 = self->_scheduler;
      group = [(_BRCOperation *)self group];
      [(BRCContainerScheduler *)v49 scheduleSyncDownForSideCarWithGroup:group];
      v36 = 2;
      goto LABEL_40;
    }

    v69 = [session privateServerZoneByID:zoneName];
    clientZone = [v69 clientZone];
    if (!v69)
    {
      v65 = brc_bread_crumbs();
      v66 = brc_default_log();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
      {
        [BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:zoneIfAny:zoneType:];
      }
    }

    if ([clientZone isSyncBlocked])
    {
      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        clientZone2 = [v69 clientZone];
        [BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:clientZone2 zoneIfAny:v29 zoneType:buf];
      }

      goto LABEL_47;
    }

    changeState = [v69 changeState];
    changeToken = [changeState changeToken];
    currentServerChangeToken3 = [anyCopy currentServerChangeToken];
    v40 = changeToken;
    v41 = currentServerChangeToken3;
    v42 = v41;
    if (v40 == v41)
    {
    }

    else
    {
      if (!v41)
      {

        goto LABEL_46;
      }

      v43 = [v40 isEqual:v41];

      if ((v43 & 1) == 0)
      {
LABEL_46:
        clientZone3 = [v69 clientZone];
        v67 = ([clientZone3 syncState] & 0xA) == 0;

        if (v67)
        {
          v60 = brc_bread_crumbs();
          v61 = brc_default_log();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            clientZone4 = [v69 clientZone];
            [BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:clientZone4 zoneIfAny:v60 zoneType:buf];
          }

          clientZone5 = [v69 clientZone];
          group2 = [(_BRCOperation *)self group];
          [clientZone5 scheduleSyncDownWithGroup:group2];

          *type |= 8u;
          v51 = 1;
          if (!anyCopy)
          {
LABEL_55:

            if ((v51 & 1) == 0)
            {
LABEL_56:
              v28 = 0;
              goto LABEL_57;
            }

            goto LABEL_41;
          }

LABEL_48:
          if (([clientZone enhancedDrivePrivacyEnabled] & 1) == 0)
          {
            mangledID = [clientZone mangledID];
            v53 = [BRCUserDefaults defaultsForMangledID:mangledID];
            supportsEnhancedDrivePrivacy = [v53 supportsEnhancedDrivePrivacy];

            if (supportsEnhancedDrivePrivacy)
            {
              requiredFeatures = [anyCopy requiredFeatures];
              recordFeatures = [requiredFeatures recordFeatures];

              if ([recordFeatures hasValue:*MEMORY[0x277CFAC38] forName:*MEMORY[0x277CFAC30]])
              {
                v57 = brc_bread_crumbs();
                v58 = brc_notifications_log();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
                {
                  [BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:zoneIfAny:zoneType:];
                }

                [clientZone setStateBits:0x400000];
              }
            }
          }

          goto LABEL_55;
        }

LABEL_47:
        v51 = 0;
        if (!anyCopy)
        {
          goto LABEL_55;
        }

        goto LABEL_48;
      }
    }

    goto LABEL_47;
  }

  metadataChangeToken = self->_metadataChangeToken;
  currentServerChangeToken4 = [anyCopy currentServerChangeToken];
  v16 = metadataChangeToken;
  v17 = currentServerChangeToken4;
  periodicSyncInvestigation = v17;
  if (v16 != v17)
  {
    if (v17)
    {
      v19 = [(CKServerChangeToken *)v16 isEqual:v17];

      if (v19)
      {
        goto LABEL_56;
      }
    }

    else
    {
    }

    v32 = brc_bread_crumbs();
    v33 = brc_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:zoneIfAny:zoneType:];
    }

    v34 = self->_scheduler;
    group = [(_BRCOperation *)self group];
    [(BRCContainerScheduler *)v34 scheduleSyncDownForContainerMetadataWithGroup:group];
    v36 = 1;
    goto LABEL_40;
  }

LABEL_18:

  v28 = 0;
LABEL_42:

LABEL_57:
  __brc_leave_section(v70);

  return v28;
}

- (void)main
{
  v29 = *MEMORY[0x277D85DE8];
  group = [(_BRCOperation *)self group];

  if (!group)
  {
    [BRCPeriodicSyncOperation main];
  }

  v4 = objc_opt_new();
  brc_containerMetadataZoneID = [MEMORY[0x277CBC5F8] brc_containerMetadataZoneID];
  [v4 addObject:brc_containerMetadataZoneID];

  brc_zoneHealthZoneID = [MEMORY[0x277CBC5F8] brc_zoneHealthZoneID];
  [v4 addObject:brc_zoneHealthZoneID];

  if (self->_sideCarChangeToken)
  {
    brc_sideCarZoneID = [MEMORY[0x277CBC5F8] brc_sideCarZoneID];
    [v4 addObject:brc_sideCarZoneID];
  }

  zoneAppRetriever = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __32__BRCPeriodicSyncOperation_main__block_invoke;
  v21[3] = &unk_278506078;
  v9 = v4;
  v22 = v9;
  [zoneAppRetriever enumeratePrivateServerZones:v21];

  v10 = [objc_alloc(MEMORY[0x277CBC3D0]) initWithRecordZoneIDs:v9];
  v11 = objc_opt_new();
  [v10 setConfiguration:v11];

  v12 = +[BRCContainerCellularSettings containerCellularSettings];
  isCellularEnabled = [v12 isCellularEnabled];
  configuration = [v10 configuration];
  [configuration setAllowsCellularAccess:isCellularEnabled];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __32__BRCPeriodicSyncOperation_main__block_invoke_2;
  v20[3] = &unk_278500DC8;
  v20[4] = self;
  [v10 setFetchRecordZonesCompletionBlock:v20];
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v15;
    _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Running operation to fetch %@: %@%@", buf, 0x20u);
  }

  v17 = MEMORY[0x277CCABB0];
  configuration2 = [v10 configuration];
  v19 = [v17 numberWithBool:{objc_msgSend(configuration2, "allowsCellularAccess")}];
  [(_BRCOperation *)self addSubOperation:v10 overrideContext:0 allowsCellularAccess:v19];
}

uint64_t __32__BRCPeriodicSyncOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientZone];
  if (([v4 isSyncBlocked] & 1) == 0 && (objc_msgSend(v4, "syncState") & 3) == 0 && objc_msgSend(v3, "hasFetchedRecentsAndFavorites"))
  {
    v5 = *(a1 + 32);
    v6 = [v3 zoneID];
    [v5 addObject:v6];
  }

  return 1;
}

void __32__BRCPeriodicSyncOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  memset(v22, 0, sizeof(v22));
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_msgSend_logSections(v7);
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v24 = v22[0];
    v25 = 2112;
    v26 = v5;
    v27 = 2112;
    v28 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx completed fetching changed zone\nzones: %@%@", buf, 0x20u);
  }

  v10 = +[BRCEventsAnalytics sharedAnalytics];
  if (!v5)
  {
    if (!v6)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        __32__BRCPeriodicSyncOperation_main__block_invoke_2_cold_2();
      }

      v6 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: No error found"];
    }

    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      __32__BRCPeriodicSyncOperation_main__block_invoke_2_cold_1();
    }

    goto LABEL_18;
  }

  if (v6 && ([v6 brc_containsCloudKitErrorCode:2] & 1) == 0)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      __32__BRCPeriodicSyncOperation_main__block_invoke_2_cold_1();
    }

LABEL_18:

    [*(a1 + 32) completedWithResult:0 error:v6];
    [v10 registerAndSendNewPeriodicSyncWithOutcome:@"failed"];
    goto LABEL_19;
  }

  v11 = [*(*(a1 + 32) + 256) periodicSyncInvestigation];
  [v11 completeInvestigation];

  v12 = *(a1 + 32);
  v13 = *(v12 + 256);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __32__BRCPeriodicSyncOperation_main__block_invoke_18;
  v18[3] = &unk_278507798;
  v18[4] = v12;
  v19 = v10;
  v20 = v5;
  v6 = v6;
  v21 = v6;
  [v13 performAsyncOnClientReadWriteDatabaseWorkloop:v18];

LABEL_19:
  __brc_leave_section(v22);
}

void __32__BRCPeriodicSyncOperation_main__block_invoke_18(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) finishIfCancelled])
  {
    [*(a1 + 40) registerAndSendNewPeriodicSyncWithOutcome:@"cancelled"];
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v4 = *(a1 + 48);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __32__BRCPeriodicSyncOperation_main__block_invoke_2_22;
    v15[3] = &unk_278507748;
    v15[4] = *(a1 + 32);
    v15[5] = &v20;
    v15[6] = &v16;
    [v4 enumerateKeysAndObjectsUsingBlock:v15];
    v5 = [*(a1 + 56) userInfo];
    v6 = [v5 objectForKey:*MEMORY[0x277CBBFB0]];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __32__BRCPeriodicSyncOperation_main__block_invoke_3;
    v14[3] = &unk_278507770;
    v14[4] = *(a1 + 32);
    v14[5] = &v20;
    v14[6] = &v16;
    [v6 enumerateKeysAndObjectsUsingBlock:v14];
    if (*(v21 + 12))
    {
      v7 = @"useful";
    }

    else
    {
      v7 = @"useless";
    }

    [*(a1 + 40) registerAndSendNewPeriodicSyncWithOutcome:v7];
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v21 + 12))
      {
        v10 = "useful";
      }

      else
      {
        v10 = "useless";
      }

      *buf = 136315394;
      v25 = v10;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[NOTICE] scheduled a %s periodic sync%@", buf, 0x16u);
    }

    if (*(v21 + 12))
    {
      v11 = [*(*(a1 + 32) + 256) periodicSyncInvestigation];
      [v11 setZonesOutOfSync:*(v21 + 12) zonesType:*(v17 + 24)];
    }

    v12 = [*(*(a1 + 32) + 256) analyticsReporter];
    v13 = [AppTelemetryTimeSeriesEvent newMissingPushEventWithNumberOutOfSync:*(v21 + 12) zonesType:*(v17 + 24)];
    [v12 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v13];

    [*(a1 + 32) completedWithResult:0 error:0];
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);
  }
}

void *__32__BRCPeriodicSyncOperation_main__block_invoke_2_22(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) scheduleSyncDownIfNeededForZoneID:a2 zoneIfAny:a3 zoneType:*(*(a1 + 48) + 8) + 24];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

void __32__BRCPeriodicSyncOperation_main__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) += [*(a1 + 32) scheduleSyncDownIfNeededForZoneID:v3 zoneIfAny:0 zoneType:*(*(a1 + 48) + 8) + 24];
  }
}

@end