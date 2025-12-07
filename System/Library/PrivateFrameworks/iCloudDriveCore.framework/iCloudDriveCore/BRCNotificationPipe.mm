@interface BRCNotificationPipe
- (BRCNotificationPipe)initWithReceiver:(id)receiver manager:(id)manager startingRank:(unint64_t)rank;
- (BRCNotificationPipe)initWithXPCReceiver:(id)receiver client:(id)client manager:(id)manager startingRank:(unint64_t)rank;
- (BRCNotificationPipeDelegate)delegate;
- (NSString)description;
- (id)_initWithManager:(id)manager startingRank:(unint64_t)rank;
- (int)_isInterestingUpdate:(id)update;
- (void)__flush;
- (void)__performBlockafterDBAndNotifFlush:(id)flush session:(id)session description:(id)description error:(id)error;
- (void)_addIntraContainerUpdatesFromInterContainerUpdate:(id)update toArray:(id)array;
- (void)_gatherIfNeededAndFlushAsync;
- (void)_performBlock:(id)block whenNotifsAreFullyFlushedInAppLibrary:(id)library description:(id)description;
- (void)_performBlock:(id)block whenNotifsAreFullyFlushedInClientZone:(id)zone description:(id)description;
- (void)_prepareForSecondGatherWithRank:(unint64_t)rank;
- (void)_registerAsWatcherIfNeeded;
- (void)_stopWatchingItems;
- (void)_watchItem:(id)item options:(unsigned __int16)options gatherReply:(id)reply;
- (void)addDequeueCallback:(id)callback;
- (void)addNotification:(id)notification asDead:(BOOL)dead;
- (void)boostPriority:(id)priority;
- (void)close;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateIfWatchingAppLibraryIDs:(id)ds;
- (void)invalidateReceiverIfWatchingAppLibraryIDs:(id)ds;
- (void)listOperation:(id)operation wasReplacedByOperation:(id)byOperation;
- (void)processUpdates:(id)updates withRank:(unint64_t)rank;
- (void)watchItemWithFileObjectID:(id)d options:(unsigned __int16)options request:(id)request gatherReply:(id)reply;
- (void)watchItemsNamesPrefixedBy:(id)by inScopes:(unsigned __int16)scopes appLibraryIDs:(id)ds gatherReply:(id)reply;
- (void)watchScopes:(unsigned __int16)scopes appLibraryIDs:(id)ds gatherReply:(id)reply;
- (void)watchScopes:(unsigned __int16)scopes gatherReply:(id)reply;
- (void)watchScopes:(unsigned __int16)scopes trustedAppLibraryIDs:(id)ds gatherReply:(id)reply;
@end

@implementation BRCNotificationPipe

- (void)_gatherIfNeededAndFlushAsync
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)__flush
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  notifBatchSize = [v3 notifBatchSize];
  if (!self->_hasUpdatesInFlight)
  {
    v5 = notifBatchSize;
    if ([(BRNotificationQueue *)self->_notifs count])
    {
      notifs = self->_notifs;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __30__BRCNotificationPipe___flush__block_invoke;
      v7[3] = &unk_278501598;
      v7[4] = self;
      [(BRNotificationQueue *)notifs dequeue:v5 block:v7];
    }
  }
}

- (void)dealloc
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: _receiver == nil%@", v5, v6, v7, v8);
  }
}

- (void)_registerAsWatcherIfNeeded
{
  watchedAncestorFilenameToItem = [(BRCNotificationPipe *)self watchedAncestorFilenameToItem];

  if (!watchedAncestorFilenameToItem)
  {
    watchedAncestorFileObjectID = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
    if (watchedAncestorFileObjectID)
    {
      [(BRCNotificationManager *)self->_manager registerPipe:self asWatcherForFileObjectID:watchedAncestorFileObjectID];
    }

    MEMORY[0x2821F96F8]();
  }
}

- (void)addNotification:(id)notification asDead:(BOOL)dead
{
  deadCopy = dead;
  notificationCopy = notification;
  dispatch_assert_queue_V2(self->_queue);
  appLibrary = [notificationCopy appLibrary];
  if ([notificationCopy isBRAlias] && appLibrary && (-[NSMutableSet containsObject:](self->_externalAppLibraries, "containsObject:", appLibrary) & 1) == 0)
  {
    externalAppLibraries = self->_externalAppLibraries;
    if (!externalAppLibraries)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
      v10 = self->_externalAppLibraries;
      self->_externalAppLibraries = v9;

      externalAppLibraries = self->_externalAppLibraries;
    }

    [(NSMutableSet *)externalAppLibraries addObject:appLibrary];
    delegate = [(BRCNotificationPipe *)self delegate];
    [delegate notificationPipe:self willObserveAppLibrary:appLibrary];
  }

  client = self->_client;
  if (client && ![(BRCXPCClient *)client isSandboxed]&& ![(BRCXPCClient *)self->_client hasPrivateSharingInterfaceEntitlement])
  {
    notificationByStrippingSharingInfoIfNeeded = [notificationCopy notificationByStrippingSharingInfoIfNeeded];
    if (notificationByStrippingSharingInfoIfNeeded)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_notifications_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [BRCNotificationPipe addNotification:asDead:];
      }

      v16 = notificationByStrippingSharingInfoIfNeeded;
      notificationCopy = v16;
    }
  }

  [(BRNotificationQueue *)self->_notifs addNotification:notificationCopy asDead:deadCopy];
}

- (void)addDequeueCallback:(id)callback
{
  queue = self->_queue;
  callbackCopy = callback;
  dispatch_assert_queue_V2(queue);
  [(BRNotificationQueue *)self->_notifs addDequeueCallback:callbackCopy];
}

- (id)_initWithManager:(id)manager startingRank:(unint64_t)rank
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = BRCNotificationPipe;
  v8 = [(BRCNotificationPipe *)&v14 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CFAE70]);
    notifs = v8->_notifs;
    v8->_notifs = v9;

    objc_storeStrong(&v8->_manager, manager);
    v8->_initialGatherMaxRank = rank;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    recursiveScopeListOps = v8->_recursiveScopeListOps;
    v8->_recursiveScopeListOps = weakObjectsHashTable;
  }

  return v8;
}

- (BRCNotificationPipe)initWithXPCReceiver:(id)receiver client:(id)client manager:(id)manager startingRank:(unint64_t)rank
{
  receiverCopy = receiver;
  clientCopy = client;
  v12 = [(BRCNotificationPipe *)self _initWithManager:manager startingRank:rank];
  if (v12)
  {
    connection = [clientCopy connection];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__BRCNotificationPipe_initWithXPCReceiver_client_manager_startingRank___block_invoke;
    v20[3] = &unk_2784FF540;
    v14 = v12;
    v21 = v14;
    v15 = [receiverCopy remoteObjectProxyWithErrorHandler:v20];
    receiver = v14->_receiver;
    v14->_receiver = v15;

    _queue = [connection _queue];
    queue = v14->_queue;
    v14->_queue = _queue;

    objc_storeStrong(&v14->_client, client);
  }

  return v12;
}

void __71__BRCNotificationPipe_initWithXPCReceiver_client_manager_startingRank___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  memset(v7, 0, sizeof(v7));
  __brc_create_section(0, "[BRCNotificationPipe initWithXPCReceiver:client:manager:startingRank:]_block_invoke", 471, 0, v7);
  v4 = brc_bread_crumbs();
  v5 = brc_notifications_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v7[0];
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx %@ got error %@%@", buf, 0x2Au);
  }

  [*(a1 + 32) invalidate];
  __brc_leave_section(v7);
}

- (BRCNotificationPipe)initWithReceiver:(id)receiver manager:(id)manager startingRank:(unint64_t)rank
{
  receiverCopy = receiver;
  v10 = [(BRCNotificationPipe *)self _initWithManager:manager startingRank:rank];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 1, receiver);
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(v12, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.brc.pipe", v13);

    queue = v11->_queue;
    v11->_queue = v14;
  }

  return v11;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:64];
  [v3 appendFormat:@"<%@ %p", objc_opt_class(), self];
  if (self->_client)
  {
    [v3 appendString:@" "];
    v4 = [(BRCXPCClient *)self->_client description];
    [v3 appendString:v4];
  }

  if (self->_gatherer)
  {
    [v3 appendString:@" gathering"];
  }

  if ([(NSSet *)self->_watchedAppLibraryIDs count])
  {
    allObjects = [(NSSet *)self->_watchedAppLibraryIDs allObjects];
    v6 = [allObjects componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" {%@}", v6];
  }

  watchKind = self->_watchKind;
  if (watchKind)
  {
    watchItemOptions = self->_watchItemOptions;
    v12 = @" {children of ";
    if ((watchItemOptions & 2) == 0)
    {
      v12 = @" {item at ";
    }

    if ((watchItemOptions & 4) != 0)
    {
      v13 = @" {descendants of ";
    }

    else
    {
      v13 = v12;
    }

    [v3 appendString:v13];
    watchedAncestorItemGlobalID = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];

    if (watchedAncestorItemGlobalID)
    {
      watchedAncestorItemGlobalID2 = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
      v16 = [watchedAncestorItemGlobalID2 description];
      [v3 appendString:v16];

      watchedAncestorFileObjectID = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
    }

    else
    {
      watchedAncestorFilenameToItem = [(BRCNotificationPipe *)self watchedAncestorFilenameToItem];

      watchedAncestorFileObjectID = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
      if (watchedAncestorFilenameToItem)
      {
        watchedAncestorFilenameToItem2 = [(BRCNotificationPipe *)self watchedAncestorFilenameToItem];
        [v3 appendFormat:@"[fid:%@ n:%@]", watchedAncestorFileObjectID, watchedAncestorFilenameToItem2];

        goto LABEL_32;
      }
    }

    if (!watchedAncestorFileObjectID)
    {
LABEL_33:
      v20 = BRCPrettyPrintBitmap();
      v21 = v20;
      if ((self->_watchKind & 0x20) != 0)
      {
        v22 = @"|withAliases";
      }

      else
      {
        v22 = &stru_2837504F0;
      }

      [v3 appendFormat:@" (%@%@)}", v20, v22];

      goto LABEL_37;
    }

    watchedAncestorFileObjectID = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
    [v3 appendFormat:@"[fid:%@]", watchedAncestorFileObjectID];
