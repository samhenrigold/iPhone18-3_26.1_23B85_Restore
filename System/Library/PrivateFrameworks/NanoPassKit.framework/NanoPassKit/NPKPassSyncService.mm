@interface NPKPassSyncService
- (NPKPassSyncService)initWithPassSyncEngineRole:(unint64_t)role;
- (id)_archivedPassSyncEngine;
- (id)companionCatalogToSendWithStateChange;
- (id)currentLibraryPassSyncStateWithReconciledState:(id)state;
- (id)passSyncEngine:(id)engine dataForPassWithUniqueID:(id)d;
- (id)passSyncEngine:(id)engine partialDataForPassWithUniqueID:(id)d baseManifest:(id)manifest outRemoteAssets:(id *)assets;
- (id)watchCatalogToSendWithStateChange;
- (unint64_t)settingsForPassWithUniqueID:(id)d;
- (void)_archiveTimerFired;
- (void)_ensureSyncTimerIsSet;
- (void)_provideUpdatedLibraryStateToSyncEngineAndSyncIfNecessary:(BOOL)necessary;
- (void)_syncNow;
- (void)_syncTimerFired;
- (void)_syncWhenAppropriate;
- (void)associatedPassDataRequested:(id)requested;
- (void)catalogChanged:(id)changed;
- (void)handleCatalogChangeWithCompanionCatalog:(id)catalog watchCatalog:(id)watchCatalog;
- (void)handleIncomingCompanionCatalog:(id)catalog watchCatalog:(id)watchCatalog;
- (void)handleIncomingPassSettings:(unint64_t)settings forPassWithUniqueID:(id)d;
- (void)handlePassLibraryChanged;
- (void)handleRequestedAssociatedData:(unint64_t)data forPassWithUniqueID:(id)d;
- (void)handleSettingsChanged:(unint64_t)changed forPassWithUniqueID:(id)d;
- (void)passSettingsChanged:(id)changed;
- (void)passSyncEngine:(id)engine finishedProcessingChange:(id)change;
- (void)passSyncEngine:(id)engine receivedStateChangeProcessed:(id)processed changeAccepted:(BOOL)accepted;
- (void)passSyncEngine:(id)engine requestsAddPassData:(id)data forSyncStateItem:(id)item completion:(id)completion;
- (void)passSyncEngine:(id)engine requestsRemovePassWithUniqueID:(id)d completion:(id)completion;
- (void)passSyncEngine:(id)engine requestsUpdatePassData:(id)data forSyncStateItem:(id)item baseManifestHashForPartialUpdate:(id)update remoteAssetsForPartialUpdate:(id)partialUpdate completion:(id)completion;
- (void)passSyncEngine:(id)engine sendProposedReconciledState:(id)state;
- (void)passSyncEngine:(id)engine sendReconciledStateAcceptedWithHash:(id)hash;
- (void)passSyncEngine:(id)engine sendReconciledStateUnrecognizedWithHash:(id)hash version:(unint64_t)version currentPassSyncState:(id)state;
- (void)passSyncEngine:(id)engine sendStateChange:(id)change;
- (void)passSyncEngine:(id)engine sendStateChangeProcessedWithUUID:(id)d changeAccepted:(BOOL)accepted fullPassRequired:(BOOL)required;
- (void)passSyncEngineStateChanged:(id)changed;
- (void)proposedReconciledState:(id)state;
- (void)reconciledStateAccepted:(id)accepted;
- (void)reconciledStateUnrecognized:(id)unrecognized;
- (void)requestAssociatedData:(unint64_t)data forPassWithUniqueID:(id)d;
- (void)start;
- (void)suggestSync;
- (void)syncStateChangeProcessed:(id)processed;
- (void)syncStateChanged:(id)changed;
- (void)updatePassLibrary;
@end

@implementation NPKPassSyncService

- (NPKPassSyncService)initWithPassSyncEngineRole:(unint64_t)role
{
  v22.receiver = self;
  v22.super_class = NPKPassSyncService;
  v4 = [(NPKPassSyncService *)&v22 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.nanopassd.passsync", 0);
    v6 = *(v4 + 4);
    *(v4 + 4) = v5;

    v7 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.passbook.general"];
    [v7 setProtobufAction:sel_syncStateChanged_ forIncomingRequestsOfType:40];
    [v7 setProtobufAction:sel_syncStateChangeProcessed_ forIncomingRequestsOfType:41];
    [v7 setProtobufAction:sel_reconciledStateUnrecognized_ forIncomingRequestsOfType:42];
    [v7 setProtobufAction:sel_proposedReconciledState_ forIncomingRequestsOfType:43];
    [v7 setProtobufAction:sel_reconciledStateAccepted_ forIncomingRequestsOfType:44];
    [v7 setProtobufAction:sel_passSettingsChanged_ forIncomingRequestsOfType:31];
    [v7 setProtobufAction:sel_catalogChanged_ forIncomingRequestsOfType:7];
    [v7 setProtobufAction:sel_associatedPassDataRequested_ forIncomingRequestsOfType:45];
    [v7 addDelegate:v4 queue:*(v4 + 4)];
    objc_storeStrong(v4 + 3, v7);
    objc_initWeak(&location, v4);
    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v4 + 4));
    dispatch_source_set_timer(v8, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __49__NPKPassSyncService_initWithPassSyncEngineRole___block_invoke;
    v19 = &unk_279945030;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v8, &v16);
    dispatch_resume(v8);
    objc_storeStrong(v4 + 5, v8);
    v9 = objc_alloc_init(NPKPassSyncServiceSyncStatus);
    v10 = *(v4 + 7);
    *(v4 + 7) = v9;

    _archivedPassSyncEngine = [v4 _archivedPassSyncEngine];
    v12 = _archivedPassSyncEngine;
    if (_archivedPassSyncEngine)
    {
      v13 = _archivedPassSyncEngine;
    }

    else
    {
      v13 = [[NPKPassSyncEngine alloc] initWithRole:role];
    }

    v14 = *(v4 + 2);
    *(v4 + 2) = v13;

    [*(v4 + 2) setDelegate:v4];
    [*(v4 + 2) setDataSource:v4];
    objc_destroyWeak(&v20);

    objc_destroyWeak(&location);
  }

  return v4;
}

void __49__NPKPassSyncService_initWithPassSyncEngineRole___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _archiveTimerFired];
}

- (void)start
{
  v3 = pk_Sync_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Sync_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: starting", buf, 2u);
    }
  }

  passSyncQueue = self->_passSyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__NPKPassSyncService_start__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(passSyncQueue, block);
}

- (void)handlePassLibraryChanged
{
  v3 = pk_Sync_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Sync_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: pass library changed", v7, 2u);
    }
  }

  [(NPKPassSyncService *)self updatePassLibrary];
}

- (void)updatePassLibrary
{
  passSyncQueue = self->_passSyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__NPKPassSyncService_updatePassLibrary__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(passSyncQueue, block);
}

