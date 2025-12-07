@interface MSASStateMachine
- (BOOL)hasEnqueuedActivities;
- (BOOL)isInRetryState;
- (BOOL)workQueueEndCommandWithError:(id)error command:(id)command params:(id)params albumGUID:(id)d assetCollectionGUID:(id)iD;
- (MSASPhoneInvitations)phoneInvitations;
- (MSASProtocol)protocol;
- (MSASStateMachine)init;
- (MSASStateMachine)initWithPersonID:(id)d eventQueue:(id)queue;
- (MSAlbumSharingDaemon)daemon;
- (NSDictionary)serverSideConfiguration;
- (NSString)serverSideConfigurationVersion;
- (id)_URLReauthFailureWithUnderlyingError:(id)error;
- (id)_albumForRequestFromParams:(id)params;
- (id)_assetCollectionFailedError;
- (id)_assetCollectionRejectedError;
- (id)_canceledError;
- (id)_createCopiedAssetsInAssetCollections:(id)collections;
- (id)_metadataBackoffManager;
- (id)_serverSideConfigDictionaryByApplyingDefaultsToDictionary:(id)dictionary;
- (id)_stoppedError;
- (id)delegate;
- (id)latestNextActivityDate;
- (id)migrationCtagToCheckForChanges;
- (id)persistentObjectForKey:(id)key;
- (id)rootCtagToCheckForChanges;
- (id)serverCommunicationBackoffDate;
- (id)serverSideQueueServerSideConfiguration;
- (void)MSASAssetDownloader:(id)downloader didFinishDownloadingAsset:(id)asset inAlbumGUID:(id)d error:(id)error;
- (void)MSASAssetDownloader:(id)downloader willBeginBatchCount:(unint64_t)count;
- (void)MSASAssetDownloaderDidFinishBatch:(id)batch;
- (void)MSASAssetUploader:(id)uploader didFinishUploadingAssetCollection:(id)collection intoAlbum:(id)album error:(id)error;
- (void)MSBackoffManagerDidUpdateNextExpiryDate:(id)date;
- (void)_actionDidFinishWithError:(id)error album:(id)album;
- (void)_addAssetCollectionsDisposition:(int)disposition params:(id)params;
- (void)_addCommentDisposition:(int)disposition params:(id)params;
- (void)_cancelOutstandingCommandsDisposition:(int)disposition params:(id)params;
- (void)_checkForAlbumSyncedStateDisposition:(int)disposition params:(id)params;
- (void)_checkForAssetCollectionUpdatesDisposition:(int)disposition params:(id)params;
- (void)_checkForChangesDisposition:(int)disposition params:(id)params;
- (void)_checkForCommentChangesDisposition:(int)disposition params:(id)params;
- (void)_checkForUpdatesInAlbumDisposition:(int)disposition params:(id)params;
- (void)_continueAddingAssetCollectionsDisposition:(int)disposition params:(id)params;
- (void)_createAlbumDisposition:(int)disposition params:(id)params;
- (void)_deleteAlbumDisposition:(int)disposition params:(id)params;
- (void)_deleteAssetCollectionsDisposition:(int)disposition params:(id)params;
- (void)_deleteAssetFilesInAssetCollection:(id)collection;
- (void)_deleteAssetFilesInAssetCollections:(id)collections;
- (void)_deleteCommentDisposition:(int)disposition params:(id)params;
- (void)_didFinishCheckingUpdatesInAlbumsDisposition:(int)disposition params:(id)params;
- (void)_getAccessControlsDisposition:(int)disposition params:(id)params;
- (void)_getAlbumURLDisposition:(int)disposition params:(id)params;
- (void)_markAsSpamInvitationForAlbumDisposition:(int)disposition params:(id)params;
- (void)_markAsSpamInvitationForTokenDisposition:(int)disposition params:(id)params;
- (void)_removeSharingRelationshipsDisposition:(int)disposition params:(id)params;
- (void)_scheduleEventDisposition:(int)disposition params:(id)params;
- (void)_sendGetServerSideConfigurationDisposition:(int)disposition params:(id)params;
- (void)_sendGetUploadTokensDisposition:(int)disposition params:(id)params;
- (void)_sendPutAssetCollectionsDisposition:(int)disposition params:(id)params;
- (void)_sendReauthorizeAssetsForDownloadDisposition:(int)disposition params:(id)params;
- (void)_sendUploadCompleteDisposition:(int)disposition params:(id)params;
- (void)_setAlbumSyncedStateDisposition:(int)disposition params:(id)params;
- (void)_setAssetCollectionSyncedStateDisposition:(int)disposition params:(id)params;
- (void)_subscribeToAlbumDisposition:(int)disposition params:(id)params;
- (void)_unsubscribeFromAlbumDisposition:(int)disposition params:(id)params;
- (void)_updateAlbumDisposition:(int)disposition params:(id)params;
- (void)_workQueueEmptyFileTransferQueuesCompletionBlock:(id)block;
- (void)acceptInvitationWithToken:(id)token info:(id)info completionBlock:(id)block;
- (void)addAssetCollections:(id)collections toAlbum:(id)album info:(id)info;
- (void)addComments:(id)comments toAssetCollection:(id)collection inAlbum:(id)album info:(id)info;
- (void)addSharingRelationships:(id)relationships toOwnedAlbum:(id)album info:(id)info completionBlock:(id)block;
- (void)cancelCompletionBlock:(id)block;
- (void)cancelOutstandingCommandsForAlbumWithGUID:(id)d;
- (void)cancelOutstandingCommandsForAssetCollectionWithGUID:(id)d;
- (void)checkForAlbumSyncedStateChangesInAlbums:(id)albums info:(id)info;
- (void)checkForAssetCollectionUpdates:(id)updates inAlbum:(id)album info:(id)info;
- (void)checkForChangesIfMissingRootCtag;
- (void)checkForChangesResetSync:(BOOL)sync info:(id)info;
- (void)checkForCommentChanges:(id)changes inAlbumWithGUID:(id)d withClientOrgKey:(id)key;
- (void)checkForUpdatesInAlbums:(id)albums resetSync:(BOOL)sync info:(id)info;
- (void)continueAddingAssetCollections:(id)collections skipAssetCollections:(id)assetCollections toAlbum:(id)album info:(id)info;
- (void)createAlbum:(id)album info:(id)info;
- (void)deleteAlbum:(id)album info:(id)info;
- (void)deleteAssetCollections:(id)collections inAlbum:(id)album info:(id)info;
- (void)deleteComments:(id)comments inAssetCollection:(id)collection inAlbum:(id)album info:(id)info;
- (void)getAccessControlsForAlbums:(id)albums info:(id)info;
- (void)markAsSpamInvitationForAlbum:(id)album invitationGUID:(id)d info:(id)info;
- (void)markAsSpamInvitationForToken:(id)token info:(id)info;
- (void)purgeEverythingCompletionBlock:(id)block;
- (void)refreshServerSideConfig;
- (void)removeSharingRelationships:(id)relationships fromOwnedAlbum:(id)album info:(id)info;
- (void)retrieveAssets:(id)assets inAlbumWithGUID:(id)d;
- (void)retryOutstandingActivities;
- (void)scheduleEvent:(id)event assetCollectionGUID:(id)d albumGUID:(id)iD info:(id)info;
- (void)serverSideQueueSetServerSideConfiguration:(id)configuration;
- (void)setAlbumSyncedState:(id)state forAlbum:(id)album info:(id)info;
- (void)setAssetCollectionSyncedState:(id)state forAssetCollection:(id)collection album:(id)album info:(id)info;
- (void)setDaemon:(id)daemon;
- (void)setFocusAlbumGUID:(id)d;
- (void)setFocusAssetCollectionGUID:(id)d;
- (void)setMultipleContributorsEnabled:(BOOL)enabled forAlbum:(id)album info:(id)info completionBlock:(id)block;
- (void)setPendingRootCtag:(id)ctag;
- (void)setPersistentObject:(id)object forKey:(id)key;
- (void)setPublicAccessEnabled:(BOOL)enabled forAlbum:(id)album info:(id)info completionBlock:(id)block;
- (void)setRootCtagFromPendingRootCtag;
- (void)setServerSideConfiguration:(id)configuration;
- (void)shutDownCompletionBlock:(id)block;
- (void)start;
- (void)stopAssetDownloadsCompletionBlock:(id)block;
- (void)subscribeToAlbum:(id)album info:(id)info;
- (void)unsubscribeFromAlbum:(id)album info:(id)info;
- (void)updateAlbum:(id)album updateAlbumFlags:(int)flags info:(id)info;
- (void)validateInvitationForAlbum:(id)album completionBlock:(id)block;
- (void)videoURLForAssetCollection:(id)collection inAlbum:(id)album completionBlock:(id)block;
- (void)videoURLsForAssetCollection:(id)collection forMediaAssetType:(unint64_t)type inAlbum:(id)album completionBlock:(id)block;
- (void)workQueueApplyServerSideConfiguration;
- (void)workQueueCancelAllCommandsFilteredByAlbumGUID:(id)d assetCollectionGUID:(id)iD;
- (void)workQueueCancelCompletionBlock:(id)block;
- (void)workQueueCheckForNextCommand;
- (void)workQueueDidFailToFinishCommandDueToTemporaryError:(id)error;
- (void)workQueueDidFinishCommand;
- (void)workQueueDidFinishCommandByLeavingCommandInQueue;
- (void)workQueueDidFinishCommandByReplacingCurrentCommandWithCommand:(id)command params:(id)params personID:(id)d albumGUID:(id)iD assetCollectionGUID:(id)uID;
- (void)workQueueDidFinishCommandDueToCancellation;
- (void)workQueuePerformNextCommand;
- (void)workQueueRefreshServerSideConfig;
- (void)workQueueRetryOutstandingActivities;
- (void)workQueueScheduleReauthForAssets:(id)assets inAlbum:(id)album;
- (void)workQueueUpdateNextActivityDate;
@end

@implementation MSASStateMachine

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MSAlbumSharingDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (void)MSASAssetDownloaderDidFinishBatch:(id)batch
{
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MSASStateMachine_MSASAssetDownloaderDidFinishBatch___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __54__MSASStateMachine_MSASAssetDownloaderDidFinishBatch___block_invoke(uint64_t a1)
{
  v1 = a1;
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _assetInfoToReauthForDownload];
  v3 = [v2 count];

  if (!v3)
  {
    return [*(v1 + 32) _setAssetInfoToReauthForDownload:0];
  }

  v4 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = v1;
  v5 = [*(v1 + 32) _assetInfoToReauthForDownload];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v26;
  do
  {
    v10 = 0;
    v11 = v8;
    do
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v25 + 1) + 8 * v10);
      if (v11 && ([v11 album], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "album"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqual:", v14), v14, v13, !v15))
      {
        if (![v4 count])
        {
          goto LABEL_13;
        }

        v17 = *(v24 + 32);
        v18 = [v11 album];
        [v17 workQueueScheduleReauthForAssets:v4 inAlbum:v18];

        v19 = MEMORY[0x277CBEB18];
        v16 = [v12 asset];
        v20 = [v19 arrayWithObject:v16];

        v4 = v20;
      }

      else
      {
        v16 = [v12 asset];
        [v4 addObject:v16];
      }

LABEL_13:
      v8 = v12;

      ++v10;
      v11 = v8;
    }

    while (v7 != v10);
    v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v7);
LABEL_17:

  v1 = v24;
  if ([v4 count])
  {
    v21 = *(v24 + 32);
    v22 = [v8 album];
    [v21 workQueueScheduleReauthForAssets:v4 inAlbum:v22];
  }

  return [*(v1 + 32) _setAssetInfoToReauthForDownload:0];
}

- (id)_albumForRequestFromParams:(id)params
{
  v4 = [params objectForKey:@"album"];
  delegate = [(MSASStateMachine *)self delegate];
  gUID = [v4 GUID];
  v7 = [delegate albumWithGUID:gUID];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v9;
}

- (void)_sendReauthorizeAssetsForDownloadDisposition:(int)disposition params:(id)params
{
  v39 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [paramsCopy objectForKey:@"assets"];
  v8 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v9 = [paramsCopy objectForKey:@"error"];
  v10 = v9;
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_319;
    v19[3] = &unk_278E92638;
    v20 = v7;
    selfCopy = self;
    v22 = v8;
    dispatch_async(eventQueue, v19);
  }

  else if (!disposition)
  {
    if (v9)
    {
      eventQueue2 = [(MSASStateMachine *)self eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke;
      block[3] = &unk_278E92660;
      v29 = v7;
      selfCopy2 = self;
      v31 = v8;
      v32 = v10;
      dispatch_async(eventQueue2, block);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy3 = self;
        v35 = 2048;
        v36 = [v7 count];
        v37 = 2114;
        v38 = v8;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Reauthorizing %ld assets download from album %{public}@", buf, 0x20u);
      }

      protocol = [(MSASStateMachine *)self protocol];
      stopHandlerBlock = [protocol stopHandlerBlock];
      [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

      objc_initWeak(buf, self);
      delegate = [(MSASStateMachine *)self delegate];
      gUID = [v8 GUID];
      v17 = [delegate MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:gUID info:0];

      protocol2 = [(MSASStateMachine *)self protocol];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_315;
      v23[3] = &unk_278E917E8;
      v23[4] = self;
      objc_copyWeak(&v27, buf);
      v24 = paramsCopy;
      v25 = v8;
      v26 = v7;
      [protocol2 getTokensForAssets:v26 inAlbum:v25 albumURLString:v17 completionBlock:v23];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }
  }
}

void __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [*(a1 + 40) delegate];
        [v8 MSASStateMachine:*(a1 + 40) didFinishRetrievingAsset:v7 inAlbum:*(a1 + 48) error:*(a1 + 56)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_315(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] workQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_2;
  v18[3] = &unk_278E91268;
  v19 = v7;
  v11 = v7;
  objc_copyWeak(&v24, a1 + 8);
  v12 = a1[5];
  v13 = a1[6];
  *&v14 = a1[7];
  *(&v14 + 1) = a1[4];
  *&v15 = v12;
  *(&v15 + 1) = v13;
  v20 = v15;
  v21 = v14;
  v22 = v9;
  v23 = v8;
  v16 = v8;
  v17 = v9;
  dispatch_async(v10, v18);

  objc_destroyWeak(&v24);
}

void __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_319(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = [*(a1 + 40) delegate];
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        v11 = [v9 _canceledError];
        [v8 MSASStateMachine:v9 didFinishRetrievingAsset:v6 inAlbum:v10 error:v11];

        objc_autoreleasePoolPop(v7);
      }

      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }
}

void __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_2(uint64_t a1)
{
  v118 = *MEMORY[0x277D85DE8];
  v76 = [MEMORY[0x277CBEB38] dictionary];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v2 = *(a1 + 32);
    v3 = NSStringFromSelector(sel__sendReauthorizeAssetsForDownloadDisposition_params_);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) GUID];
    LOBYTE(v2) = [WeakRetained workQueueEndCommandWithError:v2 command:v3 params:v4 albumGUID:v5 assetCollectionGUID:0];

    if (v2)
    {
      v75 = 0;
      goto LABEL_49;
    }

    v49 = a1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v71 = objc_loadWeakRetained((a1 + 88));
      v72 = [*(a1 + 56) count];
      v73 = *(a1 + 48);
      v74 = [*(a1 + 32) MSVerboseDescription];
      *buf = 138544130;
      v111 = v71;
      v112 = 2048;
      v113 = v72;
      v114 = 2114;
      v115 = v73;
      v116 = 2114;
      v117 = v74;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to authorize %ld assets in album %{public}@. Error: %{public}@", buf, 0x2Au);

      v49 = a1;
    }

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v50 = *(v49 + 56);
    v51 = [v50 countByEnumeratingWithState:&v101 objects:v109 count:16];
    if (v51)
    {
      v52 = *v102;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v102 != v52)
          {
            objc_enumerationMutation(v50);
          }

          [v76 setObject:*(a1 + 32) forKey:*(*(&v101 + 1) + 8 * i)];
        }

        v51 = [v50 countByEnumeratingWithState:&v101 objects:v109 count:16];
      }

      while (v51);
    }
  }

  else
  {
    v6 = [*(a1 + 64) memberQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_316;
    block[3] = &unk_278E926D8;
    block[4] = *(a1 + 64);
    dispatch_barrier_sync(v6, block);

    v7 = [*(a1 + 64) eventQueue];
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_2_317;
    v98[3] = &unk_278E90E70;
    objc_copyWeak(&v99, (a1 + 88));
    dispatch_async(v7, v98);

    [v76 addEntriesFromDictionary:*(a1 + 72)];
    if ([*(a1 + 72) count])
    {
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v8 = *(a1 + 72);
      v9 = [v8 countByEnumeratingWithState:&v94 objects:v108 count:16];
      if (v9)
      {
        v10 = *v95;
        v11 = MEMORY[0x277D86220];
        do
        {
          v12 = 0;
          do
          {
            if (*v95 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v94 + 1) + 8 * v12);
            v14 = v11;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v15 = objc_loadWeakRetained((a1 + 88));
              v16 = [v13 GUID];
              *buf = 138543618;
              v111 = v15;
              v112 = 2114;
              v113 = v16;
              _os_log_error_impl(&dword_245B99000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to reauthorize asset GUID %{public}@ for redownload.", buf, 0x16u);
            }

            ++v12;
          }

          while (v9 != v12);
          v9 = [v8 countByEnumeratingWithState:&v94 objects:v108 count:16];
        }

        while (v9);
      }
    }

    if ([*(a1 + 80) count])
    {
      v17 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_loadWeakRetained((a1 + 88));
        v20 = [*(a1 + 80) count];
        *buf = 138543618;
        v111 = v19;
        v112 = 2048;
        v113 = v20;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully reauthorized the download of %ld assets. Trying download again.", buf, 0x16u);
      }

      v21 = MSASPlatform();
      v22 = [v21 shouldLogAtLevel:7];

      if (v22)
      {
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v23 = *(a1 + 80);
        v24 = [v23 countByEnumeratingWithState:&v90 objects:v107 count:16];
        if (v24)
        {
          v25 = *v91;
          v26 = MEMORY[0x277D86220];
          do
          {
            v27 = 0;
            do
            {
              if (*v91 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v90 + 1) + 8 * v27);
              v29 = v26;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                v30 = [v28 GUID];
                *buf = 138543362;
                v111 = v30;
                _os_log_debug_impl(&dword_245B99000, v26, OS_LOG_TYPE_DEBUG, " ...Asset GUID %{public}@", buf, 0xCu);
              }

              ++v27;
            }

            while (v24 != v27);
            v24 = [v23 countByEnumeratingWithState:&v90 objects:v107 count:16];
          }

          while (v24);
        }
      }

      v31 = objc_loadWeakRetained((a1 + 88));
      v32 = [v31 _model];
      [v32 beginTransaction];

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v33 = a1;
      v34 = *(a1 + 80);
      v35 = [v34 countByEnumeratingWithState:&v86 objects:v106 count:16];
      if (v35)
      {
        v36 = *v87;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v87 != v36)
            {
              objc_enumerationMutation(v34);
            }

            v38 = *(*(&v86 + 1) + 8 * j);
            v39 = objc_loadWeakRetained((v33 + 88));
            v40 = [v39 _model];
            v41 = [*(a1 + 48) GUID];
            [v40 enqueueAssetForDownload:v38 inAlbumWithGUID:v41];

            v42 = objc_loadWeakRetained((a1 + 88));
            v43 = [v42 _assetDownloader];
            v44 = [*(a1 + 48) GUID];
            [v43 didEnqueueAsset:v38 forAlbumGUID:v44];

            v33 = a1;
          }

          v35 = [v34 countByEnumeratingWithState:&v86 objects:v106 count:16];
        }

        while (v35);
      }

      v45 = objc_loadWeakRetained((a1 + 88));
      v46 = [v45 _model];
      [v46 endTransaction];

      v47 = objc_loadWeakRetained((a1 + 88));
      v48 = [v47 _assetDownloader];
      [v48 retryOutstandingActivities];
    }

    objc_destroyWeak(&v99);
  }

  v75 = 1;
LABEL_49:
  if ([v76 count])
  {
    v54 = [*(a1 + 64) eventQueue];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_318;
    v82[3] = &unk_278E917C0;
    v55 = v76;
    v83 = v55;
    objc_copyWeak(&v85, (a1 + 88));
    v84 = *(a1 + 48);
    dispatch_async(v54, v82);

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v56 = v55;
    v57 = [v56 countByEnumeratingWithState:&v78 objects:v105 count:16];
    if (v57)
    {
      v58 = *v79;
      v59 = MEMORY[0x277D86220];
      do
      {
        v60 = 0;
        do
        {
          if (*v79 != v58)
          {
            objc_enumerationMutation(v56);
          }

          v61 = *(*(&v78 + 1) + 8 * v60);
          v62 = objc_autoreleasePoolPush();
          v63 = [v56 objectForKey:v61];
          v64 = v59;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v65 = objc_loadWeakRetained((a1 + 88));
            v66 = [v63 MSVerboseDescription];
            *buf = 138543874;
            v111 = v65;
            v112 = 2114;
            v113 = v61;
            v114 = 2114;
            v115 = v66;
            _os_log_error_impl(&dword_245B99000, v59, OS_LOG_TYPE_ERROR, "%{public}@: Failed to reauthorize asset %{public}@. Error: %{public}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v62);
          ++v60;
        }

        while (v57 != v60);
        v57 = [v56 countByEnumeratingWithState:&v78 objects:v105 count:16];
      }

      while (v57);
    }

    v67 = objc_loadWeakRetained((a1 + 88));
    v68 = [v67 _assetDownloader];
    v69 = [v56 allKeys];
    [v68 unregisterAssets:v69];

    objc_destroyWeak(&v85);
  }

  if (v75)
  {
    v70 = objc_loadWeakRetained((a1 + 88));
    [v70 workQueueDidFinishCommand];
  }
}

void __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_2_317(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained daemon];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 personID];
  [v2 didReceiveAuthSuccessForPersonID:v4];
}

void __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_318(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [*(a1 + 32) objectForKey:{v7, v12}];
        WeakRetained = objc_loadWeakRetained((a1 + 48));
        v10 = [WeakRetained delegate];
        v11 = objc_loadWeakRetained((a1 + 48));
        [v10 MSASStateMachine:v11 didFinishRetrievingAsset:v7 inAlbum:*(a1 + 40) error:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (void)workQueueScheduleReauthForAssets:(id)assets inAlbum:(id)album
{
  v20 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  albumCopy = album;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = 138543874;
    selfCopy = self;
    v16 = 2048;
    v17 = [assetsCopy count];
    v18 = 2114;
    v19 = albumCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling reauthorization for %ld items in album %{public}@", &v14, 0x20u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = dictionary;
  if (albumCopy)
  {
    [dictionary setObject:albumCopy forKey:@"album"];
  }

  if (assetsCopy)
  {
    [v9 setObject:assetsCopy forKey:@"assets"];
  }

  _model = [(MSASStateMachine *)self _model];
  v11 = NSStringFromSelector(sel__sendReauthorizeAssetsForDownloadDisposition_params_);
  personID = [(MSASStateMachine *)self personID];
  gUID = [albumCopy GUID];
  [_model enqueueCommandAtHeadOfQueue:v11 params:v9 personID:personID albumGUID:gUID assetCollectionGUID:0];

  [(MSASStateMachine *)self workQueueRetryOutstandingActivities];
}

- (void)MSASAssetDownloader:(id)downloader didFinishDownloadingAsset:(id)asset inAlbumGUID:(id)d error:(id)error
{
  assetCopy = asset;
  dCopy = d;
  errorCopy = error;
  workQueue = [(MSASStateMachine *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__MSASStateMachine_MSASAssetDownloader_didFinishDownloadingAsset_inAlbumGUID_error___block_invoke;
  v16[3] = &unk_278E92660;
  v16[4] = self;
  v17 = dCopy;
  v18 = errorCopy;
  v19 = assetCopy;
  v13 = assetCopy;
  v14 = errorCopy;
  v15 = dCopy;
  dispatch_async(workQueue, v16);
}

void __84__MSASStateMachine_MSASAssetDownloader_didFinishDownloadingAsset_inAlbumGUID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 MSASStateMachineDidRequestAlbumWithGUID:*(a1 + 40)];

  if (([*(a1 + 48) MMCSIsAuthorizationError] & 1) != 0 || (objc_msgSend(*(a1 + 48), "MSContainsErrorWithDomain:code:", @"MSASAssetTransferErrorDomain", 2) & 1) != 0 || objc_msgSend(*(a1 + 48), "MSContainsErrorWithDomain:code:", @"MSASAssetTransferErrorDomain", 1))
  {
    v4 = objc_alloc_init(MSASAssetInfoToReauthForDownload);
    [(MSASAssetInfoToReauthForDownload *)v4 setAsset:*(a1 + 56)];
    [(MSASAssetInfoToReauthForDownload *)v4 setAlbum:v3];
    v5 = [*(a1 + 32) _assetInfoToReauthForDownload];
    [v5 addObject:v4];
  }

  else
  {
    v6 = [*(a1 + 32) _assetDownloader];
    v7 = [MEMORY[0x277CBEA60] arrayWithObject:*(a1 + 56)];
    [v6 unregisterAssets:v7];

    v8 = [*(a1 + 32) eventQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __84__MSASStateMachine_MSASAssetDownloader_didFinishDownloadingAsset_inAlbumGUID_error___block_invoke_2;
    v9[3] = &unk_278E92660;
    v9[4] = *(a1 + 32);
    v10 = *(a1 + 56);
    v11 = v3;
    v12 = *(a1 + 48);
    dispatch_async(v8, v9);
  }
}

void __84__MSASStateMachine_MSASAssetDownloader_didFinishDownloadingAsset_inAlbumGUID_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishRetrievingAsset:*(a1 + 40) inAlbum:*(a1 + 48) error:*(a1 + 56)];
}

- (void)MSASAssetDownloader:(id)downloader willBeginBatchCount:(unint64_t)count
{
  v5 = [(MSASStateMachine *)self workQueue:downloader];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__MSASStateMachine_MSASAssetDownloader_willBeginBatchCount___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v5, block);
}

void __60__MSASStateMachine_MSASAssetDownloader_willBeginBatchCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEB18] array];
  [v1 _setAssetInfoToReauthForDownload:v2];
}

- (void)retrieveAssets:(id)assets inAlbumWithGUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    selfCopy = self;
    v16 = 2048;
    v17 = [assetsCopy count];
    v18 = 2114;
    v19 = dCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrieving %ld assets in albumGUID %{public}@.", buf, 0x20u);
  }

  _assetDownloader = [(MSASStateMachine *)self _assetDownloader];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__MSASStateMachine_retrieveAssets_inAlbumWithGUID___block_invoke;
  v11[3] = &unk_278E92638;
  v11[4] = self;
  v12 = assetsCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = assetsCopy;
  [_assetDownloader registerAssets:v10 completionBlock:v11];
}

void __51__MSASStateMachine_retrieveAssets_inAlbumWithGUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASStateMachine_retrieveAssets_inAlbumWithGUID___block_invoke_2;
  block[3] = &unk_278E92638;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __51__MSASStateMachine_retrieveAssets_inAlbumWithGUID___block_invoke_2(id *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] _model];
  [v2 beginTransaction];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a1[5];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = [a1[4] _model];
        [v9 enqueueAssetForDownload:v8 inAlbumWithGUID:a1[6]];

        v10 = [a1[4] _assetDownloader];
        [v10 didEnqueueAsset:v8 forAlbumGUID:a1[6]];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v11 = [a1[4] _model];
  [v11 endTransaction];

  v12 = [a1[4] eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASStateMachine_retrieveAssets_inAlbumWithGUID___block_invoke_3;
  block[3] = &unk_278E92638;
  v13 = a1[5];
  block[4] = a1[4];
  v16 = v13;
  v17 = a1[6];
  dispatch_async(v12, block);

  if (([a1[4] hasShutDown] & 1) == 0)
  {
    v14 = [a1[4] _assetDownloader];
    [v14 retryOutstandingActivities];
  }
}

void __51__MSASStateMachine_retrieveAssets_inAlbumWithGUID___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishEnqueueingAssetsForDownload:*(a1 + 40) inAlbumWithGUID:*(a1 + 48)];
}

- (void)MSASAssetUploader:(id)uploader didFinishUploadingAssetCollection:(id)collection intoAlbum:(id)album error:(id)error
{
  collectionCopy = collection;
  albumCopy = album;
  errorCopy = error;
  workQueue = [(MSASStateMachine *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__MSASStateMachine_MSASAssetUploader_didFinishUploadingAssetCollection_intoAlbum_error___block_invoke;
  v16[3] = &unk_278E92660;
  v16[4] = self;
  v17 = collectionCopy;
  v18 = albumCopy;
  v19 = errorCopy;
  v13 = errorCopy;
  v14 = albumCopy;
  v15 = collectionCopy;
  dispatch_async(workQueue, v16);
}

void __88__MSASStateMachine_MSASAssetUploader_didFinishUploadingAssetCollection_intoAlbum_error___block_invoke(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [a1[4] delegate];
  v4 = a1[4];
  v5 = [a1[5] GUID];
  LOBYTE(v4) = [v3 MSASStateMachine:v4 didQueryIsAssetCollectionWithGUIDInModel:v5];

  if (v4)
  {
    v6 = a1[7];
    if (v6)
    {
      if ([v6 MMCSIsAuthorizationError])
      {
        v7 = [MEMORY[0x277CBEB38] dictionary];
        v8 = v7;
        v9 = a1[6];
        if (v9)
        {
          [v7 setObject:v9 forKey:@"album"];
        }

        v10 = a1[5];
        if (v10)
        {
          [v8 setObject:v10 forKey:@"assetCollection"];
        }

        v11 = [a1[4] _model];
        v12 = NSStringFromSelector(sel__sendGetUploadTokensDisposition_params_);
        v13 = [a1[4] personID];
        v14 = [a1[6] GUID];
        [v11 enqueueCommand:v12 params:v8 personID:v13 albumGUID:v14 assetCollectionGUID:0];

        goto LABEL_17;
      }

      if ([a1[7] MSContainsErrorWithDomain:@"MSASAssetTransferErrorDomain" code:3])
      {
LABEL_16:
        [v2 setObject:a1[6] forKey:@"album"];
        v8 = [a1[4] _model];
        v11 = NSStringFromSelector(sel__sendUploadCompleteDisposition_params_);
        v12 = [a1[4] personID];
        v13 = [a1[6] GUID];
        [v8 enqueueCommandAtHeadOfQueue:v11 params:v2 personID:v12 albumGUID:v13 assetCollectionGUID:0];
LABEL_17:

        goto LABEL_18;
      }

      v21 = [MEMORY[0x277CBEB38] dictionary];
      [v21 setObject:a1[7] forKey:a1[5]];
      v22 = kMSASFailedAssetCollectionsAndErrorsKey;
    }

    else
    {
      v21 = [MEMORY[0x277CBEA60] arrayWithObject:a1[5]];
      v22 = &kMSASSuccessfulAssetCollectionsKey;
    }

    [v2 setObject:v21 forKey:*v22];

    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v23 = a1[4];
    v24 = [a1[5] GUID];
    v25 = 138543618;
    v26 = v23;
    v27 = 2114;
    v28 = v24;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: The uploaded asset collection GUID %{public}@ is no longer in the model. Discontiniuing upload.", &v25, 0x16u);
  }

  [a1[4] _deleteAssetFilesInAssetCollection:a1[5]];
  v8 = [a1[4] delegate];
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[6];
  v18 = MEMORY[0x277CCA9B8];
  v19 = MSCFCopyLocalizedString(@"ERROR_STATE_PHOTO_NOT_IN_MODEL");
  v20 = [v18 MSErrorWithDomain:@"MSASStateMachineErrorDomain" code:5 description:v19];
  [v8 MSASStateMachine:v15 didFinishAddingAssetCollection:v16 toAlbum:v17 info:0 error:v20];

LABEL_18:
  [a1[4] workQueueRetryOutstandingActivities];
}

- (void)_deleteAssetFilesInAssetCollections:(id)collections
{
  v14 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [collectionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(collectionsCopy);
        }

        [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [collectionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_deleteAssetFilesInAssetCollection:(id)collection
{
  v34 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    gUID = [collectionCopy GUID];
    *buf = 138543618;
    selfCopy3 = self;
    v29 = 2114;
    v30 = gUID;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Cleaning up files for asset collection %{public}@.", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = collectionCopy;
  assets = [collectionCopy assets];
  v6 = [assets countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    v9 = MEMORY[0x277D86220];
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(assets);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        path = [v11 path];

        if (path)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            path2 = [v11 path];
            *buf = 138543618;
            selfCopy3 = self;
            v29 = 2112;
            v30 = path2;
            _os_log_debug_impl(&dword_245B99000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: Deleting asset file: %@", buf, 0x16u);
          }

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          path3 = [v11 path];
          v22 = 0;
          [defaultManager removeItemAtPath:path3 error:&v22];
          v16 = v22;

          if (v16 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            path4 = [v11 path];
            mSVerboseDescription = [v16 MSVerboseDescription];
            *buf = 138543874;
            selfCopy3 = self;
            v29 = 2112;
            v30 = path4;
            v31 = 2114;
            v32 = mSVerboseDescription;
            _os_log_debug_impl(&dword_245B99000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: Failed to delete asset file at path %@. Error: %{public}@", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v7 != v10);
      v7 = [assets countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v7);
  }
}

- (void)videoURLsForAssetCollection:(id)collection forMediaAssetType:(unint64_t)type inAlbum:(id)album completionBlock:(id)block
{
  collectionCopy = collection;
  albumCopy = album;
  blockCopy = block;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke;
  block[3] = &unk_278E91A00;
  block[4] = self;
  v18 = collectionCopy;
  v20 = blockCopy;
  typeCopy = type;
  v19 = albumCopy;
  v14 = blockCopy;
  v15 = albumCopy;
  v16 = collectionCopy;
  dispatch_async(workQueue, block);
}

void __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke(id *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = a1[4];
    v3 = a1[5];
    *buf = 138543618;
    v35 = v2;
    v36 = 2114;
    v37 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Getting video URL for asset collection %{public}@.", buf, 0x16u);
  }

  v4 = [a1[4] delegate];
  v5 = [a1[6] GUID];
  v6 = [v4 MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:v5 info:0];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [a1[5] assets];
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = *v30;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v29 + 1) + 8 * v10);
      if ([v11 mediaAssetType] == a1[8])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v12 = v11;

    if (v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_11:
  }

  v13 = [a1[5] assets];
  v12 = [v13 lastObject];

LABEL_14:
  objc_initWeak(buf, a1[4]);
  v14 = [a1[4] protocol];
  v15 = [a1[5] GUID];
  v16 = [a1[6] GUID];
  v17 = [a1[6] clientOrgKey];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_304;
  v22[3] = &unk_278E91790;
  v22[4] = a1[4];
  v23 = a1[6];
  v18 = v6;
  v24 = v18;
  v19 = v12;
  v25 = v19;
  v20 = a1[5];
  v21 = a1[8];
  v26 = v20;
  v28[1] = v21;
  objc_copyWeak(v28, buf);
  v27 = a1[7];
  [v14 getVideoURL:v19 forAssetCollectionWithGUID:v15 inAlbumWithGUID:v16 albumURLString:v18 withClientOrgKey:v17 completionBlock:v22];

  objc_destroyWeak(v28);
  objc_destroyWeak(buf);
}

void __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_304(uint64_t a1, void *a2, void *a3, void *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && [v7 MSContainsErrorWithDomain:@"MSASProtocolErrorDomain" code:18])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = [v7 MSVerboseDescription];
      *buf = 138543618;
      v44 = v24;
      v45 = 2114;
      v46 = v25;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Encountered visitor authentication failure. Getting new album URL. Error: %{public}@", buf, 0x16u);
    }

    v10 = [*(a1 + 32) protocol];
    v11 = [*(a1 + 40) GUID];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_305;
    v36[3] = &unk_278E91768;
    v12 = *(a1 + 48);
    v28 = *(a1 + 32);
    v13 = v28.i64[1];
    v14 = *(a1 + 56);
    v15.i64[0] = v12;
    v15.i64[1] = v14;
    v16 = vzip2q_s64(v28, v15);
    v15.i64[1] = v28.i64[0];
    v38 = v16;
    v37 = v15;
    v17 = *(a1 + 64);
    v18 = *(a1 + 88);
    v39 = v17;
    v42[1] = v18;
    objc_copyWeak(v42, (a1 + 80));
    v40 = v7;
    v41 = *(a1 + 72);
    [v10 getAlbumURLForAlbumWithGUID:v11 completionBlock:v36];

    objc_destroyWeak(v42);
    WeakRetained = v37.i64[0];
  }

  else
  {
    if ([v8 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = *(a1 + 32);
        v21 = *(a1 + 64);
        v22 = *(a1 + 88);
        *buf = 138544386;
        v44 = v20;
        v45 = 2114;
        v46 = v8;
        v47 = 2114;
        v48 = v9;
        v49 = 2114;
        v50 = v21;
        v51 = 2048;
        v52 = v22;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Using video URLs %{public}@ with expiration %{public}@ for asset collection %{public}@ and media asset type %ld.", buf, 0x34u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      v27 = *(a1 + 64);
      *buf = 138543874;
      v44 = v26;
      v45 = 2114;
      v46 = v27;
      v47 = 2114;
      v48 = v7;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unable to get a working video URL for asset collection %{public}@. Error: %{public}@.", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v23 = [WeakRetained eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_308;
    block[3] = &unk_278E916A0;
    objc_copyWeak(&v35, (a1 + 80));
    v30 = v7;
    v31 = *(a1 + 40);
    v34 = *(a1 + 72);
    v32 = v8;
    v33 = v9;
    dispatch_async(v23, block);

    objc_destroyWeak(&v35);
  }
}

void __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_305(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6 || ([v6 isEqualToString:*(a1 + 32)] & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      *buf = 138543874;
      v29 = v19;
      v30 = 2114;
      v31 = v20;
      v32 = 2114;
      v33 = v5;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unable to get a new album URL for album %{public}@. Error: %{public}@.", buf, 0x20u);
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      *buf = 138543874;
      v29 = v8;
      v30 = 2114;
      v31 = v7;
      v32 = 2114;
      v33 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Requesting video URL using new album URL %{public}@ for album %{public}@.", buf, 0x20u);
    }

    v10 = [*(a1 + 40) delegate];
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) GUID];
    [v10 MSASStateMachine:v11 didFindNewURLString:v7 forAlbumWithGUID:v12 info:0];

    v13 = [*(a1 + 40) protocol];
    v21 = *(a1 + 56);
    v14 = [*(a1 + 64) GUID];
    v15 = [*(a1 + 48) GUID];
    v16 = [*(a1 + 48) clientOrgKey];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_306;
    v22[3] = &unk_278E91740;
    v22[4] = *(a1 + 40);
    v17 = *(a1 + 64);
    v18 = *(a1 + 96);
    v23 = v17;
    v27[1] = v18;
    objc_copyWeak(v27, (a1 + 88));
    v24 = *(a1 + 72);
    v25 = *(a1 + 48);
    v26 = *(a1 + 80);
    [v13 getVideoURL:v21 forAssetCollectionWithGUID:v14 inAlbumWithGUID:v15 albumURLString:v7 withClientOrgKey:v16 completionBlock:v22];

    objc_destroyWeak(v27);
  }
}

uint64_t __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_308(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _actionDidFinishWithError:*(a1 + 32) album:*(a1 + 40)];

  v3 = *(*(a1 + 64) + 16);

  return v3();
}

