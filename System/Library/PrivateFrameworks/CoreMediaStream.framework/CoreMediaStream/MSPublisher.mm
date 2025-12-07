@interface MSPublisher
+ (BOOL)isInRetryState;
+ (id)_clearInstantiatedPublishersByPersonID;
+ (id)nextActivityDate;
+ (id)nextActivityDateForPersonID:(id)d;
+ (id)personIDsWithOutstandingActivities;
+ (id)publisherForPersonID:(id)d;
+ (void)_setMasterNextActivityDate:(id)date forPersonID:(id)d;
+ (void)forgetPersonID:(id)d;
+ (void)stopAllActivities;
- (BOOL)_isAllowedToUpload;
- (BOOL)_verifyAssetFile:(id)file;
- (BOOL)dequeueAssetCollectionWithGUIDs:(id)ds outError:(id *)error;
- (BOOL)enqueueAssetCollections:(id)collections outError:(id *)error;
- (MSPublisher)initWithPersonID:(id)d baseURL:(id)l;
- (id)_abortedError;
- (id)_checkAssetCollectionFiles:(id)files;
- (id)_checkObjectWrappers:(id)wrappers;
- (id)_collectionWithNoDerivatives:(id)derivatives;
- (id)_invalidStreamsResponseErrorUnderlyingError:(id)error;
- (int)_stop;
- (int)publishStorageProtocol:(id)protocol didRequestFDForAsset:(id)asset;
- (void)_abort;
- (void)_addAssetToFileHashMap:(id)map;
- (void)_categorizeError:(id)error setOutIsIgnorable:(BOOL *)ignorable setOutIsCounted:(BOOL *)counted setOutIsFatal:(BOOL *)fatal setOutNeedsBackoff:(BOOL *)backoff setOutIsTemporary:(BOOL *)temporary setOutIsTokenAuth:(BOOL *)auth setOutIsAuthError:(BOOL *)self0;
- (void)_didFinishUsingAssetCollections:(id)collections;
- (void)_forget;
- (void)_quarantineOrDiscardWrappers:(id)wrappers withError:(id)error;
- (void)_refreshServerSideConfiguredParameters;
- (void)_registerAllAssetsForWrapper:(id)wrapper;
- (void)_registerAsset:(id)asset;
- (void)_removeAssetFromFileHashMap:(id)map;
- (void)_removeAssetsInAssetCollectionWrappersFromAssetMap:(id)map;
- (void)_requestDerivatives;
- (void)_sendFilesToMMCS;
- (void)_sendMetadataToStreams;
- (void)_sendUploadComplete;
- (void)_serverSideConfigurationDidChange:(id)change;
- (void)_updateMasterManifest;
- (void)deactivate;
- (void)dealloc;
- (void)publish;
- (void)publishStorageProtocol:(id)protocol didFinishUploadingAsset:(id)asset error:(id)error;
- (void)publishStorageProtocol:(id)protocol didFinishUsingFD:(int)d forAsset:(id)asset;
- (void)publishStorageProtocolDidFinishPublishingAllAssets:(id)assets;
- (void)publishStreamsProtocol:(id)protocol didFinishSendingUploadCompleteError:(id)error;
- (void)publishStreamsProtocol:(id)protocol didFinishUploadingMetadataResponse:(id)response error:(id)error;
- (void)publishStreamsProtocol:(id)protocol didReceiveAuthenticationError:(id)error;
- (void)reenqueueQuarantinedAssetCollections;
- (void)submitAssetCollectionsForPublication:(id)publication skipAssetCollections:(id)collections;
@end

@implementation MSPublisher

- (void)_forget
{
  uploadQueue = self->_uploadQueue;
  self->_uploadQueue = 0;

  storageProtocol = self->_storageProtocol;
  self->_storageProtocol = 0;
}

- (void)_abort
{
  [(MSPublisher *)self _stop];
  _abortedError = [(MSPublisher *)self _abortedError];
  v3 = [(MSObjectQueue *)self->_uploadQueue allObjectWrappersMaxCount:5];
  if ([v3 count])
  {
    do
    {
      v4 = objc_autoreleasePoolPush();
      if (objc_opt_respondsToSelector())
      {
        delegate = self->_delegate;
        v6 = [MSObjectWrapper objectsFromWrappers:v3];
        [(MSPublisherDelegate *)delegate publisher:self didEncounterError:_abortedError publishingAssetCollections:v6];
      }

      [(MSObjectQueue *)self->_uploadQueue removeObjectWrappersFromQueue:v3];
      v7 = [(MSObjectQueue *)self->_uploadQueue allObjectWrappersMaxCount:5];

      objc_autoreleasePoolPop(v4);
      v3 = v7;
    }

    while ([v7 count]);
  }

  else
  {
    v7 = v3;
  }

  v8 = [(MSObjectQueue *)self->_quarantinedQueue allObjectWrappersMaxCount:5];

  if ([v8 count])
  {
    do
    {
      v9 = objc_autoreleasePoolPush();
      if (objc_opt_respondsToSelector())
      {
        v10 = self->_delegate;
        v11 = [MSObjectWrapper objectsFromWrappers:v8];
        [(MSPublisherDelegate *)v10 publisher:self didEncounterError:_abortedError publishingAssetCollections:v11];
      }

      [(MSObjectQueue *)self->_quarantinedQueue removeObjectWrappersFromQueue:v8];
      v12 = [(MSObjectQueue *)self->_quarantinedQueue allObjectWrappersMaxCount:5];

      objc_autoreleasePoolPop(v9);
      v8 = v12;
    }

    while ([v12 count]);
  }

  else
  {
    v12 = v8;
  }

  [(MSPublisher *)self _updateMasterManifest];
}

- (id)_abortedError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_ABORTED");
  v4 = [v2 MSErrorWithDomain:@"MSPublisherErrorDomain" code:7 description:v3];

  return v4;
}

- (int)_stop
{
  state = self->_state;
  if (state == 6 || state == 12)
  {
    v5 = &OBJC_IVAR___MSPublisher__protocol;
  }

  else
  {
    if (state != 9)
    {
      goto LABEL_10;
    }

    v5 = &OBJC_IVAR___MSPublisher__storageProtocol;
  }

  [*(&self->super.super.isa + *v5) abort];
  state = self->_state;
LABEL_10:
  v6 = state > 0xC;
  v7 = (1 << state) & 0x1B6C;
  if (!v6 && v7 != 0)
  {
    [(MSDaemon *)self->_daemon releaseBusy];
  }

  [(NSMutableArray *)self->_requestAuthQueue removeAllObjects];
  [(NSMutableArray *)self->_sendingQueue removeAllObjects];
  [(NSMutableDictionary *)self->_fileHashToAssetMap removeAllObjects];
  result = self->_state;
  self->_state = 0;
  return result;
}

- (void)publishStreamsProtocol:(id)protocol didFinishSendingUploadCompleteError:(id)error
{
  v51 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  errorCopy = error;
  v8 = errorCopy;
  state = self->_state;
  if (state == 12)
  {
    v10 = 0x27EE36000uLL;
    if (errorCopy)
    {
      if ([errorCopy MSIsTemporaryNetworkError])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v11 = objc_opt_class();
          v12 = v11;
          personID = [(MSCupidStateMachine *)self personID];
          *buf = 138543618;
          *v44 = v11;
          *&v44[8] = 2112;
          v45 = personID;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Encountered temporary error. Will try again later...", buf, 0x16u);
        }

        self->_state = 10;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v27 = objc_opt_class();
          v28 = v27;
          personID2 = [(MSCupidStateMachine *)self personID];
          mSVerboseDescription = [v8 MSVerboseDescription];
          *buf = 138543874;
          *v44 = v27;
          *&v44[8] = 2112;
          v45 = personID2;
          v46 = 2114;
          v47 = mSVerboseDescription;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Error sending upload complete: %{public}@", buf, 0x20u);

          v10 = 0x27EE36000uLL;
        }

        if ([v8 MSNeedsBackoff])
        {
          [(MSCupidStateMachine *)self _backoffStreamsBackoffTimer];
        }

        if ([v8 MSIsCounted])
        {
          v36 = protocolCopy;
          v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_sendingQueue, "count")}];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v21 = self->_sendingQueue;
          v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v39 objects:v50 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v40;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v40 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v39 + 1) + 8 * i);
                [v26 setErrorCount:{objc_msgSend(v26, "errorCount") + 1}];
                if ([v26 errorCount] >= self->_maxErrorCount)
                {
                  [v20 addObject:v26];
                }
              }

              v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v39 objects:v50 count:16];
            }

            while (v23);
          }

          [(MSObjectQueue *)self->_uploadQueue commitErrorCountsForObjectWrappers:self->_sendingQueue];
          protocolCopy = v36;
          v10 = 0x27EE36000uLL;
          if ([v20 count])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v31 = objc_opt_class();
              v35 = v31;
              personID3 = [(MSCupidStateMachine *)self personID];
              v34 = [v20 count];
              mSVerboseDescription2 = [v8 MSVerboseDescription];
              *buf = 138544130;
              *v44 = v31;
              *&v44[8] = 2112;
              v45 = personID3;
              v46 = 2048;
              v47 = v34;
              v48 = 2114;
              v49 = mSVerboseDescription2;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Failed to send upload complete for %lu asset collections. Error: %{public}@", buf, 0x2Au);

              v10 = 0x27EE36000;
            }

            [(MSObjectQueue *)self->_uploadQueue removeObjectWrappersFromQueue:v20];
            [(MSPublisher *)self _updateMasterManifest];
            [(MSPublisher *)self _quarantineOrDiscardWrappers:v20 withError:v8];
          }
        }

        [(NSMutableArray *)self->_sendingQueue removeAllObjects];
        self->_state = 4;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __74__MSPublisher_publishStreamsProtocol_didFinishSendingUploadCompleteError___block_invoke;
        v38[3] = &unk_278E926D8;
        v38[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], v38);
      }
    }

    else
    {
      daemon = self->_daemon;
      personID4 = [(MSCupidStateMachine *)self personID];
      [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:personID4];

      [(MSCupidStateMachine *)self _resetStreamsBackoffTimer];
      v16 = [MSObjectWrapper objectsFromWrappers:self->_sendingQueue];
      if (objc_opt_respondsToSelector())
      {
        [(MSPublisherDelegate *)self->_delegate publisher:self didFinishPublishingAssetCollections:v16];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = v17;
        personID5 = [(MSCupidStateMachine *)self personID];
        *buf = 138543618;
        *v44 = v17;
        *&v44[8] = 2112;
        v45 = personID5;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Finished sending upload complete.", buf, 0x16u);

        v10 = 0x27EE36000uLL;
      }

      [(MSPublisher *)self _didFinishUsingAssetCollections:v16];
      [(MSObjectQueue *)self->_uploadQueue removeObjectWrappersFromQueue:self->_sendingQueue];
      [(MSPublisher *)self _updateMasterManifest];
      [(NSMutableArray *)self->_sendingQueue removeAllObjects];
      self->_state = 4;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__MSPublisher_publishStreamsProtocol_didFinishSendingUploadCompleteError___block_invoke_115;
      block[3] = &unk_278E926D8;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    [*(&self->super.super.isa + *(v10 + 132)) releaseBusy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *v44 = 12;
    *&v44[4] = 1024;
    *&v44[6] = state;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Wrong state detected. Expected %d, actually %d. Not serving message.", buf, 0xEu);
  }
}

- (void)_sendUploadComplete
{
  self->_state = 12;
  protocol = self->_protocol;
  v3 = [MSObjectWrapper objectsFromWrappers:self->_sendingQueue];
  [(MSPublishStreamsProtocol *)protocol sendUploadCompleteForAssetCollections:v3];
}

