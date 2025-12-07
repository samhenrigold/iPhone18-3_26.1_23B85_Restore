@interface CCDifferentialUpdater
+ (id)updaterForSet:(id)set withRequest:(id)request setWriter:(id)writer changeNotifier:(id)notifier timeout:(double)timeout;
- (BOOL)_clearSetTombstoneStatus;
- (BOOL)_deleteStaleItems;
- (BOOL)_diffUpdateItemsWithContents:(id)contents metaContents:(id)metaContents;
- (BOOL)_finishWithRevisionToken:(id)token designateAsFullSet:(BOOL)set;
- (BOOL)_tombstoneSet;
- (BOOL)addItemsWithContents:(id)contents metaContents:(id)metaContents;
- (BOOL)finishUpdateWithRevisionToken:(id)token designateAsFullSet:(BOOL)set;
- (BOOL)removeSourceItemIdentifier:(id)identifier;
- (BOOL)updateRemoteDeviceUUID:(id)d options:(unsigned __int16)options mergeableDelta:(id)delta peerDeviceSite:(id)site relayedDeviceSites:(id)sites;
- (BOOL)waitForCommit:(BOOL)commit;
- (CCDifferentialUpdater)initWithSet:(id)set request:(id)request setWriter:(id)writer database:(id)database changeNotifier:(id)notifier completion:(id)completion;
- (id)_readLocalSourcePriorsFromDatabase;
- (id)description;
- (unint64_t)priorVersion;
- (void)_complete:(BOOL)_complete;
- (void)_tombstoneSet;
- (void)abort;
@end

@implementation CCDifferentialUpdater

- (id)_readLocalSourcePriorsFromDatabase
{
  priorLocalSourceVersion = [(CCDatabaseUpdater *)self->_databaseUpdater priorLocalSourceVersion];
  unsignedLongLongValue = [priorLocalSourceVersion unsignedLongLongValue];

  priorLocalInstanceCount = [(CCDatabaseUpdater *)self->_databaseUpdater priorLocalInstanceCount];
  unsignedIntegerValue = [priorLocalInstanceCount unsignedIntegerValue];

  priorLocalDonationDate = [(CCDatabaseUpdater *)self->_databaseUpdater priorLocalDonationDate];
  priorLocalFullSetDonationDate = [(CCDatabaseUpdater *)self->_databaseUpdater priorLocalFullSetDonationDate];
  priorLocalSourceRevisionToken = [(CCDatabaseUpdater *)self->_databaseUpdater priorLocalSourceRevisionToken];
  v10 = [objc_alloc(MEMORY[0x1E69939E8]) initWithVersion:unsignedLongLongValue instanceCount:unsignedIntegerValue donationDate:priorLocalDonationDate fullSetDonationDate:priorLocalFullSetDonationDate revisionToken:priorLocalSourceRevisionToken options:32 * (priorLocalFullSetDonationDate == 0)];

  return v10;
}

- (BOOL)_deleteStaleItems
{
  databaseUpdater = self->_databaseUpdater;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__CCDifferentialUpdater__deleteStaleItems__block_invoke;
  v4[3] = &unk_1E85C3178;
  v4[4] = self;
  return [(CCDatabaseUpdater *)databaseUpdater enumerateUnmodifiedLocalInstancesUsingBlock:v4];
}

uint64_t __42__CCDifferentialUpdater__deleteStaleItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if ((*(v4 + 56) & 1) == 0)
  {
    if ([*(v4 + 40) hasUnmodifiedSourceItemIdHash:v3] & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 8), "deleteSourceItemIdHash:", v3))
    {
      v5 = 1;
      goto LABEL_6;
    }

    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __42__CCDifferentialUpdater__deleteStaleItems__block_invoke_cold_1();
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

+ (id)updaterForSet:(id)set withRequest:(id)request setWriter:(id)writer changeNotifier:(id)notifier timeout:(double)timeout
{
  setCopy = set;
  requestCopy = request;
  writerCopy = writer;
  notifierCopy = notifier;
  v15 = dispatch_semaphore_create(0);
  v16 = dispatch_semaphore_create(0);
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __84__CCDifferentialUpdater_updaterForSet_withRequest_setWriter_changeNotifier_timeout___block_invoke;
  v42[3] = &unk_1E85C3100;
  v44 = v45;
  v17 = v16;
  v43 = v17;
  v18 = MEMORY[0x1DA74EA40](v42);
  v19 = _sharedQueue(v18);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__CCDifferentialUpdater_updaterForSet_withRequest_setWriter_changeNotifier_timeout___block_invoke_2;
  block[3] = &unk_1E85C3150;
  v20 = requestCopy;
  v32 = v20;
  v21 = writerCopy;
  v33 = v21;
  v39 = &v47;
  v22 = setCopy;
  v34 = v22;
  v23 = notifierCopy;
  v35 = v23;
  v24 = v18;
  v38 = v24;
  v25 = v15;
  v36 = v25;
  v26 = v17;
  timeoutCopy = timeout;
  v37 = v26;
  v40 = v45;
  dispatch_async(v19, block);

  v27 = dispatch_time(0, (timeout * 1000000000.0));
  if (dispatch_semaphore_wait(v25, v27))
  {
    v28 = __biome_log_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      +[CCDifferentialUpdater updaterForSet:withRequest:setWriter:changeNotifier:timeout:];
    }

    (*(v24 + 2))(v24, 0);
    v29 = 0;
  }

  else
  {
    v29 = v48[5];
  }

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v47, 8);

  return v29;
}