void __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_306(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 80);
      *buf = 138544386;
      v30 = v10;
      v31 = 2114;
      v32 = v8;
      v33 = 2114;
      v34 = v9;
      v35 = 2114;
      v36 = v11;
      v37 = 2048;
      v38 = v12;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Using video URLs %{public}@ with expiration %{public}@ for asset collection %{public}@ and media asset type %ld.", buf, 0x34u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    *buf = 138543874;
    v30 = v19;
    v31 = 2114;
    v32 = v20;
    v33 = 2114;
    v34 = v7;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unable to get a working video URL for asset collection %{public}@. Error: %{public}@.", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v14 = [WeakRetained eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_307;
  block[3] = &unk_278E91718;
  objc_copyWeak(&v28, (a1 + 72));
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v15 = *(a1 + 64);
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v27 = v15;
  v16 = v9;
  v17 = v8;
  v18 = v7;
  dispatch_async(v14, block);

  objc_destroyWeak(&v28);
}

uint64_t __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_307(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [WeakRetained _actionDidFinishWithError:*(a1 + 32) album:*(a1 + 40)];

  v3 = *(*(a1 + 72) + 16);

  return v3();
}

- (void)videoURLForAssetCollection:(id)collection inAlbum:(id)album completionBlock:(id)block
{
  collectionCopy = collection;
  albumCopy = album;
  blockCopy = block;
  workQueue = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__MSASStateMachine_videoURLForAssetCollection_inAlbum_completionBlock___block_invoke;
  v15[3] = &unk_278E916F0;
  v15[4] = self;
  v16 = collectionCopy;
  v17 = albumCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = albumCopy;
  v14 = collectionCopy;
  dispatch_async(workQueue, v15);
}

void __71__MSASStateMachine_videoURLForAssetCollection_inAlbum_completionBlock___block_invoke(id *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = a1[4];
    v3 = a1[5];
    *buf = 138543618;
    v36 = v2;
    v37 = 2114;
    v38 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Getting video URL for asset collection %{public}@.", buf, 0x16u);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [a1[5] assets];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        if ([v9 assetDataAvailableOnServer])
        {
          v10 = [v9 mediaAssetType];
          if (v10 == 6)
          {
            v11 = v9;

            v6 = v11;
          }

          else if (v10 == 7)
          {
            v12 = v9;

            v6 = v12;
            goto LABEL_15;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v5);
LABEL_15:

    if (v6)
    {
      v13 = [a1[4] delegate];
      v14 = [a1[6] GUID];
      v15 = [v13 MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:v14 info:0];

      objc_initWeak(buf, a1[4]);
      v16 = [a1[4] protocol];
      v17 = [a1[5] GUID];
      v18 = [a1[6] GUID];
      v19 = [a1[6] clientOrgKey];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __71__MSASStateMachine_videoURLForAssetCollection_inAlbum_completionBlock___block_invoke_298;
      v25[3] = &unk_278E916C8;
      v20 = a1[5];
      v25[4] = a1[4];
      v26 = v20;
      objc_copyWeak(&v29, buf);
      v27 = a1[6];
      v28 = a1[7];
      [v16 getVideoURL:v6 forAssetCollectionWithGUID:v17 inAlbumWithGUID:v18 albumURLString:v15 withClientOrgKey:v19 completionBlock:v25];

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);

      goto LABEL_21;
    }
  }

  else
  {
  }

  v21 = MEMORY[0x277CCA9B8];
  v22 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_CANNOT_GET_VIDEO");
  v6 = [v21 MSErrorWithDomain:@"MSASSubscriberErrorDomain" code:2 description:v22];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v23 = a1[4];
    v24 = a1[5];
    *buf = 138543618;
    v36 = v23;
    v37 = 2114;
    v38 = v24;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: No asset has been completely uploaded for asset collection %{public}@.", buf, 0x16u);
  }

  (*(a1[7] + 2))();
LABEL_21:
}

void __71__MSASStateMachine_videoURLForAssetCollection_inAlbum_completionBlock___block_invoke_298(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v10 = [v8 objectAtIndex:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138543874;
      v29 = v11;
      v30 = 2114;
      v31 = v10;
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Using video URL %{public}@ for asset collection %{public}@.", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138543874;
      v29 = v19;
      v30 = 2114;
      v31 = v20;
      v32 = 2114;
      v33 = v7;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unable to get a working video URL for asset collection %{public}@. Error:%{public}@", buf, 0x20u);
    }

    v10 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v14 = [WeakRetained eventQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__MSASStateMachine_videoURLForAssetCollection_inAlbum_completionBlock___block_invoke_299;
  v21[3] = &unk_278E916A0;
  objc_copyWeak(&v27, (a1 + 64));
  v22 = v7;
  v23 = *(a1 + 48);
  v15 = *(a1 + 56);
  v25 = v9;
  v26 = v15;
  v24 = v10;
  v16 = v9;
  v17 = v10;
  v18 = v7;
  dispatch_async(v14, v21);

  objc_destroyWeak(&v27);
}

uint64_t __71__MSASStateMachine_videoURLForAssetCollection_inAlbum_completionBlock___block_invoke_299(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _actionDidFinishWithError:*(a1 + 32) album:*(a1 + 40)];

  v3 = *(*(a1 + 64) + 16);

  return v3();
}

- (void)setMultipleContributorsEnabled:(BOOL)enabled forAlbum:(id)album info:(id)info completionBlock:(id)block
{
  albumCopy = album;
  infoCopy = info;
  blockCopy = block;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__MSASStateMachine_setMultipleContributorsEnabled_forAlbum_info_completionBlock___block_invoke;
  block[3] = &unk_278E91EB8;
  enabledCopy = enabled;
  block[4] = self;
  v18 = albumCopy;
  v19 = infoCopy;
  v20 = blockCopy;
  v14 = infoCopy;
  v15 = blockCopy;
  v16 = albumCopy;
  dispatch_async(workQueue, block);
}

void __81__MSASStateMachine_setMultipleContributorsEnabled_forAlbum_info_completionBlock___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 64))
    {
      v2 = @"Enabling";
    }

    else
    {
      v2 = @"Disabling";
    }

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543874;
    v14 = v3;
    v15 = 2114;
    v16 = v2;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: %{public}@ multiple contributors for album %{public}@.", buf, 0x20u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v5 = [*(a1 + 32) protocol];
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__MSASStateMachine_setMultipleContributorsEnabled_forAlbum_info_completionBlock___block_invoke_297;
  v8[3] = &unk_278E91678;
  objc_copyWeak(&v12, buf);
  v9 = *(a1 + 40);
  v11 = *(a1 + 56);
  v10 = *(a1 + 48);
  [v5 setMultipleContributorsEnabled:v7 & 1 forAlbum:v6 completionBlock:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __81__MSASStateMachine_setMultipleContributorsEnabled_forAlbum_info_completionBlock___block_invoke_297(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = [WeakRetained eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__MSASStateMachine_setMultipleContributorsEnabled_forAlbum_info_completionBlock___block_invoke_2;
  block[3] = &unk_278E91650;
  objc_copyWeak(&v12, a1 + 7);
  v8 = v3;
  v9 = a1[4];
  v11 = a1[6];
  v10 = a1[5];
  v6 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v12);
}

uint64_t __81__MSASStateMachine_setMultipleContributorsEnabled_forAlbum_info_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _actionDidFinishWithError:*(a1 + 32) album:*(a1 + 40)];

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

- (void)setPublicAccessEnabled:(BOOL)enabled forAlbum:(id)album info:(id)info completionBlock:(id)block
{
  albumCopy = album;
  infoCopy = info;
  blockCopy = block;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__MSASStateMachine_setPublicAccessEnabled_forAlbum_info_completionBlock___block_invoke;
  block[3] = &unk_278E91EB8;
  enabledCopy = enabled;
  block[4] = self;
  v18 = albumCopy;
  v19 = infoCopy;
  v20 = blockCopy;
  v14 = infoCopy;
  v15 = blockCopy;
  v16 = albumCopy;
  dispatch_async(workQueue, block);
}

void __73__MSASStateMachine_setPublicAccessEnabled_forAlbum_info_completionBlock___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 64))
    {
      v2 = @"Enabling";
    }

    else
    {
      v2 = @"Disabling";
    }

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543874;
    v14 = v3;
    v15 = 2114;
    v16 = v2;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: %{public}@ public URL sharing for album %{public}@.", buf, 0x20u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v5 = [*(a1 + 32) protocol];
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__MSASStateMachine_setPublicAccessEnabled_forAlbum_info_completionBlock___block_invoke_296;
  v8[3] = &unk_278E91678;
  objc_copyWeak(&v12, buf);
  v9 = *(a1 + 40);
  v11 = *(a1 + 56);
  v10 = *(a1 + 48);
  [v5 setPublicAccessEnabled:v7 & 1 forAlbum:v6 completionBlock:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __73__MSASStateMachine_setPublicAccessEnabled_forAlbum_info_completionBlock___block_invoke_296(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = [WeakRetained eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__MSASStateMachine_setPublicAccessEnabled_forAlbum_info_completionBlock___block_invoke_2;
  block[3] = &unk_278E91650;
  objc_copyWeak(&v12, a1 + 7);
  v8 = v3;
  v9 = a1[4];
  v11 = a1[6];
  v10 = a1[5];
  v6 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v12);
}

uint64_t __73__MSASStateMachine_setPublicAccessEnabled_forAlbum_info_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _actionDidFinishWithError:*(a1 + 32) album:*(a1 + 40)];

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

- (void)_scheduleEventDisposition:(int)disposition params:(id)params
{
  v25 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [paramsCopy objectForKey:@"event"];
  v8 = [paramsCopy objectForKey:@"assetCollectionGUID"];
  v9 = [paramsCopy objectForKey:@"albumGUID"];
  v10 = [paramsCopy objectForKey:@"info"];

  if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      selfCopy = self;
      v19 = 2114;
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Event fired: %{public}@ for assetCollectionGUID: %{public}@, albumGUID: %{public}@", buf, 0x2Au);
    }

    eventQueue = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__MSASStateMachine__scheduleEventDisposition_params___block_invoke;
    block[3] = &unk_278E92688;
    block[4] = self;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    dispatch_async(eventQueue, block);

    [(MSASStateMachine *)self workQueueDidFinishCommand];
  }
}

void __53__MSASStateMachine__scheduleEventDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFireScheduledEvent:*(a1 + 40) forAssetCollectionGUID:*(a1 + 48) albumGUID:*(a1 + 56) info:*(a1 + 64)];
}

- (void)scheduleEvent:(id)event assetCollectionGUID:(id)d albumGUID:(id)iD info:(id)info
{
  v32 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dCopy = d;
  iDCopy = iD;
  infoCopy = info;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138544130;
    selfCopy = self;
    v26 = 2114;
    v27 = eventCopy;
    v28 = 2114;
    v29 = dCopy;
    v30 = 2114;
    v31 = iDCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling event to fire: %{public}@, asset collection GUID: %{public}@ album GUID: %{public}@", buf, 0x2Au);
  }

  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__MSASStateMachine_scheduleEvent_assetCollectionGUID_albumGUID_info___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v20 = eventCopy;
  v21 = dCopy;
  v22 = iDCopy;
  v23 = infoCopy;
  v15 = infoCopy;
  v16 = iDCopy;
  v17 = dCopy;
  v18 = eventCopy;
  dispatch_async(workQueue, block);
}

void __69__MSASStateMachine_scheduleEvent_assetCollectionGUID_albumGUID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _model];
  [v2 beginTransaction];

  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = *(a1 + 40);
  v12 = v3;
  if (v4)
  {
    [v3 setObject:v4 forKey:@"event"];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    [v12 setObject:v5 forKey:@"assetCollectionGUID"];
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    [v12 setObject:v6 forKey:@"albumGUID"];
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    [v12 setObject:v7 forKey:@"info"];
  }

  v8 = [*(a1 + 32) _model];
  v9 = NSStringFromSelector(sel__scheduleEventDisposition_params_);
  v10 = [*(a1 + 32) personID];
  [v8 enqueueCommand:v9 params:v12 personID:v10 albumGUID:*(a1 + 56) assetCollectionGUID:*(a1 + 48)];

  v11 = [*(a1 + 32) _model];
  [v11 endTransaction];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)_addCommentDisposition:(int)disposition params:(id)params
{
  v48 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v21 = [paramsCopy objectForKey:@"comment"];
  v7 = [paramsCopy objectForKey:@"assetCollection"];
  v8 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v9 = [paramsCopy objectForKey:@"info"];
  v10 = [paramsCopy objectForKey:@"error"];
  v11 = v10;
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __50__MSASStateMachine__addCommentDisposition_params___block_invoke_3;
    v22[3] = &unk_278E92688;
    v22[4] = self;
    v23 = v21;
    v24 = v7;
    v25 = v8;
    v26 = v9;
    dispatch_async(eventQueue, v22);
  }

  else if (!disposition)
  {
    if (v10)
    {
      eventQueue2 = [(MSASStateMachine *)self eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__MSASStateMachine__addCommentDisposition_params___block_invoke;
      block[3] = &unk_278E92048;
      block[4] = self;
      v35 = v21;
      v36 = v7;
      v37 = v8;
      v38 = v9;
      v39 = v11;
      dispatch_async(eventQueue2, block);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        gUID = [v7 GUID];
        *buf = 138544130;
        selfCopy = self;
        v42 = 2114;
        v43 = v21;
        v44 = 2114;
        v45 = gUID;
        v46 = 2114;
        v47 = v8;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Adding comment %{public}@ to asset collection %{public}@ in album %{public}@.", buf, 0x2Au);
      }

      protocol = [(MSASStateMachine *)self protocol];
      stopHandlerBlock = [protocol stopHandlerBlock];
      [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

      objc_initWeak(buf, self);
      delegate = [(MSASStateMachine *)self delegate];
      gUID2 = [v8 GUID];
      v19 = [delegate MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:gUID2 info:v9];

      protocol2 = [(MSASStateMachine *)self protocol];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __50__MSASStateMachine__addCommentDisposition_params___block_invoke_283;
      v27[3] = &unk_278E91620;
      objc_copyWeak(&v33, buf);
      v28 = paramsCopy;
      v29 = v8;
      v30 = v7;
      v31 = v21;
      v32 = v9;
      [protocol2 addComment:v31 toAssetCollection:v30 inAlbum:v29 albumURLString:v19 completionBlock:v27];

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
    }
  }
}

void __50__MSASStateMachine__addCommentDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishAddingComment:*(a1 + 40) toAssetCollection:*(a1 + 48) inAlbum:*(a1 + 56) info:*(a1 + 64) error:*(a1 + 72)];
}

void __50__MSASStateMachine__addCommentDisposition_params___block_invoke_283(id *a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v7 = [WeakRetained workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSASStateMachine__addCommentDisposition_params___block_invoke_2;
  block[3] = &unk_278E915F8;
  v17 = v5;
  v18 = WeakRetained;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v19 = v13;
  v20 = v12;
  v21 = a1[8];
  v14 = WeakRetained;
  v15 = v5;
  objc_copyWeak(&v22, a1 + 9);
  v23 = a3;
  dispatch_async(v7, block);

  objc_destroyWeak(&v22);
}

void __50__MSASStateMachine__addCommentDisposition_params___block_invoke_3(uint64_t a1)
{
  v8 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = [v2 _canceledError];
  [v8 MSASStateMachine:v2 didFinishAddingComment:v3 toAssetCollection:v4 inAlbum:v5 info:v6 error:v7];
}

void __50__MSASStateMachine__addCommentDisposition_params___block_invoke_2(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = NSStringFromSelector(sel__addCommentDisposition_params_);
    v5 = *(a1 + 48);
    v6 = [*(a1 + 56) GUID];
    v7 = [*(a1 + 64) GUID];
    v8 = [v3 workQueueEndCommandWithError:v2 command:v4 params:v5 albumGUID:v6 assetCollectionGUID:v7];

    if (v8)
    {
      return;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 64);
      v23 = *(a1 + 72);
      v25 = *(a1 + 56);
      v26 = *(a1 + 40);
      v27 = [*(a1 + 32) MSVerboseDescription];
      *buf = 138544386;
      v44 = v26;
      v45 = 2114;
      v46 = v23;
      v47 = 2114;
      v48 = v24;
      v49 = 2114;
      v50 = v25;
      v51 = 2114;
      v52 = v27;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to add comment %{public}@ to asset collection %{public}@ in album %{public}@. Error: %{public}@", buf, 0x34u);
    }

    v9 = [*(a1 + 40) eventQueue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __50__MSASStateMachine__addCommentDisposition_params___block_invoke_284;
    v36[3] = &unk_278E92048;
    v10 = &v37;
    v37 = *(a1 + 40);
    v11 = &v38;
    v38 = *(a1 + 72);
    v12 = &v39;
    v39 = *(a1 + 64);
    v13 = &v40;
    v40 = *(a1 + 56);
    v14 = &v41;
    v41 = *(a1 + 80);
    v15 = &v42;
    v42 = *(a1 + 32);
    v16 = v36;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 40);
      v19 = *(a1 + 64);
      v18 = *(a1 + 72);
      v20 = *(a1 + 56);
      *buf = 138544130;
      v44 = v17;
      v45 = 2114;
      v46 = v18;
      v47 = 2114;
      v48 = v19;
      v49 = 2114;
      v50 = v20;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Finished adding comment %{public}@ to asset collection %{public}@ in album %{public}@.", buf, 0x2Au);
    }

    [*(a1 + 72) setID:*(a1 + 96)];
    v21 = [*(a1 + 40) memberQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__MSASStateMachine__addCommentDisposition_params___block_invoke_285;
    block[3] = &unk_278E926D8;
    v10 = &v35;
    v35 = *(a1 + 40);
    dispatch_barrier_sync(v21, block);

    v9 = [*(a1 + 40) eventQueue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __50__MSASStateMachine__addCommentDisposition_params___block_invoke_2_286;
    v28[3] = &unk_278E92688;
    v11 = &v29;
    v29 = *(a1 + 40);
    v12 = &v30;
    v30 = *(a1 + 72);
    v13 = &v31;
    v31 = *(a1 + 64);
    v14 = &v32;
    v32 = *(a1 + 56);
    v15 = &v33;
    v33 = *(a1 + 80);
    v16 = v28;
  }

  dispatch_async(v9, v16);

  WeakRetained = objc_loadWeakRetained((a1 + 88));
  [WeakRetained workQueueDidFinishCommand];
}

void __50__MSASStateMachine__addCommentDisposition_params___block_invoke_284(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishAddingComment:*(a1 + 40) toAssetCollection:*(a1 + 48) inAlbum:*(a1 + 56) info:*(a1 + 64) error:*(a1 + 72)];
}

void __50__MSASStateMachine__addCommentDisposition_params___block_invoke_285(uint64_t a1)
{
  v1 = [*(a1 + 32) memberQueueMetadataBackoffManager];
  [v1 reset];
}

void __50__MSASStateMachine__addCommentDisposition_params___block_invoke_2_286(uint64_t a1)
{
  v2 = [*(a1 + 32) daemon];
  v3 = [*(a1 + 32) personID];
  [v2 didReceiveAuthSuccessForPersonID:v3];

  v4 = [*(a1 + 32) delegate];
  [v4 MSASStateMachine:*(a1 + 32) didFinishAddingComment:*(a1 + 40) toAssetCollection:*(a1 + 48) inAlbum:*(a1 + 56) info:*(a1 + 64) error:0];
}

- (void)addComments:(id)comments toAssetCollection:(id)collection inAlbum:(id)album info:(id)info
{
  commentsCopy = comments;
  collectionCopy = collection;
  albumCopy = album;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSASStateMachine_addComments_toAssetCollection_inAlbum_info___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v20 = commentsCopy;
  v21 = collectionCopy;
  v22 = albumCopy;
  v23 = infoCopy;
  v15 = infoCopy;
  v16 = albumCopy;
  v17 = collectionCopy;
  v18 = commentsCopy;
  dispatch_async(workQueue, block);
}

uint64_t __63__MSASStateMachine_addComments_toAssetCollection_inAlbum_info___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) count];
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    *buf = 138544130;
    v30 = v2;
    v31 = 2048;
    v32 = v3;
    v33 = 2114;
    v34 = v4;
    v35 = 2114;
    v36 = v5;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling the addition of %ld comments to asset collection %{public}@ in album %{public}@.", buf, 0x2Au);
  }

  v6 = [*(a1 + 32) _model];
  [v6 beginTransaction];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 40);
  v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v23 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = [MEMORY[0x277CBEB38] dictionary];
        [v11 setObject:v10 forKey:@"comment"];
        v12 = *(a1 + 48);
        if (v12)
        {
          [v11 setObject:v12 forKey:@"assetCollection"];
        }

        v13 = *(a1 + 56);
        if (v13)
        {
          [v11 setObject:v13 forKey:@"album"];
        }

        v14 = *(a1 + 64);
        if (v14)
        {
          [v11 setObject:v14 forKey:@"info"];
        }

        v15 = [*(a1 + 32) _model];
        v16 = NSStringFromSelector(sel__addCommentDisposition_params_);
        v17 = [*(a1 + 32) personID];
        v18 = [*(a1 + 56) GUID];
        v19 = [*(a1 + 48) GUID];
        [v15 enqueueCommand:v16 params:v11 personID:v17 albumGUID:v18 pendingOnAssetCollectionGUID:v19];

        ++v9;
      }

      while (v8 != v9);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v20 = [*(a1 + 32) _model];
  [v20 endTransaction];

  return [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)_removeSharingRelationshipsDisposition:(int)disposition params:(id)params
{
  v31 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [paramsCopy objectForKey:@"sharingRelationships"];
  v8 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v9 = [paramsCopy objectForKey:@"info"];
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_3;
    v14[3] = &unk_278E92660;
    v15 = v7;
    selfCopy = self;
    v17 = v8;
    v18 = v9;
    dispatch_async(eventQueue, v14);
  }

  else if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v27 = 2048;
      v28 = [v7 count];
      v29 = 2114;
      v30 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Removing %ld sharing relationships from album %{public}@", buf, 0x20u);
    }

    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    objc_initWeak(buf, self);
    protocol2 = [(MSASStateMachine *)self protocol];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke;
    v19[3] = &unk_278E915D0;
    v19[4] = self;
    objc_copyWeak(&v24, buf);
    v20 = paramsCopy;
    v21 = v8;
    v22 = v7;
    v23 = v9;
    [protocol2 removeSharingRelationships:v22 fromAlbum:v21 completionBlock:v19];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }
}

void __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_2;
  block[3] = &unk_278E913F0;
  v13 = v3;
  v5 = v3;
  objc_copyWeak(&v17, a1 + 9);
  v6 = a1[5];
  v7 = a1[6];
  v11 = a1[4];
  v8 = a1[7];
  *&v9 = v11;
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v14 = v10;
  v15 = v9;
  v16 = a1[8];
  dispatch_async(v4, block);

  objc_destroyWeak(&v17);
}

void __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [*(a1 + 40) delegate];
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = *(a1 + 56);
        v11 = [v8 _canceledError];
        [v7 MSASStateMachine:v8 didFinishRemovingSharingRelationship:v6 fromOwnedAlbum:v9 info:v10 error:v11];
      }

      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }
}

void __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v3 = [WeakRetained workQueueEndCommandWithError:*(a1 + 32) command:0 params:*(a1 + 40) albumGUID:0 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v15 = objc_loadWeakRetained((a1 + 80));
        v16 = *(a1 + 48);
        v17 = *(a1 + 32);
        *buf = 138543874;
        v30 = v15;
        v31 = 2114;
        v32 = v16;
        v33 = 2114;
        v34 = v17;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to remove sharing relationships from album %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v4 = [*(a1 + 56) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_278;
      block[3] = &unk_278E911B0;
      v24 = *(a1 + 64);
      objc_copyWeak(&v28, (a1 + 80));
      v25 = *(a1 + 48);
      v26 = *(a1 + 72);
      v27 = *(a1 + 32);
      dispatch_async(v4, block);

      v5 = objc_loadWeakRetained((a1 + 80));
      [v5 workQueueDidFinishCommand];

      objc_destroyWeak(&v28);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = objc_loadWeakRetained((a1 + 80));
      v7 = *(a1 + 48);
      *buf = 138543618;
      v30 = v6;
      v31 = 2114;
      v32 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully removed sharing relationships from album %{public}@", buf, 0x16u);
    }

    v8 = [*(a1 + 56) memberQueue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_279;
    v22[3] = &unk_278E926D8;
    v22[4] = *(a1 + 56);
    dispatch_barrier_sync(v8, v22);

    v9 = [*(a1 + 56) eventQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_2_280;
    v18[3] = &unk_278E911B0;
    objc_copyWeak(&v21, (a1 + 80));
    v10 = *(a1 + 64);
    v11 = *(a1 + 48);
    *&v12 = *(a1 + 72);
    *(&v12 + 1) = *(a1 + 56);
    *&v13 = v10;
    *(&v13 + 1) = v11;
    v19 = v13;
    v20 = v12;
    dispatch_async(v9, v18);

    v14 = objc_loadWeakRetained((a1 + 80));
    [v14 workQueueDidFinishCommand];

    objc_destroyWeak(&v21);
  }
}

void __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_278(uint64_t a1)
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
        WeakRetained = objc_loadWeakRetained((a1 + 64));
        v9 = [WeakRetained delegate];
        v10 = objc_loadWeakRetained((a1 + 64));
        [v9 MSASStateMachine:v10 didFinishRemovingSharingRelationship:v7 fromOwnedAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_2_280(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 64));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = objc_loadWeakRetained((a1 + 64));
        v13 = [v12 delegate];
        v14 = objc_loadWeakRetained((a1 + 64));
        [v13 MSASStateMachine:v14 didFinishRemovingSharingRelationship:v11 fromOwnedAlbum:*(a1 + 40) info:*(a1 + 48) error:0];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = [*(a1 + 56) phoneInvitations];
  [v15 removeSharingRelationships:*(a1 + 32) forAlbum:*(a1 + 40)];
}

- (void)removeSharingRelationships:(id)relationships fromOwnedAlbum:(id)album info:(id)info
{
  relationshipsCopy = relationships;
  albumCopy = album;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__MSASStateMachine_removeSharingRelationships_fromOwnedAlbum_info___block_invoke;
  v15[3] = &unk_278E92660;
  v16 = relationshipsCopy;
  v17 = albumCopy;
  v18 = infoCopy;
  selfCopy = self;
  v12 = infoCopy;
  v13 = albumCopy;
  v14 = relationshipsCopy;
  dispatch_async(workQueue, v15);
}

void __67__MSASStateMachine_removeSharingRelationships_fromOwnedAlbum_info___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKey:@"sharingRelationships"];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [v3 setObject:v5 forKey:@"album"];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    [v3 setObject:v6 forKey:@"info"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling removal of sharing relationships %@ from album %{public}@", &v14, 0x20u);
  }

  v10 = [*(a1 + 56) _model];
  v11 = NSStringFromSelector(sel__removeSharingRelationshipsDisposition_params_);
  v12 = [*(a1 + 56) personID];
  v13 = [*(a1 + 40) GUID];
  [v10 enqueueCommand:v11 params:v3 personID:v12 albumGUID:v13 assetCollectionGUID:0];

  [*(a1 + 56) workQueueRetryOutstandingActivities];
}

- (void)addSharingRelationships:(id)relationships toOwnedAlbum:(id)album info:(id)info completionBlock:(id)block
{
  relationshipsCopy = relationships;
  albumCopy = album;
  infoCopy = info;
  blockCopy = block;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke;
  block[3] = &unk_278E921D0;
  block[4] = self;
  v20 = relationshipsCopy;
  v21 = albumCopy;
  v22 = infoCopy;
  v23 = blockCopy;
  v15 = blockCopy;
  v16 = infoCopy;
  v17 = albumCopy;
  v18 = relationshipsCopy;
  dispatch_async(workQueue, block);
}

void __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke(id *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = a1[4];
    v3 = [a1[5] count];
    v4 = a1[6];
    *buf = 138543874;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    v22 = 2114;
    v23 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %ld sharing relationships to album %{public}@", buf, 0x20u);
  }

  objc_initWeak(buf, a1[4]);
  v5 = [a1[4] protocol];
  v6 = a1[5];
  v7 = a1[6];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_272;
  v14[3] = &unk_278E915A0;
  objc_copyWeak(&v17, buf);
  v8 = a1[6];
  v9 = a1[5];
  v10 = a1[7];
  v11 = a1[8];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v15 = v13;
  v16 = v12;
  [v5 addSharingRelationships:v6 toAlbum:v7 completionBlock:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_272(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v8 = [WeakRetained workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_2;
  v12[3] = &unk_278E91578;
  v13 = v5;
  v14 = WeakRetained;
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[6];
  v18 = v6;
  v9 = v6;
  v10 = WeakRetained;
  v11 = v5;
  objc_copyWeak(&v20, a1 + 8);
  v19 = a1[7];
  dispatch_async(v8, v12);

  objc_destroyWeak(&v20);
}

uint64_t __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_2(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 40);
      v26 = *(a1 + 48);
      *buf = 138543874;
      v38 = v25;
      v39 = 2114;
      v40 = v26;
      v41 = 2114;
      v42 = v2;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to add sharing relationships to album %{public}@. Error: %{public}@", buf, 0x20u);
    }

    v3 = [*(a1 + 40) eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_273;
    block[3] = &unk_278E92688;
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    *&v9 = v4;
    *(&v9 + 1) = v5;
    v34 = v9;
    v35 = v8;
    v36 = *(a1 + 32);
    dispatch_async(v3, block);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      *buf = 138543618;
      v38 = v10;
      v39 = 2114;
      v40 = v11;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully added sharing relationships to album %{public}@", buf, 0x16u);
    }

    if ([*(a1 + 72) count])
    {
      v12 = [*(a1 + 40) phoneInvitations];
      v13 = *(a1 + 72);
      v14 = *(a1 + 48);
      WeakRetained = objc_loadWeakRetained((a1 + 88));
      [v12 addPendingPhoneInvitations:v13 toOwnedAlbum:v14 inStateMachin:WeakRetained];
    }

    v16 = [*(a1 + 40) memberQueue];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_274;
    v31[3] = &unk_278E90E70;
    objc_copyWeak(&v32, (a1 + 88));
    dispatch_barrier_async(v16, v31);

    v17 = [*(a1 + 40) eventQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_2_275;
    v27[3] = &unk_278E92688;
    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    v20 = *(a1 + 48);
    v21 = *(a1 + 64);
    *&v22 = v20;
    *(&v22 + 1) = v21;
    *&v23 = v18;
    *(&v23 + 1) = v19;
    v28 = v23;
    v29 = v22;
    v30 = *(a1 + 32);
    dispatch_async(v17, v27);

    objc_destroyWeak(&v32);
  }

  return (*(*(a1 + 80) + 16))();
}

void __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_273(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishAddingSharingRelationships:*(a1 + 40) toOwnedAlbum:*(a1 + 48) info:*(a1 + 56) error:*(a1 + 64)];
}

void __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_274(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained memberQueueMetadataBackoffManager];
  [v1 reset];
}

void __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_2_275(uint64_t a1)
{
  v2 = [*(a1 + 32) daemon];
  v3 = [*(a1 + 32) personID];
  [v2 didReceiveAuthSuccessForPersonID:v3];

  v4 = [*(a1 + 32) delegate];
  [v4 MSASStateMachine:*(a1 + 32) didFinishAddingSharingRelationships:*(a1 + 40) toOwnedAlbum:*(a1 + 48) info:*(a1 + 56) error:*(a1 + 64)];
}

- (void)_sendGetUploadTokensDisposition:(int)disposition params:(id)params
{
  v49 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v31 = [paramsCopy objectForKey:@"assetCollection"];
  v30 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v29 = [paramsCopy objectForKey:@"info"];
  v7 = MEMORY[0x277CBEB18];
  assets = [v31 assets];
  v9 = [v7 arrayWithCapacity:{objc_msgSend(assets, "count")}];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  assets2 = [v31 assets];
  v11 = [assets2 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v11)
  {
    v12 = *v45;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(assets2);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        mMCSAccessHeader = [v14 MMCSAccessHeader];
        v16 = mMCSAccessHeader == 0;

        if (v16)
        {
          [v9 addObject:v14];
        }
      }

      v11 = [assets2 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v11);
  }

  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_3_271;
    block[3] = &unk_278E92660;
    block[4] = self;
    v26 = v31;
    v33 = v26;
    v34 = v30;
    v35 = v29;
    dispatch_async(eventQueue, block);

    _model = [(MSASStateMachine *)self _model];
    gUID = [v26 GUID];
    [_model requeuePendingAssetCollectionGUID:gUID];

    [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:v26];
  }

  else if (!disposition)
  {
    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    objc_initWeak(&location, self);
    delegate = [(MSASStateMachine *)self delegate];
    gUID2 = [v30 GUID];
    v21 = [delegate MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:gUID2 info:v29];

    protocol2 = [(MSASStateMachine *)self protocol];
    gUID3 = [v31 GUID];
    gUID4 = [v30 GUID];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke;
    v36[3] = &unk_278E91440;
    v36[4] = self;
    objc_copyWeak(&v42, &location);
    v37 = paramsCopy;
    v38 = v9;
    v39 = v31;
    v40 = v30;
    v41 = v29;
    [protocol2 getUploadTokens:v38 forAssetCollectionWithGUID:gUID3 inAlbumWithGUID:gUID4 albumURLString:v21 completionBlock:v36];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }
}

void __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_2;
  v10[3] = &unk_278E91268;
  v11 = v3;
  v5 = v3;
  objc_copyWeak(&v16, a1 + 10);
  v6 = a1[5];
  v7 = a1[6];
  *&v8 = a1[7];
  *(&v8 + 1) = a1[4];
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v12 = v9;
  v13 = v8;
  v14 = a1[8];
  v15 = a1[9];
  dispatch_async(v4, v10);

  objc_destroyWeak(&v16);
}

void __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_3_271(uint64_t a1)
{
  [*(a1 + 32) _deleteAssetFilesInAssetCollection:*(a1 + 40)];
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = [v2 _canceledError];
  [v7 MSASStateMachine:v2 didFinishAddingAssetCollection:v3 toAlbum:v5 info:v4 error:v6];
}

void __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_2(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v3 = *(a1 + 32);
    v4 = NSStringFromSelector(sel__sendGetUploadTokensDisposition_params_);
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v3 command:v4 params:*(a1 + 40) albumGUID:0 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v30 = objc_loadWeakRetained((a1 + 88));
        v31 = *(a1 + 48);
        v32 = [*(a1 + 32) MSVerboseDescription];
        *buf = 138543874;
        v46 = v30;
        v47 = 2114;
        v48 = v31;
        v49 = 2114;
        v50 = v32;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to get upload tokens for assets %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v5 = objc_loadWeakRetained((a1 + 88));
      [v5 _deleteAssetFilesInAssetCollection:*(a1 + 56)];

      v6 = [*(a1 + 64) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_267;
      block[3] = &unk_278E911B0;
      objc_copyWeak(&v44, (a1 + 88));
      v40 = *(a1 + 56);
      v41 = *(a1 + 72);
      v42 = *(a1 + 80);
      v43 = *(a1 + 32);
      dispatch_async(v6, block);

      v7 = objc_loadWeakRetained((a1 + 88));
      v8 = [v7 _model];
      [v8 beginTransaction];

      v9 = objc_loadWeakRetained((a1 + 88));
      v10 = [v9 _model];
      v11 = [*(a1 + 56) GUID];
      [v10 requeuePendingAssetCollectionGUID:v11];

      v12 = objc_loadWeakRetained((a1 + 88));
      v13 = [v12 _model];
      [v13 endTransaction];

      v14 = objc_loadWeakRetained((a1 + 88));
      v15 = [v14 _assetUploader];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_2_268;
      v36[3] = &unk_278E91528;
      objc_copyWeak(&v38, (a1 + 88));
      v37 = *(a1 + 56);
      [v15 stopCompletionBlock:v36];

      objc_destroyWeak(&v38);
      objc_destroyWeak(&v44);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = objc_loadWeakRetained((a1 + 88));
      v17 = [*(a1 + 48) count];
      v18 = *(a1 + 56);
      *buf = 138543874;
      v46 = v16;
      v47 = 2048;
      v48 = v17;
      v49 = 2114;
      v50 = v18;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully obtained %ld upload tokens in asset collection %{public}@.", buf, 0x20u);
    }

    v19 = [*(a1 + 64) memberQueue];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_269;
    v35[3] = &unk_278E926D8;
    v35[4] = *(a1 + 64);
    dispatch_barrier_sync(v19, v35);

    v20 = [*(a1 + 64) eventQueue];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_2_270;
    v33[3] = &unk_278E90E70;
    objc_copyWeak(&v34, (a1 + 88));
    dispatch_async(v20, v33);

    v21 = objc_loadWeakRetained((a1 + 88));
    v22 = [v21 _model];
    [v22 beginTransaction];

    v23 = objc_loadWeakRetained((a1 + 88));
    v24 = [v23 _model];
    [v24 enqueueAssetCollectionForUpload:*(a1 + 56) album:*(a1 + 72)];

    v25 = objc_loadWeakRetained((a1 + 88));
    v26 = [v25 _model];
    [v26 endTransaction];

    v27 = objc_loadWeakRetained((a1 + 88));
    v28 = [v27 _assetUploader];
    [v28 retryOutstandingActivities];

    v29 = objc_loadWeakRetained((a1 + 88));
    [v29 workQueueDidFinishCommand];

    objc_destroyWeak(&v34);
  }
}

void __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_267(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 64));
  [v2 MSASStateMachine:v3 didFinishAddingAssetCollection:*(a1 + 32) toAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];
}

void __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_2_268(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _assetUploader];
  v4 = [MEMORY[0x277CBEA60] arrayWithObject:*(a1 + 32)];
  [v3 unregisterAssetCollections:v4];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_3;
  block[3] = &unk_278E90E70;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(v6, block);

  objc_destroyWeak(&v8);
}

void __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_2_270(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained daemon];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 personID];
  [v2 didReceiveAuthSuccessForPersonID:v4];
}

void __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained workQueueDidFinishCommand];
}