LABEL_32:

    goto LABEL_33;
  }

  if ((watchKind & 0x26) == 0)
  {
    goto LABEL_37;
  }

  [v3 appendString:@" {NSMDQ"];
  v8 = self->_watchKind;
  if ((v8 & 4) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_41:
    [v3 appendString:@" docs"];
    v8 = self->_watchKind;
    if ((v8 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  [v3 appendString:@" data"];
  v8 = self->_watchKind;
  if ((v8 & 2) != 0)
  {
    goto LABEL_41;
  }

LABEL_11:
  if ((v8 & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((v8 & 0x80) != 0)
  {
    v9 = @" dirs-only";
  }

  else
  {
    v9 = @" dirs";
  }

  [v3 appendString:v9];
LABEL_16:
  v10 = self->_watchKind;
  if ((v10 & 0x10) == 0)
  {
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_44:
    [v3 appendString:@" ext"];
    if ((self->_watchKind & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  [v3 appendString:@" faults"];
  v10 = self->_watchKind;
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_44;
  }

LABEL_18:
  if ((v10 & 0x40) != 0)
  {
LABEL_19:
    [v3 appendString:@" trash"];
  }

LABEL_20:
  [v3 appendString:@"}"];
LABEL_37:
  [v3 appendFormat:@" queued:%ld>", -[BRNotificationQueue count](self->_notifs, "count")];

  return v3;
}

- (int)_isInterestingUpdate:(id)update
{
  v79 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  dispatch_assert_queue_V2(self->_queue);
  watchedAncestorFilenameToItem = [(BRCNotificationPipe *)self watchedAncestorFilenameToItem];

  if (watchedAncestorFilenameToItem)
  {
    watchedAncestorFileObjectID = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];

    if (watchedAncestorFileObjectID)
    {
      parentFileObjectID = [updateCopy parentFileObjectID];
      watchedAncestorFileObjectID2 = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
      v9 = [parentFileObjectID isEqualToFileObjectID:watchedAncestorFileObjectID2];
    }

    else
    {
      v9 = 0;
    }

    watchedAncestorFilenameToItem2 = [(BRCNotificationPipe *)self watchedAncestorFilenameToItem];
    if (!v9 || ([updateCopy logicalName], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "br_isEqualToStringForHFS:isCaseSensitive:", watchedAncestorFilenameToItem2, 1), v11, !v12))
    {
      watchedAncestorFileObjectID6 = brc_bread_crumbs();
      v28 = brc_notifications_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [BRCNotificationPipe _isInterestingUpdate:];
      }

      v29 = 0;
      goto LABEL_109;
    }

    [(BRCNotificationPipe *)self setWatchedAncestorFilenameToItem:0];
    fileObjectID = [updateCopy fileObjectID];
    [(BRCNotificationPipe *)self setWatchedAncestorFileObjectID:fileObjectID];

    [(BRCNotificationPipe *)self _registerAsWatcherIfNeeded];
  }

  watchedAncestorFileObjectID3 = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
  if (watchedAncestorFileObjectID3 && (v15 = watchedAncestorFileObjectID3, [updateCopy fileObjectID], v16 = objc_claimAutoreleasedReturnValue(), -[BRCNotificationPipe watchedAncestorFileObjectID](self, "watchedAncestorFileObjectID"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToFileObjectID:", v17), v17, v16, v15, v18))
  {
    watchedAncestorItemGlobalID = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
    itemGlobalID = [updateCopy itemGlobalID];
    v21 = [watchedAncestorItemGlobalID isEqualToItemGlobalID:itemGlobalID];

    if ((v21 & 1) == 0)
    {
      watchedAncestorItemGlobalID2 = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
      [(BRCNotificationPipe *)self setOldWatchedAncestorItemGlobalID:watchedAncestorItemGlobalID2];

      itemGlobalID2 = [updateCopy itemGlobalID];
      [(BRCNotificationPipe *)self setWatchedAncestorItemGlobalID:itemGlobalID2];

      [(BRCNotificationPipe *)self _registerAsWatcherIfNeeded];
      oldWatchedAncestorItemGlobalID = [(BRCNotificationPipe *)self oldWatchedAncestorItemGlobalID];

      if (oldWatchedAncestorItemGlobalID)
      {
        v25 = brc_bread_crumbs();
        v26 = brc_notifications_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [(BRCNotificationPipe *)self _isInterestingUpdate:v25, v26];
        }
      }

      else
      {
        v25 = brc_bread_crumbs();
        v26 = brc_notifications_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [(BRCNotificationPipe *)self _isInterestingUpdate:v25, v26];
        }
      }
    }
  }

  else
  {
    watchedAncestorItemGlobalID3 = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
    if (watchedAncestorItemGlobalID3)
    {
      v31 = watchedAncestorItemGlobalID3;
      itemGlobalID3 = [updateCopy itemGlobalID];
      watchedAncestorItemGlobalID4 = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
      v34 = [itemGlobalID3 isEqualToItemGlobalID:watchedAncestorItemGlobalID4];

      if (v34)
      {
        watchedAncestorFileObjectID4 = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
        fileObjectID2 = [updateCopy fileObjectID];
        v37 = [watchedAncestorFileObjectID4 isEqualToFileObjectID:fileObjectID2];

        if ((v37 & 1) == 0)
        {
          v38 = brc_bread_crumbs();
          v39 = brc_notifications_log();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            watchedAncestorItemGlobalID5 = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
            fileObjectID3 = [updateCopy fileObjectID];
            watchedAncestorFileObjectID5 = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
            v71 = 138413058;
            v72 = watchedAncestorItemGlobalID5;
            v73 = 2112;
            v74 = fileObjectID3;
            v75 = 2112;
            v76 = watchedAncestorFileObjectID5;
            v77 = 2112;
            v78 = v38;
            _os_log_debug_impl(&dword_223E7A000, v39, OS_LOG_TYPE_DEBUG, "[NOTIF] Learning new fileObjectID for %@: %@ (was %@)%@", &v71, 0x2Au);
          }

          fileObjectID4 = [updateCopy fileObjectID];
          [(BRCNotificationPipe *)self setWatchedAncestorFileObjectID:fileObjectID4];

          [(BRCNotificationPipe *)self _registerAsWatcherIfNeeded];
        }
      }
    }
  }

  watchedAncestorFilenameToItem2 = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
  watchedAncestorFileObjectID6 = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
  watchKind = self->_watchKind;
  if ((watchKind & 6) != 0)
  {
    appLibrary = [updateCopy appLibrary];
    includesDataScope = [appLibrary includesDataScope];

    v44 = self->_watchKind;
    if ([updateCopy isDirectory] && (self->_watchKind & 8) == 0)
    {
      v28 = brc_bread_crumbs();
      v45 = brc_notifications_log();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
LABEL_40:
        v29 = 0;
LABEL_108:

LABEL_109:
        goto LABEL_110;
      }

LABEL_30:
      [BRCNotificationPipe _isInterestingUpdate:];
      goto LABEL_40;
    }

    if ((((v44 & 6) != 6) & includesDataScope) != 1)
    {
      if ([updateCopy isInTrashScope] && (self->_watchKind & 0x40) == 0)
      {
        v28 = brc_bread_crumbs();
        v45 = brc_notifications_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [BRCNotificationPipe _isInterestingUpdate:];
        }

        goto LABEL_107;
      }

      watchedAppLibraryIDs = self->_watchedAppLibraryIDs;
      appLibraryID = [updateCopy appLibraryID];
      LOBYTE(watchedAppLibraryIDs) = [(NSSet *)watchedAppLibraryIDs containsObject:appLibraryID];

      if (watchedAppLibraryIDs)
      {
        v28 = brc_bread_crumbs();
        v45 = brc_notifications_log();
        v29 = 2;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [BRCNotificationPipe _isInterestingUpdate:];
        }

        goto LABEL_108;
      }

      v28 = brc_bread_crumbs();
      v45 = brc_notifications_log();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_107;
      }

LABEL_77:
      [BRCNotificationPipe _isInterestingUpdate:];
LABEL_107:
      v29 = 1;
      goto LABEL_108;
    }

    watchKind = self->_watchKind;
  }

  if (watchKind)
  {
    if (self->_watchItemOptions)
    {
      if (watchedAncestorFileObjectID6)
      {
        fileObjectID5 = [updateCopy fileObjectID];
        v48 = [fileObjectID5 isEqualToFileObjectID:watchedAncestorFileObjectID6];

        if (v48)
        {
          v28 = brc_bread_crumbs();
          v45 = brc_notifications_log();
          v29 = 2;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            [BRCNotificationPipe _isInterestingUpdate:];
          }

          goto LABEL_108;
        }
      }

      if (watchedAncestorFilenameToItem2)
      {
        itemGlobalID4 = [updateCopy itemGlobalID];
        v52 = [itemGlobalID4 isEqualToItemGlobalID:watchedAncestorFilenameToItem2];

        if (v52)
        {
          v28 = brc_bread_crumbs();
          v45 = brc_notifications_log();
          v29 = 2;
          if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_108;
          }

          goto LABEL_100;
        }
      }
    }

    if ((self->_watchItemOptions & 2) != 0 && watchedAncestorFileObjectID6)
    {
      parentFileObjectID2 = [updateCopy parentFileObjectID];
      v54 = [parentFileObjectID2 isEqualToFileObjectID:watchedAncestorFileObjectID6];

      if (v54)
      {
        v28 = brc_bread_crumbs();
        v45 = brc_notifications_log();
        v29 = 2;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [BRCNotificationPipe _isInterestingUpdate:];
        }

        goto LABEL_108;
      }

      oldParentFileObjectID = [updateCopy oldParentFileObjectID];
      v59 = [oldParentFileObjectID isEqualToFileObjectID:watchedAncestorFileObjectID6];

      if (v59)
      {
        v28 = brc_bread_crumbs();
        v45 = brc_notifications_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [BRCNotificationPipe _isInterestingUpdate:];
        }

        goto LABEL_107;
      }
    }
  }

  isDocumentsFolder = [updateCopy isDocumentsFolder];
  if ((self->_watchKind & 0x46) == 0 && (self->_watchItemOptions & 4) == 0)
  {
    goto LABEL_36;
  }

  if (isDocumentsFolder)
  {
    v28 = brc_bread_crumbs();
    v45 = brc_notifications_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [BRCNotificationPipe _isInterestingUpdate:];
    }

    goto LABEL_40;
  }

  if ([updateCopy isDirectory] && (self->_watchKind & 8) == 0)
  {
    v28 = brc_bread_crumbs();
    v45 = brc_notifications_log();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_40;
    }

    goto LABEL_30;
  }

  if ([updateCopy br_downloadStatus] == 1 && (self->_watchKind & 0x10) == 0)
  {
    v28 = brc_bread_crumbs();
    v45 = brc_notifications_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [BRCNotificationPipe _isInterestingUpdate:];
    }

    goto LABEL_40;
  }

  v55 = self->_watchedAppLibraryIDs;
  appLibraryID2 = [updateCopy appLibraryID];
  LOBYTE(v55) = [(NSSet *)v55 containsObject:appLibraryID2];

  if ((v55 & 1) == 0)
  {
    v28 = brc_bread_crumbs();
    v45 = brc_notifications_log();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_107;
    }

    goto LABEL_77;
  }

  v57 = self->_watchKind;
  if ((v57 & 0x46) == 0)
  {
    if (!watchedAncestorFilenameToItem2)
    {
      goto LABEL_101;
    }

    if ((v57 & 1) == 0)
    {
      [BRCNotificationPipe _isInterestingUpdate:];
    }

    parentGlobalIDs = [updateCopy parentGlobalIDs];
    v61 = [parentGlobalIDs containsObject:watchedAncestorFilenameToItem2];

    if (v61)
    {
      v28 = brc_bread_crumbs();
      v45 = brc_notifications_log();
      v29 = 2;
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_108;
      }
    }

    else
    {
      oldWatchedAncestorItemGlobalID2 = [(BRCNotificationPipe *)self oldWatchedAncestorItemGlobalID];
      if (!oldWatchedAncestorItemGlobalID2)
      {
        goto LABEL_101;
      }

      v66 = oldWatchedAncestorItemGlobalID2;
      parentGlobalIDs2 = [updateCopy parentGlobalIDs];
      oldWatchedAncestorItemGlobalID3 = [(BRCNotificationPipe *)self oldWatchedAncestorItemGlobalID];
      v69 = [parentGlobalIDs2 containsObject:oldWatchedAncestorItemGlobalID3];

      if (!v69)
      {
        goto LABEL_101;
      }

      v28 = brc_bread_crumbs();
      v45 = brc_notifications_log();
      v29 = 2;
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_108;
      }
    }