- (void)requestAssociatedData:(unint64_t)data forPassWithUniqueID:(id)d
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"46D8FA11-A747-4C0B-B4F4-0AB1308739B4"];
  v8 = NPKPairedOrPairingDevice();
  v9 = [v8 supportsCapability:v7];

  if (v9)
  {
    if (dCopy)
    {
      v11 = pk_Sync_log(v10);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (data)
      {
        if (v12)
        {
          v14 = pk_Sync_log(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = NSStringFromNPKAssociatedPassData(data);
            *buf = 138412546;
            v48 = v15;
            v49 = 2112;
            v50 = dCopy;
            _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Requesting associated data:%@ for pass with uniqueID:%@", buf, 0x16u);
          }
        }

        v16 = objc_alloc_init(NPKProtoPassAssociatedDataRequest);
        [(NPKProtoPassAssociatedDataRequest *)v16 setPassUniqueID:dCopy];
        [(NPKProtoPassAssociatedDataRequest *)v16 setPassRequestedData:data];
        v17 = objc_alloc(MEMORY[0x277D189F0]);
        data = [(NPKProtoPassAssociatedDataRequest *)v16 data];
        v19 = [v17 initWithProtobufData:data type:45 isResponse:0];

        dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"passAssociatedData-%@", dCopy];
        v45[0] = *MEMORY[0x277D18650];
        v21 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
        v22 = *MEMORY[0x277D18630];
        v46[0] = v21;
        v46[1] = dCopy;
        v23 = *MEMORY[0x277D18580];
        v45[1] = v22;
        v45[2] = v23;
        v24 = *MEMORY[0x277D18600];
        v46[2] = MEMORY[0x277CBEC38];
        v46[3] = MEMORY[0x277CBEC38];
        v25 = *MEMORY[0x277D18568];
        v45[3] = v24;
        v45[4] = v25;
        v46[4] = MEMORY[0x277CBEC38];
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:5];

        passSyncService = self->_passSyncService;
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __64__NPKPassSyncService_requestAssociatedData_forPassWithUniqueID___block_invoke;
        v43[3] = &unk_279945058;
        v28 = v19;
        v44 = v28;
        v29 = NPKProtoSendWithOptions(passSyncService, v28, 200, 0, 0, v43, v26);
        v30 = pk_Sync_log(v29);
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

        if (v31)
        {
          v33 = pk_Sync_log(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v48 = v29;
            v49 = 2112;
            v50 = v28;
            _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sent pass associated data request\n\tMessage ID: %@\n\tProtobuf: %@", buf, 0x16u);
          }
        }

        goto LABEL_21;
      }

      if (!v12)
      {
        goto LABEL_22;
      }

      v16 = pk_Sync_log(v13);
      if (!os_log_type_enabled(&v16->super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      v48 = dCopy;
      v37 = "Warning: missing associated data for pass with uniqueID:%@, will not request pass associated data";
      p_super = &v16->super.super.super;
      v42 = 12;
      goto LABEL_20;
    }

    v38 = pk_Sync_log(v10);
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);

    if (v39)
    {
      v16 = pk_Sync_log(v40);
      if (os_log_type_enabled(&v16->super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v37 = "Warning: missing pass uniqueID, will not request pass associated data";
        goto LABEL_19;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v34 = pk_Sync_log(v10);
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

    if (v35)
    {
      v16 = pk_Sync_log(v36);
      if (os_log_type_enabled(&v16->super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v37 = "Notice: Paired devices doesn't support request pass associated data";
LABEL_19:
        p_super = &v16->super.super.super;
        v42 = 2;
LABEL_20:
        _os_log_impl(&dword_25B300000, p_super, OS_LOG_TYPE_DEFAULT, v37, buf, v42);
      }

LABEL_21:
    }
  }

LABEL_22:
}

void __64__NPKPassSyncService_requestAssociatedData_forPassWithUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Sync_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Sync_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: Failed to send pass associated data request: %@ error:%@", &v9, 0x16u);
    }
  }
}

- (void)handleSettingsChanged:(unint64_t)changed forPassWithUniqueID:(id)d
{
  v36[5] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = pk_Sync_log(dCopy);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Sync_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = dCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: pass settings changed for pass with unique ID %@", buf, 0xCu);
    }
  }

  v11 = objc_alloc_init(NPKProtoPassSettingsChangedRequest);
  [(NPKProtoPassSettingsChangedRequest *)v11 setUniqueID:dCopy];
  [(NPKProtoPassSettingsChangedRequest *)v11 setPassSettings:changed];
  v12 = objc_alloc(MEMORY[0x277D189F0]);
  data = [(NPKProtoPassSettingsChangedRequest *)v11 data];
  v14 = [v12 initWithProtobufData:data type:31 isResponse:0];

  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"passSettings-%@", dCopy];
  v35[0] = *MEMORY[0x277D18650];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v17 = *MEMORY[0x277D18630];
  v36[0] = v16;
  v36[1] = dCopy;
  v18 = *MEMORY[0x277D18580];
  v35[1] = v17;
  v35[2] = v18;
  v19 = *MEMORY[0x277D18568];
  v36[2] = MEMORY[0x277CBEC38];
  v36[3] = MEMORY[0x277CBEC38];
  v20 = *MEMORY[0x277D18600];
  v35[3] = v19;
  v35[4] = v20;
  v36[4] = MEMORY[0x277CBEC38];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];

  passSyncService = self->_passSyncService;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __64__NPKPassSyncService_handleSettingsChanged_forPassWithUniqueID___block_invoke;
  v29[3] = &unk_279945058;
  v23 = v14;
  v30 = v23;
  v24 = NPKProtoSendWithOptions(passSyncService, v23, 200, 0, 0, v29, v21);
  v25 = pk_Sync_log(v24);
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

  if (v26)
  {
    v28 = pk_Sync_log(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = v24;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sent pass settings\n\tMessage ID: %@\n\tProtobuf: %@", buf, 0x16u);
    }
  }
}

void __64__NPKPassSyncService_handleSettingsChanged_forPassWithUniqueID___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_Sync_log(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v6 = pk_Sync_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Failed to send pass settings: %@", &v8, 0xCu);
    }
  }
}

