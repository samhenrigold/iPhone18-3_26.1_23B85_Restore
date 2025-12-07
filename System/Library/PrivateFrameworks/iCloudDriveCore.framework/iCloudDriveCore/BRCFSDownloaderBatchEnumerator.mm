@interface BRCFSDownloaderBatchEnumerator
- (BRCFSDownloaderBatchEnumerator)initWithSyncContext:(id)context kind:(int)kind now:(int64_t)now retryQueueKick:(int64_t *)kick;
- (id)nextDocumentItem;
@end

@implementation BRCFSDownloaderBatchEnumerator

- (BRCFSDownloaderBatchEnumerator)initWithSyncContext:(id)context kind:(int)kind now:(int64_t)now retryQueueKick:(int64_t *)kick
{
  v8 = *&kind;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = BRCFSDownloaderBatchEnumerator;
  v11 = [(BRCFSDownloaderBatchEnumerator *)&v21 init];
  v12 = v11;
  if (v11)
  {
    v11->_syncContext = contextCopy;
    v11->_now = now;
    v11->_retryQueueKick = kick;
    session = [(BRCSyncContext *)contextCopy session];
    clientDB = [session clientDB];
    contextIdentifier = [(BRCSyncContext *)contextCopy contextIdentifier];
    v16 = [clientDB fetch:{@"  SELECT throttle_id, next_retry_stamp, app_library_rowid, download_etag, transfer_stage, unit_count_completed, transfer_size, download_priority      FROM client_downloads    WHERE throttle_state = 1    AND throttle_state != 0      AND transfer_queue = %@      AND transfer_operation IS NULL      AND download_kind = %d ORDER BY download_priority DESC, download_request_stamp DESC", contextIdentifier, v8}];
    rs = v12->_rs;
    v12->_rs = v16;

    v12->_kind = v8;
    v18 = objc_opt_new();
    enumeratedThrottleIds = v12->_enumeratedThrottleIds;
    v12->_enumeratedThrottleIds = v18;
  }

  return v12;
}

- (id)nextDocumentItem
{
  v27 = *MEMORY[0x277D85DE8];
  session = [(BRCSyncContext *)self->_syncContext session];
  if (![(PQLResultSet *)self->_rs next])
  {
LABEL_15:
    asDocument = 0;
    goto LABEL_16;
  }

  while (1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [(PQLResultSet *)self->_rs longLongAtIndex:0];
    v6 = [(PQLResultSet *)self->_rs longLongAtIndex:1];
    enumeratedThrottleIds = self->_enumeratedThrottleIds;
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
    LOBYTE(enumeratedThrottleIds) = [(NSMutableSet *)enumeratedThrottleIds containsObject:v8];

    if (enumeratedThrottleIds)
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        v24 = v5;
        v25 = 2112;
        v26 = v9;
        _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Throttle ID %lld was already enumerated. Will schedule it for retry to the next batch%@", buf, 0x16u);
      }

      now = self->_now;
      if (v6 <= now + 1)
      {
        v6 = now + 1;
      }
    }

    else
    {
      now = self->_now;
    }

    if (v6 > now)
    {
      retryQueueKick = self->_retryQueueKick;
      v13 = *retryQueueKick;
      if (*retryQueueKick >= v6)
      {
        v13 = v6;
      }

      *retryQueueKick = v13;
      clientDB = [session clientDB];
      kind = self->_kind;
      v16 = [(PQLResultSet *)self->_rs stringAtIndex:3];
      [clientDB execute:{@"UPDATE client_downloads    SET transfer_queue = '_retry'  WHERE throttle_id = %lld AND download_kind = %u AND download_etag = %@", v5, kind, v16}];

      goto LABEL_14;
    }

    itemFetcher = [session itemFetcher];
    v18 = [itemFetcher itemByRowID:v5];
    asDocument = [v18 asDocument];

    if (asDocument)
    {
      break;
    }

LABEL_14:
    objc_autoreleasePoolPop(v4);
    if (([(PQLResultSet *)self->_rs next]& 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v21 = self->_enumeratedThrottleIds;
  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
  [(NSMutableSet *)v21 addObject:v22];

  objc_autoreleasePoolPop(v4);
LABEL_16:

  return asDocument;
}

@end