- (void)_sendPutAssetCollectionsDisposition:(int)disposition params:(id)params
{
  v46 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v23 = [paramsCopy objectForKey:@"successfulAssetCollections"];
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v24 = [paramsCopy objectForKey:@"info"];
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_7;
    block[3] = &unk_278E92660;
    v15 = v23;
    v30 = v15;
    selfCopy = self;
    v32 = v7;
    v33 = v24;
    dispatch_async(eventQueue, block);

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v39 count:16];
    if (v17)
    {
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v25 + 1) + 8 * v19);
          _model = [(MSASStateMachine *)self _model];
          gUID = [v20 GUID];
          [_model requeuePendingAssetCollectionGUID:gUID];

          [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:v20];
          ++v19;
        }

        while (v17 != v19);
        v17 = [v16 countByEnumeratingWithState:&v25 objects:v39 count:16];
      }

      while (v17);
    }
  }

  else if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v42 = 2048;
      v43 = [v23 count];
      v44 = 2114;
      v45 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %ld photos to album %{public}@.", buf, 0x20u);
    }

    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    objc_initWeak(buf, self);
    delegate = [(MSASStateMachine *)self delegate];
    gUID2 = [v7 GUID];
    v12 = [delegate MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:gUID2 info:v24];

    protocol2 = [(MSASStateMachine *)self protocol];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke;
    v34[3] = &unk_278E91550;
    v34[4] = self;
    objc_copyWeak(&v38, buf);
    v35 = paramsCopy;
    v36 = v7;
    v37 = v24;
    [protocol2 putAssetCollections:v23 intoAlbum:v36 albumURLString:v12 completionBlock:v34];

    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);
  }
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke(id *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = [a1[4] workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_2;
  v16[3] = &unk_278E91268;
  v17 = v8;
  v12 = v8;
  objc_copyWeak(&v24, a1 + 8);
  v18 = a1[5];
  v19 = a1[6];
  v20 = v9;
  v13 = a1[4];
  v21 = v10;
  v22 = v13;
  v23 = a1[7];
  v14 = v10;
  v15 = v9;
  dispatch_async(v11, v16);

  objc_destroyWeak(&v24);
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_7(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        [*(a1 + 40) _deleteAssetFilesInAssetCollection:v6];
        v7 = [*(a1 + 40) delegate];
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = *(a1 + 56);
        v11 = [v8 _canceledError];
        [v7 MSASStateMachine:v8 didFinishAddingAssetCollection:v6 toAlbum:v9 info:v10 error:v11];
      }

      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_2(uint64_t a1)
{
  v146 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v3 = *(a1 + 32);
    v4 = NSStringFromSelector(sel__sendPutAssetCollectionsDisposition_params_);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) GUID];
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v3 command:v4 params:v5 albumGUID:v6 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v81 = objc_loadWeakRetained((a1 + 88));
        v82 = *(a1 + 48);
        v83 = [*(a1 + 32) MSVerboseDescription];
        *buf = 138543874;
        v141 = v81;
        v142 = 2114;
        v143 = v82;
        v144 = 2114;
        v145 = v83;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to add photos to album %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v7 = *(a1 + 56);
      v8 = [v7 countByEnumeratingWithState:&v130 objects:v139 count:16];
      if (v8)
      {
        v9 = *v131;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v131 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v130 + 1) + 8 * i);
            v12 = objc_loadWeakRetained((a1 + 88));
            [v12 _deleteAssetFilesInAssetCollection:v11];
          }

          v8 = [v7 countByEnumeratingWithState:&v130 objects:v139 count:16];
        }

        while (v8);
      }

      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v13 = *(a1 + 64);
      v14 = [v13 countByEnumeratingWithState:&v126 objects:v138 count:16];
      if (v14)
      {
        v15 = *v127;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v127 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v126 + 1) + 8 * j);
            v18 = objc_loadWeakRetained((a1 + 88));
            [v18 _deleteAssetFilesInAssetCollection:v17];
          }

          v14 = [v13 countByEnumeratingWithState:&v126 objects:v138 count:16];
        }

        while (v14);
      }

      v19 = [*(a1 + 72) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_259;
      block[3] = &unk_278E91340;
      v120 = *(a1 + 56);
      objc_copyWeak(&v125, (a1 + 88));
      v121 = *(a1 + 48);
      v122 = *(a1 + 80);
      v123 = *(a1 + 32);
      v124 = *(a1 + 64);
      dispatch_async(v19, block);

      v20 = objc_loadWeakRetained((a1 + 88));
      v21 = [v20 _model];
      [v21 beginTransaction];

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v22 = *(a1 + 56);
      v23 = [v22 countByEnumeratingWithState:&v115 objects:v137 count:16];
      if (v23)
      {
        v24 = *v116;
        do
        {
          for (k = 0; k != v23; ++k)
          {
            if (*v116 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v115 + 1) + 8 * k);
            v27 = objc_loadWeakRetained((a1 + 88));
            v28 = [v27 _model];
            v29 = [v26 GUID];
            [v28 requeuePendingAssetCollectionGUID:v29];
          }

          v23 = [v22 countByEnumeratingWithState:&v115 objects:v137 count:16];
        }

        while (v23);
      }

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v30 = *(a1 + 64);
      v31 = [v30 countByEnumeratingWithState:&v111 objects:v136 count:16];
      if (v31)
      {
        v32 = *v112;
        do
        {
          for (m = 0; m != v31; ++m)
          {
            if (*v112 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v111 + 1) + 8 * m);
            v35 = objc_loadWeakRetained((a1 + 88));
            v36 = [v35 _model];
            v37 = [v34 GUID];
            [v36 requeuePendingAssetCollectionGUID:v37];
          }

          v31 = [v30 countByEnumeratingWithState:&v111 objects:v136 count:16];
        }

        while (v31);
      }

      v38 = objc_loadWeakRetained((a1 + 88));
      v39 = [v38 _model];
      [v39 endTransaction];

      v40 = objc_loadWeakRetained((a1 + 88));
      v41 = [v40 _assetUploader];
      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_2_260;
      v107[3] = &unk_278E917C0;
      objc_copyWeak(&v110, (a1 + 88));
      v108 = *(a1 + 56);
      v109 = *(a1 + 64);
      [v41 stopCompletionBlock:v107];

      objc_destroyWeak(&v110);
      objc_destroyWeak(&v125);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v42 = objc_loadWeakRetained((a1 + 88));
      v43 = [*(a1 + 56) count];
      v44 = *(a1 + 48);
      *buf = 138543874;
      v141 = v42;
      v142 = 2048;
      v143 = v43;
      v144 = 2114;
      v145 = v44;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully enqueued %ld photos for upload to album %{public}@.", buf, 0x20u);
    }

    if ([*(a1 + 64) count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v84 = objc_loadWeakRetained((a1 + 88));
      v85 = [*(a1 + 64) count];
      v86 = *(a1 + 48);
      *buf = 138543874;
      v141 = v84;
      v142 = 2048;
      v143 = v85;
      v144 = 2114;
      v145 = v86;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to enqueue %ld photos for upload to album %{public}@.", buf, 0x20u);
    }

    v45 = [*(a1 + 72) memberQueue];
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_261;
    v106[3] = &unk_278E926D8;
    v106[4] = *(a1 + 72);
    dispatch_barrier_sync(v45, v106);

    v46 = [*(a1 + 72) eventQueue];
    v104[0] = MEMORY[0x277D85DD0];
    v104[1] = 3221225472;
    v104[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_2_262;
    v104[3] = &unk_278E90E70;
    objc_copyWeak(&v105, (a1 + 88));
    dispatch_async(v46, v104);

    v47 = objc_loadWeakRetained((a1 + 88));
    v48 = [v47 _model];
    [v48 beginTransaction];

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v49 = *(a1 + 56);
    v50 = [v49 countByEnumeratingWithState:&v100 objects:v135 count:16];
    if (v50)
    {
      v51 = *v101;
      do
      {
        for (n = 0; n != v50; ++n)
        {
          if (*v101 != v51)
          {
            objc_enumerationMutation(v49);
          }

          v53 = *(*(&v100 + 1) + 8 * n);
          v54 = objc_loadWeakRetained((a1 + 88));
          v55 = [v54 _model];
          [v55 enqueueAssetCollectionForUpload:v53 album:*(a1 + 48)];
        }

        v50 = [v49 countByEnumeratingWithState:&v100 objects:v135 count:16];
      }

      while (v50);
    }

    v56 = objc_loadWeakRetained((a1 + 88));
    v57 = [v56 _model];
    [v57 endTransaction];

    v58 = objc_loadWeakRetained((a1 + 88));
    v59 = [v58 _assetUploader];
    [v59 retryOutstandingActivities];

    v60 = [*(a1 + 72) eventQueue];
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_3_263;
    v94[3] = &unk_278E911B0;
    v95 = *(a1 + 64);
    objc_copyWeak(&v99, (a1 + 88));
    v96 = *(a1 + 48);
    v61 = *(a1 + 80);
    v62 = *(a1 + 72);
    v97 = v61;
    v98 = v62;
    dispatch_async(v60, v94);

    v63 = [*(a1 + 64) count] == 0;
    v64 = objc_loadWeakRetained((a1 + 88));
    v65 = v64;
    if (v63)
    {
      [v64 workQueueDidFinishCommand];
    }

    else
    {
      v66 = [v64 _model];
      [v66 beginTransaction];

      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v67 = *(a1 + 64);
      v68 = [v67 countByEnumeratingWithState:&v90 objects:v134 count:16];
      if (v68)
      {
        v69 = *v91;
        do
        {
          for (ii = 0; ii != v68; ++ii)
          {
            if (*v91 != v69)
            {
              objc_enumerationMutation(v67);
            }

            v71 = *(*(&v90 + 1) + 8 * ii);
            v72 = objc_loadWeakRetained((a1 + 88));
            v73 = [v72 _model];
            v74 = [v71 GUID];
            [v73 requeuePendingAssetCollectionGUID:v74];

            v75 = objc_loadWeakRetained((a1 + 88));
            v76 = [v71 GUID];
            [v75 cancelOutstandingCommandsForAssetCollectionWithGUID:v76];
          }

          v68 = [v67 countByEnumeratingWithState:&v90 objects:v134 count:16];
        }

        while (v68);
      }

      v77 = objc_loadWeakRetained((a1 + 88));
      v78 = [v77 _model];
      [v78 endTransaction];

      v79 = objc_loadWeakRetained((a1 + 88));
      v80 = [v79 _assetUploader];
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_4;
      v87[3] = &unk_278E91528;
      objc_copyWeak(&v89, (a1 + 88));
      v88 = *(a1 + 64);
      [v80 stopCompletionBlock:v87];

      objc_destroyWeak(&v89);
    }

    objc_destroyWeak(&v99);
    objc_destroyWeak(&v105);
  }
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_259(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained((a1 + 72));
        v9 = [WeakRetained delegate];
        v10 = objc_loadWeakRetained((a1 + 72));
        [v9 MSASStateMachine:v10 didFinishAddingAssetCollection:v7 toAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v4);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = *(a1 + 64);
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v17 = objc_loadWeakRetained((a1 + 72));
        v18 = [v17 delegate];
        v19 = objc_loadWeakRetained((a1 + 72));
        [v18 MSASStateMachine:v19 didFinishAddingAssetCollection:v16 toAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_2_260(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _assetUploader];
  [v3 unregisterAssetCollections:*(a1 + 32)];

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 _assetUploader];
  v6 = [*(a1 + 40) allKeys];
  [v5 unregisterAssetCollections:v6];

  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_3;
  block[3] = &unk_278E90E70;
  objc_copyWeak(&v10, (a1 + 48));
  dispatch_async(v8, block);

  objc_destroyWeak(&v10);
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_2_262(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained daemon];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 personID];
  [v2 didReceiveAuthSuccessForPersonID:v4];
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_3_263(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v13 = *v15;
    do
    {
      v4 = 0;
      do
      {
        if (*v15 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v14 + 1) + 8 * v4);
        WeakRetained = objc_loadWeakRetained((a1 + 64));
        v7 = [WeakRetained delegate];
        v8 = objc_loadWeakRetained((a1 + 64));
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        v11 = [*(a1 + 56) _assetCollectionRejectedError];
        [v7 MSASStateMachine:v8 didFinishAddingAssetCollection:v5 toAlbum:v9 info:v10 error:v11];

        ++v4;
      }

      while (v3 != v4);
      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _assetUploader];
  v4 = [*(a1 + 32) allKeys];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_5;
  v5[3] = &unk_278E91528;
  v6 = *(a1 + 32);
  objc_copyWeak(&v7, (a1 + 40));
  [v3 unregisterAssetCollections:v4 completionBlock:v5];

  objc_destroyWeak(&v7);
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_5(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained _deleteAssetFilesInAssetCollection:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_6;
  block[3] = &unk_278E90E70;
  objc_copyWeak(&v12, (a1 + 40));
  dispatch_async(v10, block);

  objc_destroyWeak(&v12);
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained workQueueDidFinishCommand];
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained workQueueDidFinishCommand];
}

- (void)_sendUploadCompleteDisposition:(int)disposition params:(id)params
{
  v89 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v46 = [paramsCopy objectForKey:@"successfulAssetCollections"];
  v47 = [paramsCopy objectForKey:@"failedAssetCollectionsAndErrors"];
  v45 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v44 = [paramsCopy objectForKey:@"info"];
  if (disposition == 2)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v14 = v46;
    v15 = [v14 countByEnumeratingWithState:&v66 objects:v80 count:16];
    if (v15)
    {
      v16 = *v67;
      do
      {
        v17 = 0;
        do
        {
          if (*v67 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:*(*(&v66 + 1) + 8 * v17++), v44];
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v66 objects:v80 count:16];
      }

      while (v15);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v18 = v47;
    v19 = [v18 countByEnumeratingWithState:&v62 objects:v79 count:16];
    if (v19)
    {
      v20 = *v63;
      do
      {
        v21 = 0;
        do
        {
          if (*v63 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:*(*(&v62 + 1) + 8 * v21++), v44];
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v62 objects:v79 count:16];
      }

      while (v19);
    }

    eventQueue = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_3;
    block[3] = &unk_278E92688;
    v23 = v14;
    v57 = v23;
    selfCopy = self;
    v59 = v45;
    v60 = v44;
    v24 = v18;
    v61 = v24;
    dispatch_async(eventQueue, block);

    _model = [(MSASStateMachine *)self _model];
    [_model beginTransaction];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v26 = v23;
    v27 = [v26 countByEnumeratingWithState:&v52 objects:v78 count:16];
    if (v27)
    {
      v28 = *v53;
      do
      {
        v29 = 0;
        do
        {
          if (*v53 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v52 + 1) + 8 * v29);
          _model2 = [(MSASStateMachine *)self _model];
          gUID = [v30 GUID];
          [_model2 requeuePendingAssetCollectionGUID:gUID];

          [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:v30];
          ++v29;
        }

        while (v27 != v29);
        v27 = [v26 countByEnumeratingWithState:&v52 objects:v78 count:16];
      }

      while (v27);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v33 = v24;
    v34 = [v33 countByEnumeratingWithState:&v48 objects:v77 count:16];
    if (v34)
    {
      v35 = *v49;
      do
      {
        v36 = 0;
        do
        {
          if (*v49 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v48 + 1) + 8 * v36);
          _model3 = [(MSASStateMachine *)self _model];
          gUID2 = [v37 GUID];
          [_model3 requeuePendingAssetCollectionGUID:gUID2];

          [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:v37];
          ++v36;
        }

        while (v34 != v36);
        v34 = [v33 countByEnumeratingWithState:&v48 objects:v77 count:16];
      }

      while (v34);
    }

    _model4 = [(MSASStateMachine *)self _model];
    [_model4 endTransaction];

    _assetUploader = [(MSASStateMachine *)self _assetUploader];
    [_assetUploader unregisterAssetCollections:v26];

    _assetUploader2 = [(MSASStateMachine *)self _assetUploader];
    allKeys = [v33 allKeys];
    [_assetUploader2 unregisterAssetCollections:allKeys];
  }

  else if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v46 count];
      v8 = [v47 count];
      v9 = CFAbsoluteTimeGetCurrent() - self->_startOfUpload;
      *buf = 138544130;
      selfCopy2 = self;
      v83 = 2048;
      v84 = v7;
      v85 = 2048;
      v86 = v8;
      v87 = 2048;
      v88 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Sending upload complete for %ld successful photos, and %ld failed photos. Took %.2fs to upload", buf, 0x2Au);
    }

    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    objc_initWeak(buf, self);
    protocol2 = [(MSASStateMachine *)self protocol];
    allKeys2 = [v47 allKeys];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke;
    v70[3] = &unk_278E91500;
    v70[4] = self;
    objc_copyWeak(&v76, buf);
    v71 = paramsCopy;
    v72 = v46;
    v73 = v45;
    v74 = v44;
    v75 = v47;
    [protocol2 sendUploadCompleteSuccessfulAssetCollections:v72 failedAssetCollections:allKeys2 album:v73 completionBlock:v70];

    objc_destroyWeak(&v76);
    objc_destroyWeak(buf);
  }
}

void __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_2;
  block[3] = &unk_278E914D8;
  v21 = v7;
  v11 = v7;
  objc_copyWeak(&v28, a1 + 10);
  v12 = a1[5];
  v13 = a1[6];
  v19 = a1[4];
  v14 = a1[7];
  *&v15 = v19;
  *(&v15 + 1) = v14;
  *&v16 = v12;
  *(&v16 + 1) = v13;
  v22 = v16;
  v23 = v15;
  v24 = a1[8];
  v25 = a1[9];
  v26 = v8;
  v27 = v9;
  v17 = v9;
  v18 = v8;
  dispatch_async(v10, block);

  objc_destroyWeak(&v28);
}

void __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_3(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v29;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v7 = [*(a1 + 40) delegate];
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = *(a1 + 56);
        v11 = [v8 _canceledError];
        [v7 MSASStateMachine:v8 didFinishAddingAssetCollection:v6 toAlbum:v9 info:v10 error:v11];
      }

      v3 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v3);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obja = *(a1 + 64);
  v12 = [obja countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(obja);
        }

        v16 = *(*(&v24 + 1) + 8 * j);
        v17 = [*(a1 + 40) delegate];
        v18 = *(a1 + 40);
        v19 = *(a1 + 48);
        v20 = *(a1 + 56);
        v21 = [*(a1 + 64) objectForKey:v16];
        [v17 MSASStateMachine:v18 didFinishAddingAssetCollection:v16 toAlbum:v19 info:v20 error:v21];
      }

      v13 = [obja countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v13);
  }
}

void __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_2(uint64_t a1)
{
  v160 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 104));
    v3 = *(a1 + 32);
    v4 = NSStringFromSelector(sel__sendUploadCompleteDisposition_params_);
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v3 command:v4 params:*(a1 + 40) albumGUID:0 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v94 = objc_loadWeakRetained((a1 + 104));
        v95 = [*(a1 + 32) MSVerboseDescription];
        *buf = 138543618;
        v157 = v94;
        v158 = 2114;
        v159 = v95;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to send upload complete. Error: %{public}@", buf, 0x16u);
      }

      v5 = objc_loadWeakRetained((a1 + 104));
      v6 = [v5 _model];
      [v6 beginTransaction];

      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      obj = *(a1 + 48);
      v7 = [obj countByEnumeratingWithState:&v144 objects:v155 count:16];
      if (v7)
      {
        v8 = *v145;
        do
        {
          v9 = 0;
          do
          {
            if (*v145 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v144 + 1) + 8 * v9);
            v11 = objc_loadWeakRetained((a1 + 104));
            v12 = [v11 _model];
            v13 = [v10 GUID];
            [v12 requeuePendingAssetCollectionGUID:v13];

            v14 = objc_loadWeakRetained((a1 + 104));
            [v14 _deleteAssetFilesInAssetCollection:v10];

            v15 = [*(a1 + 56) eventQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_254;
            block[3] = &unk_278E911B0;
            objc_copyWeak(&v143, (a1 + 104));
            block[4] = v10;
            v140 = *(a1 + 64);
            v141 = *(a1 + 72);
            v142 = *(a1 + 32);
            dispatch_async(v15, block);

            objc_destroyWeak(&v143);
            ++v9;
          }

          while (v7 != v9);
          v7 = [obj countByEnumeratingWithState:&v144 objects:v155 count:16];
        }

        while (v7);
      }

      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      obja = *(a1 + 80);
      v16 = [obja countByEnumeratingWithState:&v135 objects:v154 count:16];
      if (v16)
      {
        v17 = *v136;
        do
        {
          v18 = 0;
          do
          {
            if (*v136 != v17)
            {
              objc_enumerationMutation(obja);
            }

            v19 = *(*(&v135 + 1) + 8 * v18);
            v20 = objc_loadWeakRetained((a1 + 104));
            v21 = [v20 _model];
            v22 = [v19 GUID];
            [v21 requeuePendingAssetCollectionGUID:v22];

            v23 = objc_loadWeakRetained((a1 + 104));
            [v23 _deleteAssetFilesInAssetCollection:v19];

            v24 = [*(a1 + 56) eventQueue];
            v130[0] = MEMORY[0x277D85DD0];
            v130[1] = 3221225472;
            v130[2] = __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_2_255;
            v130[3] = &unk_278E911B0;
            objc_copyWeak(&v134, (a1 + 104));
            v130[4] = v19;
            v131 = *(a1 + 64);
            v132 = *(a1 + 72);
            v133 = *(a1 + 80);
            dispatch_async(v24, v130);

            objc_destroyWeak(&v134);
            ++v18;
          }

          while (v16 != v18);
          v16 = [obja countByEnumeratingWithState:&v135 objects:v154 count:16];
        }

        while (v16);
      }

      v25 = objc_loadWeakRetained((a1 + 104));
      v26 = [v25 _model];
      [v26 endTransaction];

      v27 = objc_loadWeakRetained((a1 + 104));
      v28 = [v27 _assetUploader];
      [v28 unregisterAssetCollections:*(a1 + 48)];

      v29 = objc_loadWeakRetained((a1 + 104));
      v30 = [v29 _assetUploader];
      v31 = [*(a1 + 80) allKeys];
      [v30 unregisterAssetCollections:v31];

      v32 = objc_loadWeakRetained((a1 + 104));
      [v32 workQueueDidFinishCommand];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v33 = objc_loadWeakRetained((a1 + 104));
      *buf = 138543362;
      v157 = v33;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully sent upload complete.", buf, 0xCu);
    }

    v34 = [*(a1 + 56) memberQueue];
    v129[0] = MEMORY[0x277D85DD0];
    v129[1] = 3221225472;
    v129[2] = __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_256;
    v129[3] = &unk_278E926D8;
    v129[4] = *(a1 + 56);
    dispatch_barrier_sync(v34, v129);

    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v35 = *(a1 + 88);
    v36 = [v35 countByEnumeratingWithState:&v125 objects:v153 count:16];
    if (v36)
    {
      v37 = *v126;
      do
      {
        v38 = 0;
        do
        {
          if (*v126 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v39 = *(*(&v125 + 1) + 8 * v38);
          v40 = objc_loadWeakRetained((a1 + 104));
          [v40 _deleteAssetFilesInAssetCollection:v39];

          ++v38;
        }

        while (v36 != v38);
        v36 = [v35 countByEnumeratingWithState:&v125 objects:v153 count:16];
      }

      while (v36);
    }

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v41 = *(a1 + 96);
    v42 = [v41 countByEnumeratingWithState:&v121 objects:v152 count:16];
    if (v42)
    {
      v43 = *v122;
      do
      {
        v44 = 0;
        do
        {
          if (*v122 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(*(&v121 + 1) + 8 * v44);
          v46 = objc_loadWeakRetained((a1 + 104));
          [v46 _deleteAssetFilesInAssetCollection:v45];

          ++v44;
        }

        while (v42 != v44);
        v42 = [v41 countByEnumeratingWithState:&v121 objects:v152 count:16];
      }

      while (v42);
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v47 = *(a1 + 80);
    v48 = [v47 countByEnumeratingWithState:&v117 objects:v151 count:16];
    if (v48)
    {
      v49 = *v118;
      do
      {
        v50 = 0;
        do
        {
          if (*v118 != v49)
          {
            objc_enumerationMutation(v47);
          }

          v51 = *(*(&v117 + 1) + 8 * v50);
          v52 = objc_loadWeakRetained((a1 + 104));
          [v52 _deleteAssetFilesInAssetCollection:v51];

          ++v50;
        }

        while (v48 != v50);
        v48 = [v47 countByEnumeratingWithState:&v117 objects:v151 count:16];
      }

      while (v48);
    }

    v53 = [*(a1 + 56) eventQueue];
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_2_257;
    v110[3] = &unk_278E91340;
    objc_copyWeak(&v116, (a1 + 104));
    v111 = *(a1 + 88);
    v112 = *(a1 + 64);
    v113 = *(a1 + 72);
    v114 = *(a1 + 96);
    v115 = *(a1 + 80);
    dispatch_async(v53, v110);

    v54 = objc_loadWeakRetained((a1 + 104));
    v55 = [v54 _model];
    [v55 beginTransaction];

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v56 = *(a1 + 88);
    v57 = [v56 countByEnumeratingWithState:&v106 objects:v150 count:16];
    if (v57)
    {
      v58 = *v107;
      do
      {
        v59 = 0;
        do
        {
          if (*v107 != v58)
          {
            objc_enumerationMutation(v56);
          }

          v60 = *(*(&v106 + 1) + 8 * v59);
          v61 = objc_loadWeakRetained((a1 + 104));
          v62 = [v61 _model];
          v63 = [v60 GUID];
          [v62 requeuePendingAssetCollectionGUID:v63];

          v64 = objc_loadWeakRetained((a1 + 104));
          [v64 _deleteAssetFilesInAssetCollection:v60];

          ++v59;
        }

        while (v57 != v59);
        v57 = [v56 countByEnumeratingWithState:&v106 objects:v150 count:16];
      }

      while (v57);
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v65 = *(a1 + 96);
    v66 = [v65 countByEnumeratingWithState:&v102 objects:v149 count:16];
    if (v66)
    {
      v67 = *v103;
      do
      {
        v68 = 0;
        do
        {
          if (*v103 != v67)
          {
            objc_enumerationMutation(v65);
          }

          v69 = *(*(&v102 + 1) + 8 * v68);
          v70 = objc_loadWeakRetained((a1 + 104));
          v71 = [v70 _model];
          v72 = [v69 GUID];
          [v71 requeuePendingAssetCollectionGUID:v72];

          v73 = objc_loadWeakRetained((a1 + 104));
          [v73 _deleteAssetFilesInAssetCollection:v69];

          ++v68;
        }

        while (v66 != v68);
        v66 = [v65 countByEnumeratingWithState:&v102 objects:v149 count:16];
      }

      while (v66);
    }

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v74 = *(a1 + 80);
    v75 = [v74 countByEnumeratingWithState:&v98 objects:v148 count:16];
    if (v75)
    {
      v76 = *v99;
      do
      {
        v77 = 0;
        do
        {
          if (*v99 != v76)
          {
            objc_enumerationMutation(v74);
          }

          v78 = *(*(&v98 + 1) + 8 * v77);
          v79 = objc_loadWeakRetained((a1 + 104));
          v80 = [v79 _model];
          v81 = [v78 GUID];
          [v80 requeuePendingAssetCollectionGUID:v81];

          v82 = objc_loadWeakRetained((a1 + 104));
          [v82 _deleteAssetFilesInAssetCollection:v78];

          ++v77;
        }

        while (v75 != v77);
        v75 = [v74 countByEnumeratingWithState:&v98 objects:v148 count:16];
      }

      while (v75);
    }

    v83 = objc_loadWeakRetained((a1 + 104));
    v84 = [v83 _model];
    [v84 endTransaction];

    v85 = objc_loadWeakRetained((a1 + 104));
    v86 = [v85 _assetUploader];
    [v86 unregisterAssetCollections:*(a1 + 88)];

    v87 = objc_loadWeakRetained((a1 + 104));
    v88 = [v87 _assetUploader];
    v89 = [*(a1 + 96) allKeys];
    [v88 unregisterAssetCollections:v89];

    v90 = objc_loadWeakRetained((a1 + 104));
    v91 = [v90 _assetUploader];
    v92 = [*(a1 + 80) allKeys];
    [v91 unregisterAssetCollections:v92];

    v93 = objc_loadWeakRetained((a1 + 104));
    [v93 workQueueDidFinishCommand];

    objc_destroyWeak(&v116);
  }
}

void __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_254(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 64));
  [v2 MSASStateMachine:v3 didFinishAddingAssetCollection:*(a1 + 32) toAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];
}

void __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_2_255(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 64));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) objectForKey:v4];
  [v2 MSASStateMachine:v3 didFinishAddingAssetCollection:v4 toAlbum:v5 info:v6 error:v7];
}

void __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_2_257(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 72));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      v10 = 0;
      do
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v47 + 1) + 8 * v10);
        v12 = objc_loadWeakRetained((a1 + 72));
        v13 = [v12 delegate];
        v14 = objc_loadWeakRetained((a1 + 72));
        [v13 MSASStateMachine:v14 didFinishAddingAssetCollection:v11 toAlbum:*(a1 + 40) info:*(a1 + 48) error:0];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v8);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = *(a1 + 56);
  v15 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v37 = *v44;
    do
    {
      v17 = 0;
      do
      {
        if (*v44 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v43 + 1) + 8 * v17);
        v19 = objc_loadWeakRetained((a1 + 72));
        v20 = [v19 delegate];
        v21 = objc_loadWeakRetained((a1 + 72));
        v22 = *(a1 + 40);
        v23 = *(a1 + 48);
        v24 = [*(a1 + 56) objectForKey:v18];
        [v20 MSASStateMachine:v21 didFinishAddingAssetCollection:v18 toAlbum:v22 info:v23 error:v24];

        ++v17;
      }

      while (v16 != v17);
      v16 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v16);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obja = *(a1 + 64);
  v25 = [obja countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v25)
  {
    v26 = v25;
    v38 = *v40;
    do
    {
      v27 = 0;
      do
      {
        if (*v40 != v38)
        {
          objc_enumerationMutation(obja);
        }

        v28 = *(*(&v39 + 1) + 8 * v27);
        v29 = objc_loadWeakRetained((a1 + 72));
        v30 = [v29 delegate];
        v31 = objc_loadWeakRetained((a1 + 72));
        v32 = *(a1 + 40);
        v33 = *(a1 + 48);
        v34 = [*(a1 + 64) objectForKey:v28];
        [v30 MSASStateMachine:v31 didFinishAddingAssetCollection:v28 toAlbum:v32 info:v33 error:v34];

        ++v27;
      }

      while (v26 != v27);
      v26 = [obja countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v26);
  }
}

- (void)_continueAddingAssetCollectionsDisposition:(int)disposition params:(id)params
{
  v71 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v6 = [paramsCopy objectForKey:@"assetCollections"];
  selfCopy = self;
  v37 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v38 = paramsCopy;
  v40 = [paramsCopy objectForKey:@"info"];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v6;
  v43 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v43)
  {
    v42 = *v61;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v61 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v60 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        metadata = [v8 metadata];
        v11 = [metadata objectForKey:@"originalPaths"];

        if (v11)
        {
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v13 = v11;
          v14 = [v13 countByEnumeratingWithState:&v56 objects:v69 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v57;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v57 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                [defaultManager removeItemAtPath:*(*(&v56 + 1) + 8 * j) error:0];
              }

              v15 = [v13 countByEnumeratingWithState:&v56 objects:v69 count:16];
            }

            while (v15);
          }

          metadata2 = [v8 metadata];
          v19 = [metadata2 mutableCopy];

          [v19 removeObjectForKey:@"originalPaths"];
          [v8 setMetadata:v19];
        }

        objc_autoreleasePoolPop(v9);
      }

      v43 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v43);
  }

  if (disposition == 2)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v27 = obj;
    v28 = [v27 countByEnumeratingWithState:&v46 objects:v64 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v47;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v47 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v46 + 1) + 8 * k);
          [(MSASStateMachine *)selfCopy _deleteAssetFilesInAssetCollection:v32];
          eventQueue = [(MSASStateMachine *)selfCopy eventQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __70__MSASStateMachine__continueAddingAssetCollectionsDisposition_params___block_invoke_253;
          block[3] = &unk_278E92638;
          block[4] = selfCopy;
          block[5] = v32;
          v45 = v40;
          dispatch_async(eventQueue, block);

          _model = [(MSASStateMachine *)selfCopy _model];
          gUID = [v32 GUID];
          [_model requeuePendingAssetCollectionGUID:gUID];
        }

        v29 = [v27 countByEnumeratingWithState:&v46 objects:v64 count:16];
      }

      while (v29);
    }

    v21 = v37;
    v20 = v38;
    goto LABEL_30;
  }

  v21 = v37;
  v20 = v38;
  if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = [obj count];
      *buf = 138543618;
      v66 = selfCopy;
      v67 = 2048;
      v68 = v22;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Preparing upload of assets for %ld asset collections.", buf, 0x16u);
    }

    v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(obj, "count")}];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    _assetUploader = [(MSASStateMachine *)selfCopy _assetUploader];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __70__MSASStateMachine__continueAddingAssetCollectionsDisposition_params___block_invoke;
    v50[3] = &unk_278E914B0;
    v50[4] = selfCopy;
    v51 = obj;
    v52 = v23;
    v53 = dictionary;
    v54 = v37;
    v55 = v40;
    v26 = dictionary;
    v27 = v23;
    [_assetUploader registerAssetCollections:v51 completionBlock:v50];

LABEL_30:
  }
}

void __70__MSASStateMachine__continueAddingAssetCollectionsDisposition_params___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__MSASStateMachine__continueAddingAssetCollectionsDisposition_params___block_invoke_2;
  block[3] = &unk_278E91008;
  v9 = a1[5];
  v10 = v3;
  v11 = a1[6];
  v5 = a1[7];
  v6 = a1[4];
  v12 = v5;
  v13 = v6;
  v14 = a1[8];
  v15 = a1[9];
  v7 = v3;
  dispatch_async(v4, block);
}

void __70__MSASStateMachine__continueAddingAssetCollectionsDisposition_params___block_invoke_253(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishAddingAssetCollection:v3 toAlbum:0 info:v4 error:v5];
}

void __70__MSASStateMachine__continueAddingAssetCollectionsDisposition_params___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = 0;
    do
    {
      v3 = [*(a1 + 32) objectAtIndex:v2];
      v4 = [*(a1 + 40) objectAtIndex:v2];
      v5 = [MEMORY[0x277CBEB68] null];

      if (v4 == v5)
      {
        [*(a1 + 48) addObject:v3];
      }

      else
      {
        [*(a1 + 56) setObject:v4 forKey:v3];
      }

      ++v2;
    }

    while (v2 < [*(a1 + 32) count]);
  }

  if ([*(a1 + 56) count])
  {
    v6 = [*(a1 + 64) _model];
    [v6 beginTransaction];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = *(a1 + 56);
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        v11 = 0;
        do
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v31 + 1) + 8 * v11);
          v13 = [*(a1 + 64) _model];
          v14 = [v12 GUID];
          [v13 requeuePendingAssetCollectionGUID:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v9);
    }

    v15 = [*(a1 + 64) _model];
    [v15 endTransaction];

    v16 = [MEMORY[0x277CBEB38] dictionary];
    [v16 setObject:*(a1 + 56) forKey:@"failedAssetCollectionsAndErrors"];
    v17 = *(a1 + 72);
    if (v17)
    {
      [v16 setObject:v17 forKey:@"album"];
    }

    v18 = *(a1 + 80);
    if (v18)
    {
      [v16 setObject:v18 forKey:@"info"];
    }

    v19 = [*(a1 + 64) _model];
    v20 = NSStringFromSelector(sel__sendUploadCompleteDisposition_params_);
    v21 = [*(a1 + 64) personID];
    v22 = [*(a1 + 72) GUID];
    [v19 enqueueCommand:v20 params:v16 personID:v21 albumGUID:v22 assetCollectionGUID:0];

    [*(a1 + 64) workQueueRetryOutstandingActivities];
  }

  if ([*(a1 + 48) count])
  {
    v23 = [MEMORY[0x277CBEB38] dictionary];
    [v23 setObject:*(a1 + 48) forKey:@"successfulAssetCollections"];
    v24 = *(a1 + 72);
    if (v24)
    {
      [v23 setObject:v24 forKey:@"album"];
    }

    v25 = *(a1 + 80);
    if (v25)
    {
      [v23 setObject:v25 forKey:@"info"];
    }

    v26 = *(a1 + 64);
    v27 = NSStringFromSelector(sel__sendPutAssetCollectionsDisposition_params_);
    v28 = [*(a1 + 64) personID];
    v29 = [*(a1 + 72) GUID];
    [v26 workQueueDidFinishCommandByReplacingCurrentCommandWithCommand:v27 params:v23 personID:v28 albumGUID:v29 assetCollectionGUID:0];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 64);
      *buf = 138543362;
      v36 = v30;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: No valid asset collections to send to the metadata server.", buf, 0xCu);
    }

    [*(a1 + 64) workQueueDidFinishCommand];
  }
}

- (void)continueAddingAssetCollections:(id)collections skipAssetCollections:(id)assetCollections toAlbum:(id)album info:(id)info
{
  collectionsCopy = collections;
  assetCollectionsCopy = assetCollections;
  albumCopy = album;
  infoCopy = info;
  v14 = [(MSASStateMachine *)self _createCopiedAssetsInAssetCollections:collectionsCopy];
  workQueue = [(MSASStateMachine *)self workQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __85__MSASStateMachine_continueAddingAssetCollections_skipAssetCollections_toAlbum_info___block_invoke;
  v21[3] = &unk_278E92048;
  v22 = assetCollectionsCopy;
  selfCopy = self;
  v24 = collectionsCopy;
  v25 = v14;
  v26 = albumCopy;
  v27 = infoCopy;
  v16 = infoCopy;
  v17 = albumCopy;
  v18 = v14;
  v19 = collectionsCopy;
  v20 = assetCollectionsCopy;
  dispatch_async(workQueue, v21);
}

void __85__MSASStateMachine_continueAddingAssetCollections_skipAssetCollections_toAlbum_info___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(a1 + 40);
      v3 = [*(a1 + 32) count];
      *buf = 138543618;
      v32 = v2;
      v33 = 2048;
      v34 = v3;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping publication of %ld asset collections.", buf, 0x16u);
    }

    [*(a1 + 40) _deleteAssetFilesInAssetCollections:*(a1 + 48)];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v27;
      do
      {
        v8 = 0;
        do
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v26 + 1) + 8 * v8);
          v10 = [*(a1 + 40) _model];
          v11 = [v9 GUID];
          [v10 requeuePendingAssetCollectionGUID:v11];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v6);
    }
  }

  v12 = [MEMORY[0x277CBEB38] dictionary];
  v13 = v12;
  if (*(a1 + 48))
  {
    [v12 setObject:*(a1 + 56) forKey:@"assetCollections"];
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    [v13 setObject:v14 forKey:@"album"];
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    [v13 setObject:v15 forKey:@"info"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 40);
    v17 = [*(a1 + 48) count];
    *buf = 138543618;
    v32 = v16;
    v33 = 2048;
    v34 = v17;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling addition of %ld asset collections.", buf, 0x16u);
  }

  v18 = *(a1 + 40);
  if (*(v18 + 8) == 2)
  {
    v19 = *(v18 + 24);
    v20 = NSStringFromSelector(sel__addAssetCollectionsDisposition_params_);
    LOBYTE(v19) = [v19 isEqualToString:v20];

    if ((v19 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 40);
      *buf = 138543362;
      v32 = v25;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Not expecting derivatives to arrive from plugin. Proceeding anyway.", buf, 0xCu);
    }
  }

  v21 = *(a1 + 40);
  v22 = NSStringFromSelector(sel__continueAddingAssetCollectionsDisposition_params_);
  v23 = [*(a1 + 40) personID];
  v24 = [*(a1 + 64) GUID];
  [v21 workQueueDidFinishCommandByReplacingCurrentCommandWithCommand:v22 params:v13 personID:v23 albumGUID:v24 assetCollectionGUID:0];
}

