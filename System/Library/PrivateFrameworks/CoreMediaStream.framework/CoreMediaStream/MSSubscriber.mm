@interface MSSubscriber
+ (BOOL)isInRetryState;
+ (id)_clearInstantiatedSubscribersByPersonID;
+ (id)_descriptionForRetrievalState:(int)state;
+ (id)_descriptionForState:(int)state;
+ (id)nextActivityDate;
+ (id)nextActivityDateForPersonID:(id)d;
+ (id)personIDsWithOutstandingActivities;
+ (id)subscriberForPersonID:(id)d;
+ (void)_setMasterNextActivityDate:(id)date forPersonID:(id)d;
+ (void)forgetPersonID:(id)d;
+ (void)stopAllActivities;
- (BOOL)_hasOutstandingPoll;
- (BOOL)_isAllowedToDownload;
- (MSSubscriber)initWithPersonID:(id)d baseURL:(id)l;
- (id)_subscriptionsByStreamID;
- (id)ownSubscribedStream;
- (id)subscribedStreams;
- (void)_abort;
- (void)_changeRetrievalStateTo:(int)to;
- (void)_changeStateTo:(int)to;
- (void)_checkForNewAssetCollections;
- (void)_didFinishRetrievingSubscriptionUpdate;
- (void)_didReceiveAuthenticationError:(id)error;
- (void)_finishedRetrievingAsset:(id)asset;
- (void)_forget;
- (void)_reauthorizeAssets;
- (void)_refreshServerSideConfigurationParameters;
- (void)_retrieveAssets;
- (void)_retrieveNextAssets;
- (void)_serverSideConfigurationDidChange:(id)change;
- (void)_setHasOutstandingPoll:(BOOL)poll;
- (void)_setSubscriptionsByStreamID:(id)d;
- (void)_stopOutSubscriberState:(int *)state outRetrievalState:(int *)retrievalState;
- (void)_updateMasterManifest;
- (void)checkForNewAssetCollections;
- (void)checkForNewAssetCollectionsIfMissingCtag;
- (void)checkForOutstandingActivities;
- (void)deactivate;
- (void)dealloc;
- (void)reauthorizationProtocol:(id)protocol didReceiveAuthenticationError:(id)error;
- (void)reauthorizationProtocol:(id)protocol reauthorizedAssets:(id)assets rejectedAssets:(id)rejectedAssets error:(id)error;
- (void)resetSync;
- (void)retrieveAssets:(id)assets;
- (void)subscribeStorageProtocol:(id)protocol didFinishRetrievingAsset:(id)asset error:(id)error;
- (void)subscribeStorageProtocolDidFinishRetrievingAllAssets:(id)assets;
- (void)subscribeStreamsProtocol:(id)protocol didFindDisappearedSubscriptionForPersonID:(id)d;
- (void)subscribeStreamsProtocol:(id)protocol didFindTemporarilyUnavailableSubscriptionForPersonID:(id)d;
- (void)subscribeStreamsProtocol:(id)protocol didFinishError:(id)error;
- (void)subscribeStreamsProtocol:(id)protocol didFinishReceivingUpdatesForPersonID:(id)d ctag:(id)ctag;
- (void)subscribeStreamsProtocol:(id)protocol didReceiveAssetCollections:(id)collections forPersonID:(id)d;
- (void)subscribeStreamsProtocol:(id)protocol willReceiveUpdatesForPersonID:(id)d wasReset:(BOOL)reset metadata:(id)metadata;
@end

@implementation MSSubscriber

- (void)reauthorizationProtocol:(id)protocol reauthorizedAssets:(id)assets rejectedAssets:(id)rejectedAssets error:(id)error
{
  v61 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  rejectedAssetsCopy = rejectedAssets;
  errorCopy = error;
  v12 = [rejectedAssetsCopy count];
  if (!errorCopy && v12)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_NOT_AUTH");
    errorCopy = [v13 MSErrorWithDomain:@"MSSubscriberErrorDomain" code:3 description:v14];
  }

  if (!errorCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = v17;
      personID = [(MSCupidStateMachine *)self personID];
      *buf = 138543874;
      v54 = v17;
      v55 = 2112;
      v56 = personID;
      v57 = 2048;
      v58 = [assetsCopy count];
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Successfully reauthorized %lu assets.", buf, 0x20u);
    }

    daemon = self->_daemon;
    personID2 = [(MSCupidStateMachine *)self personID];
    [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:personID2];

LABEL_28:
    [(MSObjectQueue *)self->_retrievalQueue commitObjectsWrappers:self->_assetsBeingRetrieved];
    [(MSSubscriber *)self _retrieveNextAssets];
    goto LABEL_29;
  }

  mSIsTemporaryNetworkError = [errorCopy MSIsTemporaryNetworkError];
  v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  v47 = errorCopy;
  if (!mSIsTemporaryNetworkError)
  {
    v44 = assetsCopy;
    if (v16)
    {
      v38 = objc_opt_class();
      v39 = v38;
      personID3 = [(MSCupidStateMachine *)self personID];
      v41 = [rejectedAssetsCopy count];
      mSVerboseDescription = [v47 MSVerboseDescription];
      *buf = 138544130;
      v54 = v38;
      v55 = 2112;
      v56 = personID3;
      v57 = 2048;
      v58 = v41;
      errorCopy = v47;
      v59 = 2114;
      v60 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Reauthorization resulted in %lu rejected assets. Error: %{public}@", buf, 0x2Au);
    }

    array = [MEMORY[0x277CBEB18] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v43 = rejectedAssetsCopy;
    obj = rejectedAssetsCopy;
    v22 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v49;
      do
      {
        v25 = 0;
        do
        {
          if (*v49 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v48 + 1) + 8 * v25);
          if ([(NSMutableArray *)self->_assetsBeingRetrieved count])
          {
            v27 = 0;
            while (1)
            {
              v28 = [(NSMutableArray *)self->_assetsBeingRetrieved objectAtIndex:v27];
              object = [v28 object];
              v30 = [object isEqual:v26];

              if (v30)
              {
                break;
              }

              if (++v27 >= [(NSMutableArray *)self->_assetsBeingRetrieved count])
              {
                goto LABEL_25;
              }
            }

            [array addObject:v28];
            [(NSMutableArray *)self->_assetsBeingRetrieved removeObjectAtIndex:v27];
          }

LABEL_25:
          [(MSSubscriber *)self _finishedRetrievingAsset:v26];
          v31 = v26;
          errorCopy = v47;
          [(MSSubscriberDelegate *)self->_delegate subscriber:self didFinishRetrievingAsset:v31 error:v47];
          ++v25;
        }

        while (v25 != v23);
        v23 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v23);
    }

    storageProtocol = self->_storageProtocol;
    v33 = [MSObjectWrapper objectsFromWrappers:array];
    [(MSSubscribeStorageProtocol *)storageProtocol didFinishUsingAssets:v33];

    [(MSObjectQueue *)self->_retrievalQueue removeObjectWrappersFromQueue:array];
    [(MSSubscriber *)self _updateMasterManifest];

    rejectedAssetsCopy = v43;
    assetsCopy = v44;
    goto LABEL_28;
  }

  if (v16)
  {
    v34 = objc_opt_class();
    v35 = v34;
    personID4 = [(MSCupidStateMachine *)self personID];
    mSVerboseDescription2 = [errorCopy MSVerboseDescription];
    *buf = 138543874;
    v54 = v34;
    v55 = 2112;
    v56 = personID4;
    v57 = 2114;
    v58 = mSVerboseDescription2;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Encountered temporary network error during subscription update. Trying again later. Error :%{public}@", buf, 0x20u);

    errorCopy = v47;
  }

  [(MSObjectQueue *)self->_retrievalQueue commitObjectsWrappers:self->_assetsBeingRetrieved];
  [(MSSubscriber *)self _changeRetrievalStateTo:1];
  [(MSDaemon *)self->_daemon releaseBusy];