- (void)handleCatalogChangeWithCompanionCatalog:(id)catalog watchCatalog:(id)watchCatalog
{
  v41 = *MEMORY[0x277D85DE8];
  catalogCopy = catalog;
  watchCatalogCopy = watchCatalog;
  v8 = pk_Sync_log(watchCatalogCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Sync_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v38 = catalogCopy;
      v39 = 2048;
      v40 = watchCatalogCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: handling catalog changed (companion %p watch %p)", buf, 0x16u);
    }
  }

  v12 = objc_alloc_init(NPKProtoCatalog);
  if (!catalogCopy || (NPKSecureArchiveObject(catalogCopy), (data = objc_claimAutoreleasedReturnValue()) == 0))
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  [(NPKProtoCatalog *)v12 setCatalogData:data];
  v14 = objc_alloc_init(NPKProtoCatalogChangedRequest);
  [(NPKProtoCatalogChangedRequest *)v14 setCompanionCatalog:v12];
  if (watchCatalogCopy)
  {
    v15 = NPKSecureArchiveObject(watchCatalogCopy);
    if (v15)
    {
      v16 = objc_alloc_init(NPKProtoCatalog);
      [(NPKProtoCatalog *)v16 setCatalogData:v15];
      [(NPKProtoCatalogChangedRequest *)v14 setWatchCatalog:v16];
    }
  }

  v17 = objc_alloc(MEMORY[0x277D189F0]);
  data2 = [(NPKProtoCatalogChangedRequest *)v14 data];
  v19 = [v17 initWithProtobufData:data2 type:7 isResponse:0];

  v35[0] = *MEMORY[0x277D18650];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v21 = *MEMORY[0x277D18630];
  v36[0] = v20;
  v36[1] = @"passCatalog";
  v22 = *MEMORY[0x277D18580];
  v35[1] = v21;
  v35[2] = v22;
  v23 = *MEMORY[0x277D18568];
  v36[2] = MEMORY[0x277CBEC38];
  v36[3] = MEMORY[0x277CBEC38];
  v24 = *MEMORY[0x277D18600];
  v35[3] = v23;
  v35[4] = v24;
  v36[4] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];

  passSyncService = self->_passSyncService;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __75__NPKPassSyncService_handleCatalogChangeWithCompanionCatalog_watchCatalog___block_invoke;
  v33[3] = &unk_279945058;
  v27 = v19;
  v34 = v27;
  v28 = NPKProtoSendWithOptions(passSyncService, v27, 200, 0, 0, v33, v25);
  v29 = pk_Sync_log(v28);
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

  if (v30)
  {
    v32 = pk_Sync_log(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = v28;
      v39 = 2112;
      v40 = v27;
      _os_log_impl(&dword_25B300000, v32, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sent catalog\n\tMessage ID: %@\n\tProtobuf: %@", buf, 0x16u);
    }
  }
}

void __75__NPKPassSyncService_handleCatalogChangeWithCompanionCatalog_watchCatalog___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_Sync_log(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v6 = pk_Sync_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Failed to send catalog: %@", &v8, 0xCu);
    }
  }
}

- (void)suggestSync
{
  passSyncQueue = self->_passSyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__NPKPassSyncService_suggestSync__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(passSyncQueue, block);
}

- (id)currentLibraryPassSyncStateWithReconciledState:(id)state
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = pk_General_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "[NPKPassSyncService currentLibraryPassSyncStateWithReconciledState:]";
      v9 = 2082;
      v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v11 = 2048;
      v12 = 294;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v7, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (unint64_t)settingsForPassWithUniqueID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = pk_General_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "[NPKPassSyncService settingsForPassWithUniqueID:]";
      v9 = 2082;
      v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v11 = 2048;
      v12 = 300;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v7, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (void)handleIncomingPassSettings:(unint64_t)settings forPassWithUniqueID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = pk_General_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "[NPKPassSyncService handleIncomingPassSettings:forPassWithUniqueID:]";
      v10 = 2082;
      v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v12 = 2048;
      v13 = 306;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v8, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (void)handleIncomingCompanionCatalog:(id)catalog watchCatalog:(id)watchCatalog
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = pk_General_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "[NPKPassSyncService handleIncomingCompanionCatalog:watchCatalog:]";
      v10 = 2082;
      v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v12 = 2048;
      v13 = 311;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v8, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (id)companionCatalogToSendWithStateChange
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(self);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "[NPKPassSyncService companionCatalogToSendWithStateChange]";
      v8 = 2082;
      v9 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v10 = 2048;
      v11 = 316;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v6, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (id)watchCatalogToSendWithStateChange
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(self);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "[NPKPassSyncService watchCatalogToSendWithStateChange]";
      v8 = 2082;
      v9 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v10 = 2048;
      v11 = 322;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v6, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (void)syncStateChanged:(id)changed
{
  v47 = *MEMORY[0x277D85DE8];
  passSyncQueue = self->_passSyncQueue;
  changedCopy = changed;
  dispatch_assert_queue_V2(passSyncQueue);
  v6 = [NPKOSTransaction transactionWithName:@"sync state changed"];
  v7 = [NPKProtoPassSyncStateChange alloc];
  data = [changedCopy data];

  v9 = [(NPKProtoPassSyncStateChange *)v7 initWithData:data];
  v10 = [[NPKPassSyncChange alloc] initWithProtoPassSyncChange:v9];
  if (![(NPKProtoPassSyncStateChange *)v9 hasPassSegmentIndex])
  {
LABEL_14:
    [(NPKPassSyncEngine *)self->_passSyncEngine handleStateChange:v10];
    if ([(NPKProtoPassSyncStateChange *)v9 hasCompanionCatalog]|| [(NPKProtoPassSyncStateChange *)v9 hasWatchCatalog])
    {
      v28 = [NPKOSTransaction transactionWithName:@"sync state changed, catalog"];
      if ([(NPKProtoPassSyncStateChange *)v9 hasCompanionCatalog])
      {
        companionCatalog = [(NPKProtoPassSyncStateChange *)v9 companionCatalog];
        catalogData = [companionCatalog catalogData];
        v31 = objc_opt_class();
        v32 = NPKSecureUnarchiveObject(catalogData, v31);
      }

      else
      {
        v32 = 0;
      }

      if ([(NPKProtoPassSyncStateChange *)v9 hasWatchCatalog])
      {
        watchCatalog = [(NPKProtoPassSyncStateChange *)v9 watchCatalog];
        catalogData2 = [watchCatalog catalogData];
        v39 = objc_opt_class();
        v40 = NPKSecureUnarchiveObject(catalogData2, v39);
      }

      else
      {
        v40 = 0;
      }

      [(NPKPassSyncService *)self handleIncomingCompanionCatalog:v32 watchCatalog:v40];
      [v28 invalidate];

LABEL_26:
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  passSegmentIndex = [(NPKProtoPassSyncStateChange *)v9 passSegmentIndex];
  v12 = passSegmentIndex;
  v13 = pk_Sync_log(passSegmentIndex);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v16 = pk_Sync_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      changeUUID = [(NPKPassSyncChange *)v10 changeUUID];
      v41 = 138412802;
      v42 = changeUUID;
      v43 = 1024;
      v44 = v12;
      v45 = 1024;
      passSegmentTotal = [(NPKProtoPassSyncStateChange *)v9 passSegmentTotal];
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: storing large pass data segment\n\tchange UUID: %@\n\tsegment index: %u\n\ttotal pass segments: %u", &v41, 0x18u);
    }
  }

  passData = [(NPKPassSyncChange *)v10 passData];
  changeUUID2 = [(NPKPassSyncChange *)v10 changeUUID];
  NPKStoreLargePassDataSegmentForChangeUUID(passData, changeUUID2, v12);

  hasPassSegmentTotal = [(NPKProtoPassSyncStateChange *)v9 hasPassSegmentTotal];
  if (hasPassSegmentTotal)
  {
    hasPassSegmentTotal = [(NPKProtoPassSyncStateChange *)v9 passSegmentTotal];
    if (hasPassSegmentTotal == v12 + 1)
    {
      changeUUID3 = [(NPKPassSyncChange *)v10 changeUUID];
      v22 = NPKDataForLargePassWithChangeUUID(changeUUID3, [(NPKProtoPassSyncStateChange *)v9 passSegmentTotal]);

      v24 = pk_Sync_log(v23);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

      if (v25)
      {
        v26 = pk_Sync_log(hasPassSegmentTotal);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          npkDescription = [v22 npkDescription];
          v41 = 138412290;
          v42 = npkDescription;
          _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: this is the last segment of pass data\n\tretrieved combined pass data: %@", &v41, 0xCu);
        }
      }

      if (v22)
      {
        [(NPKPassSyncChange *)v10 setPassData:v22];

        goto LABEL_14;
      }
    }
  }

  v33 = pk_Sync_log(hasPassSegmentTotal);
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

  if (v34)
  {
    v32 = pk_Sync_log(v35);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      changeUUID4 = [(NPKPassSyncChange *)v10 changeUUID];
      v41 = 138412290;
      v42 = changeUUID4;
      _os_log_impl(&dword_25B300000, v32, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: not providing state change to sync engine\n\tchange UUID: %@", &v41, 0xCu);
    }

    goto LABEL_26;
  }

