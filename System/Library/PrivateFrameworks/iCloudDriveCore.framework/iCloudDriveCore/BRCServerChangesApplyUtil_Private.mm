@interface BRCServerChangesApplyUtil_Private
+ (BOOL)_handleApplyingDeletedUnlistedDirectoryIfNecessary:(id)necessary localItem:(id)item parent:(id)parent;
+ (BOOL)appLibraryUndergoingCZM:(id)m zone:(id)zone rank:(int64_t)rank parentID:(id)d scheduler:(id)scheduler session:(id)session;
+ (BOOL)itemUndergoingCZMToAnotherZone:(id)zone si:(id)si clientZone:(id)clientZone rank:(int64_t)rank scheduler:(id)scheduler zone:(id)a8;
+ (BOOL)localItemHasUnsyncedChanges:(id)changes si:(id)si rank:(int64_t)rank scheduler:(id)scheduler clientZone:(id)zone zone:(id)a8 isDeleteOfShareRoot:(BOOL)root session:(id)self0;
+ (BOOL)serverItemDeadWithNoLiveLocalItem:(id)item si:(id)si rank:(int64_t)rank scheduler:(id)scheduler clientZone:(id)zone zone:(id)a8;
+ (BOOL)serverItemWouldBeParentedToDeadFolder:(id)folder si:(id)si rank:(int64_t)rank scheduler:(id)scheduler zone:(id)zone diffs:(unint64_t)diffs;
@end

@implementation BRCServerChangesApplyUtil_Private

+ (BOOL)itemUndergoingCZMToAnotherZone:(id)zone si:(id)si clientZone:(id)clientZone rank:(int64_t)rank scheduler:(id)scheduler zone:(id)a8
{
  siCopy = si;
  clientZoneCopy = clientZone;
  schedulerCopy = scheduler;
  v16 = a8;
  isDocument = [siCopy isDocument];
  v18 = 0;
  if (!zone && isDocument)
  {
    rankCopy = rank;
    v19 = [clientZoneCopy db];
    itemID = [siCopy itemID];
    clientZone = [siCopy clientZone];
    dbRowID = [clientZone dbRowID];
    v23 = [v19 numberWithSQL:{@"SELECT 1 FROM client_items WHERE version_old_zone_item_id = %@ AND version_old_zone_rowid = %@", itemID, dbRowID}];
    bOOLValue = [v23 BOOLValue];

    if (bOOLValue)
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        +[BRCServerChangesApplyUtil_Private itemUndergoingCZMToAnotherZone:si:clientZone:rank:scheduler:zone:];
      }

      dbRowID2 = [v16 dbRowID];
      [schedulerCopy setState:17 forRank:rankCopy zoneRowID:dbRowID2];

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

+ (BOOL)appLibraryUndergoingCZM:(id)m zone:(id)zone rank:(int64_t)rank parentID:(id)d scheduler:(id)scheduler session:(id)session
{
  zoneCopy = zone;
  dCopy = d;
  schedulerCopy = scheduler;
  sessionCopy = session;
  if (m)
  {
    goto LABEL_10;
  }

  if (![dCopy isNonDesktopRoot])
  {
    goto LABEL_10;
  }

  if (![zoneCopy isCloudDocsZone])
  {
    goto LABEL_10;
  }

  appLibraryRowID = [dCopy appLibraryRowID];
  clientZone = [zoneCopy clientZone];
  asPrivateClientZone = [clientZone asPrivateClientZone];
  defaultAppLibrary = [asPrivateClientZone defaultAppLibrary];
  dbRowID = [defaultAppLibrary dbRowID];
  v21 = [appLibraryRowID isEqual:dbRowID];

  if (v21)
  {
    goto LABEL_10;
  }

  appLibraryRowID2 = [dCopy appLibraryRowID];
  v23 = [sessionCopy appLibraryByRowID:appLibraryRowID2];

  if (([v23 state] & 0x200000) != 0)
  {

LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  v24 = brc_bread_crumbs();
  v25 = brc_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    +[BRCServerChangesApplyUtil_Private appLibraryUndergoingCZM:zone:rank:parentID:scheduler:session:];
  }

  dbRowID2 = [zoneCopy dbRowID];
  [schedulerCopy setState:27 forRank:rank zoneRowID:dbRowID2];

  v27 = 1;
LABEL_11:

  return v27;
}

+ (BOOL)_handleApplyingDeletedUnlistedDirectoryIfNecessary:(id)necessary localItem:(id)item parent:(id)parent
{
  v34 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  itemCopy = item;
  parentCopy = parent;
  isDead = [parentCopy isDead];
  v11 = 0;
  if (itemCopy || !isDead)
  {
    goto LABEL_12;
  }

  v12 = [parentCopy st];
  ckInfo = [v12 ckInfo];
  if (([ckInfo hasDeletionChangeToken] & 1) == 0)
  {

    goto LABEL_11;
  }

  clientZone = [necessaryCopy clientZone];
  clientZone2 = [parentCopy clientZone];
  v16 = [clientZone isEqualToClientZone:clientZone2];

  if (!v16)
  {
LABEL_11:
    v11 = 0;
    itemCopy = 0;
    goto LABEL_12;
  }

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v28 = 138412802;
    v29 = necessaryCopy;
    v30 = 2112;
    v31 = parentCopy;
    v32 = 2112;
    v33 = v17;
    _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] New item %@ older than a deleted directory %@ so marking dead%@", &v28, 0x20u);
  }

  itemCopy = [necessaryCopy newLocalItemWithDBRowID:{objc_msgSend(0, "dbRowID")}];
  [itemCopy markDead];
  v19 = [parentCopy st];
  ckInfo2 = [v19 ckInfo];
  deletionChangeToken = [ckInfo2 deletionChangeToken];

  if ([itemCopy isDocument])
  {
    asDocument = [itemCopy asDocument];
    currentVersion = [asDocument currentVersion];
    ckInfo3 = [currentVersion ckInfo];
    [ckInfo3 setDeletionChangeToken:deletionChangeToken];
  }

  v25 = [itemCopy st];
  ckInfo4 = [v25 ckInfo];
  [ckInfo4 setDeletionChangeToken:deletionChangeToken];

  [itemCopy markNeedsUploadOrSyncingUp];
  [itemCopy saveToDB];

  v11 = 1;