void __84__CCDifferentialUpdater_updaterForSet_withRequest_setWriter_changeNotifier_timeout___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v33 = v3;
    _os_log_impl(&dword_1DA444000, v2, OS_LOG_TYPE_DEFAULT, "Submitting transaction for request %@", buf, 0xCu);
  }

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __84__CCDifferentialUpdater_updaterForSet_withRequest_setWriter_changeNotifier_timeout___block_invoke_11;
  v25 = &unk_1E85C3128;
  v4 = *(a1 + 40);
  v5 = *(a1 + 88);
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v26 = v11;
  v27 = v10;
  v12 = *(a1 + 80);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v12;
  *(&v16 + 1) = v5;
  v28 = v15;
  v29 = v16;
  v31 = *(a1 + 104);
  v30 = *(a1 + 96);
  v17 = [v4 submitDatabaseTransactionUsingBlock:&v22];
  v18 = *(*(*(a1 + 88) + 8) + 40);
  if (!v18)
  {
    dispatch_semaphore_signal(*(a1 + 64));
    v18 = *(*(*(a1 + 88) + 8) + 40);
  }

  [v18 setDidCommit:{v17, v22, v23, v24, v25}];
  v19 = __biome_log_for_category();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"aborted";
    v21 = *(a1 + 32);
    if (v17)
    {
      v20 = @"committed";
    }

    *buf = 138412546;
    v33 = v20;
    v34 = 2112;
    v35 = v21;
    _os_log_impl(&dword_1DA444000, v19, OS_LOG_TYPE_DEFAULT, "Database update %@ for request %@", buf, 0x16u);
  }
}

uint64_t __84__CCDifferentialUpdater_updaterForSet_withRequest_setWriter_changeNotifier_timeout___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [[CCDifferentialUpdater alloc] initWithSet:*(a1 + 32) request:*(a1 + 40) setWriter:*(a1 + 48) database:v5 changeNotifier:*(a1 + 56) completion:*(a1 + 80)];

  v7 = *(*(a1 + 88) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 88) + 8) + 40))
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __84__CCDifferentialUpdater_updaterForSet_withRequest_setWriter_changeNotifier_timeout___block_invoke_11_cold_1();
    }

    goto LABEL_9;
  }

  dispatch_semaphore_signal(*(a1 + 64));
  if ((_recursivelyWaitForTransactionProgress(*(a1 + 72), *(*(*(a1 + 88) + 8) + 40), 0, 0.0, *(a1 + 104)) & 1) == 0)
  {
    [*(*(*(a1 + 88) + 8) + 40) _interrupt];
    [*(a1 + 40) timeout];
    goto LABEL_9;
  }

  if (*(*(*(a1 + 96) + 8) + 24) != 1)
  {
LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  *a3 = [*(*(*(a1 + 88) + 8) + 40) modifiedRowCount];
  v9 = *(*(*(a1 + 96) + 8) + 24);
  return v9 & 1;
}

