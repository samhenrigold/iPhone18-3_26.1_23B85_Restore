@interface BRCApplyScheduler
- (BOOL)_rescheduleItemsParentedToItemGlobalID:(id)d flags:(unsigned int)flags;
- (BRCApplyScheduler)initWithAccountSession:(id)session;
- (id)descriptionForRejectedItem:(id)item context:(id)context;
- (id)descriptionForServerItem:(id)item context:(id)context;
- (unint64_t)_addRanksUpToRank:(int64_t)rank inZone:(id)zone;
- (void)_close;
- (void)_createApplyJobInZone:(id)zone jobID:(id)d state:(int)state kind:(unsigned int)kind;
- (void)_didSyncDownZone:(id)zone requestID:(unint64_t)d upToRank:(int64_t)rank caughtUpWithServer:(BOOL)server isFixingState:(BOOL)state;
- (void)_handleWatchingFaults;
- (void)_recoverAndCreateApplyJobsForServerItemsWithNoMatchingClientItems:(id)items batchSize:(unint64_t)size recoveryTask:(id)task completion:(id)completion;
- (void)_recoverAndReportMissingJobsWithCompletion:(id)completion report:(BOOL)report recoveryTask:(id)task;
- (void)_rescheduleRank:(int64_t)rank inState:(int)state forZone:(id)zone;
- (void)_scheduleApplyJobWithID:(id)d zone:(id)zone applyKind:(unsigned int)kind;
- (void)_setState:(int)state andApplyKind:(unsigned int)kind forJobID:(id)d;
- (void)createApplyJobFromServerItem:(id)item localItem:(id)localItem state:(int)state kind:(unsigned int)kind;
- (void)createApplyJobFromServerItemRank:(int64_t)rank localItem:(id)item state:(int)state kind:(unsigned int)kind;
- (void)deleteExpiredJobs;
- (void)deleteNonRejectionJobsForZone:(id)zone;
- (void)describeInBuffer:(id)buffer aggregateOfJobsMatching:(id)matching context:(id)context;
- (void)didCompleteCrossZoneMigrationForAppLibrary:(id)library;
- (void)didCreateMissingParentID:(id)d zone:(id)zone;
- (void)didReparentOrKillItemID:(id)d parentItemID:(id)iD zone:(id)zone;
- (void)generatedRanksForZone:(id)zone upToRank:(int64_t)rank;
- (void)monitorFaultingForZone:(id)zone;
- (void)repopulateJobsForZone:(id)zone;
- (void)rescheduleItemRank:(int64_t)rank zoneRowID:(id)d matchingState:(int)state;
- (void)rescheduleItemsRecursivelyUnderFolder:(id)folder;
- (void)rescheduleMissingTargetAliasesWithTarget:(id)target;
- (void)resetBackoffForServerItem:(id)item;
- (void)schedule;
- (void)setState:(int)state andApplyKind:(unsigned int)kind forRank:(int64_t)rank zoneRowID:(id)d;
- (void)setState:(int)state andApplyKind:(unsigned int)kind forServerItem:(id)item localItem:(id)localItem;
- (void)setState:(int)state forRank:(int64_t)rank zoneRowID:(id)d;
- (void)setState:(int)state forServerItem:(id)item localItem:(id)localItem;
- (void)stopMonitoringFaultingForZone:(id)zone;
@end

@implementation BRCApplyScheduler

- (void)schedule
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  writerApplyBatchSize = [v3 writerApplyBatchSize];
  applySchedulerJobMaxRetriesBeforeAssert = [v3 applySchedulerJobMaxRetriesBeforeAssert];
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__BRCApplyScheduler_schedule__block_invoke;
  v7[3] = &unk_278501DE8;
  v7[4] = self;
  v8 = writerApplyBatchSize;
  v9 = applySchedulerJobMaxRetriesBeforeAssert;
  [clientDB groupInTransaction:v7];
}

uint64_t __29__BRCApplyScheduler_schedule__block_invoke(uint64_t a1)
{
  v2 = [[BRCSignpostTracker alloc] initWithLabel:1];
  v3 = [*(*(a1 + 32) + 8) bouncingAnalyzer];
  [v3 startBouncingIncidentBatch];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277D82C18] rawInjection:"throttle_id length:{zone_rowid, apply_kind, retry_count", 48}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__BRCApplyScheduler_schedule__block_invoke_2;
  v9[3] = &unk_278501DC0;
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 44);
  [v4 scheduleWithBatchSize:v5 whereSQLClause:0 columns:v6 actionHandler:v9];

  if ([*(*(a1 + 32) + 72) count])
  {
    [*(a1 + 32) _handleWatchingFaults];
  }

  v7 = [*(*(a1 + 32) + 8) bouncingAnalyzer];
  [v7 stopBouncingIncidentBatch];

  [(BRCSignpostTracker *)v2 endSignpostEvent];
  return 1;
}

void __29__BRCApplyScheduler_schedule__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 numberAtIndex:(a3 + 1)];
  v7 = [*(*(a1 + 32) + 8) serverZoneByRowID:v6];
  v8 = -[BRCApplyJobIdentifier initWithItemDBRowID:]([BRCApplyJobIdentifier alloc], "initWithItemDBRowID:", [v5 unsignedLongLongAtIndex:a3]);
  v9 = [v5 unsignedIntAtIndex:(a3 + 2)];
  v10 = [v5 numberAtIndex:(a3 + 3)];

  if ([v10 longLongValue] >= *(a1 + 40))
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = [(BRCApplyJobIdentifier *)v8 rank];
      v14 = [*(a1 + 32) tableName];
      v15 = 134218754;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      v19 = 2048;
      v20 = [v10 longLongValue];
      v21 = 2112;
      v22 = v11;
      _os_log_fault_impl(&dword_223E7A000, v12, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Apply Changes for rank %lld in table %@ seems to keep failing. retry_count: %lld%@", &v15, 0x2Au);
    }
  }

  [*(a1 + 32) _scheduleApplyJobWithID:v8 zone:v7 applyKind:v9];
}

- (void)monitorFaultingForZone:(id)zone
{
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  [clientDB assertOnQueue];

  if (([(NSMutableSet *)self->_clientZonesWatchingFaults containsObject:zoneCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_clientZonesWatchingFaults addObject:zoneCopy];
    [(BRCFSSchedulerBase *)self signal];
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BRCApplyScheduler(FPFSAdditions) monitorFaultingForZone:];
    }
  }
}

- (void)stopMonitoringFaultingForZone:(id)zone
{
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  [clientDB assertOnQueue];

  [(NSMutableSet *)self->_clientZonesWatchingFaults removeObject:zoneCopy];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCApplyScheduler(FPFSAdditions) stopMonitoringFaultingForZone:];
  }
}

- (BRCApplyScheduler)initWithAccountSession:(id)session
{
  v7.receiver = self;
  v7.super_class = BRCApplyScheduler;
  v3 = [(BRCFSSchedulerBase *)&v7 initWithSession:session name:@"Apply Changes" tableName:@"client_unapplied_table"];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clientZonesWatchingFaults = v3->_clientZonesWatchingFaults;
    v3->_clientZonesWatchingFaults = v4;
  }

  return v3;
}

- (id)descriptionForServerItem:(id)item context:(id)context
{
  contextCopy = context;
  v7 = -[BRCApplyJobIdentifier initWithItemDBRowID:]([BRCApplyJobIdentifier alloc], "initWithItemDBRowID:", [item rank]);
  v8 = [(BRCFSSchedulerBase *)self descriptionForJobsMatching:v7 context:contextCopy];

  return v8;
}

- (id)descriptionForRejectedItem:(id)item context:(id)context
{
  contextCopy = context;
  v7 = -[BRCApplyJobIdentifier initWithItemDBRowID:]([BRCApplyJobIdentifier alloc], "initWithItemDBRowID:", -[item dbRowID]);
  v8 = [(BRCFSSchedulerBase *)self descriptionForJobsMatching:v7 context:contextCopy];

  return v8;
}