- (void)publishStorageProtocolDidFinishPublishingAllAssets:(id)assets
{
  v156 = *MEMORY[0x277D85DE8];
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  obj = self->_sendingQueue;
  v107 = [(NSMutableArray *)obj countByEnumeratingWithState:&v134 objects:v155 count:16];
  v4 = 0;
  error2 = 0;
  if (v107)
  {
    v105 = *v135;
    do
    {
      v6 = 0;
      do
      {
        if (*v135 != v105)
        {
          objc_enumerationMutation(obj);
        }

        object = [*(*(&v134 + 1) + 8 * v6) object];
        masterAsset = [object masterAsset];
        error = [masterAsset error];

        [(MSPublisher *)self _categorizeError:error setOutIsIgnorable:&v140 + 1 setOutIsCounted:&v140 setOutIsFatal:&v139 + 1 setOutNeedsBackoff:&v139 setOutIsTemporary:&v138 + 1 setOutIsTokenAuth:0 setOutIsAuthError:&v138];
        mSMMCSRetryAfterDate = [error MSMMCSRetryAfterDate];
        if (mSMMCSRetryAfterDate)
        {
          [(MSCupidStateMachine *)self _didReceiveMMCSRetryAfterDate:mSMMCSRetryAfterDate];
        }

        v109 = mSMMCSRetryAfterDate;
        v112 = object;
        v114 = v6;
        v4 |= error != 0;
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        derivedAssets = [object derivedAssets];
        v12 = [derivedAssets countByEnumeratingWithState:&v130 objects:v154 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v131;
          error2 = error;
          do
          {
            v15 = 0;
            v16 = error2;
            do
            {
              if (*v131 != v14)
              {
                objc_enumerationMutation(derivedAssets);
              }

              error2 = [*(*(&v130 + 1) + 8 * v15) error];

              [(MSPublisher *)self _categorizeError:error2 setOutIsIgnorable:&v140 + 1 setOutIsCounted:&v140 setOutIsFatal:&v139 + 1 setOutNeedsBackoff:&v139 setOutIsTemporary:&v138 + 1 setOutIsTokenAuth:0 setOutIsAuthError:&v138];
              mSMMCSRetryAfterDate2 = [error2 MSMMCSRetryAfterDate];
              if (mSMMCSRetryAfterDate2)
              {
                [(MSCupidStateMachine *)self _didReceiveMMCSRetryAfterDate:mSMMCSRetryAfterDate2];
              }

              v4 |= error2 != 0;

              ++v15;
              v16 = error2;
            }

            while (v13 != v15);
            v13 = [derivedAssets countByEnumeratingWithState:&v130 objects:v154 count:16];
          }

          while (v13);
        }

        else
        {
          error2 = error;
        }

        v6 = v114 + 1;
      }

      while (v114 + 1 != v107);
      v107 = [(NSMutableArray *)obj countByEnumeratingWithState:&v134 objects:v155 count:16];
    }

    while (v107);
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v18 = self->_tempFiles;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v126 objects:v153 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v127;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v127 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v126 + 1) + 8 * i);
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager removeItemAtPath:v23 error:0];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v126 objects:v153 count:16];
    }

    while (v20);
  }

  [(NSMutableArray *)self->_tempFiles removeAllObjects];
  [(NSMutableDictionary *)self->_fileHashToAssetMap removeAllObjects];
  v25 = [(NSMutableArray *)self->_sendingQueue count];
  sendingQueueCount = self->_sendingQueueCount;
  if (v25 == sendingQueueCount)
  {
    if ((v4 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v68 = objc_opt_class();
        v69 = v68;
        personID = [(MSCupidStateMachine *)self personID];
        v71 = [(NSMutableArray *)self->_sendingQueue count];
        *buf = 138543874;
        v143 = v68;
        v144 = 2112;
        v145 = personID;
        v146 = 2048;
        v147 = v71;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Successfully uploaded %lu asset collections.", buf, 0x20u);
      }

      daemon = self->_daemon;
      personID2 = [(MSCupidStateMachine *)self personID];
      [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:personID2];

      [(MSCupidStateMachine *)self _resetMMCSBackoffTimer];
      self->_state = 10;
      [(MSDaemon *)self->_daemon releaseBusy];
      goto LABEL_91;
    }

    if ((v140 & 0x100) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v27 = objc_opt_class();
        v28 = v27;
        personID3 = [(MSCupidStateMachine *)self personID];
        v30 = [(NSMutableArray *)self->_sendingQueue count];
        *buf = 138543874;
        v143 = v27;
        v144 = 2112;
        v145 = personID3;
        v146 = 2048;
        v147 = v30;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Ignoring errors for %lu asset collections.", buf, 0x20u);
      }

      goto LABEL_92;
    }

    if ((v138 & 0x100) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v99 = objc_opt_class();
        v100 = v99;
        personID4 = [(MSCupidStateMachine *)self personID];
        *buf = 138543618;
        v143 = v99;
        v144 = 2112;
        v145 = personID4;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Encountered temporary network issues during upload. Will try again later...", buf, 0x16u);
      }

      self->_state = 7;
      [(MSDaemon *)self->_daemon releaseBusy];
      goto LABEL_92;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v74 = objc_opt_class();
      v75 = v74;
      personID5 = [(MSCupidStateMachine *)self personID];
      v77 = self->_sendingQueueCount;
      v78 = [(NSMutableArray *)self->_sendingQueue count];
      *buf = 138544130;
      v143 = v74;
      v144 = 2112;
      v145 = personID5;
      v146 = 2048;
      v147 = v77;
      v148 = 2048;
      v149 = v78;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Found mismatch between expecting sending queue count and actual count. Expected %lu, actually %lu.", buf, 0x2Au);
    }

    v31 = MEMORY[0x277CCA9B8];
    v32 = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_SEND_QUEUE_MISMATCH");
    v33 = [v31 MSErrorWithDomain:@"MSPublisherErrorDomain" code:8 description:v32];

    v138 = 0;
    LOBYTE(v139) = 0;
    error2 = v33;
    v140 = 1;
  }

  if (v138 != 1)
  {
    if (v139 == 1)
    {
      [(MSCupidStateMachine *)self _backoffMMCSBackoffTimer];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v83 = objc_opt_class();
      v84 = v83;
      personID6 = [(MSCupidStateMachine *)self personID];
      v86 = [(NSMutableArray *)self->_sendingQueue count];
      *buf = 138543874;
      v143 = v83;
      v144 = 2112;
      v145 = personID6;
      v146 = 2048;
      v147 = v86;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Error uploading %lu asset collections.", buf, 0x20u);
    }

    if (v140 != 1)
    {
LABEL_80:
      self->_state = 4;
      [(NSMutableArray *)self->_sendingQueue removeAllObjects];
      v36 = 0;
      goto LABEL_81;
    }

    v102 = sendingQueueCount;
    v103 = v25;
    v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_sendingQueue, "count")}];
    v113 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_sendingQueue, "count")}];
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v115 = self->_sendingQueue;
    v38 = [(NSMutableArray *)v115 countByEnumeratingWithState:&v122 objects:v152 count:16];
    v106 = v37;
    if (!v38)
    {
      goto LABEL_62;
    }

    v39 = v38;
    v40 = *v123;
LABEL_47:
    v41 = 0;
    while (1)
    {
      if (*v123 != v40)
      {
        objc_enumerationMutation(v115);
      }

      v42 = *(*(&v122 + 1) + 8 * v41);
      object2 = [v42 object];
      masterAsset2 = [object2 masterAsset];
      error3 = [masterAsset2 error];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v48 = objc_opt_class();
        v110 = v48;
        personID7 = [(MSCupidStateMachine *)self personID];
        domain = [error3 domain];
        code = [error3 code];
        *buf = 138544386;
        v143 = v48;
        v144 = 2112;
        v145 = personID7;
        v51 = personID7;
        v146 = 2114;
        v147 = object2;
        v148 = 2114;
        v149 = domain;
        v150 = 2048;
        v151 = code;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ error uploading %{public}@: %{public}@ %ld.", buf, 0x34u);

        v37 = v106;
      }

      if (HIBYTE(v139) == 1)
      {
        break;
      }

      [v42 setErrorCount:{objc_msgSend(v42, "errorCount") + 1}];
      errorCount = [v42 errorCount];
      v46 = v37;
      if (errorCount >= self->_maxErrorCount)
      {
        goto LABEL_59;
      }

      if ([error3 MSIsRegistrationError])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v52 = objc_opt_class();
          v111 = v52;
          personID8 = [(MSCupidStateMachine *)self personID];
          *buf = 138543874;
          v143 = v52;
          v144 = 2112;
          v145 = personID8;
          v146 = 2114;
          v147 = object2;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ needs to re-register %{public}@.", buf, 0x20u);

          v37 = v106;
        }

        [(MSPublisher *)self _registerAllAssetsForWrapper:v42];
        v46 = v113;
        goto LABEL_59;
      }

LABEL_60:

      if (v39 == ++v41)
      {
        v39 = [(NSMutableArray *)v115 countByEnumeratingWithState:&v122 objects:v152 count:16];
        if (!v39)
        {
LABEL_62:

          v54 = v113;
          if ([v113 count])
          {
            [(MSObjectQueue *)self->_uploadQueue commitObjectsWrappers:v113];
          }

          [(MSObjectQueue *)self->_uploadQueue commitErrorCountsForObjectWrappers:self->_sendingQueue];
          if ([v37 count])
          {
            [(MSObjectQueue *)self->_uploadQueue removeObjectWrappersFromQueue:v37];
            [(MSPublisher *)self _updateMasterManifest];
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v116 = v37;
            v55 = [v116 countByEnumeratingWithState:&v118 objects:v141 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v119;
              do
              {
                for (j = 0; j != v56; ++j)
                {
                  if (*v119 != v57)
                  {
                    objc_enumerationMutation(v116);
                  }

                  v59 = *(*(&v118 + 1) + 8 * j);
                  object3 = [v59 object];
                  masterAsset3 = [object3 masterAsset];
                  error4 = [masterAsset3 error];

                  v63 = [MEMORY[0x277CBEA60] arrayWithObject:v59];
                  [(MSPublisher *)self _quarantineOrDiscardWrappers:v63 withError:error4];
                }

                v56 = [v116 countByEnumeratingWithState:&v118 objects:v141 count:16];
              }

              while (v56);
            }

            v37 = v106;
            v54 = v113;
          }

          if ([v37 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v90 = objc_opt_class();
            v91 = v90;
            personID9 = [(MSCupidStateMachine *)self personID];
            v93 = [v37 count];
            *buf = 138543874;
            v143 = v90;
            v144 = 2112;
            v145 = personID9;
            v146 = 2048;
            v147 = v93;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Gave up uploading %lu asset collections.", buf, 0x20u);
          }

          v64 = [(NSMutableArray *)self->_sendingQueue count];
          sendingQueueCount = v102;
          v25 = v103;
          if (v64 != [v37 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v94 = objc_opt_class();
            v95 = v94;
            personID10 = [(MSCupidStateMachine *)self personID];
            v97 = [(NSMutableArray *)self->_sendingQueue count];
            v98 = v97 - [v106 count];
            v37 = v106;
            *buf = 138543874;
            v143 = v94;
            v144 = 2112;
            v145 = personID10;
            v146 = 2048;
            v147 = v98;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Will retry uploading %ld asset collections.", buf, 0x20u);
          }

          goto LABEL_80;
        }

        goto LABEL_47;
      }
    }

    [v42 setErrorCount:self->_maxErrorCount];
    v46 = v37;
LABEL_59:
    [v46 addObject:v42];
    goto LABEL_60;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v79 = objc_opt_class();
    v80 = v79;
    personID11 = [(MSCupidStateMachine *)self personID];
    v82 = [(NSMutableArray *)self->_sendingQueue count];
    *buf = 138543874;
    v143 = v79;
    v144 = 2112;
    v145 = personID11;
    v146 = 2048;
    v147 = v82;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Received auth error. Resending metadata for %lu asset collections.", buf, 0x20u);
  }

  [(NSMutableArray *)self->_sendingQueue removeAllObjects];
  self->_state = 4;
  v34 = self->_daemon;
  personID12 = [(MSCupidStateMachine *)self personID];
  [(MSMediaStreamDaemon *)v34 didReceiveAuthenticationFailureForPersonID:personID12];

  v36 = 1;
LABEL_81:
  if (v25 != sendingQueueCount)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v87 = objc_opt_class();
      v88 = v87;
      personID13 = [(MSCupidStateMachine *)self personID];
      *buf = 138543618;
      v143 = v87;
      v144 = 2112;
      v145 = personID13;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Detected an inconsistent state.", buf, 0x16u);
    }

    v65 = MSPlatform();
    v66 = objc_opt_respondsToSelector();

    if (v66)
    {
      v67 = MSPlatform();
      [v67 didDetectUnrecoverableCondition];
    }
  }

  [(MSDaemon *)self->_daemon releaseBusy];
  if ((v36 & 1) == 0)
  {
LABEL_91:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__MSPublisher_publishStorageProtocolDidFinishPublishingAllAssets___block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

LABEL_92:
}

- (void)_categorizeError:(id)error setOutIsIgnorable:(BOOL *)ignorable setOutIsCounted:(BOOL *)counted setOutIsFatal:(BOOL *)fatal setOutNeedsBackoff:(BOOL *)backoff setOutIsTemporary:(BOOL *)temporary setOutIsTokenAuth:(BOOL *)auth setOutIsAuthError:(BOOL *)self0
{
  errorCopy = error;
  if (errorCopy)
  {
    temporaryCopy = temporary;
    v30 = errorCopy;
    mSCanBeIgnored = [errorCopy MSCanBeIgnored];
    mSIsCounted = [v30 MSIsCounted];
    mSIsFatal = [v30 MSIsFatal];
    mSNeedsBackoff = [v30 MSNeedsBackoff];
    mSIsTemporaryNetworkError = [v30 MSIsTemporaryNetworkError];
    mSIsBadTokenError = [v30 MSIsBadTokenError];
    mSIsAuthError = [v30 MSIsAuthError];
    if (ignorable && mSCanBeIgnored)
    {
      *ignorable = 1;
    }

    v23 = mSIsCounted ^ 1;
    if (!counted)
    {
      v23 = 1;
    }

    if ((v23 & 1) == 0)
    {
      *counted = 1;
    }

    v24 = mSIsFatal ^ 1;
    if (!fatal)
    {
      v24 = 1;
    }

    if ((v24 & 1) == 0)
    {
      *fatal = 1;
    }

    v25 = mSNeedsBackoff ^ 1;
    if (!backoff)
    {
      v25 = 1;
    }

    if ((v25 & 1) == 0)
    {
      *backoff = 1;
    }

    v26 = mSIsTemporaryNetworkError ^ 1;
    if (!temporaryCopy)
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      *temporaryCopy = 1;
    }

    v27 = mSIsBadTokenError ^ 1;
    if (!auth)
    {
      v27 = 1;
    }

    if ((v27 & 1) == 0)
    {
      *auth = 1;
    }

    v28 = mSIsAuthError ^ 1;
    if (!authError)
    {
      v28 = 1;
    }

    errorCopy = v30;
    if ((v28 & 1) == 0)
    {
      *authError = 1;
    }
  }
}