- (CCDifferentialUpdater)initWithSet:(id)set request:(id)request setWriter:(id)writer database:(id)database changeNotifier:(id)notifier completion:(id)completion
{
  v72 = *MEMORY[0x1E69E9840];
  setCopy = set;
  requestCopy = request;
  writerCopy = writer;
  databaseCopy = database;
  notifierCopy = notifier;
  completionCopy = completion;
  v65.receiver = self;
  v65.super_class = CCDifferentialUpdater;
  v20 = [(CCDifferentialUpdater *)&v65 init];
  if (!v20)
  {
LABEL_34:
    v29 = v20;
    goto LABEL_35;
  }

  v21 = [MEMORY[0x1E69939D8] updaterForDonateRequest:requestCopy toDatabase:databaseCopy];
  databaseUpdater = v20->_databaseUpdater;
  v20->_databaseUpdater = v21;

  if (v20->_databaseUpdater)
  {
    v23 = [requestCopy description];
    requestDescription = v20->_requestDescription;
    v20->_requestDescription = v23;

    objc_storeStrong(&v20->_set, set);
    objc_storeStrong(&v20->_setWriter, writer);
    v20->_incrementalErrorCode = 0;
    v25 = v20->_databaseUpdater;
    v26 = requestCopy;
    v27 = v25;
    if ([v26 isRemoteSync])
    {
      v28 = 3;
LABEL_24:

      v20->_updateType = v28;
      v43 = MEMORY[0x1DA74EA40](completionCopy);
      completion = v20->_completion;
      v20->_completion = v43;

      objc_storeStrong(&v20->_changeNotifier, notifier);
      if (v20->_updateType != 3)
      {
        _readLocalSourcePriorsFromDatabase = [(CCDifferentialUpdater *)v20 _readLocalSourcePriorsFromDatabase];
        priors = v20->_priors;
        v20->_priors = _readLocalSourcePriorsFromDatabase;

        v47 = __biome_log_for_category();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          set = v20->_set;
          instanceCount = [(CCDonateServicePriors *)v20->_priors instanceCount];
          *buf = 138412546;
          setCopy2 = set;
          v68 = 1024;
          LODWORD(v69) = instanceCount;
          _os_log_impl(&dword_1DA444000, v47, OS_LOG_TYPE_DEFAULT, "Local source updating set: %@ with stored local item instance count: %u", buf, 0x12u);
        }

        if (v20->_updateType == 1)
        {
          v50 = [[CCDifferentialUpdateCache alloc] initWithCapacity:[(CCDonateServicePriors *)v20->_priors instanceCount]];
        }

        else
        {
          v50 = objc_alloc_init(CCDifferentialUpdateCache);
        }

        diffUpdateCache = v20->_diffUpdateCache;
        v20->_diffUpdateCache = v50;
      }

      v52 = __biome_log_for_category();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = CCDifferentialUpdateTypeDescription(v20->_updateType);
        *buf = 138412546;
        setCopy2 = v20;
        v68 = 2112;
        v69 = v53;
        _os_log_impl(&dword_1DA444000, v52, OS_LOG_TYPE_DEFAULT, "%@ initialized with update type: %@", buf, 0x16u);
      }

      goto LABEL_34;
    }

    if ([v26 isFullSet])
    {
      v28 = 1;
      goto LABEL_24;
    }

    if (![v26 hasInlineFallback])
    {
      v28 = 2;
      goto LABEL_24;
    }

    priorLocalSourceValidityHash = [(CCDatabaseUpdater *)v27 priorLocalSourceValidityHash];
    v63 = priorLocalSourceValidityHash;
    if (priorLocalSourceValidityHash)
    {
      v31 = priorLocalSourceValidityHash;
      updatedLocalSourceValidityHash = [(CCDatabaseUpdater *)v27 updatedLocalSourceValidityHash];
      v33 = v31;
      v34 = updatedLocalSourceValidityHash;
      logb = [v33 isEqual:updatedLocalSourceValidityHash];

      if (logb)
      {
        priorLocalSourceVersion = [(CCDatabaseUpdater *)v27 priorLocalSourceVersion];
        unsignedLongLongValue = [priorLocalSourceVersion unsignedLongLongValue];

        logc = [(CCDatabaseUpdater *)v27 updatedLocalSourceVersion];
        unsignedLongLongValue2 = [logc unsignedLongLongValue];

        v56 = unsignedLongLongValue2;
        if (unsignedLongLongValue2 >= unsignedLongLongValue)
        {
          loga = __biome_log_for_category();
          v55 = os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT);
          if (unsignedLongLongValue2 != unsignedLongLongValue)
          {
            if (v55)
            {
              *buf = 134218240;
              setCopy2 = unsignedLongLongValue;
              v68 = 2048;
              v69 = unsignedLongLongValue2;
              _os_log_impl(&dword_1DA444000, loga, OS_LOG_TYPE_DEFAULT, "Validity and version evolution verified - set is eligible for incremental update from version (%llu) to (%llu)", buf, 0x16u);
            }

            v28 = 2;
            goto LABEL_23;
          }

          if (v55)
          {
            *buf = 134218240;
            setCopy2 = unsignedLongLongValue;
            v68 = 2048;
            v69 = unsignedLongLongValue;
            _os_log_impl(&dword_1DA444000, loga, OS_LOG_TYPE_DEFAULT, "Update set version (%llu) is equal to the prior version (%llu) - update may either be skipped or completed in full", buf, 0x16u);
          }

          v38 = loga;
          v39 = 9;
        }

        else
        {
          v37 = __biome_log_for_category();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            setCopy2 = v56;
            v68 = 2048;
            v69 = unsignedLongLongValue;
            _os_log_impl(&dword_1DA444000, v37, OS_LOG_TYPE_DEFAULT, "Update set version (%llu) is not greater than prior version (%llu) - full update required", buf, 0x16u);
          }

          v38 = v37;
          v39 = 10;
        }
      }

      else
      {
        log = __biome_log_for_category();
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          updatedLocalSourceValidityHash2 = [(CCDatabaseUpdater *)v27 updatedLocalSourceValidityHash];
          sourceValidity = [v26 sourceValidity];
          *buf = 138412802;
          setCopy2 = v63;
          v68 = 2112;
          v69 = updatedLocalSourceValidityHash2;
          v70 = 2112;
          v71 = sourceValidity;
          v42 = sourceValidity;
          _os_log_impl(&dword_1DA444000, log, OS_LOG_TYPE_DEFAULT, "Validity hash mismatch detected {prior: %@ requested: %@ (%@)} - full update required", buf, 0x20u);
        }

        v39 = 8;
        v38 = log;
      }
    }

    else
    {
      v40 = __biome_log_for_category();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA444000, v40, OS_LOG_TYPE_DEFAULT, "No prior set found - full update required", buf, 2u);
      }

      v38 = v40;
      v39 = 11;
    }

    v20->_incrementalErrorCode = v39;
    v28 = 1;
LABEL_23:

    goto LABEL_24;
  }

  v29 = 0;
LABEL_35:

  return v29;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CCDifferentialUpdater;
  v3 = [(CCDifferentialUpdater *)&v6 description];
  v4 = [v3 stringByAppendingString:self->_requestDescription];

  return v4;
}

- (unint64_t)priorVersion
{
  priorLocalSourceVersion = [(CCDatabaseUpdater *)self->_databaseUpdater priorLocalSourceVersion];
  unsignedLongLongValue = [priorLocalSourceVersion unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)_complete:(BOOL)_complete
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, _complete);
    v5 = self->_completion;
    self->_completion = 0;
  }
}

- (BOOL)addItemsWithContents:(id)contents metaContents:(id)metaContents
{
  contentsCopy = contents;
  metaContentsCopy = metaContents;
  p_updateType = &self->_updateType;
  if (self->_updateType - 1 >= 2)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CCDifferentialUpdater addItemsWithContents:? metaContents:?];
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CCDifferentialUpdater addItemsWithContents:metaContents:];
    }

    goto LABEL_10;
  }

  v9 = [contentsCopy count];
  if (v9 != [metaContentsCopy count])
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CCDifferentialUpdater addItemsWithContents:metaContents:];
    }

LABEL_10:

    v10 = 0;
    goto LABEL_11;
  }

  self->_clientAddOrUpdateCount += [contentsCopy count];
  v10 = [(CCDifferentialUpdater *)self _diffUpdateItemsWithContents:contentsCopy metaContents:metaContentsCopy];
