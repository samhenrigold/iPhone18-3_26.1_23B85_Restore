@interface BRCServerChangesApplier
- (BOOL)_handleServerItemBRAliasIfNeeded:(id)needed li:(id)li jobID:(int64_t)d zone:(id)zone diffs:(unint64_t)diffs;
- (BRCServerChangesApplier)initWithAccountSession:(id)session;
- (void)applyChanges:(id)changes localItem:(id)item rank:(int64_t)rank zone:(id)zone;
@end

@implementation BRCServerChangesApplier

- (BRCServerChangesApplier)initWithAccountSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = BRCServerChangesApplier;
  v6 = [(BRCServerChangesApplier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
  }

  return v7;
}

- (BOOL)_handleServerItemBRAliasIfNeeded:(id)needed li:(id)li jobID:(int64_t)d zone:(id)zone diffs:(unint64_t)diffs
{
  neededCopy = needed;
  zoneCopy = zone;
  if (([li isBRAlias] & 1) != 0 || objc_msgSend(neededCopy, "isBRAlias"))
  {
    applyScheduler = [(BRCAccountSession *)self->_session applyScheduler];
    aliasTargetClientZone = [neededCopy aliasTargetClientZone];
    if ([aliasTargetClientZone isSharedZone])
    {
      aliasTargetItemID = [neededCopy aliasTargetItemID];
      v16 = [aliasTargetClientZone serverItemByItemID:aliasTargetItemID];
      if (v16)
      {
        v17 = v16;
        v18 = brc_bread_crumbs();
        v19 = brc_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [BRCServerChangesApplier _handleServerItemBRAliasIfNeeded:li:jobID:zone:diffs:];
        }

        v20 = [aliasTargetClientZone itemByItemID:aliasTargetItemID];
        [applyScheduler createApplyJobFromServerItem:v17 localItem:v20 state:1 kind:2];

        goto LABEL_14;
      }
    }

    if (![neededCopy aliasTargetIsShared])
    {
LABEL_15:
      dbRowID = [zoneCopy dbRowID];
      [applyScheduler setState:0 forRank:d zoneRowID:dbRowID];

      v21 = 1;
      goto LABEL_16;
    }

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [BRCServerChangesApplier _handleServerItemBRAliasIfNeeded:li:jobID:zone:diffs:];
    }

    aliasTargetItemID = [(BRCAccountSession *)self->_session containerScheduler];
    [aliasTargetItemID scheduleSyncDownForSharedDatabaseImmediately:0];
LABEL_14:

    goto LABEL_15;
  }

  v21 = 0;
LABEL_16:

  return v21;
}

