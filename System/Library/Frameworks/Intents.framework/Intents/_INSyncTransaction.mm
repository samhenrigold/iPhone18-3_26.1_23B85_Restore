@interface _INSyncTransaction
+ (id)beginTransactionForBundleID:(id)d bundlePath:(id)path syncSlot:(id)slot;
- (BOOL)_isMissingLatestFileError:(id)error;
- (id)_emptySentDocument;
- (id)_initWithVocabularyManager:(id)manager syncSlot:(id)slot deleteExistingVocabulary:(BOOL)vocabulary;
- (id)calculateDiff;
- (void)_beginTransaction;
- (void)_deleteInvalidSavedData;
- (void)_saveAndCleanup;
- (void)endTransactionWithFinalAnchor:(id)anchor;
@end

@implementation _INSyncTransaction

- (void)_beginTransaction
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_deleteExistingVocabulary)
  {
    [(_INSyncTransaction *)self _deleteInvalidSavedData];
    v3 = 0;
LABEL_17:
    _emptySentDocument = [(_INSyncTransaction *)self _emptySentDocument];
    v15 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[_INSyncTransaction _beginTransaction]";
      _os_log_impl(&dword_18E991000, v15, OS_LOG_TYPE_INFO, "%s No sent vocabulary at all, forcing a sync up once.", buf, 0xCu);
    }

    [(_INVocabularyGenerationDocument *)_emptySentDocument setResetOnNextSync:1];
    goto LABEL_20;
  }

  v4 = 24;
  if (self->_vocabularyUpdatesEnabled)
  {
    v4 = 16;
  }

  v5 = *(&self->super.isa + v4);
  v6 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[_INSyncTransaction _beginTransaction]";
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_18E991000, v6, OS_LOG_TYPE_INFO, "%s staging at %@", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_pathToLatestVocabularyDocument];
  v19 = 0;
  v10 = [defaultManager replaceItemAtURL:v8 withItemAtURL:v9 backupItemName:0 options:0 resultingItemURL:0 error:&v19];
  v11 = v19;

  if ((v10 & 1) == 0)
  {
    v12 = [(_INSyncTransaction *)self _isMissingLatestFileError:v11];
    v13 = INSiriLogContextIntents;
    if (v12)
    {
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v21 = "[_INSyncTransaction _beginTransaction]";
        _os_log_impl(&dword_18E991000, v13, OS_LOG_TYPE_INFO, "%s No latest vocabulary file", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[_INSyncTransaction _beginTransaction]";
      v22 = 2114;
      v23 = v11;
      _os_log_error_impl(&dword_18E991000, v13, OS_LOG_TYPE_ERROR, "%s Error reading latest vocabulary file: %{public}@", buf, 0x16u);
    }
  }

  if (self->_vocabularyUpdatesEnabled)
  {
    _emptySentDocument = [[_INVocabularyGenerationDocument alloc] initWithContentsOfFile:self->_pathToSentVocabularyDocument];
    v3 = [[_INVocabularyGenerationDocument alloc] initWithContentsOfFile:self->_pathToStagedVocabularyDocument];
  }

  else
  {
    _emptySentDocument = [(_INSyncTransaction *)self _emptySentDocument];
    v3 = 0;
  }

  if (!_emptySentDocument)
  {
    goto LABEL_17;
  }

LABEL_20:
  if (!v3)
  {
    v3 = [(_INVocabularyGenerationDocument *)_emptySentDocument copy];
  }

  latest = self->_latest;
  self->_latest = v3;
  v17 = v3;

  sent = self->_sent;
  self->_sent = _emptySentDocument;
}