LABEL_100:
    [BRCNotificationPipe _isInterestingUpdate:];
    goto LABEL_108;
  }

  if ([updateCopy isInDocumentScope])
  {
    if ((self->_watchKind & 2) != 0)
    {
      v28 = brc_bread_crumbs();
      v45 = brc_notifications_log();
      v29 = 2;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [BRCNotificationPipe _isInterestingUpdate:];
      }

      goto LABEL_108;
    }
  }

  else if ([updateCopy isInDataScope])
  {
    if ((self->_watchKind & 4) != 0)
    {
      v28 = brc_bread_crumbs();
      v45 = brc_notifications_log();
      v29 = 2;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [BRCNotificationPipe _isInterestingUpdate:];
      }

      goto LABEL_108;
    }
  }

  else if ([updateCopy isInTrashScope] && (self->_watchKind & 0x40) != 0)
  {
    v28 = brc_bread_crumbs();
    v45 = brc_notifications_log();
    v29 = 2;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [BRCNotificationPipe _isInterestingUpdate:];
    }

    goto LABEL_108;
  }

LABEL_101:
  if (([updateCopy diffs] & 0xC010) != 0)
  {
    v28 = brc_bread_crumbs();
    v45 = brc_notifications_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [BRCNotificationPipe _isInterestingUpdate:];
    }

    goto LABEL_107;
  }

  if ([updateCopy isDead])
  {
    v28 = brc_bread_crumbs();
    v45 = brc_notifications_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [BRCNotificationPipe _isInterestingUpdate:];
    }

    goto LABEL_107;
  }

LABEL_36:
  v29 = 0;
LABEL_110:

  return v29;
}

- (void)_addIntraContainerUpdatesFromInterContainerUpdate:(id)update toArray:(id)array
{
  updateCopy = update;
  arrayCopy = array;
  if ([updateCopy isBRAlias])
  {
    if ((self->_watchKind & 0x20) == 0)
    {
      goto LABEL_9;
    }

    watchedAppLibraryIDs = self->_watchedAppLibraryIDs;
    aliasSourceAppLibraryID = [updateCopy aliasSourceAppLibraryID];
    LOBYTE(watchedAppLibraryIDs) = [(NSSet *)watchedAppLibraryIDs containsObject:aliasSourceAppLibraryID];

    if ((watchedAppLibraryIDs & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    [arrayCopy addObject:updateCopy];
    goto LABEL_9;
  }

  v9 = self->_watchedAppLibraryIDs;
  appLibraryID = [updateCopy appLibraryID];
  LOBYTE(v9) = [(NSSet *)v9 containsObject:appLibraryID];

  if (v9)
  {
    goto LABEL_8;
  }

  oldAppLibraryID = [updateCopy oldAppLibraryID];
  if (oldAppLibraryID)
  {
    v12 = oldAppLibraryID;
    v13 = self->_watchedAppLibraryIDs;
    oldAppLibraryID2 = [updateCopy oldAppLibraryID];
    LODWORD(v13) = [(NSSet *)v13 containsObject:oldAppLibraryID2];

    if (v13)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)_prepareForSecondGatherWithRank:(unint64_t)rank
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_receiver)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_notifications_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCNotificationPipe _prepareForSecondGatherWithRank:];
    }

    dispatch_group_enter(self->_gatherGroup);
    if (self->_gatherer)
    {
      [BRCNotificationPipe _prepareForSecondGatherWithRank:];
    }

    v7 = [BRCDataOrDocsScopeGatherer alloc];
    allObjects = [(NSSet *)self->_watchedAppLibraries allObjects];
    initialGatherMaxRank = self->_initialGatherMaxRank;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__BRCNotificationPipe__prepareForSecondGatherWithRank___block_invoke;
    v12[3] = &unk_2784FF540;
    v12[4] = self;
    v10 = [(BRCDataOrDocsScopeGatherer *)v7 initWithNotificationPipe:self appLibraries:allObjects startingRank:initialGatherMaxRank maxRank:rank + 1 withDeadItems:1 gatherReply:v12];
    gatherer = self->_gatherer;
    self->_gatherer = v10;

    self->_initialGatherMaxRank = 0;
  }
}

void __55__BRCNotificationPipe__prepareForSecondGatherWithRank___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_notifications_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __55__BRCNotificationPipe__prepareForSecondGatherWithRank___block_invoke_cold_1();
  }

  dispatch_group_leave(*(*(a1 + 32) + 80));
}

- (void)processUpdates:(id)updates withRank:(unint64_t)rank
{
  v38 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  if (self->_receiver)
  {
    if (self->_watchKind)
    {
      memset(v30, 0, sizeof(v30));
      __brc_create_section(0, "[BRCNotificationPipe processUpdates:withRank:]", 804, 0, v30);
      v7 = brc_bread_crumbs();
      v8 = brc_notifications_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134219010;
        *&buf[4] = v30[0];
        *&buf[12] = 2112;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v33 = updatesCopy;
        v34 = 2048;
        rankCopy = rank;
        v36 = 2112;
        v37 = v7;
        _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx %@: processing updates %@ [rank:%lld]%@", buf, 0x34u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v33) = 0;
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__BRCNotificationPipe_processUpdates_withRank___block_invoke;
      block[3] = &unk_278501570;
      block[5] = buf;
      block[6] = rank;
      block[4] = self;
      dispatch_sync(queue, block);
      v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(updatesCopy, "count")}];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = updatesCopy;
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v12)
      {
        v13 = *v26;
        do
        {
          v14 = 0;
          do
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v25 + 1) + 8 * v14);
            v16 = objc_autoreleasePoolPush();
            [(BRCNotificationPipe *)self _addIntraContainerUpdatesFromInterContainerUpdate:v15 toArray:v10];
            objc_autoreleasePoolPop(v16);
            ++v14;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v12);
      }

      v17 = [v11 count];
      if (v17 != [v10 count])
      {
        if ([v10 count])
        {
          v18 = brc_bread_crumbs();
          v19 = brc_notifications_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [BRCNotificationPipe processUpdates:withRank:];
          }
        }

        else
        {
          v18 = brc_bread_crumbs();
          v19 = brc_notifications_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [BRCNotificationPipe processUpdates:withRank:];
          }
        }
      }

      if ([v10 count] || *(*&buf[8] + 24) == 1)
      {
        v21 = self->_queue;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __47__BRCNotificationPipe_processUpdates_withRank___block_invoke_138;
        v22[3] = &unk_2784FF478;
        v23 = v10;
        selfCopy = self;
        dispatch_sync(v21, v22);
      }

      _Block_object_dispose(buf, 8);
      __brc_leave_section(v30);
    }

    else
    {
      initialGatherMaxRank = self->_initialGatherMaxRank;
      if (initialGatherMaxRank && initialGatherMaxRank < rank && !self->_secondaryGatherMaxRank)
      {
        self->_secondaryGatherMaxRank = rank;
      }
    }
  }
}

void *__47__BRCNotificationPipe_processUpdates_withRank___block_invoke(void *a1)
{
  result = a1[4];
  v3 = result[12];
  if (v3 && (v4 = a1[6], v3 < v4) && !result[13])
  {
    if (result[9])
    {
      result[13] = v4;
    }

    else
    {
      result = [result _prepareForSecondGatherWithRank:?];
      *(*(a1[5] + 8) + 24) = 1;
    }
  }

  else if (!result[9] && !result[13])
  {
    result[12] = 0;
  }

  return result;
}

uint64_t __47__BRCNotificationPipe_processUpdates_withRank___block_invoke_138(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [*(a1 + 40) _isInterestingUpdate:{v7, v11}];
        if (v9)
        {
          [*(a1 + 40) addNotification:v7 asDead:v9 == 1];
        }

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _gatherIfNeededAndFlushAsync];
}