LABEL_27:
  [v6 invalidate];
}

- (void)syncStateChangeProcessed:(id)processed
{
  passSyncQueue = self->_passSyncQueue;
  processedCopy = processed;
  dispatch_assert_queue_V2(passSyncQueue);
  v13 = [NPKOSTransaction transactionWithName:@"sync state change processed"];
  v6 = [NPKProtoPassSyncStateChangeProcessed alloc];
  data = [processedCopy data];

  v8 = [(NPKProtoPassSyncStateChangeProcessed *)v6 initWithData:data];
  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  acceptedChangeUUID = [(NPKProtoPassSyncStateChangeProcessed *)v8 acceptedChangeUUID];
  v11 = [v9 initWithUUIDBytes:{objc_msgSend(acceptedChangeUUID, "bytes")}];

  if ([(NPKProtoPassSyncStateChangeProcessed *)v8 hasChangeAccepted])
  {
    changeAccepted = [(NPKProtoPassSyncStateChangeProcessed *)v8 changeAccepted];
  }

  else
  {
    changeAccepted = 1;
  }

  [(NPKPassSyncEngine *)self->_passSyncEngine handleStateChangeProcessedWithUUID:v11 changeAccepted:changeAccepted fullPassRequired:[(NPKProtoPassSyncStateChangeProcessed *)v8 fullPassRequired]];
  [v13 invalidate];
}

- (void)reconciledStateUnrecognized:(id)unrecognized
{
  passSyncQueue = self->_passSyncQueue;
  unrecognizedCopy = unrecognized;
  dispatch_assert_queue_V2(passSyncQueue);
  v14 = [NPKOSTransaction transactionWithName:@"sync state change processed"];
  v6 = [NPKProtoPassSyncReconciledStateUnrecognized alloc];
  data = [unrecognizedCopy data];

  v8 = [(NPKProtoPassSyncReconciledStateUnrecognized *)v6 initWithData:data];
  unrecognizedReconciledStateHash = [(NPKProtoPassSyncReconciledStateUnrecognized *)v8 unrecognizedReconciledStateHash];
  hasUnrecognizedReconciledStateVersion = [(NPKProtoPassSyncReconciledStateUnrecognized *)v8 hasUnrecognizedReconciledStateVersion];
  v11 = [NPKPassSyncState alloc];
  libraryPassSyncState = [(NPKProtoPassSyncReconciledStateUnrecognized *)v8 libraryPassSyncState];
  v13 = [(NPKPassSyncState *)v11 initWithProtoSyncState:libraryPassSyncState];

  [(NPKPassSyncEngine *)self->_passSyncEngine handleReconciledStateUnrecognizedWithHash:unrecognizedReconciledStateHash version:hasUnrecognizedReconciledStateVersion passSyncState:v13];
  [v14 invalidate];
}

- (void)proposedReconciledState:(id)state
{
  passSyncQueue = self->_passSyncQueue;
  stateCopy = state;
  dispatch_assert_queue_V2(passSyncQueue);
  v12 = [NPKOSTransaction transactionWithName:@"proposed reconciled state"];
  v6 = [NPKProtoPassSyncProposedReconciledState alloc];
  data = [stateCopy data];

  v8 = [(NPKProtoPassSyncProposedReconciledState *)v6 initWithData:data];
  v9 = [NPKPassSyncState alloc];
  proposedReconciledState = [(NPKProtoPassSyncProposedReconciledState *)v8 proposedReconciledState];
  v11 = [(NPKPassSyncState *)v9 initWithProtoSyncState:proposedReconciledState];

  [(NPKPassSyncEngine *)self->_passSyncEngine handleProposedReconciledState:v11];
  [v12 invalidate];
}

- (void)reconciledStateAccepted:(id)accepted
{
  passSyncQueue = self->_passSyncQueue;
  acceptedCopy = accepted;
  dispatch_assert_queue_V2(passSyncQueue);
  v11 = [NPKOSTransaction transactionWithName:@"reconciled state accepted"];
  v6 = [NPKProtoPassSyncReconciledStateAccepted alloc];
  data = [acceptedCopy data];

  v8 = [(NPKProtoPassSyncReconciledStateAccepted *)v6 initWithData:data];
  passSyncEngine = self->_passSyncEngine;
  reconciledStateHash = [(NPKProtoPassSyncReconciledStateAccepted *)v8 reconciledStateHash];
  [(NPKPassSyncEngine *)passSyncEngine handleReconciledStateAcceptedWithHash:reconciledStateHash];

  [v11 invalidate];
}

- (void)passSettingsChanged:(id)changed
{
  v22 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = pk_Sync_log(changedCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Sync_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      npkDescription = [changedCopy npkDescription];
      v20 = 138412290;
      v21 = npkDescription;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: pass settings changed with protobuf %@", &v20, 0xCu);
    }
  }

  v10 = [NPKOSTransaction transactionWithName:@"pass settings changed"];
  v11 = [NPKProtoPassSettingsChangedRequest alloc];
  data = [changedCopy data];
  v13 = [(NPKProtoPassSettingsChangedRequest *)v11 initWithData:data];

  uniqueID = [(NPKProtoPassSettingsChangedRequest *)v13 uniqueID];
  v15 = uniqueID;
  if (uniqueID && (uniqueID = [(NPKProtoPassSettingsChangedRequest *)v13 hasPassSettings], uniqueID))
  {
    [(NPKPassSyncService *)self handleIncomingPassSettings:[(NPKProtoPassSettingsChangedRequest *)v13 passSettings] forPassWithUniqueID:v15];
  }

  else
  {
    v16 = pk_Sync_log(uniqueID);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v19 = pk_Sync_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Warning: Pass sync service: No unique ID or no pass settings in protobuf", &v20, 2u);
      }
    }
  }

  [v10 invalidate];
}