LABEL_11:

  return v10;
}

- (BOOL)removeSourceItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_updateType == 2)
  {
    v5 = CCHash64String();
    v6 = [(CCDatabaseUpdater *)self->_databaseUpdater deleteSourceItemIdHash:v5];
    if (v6)
    {
      ++self->_clientRemoveCount;
    }

    else
    {
      v7 = __biome_log_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CCDifferentialUpdater removeSourceItemIdentifier:];
      }
    }
  }

  else
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CCDifferentialUpdater removeSourceItemIdentifier:?];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_tombstoneSet
{
  p_updateType = &self->_updateType;
  if (self->_updateType != 1)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(CCDifferentialUpdater *)p_updateType _tombstoneSet];
    }

    goto LABEL_7;
  }

  if (self->_clientAddOrUpdateCount)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [CCDifferentialUpdater _tombstoneSet];
    }

LABEL_7:
    LOBYTE(v4) = 0;
    goto LABEL_8;
  }

  setWriter = self->_setWriter;
  v8 = 0;
  v4 = [(CCDataResourceWriter *)setWriter tombstoneResource:&v8];
  if (!v4)
  {
    return v4;
  }

  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DA444000, v3, OS_LOG_TYPE_DEFAULT, "Updater successfully tombstoned resource", v7, 2u);
  }

LABEL_8:

  return v4;
}

- (BOOL)_clearSetTombstoneStatus
{
  setWriter = self->_setWriter;
  v4 = 0;
  return [(CCDataResourceWriter *)setWriter clearTombstoneStatus:&v4];
}

- (BOOL)finishUpdateWithRevisionToken:(id)token designateAsFullSet:(BOOL)set
{
  self->_clientFinished = 1;
  v5 = [(CCDifferentialUpdater *)self _finishWithRevisionToken:token designateAsFullSet:set];
  v6 = v5;
  [(CCDifferentialUpdater *)self _complete:v5];
  return v6;
}

- (BOOL)waitForCommit:(BOOL)commit
{
  commitCopy = commit;
  v24 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = _sharedQueue(self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CCDifferentialUpdater_waitForCommit___block_invoke;
  block[3] = &unk_1E85C2C10;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(v5, block);

  if (*(v15 + 24) == 1)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CCDifferentialUpdateTypeDescription(self->_updateType);
      deltaProduced = self->_deltaProduced;
      if (self->_deltaProduced)
      {
        v9 = @"the following local item instance";
      }

      else
      {
        v9 = @"NO";
      }

      if (deltaProduced)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@": (%u added, %u updated, %u removed) and shared item changes (%u added, %u removed, %u provenance updated)", -[CCDatabaseUpdater localInstanceAddedCount](self->_databaseUpdater, "localInstanceAddedCount"), -[CCDatabaseUpdater localInstanceUpdatedCount](self->_databaseUpdater, "localInstanceUpdatedCount"), -[CCDatabaseUpdater localInstanceRemovedCount](self->_databaseUpdater, "localInstanceRemovedCount"), -[CCDatabaseUpdater sharedItemAddedCount](self->_databaseUpdater, "sharedItemAddedCount"), -[CCDatabaseUpdater sharedItemRemovedCount](self->_databaseUpdater, "sharedItemRemovedCount"), -[CCDatabaseUpdater sharedItemProvenanceUpdatedCount](self->_databaseUpdater, "sharedItemProvenanceUpdatedCount")];
      }

      else
      {
        v10 = @".";
      }

      *buf = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_1DA444000, v6, OS_LOG_TYPE_DEFAULT, "Committed update: %@ producing %@ changes%@", buf, 0x20u);
      if (deltaProduced)
      {
      }
    }

    if (self->_deltaProduced)
    {
      [(CCSetChangeNotifierProtocol *)self->_changeNotifier notifyChangeToSet:self->_set];
    }

    if (commitCopy)
    {
      if (![(CCDifferentialUpdater *)self _tombstoneSet])
      {
LABEL_21:
        v11 = 0;
        goto LABEL_20;
      }
    }

    else if (self->_deltaProduced && ![(CCDifferentialUpdater *)self _clearSetTombstoneStatus])
    {
      goto LABEL_21;
    }
  }

  v11 = *(v15 + 24);
LABEL_20:
  _Block_object_dispose(&v14, 8);
  return v11 & 1;
}

- (BOOL)_finishWithRevisionToken:(id)token designateAsFullSet:(BOOL)set
{
  setCopy = set;
  v29 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (setCopy)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA444000, v7, OS_LOG_TYPE_DEFAULT, "Enabling implicit deletes for incremental donation designated as full set", buf, 2u);
    }

LABEL_6:
    priorLocalInstanceCount = [(CCDatabaseUpdater *)self->_databaseUpdater priorLocalInstanceCount];
    unsignedIntegerValue = [priorLocalInstanceCount unsignedIntegerValue];

    if (unsignedIntegerValue)
    {
      clientAddOrUpdateCount = self->_clientAddOrUpdateCount;
      if (!clientAddOrUpdateCount)
      {
        v13 = __biome_log_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DA444000, v13, OS_LOG_TYPE_DEFAULT, "Full set update is empty - deleting stored items", buf, 2u);
        }

        if (([(CCDatabaseUpdater *)self->_databaseUpdater deleteAllLocalInstances]& 1) != 0)
        {
          goto LABEL_16;
        }

        goto LABEL_24;
      }

      if (unsignedIntegerValue == ([(CCDifferentialUpdateCache *)self->_diffUpdateCache unmodifiedItemCount]== clientAddOrUpdateCount))
      {
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DA444000, v11, OS_LOG_TYPE_DEFAULT, "Full set update contains no modified item(s)", buf, 2u);
        }

        goto LABEL_16;
      }

      if (![(CCDifferentialUpdater *)self _deleteStaleItems])
      {
LABEL_24:
        v14 = 0;
        goto LABEL_34;
      }
    }