- (void)publishStorageProtocol:(id)protocol didFinishUsingFD:(int)d forAsset:(id)asset
{
  v6 = *&d;
  v22 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  assetCopy = asset;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = v11;
    personID = [(MSCupidStateMachine *)self personID];
    v14 = 138544130;
    v15 = v11;
    v16 = 2112;
    v17 = personID;
    v18 = 1024;
    v19 = v6;
    v20 = 2114;
    v21 = assetCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Closing FD %d for asset %{public}@", &v14, 0x26u);
  }

  fileData = [assetCopy fileData];

  if (fileData || (objc_opt_respondsToSelector() & 1) == 0)
  {
    close(v6);
  }

  else
  {
    [(MSPublisherDelegate *)self->_delegate publisher:self didRequestCloseFileDescriptor:v6 forAsset:assetCopy];
  }
}

- (int)publishStorageProtocol:(id)protocol didRequestFDForAsset:(id)asset
{
  v41 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  assetCopy = asset;
  fileData = [assetCopy fileData];

  if (fileData)
  {
    fileData2 = [assetCopy fileData];
    v34 = 0;
    v10 = [MEMORY[0x277CCACA8] MSTempFileOutFileName:&v34];
    v11 = v34;
    if (v10 == -1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = v14;
        personID = [(MSCupidStateMachine *)self personID];
        *buf = 138543618;
        v36 = v14;
        v37 = 2112;
        v38 = personID;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Failed to create temp file.", buf, 0x16u);
      }
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v10 closeOnDealloc:0];
      v13 = v12;
      if (v12)
      {
        [v12 writeData:fileData2];
        [(NSMutableArray *)self->_tempFiles addObject:v11];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = v23;
        personID2 = [(MSCupidStateMachine *)self personID];
        *buf = 138543874;
        v36 = v23;
        v37 = 2112;
        v38 = personID2;
        v39 = 2112;
        v40 = v11;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Failed to write temp file at path %@.", buf, 0x20u);
      }
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    LODWORD(v10) = [(MSPublisherDelegate *)self->_delegate publisher:self didRequestOpenFileDescriptorForAsset:assetCopy];
  }

  else
  {
    path = [assetCopy path];

    if (path)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v27 = objc_opt_class();
        v28 = v27;
        personID3 = [(MSCupidStateMachine *)self personID];
        path2 = [assetCopy path];
        *buf = 138543874;
        v36 = v27;
        v37 = 2112;
        v38 = personID3;
        v39 = 2112;
        v40 = path2;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Opening asset file at path %@...", buf, 0x20u);
      }

      path3 = [assetCopy path];
      v19 = path3;
      LODWORD(v10) = open([path3 fileSystemRepresentation], 0);

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        v21 = v20;
        personID4 = [(MSCupidStateMachine *)self personID];
        *buf = 138543874;
        v36 = v20;
        v37 = 2112;
        v38 = personID4;
        v39 = 1024;
        LODWORD(v40) = v10;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ ... got FD %d.", buf, 0x1Cu);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = v31;
        personID5 = [(MSCupidStateMachine *)self personID];
        *buf = 138543874;
        v36 = v31;
        v37 = 2112;
        v38 = personID5;
        v39 = 2114;
        v40 = assetCopy;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Cannot retrieve file descriptor for asset: %{public}@", buf, 0x20u);
      }

      LODWORD(v10) = -1;
    }
  }

  return v10;
}

- (void)publishStorageProtocol:(id)protocol didFinishUploadingAsset:(id)asset error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  assetCopy = asset;
  errorCopy = error;
  if (errorCopy)
  {
    [assetCopy setError:errorCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    [(MSPublisherDelegate *)self->_delegate publisher:self didRequestCloseFileDescriptor:0xFFFFFFFFLL forAsset:assetCopy];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = v11;
    personID = [(MSCupidStateMachine *)self personID];
    mSVerboseDescription = [errorCopy MSVerboseDescription];
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = personID;
    v19 = 2114;
    v20 = mSVerboseDescription;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Finished uploading asset. Error: %{public}@", &v15, 0x20u);
  }
}

- (void)_sendFilesToMMCS
{
  v51 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = v3;
    personID = [(MSCupidStateMachine *)self personID];
    v6 = [(NSMutableArray *)self->_sendingQueue count];
    *buf = 138543874;
    *v47 = v3;
    *&v47[8] = 2112;
    v48 = personID;
    v49 = 2048;
    v50 = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ uploading %ld assets...", buf, 0x20u);
  }

  state = self->_state;
  if (state == 8)
  {
    if (objc_opt_respondsToSelector())
    {
      delegate = self->_delegate;
      v9 = [MSObjectWrapper objectsFromWrappers:self->_sendingQueue];
      [(MSPublisherDelegate *)delegate publisher:self willPublishAssetCollections:v9];
    }

    self->_sendingQueueCount = [(NSMutableArray *)self->_sendingQueue count];
    [(NSMutableDictionary *)self->_fileHashToAssetMap removeAllObjects];
    array = [MEMORY[0x277CBEB18] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = self->_sendingQueue;
    v32 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v32)
    {
      v31 = *v41;
      do
      {
        v11 = 0;
        do
        {
          if (*v41 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v35 = v11;
          object = [*(*(&v40 + 1) + 8 * v11) object];
          masterAsset = [object masterAsset];
          mSMakeUUID = [MEMORY[0x277CCACA8] MSMakeUUID];
          [masterAsset addMetadataValue:mSMakeUUID forKey:@"MSAssetMetadataAssetFileTransferUUID"];

          [array addObject:masterAsset];
          v33 = masterAsset;
          [(MSPublisher *)self _addAssetToFileHashMap:masterAsset];
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = object;
          derivedAssets = [object derivedAssets];
          v16 = [derivedAssets countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v37;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v37 != v18)
                {
                  objc_enumerationMutation(derivedAssets);
                }

                v20 = *(*(&v36 + 1) + 8 * i);
                mSMakeUUID2 = [MEMORY[0x277CCACA8] MSMakeUUID];
                [v20 addMetadataValue:mSMakeUUID2 forKey:@"MSAssetMetadataAssetFileTransferUUID"];

                [array addObject:v20];
                [(MSPublisher *)self _addAssetToFileHashMap:v20];
              }

              v17 = [derivedAssets countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v17);
          }

          v11 = v35 + 1;
        }

        while (v35 + 1 != v32);
        v32 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v32);
    }

    self->_state = 9;
    v22 = MSPlatform();
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v24 = MSPlatform();
      personID2 = [(MSCupidStateMachine *)self personID];
      v26 = [v24 contentURLForPersonID:personID2];

      if (v26)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v27 = objc_opt_class();
          v28 = v27;
          personID3 = [(MSCupidStateMachine *)self personID];
          *buf = 138543874;
          *v47 = v27;
          *&v47[8] = 2112;
          v48 = personID3;
          v49 = 2114;
          v50 = v26;
          _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Using contentURL %{public}@ from MSPlatform for upload.", buf, 0x20u);
        }

        goto LABEL_29;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to get contentURL from MSPlatform. Using URL from metadata for upload", buf, 2u);
      }
    }

    v26 = self->_storageProtocolURL;
LABEL_29:
    [(MSPublishStorageProtocol *)self->_storageProtocol publishAssets:array URL:v26];

    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *v47 = 8;
    *&v47[4] = 1024;
    *&v47[6] = state;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Wrong state detected. Expected %d, actually %d. Not serving message.", buf, 0xEu);
  }
}

- (void)publishStreamsProtocol:(id)protocol didReceiveAuthenticationError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = v7;
    personID = [(MSCupidStateMachine *)self personID];
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = personID;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Found authentication error. Will try again later...", &v10, 0x16u);
  }

  [(MSCupidStateMachine *)self _resetStreamsBackoffTimer];
  self->_state = 4;
  daemon = self->_daemon;
  personID2 = [(MSCupidStateMachine *)self personID];
  [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationFailureForPersonID:personID2];

  [(MSDaemon *)self->_daemon releaseBusy];
}

- (void)publishStreamsProtocol:(id)protocol didFinishUploadingMetadataResponse:(id)response error:(id)error
{
  v208 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  responseCopy = response;
  errorCopy = error;
  state = self->_state;
  if (state != 6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v204 = 6;
      *&v204[4] = 1024;
      *&v204[6] = state;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Wrong state detected. Expected %d, actually %d. Not serving message.", buf, 0xEu);
    }

    goto LABEL_150;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v59 = objc_opt_class();
    v60 = v59;
    personID = [(MSCupidStateMachine *)self personID];
    *buf = 138543874;
    *v204 = v59;
    *&v204[8] = 2112;
    v205 = personID;
    v206 = 2114;
    v207 = responseCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ received metadata upload response: %{public}@", buf, 0x20u);
  }

  selfCopy = self;
  if (errorCopy)
  {
    goto LABEL_55;
  }

  v12 = [responseCopy objectForKey:@"assets"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v58 = MEMORY[0x277CCA9B8];
    v30 = MSCFCopyLocalizedString(@"ERROR_PUT_CONNECTION_INVALID_ASSET_HASH");
    array = [v58 MSErrorWithDomain:@"MSStreamsPutConnectionErrorDomain" code:3 description:v30];
    errorCopy = [(MSPublisher *)self _invalidStreamsResponseErrorUnderlyingError:array];
    goto LABEL_54;
  }

  v142 = v12;
  v137 = responseCopy;
  v139 = protocolCopy;
  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v190 objects:v202 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v191;
    v17 = MEMORY[0x277D86220];
    v146 = v13;
    v144 = *v191;
    do
    {
      v18 = 0;
      v149 = v15;
      do
      {
        if (*v191 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v152 = v18;
        v19 = *(*(&v190 + 1) + 8 * v18);
        v20 = [v13 objectForKey:v19];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          fileHashToAssetMap = selfCopy->_fileHashToAssetMap;
          mSHexData = [v19 MSHexData];
          v23 = [(NSMutableDictionary *)fileHashToAssetMap objectForKey:mSHexData];

          v188 = 0u;
          v189 = 0u;
          v186 = 0u;
          v187 = 0u;
          v24 = v23;
          v25 = [v24 countByEnumeratingWithState:&v186 objects:v201 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v187;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v187 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v186 + 1) + 8 * i);
                [v29 setMMCSAccessHeader:v20];
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  *v204 = v29;
                  _os_log_debug_impl(&dword_245B99000, v17, OS_LOG_TYPE_DEBUG, "Setting MMCS header in asset %{public}@", buf, 0xCu);
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v186 objects:v201 count:16];
            }

            while (v26);
          }

          v13 = v146;
          v15 = v149;
          v16 = v144;
        }

        v18 = v152 + 1;
      }

      while (v152 + 1 != v15);
      v15 = [v13 countByEnumeratingWithState:&v190 objects:v202 count:16];
    }

    while (v15);
  }

  responseCopy = v137;
  v30 = [v137 objectForKey:@"mmcsurl"];
  self = selfCopy;
  if (v30)
  {
    v31 = [MEMORY[0x277CBEBC0] URLWithString:v30];
    if (!v31)
    {
      v62 = MEMORY[0x277CCA9B8];
      v150 = MSCFCopyLocalizedString(@"ERROR_PUT_CONNECTION_INVALID_STORAGE_URL");
      v53 = [v62 MSErrorWithDomain:@"MSStreamsPutConnectionErrorDomain" code:4 description:?];
      errorCopy = [(MSPublisher *)selfCopy _invalidStreamsResponseErrorUnderlyingError:v53];
LABEL_53:

      v12 = v142;
      array = v150;
      goto LABEL_54;
    }

    v32 = v31;
    [(MSPublisher *)selfCopy setStorageProtocolURL:v31];
  }

  v147 = v30;
  array = [MEMORY[0x277CBEB18] array];
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  obj = selfCopy->_requestAuthQueue;
  v34 = [(NSMutableArray *)obj countByEnumeratingWithState:&v182 objects:v200 count:16];
  v150 = array;
  if (!v34)
  {
    goto LABEL_46;
  }

  v35 = v34;
  v36 = *v183;
  do
  {
    v37 = 0;
    v153 = v35;
    do
    {
      if (*v183 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(*(&v182 + 1) + 8 * v37);
      object = [v38 object];
      masterAsset = [object masterAsset];
      mMCSAccessHeader = [masterAsset MMCSAccessHeader];

      sendingQueue = array;
      if (mMCSAccessHeader)
      {
        derivedAssets = [object derivedAssets];
        v178 = 0u;
        v179 = 0u;
        v180 = 0u;
        v181 = 0u;
        v44 = [derivedAssets countByEnumeratingWithState:&v178 objects:v199 count:16];
        if (!v44)
        {

LABEL_43:
          sendingQueue = selfCopy->_sendingQueue;
          goto LABEL_44;
        }

        v45 = v44;
        v46 = v36;
        v47 = *v179;
        v48 = 1;
        do
        {
          for (j = 0; j != v45; ++j)
          {
            if (*v179 != v47)
            {
              objc_enumerationMutation(derivedAssets);
            }

            mMCSAccessHeader2 = [*(*(&v178 + 1) + 8 * j) MMCSAccessHeader];
            v51 = mMCSAccessHeader2 != 0;

            v48 &= v51;
          }

          v45 = [derivedAssets countByEnumeratingWithState:&v178 objects:v199 count:16];
        }

        while (v45);

        array = v150;
        sendingQueue = v150;
        v36 = v46;
        v35 = v153;
        if (v48)
        {
          goto LABEL_43;
        }
      }

LABEL_44:
      [sendingQueue addObject:v38];

      ++v37;
    }

    while (v37 != v35);
    v35 = [(NSMutableArray *)obj countByEnumeratingWithState:&v182 objects:v200 count:16];
  }

  while (v35);
LABEL_46:

  if ([(__CFString *)array count])
  {
    self = selfCopy;
    [(MSPublisher *)selfCopy _removeAssetsInAssetCollectionWrappersFromAssetMap:array];
    [MSObjectWrapper objectsFromWrappers:array];
    v53 = v52 = array;
    [(MSPublisher *)selfCopy _didFinishUsingAssetCollections:v53];
    delegate = selfCopy->_delegate;
    v55 = MEMORY[0x277CCA9B8];
    v56 = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_ASSET_REJECTED");
    v57 = [v55 MSErrorWithDomain:@"MSPublisherErrorDomain" code:1 description:v56];
    [(MSPublisherDelegate *)delegate publisher:selfCopy didEncounterError:v57 publishingAssetCollections:v53];

    [(MSObjectQueue *)selfCopy->_uploadQueue removeObjectWrappersFromQueue:v52];
    [(MSPublisher *)selfCopy _updateMasterManifest];
    errorCopy = 0;
    protocolCopy = v139;
    responseCopy = v137;
    v30 = v147;
    goto LABEL_53;
  }

  errorCopy = 0;
  protocolCopy = v139;
  responseCopy = v137;
  self = selfCopy;
  v30 = v147;
  v12 = v142;
LABEL_54:

  if (!errorCopy)
  {
    daemon = self->_daemon;
    personID2 = [(MSCupidStateMachine *)self personID];
    [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:personID2];

    [(MSCupidStateMachine *)self _resetStreamsBackoffTimer];
    [(MSPublisher *)self _removeAssetsInAssetCollectionWrappersFromAssetMap:self->_requestAuthQueue];
    if ([(NSMutableArray *)self->_sendingQueue count])
    {
      v77 = 7;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v129 = objc_opt_class();
        v130 = v129;
        personID3 = [(MSCupidStateMachine *)self personID];
        *buf = 138543618;
        *v204 = v129;
        *&v204[8] = 2112;
        v205 = personID3;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Nothing to upload.", buf, 0x16u);
      }

      v77 = 0;
    }

    self->_state = v77;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__MSPublisher_publishStreamsProtocol_didFinishUploadingMetadataResponse_error___block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    errorCopy = 0;
    goto LABEL_149;
  }