- (void)describeInBuffer:(id)buffer aggregateOfJobsMatching:(id)matching context:(id)context
{
  bufferCopy = buffer;
  matchingCopy = matching;
  contextCopy = context;
  v11 = [contextCopy db];
  v12 = v11;
  if (v11)
  {
    clientDB = v11;
  }

  else
  {
    clientDB = [(BRCAccountSession *)self->super._session clientDB];
  }

  v14 = clientDB;

  matchingJobsWhereSQLClause = [matchingCopy matchingJobsWhereSQLClause];
  v16 = [v14 fetch:{@"SELECT throttle_state, COUNT(*) FROM client_unapplied_table WHERE %@ AND throttle_id > 0   AND throttle_id IN (SELECT item_rank FROM server_items) GROUP BY throttle_state", matchingJobsWhereSQLClause}];

  if ([v16 next])
  {
    do
    {
      v17 = [v16 unsignedIntAtIndex:0];
      v18 = [v16 unsignedLongAtIndex:1];
      v19 = [BRCDumpContext stringFromThrottleState:v17 context:contextCopy];
      [bufferCopy appendFormat:@" %@:%lld", v19, v18];
    }

    while (([v16 next] & 1) != 0);
  }

  matchingJobsWhereSQLClause2 = [matchingCopy matchingJobsWhereSQLClause];
  v21 = [v14 numberWithSQL:{@"SELECT COUNT(*) FROM client_unapplied_table WHERE %@ AND throttle_id > 0   AND throttle_id NOT IN (SELECT item_rank FROM server_items)", matchingJobsWhereSQLClause2}];

  if (v21)
  {
    [bufferCopy appendFormat:@" expired:%@", v21];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BRCApplyScheduler describeInBuffer:aggregateOfJobsMatching:context:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = matchingCopy;
  }

  else
  {
    v22 = 0;
  }

  clientZonesWatchingFaults = self->_clientZonesWatchingFaults;
  clientZone = [v22 clientZone];
  LODWORD(clientZonesWatchingFaults) = [(NSMutableSet *)clientZonesWatchingFaults containsObject:clientZone];

  if (clientZonesWatchingFaults)
  {
    v25 = [contextCopy highlightedString:@" has-faulting-barriers" type:3];
    [bufferCopy appendString:v25];
  }
}

- (void)setState:(int)state forServerItem:(id)item localItem:(id)localItem
{
  v6 = *&state;
  itemCopy = item;
  localItemCopy = localItem;
  v10 = itemCopy;
  v11 = localItemCopy;
  if ([v10 isLive] && objc_msgSend(v11, "isRejected"))
  {
    [BRCApplyScheduler setState:forServerItem:localItem:];
  }

  if ([v11 isRejected])
  {
    rank = -[v11 dbRowID];
  }

  else
  {
    rank = [v10 rank];
  }

  v13 = [[BRCApplyJobIdentifier alloc] initWithItemDBRowID:rank];

  [(BRCFSSchedulerBase *)self setState:v6 forJobID:v13];
}

- (void)setState:(int)state forRank:(int64_t)rank zoneRowID:(id)d
{
  v5 = *&state;
  v7 = [[BRCApplyJobIdentifier alloc] initWithItemDBRowID:rank];
  [(BRCFSSchedulerBase *)self setState:v5 forJobID:v7];
}

- (void)rescheduleItemRank:(int64_t)rank zoneRowID:(id)d matchingState:(int)state
{
  v5 = *&state;
  v7 = [[BRCApplyJobIdentifier alloc] initWithItemDBRowID:rank];
  [(BRCFSSchedulerBase *)self rescheduleSuspendedJobsMatching:v7 inState:v5];
}

- (void)_setState:(int)state andApplyKind:(unsigned int)kind forJobID:(id)d
{
  if (d)
  {
    v5 = *&kind;
    session = self->super._session;
    dCopy = d;
    clientDB = [(BRCAccountSession *)session clientDB];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__BRCApplyScheduler__setState_andApplyKind_forJobID___block_invoke;
    v13[3] = &unk_278501D70;
    v13[4] = self;
    stateCopy = state;
    v15 = v5;
    v11 = MEMORY[0x22AA4A310](v13);
    matchingJobsWhereSQLClause = [dCopy matchingJobsWhereSQLClause];

    [clientDB execute:{@"UPDATE client_unapplied_table   SET throttle_state = call_block(%@, next_retry_stamp, apply_kind), apply_kind = %u WHERE %@", v11, v5, matchingJobsWhereSQLClause}];
    if (state <= 0)
    {
      [(BRCFSSchedulerBase *)self checkIfHasWork];
    }
  }
}

void __53__BRCApplyScheduler__setState_andApplyKind_forJobID___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v7 = sqlite3_value_int(a4[1]);
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) signalWithDeadline:sqlite3_value_int64(*a4)];
  }

  if ([*(*(a1 + 32) + 72) count])
  {
    v8 = v7 == 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 && (*(a1 + 44) != 1 || *(a1 + 40) != 1))
  {
    [*(a1 + 32) signal];
  }

  v9 = *(a1 + 40);

  sqlite3_result_int(a2, v9);
}

- (void)setState:(int)state andApplyKind:(unsigned int)kind forServerItem:(id)item localItem:(id)localItem
{
  v7 = *&kind;
  v8 = *&state;
  itemCopy = item;
  localItemCopy = localItem;
  v12 = itemCopy;
  v13 = localItemCopy;
  if ([v12 isLive] && objc_msgSend(v13, "isRejected"))
  {
    [BRCApplyScheduler setState:forServerItem:localItem:];
  }

  if ([v13 isRejected])
  {
    rank = -[v13 dbRowID];
  }

  else
  {
    rank = [v12 rank];
  }

  v15 = [[BRCApplyJobIdentifier alloc] initWithItemDBRowID:rank];

  [(BRCApplyScheduler *)self _setState:v8 andApplyKind:v7 forJobID:v15];
}

- (void)setState:(int)state andApplyKind:(unsigned int)kind forRank:(int64_t)rank zoneRowID:(id)d
{
  v6 = *&kind;
  v7 = *&state;
  v9 = [[BRCApplyJobIdentifier alloc] initWithItemDBRowID:rank];
  [(BRCApplyScheduler *)self _setState:v7 andApplyKind:v6 forJobID:v9];
}

- (void)resetBackoffForServerItem:(id)item
{
  v4 = -[BRCApplyJobIdentifier initWithItemDBRowID:]([BRCApplyJobIdentifier alloc], "initWithItemDBRowID:", [item rank]);
  v5.receiver = self;
  v5.super_class = BRCApplyScheduler;
  [(BRCFSSchedulerBase *)&v5 resetBackoffForJobWithID:v4];
}

- (void)_createApplyJobInZone:(id)zone jobID:(id)d state:(int)state kind:(unsigned int)kind
{
  v6 = *&kind;
  dCopy = d;
  zoneCopy = zone;
  metadataSyncContext = [zoneCopy metadataSyncContext];
  applyThrottle = [metadataSyncContext applyThrottle];
  v12 = [MEMORY[0x277D82C18] rawInjection:"apply_kind length:{zone_rowid", 22}];
  v13 = MEMORY[0x277D82C08];
  dbRowID = [zoneCopy dbRowID];
  v15 = [v13 formatInjection:{@"%u, %@", v6, dbRowID}];
  v16 = MEMORY[0x277D82C08];
  dbRowID2 = [zoneCopy dbRowID];

  v18 = v16;
  selfCopy = self;
  v20 = [v18 formatInjection:{@"apply_kind = %u, zone_rowid = %@", v6, dbRowID2}];
  LODWORD(zoneCopy) = [(BRCFSSchedulerBase *)self insertOrUpdateJobID:dCopy throttle:applyThrottle withState:state insertedSQLColumn:v12 insertedSQLValues:v15 updatedSQLValues:v20 error:0];
  v22 = v21;

  if (zoneCopy == 1)
  {
    [(BRCFSSchedulerBase *)selfCopy signalWithDeadline:v22];
  }
}