- (void)applyChanges:(id)changes localItem:(id)item rank:(int64_t)rank zone:(id)zone
{
  v133 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  itemCopy = item;
  zoneCopy = zone;
  clientZone = [zoneCopy clientZone];
  applyScheduler = [(BRCAccountSession *)self->_session applyScheduler];
  v120 = [itemCopy diffAgainstServerItem:changesCopy];
  memset(v119, 0, sizeof(v119));
  __brc_create_section(0, "[BRCServerChangesApplier applyChanges:localItem:rank:zone:]", 109, 0, v119);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v30 = v119[0];
    v31 = BRCItemFieldsPrettyPrint(v120);
    v32 = v31;
    v33 = "new";
    *buf = 134219266;
    selfCopy = v30;
    v123 = 2048;
    if (!itemCopy)
    {
      v33 = "existing";
    }

    rankCopy = rank;
    v125 = 2080;
    v126 = v33;
    v127 = 2112;
    v128 = changesCopy;
    v129 = 2112;
    v130 = v31;
    v131 = 2112;
    v132 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Apply Changes[%lld]: %s item: %@\n diffs: %@%@", buf, 0x3Eu);
  }

  if (!(changesCopy | itemCopy))
  {
    v101 = brc_bread_crumbs();
    v102 = brc_default_log();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
    {
      [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
    }
  }

  if (!clientZone)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      selfCopy = changesCopy;
      v123 = 2112;
      rankCopy = itemCopy;
      v125 = 2112;
      v126 = v14;
      _os_log_fault_impl(&dword_223E7A000, v15, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: no client zone when applying %@ and %@%@", buf, 0x20u);
    }
  }

  v16 = [BRCServerChangesApplyUtil deletingShareRoot:changesCopy localItem:itemCopy];
  v17 = [(BRCServerChangesApplier *)self _handleServerItemBRAliasIfNeeded:changesCopy li:itemCopy jobID:rank zone:zoneCopy diffs:v120];
  LOBYTE(v103) = v16;
  if ([BRCServerChangesApplyUtil checkEarlyExitsPriorToApplying:itemCopy si:changesCopy rank:rank scheduler:applyScheduler zone:zoneCopy session:self->_session isDeleteOfShareRoot:v103 diffs:v120 clientZone:clientZone]|| v17)
  {
    goto LABEL_87;
  }

  if (![changesCopy isLive])
  {
    if (![BRCServerChangesApplyUtil handleApplyChangesForUnliveServerItem:itemCopy isDeleteOfShareRoot:v16 rank:rank scheduler:applyScheduler zone:zoneCopy session:self->_session])
    {
      [itemCopy markDead];
      [itemCopy saveToDBForServerEdit:1 keepAliases:0];
      clientZone2 = [itemCopy clientZone];
      [clientZone2 didApplyTombstoneForRank:{objc_msgSend(changesCopy, "rank")}];

      v108 = itemCopy;
LABEL_86:
      dbRowID = [zoneCopy dbRowID];
      [applyScheduler setState:0 forRank:rank zoneRowID:dbRowID];

      itemCopy = v108;
      goto LABEL_87;
    }

    goto LABEL_87;
  }

  v118 = 0;
  if ([itemCopy isShareAcceptationFault])
  {
    asShareAcceptationFault = [itemCopy asShareAcceptationFault];
    [asShareAcceptationFault markNeedsTransformIntoNormalFault];

    v118 = 1;
  }

  if ([changesCopy isDirectoryFault])
  {
    itemID = [changesCopy itemID];
    if ([itemID isDocumentsFolder])
    {
      appLibrary = [itemCopy appLibrary];
      v21 = ([appLibrary state] & 0x4000000) == 0;

      if (v21)
      {
        goto LABEL_18;
      }

      appLibrary2 = [itemCopy appLibrary];
      [appLibrary2 clearStateBits:0x4000000];

      itemID = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
      }
    }
  }