- (BOOL)_isMissingLatestFileError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqual:*MEMORY[0x1E696A250]];

  if (!v6)
  {
    goto LABEL_6;
  }

  code = [errorCopy code];
  v8 = 1;
  if (code != 4 && code != 260)
  {
    if (code == 512)
    {
      userInfo = [errorCopy userInfo];
      v10 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

      v8 = [(_INSyncTransaction *)self _isMissingLatestFileError:v10];
      goto LABEL_7;
    }

LABEL_6:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (void)_deleteInvalidSavedData
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    syncSlot = self->_syncSlot;
    storeManager = self->_storeManager;
    v6 = v3;
    appBundleID = [(_INVocabularyStoreManager *)storeManager appBundleID];
    v11 = 136315650;
    v12 = "[_INSyncTransaction _deleteInvalidSavedData]";
    v13 = 2112;
    v14 = syncSlot;
    v15 = 2112;
    v16 = appBundleID;
    _os_log_impl(&dword_18E991000, v6, OS_LOG_TYPE_INFO, "%s Removing all vocabulary of type %@ for %@", &v11, 0x20u);
  }

  v8 = [(_INVocabularyStoreManager *)self->_storeManager deleteIntentSlot:self->_syncSlot];
  if (v8)
  {
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v10 = self->_syncSlot;
      v11 = 136315650;
      v12 = "[_INSyncTransaction _deleteInvalidSavedData]";
      v13 = 2114;
      v14 = v10;
      v15 = 2114;
      v16 = v8;
      _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s Error cleaning up %{public}@ %{public}@", &v11, 0x20u);
    }
  }
}

- (id)_emptySentDocument
{
  v3 = objc_alloc_init(_INVocabularyGenerationDocument);
  appBundleID = [(_INVocabularyStoreManager *)self->_storeManager appBundleID];
  [(_INVocabularyGenerationDocument *)v3 setAppBundleID:appBundleID];

  [(_INVocabularyGenerationDocument *)v3 setVocabularyItems:MEMORY[0x1E695E0F0]];
  [(_INVocabularyGenerationDocument *)v3 setIntentSlot:self->_syncSlot];

  return v3;
}

- (id)calculateDiff
{
  if ([(_INSyncTransaction *)self fullResetRequired])
  {
    [(_INVocabularyGenerationDocument *)self->_latest setResetOnNextSync:1];
  }

  [(_INVocabularyGenerationDocument *)self->_latest assignMissingSiriIDsForOptimalDiffFromPreviousDocument:self->_sent];
  latest = self->_latest;
  sent = self->_sent;

  return [(_INVocabularyGenerationDocument *)latest diffFromPreviousDocument:sent];
}

- (void)endTransactionWithFinalAnchor:(id)anchor
{
  v18 = *MEMORY[0x1E69E9840];
  anchorCopy = anchor;
  [(_INVocabularyGenerationDocument *)self->_latest setThisGeneration:anchorCopy];
  [(_INVocabularyGenerationDocument *)self->_latest setResetOnNextSync:0];
  vocabularyUpdatesEnabled = 0;
  if (!self->_deleteExistingVocabulary)
  {
    vocabularyUpdatesEnabled = self->_vocabularyUpdatesEnabled;
  }

  v6 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = v6;
    v9 = [v7 numberWithBool:vocabularyUpdatesEnabled];
    v12 = 136315650;
    v13 = "[_INSyncTransaction endTransactionWithFinalAnchor:]";
    v14 = 2112;
    v15 = anchorCopy;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s finalAnchor = '%@' cleaning up=%@", &v12, 0x20u);
  }

  if (vocabularyUpdatesEnabled)
  {
    [(_INSyncTransaction *)self _saveAndCleanup];
  }

  latest = self->_latest;
  self->_latest = 0;

  sent = self->_sent;
  self->_sent = 0;
}