- (void)createApplyJobFromServerItem:(id)item localItem:(id)localItem state:(int)state kind:(unsigned int)kind
{
  v6 = *&kind;
  v7 = *&state;
  itemCopy = item;
  localItemCopy = localItem;
  if (!(itemCopy | localItemCopy))
  {
    [BRCApplyScheduler createApplyJobFromServerItem:localItem:state:kind:];
  }

  serverZone = [itemCopy serverZone];
  v13 = serverZone;
  if (serverZone)
  {
    serverZone2 = serverZone;
  }

  else
  {
    serverZone2 = [localItemCopy serverZone];
  }

  v15 = serverZone2;

  v16 = itemCopy;
  v17 = localItemCopy;
  if ([v16 isLive] && objc_msgSend(v17, "isRejected"))
  {
    [BRCApplyScheduler setState:forServerItem:localItem:];
  }

  if ([v17 isRejected])
  {
    rank = -[v17 dbRowID];
  }

  else
  {
    rank = [v16 rank];
  }

  v19 = [[BRCApplyJobIdentifier alloc] initWithItemDBRowID:rank];

  [(BRCApplyScheduler *)self _createApplyJobInZone:v15 jobID:v19 state:v7 kind:v6];
}

- (void)createApplyJobFromServerItemRank:(int64_t)rank localItem:(id)item state:(int)state kind:(unsigned int)kind
{
  v6 = *&kind;
  v7 = *&state;
  itemCopy = item;
  v11 = itemCopy;
  if (rank && itemCopy)
  {
    v12 = itemCopy;
  }

  else
  {
    [BRCApplyScheduler createApplyJobFromServerItemRank:itemCopy localItem:(rank == 0) state:? kind:?];
  }

  if ([v11 isRejected])
  {
    rank = -[v11 dbRowID];
  }

  v13 = [[BRCApplyJobIdentifier alloc] initWithItemDBRowID:rank];

  serverZone = [v11 serverZone];
  [(BRCApplyScheduler *)self _createApplyJobInZone:serverZone jobID:v13 state:v7 kind:v6];
}

- (void)didCreateMissingParentID:(id)d zone:(id)zone
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  session = self->super._session;
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)session clientDB];
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [BRCApplyScheduler didCreateMissingParentID:zone:];
  }

  dbRowID = [zoneCopy dbRowID];
  dbRowID2 = [zoneCopy dbRowID];

  [clientDB execute:{@"UPDATE client_unapplied_table    SET throttle_state = 1  WHERE zone_rowid = %@     AND throttle_state IN (21, 16)    AND throttle_id IN (SELECT item_rank FROM server_items                        WHERE zone_rowid = %@ AND item_parent_id = %@)", dbRowID, dbRowID2, dCopy}];
  changes = [clientDB changes];
  if ([dCopy isDocumentsFolder])
  {
    [clientDB execute:{@"UPDATE client_unapplied_table    SET throttle_state = 1  WHERE throttle_state IN (21, 16)    AND throttle_id IN (SELECT item_rank FROM server_items WHERE (item_sharing_options & 4) != 0 AND item_id_is_shared_root(item_parent_id))"}];
    changes += [clientDB changes];
  }

  if (changes)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v18 = changes;
      v19 = 2112;
      v20 = dCopy;
      v21 = 2112;
      v22 = v15;
      _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Apply Changes: retrying %lld suspended throttles (missing parent found: %@)%@", buf, 0x20u);
    }

    [(BRCFSSchedulerBase *)self signal];
  }
}

- (void)didReparentOrKillItemID:(id)d parentItemID:(id)iD zone:(id)zone
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  dbRowID = [zoneCopy dbRowID];
  dbRowID2 = [zoneCopy dbRowID];
  dbRowID3 = [zoneCopy dbRowID];
  [clientDB execute:{@"WITH RECURSIVE  reschedulable_items (item_rank, item_id) AS(   SELECT si.item_rank, si.item_id      FROM server_items AS si     WHERE si.zone_rowid = %@       AND si.item_type IN (0, 9, 10, 4) AND NOT EXISTS (SELECT 1 FROM client_items AS ci         WHERE ci.item_parent_zone_rowid = %@ AND ci.item_parent_id = si.item_id           AND ci.item_state IN (0)   ) ) UPDATE client_unapplied_table    SET throttle_state = 1  WHERE zone_rowid = %@     AND throttle_state = 25    AND throttle_id IN (SELECT item_rank FROM reschedulable_items WHERE item_id = %@)", dbRowID, dbRowID2, dbRowID3, iDCopy}];

  changes = [clientDB changes];
  if (changes)
  {
    v16 = changes;
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218754;
      v26 = v16;
      v27 = 2112;
      v28 = dCopy;
      v29 = 2112;
      v30 = iDCopy;
      v31 = 2112;
      v32 = v17;
      v19 = "[DEBUG] Apply Changes: retrying %lld suspended throttles (child %@ of %@ killed or reparented)%@";
LABEL_9:
      _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, v19, buf, 0x2Au);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  dbRowID4 = [zoneCopy dbRowID];
  dbRowID5 = [zoneCopy dbRowID];
  dbRowID6 = [zoneCopy dbRowID];
  [clientDB execute:{@"WITH RECURSIVE  reschedulable_items (throttle_id, item_id) AS(   SELECT -pi.rowid, pi.item_id      FROM client_items AS pi     WHERE pi.zone_rowid = %@       AND pi.item_type IN (0, 9, 10, 4) AND NOT EXISTS (SELECT 1 FROM client_items AS ci         WHERE ci.item_parent_zone_rowid = %@ AND ci.item_parent_id = pi.item_id           AND ci.item_state IN (0)   ) ) UPDATE client_unapplied_table    SET throttle_state = 1  WHERE zone_rowid = %@     AND throttle_state = 25    AND throttle_id IN (SELECT throttle_id FROM reschedulable_items WHERE item_id = %@)", dbRowID4, dbRowID5, dbRowID6, iDCopy}];

  changes2 = [clientDB changes];
  if (changes2)
  {
    v24 = changes2;
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218754;
      v26 = v24;
      v27 = 2112;
      v28 = dCopy;
      v29 = 2112;
      v30 = iDCopy;
      v31 = 2112;
      v32 = v17;
      v19 = "[DEBUG] Apply Changes: retrying %lld suspended rejected throttles (child %@ of %@ killed or reparented)%@";
      goto LABEL_9;
    }

LABEL_6:

    [(BRCFSSchedulerBase *)self signal];
  }
}

- (void)didCompleteCrossZoneMigrationForAppLibrary:(id)library
{
  v20 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  cloudDocsClientZone = [(BRCAccountSession *)self->super._session cloudDocsClientZone];
  dbRowID = [cloudDocsClientZone dbRowID];

  rootItemID = [libraryCopy rootItemID];
  [clientDB execute:{@"UPDATE client_unapplied_table    SET throttle_state = 1  WHERE zone_rowid = %@     AND throttle_state = %u    AND throttle_id IN (SELECT item_rank FROM server_items                        WHERE zone_rowid = %@ AND item_parent_id = %@)", dbRowID, 27, dbRowID, rootItemID}];
  changes = [clientDB changes];
  if (changes)
  {
    v10 = changes;
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      logName = [libraryCopy logName];
      *buf = 134218498;
      v15 = v10;
      v16 = 2112;
      v17 = logName;
      v18 = 2112;
      v19 = v11;
      _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Apply Changes: retrying %lld suspended throttles (appLibrary completed migration: %@)%@", buf, 0x20u);
    }

    [(BRCFSSchedulerBase *)self signal];
  }
}