LABEL_18:
  bouncingAnalyzer = [(BRCAccountSession *)self->_session bouncingAnalyzer];
  [bouncingAnalyzer analyzeServerBouncingOfItem:itemCopy withServerItem:changesCopy];

  if ([itemCopy logicalNameNeedsRename])
  {
    v25 = [itemCopy st];
    [v25 clearBouncedName];
  }

  if (![BRCServerChangesApplyUtil handleEtagsChangesOnly:itemCopy si:changesCopy rank:rank scheduler:applyScheduler zone:zoneCopy diffs:&v120 needsSave:&v118])
  {
    if (itemCopy && ![itemCopy isDead])
    {
      v108 = itemCopy;
      if ([itemCopy isIdleOrRejected])
      {
        v35 = brc_bread_crumbs();
        v36 = brc_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
        }

        [itemCopy updateFromServerItem:changesCopy];
        v118 = 1;
        v108 = itemCopy;
      }

LABEL_62:
      if ((v120 & 0x60) == 0)
      {
        goto LABEL_76;
      }

      parentClientZone = [v108 parentClientZone];
      v63 = [v108 st];
      parentID = [v63 parentID];
      v65 = [v108 st];
      logicalName = [v65 logicalName];
      itemID2 = [v108 itemID];
      v107 = [parentClientZone itemByParentID:parentID andLogicalName:logicalName excludingItemID:itemID2];

      v68 = v107;
      if (v107)
      {
        itemID3 = [v107 itemID];
        isDocumentsFolder = [itemID3 isDocumentsFolder];

        if (isDocumentsFolder)
        {
          v71 = brc_bread_crumbs();
          v72 = brc_default_log();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
          {
            [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
          }

          [v108 markBouncedToNextAvailableBounceNumber:512];
          bouncingAnalyzer2 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
          [bouncingAnalyzer2 handleBounceIncidentDuringApplyWithServerItem:changesCopy bounceReason:512];

          v118 = 1;
        }

        else
        {
          v74 = brc_bread_crumbs();
          v75 = brc_default_log();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
          {
            [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
          }

          [v107 markBouncedToNextAvailableBounceNumber:502];
          bouncingAnalyzer3 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
          [bouncingAnalyzer3 handleBounceIncidentDuringApplyWithServerItem:changesCopy bounceReason:502];

          [v107 saveToDB];
          v77 = [v107 st];
          logicalNameWithoutLocalBounce = [v77 logicalNameWithoutLocalBounce];
          orig = [v108 orig];
          v80 = [orig st];
          logicalName2 = [v80 logicalName];
          v82 = [logicalNameWithoutLocalBounce isEqualToString:logicalName2];

          v68 = v107;
          if (!v82)
          {
            goto LABEL_75;
          }

          v83 = brc_bread_crumbs();
          v84 = brc_default_log();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
          }

          clientZone3 = [v107 clientZone];
          itemID4 = [v107 itemID];
          v87 = [clientZone3 serverItemByItemID:itemID4];

          applyScheduler2 = [(BRCAccountSession *)self->_session applyScheduler];
          [applyScheduler2 createApplyJobFromServerItem:v87 localItem:v107 state:1 kind:2];
        }

        v68 = v107;
      }

LABEL_75:

LABEL_76:
      if ([changesCopy isLive] && objc_msgSend(v108, "isRejected"))
      {
        v89 = brc_bread_crumbs();
        v90 = brc_default_log();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy = self;
          v123 = 2112;
          rankCopy = v89;
          _os_log_impl(&dword_223E7A000, v90, OS_LOG_TYPE_DEFAULT, "[WARNING] Rejected item was revived.  Marking sync as idle to apply server version for %@%@", buf, 0x16u);
        }

        [v108 markRejectedItemRemotelyRevived];
        v118 = 1;
      }

      if (v118 == 1)
      {
        [v108 saveToDBForServerEdit:1 keepAliases:0];
        if (!itemCopy)
        {
          itemID5 = [v108 itemID];
          v92 = +[BRCUserNotificationManager sharedManager];
          itemIDString = [itemID5 itemIDString];
          v94 = [v92 hasPendingNotificationsForIdentifier:itemIDString];

          if (v94)
          {
            fileObjectID = [v108 fileObjectID];
            clientZone4 = [v108 clientZone];
            v97 = [clientZone4 db];
            v112[0] = MEMORY[0x277D85DD0];
            v112[1] = 3221225472;
            v112[2] = __60__BRCServerChangesApplier_applyChanges_localItem_rank_zone___block_invoke_15;
            v112[3] = &unk_2784FF478;
            v98 = fileObjectID;
            v113 = v98;
            v114 = itemID5;
            [v97 scheduleFlushWithCheckpoint:0 whenFlushed:v112];
          }
        }
      }

      goto LABEL_86;
    }

    parentZoneOnFS = [changesCopy parentZoneOnFS];
    clientZone5 = [parentZoneOnFS clientZone];

    if (clientZone5)
    {
      v27 = itemCopy != 0;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      v28 = 0;
LABEL_50:
      v108 = [changesCopy newLocalItemWithDBRowID:{objc_msgSend(itemCopy, "dbRowID")}];

      v118 = 1;
      if (v28)
      {
        [v108 markBouncedToNextAvailableBounceNumber:500];
        bouncingAnalyzer4 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
        [bouncingAnalyzer4 handleBounceIncidentDuringApplyWithServerItem:changesCopy bounceReason:500];
      }

      if ([v108 isSharedToMeTopLevelItem])
      {
        asSharedItem = [changesCopy asSharedItem];
        fallbackParentAppLibraryOnFS = [asSharedItem fallbackParentAppLibraryOnFS];

        defaultClientZone = [fallbackParentAppLibraryOnFS defaultClientZone];
        asShareableItem = [v108 asShareableItem];
        unsaltedBookmarkData = [asShareableItem unsaltedBookmarkData];

        v50 = [defaultClientZone serverAliasByUnsaltedBookmarkData:unsaltedBookmarkData];
        LODWORD(asShareableItem) = v50 == 0;

        if (asShareableItem)
        {
          v51 = brc_bread_crumbs();
          v52 = brc_default_log();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy = v51;
            _os_log_impl(&dword_223E7A000, v52, OS_LOG_TYPE_DEFAULT, "[WARNING] No alias pointing to new item shared container, forcing sync down on private container%@", buf, 0xCu);
          }

          serverZone = [defaultClientZone serverZone];
          state = [serverZone state];

          if ((state & 4) != 0)
          {
            [defaultClientZone scheduleSyncDown];
          }

          else
          {
            itemGlobalID = [changesCopy itemGlobalID];
            serverZone2 = [defaultClientZone serverZone];
            v57 = [BRCItemID shareAliasRecordIDFromTargetItemID:itemGlobalID zone:serverZone2 hasDerivedShareAlias:0];

            v58 = [defaultClientZone locateRecordIfNecessaryForRecordID:v57 isUserWaiting:0];
            v115[0] = MEMORY[0x277D85DD0];
            v115[1] = 3221225472;
            v115[2] = __60__BRCServerChangesApplier_applyChanges_localItem_rank_zone___block_invoke;
            v115[3] = &unk_278502540;
            v59 = v57;
            v116 = v59;
            [v58 addLocateRecordCompletionBlock:v115];
          }
        }
      }

      v60 = brc_bread_crumbs();
      v61 = brc_default_log();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        v100 = @"new";
        *buf = 138412802;
        if (itemCopy)
        {
          v100 = @"revived";
        }

        selfCopy = v100;
        v123 = 2112;
        rankCopy = v108;
        v125 = 2112;
        v126 = v60;
        _os_log_debug_impl(&dword_223E7A000, v61, OS_LOG_TYPE_DEBUG, "[DEBUG] Created reservation for %@ item: %@%@", buf, 0x20u);
      }

      goto LABEL_62;
    }

    parentItemIDOnFS = [changesCopy parentItemIDOnFS];
    v117 = 0;
    if ([BRCServerChangesApplyUtil handleNonRevivedItemIfNecessary:0 si:changesCopy rank:rank scheduler:applyScheduler zone:zoneCopy hasInitialScanItemTypeMismatch:&v117])
    {

      goto LABEL_87;
    }

    if (v117 == 1)
    {
      bouncingAnalyzer5 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
      [bouncingAnalyzer5 reportInitialScanItemTypeMismatch:changesCopy];
    }

    v38 = [changesCopy st];
    logicalName3 = [v38 logicalName];
    v40 = [clientZone5 itemByParentID:parentItemIDOnFS andLogicalName:logicalName3];

    if (v40)
    {
      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        selfCopy = v40;
        v123 = 2112;
        rankCopy = changesCopy;
        v125 = 2112;
        v126 = v41;
        _os_log_debug_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEBUG, "[DEBUG] Found item %@ that collides with %@%@", buf, 0x20u);
      }

      if (-[BRCServerChangesApplier isDead](v40, "isDead") & 1) == 0 && ([changesCopy isSharedToMeTopLevelItem])
      {
        v28 = 1;
LABEL_49:

        goto LABEL_50;
      }

      bouncingAnalyzer6 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
      v44 = [bouncingAnalyzer6 analyzeBouncingOfItem:v40 withServerItem:changesCopy bounceReason:501];

      [(BRCServerChangesApplier *)v40 markBouncedToNextAvailableBounceNumber:v44];
      bouncingAnalyzer7 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
      [bouncingAnalyzer7 handleBounceIncidentDuringApplyWithServerItem:changesCopy bounceReason:v44];

      [(BRCServerChangesApplier *)v40 saveToDB];
    }

    v28 = 0;
    goto LABEL_49;
  }