LABEL_12:

  return v11;
}

+ (BOOL)serverItemWouldBeParentedToDeadFolder:(id)folder si:(id)si rank:(int64_t)rank scheduler:(id)scheduler zone:(id)zone diffs:(unint64_t)diffs
{
  diffsCopy = diffs;
  v42 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  siCopy = si;
  schedulerCopy = scheduler;
  zoneCopy = zone;
  if (folderCopy && (diffsCopy & 0x20) == 0 || ![siCopy isLive])
  {
    goto LABEL_8;
  }

  parentLocalItemOnFS = [siCopy parentLocalItemOnFS];
  v19 = parentLocalItemOnFS;
  if (!parentLocalItemOnFS)
  {
    if (([self _handleApplyingDeletedUnlistedDirectoryIfNecessary:siCopy localItem:folderCopy parent:0] & 1) == 0)
    {
      if ([siCopy shouldBeGreedyForApply])
      {
        clientZone = [siCopy clientZone];
        parentItemIDOnFS = [siCopy parentItemIDOnFS];
        v24 = [clientZone serverItemByItemID:parentItemIDOnFS];

        if (!v24)
        {
          v29 = brc_bread_crumbs();
          v30 = brc_default_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            +[BRCServerChangesApplyUtil_Private serverItemWouldBeParentedToDeadFolder:si:rank:scheduler:zone:diffs:];
          }

          dbRowID = [zoneCopy dbRowID];
          [schedulerCopy setState:16 forRank:rank zoneRowID:dbRowID];

          parentZoneOnFS = [siCopy parentZoneOnFS];
          clientZone2 = [parentZoneOnFS clientZone];
          parentItemIDOnFS2 = [siCopy parentItemIDOnFS];
          v34 = [clientZone2 fetchParentChainIfNecessaryWithParentItemID:parentItemIDOnFS2 isUserWaiting:0];

          goto LABEL_14;
        }
      }

LABEL_12:
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        if (v19)
        {
          v35 = [MEMORY[0x277CCACA8] stringWithFormat:@" parent = %@", v19];
        }

        else
        {
          v35 = &stru_2837504F0;
        }

        *buf = 134218498;
        rankCopy = rank;
        v38 = 2112;
        v39 = v35;
        v40 = 2112;
        v41 = v25;
        _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] Apply Changes[%lld]: postponing rank (missing parent)%@%@", buf, 0x20u);
        if (v19)
        {
        }
      }

      parentZoneOnFS = [zoneCopy dbRowID];
      [schedulerCopy setState:21 forRank:rank zoneRowID:parentZoneOnFS];
LABEL_14:
    }

LABEL_15:

    v21 = 1;
    goto LABEL_16;
  }

  isDead = [parentLocalItemOnFS isDead];
  if ([self _handleApplyingDeletedUnlistedDirectoryIfNecessary:siCopy localItem:folderCopy parent:v19])
  {
    goto LABEL_15;
  }

  if (isDead)
  {
    goto LABEL_12;
  }

LABEL_8:
  v21 = 0;
