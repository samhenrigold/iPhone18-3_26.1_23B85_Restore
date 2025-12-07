@interface MSDeleter
+ (BOOL)isInRetryState;
+ (id)_clearInstantiatedDeletersByPersonID;
+ (id)deleterForPersonID:(id)d;
+ (id)nextActivityDate;
+ (id)nextActivityDateForPersonID:(id)d;
+ (id)personIDsWithOutstandingActivities;
+ (void)_setMasterNextActivityDate:(id)date forPersonID:(id)d;
+ (void)abortAllActivities;
+ (void)forgetPersonID:(id)d;
+ (void)stopAllActivities;
- (BOOL)_isAllowedToDelete;
- (MSDeleter)initWithPersonID:(id)d baseURL:(id)l;
- (id)_abortedError;
- (void)_abort;
- (void)_sendDeleteRequest;
- (void)_stop;
- (void)_updateMasterManifest;
- (void)deactivate;
- (void)dealloc;
- (void)deleteAssetCollections:(id)collections;
- (void)deleteProtocol:(id)protocol didFinishSuccessfulCollections:(id)collections failedCollections:(id)failedCollections error:(id)error;
- (void)deleteProtocol:(id)protocol didReceiveAuthenticationError:(id)error;
- (void)performOutstandingActivities;
@end

@implementation MSDeleter

- (void)_abort
{
  v18 = *MEMORY[0x277D85DE8];
  [(MSDeleter *)self _stop];
  _abortedError = [(MSDeleter *)self _abortedError];
  v4 = [(MSObjectQueue *)self->_deleteQueue allObjectWrappersMaxCount:5];
  while ([v4 count])
  {
    v5 = objc_autoreleasePoolPush();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          delegate = self->_delegate;
          object = [*(*(&v13 + 1) + 8 * i) object];
          [(MSDeleterDelegate *)delegate deleter:self didFinishDeletingAssetCollection:object error:_abortedError];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(MSObjectQueue *)self->_deleteQueue removeObjectWrappersFromQueue:v6];
    objc_autoreleasePoolPop(v5);
    v4 = [(MSObjectQueue *)self->_deleteQueue allObjectWrappersMaxCount:5];
  }

  [(MSDeleter *)self _updateMasterManifest];
}

- (id)_abortedError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_DELETER_ABORTED");
  v4 = [v2 MSErrorWithDomain:@"MSDeleterErrorDomain" code:0 description:v3];

  return v4;
}

- (void)_stop
{
  state = self->_state;
  if (state == 3)
  {
    [(MSDeleteStreamsProtocol *)self->_protocol abort];
    state = self->_state;
  }

  if ((state & 0xFFFFFFFE) == 2)
  {
    [(MSDaemon *)self->_daemon releaseBusy];
  }

  [(NSMutableArray *)self->_requestedDeleteWrappers removeAllObjects];
  self->_state = 0;
}