- (void)catalogChanged:(id)changed
{
  v27 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = pk_Sync_log(changedCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Sync_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      npkDescription = [changedCopy npkDescription];
      v25 = 138412290;
      v26 = npkDescription;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: catalog changed with protobuf %@", &v25, 0xCu);
    }
  }

  v10 = [NPKOSTransaction transactionWithName:@"Catalog changed"];
  v11 = [NPKProtoCatalogChangedRequest alloc];
  data = [changedCopy data];
  v13 = [(NPKProtoCatalogChangedRequest *)v11 initWithData:data];

  companionCatalog = [(NPKProtoCatalogChangedRequest *)v13 companionCatalog];
  catalogData = [companionCatalog catalogData];
  v16 = [catalogData length];

  if (v16)
  {
    companionCatalog2 = [(NPKProtoCatalogChangedRequest *)v13 companionCatalog];
    catalogData2 = [companionCatalog2 catalogData];
    v19 = objc_opt_class();
    v20 = NPKSecureUnarchiveObject(catalogData2, v19);
  }

  else
  {
    v20 = 0;
  }

  watchCatalog = [(NPKProtoCatalogChangedRequest *)v13 watchCatalog];
  catalogData3 = [watchCatalog catalogData];
  v23 = objc_opt_class();
  v24 = NPKSecureUnarchiveObject(catalogData3, v23);

  [(NPKPassSyncService *)self handleIncomingCompanionCatalog:v20 watchCatalog:v24];
  [v10 invalidate];
}

- (void)associatedPassDataRequested:(id)requested
{
  v29 = *MEMORY[0x277D85DE8];
  requestedCopy = requested;
  v5 = pk_Sync_log(requestedCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Sync_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      npkDescription = [requestedCopy npkDescription];
      v25 = 138412290;
      v26 = npkDescription;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: associated pass data request with protobuf %@", &v25, 0xCu);
    }
  }

  v10 = [NPKProtoPassAssociatedDataRequest alloc];
  data = [requestedCopy data];
  v12 = [(NPKProtoPassAssociatedDataRequest *)v10 initWithData:data];

  passUniqueID = [(NPKProtoPassAssociatedDataRequest *)v12 passUniqueID];
  hasPassRequestedData = [(NPKProtoPassAssociatedDataRequest *)v12 hasPassRequestedData];
  if (hasPassRequestedData)
  {
    hasPassRequestedData = [(NPKProtoPassAssociatedDataRequest *)v12 passRequestedData];
    v15 = hasPassRequestedData;
  }

  else
  {
    v15 = 8;
  }

  v16 = pk_Sync_log(hasPassRequestedData);
  v17 = v16;
  if (passUniqueID)
  {
    v18 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v20 = pk_Sync_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = NSStringFromNPKAssociatedPassData(v15);
        v25 = 138412546;
        v26 = v21;
        v27 = 2112;
        v28 = passUniqueID;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: associated pass data request:%@ for Pass with uniqueID:%@", &v25, 0x16u);
      }
    }

    [(NPKPassSyncService *)self handleRequestedAssociatedData:v15 forPassWithUniqueID:passUniqueID];
  }

  else
  {
    v22 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      v24 = pk_Sync_log(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_ERROR, "Error: unexpected associated pass data request with nil uniqueID", &v25, 2u);
      }
    }
  }
}

- (void)passSyncEngine:(id)engine sendStateChange:(id)change
{
  v42 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  changeCopy = change;
  v8 = changeCopy;
  if (!self->_dropAllMessages)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__NPKPassSyncService_passSyncEngine_sendStateChange___block_invoke;
    aBlock[3] = &unk_279945080;
    aBlock[4] = self;
    v12 = _Block_copy(aBlock);
    passData = [v8 passData];
    protoPassSyncChange = [v8 protoPassSyncChange];
    companionCatalogToSendWithStateChange = [(NPKPassSyncService *)self companionCatalogToSendWithStateChange];
    if (companionCatalogToSendWithStateChange)
    {
      v16 = objc_alloc_init(NPKProtoCatalog);
      v17 = NPKSecureArchiveObject(companionCatalogToSendWithStateChange);
      [(NPKProtoCatalog *)v16 setCatalogData:v17];

      [protoPassSyncChange setCompanionCatalog:v16];
    }

    watchCatalogToSendWithStateChange = [(NPKPassSyncService *)self watchCatalogToSendWithStateChange];
    if (watchCatalogToSendWithStateChange)
    {
      v19 = objc_alloc_init(NPKProtoCatalog);
      v20 = NPKSecureArchiveObject(watchCatalogToSendWithStateChange);
      [(NPKProtoCatalog *)v19 setCatalogData:v20];

      [protoPassSyncChange setWatchCatalog:v19];
    }

    v21 = objc_autoreleasePoolPush();
    v22 = v21;
    if (passData)
    {
      if ([passData length] > 0x500000)
      {
        objc_autoreleasePoolPop(v22);
LABEL_15:
        v33 = engineCopy;
        v27 = NPKSegmentsForLargePassDataNoCopy(passData, 0x400000uLL);
        v28 = [v27 count];
        v29 = pk_Sync_log(v28);
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

        if (v30)
        {
          v32 = pk_Sync_log(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v41 = v28;
            _os_log_impl(&dword_25B300000, v32, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: splitting state change into %u pieces", buf, 8u);
          }
        }

        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __53__NPKPassSyncService_passSyncEngine_sendStateChange___block_invoke_162;
        v34[3] = &unk_2799450A8;
        v35 = protoPassSyncChange;
        v38 = v28;
        v36 = v8;
        v37 = v12;
        [v27 enumerateObjectsUsingBlock:v34];

        engineCopy = v33;
        goto LABEL_21;
      }

      data = [protoPassSyncChange data];
      v24 = engineCopy;
      v25 = [data length];

      objc_autoreleasePoolPop(v22);
      v26 = v25 > 0x500000;
      engineCopy = v24;
      if (v26)
      {
        goto LABEL_15;
      }
    }

    else
    {
      objc_autoreleasePoolPop(v21);
    }

    (*(v12 + 16))(v12, protoPassSyncChange, @"passSyncStateChange");
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v9 = pk_Sync_log(changeCopy);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_Sync_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Warning: Dropping state change message", buf, 2u);
    }

    goto LABEL_22;
  }

LABEL_23:
}

void __53__NPKPassSyncService_passSyncEngine_sendStateChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc(MEMORY[0x277D189F0]);
  v9 = [v5 data];
  v10 = [v8 initWithProtobufData:v9 type:40 isResponse:0];

  v29[0] = *MEMORY[0x277D18650];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v12 = *MEMORY[0x277D18580];
  v30[0] = v11;
  v30[1] = MEMORY[0x277CBEC38];
  v13 = *MEMORY[0x277D18568];
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = *MEMORY[0x277D18630];
  v30[2] = MEMORY[0x277CBEC38];
  v30[3] = v6;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

  v15 = *(*(a1 + 32) + 24);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __53__NPKPassSyncService_passSyncEngine_sendStateChange___block_invoke_2;
  v23[3] = &unk_279945058;
  v16 = v5;
  v24 = v16;
  v17 = NPKProtoSendWithOptions(v15, v10, 200, 0, 0, v23, v14);
  v18 = pk_Sync_log(v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

  if (v19)
  {
    v21 = pk_Sync_log(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v16 npkDescription];
      *buf = 138412546;
      v26 = v17;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sent state change IDS message\n\tMessage ID: %@\n\tProtobuf: %@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v7);
}

void __53__NPKPassSyncService_passSyncEngine_sendStateChange___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_Sync_log(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v6 = pk_Sync_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Failed to send pass sync state change: %@", &v8, 0xCu);
    }
  }
}