LABEL_16:

  return v21;
}

+ (BOOL)serverItemDeadWithNoLiveLocalItem:(id)item si:(id)si rank:(int64_t)rank scheduler:(id)scheduler clientZone:(id)zone zone:(id)a8
{
  itemCopy = item;
  siCopy = si;
  schedulerCopy = scheduler;
  zoneCopy = zone;
  v17 = a8;
  if (siCopy && ![siCopy isDead] || itemCopy && !objc_msgSend(itemCopy, "isDead"))
  {
    v22 = 0;
  }

  else
  {
    [itemCopy markNeedsDeleteForRescheduleOfItem:0];
    if ([itemCopy isSharedToMeTopLevelItem])
    {
      asSharedToMeTopLevelItem = [itemCopy asSharedToMeTopLevelItem];
      [asSharedToMeTopLevelItem insertTombstoneAliasRecordInZone:0];
    }

    [itemCopy saveToDBForServerEdit:1 keepAliases:0];
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      +[BRCServerChangesApplyUtil_Private serverItemDeadWithNoLiveLocalItem:si:rank:scheduler:clientZone:zone:];
    }

    dbRowID = [v17 dbRowID];
    [schedulerCopy setState:0 forRank:rank zoneRowID:dbRowID];

    [zoneCopy didApplyTombstoneForRank:rank];
    v22 = 1;
  }

  return v22;
}