LABEL_29:
}

- (void)reauthorizationProtocol:(id)protocol didReceiveAuthenticationError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    errorCopy = error;
    v9 = objc_opt_class();
    v10 = v9;
    personID = [(MSCupidStateMachine *)self personID];
    mSVerboseDescription = [errorCopy MSVerboseDescription];

    v13 = 138543874;
    v14 = v9;
    v15 = 2112;
    v16 = personID;
    v17 = 2114;
    v18 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Reauthorization protocol received authentication error: %{public}@", &v13, 0x20u);
  }

  daemon = self->_daemon;
  personID2 = [(MSCupidStateMachine *)self personID];
  [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationFailureForPersonID:personID2];

  [(MSSubscriber *)self _changeRetrievalStateTo:3];
  [(MSDaemon *)self->_daemon releaseBusy];
}

- (void)subscribeStorageProtocolDidFinishRetrievingAllAssets:(id)assets
{
  v85 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    personID = [(MSCupidStateMachine *)self personID];
    v7 = [(NSMutableArray *)self->_assetsBeingRetrieved count];
    *buf = 138543874;
    v80 = v4;
    v81 = 2112;
    v82 = personID;
    v83 = 2048;
    v84 = v7;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Finished retrieving assets. Checking for errors on %lu assets...", buf, 0x20u);
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[MSObjectQueue count](self->_retrievalQueue, "count", 120)}];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = self->_assetsBeingRetrieved;
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v73 objects:v78 count:16];
  v64 = v8;
  if (v9)
  {
    v10 = v9;
    v66 = 0;
    v63 = 0;
    v65 = 0;
    v11 = MEMORY[0x277D86220];
    v12 = *v74;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v74 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v73 + 1) + 8 * i);
        object = [v14 object];
        error = [object error];
        v17 = error;
        if (error)
        {
          if ([error MSCanBeIgnored])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v42 = objc_opt_class();
              v43 = v42;
              personID2 = [(MSCupidStateMachine *)self personID];
              mSVerboseDescription = [v17 MSVerboseDescription];
              *buf = 138543874;
              v80 = v42;
              v81 = 2112;
              v82 = personID2;
              v83 = 2114;
              v84 = mSVerboseDescription;
              _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Ignoring error: %{public}@", buf, 0x20u);
            }

            goto LABEL_65;
          }

          if ([v17 MSIsTemporaryNetworkError])
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v18 = objc_opt_class();
              v19 = v18;
              personID3 = [(MSCupidStateMachine *)self personID];
              *buf = 138543618;
              v80 = v18;
              v81 = 2112;
              v82 = personID3;
              _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Encountered temporary network error.", buf, 0x16u);

              v11 = MEMORY[0x277D86220];
            }

            v66 = 1;
          }

          else if ([v17 MSIsAuthError])
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v21 = objc_opt_class();
              v22 = v21;
              personID4 = [(MSCupidStateMachine *)self personID];
              *buf = 138543618;
              v80 = v21;
              v11 = MEMORY[0x277D86220];
              v81 = 2112;
              v82 = personID4;
              _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Encountered authentication error.", buf, 0x16u);
            }

            v65 = 1;
          }

          else if ([v17 MSIsBadTokenError])
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v24 = objc_opt_class();
              v25 = v24;
              personID5 = [(MSCupidStateMachine *)self personID];
              *buf = 138543618;
              v80 = v24;
              v11 = MEMORY[0x277D86220];
              v81 = 2112;
              v82 = personID5;
              _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Encountered bad asset retrieval token.", buf, 0x16u);

              v8 = v64;
            }

            [v14 setErrorCount:{objc_msgSend(v14, "errorCount") + 1}];
            if (self->_maxErrorCount <= [v14 errorCount])
            {
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                v39 = objc_opt_class();
                v40 = v39;
                personID6 = [(MSCupidStateMachine *)self personID];
                *buf = 138543874;
                v80 = v39;
                v81 = 2112;
                v82 = personID6;
                v83 = 2114;
                v84 = object;
                _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Too many errors encountered for asset. Aborting download. %{public}@", buf, 0x20u);
              }

              delegate = self->_delegate;
              v28 = MEMORY[0x277CCA9B8];
              v29 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_CANNOT_RETRIEVE");
              v30 = [v28 MSErrorWithDomain:@"MSSubscriberErrorDomain" code:5 description:v29];
              [(MSSubscriberDelegate *)delegate subscriber:self didFinishRetrievingAsset:object error:v30];

              v8 = v64;
              [v64 addObject:object];
              v63 = 1;
              v11 = MEMORY[0x277D86220];
            }

            else
            {
              v63 = 1;
            }
          }

          else
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v35 = objc_opt_class();
              v36 = v35;
              personID7 = [(MSCupidStateMachine *)self personID];
              mSVerboseDescription2 = [v17 MSVerboseDescription];
              *buf = 138543874;
              v80 = v35;
              v8 = v64;
              v81 = 2112;
              v82 = personID7;
              v83 = 2114;
              v84 = mSVerboseDescription2;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Asset retrieval failed with error: %{public}@", buf, 0x20u);

              v11 = MEMORY[0x277D86220];
            }

            [v8 addObject:object];
            [(MSSubscriberDelegate *)self->_delegate subscriber:self didFinishRetrievingAsset:object error:v17];
          }

          if ([v17 MSNeedsBackoff])
          {
            [(MSCupidStateMachine *)self _backoffMMCSBackoffTimer];
          }

          mSMMCSRetryAfterDate = [v17 MSMMCSRetryAfterDate];
          if (mSMMCSRetryAfterDate)
          {
            [(MSCupidStateMachine *)self _didReceiveMMCSRetryAfterDate:mSMMCSRetryAfterDate];
          }
        }

        else
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v32 = objc_opt_class();
            v33 = v32;
            personID8 = [(MSCupidStateMachine *)self personID];
            *buf = 138543874;
            v80 = v32;
            v8 = v64;
            v81 = 2112;
            v82 = personID8;
            v83 = 2114;
            v84 = object;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Found orphaned asset. Ignoring. %{public}@", buf, 0x20u);

            v11 = MEMORY[0x277D86220];
          }

          [v8 addObject:object];
        }
      }

      v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v73 objects:v78 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v66 = 0;
    v63 = 0;
    v65 = 0;
  }

  [*(&self->super.super.isa + v61) commitErrorCountsForObjectWrappers:self->_assetsBeingRetrieved];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v46 = v8;
  v47 = [v46 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v70;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v70 != v49)
        {
          objc_enumerationMutation(v46);
        }

        [(MSSubscriber *)self _finishedRetrievingAsset:*(*(&v69 + 1) + 8 * j)];
      }

      v48 = [v46 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v48);
  }

  if (((v63 | v65) & 1) == 0)
  {
    [(MSCupidStateMachine *)self _resetMMCSBackoffTimer];
  }

  daemon = self->_daemon;
  personID9 = [(MSCupidStateMachine *)self personID];
  if (v65)
  {
    [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationFailureForPersonID:personID9];
  }

  else
  {
    [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:personID9];
  }

  v8 = v64;
  if (v63)
  {
    v53 = 3;
  }

  else
  {
    [(NSMutableArray *)self->_assetsBeingRetrieved removeAllObjects];
    v53 = 1;
  }

  [(MSSubscriber *)self _changeRetrievalStateTo:v53];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v54 = objc_opt_class();
    v55 = v54;
    personID10 = [(MSCupidStateMachine *)self personID];
    *buf = 138543618;
    v80 = v54;
    v81 = 2112;
    v82 = personID10;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ ...Finished handling errors.", buf, 0x16u);

    v8 = v64;
  }

  [(MSDaemon *)self->_daemon releaseBusy];
  if (v66)
  {
    v57 = assetsCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v58 = objc_opt_class();
      v59 = v58;
      personID11 = [(MSCupidStateMachine *)self personID];
      *buf = 138543618;
      v80 = v58;
      v81 = 2112;
      v82 = personID11;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Found temporary network errors during asset downloading. Trying again later.", buf, 0x16u);

      v8 = v64;
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__MSSubscriber_subscribeStorageProtocolDidFinishRetrievingAllAssets___block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_65:
    v57 = assetsCopy;
  }
}

