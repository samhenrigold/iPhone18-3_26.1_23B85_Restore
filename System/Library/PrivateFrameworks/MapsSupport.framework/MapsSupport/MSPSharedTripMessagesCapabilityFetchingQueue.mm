@interface MSPSharedTripMessagesCapabilityFetchingQueue
- (MSPSharedTripMessagesCapabilityFetchingQueue)initWithDelegate:(id)delegate queue:(id)queue label:(id)label;
- (void)_fetchTextMessageReachability:(id)reachability;
- (void)_notifyDelegateIfNeeded;
- (void)_notifyDelegateNow;
- (void)_processFetchedServiceName:(id)name forHandle:(id)handle permittedServiceNames:(id)names;
- (void)_processFetchedStatus:(id)status forHandle:(id)handle;
- (void)_processPendingHandles;
- (void)_resetAfterLastHandleFetched;
- (void)_resetIfNeeded;
- (void)_scheduleBatchDelayTimerWithInterval:(double)interval;
@end

@implementation MSPSharedTripMessagesCapabilityFetchingQueue

- (MSPSharedTripMessagesCapabilityFetchingQueue)initWithDelegate:(id)delegate queue:(id)queue label:(id)label
{
  v9.receiver = self;
  v9.super_class = MSPSharedTripMessagesCapabilityFetchingQueue;
  v5 = [(MSPSharedTripCapabilityFetchingQueue *)&v9 initWithDelegate:delegate queue:queue label:label];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fetchedStatusesByHandle = v5->_fetchedStatusesByHandle;
    v5->_fetchedStatusesByHandle = v6;
  }

  return v5;
}

- (void)_processPendingHandles
{
  v21 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = MSPSharedTripMessagesCapabilityFetchingQueue;
  [(MSPSharedTripCapabilityFetchingQueue *)&v16 _processPendingHandles];
  _pendingHandles = [(MSPSharedTripCapabilityFetchingQueue *)self _pendingHandles];
  v4 = MSPGetSharedTripCapabilityFetchingLog(_pendingHandles);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v5 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v5 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    v8 = [_pendingHandles count];
    *buf = 138543618;
    v18 = selfCopy;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "[%{public}@] requesting %lu Text Message handles from IDS", buf, 0x16u);
  }

  if ([_pendingHandles count])
  {
    if (!self->_batchSize)
    {
      if (GEOConfigGetUInteger())
      {
        UInteger = GEOConfigGetUInteger();
      }

      else
      {
        UInteger = 1;
      }

      self->_batchSize = UInteger;
      GEOConfigGetDouble();
      v10 = 0.0;
      v12 = v11 < 0.0;
      v13 = 0.0;
      if (!v12)
      {
        GEOConfigGetDouble();
      }

      self->_batchDelayInterval = v13;
      GEOConfigGetDouble();
      if (v14 >= 0.0)
      {
        GEOConfigGetDouble();
        v10 = v15;
      }

      [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _scheduleBatchDelayTimerWithInterval:v10];
    }

    [(MSPSharedTripCapabilityFetchingQueue *)self _markHandlesInflight:_pendingHandles];
    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _fetchTextMessageReachability:_pendingHandles];
  }
}