- (void)_rescheduleRank:(int64_t)rank inState:(int)state forZone:(id)zone
{
  v5 = *&state;
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  if (v5 <= 1)
  {
    [BRCApplyScheduler _rescheduleRank:inState:forZone:];
  }

  dbRowID = [zoneCopy dbRowID];
  [clientDB execute:{@"UPDATE client_unapplied_table SET throttle_state = 1 WHERE throttle_state = %u AND zone_rowid = %@ AND throttle_id = %llu", v5, dbRowID, rank}];

  if ([clientDB changes])
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [BRCApplyScheduler _rescheduleRank:inState:forZone:];
    }

    [(BRCFSSchedulerBase *)self signal];
  }
}

- (void)rescheduleMissingTargetAliasesWithTarget:(id)target
{
  targetCopy = target;
  if (([targetCopy isSharedToMeTopLevelItem] & 1) == 0)
  {
    serverZone = [targetCopy serverZone];
    unsaltedBookmarkData = [targetCopy unsaltedBookmarkData];
    appLibrary = [targetCopy appLibrary];
    mangledID = [appLibrary mangledID];
    v9 = [BRCUserDefaults defaultsForMangledID:mangledID];
    shouldFixupTargetCZMAliases = [v9 shouldFixupTargetCZMAliases];

    if (shouldFixupTargetCZMAliases)
    {
      if ([serverZone isSharedZone])
      {
        zoneName = [serverZone zoneName];
        v12 = *MEMORY[0x277CFAD68];
        if ([zoneName isEqualToString:*MEMORY[0x277CFAD68]])
        {
          v13 = [unsaltedBookmarkData hasPrefix:v12];

          if (v13)
          {
            v14 = [unsaltedBookmarkData substringFromIndex:{objc_msgSend(v12, "length")}];
            v15 = [v14 br_stringByBackslashEscapingCharactersInString:@"\\_%"];
            [@"%" stringByAppendingString:v15];

LABEL_16:
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      if ([serverZone isSharedZone])
      {
        zoneName2 = [serverZone zoneName];
        v17 = [zoneName2 isEqualToString:*MEMORY[0x277CFAD68]];

        if (v17)
        {
          v18 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            [(BRCApplyScheduler *)v18 rescheduleMissingTargetAliasesWithTarget:v19, v20];
          }
        }
      }
    }

    clientDB = [(BRCAccountSession *)self->super._session clientDB];
    v22 = [clientDB fetch:{@"SELECT item_rank, zone_rowid FROM server_items WHERE item_alias_target = %@ AND item_type = 3", unsaltedBookmarkData}];

    if ([v22 next])
    {
      do
      {
        v23 = [v22 longLongAtIndex:0];
        v24 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v22, "longLongAtIndex:", 1)}];
        v25 = [(BRCAccountSession *)self->super._session serverZoneByRowID:v24];
        [(BRCApplyScheduler *)self _rescheduleRank:v23 inState:24 forZone:v25];
      }

      while (([v22 next] & 1) != 0);
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (BOOL)_rescheduleItemsParentedToItemGlobalID:(id)d flags:(unsigned int)flags
{
  v4 = *&flags;
  dCopy = d;
  itemID = [dCopy itemID];
  zoneRowID = [dCopy zoneRowID];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__BRCApplyScheduler__rescheduleItemsParentedToItemGlobalID_flags___block_invoke;
  v14[3] = &unk_278501D98;
  v10 = itemID;
  v15 = v10;
  v19 = &v20;
  v11 = zoneRowID;
  v16 = v11;
  selfCopy = self;
  v12 = dCopy;
  v18 = v12;
  [clientDB performWithFlags:v4 action:v14];

  LOBYTE(v4) = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return v4;
}

uint64_t __66__BRCApplyScheduler__rescheduleItemsParentedToItemGlobalID_flags___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) isNonDesktopRoot] & 1) == 0)
  {
    [v3 execute:{@"UPDATE client_items SET item_type = 0 WHERE item_id = %@ AND zone_rowid = %@ AND item_type = 9 AND (SELECT 1 FROM server_items AS si               WHERE client_items.item_id = si.item_id                AND client_items.zone_rowid = si.zone_rowid                AND si.item_type = 0 LIMIT 1)", *(a1 + 32), *(a1 + 40)}];
    if (![v3 changes])
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __66__BRCApplyScheduler__rescheduleItemsParentedToItemGlobalID_flags___block_invoke_cold_2();
      }

      goto LABEL_14;
    }

    [v3 execute:{@"UPDATE item_recursive_properties SET item_type = 0, dir_faults_count = dir_faults_count - 1 WHERE item_id = %@ AND zone_rowid = %@", *(a1 + 32), *(a1 + 40)}];
    v4 = [*(*(a1 + 48) + 8) serverZoneByRowID:*(a1 + 40)];
    v5 = [v4 clientZone];
    [v5 scheduleSyncUp];

    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __66__BRCApplyScheduler__rescheduleItemsParentedToItemGlobalID_flags___block_invoke_cold_1();
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  [v3 execute:{@"UPDATE client_unapplied_table SET throttle_state = 1 WHERE throttle_state != 0 AND throttle_id IN (SELECT item_rank FROM server_items WHERE item_parent_id = %@ AND zone_rowid = %@)", *(a1 + 32), *(a1 + 40)}];
  if (![v3 changes])
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __66__BRCApplyScheduler__rescheduleItemsParentedToItemGlobalID_flags___block_invoke_cold_3();
    }

LABEL_14:

    goto LABEL_15;
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v3 changes];
    v14 = [*(a1 + 32) debugItemIDString];
    *buf = 134218498;
    v16 = v13;
    v17 = 2112;
    v18 = v14;
    v19 = 2112;
    v20 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Apply Changes: Rescheduled %lld items which were blocked for greediness when listing folder %@%@", buf, 0x20u);
  }

  [*(a1 + 48) signal];
LABEL_15:

  return 1;
}

- (void)rescheduleItemsRecursivelyUnderFolder:(id)folder
{
  folderCopy = folder;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  clientTruthWorkloop = [(BRCAccountSession *)self->super._session clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__BRCApplyScheduler_rescheduleItemsRecursivelyUnderFolder___block_invoke;
  block[3] = &unk_2784FF4A0;
  v10 = clientDB;
  v11 = folderCopy;
  selfCopy = self;
  v7 = folderCopy;
  v8 = clientDB;
  dispatch_async(clientTruthWorkloop, block);
}

void __59__BRCApplyScheduler_rescheduleItemsRecursivelyUnderFolder___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__BRCApplyScheduler_rescheduleItemsRecursivelyUnderFolder___block_invoke_2;
  v5[3] = &unk_278500FA8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 performWithFlags:8 action:v5];
}