- (void)subscribeStorageProtocol:(id)protocol didFinishRetrievingAsset:(id)asset error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  assetCopy = asset;
  errorCopy = error;
  if (errorCopy)
  {
    [assetCopy setError:errorCopy];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = v11;
      personID = [(MSCupidStateMachine *)self personID];
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = personID;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Finished retrieving asset.", &v16, 0x16u);
    }

    path = [assetCopy path];
    [(MSSubscriber *)self _finishedRetrievingAsset:assetCopy];
    [(MSSubscriberDelegate *)self->_delegate subscriber:self didFinishRetrievingAsset:assetCopy error:0];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtPath:path error:0];
  }
}

- (void)_finishedRetrievingAsset:(id)asset
{
  v4 = [MSObjectWrapper indexOfObject:asset inWrapperArray:self->_assetsBeingRetrieved];
  if (v4 != -1)
  {
    v5 = v4;
    v11 = [(NSMutableArray *)self->_assetsBeingRetrieved objectAtIndex:v4];
    object = [v11 object];
    storageProtocol = self->_storageProtocol;
    v8 = [MEMORY[0x277CBEA60] arrayWithObject:object];
    [(MSSubscribeStorageProtocol *)storageProtocol didFinishUsingAssets:v8];

    retrievalQueue = self->_retrievalQueue;
    v10 = [MEMORY[0x277CBEA60] arrayWithObject:v11];
    [(MSObjectQueue *)retrievalQueue removeObjectWrappersFromQueue:v10];

    [(NSMutableArray *)self->_assetsBeingRetrieved removeObjectAtIndex:v5];
    [(MSSubscriber *)self _updateMasterManifest];
  }
}

- (void)_forget
{
  retrievalQueue = self->_retrievalQueue;
  self->_retrievalQueue = 0;

  storageProtocol = self->_storageProtocol;
  self->_storageProtocol = 0;

  reauthProtocol = self->_reauthProtocol;
  self->_reauthProtocol = 0;
}

- (void)_abort
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0;
  [(MSSubscriber *)self _stopOutSubscriberState:&v20 + 4 outRetrievalState:&v20];
  [(MSSubscriber *)self _setHasOutstandingPoll:0];
  self->_checkOneMoreTime = 0;
  v3 = MEMORY[0x277CCA9B8];
  v4 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_ABORTED");
  v5 = [v3 MSErrorWithDomain:@"MSSubscriberErrorDomain" code:4 description:v4];

  if (HIDWORD(v20))
  {
    [(MSSubscriberDelegate *)self->_delegate subscriber:self didFailToRetriveSubscriptionUpdateWithError:v5];
    if (objc_opt_respondsToSelector())
    {
      [(MSSubscriberDelegate *)self->_delegate subscriberDidCompleteCheckForNewAssetCollections:self];
    }
  }

  [(NSMutableArray *)self->_assetsBeingRetrieved removeAllObjects];
  v6 = [(MSObjectQueue *)self->_retrievalQueue allObjectWrappersMaxCount:5];
  v7 = v6;
  while ([v6 count])
  {
    v8 = objc_autoreleasePoolPush();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          delegate = self->_delegate;
          object = [*(*(&v16 + 1) + 8 * i) object];
          [(MSSubscriberDelegate *)delegate subscriber:self didFinishRetrievingAsset:object error:v5];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }

    [(MSObjectQueue *)self->_retrievalQueue removeObjectWrappersFromQueue:v9];
    v7 = [(MSObjectQueue *)self->_retrievalQueue allObjectWrappersMaxCount:5];

    objc_autoreleasePoolPop(v8);
    v6 = v7;
  }

  [(MSSubscriber *)self _updateMasterManifest];
}