- (void)_addAssetCollectionsDisposition:(int)disposition params:(id)params
{
  v84 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [paramsCopy objectForKey:@"assetCollections"];
  v8 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v9 = [paramsCopy objectForKey:@"info"];
  if (disposition == 2)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v19 = v7;
    v20 = [v19 countByEnumeratingWithState:&v56 objects:v77 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v57;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v57 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:*(*(&v56 + 1) + 8 * i)];
        }

        v21 = [v19 countByEnumeratingWithState:&v56 objects:v77 count:16];
      }

      while (v21);
    }

    eventQueue = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__MSASStateMachine__addAssetCollectionsDisposition_params___block_invoke_3;
    block[3] = &unk_278E92638;
    v53 = v19;
    selfCopy = self;
    v55 = v9;
    dispatch_async(eventQueue, block);
  }

  else if (!disposition)
  {
    v10 = [paramsCopy objectForKey:@"commandRetryCount"];
    intValue = [v10 intValue];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      selfCopy5 = self;
      v82 = 2048;
      *v83 = [v7 count];
      *&v83[8] = 2114;
      *&v83[10] = v8;
      *&v83[18] = 1024;
      *&v83[20] = intValue;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %ld asset collections to album %{public}@ retry %d.", buf, 0x26u);
    }

    self->_startOfUpload = CFAbsoluteTimeGetCurrent();
    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    if (intValue < 4)
    {
      selfCopy3 = self;
      v45 = v9;
      v46 = v8;
      v47 = v7;
      v48 = paramsCopy;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      obj = v7;
      v50 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
      if (v50)
      {
        v49 = *v69;
        do
        {
          for (j = 0; j != v50; ++j)
          {
            if (*v69 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v68 + 1) + 8 * j);
            v27 = objc_autoreleasePoolPush();
            v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(obj, "count")}];
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            assets = [v26 assets];
            v30 = [assets countByEnumeratingWithState:&v64 objects:v78 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v65;
              do
              {
                for (k = 0; k != v31; ++k)
                {
                  if (*v65 != v32)
                  {
                    objc_enumerationMutation(assets);
                  }

                  v34 = *(*(&v64 + 1) + 8 * k);
                  path = [v34 path];

                  if (path)
                  {
                    path2 = [v34 path];
                    [v28 addObject:path2];
                  }
                }

                v31 = [assets countByEnumeratingWithState:&v64 objects:v78 count:16];
              }

              while (v31);
            }

            if ([v28 count])
            {
              [v26 setMetadataValue:v28 forKey:@"originalPaths"];
            }

            objc_autoreleasePoolPop(v27);
          }

          v50 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
        }

        while (v50);
      }

      eventQueue2 = [(MSASStateMachine *)selfCopy3 eventQueue];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __59__MSASStateMachine__addAssetCollectionsDisposition_params___block_invoke_2;
      v60[3] = &unk_278E92660;
      v60[4] = selfCopy3;
      v61 = obj;
      v8 = v46;
      v62 = v46;
      v9 = v45;
      v63 = v45;
      dispatch_async(eventQueue2, v60);

      v7 = v47;
      paramsCopy = v48;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        selfCopy5 = self;
        v82 = 1024;
        *v83 = intValue;
        *&v83[4] = 2114;
        *&v83[6] = v7;
        *&v83[14] = 2114;
        *&v83[16] = v8;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Retried %d times to add asset collections %{public}@ to album %{public}@.", buf, 0x26u);
      }

      _assetCollectionFailedError = [(MSASStateMachine *)self _assetCollectionFailedError];
      if ([v7 count] < 2)
      {
        [(MSASModelBase *)self->_model beginTransaction];
        firstObject = [v7 firstObject];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          selfCopy5 = self;
          v82 = 2114;
          *v83 = firstObject;
          *&v83[8] = 2114;
          *&v83[10] = v8;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Giving up uploading asset collections %{public}@ to album %{public}@.", buf, 0x20u);
        }

        model = self->_model;
        gUID = [firstObject GUID];
        [(MSASPersonModel *)model requeuePendingAssetCollectionGUID:gUID];

        [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:firstObject];
        eventQueue3 = [(MSASStateMachine *)self eventQueue];
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __59__MSASStateMachine__addAssetCollectionsDisposition_params___block_invoke;
        v72[3] = &unk_278E92688;
        v72[4] = self;
        v73 = firstObject;
        v74 = v8;
        v75 = v9;
        v76 = _assetCollectionFailedError;
        v17 = firstObject;
        dispatch_async(eventQueue3, v72);

        assetUploader = self->_assetUploader;
        v43 = [MEMORY[0x277CBEA60] arrayWithObject:v17];
        [(MSASAssetUploader *)assetUploader unregisterAssetCollections:v43];

        [(MSASModelBase *)self->_model endTransaction];
      }

      else
      {
        v15 = [v7 count] >> 1;
        v16 = [v7 count] - v15;
        v17 = [v7 subarrayWithRange:{0, v15}];
        v18 = [v7 subarrayWithRange:{v15, v16}];
        [(MSASStateMachine *)self addAssetCollections:v17 toAlbum:v8 info:v9];
        [(MSASStateMachine *)self addAssetCollections:v18 toAlbum:v8 info:v9];
      }

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }
  }
}

void __59__MSASStateMachine__addAssetCollectionsDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishAddingAssetCollection:*(a1 + 40) toAlbum:*(a1 + 48) info:*(a1 + 56) error:*(a1 + 64)];
}

void __59__MSASStateMachine__addAssetCollectionsDisposition_params___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 derivativeSpecifications];
  [v6 MSASStateMachine:v2 didRequestAssetsForAddingAssetCollections:v3 inAlbum:v4 specifications:v5 info:*(a1 + 56)];
}

void __59__MSASStateMachine__addAssetCollectionsDisposition_params___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [*(a1 + 40) delegate];
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        v11 = [v9 _canceledError];
        [v8 MSASStateMachine:v9 didFinishAddingAssetCollection:v7 toAlbum:0 info:v10 error:v11];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (void)addAssetCollections:(id)collections toAlbum:(id)album info:(id)info
{
  collectionsCopy = collections;
  albumCopy = album;
  infoCopy = info;
  v11 = [(MSASStateMachine *)self _createCopiedAssetsInAssetCollections:collectionsCopy];
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__MSASStateMachine_addAssetCollections_toAlbum_info___block_invoke;
  block[3] = &unk_278E92688;
  v18 = collectionsCopy;
  selfCopy = self;
  v20 = albumCopy;
  v21 = v11;
  v22 = infoCopy;
  v13 = infoCopy;
  v14 = v11;
  v15 = albumCopy;
  v16 = collectionsCopy;
  dispatch_async(workQueue, block);
}

void __53__MSASStateMachine_addAssetCollections_toAlbum_info___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v8 = [*(a1 + 40) _model];
        v9 = [v7 GUID];
        v10 = [*(a1 + 48) GUID];
        [v8 addPendingAssetCollectionGUID:v9 albumGUID:v10];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  v11 = [MEMORY[0x277CBEB38] dictionary];
  v12 = v11;
  if (*(a1 + 32))
  {
    [v11 setObject:*(a1 + 56) forKey:@"assetCollections"];
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    [v12 setObject:v13 forKey:@"album"];
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    [v12 setObject:v14 forKey:@"info"];
  }

  v15 = [*(a1 + 40) _model];
  v16 = NSStringFromSelector(sel__addAssetCollectionsDisposition_params_);
  v17 = [*(a1 + 40) personID];
  v18 = [*(a1 + 48) GUID];
  [v15 enqueueCommand:v16 params:v12 personID:v17 albumGUID:v18 assetCollectionGUID:0];

  [*(a1 + 40) workQueueRetryOutstandingActivities];
}

- (id)_createCopiedAssetsInAssetCollections:(id)collections
{
  v48 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(collectionsCopy, "count")}];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = collectionsCopy;
  v22 = [obj countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v22)
  {
    v20 = *v35;
    do
    {
      v4 = 0;
      do
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v4;
        v5 = [MSASAssetCollection assetCollectionWithAssetCollection:*(*(&v34 + 1) + 8 * v4)];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v23 = v5;
        assets = [v5 assets];
        v6 = [assets countByEnumeratingWithState:&v30 objects:v46 count:16];
        if (v6)
        {
          v7 = v6;
          v28 = *v31;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v31 != v28)
              {
                objc_enumerationMutation(assets);
              }

              v9 = *(*(&v30 + 1) + 8 * i);
              path = [v9 path];
              if (path)
              {
                personID = [(MSASStateMachine *)self personID];
                v12 = MSPathAlbumSharingAssetsDirForPersonID(personID);
                mSMakeUUID = [MEMORY[0x277CCACA8] MSMakeUUID];
                v14 = [v12 stringByAppendingPathComponent:mSMakeUUID];
                pathExtension = [path pathExtension];
                v16 = [v14 stringByAppendingPathExtension:pathExtension];

                v29 = 0;
                LODWORD(v14) = [defaultManager copyItemAtPath:path toPath:v16 error:&v29];
                v17 = v29;
                if (v14)
                {
                  [v9 setPath:v16];
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138544130;
                  selfCopy = self;
                  v40 = 2112;
                  v41 = path;
                  v42 = 2112;
                  v43 = v16;
                  v44 = 2114;
                  v45 = v17;
                  _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Cannot copy file from path %@ to %@. Error: %{public}@", buf, 0x2Au);
                }
              }
            }

            v7 = [assets countByEnumeratingWithState:&v30 objects:v46 count:16];
          }

          while (v7);
        }

        [v21 addObject:v23];
        v4 = v24 + 1;
      }

      while (v24 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v22);
  }

  return v21;
}

- (void)_updateAlbumDisposition:(int)disposition params:(id)params
{
  v28 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v8 = [paramsCopy objectForKey:@"info"];
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_3;
    v16[3] = &unk_278E92638;
    v16[4] = self;
    v17 = v7;
    v18 = v8;
    dispatch_async(eventQueue, v16);
  }

  else if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Updating album: %{public}@", buf, 0x16u);
    }

    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    objc_initWeak(buf, self);
    delegate = [(MSASStateMachine *)self delegate];
    gUID = [v7 GUID];
    v13 = [delegate MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:gUID info:v8];

    protocol2 = [(MSASStateMachine *)self protocol];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke;
    v19[3] = &unk_278E911E0;
    v19[4] = self;
    objc_copyWeak(&v23, buf);
    v20 = paramsCopy;
    v21 = v7;
    v22 = v8;
    [protocol2 updateAlbum:v21 albumURLString:v13 completionBlock:v19];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

void __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_2;
  block[3] = &unk_278E91340;
  v13 = v3;
  v5 = v3;
  objc_copyWeak(&v16, a1 + 8);
  v6 = a1[5];
  v7 = a1[6];
  v11 = a1[4];
  v8 = a1[7];
  *&v9 = v11;
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v14 = v10;
  v15 = v9;
  dispatch_async(v4, block);

  objc_destroyWeak(&v16);
}

void __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishUpdatingAlbum:v3 info:v4 error:v5];
}

void __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v3 = [WeakRetained workQueueEndCommandWithError:*(a1 + 32) command:0 params:*(a1 + 40) albumGUID:0 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v11 = objc_loadWeakRetained((a1 + 72));
        v12 = *(a1 + 48);
        v13 = [*(a1 + 32) MSVerboseDescription];
        *buf = 138543874;
        v26 = v11;
        v27 = 2114;
        v28 = v12;
        v29 = 2114;
        v30 = v13;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to update album %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v4 = [*(a1 + 56) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_239;
      block[3] = &unk_278E912C8;
      objc_copyWeak(&v24, (a1 + 72));
      v21 = *(a1 + 48);
      v22 = *(a1 + 64);
      v23 = *(a1 + 32);
      dispatch_async(v4, block);

      v5 = objc_loadWeakRetained((a1 + 72));
      [v5 workQueueDidFinishCommand];

      objc_destroyWeak(&v24);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 72));
      v7 = *(a1 + 48);
      *buf = 138543618;
      v26 = v6;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully updated album %{public}@", buf, 0x16u);
    }

    v8 = [*(a1 + 56) memberQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_240;
    v19[3] = &unk_278E926D8;
    v19[4] = *(a1 + 56);
    dispatch_barrier_sync(v8, v19);

    v9 = [*(a1 + 56) eventQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_2_241;
    v14[3] = &unk_278E912C8;
    objc_copyWeak(&v18, (a1 + 72));
    v15 = *(a1 + 48);
    v16 = *(a1 + 64);
    v17 = *(a1 + 32);
    dispatch_async(v9, v14);

    v10 = objc_loadWeakRetained((a1 + 72));
    [v10 workQueueDidFinishCommand];

    objc_destroyWeak(&v18);
  }
}

void __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_239(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishUpdatingAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

void __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_2_241(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v8 = objc_loadWeakRetained((a1 + 56));
  v6 = [v8 delegate];
  v7 = objc_loadWeakRetained((a1 + 56));
  [v6 MSASStateMachine:v7 didFinishUpdatingAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

- (void)updateAlbum:(id)album updateAlbumFlags:(int)flags info:(id)info
{
  albumCopy = album;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__MSASStateMachine_updateAlbum_updateAlbumFlags_info___block_invoke;
  v13[3] = &unk_278E91D70;
  v14 = albumCopy;
  v15 = infoCopy;
  flagsCopy = flags;
  selfCopy = self;
  v11 = infoCopy;
  v12 = albumCopy;
  dispatch_async(workQueue, v13);
}

void __54__MSASStateMachine_updateAlbum_updateAlbumFlags_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v10 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"album"];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    [v10 setObject:v4 forKey:@"info"];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  [v10 setObject:v5 forKey:@"albumFlags"];

  v6 = [*(a1 + 48) _model];
  v7 = NSStringFromSelector(sel__updateAlbumDisposition_params_);
  v8 = [*(a1 + 48) personID];
  v9 = [*(a1 + 32) GUID];
  [v6 enqueueCommand:v7 params:v10 personID:v8 albumGUID:v9 assetCollectionGUID:0];

  [*(a1 + 48) workQueueRetryOutstandingActivities];
}

- (void)_createAlbumDisposition:(int)disposition params:(id)params
{
  v24 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v8 = [paramsCopy objectForKey:@"info"];
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_3;
    block[3] = &unk_278E92638;
    block[4] = self;
    v14 = v7;
    v15 = v8;
    dispatch_async(eventQueue, block);
  }

  else if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Creating album: %{public}@", buf, 0x16u);
    }

    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    objc_initWeak(buf, self);
    protocol2 = [(MSASStateMachine *)self protocol];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__MSASStateMachine__createAlbumDisposition_params___block_invoke;
    v16[3] = &unk_278E91468;
    v16[4] = self;
    objc_copyWeak(&v19, buf);
    v17 = v7;
    v18 = v8;
    [protocol2 createAlbum:v17 completionBlock:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

void __51__MSASStateMachine__createAlbumDisposition_params___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_2;
  block[3] = &unk_278E913F0;
  v17 = v7;
  v11 = v7;
  objc_copyWeak(&v23, a1 + 7);
  v12 = a1[5];
  v13 = a1[4];
  v18 = v12;
  v19 = v13;
  v20 = a1[6];
  v21 = v8;
  v22 = v9;
  v14 = v9;
  v15 = v8;
  dispatch_async(v10, block);

  objc_destroyWeak(&v23);
}

void __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishCreatingAlbum:v3 info:v4 error:v5];
}

void __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v3 = [WeakRetained workQueueEndCommandWithError:*(a1 + 32) command:0 params:0 albumGUID:0 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v11 = objc_loadWeakRetained((a1 + 80));
        v12 = *(a1 + 40);
        v13 = [*(a1 + 32) MSVerboseDescription];
        *buf = 138543874;
        v26 = v11;
        v27 = 2114;
        v28 = v12;
        v29 = 2114;
        v30 = v13;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to create album %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v4 = [*(a1 + 48) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_233;
      block[3] = &unk_278E912C8;
      objc_copyWeak(&v24, (a1 + 80));
      v21 = *(a1 + 40);
      v22 = *(a1 + 56);
      v23 = *(a1 + 32);
      dispatch_async(v4, block);

      v5 = objc_loadWeakRetained((a1 + 80));
      [v5 workQueueDidFinishCommand];

      objc_destroyWeak(&v24);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = objc_loadWeakRetained((a1 + 80));
      v7 = *(a1 + 40);
      *buf = 138543618;
      v26 = v6;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully created album %{public}@", buf, 0x16u);
    }

    v8 = [*(a1 + 48) memberQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_234;
    v19[3] = &unk_278E926D8;
    v19[4] = *(a1 + 48);
    dispatch_barrier_sync(v8, v19);

    [*(a1 + 40) setCtag:*(a1 + 64)];
    [*(a1 + 40) setClientOrgKey:*(a1 + 72)];
    v9 = [*(a1 + 48) eventQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_2_235;
    v14[3] = &unk_278E912C8;
    objc_copyWeak(&v18, (a1 + 80));
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v17 = *(a1 + 32);
    dispatch_async(v9, v14);

    v10 = objc_loadWeakRetained((a1 + 80));
    [v10 workQueueDidFinishCommand];

    objc_destroyWeak(&v18);
  }
}

void __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_233(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishCreatingAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

void __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_2_235(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v8 = objc_loadWeakRetained((a1 + 56));
  v6 = [v8 delegate];
  v7 = objc_loadWeakRetained((a1 + 56));
  [v6 MSASStateMachine:v7 didFinishCreatingAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

- (void)createAlbum:(id)album info:(id)info
{
  albumCopy = album;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__MSASStateMachine_createAlbum_info___block_invoke;
  block[3] = &unk_278E92638;
  v12 = albumCopy;
  v13 = infoCopy;
  selfCopy = self;
  v9 = infoCopy;
  v10 = albumCopy;
  dispatch_async(workQueue, block);
}

void __37__MSASStateMachine_createAlbum_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v9 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"album"];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    [v9 setObject:v4 forKey:@"info"];
  }

  v5 = [*(a1 + 48) _model];
  v6 = NSStringFromSelector(sel__createAlbumDisposition_params_);
  v7 = [*(a1 + 48) personID];
  v8 = [*(a1 + 32) GUID];
  [v5 enqueueCommand:v6 params:v9 personID:v7 albumGUID:v8 assetCollectionGUID:0];

  [*(a1 + 48) workQueueRetryOutstandingActivities];
}

- (void)_deleteCommentDisposition:(int)disposition params:(id)params
{
  v45 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v18 = [paramsCopy objectForKey:@"comment"];
  v7 = [paramsCopy objectForKey:@"assetCollection"];
  v8 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v9 = [paramsCopy objectForKey:@"info"];
  v10 = [paramsCopy objectForKey:@"error"];
  v11 = v10;
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_2_230;
    v19[3] = &unk_278E92688;
    v19[4] = self;
    v20 = v18;
    v21 = v7;
    v22 = v8;
    v23 = v9;
    dispatch_async(eventQueue, v19);
  }

  else if (!disposition)
  {
    if (v10)
    {
      eventQueue2 = [(MSASStateMachine *)self eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke;
      block[3] = &unk_278E92048;
      block[4] = self;
      v32 = v18;
      v33 = v7;
      v34 = v8;
      v35 = v9;
      v36 = v11;
      dispatch_async(eventQueue2, block);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        selfCopy = self;
        v39 = 2114;
        v40 = v18;
        v41 = 2114;
        v42 = v7;
        v43 = 2114;
        v44 = v8;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting comment %{public}@ from asset collection %{public}@ in album %{public}@.", buf, 0x2Au);
      }

      objc_initWeak(buf, self);
      delegate = [(MSASStateMachine *)self delegate];
      gUID = [v8 GUID];
      v16 = [delegate MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:gUID info:v9];

      protocol = [(MSASStateMachine *)self protocol];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_227;
      v24[3] = &unk_278E91440;
      v24[4] = self;
      objc_copyWeak(&v30, buf);
      v25 = paramsCopy;
      v26 = v8;
      v27 = v7;
      v28 = v18;
      v29 = v9;
      [protocol deleteComment:v28 fromAssetCollection:v27 inAlbum:v26 albumURLString:v16 completionBlock:v24];

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }
  }
}

void __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishDeletingComment:*(a1 + 40) inAssetCollection:*(a1 + 48) inAlbum:*(a1 + 56) info:*(a1 + 64) error:*(a1 + 72)];
}

void __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_227(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_2;
  v12[3] = &unk_278E91268;
  v13 = v3;
  v5 = v3;
  objc_copyWeak(&v18, a1 + 10);
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v14 = v11;
  v15 = v10;
  v16 = a1[4];
  v17 = a1[9];
  dispatch_async(v4, v12);

  objc_destroyWeak(&v18);
}

void __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_2_230(uint64_t a1)
{
  v8 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = [v2 _canceledError];
  [v8 MSASStateMachine:v2 didFinishDeletingComment:v3 inAssetCollection:v4 inAlbum:v5 info:v6 error:v7];
}

void __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_2(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v3 = *(a1 + 32);
    v4 = NSStringFromSelector(sel__deleteCommentDisposition_params_);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) GUID];
    v7 = [*(a1 + 56) GUID];
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v3 command:v4 params:v5 albumGUID:v6 assetCollectionGUID:v7];

    if (v3)
    {
      return;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v21 = objc_loadWeakRetained((a1 + 88));
      v22 = *(a1 + 56);
      v23 = *(a1 + 64);
      v24 = *(a1 + 48);
      v25 = [*(a1 + 32) MSVerboseDescription];
      *buf = 138544386;
      v40 = v21;
      v41 = 2114;
      v42 = v23;
      v43 = 2114;
      v44 = v22;
      v45 = 2114;
      v46 = v24;
      v47 = 2114;
      v48 = v25;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete comment %{public}@ from asset collection %{public}@ in album %{public}@. Error: %{public}@", buf, 0x34u);
    }

    v8 = [*(a1 + 72) eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_228;
    block[3] = &unk_278E91340;
    v9 = &v38;
    objc_copyWeak(&v38, (a1 + 88));
    v33 = *(a1 + 64);
    v34 = *(a1 + 56);
    v35 = *(a1 + 48);
    v36 = *(a1 + 80);
    v37 = *(a1 + 32);
    dispatch_async(v8, block);

    v10 = objc_loadWeakRetained((a1 + 88));
    [v10 workQueueDidFinishCommand];

    v11 = &v33;
    v12 = &v34;
    v13 = &v35;
    v14 = &v36;
    v15 = v37;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = objc_loadWeakRetained((a1 + 88));
      v18 = *(a1 + 56);
      v17 = *(a1 + 64);
      v19 = *(a1 + 48);
      *buf = 138544130;
      v40 = v16;
      v41 = 2114;
      v42 = v17;
      v43 = 2114;
      v44 = v18;
      v45 = 2114;
      v46 = v19;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully deleted comment %{public}@ from asset collection %{public}@ in album %{public}@.", buf, 0x2Au);
    }

    v20 = [*(a1 + 72) eventQueue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_229;
    v26[3] = &unk_278E911B0;
    v9 = &v31;
    objc_copyWeak(&v31, (a1 + 88));
    v27 = *(a1 + 64);
    v28 = *(a1 + 56);
    v29 = *(a1 + 48);
    v30 = *(a1 + 80);
    dispatch_async(v20, v26);

    v15 = objc_loadWeakRetained((a1 + 88));
    [v15 workQueueDidFinishCommand];
    v11 = &v27;
    v12 = &v28;
    v13 = &v29;
    v14 = &v30;
  }

  objc_destroyWeak(v9);
}

void __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_228(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 72));
  [v2 MSASStateMachine:v3 didFinishDeletingComment:*(a1 + 32) inAssetCollection:*(a1 + 40) inAlbum:*(a1 + 48) info:*(a1 + 56) error:*(a1 + 64)];
}

void __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_229(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 64));
  [v2 MSASStateMachine:v3 didFinishDeletingComment:*(a1 + 32) inAssetCollection:*(a1 + 40) inAlbum:*(a1 + 48) info:*(a1 + 56) error:0];
}

- (void)deleteComments:(id)comments inAssetCollection:(id)collection inAlbum:(id)album info:(id)info
{
  commentsCopy = comments;
  collectionCopy = collection;
  albumCopy = album;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MSASStateMachine_deleteComments_inAssetCollection_inAlbum_info___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v20 = commentsCopy;
  v21 = collectionCopy;
  v22 = albumCopy;
  v23 = infoCopy;
  v15 = infoCopy;
  v16 = albumCopy;
  v17 = collectionCopy;
  v18 = commentsCopy;
  dispatch_async(workQueue, block);
}

uint64_t __66__MSASStateMachine_deleteComments_inAssetCollection_inAlbum_info___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) count];
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    *buf = 138544130;
    v30 = v2;
    v31 = 2048;
    v32 = v3;
    v33 = 2114;
    v34 = v4;
    v35 = 2114;
    v36 = v5;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling deletion of %ld comments in asset collection %{public}@ in album %{public}@.", buf, 0x2Au);
  }

  v6 = [*(a1 + 32) _model];
  [v6 beginTransaction];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 40);
  v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v23 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = [MEMORY[0x277CBEB38] dictionary];
        [v11 setObject:v10 forKey:@"comment"];
        v12 = *(a1 + 48);
        if (v12)
        {
          [v11 setObject:v12 forKey:@"assetCollection"];
        }

        v13 = *(a1 + 56);
        if (v13)
        {
          [v11 setObject:v13 forKey:@"album"];
        }

        v14 = *(a1 + 64);
        if (v14)
        {
          [v11 setObject:v14 forKey:@"info"];
        }

        v15 = [*(a1 + 32) _model];
        v16 = NSStringFromSelector(sel__deleteCommentDisposition_params_);
        v17 = [*(a1 + 32) personID];
        v18 = [*(a1 + 56) GUID];
        v19 = [*(a1 + 48) GUID];
        [v15 enqueueCommand:v16 params:v11 personID:v17 albumGUID:v18 pendingOnAssetCollectionGUID:v19];

        ++v9;
      }

      while (v8 != v9);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v20 = [*(a1 + 32) _model];
  [v20 endTransaction];

  return [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)_deleteAssetCollectionsDisposition:(int)disposition params:(id)params
{
  v32 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v8 = [paramsCopy objectForKey:@"assetCollections"];
  v9 = [paramsCopy objectForKey:@"info"];
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_3;
    block[3] = &unk_278E92660;
    v17 = v8;
    selfCopy = self;
    v19 = v7;
    v20 = v9;
    dispatch_async(eventQueue, block);
  }

  else if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v28 = 2048;
      v29 = [v8 count];
      v30 = 2114;
      v31 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting %ld photos in album %{public}@", buf, 0x20u);
    }

    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    _model = [(MSASStateMachine *)self _model];
    [_model removeAssetCollectionsFromUploadQueue:v8];

    _assetUploader = [(MSASStateMachine *)self _assetUploader];
    [_assetUploader cancelAssetCollections:v8];

    objc_initWeak(buf, self);
    protocol2 = [(MSASStateMachine *)self protocol];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke;
    v21[3] = &unk_278E911E0;
    v21[4] = self;
    objc_copyWeak(&v25, buf);
    v22 = v8;
    v23 = v7;
    v24 = v9;
    [protocol2 deleteAssetCollections:v22 inAlbum:v23 completionBlock:v21];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }
}

void __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_2;
  block[3] = &unk_278E91340;
  v13 = v3;
  v5 = v3;
  objc_copyWeak(&v16, a1 + 8);
  v6 = a1[5];
  v7 = a1[6];
  v11 = a1[4];
  v8 = a1[7];
  *&v9 = v11;
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v14 = v10;
  v15 = v9;
  dispatch_async(v4, block);

  objc_destroyWeak(&v16);
}

void __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [*(a1 + 40) delegate];
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = *(a1 + 56);
        v11 = [v8 _canceledError];
        [v7 MSASStateMachine:v8 didFinishDeletingAssetCollection:v6 inAlbum:v9 info:v10 error:v11];
      }

      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }
}

void __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_2(id *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    WeakRetained = objc_loadWeakRetained(a1 + 9);
    v3 = a1[4];
    v4 = NSStringFromSelector(sel__deleteAssetCollectionsDisposition_params_);
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v3 command:v4 params:0 albumGUID:0 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v13 = objc_loadWeakRetained(a1 + 9);
        v14 = [a1[5] count];
        v15 = a1[6];
        v16 = [a1[4] MSVerboseDescription];
        *buf = 138544130;
        v33 = v13;
        v34 = 2048;
        v35 = v14;
        v36 = 2114;
        v37 = v15;
        v38 = 2114;
        v39 = v16;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete %ld asset collections in album %{public}@. Error: %{public}@", buf, 0x2Au);
      }

      v5 = [a1[7] eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_222;
      block[3] = &unk_278E911B0;
      v27 = a1[5];
      objc_copyWeak(&v31, a1 + 9);
      v28 = a1[6];
      v29 = a1[8];
      v30 = a1[4];
      dispatch_async(v5, block);

      v6 = objc_loadWeakRetained(a1 + 9);
      [v6 workQueueDidFinishCommand];

      objc_destroyWeak(&v31);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = objc_loadWeakRetained(a1 + 9);
      v8 = [a1[5] count];
      v9 = a1[6];
      *buf = 138543874;
      v33 = v7;
      v34 = 2048;
      v35 = v8;
      v36 = 2114;
      v37 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully deleted %ld photos in album %{public}@", buf, 0x20u);
    }

    v10 = [a1[7] memberQueue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_223;
    v25[3] = &unk_278E926D8;
    v25[4] = a1[7];
    dispatch_barrier_sync(v10, v25);

    v11 = [a1[7] eventQueue];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_2_224;
    v20 = &unk_278E912C8;
    objc_copyWeak(&v24, a1 + 9);
    v21 = a1[5];
    v22 = a1[6];
    v23 = a1[8];
    dispatch_async(v11, &v17);

    v12 = objc_loadWeakRetained(a1 + 9);
    [v12 workQueueDidFinishCommand];

    objc_destroyWeak(&v24);
  }
}

void __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_222(uint64_t a1)
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
        WeakRetained = objc_loadWeakRetained((a1 + 64));
        v9 = [WeakRetained delegate];
        v10 = objc_loadWeakRetained((a1 + 64));
        [v9 MSASStateMachine:v10 didFinishDeletingAssetCollection:v7 inAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_2_224(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = objc_loadWeakRetained((a1 + 56));
        v13 = [v12 delegate];
        v14 = objc_loadWeakRetained((a1 + 56));
        [v13 MSASStateMachine:v14 didFinishDeletingAssetCollection:v11 inAlbum:*(a1 + 40) info:*(a1 + 48) error:0];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)deleteAssetCollections:(id)collections inAlbum:(id)album info:(id)info
{
  collectionsCopy = collections;
  albumCopy = album;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__MSASStateMachine_deleteAssetCollections_inAlbum_info___block_invoke;
  v15[3] = &unk_278E92660;
  v16 = albumCopy;
  v17 = collectionsCopy;
  v18 = infoCopy;
  selfCopy = self;
  v12 = infoCopy;
  v13 = collectionsCopy;
  v14 = albumCopy;
  dispatch_async(workQueue, v15);
}

void __56__MSASStateMachine_deleteAssetCollections_inAlbum_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v10 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"album"];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    [v10 setObject:v4 forKey:@"assetCollections"];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    [v10 setObject:v5 forKey:@"info"];
  }

  v6 = [*(a1 + 56) _model];
  v7 = NSStringFromSelector(sel__deleteAssetCollectionsDisposition_params_);
  v8 = [*(a1 + 56) personID];
  v9 = [*(a1 + 32) GUID];
  [v6 enqueueCommand:v7 params:v10 personID:v8 albumGUID:v9 assetCollectionGUID:0];

  [*(a1 + 56) workQueueRetryOutstandingActivities];
}

- (void)_deleteAlbumDisposition:(int)disposition params:(id)params
{
  v24 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v8 = [paramsCopy objectForKey:@"info"];
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_3;
    block[3] = &unk_278E92638;
    block[4] = self;
    v14 = v7;
    v15 = v8;
    dispatch_async(eventQueue, block);
  }

  else if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting album: %{public}@", buf, 0x16u);
    }

    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    objc_initWeak(buf, self);
    protocol2 = [(MSASStateMachine *)self protocol];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke;
    v16[3] = &unk_278E91210;
    v16[4] = self;
    objc_copyWeak(&v19, buf);
    v17 = v7;
    v18 = v8;
    [protocol2 deleteAlbum:v17 completionBlock:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

void __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_2;
  block[3] = &unk_278E911B0;
  v8 = v3;
  v5 = v3;
  objc_copyWeak(&v12, (a1 + 56));
  v6 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v6;
  v11 = *(a1 + 48);
  dispatch_async(v4, block);

  objc_destroyWeak(&v12);
}

void __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishDeletingAlbum:v3 info:v4 error:v5];
}

void __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_2(id *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    WeakRetained = objc_loadWeakRetained(a1 + 8);
    v3 = [WeakRetained workQueueEndCommandWithError:a1[4] command:0 params:0 albumGUID:0 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v11 = objc_loadWeakRetained(a1 + 8);
        v12 = [a1[4] MSVerboseDescription];
        *buf = 138543618;
        v25 = v11;
        v26 = 2114;
        v27 = v12;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete album. Error: %{public}@", buf, 0x16u);
      }

      v4 = [a1[5] eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_217;
      block[3] = &unk_278E912C8;
      objc_copyWeak(&v23, a1 + 8);
      v20 = a1[6];
      v21 = a1[7];
      v22 = a1[4];
      dispatch_async(v4, block);

      v5 = objc_loadWeakRetained(a1 + 8);
      [v5 workQueueDidFinishCommand];

      objc_destroyWeak(&v23);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = objc_loadWeakRetained(a1 + 8);
      v7 = a1[6];
      *buf = 138543618;
      v25 = v6;
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully deleted album %{public}@", buf, 0x16u);
    }

    v8 = [a1[5] memberQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_218;
    v18[3] = &unk_278E926D8;
    v18[4] = a1[5];
    dispatch_barrier_sync(v8, v18);

    v9 = [a1[5] eventQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_2_219;
    v13[3] = &unk_278E912C8;
    objc_copyWeak(&v17, a1 + 8);
    v14 = a1[6];
    v15 = a1[7];
    v16 = a1[4];
    dispatch_async(v9, v13);

    v10 = objc_loadWeakRetained(a1 + 8);
    [v10 workQueueDidFinishCommand];

    objc_destroyWeak(&v17);
  }
}

void __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_217(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishDeletingAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

void __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_2_219(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v8 = objc_loadWeakRetained((a1 + 56));
  v6 = [v8 delegate];
  v7 = objc_loadWeakRetained((a1 + 56));
  [v6 MSASStateMachine:v7 didFinishDeletingAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

- (void)deleteAlbum:(id)album info:(id)info
{
  albumCopy = album;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__MSASStateMachine_deleteAlbum_info___block_invoke;
  block[3] = &unk_278E92638;
  v12 = albumCopy;
  v13 = infoCopy;
  selfCopy = self;
  v9 = infoCopy;
  v10 = albumCopy;
  dispatch_async(workQueue, block);
}

void __37__MSASStateMachine_deleteAlbum_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v9 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"album"];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    [v9 setObject:v4 forKey:@"info"];
  }

  v5 = [*(a1 + 48) _model];
  v6 = NSStringFromSelector(sel__deleteAlbumDisposition_params_);
  v7 = [*(a1 + 48) personID];
  v8 = [*(a1 + 32) GUID];
  [v5 enqueueCommand:v6 params:v9 personID:v7 albumGUID:v8 assetCollectionGUID:0];

  [*(a1 + 48) workQueueRetryOutstandingActivities];
}

- (void)_setAssetCollectionSyncedStateDisposition:(int)disposition params:(id)params
{
  v44 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [paramsCopy objectForKey:@"assetCollection"];
  v8 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v9 = [paramsCopy objectForKey:@"assetCollectionState"];
  v10 = [paramsCopy objectForKey:@"info"];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__4549;
  v36 = __Block_byref_object_dispose__4550;
  v37 = 0;
  eventQueue = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke;
  block[3] = &unk_278E91888;
  v31 = &v32;
  block[4] = self;
  v12 = v7;
  v29 = v12;
  v13 = v10;
  v30 = v13;
  dispatch_sync(eventQueue, block);

  if (disposition == 2)
  {
    eventQueue2 = [(MSASStateMachine *)self eventQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_3;
    v19[3] = &unk_278E92660;
    v19[4] = self;
    v20 = v12;
    v21 = v8;
    v22 = v13;
    dispatch_async(eventQueue2, v19);
  }

  else if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      selfCopy = self;
      v40 = 2114;
      v41 = v12;
      v42 = 2114;
      v43 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting synced state for asset collection %{public}@ in album %{public}@", buf, 0x20u);
    }

    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    objc_initWeak(buf, self);
    protocol2 = [(MSASStateMachine *)self protocol];
    v17 = v33[5];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_212;
    v23[3] = &unk_278E91418;
    objc_copyWeak(&v27, buf);
    v24 = v12;
    v25 = v8;
    v26 = v13;
    [protocol2 setAssetCollectionSyncedState:v9 forAssetCollection:v24 inAlbum:v25 assetCollectionStateCtag:v17 completionBlock:v23];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v32, 8);
}

void __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 40) GUID];
  v3 = [v6 MSASStateMachineDidRequestAssetCollectionStateCtagForAssetCollectionWithGUID:v2 info:*(a1 + 48)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_212(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = [WeakRetained workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_2;
  block[3] = &unk_278E913F0;
  v13 = v5;
  v14 = WeakRetained;
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[6];
  v9 = WeakRetained;
  v10 = v5;
  objc_copyWeak(&v19, a1 + 7);
  v18 = v6;
  v11 = v6;
  dispatch_async(v8, block);

  objc_destroyWeak(&v19);
}

void __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_3(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = [v2 _canceledError];
  [v7 MSASStateMachine:v2 didFinishSettingSyncedStateForAssetCollection:v3 inAlbum:v5 assetStateCtag:0 info:v4 error:v6];
}

void __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_2(id *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    if ([v2 workQueueEndCommandWithError:v3 command:0 params:0 albumGUID:0 assetCollectionGUID:0])
    {
      return;
    }

    if ([a1[4] MSContainsErrorWithDomain:*MEMORY[0x277CBACE8] code:400])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_9:
        v14 = [a1[5] eventQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_213;
        block[3] = &unk_278E92688;
        v9 = &v35;
        v10 = &v35 + 1;
        v11 = &v36;
        v12 = &v36 + 1;
        v15 = a1[5];
        v16 = a1[6];
        v17 = a1[7];
        v18 = a1[8];
        *&v19 = v17;
        *(&v19 + 1) = v18;
        *&v20 = v15;
        *(&v20 + 1) = v16;
        v35 = v20;
        v36 = v19;
        v13 = &v37;
        v37 = a1[4];
        dispatch_async(v14, block);

        WeakRetained = objc_loadWeakRetained(a1 + 10);
        [WeakRetained workQueueDidFinishCommand];

        goto LABEL_10;
      }

      v4 = a1[6];
      v5 = a1[7];
      v6 = a1[5];
      v7 = [a1[4] MSVerboseDescription];
      *buf = 138544130;
      v39 = v6;
      v40 = 2114;
      v41 = v4;
      v42 = 2114;
      v43 = v5;
      v44 = 2114;
      v45 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Can't set synced state for asset collection %{public}@ in album %{public}@. This is not an error. Status: %{public}@", buf, 0x2Au);
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v22 = a1[6];
      v23 = a1[7];
      v24 = a1[5];
      v7 = [a1[4] MSVerboseDescription];
      *buf = 138544130;
      v39 = v24;
      v40 = 2114;
      v41 = v22;
      v42 = 2114;
      v43 = v23;
      v44 = 2114;
      v45 = v7;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to set synced state for asset collection %{public}@ in album %{public}@. Error: %{public}@", buf, 0x2Au);
    }

    goto LABEL_9;
  }

  v8 = [v2 eventQueue];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_2_214;
  v28 = &unk_278E92688;
  v9 = &v29;
  v29 = a1[5];
  v10 = &v30;
  v30 = a1[6];
  v11 = &v31;
  v31 = a1[7];
  v12 = &v32;
  v32 = a1[9];
  v13 = &v33;
  v33 = a1[8];
  dispatch_async(v8, &v25);

  [a1[5] workQueueDidFinishCommand];
LABEL_10:
}

void __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_213(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishSettingSyncedStateForAssetCollection:*(a1 + 40) inAlbum:*(a1 + 48) assetStateCtag:0 info:*(a1 + 56) error:*(a1 + 64)];
}

void __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_2_214(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishSettingSyncedStateForAssetCollection:*(a1 + 40) inAlbum:*(a1 + 48) assetStateCtag:*(a1 + 56) info:*(a1 + 64) error:0];
}