LABEL_16:
    v12 = 1;
    goto LABEL_17;
  }

  if (self->_updateType == 1)
  {
    goto LABEL_6;
  }

  v12 = 0;
LABEL_17:
  v22 = 0;
  v14 = [(CCDatabaseUpdater *)self->_databaseUpdater finishAndDetectDelta:&v22 updateRevisionToken:tokenCopy isFullSet:v12];
  if (v14)
  {
    self->_deltaProduced = v22;
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = CCDifferentialUpdateTypeDescription(self->_updateType);
      updateType = self->_updateType;
      if (updateType == 3)
      {
        v18 = 0;
        v19 = &stru_1F55F1328;
        v20 = &stru_1F55F1328;
      }

      else
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@", client added or updated %u item(s)", self->_clientAddOrUpdateCount];
        if (self->_updateType == 2)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@" and removed %u item(s)", self->_clientRemoveCount];
          v18 = 1;
        }

        else
        {
          v18 = 0;
          v20 = &stru_1F55F1328;
        }
      }

      *buf = 138412802;
      v24 = v16;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_1DA444000, v15, OS_LOG_TYPE_DEFAULT, "Committing update: %@%@%@", buf, 0x20u);
      if (v18)
      {
      }

      if (updateType != 3)
      {
      }
    }
  }

  else
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CCDifferentialUpdater _finishWithRevisionToken:designateAsFullSet:];
    }
  }

LABEL_34:
  return v14;
}

- (void)abort
{
  [(CCDifferentialUpdater *)self _interrupt];

  [(CCDifferentialUpdater *)self _complete:0];
}

- (BOOL)_diffUpdateItemsWithContents:(id)contents metaContents:(id)metaContents
{
  v82 = *MEMORY[0x1E69E9840];
  contentsCopy = contents;
  metaContentsCopy = metaContents;
  v61 = contentsCopy;
  v58 = [contentsCopy count];
  if (!v58)
  {
    v7 = 1;
    goto LABEL_54;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0x1E6993000uLL;
  while (1)
  {
    v11 = objc_autoreleasePoolPush();
    if (self->_interrupt)
    {
      goto LABEL_52;
    }

    v12 = *(v10 + 2560);
    itemType = [(CCSet *)self->_set itemType];
    v14 = [v61 objectAtIndex:v8];
    v75 = v9;
    v15 = [v12 contentMessageForItemType:itemType data:v14 error:&v75];
    v16 = v75;

    if (!v15)
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CCDifferentialUpdater _diffUpdateItemsWithContents:metaContents:];
      }

      v22 = v16;
      goto LABEL_51;
    }

    context = v11;
    v17 = v10;
    v18 = *(v10 + 2560);
    itemType2 = [(CCSet *)self->_set itemType];
    v20 = [metaContentsCopy objectAtIndex:v8];
    v74 = v16;
    v21 = [v18 metaContentMessageForItemType:itemType2 data:v20 error:&v74];
    v22 = v74;

    if (!v21)
    {
      v43 = __biome_log_for_category();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [CCDifferentialUpdater _diffUpdateItemsWithContents:metaContents:];
      }

      goto LABEL_50;
    }

    v57 = v7;
    v23 = objc_alloc(MEMORY[0x1E69939F8]);
    v73 = v22;
    v24 = [v23 initWithContent:v15 metaContent:v21 error:&v73];
    v9 = v73;

    if (!v24)
    {
      v44 = __biome_log_for_category();
      v7 = v57;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v77 = v15;
        v78 = 2112;
        v79 = v21;
        v80 = 2112;
        v81 = v9;
        _os_log_error_impl(&dword_1DA444000, v44, OS_LOG_TYPE_ERROR, "Failed to initialize instance from content: %@ metaContent: %@ error: %@", buf, 0x20u);
      }

      v22 = v9;
LABEL_50:
      v11 = context;
LABEL_51:

      v9 = v22;