LABEL_55:
  if ([errorCopy MSIsTemporaryNetworkError])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v78 = objc_opt_class();
      v79 = v78;
      personID4 = [(MSCupidStateMachine *)self personID];
      *buf = 138543618;
      *v204 = v78;
      *&v204[8] = 2112;
      v205 = personID4;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Encountered network issues during upload. Will try again later...", buf, 0x16u);
    }

    self->_state = 4;
    goto LABEL_149;
  }

  v63 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_requestAuthQueue, "count")}];
  mSIsQuotaError = [errorCopy MSIsQuotaError];
  v65 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (!mSIsQuotaError)
  {
    if (v65)
    {
      v84 = objc_opt_class();
      v85 = v84;
      personID5 = [(MSCupidStateMachine *)self personID];
      mSVerboseDescription = [errorCopy MSVerboseDescription];
      *buf = 138543874;
      *v204 = v84;
      *&v204[8] = 2112;
      v205 = personID5;
      v206 = 2114;
      v207 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Error uploading metadata to Streams server: %{public}@", buf, 0x20u);
    }

    if ([errorCopy MSNeedsBackoff])
    {
      [(MSCupidStateMachine *)self _backoffStreamsBackoffTimer];
    }

    if ([errorCopy MSIsCounted])
    {
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v69 = self->_requestAuthQueue;
      v70 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v158 objects:v194 count:16];
      if (v70)
      {
        v71 = v70;
        v72 = *v159;
        do
        {
          for (k = 0; k != v71; ++k)
          {
            if (*v159 != v72)
            {
              objc_enumerationMutation(v69);
            }

            v74 = *(*(&v158 + 1) + 8 * k);
            [v74 setErrorCount:{objc_msgSend(v74, "errorCount") + 1}];
            if ([v74 errorCount] >= self->_maxErrorCount)
            {
              [v63 addObject:v74];
            }
          }

          v71 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v158 objects:v194 count:16];
        }

        while (v71);
      }

      [(MSObjectQueue *)self->_uploadQueue commitErrorCountsForObjectWrappers:self->_requestAuthQueue];
    }

    goto LABEL_141;
  }

  if (v65)
  {
    v81 = objc_opt_class();
    v82 = v81;
    personID6 = [(MSCupidStateMachine *)self personID];
    *buf = 138543618;
    *v204 = v81;
    *&v204[8] = 2112;
    v205 = personID6;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Received a quota error.", buf, 0x16u);
  }

  v136 = [responseCopy objectForKey:@"code"];
  if (!v136 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_128:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v123 = objc_opt_class();
      v124 = v123;
      personID7 = [(MSCupidStateMachine *)self personID];
      *buf = 138543618;
      *v204 = v123;
      *&v204[8] = 2112;
      v205 = personID7;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Could not parse the server's response.", buf, 0x16u);
    }

    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v112 = self->_requestAuthQueue;
    v113 = [(NSMutableArray *)v112 countByEnumeratingWithState:&v162 objects:v195 count:16];
    if (v113)
    {
      v114 = v113;
      v115 = *v163;
      do
      {
        for (m = 0; m != v114; ++m)
        {
          if (*v163 != v115)
          {
            objc_enumerationMutation(v112);
          }

          v117 = *(*(&v162 + 1) + 8 * m);
          [v117 setErrorCount:{objc_msgSend(v117, "errorCount") + 1}];
          if ([v117 errorCount] >= self->_maxErrorCount)
          {
            [v63 addObject:v117];
          }
        }

        v114 = [(NSMutableArray *)v112 countByEnumeratingWithState:&v162 objects:v195 count:16];
      }

      while (v114);
    }

    [(MSCupidStateMachine *)self _backoffStreamsBackoffTimer];
    goto LABEL_140;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v126 = objc_opt_class();
    v127 = v126;
    personID8 = [(MSCupidStateMachine *)self personID];
    *buf = 138543874;
    *v204 = v126;
    *&v204[8] = 2112;
    v205 = personID8;
    v206 = 2114;
    v207 = v136;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Quota error code: %{public}@", buf, 0x20u);
  }

  v66 = [responseCopy objectForKey:@"retryafter"];
  objc_opt_class();
  v132 = v66;
  if (objc_opt_isKindOfClass())
  {
    intValue = [v66 intValue];
    if (intValue < 1)
    {
      [(MSCupidStateMachine *)self _backoffStreamsBackoffTimer];
    }

    else
    {
      v68 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:intValue];
      [(MSCupidStateMachine *)self _didReceiveStreamsRetryAfterDate:v68];
    }

    v88 = self->_daemon;
    personID9 = [(MSCupidStateMachine *)self personID];
    personID10 = [(MSCupidStateMachine *)self personID];
    v91 = [MSPublisher nextActivityDateForPersonID:personID10];
    [(MSMediaStreamDaemon *)v88 didExceedPublishQuotaForPersonID:personID9 retryDate:v91];
  }

  if (![v136 isEqualToString:@"4034"])
  {

    goto LABEL_140;
  }

  v92 = [responseCopy objectForKey:@"assets"];
  if (v92)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_127:

      goto LABEL_128;
    }
  }

  v138 = responseCopy;
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v133 = v92;
  v135 = [v133 countByEnumeratingWithState:&v174 objects:v198 count:16];
  if (v135)
  {
    v134 = *v175;
    v140 = protocolCopy;
    v143 = errorCopy;
    v148 = v63;
    while (2)
    {
      v93 = 0;
      do
      {
        if (*v175 != v134)
        {
          objc_enumerationMutation(v133);
        }

        v141 = v93;
        v94 = *(*(&v174 + 1) + 8 * v93);
        objc_opt_class();
        self = selfCopy;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v92 = v133;

          responseCopy = v138;
          goto LABEL_127;
        }

        mSHexData2 = [v94 MSHexData];
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        v173 = 0u;
        v151 = selfCopy->_requestAuthQueue;
        obja = [(NSMutableArray *)v151 countByEnumeratingWithState:&v170 objects:v197 count:16];
        if (obja)
        {
          v154 = *v171;
          do
          {
            for (n = 0; n != obja; ++n)
            {
              if (*v171 != v154)
              {
                objc_enumerationMutation(v151);
              }

              v97 = *(*(&v170 + 1) + 8 * n);
              object2 = [v97 object];
              masterAsset2 = [object2 masterAsset];
              fileHash = [masterAsset2 fileHash];
              v101 = [fileHash isEqualToData:mSHexData2];

              if (v101)
              {
                [v63 addObject:v97];
LABEL_118:
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  v109 = objc_opt_class();
                  v110 = v109;
                  personID11 = [(MSCupidStateMachine *)selfCopy personID];
                  *buf = 138543874;
                  *v204 = v109;
                  *&v204[8] = 2112;
                  v205 = personID11;
                  v206 = 2114;
                  v207 = object2;
                  _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Server reject asset collection because it is too large: %{public}@", buf, 0x20u);
                }
              }

              else
              {
                v168 = 0u;
                v169 = 0u;
                v166 = 0u;
                v167 = 0u;
                derivedAssets2 = [object2 derivedAssets];
                v103 = [derivedAssets2 countByEnumeratingWithState:&v166 objects:v196 count:16];
                if (v103)
                {
                  v104 = v103;
                  v105 = *v167;
                  while (2)
                  {
                    for (ii = 0; ii != v104; ++ii)
                    {
                      if (*v167 != v105)
                      {
                        objc_enumerationMutation(derivedAssets2);
                      }

                      fileHash2 = [*(*(&v166 + 1) + 8 * ii) fileHash];
                      v108 = [fileHash2 isEqualToData:mSHexData2];

                      if (v108)
                      {
                        v63 = v148;
                        [v148 addObject:v97];

                        goto LABEL_118;
                      }
                    }

                    v104 = [derivedAssets2 countByEnumeratingWithState:&v166 objects:v196 count:16];
                    if (v104)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v63 = v148;
              }
            }

            obja = [(NSMutableArray *)v151 countByEnumeratingWithState:&v170 objects:v197 count:16];
          }

          while (obja);
        }

        protocolCopy = v140;
        v93 = v141 + 1;
        errorCopy = v143;
      }

      while (v141 + 1 != v135);
      v135 = [v133 countByEnumeratingWithState:&v174 objects:v198 count:16];
      if (v135)
      {
        continue;
      }

      break;
    }
  }

  responseCopy = v138;
  self = selfCopy;
LABEL_140:

LABEL_141:
  if ([v63 count])
  {
    [(NSMutableArray *)self->_requestAuthQueue removeObjectsInArray:v63];
    [(MSObjectQueue *)self->_uploadQueue removeObjectWrappersFromQueue:v63];
    [(MSObjectQueue *)self->_uploadQueue commitErrorCountsForObjectWrappers:self->_requestAuthQueue];
    [(MSPublisher *)self _updateMasterManifest];
    [(MSPublisher *)self _removeAssetsInAssetCollectionWrappersFromAssetMap:v63];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v119 = objc_opt_class();
      v120 = v119;
      personID12 = [(MSCupidStateMachine *)self personID];
      v122 = [v63 count];
      *buf = 138543874;
      *v204 = v119;
      *&v204[8] = 2112;
      v205 = personID12;
      v206 = 2048;
      v207 = v122;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Too many errors encountered while uploading %ld asset collections. Aborting.", buf, 0x20u);
    }

    [(MSPublisher *)self _quarantineOrDiscardWrappers:v63 withError:errorCopy];
  }

  if ([(NSMutableArray *)self->_requestAuthQueue count])
  {
    v118 = 4;
  }

  else
  {
    v118 = 1;
  }

  self->_state = v118;

