@interface NPKPassSyncEngine
- (NPKPassSyncEngine)initWithCoder:(id)coder;
- (NPKPassSyncEngine)initWithRole:(unint64_t)role;
- (NPKPassSyncEngineDataSource)dataSource;
- (NPKPassSyncEngineDelegate)delegate;
- (NPKPassSyncState)candidateState;
- (NPKPassSyncState)libraryState;
- (NPKPassSyncState)reconciledState;
- (NSString)engineName;
- (void)_engineStateChanged;
- (void)_finishedProcessingChange:(id)change;
- (void)_handleStateChange:(id)change attemptRecoverReconcileStateVersionMismatch:(BOOL)mismatch;
- (void)_receivedStateChangeProcessed:(id)processed changeAccepted:(BOOL)accepted;
- (void)_requestAddPassData:(id)data forSyncStateItem:(id)item completion:(id)completion;
- (void)_requestRemovePassWithUniqueID:(id)d completion:(id)completion;
- (void)_requestUpdatePassData:(id)data forSyncStateItem:(id)item baseManifestHashForPartialUpdate:(id)update remoteAssetsForPartialUpdate:(id)partialUpdate completion:(id)completion;
- (void)_sendNextStateChange;
- (void)_sendProposedReconciledState:(id)state;
- (void)_sendReconciledStateAcceptedWithHash:(id)hash;
- (void)_sendReconciledStateUnrecognizedWithHash:(id)hash version:(unint64_t)version currentPassSyncState:(id)state;
- (void)_sendStateChange:(id)change;
- (void)_sendStateChangeProcessedWithUUID:(id)d changeAccepted:(BOOL)accepted fullPassRequired:(BOOL)required;
- (void)_shouldProcessAddOrUpdateChangeOfType:(unint64_t)type changeSyncStateItem:(id)item librarySyncStateItem:(id)stateItem reconciledSyncStateItem:(id)syncStateItem candidateChange:(id)change shouldApplyToPassLibrary:(BOOL *)library shouldApplyToReconciledState:(BOOL *)state;
- (void)_unexpectedEventOccurred;
- (void)encodeWithCoder:(id)coder;
- (void)handleProposedReconciledState:(id)state;
- (void)handleReconciledStateAcceptedWithHash:(id)hash;
- (void)handleReconciledStateUnrecognizedWithHash:(id)hash version:(unint64_t)version passSyncState:(id)state;
- (void)handleStateChangeProcessedWithUUID:(id)d changeAccepted:(BOOL)accepted fullPassRequired:(BOOL)required;
- (void)setBackupState:(id)state;
- (void)setCandidateChange:(id)change;
- (void)setCandidateState:(id)state;
- (void)setLibraryState:(id)state;
- (void)setMinSyncStateVersion:(unint64_t)version;
- (void)setReconciledState:(id)state;
- (void)syncIfNecessary;
@end

@implementation NPKPassSyncEngine

- (NPKPassSyncEngine)initWithRole:(unint64_t)role
{
  v5.receiver = self;
  v5.super_class = NPKPassSyncEngine;
  result = [(NPKPassSyncEngine *)&v5 init];
  if (result)
  {
    result->_engineRole = role;
    result->_requireAppleAccountForPaymentPasses = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  libraryState = self->_libraryState;
  coderCopy = coder;
  [coderCopy encodeObject:libraryState forKey:@"libraryState"];
  [coderCopy encodeObject:self->_reconciledState forKey:@"reconciledState"];
  [coderCopy encodeObject:self->_backupState forKey:@"backupState"];
  [coderCopy encodeObject:self->_candidateState forKey:@"candidateState"];
  v7 = [(NPKPassSyncChange *)self->_candidateChange copy];
  [v7 setPassData:0];
  [coderCopy encodeObject:v7 forKey:@"candidateChange"];
  if (self->_engineRole)
  {
    v6 = @"Companion";
  }

  else
  {
    v6 = @"Watch";
  }

  [coderCopy encodeObject:v6 forKey:@"engineRole"];
}

- (NPKPassSyncEngine)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = NPKPassSyncEngine;
  v5 = [(NPKPassSyncEngine *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryState"];
    libraryState = v5->_libraryState;
    v5->_libraryState = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reconciledState"];
    reconciledState = v5->_reconciledState;
    v5->_reconciledState = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backupState"];
    backupState = v5->_backupState;
    v5->_backupState = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidateState"];
    candidateState = v5->_candidateState;
    v5->_candidateState = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidateChange"];
    candidateChange = v5->_candidateChange;
    v5->_candidateChange = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"engineRole"];
    v5->_engineRole = [v16 isEqualToString:@"Companion"];
  }

  return v5;
}

- (NSString)engineName
{
  if (self->_engineRole)
  {
    return @"Companion";
  }

  else
  {
    return @"Watch";
  }
}

- (void)syncIfNecessary
{
  v20 = *MEMORY[0x277D85DE8];
  libraryState = [(NPKPassSyncEngine *)self libraryState];
  reconciledState = [(NPKPassSyncEngine *)self reconciledState];
  v5 = PKEqualObjects();
  v6 = v5;
  v7 = pk_Sync_log(v5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    if (v8)
    {
      v10 = pk_Sync_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        engineName = [(NPKPassSyncEngine *)self engineName];
        v14 = 138412290;
        v15 = engineName;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Sync engine (%@): No sync necessary.", &v14, 0xCu);
      }
    }
  }

  else
  {
    if (v8)
    {
      v12 = pk_Sync_log(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        engineName2 = [(NPKPassSyncEngine *)self engineName];
        v14 = 138412802;
        v15 = engineName2;
        v16 = 2112;
        v17 = libraryState;
        v18 = 2112;
        v19 = reconciledState;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sync is necessary.\n libraryState:%@\n reconciledState:%@", &v14, 0x20u);
      }
    }

    [(NPKPassSyncEngine *)self _sendNextStateChange];
  }
}