LABEL_52:
      objc_autoreleasePoolPop(v11);
      goto LABEL_53;
    }

    sourceItemIdentifier = [v21 sourceItemIdentifier];
    v26 = CCHash64String();

    instanceIdentifier = [v24 instanceIdentifier];
    v72 = 0;
    databaseUpdater = self->_databaseUpdater;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v67 = 0;
    LODWORD(sourceItemIdentifier) = [(CCDatabaseUpdater *)databaseUpdater selectSourceItemIdHash:v26 outLocalInstanceRowId:&v71 outProvenanceRowId:&v70 outInstanceHash:&v69 outContentHash:&v68 outContentSequenceNumber:&v67 isDuplicate:&v72];
    v63 = v71;
    v66 = v70;
    v65 = v69;
    v62 = v68;
    v29 = v67;
    if (!sourceItemIdentifier)
    {
      goto LABEL_29;
    }

    v59 = v29;
    if (v72 == 1)
    {
      sharedIdentifier = __biome_log_for_category();
      if (os_log_type_enabled(sharedIdentifier, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v77 = v26;
        v31 = sharedIdentifier;
        v32 = "Donated set contains multiple duplicate sourceItemIds (hash: %@) not donated previously";
LABEL_11:
        _os_log_error_impl(&dword_1DA444000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0xCu);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    if (!v66)
    {
      sharedIdentifier = [v24 sharedIdentifier];
      v52 = self->_databaseUpdater;
      loga = [v21 data];
      data = [v15 data];
      v34 = instanceIdentifier;
      v35 = data;
      v36 = v52;
      v53 = v34;
      v46 = [CCDatabaseUpdater insertItemWithSourceItemIdHash:v36 instanceHash:"insertItemWithSourceItemIdHash:instanceHash:contentHash:metaContent:content:isDuplicate:" contentHash:v26 metaContent:? content:? isDuplicate:?];

      if (v46)
      {
        instanceIdentifier = v53;
        goto LABEL_32;
      }

      v41 = __biome_log_for_category();
      log = v41;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v77 = v26;
        _os_log_error_impl(&dword_1DA444000, v41, OS_LOG_TYPE_ERROR, "Failed to insert new sourceItemId (hash: %@)", buf, 0xCu);
      }

      instanceIdentifier = v53;
      goto LABEL_28;
    }

    if ([instanceIdentifier isEqual:v65])
    {
      if ([(CCDifferentialUpdateCache *)self->_diffUpdateCache addUnmodifiedSourceItemIdHash:v26])
      {
LABEL_33:
        v42 = 1;
        v29 = v59;
        goto LABEL_35;
      }

      sharedIdentifier = __biome_log_for_category();
      if (os_log_type_enabled(sharedIdentifier, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v77 = v26;
        v31 = sharedIdentifier;
        v32 = "Donated set contains multiple duplicate sourceItemIds (hash: %@) matching a previously donated item";
        goto LABEL_11;
      }

LABEL_32:

      goto LABEL_33;
    }

    sharedIdentifier = [v24 sharedIdentifier];
    v37 = [sharedIdentifier isEqual:v62];
    v54 = self->_databaseUpdater;
    if (v37)
    {
      data2 = [v21 data];
      v55 = [(CCDatabaseUpdater *)v54 updateMetaContent:data2 localInstanceRowId:v63 provenanceRowId:v66 priorInstanceHash:v65 instanceHash:instanceIdentifier contentHash:sharedIdentifier contentSequenceNumber:v59 isDuplicate:&v72];

      if (v55)
      {
        goto LABEL_32;
      }

      log = __biome_log_for_category();
      if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 138412546;
      v77 = v26;
      v78 = 2112;
      v79 = sharedIdentifier;
      v38 = log;
      v39 = "Failed to update MetaContent for existing sourceItemId (hash: %@) with unchanged content (hash: %@)";
      v40 = 22;
    }

    else
    {
      data3 = [v15 data];
      logb = [v21 data];
      v56 = [(CCDatabaseUpdater *)v54 updateContent:data3 andMetaContent:logb localInstanceRowId:v63 priorProvenanceRowId:v66 contentHash:sharedIdentifier instanceHash:instanceIdentifier isDuplicate:&v72];

      if (v56)
      {
        goto LABEL_32;
      }

      log = __biome_log_for_category();
      if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 138412290;
      v77 = v26;
      v38 = log;
      v39 = "Failed to update Content and MetaContent for existing sourceItemId (hash: %@)";
      v40 = 12;
    }

    _os_log_error_impl(&dword_1DA444000, v38, OS_LOG_TYPE_ERROR, v39, buf, v40);
LABEL_28:

    v29 = v59;
LABEL_29:
    if (v72 == 1)
    {
      v59 = v29;
      sharedIdentifier = __biome_log_for_category();
      if (os_log_type_enabled(sharedIdentifier, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v77 = v26;
        v78 = 2112;
        v79 = instanceIdentifier;
        _os_log_fault_impl(&dword_1DA444000, sharedIdentifier, OS_LOG_TYPE_FAULT, "Skipping sourceItemId (hash: %@) for an item instance (hash: %@) that collides with an existing record unexpectedly", buf, 0x16u);
      }

      goto LABEL_32;
    }

    v42 = 0;
LABEL_35:

    objc_autoreleasePoolPop(context);
    if ((v42 & 1) == 0)
    {
      break;
    }

    v7 = ++v8 >= v58;
    v10 = v17;
    if (v58 == v8)
    {
      goto LABEL_53;
    }
  }

  v7 = v57;
LABEL_53:

LABEL_54:
  return v7;
}

- (BOOL)updateRemoteDeviceUUID:(id)d options:(unsigned __int16)options mergeableDelta:(id)delta peerDeviceSite:(id)site relayedDeviceSites:(id)sites
{
  v67 = *MEMORY[0x1E69E9840];
  dCopy = d;
  deltaCopy = delta;
  siteCopy = site;
  sitesCopy = sites;
  if (self->_updateType != 3)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CCDifferentialUpdater updateRemoteDeviceUUID:? options:? mergeableDelta:? peerDeviceSite:? relayedDeviceSites:?];
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CCDifferentialUpdater updateRemoteDeviceUUID:options:mergeableDelta:peerDeviceSite:relayedDeviceSites:];
    }