- (void)_stopOutSubscriberState:(int *)state outRetrievalState:(int *)retrievalState
{
  if (self->_state == 2)
  {
    [(MSSubscribeStreamsProtocol *)self->_protocol abort];
  }

  retrievalState = self->_retrievalState;
  if (retrievalState == 2)
  {
    v8 = &OBJC_IVAR___MSSubscriber__storageProtocol;
  }

  else
  {
    if (retrievalState != 4)
    {
      goto LABEL_8;
    }

    v8 = &OBJC_IVAR___MSSubscriber__reauthProtocol;
  }

  [*(&self->super.super.isa + *v8) abort];
LABEL_8:
  if (self->_state == 2)
  {
    [(MSDaemon *)self->_daemon releaseBusy];
  }

  v9 = self->_retrievalState;
  if (v9 == 4 || v9 == 2)
  {
    [(MSDaemon *)self->_daemon releaseBusy];
  }

  if (self->_checkOneMoreTime)
  {
    [(MSSubscriber *)self _setHasOutstandingPoll:1];
    self->_checkOneMoreTime = 0;
  }

  if (state)
  {
    *state = self->_state;
  }

  if (retrievalState)
  {
    *retrievalState = self->_retrievalState;
  }

  [(MSSubscriber *)self _changeStateTo:0];
  [(MSSubscriber *)self _changeRetrievalStateTo:0];
  assetsBeingRetrieved = self->_assetsBeingRetrieved;

  [(NSMutableArray *)assetsBeingRetrieved removeAllObjects];
}

- (void)_reauthorizeAssets
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_assetsBeingRetrieved count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      v4 = v3;
      personID = [(MSCupidStateMachine *)self personID];
      v6 = [(NSMutableArray *)self->_assetsBeingRetrieved count];
      v9 = 138543874;
      v10 = v3;
      v11 = 2112;
      v12 = personID;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Reauthorizing retrieval of %lu assets...", &v9, 0x20u);
    }

    reauthProtocol = self->_reauthProtocol;
    v8 = [MSObjectWrapper objectsFromWrappers:self->_assetsBeingRetrieved];
    [(MSReauthorizationProtocol *)reauthProtocol requestReauthorizationForAssets:v8];

    [(MSSubscriber *)self _changeRetrievalStateTo:4];
  }

  else
  {

    [(MSSubscriber *)self _retrieveNextAssets];
  }
}

- (void)_retrieveNextAssets
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(MSObjectQueue *)self->_retrievalQueue smallestObjectWrappersTargetTotalSize:self->_targetRetrievalByteCount maxCount:self->_retrievalBatchSize];
  if ([v3 count])
  {
    [(NSMutableArray *)self->_assetsBeingRetrieved removeAllObjects];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v23;
      do
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v7 = *(*(&v22 + 1) + 8 * v9);

          object = [v7 object];
          mMCSAccessHeader = [object MMCSAccessHeader];

          if (mMCSAccessHeader)
          {
            [(NSMutableArray *)self->_assetsBeingRetrieved addObject:v7];
          }

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v6);
    }

    if ([(NSMutableArray *)self->_assetsBeingRetrieved count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = v13;
        personID = [(MSCupidStateMachine *)self personID];
        v16 = [(NSMutableArray *)self->_assetsBeingRetrieved count];
        *buf = 138543874;
        v27 = v13;
        v28 = 2112;
        v29 = personID;
        v30 = 2048;
        v31 = v16;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Retrieving %lu assets...", buf, 0x20u);
      }

      [(MSSubscriber *)self _changeRetrievalStateTo:2, v22];
      storageProtocol = self->_storageProtocol;
      v18 = [MSObjectWrapper objectsFromWrappers:self->_assetsBeingRetrieved];
      [(MSSubscribeStorageProtocol *)storageProtocol retrieveAssets:v18];
    }

    else
    {
      [(NSMutableArray *)self->_assetsBeingRetrieved addObjectsFromArray:v4];
      [(MSSubscriber *)self _reauthorizeAssets];
    }
  }

  else
  {
    [(MSDaemon *)self->_daemon releaseBusy];
    [(MSSubscriber *)self _changeRetrievalStateTo:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = v19;
      personID2 = [(MSCupidStateMachine *)self personID];
      *buf = 138543618;
      v27 = v19;
      v28 = 2112;
      v29 = personID2;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ No more assets to retrieve.", buf, 0x16u);
    }

    if ([(MSSubscriber *)self _hasOutstandingPoll])
    {
      [(MSSubscriber *)self checkForNewAssetCollections];
    }
  }
}

- (void)_retrieveAssets
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(MSCupidStateMachine *)self hasDeactivated])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      personID = [(MSCupidStateMachine *)self personID];
      v10 = 138543618;
      v11 = v3;
      v12 = 2112;
      v13 = personID;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not retrieving assets because we're shutting down.", &v10, 0x16u);
    }

    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = v6;
    personID2 = [(MSCupidStateMachine *)self personID];
    retrievalState = self->_retrievalState;
    v10 = 138543874;
    v11 = v6;
    v12 = 2112;
    v13 = personID2;
    v14 = 1024;
    v15 = retrievalState;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Retrieval state: %d", &v10, 0x1Cu);
  }

  v5 = self->_retrievalState;
  if (v5 <= 2)
  {
    if (v5 < 2)
    {
      if ([(MSSubscriber *)self _isAllowedToDownload])
      {
        [(MSDaemon *)self->_daemon retainBusy];
        [(MSSubscriber *)self _changeRetrievalStateTo:2];
        [(MSSubscriber *)self _retrieveNextAssets];
      }

      return;
    }

    if (v5 == 2)
    {
      return;
    }

LABEL_14:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"Unexpected state"];
    return;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      return;
    }

    goto LABEL_14;
  }

  if ([(MSSubscriber *)self _isAllowedToDownload])
  {
    [(MSDaemon *)self->_daemon retainBusy];
    [(MSSubscriber *)self _changeRetrievalStateTo:4];
    [(MSSubscriber *)self _reauthorizeAssets];
  }
}

- (void)checkForOutstandingActivities
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
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not checking for outstanding activities because we're shutting down.", &v5, 0x16u);
    }
  }

  else
  {
    if ([(MSObjectQueue *)self->_retrievalQueue count])
    {
      [(MSSubscriber *)self _retrieveAssets];
    }

    [(MSSubscriber *)self _updateMasterManifest];
    if ([(MSSubscriber *)self _hasOutstandingPoll])
    {

      [(MSSubscriber *)self checkForNewAssetCollections];
    }
  }
}