LABEL_149:
  [(MSDaemon *)self->_daemon releaseBusy];
LABEL_150:
}

- (id)_invalidStreamsResponseErrorUnderlyingError:(id)error
{
  errorCopy = error;
  v4 = MEMORY[0x277CCA9B8];
  v5 = MSCFCopyLocalizedString(@"ERROR_PUT_CONNECTION_INVALID_STREAMS_RESPONSE");
  if (errorCopy)
  {
    [v4 MSErrorWithDomain:@"MSStreamsPutConnectionErrorDomain" code:1 description:v5 underlyingError:errorCopy];
  }

  else
  {
    [v4 MSErrorWithDomain:@"MSStreamsPutConnectionErrorDomain" code:1 description:v5];
  }
  v6 = ;

  return v6;
}

- (void)_sendMetadataToStreams
{
  v72 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = v3;
    personID = [(MSCupidStateMachine *)self personID];
    *buf = 138543618;
    *v63 = v3;
    *&v63[8] = 2112;
    v64 = personID;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Sending metadata...", buf, 0x16u);
  }

  state = self->_state;
  if (state == 5)
  {
    [(MSPublisher *)self _removeAssetsInAssetCollectionWrappersFromAssetMap:self->_requestAuthQueue];
    [(NSMutableArray *)self->_requestAuthQueue removeAllObjects];
    v7 = [(MSObjectQueue *)self->_uploadQueue smallestObjectWrappersTargetTotalSize:self->_publishTargetByteCount maxCount:self->_publishBatchSize];
    v8 = [(MSPublisher *)self _checkObjectWrappers:v7];
    if (v8 == v7)
    {
      [(NSMutableArray *)self->_requestAuthQueue addObjectsFromArray:v7];
      if ([(NSMutableArray *)self->_requestAuthQueue count])
      {
        v45 = v8;
        [(NSMutableDictionary *)self->_fileHashToAssetMap removeAllObjects];
        v18 = [MSObjectWrapper objectsFromWrappers:self->_requestAuthQueue];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v19 = [v18 countByEnumeratingWithState:&v51 objects:v61 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v52;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v52 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v51 + 1) + 8 * i);
              masterAsset = [v23 masterAsset];
              [(MSPublisher *)self _addAssetToFileHashMap:masterAsset];

              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              derivedAssets = [v23 derivedAssets];
              v26 = [derivedAssets countByEnumeratingWithState:&v47 objects:v60 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v48;
                do
                {
                  for (j = 0; j != v27; ++j)
                  {
                    if (*v48 != v28)
                    {
                      objc_enumerationMutation(derivedAssets);
                    }

                    [(MSPublisher *)self _addAssetToFileHashMap:*(*(&v47 + 1) + 8 * j)];
                  }

                  v27 = [derivedAssets countByEnumeratingWithState:&v47 objects:v60 count:16];
                }

                while (v27);
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v51 objects:v61 count:16];
          }

          while (v20);
        }

        self->_state = 6;
        [(MSPublishStreamsProtocol *)self->_protocol sendMetadataForAssetCollections:v18];

        v8 = v45;
        goto LABEL_48;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v35 = objc_opt_class();
        v36 = v35;
        personID2 = [(MSCupidStateMachine *)self personID];
        *buf = 138543618;
        *v63 = v35;
        *&v63[8] = 2112;
        v64 = personID2;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ nothing to send.", buf, 0x16u);
      }

      self->_state = 0;
      [(MSDaemon *)self->_daemon releaseBusy];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __37__MSPublisher__sendMetadataToStreams__block_invoke_75;
      v46[3] = &unk_278E926D8;
      v46[4] = self;
      v38 = MEMORY[0x277D85CD0];
      v39 = v46;
    }

    else
    {
      v9 = [(MSObjectQueue *)self->_uploadQueue count];
      [(MSObjectQueue *)self->_uploadQueue removeObjectWrappersFromQueue:v7];
      if ([v8 count])
      {
        [(MSObjectQueue *)self->_uploadQueue appendObjectWrappers:v8];
      }

      v10 = [(MSObjectQueue *)self->_uploadQueue count];
      v11 = [v7 count] + v10;
      if (v11 <= [v8 count] + v9)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v30 = objc_opt_class();
          v44 = v30;
          v43 = [v7 count];
          v31 = [v8 count];
          v32 = [v7 count];
          v33 = v32 - [v8 count];
          v34 = [(MSObjectQueue *)self->_uploadQueue count];
          *buf = 138544386;
          *v63 = v30;
          *&v63[8] = 2048;
          v64 = v43;
          v65 = 2048;
          v66 = v31;
          v67 = 2048;
          v68 = v33;
          v69 = 2048;
          v70 = v34;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %lu collections changed (kept %lu / lost %ld - total collections in queue after cleaning: %lld).", buf, 0x34u);
        }
      }

      else
      {
        v42 = v10;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v12 = v7;
        v13 = [v12 countByEnumeratingWithState:&v56 objects:v71 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = *v57;
          do
          {
            for (k = 0; k != v14; ++k)
            {
              if (*v57 != v16)
              {
                objc_enumerationMutation(v12);
              }

              if (v15)
              {
                [v15 appendFormat:@", %lld", objc_msgSend(*(*(&v56 + 1) + 8 * k), "uniqueID")];
              }

              else
              {
                v15 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"%lld", objc_msgSend(*(*(&v56 + 1) + 8 * k), "uniqueID")];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v56 objects:v71 count:16];
          }

          while (v14);
        }

        else
        {
          v15 = 0;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v40 = objc_opt_class();
          *buf = 138544130;
          *v63 = v40;
          *&v63[8] = 2048;
          v64 = v9;
          v65 = 2048;
          v66 = v42;
          v67 = 2114;
          v68 = v15;
          v41 = v40;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - failed to properly clean up wrappers from queue (before/after count: %lld/%lld). Wrapper ids that were supposed to be removed: (%{public}@)", buf, 0x2Au);
        }
      }

      self->_state = 0;
      [(MSDaemon *)self->_daemon releaseBusy];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__MSPublisher__sendMetadataToStreams__block_invoke;
      block[3] = &unk_278E926D8;
      block[4] = self;
      v38 = MEMORY[0x277D85CD0];
      v39 = block;
    }

    dispatch_async(v38, v39);
LABEL_48:

    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *v63 = 5;
    *&v63[4] = 1024;
    *&v63[6] = state;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Wrong state detected. Expected %d, actually %d. Not serving message.", buf, 0xEu);
  }
}

- (void)submitAssetCollectionsForPublication:(id)publication skipAssetCollections:(id)collections
{
  v123 = *MEMORY[0x277D85DE8];
  publicationCopy = publication;
  collectionsCopy = collections;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    personID = [(MSCupidStateMachine *)self personID];
    *buf = 138543874;
    v113 = v7;
    v114 = 2112;
    v115 = personID;
    v116 = 2048;
    v117 = [publicationCopy count];
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Submitting %ld asset collections for publication.", buf, 0x20u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v86 = objc_opt_class();
    v87 = v86;
    personID2 = [(MSCupidStateMachine *)self personID];
    v89 = [collectionsCopy count];
    *buf = 138543874;
    v113 = v86;
    v114 = 2112;
    v115 = personID2;
    v116 = 2048;
    v117 = v89;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ ...skipping %ld asset collections.", buf, 0x20u);
  }

  [(MSPublisher *)self _didFinishUsingAssetCollections:collectionsCopy];
  v93 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(publicationCopy, "count")}];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = publicationCopy;
  v100 = [obj countByEnumeratingWithState:&v107 objects:v122 count:16];
  if (v100)
  {
    v10 = MEMORY[0x277D86220];
    v99 = *v108;
    selfCopy = self;
    do
    {
      v11 = 0;
      do
      {
        if (*v108 != v99)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v107 + 1) + 8 * v11);
        masterAsset = [v12 masterAsset];
        type = [masterAsset type];
        v101 = v12;
        if (!type || ([(NSMutableDictionary *)self->_maxSizeByUTI objectForKey:type], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v56 = objc_opt_class();
            v57 = v56;
            personID3 = [(MSCupidStateMachine *)self personID];
            *buf = 138544130;
            v113 = v56;
            v114 = 2112;
            v115 = personID3;
            v116 = 2114;
            v117 = type;
            v118 = 2114;
            v119 = v12;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ The UTI for “%{public}@” is not accepted by the server. Asset collection: %{public}@", buf, 0x2Au);

            v10 = MEMORY[0x277D86220];
          }

          v25 = MEMORY[0x277CCA9B8];
          v26 = MEMORY[0x277CCACA8];
          derivedAssets = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_UTI_REJECTED_P_UTI");
          v27 = [v26 stringWithFormat:derivedAssets, type];
          v28 = [v25 MSErrorWithDomain:@"MSPublisherErrorDomain" code:4 description:v27];

          goto LABEL_24;
        }

        v16 = [(NSMutableDictionary *)self->_maxSizeByUTI objectForKey:type];
        longLongValue = [v16 longLongValue];

        _fileSize = [masterAsset _fileSize];
        v19 = [(MSPublisher *)self publishStorageProtocol:0 didRequestFDForAsset:masterAsset];
        _fileSizeOnDisk = [masterAsset _fileSizeOnDisk];
        [(MSPublisher *)self publishStorageProtocol:0 didFinishUsingFD:v19 forAsset:masterAsset];
        if (!_fileSizeOnDisk)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v61 = objc_opt_class();
            v62 = v61;
            personID4 = [(MSCupidStateMachine *)self personID];
            *buf = 138543618;
            v113 = v61;
            v114 = 2112;
            v115 = personID4;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ The master asset has zero size. Rejecting upload.", buf, 0x16u);

            v10 = MEMORY[0x277D86220];
          }

          v29 = MEMORY[0x277CCA9B8];
          derivedAssets = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_ASSET_ZERO_SIZE");
          v23 = v29;
          v24 = 5;
          goto LABEL_23;
        }

        if (_fileSize > longLongValue)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v64 = objc_opt_class();
            v65 = v64;
            personID5 = [(MSCupidStateMachine *)self personID];
            masterAsset2 = [v12 masterAsset];
            *buf = 138544386;
            v113 = v64;
            v114 = 2112;
            v115 = personID5;
            v116 = 2048;
            v117 = _fileSize;
            v118 = 2048;
            v119 = longLongValue;
            v120 = 2114;
            v121 = masterAsset2;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ The master asset has size %lld, which is larger than the maximum allowed %lld. %{public}@", buf, 0x34u);

            self = selfCopy;
            v10 = MEMORY[0x277D86220];
          }

          v21 = MEMORY[0x277CCA9B8];
          derivedAssets = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_ASSET_TOO_LARGE");
          v23 = v21;
          v24 = 6;
LABEL_23:
          v28 = [v23 MSErrorWithDomain:@"MSPublisherErrorDomain" code:v24 description:derivedAssets];