- (void)setAssetCollectionSyncedState:(id)state forAssetCollection:(id)collection album:(id)album info:(id)info
{
  stateCopy = state;
  collectionCopy = collection;
  albumCopy = album;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__MSASStateMachine_setAssetCollectionSyncedState_forAssetCollection_album_info___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v20 = collectionCopy;
  v21 = albumCopy;
  v22 = stateCopy;
  v23 = infoCopy;
  v15 = infoCopy;
  v16 = stateCopy;
  v17 = albumCopy;
  v18 = collectionCopy;
  dispatch_async(workQueue, block);
}

void __80__MSASStateMachine_setAssetCollectionSyncedState_forAssetCollection_album_info___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v16 = 138543874;
    v17 = v2;
    v18 = 2114;
    v19 = v3;
    v20 = 2114;
    v21 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling setting asset collection synced state for asset collection %{public}@ in album %{public}@", &v16, 0x20u);
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"assetCollection"];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    [v6 setObject:v8 forKey:@"album"];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    [v6 setObject:v9 forKey:@"assetCollectionState"];
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    [v6 setObject:v10 forKey:@"info"];
  }

  v11 = [*(a1 + 32) _model];
  v12 = NSStringFromSelector(sel__setAssetCollectionSyncedStateDisposition_params_);
  v13 = [*(a1 + 32) personID];
  v14 = [*(a1 + 48) GUID];
  v15 = [*(a1 + 40) GUID];
  [v11 enqueueCommand:v12 params:v6 personID:v13 albumGUID:v14 assetCollectionGUID:v15];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)_setAlbumSyncedStateDisposition:(int)disposition params:(id)params
{
  v43 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v8 = [paramsCopy objectForKey:@"albumState"];
  v9 = [paramsCopy objectForKey:@"info"];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4549;
  v37 = __Block_byref_object_dispose__4550;
  v38 = 0;
  eventQueue = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke;
  block[3] = &unk_278E91888;
  v32 = &v33;
  block[4] = self;
  v11 = v7;
  v30 = v11;
  v12 = v9;
  v31 = v12;
  dispatch_sync(eventQueue, block);

  if (disposition == 2)
  {
    eventQueue2 = [(MSASStateMachine *)self eventQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_2_209;
    v19[3] = &unk_278E92638;
    v19[4] = self;
    v20 = v11;
    v21 = v12;
    dispatch_async(eventQueue2, v19);
  }

  else if (!disposition)
  {
    if (v34[5])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v41 = 2114;
        v42 = v11;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Setting synced state for album %{public}@", buf, 0x16u);
      }

      protocol = [(MSASStateMachine *)self protocol];
      stopHandlerBlock = [protocol stopHandlerBlock];
      [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

      objc_initWeak(buf, self);
      protocol2 = [(MSASStateMachine *)self protocol];
      v16 = v34[5];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_202;
      v25[3] = &unk_278E913C0;
      objc_copyWeak(&v28, buf);
      v26 = v11;
      v27 = v12;
      [protocol2 setAlbumSyncedState:v8 forAlbum:v26 albumStateCtag:v16 completionBlock:v25];

      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v41 = 2114;
        v42 = v11;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Not setting synced state for album %{public}@ because we don't have a state ctag.", buf, 0x16u);
      }

      eventQueue3 = [(MSASStateMachine *)self eventQueue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_205;
      v22[3] = &unk_278E92638;
      v22[4] = self;
      v23 = v11;
      v24 = v12;
      dispatch_async(eventQueue3, v22);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }
  }

  _Block_object_dispose(&v33, 8);
}

void __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 40) GUID];
  v3 = [v6 MSASStateMachineDidRequestAlbumStateCtagForAlbumWithGUID:v2 info:*(a1 + 48)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_202(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = [WeakRetained workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_2;
  block[3] = &unk_278E92688;
  v13 = v5;
  v14 = WeakRetained;
  v15 = a1[4];
  v16 = a1[5];
  v17 = v6;
  v9 = v6;
  v10 = WeakRetained;
  v11 = v5;
  dispatch_async(v8, block);
}

void __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_205(uint64_t a1)
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_STATE_ALBUM_STATE_CTAG_MISSING");
  v5 = [v2 MSErrorWithDomain:@"MSASStateMachineErrorDomain" code:3 description:v3];

  v4 = [*(a1 + 32) delegate];
  [v4 MSASStateMachine:*(a1 + 32) didFinishSettingSyncedStateForAlbum:*(a1 + 40) info:*(a1 + 48) error:v5 newAlbumStateCtag:0];
}

void __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_2_209(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishSettingSyncedStateForAlbum:v3 info:v4 error:v5 newAlbumStateCtag:0];
}

void __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_2(id *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    if ([v2 workQueueEndCommandWithError:v3 command:0 params:0 albumGUID:0 assetCollectionGUID:0])
    {
      return;
    }

    if ([a1[4] MSContainsErrorWithDomain:*MEMORY[0x277CBACE8] code:400])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_9:
        v18 = [a1[5] eventQueue];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_203;
        v31[3] = &unk_278E92660;
        v8 = &v32;
        v9 = &v32 + 1;
        v10 = &v33;
        v11 = &v33 + 1;
        v19 = a1[5];
        v20 = a1[6];
        v21 = a1[7];
        v22 = a1[4];
        *&v23 = v21;
        *(&v23 + 1) = v22;
        *&v24 = v19;
        *(&v24 + 1) = v20;
        v32 = v24;
        v33 = v23;
        dispatch_async(v18, v31);

        [a1[5] workQueueDidFinishCommand];
        goto LABEL_10;
      }

      v5 = a1[5];
      v4 = a1[6];
      v6 = [a1[4] MSVerboseDescription];
      *buf = 138543874;
      v35 = v5;
      v36 = 2114;
      v37 = v4;
      v38 = 2114;
      v39 = v6;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Can't set synced state for album %{public}@. This is not an error. Status: %{public}@", buf, 0x20u);
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v26 = a1[5];
      v25 = a1[6];
      v6 = [a1[4] MSVerboseDescription];
      *buf = 138543874;
      v35 = v26;
      v36 = 2114;
      v37 = v25;
      v38 = 2114;
      v39 = v6;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to set synced state for album %{public}@. Error: %{public}@", buf, 0x20u);
    }

    goto LABEL_9;
  }

  v7 = [v2 eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_2_204;
  block[3] = &unk_278E92688;
  v8 = &v28;
  v9 = &v28 + 1;
  v10 = &v29;
  v11 = &v29 + 1;
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v15 = a1[4];
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v28 = v17;
  v29 = v16;
  v30 = a1[8];
  dispatch_async(v7, block);

  [a1[5] workQueueDidFinishCommand];
LABEL_10:
}

void __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_203(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishSettingSyncedStateForAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56) newAlbumStateCtag:0];
}

void __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_2_204(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishSettingSyncedStateForAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56) newAlbumStateCtag:*(a1 + 64)];
}

- (void)setAlbumSyncedState:(id)state forAlbum:(id)album info:(id)info
{
  stateCopy = state;
  albumCopy = album;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__MSASStateMachine_setAlbumSyncedState_forAlbum_info___block_invoke;
  v15[3] = &unk_278E92660;
  v15[4] = self;
  v16 = albumCopy;
  v17 = stateCopy;
  v18 = infoCopy;
  v12 = infoCopy;
  v13 = stateCopy;
  v14 = albumCopy;
  dispatch_async(workQueue, v15);
}

void __54__MSASStateMachine_setAlbumSyncedState_forAlbum_info___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v13 = 138543618;
    v14 = v2;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling setting album synced state for album %{public}@", &v13, 0x16u);
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"album"];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"albumState"];
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    [v5 setObject:v8 forKey:@"info"];
  }

  v9 = [*(a1 + 32) _model];
  v10 = NSStringFromSelector(sel__setAlbumSyncedStateDisposition_params_);
  v11 = [*(a1 + 32) personID];
  v12 = [*(a1 + 40) GUID];
  [v9 enqueueCommand:v10 params:v5 personID:v11 albumGUID:v12 assetCollectionGUID:0];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)_checkForAlbumSyncedStateDisposition:(int)disposition params:(id)params
{
  v38 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v8 = [paramsCopy objectForKey:@"info"];
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_3_199;
    v20[3] = &unk_278E92638;
    v20[4] = self;
    v21 = v7;
    v22 = v8;
    dispatch_async(eventQueue, v20);

    v17 = &v21;
    v18 = &v22;
LABEL_7:

    goto LABEL_8;
  }

  if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *location = 138543618;
      *&location[4] = self;
      v36 = 2114;
      v37 = v7;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Checking for album synced state changes in album %{public}@", location, 0x16u);
    }

    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    eventQueue2 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke;
    block[3] = &unk_278E92638;
    block[4] = self;
    v12 = v7;
    v33 = v12;
    v13 = v8;
    v34 = v13;
    dispatch_async(eventQueue2, block);

    objc_initWeak(location, self);
    protocol2 = [(MSASStateMachine *)self protocol];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_2;
    v28[3] = &unk_278E91368;
    v28[4] = self;
    objc_copyWeak(&v31, location);
    v15 = v12;
    v29 = v15;
    v16 = v13;
    v30 = v16;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_4;
    v23[3] = &unk_278E91390;
    objc_copyWeak(&v27, location);
    v24 = v15;
    selfCopy = self;
    v26 = v16;
    [protocol2 getAlbumSyncedStateForAlbum:v24 assetCollectionStateBlock:v28 completionBlock:v23];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v31);
    objc_destroyWeak(location);
    v17 = &v33;
    v18 = &v34;
    goto LABEL_7;
  }

LABEL_8:
}

void __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) willCheckForAlbumSyncedStateChangesInAlbum:*(a1 + 40) info:*(a1 + 48)];
}

void __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] eventQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_3;
  v14[3] = &unk_278E91340;
  objc_copyWeak(&v20, a1 + 7);
  v15 = v8;
  v16 = v7;
  v17 = a1[5];
  v18 = v9;
  v19 = a1[6];
  v11 = v9;
  v12 = v7;
  v13 = v8;
  dispatch_async(v10, v14);

  objc_destroyWeak(&v20);
}

void __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_4(id *a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    v18 = [a1[5] eventQueue];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_2_197;
    v26 = &unk_278E91340;
    v13 = &v32;
    objc_copyWeak(&v32, a1 + 7);
    v27 = v8;
    v28 = a1[4];
    v29 = a1[6];
    v30 = 0;
    v31 = v9;
    dispatch_async(v18, &v23);

    WeakRetained = objc_loadWeakRetained(a1 + 7);
    [WeakRetained workQueueDidFinishCommand];

    v15 = &v27;
    v16 = &v28;
    v17 = &v29;
    v14 = v30;
LABEL_7:

    objc_destroyWeak(v13);
    goto LABEL_8;
  }

  v10 = objc_loadWeakRetained(a1 + 7);
  v11 = [v10 workQueueEndCommandWithError:v7 command:0 params:0 albumGUID:0 assetCollectionGUID:0];

  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v20 = objc_loadWeakRetained(a1 + 7);
      v21 = a1[4];
      v22 = [v7 MSVerboseDescription];
      *buf = 138543874;
      v39 = v20;
      v40 = 2114;
      v41 = v21;
      v42 = 2114;
      v43 = v22;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to check for synced state changes in album %{public}@. Error: %{public}@", buf, 0x20u);
    }

    v12 = [a1[5] eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_196;
    block[3] = &unk_278E912C8;
    v13 = &v37;
    objc_copyWeak(&v37, a1 + 7);
    v34 = a1[4];
    v35 = a1[6];
    v36 = v7;
    dispatch_async(v12, block);

    v14 = objc_loadWeakRetained(a1 + 7);
    [v14 workQueueDidFinishCommand];
    v15 = &v34;
    v16 = &v35;
    v17 = &v36;
    goto LABEL_7;
  }

LABEL_8:
}

void __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_3_199(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishCheckingForAlbumSyncedStateChangesInAlbum:v3 info:v4 error:v5 newAlbumStateCtag:0];
}

void __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_196(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishCheckingForAlbumSyncedStateChangesInAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48) newAlbumStateCtag:0];
}

void __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_2_197(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 72));
  [v3 MSASStateMachine:v4 didFindAlbumSyncedState:*(a1 + 32) forAlbum:*(a1 + 40) info:*(a1 + 48)];

  v7 = objc_loadWeakRetained((a1 + 72));
  v5 = [v7 delegate];
  v6 = objc_loadWeakRetained((a1 + 72));
  [v5 MSASStateMachine:v6 didFinishCheckingForAlbumSyncedStateChangesInAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56) newAlbumStateCtag:*(a1 + 64)];
}

void __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 72));
  [v2 MSASStateMachine:v3 didFindAssetCollectionSyncedState:*(a1 + 32) forAssetCollectionGUID:*(a1 + 40) inAlbum:*(a1 + 48) assetCollectionStateCtag:*(a1 + 56) info:*(a1 + 64)];
}

- (void)checkForAlbumSyncedStateChangesInAlbums:(id)albums info:(id)info
{
  albumsCopy = albums;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__MSASStateMachine_checkForAlbumSyncedStateChangesInAlbums_info___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = albumsCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = albumsCopy;
  dispatch_async(workQueue, block);
}

uint64_t __65__MSASStateMachine_checkForAlbumSyncedStateChangesInAlbums_info___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    *buf = 138543618;
    v26 = v2;
    v27 = 2114;
    v28 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling checking for album synced state changes in albums %{public}@", buf, 0x16u);
  }

  v4 = [*(a1 + 32) _model];
  [v4 beginTransaction];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = [MEMORY[0x277CBEB38] dictionary];
        v11 = v10;
        if (v9)
        {
          [v10 setObject:v9 forKey:@"album"];
        }

        v12 = *(a1 + 48);
        if (v12)
        {
          [v11 setObject:v12 forKey:@"info"];
        }

        v13 = [*(a1 + 32) _model];
        v14 = NSStringFromSelector(sel__checkForAlbumSyncedStateDisposition_params_);
        v15 = [*(a1 + 32) personID];
        v16 = [v9 GUID];
        [v13 enqueueCommand:v14 params:v11 personID:v15 albumGUID:v16 assetCollectionGUID:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = [*(a1 + 32) _model];
  [v17 endTransaction];

  return [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)_checkForCommentChangesDisposition:(int)disposition params:(id)params
{
  v42 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [paramsCopy objectForKey:@"commentsChange"];
  v8 = [paramsCopy objectForKey:@"albumGUID"];
  delegate = [(MSASStateMachine *)self delegate];
  v10 = [delegate albumWithGUID:v8];

  clientOrgKey = [v10 clientOrgKey];
  if (clientOrgKey)
  {
    [v10 clientOrgKey];
  }

  else
  {
    [paramsCopy objectForKey:@"clientOrgKey"];
  }
  v22 = ;

  v12 = [paramsCopy objectForKey:@"info"];
  v13 = [paramsCopy objectForKey:@"error"];
  v14 = v13;
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_4;
    v23[3] = &unk_278E92638;
    v24 = v7;
    selfCopy = self;
    v26 = v12;
    dispatch_async(eventQueue, v23);
  }

  else if (!disposition)
  {
    if (v13)
    {
      eventQueue2 = [(MSASStateMachine *)self eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke;
      block[3] = &unk_278E92660;
      v34 = v7;
      selfCopy2 = self;
      v36 = v12;
      v37 = v14;
      dispatch_async(eventQueue2, block);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v40 = 2114;
        v41 = v8;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Checking for comment changes in album %{public}@,", buf, 0x16u);
      }

      protocol = [(MSASStateMachine *)self protocol];
      stopHandlerBlock = [protocol stopHandlerBlock];
      [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

      objc_initWeak(buf, self);
      delegate2 = [(MSASStateMachine *)self delegate];
      v20 = [delegate2 MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:v8 info:v12];

      protocol2 = [(MSASStateMachine *)self protocol];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_188;
      v27[3] = &unk_278E91318;
      v27[4] = self;
      objc_copyWeak(&v32, buf);
      v28 = paramsCopy;
      v29 = v8;
      v30 = v7;
      v31 = v12;
      [protocol2 getCommentChanges:v30 inAlbumWithGUID:v29 withClientOrgKey:v22 albumURLString:v20 completionBlock:v27];

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }
  }
}

void __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [*(a1 + 40) delegate];
        [v8 MSASStateMachine:*(a1 + 40) didFinishCheckingForCommentChangesInAssetCollectionWithGUID:v7 largestCommentID:0 info:*(a1 + 48) error:*(a1 + 56)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_188(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_2;
  v14[3] = &unk_278E91268;
  v15 = v5;
  v8 = v5;
  objc_copyWeak(&v20, a1 + 9);
  v9 = a1[5];
  v10 = a1[6];
  *&v11 = a1[7];
  *(&v11 + 1) = a1[4];
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v16 = v12;
  v17 = v11;
  v18 = v6;
  v19 = a1[8];
  v13 = v6;
  dispatch_async(v7, v14);

  objc_destroyWeak(&v20);
}

void __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [*(a1 + 40) delegate];
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        v11 = [v9 _canceledError];
        [v8 MSASStateMachine:v9 didFinishCheckingForCommentChangesInAssetCollectionWithGUID:v7 largestCommentID:0 info:v10 error:v11];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v3 = *(a1 + 32);
    v4 = NSStringFromSelector(sel__checkForCommentChangesDisposition_params_);
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v3 command:v4 params:*(a1 + 40) albumGUID:*(a1 + 48) assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v13 = objc_loadWeakRetained((a1 + 88));
        v14 = *(a1 + 48);
        v15 = *(a1 + 56);
        v16 = [*(a1 + 32) MSVerboseDescription];
        *buf = 138544130;
        v33 = v13;
        v34 = 2114;
        v35 = v15;
        v36 = 2114;
        v37 = v14;
        v38 = 2114;
        v39 = v16;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to check for comment changes in asset collections %{public}@ in album %{public}@. Error: %{public}@", buf, 0x2Au);
      }

      v5 = [*(a1 + 64) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_189;
      block[3] = &unk_278E912C8;
      v28 = *(a1 + 72);
      objc_copyWeak(&v31, (a1 + 88));
      v29 = *(a1 + 80);
      v30 = *(a1 + 32);
      dispatch_async(v5, block);

      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 workQueueDidFinishCommand];

      objc_destroyWeak(&v31);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = objc_loadWeakRetained((a1 + 88));
      v9 = *(a1 + 48);
      v8 = *(a1 + 56);
      *buf = 138543874;
      v33 = v7;
      v34 = 2114;
      v35 = v8;
      v36 = 2114;
      v37 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully checked for comment changes %{public}@ in album %{public}@.", buf, 0x20u);
    }

    v10 = [*(a1 + 64) memberQueue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_190;
    v26[3] = &unk_278E926D8;
    v26[4] = *(a1 + 64);
    dispatch_barrier_sync(v10, v26);

    v11 = [*(a1 + 64) eventQueue];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_2_191;
    v20 = &unk_278E911B0;
    objc_copyWeak(&v25, (a1 + 88));
    v21 = *(a1 + 72);
    v22 = *(a1 + 56);
    v23 = *(a1 + 48);
    v24 = *(a1 + 80);
    dispatch_async(v11, &v17);

    v12 = objc_loadWeakRetained((a1 + 88));
    [v12 workQueueDidFinishCommand];

    objc_destroyWeak(&v25);
  }
}

void __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_189(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) allKeys];
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
        WeakRetained = objc_loadWeakRetained((a1 + 56));
        v9 = [WeakRetained delegate];
        v10 = objc_loadWeakRetained((a1 + 56));
        [v9 MSASStateMachine:v10 didFinishCheckingForCommentChangesInAssetCollectionWithGUID:v7 largestCommentID:0 info:*(a1 + 40) error:*(a1 + 48)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_2_191(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 64));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_3;
  v7[3] = &unk_278E912F0;
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  objc_copyWeak(&v11, (a1 + 64));
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  [v6 enumerateKeysAndObjectsUsingBlock:v7];

  objc_destroyWeak(&v11);
}

void __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];
  v8 = [v7 intValue];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if ([v14 type] == 2)
        {
          if ([v14 deletionIndex] > v8)
          {
            v8 = [v14 deletionIndex];
          }
        }

        else
        {
          v15 = [v14 comment];
          v16 = [v15 ID];

          if (v16 > v8)
          {
            v17 = [v14 comment];
            v8 = [v17 ID];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v19 = [WeakRetained delegate];
  v20 = objc_loadWeakRetained((a1 + 56));
  [v19 MSASStateMachine:v20 didFindCommentChanges:v9 inAssetCollectionWithGUID:v5 inAlbumWithGUID:*(a1 + 40) info:*(a1 + 48)];

  v21 = objc_loadWeakRetained((a1 + 56));
  v22 = [v21 delegate];
  v23 = objc_loadWeakRetained((a1 + 56));
  [v22 MSASStateMachine:v23 didFinishCheckingForCommentChangesInAssetCollectionWithGUID:v5 largestCommentID:v8 info:*(a1 + 48) error:0];
}

- (void)checkForCommentChanges:(id)changes inAlbumWithGUID:(id)d withClientOrgKey:(id)key
{
  changesCopy = changes;
  dCopy = d;
  keyCopy = key;
  workQueue = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__MSASStateMachine_checkForCommentChanges_inAlbumWithGUID_withClientOrgKey___block_invoke;
  v15[3] = &unk_278E92660;
  v15[4] = self;
  v16 = changesCopy;
  v17 = dCopy;
  v18 = keyCopy;
  v12 = keyCopy;
  v13 = dCopy;
  v14 = changesCopy;
  dispatch_async(workQueue, v15);
}

void __76__MSASStateMachine_checkForCommentChanges_inAlbumWithGUID_withClientOrgKey___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v13 = 138543874;
    v14 = v2;
    v15 = 2114;
    v16 = v3;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling checking for comment changes %{public}@ in album %{public}@.", &v13, 0x20u);
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"commentsChange"];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    [v6 setObject:v8 forKey:@"albumGUID"];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    [v6 setObject:v9 forKey:@"clientOrgKey"];
  }

  v10 = [*(a1 + 32) _model];
  v11 = NSStringFromSelector(sel__checkForCommentChangesDisposition_params_);
  v12 = [*(a1 + 32) personID];
  [v10 enqueueCommand:v11 params:v6 personID:v12 albumGUID:*(a1 + 48) assetCollectionGUID:0];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)_checkForAssetCollectionUpdatesDisposition:(int)disposition params:(id)params
{
  v48 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v8 = [paramsCopy objectForKey:@"assetCollections"];
  v9 = [paramsCopy objectForKey:@"info"];
  v10 = [paramsCopy objectForKey:@"error"];
  v11 = [paramsCopy objectForKey:@"commandWasRequeued"];
  bOOLValue = [v11 BOOLValue];

  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_2_185;
    v24[3] = &unk_278E92660;
    v24[4] = self;
    v25 = v8;
    v26 = v7;
    v27 = v9;
    dispatch_async(eventQueue, v24);
  }

  else if (!disposition)
  {
    if (v10)
    {
      eventQueue2 = [(MSASStateMachine *)self eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke;
      block[3] = &unk_278E92688;
      block[4] = self;
      v38 = v8;
      v39 = v7;
      v40 = v9;
      v41 = v10;
      dispatch_async(eventQueue2, block);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = [v8 count];
        gUID = [v7 GUID];
        *buf = 138543874;
        selfCopy = self;
        v44 = 2048;
        v45 = v15;
        v46 = 2114;
        v47 = gUID;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Getting metadata for %ld photos in album %{public}@.", buf, 0x20u);
      }

      protocol = [(MSASStateMachine *)self protocol];
      stopHandlerBlock = [protocol stopHandlerBlock];
      [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

      if ((bOOLValue & 1) == 0)
      {
        eventQueue3 = [(MSASStateMachine *)self eventQueue];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_178;
        v33[3] = &unk_278E92660;
        v33[4] = self;
        v34 = v8;
        v35 = v7;
        v36 = v9;
        dispatch_async(eventQueue3, v33);
      }

      objc_initWeak(buf, self);
      delegate = [(MSASStateMachine *)self delegate];
      gUID2 = [v7 GUID];
      v22 = [delegate MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:gUID2 info:v9];

      protocol2 = [(MSASStateMachine *)self protocol];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_2;
      v28[3] = &unk_278E91290;
      v28[4] = self;
      objc_copyWeak(&v32, buf);
      v29 = paramsCopy;
      v30 = v7;
      v31 = v9;
      [protocol2 getAssetCollections:v8 inAlbum:v30 albumURLString:v22 completionBlock:v28];

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }
  }
}

void __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishUpdatingAssetCollections:*(a1 + 40) inAlbum:*(a1 + 48) info:*(a1 + 56) error:*(a1 + 64)];
}

void __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_178(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) willUpdateAssetCollections:*(a1 + 40) inAlbum:*(a1 + 48) info:*(a1 + 56)];
}

void __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_2(id *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = [a1[4] workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_3;
  v17[3] = &unk_278E91268;
  v18 = v8;
  v12 = v8;
  objc_copyWeak(&v25, a1 + 8);
  v19 = a1[5];
  v13 = a1[6];
  v14 = a1[4];
  v20 = v13;
  v21 = v14;
  v22 = v9;
  v23 = a1[7];
  v24 = v10;
  v15 = v10;
  v16 = v9;
  dispatch_async(v11, v17);

  objc_destroyWeak(&v25);
}

void __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_2_185(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) willUpdateAssetCollections:*(a1 + 40) inAlbum:*(a1 + 48) info:*(a1 + 56)];

  v8 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = [v3 _canceledError];
  [v8 MSASStateMachine:v3 didFinishUpdatingAssetCollections:v4 inAlbum:v6 info:v5 error:v7];
}

void __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_3(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [*(a1 + 48) GUID];
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v4 command:0 params:v3 albumGUID:v5 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v24 = objc_loadWeakRetained((a1 + 88));
        v25 = [*(a1 + 32) MSVerboseDescription];
        *buf = 138543618;
        v34 = v24;
        v35 = 2114;
        v36 = v25;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to get metadata. Error: %{public}@", buf, 0x16u);
      }

      v6 = [*(a1 + 56) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_179;
      block[3] = &unk_278E911B0;
      objc_copyWeak(&v32, (a1 + 88));
      v28 = *(a1 + 64);
      v29 = *(a1 + 48);
      v30 = *(a1 + 72);
      v31 = *(a1 + 32);
      dispatch_async(v6, block);

      v7 = objc_loadWeakRetained((a1 + 88));
      [v7 workQueueDidFinishCommand];

      objc_destroyWeak(&v32);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = objc_loadWeakRetained((a1 + 88));
      *buf = 138543362;
      v34 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully checked for asset collection updates.", buf, 0xCu);
    }

    v9 = [*(a1 + 56) memberQueue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_180;
    v26[3] = &unk_278E926D8;
    v26[4] = *(a1 + 56);
    dispatch_barrier_sync(v9, v26);

    v10 = objc_loadWeakRetained((a1 + 88));
    v11 = [v10 daemon];
    v12 = objc_loadWeakRetained((a1 + 88));
    v13 = [v12 personID];
    [v11 didReceiveAuthSuccessForPersonID:v13];

    v14 = objc_loadWeakRetained((a1 + 88));
    v15 = [v14 delegate];
    v16 = objc_loadWeakRetained((a1 + 88));
    [v15 MSASStateMachine:v16 didFinishUpdatingAssetCollections:*(a1 + 64) inAlbum:*(a1 + 48) info:*(a1 + 72) error:*(a1 + 32)];

    if ([*(a1 + 80) count])
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = MSCFCopyLocalizedString(@"ERROR_MSAS_SUB_NO_METADATA");
      v19 = [v17 MSErrorWithDomain:@"MSASSubscriberErrorDomain" code:1 description:v18];

      v20 = objc_loadWeakRetained((a1 + 88));
      v21 = [v20 delegate];
      v22 = objc_loadWeakRetained((a1 + 88));
      [v21 MSASStateMachine:v22 didFinishUpdatingAssetCollections:*(a1 + 80) inAlbum:*(a1 + 48) info:*(a1 + 72) error:v19];
    }

    v23 = objc_loadWeakRetained((a1 + 88));
    [v23 workQueueDidFinishCommand];
  }
}

void __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_179(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 64));
  [v2 MSASStateMachine:v3 didFinishUpdatingAssetCollections:*(a1 + 32) inAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];
}

- (void)checkForAssetCollectionUpdates:(id)updates inAlbum:(id)album info:(id)info
{
  updatesCopy = updates;
  albumCopy = album;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__MSASStateMachine_checkForAssetCollectionUpdates_inAlbum_info___block_invoke;
  v15[3] = &unk_278E92660;
  v15[4] = self;
  v16 = updatesCopy;
  v17 = albumCopy;
  v18 = infoCopy;
  v12 = infoCopy;
  v13 = albumCopy;
  v14 = updatesCopy;
  dispatch_async(workQueue, v15);
}

void __64__MSASStateMachine_checkForAssetCollectionUpdates_inAlbum_info___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) count];
    v4 = [*(a1 + 48) GUID];
    v14 = 138543874;
    v15 = v2;
    v16 = 2048;
    v17 = v3;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling update of metadata for %ld photos in album %{public}@", &v14, 0x20u);
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"assetCollections"];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    [v6 setObject:v8 forKey:@"album"];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    [v6 setObject:v9 forKey:@"info"];
  }

  v10 = [*(a1 + 32) _model];
  v11 = NSStringFromSelector(sel__checkForAssetCollectionUpdatesDisposition_params_);
  v12 = [*(a1 + 32) personID];
  v13 = [*(a1 + 48) GUID];
  [v10 enqueueCommand:v11 params:v6 personID:v12 albumGUID:v13 assetCollectionGUID:0];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)validateInvitationForAlbum:(id)album completionBlock:(id)block
{
  albumCopy = album;
  blockCopy = block;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSASStateMachine_validateInvitationForAlbum_completionBlock___block_invoke;
  block[3] = &unk_278E91E38;
  block[4] = self;
  v12 = albumCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = albumCopy;
  dispatch_async(workQueue, block);
}

void __63__MSASStateMachine_validateInvitationForAlbum_completionBlock___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    *buf = 138543362;
    v8 = v2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Validating invitation token.", buf, 0xCu);
  }

  v3 = [*(a1 + 32) protocol];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__MSASStateMachine_validateInvitationForAlbum_completionBlock___block_invoke_174;
  v5[3] = &unk_278E91DE8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [v3 validateInvitationForAlbum:v4 completionBlock:v5];
}

void __63__MSASStateMachine_validateInvitationForAlbum_completionBlock___block_invoke_174(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSASStateMachine_validateInvitationForAlbum_completionBlock___block_invoke_2;
  block[3] = &unk_278E92778;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)acceptInvitationWithToken:(id)token info:(id)info completionBlock:(id)block
{
  tokenCopy = token;
  infoCopy = info;
  blockCopy = block;
  workQueue = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__MSASStateMachine_acceptInvitationWithToken_info_completionBlock___block_invoke;
  v15[3] = &unk_278E916F0;
  v15[4] = self;
  v16 = tokenCopy;
  v17 = infoCopy;
  v18 = blockCopy;
  v12 = infoCopy;
  v13 = blockCopy;
  v14 = tokenCopy;
  dispatch_async(workQueue, v15);
}

void __67__MSASStateMachine_acceptInvitationWithToken_info_completionBlock___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    *buf = 138543362;
    v9 = v2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Accepting invitation using token.", buf, 0xCu);
  }

  v3 = [*(a1 + 32) protocol];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__MSASStateMachine_acceptInvitationWithToken_info_completionBlock___block_invoke_173;
  v5[3] = &unk_278E91238;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v3 acceptInvitationWithToken:v4 completionBlock:v5];
}

void __67__MSASStateMachine_acceptInvitationWithToken_info_completionBlock___block_invoke_173(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__MSASStateMachine_acceptInvitationWithToken_info_completionBlock___block_invoke_2;
  block[3] = &unk_278E91E38;
  v9 = a1[6];
  v7 = a1[5];
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)_markAsSpamInvitationForTokenDisposition:(int)disposition params:(id)params
{
  v25 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [paramsCopy objectForKeyedSubscript:@"info"];
  v8 = [paramsCopy objectForKeyedSubscript:@"invitationToken"];
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke_3;
    block[3] = &unk_278E92638;
    block[4] = self;
    v14 = v8;
    v15 = v7;
    dispatch_async(eventQueue, block);
  }

  else if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Marking as spam invitation for token %{public}@", buf, 0x16u);
    }

    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    objc_initWeak(buf, self);
    protocol2 = [(MSASStateMachine *)self protocol];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke;
    v16[3] = &unk_278E91210;
    objc_copyWeak(&v20, buf);
    v17 = v8;
    selfCopy2 = self;
    v19 = v7;
    [protocol2 markAsSpamInvitationForToken:v17 completionBlock:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

void __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke(id *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v5 = [WeakRetained workQueueEndCommandWithError:v3 command:0 params:0 albumGUID:0 assetCollectionGUID:0];

    if ((v5 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v13 = objc_loadWeakRetained(a1 + 7);
        v14 = a1[4];
        *buf = 138543874;
        v27 = v13;
        v28 = 2114;
        v29 = v14;
        v30 = 2114;
        v31 = v3;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to mark as spam invitation for token %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v6 = [a1[5] eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke_171;
      block[3] = &unk_278E912C8;
      objc_copyWeak(&v25, a1 + 7);
      v22 = a1[4];
      v23 = a1[6];
      v24 = v3;
      dispatch_async(v6, block);

      v7 = objc_loadWeakRetained(a1 + 7);
      [v7 workQueueDidFinishCommand];

      objc_destroyWeak(&v25);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = objc_loadWeakRetained(a1 + 7);
      v9 = a1[4];
      *buf = 138543618;
      v27 = v8;
      v28 = 2114;
      v29 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully marked as spam invitation for token %{public}@", buf, 0x16u);
    }

    v10 = [a1[5] memberQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke_172;
    v20[3] = &unk_278E926D8;
    v20[4] = a1[5];
    dispatch_barrier_sync(v10, v20);

    v11 = [a1[5] eventQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke_2;
    v15[3] = &unk_278E912C8;
    objc_copyWeak(&v19, a1 + 7);
    v16 = a1[4];
    v17 = a1[6];
    v18 = 0;
    dispatch_async(v11, v15);

    v12 = objc_loadWeakRetained(a1 + 7);
    [v12 workQueueDidFinishCommand];

    objc_destroyWeak(&v19);
  }
}

void __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishMarkingAsSpamInvitationForToken:v3 info:v4 error:v5];
}

void __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke_171(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishMarkingAsSpamInvitationForToken:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

void __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v8 = objc_loadWeakRetained((a1 + 56));
  v6 = [v8 delegate];
  v7 = objc_loadWeakRetained((a1 + 56));
  [v6 MSASStateMachine:v7 didFinishMarkingAsSpamInvitationForToken:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

- (void)markAsSpamInvitationForToken:(id)token info:(id)info
{
  tokenCopy = token;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MSASStateMachine_markAsSpamInvitationForToken_info___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = tokenCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = tokenCopy;
  dispatch_async(workQueue, block);
}

void __54__MSASStateMachine_markAsSpamInvitationForToken_info___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v8 = 138543618;
    v9 = v2;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling mark as spam invitation for token %{public}@", &v8, 0x16u);
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v4 setObject:*(a1 + 48) forKeyedSubscript:@"info"];
  [v4 setObject:*(a1 + 40) forKeyedSubscript:@"invitationToken"];
  v5 = [*(a1 + 32) _model];
  v6 = NSStringFromSelector(sel__markAsSpamInvitationForTokenDisposition_params_);
  v7 = [*(a1 + 32) personID];
  [v5 enqueueCommand:v6 params:v4 personID:v7 albumGUID:0 assetCollectionGUID:0];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)_markAsSpamInvitationForAlbumDisposition:(int)disposition params:(id)params
{
  v28 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [paramsCopy objectForKeyedSubscript:@"album"];
  v8 = [paramsCopy objectForKeyedSubscript:@"info"];
  v9 = [paramsCopy objectForKeyedSubscript:@"sharingRelationshipGUID"];
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke_3;
    block[3] = &unk_278E92660;
    block[4] = self;
    v15 = v7;
    v16 = v9;
    v17 = v8;
    dispatch_async(eventQueue, block);
  }

  else if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Marking as spam invitation for album %{public}@", buf, 0x16u);
    }

    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    objc_initWeak(buf, self);
    protocol2 = [(MSASStateMachine *)self protocol];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke;
    v18[3] = &unk_278E911E0;
    objc_copyWeak(&v23, buf);
    v19 = v7;
    selfCopy2 = self;
    v21 = v9;
    v22 = v8;
    [protocol2 markAsSpamInvitationForAlbum:v19 completionBlock:v18];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

void __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke(id *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 8);
    v5 = [a1[4] GUID];
    v6 = [WeakRetained workQueueEndCommandWithError:v3 command:0 params:0 albumGUID:v5 assetCollectionGUID:0];

    if ((v6 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = objc_loadWeakRetained(a1 + 8);
        v15 = a1[4];
        *buf = 138543874;
        v32 = v14;
        v33 = 2114;
        v34 = v15;
        v35 = 2114;
        v36 = v3;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to mark as spam invitation for album %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v7 = [a1[5] eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke_167;
      block[3] = &unk_278E911B0;
      objc_copyWeak(&v30, a1 + 8);
      v26 = a1[4];
      v27 = a1[6];
      v28 = a1[7];
      v29 = v3;
      dispatch_async(v7, block);

      v8 = objc_loadWeakRetained(a1 + 8);
      [v8 workQueueDidFinishCommand];

      objc_destroyWeak(&v30);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = objc_loadWeakRetained(a1 + 8);
      v10 = a1[4];
      *buf = 138543618;
      v32 = v9;
      v33 = 2114;
      v34 = v10;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully marked as spam invitation for album %{public}@", buf, 0x16u);
    }

    v11 = [a1[5] memberQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke_168;
    v24[3] = &unk_278E926D8;
    v24[4] = a1[5];
    dispatch_barrier_sync(v11, v24);

    v12 = [a1[5] eventQueue];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke_2;
    v19 = &unk_278E912C8;
    objc_copyWeak(&v23, a1 + 8);
    v20 = a1[4];
    v21 = a1[6];
    v22 = a1[7];
    dispatch_async(v12, &v16);

    v13 = objc_loadWeakRetained(a1 + 8);
    [v13 workQueueDidFinishCommand];

    objc_destroyWeak(&v23);
  }
}

void __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke_3(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = [v2 _canceledError];
  [v7 MSASStateMachine:v2 didFinishMarkingAsSpamInvitationForAlbum:v3 invitationGUID:v5 info:v4 error:v6];
}

void __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke_167(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 64));
  [v2 MSASStateMachine:v3 didFinishMarkingAsSpamInvitationForAlbum:*(a1 + 32) invitationGUID:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];
}

void __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v8 = objc_loadWeakRetained((a1 + 56));
  v6 = [v8 delegate];
  v7 = objc_loadWeakRetained((a1 + 56));
  [v6 MSASStateMachine:v7 didFinishMarkingAsSpamInvitationForAlbum:*(a1 + 32) invitationGUID:*(a1 + 40) info:*(a1 + 48) error:0];
}

- (void)markAsSpamInvitationForAlbum:(id)album invitationGUID:(id)d info:(id)info
{
  albumCopy = album;
  dCopy = d;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__MSASStateMachine_markAsSpamInvitationForAlbum_invitationGUID_info___block_invoke;
  v15[3] = &unk_278E92660;
  v15[4] = self;
  v16 = albumCopy;
  v17 = infoCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = infoCopy;
  v14 = albumCopy;
  dispatch_async(workQueue, v15);
}