- (void)_saveAndCleanup
{
  v27 = *MEMORY[0x1E69E9840];
  vocabularyItems = [(_INVocabularyGenerationDocument *)self->_latest vocabularyItems];
  v4 = [vocabularyItems count];

  v5 = INSiriLogContextIntents;
  v6 = os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      latest = self->_latest;
      pathToSentVocabularyDocument = self->_pathToSentVocabularyDocument;
      v21 = 136315650;
      v22 = "[_INSyncTransaction _saveAndCleanup]";
      v23 = 2112;
      v24 = latest;
      v25 = 2112;
      v26 = pathToSentVocabularyDocument;
      _os_log_impl(&dword_18E991000, v5, OS_LOG_TYPE_INFO, "%s Saving latest vocab %@ to %@", &v21, 0x20u);
    }

    v9 = [(_INVocabularyGenerationDocument *)self->_latest writeToFile:self->_pathToSentVocabularyDocument createIntermediateDirectories:0];
    if (v9)
    {
      v10 = v9;
      v11 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315394;
        v22 = "[_INSyncTransaction _saveAndCleanup]";
        v23 = 2114;
        v24 = v10;
        v12 = "%s Error writing sent file %{public}@";
LABEL_19:
        _os_log_error_impl(&dword_18E991000, v11, OS_LOG_TYPE_ERROR, v12, &v21, 0x16u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (v6)
    {
      syncSlot = self->_syncSlot;
      storeManager = self->_storeManager;
      v15 = v5;
      appBundleID = [(_INVocabularyStoreManager *)storeManager appBundleID];
      v21 = 136315650;
      v22 = "[_INSyncTransaction _saveAndCleanup]";
      v23 = 2112;
      v24 = syncSlot;
      v25 = 2112;
      v26 = appBundleID;
      _os_log_impl(&dword_18E991000, v15, OS_LOG_TYPE_INFO, "%s Removing the sent file, because it is now empty %@ %@", &v21, 0x20u);
    }

    v17 = [(_INVocabularyStoreManager *)self->_storeManager deleteVocabularyStoreItemAt:self->_pathToSentVocabularyDocument];
    if (v17)
    {
      v18 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315394;
        v22 = "[_INSyncTransaction _saveAndCleanup]";
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_18E991000, v18, OS_LOG_TYPE_ERROR, "%s Error removing empty sent vocab file %{public}@", &v21, 0x16u);
      }
    }
  }

  v19 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    pathToStagedVocabularyDocument = self->_pathToStagedVocabularyDocument;
    v21 = 136315394;
    v22 = "[_INSyncTransaction _saveAndCleanup]";
    v23 = 2112;
    v24 = pathToStagedVocabularyDocument;
    _os_log_impl(&dword_18E991000, v19, OS_LOG_TYPE_INFO, "%s Removing staged vocabulary at %@", &v21, 0x16u);
  }

  v10 = [(_INVocabularyStoreManager *)self->_storeManager deleteVocabularyStoreItemAt:self->_pathToStagedVocabularyDocument];
  if (v10)
  {
    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "[_INSyncTransaction _saveAndCleanup]";
      v23 = 2114;
      v24 = v10;
      v12 = "%s Error cleaning up user vocabulary %{public}@";
      goto LABEL_19;
    }
  }

LABEL_17:
}