- (void)retrieveAssets:(id)assets
{
  v46 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = assetsCopy;
    v6 = [v5 countByEnumeratingWithState:&v34 objects:v45 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v5);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __assert_rtn("[MSSubscriber retrieveAssets:]", "MSSubscriber.m", 554, "[asset isKindOfClass:[MSAsset class]]");
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v34 objects:v45 count:16];
      }

      while (v7);
    }

    v29 = assetsCopy;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      personID = [(MSCupidStateMachine *)self personID];
      v13 = [v5 count];
      *buf = 138543874;
      v40 = v10;
      v41 = 2112;
      v42 = personID;
      v43 = 2048;
      v44 = v13;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Scheduling retrieval of %ld assets.", buf, 0x20u);
    }

    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = v5;
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v30 + 1) + 8 * j);
          if ([v20 _fileSize])
          {
            mSMakeUUID = [MEMORY[0x277CCACA8] MSMakeUUID];
            [v20 addMetadataValue:mSMakeUUID forKey:@"MSAssetMetadataAssetFileTransferUUID"];

            v22 = +[MSObjectWrapper wrapperWithObject:size:](MSObjectWrapper, "wrapperWithObject:size:", v20, [v20 _fileSize]);
            [v14 addObject:v22];
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v26 = objc_opt_class();
              v27 = v26;
              personID2 = [(MSCupidStateMachine *)self personID];
              *buf = 138543874;
              v40 = v26;
              v41 = 2112;
              v42 = personID2;
              v43 = 2114;
              v44 = v20;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Rejected invalid asset %{public}@.", buf, 0x20u);
            }

            delegate = self->_delegate;
            v24 = MEMORY[0x277CCA9B8];
            v22 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_ASSET_INVALID");
            v25 = [v24 MSErrorWithDomain:@"MSSubscriberErrorDomain" code:1 description:v22];
            [(MSSubscriberDelegate *)delegate subscriber:self didFinishRetrievingAsset:v20 error:v25];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v17);
    }

    [(MSObjectQueue *)self->_retrievalQueue appendObjectWrappers:v14];
    [(MSSubscriber *)self _updateMasterManifest];
    [(MSSubscriber *)self _retrieveAssets];

    assetsCopy = v29;
  }
}

- (void)subscribeStreamsProtocol:(id)protocol didFindTemporarilyUnavailableSubscriptionForPersonID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    dCopy = d;
    v7 = objc_opt_class();
    v8 = v7;
    personID = [(MSCupidStateMachine *)self personID];

    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = personID;
    v14 = 2114;
    v15 = dCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Subscription stream for person ID %{public}@ is temporarily unavailable.", &v10, 0x20u);
  }
}

- (void)_didReceiveAuthenticationError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    errorCopy = error;
    v8 = objc_opt_class();
    v9 = v8;
    personID = [(MSCupidStateMachine *)self personID];
    mSVerboseDescription = [errorCopy MSVerboseDescription];

    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = personID;
    v16 = 2114;
    v17 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Received authentication error: %{public}@", &v12, 0x20u);
  }

  daemon = self->_daemon;
  personID2 = [(MSCupidStateMachine *)self personID];
  [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationFailureForPersonID:personID2];

  [(MSSubscriber *)self _changeStateTo:1];
  [(MSDaemon *)self->_daemon releaseBusy];
}

- (void)subscribeStreamsProtocol:(id)protocol didFinishError:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  errorCopy = error;
  v8 = errorCopy;
  if (!errorCopy)
  {
    daemon = self->_daemon;
    personID = [(MSCupidStateMachine *)self personID];
    [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:personID];

    [(MSCupidStateMachine *)self _resetStreamsBackoffTimer];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = v13;
      personID2 = [(MSCupidStateMachine *)self personID];
      v23 = 138543618;
      v24 = v13;
      v25 = 2112;
      v26 = personID2;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Finished retrieving subscription updates.", &v23, 0x16u);
    }

    goto LABEL_13;
  }

  mSIsTemporaryNetworkError = [errorCopy MSIsTemporaryNetworkError];
  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (!mSIsTemporaryNetworkError)
  {
    if (v10)
    {
      v20 = objc_opt_class();
      v21 = v20;
      personID3 = [(MSCupidStateMachine *)self personID];
      v23 = 138543874;
      v24 = v20;
      v25 = 2112;
      v26 = personID3;
      v27 = 2114;
      v28 = v8;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Found error when retrieving subscription updates: %{public}@", &v23, 0x20u);
    }

    if ([v8 MSNeedsBackoff])
    {
      [(MSCupidStateMachine *)self _backoffStreamsBackoffTimer];
    }

    [(MSSubscriberDelegate *)self->_delegate subscriber:self didFailToRetriveSubscriptionUpdateWithError:v8];
LABEL_13:
    [(MSSubscriber *)self _didFinishRetrievingSubscriptionUpdate];
    goto LABEL_14;
  }

  if (v10)
  {
    v16 = objc_opt_class();
    v17 = v16;
    personID4 = [(MSCupidStateMachine *)self personID];
    mSVerboseDescription = [v8 MSVerboseDescription];
    v23 = 138543874;
    v24 = v16;
    v25 = 2112;
    v26 = personID4;
    v27 = 2114;
    v28 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Found temporary network error. Trying again later. Error: %{public}@", &v23, 0x20u);
  }

  [(MSSubscriber *)self _changeStateTo:1];
  [(MSDaemon *)self->_daemon releaseBusy];
LABEL_14:
}

- (void)subscribeStreamsProtocol:(id)protocol didFindDisappearedSubscriptionForPersonID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    personID = [(MSCupidStateMachine *)self personID];
    v11 = 138543874;
    v12 = v8;
    v13 = 2112;
    v14 = personID;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Subscription for personID %@ is no longer available.", &v11, 0x20u);
  }

  [(NSMutableDictionary *)self->_newSubscriptionsByStreamID removeObjectForKey:dCopy];
  if (objc_opt_respondsToSelector())
  {
    [(MSSubscriberDelegate *)self->_delegate subscriber:self didFindDisappearedSubscriptionforStreamID:dCopy];
  }
}

- (void)subscribeStreamsProtocol:(id)protocol didFinishReceivingUpdatesForPersonID:(id)d ctag:(id)ctag
{
  v29 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  dCopy = d;
  ctagCopy = ctag;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = v11;
    personID = [(MSCupidStateMachine *)self personID];
    v23 = 138543874;
    v24 = v11;
    v25 = 2112;
    v26 = personID;
    v27 = 2112;
    v28 = dCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Finished receiving updates for personID: %@.", &v23, 0x20u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v20 = objc_opt_class();
    v21 = v20;
    personID2 = [(MSCupidStateMachine *)self personID];
    v23 = 138543874;
    v24 = v20;
    v25 = 2112;
    v26 = personID2;
    v27 = 2114;
    v28 = ctagCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ New ctag: %{public}@", &v23, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(MSSubscriberDelegate *)self->_delegate subscriber:self didFinishRequestingAssetRetrievalForStreamID:dCopy];
  }

  v14 = [(NSMutableDictionary *)self->_newSubscriptionsByStreamID objectForKey:dCopy];
  v15 = v14;
  if (v14)
  {
    [v14 setCtag:ctagCopy];
  }

  else if (ctagCopy)
  {
    v16 = [MSSubscribedStream subscribedStreamWithStreamID:dCopy];
    [v16 setCtag:ctagCopy];
    [(NSMutableDictionary *)self->_newSubscriptionsByStreamID setObject:v16 forKey:dCopy];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = v17;
      personID3 = [(MSCupidStateMachine *)self personID];
      v23 = 138543874;
      v24 = v17;
      v25 = 2112;
      v26 = personID3;
      v27 = 2112;
      v28 = dCopy;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Received CTAG for new person ID %@.", &v23, 0x20u);
    }
  }
}