- (void)_handleStateChange:(id)change attemptRecoverReconcileStateVersionMismatch:(BOOL)mismatch
{
  mismatchCopy = mismatch;
  v153 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v7 = pk_Sync_log(changeCopy);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Sync_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [(NPKPassSyncEngine *)self engineName];
      v114 = v107 = self;
      v11 = changeCopy;
      v105 = changeCopy;
      changeUUID = [changeCopy changeUUID];
      reconciledStateHash = [changeCopy reconciledStateHash];
      hexEncoding = [reconciledStateHash hexEncoding];
      reconciledStateVersion = [changeCopy reconciledStateVersion];
      v13 = NPKPassSyncChangeTypeToString([changeCopy changeType]);
      uniqueID = [v11 uniqueID];
      syncStateItem = [v11 syncStateItem];
      passData = [v11 passData];
      npkDescription = [passData npkDescription];
      baseManifestHashForPartialUpdate = [v11 baseManifestHashForPartialUpdate];
      hexEncoding2 = [baseManifestHashForPartialUpdate hexEncoding];
      [v11 remoteAssetsForPartialUpdate];
      v18 = v108 = mismatchCopy;
      *buf = 138414594;
      v134 = v114;
      v135 = 2112;
      v136 = changeUUID;
      v137 = 2112;
      v138 = hexEncoding;
      v139 = 2048;
      v140 = reconciledStateVersion;
      v141 = 2112;
      v142 = v13;
      v143 = 2112;
      v144 = uniqueID;
      v145 = 2112;
      v146 = syncStateItem;
      v147 = 2112;
      v148 = npkDescription;
      v149 = 2112;
      v150 = hexEncoding2;
      v151 = 2112;
      v152 = v18;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Received state change\n\tChange UUID: %@\n\tReconciled state hash: %@\n\tVersion:%lu\n\tChange type: %@\n\tunique ID: %@\n\tsync state item: %@\n\tpass data: %@\n\tbase manifest hash for partial update: %@\n\t remote assets for partial update: %@", buf, 0x66u);

      mismatchCopy = v108;
      self = v107;
      changeCopy = v105;
    }
  }

  backupState = [(NPKPassSyncEngine *)self backupState];
  v20 = backupState;
  if (backupState)
  {
    syncStateHash = [backupState syncStateHash];
    reconciledState = [(NPKPassSyncEngine *)self reconciledState];
    syncStateHash2 = [reconciledState syncStateHash];

    reconciledStateHash2 = [changeCopy reconciledStateHash];
    if (PKEqualObjects())
    {
    }

    else
    {
      reconciledStateHash3 = [changeCopy reconciledStateHash];
      v26 = PKEqualObjects();

      if (v26)
      {
        v28 = pk_Sync_log(v27);
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

        if (v29)
        {
          v31 = pk_Sync_log(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            engineName = [(NPKPassSyncEngine *)self engineName];
            *buf = 138412802;
            v134 = engineName;
            v135 = 2112;
            v136 = syncStateHash;
            v137 = 2112;
            v138 = syncStateHash2;
            _os_log_impl(&dword_25B300000, v31, OS_LOG_TYPE_DEFAULT, "Warning: Sync state engine (%@): State change based on backup hash (%@), not reconciled hash (%@); moving backup to reconciled", buf, 0x20u);
          }
        }

        [(NPKPassSyncEngine *)self setReconciledState:v20];
        [(NPKPassSyncEngine *)self setBackupState:0];
        [(NPKPassSyncEngine *)self _unexpectedEventOccurred];
      }
    }
  }

  reconciledStateHash4 = [changeCopy reconciledStateHash];
  reconciledState2 = [(NPKPassSyncEngine *)self reconciledState];
  syncStateHash3 = [reconciledState2 syncStateHash];
  if (PKEqualObjects())
  {
    reconciledStateVersion2 = [changeCopy reconciledStateVersion];
    reconciledState3 = [(NPKPassSyncEngine *)self reconciledState];
    v38 = mismatchCopy;
    version = [reconciledState3 version];

    v40 = reconciledStateVersion2 == version;
    mismatchCopy = v38;
    if (!v40)
    {
      goto LABEL_22;
    }

    changeType = [changeCopy changeType];
    uniqueID2 = [changeCopy uniqueID];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke;
    aBlock[3] = &unk_279947A80;
    aBlock[4] = self;
    v43 = changeCopy;
    v132 = v43;
    v115 = _Block_copy(aBlock);
    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v127[2] = __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_82;
    v127[3] = &unk_279945958;
    v130 = changeType;
    v127[4] = self;
    v44 = v43;
    v128 = v44;
    v45 = uniqueID2;
    v129 = v45;
    v112 = _Block_copy(v127);
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_84;
    v123[3] = &unk_279947AA8;
    v126 = changeType;
    v123[4] = self;
    v46 = v44;
    v124 = v46;
    v47 = v45;
    v125 = v47;
    v48 = _Block_copy(v123);
    v49 = v48;
    v122 = 0;
    if (changeType >= 2)
    {
      if (changeType != 2)
      {
        goto LABEL_45;
      }

      v122 = 257;
    }

    else
    {
      libraryState = [(NPKPassSyncEngine *)self libraryState];
      syncStateItems = [libraryState syncStateItems];
      v52 = [syncStateItems objectForKey:v47];

      reconciledState4 = [(NPKPassSyncEngine *)self reconciledState];
      syncStateItems2 = [reconciledState4 syncStateItems];
      [syncStateItems2 objectForKey:v47];
      v109 = v47;
      v56 = v55 = v49;

      candidateChange = [(NPKPassSyncEngine *)self candidateChange];
      syncStateItem2 = [v46 syncStateItem];
      [(NPKPassSyncEngine *)self _shouldProcessAddOrUpdateChangeOfType:changeType changeSyncStateItem:syncStateItem2 librarySyncStateItem:v52 reconciledSyncStateItem:v56 candidateChange:candidateChange shouldApplyToPassLibrary:&v122 + 1 shouldApplyToReconciledState:&v122];

      v49 = v55;
      v47 = v109;

      if ((v122 & 0x100) == 0)
      {
LABEL_45:
        v92 = v122;
        v93 = pk_Sync_log(v48);
        v94 = os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT);

        if (v92 == 1)
        {
          v91 = v112;
          if (v94)
          {
            v96 = pk_Sync_log(v95);
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
            {
              engineName2 = [(NPKPassSyncEngine *)self engineName];
              changeUUID2 = [v46 changeUUID];
              *buf = 138412546;
              v134 = engineName2;
              v135 = 2112;
              v136 = changeUUID2;
              _os_log_impl(&dword_25B300000, v96, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Not applying change to pass library, but applying to reconciled state and accepting\n\tChange UUID: %@", buf, 0x16u);
            }
          }

          v112[2](v112);
          v90 = v115;
          (*(v115 + 2))(v115, 1, 0);
        }

        else
        {
          v91 = v112;
          if (v94)
          {
            v99 = pk_Sync_log(v95);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
            {
              engineName3 = [(NPKPassSyncEngine *)self engineName];
              changeUUID3 = [v46 changeUUID];
              *buf = 138412546;
              v134 = engineName3;
              v135 = 2112;
              v136 = changeUUID3;
              _os_log_impl(&dword_25B300000, v99, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Rejecting change\n\tChange UUID: %@", buf, 0x16u);
            }
          }

          v90 = v115;
          (*(v115 + 2))(v115, 0, 0);
        }

LABEL_56:

        goto LABEL_57;
      }
    }

    v84 = pk_Sync_log(v48);
    v85 = os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT);

    if (v85)
    {
      v87 = pk_Sync_log(v86);
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        engineName4 = [(NPKPassSyncEngine *)self engineName];
        changeUUID4 = [v46 changeUUID];
        *buf = 138412546;
        v134 = engineName4;
        v135 = 2112;
        v136 = changeUUID4;
        _os_log_impl(&dword_25B300000, v87, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Applying change to pass library\n\tChange UUID: %@", buf, 0x16u);
      }
    }

    [(NPKPassSyncEngine *)self setProcessingChange:v46];
    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_87;
    v117[3] = &unk_279947AD0;
    v117[4] = self;
    v118 = v46;
    v90 = v115;
    v119 = v115;
    v121 = v122;
    v91 = v112;
    v120 = v112;
    (v49)[2](v49, v117);

    goto LABEL_56;
  }