LABEL_24:
          v30 = 0;
          goto LABEL_25;
        }

        fileHash = [masterAsset fileHash];
        if (fileHash && (v35 = fileHash, [masterAsset metadata], v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "objectForKey:", @"MSAssetMetadataSHA1HashKey"), v37 = objc_claimAutoreleasedReturnValue(), v37, v36, v35, v37))
        {
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          derivedAssets = [v12 derivedAssets];
          v95 = [derivedAssets countByEnumeratingWithState:&v103 objects:v111 count:16];
          if (v95)
          {
            v94 = *v104;
            v91 = _fileSize;
            v30 = _fileSize;
            v92 = longLongValue;
            while (2)
            {
              for (i = 0; i != v95; ++i)
              {
                if (*v104 != v94)
                {
                  objc_enumerationMutation(derivedAssets);
                }

                v39 = *(*(&v103 + 1) + 8 * i);
                fileHash2 = [v39 fileHash];
                if (fileHash2)
                {
                  v41 = fileHash2;
                  metadata = [v39 metadata];
                  v43 = [metadata objectForKey:@"MSAssetMetadataSHA1HashKey"];

                  if (v43)
                  {
                    continue;
                  }
                }

                v44 = selfCopy;
                [(MSPublishStorageProtocol *)selfCopy->_storageProtocol computeHashForAsset:v39];
                fileHash3 = [v39 fileHash];
                if (!fileHash3 || (v46 = fileHash3, [v39 metadata], v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "objectForKey:", @"MSAssetMetadataSHA1HashKey"), v48 = objc_claimAutoreleasedReturnValue(), v48, v47, v44 = selfCopy, v46, !v48))
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    v73 = objc_opt_class();
                    v74 = v73;
                    v75 = v44;
                    v76 = v74;
                    personID6 = [(MSCupidStateMachine *)v75 personID];
                    *buf = 138543874;
                    v113 = v73;
                    v114 = 2112;
                    v115 = personID6;
                    v116 = 2114;
                    v117 = v39;
                    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Could not compute hash for derived asset %{public}@. Rejecting asset from publication.", buf, 0x20u);
                  }

                  v59 = @"ERROR_PUBLISHER_CANNOT_COMPUTE_HASH";
                  v60 = 3;
                  goto LABEL_62;
                }

                _fileSize2 = [v39 _fileSize];
                v96 = [(MSPublisher *)selfCopy publishStorageProtocol:0 didRequestFDForAsset:v39];
                _fileSizeOnDisk2 = [v39 _fileSizeOnDisk];
                [(MSPublisher *)selfCopy publishStorageProtocol:0 didFinishUsingFD:v96 forAsset:v39];
                if (!_fileSizeOnDisk2)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    v78 = objc_opt_class();
                    v79 = v78;
                    personID7 = [(MSCupidStateMachine *)selfCopy personID];
                    *buf = 138543618;
                    v113 = v78;
                    v114 = 2112;
                    v115 = personID7;
                    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ The asset has zero size. Rejecting upload.", buf, 0x16u);
                  }

                  v59 = @"ERROR_PUBLISHER_ASSET_ZERO_SIZE";
                  v60 = 5;
                  goto LABEL_62;
                }

                if (_fileSize2 > v92)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    v81 = objc_opt_class();
                    v82 = v81;
                    personID8 = [(MSCupidStateMachine *)selfCopy personID];
                    *buf = 138544386;
                    v113 = v81;
                    v114 = 2112;
                    v115 = personID8;
                    v116 = 2048;
                    v117 = v91;
                    v118 = 2048;
                    v119 = v92;
                    v120 = 2114;
                    v121 = v39;
                    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ The asset has size %lld, which is larger than the maximum allowed %lld. %{public}@", buf, 0x34u);
                  }

                  v59 = @"ERROR_PUBLISHER_ASSET_TOO_LARGE";
                  v60 = 6;
LABEL_62:
                  v68 = MEMORY[0x277CCA9B8];
                  v69 = MSCFCopyLocalizedString(v59);
                  v28 = [v68 MSErrorWithDomain:@"MSPublisherErrorDomain" code:v60 description:v69];

                  goto LABEL_63;
                }

                v30 += [v39 _fileSize];
              }

              v95 = [derivedAssets countByEnumeratingWithState:&v103 objects:v111 count:16];
              if (v95)
              {
                continue;
              }

              break;
            }

            v28 = 0;
LABEL_63:
            self = selfCopy;
          }

          else
          {
            v28 = 0;
            v30 = _fileSize;
          }

          v10 = MEMORY[0x277D86220];
        }

        else
        {
          v10 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v70 = objc_opt_class();
            v71 = v70;
            personID9 = [(MSCupidStateMachine *)self personID];
            *buf = 138543874;
            v113 = v70;
            v114 = 2112;
            v115 = personID9;
            v116 = 2114;
            v117 = masterAsset;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ The master asset in the collection does not have a hash. Rejecting from publication: %{public}@", buf, 0x20u);

            v10 = MEMORY[0x277D86220];
          }

          v51 = MEMORY[0x277CCA9B8];
          derivedAssets = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_MISSING_HASH");
          v28 = [v51 MSErrorWithDomain:@"MSPublisherErrorDomain" code:2 description:derivedAssets];
          v30 = _fileSize;
        }

LABEL_25:

        if (v28)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v52 = objc_opt_class();
            v53 = v52;
            personID10 = [(MSCupidStateMachine *)self personID];
            mSVerboseDescription = [v28 MSVerboseDescription];
            *buf = 138544130;
            v113 = v52;
            v114 = 2112;
            v115 = personID10;
            v116 = 2114;
            v117 = v101;
            v118 = 2114;
            v119 = mSVerboseDescription;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Rejecting asset collection %{public}@\nError: %{public}@", buf, 0x2Au);

            self = selfCopy;
            v10 = MEMORY[0x277D86220];
          }

          v31 = [MEMORY[0x277CBEA60] arrayWithObject:v101];
          [(MSPublisher *)self _didFinishUsingAssetCollections:v31];

          delegate = self->_delegate;
          v33 = [MEMORY[0x277CBEA60] arrayWithObject:v101];
          [(MSPublisherDelegate *)delegate publisher:self didEncounterError:v28 publishingAssetCollections:v33];
        }

        else
        {
          v33 = [MSObjectWrapper wrapperWithObject:v101 size:v30];
          [v93 addObject:v33];
        }

        ++v11;
      }

      while (v11 != v100);
      v84 = [obj countByEnumeratingWithState:&v107 objects:v122 count:16];
      v100 = v84;
    }

    while (v84);
  }

  [(MSObjectQueue *)self->_uploadQueue appendObjectWrappers:v93];
  [(MSObjectQueue *)self->_derivativesQueue removeObjectWrappersFromQueue:self->_pendingDerivativesQueue];
  pendingDerivativesQueue = self->_pendingDerivativesQueue;
  self->_pendingDerivativesQueue = 0;

  [(MSPublisher *)self _updateMasterManifest];
  self->_state = 4;
  [(MSDaemon *)self->_daemon releaseBusy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__MSPublisher_submitAssetCollectionsForPublication_skipAssetCollections___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_didFinishUsingAssetCollections:(id)collections
{
  v19 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = collectionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        masterAsset = [v11 masterAsset];
        [v5 addObject:masterAsset];

        derivedAssets = [v11 derivedAssets];
        [v5 addObjectsFromArray:derivedAssets];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(MSPublishStorageProtocol *)self->_storageProtocol didFinishUsingAssets:v5];
}

- (void)_removeAssetsInAssetCollectionWrappersFromAssetMap:(id)map
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = map;
  v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v16)
  {
    v15 = *v22;
    do
    {
      v4 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        object = [*(*(&v21 + 1) + 8 * v4) object];
        masterAsset = [object masterAsset];
        fileHash = [masterAsset fileHash];

        if (fileHash)
        {
          [(NSMutableDictionary *)self->_fileHashToAssetMap removeObjectForKey:fileHash];
        }

        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        derivedAssets = [object derivedAssets];
        v9 = [derivedAssets countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            v12 = 0;
            do
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(derivedAssets);
              }

              fileHash2 = [*(*(&v17 + 1) + 8 * v12) fileHash];
              if (fileHash2)
              {
                [(NSMutableDictionary *)self->_fileHashToAssetMap removeObjectForKey:fileHash2];
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [derivedAssets countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v10);
        }

        ++v4;
      }

      while (v4 != v16);
      v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v16);
  }
}

- (void)_removeAssetFromFileHashMap:(id)map
{
  mapCopy = map;
  fileHashToAssetMap = self->_fileHashToAssetMap;
  v10 = mapCopy;
  fileHash = [mapCopy fileHash];
  v7 = [(NSMutableDictionary *)fileHashToAssetMap objectForKey:fileHash];

  if (v7)
  {
    [v7 MSRemoveOneObjectByPointerComparison:v10];
    if (![v7 count])
    {
      v8 = self->_fileHashToAssetMap;
      fileHash2 = [v10 fileHash];
      [(NSMutableDictionary *)v8 removeObjectForKey:fileHash2];
    }
  }
}

- (void)_addAssetToFileHashMap:(id)map
{
  v20 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  fileHash = [mapCopy fileHash];

  if (fileHash)
  {
    fileHashToAssetMap = self->_fileHashToAssetMap;
    fileHash2 = [mapCopy fileHash];
    array = [(NSMutableDictionary *)fileHashToAssetMap objectForKey:fileHash2];

    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
      v9 = self->_fileHashToAssetMap;
      fileHash3 = [mapCopy fileHash];
      [(NSMutableDictionary *)v9 setObject:array forKey:fileHash3];
    }

    [array addObject:mapCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = v11;
    personID = [(MSCupidStateMachine *)self personID];
    v14 = 138543874;
    v15 = v11;
    v16 = 2112;
    v17 = personID;
    v18 = 2114;
    v19 = mapCopy;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ No file hash for asset %{public}@", &v14, 0x20u);
  }
}

- (void)_requestDerivatives
{
  selfCopy = self;
  v59 = *MEMORY[0x277D85DE8];
  v3 = [(MSObjectQueue *)self->_uploadQueue smallestObjectWrappersTargetTotalSize:1 maxCount:1];
  v4 = [v3 count];

  if (v4)
  {
    selfCopy->_state = 4;
    [(MSDaemon *)selfCopy->_daemon releaseBusy];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__MSPublisher__requestDerivatives__block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = selfCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v5 = [(MSObjectQueue *)selfCopy->_uploadQueue objectWrappersWithZeroSizeMaxCount:selfCopy->_publishBatchSize];
    v6 = [MSObjectWrapper objectsFromWrappers:v5];
    if ([v6 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = v7;
        personID = [(MSCupidStateMachine *)selfCopy personID];
        *buf = 138543874;
        v54 = v7;
        v55 = 2112;
        v56 = personID;
        v57 = 2048;
        v58 = [v5 count];
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Requesting derivatives for %ld files.", buf, 0x20u);
      }

      indexSet = [MEMORY[0x277CCAB58] indexSet];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __34__MSPublisher__requestDerivatives__block_invoke_50;
      v48[3] = &unk_278E90560;
      v11 = indexSet;
      v49 = v11;
      v50 = selfCopy;
      [v6 enumerateObjectsUsingBlock:v48];
      [(MSObjectQueue *)selfCopy->_uploadQueue removeObjectWrappersFromQueue:v5];
      if ([v11 count])
      {
        v12 = [v5 mutableCopy];
        [v12 removeObjectsAtIndexes:v11];

        v13 = [v6 mutableCopy];
        [v13 removeObjectsAtIndexes:v11];

        v6 = v13;
        v5 = v12;
      }

      [(MSObjectQueue *)selfCopy->_derivativesQueue appendObjectWrappers:v5];
      objc_storeStrong(&selfCopy->_pendingDerivativesQueue, v5);

      v14 = v5;
    }

    else
    {
      v42 = v6;
      v14 = [(MSObjectQueue *)selfCopy->_derivativesQueue allObjectWrappersOrderedByDescendingErrorCountMaxCount:5];

      if ([v14 count])
      {
        v15 = MEMORY[0x277D86220];
        v43 = selfCopy;
        while (1)
        {
          array = [MEMORY[0x277CBEB18] array];
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v17 = v14;
          v18 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v45;
            while (2)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v45 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v44 + 1) + 8 * i);
                errorCount = [v22 errorCount];
                if (errorCount <= 2)
                {
                  v28 = errorCount;
                  [v22 setErrorCount:(errorCount + 1)];
                  selfCopy = v43;
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                  {
                    v29 = objc_opt_class();
                    v30 = v29;
                    object = [v22 object];
                    *buf = 138543874;
                    v54 = v29;
                    v55 = 2114;
                    v56 = object;
                    v57 = 1024;
                    LODWORD(v58) = v28;
                    _os_log_impl(&dword_245B99000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - Retrying to get derivative for %{public}@ (error count: %i)", buf, 0x1Cu);
                  }

                  derivativesQueue = v43->_derivativesQueue;
                  v33 = [MEMORY[0x277CBEA60] arrayWithObject:v22];
                  [(MSObjectQueue *)derivativesQueue commitErrorCountsForObjectWrappers:v33];

                  v27 = v22;
                  goto LABEL_26;
                }

                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  v24 = objc_opt_class();
                  v25 = v24;
                  object2 = [v22 object];
                  *buf = 138543618;
                  v54 = v24;
                  v55 = 2114;
                  v56 = object2;
                  _os_log_error_impl(&dword_245B99000, v15, OS_LOG_TYPE_ERROR, "%{public}@ - unable to generate derivatives for %{public}@ safely.", buf, 0x16u);
                }

                [array addObject:v22];
              }

              v19 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }

            v27 = 0;
            selfCopy = v43;
          }

          else
          {
            v27 = 0;
          }