void __69__MSASStateMachine_markAsSpamInvitationForAlbum_invitationGUID_info___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v9 = 138543618;
    v10 = v2;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling mark as spam invitation for album %{public}@", &v9, 0x16u);
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v4 setObject:*(a1 + 40) forKeyedSubscript:@"album"];
  [v4 setObject:*(a1 + 48) forKeyedSubscript:@"info"];
  [v4 setObject:*(a1 + 56) forKeyedSubscript:@"sharingRelationshipGUID"];
  v5 = [*(a1 + 32) _model];
  v6 = NSStringFromSelector(sel__markAsSpamInvitationForAlbumDisposition_params_);
  v7 = [*(a1 + 32) personID];
  v8 = [*(a1 + 40) GUID];
  [v5 enqueueCommand:v6 params:v4 personID:v7 albumGUID:v8 assetCollectionGUID:0];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)_unsubscribeFromAlbumDisposition:(int)disposition params:(id)params
{
  v25 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v8 = [paramsCopy objectForKey:@"info"];
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_3;
    v13[3] = &unk_278E92638;
    v13[4] = self;
    v14 = v7;
    v15 = v8;
    dispatch_async(eventQueue, v13);
  }

  else if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Unsubscribing from album %{public}@", buf, 0x16u);
    }

    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    objc_initWeak(buf, self);
    protocol2 = [(MSASStateMachine *)self protocol];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke;
    v16[3] = &unk_278E911E0;
    v16[4] = self;
    objc_copyWeak(&v20, buf);
    v17 = paramsCopy;
    v18 = v7;
    v19 = v8;
    [protocol2 unsubscribeFromAlbum:v18 completionBlock:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

void __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_2;
  block[3] = &unk_278E91340;
  v13 = v3;
  v5 = v3;
  objc_copyWeak(&v16, a1 + 8);
  v6 = a1[5];
  v7 = a1[6];
  v11 = a1[4];
  v8 = a1[7];
  *&v9 = v11;
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v14 = v10;
  v15 = v9;
  dispatch_async(v4, block);

  objc_destroyWeak(&v16);
}

void __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishUnsubscribingFromAlbum:v3 info:v4 error:v5];
}

void __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [*(a1 + 48) GUID];
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v4 command:0 params:v3 albumGUID:v5 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v13 = objc_loadWeakRetained((a1 + 72));
        v14 = *(a1 + 48);
        v15 = *(a1 + 32);
        *buf = 138543874;
        v30 = v13;
        v31 = 2114;
        v32 = v14;
        v33 = 2114;
        v34 = v15;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to unsubscribe from album %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v6 = [*(a1 + 56) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_162;
      block[3] = &unk_278E912C8;
      objc_copyWeak(&v28, (a1 + 72));
      v25 = *(a1 + 48);
      v26 = *(a1 + 64);
      v27 = *(a1 + 32);
      dispatch_async(v6, block);

      v7 = objc_loadWeakRetained((a1 + 72));
      [v7 workQueueDidFinishCommand];

      objc_destroyWeak(&v28);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = objc_loadWeakRetained((a1 + 72));
      v9 = *(a1 + 48);
      *buf = 138543618;
      v30 = v8;
      v31 = 2114;
      v32 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully unsubscribed from album %{public}@", buf, 0x16u);
    }

    v10 = [*(a1 + 56) memberQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_163;
    v23[3] = &unk_278E926D8;
    v23[4] = *(a1 + 56);
    dispatch_barrier_sync(v10, v23);

    v11 = [*(a1 + 56) eventQueue];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_2_164;
    v19 = &unk_278E917C0;
    objc_copyWeak(&v22, (a1 + 72));
    v20 = *(a1 + 48);
    v21 = *(a1 + 64);
    dispatch_async(v11, &v16);

    v12 = objc_loadWeakRetained((a1 + 72));
    [v12 workQueueDidFinishCommand];

    objc_destroyWeak(&v22);
  }
}

void __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_162(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishUnsubscribingFromAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

void __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_2_164(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v8 = objc_loadWeakRetained((a1 + 48));
  v6 = [v8 delegate];
  v7 = objc_loadWeakRetained((a1 + 48));
  [v6 MSASStateMachine:v7 didFinishUnsubscribingFromAlbum:*(a1 + 32) info:*(a1 + 40) error:0];
}

- (void)unsubscribeFromAlbum:(id)album info:(id)info
{
  albumCopy = album;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MSASStateMachine_unsubscribeFromAlbum_info___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = albumCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = albumCopy;
  dispatch_async(workQueue, block);
}

void __46__MSASStateMachine_unsubscribeFromAlbum_info___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v12 = 138543618;
    v13 = v2;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling unsubscription from album %{public}@", &v12, 0x16u);
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"album"];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"info"];
  }

  v8 = [*(a1 + 32) _model];
  v9 = NSStringFromSelector(sel__unsubscribeFromAlbumDisposition_params_);
  v10 = [*(a1 + 32) personID];
  v11 = [*(a1 + 40) GUID];
  [v8 enqueueCommand:v9 params:v5 personID:v10 albumGUID:v11 assetCollectionGUID:0];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)_subscribeToAlbumDisposition:(int)disposition params:(id)params
{
  v24 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v8 = [paramsCopy objectForKey:@"info"];
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_3;
    block[3] = &unk_278E92638;
    block[4] = self;
    v14 = v7;
    v15 = v8;
    dispatch_async(eventQueue, block);
  }

  else if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Subscribing to album %{public}@", buf, 0x16u);
    }

    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    objc_initWeak(buf, self);
    protocol2 = [(MSASStateMachine *)self protocol];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke;
    v16[3] = &unk_278E91210;
    v16[4] = self;
    objc_copyWeak(&v19, buf);
    v17 = v7;
    v18 = v8;
    [protocol2 subscribeToAlbum:v17 completionBlock:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

void __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_2;
  block[3] = &unk_278E911B0;
  v9 = v3;
  v5 = v3;
  objc_copyWeak(&v13, a1 + 7);
  v6 = a1[5];
  v7 = a1[4];
  v10 = v6;
  v11 = v7;
  v12 = a1[6];
  dispatch_async(v4, block);

  objc_destroyWeak(&v13);
}

void __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishSubscribingToAlbum:v3 info:v4 error:v5];
}

void __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_2(id *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    WeakRetained = objc_loadWeakRetained(a1 + 8);
    v3 = a1[4];
    v4 = [a1[5] GUID];
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v3 command:0 params:0 albumGUID:v4 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v12 = objc_loadWeakRetained(a1 + 8);
        v14 = a1[4];
        v13 = a1[5];
        *buf = 138543874;
        v29 = v12;
        v30 = 2114;
        v31 = v13;
        v32 = 2114;
        v33 = v14;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to subscribe to album %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v5 = [a1[6] eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_156;
      block[3] = &unk_278E912C8;
      objc_copyWeak(&v27, a1 + 8);
      v24 = a1[5];
      v25 = a1[7];
      v26 = a1[4];
      dispatch_async(v5, block);

      v6 = objc_loadWeakRetained(a1 + 8);
      [v6 workQueueDidFinishCommand];

      objc_destroyWeak(&v27);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = objc_loadWeakRetained(a1 + 8);
      v8 = a1[5];
      *buf = 138543618;
      v29 = v7;
      v30 = 2114;
      v31 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully subscribed to album %{public}@", buf, 0x16u);
    }

    v9 = [a1[6] memberQueue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_157;
    v22[3] = &unk_278E926D8;
    v22[4] = a1[6];
    dispatch_barrier_sync(v9, v22);

    v10 = [a1[6] eventQueue];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_2_158;
    v18 = &unk_278E917C0;
    objc_copyWeak(&v21, a1 + 8);
    v19 = a1[5];
    v20 = a1[7];
    dispatch_async(v10, &v15);

    v11 = objc_loadWeakRetained(a1 + 8);
    [v11 workQueueDidFinishCommand];

    objc_destroyWeak(&v21);
  }
}

void __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_156(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishSubscribingToAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

void __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_2_158(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v8 = objc_loadWeakRetained((a1 + 48));
  v6 = [v8 delegate];
  v7 = objc_loadWeakRetained((a1 + 48));
  [v6 MSASStateMachine:v7 didFinishSubscribingToAlbum:*(a1 + 32) info:*(a1 + 40) error:0];
}

- (void)subscribeToAlbum:(id)album info:(id)info
{
  albumCopy = album;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MSASStateMachine_subscribeToAlbum_info___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = albumCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = albumCopy;
  dispatch_async(workQueue, block);
}

void __42__MSASStateMachine_subscribeToAlbum_info___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v12 = 138543618;
    v13 = v2;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling subscription to album %{public}@", &v12, 0x16u);
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"album"];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"info"];
  }

  v8 = [*(a1 + 32) _model];
  v9 = NSStringFromSelector(sel__subscribeToAlbumDisposition_params_);
  v10 = [*(a1 + 32) personID];
  v11 = [*(a1 + 40) GUID];
  [v8 enqueueCommand:v9 params:v5 personID:v10 albumGUID:v11 assetCollectionGUID:0];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)_getAccessControlsDisposition:(int)disposition params:(id)params
{
  v35 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v8 = [paramsCopy objectForKey:@"info"];
  v9 = [paramsCopy objectForKey:@"error"];
  v10 = v9;
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_2_153;
    v19[3] = &unk_278E92638;
    v19[4] = self;
    v20 = v7;
    v21 = v8;
    dispatch_async(eventQueue, v19);
  }

  else if (!disposition)
  {
    if (v9)
    {
      eventQueue2 = [(MSASStateMachine *)self eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke;
      block[3] = &unk_278E92660;
      block[4] = self;
      v28 = v7;
      v29 = v8;
      v30 = v10;
      dispatch_async(eventQueue2, block);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        selfCopy = self;
        v33 = 2114;
        v34 = v7;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Retrieving access controls for album %{public}@", buf, 0x16u);
      }

      protocol = [(MSASStateMachine *)self protocol];
      stopHandlerBlock = [protocol stopHandlerBlock];
      [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

      objc_initWeak(buf, self);
      delegate = [(MSASStateMachine *)self delegate];
      gUID = [v7 GUID];
      v17 = [delegate MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:gUID info:v8];

      protocol2 = [(MSASStateMachine *)self protocol];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_149;
      v22[3] = &unk_278E91188;
      v22[4] = self;
      objc_copyWeak(&v26, buf);
      v23 = paramsCopy;
      v24 = v7;
      v25 = v8;
      [protocol2 getSharingInfoForAlbum:v24 albumURLString:v17 completionBlock:v22];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }
  }
}

void __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishGettingAccessControls:0 forAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];
}

void __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_149(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_2;
  block[3] = &unk_278E913F0;
  v17 = v5;
  v8 = v5;
  objc_copyWeak(&v21, a1 + 8);
  v9 = a1[5];
  v10 = a1[6];
  v15 = a1[4];
  v11 = a1[7];
  *&v12 = v15;
  *(&v12 + 1) = v11;
  *&v13 = v9;
  *(&v13 + 1) = v10;
  v18 = v13;
  v19 = v12;
  v20 = v6;
  v14 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v21);
}

void __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_2_153(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishGettingAccessControls:0 forAlbum:v3 info:v4 error:v5];
}

void __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v3 = *(a1 + 32);
    v4 = NSStringFromSelector(sel__getAccessControlsDisposition_params_);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) GUID];
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v3 command:v4 params:v5 albumGUID:v6 assetCollectionGUID:0];

    if (v3)
    {
      return;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = objc_loadWeakRetained((a1 + 80));
      v16 = *(a1 + 48);
      v17 = *(a1 + 32);
      *buf = 138543874;
      v23 = v15;
      v24 = 2114;
      v25 = v16;
      v26 = 2114;
      v27 = v17;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve access controls for album %{public}@. Error: %{public}@", buf, 0x20u);
    }

    v7 = [*(a1 + 56) eventQueue];
    v8 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_150;
    block[3] = &unk_278E912C8;
    v9 = &v21;
    objc_copyWeak(&v21, (a1 + 80));
    block[4] = *(a1 + 48);
    block[5] = *(a1 + 64);
    block[6] = *(a1 + 32);
    dispatch_async(v7, block);

    v10 = objc_loadWeakRetained((a1 + 80));
    [v10 workQueueDidFinishCommand];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = objc_loadWeakRetained((a1 + 80));
      v12 = [*(a1 + 72) count];
      v13 = *(a1 + 48);
      *buf = 138543874;
      v23 = v11;
      v24 = 2048;
      v25 = v12;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully retrieved %ld access control entries for album %{public}@", buf, 0x20u);
    }

    v14 = [*(a1 + 56) eventQueue];
    v8 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_151;
    v18[3] = &unk_278E912C8;
    v9 = &v19;
    objc_copyWeak(&v19, (a1 + 80));
    v18[4] = *(a1 + 72);
    v18[5] = *(a1 + 48);
    v18[6] = *(a1 + 64);
    dispatch_async(v14, v18);

    v10 = objc_loadWeakRetained((a1 + 80));
    [v10 workQueueDidFinishCommand];
  }

  objc_destroyWeak(v9);
}

void __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_150(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishGettingAccessControls:0 forAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

void __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_151(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishGettingAccessControls:*(a1 + 32) forAlbum:*(a1 + 40) info:*(a1 + 48) error:0];
}

- (void)getAccessControlsForAlbums:(id)albums info:(id)info
{
  albumsCopy = albums;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MSASStateMachine_getAccessControlsForAlbums_info___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = albumsCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = albumsCopy;
  dispatch_async(workQueue, block);
}

uint64_t __52__MSASStateMachine_getAccessControlsForAlbums_info___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    *buf = 138543618;
    v26 = v2;
    v27 = 2114;
    v28 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling retrieval of ACL for albums %{public}@", buf, 0x16u);
  }

  v4 = [*(a1 + 32) _model];
  [v4 beginTransaction];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = [MEMORY[0x277CBEB38] dictionary];
        v11 = v10;
        if (v9)
        {
          [v10 setObject:v9 forKey:@"album"];
        }

        v12 = *(a1 + 48);
        if (v12)
        {
          [v11 setObject:v12 forKey:@"info"];
        }

        v13 = [*(a1 + 32) _model];
        v14 = NSStringFromSelector(sel__getAccessControlsDisposition_params_);
        v15 = [*(a1 + 32) personID];
        v16 = [v9 GUID];
        [v13 enqueueCommand:v14 params:v11 personID:v15 albumGUID:v16 assetCollectionGUID:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = [*(a1 + 32) _model];
  [v17 endTransaction];

  return [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)_didFinishCheckingUpdatesInAlbumsDisposition:(int)disposition params:(id)params
{
  v23 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [paramsCopy objectForKey:@"albums"];
  v8 = [paramsCopy objectForKey:@"info"];

  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__MSASStateMachine__didFinishCheckingUpdatesInAlbumsDisposition_params___block_invoke_2;
    v13[3] = &unk_278E92638;
    v13[4] = self;
    v10 = &v14;
    v14 = v7;
    v11 = &v15;
    v15 = v8;
    dispatch_async(eventQueue, v13);

LABEL_7:
    goto LABEL_8;
  }

  if (!disposition)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      selfCopy = self;
      v21 = 2048;
      v22 = [v7 count];
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Finished checking for updates for %ld albums.", buf, 0x16u);
    }

    eventQueue2 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__MSASStateMachine__didFinishCheckingUpdatesInAlbumsDisposition_params___block_invoke;
    block[3] = &unk_278E92638;
    block[4] = self;
    v10 = &v17;
    v17 = v7;
    v11 = &v18;
    v18 = v8;
    dispatch_async(eventQueue2, block);

    [(MSASStateMachine *)self workQueueDidFinishCommand];
    goto LABEL_7;
  }

LABEL_8:
}

void __72__MSASStateMachine__didFinishCheckingUpdatesInAlbumsDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishCheckingForUpdatesInAlbums:*(a1 + 40) info:*(a1 + 48)];
}

void __72__MSASStateMachine__didFinishCheckingUpdatesInAlbumsDisposition_params___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishCheckingForUpdatesInAlbums:*(a1 + 40) info:*(a1 + 48)];
}

- (void)_checkForUpdatesInAlbumDisposition:(int)disposition params:(id)params
{
  v43 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [paramsCopy objectForKey:@"resetSync"];
  bOOLValue = [v7 BOOLValue];

  v9 = [(MSASStateMachine *)self _albumForRequestFromParams:paramsCopy];
  v10 = [paramsCopy objectForKey:@"info"];
  v11 = [paramsCopy objectForKey:@"error"];
  v12 = [paramsCopy objectForKey:@"commandWasRequeued"];
  bOOLValue2 = [v12 BOOLValue];

  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_3_146;
    v23[3] = &unk_278E92638;
    v23[4] = self;
    v24 = v9;
    v25 = v10;
    dispatch_async(eventQueue, v23);
  }

  else if (!disposition)
  {
    if (v11)
    {
      eventQueue2 = [(MSASStateMachine *)self eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke;
      block[3] = &unk_278E92660;
      block[4] = self;
      v37 = v9;
      v38 = v10;
      v39 = v11;
      dispatch_async(eventQueue2, block);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }

    else
    {
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x3032000000;
      v34[3] = __Block_byref_object_copy__4549;
      v34[4] = __Block_byref_object_dispose__4550;
      v35 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:v10];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *location = 138543618;
        *&location[4] = self;
        v41 = 2114;
        v42 = v9;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Checking for update in album %{public}@", location, 0x16u);
      }

      protocol = [(MSASStateMachine *)self protocol];
      stopHandlerBlock = [protocol stopHandlerBlock];
      [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

      if ((bOOLValue2 & 1) == 0)
      {
        eventQueue3 = [(MSASStateMachine *)self eventQueue];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_140;
        v31[3] = &unk_278E91C78;
        v31[4] = self;
        v32 = v9;
        v33 = v34;
        dispatch_async(eventQueue3, v31);
      }

      objc_initWeak(location, self);
      delegate = [(MSASStateMachine *)self delegate];
      gUID = [v9 GUID];
      v21 = [delegate MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:gUID info:v10];

      protocol2 = [(MSASStateMachine *)self protocol];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_2;
      v26[3] = &unk_278E91160;
      v26[4] = self;
      objc_copyWeak(&v30, location);
      v27 = paramsCopy;
      v28 = v9;
      v29 = v34;
      [protocol2 albumSummaryAlbum:v28 albumURLString:v21 resetSync:bOOLValue completionBlock:v26];

      objc_destroyWeak(&v30);
      objc_destroyWeak(location);
      _Block_object_dispose(v34, 8);
    }
  }
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishCheckingForUpdatesInAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_140(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) willCheckForUpdatesInAlbum:*(a1 + 40) info:*(*(*(a1 + 48) + 8) + 40)];
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_2(uint64_t a1, void *a2, char a3, void *a4, char a5, void *a6, void *a7, char a8)
{
  v15 = a2;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = [*(a1 + 32) workQueue];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_3;
  v27[3] = &unk_278E91138;
  v28 = v15;
  v20 = v15;
  objc_copyWeak(&v36, (a1 + 64));
  v29 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = *(a1 + 32);
  v30 = v21;
  v31 = v22;
  v23 = *(a1 + 56);
  v37 = a3;
  v38 = a5;
  v32 = v17;
  v33 = v16;
  v39 = a8;
  v34 = v18;
  v35 = v23;
  v24 = v18;
  v25 = v16;
  v26 = v17;
  dispatch_async(v19, v27);

  objc_destroyWeak(&v36);
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_3_146(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) willCheckForUpdatesInAlbum:*(a1 + 40) info:*(a1 + 48)];

  v7 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [v3 _canceledError];
  [v7 MSASStateMachine:v3 didFinishCheckingForUpdatesInAlbum:v4 info:v5 error:v6];
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_3(uint64_t a1)
{
  v79 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 96));
      v15 = [*(a1 + 64) GUID];
      *buf = 138543618;
      v74 = WeakRetained;
      v75 = 2114;
      v76 = v15;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Finished checking for updates in album %{public}@.", buf, 0x16u);
    }

    if (*(a1 + 104) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_loadWeakRetained((a1 + 96));
        v17 = [*(a1 + 64) GUID];
        *buf = 138543618;
        v74 = v16;
        v75 = 2114;
        v76 = v17;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Album %{public}@ was reset synced.", buf, 0x16u);
      }

      v18 = *(*(*(a1 + 88) + 8) + 40);
      v19 = [*(a1 + 48) GUID];
      v20 = [v18 MSASAddIsAlbumResetSyncAlbumGUID:v19];

      v21 = [*(*(*(a1 + 88) + 8) + 40) MSASAddNotInterestingKey];
    }

    v22 = [*(a1 + 56) eventQueue];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_142;
    v64[3] = &unk_278E910E8;
    v8 = &v67;
    objc_copyWeak(&v67, (a1 + 96));
    v23 = *(a1 + 64);
    v24 = *(a1 + 88);
    v65 = v23;
    v66[1] = v24;
    v66[0] = *(a1 + 32);
    dispatch_async(v22, v64);

    if (*(a1 + 105) == 1 && *(a1 + 64))
    {
      v25 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v51 = objc_loadWeakRetained((a1 + 96));
        v52 = [*(a1 + 64) GUID];
        *buf = 138543618;
        v74 = v51;
        v75 = 2114;
        v76 = v52;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Found sharing info changes to album %{public}@.", buf, 0x16u);
      }

      v27 = *(a1 + 56);
      v28 = [MEMORY[0x277CBEA60] arrayWithObject:*(a1 + 64)];
      [v27 getAccessControlsForAlbums:v28 info:*(*(*(a1 + 88) + 8) + 40)];
    }

    if ([*(a1 + 72) count])
    {
      v29 = MEMORY[0x277D86220];
      v30 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v48 = objc_loadWeakRetained((a1 + 96));
        v49 = [*(a1 + 72) count];
        v50 = [*(a1 + 64) GUID];
        *buf = 138543874;
        v74 = v48;
        v75 = 2048;
        v76 = v49;
        v77 = 2114;
        v78 = v50;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Found changes to %lu asset collections in album %{public}@.", buf, 0x20u);
      }

      v31 = objc_loadWeakRetained((a1 + 96));
      v32 = [v31 delegate];
      v33 = objc_loadWeakRetained((a1 + 96));
      [v32 MSASStateMachine:v33 didFindAssetCollectionChanges:*(a1 + 72) forAlbum:*(a1 + 64) info:*(*(*(a1 + 88) + 8) + 40)];
    }

    if (!_os_feature_enabled_impl())
    {
      goto LABEL_30;
    }

    v34 = [*(a1 + 64) clientOrgKey];
    if (!v34)
    {
      goto LABEL_30;
    }

    v35 = [*(a1 + 64) publicURLString];
    if (v35)
    {
    }

    else
    {
      v36 = *(a1 + 106);

      if ((v36 & 1) == 0)
      {
LABEL_30:
        v42 = [*(a1 + 56) memberQueue];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_143;
        v63[3] = &unk_278E926D8;
        v63[4] = *(a1 + 56);
        dispatch_barrier_sync(v42, v63);

        v43 = [*(a1 + 56) eventQueue];
        v53 = MEMORY[0x277D85DD0];
        v54 = 3221225472;
        v55 = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_2_144;
        v56 = &unk_278E91110;
        v57 = *(a1 + 64);
        v58 = *(a1 + 80);
        v59 = *(a1 + 48);
        objc_copyWeak(&v62, (a1 + 96));
        v61 = *(a1 + 88);
        v60 = *(a1 + 32);
        dispatch_async(v43, &v53);

        v44 = objc_loadWeakRetained((a1 + 96));
        [v44 workQueueDidFinishCommand];

        objc_destroyWeak(&v62);
        v12 = &v65;
        v13 = v66;
        goto LABEL_31;
      }

      v37 = MEMORY[0x277D86220];
      v38 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_loadWeakRetained((a1 + 96));
        v40 = [*(a1 + 64) GUID];
        *buf = 138543618;
        v74 = v39;
        v75 = 2114;
        v76 = v40;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Album %{public}@ publicURLString needs to be refetched through another albumsummary request now that we have a clientOrgKey for the album.", buf, 0x16u);
      }

      v41 = *(a1 + 56);
      v72 = *(a1 + 48);
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
      [v41 checkForUpdatesInAlbums:v34 resetSync:0 info:0];
    }

    goto LABEL_30;
  }

  v2 = objc_loadWeakRetained((a1 + 96));
  v3 = *(a1 + 32);
  v4 = NSStringFromSelector(sel__checkForUpdatesInAlbumDisposition_params_);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) GUID];
  LOBYTE(v3) = [v2 workQueueEndCommandWithError:v3 command:v4 params:v5 albumGUID:v6 assetCollectionGUID:0];

  if (v3)
  {
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v45 = objc_loadWeakRetained((a1 + 96));
    v46 = *(a1 + 48);
    v47 = [*(a1 + 32) MSVerboseDescription];
    *buf = 138543874;
    v74 = v45;
    v75 = 2114;
    v76 = v46;
    v77 = 2114;
    v78 = v47;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not complete checking for updates for album %{public}@. Error: %{public}@", buf, 0x20u);
  }

  v7 = [*(a1 + 56) eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_141;
  block[3] = &unk_278E910E8;
  v8 = &v71;
  objc_copyWeak(&v71, (a1 + 96));
  v9 = *(a1 + 64);
  v10 = *(a1 + 88);
  v69 = v9;
  v70[1] = v10;
  v70[0] = *(a1 + 32);
  dispatch_async(v7, block);

  v11 = objc_loadWeakRetained((a1 + 96));
  [v11 workQueueDidFinishCommand];

  v12 = &v69;
  v13 = v70;
LABEL_31:

  objc_destroyWeak(v8);
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_141(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishCheckingForUpdatesInAlbum:*(a1 + 32) info:*(*(*(a1 + 48) + 8) + 40) error:*(a1 + 40)];
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_142(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v3 = *(a1 + 32);
    v11 = 138543618;
    v12 = WeakRetained;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Saving album %{public}@.", &v11, 0x16u);
  }

  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 daemon];
  v6 = objc_loadWeakRetained((a1 + 56));
  v7 = [v6 personID];
  [v5 didReceiveAuthSuccessForPersonID:v7];

  v8 = objc_loadWeakRetained((a1 + 56));
  v9 = [v8 delegate];
  v10 = objc_loadWeakRetained((a1 + 56));
  [v9 MSASStateMachine:v10 didFindChangesInAlbum:*(a1 + 32) info:*(*(*(a1 + 48) + 8) + 40) error:*(a1 + 40)];
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_2_144(uint64_t a1)
{
  v2 = [*(a1 + 32) useForeignCtag];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    [v3 setForeignCtag:v4];
    v5 = [*(a1 + 48) ctag];
    [*(a1 + 32) setCtag:v5];
  }

  else
  {
    [v3 setCtag:v4];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 72));
  [v6 MSASStateMachine:v7 didFinishCheckingForUpdatesInAlbum:*(a1 + 32) info:*(*(*(a1 + 64) + 8) + 40) error:*(a1 + 56)];
}

- (void)checkForUpdatesInAlbums:(id)albums resetSync:(BOOL)sync info:(id)info
{
  albumsCopy = albums;
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__MSASStateMachine_checkForUpdatesInAlbums_resetSync_info___block_invoke;
  v13[3] = &unk_278E91D20;
  v13[4] = self;
  v14 = albumsCopy;
  v15 = infoCopy;
  syncCopy = sync;
  v11 = infoCopy;
  v12 = albumsCopy;
  dispatch_async(workQueue, v13);
}

void __59__MSASStateMachine_checkForUpdatesInAlbums_resetSync_info___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    *buf = 138543618;
    v33 = v2;
    v34 = 2114;
    v35 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling check for updates in albums %{public}@", buf, 0x16u);
  }

  v4 = [*(a1 + 32) _model];
  [v4 beginTransaction];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = [MEMORY[0x277CBEB38] dictionary];
        v11 = v10;
        if (v9)
        {
          [v10 setObject:v9 forKey:@"album"];
        }

        v12 = *(a1 + 48);
        if (v12)
        {
          [v11 setObject:v12 forKey:@"info"];
        }

        v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
        [v11 setObject:v13 forKey:@"resetSync"];

        v14 = [*(a1 + 32) _model];
        v15 = NSStringFromSelector(sel__checkForUpdatesInAlbumDisposition_params_);
        v16 = [*(a1 + 32) personID];
        v17 = [v9 GUID];
        [v14 enqueueCommand:v15 params:v11 personID:v16 albumGUID:v17 assetCollectionGUID:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v18 = [MEMORY[0x277CBEB38] dictionary];
  v19 = v18;
  v20 = *(a1 + 40);
  if (v20)
  {
    [v18 setObject:v20 forKey:@"albums"];
  }

  v21 = *(a1 + 48);
  if (v21)
  {
    [v19 setObject:v21 forKey:@"info"];
  }

  v22 = [*(a1 + 32) _model];
  v23 = NSStringFromSelector(sel__didFinishCheckingUpdatesInAlbumsDisposition_params_);
  v24 = [*(a1 + 32) personID];
  [v22 enqueueCommand:v23 params:v19 personID:v24 albumGUID:0 assetCollectionGUID:0];

  v25 = [*(a1 + 32) _model];
  [v25 endTransaction];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)_checkForChangesDisposition:(int)disposition params:(id)params
{
  v28 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [paramsCopy objectForKey:@"info"];
  if (disposition == 2)
  {
    eventQueue = [(MSASStateMachine *)self eventQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_3;
    v18[3] = &unk_278E927C8;
    v18[4] = self;
    v19 = v7;
    dispatch_async(eventQueue, v18);
  }

  else if (!disposition)
  {
    v8 = [paramsCopy objectForKey:@"resetSync"];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      _model = [(MSASStateMachine *)self _model];
      [_model deletePersistentValueWithKey:@"rootCtag"];
    }

    rootCtagToCheckForChanges = [(MSASStateMachine *)self rootCtagToCheckForChanges];
    if (rootCtagToCheckForChanges && ([(MSASStateMachine *)self migrationCtagToCheckForChanges], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {

      rootCtagToCheckForChanges = 0;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    protocol = [(MSASStateMachine *)self protocol];
    stopHandlerBlock = [protocol stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:stopHandlerBlock];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      selfCopy = self;
      v26 = 1024;
      v27 = bOOLValue;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Checking for album list updates. Reset sync: %d", buf, 0x12u);
    }

    objc_initWeak(buf, self);
    protocol2 = [(MSASStateMachine *)self protocol];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke;
    v20[3] = &unk_278E910B8;
    v20[4] = self;
    v21 = v7;
    objc_copyWeak(&v22, buf);
    v23 = v13;
    [protocol2 getChangesRootCtag:rootCtagToCheckForChanges migrationCtag:0 completionBlock:v20];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }
}

void __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke(uint64_t a1, void *a2, char a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_2;
  block[3] = &unk_278E91090;
  v25 = v13;
  v26 = *(a1 + 40);
  v27 = v14;
  v28 = *(a1 + 32);
  v33 = a3;
  v19 = v14;
  v20 = v13;
  objc_copyWeak(&v32, (a1 + 48));
  v29 = v17;
  v30 = v15;
  v31 = v16;
  v34 = *(a1 + 56);
  v21 = v16;
  v22 = v15;
  v23 = v17;
  dispatch_async(v18, block);

  objc_destroyWeak(&v32);
}

void __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_3(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v3 _canceledError];
  [v5 MSASStateMachine:v3 didFinishCheckingForChangesInfo:v2 error:v4];
}

void __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_2(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 40)];
  if (v2)
  {
LABEL_2:
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v5 = [WeakRetained workQueueEndCommandWithError:v2 command:0 params:0 albumGUID:0 assetCollectionGUID:0];

    if ((v5 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v39 = objc_loadWeakRetained((a1 + 88));
        v40 = [v2 MSVerboseDescription];
        *buf = 138543618;
        v63 = v39;
        v64 = 2114;
        v65 = v40;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to check for changes. Error: %{public}@", buf, 0x16u);
      }

      v6 = [*(a1 + 56) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_132;
      block[3] = &unk_278E917C0;
      objc_copyWeak(&v47, (a1 + 88));
      v45 = v3;
      v2 = v2;
      v46 = v2;
      dispatch_async(v6, block);

      v7 = objc_loadWeakRetained((a1 + 88));
      [v7 workQueueDidFinishCommand];

      objc_destroyWeak(&v47);
    }

    goto LABEL_39;
  }

  if (*(a1 + 48))
  {
    [*(a1 + 56) setPendingRootCtag:?];
    if (*(a1 + 96) == 1)
    {
      v8 = [v3 MSASAddIsGlobalResetSync];
      v9 = [v3 MSASAddNotInterestingKey];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_loadWeakRetained((a1 + 88));
        *buf = 138543362;
        v63 = v10;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Global reset sync found.", buf, 0xCu);
      }

      v11 = objc_loadWeakRetained((a1 + 88));
      v12 = [v11 delegate];
      v13 = objc_loadWeakRetained((a1 + 88));
      [v12 MSASStateMachineDidFindGlobalResetSync:v13 info:v3];
    }

    v14 = [*(a1 + 56) eventQueue];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_123;
    v56[3] = &unk_278E911B0;
    objc_copyWeak(&v61, (a1 + 88));
    v57 = *(a1 + 64);
    v58 = *(a1 + 72);
    v59 = *(a1 + 80);
    v60 = *(a1 + 40);
    dispatch_async(v14, v56);

    if (_os_feature_enabled_impl())
    {
      if (*(a1 + 97) == 1)
      {
        v15 = [MEMORY[0x277CBEB58] set];
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v16 = *(a1 + 64);
        v17 = [v16 countByEnumeratingWithState:&v52 objects:v67 count:16];
        if (v17)
        {
          v18 = *v53;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v53 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v52 + 1) + 8 * i);
              if (([v15 containsObject:v20] & 1) == 0)
              {
                v21 = [*(a1 + 56) delegate];
                [v21 refreshContentOfAlbumWithGUID:v20 resetSync:1];

                [v15 addObject:v20];
              }
            }

            v17 = [v16 countByEnumeratingWithState:&v52 objects:v67 count:16];
          }

          while (v17);
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v22 = *(a1 + 80);
        v23 = [v22 countByEnumeratingWithState:&v48 objects:v66 count:16];
        if (v23)
        {
          v24 = *v49;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v49 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = *(*(&v48 + 1) + 8 * j);
              if (([v15 containsObject:v26] & 1) == 0)
              {
                v27 = [*(a1 + 56) delegate];
                [v27 refreshContentOfAlbumWithGUID:v26 resetSync:1];

                [v15 addObject:v26];
              }
            }

            v23 = [v22 countByEnumeratingWithState:&v48 objects:v66 count:16];
          }

          while (v23);
        }
      }

      v28 = [*(a1 + 56) delegate];
      [v28 deletePersistentValueWithKey:@"migrationMarker"];
    }

    objc_destroyWeak(&v61);
  }

  else
  {
    v35 = MEMORY[0x277CCA9B8];
    v36 = MEMORY[0x277CCACA8];
    v37 = MSCFCopyLocalizedString(@"ERROR_MSAS_SUB_MISSING_FIELD_P_FIELD");
    v38 = [v36 stringWithFormat:v37, @"rootctag"];
    v2 = [v35 MSErrorWithDomain:@"MSASSubscriberErrorDomain" code:0 description:v38];

    if (v2)
    {
      goto LABEL_2;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v29 = objc_loadWeakRetained((a1 + 88));
    *buf = 138543362;
    v63 = v29;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully checked for changes updates.", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v30 = objc_loadWeakRetained((a1 + 88));
    v31 = *(a1 + 48);
    *buf = 138543618;
    v63 = v30;
    v64 = 2114;
    v65 = v31;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: New root ctag: %{public}@", buf, 0x16u);
  }

  v32 = [*(a1 + 56) memberQueue];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_133;
  v43[3] = &unk_278E926D8;
  v43[4] = *(a1 + 56);
  dispatch_barrier_sync(v32, v43);

  v33 = [*(a1 + 56) eventQueue];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_2_134;
  v41[3] = &unk_278E90E70;
  objc_copyWeak(&v42, (a1 + 88));
  dispatch_async(v33, v41);

  v34 = objc_loadWeakRetained((a1 + 88));
  [v34 workQueueDidFinishCommand];

  objc_destroyWeak(&v42);
  v2 = 0;
LABEL_39:
}

void __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_123(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 64));
  [v2 MSASStateMachine:v3 didFindSyncedKeyValueChangesForAlbumGUIDS:*(a1 + 32) albumChanges:*(a1 + 40) accessControlChangesForAlbumGUIDS:*(a1 + 48) info:*(a1 + 56)];
}

void __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_132(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 48));
  [v2 MSASStateMachine:v3 didFinishCheckingForChangesInfo:*(a1 + 32) error:*(a1 + 40)];
}

void __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_2_134(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained daemon];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 personID];
  [v2 didReceiveAuthSuccessForPersonID:v4];
}

- (void)checkForChangesResetSync:(BOOL)sync info:(id)info
{
  infoCopy = info;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSASStateMachine_checkForChangesResetSync_info___block_invoke;
  block[3] = &unk_278E91060;
  syncCopy = sync;
  block[4] = self;
  v10 = infoCopy;
  v8 = infoCopy;
  dispatch_async(workQueue, block);
}

uint64_t __50__MSASStateMachine_checkForChangesResetSync_info___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) & 1) != 0 || ([*(a1 + 32) _model], v2 = objc_claimAutoreleasedReturnValue(), NSStringFromSelector(sel__checkForChangesDisposition_params_), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v2, "countOfEnqueuedCommand:", v3), v3, v2, v4 < 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v20 = 138543618;
      v21 = v6;
      v22 = 1024;
      v23 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling check for changes. Reset sync: %d", &v20, 0x12u);
    }

    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
    [v8 setObject:v9 forKey:@"resetSync"];

    v10 = *(a1 + 40);
    if (v10)
    {
      [v8 setObject:v10 forKey:@"info"];
    }

    v11 = [*(a1 + 32) serverSideConfigurationVersion];

    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v20 = 138543362;
        v21 = v12;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling retrieval of server side configuration because we don't have it yet.", &v20, 0xCu);
      }

      v13 = [*(a1 + 32) _model];
      v14 = NSStringFromSelector(sel__sendGetServerSideConfigurationDisposition_params_);
      v15 = [*(a1 + 32) personID];
      [v13 enqueueCommand:v14 params:0 personID:v15 albumGUID:0 assetCollectionGUID:0];
    }

    v16 = [*(a1 + 32) _model];
    v17 = NSStringFromSelector(sel__checkForChangesDisposition_params_);
    v18 = [*(a1 + 32) personID];
    [v16 enqueueCommand:v17 params:v8 personID:v18 albumGUID:0 assetCollectionGUID:0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v20 = 138543362;
    v21 = v5;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Not scheduling another check for changes because there is already one scheduled.", &v20, 0xCu);
  }

  return [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)checkForChangesIfMissingRootCtag
{
  v6 = *MEMORY[0x277D85DE8];
  rootCtagToCheckForChanges = [(MSASStateMachine *)self rootCtagToCheckForChanges];
  if (!rootCtagToCheckForChanges)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: checking for changes because there is no root ctag.", &v4, 0xCu);
    }

    [(MSASStateMachine *)self checkForChangesResetSync:0 info:0];
  }
}

- (id)_assetCollectionFailedError
{
  if (_assetCollectionFailedError_onceToken != -1)
  {
    dispatch_once(&_assetCollectionFailedError_onceToken, &__block_literal_global_117);
  }

  v3 = _assetCollectionFailedError_error;

  return v3;
}

void __47__MSASStateMachine__assetCollectionFailedError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_STATE_PHOTO_FAILED");
  v1 = [v0 MSErrorWithDomain:@"MSASStateMachineErrorDomain" code:2 description:v3];
  v2 = _assetCollectionFailedError_error;
  _assetCollectionFailedError_error = v1;
}