LABEL_22:
  reconciledStateVersion3 = [changeCopy reconciledStateVersion];
  reconciledState5 = [(NPKPassSyncEngine *)self reconciledState];
  version2 = [reconciledState5 version];

  v63 = pk_Sync_log(v62);
  v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);

  if (!mismatchCopy || version2 == reconciledStateVersion3)
  {
    if (v64)
    {
      v74 = pk_Sync_log(v65);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        engineName5 = [(NPKPassSyncEngine *)self engineName];
        reconciledStateHash5 = [changeCopy reconciledStateHash];
        hexEncoding3 = [reconciledStateHash5 hexEncoding];
        reconciledStateVersion4 = [changeCopy reconciledStateVersion];
        reconciledState6 = [(NPKPassSyncEngine *)self reconciledState];
        syncStateHash4 = [reconciledState6 syncStateHash];
        hexEncoding4 = [syncStateHash4 hexEncoding];
        reconciledState7 = [(NPKPassSyncEngine *)self reconciledState];
        version3 = [reconciledState7 version];
        *buf = 138413314;
        v134 = engineName5;
        v135 = 2112;
        v136 = hexEncoding3;
        v137 = 2048;
        v138 = reconciledStateVersion4;
        v139 = 2112;
        v140 = hexEncoding4;
        v141 = 2048;
        v142 = version3;
        _os_log_impl(&dword_25B300000, v74, OS_LOG_TYPE_DEFAULT, "Warning: Sync state engine (%@): Unrecognized reconciled state hash %@ version:%lu, current state hash:%@ version:%lu", buf, 0x34u);
      }
    }

    reconciledStateHash6 = [changeCopy reconciledStateHash];
    reconciledStateVersion5 = [changeCopy reconciledStateVersion];
    reconciledState8 = [(NPKPassSyncEngine *)self reconciledState];
    [(NPKPassSyncEngine *)self _sendReconciledStateUnrecognizedWithHash:reconciledStateHash6 version:reconciledStateVersion5 currentPassSyncState:reconciledState8];

    [(NPKPassSyncEngine *)self _unexpectedEventOccurred];
  }

  else
  {
    if (v64)
    {
      v66 = pk_Sync_log(v65);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        engineName6 = [(NPKPassSyncEngine *)self engineName];
        *buf = 138412290;
        v134 = engineName6;
        _os_log_impl(&dword_25B300000, v66, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Attempt to recover from mismatch reconcile state", buf, 0xCu);
      }
    }

    v68 = pk_Sync_log(-[NPKPassSyncEngine setMinSyncStateVersion:](self, "setMinSyncStateVersion:", [changeCopy reconciledStateVersion]));
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);

    if (v69)
    {
      v71 = pk_Sync_log(v70);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        engineName7 = [(NPKPassSyncEngine *)self engineName];
        uniqueID3 = [changeCopy uniqueID];
        *buf = 138412546;
        v134 = engineName7;
        v135 = 2112;
        v136 = uniqueID3;
        _os_log_impl(&dword_25B300000, v71, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): handle second time change with UUID:%@", buf, 0x16u);
      }
    }

    [(NPKPassSyncEngine *)self _handleStateChange:changeCopy attemptRecoverReconcileStateVersionMismatch:0];
  }

LABEL_57:
}

void __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = pk_Sync_log(a1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Sync_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) engineName];
      v11 = [*(a1 + 40) changeUUID];
      v12 = [*(a1 + 32) reconciledState];
      v15 = 138413314;
      v16 = v10;
      v17 = 1024;
      v18 = a2;
      v19 = 1024;
      v20 = a3;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): State change processed\n\tChange accepted: %d\n\tFull pass required: %d\n\tChange UUID: %@\n\tNew reconciled state: %@", &v15, 0x2Cu);
    }
  }

  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) changeUUID];
  [v13 _sendStateChangeProcessedWithUUID:v14 changeAccepted:a2 fullPassRequired:a3];
}

void __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_82(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (v2 >= 2)
  {
    if (v2 != 2)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v3 = [*(a1 + 32) reconciledState];
    v5 = [v3 passSyncStateByRemovingPassWithUniqueID:*(a1 + 48)];
  }

  else
  {
    v3 = [*(a1 + 32) reconciledState];
    v4 = [*(a1 + 40) syncStateItem];
    v5 = [v3 passSyncStateByAddingOrUpdatingSyncStateItem:v4];
  }

LABEL_7:
  v6 = [*(a1 + 32) reconciledState];
  v7 = pk_Sync_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Sync_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) engineName];
      v12 = [v6 syncStateHash];
      v13 = [v12 hexEncoding];
      v14 = [v5 syncStateHash];
      v15 = [v14 hexEncoding];
      v16 = 138412802;
      v17 = v11;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Setting new backup and reconciled state\n\tBackup state hash: %@\n\tReconciled state hash: %@", &v16, 0x20u);
    }
  }

  [*(a1 + 32) setBackupState:v6];
  [*(a1 + 32) setReconciledState:v5];
}

void __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 56);
  switch(v5)
  {
    case 2:
      v15 = *(a1 + 32);
      v16 = *(a1 + 48);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_3;
      v17[3] = &unk_2799467D0;
      v18 = v3;
      [v15 _requestRemovePassWithUniqueID:v16 completion:v17];
      v9 = v18;
      goto LABEL_7;
    case 1:
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) passData];
      v12 = [*(a1 + 40) syncStateItem];
      v13 = [*(a1 + 40) baseManifestHashForPartialUpdate];
      v14 = [*(a1 + 40) remoteAssetsForPartialUpdate];
      [v10 _requestUpdatePassData:v11 forSyncStateItem:v12 baseManifestHashForPartialUpdate:v13 remoteAssetsForPartialUpdate:v14 completion:v4];

      break;
    case 0:
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) passData];
      v8 = [*(a1 + 40) syncStateItem];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_2;
      v19[3] = &unk_2799467D0;
      v20 = v4;
      [v6 _requestAddPassData:v7 forSyncStateItem:v8 completion:v19];

      v9 = v20;
LABEL_7:

      break;
  }
}

uint64_t __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_87(uint64_t a1, char a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) processingChange];
  v5 = [v4 isEqual:*(a1 + 40)];

  if (v5)
  {
    v6 = [*(a1 + 32) setProcessingChange:0];
  }

  if ((a2 & 1) == 0)
  {
    v14 = pk_Sync_log(v6);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (!v15)
    {
      goto LABEL_18;
    }

    v17 = pk_Sync_log(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 32) engineName];
      v19 = [*(a1 + 40) syncStateItem];
      v22 = 138412546;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v20 = "Warning: Sync state engine (%@): Not applying change to reconciled state because we failed to apply it to the pass library\n\tSync state item: %@";
LABEL_16:
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, v20, &v22, 0x16u);
    }

LABEL_17:

    goto LABEL_18;
  }

  v7 = *(a1 + 64);
  v8 = pk_Sync_log(v6);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v7 != 1)
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    v17 = pk_Sync_log(v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 32) engineName];
      v19 = [*(a1 + 40) changeUUID];
      v22 = 138412546;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v20 = "Notice: Sync state engine (%@): Not applying change to reconciled state and accepting\n\tChange UUID: %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v9)
  {
    v11 = pk_Sync_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) engineName];
      v13 = [*(a1 + 40) changeUUID];
      v22 = 138412546;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Applying change to reconciled state and accepting\n\tChange UUID: %@", &v22, 0x16u);
    }
  }

  (*(*(a1 + 56) + 16))();
LABEL_18:
  (*(*(a1 + 48) + 16))();
  return [*(a1 + 32) _finishedProcessingChange:*(a1 + 40)];
}