void __53__NPKPassSyncService_passSyncEngine_sendStateChange___block_invoke_162(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPassData:a2];
  [*(a1 + 32) setPassSegmentIndex:a3];
  [*(a1 + 32) setPassSegmentTotal:*(a1 + 56)];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"passSyncStateChange-%u", a3];
  v6 = pk_Sync_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Sync_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 56);
      v11 = [*(a1 + 40) changeUUID];
      *buf = 67109634;
      v13 = a3;
      v14 = 1024;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sending state change IDS message for segment index %u (%u total segments)\n\tChange UUID: %@", buf, 0x18u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)passSyncEngine:(id)engine sendStateChangeProcessedWithUUID:(id)d changeAccepted:(BOOL)accepted fullPassRequired:(BOOL)required
{
  requiredCopy = required;
  acceptedCopy = accepted;
  v34[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v10 = dCopy;
  if (!self->_dropAllMessages)
  {
    v15 = objc_alloc_init(NPKProtoPassSyncStateChangeProcessed);
    if (v10)
    {
      *buf = 0;
      *&buf[8] = 0;
      [v10 getUUIDBytes:buf];
      v16 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:16];
      [(NPKProtoPassSyncStateChangeProcessed *)v15 setAcceptedChangeUUID:v16];
    }

    [(NPKProtoPassSyncStateChangeProcessed *)v15 setChangeAccepted:acceptedCopy];
    [(NPKProtoPassSyncStateChangeProcessed *)v15 setFullPassRequired:requiredCopy];
    v17 = objc_alloc(MEMORY[0x277D189F0]);
    data = [(NPKProtoPassSyncStateChangeProcessed *)v15 data];
    v19 = [v17 initWithProtobufData:data type:41 isResponse:0];

    v33[0] = *MEMORY[0x277D18650];
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v21 = *MEMORY[0x277D18580];
    v34[0] = v20;
    v34[1] = MEMORY[0x277CBEC38];
    v22 = *MEMORY[0x277D18568];
    v33[1] = v21;
    v33[2] = v22;
    v33[3] = *MEMORY[0x277D18630];
    v34[2] = MEMORY[0x277CBEC38];
    v34[3] = @"passSyncStateChangeProcessed";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];

    passSyncService = self->_passSyncService;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __102__NPKPassSyncService_passSyncEngine_sendStateChangeProcessedWithUUID_changeAccepted_fullPassRequired___block_invoke;
    v30[3] = &unk_279945058;
    v14 = v15;
    v31 = v14;
    v25 = NPKProtoSendWithOptions(passSyncService, v19, 200, 0, 0, v30, v23);
    v26 = pk_Sync_log(v25);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

    if (v27)
    {
      v29 = pk_Sync_log(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sent state change processed IDS message\n\tMessage ID: %@\n\tProtobuf: %@", buf, 0x16u);
      }
    }

    goto LABEL_12;
  }

  v11 = pk_Sync_log(dCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Sync_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Warning: Dropping state change processed message", buf, 2u);
    }

LABEL_12:
  }
}

void __102__NPKPassSyncService_passSyncEngine_sendStateChangeProcessedWithUUID_changeAccepted_fullPassRequired___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_Sync_log(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v6 = pk_Sync_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Failed to send pass sync change accepted: %@", &v8, 0xCu);
    }
  }
}

- (void)passSyncEngine:(id)engine sendReconciledStateUnrecognizedWithHash:(id)hash version:(unint64_t)version currentPassSyncState:(id)state
{
  v38[4] = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  stateCopy = state;
  v11 = stateCopy;
  if (!self->_dropAllMessages)
  {
    v16 = objc_alloc_init(NPKProtoPassSyncReconciledStateUnrecognized);
    [(NPKProtoPassSyncReconciledStateUnrecognized *)v16 setUnrecognizedReconciledStateHash:hashCopy];
    [(NPKProtoPassSyncReconciledStateUnrecognized *)v16 setUnrecognizedReconciledStateVersion:version];
    protoSyncState = [v11 protoSyncState];
    [(NPKProtoPassSyncReconciledStateUnrecognized *)v16 setLibraryPassSyncState:protoSyncState];

    v18 = objc_alloc(MEMORY[0x277D189F0]);
    data = [(NPKProtoPassSyncReconciledStateUnrecognized *)v16 data];
    v20 = [v18 initWithProtobufData:data type:42 isResponse:0];

    v37[0] = *MEMORY[0x277D18650];
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v22 = *MEMORY[0x277D18580];
    v38[0] = v21;
    v38[1] = MEMORY[0x277CBEC38];
    v23 = *MEMORY[0x277D18568];
    v37[1] = v22;
    v37[2] = v23;
    v37[3] = *MEMORY[0x277D18630];
    v38[2] = MEMORY[0x277CBEC38];
    v38[3] = @"passSyncReconciledStateUnrecognized";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];

    passSyncService = self->_passSyncService;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __106__NPKPassSyncService_passSyncEngine_sendReconciledStateUnrecognizedWithHash_version_currentPassSyncState___block_invoke;
    v31[3] = &unk_279945058;
    v15 = v16;
    v32 = v15;
    v26 = NPKProtoSendWithOptions(passSyncService, v20, 200, 0, 0, v31, v24);
    v27 = pk_Sync_log(v26);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

    if (v28)
    {
      v30 = pk_Sync_log(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v34 = v26;
        v35 = 2112;
        v36 = v15;
        _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sent reconciled state unrecognized IDS message\n\tMessage ID: %@\n\tProtobuf: %@", buf, 0x16u);
      }
    }

    goto LABEL_10;
  }

  v12 = pk_Sync_log(stateCopy);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v15 = pk_Sync_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Warning: Dropping reconciled state unrecognized message", buf, 2u);
    }

LABEL_10:
  }
}

void __106__NPKPassSyncService_passSyncEngine_sendReconciledStateUnrecognizedWithHash_version_currentPassSyncState___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_Sync_log(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v6 = pk_Sync_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Failed to send pass sync reconciled state unrecognized: %@", &v8, 0xCu);
    }
  }
}

- (void)passSyncEngine:(id)engine sendProposedReconciledState:(id)state
{
  v33[4] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = stateCopy;
  if (!self->_dropAllMessages)
  {
    v11 = objc_alloc_init(NPKProtoPassSyncProposedReconciledState);
    protoSyncState = [v6 protoSyncState];
    [(NPKProtoPassSyncProposedReconciledState *)v11 setProposedReconciledState:protoSyncState];

    v13 = objc_alloc(MEMORY[0x277D189F0]);
    data = [(NPKProtoPassSyncProposedReconciledState *)v11 data];
    v15 = [v13 initWithProtobufData:data type:43 isResponse:0];

    v32[0] = *MEMORY[0x277D18650];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v17 = *MEMORY[0x277D18580];
    v33[0] = v16;
    v33[1] = MEMORY[0x277CBEC38];
    v18 = *MEMORY[0x277D18568];
    v32[1] = v17;
    v32[2] = v18;
    v32[3] = *MEMORY[0x277D18630];
    v33[2] = MEMORY[0x277CBEC38];
    v33[3] = @"passSyncReconciledStateUnrecognized";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];

    passSyncService = self->_passSyncService;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __65__NPKPassSyncService_passSyncEngine_sendProposedReconciledState___block_invoke;
    v26[3] = &unk_279945058;
    v10 = v11;
    v27 = v10;
    v21 = NPKProtoSendWithOptions(passSyncService, v15, 200, 0, 0, v26, v19);
    v22 = pk_Sync_log(v21);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v23)
    {
      v25 = pk_Sync_log(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v29 = v21;
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sent proposed reconciled state IDS message\n\tMessage ID: %@\n\tProtobuf: %@", buf, 0x16u);
      }
    }

    goto LABEL_10;
  }

  v7 = pk_Sync_log(stateCopy);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Sync_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Warning: Dropping proposed reconciled state message", buf, 2u);
    }