- (void)deleteProtocol:(id)protocol didFinishSuccessfulCollections:(id)collections failedCollections:(id)failedCollections error:(id)error
{
  v90 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  collectionsCopy = collections;
  failedCollectionsCopy = failedCollections;
  errorCopy = error;
  state = self->_state;
  if (state == 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v45 = objc_opt_class();
      v46 = protocolCopy;
      v47 = v45;
      personID = [(MSCupidStateMachine *)self personID];
      *buf = 138544130;
      *v84 = v45;
      *&v84[8] = 2112;
      v85 = personID;
      v86 = 2114;
      v87 = collectionsCopy;
      v88 = 2114;
      v89 = failedCollectionsCopy;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Received delete response. Successful deletes: %{public}@\n\nFailed deletes: %{public}@", buf, 0x2Au);

      protocolCopy = v46;
    }

    v15 = 0x27EE36000;
    if (errorCopy)
    {
      mSIsTemporaryNetworkError = [errorCopy MSIsTemporaryNetworkError];
      v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (mSIsTemporaryNetworkError)
      {
        if (v17)
        {
          v49 = objc_opt_class();
          v50 = protocolCopy;
          v51 = v49;
          personID2 = [(MSCupidStateMachine *)self personID];
          *buf = 138543618;
          *v84 = v49;
          *&v84[8] = 2112;
          v85 = personID2;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Encountered temporary network issues during deletion. Will retry later.", buf, 0x16u);

          v15 = 0x27EE36000;
          protocolCopy = v50;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *v84 = errorCopy;
          _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "... Error: %{public}@", buf, 0xCu);
        }

        v18 = 1;
      }

      else
      {
        if (v17)
        {
          v53 = objc_opt_class();
          v61 = v53;
          personID3 = [(MSCupidStateMachine *)self personID];
          [errorCopy MSVerboseDescription];
          v56 = v55 = protocolCopy;
          *buf = 138543874;
          *v84 = v53;
          *&v84[8] = 2112;
          v85 = personID3;
          v86 = 2114;
          v87 = v56;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Error sending delete request: %{public}@", buf, 0x20u);

          protocolCopy = v55;
          v15 = 0x27EE36000;
        }

        array = [MEMORY[0x277CBEB18] array];
        if ([errorCopy MSNeedsBackoff])
        {
          [(MSCupidStateMachine *)self _backoffStreamsBackoffTimer];
        }

        v65 = failedCollectionsCopy;
        if ([errorCopy MSIsCounted])
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v63 = protocolCopy;
          v24 = self->_requestedDeleteWrappers;
          v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v72 objects:v81 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v73;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v73 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v72 + 1) + 8 * i);
                [v29 setErrorCount:{objc_msgSend(v29, "errorCount") + 1}];
                if ([v29 errorCount] >= self->_maxErrorCount)
                {
                  [array addObject:v29];
                }
              }

              v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v72 objects:v81 count:16];
            }

            while (v26);
          }

          [(MSObjectQueue *)self->_deleteQueue commitErrorCountsForObjectWrappers:self->_requestedDeleteWrappers];
          protocolCopy = v63;
          failedCollectionsCopy = v65;
          v15 = 0x27EE36000;
        }

        if ([array count])
        {
          v30 = protocolCopy;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v57 = objc_opt_class();
            v58 = v57;
            personID4 = [(MSCupidStateMachine *)self personID];
            v60 = [array count];
            *buf = 138543874;
            *v84 = v57;
            *&v84[8] = 2112;
            v85 = personID4;
            v86 = 2048;
            v87 = v60;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Giving up sending %lu delete requests.", buf, 0x20u);
          }

          [(NSMutableArray *)self->_requestedDeleteWrappers removeObjectsInArray:array];
          [(MSObjectQueue *)self->_deleteQueue removeObjectWrappersFromQueue:array];
          [(MSDeleter *)self _updateMasterManifest];
          v31 = [MSObjectWrapper objectsFromWrappers:array];
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v32 = [v31 countByEnumeratingWithState:&v68 objects:v80 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v69;
            do
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v69 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                [(MSDeleterDelegate *)self->_delegate deleter:self didFinishDeletingAssetCollection:*(*(&v68 + 1) + 8 * j) error:errorCopy];
              }

              v33 = [v31 countByEnumeratingWithState:&v68 objects:v80 count:16];
            }

            while (v33);
          }

          protocolCopy = v30;
          failedCollectionsCopy = v65;
          v15 = 0x27EE36000;
        }

        v18 = 0;
      }

      v36 = 0x27EE36000;
    }

    else
    {
      v62 = protocolCopy;
      v64 = failedCollectionsCopy;
      v66 = collectionsCopy;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = v19;
        personID5 = [(MSCupidStateMachine *)self personID];
        v22 = [(NSMutableArray *)self->_requestedDeleteWrappers count];
        *buf = 138543874;
        *v84 = v19;
        *&v84[8] = 2112;
        v85 = personID5;
        v86 = 2048;
        v87 = v22;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Successfully sent %lu delete requests.", buf, 0x20u);
      }

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v37 = self->_requestedDeleteWrappers;
      v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v76 objects:v82 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v77;
        do
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v77 != v40)
            {
              objc_enumerationMutation(v37);
            }

            object = [*(*(&v76 + 1) + 8 * k) object];
            [(MSDeleterDelegate *)self->_delegate deleter:self didFinishDeletingAssetCollection:object error:0];
          }

          v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v76 objects:v82 count:16];
        }

        while (v39);
      }

      v36 = 0x27EE36000uLL;
      [(MSObjectQueue *)self->_deleteQueue removeObjectWrappersFromQueue:self->_requestedDeleteWrappers];
      [(NSMutableArray *)self->_requestedDeleteWrappers removeAllObjects];
      v15 = 0x27EE36000uLL;
      daemon = self->_daemon;
      personID6 = [(MSCupidStateMachine *)self personID];
      [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:personID6];

      [(MSCupidStateMachine *)self _resetStreamsBackoffTimer];
      v18 = 0;
      protocolCopy = v62;
      failedCollectionsCopy = v64;
      collectionsCopy = v66;
    }

    if ([*(&self->super.super.isa + *(v36 + 620)) count])
    {
      self->_state = 1;
      if ((v18 & 1) == 0)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __83__MSDeleter_deleteProtocol_didFinishSuccessfulCollections_failedCollections_error___block_invoke;
        block[3] = &unk_278E926D8;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }

    else
    {
      self->_state = 0;
    }

    [*(&self->super.super.isa + *(v15 + 644)) releaseBusy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *v84 = 3;
    *&v84[4] = 1024;
    *&v84[6] = state;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Wrong state detected. Expected %d, actually %d. Not serving message.", buf, 0xEu);
  }
}