uint64_t __59__BRCApplyScheduler_rescheduleItemsRecursivelyUnderFolder___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [BRCUserDefaults defaultsForMangledID:0];
  v5 = [v4 rescheduleItemsRecursivelyBatchSize];

  v6 = [*(a1 + 32) zoneRowID];
  v7 = [*(a1 + 32) itemID];
  v23 = v5;
  v24 = v3;
  v8 = [v3 fetch:{@"WITH RECURSIVE item_children_with_faults (item_id, zone_rowid, item_type) AS(    SELECT item_id, zone_rowid, item_type FROM item_recursive_properties     WHERE zone_rowid = %@ AND item_parent_id = %@ AND item_type IN (0, 9, 10)       AND dir_faults_count > 0 AND NOT item_id_is_documents(item_id)  UNION ALL     SELECT ip.item_id, ip.zone_rowid, ip.item_type FROM item_recursive_properties AS ip     INNER JOIN item_children_with_faults AS p     WHERE ip.item_parent_id = p.item_id       AND ip.zone_rowid = p.zone_rowid       AND ip.item_type IN (0, 9, 10)       AND ip.dir_faults_count > 0) SELECT item_id, zone_rowid FROM item_children_with_faults AS ic WHERE ic.item_type = 9 LIMIT %lld", v6, v7, v5}];

  v9 = 0;
  if ([v8 next])
  {
    v9 = 0;
    while (1)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [v8 objectOfClass:objc_opt_class() atIndex:0];
      v12 = [v8 objectOfClass:objc_opt_class() atIndex:1];
      v13 = [[BRCItemGlobalID alloc] initWithZoneRowID:v12 itemID:v11];
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v26 = v13;
        v27 = 2112;
        v28 = v14;
        _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Rescheduling items at a flat level under %@%@", buf, 0x16u);
      }

      v16 = [*(*(a1 + 40) + 8) applyScheduler];
      v17 = [v16 _rescheduleItemsParentedToItemGlobalID:v13 flags:0];

      if ((v17 & 1) == 0)
      {
        break;
      }

      objc_autoreleasePoolPop(v10);
      ++v9;
      if (![v8 next])
      {
        goto LABEL_7;
      }
    }

    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      __59__BRCApplyScheduler_rescheduleItemsRecursivelyUnderFolder___block_invoke_2_cold_1();
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
LABEL_7:
    v18 = *(a1 + 40);
    if (v9 >= v23)
    {
      [v18 rescheduleItemsRecursivelyUnderFolder:*(a1 + 32)];
    }

    else
    {
      v19 = [v18[1] applyScheduler];
      [v19 _rescheduleItemsParentedToItemGlobalID:*(a1 + 32) flags:0];
    }
  }

  return 1;
}

- (void)repopulateJobsForZone:(id)zone
{
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCApplyScheduler repopulateJobsForZone:];
  }

  dbRowID = [zoneCopy dbRowID];
  dbRowID2 = [zoneCopy dbRowID];
  [clientDB execute:{@"INSERT OR REPLACE INTO client_unapplied_table(zone_rowid, throttle_id, throttle_state, apply_kind) SELECT %@, -rowid, 1, %u FROM client_items WHERE zone_rowid = %@ AND item_localsyncupstate = 1", dbRowID, 0, dbRowID2}];

  dbRowID3 = [zoneCopy dbRowID];
  dbRowID4 = [zoneCopy dbRowID];
  [clientDB execute:{@"INSERT OR REPLACE INTO client_unapplied_table(zone_rowid, throttle_id, throttle_state, apply_kind) SELECT %@, item_rank, 1, %u FROM server_items WHERE zone_rowid = %@", dbRowID3, 1, dbRowID4}];
}

- (void)_scheduleApplyJobWithID:(id)d zone:(id)zone applyKind:(unsigned int)kind
{
  v65 = *MEMORY[0x277D85DE8];
  dCopy = d;
  zoneCopy = zone;
  clientZone = [zoneCopy clientZone];
  if ([dCopy serverItemRank])
  {
    v11 = [clientZone serverItemByRank:{objc_msgSend(dCopy, "serverItemRank")}];
  }

  else
  {
    v11 = 0;
  }

  if ([dCopy rejectedRowID])
  {
    v12 = [clientZone itemByRowID:{objc_msgSend(dCopy, "rejectedRowID")}];
  }

  else
  {
    itemID = [v11 itemID];
    v12 = [clientZone itemByItemID:itemID];
  }

  rank = [dCopy rank];
  v14 = _os_activity_create(&dword_223E7A000, "apply-changes", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v14, &state);
  if (!zoneCopy)
  {
    v34 = brc_bread_crumbs();
    v35 = brc_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      [BRCApplyScheduler _scheduleApplyJobWithID:v34 zone:v35 applyKind:v36];
    }
  }

  memset(v51, 0, sizeof(v51));
  __brc_create_section(1, "[BRCApplyScheduler _scheduleApplyJobWithID:zone:applyKind:]", 656, 0, v51);
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v40 = zoneCopy;
    selfCopy = self;
    v18 = clientZone;
    v19 = v14;
    v20 = v51[0];
    v21 = BRCPrettyPrintEnum();
    *buf = 134219266;
    v54 = v20;
    v55 = 2112;
    v56 = dCopy;
    v57 = 2080;
    v58 = v21;
    v59 = 2112;
    v60 = v11;
    v61 = 2112;
    v62 = v12;
    v63 = 2112;
    v64 = v15;
    _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] ┏%llx Apply Changes[%@]: attempting to apply %s\n  server item: %@\n  local item:  %@%@", buf, 0x3Eu);
    v14 = v19;
    clientZone = v18;
    self = selfCopy;
    zoneCopy = v40;
  }

  if (!kind)
  {
    if (v11)
    {
      v37 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        [BRCApplyScheduler _scheduleApplyJobWithID:v37 zone:v38 applyKind:v39];
      }
    }

    if (v12)
    {
      if ([v12 isRejected])
      {
        v11 = 0;
LABEL_21:
        clientDB = [(BRCAccountSession *)self->super._session clientDB];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __60__BRCApplyScheduler__scheduleApplyJobWithID_zone_applyKind___block_invoke;
        v42[3] = &unk_278501E10;
        v42[4] = self;
        v43 = dCopy;
        v44 = zoneCopy;
        v11 = v11;
        v45 = v11;
        v46 = v12;
        v47 = rank;
        [clientDB groupInBatch:v42];

        goto LABEL_28;
      }

      v48 = 0;
      v49 = 0;
      v50 = 0;
      __brc_create_section(0, "[BRCApplyScheduler _scheduleApplyJobWithID:zone:applyKind:]", 671, 0, &v48);
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        v54 = v48;
        v55 = 2112;
        v56 = dCopy;
        v57 = 2112;
        v58 = v25;
        _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Apply Changes[%@]: deleting rejected action with a non-rejected local item%@", buf, 0x20u);
      }

LABEL_27:

      [(BRCFSSchedulerBase *)self deleteJobsMatching:dCopy];
      __brc_leave_section(&v48);
      v11 = 0;
      goto LABEL_28;
    }

LABEL_22:
    v48 = 0;
    v49 = 0;
    v50 = 0;
    __brc_create_section(0, "[BRCApplyScheduler _scheduleApplyJobWithID:zone:applyKind:]", 668, 0, &v48);
    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v54 = v48;
      v55 = 2112;
      v56 = dCopy;
      v57 = 2112;
      v58 = v25;
      _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Apply Changes[%@]: deleting action without local and server item%@", buf, 0x20u);
    }

    goto LABEL_27;
  }

  if (!(v12 | v11))
  {
    goto LABEL_22;
  }

  if (!v11 || [v11 rank] == rank)
  {
    goto LABEL_21;
  }

  v48 = 0;
  v49 = 0;
  v50 = 0;
  __brc_create_section(0, "[BRCApplyScheduler _scheduleApplyJobWithID:zone:applyKind:]", 674, 0, &v48);
  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v27 = v12;
    v28 = zoneCopy;
    selfCopy2 = self;
    v30 = clientZone;
    v31 = v14;
    v32 = v48;
    rank2 = [v11 rank];
    *buf = 134219010;
    v54 = v32;
    v55 = 2112;
    v56 = dCopy;
    v57 = 2048;
    v58 = rank2;
    v59 = 2048;
    v60 = rank;
    v61 = 2112;
    v62 = v22;
    _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Apply Changes[%@]: deleting useless action %lld vs %lld%@", buf, 0x34u);
    v14 = v31;
    clientZone = v30;
    self = selfCopy2;
    zoneCopy = v28;
    v12 = v27;
  }

  [(BRCFSSchedulerBase *)self deleteJobsMatching:dCopy];
  __brc_leave_section(&v48);
LABEL_28:
  __brc_leave_section(v51);
  os_activity_scope_leave(&state);
}