- (void)handleStateChangeProcessedWithUUID:(id)d changeAccepted:(BOOL)accepted fullPassRequired:(BOOL)required
{
  requiredCopy = required;
  acceptedCopy = accepted;
  v75 = *MEMORY[0x277D85DE8];
  dCopy = d;
  candidateChange = [(NPKPassSyncEngine *)self candidateChange];
  v10 = pk_Sync_log(candidateChange);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Sync_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      *buf = 138413314;
      v15 = @"no";
      v68 = engineName;
      v69 = 2112;
      if (requiredCopy)
      {
        v15 = @"yes";
      }

      v70 = dCopy;
      v71 = 1024;
      *v72 = acceptedCopy;
      *&v72[4] = 2112;
      *&v72[6] = v15;
      v73 = 2112;
      v74 = candidateChange;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Received state change processed\n\tChange UUID: %@\n\tAccepted: %d\n\tFull pass required: %@\n\tOur candidate change: %@", buf, 0x30u);
    }
  }

  changeUUID = [candidateChange changeUUID];
  v17 = PKEqualObjects();
  if (v17)
  {
    if (acceptedCopy)
    {
      changeType = [candidateChange changeType];
      reconciledState = [(NPKPassSyncEngine *)self reconciledState];
      if (changeType > 1)
      {
        uniqueID = [candidateChange uniqueID];
        [reconciledState passSyncStateByRemovingPassWithUniqueID:uniqueID];
      }

      else
      {
        uniqueID = [candidateChange syncStateItem];
        [reconciledState passSyncStateByAddingOrUpdatingSyncStateItem:uniqueID];
      }
      v38 = ;

      [(NPKPassSyncEngine *)self setReconciledState:v38];
      v39 = pk_Sync_log([(NPKPassSyncEngine *)self setCandidateChange:0]);
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

      if (!v40)
      {
        goto LABEL_50;
      }

      v42 = pk_Sync_log(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        engineName2 = [(NPKPassSyncEngine *)self engineName];
        *buf = 138412546;
        v68 = engineName2;
        v69 = 2112;
        v70 = v38;
        _os_log_impl(&dword_25B300000, v42, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Reconciled state after state change processed: %@", buf, 0x16u);
      }

LABEL_49:

LABEL_50:
      [(NPKPassSyncEngine *)self _receivedStateChangeProcessed:candidateChange changeAccepted:acceptedCopy];
      [(NPKPassSyncEngine *)self _sendNextStateChange];
      goto LABEL_51;
    }

    uniqueID2 = [candidateChange uniqueID];
    v27 = uniqueID2;
    if (requiredCopy)
    {
      baseManifestHashForPartialUpdate = [candidateChange baseManifestHashForPartialUpdate];

      if (!baseManifestHashForPartialUpdate)
      {
        v55 = pk_Sync_log(v29);
        v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);

        if (v56)
        {
          v58 = pk_Sync_log(v57);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            engineName3 = [(NPKPassSyncEngine *)self engineName];
            *buf = 138412290;
            v68 = engineName3;
            _os_log_impl(&dword_25B300000, v58, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): got request for full pass, but we sent the full pass last time", buf, 0xCu);
          }
        }

        [(NPKPassSyncEngine *)self _unexpectedEventOccurred];
        goto LABEL_43;
      }

      v30 = [candidateChange copy];
      [v30 setBaseManifestHashForPartialUpdate:0];
      [v30 setRemoteAssetsForPartialUpdate:0];
      dataSource = [(NPKPassSyncEngine *)self dataSource];
      v32 = [dataSource passSyncEngine:self dataForPassWithUniqueID:v27];
      [v30 setPassData:v32];

      v34 = pk_Sync_log(v33);
      LODWORD(v32) = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

      if (v32)
      {
        v36 = pk_Sync_log(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          engineName4 = [(NPKPassSyncEngine *)self engineName];
          *buf = 138412546;
          v68 = engineName4;
          v69 = 2112;
          v70 = v30;
          _os_log_impl(&dword_25B300000, v36, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Resending change with full pass\n\tFull pass change: %@", buf, 0x16u);
        }
      }

      [(NPKPassSyncEngine *)self setCandidateChange:v30];
      [(NPKPassSyncEngine *)self _sendStateChange:v30];
    }

    else
    {
      if (uniqueID2)
      {
        libraryState = [(NPKPassSyncEngine *)self libraryState];
        syncStateItems = [libraryState syncStateItems];
        v66 = v27;
        v42 = [syncStateItems objectForKey:v27];

        syncStateItem = [candidateChange syncStateItem];
        v47 = PKEqualObjects();
        v48 = v47;
        v49 = pk_Sync_log(v47);
        v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);

        if ((v48 & 1) == 0)
        {
          v63 = syncStateItem;
          v38 = v66;
          if (v50)
          {
            v64 = pk_Sync_log(v51);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              engineName5 = [(NPKPassSyncEngine *)self engineName];
              *buf = 138412802;
              v68 = engineName5;
              v69 = 2112;
              v70 = v42;
              v71 = 2112;
              *v72 = v63;
              _os_log_impl(&dword_25B300000, v64, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): change not being accepted is expected because current library sync state item (%@) no longer matches change sync state item (%@)", buf, 0x20u);
            }
          }

          [(NPKPassSyncEngine *)self setCandidateChange:0];

          goto LABEL_49;
        }

        v52 = syncStateItem;
        v27 = v66;
        if (v50)
        {
          v53 = pk_Sync_log(v51);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            engineName6 = [(NPKPassSyncEngine *)self engineName];
            *buf = 138412802;
            v68 = engineName6;
            v69 = 2112;
            v70 = v42;
            v71 = 2112;
            *v72 = v52;
            _os_log_impl(&dword_25B300000, v53, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): change not being accepted is unexpected\n\tCurrent library sync state item: %@\n\tChange sync state item: %@", buf, 0x20u);
          }
        }

        [(NPKPassSyncEngine *)self _unexpectedEventOccurred];
        [(NPKPassSyncEngine *)self setCandidateChange:0];

        goto LABEL_43;
      }

      v60 = pk_Sync_log(0);
      v61 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);

      if (!v61)
      {
LABEL_43:

        [(NPKPassSyncEngine *)self _receivedStateChangeProcessed:candidateChange changeAccepted:0];
        goto LABEL_51;
      }

      v30 = pk_Sync_log(v62);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_ERROR, "Error: Candidate change has no unique ID!", buf, 2u);
      }
    }

    goto LABEL_43;
  }

  v21 = pk_Sync_log(v17);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

  if (v22)
  {
    v24 = pk_Sync_log(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      engineName7 = [(NPKPassSyncEngine *)self engineName];
      *buf = 138412802;
      v68 = engineName7;
      v69 = 2112;
      v70 = dCopy;
      v71 = 2112;
      *v72 = changeUUID;
      _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEFAULT, "Warning: Sync state engine (%@): Did not recognize change UUID (%@) in change state accepted message; candidate change UUID is %@", buf, 0x20u);
    }
  }

  [(NPKPassSyncEngine *)self _unexpectedEventOccurred];
LABEL_51:
}

- (void)handleReconciledStateUnrecognizedWithHash:(id)hash version:(unint64_t)version passSyncState:(id)state
{
  v31 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  stateCopy = state;
  v10 = pk_Sync_log(stateCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Sync_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      hexEncoding = [hashCopy hexEncoding];
      v23 = 138413058;
      v24 = engineName;
      v25 = 2112;
      v26 = hexEncoding;
      v27 = 2048;
      versionCopy = version;
      v29 = 2112;
      v30 = stateCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Received reconciled state unrecognized\n\tReconciled state hash: %@\n\tversion:%lu\n\tPass sync state: %@", &v23, 0x2Au);
    }
  }

  version = [stateCopy version];
  reconciledState = [(NPKPassSyncEngine *)self reconciledState];
  version2 = [reconciledState version];

  if (version2 == version)
  {
    reconciledState2 = [(NPKPassSyncEngine *)self reconciledState];
  }

  else
  {
    [(NPKPassSyncEngine *)self setMinSyncStateVersion:version];
    reconciledState3 = [(NPKPassSyncEngine *)self reconciledState];
    libraryState = [(NPKPassSyncEngine *)self libraryState];
    reconciledState2 = [reconciledState3 commonBaselinePassSyncStateWithState:libraryState version:version];
  }

  [(NPKPassSyncEngine *)self setCandidateState:0];
  [(NPKPassSyncEngine *)self setReconciledState:0];
  if (stateCopy)
  {
    v22 = [reconciledState2 commonBaselinePassSyncStateWithState:stateCopy version:{objc_msgSend(reconciledState2, "version")}];
    [(NPKPassSyncEngine *)self setCandidateState:v22];
    [(NPKPassSyncEngine *)self _sendProposedReconciledState:v22];
  }
}