- (void)_fetchTextMessageReachability:(id)reachability
{
  v39 = *MEMORY[0x277D85DE8];
  reachabilityCopy = reachability;
  dispatch_assert_queue_V2(self->super._workQueue);
  if ([reachabilityCopy count])
  {
    v5 = objc_alloc(MEMORY[0x277CBEB58]);
    v6 = [v5 initWithObjects:{*MEMORY[0x277D1A620], *MEMORY[0x277D1A610], *MEMORY[0x277D1A608], 0}];
    if (GEOConfigGetBOOL())
    {
      [v6 addObject:*MEMORY[0x277D1A628]];
      [v6 addObject:*MEMORY[0x277D1A618]];
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = reachabilityCopy;
    obj = reachabilityCopy;
    v7 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      v10 = v28;
      v11 = &unk_279866300;
      do
      {
        v12 = 0;
        v25 = v8;
        do
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v30 + 1) + 8 * v12);
          v14 = MSPGetSharedTripCapabilityFetchingLog(v7);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = MEMORY[0x277CCACA8];
            selfCopy = self;
            v17 = v10;
            v18 = v9;
            selfCopy2 = self;
            v20 = v6;
            v21 = v11;
            v22 = selfCopy;
            selfCopy = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

            v11 = v21;
            v6 = v20;
            self = selfCopy2;
            v9 = v18;
            v10 = v17;
            v8 = v25;
            *buf = 138543619;
            v35 = selfCopy;
            v36 = 2113;
            v37 = v13;
            _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[%{public}@] Will fetch best text service for %{private}@", buf, 0x16u);
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          v28[0] = __78__MSPSharedTripMessagesCapabilityFetchingQueue__fetchTextMessageReachability___block_invoke;
          v28[1] = v11;
          v28[2] = v13;
          v28[3] = self;
          v29 = v6;
          dispatch_async(MEMORY[0x277D85CD0], block);

          ++v12;
        }

        while (v8 != v12);
        v7 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
        v8 = v7;
      }

      while (v7);
    }

    reachabilityCopy = v24;
  }
}

void __78__MSPSharedTripMessagesCapabilityFetchingQueue__fetchTextMessageReachability___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *(a1 + 32);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v3 = *(a1 + 48);
  IMSPICalculateSendingServiceByDestinationsAndChatGUID();
}

void __78__MSPSharedTripMessagesCapabilityFetchingQueue__fetchTextMessageReachability___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = *(v7 + 16);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v19 = __78__MSPSharedTripMessagesCapabilityFetchingQueue__fetchTextMessageReachability___block_invoke_3;
  v20 = &unk_279865F98;
  v21 = v7;
  v9 = v5;
  v10 = a1[5];
  v11 = a1[6];
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v12 = v8;
  v13 = v18;
  label = dispatch_queue_get_label(v12);
  v15 = dispatch_queue_get_label(0);
  if (label == v15 || (label ? (v16 = v15 == 0) : (v16 = 1), !v16 && !strcmp(label, v15)))
  {
    v17 = objc_autoreleasePoolPush();
    v19(v13);
    objc_autoreleasePoolPop(v17);
  }

  else
  {
    dispatch_async(v12, v13);
  }
}

- (void)_processFetchedServiceName:(id)name forHandle:(id)handle permittedServiceNames:(id)names
{
  v40 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handleCopy = handle;
  namesCopy = names;
  dispatch_assert_queue_V2(self->super._workQueue);
  v11 = [(MSPCountedOrderedSet *)self->super._requestedHandles containsObject:handleCopy];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB98] setWithObject:handleCopy];
    [(MSPSharedTripCapabilityFetchingQueue *)self _updateRequestedHandlesWithAdditions:0 subtractions:v12];

    v14 = MSPGetSharedTripCapabilityFetchingLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

      *buf = 138543875;
      v35 = selfCopy;
      v36 = 2114;
      v37 = nameCopy;
      v38 = 2113;
      v39 = handleCopy;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[%{public}@] Fetched service %{public}@ for %{private}@", buf, 0x20u);
    }

    v18 = [namesCopy containsObject:nameCopy];
    if (v18)
    {
      if (nameCopy)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (([nameCopy isEqualToString:*MEMORY[0x277D1A620]] & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", *MEMORY[0x277D1A628]))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v29 = [MSPSharedTripFetchedCapabilityStatus alloc];
      v30 = v20;
      v31 = nameCopy;
      v32 = v19;
    }

    else
    {
      v25 = MSPGetSharedTripCapabilityFetchingLog(v18);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = MEMORY[0x277CCACA8];
        selfCopy2 = self;
        selfCopy2 = [v26 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

        *buf = 138543618;
        v35 = selfCopy2;
        v36 = 2114;
        v37 = nameCopy;
        _os_log_impl(&dword_25813A000, v25, OS_LOG_TYPE_INFO, "[%{public}@] - %{public}@ not permitted for Share ETA", buf, 0x16u);
      }

      v29 = [MSPSharedTripFetchedCapabilityStatus alloc];
      v30 = 2;
      v31 = 0;
      v32 = 2;
    }

    v33 = [(MSPSharedTripFetchedCapabilityStatus *)v29 initWithCapabilityType:v30 serviceName:v31 status:v32];
    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _processFetchedStatus:v33 forHandle:handleCopy];
  }

  else
  {
    v21 = MSPGetSharedTripCapabilityFetchingLog(v11);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = MEMORY[0x277CCACA8];
      selfCopy3 = self;
      selfCopy3 = [v22 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy3];

      *buf = 138543875;
      v35 = selfCopy3;
      v36 = 2114;
      v37 = nameCopy;
      v38 = 2113;
      v39 = handleCopy;
      _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_INFO, "[%{public}@] Fetched service %{public}@ for %{private}@, but it was no longer in fetch queue, dropping", buf, 0x20u);
    }

    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _resetIfNeeded];
  }
}