- (void)subscribeStreamsProtocol:(id)protocol didReceiveAssetCollections:(id)collections forPersonID:(id)d
{
  v34 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  collectionsCopy = collections;
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    personID = [(MSCupidStateMachine *)self personID];
    *buf = 138543874;
    v29 = v10;
    v30 = 2112;
    v31 = personID;
    v32 = 2048;
    v33 = [collectionsCopy count];
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Found %ld new asset collections.", buf, 0x20u);
  }

  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(collectionsCopy, "count")}];
  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = collectionsCopy;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        if ([v20 wasDeleted])
        {
          v21 = array;
        }

        else
        {
          v21 = v13;
        }

        [v21 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  if ([v13 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v29 = v13;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "New Collections: %{public}@", buf, 0xCu);
  }

  if ([array count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = array;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Deleted asset collections: %{public}@", buf, 0xCu);
    }

    if (objc_opt_respondsToSelector())
    {
      [(MSSubscriberDelegate *)self->_delegate subscriber:self didReceiveDeleteForAssetCollections:array streamID:dCopy];
    }
  }

  [(MSSubscriberDelegate *)self->_delegate subscriber:self didRequestAssetRetrievalForAssetCollections:v13 streamID:dCopy];
}

- (void)subscribeStreamsProtocol:(id)protocol willReceiveUpdatesForPersonID:(id)d wasReset:(BOOL)reset metadata:(id)metadata
{
  resetCopy = reset;
  v34 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  dCopy = d;
  metadataCopy = metadata;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = objc_opt_class();
    v14 = v13;
    personID = [(MSCupidStateMachine *)self personID];
    v24 = 138543618;
    v25 = v13;
    v26 = 2112;
    v27 = personID;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Checking for subscription updates...", &v24, 0x16u);
  }

  if (resetCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = v16;
    personID2 = [(MSCupidStateMachine *)self personID];
    v24 = 138543618;
    v25 = v16;
    v26 = 2112;
    v27 = personID2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Subscriber state was reset by the server.", &v24, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v21 = objc_opt_class();
    v22 = v21;
    personID3 = [(MSCupidStateMachine *)self personID];
    v24 = 138544386;
    v25 = v21;
    v26 = 2112;
    v27 = personID3;
    v28 = 2112;
    v29 = dCopy;
    v30 = 1024;
    v31 = resetCopy;
    v32 = 2114;
    v33 = metadataCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Beginning subscriber updates for personID: %@ wasReset: %d\nMetadata: %{public}@", &v24, 0x30u);
  }

  v19 = [(NSMutableDictionary *)self->_newSubscriptionsByStreamID objectForKey:dCopy];
  if (v19)
  {
    if (!resetCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = [MSSubscribedStream subscribedStreamWithStreamID:dCopy];
    [(NSMutableDictionary *)self->_newSubscriptionsByStreamID setObject:v19 forKey:dCopy];
    if (!resetCopy)
    {
      goto LABEL_13;
    }
  }

  daemon = [(MSSubscriber *)self daemon];
  [daemon didReceiveGlobalResetSyncForPersonID:dCopy];

  if (objc_opt_respondsToSelector())
  {
    [(MSSubscriberDelegate *)self->_delegate subscriber:self didResetSyncForStreamID:dCopy];
  }

LABEL_13:
  if (objc_opt_respondsToSelector())
  {
    [(MSSubscriberDelegate *)self->_delegate subscriber:self willBeginRequestingAssetRetrievalForStreamID:dCopy];
  }
}

- (void)_didFinishRetrievingSubscriptionUpdate
{
  [(MSSubscriber *)self _setSubscriptionsByStreamID:self->_newSubscriptionsByStreamID];
  newSubscriptionsByStreamID = self->_newSubscriptionsByStreamID;
  self->_newSubscriptionsByStreamID = 0;

  if (self->_checkOneMoreTime)
  {
    self->_checkOneMoreTime = 0;
    [(MSSubscriber *)self _changeStateTo:1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__MSSubscriber__didFinishRetrievingSubscriptionUpdate__block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [(MSSubscriber *)self _setHasOutstandingPoll:0];
    [(MSSubscriber *)self _changeStateTo:0];
    if (objc_opt_respondsToSelector())
    {
      [(MSSubscriberDelegate *)self->_delegate subscriberDidCompleteCheckForNewAssetCollections:self];
    }
  }

  [(MSDaemon *)self->_daemon releaseBusy];
}

- (void)_checkForNewAssetCollections
{
  v22 = *MEMORY[0x277D85DE8];
  [(MSSubscriber *)self _changeStateTo:2];
  _subscriptionsByStreamID = [(MSSubscriber *)self _subscriptionsByStreamID];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(_subscriptionsByStreamID, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = _subscriptionsByStreamID;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKey:{*(*(&v17 + 1) + 8 * v9), v17}];
        ctag = [v10 ctag];

        if (ctag)
        {
          ctag2 = [v10 ctag];
          streamID = [v10 streamID];
          [v4 setObject:ctag2 forKey:streamID];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  _subscriptionsByStreamID2 = [(MSSubscriber *)self _subscriptionsByStreamID];
  v15 = [_subscriptionsByStreamID2 mutableCopy];
  newSubscriptionsByStreamID = self->_newSubscriptionsByStreamID;
  self->_newSubscriptionsByStreamID = v15;

  [(MSSubscribeStreamsProtocol *)self->_protocol pollForSubscriptionUpdatesWithAccountAnchors:v4];
}

- (void)checkForNewAssetCollections
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(MSCupidStateMachine *)self hasDeactivated])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      personID = [(MSCupidStateMachine *)self personID];
      v7 = 138543618;
      v8 = v3;
      v9 = 2112;
      v10 = personID;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not checking for new asset collections because we're shutting down.", &v7, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      state = self->_state;
      v7 = 67109120;
      LODWORD(v8) = state;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "checkForNewAssetCollections called, state: %d", &v7, 8u);
    }

    v5 = self->_state;
    if (v5 == 1)
    {
      [(MSDaemon *)self->_daemon retainBusy];
      [(MSSubscriber *)self _checkForNewAssetCollections];
    }

    else if (v5)
    {
      [(MSSubscriber *)self _setHasOutstandingPoll:1];
      self->_checkOneMoreTime = 1;
    }

    else
    {
      [(MSSubscriber *)self _setHasOutstandingPoll:1];
      if ([(MSSubscriber *)self _isAllowedToDownload]&& ![(MSObjectQueue *)self->_retrievalQueue count])
      {
        [(MSSubscriber *)self _changeStateTo:1];
        self->_checkOneMoreTime = 0;
        [(MSSubscriber *)self checkForNewAssetCollections];
      }
    }
  }
}