void __60__BRCApplyScheduler__scheduleApplyJobWithID_zone_applyKind___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) metadataSyncContext];
  v5 = [v4 applyThrottle];
  [v2 postponeJobID:v3 withThrottle:v5];

  v6 = [*(*(a1 + 32) + 8) serverChangesApplier];
  [v6 applyChanges:*(a1 + 56) localItem:*(a1 + 64) rank:*(a1 + 72) zone:*(a1 + 48)];
}

- (void)_handleWatchingFaults
{
  v66 = *MEMORY[0x277D85DE8];
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v4 = self->_clientZonesWatchingFaults;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v56;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v56 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v55 + 1) + 8 * i);
        if ([v9 isSyncBlocked])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v6);
  }

  v45 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  selfCopy = self;
  v10 = self->_clientZonesWatchingFaults;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v51 objects:v64 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v52;
    v43 = *MEMORY[0x277CFABD0];
    v14 = 0x2784FD000uLL;
    do
    {
      v15 = 0;
      v44 = v12;
      do
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v51 + 1) + 8 * v15);
        v17 = *(v14 + 3640);
        mangledID = [v16 mangledID];
        v19 = [v17 defaultsForMangledID:mangledID];
        applyCountToSignalFaultsLive = [v19 applyCountToSignalFaultsLive];

        dbRowID = [v16 dbRowID];
        v22 = [clientDB numberWithSQL:{@"SELECT 1 FROM client_unapplied_table WHERE zone_rowid = %@ AND throttle_state = 1 AND apply_kind = %d AND retry_count < %lld LIMIT 1", dbRowID, 1, applyCountToSignalFaultsLive}];

        if (([v22 BOOLValue] & 1) == 0)
        {
          dbRowID2 = [v16 dbRowID];
          v24 = [clientDB numberWithSQL:{@"SELECT 1 FROM client_unapplied_table WHERE zone_rowid = %@ AND throttle_state = 1 AND apply_kind = %d LIMIT 1", dbRowID2, 1}];

          if ([v24 BOOLValue])
          {
            v25 = [MEMORY[0x277CCA9B8] br_errorWithDomain:v43 code:41 description:@"apply is failing"];
            [v16 mangledID];
            v26 = v13;
            v27 = v14;
            v28 = v3;
            v30 = v29 = v10;
            [v45 setObject:v25 forKeyedSubscript:v30];

            v10 = v29;
            v3 = v28;
            v14 = v27;
            v13 = v26;
            v12 = v44;
          }

          [v3 addObject:v16];
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v12);
  }

  [(NSMutableSet *)selfCopy->_clientZonesWatchingFaults minusSet:v3];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v31 = v3;
  v32 = [v31 countByEnumeratingWithState:&v47 objects:v63 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v48;
    v35 = *MEMORY[0x277CFABD0];
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v37 = *(*(&v47 + 1) + 8 * j);
        if ([v37 isSyncBlocked])
        {
          mangledID2 = [MEMORY[0x277CCA9B8] br_errorWithDomain:v35 code:12 description:{@"sync is blocked for client zone: %@", v37}];
          [v37 signalFaultingWatchersWithError:mangledID2];
        }

        else
        {
          mangledID2 = [v37 mangledID];
          v39 = [v45 objectForKeyedSubscript:mangledID2];
          [v37 signalFaultingWatchersWithError:v39];
        }

        v40 = brc_bread_crumbs();
        v41 = brc_default_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v60 = v37;
          v61 = 2112;
          v62 = v40;
          _os_log_debug_impl(&dword_223E7A000, v41, OS_LOG_TYPE_DEBUG, "[DEBUG] Signalled faulting-barrier waiters for %@%@", buf, 0x16u);
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v47 objects:v63 count:16];
    }

    while (v33);
  }
}

- (void)deleteExpiredJobs
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (unint64_t)_addRanksUpToRank:(int64_t)rank inZone:(id)zone
{
  v31 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  lastInsertedRank = [zoneCopy lastInsertedRank];
  if (lastInsertedRank >= rank)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRCApplyScheduler _addRanksUpToRank:inZone:];
    }

    changes = 0;
  }

  else
  {
    v9 = lastInsertedRank;
    dbRowID = [zoneCopy dbRowID];
    dbRowID2 = [zoneCopy dbRowID];
    v12 = [clientDB executeWithSlowStatementRadar:@"<rdar://problem/23822933>" sql:{@"INSERT OR IGNORE INTO client_unapplied_table (zone_rowid, throttle_id, throttle_state, retry_count, last_try_stamp, next_retry_stamp, expire_stamp, apply_kind) SELECT %@, item_rank, 1, 0, 0, 0, 0, %u  FROM server_items WHERE zone_rowid = %@ AND item_rank >= %lld AND item_rank < %lld", dbRowID, 1, dbRowID2, v9, rank}];

    if (v12)
    {
      changes = [clientDB changes];
    }

    else
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [BRCApplyScheduler _addRanksUpToRank:inZone:];
      }

      changes = 0;
    }

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = rank - 1;
      zoneName = [zoneCopy zoneName];
      *buf = 134219010;
      v22 = v9;
      v23 = 2048;
      v24 = v19;
      v25 = 2112;
      v26 = zoneName;
      v27 = 2048;
      v28 = changes;
      v29 = 2112;
      v30 = v14;
      _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Apply Changes [%lld .. %lld]: in %@, %llu ranks inserted%@", buf, 0x34u);
    }
  }

  return changes;
}

- (void)generatedRanksForZone:(id)zone upToRank:(int64_t)rank
{
  clientZone = [zone clientZone];
  v6 = [(BRCApplyScheduler *)self _addRanksUpToRank:rank inZone:clientZone];
  [clientZone listedUpToRank:rank];
  if (v6)
  {
    [(BRCFSSchedulerBase *)self signal];
  }
}

- (void)_didSyncDownZone:(id)zone requestID:(unint64_t)d upToRank:(int64_t)rank caughtUpWithServer:(BOOL)server isFixingState:(BOOL)state
{
  stateCopy = state;
  serverCopy = server;
  v33 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  clientZone = [zoneCopy clientZone];
  memset(v20, 0, sizeof(v20));
  __brc_create_section(0, "[BRCApplyScheduler _didSyncDownZone:requestID:upToRank:caughtUpWithServer:isFixingState:]", 840, 0, v20);
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v19 = "NO";
    *buf = 134219266;
    if (serverCopy)
    {
      v19 = "YES";
    }

    v22 = v20[0];
    v23 = 2048;
    dCopy = d;
    v25 = 2112;
    v26 = clientZone;
    v27 = 2048;
    rankCopy = rank;
    v29 = 2080;
    v30 = v19;
    v31 = 2112;
    v32 = v14;
    _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx did sync down requestID:%llu, applying server truth on %@. maxRank [%lld] caughtUp [%s]%@", buf, 0x3Eu);
  }

  v16 = [(BRCApplyScheduler *)self _addRanksUpToRank:rank inZone:clientZone];
  [zoneCopy changeState];
  if (stateCopy)
    v17 = {;
    lastSyncDownDate = [v17 lastSyncDownDate];
    [clientZone fixStoredRequestIDWithServerRequestID:d maxApplyRank:rank caughtUpWithServer:serverCopy syncDownDate:lastSyncDownDate];
  }

  else
    v17 = {;
    lastSyncDownDate = [v17 lastSyncDownDate];
    [clientZone didSyncDownRequestID:d maxApplyRank:rank caughtUpWithServer:serverCopy syncDownDate:lastSyncDownDate];
  }

  [(BRCFSSchedulerBase *)self rescheduleSuspendedJobsMatching:zoneCopy inState:25];
  [(BRCFSSchedulerBase *)self rescheduleSuspendedJobsMatching:zoneCopy inState:16];
  [(BRCFSSchedulerBase *)self rescheduleSuspendedJobsMatching:zoneCopy inState:21];
  if (v16 || [(NSMutableSet *)self->_clientZonesWatchingFaults containsObject:clientZone])
  {
    [(BRCFSSchedulerBase *)self signal];
  }

  __brc_leave_section(v20);
}