LABEL_87:
  __brc_leave_section(v119);
}

void __60__BRCServerChangesApplier_applyChanges_localItem_rank_zone___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"fail";
    v9 = *(a1 + 32);
    v10 = 138413058;
    if (a2)
    {
      v8 = @"success";
    }

    v11 = v9;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] Fetch share alias for share alias record ID [%@]: %@ with error %@%@", &v10, 0x2Au);
  }
}

void __60__BRCServerChangesApplier_applyChanges_localItem_rank_zone___block_invoke_15(uint64_t a1)
{
  v2 = [*(a1 + 32) asString];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__BRCServerChangesApplier_applyChanges_localItem_rank_zone___block_invoke_2;
  v3[3] = &unk_278505BB0;
  v4 = *(a1 + 40);
  [BRCImportUtil forceLatestVersionOnDiskForItemID:v2 completionHandler:v3];
}

void __60__BRCServerChangesApplier_applyChanges_localItem_rank_zone___block_invoke_2(uint64_t a1)
{
  v3 = +[BRCUserNotificationManager sharedManager];
  v2 = [*(a1 + 32) itemIDString];
  [v3 schedulePendingNotificationWithIdentifier:v2];
}

- (void)applyChanges:localItem:rank:zone:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: li || si%@", v1, 0xCu);
}

@end