LABEL_14:

    deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord = 0;
    goto LABEL_15;
  }

  if ((options & 0x100) == 0)
  {
    if ((options & 0xC0) != 0)
    {
      if (deltaCopy || (options & 0x40) == 0)
      {
        databaseUpdater = self->_databaseUpdater;
        v63 = 0;
        v21 = [(CCDatabaseUpdater *)databaseUpdater registerRemoteDeviceSite:siteCopy peerDeviceUUID:dCopy isRelayed:0 hasDeltas:deltaCopy != 0 returningRowId:&v63];
        oslog = v63;
        if (oslog)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        if (v22)
        {
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          obj = sitesCopy;
          v23 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
          if (v23)
          {
            v24 = *v60;
            while (2)
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v60 != v24)
                {
                  objc_enumerationMutation(obj);
                }

                if (([(CCDatabaseUpdater *)self->_databaseUpdater registerRemoteDeviceSite:*(*(&v59 + 1) + 8 * i) peerDeviceUUID:dCopy isRelayed:1 hasDeltas:0 returningRowId:0]& 1) == 0)
                {
                  v30 = __biome_log_for_category();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    [CCDifferentialUpdater updateRemoteDeviceUUID:options:mergeableDelta:peerDeviceSite:relayedDeviceSites:];
                  }

                  goto LABEL_45;
                }
              }

              v23 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

          if ((options & 0x80) != 0)
          {
            v31 = __biome_log_for_category();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = siteCopy;
              *&buf[12] = 2112;
              *&buf[14] = obj;
              _os_log_impl(&dword_1DA444000, v31, OS_LOG_TYPE_DEFAULT, "Completed attestation-only update for peer device site: %@ relayed device sites: %@", buf, 0x16u);
            }

            deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord = 1;
          }

          else
          {
            selectAllDeviceRecords = [(CCDatabaseUpdater *)self->_databaseUpdater selectAllDeviceRecords];
            if (selectAllDeviceRecords)
            {
              v58 = 0;
              obja = [objc_alloc(MEMORY[0x1E69939C0]) initWithDeviceRecords:selectAllDeviceRecords siteIdentifierFormat:1 error:&v58];
              v27 = v58;
              if (obja)
              {
                v57 = v27;
                v28 = [objc_alloc(MEMORY[0x1E6994940]) initWithMergeableDelta:deltaCopy error:&v57];
                v42 = v57;

                if (v28)
                {
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x2020000000;
                  v65 = 0;
                  v52[0] = MEMORY[0x1E69E9820];
                  v52[1] = 3221225472;
                  v52[2] = __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke;
                  v52[3] = &unk_1E85C31A0;
                  v41 = obja;
                  v53 = v41;
                  v40 = oslog;
                  v54 = v40;
                  selfCopy = self;
                  v56 = buf;
                  [v28 enumerateAtomsWithOptions:0 usingBlock:v52];
                  if (*(*&buf[8] + 24))
                  {
                    deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord = 0;
                  }

                  else
                  {
                    vectors = [v28 vectors];
                    contents = [vectors contents];
                    v35 = [contents mutableCopy];

                    vectors2 = [v28 vectors];
                    removals = [vectors2 removals];
                    [v35 unionStateVector:removals];

                    allSiteIdentifiers = [v35 allSiteIdentifiers];
                    v46[0] = MEMORY[0x1E69E9820];
                    v46[1] = 3221225472;
                    v46[2] = __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_58;
                    v46[3] = &unk_1E85C31F0;
                    v47 = v41;
                    v48 = v40;
                    v39 = v35;
                    v49 = v39;
                    selfCopy2 = self;
                    v51 = buf;
                    [allSiteIdentifiers enumerateObjectsUsingBlock:v46];
                    if (*(*&buf[8] + 24))
                    {
                      deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord = 0;
                    }

                    else
                    {
                      deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord = [(CCDatabaseUpdater *)self->_databaseUpdater deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord];
                    }
                  }

                  _Block_object_dispose(buf, 8);
                }

                else
                {
                  v32 = __biome_log_for_category();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    [CCDifferentialUpdater updateRemoteDeviceUUID:v42 options:self mergeableDelta:? peerDeviceSite:? relayedDeviceSites:?];
                  }

                  deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord = 0;
                }

                v27 = v42;
              }

              else
              {
                v28 = __biome_log_for_category();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  [CCDifferentialUpdater updateRemoteDeviceUUID:options:mergeableDelta:peerDeviceSite:relayedDeviceSites:];
                }

                deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord = 0;
              }
            }

            else
            {
              deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord = 0;
            }
          }

          goto LABEL_46;
        }

        v29 = __biome_log_for_category();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [CCDifferentialUpdater updateRemoteDeviceUUID:options:mergeableDelta:peerDeviceSite:relayedDeviceSites:];
        }
      }

      else
      {
        oslog = __biome_log_for_category();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          [CCDifferentialUpdater updateRemoteDeviceUUID:options:mergeableDelta:peerDeviceSite:relayedDeviceSites:];
        }
      }
    }

    else
    {
      oslog = __biome_log_for_category();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        [CCDifferentialUpdater updateRemoteDeviceUUID:? options:? mergeableDelta:? peerDeviceSite:? relayedDeviceSites:?];
      }
    }

LABEL_45:
    deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord = 0;
LABEL_46:

    goto LABEL_15;
  }

  v19 = __biome_log_for_category();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = dCopy;
    _os_log_impl(&dword_1DA444000, v19, OS_LOG_TYPE_DEFAULT, "Expiring remote deviceUUID: %@", buf, 0xCu);
  }

  deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord = [(CCDatabaseUpdater *)self->_databaseUpdater expireRemoteDeviceUUID:dCopy];
LABEL_15:

  return deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord;
}