- (void)handleProposedReconciledState:(id)state
{
  v22 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = pk_Sync_log(stateCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Sync_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      *buf = 138412546;
      v19 = engineName;
      v20 = 2112;
      v21 = stateCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Received proposed reconciled state\n\tProposed pass sync state: %@", buf, 0x16u);
    }
  }

  version = [stateCopy version];
  libraryState = [(NPKPassSyncEngine *)self libraryState];
  if (version != [libraryState version])
  {

    goto LABEL_9;
  }

  candidateState = [(NPKPassSyncEngine *)self candidateState];
  libraryState2 = [(NPKPassSyncEngine *)self libraryState];
  v17[1] = libraryState2;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v15 = [stateCopy stateIsSubsetOfUnionOfPassSyncStates:v14];

  if (!v15)
  {
LABEL_9:
    syncStateHash = [stateCopy syncStateHash];
    -[NPKPassSyncEngine _sendReconciledStateUnrecognizedWithHash:version:currentPassSyncState:](self, "_sendReconciledStateUnrecognizedWithHash:version:currentPassSyncState:", syncStateHash, [stateCopy version], 0);
    goto LABEL_10;
  }

  [(NPKPassSyncEngine *)self setBackupState:0];
  [(NPKPassSyncEngine *)self setReconciledState:stateCopy];
  syncStateHash = [stateCopy syncStateHash];
  [(NPKPassSyncEngine *)self _sendReconciledStateAcceptedWithHash:syncStateHash];
LABEL_10:
}

- (void)handleReconciledStateAcceptedWithHash:(id)hash
{
  v28 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  v5 = pk_Sync_log(hashCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Sync_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      hexEncoding = [hashCopy hexEncoding];
      v22 = 138412546;
      v23 = engineName;
      v24 = 2112;
      v25 = hexEncoding;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Received proposed reconciled state accepted\n\tReconciled state hash: %@", &v22, 0x16u);
    }
  }

  candidateState = [(NPKPassSyncEngine *)self candidateState];
  syncStateHash = [candidateState syncStateHash];
  v13 = PKEqualObjects();

  if (v13)
  {
    [(NPKPassSyncEngine *)self setReconciledState:candidateState];
    [(NPKPassSyncEngine *)self setCandidateState:0];
    [(NPKPassSyncEngine *)self _sendNextStateChange];
  }

  else
  {
    v15 = pk_Sync_log(v14);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v18 = pk_Sync_log(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        engineName2 = [(NPKPassSyncEngine *)self engineName];
        hexEncoding2 = [hashCopy hexEncoding];
        syncStateHash2 = [candidateState syncStateHash];
        v22 = 138412802;
        v23 = engineName2;
        v24 = 2112;
        v25 = hexEncoding2;
        v26 = 2112;
        v27 = syncStateHash2;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Warning: Sync state engine (%@): Did not recognize hash (%@) in reconciled state accepted message; reconciled state hash is %@", &v22, 0x20u);
      }
    }

    [(NPKPassSyncEngine *)self _unexpectedEventOccurred];
  }
}

- (void)setMinSyncStateVersion:(unint64_t)version
{
  v41 = *MEMORY[0x277D85DE8];
  libraryState = [(NPKPassSyncEngine *)self libraryState];
  version = [libraryState version];

  reconciledState = [(NPKPassSyncEngine *)self reconciledState];
  version2 = [reconciledState version];

  backupState = self->_backupState;
  if (backupState)
  {
    version3 = [(NPKPassSyncState *)backupState version];
  }

  else
  {
    version3 = version2;
  }

  if (version2 != version || version != version || version != version2 || version2 != version3)
  {
    v11 = pk_Sync_log(version3);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v14 = pk_Sync_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 134217984;
        versionCopy = version;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Requested to move to sync state version:%lu", &v37, 0xCu);
      }
    }

    [NPKPassSyncState setMinRemoteDevicePassSyncStateVersionSupport:version];
    dataSource = [(NPKPassSyncEngine *)self dataSource];
    v16 = [dataSource passSyncEngineNeedsUpdatedPassLibraryState:self];

    v17 = [v16 passSyncStateWithVersion:version];
    v18 = pk_Sync_log([(NPKPassSyncEngine *)self setLibraryState:v17]);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v21 = pk_Sync_log(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        engineName = [(NPKPassSyncEngine *)self engineName];
        v37 = 138412546;
        versionCopy = engineName;
        v39 = 2112;
        v40 = v17;
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): updated library state to match expected version:%@", &v37, 0x16u);
      }
    }

    reconciledState2 = [(NPKPassSyncEngine *)self reconciledState];
    v24 = [v16 updateReconcileState:reconciledState2 expectedVersion:version];

    v25 = pk_Sync_log([(NPKPassSyncEngine *)self setReconciledState:v24]);
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      v28 = pk_Sync_log(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        engineName2 = [(NPKPassSyncEngine *)self engineName];
        v37 = 138412546;
        versionCopy = engineName2;
        v39 = 2112;
        v40 = v24;
        _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): updated reconciled state to match expected version:%@", &v37, 0x16u);
      }
    }

    v30 = self->_backupState;
    if (v30)
    {
      v31 = [v16 updateReconcileState:v30 expectedVersion:version];
      v32 = pk_Sync_log([(NPKPassSyncEngine *)self setBackupState:v31]);
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

      if (v33)
      {
        v35 = pk_Sync_log(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          engineName3 = [(NPKPassSyncEngine *)self engineName];
          v37 = 138412546;
          versionCopy = engineName3;
          v39 = 2112;
          v40 = v31;
          _os_log_impl(&dword_25B300000, v35, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): updated backup state to match expected version:%@", &v37, 0x16u);
        }
      }
    }

    [(NPKPassSyncEngine *)self setCandidateChange:0];
  }
}

- (void)setLibraryState:(id)state
{
  v19 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if ((PKEqualObjects() & 1) == 0)
  {
    version = [stateCopy version];
    v7 = +[NPKPassSyncState minRemoteDevicePassSyncStateVersionSupport];
    if (version != v7)
    {
      v8 = pk_Sync_log(v7);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

      if (v9)
      {
        v11 = pk_Sync_log(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          engineName = [(NPKPassSyncEngine *)self engineName];
          v13 = 138412802;
          v14 = engineName;
          v15 = 2048;
          version2 = [stateCopy version];
          v17 = 2048;
          v18 = +[NPKPassSyncState minRemoteDevicePassSyncStateVersionSupport];
          _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Warning: Sync state engine (%@): setting new library state with version:%lu, expected:%lu", &v13, 0x20u);
        }
      }
    }

    objc_storeStrong(&self->_libraryState, state);
    [(NPKPassSyncEngine *)self _engineStateChanged];
  }
}

- (NPKPassSyncState)libraryState
{
  libraryState = self->_libraryState;
  if (libraryState)
  {
    v3 = libraryState;
  }

  else
  {
    v3 = [[NPKPassSyncState alloc] initWithVersion:+[NPKPassSyncState minRemoteDevicePassSyncStateVersionSupport]];
  }

  return v3;
}

- (void)setBackupState:(id)state
{
  stateCopy = state;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_backupState, state);
    [(NPKPassSyncEngine *)self _engineStateChanged];
  }
}

- (void)setReconciledState:(id)state
{
  stateCopy = state;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_reconciledState, state);
    [(NPKPassSyncEngine *)self _engineStateChanged];
  }
}

- (NPKPassSyncState)reconciledState
{
  reconciledState = self->_reconciledState;
  if (reconciledState)
  {
    v3 = reconciledState;
  }

  else
  {
    v3 = [[NPKPassSyncState alloc] initWithVersion:+[NPKPassSyncState minRemoteDevicePassSyncStateVersionSupport]];
  }

  return v3;
}

- (void)setCandidateState:(id)state
{
  stateCopy = state;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_candidateState, state);
    [(NPKPassSyncEngine *)self _engineStateChanged];
  }
}