void __30__BRCNotificationPipe___flush__block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v31 = a1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v18 = brc_bread_crumbs();
    v19 = brc_notifications_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 32);
      *buf = 138412802;
      v44 = v29;
      v45 = 2048;
      v46 = [v3 count];
      v47 = 2112;
      v48 = v18;
      _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[NOTIF] %@: sending %ld notifications:%@", buf, 0x20u);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = v3;
    v21 = [v20 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v21)
    {
      v23 = v21;
      v24 = *v38;
      *&v22 = 138412546;
      v30 = v22;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v37 + 1) + 8 * i);
          v27 = brc_bread_crumbs();
          v28 = brc_notifications_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = v30;
            v44 = v26;
            v45 = 2112;
            v46 = v27;
            _os_log_debug_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEBUG, "[NOTIF]   %@%@", buf, 0x16u);
          }
        }

        v23 = [v20 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v23);
    }

    a1 = v31;
  }

  *(*(a1 + 32) + 88) = 1;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count", v30)}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (j = 0; j != v7; ++j)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * j);
        v11 = [v10 fileObjectID];
        if ([v11 isAppLibraryRoot] && (objc_msgSend(v11, "isCloudDocsRoot") & 1) == 0)
        {
          v13 = [v10 appLibrary];
          v14 = [v13 containerMetadata];
          v15 = [(BRQueryItem *)BRCNotification containerItemForContainer:v14 withRepresentativeItem:v10];
          [v4 addObject:v15];
        }

        else
        {
          v12 = [v10 asFileProviderItem];

          if (v12)
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v7);
  }

  v16 = *(v31 + 32);
  v17 = *(v16 + 8);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __30__BRCNotificationPipe___flush__block_invoke_140;
  v32[3] = &unk_2784FF450;
  v32[4] = v16;
  [v17 receiveUpdates:v4 reply:v32];
}

void __30__BRCNotificationPipe___flush__block_invoke_140(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  __brc_create_section(0, "[BRCNotificationPipe __flush]_block_invoke", 900, 0, v17);
  v2 = brc_bread_crumbs();
  v3 = brc_notifications_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    *block = 134218498;
    *&block[4] = v17[0];
    *&block[12] = 2112;
    *&block[14] = v13;
    *&block[22] = 2112;
    v21 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx %@: received notification acknowledgement%@", block, 0x20u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __30__BRCNotificationPipe___flush__block_invoke_141;
  v16[3] = &unk_2784FF450;
  v16[4] = v4;
  v6 = v5;
  v7 = v16;
  v8 = objc_autoreleasePoolPush();
  v18 = 0uLL;
  v19 = 0;
  __brc_create_section(0, "brc_dispatch_async_autorelease_with_logs", 297, 0, &v18);
  v9 = brc_bread_crumbs();
  v10 = brc_notifications_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = v18;
    label = dispatch_queue_get_label(v6);
    *block = 134218498;
    *&block[4] = v14;
    *&block[12] = 2080;
    *&block[14] = label;
    *&block[22] = 2112;
    v21 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[NOTIF] ┣%llx dispatching to %s%@", block, 0x20u);
  }

  v24 = v18;
  v25 = v19;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = __brc_dispatch_async_autorelease_with_logs_block_invoke_0;
  v21 = &unk_2784FF568;
  v11 = v6;
  v22 = v11;
  v12 = v7;
  v23 = v12;
  dispatch_async(v11, block);

  objc_autoreleasePoolPop(v8);
  __brc_leave_section(v17);
}

uint64_t __30__BRCNotificationPipe___flush__block_invoke_141(uint64_t a1)
{
  *(*(a1 + 32) + 88) = 0;
  [*(*(a1 + 32) + 16) processDequeueCallbacks];
  v2 = *(a1 + 32);

  return [v2 _gatherIfNeededAndFlushAsync];
}

void __51__BRCNotificationPipe__gatherIfNeededAndFlushAsync__block_invoke(uint64_t a1, char a2, void *a3)
{
  v7 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 120));
  v5 = *(a1 + 32);
  if (a2)
  {
    goto LABEL_6;
  }

  v6 = v5[9];
  if (v6 == v7)
  {
    v5[9] = 0;

    v5 = *(a1 + 32);
  }

  if (!v5[13] || v5[9])
  {
LABEL_6:
    [v5 __flush];
  }

  else
  {
    [v5 _prepareForSecondGatherWithRank:?];
    *(*(a1 + 32) + 104) = 0;
    [*(a1 + 32) _gatherIfNeededAndFlushAsync];
  }
}

- (void)_stopWatchingItems
{
  v38 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_watchedAppLibrariesFlags)
  {
    [(BRCNotificationManager *)self->_manager unregisterAppLibraries:self->_watchedAppLibraries forFlags:?];
    self->_watchedAppLibrariesFlags = 0;
  }

  [(BRCNotificationManager *)self->_manager unregisterPipeAsWatcher:self];
  delegate = [(BRCNotificationPipe *)self delegate];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = self->_watchedAppLibraries;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v5)
  {
    v6 = *v32;
    do
    {
      v7 = 0;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [delegate notificationPipe:self didObserveAppLibrary:*(*(&v31 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(NSSet *)v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v5);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = self->_externalAppLibraries;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v9)
  {
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [delegate notificationPipe:self didObserveAppLibrary:*(*(&v27 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v9);
  }

  watchedAppLibraries = self->_watchedAppLibraries;
  self->_watchedAppLibraries = 0;

  [(BRCNotificationPipe *)self setWatchedAncestorFileObjectID:0];
  [(BRCNotificationPipe *)self setWatchedAncestorItemGlobalID:0];
  [(BRCNotificationPipe *)self setWatchedAncestorFilenameToItem:0];
  [(BRCDataOrDocsScopeGatherer *)self->_gatherer invalidate];
  gatherer = self->_gatherer;
  self->_gatherer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_listOp);
  v15 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained endObservingChangesWithDelegate:self];
    objc_storeWeak(&self->_listOp, 0);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = selfCopy->_recursiveScopeListOps;
  v18 = [(NSHashTable *)v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v18)
  {
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v23 + 1) + 8 * v20++) endObservingChanges];
      }

      while (v18 != v20);
      v18 = [(NSHashTable *)v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v18);
  }

  [(NSHashTable *)selfCopy->_recursiveScopeListOps removeAllObjects];
  objc_sync_exit(selfCopy);

  boostReply = selfCopy->_boostReply;
  if (boostReply)
  {
    boostReply[2]();
    v22 = selfCopy->_boostReply;
    selfCopy->_boostReply = 0;
  }
}

- (void)listOperation:(id)operation wasReplacedByOperation:(id)byOperation
{
  obj = byOperation;
  operationCopy = operation;
  WeakRetained = objc_loadWeakRetained(&self->_listOp);

  if (WeakRetained == operationCopy)
  {
    objc_storeWeak(&self->_listOp, obj);
  }
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__BRCNotificationPipe_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)__performBlockafterDBAndNotifFlush:(id)flush session:(id)session description:(id)description error:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  flushCopy = flush;
  sessionCopy = session;
  descriptionCopy = description;
  errorCopy = error;
  v14 = brc_bread_crumbs();
  v15 = brc_notifications_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v28 = descriptionCopy;
    v29 = 2112;
    selfCopy = self;
    v31 = 2112;
    v32 = v14;
    _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[NOTIF] Waiting for db flush for %@ in %@%@", buf, 0x20u);
  }

  clientTruthWorkloop = [sessionCopy clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke;
  block[3] = &unk_278501638;
  v22 = sessionCopy;
  v23 = descriptionCopy;
  v25 = errorCopy;
  v26 = flushCopy;
  selfCopy2 = self;
  v17 = errorCopy;
  v18 = flushCopy;
  v19 = descriptionCopy;
  v20 = sessionCopy;
  dispatch_async(clientTruthWorkloop, block);
}

void __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientDB];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_2;
  v10[3] = &unk_2784FFA48;
  v11 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_3;
  v7[3] = &unk_278501610;
  *&v3 = *(a1 + 40);
  *(&v3 + 1) = *(a1 + 48);
  v6 = v3;
  v4 = *(a1 + 64);
  *&v5 = *(a1 + 56);
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v2 performWithFlags:0 action:v10 whenFlushed:v7];
}

uint64_t __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) clientDB];
  [v1 forceBatchStart];

  return 1;
}

void __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_3(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_notifications_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_3_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_145;
  block[3] = &unk_2785003B0;
  v8 = *(a1 + 32);
  v4 = *(v8.i64[1] + 120);
  v5 = v8.i64[0];
  v6 = *(a1 + 56);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v6;
  v10 = vextq_s8(v8, v8, 8uLL);
  v11 = v7;
  dispatch_async(v4, block);
}

void __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_145(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = a1[4];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_2_146;
  v3[3] = &unk_2785015E8;
  objc_copyWeak(&v7, &location);
  v4 = a1[5];
  v6 = a1[7];
  v5 = a1[6];
  [v2 addDequeueCallback:v3];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_2_146(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = brc_bread_crumbs();
  v4 = brc_notifications_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 138412802;
    v7 = v5;
    v8 = 2112;
    v9 = WeakRetained;
    v10 = 2112;
    v11 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[NOTIF] Finished gather group for %@ in %@%@", &v6, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_performBlock:(id)block whenNotifsAreFullyFlushedInClientZone:(id)zone description:(id)description
{
  v27 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  descriptionCopy = description;
  zoneCopy = zone;
  session = [zoneCopy session];
  v12 = brc_bread_crumbs();
  v13 = brc_notifications_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v22 = descriptionCopy;
    v23 = 2112;
    selfCopy = self;
    v25 = 2112;
    v26 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[NOTIF] Waiting for faulting for %@ in %@%@", buf, 0x20u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__BRCNotificationPipe__performBlock_whenNotifsAreFullyFlushedInClientZone_description___block_invoke;
  v17[3] = &unk_278501660;
  v17[4] = self;
  v18 = session;
  v19 = descriptionCopy;
  v20 = blockCopy;
  v14 = descriptionCopy;
  v15 = session;
  v16 = blockCopy;
  [zoneCopy notifyClient:@"nsmdq" whenFaultingIsDone:v17];
}

void __87__BRCNotificationPipe__performBlock_whenNotifsAreFullyFlushedInClientZone_description___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __87__BRCNotificationPipe__performBlock_whenNotifsAreFullyFlushedInClientZone_description___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) __performBlockafterDBAndNotifFlush:*(a1 + 56) session:*(a1 + 40) description:*(a1 + 48) error:v3];
}