- (void)_close
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = self->_clientZonesWatchingFaults;
  clientZonesWatchingFaults = self->_clientZonesWatchingFaults;
  self->_clientZonesWatchingFaults = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        brc_errorLoggedOut = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
        [v10 signalFaultingWatchersWithError:brc_errorLoggedOut];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12.receiver = self;
  v12.super_class = BRCApplyScheduler;
  [(BRCFSSchedulerBase *)&v12 _close];
}

- (void)_recoverAndCreateApplyJobsForServerItemsWithNoMatchingClientItems:(id)items batchSize:(unint64_t)size recoveryTask:(id)task completion:(id)completion
{
  itemsCopy = items;
  taskCopy = task;
  completionCopy = completion;
  v13 = completionCopy;
  if (!size || !completionCopy)
  {
    if (!completionCopy)
    {
      goto LABEL_8;
    }

LABEL_7:
    v13[2](v13, 0);
    goto LABEL_8;
  }

  if (taskCopy && ([taskCopy isTaskExpired] & 1) != 0)
  {
    goto LABEL_7;
  }

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("com.apple.recovery.apply.scheduler.workingQueue", v14);

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __121__BRCApplyScheduler__recoverAndCreateApplyJobsForServerItemsWithNoMatchingClientItems_batchSize_recoveryTask_completion___block_invoke;
  v16[3] = &unk_278501E60;
  v21 = v25;
  v17 = taskCopy;
  v20 = v13;
  selfCopy = self;
  v22 = v27;
  v23 = v29;
  v19 = itemsCopy;
  sizeCopy = size;
  dispatch_async(v15, v16);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);

LABEL_8:
}

uint64_t __121__BRCApplyScheduler__recoverAndCreateApplyJobsForServerItemsWithNoMatchingClientItems_batchSize_recoveryTask_completion___block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    do
    {
      if ([*(a1 + 32) isTaskExpired])
      {
        break;
      }

      v2 = [*(*(a1 + 40) + 8) clientTruthWorkloop];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __121__BRCApplyScheduler__recoverAndCreateApplyJobsForServerItemsWithNoMatchingClientItems_batchSize_recoveryTask_completion___block_invoke_2;
      v6[3] = &unk_278501E38;
      v3 = *(a1 + 80);
      v4 = *(a1 + 48);
      v6[4] = *(a1 + 40);
      v8 = v3;
      v7 = v4;
      v10 = *(a1 + 88);
      v9 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
      dispatch_async_and_wait(v2, v6);
    }

    while (*(*(*(a1 + 64) + 8) + 24) != 1);
  }

  return (*(*(a1 + 56) + 16))();
}

void __121__BRCApplyScheduler__recoverAndCreateApplyJobsForServerItemsWithNoMatchingClientItems_batchSize_recoveryTask_completion___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) clientDB];
  v3 = [v2 fetch:{@"SELECT si.item_rank, si.zone_rowid FROM server_items AS si LEFT JOIN client_items AS ci ON ci.item_id = si.item_id AND ci.zone_rowid = si.zone_rowid WHERE si.item_state = 0 AND si.item_type != 3 AND si.item_rank >= %lld AND (ci.rowid IS NULL OR ci.item_localsyncupstate = 0) AND (NOT ckinfo_etags_are_equal(si.version_ckinfo, ci.version_ckinfo) OR (NOT ckinfo_etags_are_equal(si.item_stat_ckinfo, ci.item_stat_ckinfo) AND NOT (si.item_sharing_options & 4 != 0 AND %@ != (SELECT cz.zone_owner FROM client_zones AS cz WHERE cz.rowid = si.zone_rowid))) OR ci.rowid IS NULL) AND NOT indexset_contains(%p, si.zone_rowid) AND NOT EXISTS (SELECT 1 FROM client_unapplied_table AS cu WHERE cu.throttle_id = si.item_rank AND cu.throttle_state != 0) ORDER BY si.item_rank LIMIT %lld", *(*(*(a1 + 48) + 8) + 24), *MEMORY[0x277CBBF28], *(a1 + 40), *(a1 + 72)}];

  if ([v3 next])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      context = objc_autoreleasePoolPush();
      v6 = [v3 longLongAtIndex:0];
      v7 = v6;
      if (v5 <= v6)
      {
        v5 = v6;
      }

      v8 = [v3 numberAtIndex:1];
      v9 = [*(*(a1 + 32) + 8) serverZoneByRowID:v8];
      v10 = [v9 clientZone];

      v11 = [v10 serverItemByRank:v7];
      v12 = [v11 itemID];
      v13 = [v10 itemByItemID:v12];

      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v19 = v11;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Item %@ is missing an apply throttle%@", buf, 0x16u);
      }

      if (v13)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      [*(a1 + 32) createApplyJobFromServerItem:v11 localItem:v13 state:1 kind:v16];
      ++*(*(*(a1 + 56) + 8) + 24);
      ++v4;

      objc_autoreleasePoolPop(context);
    }

    while (([v3 next] & 1) != 0);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 >= *(a1 + 72))
  {
    *(*(*(a1 + 48) + 8) + 24) = v5;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

- (void)_recoverAndReportMissingJobsWithCompletion:(id)completion report:(BOOL)report recoveryTask:(id)task
{
  v64 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  taskCopy = task;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  selfCopy = self;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  v36 = [clientDB fetch:{@"SELECT ci.rowid, ci.zone_rowid, ci.item_id, ci.item_creator_id, ci.item_sharing_options, ci.item_side_car_ckinfo, ci.item_parent_zone_rowid, ci.item_localsyncupstate, ci.item_local_diffs, ci.item_notifs_rank, ci.app_library_rowid, ci.item_min_supported_os_rowid, ci.item_user_visible, ci.item_stat_ckinfo, ci.item_state, ci.item_type, ci.item_mode, ci.item_birthtime, ci.item_lastusedtime, ci.item_favoriterank, ci.item_parent_id, ci.item_filename, ci.item_hidden_ext, ci.item_finder_tags, ci.item_xattr_signature, ci.item_trash_put_back_path, ci.item_trash_put_back_parent_id, ci.item_alias_target, ci.item_creator, ci.item_processing_stamp, ci.item_bouncedname, ci.item_scope, ci.item_local_change_count, ci.item_old_version_identifier, ci.fp_creation_item_identifier, ci.version_name, ci.version_ckinfo, ci.version_mtime, ci.version_size, ci.version_thumb_size, ci.version_thumb_signature, ci.version_content_signature, ci.version_xattr_signature, ci.version_edited_since_shared, ci.version_device, ci.version_conflict_loser_etags, ci.version_quarantine_info, ci.version_uploaded_assets, ci.version_upload_error, ci.version_old_zone_item_id, ci.version_old_zone_rowid, ci.version_local_change_count, ci.version_old_version_identifier, ci.item_live_conflict_loser_etags, ci.item_file_id, ci.item_generation FROM client_items AS ci WHERE ci.item_localsyncupstate = 1 AND ci.item_localsyncupstate != 0 AND NOT EXISTS (SELECT 1 FROM client_unapplied_table AS cu WHERE cu.throttle_id = ci.rowid AND cu.throttle_state != 0)"}];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke;
  v48[3] = &unk_2784FF910;
  v48[4] = self;
  v8 = [v36 enumerateObjects:v48];
  v9 = [v8 countByEnumeratingWithState:&v49 objects:v63 count:16];
  if (v9)
  {
    v11 = *v50;
    *&v10 = 138412290;
    v33 = v10;
    do
    {
      v12 = 0;
      do
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v49 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        if (([v13 isRejected] & 1) == 0)
        {
          v22 = brc_bread_crumbs();
          v23 = brc_default_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            *buf = v33;
            v58 = v22;
            _os_log_fault_impl(&dword_223E7A000, v23, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: li.isRejected%@", buf, 0xCu);
          }
        }

        clientZone = [v13 clientZone];
        itemID = [v13 itemID];
        v17 = [clientZone serverItemByItemID:itemID];

        if ([v17 isLive])
        {
          v18 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v58 = v13;
            v59 = 2112;
            v60 = v17;
            v61 = 2112;
            v62 = v18;
            _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Rejected item %@ was remotely revived by %@.  Updating as such%@", buf, 0x20u);
          }

          [v13 markRejectedItemRemotelyRevived];
          [v13 saveToDB];
        }

        else
        {
          v20 = brc_bread_crumbs();
          v21 = brc_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v58 = v13;
            v59 = 2112;
            v60 = v20;
            _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Rejected item %@ doesn't have an apply job.  Re-creating the apply job%@", buf, 0x16u);
          }

          [(BRCApplyScheduler *)selfCopy createApplyJobFromServerItem:v17 localItem:v13 state:1 kind:0];
        }

        ++*(v54 + 6);

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v9 != v12);
      v24 = [v8 countByEnumeratingWithState:&v49 objects:v63 count:16];
      v9 = v24;
    }

    while (v24);
  }

  if ([taskCopy isTaskExpired])
  {
    completionCopy[2](completionCopy, *(v54 + 6));
  }

  else
  {
    v25 = objc_opt_new();
    session = selfCopy->super._session;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke_146;
    v46[3] = &unk_2785002E8;
    v27 = v25;
    v47 = v27;
    [(BRCAccountSession *)session enumeratePrivateClientZones:v46];
    v28 = [BRCUserDefaults defaultsForMangledID:0];
    applySchedulerRecoveryJobBatchSize = [v28 applySchedulerRecoveryJobBatchSize];

    v30 = dispatch_group_create();
    dispatch_group_enter(v30);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke_2;
    v43[3] = &unk_278501E88;
    v45 = &v53;
    v31 = v30;
    v44 = v31;
    [(BRCApplyScheduler *)selfCopy _recoverAndCreateApplyJobsForServerItemsWithNoMatchingClientItems:v27 batchSize:applySchedulerRecoveryJobBatchSize recoveryTask:taskCopy completion:v43];
    clientTruthWorkloop = [(BRCAccountSession *)selfCopy->super._session clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke_3;
    block[3] = &unk_2784FFDD0;
    v41 = &v53;
    block[4] = selfCopy;
    reportCopy = report;
    v40 = completionCopy;
    dispatch_group_notify(v31, clientTruthWorkloop, block);
  }

  _Block_object_dispose(&v53, 8);
}