LABEL_10:
  }
}

void __65__NPKPassSyncService_passSyncEngine_sendProposedReconciledState___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_Sync_log(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v6 = pk_Sync_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Failed to send pass sync proposed reconciled state message: %@", &v8, 0xCu);
    }
  }
}

- (void)passSyncEngine:(id)engine sendReconciledStateAcceptedWithHash:(id)hash
{
  v32[4] = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  v6 = hashCopy;
  if (!self->_dropAllMessages)
  {
    v11 = objc_alloc_init(NPKProtoPassSyncReconciledStateAccepted);
    [(NPKProtoPassSyncReconciledStateAccepted *)v11 setReconciledStateHash:v6];
    v12 = objc_alloc(MEMORY[0x277D189F0]);
    data = [(NPKProtoPassSyncReconciledStateAccepted *)v11 data];
    v14 = [v12 initWithProtobufData:data type:44 isResponse:0];

    v31[0] = *MEMORY[0x277D18650];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v16 = *MEMORY[0x277D18580];
    v32[0] = v15;
    v32[1] = MEMORY[0x277CBEC38];
    v17 = *MEMORY[0x277D18568];
    v31[1] = v16;
    v31[2] = v17;
    v31[3] = *MEMORY[0x277D18630];
    v32[2] = MEMORY[0x277CBEC38];
    v32[3] = @"passSyncStateChangeProcessed";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];

    passSyncService = self->_passSyncService;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __73__NPKPassSyncService_passSyncEngine_sendReconciledStateAcceptedWithHash___block_invoke;
    v25[3] = &unk_279945058;
    v10 = v11;
    v26 = v10;
    v20 = NPKProtoSendWithOptions(passSyncService, v14, 200, 0, 0, v25, v18);
    v21 = pk_Sync_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (v22)
    {
      v24 = pk_Sync_log(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v28 = v20;
        v29 = 2112;
        v30 = v10;
        _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sent reconciled state accepted IDS message\n\tMessage ID: %@\n\tProtobuf: %@", buf, 0x16u);
      }
    }

    goto LABEL_10;
  }

  v7 = pk_Sync_log(hashCopy);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Sync_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Warning: Dropping reconciled state accepted message", buf, 2u);
    }

LABEL_10:
  }
}

void __73__NPKPassSyncService_passSyncEngine_sendReconciledStateAcceptedWithHash___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_Sync_log(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v6 = pk_Sync_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Failed to send pass sync reconciled state accepted: %@", &v8, 0xCu);
    }
  }
}

- (void)passSyncEngineStateChanged:(id)changed
{
  v4 = pk_Sync_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Sync_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: got pass sync engine state changed", v10, 2u);
    }
  }

  passSyncEngineArchiveTimer = self->_passSyncEngineArchiveTimer;
  v9 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(passSyncEngineArchiveTimer, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)passSyncEngine:(id)engine receivedStateChangeProcessed:(id)processed changeAccepted:(BOOL)accepted
{
  acceptedCopy = accepted;
  v17 = *MEMORY[0x277D85DE8];
  processedCopy = processed;
  v8 = pk_Sync_log(processedCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Sync_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = processedCopy;
      v15 = 1024;
      v16 = acceptedCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: received state change processed delegate method invoked\n\tChange: %@\n\tAccepted: %d", &v13, 0x12u);
    }
  }

  if (![processedCopy changeType])
  {
    uniqueID = [processedCopy uniqueID];
    [(NPKPassSyncService *)self handleSettingsChanged:[(NPKPassSyncService *)self settingsForPassWithUniqueID:uniqueID] forPassWithUniqueID:uniqueID];
  }
}

- (void)passSyncEngine:(id)engine finishedProcessingChange:(id)change
{
  v14 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v6 = pk_Sync_log(changeCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Sync_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = changeCopy;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: finished processing change delegate method invoked\n\tChange: %@", buf, 0xCu);
    }
  }

  passSyncQueue = self->_passSyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NPKPassSyncService_passSyncEngine_finishedProcessingChange___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(passSyncQueue, block);
}

uint64_t __62__NPKPassSyncService_passSyncEngine_finishedProcessingChange___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = pk_Sync_log(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Sync_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass sync service: syncing when appropriate following change processed", v8, 2u);
    }
  }

  return [*(a1 + 32) _provideUpdatedLibraryStateToSyncEngineAndSyncIfNecessary:1];
}