- (id)_assetCollectionRejectedError
{
  if (_assetCollectionRejectedError_onceToken != -1)
  {
    dispatch_once(&_assetCollectionRejectedError_onceToken, &__block_literal_global_112);
  }

  v3 = _assetCollectionRejectedError_error;

  return v3;
}

void __49__MSASStateMachine__assetCollectionRejectedError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_STATE_PHOTO_REJECTED");
  v1 = [v0 MSErrorWithDomain:@"MSASStateMachineErrorDomain" code:2 description:v3];
  v2 = _assetCollectionRejectedError_error;
  _assetCollectionRejectedError_error = v1;
}

- (id)_stoppedError
{
  if (_stoppedError_onceToken != -1)
  {
    dispatch_once(&_stoppedError_onceToken, &__block_literal_global_107);
  }

  v3 = _stoppedError_error;

  return v3;
}

void __33__MSASStateMachine__stoppedError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_STATE_STOPPED");
  v1 = [v0 MSErrorWithDomain:@"MSASStateMachineErrorDomain" code:1 description:v3];
  v2 = _stoppedError_error;
  _stoppedError_error = v1;
}

- (id)_canceledError
{
  if (_canceledError_onceToken != -1)
  {
    dispatch_once(&_canceledError_onceToken, &__block_literal_global_102);
  }

  v3 = _canceledError_error;

  return v3;
}

void __34__MSASStateMachine__canceledError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_STATE_CANCELED");
  v1 = [v0 MSErrorWithDomain:@"MSASStateMachineErrorDomain" code:0 description:v3];
  v2 = _canceledError_error;
  _canceledError_error = v1;
}

- (void)_getAlbumURLDisposition:(int)disposition params:(id)params
{
  paramsCopy = params;
  v7 = [paramsCopy objectForKey:@"albumGUID"];
  v8 = [paramsCopy objectForKey:@"assetCollectionGUID"];
  v9 = [paramsCopy objectForKey:@"command"];
  v10 = [paramsCopy objectForKey:@"params"];

  if (disposition == 2)
  {
    v12 = [v10 mutableCopy];
    _canceledError = [(MSASStateMachine *)self _canceledError];
    [v12 setObject:_canceledError forKey:@"error"];

    _model = [(MSASStateMachine *)self _model];
    personID = [(MSASStateMachine *)self personID];
    [_model enqueueCommandAtHeadOfQueue:v9 params:v12 personID:personID albumGUID:v7 assetCollectionGUID:v8];
  }

  else if (!disposition)
  {
    protocol = [(MSASStateMachine *)self protocol];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__MSASStateMachine__getAlbumURLDisposition_params___block_invoke;
    v16[3] = &unk_278E91030;
    v16[4] = self;
    v17 = v10;
    v18 = v9;
    v19 = v7;
    v20 = v8;
    [protocol getAlbumURLForAlbumWithGUID:v19 completionBlock:v16];
  }
}

void __51__MSASStateMachine__getAlbumURLDisposition_params___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASStateMachine__getAlbumURLDisposition_params___block_invoke_2;
  block[3] = &unk_278E91008;
  v11 = a1[5];
  v12 = v5;
  v13 = a1[4];
  v14 = a1[6];
  v15 = a1[7];
  v16 = a1[8];
  v17 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void __51__MSASStateMachine__getAlbumURLDisposition_params___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) mutableCopy];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v2 setObject:v3 forKey:@"commandWasRequeued"];

  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v5)
  {
    if (([v4 workQueueEndCommandWithError:v5 command:0 params:0 albumGUID:0 assetCollectionGUID:0] & 1) == 0)
    {
      v6 = [*(a1 + 48) _URLReauthFailureWithUnderlyingError:*(a1 + 40)];
      [v2 setObject:v6 forKey:@"error"];

      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = [v7 personID];
      [v7 workQueueDidFinishCommandByReplacingCurrentCommandWithCommand:v8 params:v2 personID:v9 albumGUID:*(a1 + 64) assetCollectionGUID:*(a1 + 72)];
    }
  }

  else
  {
    v10 = [v4 delegate];
    v11 = *(a1 + 48);
    v12 = *(a1 + 80);
    v13 = *(a1 + 64);
    v14 = [v2 objectForKey:@"info"];
    [v10 MSASStateMachine:v11 didFindNewURLString:v12 forAlbumWithGUID:v13 info:v14];

    v15 = [v2 objectForKey:@"album"];
    v16 = [MSASAlbum albumWithAlbum:v15];

    if (v16)
    {
      [v16 setURLString:*(a1 + 80)];
      [v2 setObject:v16 forKey:@"album"];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 48);
        v22 = 138543362;
        v23 = v21;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Cannot retry a command after a URL validation error, because the command does not have an album parameter.", &v22, 0xCu);
      }

      v17 = [*(a1 + 48) _URLReauthFailureWithUnderlyingError:0];
      [v2 setObject:v17 forKey:@"error"];
    }

    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = [v18 personID];
    [v18 workQueueDidFinishCommandByReplacingCurrentCommandWithCommand:v19 params:v2 personID:v20 albumGUID:*(a1 + 64) assetCollectionGUID:*(a1 + 72)];
  }
}

- (id)_URLReauthFailureWithUnderlyingError:(id)error
{
  v3 = MEMORY[0x277CCA9B8];
  errorCopy = error;
  v5 = MSCFCopyLocalizedString(@"ERROR_STATE_CANNOT_REQUEUE_AFTER_URL");
  v6 = [v3 MSErrorWithDomain:@"MSASStateMachineErrorDomain" code:4 description:v5 underlyingError:errorCopy];

  return v6;
}

- (void)_actionDidFinishWithError:(id)error album:(id)album
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  albumCopy = album;
  if ([errorCopy MSContainsErrorWithDomain:@"MSASProtocolErrorDomain" code:22])
  {
    v8 = _os_feature_enabled_impl();
    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!v8)
    {
      if (!v9)
      {
        goto LABEL_8;
      }

      mSVerboseDescription = [errorCopy MSVerboseDescription];
      *buf = 138543618;
      selfCopy2 = self;
      v18 = 2114;
      v19 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Encountered fatal error. Not retrying. Error: %{public}@", buf, 0x16u);
      goto LABEL_6;
    }

    if (v9)
    {
      gUID = [albumCopy GUID];
      mSVerboseDescription2 = [errorCopy MSVerboseDescription];
      *buf = 138543874;
      selfCopy2 = self;
      v18 = 2114;
      v19 = gUID;
      v20 = 2114;
      v21 = mSVerboseDescription2;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Encountered invalid/missing clientOrgKey error. Fetching new clientOrgKey for album: %{public}@. Not retrying. Error: %{public}@", buf, 0x20u);

      if (!albumCopy)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    if (albumCopy)
    {
LABEL_5:
      [albumCopy setClientOrgKey:0];
      delegate = [(MSASStateMachine *)self delegate];
      gUID2 = [albumCopy GUID];
      [delegate setClientOrgKey:0 forAlbumWithGUID:gUID2];

      v15 = albumCopy;
      mSVerboseDescription = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
      [(MSASStateMachine *)self checkForUpdatesInAlbums:mSVerboseDescription resetSync:0 info:0];
LABEL_6:
    }
  }

LABEL_8:
}

- (BOOL)workQueueEndCommandWithError:(id)error command:(id)command params:(id)params albumGUID:(id)d assetCollectionGUID:(id)iD
{
  v56 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  commandCopy = command;
  paramsCopy = params;
  dCopy = d;
  iDCopy = iD;
  if ([errorCopy MSContainsErrorWithDomain:@"MSASStateMachineErrorDomain" code:0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy10 = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Command was cancelled.", buf, 0xCu);
    }

    [(MSASStateMachine *)self workQueueDidFinishCommandDueToCancellation];
    goto LABEL_17;
  }

  if ([errorCopy MSContainsErrorWithDomain:@"MSASStateMachineErrorDomain" code:1])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy10 = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Command was stopped. Not removing from the command queue.", buf, 0xCu);
    }

    [(MSASStateMachine *)self workQueueDidFinishCommandByLeavingCommandInQueue];
    goto LABEL_17;
  }

  if ([errorCopy MSIsTemporaryNetworkError])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy10 = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Encountered temporary network problems.", buf, 0xCu);
    }

LABEL_16:
    [(MSASStateMachine *)self workQueueDidFailToFinishCommandDueToTemporaryError:errorCopy];
LABEL_17:
    v18 = 1;
    goto LABEL_18;
  }

  if ([errorCopy MSIsAuthError])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      mSVerboseDescription = [errorCopy MSVerboseDescription];
      *buf = 138543618;
      selfCopy10 = self;
      v52 = 2114;
      v53 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Received authentication error: %{public}@", buf, 0x16u);
    }

    eventQueue = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__MSASStateMachine_workQueueEndCommandWithError_command_params_albumGUID_assetCollectionGUID___block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = self;
    dispatch_async(eventQueue, block);

    goto LABEL_16;
  }

  if (commandCopy && [errorCopy MSContainsErrorWithDomain:@"MSASProtocolErrorDomain" code:18])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      mSVerboseDescription2 = [errorCopy MSVerboseDescription];
      *buf = 138543618;
      selfCopy10 = self;
      v52 = 2114;
      v53 = mSVerboseDescription2;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Encountered visitor authentication failure. Getting new album URL and retrying command. Error: %{public}@", buf, 0x16u);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v21 = dictionary;
    if (dCopy)
    {
      [dictionary setObject:dCopy forKey:@"albumGUID"];
    }

    if (iDCopy)
    {
      [v21 setObject:iDCopy forKey:@"assetCollectionGUID"];
    }

    [v21 setObject:commandCopy forKey:@"command"];
    if (paramsCopy)
    {
      [v21 setObject:paramsCopy forKey:@"params"];
    }

    v22 = NSStringFromSelector(sel__getAlbumURLDisposition_params_);
    personID = [(MSASStateMachine *)self personID];
    [(MSASStateMachine *)self workQueueDidFinishCommandByReplacingCurrentCommandWithCommand:v22 params:v21 personID:personID albumGUID:dCopy assetCollectionGUID:0];

    goto LABEL_17;
  }

  if ([errorCopy MSContainsErrorWithDomain:@"MSASProtocolErrorDomain" code:22])
  {
    v24 = _os_feature_enabled_impl();
    v25 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v24)
    {
      if (v25)
      {
        mSVerboseDescription3 = [errorCopy MSVerboseDescription];
        *buf = 138543874;
        selfCopy10 = self;
        v52 = 2114;
        v53 = dCopy;
        v54 = 2114;
        v55 = mSVerboseDescription3;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Encountered invalid/missing clientOrgKey error. Fetching new clientOrgKey for album: %{public}@. Not retrying. Error: %{public}@", buf, 0x20u);
      }

      v26 = [paramsCopy objectForKeyedSubscript:@"album"];
      mSVerboseDescription4 = v26;
      if (v26)
      {
        [v26 setClientOrgKey:0];
        delegate = [(MSASStateMachine *)self delegate];
        [delegate setClientOrgKey:0 forAlbumWithGUID:dCopy];

        v49 = mSVerboseDescription4;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
        [(MSASStateMachine *)self checkForUpdatesInAlbums:v29 resetSync:0 info:0];
      }

      goto LABEL_36;
    }

    if (!v25)
    {
      goto LABEL_50;
    }

LABEL_41:
    mSVerboseDescription4 = [errorCopy MSVerboseDescription];
    *buf = 138543618;
    selfCopy10 = self;
    v52 = 2114;
    v53 = mSVerboseDescription4;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Encountered fatal error. Not retrying. Error: %{public}@", buf, 0x16u);
LABEL_36:

LABEL_50:
    v18 = 0;
    goto LABEL_18;
  }

  if ([errorCopy MSIsFatal])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    goto LABEL_41;
  }

  v30 = [(NSDictionary *)self->_currentCommandParams objectForKey:@"errorCount"];
  intValue = [v30 intValue];

  v32 = (intValue + 1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    mSVerboseDescription5 = [errorCopy MSVerboseDescription];
    *buf = 138543874;
    selfCopy10 = self;
    v52 = 2114;
    v53 = mSVerboseDescription5;
    v54 = 1024;
    LODWORD(v55) = v32;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Encountered error: %{public}@. This command has encountered %d errors so far.", buf, 0x1Cu);
  }

  if (v32 >= [(MSASStateMachine *)self maxMetadataRetryCount])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy10 = self;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Giving up.", buf, 0xCu);
    }

    goto LABEL_50;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy10 = self;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Retrying.", buf, 0xCu);
  }

  memberQueue = [(MSASStateMachine *)self memberQueue];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __94__MSASStateMachine_workQueueEndCommandWithError_command_params_albumGUID_assetCollectionGUID___block_invoke_94;
  v47[3] = &unk_278E926D8;
  v47[4] = self;
  dispatch_barrier_sync(memberQueue, v47);

  v34 = [(NSDictionary *)self->_currentCommandParams mutableCopy];
  v35 = [MEMORY[0x277CCABB0] numberWithInt:v32];
  [v34 setObject:v35 forKey:@"errorCount"];

  [(MSASPersonModel *)self->_model setParams:v34 forCommandWithIdentifier:self->_currentCommandID];
  eventQueue2 = [(MSASStateMachine *)self eventQueue];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __94__MSASStateMachine_workQueueEndCommandWithError_command_params_albumGUID_assetCollectionGUID___block_invoke_2;
  v46[3] = &unk_278E926D8;
  v46[4] = self;
  dispatch_async(eventQueue2, v46);

  currentCommandParams = self->_currentCommandParams;
  self->_currentCommandParams = 0;

  currentCommand = self->_currentCommand;
  self->_currentCommand = 0;

  stopHandlerBlock = self->_stopHandlerBlock;
  self->_stopHandlerBlock = 0;

  v18 = 1;
  self->_commandState = 1;
  [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
  workQueue = [(MSASStateMachine *)self workQueue];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __94__MSASStateMachine_workQueueEndCommandWithError_command_params_albumGUID_assetCollectionGUID___block_invoke_3;
  v45[3] = &unk_278E926D8;
  v45[4] = self;
  dispatch_async(workQueue, v45);

LABEL_18:
  return v18;
}

void __94__MSASStateMachine_workQueueEndCommandWithError_command_params_albumGUID_assetCollectionGUID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) daemon];
  v2 = [*(a1 + 32) personID];
  [v3 didReceiveAuthFailureForPersonID:v2];
}

void __94__MSASStateMachine_workQueueEndCommandWithError_command_params_albumGUID_assetCollectionGUID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

- (void)workQueueDidFinishCommandDueToCancellation
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_commandState != 2)
  {
    __assert_rtn("[MSASStateMachine workQueueDidFinishCommandDueToCancellation]", "MSASStateMachine.m", 1175, "_commandState == kMSASCommandStatePerformingCommand");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Command finished because it was cancelled.", buf, 0xCu);
  }

  self->_commandState = 0;
  currentCommandParams = self->_currentCommandParams;
  self->_currentCommandParams = 0;

  currentCommand = self->_currentCommand;
  self->_currentCommand = 0;

  stopHandlerBlock = self->_stopHandlerBlock;
  self->_stopHandlerBlock = 0;

  [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
  eventQueue = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MSASStateMachine_workQueueDidFinishCommandDueToCancellation__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(eventQueue, block);

  postCommandCompletionBlock = [(MSASStateMachine *)self postCommandCompletionBlock];

  if (postCommandCompletionBlock)
  {
    postCommandCompletionBlock2 = [(MSASStateMachine *)self postCommandCompletionBlock];
    [(MSASStateMachine *)self setPostCommandCompletionBlock:0];
    postCommandCompletionBlock2[2](postCommandCompletionBlock2);
  }
}

void __62__MSASStateMachine_workQueueDidFinishCommandDueToCancellation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

- (void)workQueueDidFinishCommandByLeavingCommandInQueue
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_commandState != 2)
  {
    __assert_rtn("[MSASStateMachine workQueueDidFinishCommandByLeavingCommandInQueue]", "MSASStateMachine.m", 1154, "_commandState == kMSASCommandStatePerformingCommand");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Leaving command in queue.", buf, 0xCu);
  }

  self->_commandState = 1;
  currentCommandParams = self->_currentCommandParams;
  self->_currentCommandParams = 0;

  currentCommand = self->_currentCommand;
  self->_currentCommand = 0;

  stopHandlerBlock = self->_stopHandlerBlock;
  self->_stopHandlerBlock = 0;

  [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
  eventQueue = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MSASStateMachine_workQueueDidFinishCommandByLeavingCommandInQueue__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(eventQueue, block);

  workQueue = [(MSASStateMachine *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__MSASStateMachine_workQueueDidFinishCommandByLeavingCommandInQueue__block_invoke_2;
  v8[3] = &unk_278E926D8;
  v8[4] = self;
  dispatch_async(workQueue, v8);
}

void __68__MSASStateMachine_workQueueDidFinishCommandByLeavingCommandInQueue__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

uint64_t __68__MSASStateMachine_workQueueDidFinishCommandByLeavingCommandInQueue__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) postCommandCompletionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) postCommandCompletionBlock];
    [*(a1 + 32) setPostCommandCompletionBlock:0];
    v3[2](v3);
  }

  v4 = *(a1 + 32);

  return [v4 workQueueCheckForNextCommand];
}

- (void)workQueueDidFailToFinishCommandDueToTemporaryError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (self->_commandState != 2)
  {
    __assert_rtn("[MSASStateMachine workQueueDidFailToFinishCommandDueToTemporaryError:]", "MSASStateMachine.m", 1136, "_commandState == kMSASCommandStatePerformingCommand");
  }

  v5 = errorCopy;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    mSVerboseDescription = [v5 MSVerboseDescription];
    *buf = 138543618;
    selfCopy = self;
    v16 = 2114;
    v17 = mSVerboseDescription;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Encountered temporary error. Will retry later. Error: %{public}@", buf, 0x16u);
  }

  self->_commandState = 1;
  currentCommandParams = self->_currentCommandParams;
  self->_currentCommandParams = 0;

  currentCommand = self->_currentCommand;
  self->_currentCommand = 0;

  stopHandlerBlock = self->_stopHandlerBlock;
  self->_stopHandlerBlock = 0;

  [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
  eventQueue = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__MSASStateMachine_workQueueDidFailToFinishCommandDueToTemporaryError___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(eventQueue, block);

  postCommandCompletionBlock = [(MSASStateMachine *)self postCommandCompletionBlock];

  if (postCommandCompletionBlock)
  {
    postCommandCompletionBlock2 = [(MSASStateMachine *)self postCommandCompletionBlock];
    [(MSASStateMachine *)self setPostCommandCompletionBlock:0];
    postCommandCompletionBlock2[2](postCommandCompletionBlock2);
  }
}

void __71__MSASStateMachine_workQueueDidFailToFinishCommandDueToTemporaryError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

- (void)workQueueDidFinishCommandByReplacingCurrentCommandWithCommand:(id)command params:(id)params personID:(id)d albumGUID:(id)iD assetCollectionGUID:(id)uID
{
  v40 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  paramsCopy = params;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    selfCopy = self;
    v38 = 2114;
    v39 = commandCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Command will be replaced by command: %{public}@", buf, 0x16u);
  }

  dbQueue = [(MSASModelBase *)self->_model dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__MSASStateMachine_workQueueDidFinishCommandByReplacingCurrentCommandWithCommand_params_personID_albumGUID_assetCollectionGUID___block_invoke;
  block[3] = &unk_278E92048;
  block[4] = self;
  v31 = commandCopy;
  v32 = paramsCopy;
  v33 = dCopy;
  v34 = iDCopy;
  v35 = uIDCopy;
  v18 = uIDCopy;
  v19 = iDCopy;
  v20 = dCopy;
  v21 = paramsCopy;
  v22 = commandCopy;
  dispatch_barrier_sync(dbQueue, block);

  self->_commandState = 1;
  currentCommandParams = self->_currentCommandParams;
  self->_currentCommandParams = 0;

  currentCommand = self->_currentCommand;
  self->_currentCommand = 0;

  stopHandlerBlock = self->_stopHandlerBlock;
  self->_stopHandlerBlock = 0;

  [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
  eventQueue = [(MSASStateMachine *)self eventQueue];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __128__MSASStateMachine_workQueueDidFinishCommandByReplacingCurrentCommandWithCommand_params_personID_albumGUID_assetCollectionGUID___block_invoke_2;
  v29[3] = &unk_278E926D8;
  v29[4] = self;
  dispatch_async(eventQueue, v29);

  workQueue = [(MSASStateMachine *)self workQueue];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __128__MSASStateMachine_workQueueDidFinishCommandByReplacingCurrentCommandWithCommand_params_personID_albumGUID_assetCollectionGUID___block_invoke_3;
  v28[3] = &unk_278E926D8;
  v28[4] = self;
  dispatch_async(workQueue, v28);
}

uint64_t __128__MSASStateMachine_workQueueDidFinishCommandByReplacingCurrentCommandWithCommand_params_personID_albumGUID_assetCollectionGUID___block_invoke(void *a1)
{
  [*(a1[4] + 16) dbQueueBeginTransaction];
  [*(a1[4] + 16) dbQueueRemoveCommandIdentifier:*(a1[4] + 32)];
  [*(a1[4] + 16) dbQueueEnqueueCommand:a1[5] params:a1[6] personID:a1[7] albumGUID:a1[8] assetCollectionGUID:a1[9] sequenceNumber:*(a1[4] + 32)];
  v2 = *(a1[4] + 16);

  return [v2 dbQueueEndTransaction];
}

void __128__MSASStateMachine_workQueueDidFinishCommandByReplacingCurrentCommandWithCommand_params_personID_albumGUID_assetCollectionGUID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

uint64_t __128__MSASStateMachine_workQueueDidFinishCommandByReplacingCurrentCommandWithCommand_params_personID_albumGUID_assetCollectionGUID___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) postCommandCompletionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) postCommandCompletionBlock];
    [*(a1 + 32) setPostCommandCompletionBlock:0];
    v3[2](v3);
  }

  v4 = *(a1 + 32);

  return [v4 workQueueCheckForNextCommand];
}

- (void)workQueueDidFinishCommand
{
  if (self->_commandState != 2)
  {
    __assert_rtn("[MSASStateMachine workQueueDidFinishCommand]", "MSASStateMachine.m", 1078, "_commandState == kMSASCommandStatePerformingCommand");
  }

  self->_commandState = 1;
  eventQueue = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MSASStateMachine_workQueueDidFinishCommand__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(eventQueue, block);

  [(MSASPersonModel *)self->_model removeCommandIdentifier:self->_currentCommandID];
  currentCommandParams = self->_currentCommandParams;
  self->_currentCommandParams = 0;

  currentCommand = self->_currentCommand;
  self->_currentCommand = 0;

  stopHandlerBlock = self->_stopHandlerBlock;
  self->_stopHandlerBlock = 0;

  [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
  workQueue = [(MSASStateMachine *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__MSASStateMachine_workQueueDidFinishCommand__block_invoke_2;
  v8[3] = &unk_278E926D8;
  v8[4] = self;
  dispatch_async(workQueue, v8);
}

void __45__MSASStateMachine_workQueueDidFinishCommand__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

uint64_t __45__MSASStateMachine_workQueueDidFinishCommand__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) postCommandCompletionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) postCommandCompletionBlock];
    [*(a1 + 32) setPostCommandCompletionBlock:0];
    v3[2](v3);
  }

  v4 = *(a1 + 32);

  return [v4 workQueueCheckForNextCommand];
}

- (void)workQueuePerformNextCommand
{
  v41 = *MEMORY[0x277D85DE8];
  if (![(MSASStateMachine *)self hasShutDown])
  {
    model = self->_model;
    v34 = 0;
    v35 = 0;
    v5 = [(MSASPersonModel *)model commandAtHeadOfQueueOutParams:&v35 outCommandIdentifier:&self->_currentCommandID outPersonID:&v34 outAlbumGUID:0 outAssetCollectionGUID:0];
    v6 = v35;
    eventQueue4 = v35;
    v7 = v34;
    objc_storeStrong(&self->_currentCommand, v5);
    objc_storeStrong(&self->_currentCommandParams, v6);
    if (!v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        selfCopy4 = self;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: No more commands to perform.", buf, 0xCu);
      }

      eventQueue = [(MSASStateMachine *)self eventQueue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_82;
      v33[3] = &unk_278E926D8;
      v33[4] = self;
      dispatch_async(eventQueue, v33);

      currentCommandParams = self->_currentCommandParams;
      self->_currentCommandParams = 0;

      currentCommand = self->_currentCommand;
      self->_currentCommand = 0;

      self->_commandState = 0;
      goto LABEL_23;
    }

    if (v7)
    {
      v8 = MSASPlatform();
      v9 = objc_opt_respondsToSelector();

      v10 = MSASPlatform();
      v11 = v10;
      if (v9)
      {
        v12 = [v10 personIDEnabledForAlbumSharing:v7];

        if ((v12 & 1) == 0)
        {
LABEL_9:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            selfCopy4 = self;
            v39 = 2114;
            v40 = v7;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Retrieved command for personID %{public}@, but Shared Photo Stream has been disabled. Skipping.", buf, 0x16u);
          }

          [(MSASPersonModel *)self->_model removeCommandIdentifier:self->_currentCommandID];
          self->_commandState = 1;
          eventQueue2 = [(MSASStateMachine *)self eventQueue];
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_85;
          v32[3] = &unk_278E926D8;
          v32[4] = self;
          dispatch_async(eventQueue2, v32);

          [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
          workQueue = [(MSASStateMachine *)self workQueue];
          v15 = workQueue;
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_2;
          v31[3] = &unk_278E926D8;
          v31[4] = self;
          v16 = v31;
          goto LABEL_22;
        }
      }

      else
      {
        personIDsEnabledForAlbumSharing = [v10 personIDsEnabledForAlbumSharing];
        v21 = [personIDsEnabledForAlbumSharing containsObject:v7];

        if ((v21 & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    v22 = NSSelectorFromString(v5);
    if (v22)
    {
      v23 = v22;
      if (objc_opt_respondsToSelector())
      {
        v24 = [(NSDictionary *)self->_currentCommandParams objectForKey:@"commandRetryCount"];
        intValue = [v24 intValue];

        v26 = [(NSDictionary *)self->_currentCommandParams mutableCopy];
        v27 = [MEMORY[0x277CCABB0] numberWithInt:(intValue + 1)];
        [v26 setObject:v27 forKey:@"commandRetryCount"];

        [(MSASPersonModel *)self->_model setParams:v26 forCommandWithIdentifier:self->_currentCommandID];
        [self v23];

LABEL_23:
        goto LABEL_24;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy4 = self;
      v39 = 2114;
      v40 = v5;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unknown command: %{public}@. Skipping.", buf, 0x16u);
    }

    [(MSASPersonModel *)self->_model removeCommandIdentifier:self->_currentCommandID];
    self->_commandState = 1;
    eventQueue3 = [(MSASStateMachine *)self eventQueue];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_86;
    v30[3] = &unk_278E926D8;
    v30[4] = self;
    dispatch_async(eventQueue3, v30);

    [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
    workQueue = [(MSASStateMachine *)self workQueue];
    v15 = workQueue;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_2_87;
    v29[3] = &unk_278E926D8;
    v29[4] = self;
    v16 = v29;
LABEL_22:
    dispatch_async(workQueue, v16);

    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy4 = self;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Not performing any more commands because we're shutting down.", buf, 0xCu);
  }

  eventQueue4 = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(eventQueue4, block);
LABEL_24:
}

void __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

void __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_82(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

void __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_85(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

void __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_86(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

- (void)workQueueCheckForNextCommand
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_commandState <= 1u)
  {
    if ([(MSASStateMachine *)self hasShutDown])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = self;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Not checking for any commands because we're shutting down.", &buf, 0xCu);
      }

      return;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4549;
    v22 = __Block_byref_object_dispose__4550;
    v23 = 0;
    memberQueue = [(MSASStateMachine *)self memberQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__MSASStateMachine_workQueueCheckForNextCommand__block_invoke;
    block[3] = &unk_278E92700;
    block[4] = self;
    block[5] = &buf;
    dispatch_sync(memberQueue, block);

    v4 = *(*(&buf + 1) + 40);
    date = [MEMORY[0x277CBEAA8] date];
    LODWORD(v4) = [v4 compare:date] == 1;

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(&buf + 1) + 40);
        *v15 = 138543618;
        selfCopy2 = self;
        v17 = 2114;
        v18 = v6;
        v7 = MEMORY[0x277D86220];
        v8 = "%{public}@: Holding off until %{public}@ before performing next command.";
        v9 = 22;
LABEL_12:
        _os_log_impl(&dword_245B99000, v7, OS_LOG_TYPE_DEFAULT, v8, v15, v9);
      }
    }

    else
    {
      v10 = MSASPlatform();
      mSASIsAllowedToTransferMetadata = [v10 MSASIsAllowedToTransferMetadata];

      if (mSASIsAllowedToTransferMetadata)
      {
        eventQueue = [(MSASStateMachine *)self eventQueue];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __48__MSASStateMachine_workQueueCheckForNextCommand__block_invoke_81;
        v13[3] = &unk_278E926D8;
        v13[4] = self;
        dispatch_async(eventQueue, v13);

        self->_commandState = 2;
        [(MSASStateMachine *)self workQueuePerformNextCommand];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 138543362;
        selfCopy2 = self;
        v7 = MEMORY[0x277D86220];
        v8 = "%{public}@: Not allowed to transfer metadata at this time. Try again later.";
        v9 = 12;
        goto LABEL_12;
      }
    }

    _Block_object_dispose(&buf, 8);
  }
}

uint64_t __48__MSASStateMachine_workQueueCheckForNextCommand__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 56) nextExpiryDate];

  return MEMORY[0x2821F96F8]();
}

void __48__MSASStateMachine_workQueueCheckForNextCommand__block_invoke_81(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained retainBusy];
}

- (void)workQueueRetryOutstandingActivities
{
  v5 = *MEMORY[0x277D85DE8];
  if (![(MSASStateMachine *)self isRetryingOutstandingActivities])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v3 = 138543362;
      selfCopy = self;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrying outstanding activities.", &v3, 0xCu);
    }

    [(MSASStateMachine *)self setIsRetryingOutstandingActivities:1];
    [(MSASStateMachine *)self workQueueCheckForNextCommand];
    [(MSASAssetTransferer *)self->_assetUploader retryOutstandingActivities];
    [(MSASAssetTransferer *)self->_assetDownloader retryOutstandingActivities];
    [(MSASStateMachine *)self setIsRetryingOutstandingActivities:0];
  }
}

- (void)retryOutstandingActivities
{
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MSASStateMachine_retryOutstandingActivities__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (BOOL)hasEnqueuedActivities
{
  _model = [(MSASStateMachine *)self _model];
  if ([_model countOfEnqueuedCommands] <= 0)
  {
    _model2 = [(MSASStateMachine *)self _model];
    if ([_model2 assetCollectionsInUploadQueue] <= 0)
    {
      _model3 = [(MSASStateMachine *)self _model];
      v4 = [_model3 hasItemsForDownloadCountFocusAlbumGUID:0 focusAssetCollectionGUID:0];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isInRetryState
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  memberQueue = [(MSASStateMachine *)self memberQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__MSASStateMachine_isInRetryState__block_invoke;
  v5[3] = &unk_278E92700;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(memberQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setPersistentObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MSASStateMachine_setPersistentObject_forKey___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = objectCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = objectCopy;
  dispatch_async(workQueue, block);
}

void __47__MSASStateMachine_setPersistentObject_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _model];
  [v2 setPersistentObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (id)persistentObjectForKey:(id)key
{
  keyCopy = key;
  _model = [(MSASStateMachine *)self _model];
  v6 = [_model persistentObjectForKey:keyCopy];

  return v6;
}

- (void)MSBackoffManagerDidUpdateNextExpiryDate:(id)date
{
  dateCopy = date;
  workQueue = [(MSASStateMachine *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__MSASStateMachine_MSBackoffManagerDidUpdateNextExpiryDate___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_async(workQueue, v7);
}

void __60__MSASStateMachine_MSBackoffManagerDidUpdateNextExpiryDate___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v2 = [*(a1 + 32) memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__MSASStateMachine_MSBackoffManagerDidUpdateNextExpiryDate___block_invoke_2;
  block[3] = &unk_278E91C78;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  v12 = &v13;
  dispatch_sync(v2, block);

  if (*(v14 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138543618;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Updated backoff time for backoff manager %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) workQueueUpdateNextActivityDate];
  }

  v5 = [*(a1 + 32) eventQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__MSASStateMachine_MSBackoffManagerDidUpdateNextExpiryDate___block_invoke_80;
  v8[3] = &unk_278E926D8;
  v8[4] = *(a1 + 32);
  dispatch_async(v5, v8);

  _Block_object_dispose(&v13, 8);
}

void __60__MSASStateMachine_MSBackoffManagerDidUpdateNextExpiryDate___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v3 + 64);
  if (v2 != v4)
  {
    v5 = *(v3 + 56);
    if (v2 != v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v21 = v3;
        v22 = 2114;
        v23 = v2;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Received event for unknown backoff manager %{public}@", buf, 0x16u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      return;
    }

    v19 = [v5 copyParameters];
    v14 = [*(a1 + 40) metadataBackoffManagerParameters];
    if (v14)
    {
      v15 = v14;
      v16 = [*(a1 + 40) metadataBackoffManagerParameters];
      v17 = [v16 isEqualToDictionary:v19];

      if (v17)
      {
        goto LABEL_11;
      }
    }

    [*(a1 + 40) setMetadataBackoffManagerParameters:v19];
    v18 = *(a1 + 40);
    v11 = *(v18 + 16);
    v12 = *(v18 + 56);
    v13 = @"metadataBackoffManager";
LABEL_13:
    [v11 setPersistentObject:v12 forKey:v13];
    goto LABEL_14;
  }

  v19 = [v4 copyParameters];
  v6 = [*(a1 + 40) MMCSBackoffManagerParameters];
  if (!v6 || (v7 = v6, [*(a1 + 40) MMCSBackoffManagerParameters], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToDictionary:", v19), v8, v7, (v9 & 1) == 0))
  {
    [*(a1 + 40) setMMCSBackoffManagerParameters:v19];
    v10 = *(a1 + 40);
    v11 = *(v10 + 16);
    v12 = *(v10 + 64);
    v13 = @"MMCSBackoffManager";
    goto LABEL_13;
  }

LABEL_11:
  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_14:
}

void __60__MSASStateMachine_MSBackoffManagerDidUpdateNextExpiryDate___block_invoke_80(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachineDidUpdateServerCommunicationBackoffDate:*(a1 + 32)];
}

- (void)workQueueUpdateNextActivityDate
{
  v12 = *MEMORY[0x277D85DE8];
  latestNextActivityDate = [(MSASStateMachine *)self latestNextActivityDate];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = latestNextActivityDate;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Computed next activity date: %{public}@", buf, 0x16u);
  }

  eventQueue = [(MSASStateMachine *)self eventQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__MSASStateMachine_workQueueUpdateNextActivityDate__block_invoke;
  v6[3] = &unk_278E927C8;
  v6[4] = self;
  v7 = latestNextActivityDate;
  v5 = latestNextActivityDate;
  dispatch_async(eventQueue, v6);
}

void __51__MSASStateMachine_workQueueUpdateNextActivityDate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained setNextActivityDate:*(a1 + 40) forPersonID:*(*(a1 + 32) + 104)];
}

- (id)serverCommunicationBackoffDate
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4549;
  v21 = __Block_byref_object_dispose__4550;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4549;
  v15 = __Block_byref_object_dispose__4550;
  v16 = 0;
  memberQueue = [(MSASStateMachine *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSASStateMachine_serverCommunicationBackoffDate__block_invoke;
  block[3] = &unk_278E90FA8;
  block[4] = self;
  block[5] = &v17;
  block[6] = &v11;
  dispatch_sync(memberQueue, block);

  v4 = v18[5];
  v5 = v12[5];
  if (v5)
  {
    if (v4)
    {
      v6 = [v5 earlierDate:v4];

      if (v6 != v4)
      {
        goto LABEL_6;
      }

      v5 = v12[5];
    }

    v7 = v5;

    v4 = v7;
  }

LABEL_6:
  v8 = v4;
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

uint64_t __50__MSASStateMachine_serverCommunicationBackoffDate__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 56) nextExpiryDate];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(a1[6] + 8) + 40) = [*(a1[4] + 64) nextExpiryDate];

  return MEMORY[0x2821F96F8]();
}

- (id)latestNextActivityDate
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4549;
  v23 = __Block_byref_object_dispose__4550;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4549;
  v17 = __Block_byref_object_dispose__4550;
  v18 = 0;
  memberQueue = [(MSASStateMachine *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MSASStateMachine_latestNextActivityDate__block_invoke;
  block[3] = &unk_278E90FA8;
  block[4] = self;
  block[5] = &v19;
  block[6] = &v13;
  dispatch_sync(memberQueue, block);

  if ([(MSASPersonModel *)self->_model countOfEnqueuedCommands]< 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v20[5];
  }

  v5 = v4;
  if ([(MSASPersonModel *)self->_model assetsInDownloadQueue]|| [(MSASPersonModel *)self->_model assetCollectionsInUploadQueue])
  {
    distantPast = v14[5];
    if (!distantPast)
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    v7 = distantPast;
    v8 = v5;
    v9 = v8;
    if (!v7 || v8)
    {
      if (v7 && v8 && [v7 compare:v8] == 1)
      {
        v7 = v7;

        v9 = v7;
      }
    }

    else
    {
      v7 = v7;
      v9 = v7;
    }
  }

  else
  {
    v9 = v5;
    v7 = 0;
  }

  v10 = v9;

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v10;
}

uint64_t __42__MSASStateMachine_latestNextActivityDate__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 56) nextExpiryDate];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(a1[6] + 8) + 40) = [*(a1[4] + 64) nextExpiryDate];

  return MEMORY[0x2821F96F8]();
}

- (void)_sendGetServerSideConfigurationDisposition:(int)disposition params:(id)params
{
  if (!disposition)
  {
    v8[7] = v4;
    v8[8] = v5;
    v7 = [(MSASStateMachine *)self protocol:*&disposition];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke;
    v8[3] = &unk_278E90F80;
    v8[4] = self;
    [v7 getServerSideConfigCompletionBlock:v8];
  }
}