id __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

uint64_t __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke_146(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSyncBlocked])
  {
    v4 = *(a1 + 32);
    v5 = [v3 dbRowID];
    [v4 addIndex:{objc_msgSend(v5, "unsignedIntegerValue")}];
  }

  return 1;
}

uint64_t __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(*(v2 + 8) + 24))
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke_3_cold_1();
    }

    [*(a1 + 32) signal];
    v2 = *(a1 + 48);
  }

  if (*(a1 + 56) == 1)
  {
    v5 = [AppTelemetryTimeSeriesEvent newMissingApplyJobEventWithNumberMissing:*(*(v2 + 8) + 24)];
    v6 = [*(*(a1 + 32) + 8) analyticsReporter];
    [v6 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v5];
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)deleteNonRejectionJobsForZone:(id)zone
{
  session = self->super._session;
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)session clientDB];
  matchingJobsWhereSQLClause = [zoneCopy matchingJobsWhereSQLClause];

  [clientDB execute:{@"DELETE FROM client_unapplied_table WHERE %@ AND throttle_id > 0", matchingJobsWhereSQLClause}];
  clientDB2 = [(BRCAccountSession *)self->super._session clientDB];
  changes = [clientDB2 changes];

  if (changes >= 1)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [BRCApplyScheduler deleteNonRejectionJobsForZone:];
    }

    [(BRCFSSchedulerBase *)self checkIfHasWork];
  }
}

- (void)describeInBuffer:aggregateOfJobsMatching:context:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: [matchingQuery isKindOfClass:[BRCServerZone class]]%@", v5, v6, v7, v8);
  }
}

- (void)setState:forServerItem:localItem:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: !si.isLive || !li.isRejected%@", v5, v6, v7, v8);
  }
}

- (void)createApplyJobFromServerItem:localItem:state:kind:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: serverItem || localItem%@", v5, v6, v7, v8);
  }
}

- (void)createApplyJobFromServerItemRank:(void *)a1 localItem:(void *)a2 state:kind:.cold.1(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v15 = 138412290;
    v16 = v4;
    OUTLINED_FUNCTION_0_2(&dword_223E7A000, v5, v6, "[CRIT] Assertion failed: rank && localItem%@", &v15);
  }

  v7 = a1;
  if (a2)
  {
    brc_bread_crumbs();
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_2();
    v8 = brc_default_log();
    if (OUTLINED_FUNCTION_5(v8))
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_0(&dword_223E7A000, v9, v10, "[CRIT] Assertion failed: serverRank%@", v11, v12, v13, v14);
    }
  }
}

- (void)didCreateMissingParentID:zone:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_rescheduleRank:inState:forZone:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: state >= BRCJobStateSuspendedBase%@", v5, v6, v7, v8);
  }
}

- (void)_rescheduleRank:inState:forZone:.cold.2()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)rescheduleMissingTargetAliasesWithTarget:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, a2, a3, "[CRIT] Assertion failed: !shouldFixup || !serverZone.isSharedZone || ![serverZone.zoneName isEqualToString:BRUbiquitousDefaultContainerID]%@", &v3);
}

void __66__BRCApplyScheduler__rescheduleItemsParentedToItemGlobalID_flags___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18();
  v1 = [*(v0 + 56) itemID];
  v2 = [v1 debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v3, v4, "[DEBUG] Updated %@ to be a non-fault%@", v5, v6, v7, v8);
}

void __66__BRCApplyScheduler__rescheduleItemsParentedToItemGlobalID_flags___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_18();
  v1 = [*v0 debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] No point in rescheduling items under %@ because we can't make it a non-fault%@", v4, v5, v6, v7);
}

void __66__BRCApplyScheduler__rescheduleItemsParentedToItemGlobalID_flags___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_18();
  v1 = [*v0 debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Apply Changes: No unscheduled items parented to %@%@", v4, v5, v6, v7);
}

void __59__BRCApplyScheduler_rescheduleItemsRecursivelyUnderFolder___block_invoke_2_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v3 = v0;
  _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't reschedule flat items under %@%@", v2, 0x16u);
}

- (void)repopulateJobsForZone:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_scheduleApplyJobWithID:(uint64_t)a1 zone:(NSObject *)a2 applyKind:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, a2, a3, "[CRIT] Assertion failed: zone%@", &v3);
}

- (void)_scheduleApplyJobWithID:(uint64_t)a1 zone:(NSObject *)a2 applyKind:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, a2, a3, "[CRIT] Assertion failed: si == nil%@", &v3);
}

- (void)_addRanksUpToRank:inZone:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 zoneName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Apply Changes [] in %@, 0 ranks inserted%@", v4, v5, v6, v7);
}

- (void)_addRanksUpToRank:inZone:.cold.2()
{
  OUTLINED_FUNCTION_18();
  v6 = *MEMORY[0x277D85DE8];
  v3 = [v2 lastError];
  OUTLINED_FUNCTION_1_0();
  v5 = v1;
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: failed to insert into client_unapplied_commands: %@%@", v4, 0x16u);
}

- (void)deleteNonRejectionJobsForZone:.cold.1()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end