- (NPKPassSyncState)candidateState
{
  candidateState = self->_candidateState;
  if (candidateState)
  {
    v3 = candidateState;
  }

  else
  {
    v3 = [[NPKPassSyncState alloc] initWithVersion:+[NPKPassSyncState minRemoteDevicePassSyncStateVersionSupport]];
  }

  return v3;
}

- (void)setCandidateChange:(id)change
{
  changeCopy = change;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_candidateChange, change);
    [(NPKPassSyncEngine *)self _engineStateChanged];
  }
}

- (void)_sendNextStateChange
{
  v81 = *MEMORY[0x277D85DE8];
  libraryState = [(NPKPassSyncEngine *)self libraryState];
  reconciledState = [(NPKPassSyncEngine *)self reconciledState];
  v67 = 0;
  v68 = 0;
  v66 = 0;
  [libraryState compareWithBaselinePassSyncState:reconciledState outAddedSyncItems:&v68 outUpdatedSyncItems:&v67 outRemovedSyncItems:&v66];
  v5 = v68;
  v6 = v67;
  v64 = v66;

  uUID = [MEMORY[0x277CCAD78] UUID];
  reconciledState2 = [(NPKPassSyncEngine *)self reconciledState];
  syncStateHash = [reconciledState2 syncStateHash];

  reconciledState3 = [(NPKPassSyncEngine *)self reconciledState];
  version = [reconciledState3 version];

  v11 = pk_Sync_log(v10);
  LODWORD(reconciledState) = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  v63 = uUID;
  if (reconciledState)
  {
    v13 = pk_Sync_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      libraryState2 = [(NPKPassSyncEngine *)self libraryState];
      [libraryState2 syncStateHash];
      v16 = v15 = v6;
      hexEncoding = [v16 hexEncoding];
      reconciledState4 = [(NPKPassSyncEngine *)self reconciledState];
      syncStateHash2 = [reconciledState4 syncStateHash];
      hexEncoding2 = [syncStateHash2 hexEncoding];
      *buf = 138413570;
      v70 = engineName;
      v71 = 2112;
      v72 = hexEncoding;
      v73 = 2112;
      v74 = hexEncoding2;
      v75 = 2112;
      v76 = v5;
      v77 = 2112;
      v78 = v15;
      v79 = 2112;
      v80 = v64;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Compared library state with manifestHash:%@ with reconcileState:%@\n addedID:%@\n updatedIDs:%@\n removedIDs:%@\n", buf, 0x3Eu);

      uUID = v63;
      v6 = v15;
    }
  }

  v61 = v5;
  if ([v5 count] || objc_msgSend(v6, "count"))
  {
    v59 = v6;
    if ([v6 count])
    {
      firstObject = [v6 firstObject];
      reconciledState5 = [(NPKPassSyncEngine *)self reconciledState];
      syncStateItems = [reconciledState5 syncStateItems];
      uniqueID = [firstObject uniqueID];
      v25 = [syncStateItems objectForKey:uniqueID];

      manifest = [v25 manifest];
      manifestHash = [v25 manifestHash];

      if (manifest)
      {
        dataSource = [(NPKPassSyncEngine *)self dataSource];
        uniqueID2 = [firstObject uniqueID];
        v65 = 0;
        v30 = [dataSource passSyncEngine:self partialDataForPassWithUniqueID:uniqueID2 baseManifest:manifest outRemoteAssets:&v65];
        v31 = v65;

        v32 = 1;
        if (v30)
        {
LABEL_14:
          v35 = [NPKPassSyncChange alloc];
          uniqueID3 = [firstObject uniqueID];
          v37 = v35;
          v38 = syncStateHash;
          v39 = [(NPKPassSyncChange *)v37 initWithChangeUUID:uUID reconciledStateHash:syncStateHash reconciledStateVersion:version changeType:v32 uniqueID:uniqueID3 syncStateItem:firstObject passData:v30 baseManifestHashForPartialUpdate:manifestHash remoteAssetsForPartialUpdate:v31];

          v6 = v59;
          v40 = v64;
          goto LABEL_15;
        }
      }

      else
      {
        v31 = 0;
        v32 = 1;
      }
    }

    else
    {
      firstObject = [v5 firstObject];
      v31 = 0;
      v32 = 0;
      manifestHash = 0;
      manifest = 0;
    }

    dataSource2 = [(NPKPassSyncEngine *)self dataSource];
    uniqueID4 = [firstObject uniqueID];
    v30 = [dataSource2 passSyncEngine:self dataForPassWithUniqueID:uniqueID4];

    v31 = 0;
    manifestHash = 0;
    goto LABEL_14;
  }

  v40 = v64;
  if (![v64 count])
  {
    v51 = pk_Sync_log(0);
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);

    v38 = syncStateHash;
    if (!v52)
    {
      goto LABEL_25;
    }

    v39 = pk_Sync_log(v53);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      engineName2 = [(NPKPassSyncEngine *)self engineName];
      reconciledState6 = [(NPKPassSyncEngine *)self reconciledState];
      syncStateHash3 = [reconciledState6 syncStateHash];
      hexEncoding3 = [syncStateHash3 hexEncoding];
      *buf = 138412546;
      v70 = engineName2;
      v71 = 2112;
      v72 = hexEncoding3;
      _os_log_impl(&dword_25B300000, v39, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): No state changes to send; settling on reconciled state hash %@.", buf, 0x16u);

      v38 = syncStateHash;
      v40 = v64;
    }

    goto LABEL_24;
  }

  firstObject = [v64 firstObject];
  v49 = [NPKPassSyncChange alloc];
  manifest = [firstObject uniqueID];
  v50 = v49;
  v38 = syncStateHash;
  v39 = [(NPKPassSyncChange *)v50 initWithChangeUUID:uUID reconciledStateHash:syncStateHash reconciledStateVersion:version changeType:2 uniqueID:manifest syncStateItem:0 passData:0];
LABEL_15:

  if (v39)
  {
    candidateChange = [(NPKPassSyncEngine *)self candidateChange];
    if (candidateChange)
    {
      v42 = [v39 isEqualToChangeIgnoringUUID:candidateChange];
      if (v42)
      {
        v43 = pk_Sync_log(v42);
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);

        if (v44)
        {
          v46 = pk_Sync_log(v45);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            engineName3 = [(NPKPassSyncEngine *)self engineName];
            *buf = 138412802;
            v70 = engineName3;
            v71 = 2112;
            v72 = candidateChange;
            v73 = 2112;
            v74 = v39;
            _os_log_impl(&dword_25B300000, v46, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Outgoing change is identical to candidate change except for UUID; changing UUID to match candidate change\n\tCandidate change: %@\n\tOutgoing change: %@", buf, 0x20u);
          }
        }

        changeUUID = [candidateChange changeUUID];
        [v39 setChangeUUID:changeUUID];

        v38 = syncStateHash;
      }
    }

    [(NPKPassSyncEngine *)self setCandidateChange:v39];
    [(NPKPassSyncEngine *)self _sendStateChange:v39];

LABEL_24:
  }

LABEL_25:
}