- (void)checkForNewAssetCollectionsIfMissingCtag
{
  v21 = *MEMORY[0x277D85DE8];
  _subscriptionsByStreamID = [(MSSubscriber *)self _subscriptionsByStreamID];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [_subscriptionsByStreamID countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    selfCopy = self;
    v6 = 0;
    v7 = *v15;
    v8 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(_subscriptionsByStreamID);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [_subscriptionsByStreamID objectForKey:v10];
        ctag = [v11 ctag];

        if (!ctag)
        {
          v6 = 1;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v19 = v10;
            _os_log_impl(&dword_245B99000, v8, OS_LOG_TYPE_INFO, "will check for new asset collections due to missing ctag for %@", buf, 0xCu);
          }
        }
      }

      v5 = [_subscriptionsByStreamID countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
    if (v6)
    {
      [(MSSubscriber *)selfCopy checkForNewAssetCollections];
    }
  }
}

- (BOOL)_isAllowedToDownload
{
  v18 = *MEMORY[0x277D85DE8];
  daemon = [(MSSubscriber *)self daemon];
  personID = [(MSCupidStateMachine *)self personID];
  if (![daemon mayDownloadPersonID:personID])
  {
    goto LABEL_6;
  }

  v5 = MSPlatform();
  if (([v5 policyMayDownload] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  _latestNextActivityDate = [(MSCupidStateMachine *)self _latestNextActivityDate];
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [_latestNextActivityDate compare:date];

  if (v8 != 1)
  {
    return 1;
  }

LABEL_7:
  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = v11;
    personID2 = [(MSCupidStateMachine *)self personID];
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = personID2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not downloading at this time.", &v14, 0x16u);

    return 0;
  }

  return result;
}

- (void)resetSync
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = v3;
    personID = [(MSCupidStateMachine *)self personID];
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = personID;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Subscriber sync state was reset locally.", &v7, 0x16u);
  }

  [(MSSubscriber *)self _stopOutSubscriberState:0 outRetrievalState:0];
  _subscriptionsByStreamID = [(MSSubscriber *)self _subscriptionsByStreamID];
  [_subscriptionsByStreamID removeAllObjects];

  [(MSCupidStateMachine *)self _commitUserManifest];
}

- (void)_setSubscriptionsByStreamID:(id)d
{
  dCopy = d;
  _userManifest = [(MSCupidStateMachine *)self _userManifest];
  [_userManifest setObject:dCopy forKey:@"subs"];

  [(MSCupidStateMachine *)self _commitUserManifest];
}

- (id)_subscriptionsByStreamID
{
  _userManifest = [(MSCupidStateMachine *)self _userManifest];
  dictionary = [_userManifest objectForKey:@"subs"];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [_userManifest setObject:dictionary forKey:@"subs"];
    [(MSCupidStateMachine *)self _commitUserManifest];
  }

  return dictionary;
}

- (void)_setHasOutstandingPoll:(BOOL)poll
{
  pollCopy = poll;
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = v7;
    personID = [(MSCupidStateMachine *)self personID];
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = personID;
    v14 = 1024;
    v15 = pollCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Setting outstanding poll: %d", &v10, 0x1Cu);
  }

  _userManifest = [(MSCupidStateMachine *)self _userManifest];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:pollCopy];
  [_userManifest setObject:v6 forKey:@"poll"];

  [(MSCupidStateMachine *)self _commitUserManifest];
}

- (BOOL)_hasOutstandingPoll
{
  _userManifest = [(MSCupidStateMachine *)self _userManifest];
  v3 = [_userManifest objectForKey:@"poll"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)_updateMasterManifest
{
  _latestNextActivityDate = [(MSCupidStateMachine *)self _latestNextActivityDate];
  if ([(MSSubscriber *)self _hasOutstandingPoll])
  {
    if (_latestNextActivityDate)
    {
LABEL_3:
      personID = [(MSCupidStateMachine *)self personID];
      v4 = _latestNextActivityDate;
      goto LABEL_10;
    }
  }

  else
  {
    if ([(MSObjectQueue *)self->_retrievalQueue count])
    {
      v5 = _latestNextActivityDate == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      goto LABEL_3;
    }
  }

  personID = [(MSCupidStateMachine *)self personID];
  v4 = 0;
LABEL_10:
  [MSSubscriber _setMasterNextActivityDate:v4 forPersonID:personID];

  _commitMasterManifest_269();
}

- (void)_serverSideConfigurationDidChange:(id)change
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACC8];
  changeCopy = change;
  currentThread = [v4 currentThread];
  mainThread = [MEMORY[0x277CCACC8] mainThread];

  if (currentThread == mainThread)
  {
    userInfo = [changeCopy userInfo];

    v8 = [userInfo objectForKey:@"personID"];
    personID = [(MSCupidStateMachine *)self personID];
    v10 = [v8 isEqualToString:personID];

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = v11;
        personID2 = [(MSCupidStateMachine *)self personID];
        *buf = 138543618;
        v16 = v11;
        v17 = 2112;
        v18 = personID2;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Server-side configuration has changed. Reading new values.", buf, 0x16u);
      }

      [(MSSubscriber *)self _refreshServerSideConfigurationParameters];
    }
  }

  else
  {
    [(MSSubscriber *)self performSelectorOnMainThread:sel__serverSideConfigurationDidChange_ withObject:changeCopy waitUntilDone:0];
  }
}

- (void)_refreshServerSideConfigurationParameters
{
  personID = [(MSCupidStateMachine *)self personID];
  self->_targetRetrievalByteCount = [MSServerSideConfigManager longLongValueForParameter:@"mme.streams.client.subDownloadBatchTargetSize" forPersonID:personID defaultValue:10485760];

  personID2 = [(MSCupidStateMachine *)self personID];
  self->_retrievalBatchSize = [MSServerSideConfigManager intValueForParameter:@"mme.streams.client.subMaxDownloadBatchCount" forPersonID:personID2 defaultValue:10];

  personID3 = [(MSCupidStateMachine *)self personID];
  self->_maxErrorCount = [MSServerSideConfigManager intValueForParameter:@"mme.streams.client.subMaxErrorRetryCount" forPersonID:personID3 defaultValue:3];
}