- (void)_performBlock:(id)block whenNotifsAreFullyFlushedInAppLibrary:(id)library description:(id)description
{
  v28 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  descriptionCopy = description;
  libraryCopy = library;
  session = [libraryCopy session];
  v12 = brc_bread_crumbs();
  v13 = brc_notifications_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v23 = descriptionCopy;
    v24 = 2112;
    selfCopy = self;
    v26 = 2112;
    v27 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[NOTIF] Waiting for faulting for %@ in %@%@", buf, 0x20u);
  }

  defaultClientZone = [libraryCopy defaultClientZone];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__BRCNotificationPipe__performBlock_whenNotifsAreFullyFlushedInAppLibrary_description___block_invoke;
  v18[3] = &unk_278501660;
  v18[4] = self;
  v19 = session;
  v20 = descriptionCopy;
  v21 = blockCopy;
  v15 = descriptionCopy;
  v16 = session;
  v17 = blockCopy;
  [defaultClientZone notifyClient:@"extension" whenFaultingIsDone:v18];
}

void __87__BRCNotificationPipe__performBlock_whenNotifsAreFullyFlushedInAppLibrary_description___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __87__BRCNotificationPipe__performBlock_whenNotifsAreFullyFlushedInClientZone_description___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) __performBlockafterDBAndNotifFlush:*(a1 + 56) session:*(a1 + 40) description:*(a1 + 48) error:v3];
}

- (void)watchScopes:(unsigned __int16)scopes trustedAppLibraryIDs:(id)ds gatherReply:(id)reply
{
  scopesCopy = scopes;
  v93 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  replyCopy = reply;
  memset(v81, 0, sizeof(v81));
  __brc_create_section(0, "[BRCNotificationPipe watchScopes:trustedAppLibraryIDs:gatherReply:]", 1099, 0, v81);
  v7 = brc_bread_crumbs();
  v8 = brc_notifications_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134220290;
    *&buf[4] = v81[0];
    *&buf[12] = 2112;
    *&buf[14] = self;
    *&buf[22] = 1024;
    *&buf[24] = scopesCopy & 1;
    *&buf[28] = 1024;
    *&buf[30] = (scopesCopy >> 1) & 1;
    *&buf[34] = 1024;
    *&buf[36] = (scopesCopy >> 2) & 1;
    LOWORD(v85) = 1024;
    *(&v85 + 2) = (scopesCopy >> 3) & 1;
    HIWORD(v85) = 1024;
    v86 = (scopesCopy >> 4) & 1;
    v87 = 1024;
    v88 = 0;
    v89 = 2112;
    v90 = dsCopy;
    v91 = 2112;
    v92 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx %@: starting watching ubiquitous scope (docs:%d data:%d ext:%d dirs:%d faults:%d trash:%d) for %@%@", buf, 0x4Eu);
  }

  if (self->_watchKind)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      watchKind = self->_watchKind;
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = watchKind;
      *&buf[18] = 2112;
      *&buf[20] = v9;
      _os_log_error_impl(&dword_223E7A000, v10, 0x90u, "[ERROR] %@: EALREADY: watch already set up to kind %d%@", buf, 0x1Cu);
    }

    v11 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:37];
    replyCopy[2](replyCopy, v11);
  }

  else if ((8 * scopesCopy) & 0x20 | (2 * (scopesCopy & 3)))
  {
    session = [(BRCNotificationManager *)self->_manager session];
    v52 = [MEMORY[0x277CBEB58] setWithArray:dsCopy];
    obj = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v12 = dsCopy;
    v13 = [v12 countByEnumeratingWithState:&v77 objects:v83 count:16];
    if (v13)
    {
      v14 = *v78;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v78 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v77 + 1) + 8 * i);
          v17 = [session appLibraryByID:v16];
          if (v17)
          {
            [obj addObject:v17];
          }

          else
          {
            v18 = brc_bread_crumbs();
            v19 = brc_default_log();
            if (os_log_type_enabled(v19, 0x90u))
            {
              *buf = 138412802;
              *&buf[4] = self;
              *&buf[12] = 2112;
              *&buf[14] = v16;
              *&buf[22] = 2112;
              *&buf[24] = v18;
              _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] %@: unable to find container %@%@", buf, 0x20u);
            }

            [v52 removeObject:v16];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v77 objects:v83 count:16];
      }

      while (v13);
    }

    if ([obj count])
    {
      objc_storeStrong(&self->_watchedAppLibraries, obj);
      objc_storeStrong(&self->_watchedAppLibraryIDs, v52);
      self->_watchedAppLibrariesFlags = 3;
      v20 = dispatch_group_create();
      gatherGroup = self->_gatherGroup;
      self->_gatherGroup = v20;

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__10;
      *&buf[32] = __Block_byref_object_dispose__10;
      v85 = 0;
      objc_initWeak(&location, self);
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v51 = self->_watchedAppLibraries;
      v22 = [(NSSet *)v51 countByEnumeratingWithState:&v72 objects:v82 count:16];
      if (v22)
      {
        v23 = *v73;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v73 != v23)
            {
              objc_enumerationMutation(v51);
            }

            v25 = *(*(&v72 + 1) + 8 * j);
            delegate = [(BRCNotificationPipe *)self delegate];
            [delegate notificationPipe:self willObserveAppLibrary:v25];

            if (scopesCopy)
            {
              dbRowID = [v25 dbRowID];
              v28 = [BRCItemID documentsItemIDWithAppLibraryRowID:dbRowID];

              dispatch_group_enter(self->_gatherGroup);
              v29 = [v25 db];
              serialQueue = [v29 serialQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke;
              block[3] = &unk_2785016B0;
              block[4] = v25;
              v68 = v28;
              selfCopy = self;
              v31 = v28;
              objc_copyWeak(&v71, &location);
              v70 = buf;
              dispatch_async(serialQueue, block);

              objc_destroyWeak(&v71);
            }

            if ((scopesCopy & 2) != 0)
            {
              rootItemID = [v25 rootItemID];
              dispatch_group_enter(self->_gatherGroup);
              v33 = [v25 db];
              serialQueue2 = [v33 serialQueue];
              v62[0] = MEMORY[0x277D85DD0];
              v62[1] = 3221225472;
              v62[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_3;
              v62[3] = &unk_2785016B0;
              v62[4] = v25;
              v63 = rootItemID;
              selfCopy2 = self;
              v35 = rootItemID;
              objc_copyWeak(&v66, &location);
              v65 = buf;
              dispatch_async(serialQueue2, v62);

              objc_destroyWeak(&v66);
            }
          }

          v22 = [(NSSet *)v51 countByEnumeratingWithState:&v72 objects:v82 count:16];
        }

        while (v22);
      }

      [(BRCNotificationManager *)self->_manager registerAppLibraries:self->_watchedAppLibraries forFlags:self->_watchedAppLibrariesFlags];
      dispatch_group_enter(self->_gatherGroup);
      v36 = [BRCDataOrDocsScopeGatherer alloc];
      allObjects = [obj allObjects];
      initialGatherMaxRank = self->_initialGatherMaxRank;
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_3_158;
      v60[3] = &unk_2785016D8;
      objc_copyWeak(&v61, &location);
      v60[4] = buf;
      v39 = [(BRCDataOrDocsScopeGatherer *)v36 initWithNotificationPipe:self appLibraries:allObjects startingRank:1 maxRank:initialGatherMaxRank withDeadItems:0 gatherReply:v60];
      gatherer = self->_gatherer;
      self->_gatherer = v39;

      self->_watchKind = (2 * scopesCopy) & 0x80 | scopesCopy & 0x18 | (8 * scopesCopy) & 0x20 | (2 * (scopesCopy & 3));
      v41 = self->_gatherGroup;
      queue = [(BRCNotificationPipe *)self queue];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_159;
      v56[3] = &unk_278501700;
      objc_copyWeak(&v59, &location);
      v57 = replyCopy;
      v58 = buf;
      dispatch_group_notify(v41, queue, v56);

      [(BRCNotificationPipe *)self _gatherIfNeededAndFlushAsync];
      objc_destroyWeak(&v59);
      objc_destroyWeak(&v61);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v45 = brc_bread_crumbs();
      v46 = brc_default_log();
      if (os_log_type_enabled(v46, 0x90u))
      {
        [BRCNotificationPipe watchScopes:trustedAppLibraryIDs:gatherReply:];
      }

      v47 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:2];
      replyCopy[2](replyCopy, v47);
    }

    v11 = session;
  }

  else
  {
    v43 = brc_bread_crumbs();
    v44 = brc_default_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v43;
      _os_log_impl(&dword_223E7A000, v44, OS_LOG_TYPE_DEFAULT, "[WARNING] %@: client didn't specify Document or Data Scope%@", buf, 0x16u);
    }

    v11 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
    replyCopy[2](replyCopy, v11);
  }

  __brc_leave_section(v81);
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultClientZone];
  v3 = [v2 fetchRecursiveDirectoryContentsIfNecessary:*(a1 + 40) isUserWaiting:1 rescheduleApply:1];

  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_notifications_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_cold_1();
    }

    [v3 beginObservingChanges];
    v6 = *(a1 + 48);
    objc_sync_enter(v6);
    [*(*(a1 + 48) + 176) addObject:v3];
    objc_sync_exit(v6);

    objc_initWeak(&location, v3);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_155;
    v10[3] = &unk_278501688;
    objc_copyWeak(&v11, (a1 + 64));
    objc_copyWeak(&v12, &location);
    v7 = *(a1 + 56);
    v10[4] = *(a1 + 32);
    v10[5] = v7;
    [v3 addRecursiveDirectoryListCompletionBlock:v10];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_notifications_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_cold_2();
    }

    dispatch_group_leave(*(*(a1 + 48) + 80));
  }
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_155(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    [v6[22] removeObject:v5];
    v7 = *(*(a1 + 40) + 8);
    v10 = *(v7 + 40);
    v8 = (v7 + 40);
    v9 = v10;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v3;
    }

    objc_storeStrong(v8, v11);
    objc_sync_exit(v6);

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_2;
    v15[3] = &unk_278500DA0;
    v13 = a1 + 32;
    v12 = *(a1 + 32);
    v14 = [v5 description];
    [v6 _performBlock:v15 whenNotifsAreFullyFlushedInAppLibrary:v12 description:v14];
  }
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = a2;
  objc_sync_enter(v4);
  v5 = *(*(a1 + 40) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v9 = v10;
  if (v8)
  {
    v9 = v7;
  }

  objc_storeStrong(v6, v9);
  objc_sync_exit(v4);

  dispatch_group_leave(*(*(a1 + 32) + 80));
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultClientZone];
  v3 = [v2 fetchRecursiveDirectoryContentsIfNecessary:*(a1 + 40) isUserWaiting:1 rescheduleApply:1];

  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_notifications_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_cold_1();
    }

    [v3 beginObservingChanges];
    v6 = *(a1 + 48);
    objc_sync_enter(v6);
    [*(*(a1 + 48) + 176) addObject:v3];
    objc_sync_exit(v6);

    objc_initWeak(&location, v3);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_156;
    v10[3] = &unk_278501688;
    objc_copyWeak(&v11, (a1 + 64));
    objc_copyWeak(&v12, &location);
    v7 = *(a1 + 56);
    v10[4] = *(a1 + 32);
    v10[5] = v7;
    [v3 addRecursiveDirectoryListCompletionBlock:v10];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_notifications_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_cold_2();
    }

    dispatch_group_leave(*(*(a1 + 48) + 80));
  }
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_156(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    [v6[22] removeObject:v5];
    v7 = *(*(a1 + 40) + 8);
    v10 = *(v7 + 40);
    v8 = (v7 + 40);
    v9 = v10;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v3;
    }

    objc_storeStrong(v8, v11);
    objc_sync_exit(v6);

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_2_157;
    v15[3] = &unk_278500DA0;
    v13 = a1 + 32;
    v12 = *(a1 + 32);
    v14 = [v5 description];
    [v6 _performBlock:v15 whenNotifsAreFullyFlushedInAppLibrary:v12 description:v14];
  }
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_2_157(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = a2;
  objc_sync_enter(v4);
  v5 = *(*(a1 + 40) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v9 = v10;
  if (v8)
  {
    v9 = v7;
  }

  objc_storeStrong(v6, v9);
  objc_sync_exit(v4);

  dispatch_group_leave(*(*(a1 + 32) + 80));
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_3_158(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    v7 = *(*(a1 + 32) + 8);
    v10 = *(v7 + 40);
    v8 = (v7 + 40);
    v9 = v10;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v3;
    }

    objc_storeStrong(v8, v11);
    objc_sync_exit(v6);

    v12 = brc_bread_crumbs();
    v13 = brc_notifications_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_3_158_cold_1();
    }

    dispatch_group_leave(v6[10]);
  }
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_159(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = brc_bread_crumbs();
  v4 = brc_notifications_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_159_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = [*(*(*(a1 + 40) + 8) + 40) brc_wrappedError];
  (*(v5 + 16))(v5, v6);
}