- (void)_shouldProcessAddOrUpdateChangeOfType:(unint64_t)type changeSyncStateItem:(id)item librarySyncStateItem:(id)stateItem reconciledSyncStateItem:(id)syncStateItem candidateChange:(id)change shouldApplyToPassLibrary:(BOOL *)library shouldApplyToReconciledState:(BOOL *)state
{
  stateCopy5 = state;
  v84 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  stateItemCopy = stateItem;
  syncStateItemCopy = syncStateItem;
  changeCopy = change;
  v20 = changeCopy;
  if (type != 1 || stateItemCopy)
  {
    v28 = PKEqualObjects();
    if (v28)
    {
      v29 = 1;
      goto LABEL_48;
    }

    v30 = pk_Sync_log(v28);
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

    if (v31)
    {
      v33 = pk_Sync_log(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        engineName = [(NPKPassSyncEngine *)self engineName];
        *buf = 138413058;
        v77 = engineName;
        v78 = 2112;
        v79 = syncStateItemCopy;
        v80 = 2112;
        v81 = stateItemCopy;
        v82 = 2112;
        v83 = itemCopy;
        _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Pass has been added/updated in local library also.\n\tReconciled sync state item: %@\n\tLocal library sync state item: %@\n\tChange sync state item: %@", buf, 0x2Au);
      }
    }

    sequenceCounter = [stateItemCopy sequenceCounter];
    sequenceCounter2 = [itemCopy sequenceCounter];
    v36 = sequenceCounter2;
    if (!sequenceCounter && sequenceCounter2)
    {
LABEL_14:

      v29 = 1;
LABEL_44:
      v69 = 1;
      goto LABEL_45;
    }

    if (sequenceCounter && sequenceCounter2)
    {
      if ([sequenceCounter compare:sequenceCounter2]!= 1)
      {
        goto LABEL_14;
      }

      stateCopy3 = state;
      v37 = pk_Sync_log(1);
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);

      if (v38)
      {
        v40 = pk_Sync_log(v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          engineName2 = [(NPKPassSyncEngine *)self engineName];
          *buf = 138412802;
          v77 = engineName2;
          v78 = 2112;
          v79 = sequenceCounter;
          v80 = 2112;
          v81 = v36;
          v42 = "Notice: Sync state engine (%@): local pass has higher sequence counter (%@) than change (%@); not applying change to local library";
          v43 = v40;
          v44 = 32;
LABEL_25:
          _os_log_impl(&dword_25B300000, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);

          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v74 = sequenceCounter;
      stateCopy3 = state;
      selfCopy = self;
      v46 = itemCopy;
      libraryCopy = library;
      v48 = syncStateItemCopy;
      v49 = v20;
      v50 = selfCopy;
      engineRole = selfCopy->_engineRole;
      v52 = pk_Sync_log(sequenceCounter2);
      v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);

      if (!engineRole)
      {
        v20 = v49;
        syncStateItemCopy = v48;
        library = libraryCopy;
        itemCopy = v46;
        v71 = v50;
        sequenceCounter = v74;
        stateCopy5 = state;
        if (v53)
        {
          v72 = pk_Sync_log(v54);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            engineName3 = [(NPKPassSyncEngine *)v71 engineName];
            *buf = 138412290;
            v77 = engineName3;
            _os_log_impl(&dword_25B300000, v72, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Applying change in the absence of sync state counters", buf, 0xCu);
          }
        }

        goto LABEL_14;
      }

      v20 = v49;
      syncStateItemCopy = v48;
      library = libraryCopy;
      itemCopy = v46;
      self = v50;
      sequenceCounter = v74;
      if (v53)
      {
        v40 = pk_Sync_log(v54);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          engineName2 = [(NPKPassSyncEngine *)self engineName];
          *buf = 138412290;
          v77 = engineName2;
          v42 = "Notice: Sync state engine (%@): Not applying change in the absence of sync state counters";
          v43 = v40;
          v44 = 12;
          goto LABEL_25;
        }

LABEL_26:
      }
    }

    stateCopy5 = stateCopy3;
    goto LABEL_28;
  }

  v21 = pk_Sync_log(changeCopy);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

  if (!v22)
  {
    goto LABEL_29;
  }

  sequenceCounter = pk_Sync_log(v23);
  if (os_log_type_enabled(sequenceCounter, OS_LOG_TYPE_DEFAULT))
  {
    engineName4 = [(NPKPassSyncEngine *)self engineName];
    uniqueID = [itemCopy uniqueID];
    libraryState = [(NPKPassSyncEngine *)self libraryState];
    *buf = 138412802;
    v77 = engineName4;
    v78 = 2112;
    v79 = uniqueID;
    v80 = 2112;
    v81 = libraryState;
    _os_log_impl(&dword_25B300000, sequenceCounter, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Ignoring request to apply pass update with unique ID %@ to local library since the pass is not in our library state: %@", buf, 0x20u);

    stateCopy5 = state;
  }

LABEL_28:

LABEL_29:
  if (self->_engineRole != 1)
  {
LABEL_47:
    v29 = 0;
LABEL_48:
    v69 = 1;
    if (!library)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v55 = PKEqualObjects();
  if (v55)
  {
    v56 = pk_Sync_log(v55);
    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);

    if (v57)
    {
      sequenceCounter = pk_Sync_log(v58);
      if (os_log_type_enabled(sequenceCounter, OS_LOG_TYPE_DEFAULT))
      {
        engineName5 = [(NPKPassSyncEngine *)self engineName];
        *buf = 138413058;
        v77 = engineName5;
        v78 = 2112;
        v79 = stateItemCopy;
        v80 = 2112;
        v81 = itemCopy;
        v82 = 2112;
        v83 = v20;
        _os_log_impl(&dword_25B300000, sequenceCounter, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Applying change to reconciled state because it matches our library state\n\tLocal library sync state item: %@\n\tChange sync state item: %@\n\tCandidate change: %@", buf, 0x2Au);
LABEL_42:

        goto LABEL_43;
      }

      goto LABEL_43;
    }

    goto LABEL_47;
  }

  uniqueID2 = [v20 uniqueID];
  uniqueID3 = [itemCopy uniqueID];
  v62 = [uniqueID2 isEqualToString:uniqueID3];

  v64 = pk_Sync_log(v63);
  v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);

  if (!v62)
  {
    if (v65)
    {
      sequenceCounter = pk_Sync_log(v66);
      if (os_log_type_enabled(sequenceCounter, OS_LOG_TYPE_DEFAULT))
      {
        engineName5 = [(NPKPassSyncEngine *)self engineName];
        uniqueID4 = [itemCopy uniqueID];
        *buf = 138412802;
        v77 = engineName5;
        v78 = 2112;
        v79 = uniqueID4;
        v80 = 2112;
        v81 = v20;
        _os_log_impl(&dword_25B300000, sequenceCounter, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Applying change to reconciled state even though we have an outstanding candidate change for pass with unique ID %@: %@", buf, 0x20u);

        goto LABEL_42;
      }

LABEL_43:
      v29 = 0;
      goto LABEL_44;
    }

    goto LABEL_47;
  }

  if (v65)
  {
    sequenceCounter = pk_Sync_log(v66);
    if (os_log_type_enabled(sequenceCounter, OS_LOG_TYPE_DEFAULT))
    {
      engineName6 = [(NPKPassSyncEngine *)self engineName];
      uniqueID5 = [itemCopy uniqueID];
      *buf = 138412802;
      v77 = engineName6;
      v78 = 2112;
      v79 = uniqueID5;
      v80 = 2112;
      v81 = v20;
      _os_log_impl(&dword_25B300000, sequenceCounter, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Not applying change to reconciled state since we are not applying it to the local library and have an outstanding candidate change for pass with unique ID %@: %@", buf, 0x20u);
    }

    v29 = 0;
    v69 = 0;
LABEL_45:

    if (!library)
    {
      goto LABEL_50;
    }

LABEL_49:
    *library = v29;
    goto LABEL_50;
  }

  v29 = 0;
  v69 = 0;
  if (library)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (stateCopy5)
  {
    *stateCopy5 = v69;
  }
}

- (void)_sendStateChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = pk_Sync_log(changeCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Sync_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      v11 = 138412546;
      v12 = engineName;
      v13 = 2112;
      v14 = changeCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sending state change\n\tChange: %@", &v11, 0x16u);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  [delegate passSyncEngine:self sendStateChange:changeCopy];
}

- (void)_sendStateChangeProcessedWithUUID:(id)d changeAccepted:(BOOL)accepted fullPassRequired:(BOOL)required
{
  requiredCopy = required;
  acceptedCopy = accepted;
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = pk_Sync_log(dCopy);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_Sync_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      v14 = @"no";
      *v17 = 138413058;
      *&v17[4] = engineName;
      if (acceptedCopy)
      {
        v15 = @"yes";
      }

      else
      {
        v15 = @"no";
      }

      if (requiredCopy)
      {
        v14 = @"yes";
      }

      *&v17[12] = 2112;
      *&v17[14] = dCopy;
      v18 = 2112;
      v19 = v15;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sending state change processed\n\tChange UUID: %@\n\tChange accepted: %@\n\tFull pass required: %@", v17, 0x2Au);
    }
  }

  v16 = [(NPKPassSyncEngine *)self delegate:*v17];
  [v16 passSyncEngine:self sendStateChangeProcessedWithUUID:dCopy changeAccepted:acceptedCopy fullPassRequired:requiredCopy];
}