- (void)_changeRetrievalStateTo:(int)to
{
  v3 = *&to;
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [objc_opt_class() _descriptionForRetrievalState:self->_retrievalState];
    v8 = [objc_opt_class() _descriptionForRetrievalState:v3];
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[RETRIEVALSTATE %{public}@] %{public}@ -> %{public}@", &v9, 0x20u);
  }

  self->_retrievalState = v3;
}

- (void)_changeStateTo:(int)to
{
  v3 = *&to;
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [objc_opt_class() _descriptionForState:self->_state];
    v8 = [objc_opt_class() _descriptionForState:v3];
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[STATE %{public}@] %{public}@ -> %{public}@", &v9, 0x20u);
  }

  self->_state = v3;
}

- (void)dealloc
{
  [(MSSubscriber *)self deactivate];
  v3.receiver = self;
  v3.super_class = MSSubscriber;
  [(MSCupidStateMachine *)&v3 dealloc];
}

- (void)deactivate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(MSSubscriber *)self stop];
  assetsBeingRetrieved = self->_assetsBeingRetrieved;
  self->_assetsBeingRetrieved = 0;

  reauthProtocol = self->_reauthProtocol;
  self->_reauthProtocol = 0;

  protocol = self->_protocol;
  self->_protocol = 0;

  [(MSSubscribeStorageProtocol *)self->_storageProtocol deactivateRemoveAllFiles:[(MSObjectQueue *)self->_retrievalQueue count]== 0];
  retrievalQueue = self->_retrievalQueue;
  self->_retrievalQueue = 0;

  storageProtocol = self->_storageProtocol;
  self->_storageProtocol = 0;

  newSubscriptionsByStreamID = self->_newSubscriptionsByStreamID;
  self->_newSubscriptionsByStreamID = 0;

  v10.receiver = self;
  v10.super_class = MSSubscriber;
  [(MSCupidStateMachine *)&v10 deactivate];
}

- (MSSubscriber)initWithPersonID:(id)d baseURL:(id)l
{
  dCopy = d;
  lCopy = l;
  v23.receiver = self;
  v23.super_class = MSSubscriber;
  v8 = [(MSCupidStateMachine *)&v23 initWithPersonID:dCopy];
  if (v8)
  {
    v9 = [[MSSubscribeStreamsProtocol alloc] initWithPersonID:dCopy baseURL:lCopy];
    protocol = v8->_protocol;
    v8->_protocol = v9;

    [(MSSubscribeStreamsProtocol *)v8->_protocol setDelegate:v8];
    v11 = [[MSSubscribeMMCSProtocol alloc] initWithPersonID:dCopy];
    storageProtocol = v8->_storageProtocol;
    v8->_storageProtocol = v11;

    [(MSSubscribeStorageProtocol *)v8->_storageProtocol setDelegate:v8];
    v13 = [[MSReauthorizationProtocol alloc] initWithPersonID:dCopy baseURL:lCopy];
    reauthProtocol = v8->_reauthProtocol;
    v8->_reauthProtocol = v13;

    [(MSReauthorizationProtocol *)v8->_reauthProtocol setDelegate:v8];
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    assetsBeingRetrieved = v8->_assetsBeingRetrieved;
    v8->_assetsBeingRetrieved = v15;

    v17 = [MSObjectQueue alloc];
    v18 = MSPathSubscriberRetrievalQueueForPersonID(dCopy);
    v19 = [(MSObjectQueue *)v17 initWithPath:v18];
    retrievalQueue = v8->_retrievalQueue;
    v8->_retrievalQueue = v19;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__serverSideConfigurationDidChange_ name:@"MSServerSideConfigChanged" object:0];

    [(MSSubscriber *)v8 _refreshServerSideConfigurationParameters];
  }

  return v8;
}

- (id)ownSubscribedStream
{
  _subscriptionsByStreamID = [(MSSubscriber *)self _subscriptionsByStreamID];
  personID = [(MSCupidStateMachine *)self personID];
  v5 = [_subscriptionsByStreamID objectForKey:personID];

  return v5;
}

- (id)subscribedStreams
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  _subscriptionsByStreamID = [(MSSubscriber *)self _subscriptionsByStreamID];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(_subscriptionsByStreamID, "count")}];

  _subscriptionsByStreamID2 = [(MSSubscriber *)self _subscriptionsByStreamID];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [_subscriptionsByStreamID2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(_subscriptionsByStreamID2);
        }

        v11 = [_subscriptionsByStreamID2 objectForKey:*(*(&v13 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [_subscriptionsByStreamID2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_descriptionForRetrievalState:(int)state
{
  if (state > 4)
  {
    return @"???";
  }

  else
  {
    return off_278E90598[state];
  }
}

+ (id)_descriptionForState:(int)state
{
  if (state > 2)
  {
    return @"???";
  }

  else
  {
    return off_278E90580[state];
  }
}

+ (BOOL)isInRetryState
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [_subscriberByID allValues];
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

+ (void)stopAllActivities
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [_subscriberByID allValues];
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
  v2 = _masterNextActivityDateByPersonID_296();
  allKeys = [v2 allKeys];

  return allKeys;
}

+ (id)nextActivityDateForPersonID:(id)d
{
  dCopy = d;
  v4 = _masterNextActivityDateByPersonID_296();
  v5 = [v4 objectForKey:dCopy];

  return v5;
}

+ (id)nextActivityDate
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = _masterNextActivityDateByPersonID_296();
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
    v7 = _masterNextActivityDateByPersonID_296();
    v8 = v7;
    if (dateCopy)
    {
      [v7 setObject:dateCopy forKey:dCopy];
    }

    else
    {
      [v7 removeObjectForKey:dCopy];
    }

    _commitMasterManifest_269();
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
  v3 = [_subscriberByID objectForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 forget];
    [_subscriberByID removeObjectForKey:dCopy];
  }
}

+ (id)_clearInstantiatedSubscribersByPersonID
{
  v2 = _subscriberByID;
  v3 = _subscriberByID;
  v4 = _subscriberByID;
  _subscriberByID = 0;

  return v2;
}

+ (id)subscriberForPersonID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = _subscriberByID;
    if (!_subscriberByID)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = _subscriberByID;
      _subscriberByID = v5;

      v4 = _subscriberByID;
    }

    v7 = [v4 objectForKey:dCopy];
    if (!v7)
    {
      v8 = [MSSubscriber alloc];
      v9 = MSPlatform();
      v10 = [v9 baseURLForPersonID:dCopy];
      v7 = [(MSSubscriber *)v8 initWithPersonID:dCopy baseURL:v10];

      [_subscriberByID setObject:v7 forKey:dCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end