- (void)_watchItem:(id)item options:(unsigned __int16)options gatherReply:(id)reply
{
  v89 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  replyCopy = reply;
  if (self->_watchKind)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      watchKind = self->_watchKind;
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = watchKind;
      *&buf[18] = 2112;
      *&buf[20] = v10;
      _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] %@: EALREADY: watch already set up to kind %d%@", buf, 0x1Cu);
    }

    v12 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:37];
    replyCopy[2](replyCopy, v12);

    goto LABEL_35;
  }

  if (itemCopy)
  {
    [(BRCNotificationPipe *)self setWatchedAncestorFilenameToItem:0];
    fileObjectID = [itemCopy fileObjectID];
    [(BRCNotificationPipe *)self setWatchedAncestorFileObjectID:fileObjectID];

    itemGlobalID = [itemCopy itemGlobalID];
    [(BRCNotificationPipe *)self setWatchedAncestorItemGlobalID:itemGlobalID];

    v15 = objc_alloc(MEMORY[0x277CBEB98]);
    appLibrary = [itemCopy appLibrary];
    v85 = appLibrary;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
    v18 = [v15 initWithArray:v17];
    watchedAppLibraries = self->_watchedAppLibraries;
    self->_watchedAppLibraries = v18;

    v20 = objc_alloc(MEMORY[0x277CBEB98]);
    appLibrary2 = [itemCopy appLibrary];
    appLibraryID = [appLibrary2 appLibraryID];
    v84 = appLibraryID;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
    v24 = [v20 initWithArray:v23];
    watchedAppLibraryIDs = self->_watchedAppLibraryIDs;
    self->_watchedAppLibraryIDs = v24;

LABEL_8:
    [(BRCNotificationPipe *)self _registerAsWatcherIfNeeded];
    self->_watchItemOptions = options;
    v27 = dispatch_group_create();
    gatherGroup = self->_gatherGroup;
    self->_gatherGroup = v27;

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__10;
    v82 = __Block_byref_object_dispose__10;
    v83 = 0;
    objc_initWeak(&location, self);
    if (!self->_watchedAncestorFileObjectID || ![itemCopy isDirectory])
    {
LABEL_28:
      if ((options & 4) != 0)
      {
        v44 = 3;
      }

      else
      {
        v44 = 1;
      }

      dispatch_group_enter(self->_gatherGroup);
      if (self->_gatherer)
      {
        v57 = brc_bread_crumbs();
        v58 = brc_default_log();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
        {
          [BRCNotificationPipe _watchItem:options:gatherReply:];
        }
      }

      v45 = [BRCDataOrDocsScopeGatherer alloc];
      allObjects = [(NSSet *)self->_watchedAppLibraries allObjects];
      initialGatherMaxRank = self->_initialGatherMaxRank;
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_166;
      v69[3] = &unk_2785016D8;
      objc_copyWeak(&v70, &location);
      v69[4] = buf;
      v48 = [(BRCDataOrDocsScopeGatherer *)v45 initWithNotificationPipe:self appLibraries:allObjects startingRank:1 maxRank:initialGatherMaxRank withDeadItems:0 gatherReply:v69];
      gatherer = self->_gatherer;
      self->_gatherer = v48;

      self->_watchKind = 1;
      v50 = self->_gatherGroup;
      queue = [(BRCNotificationPipe *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_167;
      block[3] = &unk_278501700;
      objc_copyWeak(&v68, &location);
      v66 = replyCopy;
      v67 = buf;
      dispatch_group_notify(v50, queue, block);

      if ((options & 8) != 0)
      {
        watchedAncestorItemGlobalID = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
        [(BRCDataOrDocsScopeGatherer *)self->_gatherer setGatheredChildrenItemGlobalID:watchedAncestorItemGlobalID];
      }

      queue = self->_queue;
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_168;
      v61[3] = &unk_278501750;
      v61[4] = self;
      v63 = buf;
      v64 = v44;
      v62 = itemCopy;
      v54 = v61;
      *from = MEMORY[0x277D85DD0];
      *&from[8] = 3221225472;
      *&from[16] = __brc_dispatch_async_autorelease_block_invoke;
      v87 = &unk_278501520;
      v88 = v54;
      v55 = queue;
      dispatch_async(v55, from);

      objc_destroyWeak(&v68);
      objc_destroyWeak(&v70);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);

      goto LABEL_35;
    }

    clientZone = [itemCopy clientZone];
    appLibrary3 = [itemCopy appLibrary];
    if ((options & 4) != 0)
    {
      itemID = [itemCopy itemID];
      v32 = [clientZone fetchRecursiveDirectoryContentsIfNecessary:itemID isUserWaiting:1 rescheduleApply:1];

      if (v32)
      {
        v41 = brc_bread_crumbs();
        v42 = brc_notifications_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *from = 138412802;
          *&from[4] = v32;
          *&from[12] = 2112;
          *&from[14] = self;
          *&from[22] = 2112;
          v87 = v41;
          _os_log_debug_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEBUG, "[NOTIF] Waiting on gather group for %@ in %@%@", from, 0x20u);
        }

        dispatch_group_enter(self->_gatherGroup);
      }

      [v32 beginObservingChanges];
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [(NSHashTable *)selfCopy->_recursiveScopeListOps addObject:v32];
      objc_sync_exit(selfCopy);

      objc_initWeak(from, v32);
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke;
      v75[3] = &unk_278501688;
      objc_copyWeak(&v78, &location);
      objc_copyWeak(&v79, from);
      v77 = buf;
      v76 = clientZone;
      [v32 addRecursiveDirectoryListCompletionBlock:v75];

      objc_destroyWeak(&v79);
      objc_destroyWeak(&v78);
      objc_destroyWeak(from);
    }

    else
    {
      if ((options & 2) == 0)
      {
LABEL_27:

        goto LABEL_28;
      }

      itemID2 = [(BRCItemGlobalID *)self->_watchedAncestorItemGlobalID itemID];
      v32 = [clientZone fetchDirectoryContentsIfNecessary:itemID2 isUserWaiting:1 rescheduleApplyScheduler:1];

      [v32 beginObservingChangesWithDelegate:self];
      if (v32)
      {
        v33 = brc_bread_crumbs();
        v34 = brc_notifications_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *from = 138412802;
          *&from[4] = v32;
          *&from[12] = 2112;
          *&from[14] = self;
          *&from[22] = 2112;
          v87 = v33;
          _os_log_debug_impl(&dword_223E7A000, v34, OS_LOG_TYPE_DEBUG, "[NOTIF] Waiting on gather group for %@ in %@%@", from, 0x20u);
        }

        dispatch_group_enter(self->_gatherGroup);
      }

      WeakRetained = objc_loadWeakRetained(&self->_listOp);
      v36 = WeakRetained == 0;

      if (!v36)
      {
        v59 = brc_bread_crumbs();
        v60 = brc_default_log();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
        {
          [BRCNotificationPipe _watchItem:options:gatherReply:];
        }
      }

      objc_storeWeak(&self->_listOp, v32);
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_164;
      v71[3] = &unk_278501728;
      objc_copyWeak(&v74, &location);
      v71[4] = self;
      v73 = buf;
      v72 = clientZone;
      [v32 addDirectoryListCompletionBlock:v71];

      objc_destroyWeak(&v74);
    }

    goto LABEL_27;
  }

  watchedAncestorFilenameToItem = [(BRCNotificationPipe *)self watchedAncestorFilenameToItem];

  if (watchedAncestorFilenameToItem)
  {
    goto LABEL_8;
  }

  v37 = brc_bread_crumbs();
  v38 = brc_default_log();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
  {
    [BRCNotificationPipe _watchItem:options:gatherReply:];
  }

  v39 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Invalid notification pipe setup"];
  replyCopy[2](replyCopy, v39);