LABEL_26:

          if ([array count])
          {
            [(MSObjectQueue *)selfCopy->_derivativesQueue removeObjectWrappersFromQueue:array];
          }

          if (v27)
          {
            break;
          }

          v14 = [(MSObjectQueue *)selfCopy->_derivativesQueue allObjectWrappersOrderedByDescendingErrorCountMaxCount:5];

          if (![v14 count])
          {
            goto LABEL_30;
          }
        }

        v37 = MEMORY[0x277CBEA60];
        object3 = [v27 object];
        v39 = [v37 arrayWithObject:object3];

        v40 = [MEMORY[0x277CBEA60] arrayWithObject:v27];
        pendingDerivativesQueue = selfCopy->_pendingDerivativesQueue;
        selfCopy->_pendingDerivativesQueue = v40;

        v6 = v39;
        v14 = v17;
      }

      else
      {
LABEL_30:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v34 = objc_opt_class();
          v35 = v34;
          personID2 = [(MSCupidStateMachine *)selfCopy personID];
          *buf = 138543618;
          v54 = v34;
          v55 = 2112;
          v56 = personID2;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ No more derivatives to request.", buf, 0x16u);
        }

        v6 = v42;
      }
    }

    [(MSPublisher *)selfCopy _updateMasterManifest];
    if ([v6 count])
    {
      selfCopy->_state = 3;
      [(MSPublisherDelegate *)selfCopy->_delegate publisher:selfCopy didRequestSubmissionOfAssetCollections:v6];
    }

    else
    {
      selfCopy->_state = 0;
      [(MSDaemon *)selfCopy->_daemon releaseBusy];
    }
  }
}

void __34__MSPublisher__requestDerivatives__block_invoke_50(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 masterAsset];
  if (v6)
  {
    v7 = [v5 masterAssetHash];
    if (!v7 || (v8 = v7, [v6 metadata], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKey:", @"MSAssetMetadataSHA1HashKey"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, !v10))
    {
      [*(*(a1 + 40) + 152) computeHashForAsset:v6];
    }
  }

  else
  {
    [*(a1 + 32) addIndex:a3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "masterAsset unavailable for asset collection %@, unable to request derivatives", &v11, 0xCu);
    }
  }
}

- (void)publish
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
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not publishing because we're shutting down.", &v7, 0x16u);
    }

    return;
  }

  state = self->_state;
  if (state > 6)
  {
    if (state > 9)
    {
      if (state == 10)
      {
        if (![(MSPublisher *)self _isAllowedToUpload])
        {
          return;
        }

        [(MSDaemon *)self->_daemon retainBusy];
        v6 = 11;
        goto LABEL_36;
      }

      if (state == 11)
      {

        [(MSPublisher *)self _sendUploadComplete];
      }
    }

    else
    {
      if (state == 7)
      {
        if (![(MSPublisher *)self _isAllowedToUpload])
        {
          return;
        }

        [(MSDaemon *)self->_daemon retainBusy];
        v6 = 8;
        goto LABEL_36;
      }

      if (state == 8)
      {

        [(MSPublisher *)self _sendFilesToMMCS];
      }
    }
  }

  else if (state > 3)
  {
    if (state == 4)
    {
      if (![(MSPublisher *)self _isAllowedToUpload])
      {
        return;
      }

      [(MSDaemon *)self->_daemon retainBusy];
      v6 = 5;
      goto LABEL_36;
    }

    if (state == 5)
    {

      [(MSPublisher *)self _sendMetadataToStreams];
    }
  }

  else
  {
    if (state < 2)
    {
      if (![(MSPublisher *)self _isAllowedToUpload])
      {
        return;
      }

      [(MSDaemon *)self->_daemon retainBusy];
      v6 = 2;
LABEL_36:
      self->_state = v6;

      [(MSPublisher *)self publish];
      return;
    }

    if (state == 2)
    {

      [(MSPublisher *)self _requestDerivatives];
    }
  }
}

- (BOOL)_isAllowedToUpload
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MSPlatform();
  if ([v3 policyMayUpload])
  {
    _latestNextActivityDate = [(MSCupidStateMachine *)self _latestNextActivityDate];
    date = [MEMORY[0x277CBEAA8] date];
    v6 = [_latestNextActivityDate compare:date];

    if (v6 != 1)
    {
      return 1;
    }
  }

  else
  {
  }

  v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = v9;
    personID = [(MSCupidStateMachine *)self personID];
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = personID;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not uploading at this time.", &v12, 0x16u);

    return 0;
  }

  return result;
}

- (void)reenqueueQuarantinedAssetCollections
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(MSObjectQueue *)self->_quarantinedQueue allObjectWrappersMaxCount:10];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([v3 count])
  {
    v20 = 0;
    v5 = MEMORY[0x277D86220];
    selfCopy = self;
    do
    {
      context = objc_autoreleasePoolPush();
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v7 = v3;
      v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v24;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v23 + 1) + 8 * i);
            object = [v12 object];
            assetCollectionID = [object assetCollectionID];
            if (assetCollectionID)
            {
              if ([v4 containsObject:assetCollectionID])
              {
                if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
                {
                  v15 = objc_opt_class();
                  *buf = 138543618;
                  v28 = v15;
                  v29 = 2114;
                  v30 = assetCollectionID;
                  v16 = v15;
                  _os_log_error_impl(&dword_245B99000, v5, OS_LOG_TYPE_ERROR, "%{public}@ - discarding a collection with identifier %{public}@ that was quarantined too many times.", buf, 0x16u);
                }
              }

              else
              {
                [v4 addObject:assetCollectionID];
                [v6 addObject:v12];
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v9);
      }

      [(MSObjectQueue *)selfCopy->_quarantinedQueue removeObjectWrappersFromQueue:v7];
      if ([v6 count])
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v17 = objc_opt_class();
          v18 = v17;
          v19 = [v6 count];
          *buf = 138543618;
          v28 = v17;
          v29 = 2048;
          v30 = v19;
          _os_log_impl(&dword_245B99000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - reenqueuing %ld quarantined collections.", buf, 0x16u);
        }

        [(MSObjectQueue *)selfCopy->_uploadQueue appendObjectWrappers:v6];
        v20 = 1;
      }

      v3 = [(MSObjectQueue *)selfCopy->_quarantinedQueue allObjectWrappersMaxCount:10];

      objc_autoreleasePoolPop(context);
    }

    while ([v3 count]);
    if (v20)
    {
      [(MSPublisher *)selfCopy _updateMasterManifest];
    }
  }
}

- (id)_checkObjectWrappers:(id)wrappers
{
  v25 = *MEMORY[0x277D85DE8];
  wrappersCopy = wrappers;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = wrappersCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        object = [v12 object];
        if ([v12 size])
        {
          v14 = [(MSPublisher *)self _checkAssetCollectionFiles:object];
        }

        else
        {
          v14 = object;
        }

        v15 = v14;
        if (!v14)
        {
          goto LABEL_12;
        }

        if (v14 != object)
        {
          v16 = [MSObjectWrapper wrapperWithObject:v14 size:0];
          [v5 addObject:v16];

LABEL_12:
          v9 = 1;
          goto LABEL_14;
        }

        [v5 addObject:v12];
LABEL_14:
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v8)
      {

        v17 = v5;
        if (v9)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }
  }

LABEL_19:
  v17 = v6;
LABEL_20:
  v18 = v17;

  return v17;
}

- (id)_checkAssetCollectionFiles:(id)files
{
  v29 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  masterAsset = [filesCopy masterAsset];
  if (![(MSPublisher *)self _verifyAssetFile:masterAsset])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = filesCopy;
      v14 = v23;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %{public}@ has disappeared.", buf, 0x16u);
    }

    v13 = 0;
LABEL_21:
    derivedAssets = filesCopy;
    goto LABEL_22;
  }

  assetCollectionID = [filesCopy assetCollectionID];

  if (!assetCollectionID)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = filesCopy;
      derivedAssets = v23;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %{public}@ has lost his collection ID.", buf, 0x16u);
LABEL_19:
    }

    v13 = [(MSPublisher *)self _collectionWithNoDerivatives:filesCopy];
    goto LABEL_21;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  derivedAssets = [filesCopy derivedAssets];
  v8 = [derivedAssets countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(derivedAssets);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (![(MSPublisher *)self _verifyAssetFile:v12])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_opt_class();
            *buf = 138543874;
            v23 = v15;
            v24 = 2114;
            v25 = v12;
            v26 = 2114;
            v27 = filesCopy;
            v16 = v15;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %{public}@ for %{public}@ has disappeared. Will have to recompute derivatives.", buf, 0x20u);
          }

          goto LABEL_19;
        }
      }

      v9 = [derivedAssets countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = filesCopy;
LABEL_22:

  return v13;
}

- (id)_collectionWithNoDerivatives:(id)derivatives
{
  derivativesCopy = derivatives;
  masterAsset = [derivativesCopy masterAsset];
  fileName = [derivativesCopy fileName];
  v6 = [MSAssetCollection collectionWithMasterAsset:masterAsset fileName:fileName];

  assetCollectionID = [derivativesCopy assetCollectionID];

  if (!assetCollectionID)
  {
    assetCollectionID = [MEMORY[0x277CCACA8] MSMakeUUID];
  }

  [v6 setAssetCollectionID:assetCollectionID];

  return v6;
}

- (BOOL)_verifyAssetFile:(id)file
{
  fileCopy = file;
  path = [fileCopy path];
  fileData = [fileCopy fileData];

  if (fileData)
  {
    goto LABEL_4;
  }

  if (objc_opt_respondsToSelector())
  {
    fileData = 0;
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  if (!path)
  {
    v6 = 1;
    goto LABEL_6;
  }

  fileData = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [fileData fileExistsAtPath:path isDirectory:0];
LABEL_5:

LABEL_6:
  return v6;
}

- (void)_quarantineOrDiscardWrappers:(id)wrappers withError:(id)error
{
  v40 = *MEMORY[0x277D85DE8];
  wrappersCopy = wrappers;
  errorCopy = error;
  Current = CFAbsoluteTimeGetCurrent();
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = wrappersCopy;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    v11 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        object = [v13 object];
        initialFailureDate = [object initialFailureDate];
        if (initialFailureDate >= 1 && (Current - initialFailureDate) >= 0x93A81)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            *buf = 138543618;
            v34 = v23;
            v35 = 2114;
            v36 = object;
            v24 = v23;
            _os_log_error_impl(&dword_245B99000, v11, OS_LOG_TYPE_ERROR, "%{public}@ - quarantine for %{public}@ has been there for too long. Better to just abandon", buf, 0x16u);
          }

          v21 = v27;
          v22 = object;
        }

        else
        {
          v17 = initialFailureDate;
          if (!initialFailureDate)
          {
            [object setInitialFailureDate:Current];
          }

          [v13 setErrorCount:0];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v18 = objc_opt_class();
            *buf = 138543874;
            v19 = ", again";
            if (!v17)
            {
              v19 = " for the first time";
            }

            v34 = v18;
            v35 = 2114;
            v36 = object;
            v37 = 2082;
            v38 = v19;
            v20 = v18;
            _os_log_impl(&dword_245B99000, v11, OS_LOG_TYPE_INFO, "%{public}@ - putting %{public}@ in quarantine%{public}s.", buf, 0x20u);
          }

          v21 = v7;
          v22 = v13;
        }

        [v21 addObject:v22];
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    [(MSObjectQueue *)self->_quarantinedQueue appendObjectWrappers:v7];
  }

  if ([v27 count])
  {
    [(MSPublisher *)self _didFinishUsingAssetCollections:v27];
    [(MSPublisherDelegate *)self->_delegate publisher:self didEncounterError:errorCopy publishingAssetCollections:v27];
  }
}

- (void)_registerAllAssetsForWrapper:(id)wrapper
{
  v17 = *MEMORY[0x277D85DE8];
  object = [wrapper object];
  v5 = [MEMORY[0x277CBEA60] arrayWithObject:object];
  [(MSPublisher *)self _didFinishUsingAssetCollections:v5];

  masterAsset = [object masterAsset];
  [(MSPublisher *)self _registerAsset:masterAsset];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  derivedAssets = [object derivedAssets];
  v8 = [derivedAssets countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(derivedAssets);
        }

        [(MSPublisher *)self _registerAsset:*(*(&v12 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [derivedAssets countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_registerAsset:(id)asset
{
  assetCopy = asset;
  [assetCopy setFileHash:0];
  [assetCopy setProtocolFileSize:0];
  [(MSPublishStorageProtocol *)self->_storageProtocol computeHashForAsset:assetCopy];
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

      [(MSPublisher *)self _refreshServerSideConfiguredParameters];
    }
  }

  else
  {
    [(MSPublisher *)self performSelectorOnMainThread:sel__serverSideConfigurationDidChange_ withObject:changeCopy waitUntilDone:0];
  }
}

- (void)_refreshServerSideConfiguredParameters
{
  v42 = *MEMORY[0x277D85DE8];
  personID = [(MSCupidStateMachine *)self personID];
  self->_publishTargetByteCount = [MSServerSideConfigManager longLongValueForParameter:@"mme.streams.client.pubUploadBatchTargetSize" forPersonID:personID defaultValue:5242880];

  personID2 = [(MSCupidStateMachine *)self personID];
  self->_publishBatchSize = [MSServerSideConfigManager intValueForParameter:@"mme.streams.client.pubMaxUploadBatchCount" forPersonID:personID2 defaultValue:1];

  personID3 = [(MSCupidStateMachine *)self personID];
  selfCopy = self;
  self->_maxErrorCount = [MSServerSideConfigManager intValueForParameter:@"mme.streams.client.pubMaxErrorRetryCount" forPersonID:personID3 defaultValue:3];

  if (_refreshServerSideConfiguredParameters_once != -1)
  {
    dispatch_once(&_refreshServerSideConfiguredParameters_once, &__block_literal_global);
  }

  personID4 = [(MSCupidStateMachine *)self personID];
  v7 = [MSServerSideConfigManager objectForKey:@"supportedAssets" forPersonID:personID4 defaultValue:_refreshServerSideConfiguredParameters_defaultSupportedAssetTypes];

  [(NSMutableDictionary *)selfCopy->_maxSizeByUTI removeAllObjects];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v7;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      v11 = @"assetType";
      v12 = 0x277CCA000uLL;
      do
      {
        v13 = 0;
        v29 = v9;
        do
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v31 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 objectForKey:v11];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [v14 objectForKey:@"maxFileSizeMB"];
              if (objc_opt_respondsToSelector())
              {
                longLongValue = [v16 longLongValue];
                maxSizeByUTI = selfCopy->_maxSizeByUTI;
                [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue << 20];
                v19 = v12;
                v21 = v20 = v11;
                v22 = maxSizeByUTI;
                v9 = v29;
                [(NSMutableDictionary *)v22 setObject:v21 forKey:v15];

                v11 = v20;
                v12 = v19;
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v36 = @"maxFileSizeMB";
                _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Server-side configuration key %{public}@ cannot be parsed as a number.", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v36 = v11;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Server-side configuration key %{public}@ is not a string.", buf, 0xCu);
            }
          }

          ++v13;
        }

        while (v9 != v13);
        v9 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v9);
    }

    v7 = v27;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v36 = @"supportedAssets";
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Server-side configuration key %{public}@ does not contain an array.", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v23 = objc_opt_class();
    v24 = v23;
    personID5 = [(MSCupidStateMachine *)selfCopy personID];
    v26 = selfCopy->_maxSizeByUTI;
    *buf = 138543874;
    v36 = v23;
    v37 = 2112;
    v38 = personID5;
    v39 = 2114;
    v40 = v26;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ _maxSizeByUTI: %{public}@", buf, 0x20u);
  }
}