- (void)deleteProtocol:(id)protocol didReceiveAuthenticationError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = v8;
    personID = [(MSCupidStateMachine *)self personID];
    v11 = 138543874;
    v12 = v8;
    v13 = 2112;
    v14 = personID;
    v15 = 2114;
    v16 = errorCopy;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Found authentication error. Will try again later. %{public}@", &v11, 0x20u);
  }

  [(MSCupidStateMachine *)self _resetStreamsBackoffTimer];
  self->_state = 1;
  daemon = self->_daemon;
  personID2 = [(MSCupidStateMachine *)self personID];
  [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationFailureForPersonID:personID2];

  [(MSDaemon *)self->_daemon releaseBusy];
}

- (void)_sendDeleteRequest
{
  v14 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_requestedDeleteWrappers removeAllObjects];
  requestedDeleteWrappers = self->_requestedDeleteWrappers;
  v4 = [(MSObjectQueue *)self->_deleteQueue objectWrappersWithZeroSizeMaxCount:self->_batchSize];
  [(NSMutableArray *)requestedDeleteWrappers addObjectsFromArray:v4];

  if ([(NSMutableArray *)self->_requestedDeleteWrappers count])
  {
    self->_state = 3;
    protocol = self->_protocol;
    v9 = [MSObjectWrapper objectsFromWrappers:self->_requestedDeleteWrappers];
    [(MSDeleteStreamsProtocol *)protocol sendDeletionRequestForAssetCollections:?];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = v6;
      personID = [(MSCupidStateMachine *)self personID];
      *buf = 138543618;
      v11 = v6;
      v12 = 2112;
      v13 = personID;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ No outstanding deletes to send.", buf, 0x16u);
    }

    [(MSDeleter *)self _updateMasterManifest];
    self->_state = 0;
    [(MSDaemon *)self->_daemon releaseBusy];
  }
}

- (void)performOutstandingActivities
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(MSCupidStateMachine *)self hasDeactivated])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      personID = [(MSCupidStateMachine *)self personID];
      v5 = 138543618;
      v6 = v3;
      v7 = 2112;
      v8 = personID;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not deleting because we're shutting down.", &v5, 0x16u);
    }
  }

  else if (self->_state <= 1u && [(MSDeleter *)self _isAllowedToDelete])
  {
    [(MSDaemon *)self->_daemon retainBusy];
    self->_state = 2;

    [(MSDeleter *)self _sendDeleteRequest];
  }
}