+ (BOOL)localItemHasUnsyncedChanges:(id)changes si:(id)si rank:(int64_t)rank scheduler:(id)scheduler clientZone:(id)zone zone:(id)a8 isDeleteOfShareRoot:(BOOL)root session:(id)self0
{
  v87 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  siCopy = si;
  schedulerCopy = scheduler;
  zoneCopy = zone;
  v19 = a8;
  sessionCopy = session;
  if (!root)
  {
    if (([changesCopy localDiffs] & 0x1000000000000000) != 0)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
      }

      dbRowID = [v19 dbRowID];
      v27 = schedulerCopy;
      v28 = 22;
      goto LABEL_13;
    }

    if ([BRCServerChangesApplyUtil shouldForceApplyContentForItem:changesCopy])
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
      }

      goto LABEL_4;
    }

    if (!changesCopy || ([changesCopy isIdleOrRejected] & 1) != 0)
    {
      goto LABEL_5;
    }

    if ([siCopy isDead])
    {
      isDead = [changesCopy isDead];
      if (([changesCopy isDirectory] & 1) == 0 && isDead)
      {
        v31 = brc_bread_crumbs();
        v32 = brc_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
        }

        [changesCopy markNeedsDeleteForRescheduleOfItem:0];
        [changesCopy saveToDB];
LABEL_47:
        [zoneCopy didApplyTombstoneForRank:rank];
        dbRowID = [v19 dbRowID];
        v27 = schedulerCopy;
        v28 = 0;
LABEL_13:
        [v27 setState:v28 forRank:rank zoneRowID:dbRowID];

LABEL_14:
        v23 = 1;
        goto LABEL_15;
      }

      if (([siCopy isBRAlias] & isDead) == 1)
      {
        v51 = brc_bread_crumbs();
        v52 = brc_default_log();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
        }

        goto LABEL_47;
      }
    }

    else
    {
      [changesCopy isDirectory];
      [siCopy isBRAlias];
    }

    itemID = [siCopy itemID];
    if ([itemID isDocumentsFolder])
    {
      itemID2 = [changesCopy itemID];
      isDocumentsFolder = [itemID2 isDocumentsFolder];

      if (isDocumentsFolder)
      {
        v36 = brc_bread_crumbs();
        v37 = brc_default_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
        }

        serverZone = [changesCopy serverZone];
        [changesCopy prepareForSyncUpInZone:serverZone];

        serverZone2 = [changesCopy serverZone];
        dbRowID2 = [serverZone2 dbRowID];
        [changesCopy markLatestSyncRequestAcknowledgedInZone:dbRowID2];

        [changesCopy saveToDB];
        goto LABEL_5;
      }
    }

    else
    {
    }

    v41 = brc_bread_crumbs();
    v42 = brc_default_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      isDead2 = [siCopy isDead];
      v72 = "";
      *buf = 138412802;
      v82 = changesCopy;
      if (isDead2)
      {
        v72 = "\n(dead in server truth)";
      }

      v83 = 2080;
      v84 = v72;
      v85 = 2112;
      v86 = v41;
      _os_log_debug_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEBUG, "[DEBUG] Suspending rank for item with conflicts: %@%s%@", buf, 0x20u);
    }

    if ([changesCopy isMigratingToFPFS])
    {
      v43 = 15;
    }

    else
    {
      v43 = 22;
    }

    dbRowID3 = [v19 dbRowID];
    [schedulerCopy setState:v43 forRank:rank zoneRowID:dbRowID3];

    if (!siCopy)
    {
LABEL_58:
      if ([changesCopy isSharedToMeChildItem])
      {
        v56 = [changesCopy st];
        ckInfo = [v56 ckInfo];

        if (!ckInfo)
        {
          localDiffs = [changesCopy localDiffs];
          clientZone = [changesCopy clientZone];
          dbRowID4 = [clientZone dbRowID];
          v61 = [changesCopy inFlightSyncUpDiffsInZoneRowID:dbRowID4] | localDiffs;

          if (v61)
          {
            if ((v61 & 0xFEFFFFFFFFFFE5FFLL) == 0)
            {
              v62 = brc_bread_crumbs();
              v63 = brc_default_log();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
              {
                +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
              }

              v64 = [siCopy st];
              ckInfo2 = [v64 ckInfo];
              v66 = [changesCopy st];
              [v66 setCkInfo:ckInfo2];

              [changesCopy saveToDBForServerEdit:1 keepAliases:1];
              containerScheduler = [sessionCopy containerScheduler];
              [containerScheduler scheduleSyncUpForSideCar];
            }
          }
        }
      }

      appLibrary = [changesCopy appLibrary];
      if (([appLibrary state] & 4) != 0 || !objc_msgSend(changesCopy, "needsSyncUp"))
      {
        goto LABEL_71;
      }

      clientZone2 = [changesCopy clientZone];
      if ([clientZone2 isSyncBlocked])
      {
        goto LABEL_70;
      }

      clientZone3 = [changesCopy clientZone];
      if (([clientZone3 syncState] & 5) != 0)
      {

LABEL_70:
LABEL_71:

        goto LABEL_14;
      }

      syncUpScheduler = [sessionCopy syncUpScheduler];
      v80 = [syncUpScheduler jobStateFor:changesCopy];

      if (v80 != 50)
      {
        goto LABEL_14;
      }

      itemID3 = [changesCopy itemID];
      if (([itemID3 isDocumentsFolder] & 1) == 0)
      {
        isSharedToMe = [changesCopy isSharedToMe];

        if (isSharedToMe)
        {
LABEL_82:
          appLibrary = [changesCopy clientZone];
          [appLibrary scheduleSyncUp];
          goto LABEL_71;
        }

        itemID3 = brc_bread_crumbs();
        v76 = brc_default_log();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          clientZone4 = [changesCopy clientZone];
          *buf = 138412546;
          v82 = clientZone4;
          v83 = 2112;
          v84 = itemID3;
          _os_log_impl(&dword_223E7A000, v76, OS_LOG_TYPE_DEFAULT, "[WARNING] client zone %@ forgot to sync up!%@", buf, 0x16u);
        }
      }

      goto LABEL_82;
    }

    v45 = [changesCopy st];
    ckInfo3 = [v45 ckInfo];
    if (ckInfo3 || ([v19 isPrivateZone] & 1) == 0)
    {
      if (![changesCopy isDocument])
      {
        if (([changesCopy sharingOptions] & 0x7C) != 4)
        {

          goto LABEL_58;
        }

        localDiffs2 = [changesCopy localDiffs];

        if ((localDiffs2 & 0x1000000000000000) != 0)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      }

      v79 = v45;
      asDocument = [changesCopy asDocument];
      currentVersion = [asDocument currentVersion];
      ckInfo4 = [currentVersion ckInfo];
      if (ckInfo4)
      {
        v50 = ckInfo4;
        if (([changesCopy sharingOptions] & 0x7C) != 4)
        {

          goto LABEL_58;
        }

        localDiffs3 = [changesCopy localDiffs];

        if ((localDiffs3 & 0x1000000000000000) != 0)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      }

      v45 = v79;
    }

LABEL_54:
    v54 = brc_bread_crumbs();
    v55 = brc_default_log();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v82 = changesCopy;
      v83 = 2112;
      v84 = siCopy;
      v85 = 2112;
      v86 = v54;
      _os_log_debug_impl(&dword_223E7A000, v55, OS_LOG_TYPE_DEBUG, "[DEBUG] Learning sharing options on local item %@ from %@%@", buf, 0x20u);
    }

    [changesCopy setSharingOptions:{objc_msgSend(siCopy, "sharingOptions")}];
    [changesCopy saveToDBForServerEdit:1 keepAliases:1];
    goto LABEL_58;
  }

  v21 = brc_bread_crumbs();
  v22 = brc_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
  }

LABEL_4:

LABEL_5:
  v23 = 0;
LABEL_15:

  return v23;
}

@end