- (id)_initWithVocabularyManager:(id)manager syncSlot:(id)slot deleteExistingVocabulary:(BOOL)vocabulary
{
  v41 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  slotCopy = slot;
  v36.receiver = self;
  v36.super_class = _INSyncTransaction;
  v11 = [(_INSyncTransaction *)&v36 init];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = [slotCopy copy];
  syncSlot = v11->_syncSlot;
  v11->_syncSlot = v12;

  objc_storeStrong(&v11->_storeManager, manager);
  v11->_deleteExistingVocabulary = vocabulary;
  appBundleID = [(_INVocabularyStoreManager *)v11->_storeManager appBundleID];
  v15 = slotCopy;
  if (INSyncTransactionCheckVocabularyUpdatesEnabled_onceToken != -1)
  {
    dispatch_once(&INSyncTransactionCheckVocabularyUpdatesEnabled_onceToken, &__block_literal_global_43512);
  }

  v16 = [INSyncTransactionCheckVocabularyUpdatesEnabled_vocabularyUpdatesOverrides objectForKey:appBundleID];
  v17 = [v16 containsObject:v15];

  v18 = (v17 & 1) != 0 || [_INSiriAuthorizationManager _siriAuthorizationStatusForAppID:appBundleID intentSlot:v15]== 3;
  v11->_vocabularyUpdatesEnabled = v18;

  if (!v11->_vocabularyUpdatesEnabled)
  {
    v19 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      storeManager = v11->_storeManager;
      v21 = v19;
      appBundleID2 = [(_INVocabularyStoreManager *)storeManager appBundleID];
      *buf = 136315394;
      v38 = "[_INSyncTransaction _initWithVocabularyManager:syncSlot:deleteExistingVocabulary:]";
      v39 = 2112;
      v40 = appBundleID2;
      _os_log_impl(&dword_18E991000, v21, OS_LOG_TYPE_INFO, "%s Vocabulary updates disabled for %@", buf, 0x16u);
    }
  }

  if (v11->_deleteExistingVocabulary)
  {
    goto LABEL_17;
  }

  v34 = 0;
  v35 = 0;
  v33 = 0;
  v23 = [(_INVocabularyStoreManager *)v11->_storeManager getPathToLatestVocabulary:&v35 pathDuringReading:&v34 sentVocabulary:&v33 forIntentSlot:v11->_syncSlot];
  v24 = v35;
  v25 = v35;
  v26 = v34;
  v27 = v34;
  v28 = v33;
  v29 = v33;
  if (v23)
  {
    v30 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v38 = "[_INSyncTransaction _initWithVocabularyManager:syncSlot:deleteExistingVocabulary:]";
      v39 = 2114;
      v40 = v23;
      _os_log_error_impl(&dword_18E991000, v30, OS_LOG_TYPE_ERROR, "%s Error accessing intent-slot directory %{public}@", buf, 0x16u);
    }
  }

  else
  {
    objc_storeStrong(&v11->_pathToLatestVocabularyDocument, v24);
    objc_storeStrong(&v11->_pathToStagedVocabularyDocument, v26);
    objc_storeStrong(&v11->_pathToSentVocabularyDocument, v28);
  }

  if (v23)
  {
    v31 = 0;
  }

  else
  {
LABEL_17:
    v31 = v11;
  }

  return v31;
}

+ (id)beginTransactionForBundleID:(id)d bundlePath:(id)path syncSlot:(id)slot
{
  v41 = *MEMORY[0x1E69E9840];
  dCopy = d;
  pathCopy = path;
  slotCopy = slot;
  v11 = [_INVocabularyStoreManager managerForBundleID:dCopy bundlePath:pathCopy];
  if (v11)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 1;
    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __70___INSyncTransaction_beginTransactionForBundleID_bundlePath_syncSlot___block_invoke;
    v24 = &unk_1E7280710;
    v28 = &v29;
    v13 = dCopy;
    v25 = v13;
    v14 = slotCopy;
    v26 = v14;
    v15 = v12;
    v27 = v15;
    [v11 checkIfSyncSlot:v14 isAllowedWithCompletion:&v21];
    dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    v16 = *(v30 + 24);
    if ((v16 & 1) == 0)
    {
      v17 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v34 = "+[_INSyncTransaction beginTransactionForBundleID:bundlePath:syncSlot:]";
        v35 = 2114;
        v36 = v14;
        v37 = 2114;
        v38 = v13;
        v39 = 2114;
        v40 = pathCopy;
        _os_log_error_impl(&dword_18E991000, v17, OS_LOG_TYPE_ERROR, "%s Sync slot %{public}@ is not valid for %{public}@ at %{public}@", buf, 0x2Au);
      }

      notify_post("INVoocabularyChangedNotification");
    }

    v18 = [self alloc];
    v19 = [v18 _initWithVocabularyManager:v11 syncSlot:v14 deleteExistingVocabulary:{v16 ^ 1u, v21, v22, v23, v24}];
    [v19 _beginTransaction];

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end