- (void)_processFetchedStatus:(id)status forHandle:(id)handle
{
  v19 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  handleCopy = handle;
  dispatch_assert_queue_V2(self->super._workQueue);
  if (handleCopy)
  {
    v9 = MSPGetSharedTripCapabilityFetchingLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v10 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

      *buf = 138543875;
      v14 = selfCopy;
      v15 = 2113;
      v16 = handleCopy;
      v17 = 2114;
      v18 = statusCopy;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "[%{public}@] Fetched %{private}@: %{public}@@", buf, 0x20u);
    }

    [(NSMutableDictionary *)self->_fetchedStatusesByHandle setObject:statusCopy forKeyedSubscript:handleCopy];
    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _notifyDelegateIfNeeded];
  }
}

- (void)_notifyDelegateIfNeeded
{
  v30 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super._workQueue);
  v3 = [(NSMutableDictionary *)self->_fetchedStatusesByHandle count];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  if (![(NSMutableOrderedSet *)self->super._inflightHandles count])
  {
    v14 = MSPGetSharedTripCapabilityFetchingLog(0);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v15 = MEMORY[0x277CCACA8];
    selfCopy = self;
    selfCopy = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

    *buf = 138543362;
    v27 = selfCopy;
    v18 = "[%{public}@] Will notify delegate, no more handles in-flight";
LABEL_12:
    v21 = v14;
    v22 = 12;
LABEL_15:
    _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_INFO, v18, buf, v22);

    goto LABEL_16;
  }

  batchDelayTimer = self->_batchDelayTimer;
  if (!batchDelayTimer)
  {
    v14 = MSPGetSharedTripCapabilityFetchingLog(0);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v19 = MEMORY[0x277CCACA8];
    selfCopy2 = self;
    selfCopy = [v19 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

    *buf = 138543362;
    v27 = selfCopy;
    v18 = "[%{public}@] Will notify delegate, no delay timer";
    goto LABEL_12;
  }

  if (v4 >= self->_batchSize)
  {
    v14 = MSPGetSharedTripCapabilityFetchingLog(batchDelayTimer);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v23 = MEMORY[0x277CCACA8];
      selfCopy3 = self;
      selfCopy = [v23 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy3];

      batchSize = self->_batchSize;
      *buf = 138543618;
      v27 = selfCopy;
      v28 = 2048;
      v29 = batchSize;
      v18 = "[%{public}@] Will notify delegate, batch reached %lu items";
      v21 = v14;
      v22 = 22;
      goto LABEL_15;
    }

LABEL_16:

    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _notifyDelegateNow];
    return;
  }

  fireDate = [(GCDTimer *)batchDelayTimer fireDate];
  [fireDate timeIntervalSinceNow];
  v8 = v7;

  v10 = MSPGetSharedTripCapabilityFetchingLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = MEMORY[0x277CCACA8];
    selfCopy4 = self;
    selfCopy4 = [v11 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy4];

    *buf = 138543618;
    v27 = selfCopy4;
    v28 = 2048;
    v29 = v8;
    _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_INFO, "[%{public}@] Cannot notify delegate, %lfs remaining until permitted", buf, 0x16u);
  }
}

