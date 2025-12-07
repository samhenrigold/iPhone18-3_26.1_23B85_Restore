@interface MSPSharedTripIDSCapabilityFetchingQueue
- (MSPSharedTripIDSCapabilityFetchingQueue)initWithIDSService:(id)service capabilityType:(unint64_t)type delegate:(id)delegate queue:(id)queue label:(id)label;
- (id)_processUpdates:(id)updates;
- (void)_processPendingHandles;
- (void)_retryAfterBackoff;
- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error;
@end

@implementation MSPSharedTripIDSCapabilityFetchingQueue

- (MSPSharedTripIDSCapabilityFetchingQueue)initWithIDSService:(id)service capabilityType:(unint64_t)type delegate:(id)delegate queue:(id)queue label:(id)label
{
  serviceCopy = service;
  v17.receiver = self;
  v17.super_class = MSPSharedTripIDSCapabilityFetchingQueue;
  v13 = [(MSPSharedTripCapabilityFetchingQueue *)&v17 initWithDelegate:delegate queue:queue label:label];
  if (v13)
  {
    v14 = [serviceCopy copy];
    service = v13->_service;
    v13->_service = v14;

    v13->_capabilityType = type;
  }

  return v13;
}

- (void)_processPendingHandles
{
  v29 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = MSPSharedTripIDSCapabilityFetchingQueue;
  _processPendingHandles = [(MSPSharedTripCapabilityFetchingQueue *)&v24 _processPendingHandles];
  if (!self->_retryAfterBackoffTimer)
  {
    contents = [(MSPCountedOrderedSet *)self->super._requestedHandles contents];
    v7 = MSPGetSharedTripCapabilityFetchingLog(contents);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [contents count];
      service = self->_service;
      *buf = 134218242;
      v26 = v8;
      v27 = 2114;
      v28 = service;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "requesting %lu %{public}@ handles", buf, 0x16u);
    }

    v10 = [contents count];
    batchIDQueryController = self->_batchIDQueryController;
    if (v10)
    {
      if (!batchIDQueryController)
      {
        v12 = MSPGetSharedTripCapabilityFetchingLog(v10);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = MEMORY[0x277CCACA8];
          selfCopy = self;
          selfCopy = [v13 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

          *buf = 138543362;
          v26 = selfCopy;
          _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_DEBUG, "[%{public}@] Creating batch ID query controller", buf, 0xCu);
        }

        v16 = [objc_alloc(MEMORY[0x277D186D8]) initWithService:self->_service delegate:self queue:self->super._workQueue];
        v17 = self->_batchIDQueryController;
        self->_batchIDQueryController = v16;
      }

      [(MSPSharedTripCapabilityFetchingQueue *)self _markHandlesInflight:contents];
      v18 = self->_batchIDQueryController;
      array = [contents array];
      [(IDSBatchIDQueryController *)v18 setDestinations:array];
    }

    else
    {
      if (!batchIDQueryController)
      {
        goto LABEL_17;
      }

      v20 = MSPGetSharedTripCapabilityFetchingLog(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = MEMORY[0x277CCACA8];
        selfCopy2 = self;
        selfCopy2 = [v21 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

        *buf = 138543362;
        v26 = selfCopy2;
        _os_log_impl(&dword_25813A000, v20, OS_LOG_TYPE_DEBUG, "[%{public}@] Releasing batch ID query controller", buf, 0xCu);
      }

      [(IDSBatchIDQueryController *)self->_batchIDQueryController setDestinations:MEMORY[0x277CBEBF8]];
      [(IDSBatchIDQueryController *)self->_batchIDQueryController invalidate];
      array = self->_batchIDQueryController;
      self->_batchIDQueryController = 0;
    }

    goto LABEL_17;
  }

  contents = MSPGetSharedTripCapabilityFetchingLog(_processPendingHandles);
  if (os_log_type_enabled(contents, OS_LOG_TYPE_INFO))
  {
    fireDate = [(GCDTimer *)self->_retryAfterBackoffTimer fireDate];
    [fireDate timeIntervalSinceNow];
    *buf = 134217984;
    v26 = v6;
    _os_log_impl(&dword_25813A000, contents, OS_LOG_TYPE_INFO, "fetch queue updated but still backing off, %#.1lfs to go", buf, 0xCu);
  }

LABEL_17:
}

- (id)_processUpdates:(id)updates
{
  updatesCopy = updates;
  dispatch_assert_queue_V2(self->super._workQueue);
  if ([updatesCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(updatesCopy, "count")}];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __59__MSPSharedTripIDSCapabilityFetchingQueue__processUpdates___block_invoke;
    v15 = &unk_279867658;
    selfCopy = self;
    v17 = v5;
    v6 = v5;
    [updatesCopy enumerateKeysAndObjectsUsingBlock:&v12];
    v7 = MEMORY[0x277CBEB98];
    allKeys = [updatesCopy allKeys];
    v9 = [v7 setWithArray:allKeys];
    [(MSPSharedTripCapabilityFetchingQueue *)self _updateRequestedHandlesWithAdditions:0 subtractions:v9];

    v10 = [v6 copy];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  return v10;
}

void __59__MSPSharedTripIDSCapabilityFetchingQueue__processUpdates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = -[MSPSharedTripFetchedCapabilityStatus initWithCapabilityType:serviceName:status:]([MSPSharedTripFetchedCapabilityStatus alloc], "initWithCapabilityType:serviceName:status:", *(*(a1 + 32) + 72), 0, [a3 integerValue]);
  [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
}

- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error
{
  v70 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  serviceCopy = service;
  errorCopy = error;
  dispatch_assert_queue_V2(self->super._workQueue);
  code = [serviceCopy isEqualToString:self->_service];
  if (!code)
  {
    goto LABEL_32;
  }

  if (errorCopy)
  {
    v13 = MSPGetSharedTripCapabilityFetchingLog(code);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

      *buf = 138543874;
      v65 = selfCopy;
      v66 = 2112;
      v67 = *&serviceCopy;
      v68 = 2112;
      v69 = errorCopy;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] (%@) updatedDestinationsStatus error %@", buf, 0x20u);
    }

    code = [errorCopy code];
    if (code == -2000 || code == -3000)
    {
      if (statusCopy)
      {
LABEL_22:
        v35 = MSPGetSharedTripCapabilityFetchingLog(code);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          if (self)
          {
            v36 = MEMORY[0x277CCACA8];
            selfCopy2 = self;
            selfCopy2 = [v36 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];
          }

          else
          {
            selfCopy2 = @"<nil>";
          }

          service = self->_service;
          *buf = 138543875;
          v65 = selfCopy2;
          v66 = 2114;
          v67 = *&service;
          v68 = 2113;
          v69 = statusCopy;
          _os_log_impl(&dword_25813A000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] idStatusUpdatedForDestinations %{public}@ service: %{private}@", buf, 0x20u);
        }

        v40 = [(MSPSharedTripIDSCapabilityFetchingQueue *)self _processUpdates:statusCopy];
        callbackQueue = self->super._callbackQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __106__MSPSharedTripIDSCapabilityFetchingQueue_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke_13;
        block[3] = &unk_279865EF8;
        block[4] = self;
        v57 = v40;
        v42 = v40;
        dispatch_async(callbackQueue, block);

        goto LABEL_28;
      }

      v54 = errorCopy;
      v55 = serviceCopy;
      userInfo = [errorCopy userInfo];
      v26 = [userInfo objectForKeyedSubscript:@"destinations"];

      v27 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v26, "count")}];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v28 = v26;
      v29 = [v28 countByEnumeratingWithState:&v58 objects:v63 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v59;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v59 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v58 + 1) + 8 * i);
            v34 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
            [v27 setObject:v34 forKeyedSubscript:v33];
          }

          v30 = [v28 countByEnumeratingWithState:&v58 objects:v63 count:16];
        }

        while (v30);
      }

      statusCopy = [v27 copy];
      errorCopy = v54;
      serviceCopy = v55;
    }

    else if (code == -4000)
    {
      Double = GEOConfigGetDouble();
      v19 = v18;
      retryAfterBackoffTimer = self->_retryAfterBackoffTimer;
      v21 = MSPGetSharedTripCapabilityFetchingLog(Double);
      v22 = v21;
      if (retryAfterBackoffTimer)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          fireDate = [(GCDTimer *)self->_retryAfterBackoffTimer fireDate];
          [fireDate timeIntervalSinceNow];
          *buf = 134217984;
          v65 = v24;
          _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_INFO, "another back-off error, but still backing off, %#.1lfs to go", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v48 = MEMORY[0x277CCACA8];
          selfCopy3 = self;
          selfCopy3 = [v48 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy3];

          *buf = 138543618;
          v65 = selfCopy3;
          v66 = 2048;
          v67 = v19;
          _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_ERROR, "[%{public}@] need to back off, will retry in %#.1lfs", buf, 0x16u);
        }

        workQueue = self->super._workQueue;
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __106__MSPSharedTripIDSCapabilityFetchingQueue_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke;
        v62[3] = &unk_279867680;
        v62[4] = self;
        v52 = [GCDTimer scheduledTimerWithTimeInterval:workQueue queue:0 repeating:v62 block:v19];
        v53 = self->_retryAfterBackoffTimer;
        self->_retryAfterBackoffTimer = v52;
      }

      goto LABEL_32;
    }
  }

  if (statusCopy)
  {
    goto LABEL_22;
  }

LABEL_28:
  _processPendingHandles = [(MSPSharedTripIDSCapabilityFetchingQueue *)self _processPendingHandles];
  if (self->_retryAfterBackoffTimer)
  {
    v44 = MSPGetSharedTripCapabilityFetchingLog(_processPendingHandles);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = MEMORY[0x277CCACA8];
      selfCopy4 = self;
      selfCopy4 = [v45 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy4];

      *buf = 138543362;
      v65 = selfCopy4;
      _os_log_impl(&dword_25813A000, v44, OS_LOG_TYPE_INFO, "[%{public}@] Got a callback while backing off, fire immediately to trigger updates for both services", buf, 0xCu);
    }

    [(GCDTimer *)self->_retryAfterBackoffTimer invalidate];
    [(MSPSharedTripIDSCapabilityFetchingQueue *)self _retryAfterBackoff];
  }

LABEL_32:
}

void __106__MSPSharedTripIDSCapabilityFetchingQueue_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke_13(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 capabilityFetchingQueue:*(a1 + 32) didFetchStatusForHandles:*(a1 + 40)];
}

- (void)_retryAfterBackoff
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripCapabilityFetchingLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v4 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v4 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    *buf = 138543362;
    v9 = selfCopy;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "[%{public}@] retrying fetch in response to IDSBatchQueryController back-off", buf, 0xCu);
  }

  retryAfterBackoffTimer = self->_retryAfterBackoffTimer;
  self->_retryAfterBackoffTimer = 0;

  [(MSPSharedTripIDSCapabilityFetchingQueue *)self _processPendingHandles];
}

@end