- (void)passSyncEngine:(id)engine requestsAddPassData:(id)data forSyncStateItem:(id)item completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = pk_General_log(self);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

  if (v7)
  {
    v9 = pk_General_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "[NPKPassSyncService passSyncEngine:requestsAddPassData:forSyncStateItem:completion:]";
      v12 = 2082;
      v13 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v14 = 2048;
      v15 = 686;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v10, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (void)passSyncEngine:(id)engine requestsUpdatePassData:(id)data forSyncStateItem:(id)item baseManifestHashForPartialUpdate:(id)update remoteAssetsForPartialUpdate:(id)partialUpdate completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = pk_General_log(self);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v9)
  {
    v11 = pk_General_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446722;
      v13 = "[NPKPassSyncService passSyncEngine:requestsUpdatePassData:forSyncStateItem:baseManifestHashForPartialUpdate:remoteAssetsForPartialUpdate:completion:]";
      v14 = 2082;
      v15 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v16 = 2048;
      v17 = 691;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v12, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (void)passSyncEngine:(id)engine requestsRemovePassWithUniqueID:(id)d completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = pk_General_log(self);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446722;
      v10 = "[NPKPassSyncService passSyncEngine:requestsRemovePassWithUniqueID:completion:]";
      v11 = 2082;
      v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v13 = 2048;
      v14 = 696;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v9, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (id)passSyncEngine:(id)engine partialDataForPassWithUniqueID:(id)d baseManifest:(id)manifest outRemoteAssets:(id *)assets
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = pk_General_log(self);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

  if (v7)
  {
    v9 = pk_General_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "[NPKPassSyncService passSyncEngine:partialDataForPassWithUniqueID:baseManifest:outRemoteAssets:]";
      v12 = 2082;
      v13 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v14 = 2048;
      v15 = 703;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v10, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (id)passSyncEngine:(id)engine dataForPassWithUniqueID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = pk_General_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "[NPKPassSyncService passSyncEngine:dataForPassWithUniqueID:]";
      v10 = 2082;
      v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v12 = 2048;
      v13 = 709;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v8, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (void)handleRequestedAssociatedData:(unint64_t)data forPassWithUniqueID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = pk_General_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "[NPKPassSyncService handleRequestedAssociatedData:forPassWithUniqueID:]";
      v10 = 2082;
      v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v12 = 2048;
      v13 = 719;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v8, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (void)_provideUpdatedLibraryStateToSyncEngineAndSyncIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v37 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_passSyncQueue);
  v5 = +[NPKPassSyncState minRemoteDevicePassSyncStateVersionSupport];
  v6 = [NPKOSTransaction transactionWithName:@"provide updated libray state"];
  reconciledState = [(NPKPassSyncEngine *)self->_passSyncEngine reconciledState];
  v8 = [(NPKPassSyncService *)self currentLibraryPassSyncStateWithReconciledState:reconciledState];
  v9 = [v8 passSyncStateWithVersion:v5];
  libraryState = [(NPKPassSyncEngine *)self->_passSyncEngine libraryState];
  v11 = pk_Sync_log(libraryState);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Sync_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "no";
      if (necessaryCopy)
      {
        v15 = "yes";
      }

      v33 = 138412546;
      v34 = v9;
      v35 = 2080;
      v36 = v15;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Providing updated library state\n\tSync state: %@\n\tWill sync if necessary: %s", &v33, 0x16u);
    }
  }

  [(NPKPassSyncEngine *)self->_passSyncEngine setLibraryState:v9];
  [(NPKPassSyncEngine *)self->_passSyncEngine setMinSyncStateVersion:v5];
  if (necessaryCopy)
  {
    v16 = [v9 diffWithBaselineState:libraryState representsMaterialDifferenceFromState:reconciledState];
    if (v16)
    {
      processingChange = [(NPKPassSyncEngine *)self->_passSyncEngine processingChange];
      if (!processingChange)
      {
LABEL_12:
        v21 = pk_Sync_log(processingChange);
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

        if (v22)
        {
          v24 = pk_Sync_log(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v33) = 0;
            _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: requesting sync when appropriate following update to library state", &v33, 2u);
          }
        }

        [(NPKPassSyncService *)self _syncWhenAppropriate];
        goto LABEL_26;
      }

      v18 = processingChange;
      v19 = [reconciledState passSyncStateByApplyingChange:processingChange];
      v20 = [v9 diffWithBaselineState:libraryState representsMaterialDifferenceFromState:v19];
      if (v20)
      {

        goto LABEL_12;
      }

      v29 = pk_Sync_log(v20);
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

      if (v30)
      {
        v32 = pk_Sync_log(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33) = 0;
          _os_log_impl(&dword_25B300000, v32, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Not syncing after providing updated library state, since change is already accounted for in processing change on top of reconciled state", &v33, 2u);
        }
      }
    }

    else
    {
      v25 = pk_Sync_log(v16);
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

      if (v26)
      {
        v28 = pk_Sync_log(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33) = 0;
          _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Not syncing after providing updated library state, since change is already accounted for in reconciled state", &v33, 2u);
        }
      }
    }
  }

LABEL_26:
  [v6 invalidate];
}

- (void)_archiveTimerFired
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_passSyncQueue);
  v4 = pk_Sync_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Sync_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Archive timer fired; writing pass sync engine archive to disk", buf, 2u);
    }
  }

  v8 = [NPKOSTransaction transactionWithName:@"Archive timer"];
  v9 = NPKSecureArchiveObject(self->_passSyncEngine);
  v10 = NPKPassSyncEngineArchivePath();
  v17 = 0;
  [v9 writeToFile:v10 options:1 error:&v17];
  v11 = v17;

  if (v11)
  {
    v13 = pk_Sync_log(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      v16 = pk_Sync_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, "Error: Pass sync service: unable to write pass sync engine archive to disk\n\tError: %@", buf, 0xCu);
      }
    }
  }

  [v8 invalidate];
}

- (void)_syncWhenAppropriate
{
  dispatch_assert_queue_V2(self->_passSyncQueue);
  passSyncStatus = self->_passSyncStatus;
  processingChange = [(NPKPassSyncEngine *)self->_passSyncEngine processingChange];
  candidateChange = [(NPKPassSyncEngine *)self->_passSyncEngine candidateChange];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [(NPKPassSyncServiceSyncStatus *)passSyncStatus shouldSyncWithCurrentIncomingChange:processingChange currentOutgoingChange:candidateChange currentDate:date];

  v9 = pk_Sync_log(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    if (v10)
    {
      v12 = pk_Sync_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Syncing immediately while appropriate", buf, 2u);
      }
    }

    [(NPKPassSyncService *)self _syncNow];
  }

  else
  {
    if (v10)
    {
      v13 = pk_Sync_log(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Setting sync timer because syncing now is not appropriate", v14, 2u);
      }
    }

    [(NPKPassSyncService *)self _ensureSyncTimerIsSet];
  }
}

- (void)_syncNow
{
  dispatch_assert_queue_V2(self->_passSyncQueue);
  v3 = [NPKOSTransaction transactionWithName:@"Sync now"];
  [(NPKPassSyncServiceSyncStatus *)self->_passSyncStatus reset];
  [(NPKPassSyncEngine *)self->_passSyncEngine syncIfNecessary];
  [v3 invalidate];
}

- (void)_ensureSyncTimerIsSet
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_passSyncQueue);
  passSyncEngineSyncTimer = self->_passSyncEngineSyncTimer;
  v5 = pk_Sync_log(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (passSyncEngineSyncTimer)
  {
    if (v6)
    {
      v8 = pk_Sync_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Sync timer is already set", buf, 2u);
      }
    }
  }

  else
  {
    if (v6)
    {
      v9 = pk_Sync_log(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v16 = 0x404E000000000000;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Setting timer for %.2f seconds before syncing", buf, 0xCu);
      }
    }

    v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_passSyncQueue);
    v11 = dispatch_time(0, 0xDF8476000);
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(buf, self);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __43__NPKPassSyncService__ensureSyncTimerIsSet__block_invoke;
    handler[3] = &unk_279945030;
    objc_copyWeak(&v14, buf);
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(v10);
    v12 = self->_passSyncEngineSyncTimer;
    self->_passSyncEngineSyncTimer = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __43__NPKPassSyncService__ensureSyncTimerIsSet__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _syncTimerFired];
}

- (void)_syncTimerFired
{
  dispatch_assert_queue_V2(self->_passSyncQueue);
  passSyncEngineSyncTimer = self->_passSyncEngineSyncTimer;
  if (passSyncEngineSyncTimer)
  {
    dispatch_source_cancel(passSyncEngineSyncTimer);
    v4 = self->_passSyncEngineSyncTimer;
    self->_passSyncEngineSyncTimer = 0;
  }

  [(NPKPassSyncService *)self _syncWhenAppropriate];
}

- (id)_archivedPassSyncEngine
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEA90];
  v3 = NPKPassSyncEngineArchivePath();
  v14 = 0;
  v4 = [v2 dataWithContentsOfFile:v3 options:0 error:&v14];
  v5 = v14;

  if (v5)
  {
    v7 = pk_Sync_log(v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v10 = pk_Sync_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Warning: Pass sync service: Unable to read pass sync engine archive. This is expected in the case of a fresh device install.\n\tError: %@", buf, 0xCu);
      }
    }

    v11 = 0;
  }

  else
  {
    v12 = objc_opt_class();
    v11 = NPKSecureUnarchiveObject(v4, v12);
  }

  return v11;
}

@end