LABEL_35:
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    [v6[22] removeObject:v5];
    v7 = *(*(a1 + 40) + 8);
    v10 = *(v7 + 40);
    v8 = (v7 + 40);
    v9 = v10;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v3;
    }

    objc_storeStrong(v8, v11);
    objc_sync_exit(v6);

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_2;
    v15[3] = &unk_278500DA0;
    v13 = a1 + 32;
    v12 = *(a1 + 32);
    v14 = [v5 description];
    [v6 _performBlock:v15 whenNotifsAreFullyFlushedInClientZone:v12 description:v14];
  }
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = a2;
  objc_sync_enter(v4);
  v5 = *(*(a1 + 40) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v9 = v10;
  if (v8)
  {
    v9 = v7;
  }

  objc_storeStrong(v6, v9);
  objc_sync_exit(v4);

  dispatch_group_leave(*(*(a1 + 32) + 80));
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_164(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = brc_bread_crumbs();
  v6 = brc_notifications_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    *buf = 138413058;
    v20 = v17;
    v21 = 2112;
    v22 = v3;
    v23 = 2112;
    v24 = WeakRetained;
    v25 = 2112;
    v26 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[NOTIF] %@ - Calling the list completion block with %@, sself = %@%@", buf, 0x2Au);
  }

  if (WeakRetained)
  {
    v7 = WeakRetained;
    objc_sync_enter(v7);
    v8 = objc_loadWeakRetained(v7 + 16);
    objc_storeWeak(v7 + 16, 0);
    v9 = *(*(a1 + 48) + 8);
    v12 = *(v9 + 40);
    v10 = (v9 + 40);
    v11 = v12;
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = v3;
    }

    objc_storeStrong(v10, v13);
    objc_sync_exit(v7);

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_165;
    v18[3] = &unk_278500DA0;
    v15 = a1 + 40;
    v14 = *(a1 + 40);
    v16 = [v8 description];
    [v7 _performBlock:v18 whenNotifsAreFullyFlushedInClientZone:v14 description:v16];
  }
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_165(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = a2;
  objc_sync_enter(v4);
  v5 = *(*(a1 + 40) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v9 = v10;
  if (v8)
  {
    v9 = v7;
  }

  objc_storeStrong(v6, v9);
  objc_sync_exit(v4);

  dispatch_group_leave(*(*(a1 + 32) + 80));
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_166(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    v7 = brc_bread_crumbs();
    v8 = brc_notifications_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_3_158_cold_1();
    }

    v9 = *(*(a1 + 32) + 8);
    v12 = *(v9 + 40);
    v10 = (v9 + 40);
    v11 = v12;
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = v3;
    }

    objc_storeStrong(v10, v13);
    dispatch_group_leave(v6[10]);
    objc_sync_exit(v6);
  }
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_167(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = brc_bread_crumbs();
  v4 = brc_notifications_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_167_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = [*(*(*(a1 + 40) + 8) + 40) brc_wrappedError];
  (*(v5 + 16))(v5, v6);
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_168(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v3 = *(v2 + 168);
    v4 = [v3 countByEnumeratingWithState:&v27 objects:v43 count:16];
    if (v4)
    {
      v5 = *v28;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v28 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v27 + 1) + 8 * i);
          v8 = [*(a1 + 32) delegate];
          [v8 notificationPipe:*(a1 + 32) willObserveAppLibrary:v7];
        }

        v4 = [v3 countByEnumeratingWithState:&v27 objects:v43 count:16];
      }

      while (v4);
    }

    *(*(a1 + 32) + 192) = *(a1 + 56);
    [*(*(a1 + 32) + 112) registerAppLibraries:*(*(a1 + 32) + 168) forFlags:?];
    v9 = brc_bread_crumbs();
    v10 = brc_notifications_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v21 = [v19 watchedAncestorFileObjectID];
      v22 = [*(a1 + 32) watchedAncestorItemGlobalID];
      v23 = [*(a1 + 32) watchedAncestorFilenameToItem];
      v24 = v23;
      v25 = &stru_2837504F0;
      *buf = 138413570;
      if (v23)
      {
        v25 = v23;
      }

      v32 = v19;
      v33 = 2112;
      v34 = v20;
      v35 = 2112;
      v36 = v21;
      v37 = 2112;
      v38 = v22;
      v39 = 2112;
      v40 = v25;
      v41 = 2112;
      v42 = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[NOTIF] %@: started watching children of %@ (fsid:%@ id:%@ filename:%@)%@", buf, 0x3Eu);
    }

    [*(a1 + 32) _gatherIfNeededAndFlushAsync];
  }

  else
  {
    obj = v2;
    objc_sync_enter(obj);
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    if (v12)
    {
      v13 = v12;
      v14 = *(v11 + 40);
      *(v11 + 40) = v13;
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:4];
      v16 = *(*(a1 + 48) + 8);
      v14 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    [*(*(a1 + 32) + 72) invalidate];
    v17 = *(a1 + 32);
    v18 = *(v17 + 72);
    *(v17 + 72) = 0;

    objc_sync_exit(obj);
  }
}

- (void)invalidateIfWatchingAppLibraryIDs:(id)ds
{
  if ([(NSSet *)self->_watchedAppLibraryIDs intersectsSet:ds])
  {

    [(BRCNotificationPipe *)self close];
  }
}

- (void)invalidateReceiverIfWatchingAppLibraryIDs:(id)ds
{
  if ([(NSSet *)self->_watchedAppLibraryIDs intersectsSet:ds])
  {
    receiver = self->_receiver;

    [(BRItemNotificationReceiving *)receiver invalidate];
  }
}

- (BRCNotificationPipeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)watchItemsNamesPrefixedBy:(id)by inScopes:(unsigned __int16)scopes appLibraryIDs:(id)ds gatherReply:(id)reply
{
  scopesCopy = scopes;
  byCopy = by;
  v41 = *MEMORY[0x277D85DE8];
  byCopy2 = by;
  dsCopy = ds;
  replyCopy = reply;
  memset(v30, 0, sizeof(v30));
  __brc_create_section(1, "[BRCNotificationPipe(IPCs) watchItemsNamesPrefixedBy:inScopes:appLibraryIDs:gatherReply:]", 1463, 0, v30);
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v27 = replyCopy;
    v16 = byCopy;
    v17 = dsCopy;
    v18 = byCopy2;
    v19 = scopesCopy;
    v20 = v30[0];
    v21 = qos_class_self();
    v22 = BRCPrettyPrintEnumWithContext(v21, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v20;
    v33 = 2112;
    selfCopy = self;
    v35 = 2112;
    v36 = v22;
    v37 = 2080;
    v38 = "[BRCNotificationPipe(IPCs) watchItemsNamesPrefixedBy:inScopes:appLibraryIDs:gatherReply:]";
    v39 = 2112;
    v40 = v14;
    _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);

    scopesCopy = v19;
    byCopy2 = v18;
    dsCopy = v17;
    byCopy = v16;
    replyCopy = v27;
  }

  client = self->_client;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __90__BRCNotificationPipe_IPCs__watchItemsNamesPrefixedBy_inScopes_appLibraryIDs_gatherReply___block_invoke;
  v28[3] = &unk_2785014D0;
  v28[4] = self;
  v24 = replyCopy;
  v29 = v24;
  LODWORD(client) = _brc_ipc_check_logged_status(client, 1, v28);

  if (client)
  {
    v25 = brc_bread_crumbs();
    v26 = brc_notifications_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v33 = 2112;
      selfCopy = byCopy2;
      v35 = 2112;
      v36 = v25;
      _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[NOTIF] %@: watching items prefixed by %@%@", buf, 0x20u);
    }

    objc_storeStrong(&self->_watchNamePrefix, byCopy);
    [(BRCNotificationPipe *)self watchScopes:scopesCopy appLibraryIDs:dsCopy gatherReply:v24];
  }

  __brc_leave_section(v30);
}

void __90__BRCNotificationPipe_IPCs__watchItemsNamesPrefixedBy_inScopes_appLibraryIDs_gatherReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)watchScopes:(unsigned __int16)scopes appLibraryIDs:(id)ds gatherReply:(id)reply
{
  scopesCopy = scopes;
  v36 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  replyCopy = reply;
  memset(v25, 0, sizeof(v25));
  __brc_create_section(1, "[BRCNotificationPipe(IPCs) watchScopes:appLibraryIDs:gatherReply:]", 1478, 0, v25);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v25[0];
    v13 = qos_class_self();
    v14 = BRCPrettyPrintEnumWithContext(v13, &brc_qos_entries, 0);
    *buf = 134219010;
    v27 = v12;
    v28 = 2112;
    selfCopy = self;
    v30 = 2112;
    v31 = v14;
    v32 = 2080;
    v33 = "[BRCNotificationPipe(IPCs) watchScopes:appLibraryIDs:gatherReply:]";
    v34 = 2112;
    v35 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  client = self->_client;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __67__BRCNotificationPipe_IPCs__watchScopes_appLibraryIDs_gatherReply___block_invoke;
  v21 = &unk_278501778;
  selfCopy2 = self;
  v16 = dsCopy;
  v23 = v16;
  v17 = replyCopy;
  v24 = v17;
  LODWORD(client) = _brc_ipc_check_applibrary_proxy(client, 1, &v18);

  if (client)
  {
    [(BRCNotificationPipe *)self watchScopes:scopesCopy trustedAppLibraryIDs:v16 gatherReply:v17, v18, v19, v20, v21, selfCopy2];
  }

  __brc_leave_section(v25);
}

void __67__BRCNotificationPipe_IPCs__watchScopes_appLibraryIDs_gatherReply___block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, 0x90u))
  {
    v9 = a1[5];
    v10 = *(a1[4] + 32);
    v11 = 138413058;
    v12 = v10;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] %@: can't watch %@: %@%@", &v11, 0x2Au);
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = a1[4];
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v11, 0x20u);
  }

  (*(a1[6] + 16))();
}