- (void)deleteAssetCollections:(id)collections
{
  v27 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    personID = [(MSCupidStateMachine *)self personID];
    *buf = 138543874;
    v22 = v5;
    v23 = 2112;
    v24 = personID;
    v25 = 2114;
    v26 = collectionsCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Deleting asset collections: %{public}@", buf, 0x20u);
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(collectionsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = collectionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [MSObjectWrapper wrapperWithObject:*(*(&v16 + 1) + 8 * v13) size:0];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [(MSObjectQueue *)self->_deleteQueue appendObjectWrappers:v8];
  [(MSDeleter *)self _updateMasterManifest];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__MSDeleter_deleteAssetCollections___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)_isAllowedToDelete
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MSPlatform();
  v4 = objc_opt_respondsToSelector();

  v5 = MSPlatform();
  v6 = v5;
  if (v4)
  {
    policyMaySendDelete = [v5 policyMaySendDelete];

    if ((policyMaySendDelete & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    policyMayUpload = [v5 policyMayUpload];

    if (!policyMayUpload)
    {
      goto LABEL_6;
    }
  }

  _latestNextActivityDate = [(MSCupidStateMachine *)self _latestNextActivityDate];
  date = [MEMORY[0x277CBEAA8] date];
  v11 = [_latestNextActivityDate compare:date];

  if (v11 != 1)
  {
    return 1;
  }

LABEL_6:
  v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v12)
  {
    v14 = objc_opt_class();
    v15 = v14;
    personID = [(MSCupidStateMachine *)self personID];
    v17 = 138543618;
    v18 = v14;
    v19 = 2112;
    v20 = personID;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not sending delete request at this time.", &v17, 0x16u);

    return 0;
  }

  return result;
}

- (void)_updateMasterManifest
{
  _latestNextActivityDate = [(MSCupidStateMachine *)self _latestNextActivityDate];
  v3 = [(MSObjectQueue *)self->_deleteQueue count];
  personID = [(MSCupidStateMachine *)self personID];
  if (v3)
  {
    v5 = _latestNextActivityDate == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = _latestNextActivityDate;
  }

  [MSDeleter _setMasterNextActivityDate:v6 forPersonID:personID];

  _commitMasterManifest_3250();
}

- (void)dealloc
{
  [(MSDeleter *)self deactivate];
  v3.receiver = self;
  v3.super_class = MSDeleter;
  [(MSCupidStateMachine *)&v3 dealloc];
}

- (void)deactivate
{
  [(MSDeleter *)self stop];
  protocol = self->_protocol;
  self->_protocol = 0;

  deleteQueue = self->_deleteQueue;
  self->_deleteQueue = 0;

  requestedDeleteWrappers = self->_requestedDeleteWrappers;
  self->_requestedDeleteWrappers = 0;

  v6.receiver = self;
  v6.super_class = MSDeleter;
  [(MSCupidStateMachine *)&v6 deactivate];
}

- (MSDeleter)initWithPersonID:(id)d baseURL:(id)l
{
  dCopy = d;
  lCopy = l;
  v18.receiver = self;
  v18.super_class = MSDeleter;
  v8 = [(MSCupidStateMachine *)&v18 initWithPersonID:dCopy];
  if (v8)
  {
    v9 = [MSObjectQueue alloc];
    v10 = MSPathDeleteQueueForPersonID(dCopy);
    v11 = [(MSObjectQueue *)v9 initWithPath:v10];
    deleteQueue = v8->_deleteQueue;
    v8->_deleteQueue = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requestedDeleteWrappers = v8->_requestedDeleteWrappers;
    v8->_requestedDeleteWrappers = v13;

    v15 = [[MSDeleteStreamsProtocol alloc] initWithPersonID:dCopy baseURL:lCopy];
    protocol = v8->_protocol;
    v8->_protocol = v15;

    [(MSStreamsProtocol *)v8->_protocol setDelegate:v8];
    v8->_batchSize = 10;
    v8->_maxErrorCount = 3;
  }

  return v8;
}

+ (BOOL)isInRetryState
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [_deleterByID allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v7 + 1) + 8 * i) _isInRetryState])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
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

+ (void)abortAllActivities
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [_deleterByID allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v7 + 1) + 8 * v6++) abort];
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (void)stopAllActivities
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [_deleterByID allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v7 + 1) + 8 * v6++) stop];
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (id)personIDsWithOutstandingActivities
{
  v2 = _masterNextActivityDateByPersonID_3275();
  allKeys = [v2 allKeys];

  return allKeys;
}

+ (id)nextActivityDateForPersonID:(id)d
{
  dCopy = d;
  v4 = _masterNextActivityDateByPersonID_3275();
  v5 = [v4 objectForKey:dCopy];

  return v5;
}

+ (id)nextActivityDate
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = _masterNextActivityDateByPersonID_3275();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [v2 objectForKey:*(*(&v12 + 1) + 8 * i)];
        v9 = v8;
        if (!v5 || [v8 compare:v5] == -1)
        {
          v10 = v9;

          v5 = v10;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_setMasterNextActivityDate:(id)date forPersonID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  if (dCopy)
  {
    v7 = _masterNextActivityDateByPersonID_3275();
    v8 = v7;
    if (dateCopy)
    {
      [v7 setObject:dateCopy forKey:dCopy];
    }

    else
    {
      [v7 removeObjectForKey:dCopy];
    }

    _commitMasterManifest_3250();
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v8 = v10;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - Found empty person ID.", &v9, 0xCu);
LABEL_8:
  }
}

+ (void)forgetPersonID:(id)d
{
  dCopy = d;
  v3 = [_deleterByID objectForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 forget];
    [_deleterByID removeObjectForKey:dCopy];
  }
}

+ (id)_clearInstantiatedDeletersByPersonID
{
  v2 = _deleterByID;
  v3 = _deleterByID;
  v4 = _deleterByID;
  _deleterByID = 0;

  return v2;
}

+ (id)deleterForPersonID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = _deleterByID;
    if (!_deleterByID)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = _deleterByID;
      _deleterByID = v5;

      v4 = _deleterByID;
    }

    v7 = [v4 objectForKey:dCopy];
    if (!v7)
    {
      v8 = [MSDeleter alloc];
      v9 = MSPlatform();
      v10 = [v9 baseURLForPersonID:dCopy];
      v7 = [(MSDeleter *)v8 initWithPersonID:dCopy baseURL:v10];

      [_deleterByID setObject:v7 forKey:dCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end