void __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = objc_alloc(MEMORY[0x1E695B8D0]);
  v8 = [v6 timestamp];
  v9 = [v8 distributedSiteIdentifier];
  v10 = [v9 identifier];
  v11 = [v7 initWithIdentifier:v10];

  v12 = [*(a1 + 32) deviceRowIdForSiteIdentifier:v11];
  if ([v12 isEqual:*(a1 + 40)])
  {
    v13 = MEMORY[0x1E696AD98];
    v14 = [v6 timestamp];
    v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "clock")}];

    v16 = [v6 value];
    v17 = MEMORY[0x1E6993A00];
    v18 = [*(*(a1 + 48) + 32) itemType];
    v35 = 0;
    v19 = [v17 contentMessageForItemType:v18 data:v16 error:&v35];
    v20 = v35;
    if (!v19)
    {
      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_cold_6();
      }

      v22 = v20;
      goto LABEL_22;
    }

    v32 = a4;
    v34 = v20;
    v21 = [objc_alloc(MEMORY[0x1E6993A98]) initWithContent:v19 error:&v34];
    v22 = v34;

    if (!v21)
    {
      v28 = __biome_log_for_category();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_cold_5();
      }

      goto LABEL_21;
    }

    v30 = v22;
    v31 = [v21 sharedIdentifier];
    v23 = *(*(a1 + 48) + 8);
    v33 = 0;
    v24 = [v23 selectProvenanceWithContentSequenceNumber:v15 onDeviceRowId:v12 outProvenanceRowId:&v33];
    v25 = v33;
    if (v24)
    {
      v26 = __biome_log_for_category();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
      if (v25)
      {
        if (v27)
        {
          __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_cold_3();
        }

        goto LABEL_19;
      }

      if (v27)
      {
        *buf = 138412802;
        v37 = v11;
        v38 = 2112;
        v39 = v15;
        v40 = 2112;
        v41 = v31;
        _os_log_debug_impl(&dword_1DA444000, v26, OS_LOG_TYPE_DEBUG, "inserting atom with dot %@::%@ contentHash %@", buf, 0x20u);
      }

      v28 = v31;
      if ([*(*(a1 + 48) + 8) insertContent:v16 contentHash:v31 sequenceNumber:v15 onDeviceRowId:v12])
      {
        goto LABEL_20;
      }

      v29 = __biome_log_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_cold_4();
      }
    }

    else
    {
      v29 = __biome_log_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_cold_2();
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    *v32 = 1;
LABEL_19:
    v28 = v31;
LABEL_20:

    v22 = v30;
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v15 = __biome_log_for_category();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_cold_1(v11);
  }

LABEL_23:
}

void __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_58(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) deviceRowIdForSiteIdentifier:v5];
  if ([v6 isEqual:*(a1 + 40)])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_59;
    v11[3] = &unk_1E85C31C8;
    v7 = *(a1 + 48);
    v11[4] = *(a1 + 56);
    v8 = v6;
    v9 = *(a1 + 64);
    v12 = v8;
    v13 = v9;
    [v7 enumerateClockValuesForSiteIdentifier:v5 usingBlock:v11];
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  else
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_cold_1(v5);
    }
  }
}

void __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_59(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _BYTE *a6)
{
  if (a5 != 1 && ([*(a1[4] + 8) tombstoneContentSequenceNumbersInRange:a2 forDeviceRowId:{a3, a1[5]}] & 1) == 0)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_59_cold_1();
    }

    *(*(a1[6] + 8) + 24) = 1;
    *a6 = 1;
  }
}

+ (void)updaterForSet:withRequest:setWriter:changeNotifier:timeout:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)addItemsWithContents:(unsigned __int8 *)a1 metaContents:.cold.1(unsigned __int8 *a1)
{
  v1 = OUTLINED_FUNCTION_7_0(a1);
  v2 = CCDifferentialUpdateTypeDescription(v1);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)addItemsWithContents:metaContents:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)removeSourceItemIdentifier:(unsigned __int8 *)a1 .cold.1(unsigned __int8 *a1)
{
  v1 = OUTLINED_FUNCTION_7_0(a1);
  v2 = CCDifferentialUpdateTypeDescription(v1);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_tombstoneSet
{
  v1 = OUTLINED_FUNCTION_7_0(self);
  v2 = CCDifferentialUpdateTypeDescription(v1);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_diffUpdateItemsWithContents:metaContents:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_diffUpdateItemsWithContents:metaContents:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __42__CCDifferentialUpdater__deleteStaleItems__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateRemoteDeviceUUID:(unsigned __int8 *)a1 options:mergeableDelta:peerDeviceSite:relayedDeviceSites:.cold.1(unsigned __int8 *a1)
{
  v1 = OUTLINED_FUNCTION_7_0(a1);
  v2 = CCDifferentialUpdateTypeDescription(v1);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)updateRemoteDeviceUUID:options:mergeableDelta:peerDeviceSite:relayedDeviceSites:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateRemoteDeviceUUID:options:mergeableDelta:peerDeviceSite:relayedDeviceSites:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateRemoteDeviceUUID:options:mergeableDelta:peerDeviceSite:relayedDeviceSites:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateRemoteDeviceUUID:(uint64_t)a1 options:(void *)a2 mergeableDelta:peerDeviceSite:relayedDeviceSites:.cold.6(uint64_t a1, void *a2)
{
  v2 = [a2 description];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)updateRemoteDeviceUUID:options:mergeableDelta:peerDeviceSite:relayedDeviceSites:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateRemoteDeviceUUID:(unsigned __int8 *)a1 options:mergeableDelta:peerDeviceSite:relayedDeviceSites:.cold.8(unsigned __int8 *a1)
{
  v6 = CCDifferentialUpdateTypeDescription(*a1);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_cold_1(uint64_t a1)
{
  v1 = [MEMORY[0x1E69939C0] descriptionForSiteIdentifier:a1];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_cold_3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_1DA444000, v0, OS_LOG_TYPE_DEBUG, "dropping atom with dot %@::%@ which we've already received", v1, 0x16u);
}

void __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_6_0();
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v0, "length")}];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __105__CCDifferentialUpdater_updateRemoteDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke_59_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v1];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v1 + v0];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

@end