- (void)_sendReconciledStateUnrecognizedWithHash:(id)hash version:(unint64_t)version currentPassSyncState:(id)state
{
  v25 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  stateCopy = state;
  v10 = pk_Sync_log(stateCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Sync_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      hexEncoding = [hashCopy hexEncoding];
      v17 = 138413058;
      v18 = engineName;
      v19 = 2112;
      v20 = hexEncoding;
      v21 = 2048;
      versionCopy = version;
      v23 = 2112;
      v24 = stateCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sending reconciled state unrecognized\n\tReconciled state hash: %@\n\tversion:%lu\n\tPass sync state: %@", &v17, 0x2Au);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  [delegate passSyncEngine:self sendReconciledStateUnrecognizedWithHash:hashCopy version:version currentPassSyncState:stateCopy];
}

- (void)_sendReconciledStateAcceptedWithHash:(id)hash
{
  v16 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  v5 = pk_Sync_log(hashCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Sync_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      hexEncoding = [hashCopy hexEncoding];
      v12 = 138412546;
      v13 = engineName;
      v14 = 2112;
      v15 = hexEncoding;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sending reconciled state accepted\n\tReconciled state hash: %@", &v12, 0x16u);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  [delegate passSyncEngine:self sendReconciledStateAcceptedWithHash:hashCopy];
}

- (void)_sendProposedReconciledState:(id)state
{
  v15 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = pk_Sync_log(stateCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Sync_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      v11 = 138412546;
      v12 = engineName;
      v13 = 2112;
      v14 = stateCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sending proposed reconciled state\n\tProposed pass sync state: %@", &v11, 0x16u);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  [delegate passSyncEngine:self sendProposedReconciledState:stateCopy];
}

- (void)_requestAddPassData:(id)data forSyncStateItem:(id)item completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  itemCopy = item;
  completionCopy = completion;
  v11 = pk_Sync_log(completionCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Sync_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      npkDescription = [dataCopy npkDescription];
      *buf = 138412802;
      v24 = engineName;
      v25 = 2112;
      v26 = npkDescription;
      v27 = 2112;
      v28 = itemCopy;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Requesting that delegate add pass to local pass library\n\tData: %@\n\tSync state item: %@", buf, 0x20u);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__NPKPassSyncEngine__requestAddPassData_forSyncStateItem_completion___block_invoke;
  v20[3] = &unk_279947AF8;
  v20[4] = self;
  v21 = itemCopy;
  v22 = completionCopy;
  v18 = completionCopy;
  v19 = itemCopy;
  [delegate passSyncEngine:self requestsAddPassData:dataCopy forSyncStateItem:v19 completion:v20];
}

uint64_t __69__NPKPassSyncEngine__requestAddPassData_forSyncStateItem_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = pk_Sync_log(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Sync_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) engineName];
      v9 = *(a1 + 40);
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Delegate invoked add completion\n\tsync state item: %@\n\tadded: %d", &v11, 0x1Cu);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)_requestUpdatePassData:(id)data forSyncStateItem:(id)item baseManifestHashForPartialUpdate:(id)update remoteAssetsForPartialUpdate:(id)partialUpdate completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  itemCopy = item;
  updateCopy = update;
  partialUpdateCopy = partialUpdate;
  completionCopy = completion;
  v17 = pk_Sync_log(completionCopy);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v20 = pk_Sync_log(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      npkDescription = [dataCopy npkDescription];
      *buf = 138413314;
      v30 = engineName;
      v31 = 2112;
      v32 = npkDescription;
      v33 = 2112;
      v34 = itemCopy;
      v35 = 2112;
      v36 = updateCopy;
      v37 = 2112;
      v38 = partialUpdateCopy;
      _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Requesting that delegate update pass in local pass library\n\tData: %@\n\tSync state item: %@\n\tBase manifest hash for partial update: %@\n\tRemote assets for partial update: %@", buf, 0x34u);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __134__NPKPassSyncEngine__requestUpdatePassData_forSyncStateItem_baseManifestHashForPartialUpdate_remoteAssetsForPartialUpdate_completion___block_invoke;
  v26[3] = &unk_279947B20;
  v26[4] = self;
  v27 = itemCopy;
  v28 = completionCopy;
  v24 = completionCopy;
  v25 = itemCopy;
  [delegate passSyncEngine:self requestsUpdatePassData:dataCopy forSyncStateItem:v25 baseManifestHashForPartialUpdate:updateCopy remoteAssetsForPartialUpdate:partialUpdateCopy completion:v26];
}

uint64_t __134__NPKPassSyncEngine__requestUpdatePassData_forSyncStateItem_baseManifestHashForPartialUpdate_remoteAssetsForPartialUpdate_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = pk_Sync_log(a1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Sync_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) engineName];
      v11 = *(a1 + 40);
      v13 = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 1024;
      v18 = a2;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Delegate invoked update completion\n\tsync state item: %@\n\tupdated: %d", &v13, 0x1Cu);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, a2, a3);
  }

  return result;
}

- (void)_requestRemovePassWithUniqueID:(id)d completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = pk_Sync_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Sync_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      *buf = 138412546;
      v20 = engineName;
      v21 = 2112;
      v22 = dCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Requesting that delegate remove pass in local pass library\n\tunique ID: %@", buf, 0x16u);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__NPKPassSyncEngine__requestRemovePassWithUniqueID_completion___block_invoke;
  v16[3] = &unk_279947AF8;
  v16[4] = self;
  v17 = dCopy;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = dCopy;
  [delegate passSyncEngine:self requestsRemovePassWithUniqueID:v15 completion:v16];
}

uint64_t __63__NPKPassSyncEngine__requestRemovePassWithUniqueID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = pk_Sync_log(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Sync_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) engineName];
      v9 = *(a1 + 40);
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Delegate invoked remove completion\n\tunique ID: %@\n\tremoved: %d", &v11, 0x1Cu);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)_unexpectedEventOccurred
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_Sync_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Sync_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      v9 = 138412290;
      v10 = engineName;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): encountered unexpected event", &v9, 0xCu);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passSyncEngineEncounteredUnexpectedEvent:self];
  }
}

- (void)_engineStateChanged
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_Sync_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Sync_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      v9 = 138412290;
      v10 = engineName;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Engine state changed", &v9, 0xCu);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passSyncEngineStateChanged:self];
  }
}

- (void)_receivedStateChangeProcessed:(id)processed changeAccepted:(BOOL)accepted
{
  acceptedCopy = accepted;
  processedCopy = processed;
  delegate = [(NPKPassSyncEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passSyncEngine:self receivedStateChangeProcessed:processedCopy changeAccepted:acceptedCopy];
  }
}

- (void)_finishedProcessingChange:(id)change
{
  changeCopy = change;
  delegate = [(NPKPassSyncEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passSyncEngine:self finishedProcessingChange:changeCopy];
  }
}

- (NPKPassSyncEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NPKPassSyncEngineDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end