void __53__MSPublisher__refreshServerSideConfiguredParameters__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEA60]);
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"public.tiff", @"assetType", @"100", @"maxFileSizeMB", 0}];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"public.jpeg", @"assetType", @"50", @"maxFileSizeMB", 0}];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"public.camera-raw-image", @"assetType", @"100", @"maxFileSizeMB", 0}];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"public.png", @"assetType", @"50", @"maxFileSizeMB", 0}];
  v4 = [v0 initWithObjects:{v6, v1, v2, v3, 0}];
  v5 = _refreshServerSideConfiguredParameters_defaultSupportedAssetTypes;
  _refreshServerSideConfiguredParameters_defaultSupportedAssetTypes = v4;
}

- (BOOL)dequeueAssetCollectionWithGUIDs:(id)ds outError:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = v6;
    personID = [(MSCupidStateMachine *)self personID];
    *buf = 138543874;
    v32 = v6;
    v33 = 2112;
    v34 = personID;
    v35 = 2114;
    v36 = dsCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ dequeuing asset collections: %{public}@", buf, 0x20u);
  }

  v9 = [MEMORY[0x277CBEB58] setWithArray:dsCopy];
  v25 = dsCopy;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
  selfCopy = self;
  [(MSObjectQueue *)self->_uploadQueue allObjectWrappersMaxCount:0x7FFFFFFFFFFFFFFFLL];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v29 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        object = [v16 object];
        assetCollectionID = [object assetCollectionID];
        if (assetCollectionID)
        {
          if ([v9 containsObject:assetCollectionID])
          {
            [v10 addObject:v16];
            [v9 removeObject:assetCollectionID];
            if (![v9 count])
            {

              goto LABEL_15;
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  if ([v10 count])
  {
    [(MSObjectQueue *)selfCopy->_uploadQueue removeObjectWrappersFromQueue:v10];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = v19;
      personID2 = [(MSCupidStateMachine *)selfCopy personID];
      v22 = [v10 count];
      *buf = 138543874;
      v32 = v19;
      v33 = 2112;
      v34 = personID2;
      v35 = 2048;
      v36 = v22;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ removed %lu asset collections from upload queue", buf, 0x20u);
    }
  }

  return 1;
}

- (BOOL)enqueueAssetCollections:(id)collections outError:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = v6;
    personID = [(MSCupidStateMachine *)self personID];
    *buf = 138543874;
    v27 = v6;
    v28 = 2112;
    v29 = personID;
    v30 = 2114;
    v31 = collectionsCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ enqueuing asset collections: %{public}@", buf, 0x20u);
  }

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(collectionsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = collectionsCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        assetCollectionID = [v15 assetCollectionID];

        if (!assetCollectionID)
        {
          mSMakeUUID = [MEMORY[0x277CCACA8] MSMakeUUID];
          [v15 setAssetCollectionID:mSMakeUUID];
        }

        v18 = [MSObjectWrapper wrapperWithObject:v15 size:0];
        [v9 addObject:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  [(MSObjectQueue *)self->_uploadQueue appendObjectWrappers:v9];
  [(MSPublisher *)self _updateMasterManifest];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MSPublisher_enqueueAssetCollections_outError___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  return 1;
}

- (void)_updateMasterManifest
{
  _latestNextActivityDate = [(MSCupidStateMachine *)self _latestNextActivityDate];
  if ([(MSObjectQueue *)self->_uploadQueue count])
  {
    if (_latestNextActivityDate)
    {
LABEL_3:
      personID = [(MSCupidStateMachine *)self personID];
      v4 = _latestNextActivityDate;
      goto LABEL_12;
    }
  }

  else
  {
    if ([(MSObjectQueue *)self->_derivativesQueue count])
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

  if ([(MSObjectQueue *)self->_quarantinedQueue count])
  {
    personID = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:604800.0];
    personID2 = [(MSCupidStateMachine *)self personID];
    [MSPublisher _setMasterNextActivityDate:personID forPersonID:personID2];

    goto LABEL_13;
  }

  personID = [(MSCupidStateMachine *)self personID];
  v4 = 0;
LABEL_12:
  [MSPublisher _setMasterNextActivityDate:v4 forPersonID:personID];
LABEL_13:

  _commitMasterManifest();
}

- (void)dealloc
{
  [(MSPublisher *)self deactivate];
  v3.receiver = self;
  v3.super_class = MSPublisher;
  [(MSCupidStateMachine *)&v3 dealloc];
}

- (void)deactivate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(MSPublisher *)self stop];
  tempFiles = self->_tempFiles;
  self->_tempFiles = 0;

  storageProtocolURL = self->_storageProtocolURL;
  self->_storageProtocolURL = 0;

  [(MSPublishStorageProtocol *)self->_storageProtocol deactivateRemoveAllFiles:[(MSObjectQueue *)self->_uploadQueue count]== 0];
  storageProtocol = self->_storageProtocol;
  self->_storageProtocol = 0;

  protocol = self->_protocol;
  self->_protocol = 0;

  fileHashToAssetMap = self->_fileHashToAssetMap;
  self->_fileHashToAssetMap = 0;

  sendingQueue = self->_sendingQueue;
  self->_sendingQueue = 0;

  requestAuthQueue = self->_requestAuthQueue;
  self->_requestAuthQueue = 0;

  pendingDerivativesQueue = self->_pendingDerivativesQueue;
  self->_pendingDerivativesQueue = 0;

  uploadQueue = self->_uploadQueue;
  self->_uploadQueue = 0;

  derivativesQueue = self->_derivativesQueue;
  self->_derivativesQueue = 0;

  quarantinedQueue = self->_quarantinedQueue;
  self->_quarantinedQueue = 0;

  maxSizeByUTI = self->_maxSizeByUTI;
  self->_maxSizeByUTI = 0;

  v16.receiver = self;
  v16.super_class = MSPublisher;
  [(MSCupidStateMachine *)&v16 deactivate];
}

- (MSPublisher)initWithPersonID:(id)d baseURL:(id)l
{
  v48 = *MEMORY[0x277D85DE8];
  dCopy = d;
  lCopy = l;
  v43.receiver = self;
  v43.super_class = MSPublisher;
  v8 = [(MSCupidStateMachine *)&v43 initWithPersonID:dCopy];
  if (v8)
  {
    v9 = [MSObjectQueue alloc];
    personID = [(MSCupidStateMachine *)v8 personID];
    v11 = MSPathPublishQueueForPersonID(personID);
    v12 = [(MSObjectQueue *)v9 initWithPath:v11];
    uploadQueue = v8->_uploadQueue;
    v8->_uploadQueue = v12;

    v14 = [MSObjectQueue alloc];
    personID2 = [(MSCupidStateMachine *)v8 personID];
    v16 = MSPathPublishDerivativesQueueForPersonID(personID2);
    v17 = [(MSObjectQueue *)v14 initWithPath:v16];
    derivativesQueue = v8->_derivativesQueue;
    v8->_derivativesQueue = v17;

    v19 = [MSObjectQueue alloc];
    personID3 = [(MSCupidStateMachine *)v8 personID];
    v21 = MSPathPublishDiscardedQueueForPersonID(personID3);
    v22 = [(MSObjectQueue *)v19 initWithPath:v21];
    quarantinedQueue = v8->_quarantinedQueue;
    v8->_quarantinedQueue = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sendingQueue = v8->_sendingQueue;
    v8->_sendingQueue = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requestAuthQueue = v8->_requestAuthQueue;
    v8->_requestAuthQueue = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fileHashToAssetMap = v8->_fileHashToAssetMap;
    v8->_fileHashToAssetMap = v28;

    v30 = [[MSPublishStreamsProtocol alloc] initWithPersonID:dCopy baseURL:lCopy];
    protocol = v8->_protocol;
    v8->_protocol = v30;

    v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tempFiles = v8->_tempFiles;
    v8->_tempFiles = v32;

    [(MSPublishStreamsProtocol *)v8->_protocol setDelegate:v8];
    v34 = [[MSPublishMMCSProtocol alloc] initWithPersonID:dCopy];
    storageProtocol = v8->_storageProtocol;
    v8->_storageProtocol = v34;

    [(MSPublishStorageProtocol *)v8->_storageProtocol setDelegate:v8];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__serverSideConfigurationDidChange_ name:@"MSServerSideConfigChanged" object:0];

    v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
    maxSizeByUTI = v8->_maxSizeByUTI;
    v8->_maxSizeByUTI = v37;

    [(MSPublisher *)v8 _refreshServerSideConfiguredParameters];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v40 = v39;
      v41 = [objc_opt_class() nextActivityDateForPersonID:dCopy];
      *buf = 138543618;
      v45 = v39;
      v46 = 2114;
      v47 = v41;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: next activity date is %{public}@", buf, 0x16u);
    }
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
  allValues = [_publisherByID allValues];
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
  allValues = [_publisherByID allValues];
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
  v2 = _masterNextActivityDateByPersonID();
  allKeys = [v2 allKeys];

  return allKeys;
}

+ (id)nextActivityDateForPersonID:(id)d
{
  dCopy = d;
  v4 = _masterNextActivityDateByPersonID();
  v5 = [v4 objectForKey:dCopy];

  return v5;
}

+ (id)nextActivityDate
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = _masterNextActivityDateByPersonID();
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
  v12 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  if (dCopy)
  {
    v7 = _masterNextActivityDateByPersonID();
    v8 = v7;
    if (dateCopy)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v10 = 138543874;
        *&v10[4] = objc_opt_class();
        *&v10[12] = 2112;
        *&v10[14] = dCopy;
        *&v10[22] = 2114;
        v11 = dateCopy;
        v9 = *&v10[4];
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - setting next activity date for %@ to %{public}@.", v10, 0x20u);
      }

      [v8 setObject:dateCopy forKey:{dCopy, *v10, *&v10[8], v11}];
    }

    else
    {
      [v7 removeObjectForKey:dCopy];
    }

    _commitMasterManifest();
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v10 = 138543362;
    *&v10[4] = objc_opt_class();
    v8 = *&v10[4];
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - Found empty person ID.", v10, 0xCu);
LABEL_10:
  }
}

+ (void)forgetPersonID:(id)d
{
  dCopy = d;
  v3 = [_publisherByID objectForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 forget];
    [_publisherByID removeObjectForKey:dCopy];
  }
}

+ (id)_clearInstantiatedPublishersByPersonID
{
  v2 = _publisherByID;
  v3 = _publisherByID;
  v4 = _publisherByID;
  _publisherByID = 0;

  return v2;
}

+ (id)publisherForPersonID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = _publisherByID;
    if (!_publisherByID)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = _publisherByID;
      _publisherByID = v5;

      v4 = _publisherByID;
    }

    v7 = [v4 objectForKey:dCopy];
    if (!v7)
    {
      v8 = [MSPublisher alloc];
      v9 = MSPlatform();
      v10 = [v9 baseURLForPersonID:dCopy];
      v7 = [(MSPublisher *)v8 initWithPersonID:dCopy baseURL:v10];

      [_publisherByID setObject:v7 forKey:dCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end