- (void)_notifyDelegateNow
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super._workQueue);
  v3 = [(NSMutableDictionary *)self->_fetchedStatusesByHandle copy];
  if ([v3 count])
  {
    v4 = MSPGetSharedTripCapabilityFetchingLog([(NSMutableDictionary *)self->_fetchedStatusesByHandle removeAllObjects]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v5 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

      *buf = 138543619;
      v12 = selfCopy;
      v13 = 2113;
      v14 = v3;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "[%{public}@] Notifying: %{private}@", buf, 0x16u);
    }

    callbackQueue = self->super._callbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__MSPSharedTripMessagesCapabilityFetchingQueue__notifyDelegateNow__block_invoke;
    block[3] = &unk_279865EF8;
    block[4] = self;
    v10 = v3;
    dispatch_async(callbackQueue, block);
    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _scheduleBatchDelayTimerWithInterval:self->_batchDelayInterval];
  }

  [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _resetIfNeeded];
}

void __66__MSPSharedTripMessagesCapabilityFetchingQueue__notifyDelegateNow__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 capabilityFetchingQueue:*(a1 + 32) didFetchStatusForHandles:*(a1 + 40)];
}

- (void)_scheduleBatchDelayTimerWithInterval:(double)interval
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super._workQueue);
  batchDelayTimer = self->_batchDelayTimer;
  if (batchDelayTimer)
  {
    [(GCDTimer *)batchDelayTimer invalidate];
    v6 = self->_batchDelayTimer;
    self->_batchDelayTimer = 0;
  }

  if (interval >= 0.0)
  {
    v7 = MSPGetSharedTripCapabilityFetchingLog(batchDelayTimer);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

      *buf = 138543618;
      v17 = selfCopy;
      v18 = 2048;
      intervalCopy = interval;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[%{public}@] Scheduling batch delay for %.3lfs", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    workQueue = self->super._workQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __85__MSPSharedTripMessagesCapabilityFetchingQueue__scheduleBatchDelayTimerWithInterval___block_invoke;
    v14[3] = &unk_279866328;
    objc_copyWeak(&v15, buf);
    v14[4] = self;
    v12 = [GCDTimer scheduledTimerWithTimeInterval:workQueue queue:0 repeating:v14 block:interval];
    v13 = self->_batchDelayTimer;
    self->_batchDelayTimer = v12;

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

void __85__MSPSharedTripMessagesCapabilityFetchingQueue__scheduleBatchDelayTimerWithInterval___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = MSPGetSharedTripCapabilityFetchingLog(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = MEMORY[0x277CCACA8];
        v7 = v5;
        v8 = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), v7];
      }

      else
      {
        v8 = @"<nil>";
      }

      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "[%{public}@] Batch delay timer fired", buf, 0xCu);
    }

    v10 = v3[9];
    v3[9] = 0;

    [v3 _notifyDelegateIfNeeded];
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[MSPSharedTripMessagesCapabilityFetchingQueue _scheduleBatchDelayTimerWithInterval:]_block_invoke";
      v13 = 1024;
      v14 = 224;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

- (void)_resetIfNeeded
{
  v9 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super._workQueue);
  if (![(NSMutableOrderedSet *)self->super._inflightHandles count]&& (self->_batchSize || self->_batchDelayTimer))
  {
    v3 = MSPGetSharedTripCapabilityFetchingLog(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v4 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

      *buf = 138543362;
      v8 = selfCopy;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] No more in-flight handles, resetting flags and clearing batch delay timer", buf, 0xCu);
    }

    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _resetAfterLastHandleFetched];
  }
}

- (void)_resetAfterLastHandleFetched
{
  dispatch_assert_queue_V2(self->super._workQueue);
  self->_batchSize = 0;
  self->_batchDelayInterval = -1.0;
  batchDelayTimer = self->_batchDelayTimer;
  self->_batchDelayTimer = 0;
}

@end