void __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_2;
  block[3] = &unk_278E92638;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_2(id *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    if ([v2 workQueueEndCommandWithError:v3 command:0 params:0 albumGUID:0 assetCollectionGUID:0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v4 = a1[5];
        v5 = [a1[4] MSVerboseDescription];
        *buf = 138543618;
        v30 = v4;
        v31 = 2114;
        v32 = v5;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve server-side configuration. Error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v21 = a1[5];

      [v21 workQueueDidFinishCommand];
    }
  }

  else
  {
    v6 = [v2 memberQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_74;
    block[3] = &unk_278E926D8;
    block[4] = a1[5];
    dispatch_barrier_sync(v6, block);

    v7 = [a1[5] eventQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_2_75;
    v27[3] = &unk_278E926D8;
    v27[4] = a1[5];
    dispatch_async(v7, v27);

    v8 = [a1[6] objectForKey:@"com.apple.sharedstreams.config.configVersion"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = a1[5];
      *buf = 138543618;
      v30 = v9;
      v31 = 2114;
      v32 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Retrieved server-side config version: %{public}@", buf, 0x16u);
    }

    v10 = [a1[5] _model];
    v11 = [v10 dbQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_76;
    v23[3] = &unk_278E92638;
    v24 = v10;
    v12 = v8;
    v25 = v12;
    v26 = a1[6];
    v13 = v10;
    dispatch_barrier_sync(v11, v23);

    v14 = [a1[5] _serverSideConfigDictionaryByApplyingDefaultsToDictionary:a1[6]];
    v15 = a1[5];
    v16 = v15[15];
    v15[15] = v14;

    v17 = a1[5];
    v18 = v17[16];
    v17[16] = v12;
    v19 = v12;

    v20 = [a1[5] eventQueue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_2_77;
    v22[3] = &unk_278E926D8;
    v22[4] = a1[5];
    dispatch_async(v20, v22);

    [a1[5] workQueueDidFinishCommand];
  }
}

void __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_2_75(uint64_t a1)
{
  v3 = [*(a1 + 32) daemon];
  v2 = [*(a1 + 32) personID];
  [v3 didReceiveAuthSuccessForPersonID:v2];
}

uint64_t __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_76(uint64_t a1)
{
  [*(a1 + 32) dbQueueBeginTransaction];
  [*(a1 + 32) dbQueueSetPersistentString:*(a1 + 40) forKey:@"serverSideConfigVersion"];
  [*(a1 + 32) dbQueueSetPersistentObject:*(a1 + 48) forKey:@"serverSideConfig"];
  v2 = *(a1 + 32);

  return [v2 dbQueueEndTransaction];
}

void __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_2_77(uint64_t a1)
{
  v3 = [*(a1 + 32) daemon];
  v2 = [*(a1 + 32) personID];
  [v3 sendServerSideConfigurationDidChangeNotificationForPersonID:v2];
}

- (void)workQueueRefreshServerSideConfig
{
  _model = [(MSASStateMachine *)self _model];
  v3 = NSStringFromSelector(sel__sendGetServerSideConfigurationDisposition_params_);
  personID = [(MSASStateMachine *)self personID];
  [_model enqueueCommand:v3 params:0 personID:personID albumGUID:0 assetCollectionGUID:0];
}

- (void)refreshServerSideConfig
{
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MSASStateMachine_refreshServerSideConfig__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)serverSideQueueSetServerSideConfiguration:(id)configuration
{
  v17 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = [(MSASStateMachine *)self _serverSideConfigDictionaryByApplyingDefaultsToDictionary:configurationCopy];
  serverSideConfiguration = self->_serverSideConfiguration;
  self->_serverSideConfiguration = v5;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = self->_serverSideConfiguration;
    *buf = 138543874;
    selfCopy = self;
    v13 = 2114;
    v14 = configurationCopy;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting server-side configuration.\nOriginal server config: %{public}@\nAfter applying defaults: %{public}@", buf, 0x20u);
  }

  _model = [(MSASStateMachine *)self _model];
  [_model setPersistentObject:configurationCopy forKey:@"serverSideConfig"];

  eventQueue = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MSASStateMachine_serverSideQueueSetServerSideConfiguration___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

void __62__MSASStateMachine_serverSideQueueSetServerSideConfiguration___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) daemon];
  v2 = [*(a1 + 32) personID];
  [v3 sendServerSideConfigurationDidChangeNotificationForPersonID:v2];
}

- (void)setServerSideConfiguration:(id)configuration
{
  configurationCopy = configuration;
  serverSideConfigQueue = [(MSASStateMachine *)self serverSideConfigQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__MSASStateMachine_setServerSideConfiguration___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(serverSideConfigQueue, v7);
}

- (id)serverSideQueueServerSideConfiguration
{
  v20 = *MEMORY[0x277D85DE8];
  serverSideConfiguration = self->_serverSideConfiguration;
  if (!serverSideConfiguration)
  {
    _model = [(MSASStateMachine *)self _model];
    v5 = [_model persistentObjectForKey:@"serverSideConfig"];

    if (!v5)
    {
      serverSideConfigurationVersion = self->_serverSideConfigurationVersion;
      self->_serverSideConfigurationVersion = 0;
    }

    v7 = [(MSASStateMachine *)self _serverSideConfigDictionaryByApplyingDefaultsToDictionary:v5];
    v8 = self->_serverSideConfiguration;
    self->_serverSideConfiguration = v7;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v13 = self->_serverSideConfiguration;
      v14 = 138543874;
      selfCopy = self;
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v13;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Reading persisted server-side config from disk.\nRaw config: %{public}@\nAfter applying defaults: %{public}@", &v14, 0x20u);
    }

    _model2 = [(MSASStateMachine *)self _model];
    v10 = [_model2 persistentStringForKey:@"serverSideConfigVersion"];
    v11 = self->_serverSideConfigurationVersion;
    self->_serverSideConfigurationVersion = v10;

    serverSideConfiguration = self->_serverSideConfiguration;
  }

  return serverSideConfiguration;
}

- (NSString)serverSideConfigurationVersion
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4549;
  v11 = __Block_byref_object_dispose__4550;
  v12 = 0;
  serverSideConfigQueue = [(MSASStateMachine *)self serverSideConfigQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__MSASStateMachine_serverSideConfigurationVersion__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serverSideConfigQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSDictionary)serverSideConfiguration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4549;
  v11 = __Block_byref_object_dispose__4550;
  v12 = 0;
  serverSideConfigQueue = [(MSASStateMachine *)self serverSideConfigQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__MSASStateMachine_serverSideConfiguration__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serverSideConfigQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __43__MSASStateMachine_serverSideConfiguration__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) serverSideQueueServerSideConfiguration];

  return MEMORY[0x2821F96F8]();
}

- (id)_serverSideConfigDictionaryByApplyingDefaultsToDictionary:(id)dictionary
{
  v3 = _serverSideConfigDictionaryByApplyingDefaultsToDictionary__onceToken;
  dictionaryCopy = dictionary;
  if (v3 != -1)
  {
    dispatch_once(&_serverSideConfigDictionaryByApplyingDefaultsToDictionary__onceToken, &__block_literal_global_4659);
  }

  v5 = [_serverSideConfigDictionaryByApplyingDefaultsToDictionary__defaults mutableCopy];
  [v5 addEntriesFromDictionary:dictionaryCopy];

  return v5;
}

void __78__MSASStateMachine__serverSideConfigDictionaryByApplyingDefaultsToDictionary___block_invoke()
{
  v12 = MEMORY[0x277CBEAC0];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v0 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v1 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:10];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:60];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:60.0];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:600.0];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:1800.0];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:1200];
  v10 = [v12 dictionaryWithObjectsAndKeys:{v13, @"com.apple.sharedstreams.config.maxNumRetriesOnFailure.server", v0, @"com.apple.sharedstreams.config.maxNumRetriesOnFailure.network", v1, @"com.apple.sharedstreams.config.maxNumRetriesOnFailure.content", v2, @"com.apple.sharedstreams.config.maxUploadAssetBatchSize", v3, @"mme.sharedstreams.client.downloadMMCSBatchSize", @"1536:2048:2560", @"com.apple.sharedstreams.config.dimensions.preview", @"256:332:455", @"com.apple.sharedstreams.config.dimensions.thumbnail", v4, @"com.apple.sharedstreams.config.switch.3G", v5, @"com.apple.sharedstreams.config.defaultRetryAfterInSeconds", v6, @"com.apple.sharedstreams.config.maxActiveTimeAfterPush", v7, @"com.apple.sharedstreams.config.maxActiveTimeAfterLossOfForeground", v8, @"com.apple.sharedstreams.config.maxActiveTimeAfterGlobalResetSync", v9, @"com.apple.sharedstreams.config.maxMMCSTokenValidity", 0}];
  v11 = _serverSideConfigDictionaryByApplyingDefaultsToDictionary__defaults;
  _serverSideConfigDictionaryByApplyingDefaultsToDictionary__defaults = v10;
}

- (void)_cancelOutstandingCommandsDisposition:(int)disposition params:(id)params
{
  v22 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [paramsCopy objectForKey:@"albumGUID"];
  v8 = [paramsCopy objectForKey:@"assetCollectionGUID"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Canceling outstanding operations for album GUID %{public}@, asset collection GUID %{public}@.", buf, 0x20u);
  }

  _assetUploader = [(MSASStateMachine *)self _assetUploader];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__MSASStateMachine__cancelOutstandingCommandsDisposition_params___block_invoke;
  v12[3] = &unk_278E91D70;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  dispositionCopy = disposition;
  v10 = v8;
  v11 = v7;
  [_assetUploader stopCompletionBlock:v12];
}

void __65__MSASStateMachine__cancelOutstandingCommandsDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _assetDownloader];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__MSASStateMachine__cancelOutstandingCommandsDisposition_params___block_invoke_2;
  v4[3] = &unk_278E91D70;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 stopCompletionBlock:v4];
}

void __65__MSASStateMachine__cancelOutstandingCommandsDisposition_params___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__MSASStateMachine__cancelOutstandingCommandsDisposition_params___block_invoke_3;
  v4[3] = &unk_278E91D70;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  dispatch_async(v2, v4);
}

void __65__MSASStateMachine__cancelOutstandingCommandsDisposition_params___block_invoke_3(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v41 = *(a1 + 32);
    *buf = 138543362;
    v58 = v41;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Removing upload items...", buf, 0xCu);
  }

  v2 = [MEMORY[0x277CBEB18] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v3 = [*(a1 + 32) _model];
  v4 = [v3 itemsForUpload];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v5)
  {
    v6 = v5;
    v46 = *v52;
    do
    {
      v7 = 0;
      do
      {
        if (*v52 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v51 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 object];
        v11 = [v8 album];
        v12 = v11;
        v13 = *(a1 + 48);
        if (*(a1 + 40))
        {
          v14 = [v11 GUID];
          v15 = [v14 isEqualToString:*(a1 + 40)];
          v16 = v15;
          if (!v13)
          {

            if ((v16 & 1) == 0)
            {
              goto LABEL_19;
            }

LABEL_17:
            [v2 addObject:v10];
            goto LABEL_19;
          }

          if (v15)
          {
            v17 = [v10 GUID];
            v18 = [v17 isEqualToString:*(a1 + 48)];

            if (v18)
            {
              goto LABEL_17;
            }
          }

          else
          {
          }
        }

        else
        {
          if (!v13)
          {
            goto LABEL_17;
          }

          v19 = [v10 GUID];
          v20 = [v19 isEqualToString:*(a1 + 48)];

          if (v20)
          {
            goto LABEL_17;
          }
        }

LABEL_19:
        if ([v2 count] >= 0x15)
        {
          v21 = [*(a1 + 32) _assetUploader];
          [v21 unregisterAssetCollections:v2];

          v22 = [*(a1 + 32) _model];
          [v22 removeAssetCollectionsFromUploadQueue:v2];

          [v2 removeAllObjects];
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v6 != v7);
      v6 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v6);
  }

  if ([v2 count])
  {
    v23 = [*(a1 + 32) _assetUploader];
    [v23 unregisterAssetCollections:v2];

    v24 = [*(a1 + 32) _model];
    [v24 removeAssetCollectionsFromUploadQueue:v2];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v42 = *(a1 + 32);
    *buf = 138543362;
    v58 = v42;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Finished removing upload items...", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v43 = *(a1 + 32);
    *buf = 138543362;
    v58 = v43;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Removing download items...", buf, 0xCu);
  }

  v25 = [*(a1 + 32) _model];
  v26 = [v25 nextItemsForDownloadFocusAlbumGUID:*(a1 + 40) focusAssetCollectionGUID:*(a1 + 48) maxCount:10];

  while ([v26 count])
  {
    v27 = objc_autoreleasePoolPush();
    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v26, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v29 = v26;
    v30 = [v29 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v48;
      do
      {
        v33 = 0;
        do
        {
          if (*v48 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [*(*(&v47 + 1) + 8 * v33) object];
          [v28 addObject:v34];

          ++v33;
        }

        while (v31 != v33);
        v31 = [v29 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v31);
    }

    v35 = [*(a1 + 32) _assetDownloader];
    [v35 unregisterAssets:v28];

    v36 = [*(a1 + 32) _model];
    [v36 removeAssetsFromDownloadQueue:v28];

    v37 = [*(a1 + 32) _model];
    v26 = [v37 nextItemsForDownloadFocusAlbumGUID:*(a1 + 40) focusAssetCollectionGUID:*(a1 + 48) maxCount:10];

    objc_autoreleasePoolPop(v27);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v44 = *(a1 + 32);
    *buf = 138543362;
    v58 = v44;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Finished removing download items...", buf, 0xCu);
  }

  if (!*(a1 + 56))
  {
    if (*(a1 + 40))
    {
      v38 = [*(a1 + 32) _model];
      [v38 requeuePendingAssetCollectionsWithAlbumGUID:*(a1 + 40)];
    }

    if (*(a1 + 48))
    {
      v39 = [*(a1 + 32) _model];
      [v39 requeuePendingAssetCollectionGUID:*(a1 + 48)];

      v40 = *(a1 + 48);
    }

    else
    {
      v40 = 0;
    }

    [*(a1 + 32) workQueueCancelAllCommandsFilteredByAlbumGUID:*(a1 + 40) assetCollectionGUID:v40];
    [*(a1 + 32) workQueueDidFinishCommand];
  }
}

- (void)cancelOutstandingCommandsForAssetCollectionWithGUID:(id)d
{
  dCopy = d;
  _model = [(MSASStateMachine *)self _model];
  v6 = NSStringFromSelector(sel__cancelOutstandingCommandsDisposition_params_);
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{dCopy, @"assetCollectionGUID", 0}];

  [_model enqueueCommandAtHeadOfQueue:v6 params:v7 personID:0 albumGUID:0 assetCollectionGUID:0];

  [(MSASStateMachine *)self retryOutstandingActivities];
}

- (void)cancelOutstandingCommandsForAlbumWithGUID:(id)d
{
  dCopy = d;
  _model = [(MSASStateMachine *)self _model];
  v6 = NSStringFromSelector(sel__cancelOutstandingCommandsDisposition_params_);
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{dCopy, @"albumGUID", 0}];

  [_model enqueueCommandAtHeadOfQueue:v6 params:v7 personID:0 albumGUID:0 assetCollectionGUID:0];

  [(MSASStateMachine *)self retryOutstandingActivities];
}

- (void)setFocusAssetCollectionGUID:(id)d
{
  dCopy = d;
  workQueue = [(MSASStateMachine *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__MSASStateMachine_setFocusAssetCollectionGUID___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __48__MSASStateMachine_setFocusAssetCollectionGUID___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 144), *(a1 + 40));
  [*(a1 + 32) setPersistentObject:*(a1 + 40) forKey:@"focusAssetCollectionGUID"];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 80);

  return [v3 setFocusAssetCollectionGUID:v2];
}

- (void)setFocusAlbumGUID:(id)d
{
  dCopy = d;
  workQueue = [(MSASStateMachine *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__MSASStateMachine_setFocusAlbumGUID___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __38__MSASStateMachine_setFocusAlbumGUID___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 136), *(a1 + 40));
  [*(a1 + 32) setPersistentObject:*(a1 + 40) forKey:@"focusAlbumGUID"];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 80);

  return [v3 setFocusAlbumGUID:v2];
}

- (id)migrationCtagToCheckForChanges
{
  v11 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    delegate = [(MSASStateMachine *)self delegate];
    v4 = [delegate persistentStringForKey:@"migrationMarker"];

    if (v4 && [v4 isEqualToString:@"pendingMigration"])
    {
      v5 = +[MSASCloudKitPlugin fetchMigrationCtag];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138543618;
        selfCopy = self;
        v9 = 2114;
        v10 = v5;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Fetched migrationCtag: %{public}@", &v7, 0x16u);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)rootCtagToCheckForChanges
{
  v17 = *MEMORY[0x277D85DE8];
  _model = [(MSASStateMachine *)self _model];
  v4 = [_model persistentStringForKey:@"rootCtag"];

  v5 = [(MSASStateMachine *)self persistentObjectForKey:@"rootCtagRetries"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (unsignedIntegerValue < 6)
  {
    v7 = v4;
  }

  else
  {
    v7 = [(MSASStateMachine *)self persistentObjectForKey:@"pendingRootCtag"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 138544130;
      selfCopy = self;
      v11 = 2048;
      v12 = 5;
      v13 = 2114;
      v14 = v4;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Retried %lu times for root ctag %{public}@. Replacing with pending root ctag %{public}@.", &v9, 0x2Au);
    }

    [(MSASStateMachine *)self setRootCtagFromPendingRootCtag];
  }

  return v7;
}

- (void)setRootCtagFromPendingRootCtag
{
  workQueue = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSASStateMachine_setRootCtagFromPendingRootCtag__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __50__MSASStateMachine_setRootCtagFromPendingRootCtag__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentObjectForKey:@"pendingRootCtag"];
  if (v2)
  {
    v7 = v2;
    if ([v2 length])
    {
      v3 = [*(a1 + 32) _model];
      [v3 setPersistentString:v7 forKey:@"rootCtag"];

      v4 = [*(a1 + 32) _model];
      [v4 deletePersistentValueWithKey:@"pendingRootCtag"];

      v5 = [*(a1 + 32) _model];
      [v5 deletePersistentValueWithKey:@"rootCtagRetries"];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)setPendingRootCtag:(id)ctag
{
  v16 = *MEMORY[0x277D85DE8];
  ctagCopy = ctag;
  v5 = [(MSASStateMachine *)self persistentObjectForKey:@"rootCtagRetries"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v7 = [(MSASStateMachine *)self persistentObjectForKey:@"pendingRootCtag"];
    if (([ctagCopy isEqualToString:v7] & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543874;
        selfCopy = self;
        v12 = 2114;
        v13 = ctagCopy;
        v14 = 2114;
        v15 = v7;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Setting a new pending root ctag %{public}@ that is different from existing pending root ctag %{public}@.", &v10, 0x20u);
      }

      [(MSASStateMachine *)self setPersistentObject:ctagCopy forKey:@"pendingRootCtag"];
      unsignedIntegerValue = 0;
    }

    v8 = unsignedIntegerValue + 1;
  }

  else
  {
    [(MSASStateMachine *)self setPersistentObject:ctagCopy forKey:@"pendingRootCtag"];
    v8 = 1;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [(MSASStateMachine *)self setPersistentObject:v9 forKey:@"rootCtagRetries"];
}

- (void)setDaemon:(id)daemon
{
  daemonCopy = daemon;
  workQueue = [(MSASStateMachine *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__MSASStateMachine_setDaemon___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = daemonCopy;
  v6 = daemonCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __30__MSASStateMachine_setDaemon___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 96), *(a1 + 40));
  [*(*(a1 + 32) + 72) setDaemon:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 80);

  return [v3 setDaemon:v2];
}

- (void)workQueueCancelCompletionBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (self->_commandState == 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Canceling current operation.", buf, 0xCu);
    }

    _stopHandlerBlock = [(MSASStateMachine *)self _stopHandlerBlock];

    if (_stopHandlerBlock)
    {
      _stopHandlerBlock2 = [(MSASStateMachine *)self _stopHandlerBlock];
      _canceledError = [(MSASStateMachine *)self _canceledError];
      (_stopHandlerBlock2)[2](_stopHandlerBlock2, _canceledError);
    }
  }

  eventQueue = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(eventQueue, block);

  [(MSASStateMachine *)self workQueueCancelAllCommandsFilteredByAlbumGUID:0 assetCollectionGUID:0];
  assetUploader = self->_assetUploader;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_2;
  v11[3] = &unk_278E927A0;
  v11[4] = self;
  v12 = blockCopy;
  v10 = blockCopy;
  [(MSASAssetTransferer *)assetUploader cancelCompletionBlock:v11];
}

void __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) daemon];
  [v1 retainBusy];
}

void __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_3;
  v4[3] = &unk_278E927A0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 80);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_4;
  v4[3] = &unk_278E927A0;
  v4[4] = v2;
  v5 = v1;
  [v3 cancelCompletionBlock:v4];
}

void __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) eventQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_5;
  v4[3] = &unk_278E927A0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) eventQueue];
    dispatch_async(v2, *(a1 + 40));
  }

  v3 = [*(a1 + 32) daemon];
  [v3 releaseBusy];
}

- (void)workQueueCancelAllCommandsFilteredByAlbumGUID:(id)d assetCollectionGUID:(id)iD
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v30 = 2114;
    v31 = dCopy;
    v32 = 2114;
    v33 = iDCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Cancelling all commands. Filter album GUID: %{public}@, filter asset collection GUID %{public}@", buf, 0x20u);
  }

  v27 = 0;
  _model = [(MSASStateMachine *)self _model];
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v9 = [_model commandAtHeadOfQueueOutParams:&v26 outCommandIdentifier:&v27 outPersonID:0 outAlbumGUID:&v25 outAssetCollectionGUID:&v24];
  v20 = v26;
  v10 = v25;
  v11 = v24;

  if (v9)
  {
    v21 = 0;
    v12 = v10;
    v13 = v11;
    while (!dCopy || v12 && [dCopy isEqualToString:v12])
    {
      if (!iDCopy)
      {
        goto LABEL_14;
      }

      v14 = 1;
      if (v13)
      {
        goto LABEL_13;
      }

LABEL_18:
      _model2 = [(MSASStateMachine *)self _model];
      v22 = v13;
      v23 = v12;
      v19 = [_model2 commandWithMinimumIdentifier:v27 + 1 outParams:0 outCommandIdentifier:&v27 outPersonID:0 outAlbumGUID:&v23 outAssetCollectionGUID:&v22];
      v10 = v23;

      v11 = v22;
      v12 = v10;
      v9 = v19;
      v13 = v11;
      if (!v19)
      {
        goto LABEL_21;
      }
    }

    if (!iDCopy)
    {
      goto LABEL_18;
    }

    v14 = 0;
    if (!v13)
    {
      goto LABEL_18;
    }

LABEL_13:
    if ((v14 & [iDCopy isEqualToString:{v13, v20}]) == 1)
    {
LABEL_14:
      v15 = NSSelectorFromString(v9);
      if (v15)
      {
        v16 = v15;
        if (objc_opt_respondsToSelector())
        {
          [self v16];
        }
      }

      _model3 = [(MSASStateMachine *)self _model];
      [_model3 removeCommandIdentifier:v27];

      ++v21;
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v21 = 0;
LABEL_21:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v30 = 1024;
    LODWORD(v31) = v21;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Cancelled %d commands.", buf, 0x12u);
  }
}

- (void)cancelCompletionBlock:(id)block
{
  blockCopy = block;
  workQueue = [(MSASStateMachine *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__MSASStateMachine_cancelCompletionBlock___block_invoke;
  v7[3] = &unk_278E927A0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

- (void)stopAssetDownloadsCompletionBlock:(id)block
{
  blockCopy = block;
  workQueue = [(MSASStateMachine *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__MSASStateMachine_stopAssetDownloadsCompletionBlock___block_invoke;
  v7[3] = &unk_278E927A0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

void __54__MSASStateMachine_stopAssetDownloadsCompletionBlock___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 80) stopCompletionBlock:0];
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) eventQueue];
    dispatch_async(v2, *(a1 + 40));
  }
}

- (void)purgeEverythingCompletionBlock:(id)block
{
  blockCopy = block;
  _model = [(MSASStateMachine *)self _model];
  [_model purgeCompletionBlock:blockCopy];
}

- (void)shutDownCompletionBlock:(id)block
{
  blockCopy = block;
  workQueue = [(MSASStateMachine *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke;
  v7[3] = &unk_278E927A0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

void __44__MSASStateMachine_shutDownCompletionBlock___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setHasShutDown:1];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(a1 + 32)];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Shutting down uploader.", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 72);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_51;
  v7[3] = &unk_278E927A0;
  v7[4] = v5;
  v8 = v4;
  [v6 shutDownCompletionBlock:v7];
}

void __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_51(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    *buf = 138543362;
    v9 = v2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Shutting down downloader.", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 80);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_52;
  v6[3] = &unk_278E927A0;
  v6[4] = v4;
  v7 = v3;
  [v5 shutDownCompletionBlock:v6];
}

void __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_52(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_2;
  v4[3] = &unk_278E927A0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    *buf = 138543362;
    v17 = v2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Shutting down state machine.", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3[2] == 2)
  {
    objc_initWeak(&location, v3);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_53;
    v12[3] = &unk_278E90F08;
    objc_copyWeak(&v14, &location);
    v13 = *(a1 + 40);
    [*(a1 + 32) setPostCommandCompletionBlock:v12];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v17 = v4;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping current operation.", buf, 0xCu);
    }

    v5 = [*(a1 + 32) _stopHandlerBlock];

    if (v5)
    {
      v6 = [*(a1 + 32) _stopHandlerBlock];
      v7 = [*(a1 + 32) _stoppedError];
      (v6)[2](v6, v7);
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = [*(a1 + 32) protocol];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_55;
    v10[3] = &unk_278E927A0;
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    [v8 shutDownCompletionBlock:v10];
  }
}

void __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_53(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained protocol];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_2_54;
  v5[3] = &unk_278E927A0;
  v6 = WeakRetained;
  v7 = *(a1 + 32);
  v4 = WeakRetained;
  [v3 shutDownCompletionBlock:v5];
}

void __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_55(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_2_56;
  v4[3] = &unk_278E927A0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_2_54(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_3;
  v3[3] = &unk_278E927A0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(v2, v3);
}

- (void)_workQueueEmptyFileTransferQueuesCompletionBlock:(id)block
{
  blockCopy = block;
  _model = [(MSASStateMachine *)self _model];
  v5 = [_model itemsForDownloadCountFocusAlbumGUID:0 focusAssetCollectionGUID:0];

  model = self->_model;
  self->_model = 0;

  if (!v5)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    personID = [(MSASStateMachine *)self personID];
    v9 = MSPathAlbumSharingSubscribeMMCSLibraryForPersonID(personID);
    [defaultManager removeItemAtPath:v9 error:0];
  }

  v10 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy);
    v10 = blockCopy;
  }
}

- (void)start
{
  eventQueue = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__MSASStateMachine_start__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

void __25__MSASStateMachine_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachineDidStart:*(a1 + 32)];
}

- (void)workQueueApplyServerSideConfiguration
{
  serverSideConfiguration = [(MSASStateMachine *)self serverSideConfiguration];
  v3 = [serverSideConfiguration objectForKey:@"com.apple.sharedstreams.config.maxNumRetriesOnFailure.server"];
  -[MSASStateMachine setMaxMetadataRetryCount:](self, "setMaxMetadataRetryCount:", [v3 intValue]);

  _assetUploader = [(MSASStateMachine *)self _assetUploader];
  v5 = [serverSideConfiguration objectForKey:@"com.apple.sharedstreams.config.maxUploadAssetBatchSize"];
  [_assetUploader setMaxBatchCount:{objc_msgSend(v5, "intValue")}];

  _assetUploader2 = [(MSASStateMachine *)self _assetUploader];
  v7 = [serverSideConfiguration objectForKey:@"com.apple.sharedstreams.config.maxNumRetriesOnFailure.content"];
  [_assetUploader2 setMaxRetryCount:{objc_msgSend(v7, "intValue")}];

  _assetUploader3 = [(MSASStateMachine *)self _assetUploader];
  v9 = [serverSideConfiguration objectForKey:@"com.apple.sharedstreams.config.maxMMCSTokenValidity"];
  [v9 doubleValue];
  [_assetUploader3 setMaxMMCSTokenValidityTimeInterval:?];

  _assetDownloader = [(MSASStateMachine *)self _assetDownloader];
  v11 = [serverSideConfiguration objectForKey:@"mme.sharedstreams.client.downloadMMCSBatchSize"];
  [_assetDownloader setMaxBatchCount:{objc_msgSend(v11, "intValue")}];

  _assetDownloader2 = [(MSASStateMachine *)self _assetDownloader];
  v13 = [serverSideConfiguration objectForKey:@"com.apple.sharedstreams.config.maxNumRetriesOnFailure.content"];
  [_assetDownloader2 setMaxRetryCount:{objc_msgSend(v13, "intValue")}];

  _assetDownloader3 = [(MSASStateMachine *)self _assetDownloader];
  v15 = [serverSideConfiguration objectForKey:@"com.apple.sharedstreams.config.maxMMCSTokenValidity"];
  [v15 doubleValue];
  [_assetDownloader3 setMaxMMCSTokenValidityTimeInterval:?];

  v16 = MSASPlatform();
  if (objc_opt_respondsToSelector())
  {
    v17 = [serverSideConfiguration objectForKey:@"com.apple.sharedstreams.config.switch.3G"];
    v18 = v17;
    v19 = v17 && ![v17 BOOLValue];
    [v16 setSuppressCellular:v19];
  }

  v20 = [serverSideConfiguration objectForKey:@"com.apple.sharedstreams.config.dimensions.preview"];
  v21 = [MSImageScalingSpecification specificationWithSharedAlbumSpecificationString:v20];
  derivativeImageScalingSpecification = self->_derivativeImageScalingSpecification;
  self->_derivativeImageScalingSpecification = v21;

  [(MSImageScalingSpecification *)self->_derivativeImageScalingSpecification setAssetTypeFlags:2];
  v23 = [serverSideConfiguration objectForKey:@"com.apple.sharedstreams.config.dimensions.thumbnail"];
  v24 = [MSImageScalingSpecification specificationWithSharedAlbumSpecificationString:v23];
  thumbnailImageScalingSpecification = self->_thumbnailImageScalingSpecification;
  self->_thumbnailImageScalingSpecification = v24;

  [(MSImageScalingSpecification *)self->_thumbnailImageScalingSpecification setAssetTypeFlags:1];
  v26 = [serverSideConfiguration objectForKey:@"com.apple.sharedstreams.config.videoderivatives"];
  v27 = [MSVideoDerivativeSpecification videoDerivativeSpecificationsWithDictionaryArray:v26];
  v28 = [v27 mutableCopy];

  [(NSArray *)v28 addObject:self->_derivativeImageScalingSpecification];
  [(NSArray *)v28 addObject:self->_thumbnailImageScalingSpecification];
  derivativeSpecifications = self->_derivativeSpecifications;
  self->_derivativeSpecifications = v28;
}

- (MSASStateMachine)initWithPersonID:(id)d eventQueue:(id)queue
{
  dCopy = d;
  queueCopy = queue;
  v80.receiver = self;
  v80.super_class = MSASStateMachine;
  v9 = [(MSASStateMachine *)&v80 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_personID, d);
    v11 = [[MSASPersonModel alloc] initWithPersonID:dCopy];
    model = v10->_model;
    v10->_model = v11;

    v13 = MSASPlatform();
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = MSASPlatform();
      -[MSASPersonModel setShouldDownloadEarliestPhotosFirst:](v10->_model, "setShouldDownloadEarliestPhotosFirst:", [v15 shouldDownloadEarliestPhotosFirst]);
    }

    v16 = [(MSASModelBase *)v10->_model persistentObjectForKey:@"metadataBackoffManager"];
    metadataBackoffManager = v10->_metadataBackoffManager;
    v10->_metadataBackoffManager = v16;

    v18 = v10->_metadataBackoffManager;
    if (!v18)
    {
      v19 = [[MSBackoffManager alloc] initWithInitialInterval:0 backoffFactor:5.0 randomizeFactor:2.0 maxBackoffInterval:0.15 retryAfterDate:1200.0];
      v20 = v10->_metadataBackoffManager;
      v10->_metadataBackoffManager = v19;

      v18 = v10->_metadataBackoffManager;
    }

    [(MSBackoffManager *)v18 setDelegate:v10];
    v21 = [(MSASModelBase *)v10->_model persistentObjectForKey:@"MMCSBackoffManager"];
    MMCSBackoffManager = v10->_MMCSBackoffManager;
    v10->_MMCSBackoffManager = v21;

    v23 = v10->_MMCSBackoffManager;
    if (!v23)
    {
      v24 = [[MSBackoffManager alloc] initWithInitialInterval:0 backoffFactor:5.0 randomizeFactor:2.0 maxBackoffInterval:0.15 retryAfterDate:1200.0];
      v25 = v10->_MMCSBackoffManager;
      v10->_MMCSBackoffManager = v24;

      v23 = v10->_MMCSBackoffManager;
    }

    [(MSBackoffManager *)v23 setDelegate:v10];
    v26 = dispatch_queue_create("MSASStateMachine work queue", 0);
    workQueue = v10->_workQueue;
    v10->_workQueue = v26;

    if (queueCopy)
    {
      v28 = queueCopy;
    }

    else
    {
      v28 = dispatch_queue_create("MSASStateMachine event queue", 0);
    }

    eventQueue = v10->_eventQueue;
    v10->_eventQueue = v28;

    v30 = dispatch_queue_create("MSASStateMachine server side config queue", 0);
    serverSideConfigQueue = v10->_serverSideConfigQueue;
    v10->_serverSideConfigQueue = v30;

    v32 = dispatch_queue_create("MSASStateMachine member queue", MEMORY[0x277D85CD8]);
    memberQueue = v10->_memberQueue;
    v10->_memberQueue = v32;

    v34 = [(MSASAssetTransferer *)[MSASAssetUploader alloc] initWithPersonID:dCopy];
    assetUploader = v10->_assetUploader;
    v10->_assetUploader = v34;

    [(MSASAssetTransferer *)v10->_assetUploader setDelegate:v10];
    [(MSASAssetTransferer *)v10->_assetUploader setModel:v10->_model];
    [(MSASAssetTransferer *)v10->_assetUploader setBackoffManager:v10->_MMCSBackoffManager];
    v36 = [(MSASAssetTransferer *)[MSASAssetDownloader alloc] initWithPersonID:dCopy];
    assetDownloader = v10->_assetDownloader;
    v10->_assetDownloader = v36;

    [(MSASAssetTransferer *)v10->_assetDownloader setDelegate:v10];
    [(MSASAssetTransferer *)v10->_assetDownloader setModel:v10->_model];
    [(MSASAssetTransferer *)v10->_assetDownloader setBackoffManager:v10->_MMCSBackoffManager];
    objc_initWeak(&location, v10);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v39 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke;
    v76[3] = &unk_278E90E98;
    v40 = v10;
    v77 = v40;
    objc_copyWeak(&v78, &location);
    v41 = [defaultCenter addObserverForName:@"MSASAssetTransfererDidIdle" object:0 queue:v39 usingBlock:v76];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v43 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_3;
    v73[3] = &unk_278E90E98;
    objc_copyWeak(&v75, &location);
    v44 = v40;
    v74 = v44;
    v45 = [defaultCenter2 addObserverForName:@"MSASServerSideConfigDidChangeNotification" object:0 queue:v43 usingBlock:v73];

    v46 = v10->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_5;
    block[3] = &unk_278E926D8;
    v47 = v44;
    v72 = v47;
    dispatch_sync(v46, block);
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_6;
    v68[3] = &unk_278E90E98;
    objc_copyWeak(&v70, &location);
    v50 = v47;
    v69 = v50;
    v51 = [defaultCenter3 addObserverForName:@"MSASPServerSideConfigurationDidChangeNotification" object:0 queue:mainQueue usingBlock:v68];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue2 = [MEMORY[0x277CCABD8] mainQueue];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_44;
    v65[3] = &unk_278E90E98;
    objc_copyWeak(&v67, &location);
    v54 = v50;
    v66 = v54;
    v55 = [defaultCenter4 addObserverForName:@"MSASPDidReceiveRetryAfterNotification" object:0 queue:mainQueue2 usingBlock:v65];

    v56 = [(MSASStateMachine *)v54 persistentObjectForKey:@"focusAlbumGUID"];
    focusAlbumGUID = v54->_focusAlbumGUID;
    v54->_focusAlbumGUID = v56;

    v58 = v54->_focusAlbumGUID;
    _assetDownloader = [(MSASStateMachine *)v54 _assetDownloader];
    [_assetDownloader setFocusAlbumGUID:v58];

    v60 = [(MSASStateMachine *)v54 persistentObjectForKey:@"focusAssetCollectionGUID"];
    focusAssetCollectionGUID = v54->_focusAssetCollectionGUID;
    v54->_focusAssetCollectionGUID = v60;

    v62 = v54->_focusAssetCollectionGUID;
    _assetDownloader2 = [(MSASStateMachine *)v54 _assetDownloader];
    [_assetDownloader2 setFocusAssetCollectionGUID:v62];

    objc_destroyWeak(&v67);
    objc_destroyWeak(&v70);

    objc_destroyWeak(&v75);
    objc_destroyWeak(&v78);

    objc_destroyWeak(&location);
  }

  return v10;
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_2;
  block[3] = &unk_278E90E70;
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKey:@"personID"];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained personID];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [*(a1 + 32) workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_4;
    v9[3] = &unk_278E91528;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = *(a1 + 32);
    dispatch_async(v8, v9);

    objc_destroyWeak(&v11);
  }
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKey:@"personID"];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained personID];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [*(a1 + 32) workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_7;
    v9[3] = &unk_278E91528;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = v4;
    dispatch_async(v8, v9);

    objc_destroyWeak(&v11);
  }
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:@"personID"];

  v6 = [v3 userInfo];

  v7 = [v6 objectForKey:@"retryAfterDate"];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained personID];
  v10 = [v5 isEqualToString:v9];

  if (v10)
  {
    v11 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_2_45;
    block[3] = &unk_278E917C0;
    v13 = *(a1 + 32);
    v14 = v7;
    objc_copyWeak(&v15, (a1 + 40));
    dispatch_async(v11, block);

    objc_destroyWeak(&v15);
  }
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_2_45(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v6 = 138543618;
    v7 = v2;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Received retry-after from metadata server with date :%{public}@", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained _metadataBackoffManager];
  [v5 didReceiveRetryAfterDate:*(a1 + 40)];
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_7(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = 138543362;
    v8 = WeakRetained;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Server-side config has changed. We will refetch the config and try again.", &v7, 0xCu);
  }

  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 _model];
  v5 = NSStringFromSelector(sel__sendGetServerSideConfigurationDisposition_params_);
  [v4 enqueueCommandAtHeadOfQueue:v5 params:0 personID:*(a1 + 32) albumGUID:0 assetCollectionGUID:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 workQueueRetryOutstandingActivities];
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _model];
  v6 = [v3 persistentStringForKey:@"serverSideConfigVersion"];

  v4 = [*(a1 + 32) protocol];
  [v4 setServerSideConfigVersion:v6];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 workQueueApplyServerSideConfiguration];
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained workQueueUpdateNextActivityDate];
}

- (MSASStateMachine)init
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MSASStateMachineInitException" reason:0 userInfo:0];
  [v3 raise];

  return 0;
}

- (id)_metadataBackoffManager
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4549;
  v11 = __Block_byref_object_dispose__4550;
  v12 = 0;
  memberQueue = [(MSASStateMachine *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__MSASStateMachine__metadataBackoffManager__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(memberQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (MSASPhoneInvitations)phoneInvitations
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4549;
  v11 = __Block_byref_object_dispose__4550;
  v12 = 0;
  memberQueue = [(MSASStateMachine *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__MSASStateMachine_phoneInvitations__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(memberQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__MSASStateMachine_phoneInvitations__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 176);
  if (!v2)
  {
    v3 = objc_alloc_init(MSASPhoneInvitations);
    v4 = *(a1 + 32);
    v5 = *(v4 + 176);
    *(v4 + 176) = v3;

    v2 = *(*(a1 + 32) + 176);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (MSASProtocol)protocol
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4549;
  v11 = __Block_byref_object_dispose__4550;
  v12 = 0;
  memberQueue = [(MSASStateMachine *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__MSASStateMachine_protocol__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(memberQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __28__MSASStateMachine_protocol__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 168);
  if (!v2)
  {
    v3 = [MSASProtocol alloc];
    v4 = [*(a1 + 32) personID];
    v5 = [(MSASProtocol *)v3 initWithPersonID:v4];
    v6 = *(a1 + 32);
    v7 = *(v6 + 168);
    *(v6 + 168) = v5;

    v8 = [*(a1 + 32) serverSideConfigurationVersion];
    [*(*(a1 + 32) + 168) setServerSideConfigVersion:v8];

    v2 = *(*(a1 + 32) + 168);
  }

  v9 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v9, v2);
}

@end