- (void)watchScopes:(unsigned __int16)scopes gatherReply:(id)reply
{
  scopesCopy = scopes;
  v29 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v18, 0, sizeof(v18));
  __brc_create_section(1, "[BRCNotificationPipe(IPCs) watchScopes:gatherReply:]", 1488, 0, v18);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v18[0];
    v10 = qos_class_self();
    v11 = BRCPrettyPrintEnumWithContext(v10, &brc_qos_entries, 0);
    *buf = 134219010;
    v20 = v9;
    v21 = 2112;
    selfCopy = self;
    v23 = 2112;
    v24 = v11;
    v25 = 2080;
    v26 = "[BRCNotificationPipe(IPCs) watchScopes:gatherReply:]";
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  client = self->_client;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__BRCNotificationPipe_IPCs__watchScopes_gatherReply___block_invoke;
  v16[3] = &unk_2785014D0;
  v16[4] = self;
  v13 = replyCopy;
  v17 = v13;
  LODWORD(client) = _brc_ipc_check_applibraries_access(client, 1, v16);

  if (client)
  {
    entitledAppLibraryIDs = [(BRCXPCClient *)self->_client entitledAppLibraryIDs];
    allObjects = [entitledAppLibraryIDs allObjects];

    [(BRCNotificationPipe *)self watchScopes:scopesCopy trustedAppLibraryIDs:allObjects gatherReply:v13];
  }

  __brc_leave_section(v18);
}

void __53__BRCNotificationPipe_IPCs__watchScopes_gatherReply___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, 0x90u))
  {
    v9 = *(*(a1 + 32) + 32);
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] %@: can't watch app containers: %@%@", &v10, 0x20u);
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)boostPriority:(id)priority
{
  v24 = *MEMORY[0x277D85DE8];
  priorityCopy = priority;
  memset(v13, 0, sizeof(v13));
  __brc_create_section(1, "[BRCNotificationPipe(IPCs) boostPriority:]", 1495, 0, v13);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v13[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    v15 = v7;
    v16 = 2112;
    selfCopy = self;
    v18 = 2112;
    v19 = v9;
    v20 = 2080;
    v21 = "[BRCNotificationPipe(IPCs) boostPriority:]";
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  boostReply = self->_boostReply;
  if (boostReply)
  {
    boostReply[2]();
  }

  v11 = MEMORY[0x22AA4A310](priorityCopy);
  v12 = self->_boostReply;
  self->_boostReply = v11;

  __brc_leave_section(v13);
}

- (void)watchItemWithFileObjectID:(id)d options:(unsigned __int16)options request:(id)request gatherReply:(id)reply
{
  v45 = *MEMORY[0x277D85DE8];
  dCopy = d;
  requestCopy = request;
  replyCopy = reply;
  session = [(BRCNotificationManager *)self->_manager session];
  v14 = brc_bread_crumbs();
  v15 = brc_notifications_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [BRCNotificationPipe(IPCs) watchItemWithFileObjectID:options:request:gatherReply:];
  }

  clientTruthWorkloop = [session clientTruthWorkloop];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __83__BRCNotificationPipe_IPCs__watchItemWithFileObjectID_options_request_gatherReply___block_invoke;
  v30[3] = &unk_2785017A0;
  v17 = dCopy;
  v31 = v17;
  v18 = replyCopy;
  v35 = v18;
  v19 = session;
  v32 = v19;
  v20 = requestCopy;
  v33 = v20;
  selfCopy = self;
  optionsCopy = options;
  v21 = clientTruthWorkloop;
  v22 = v30;
  v23 = objc_autoreleasePoolPush();
  v37 = 0uLL;
  v38 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v37);
  v24 = brc_bread_crumbs();
  v25 = brc_notifications_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v28 = v37;
    label = dispatch_queue_get_label(v21);
    *block = 134218498;
    *&block[4] = v28;
    *&block[12] = 2080;
    *&block[14] = label;
    *&block[22] = 2112;
    v40 = v24;
    _os_log_debug_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEBUG, "[NOTIF] ┣%llx dispatching to %s%@", block, 0x20u);
  }

  v43 = v37;
  v44 = v38;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = __dispatch_async_with_logs_block_invoke_4;
  v40 = &unk_2784FF568;
  v26 = v21;
  v41 = v26;
  v27 = v22;
  v42 = v27;
  dispatch_async(v26, block);

  objc_autoreleasePoolPop(v23);
}

void __83__BRCNotificationPipe_IPCs__watchItemWithFileObjectID_options_request_gatherReply___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isRootContainerItem])
  {
    v2 = *(*(a1 + 64) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 40) itemFetcher];
    v4 = [v3 itemByFileObjectID:*(a1 + 32)];

    if (v4)
    {
      v5 = [v4 appLibrary];
      v6 = [v5 appLibraryID];
      if (v6)
      {
        v7 = [*(a1 + 48) isSystemRequest];
        if (v5 && v7 && ([v5 isAppInstalled] & 1) == 0)
        {
          v30 = brc_bread_crumbs();
          v31 = brc_notifications_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            __83__BRCNotificationPipe_IPCs__watchItemWithFileObjectID_options_request_gatherReply___block_invoke_cold_1();
          }

          (*(*(a1 + 64) + 16))();
        }

        else
        {
          if ([v4 isZoneRoot])
          {
            [*(a1 + 56) setWatchedAncestorFilenameToItem:0];
            [*(a1 + 56) setWatchedAncestorFileObjectID:*(a1 + 32)];
          }

          else
          {
            v17 = [v4 st];
            v18 = [v17 logicalName];
            [*(a1 + 56) setWatchedAncestorFilenameToItem:v18];

            v19 = [v4 parentFileObjectID];
            [*(a1 + 56) setWatchedAncestorFileObjectID:v19];
          }

          [*(a1 + 56) setWatchedAncestorItemGlobalID:0];
          v20 = objc_alloc(MEMORY[0x277CBEB98]);
          v33 = v5;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
          v22 = [v20 initWithArray:v21];
          v23 = *(a1 + 56);
          v24 = *(v23 + 168);
          *(v23 + 168) = v22;

          v25 = objc_alloc(MEMORY[0x277CBEB98]);
          v32 = v6;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
          v27 = [v25 initWithArray:v26];
          v28 = *(a1 + 56);
          v29 = *(v28 + 184);
          *(v28 + 184) = v27;

          [*(a1 + 56) _watchItem:v4 options:*(a1 + 72) gatherReply:*(a1 + 64)];
        }
      }

      else
      {
        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          *buf = 138412802;
          v35 = v14;
          v36 = 2112;
          v37 = 0;
          v38 = 2112;
          v39 = v12;
          _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] Path %@ is not an existing app library: %@%@", buf, 0x20u);
        }

        v15 = *(a1 + 64);
        v16 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
        (*(v15 + 16))(v15, v16);
      }
    }

    else
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *buf = 138412802;
        v35 = v10;
        v36 = 2112;
        v37 = 0;
        v38 = 2112;
        v39 = v8;
        _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Path %@ is not an existing container: %@%@", buf, 0x20u);
      }

      v11 = *(a1 + 64);
      v5 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
      (*(v11 + 16))(v11, v5);
    }
  }
}

- (void)invalidate
{
  v24 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  __brc_create_section(1, "[BRCNotificationPipe(IPCs) invalidate]", 1553, 0, v13);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v13[0];
    v6 = qos_class_self();
    v7 = BRCPrettyPrintEnumWithContext(v6, &brc_qos_entries, 0);
    *buf = 134219010;
    v15 = v5;
    v16 = 2112;
    selfCopy2 = self;
    v18 = 2112;
    v19 = v7;
    v20 = 2080;
    v21 = "[BRCNotificationPipe(IPCs) invalidate]";
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  if (self->_receiver)
  {
    memset(v12, 0, sizeof(v12));
    __brc_create_section(0, "[BRCNotificationPipe(IPCs) invalidate]", 1560, 0, v12);
    v8 = brc_bread_crumbs();
    v9 = brc_notifications_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v15 = v12[0];
      v16 = 2112;
      selfCopy2 = self;
      v18 = 2112;
      v19 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx invalidating %@%@", buf, 0x20u);
    }

    dispatch_assert_queue_V2(self->_queue);
    [(BRCNotificationPipe *)self _stopWatchingItems];
    client = self->_client;
    self->_client = 0;

    [(BRItemNotificationReceiving *)self->_receiver invalidate];
    [(BRNotificationQueue *)self->_notifs removeAllObjects];
    receiver = self->_receiver;
    self->_receiver = 0;

    self->_hasUpdatesInFlight = 0;
    __brc_leave_section(v12);
  }

  __brc_leave_section(v13);
}

- (void)addNotification:asDead:.cold.1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 watchedAncestorItemGlobalID];
  v7 = [a1 oldWatchedAncestorItemGlobalID];
  v10 = 138412802;
  v11 = v6;
  OUTLINED_FUNCTION_4_0();
  v12 = v8;
  v13 = v9;
  v14 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[NOTIF] Learning path-match for %@ (was %@)%@", &v10, 0x20u);
}

- (void)_isInterestingUpdate:(NSObject *)a3 .cold.3(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = [a1 watchedAncestorItemGlobalID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  v7 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[NOTIF] Learning itemID for our ancestor: %@%@", v6, 0x16u);
}

- (void)_isInterestingUpdate:.cold.4()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:.cold.5()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:.cold.6()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:.cold.7()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:.cold.8()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:.cold.9()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:.cold.10()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:.cold.11()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:.cold.13()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:.cold.14()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:.cold.15()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:.cold.16()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: _watchKind & WATCH_ITEM%@", v5, v6, v7, v8);
  }
}

- (void)_isInterestingUpdate:.cold.19()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:.cold.20()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:.cold.21()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isInterestingUpdate:.cold.23()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_prepareForSecondGatherWithRank:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: !_gatherer%@", v5, v6, v7, v8);
  }
}

- (void)processUpdates:withRank:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __87__BRCNotificationPipe__performBlock_whenNotifsAreFullyFlushedInClientZone_description___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

- (void)watchScopes:trustedAppLibraryIDs:gatherReply:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_3_158_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_159_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_167_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __83__BRCNotificationPipe_IPCs__watchItemWithFileObjectID_options_request_gatherReply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end