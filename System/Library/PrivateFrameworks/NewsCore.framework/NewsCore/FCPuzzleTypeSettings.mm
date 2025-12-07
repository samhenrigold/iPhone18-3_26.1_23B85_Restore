@interface FCPuzzleTypeSettings
+ (id)commandsToMergeLocalDataToCloud:(id)cloud;
- (FCPuzzleTypeSettings)initWithStore:(id)store delegate:(id)delegate;
- (id)_allEntriesInPuzzleTypeSettings;
- (id)_puzzleTypeSettingsEntryForPuzzleTypeID:(id *)d;
- (id)allPuzzleTypeSettingsRecordNames;
- (id)allPuzzleTypeSettingsRecords;
- (id)lastSeenPuzzleIDsForPuzzleTypeID:(id)d;
- (id)settingsDataForPuzzleTypeID:(id)d;
- (void)handleSyncWithDeletedPuzzleTypeSettingsRecordName:(id)name;
- (void)handleSyncWithPuzzleTypeSettingsRecord:(id)record;
- (void)loadLocalCachesFromStore;
- (void)setSettingsData:(void *)data lastSeenPuzzleIDs:(void *)ds puzzleTypeID:;
- (void)syncForPuzzleTypeID:(id)d;
@end

@implementation FCPuzzleTypeSettings

- (void)loadLocalCachesFromStore
{
  if (self)
  {
    entriesLock = self->_entriesLock;
  }

  else
  {
    entriesLock = 0;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__FCPuzzleTypeSettings_loadLocalCachesFromStore__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(FCMTWriterLock *)entriesLock performWriteSync:v3];
}

void __48__FCPuzzleTypeSettings_loadLocalCachesFromStore__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v23 = a1;
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_storeStrong((v3 + 16), v2);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[3];
  }

  v5 = v4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if (([objc_opt_class() isLocalStoreKeyInternal:v11] & 1) == 0)
        {
          objc_opt_class();
          v12 = [v5 objectForKey:v11];
          if (v12)
          {
            if (objc_opt_isKindOfClass())
            {
              v13 = v12;
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          if (v14)
          {
            v15 = [v14 objectForKey:@"puzzleTypeID"];
            if (v15)
            {
              v16 = v15;
              v17 = [v14 objectForKey:@"settingsData"];
              if (v17)
              {

                goto LABEL_21;
              }

              v18 = [v14 objectForKey:@"lastSeenPuzzleIDs"];

              if (v18)
              {
LABEL_21:
                v19 = [[FCPuzzleTypeSettingsEntry alloc] initWithEntryID:v11 dictionaryRepresentation:v14];
                if (v19)
                {
                  v20 = *(v23 + 32);
                  if (v20)
                  {
                    v20 = v20[2];
                  }

                  v21 = v20;
                  v22 = [v19 puzzleTypeID];
                  [v21 setObject:v19 forKey:v22];
                }
              }
            }
          }

          continue;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }
}

- (FCPuzzleTypeSettings)initWithStore:(id)store delegate:(id)delegate
{
  v25 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = FCPuzzleTypeSettings;
  v9 = [(FCPuzzleTypeSettings *)&v16 init];
  if (v9)
  {
    if (!storeCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "store"];
      *buf = 136315906;
      v18 = "[FCPuzzleTypeSettings initWithStore:delegate:]";
      v19 = 2080;
      v20 = "FCPuzzleTypeSettings.m";
      v21 = 1024;
      v22 = 46;
      v23 = 2114;
      v24 = v15;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    objc_storeStrong(&v9->_localStore, store);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10 = objc_alloc_init(FCMTWriterLock);
    entriesLock = v9->_entriesLock;
    v9->_entriesLock = v10;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    entriesByPuzzleTypeID = v9->_entriesByPuzzleTypeID;
    v9->_entriesByPuzzleTypeID = dictionary;
  }

  return v9;
}

+ (id)commandsToMergeLocalDataToCloud:(id)cloud
{
  v28 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [cloudCopy allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        if (([objc_opt_class() isLocalStoreKeyInternal:v9] & 1) == 0)
        {
          objc_opt_class();
          v10 = [cloudCopy objectForKey:v9];
          if (v10)
          {
            if (objc_opt_isKindOfClass())
            {
              v11 = v10;
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            v11 = 0;
          }

          v12 = v11;

          if (v12)
          {
            v13 = [v12 objectForKey:@"puzzleTypeID"];
            if (v13)
            {
              v14 = v13;
              v15 = [v12 objectForKey:@"settingsData"];
              if (v15)
              {

                goto LABEL_17;
              }

              v16 = [v12 objectForKey:@"lastSeenPuzzleIDs"];

              if (v16)
              {
LABEL_17:
                v17 = [[FCPuzzleTypeSettingsEntry alloc] initWithEntryID:v9 dictionaryRepresentation:v12];
                [array addObject:v17];
              }
            }
          }

          continue;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v18 = [[FCModifyPuzzleTypeSettingsCommand alloc] initWithPuzzleTypeSettingsEntries:array merge:1];
  v26 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];

  return v19;
}

- (void)syncForPuzzleTypeID:(id)d
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (d)
  {
    p_isa = &self->super.isa;
    v4 = [(FCPuzzleTypeSettings *)&self->super.isa _puzzleTypeSettingsEntryForPuzzleTypeID:d];
    if (v4)
    {
      v5 = [FCModifyPuzzleTypeSettingsCommand alloc];
      v8[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      v7 = [(FCModifyPuzzleTypeSettingsCommand *)v5 initWithPuzzleTypeSettingsEntries:v6 merge:1];

      if (p_isa)
      {
        p_isa = objc_loadWeakRetained(p_isa + 4);
      }

      [p_isa addModifyPuzzleTypeSettingsCommandToCommandQueue:v7];
    }
  }
}

- (id)_puzzleTypeSettingsEntryForPuzzleTypeID:(id *)d
{
  v3 = a2;
  v4 = v3;
  if (d)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__78;
    v15 = __Block_byref_object_dispose__78;
    v16 = 0;
    if (v3)
    {
      v5 = d[1];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __64__FCPuzzleTypeSettings__puzzleTypeSettingsEntryForPuzzleTypeID___block_invoke;
      v8[3] = &unk_1E7C37138;
      v10 = &v11;
      v8[4] = d;
      v9 = v4;
      [v5 performReadSync:v8];

      v6 = v12[5];
    }

    else
    {
      v6 = 0;
    }

    d = v6;
    _Block_object_dispose(&v11, 8);
  }

  return d;
}

- (void)setSettingsData:(void *)data lastSeenPuzzleIDs:(void *)ds puzzleTypeID:
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a2;
  dataCopy = data;
  dsCopy = ds;
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    if (dsCopy)
    {
      dsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ps-%@", dsCopy];
      v11 = [*(self + 24) objectForKey:dsCopy];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 mutableCopy];
        v14 = v13;
        if (v7)
        {
          [v13 setObject:v7 forKeyedSubscript:@"settingsData"];
        }

        if (dataCopy)
        {
          [v14 setObject:dataCopy forKeyedSubscript:@"lastSeenPuzzleIDs"];
        }

        v15 = [[FCPuzzleTypeSettingsEntry alloc] initWithEntryID:dsCopy dictionaryRepresentation:v14];

        if (v15)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v15 = [[FCPuzzleTypeSettingsEntry alloc] initWithEntryID:dsCopy puzzleTypeID:dsCopy settingsData:v7 lastSeenPuzzleIDs:dataCopy];
        if (v15)
        {
LABEL_9:
          puzzleTypeID = [(FCPuzzleTypeSettingsEntry *)v15 puzzleTypeID];

          if (!puzzleTypeID && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"puzzleTypeSettingsEntry must have a puzzleTypeID"];
            *buf = 136315906;
            v37 = "[FCPuzzleTypeSettingsEntry(FCPuzzleTypeSettings) dictionaryRepresentation]";
            v38 = 2080;
            v39 = "FCPuzzleTypeSettings.m";
            v40 = 1024;
            v41 = 341;
            v42 = 2114;
            v43 = v31;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          dictionary = [MEMORY[0x1E695DF90] dictionary];
          puzzleTypeID2 = [(FCPuzzleTypeSettingsEntry *)v15 puzzleTypeID];

          if (puzzleTypeID2)
          {
            puzzleTypeID3 = [(FCPuzzleTypeSettingsEntry *)v15 puzzleTypeID];
            [dictionary setObject:puzzleTypeID3 forKey:@"puzzleTypeID"];
          }

          settingsData = [(FCPuzzleTypeSettingsEntry *)v15 settingsData];

          if (settingsData)
          {
            settingsData2 = [(FCPuzzleTypeSettingsEntry *)v15 settingsData];
            [dictionary setObject:settingsData2 forKey:@"settingsData"];
          }

          lastSeenPuzzleIDs = [(FCPuzzleTypeSettingsEntry *)v15 lastSeenPuzzleIDs];

          if (lastSeenPuzzleIDs)
          {
            lastSeenPuzzleIDs2 = [(FCPuzzleTypeSettingsEntry *)v15 lastSeenPuzzleIDs];
            [dictionary setObject:lastSeenPuzzleIDs2 forKey:@"lastSeenPuzzleIDs"];
          }

          [*(self + 24) setObject:dictionary forKey:dsCopy];
          v24 = *(self + 8);
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __71__FCPuzzleTypeSettings_setSettingsData_lastSeenPuzzleIDs_puzzleTypeID___block_invoke;
          v32[3] = &unk_1E7C376A0;
          v32[4] = self;
          v25 = v15;
          v33 = v25;
          v34 = dsCopy;
          [v24 performWriteSync:v32];
          v26 = [FCModifyPuzzleTypeSettingsCommand alloc];
          v35 = v25;
          v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
          v28 = [(FCModifyPuzzleTypeSettingsCommand *)v26 initWithPuzzleTypeSettingsEntries:v27 merge:1];

          WeakRetained = objc_loadWeakRetained((self + 32));
          [WeakRetained addModifyPuzzleTypeSettingsCommandToCommandQueue:v28];

LABEL_24:
          goto LABEL_25;
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "entry"];
        *buf = 136315906;
        v37 = "[FCPuzzleTypeSettings setSettingsData:lastSeenPuzzleIDs:puzzleTypeID:]";
        v38 = 2080;
        v39 = "FCPuzzleTypeSettings.m";
        v40 = 1024;
        v41 = 171;
        v42 = 2114;
        v43 = v30;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      goto LABEL_24;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      dsCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleTypeID != nil"];
      *buf = 136315906;
      v37 = "[FCPuzzleTypeSettings setSettingsData:lastSeenPuzzleIDs:puzzleTypeID:]";
      v38 = 2080;
      v39 = "FCPuzzleTypeSettings.m";
      v40 = 1024;
      v41 = 138;
      v42 = 2114;
      v43 = dsCopy;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_25:
    }
  }
}

uint64_t __71__FCPuzzleTypeSettings_setSettingsData_lastSeenPuzzleIDs_puzzleTypeID___block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v1 = v1[2];
  }

  return [v1 setObject:a1[5] forKey:a1[6]];
}

- (id)settingsDataForPuzzleTypeID:(id)d
{
  v3 = [(FCPuzzleTypeSettings *)&self->super.isa _puzzleTypeSettingsEntryForPuzzleTypeID:d];
  settingsData = [v3 settingsData];

  return settingsData;
}

- (id)lastSeenPuzzleIDsForPuzzleTypeID:(id)d
{
  v3 = [(FCPuzzleTypeSettings *)&self->super.isa _puzzleTypeSettingsEntryForPuzzleTypeID:d];
  lastSeenPuzzleIDs = [v3 lastSeenPuzzleIDs];

  return lastSeenPuzzleIDs;
}

- (void)handleSyncWithPuzzleTypeSettingsRecord:(id)record
{
  v41 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"puzzleTypeID"];
  v26 = [recordCopy objectForKeyedSubscript:@"settingsData"];
  v6 = [recordCopy objectForKeyedSubscript:@"lastSeenPuzzleIDs"];
  if (self)
  {
    localStore = self->_localStore;
  }

  else
  {
    localStore = 0;
  }

  v8 = localStore;
  recordID = [recordCopy recordID];

  recordName = [recordID recordName];

  v11 = [(FCKeyValueStore *)v8 objectForKey:recordName];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 mutableCopy];
    dictionary = v13;
    if (v26)
    {
      [v13 setObject:v26 forKeyedSubscript:@"settingsData"];
    }

    if (v6)
    {
      [dictionary setObject:v6 forKeyedSubscript:@"lastSeenPuzzleIDs"];
    }

    [(FCKeyValueStore *)v8 setObject:dictionary forKey:recordName];
    if (v5)
    {
      v15 = [[FCPuzzleTypeSettingsEntry alloc] initWithEntryID:recordName dictionaryRepresentation:dictionary];
      v16 = v15;
      if (self)
      {
        entriesLock = self->_entriesLock;
      }

      else
      {
        entriesLock = 0;
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __63__FCPuzzleTypeSettings_handleSyncWithPuzzleTypeSettingsRecord___block_invoke_2;
      v27[3] = &unk_1E7C376A0;
      v27[4] = self;
      v28 = v15;
      v29 = v5;
      v18 = v16;
      [(FCMTWriterLock *)entriesLock performWriteSync:v27];
    }

    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained settingsDataDidChangeForPuzzleTypeID:v5];
LABEL_25:

    goto LABEL_26;
  }

  if (v5)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v5 forKey:@"puzzleTypeID"];
    if (v26)
    {
      [dictionary setObject:v26 forKey:@"settingsData"];
    }

    if (v6)
    {
      [dictionary setObject:v6 forKey:@"lastSeenPuzzleIDs"];
    }

    v20 = [FCPuzzleTypeSettingsEntry alloc];
    v21 = [dictionary copy];
    v22 = [(FCPuzzleTypeSettingsEntry *)v20 initWithEntryID:recordName dictionaryRepresentation:v21];

    if (self)
    {
      v23 = self->_entriesLock;
    }

    else
    {
      v23 = 0;
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __63__FCPuzzleTypeSettings_handleSyncWithPuzzleTypeSettingsRecord___block_invoke;
    v30[3] = &unk_1E7C376A0;
    v30[4] = self;
    WeakRetained = v22;
    v31 = WeakRetained;
    v24 = v5;
    v32 = v24;
    [(FCMTWriterLock *)v23 performWriteSync:v30];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_delegate);
    }

    [(FCPuzzleTypeSettings *)self settingsDataDidChangeForPuzzleTypeID:v24];

    [(FCKeyValueStore *)v8 setObject:dictionary forKey:recordName];
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a puzzleTypeSettings entry without a puzzleTypeID"];
    *buf = 136315906;
    v34 = "[FCPuzzleTypeSettings handleSyncWithPuzzleTypeSettingsRecord:]";
    v35 = 2080;
    v36 = "FCPuzzleTypeSettings.m";
    v37 = 1024;
    v38 = 211;
    v39 = 2114;
    v40 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_26:
}

uint64_t __63__FCPuzzleTypeSettings_handleSyncWithPuzzleTypeSettingsRecord___block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v1 = v1[2];
  }

  return [v1 setObject:a1[5] forKey:a1[6]];
}

uint64_t __63__FCPuzzleTypeSettings_handleSyncWithPuzzleTypeSettingsRecord___block_invoke_2(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v1 = v1[2];
  }

  return [v1 setObject:a1[5] forKey:a1[6]];
}

- (void)handleSyncWithDeletedPuzzleTypeSettingsRecordName:(id)name
{
  nameCopy = name;
  if (self)
  {
    localStore = self->_localStore;
  }

  else
  {
    localStore = 0;
  }

  v6 = [(FCKeyValueStore *)localStore objectForKey:nameCopy];
  if (v6)
  {
    if (self)
    {
      v7 = self->_localStore;
    }

    else
    {
      v7 = 0;
    }

    [(FCKeyValueStore *)v7 removeObjectForKey:nameCopy];
    v8 = [v6 objectForKeyedSubscript:@"puzzleTypeID"];
    v9 = v8;
    if (v8)
    {
      if (self)
      {
        entriesLock = self->_entriesLock;
      }

      else
      {
        entriesLock = 0;
      }

      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __74__FCPuzzleTypeSettings_handleSyncWithDeletedPuzzleTypeSettingsRecordName___block_invoke;
      v15 = &unk_1E7C36C58;
      selfCopy = self;
      v11 = v8;
      v17 = v11;
      [(FCMTWriterLock *)entriesLock performWriteSync:&v12];
      if (self)
      {
        self = objc_loadWeakRetained(&self->_delegate);
      }

      [(FCPuzzleTypeSettings *)self settingsDataDidChangeForPuzzleTypeID:v11, v12, v13, v14, v15, selfCopy];
    }
  }
}

uint64_t __74__FCPuzzleTypeSettings_handleSyncWithDeletedPuzzleTypeSettingsRecordName___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[2];
  }

  return [v1 fc_safelySetObject:0 forKey:*(a1 + 40)];
}

- (id)allPuzzleTypeSettingsRecordNames
{
  _allEntriesInPuzzleTypeSettings = [(FCPuzzleTypeSettings *)&self->super.isa _allEntriesInPuzzleTypeSettings];
  v3 = [_allEntriesInPuzzleTypeSettings fc_arrayByTransformingWithBlock:&__block_literal_global_161];

  return v3;
}

- (id)_allEntriesInPuzzleTypeSettings
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__78;
    v9 = __Block_byref_object_dispose__78;
    v10 = 0;
    v2 = self[1];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __55__FCPuzzleTypeSettings__allEntriesInPuzzleTypeSettings__block_invoke;
    v4[3] = &unk_1E7C37160;
    v4[4] = selfCopy;
    v4[5] = &v5;
    [v2 performReadSync:v4];

    selfCopy = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy;
}

- (id)allPuzzleTypeSettingsRecords
{
  _allEntriesInPuzzleTypeSettings = [(FCPuzzleTypeSettings *)&self->super.isa _allEntriesInPuzzleTypeSettings];
  v3 = [_allEntriesInPuzzleTypeSettings fc_arrayByTransformingWithBlock:&__block_literal_global_24];

  return v3;
}

void __64__FCPuzzleTypeSettings__puzzleTypeSettingsEntryForPuzzleTypeID___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[2];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKey:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __55__FCPuzzleTypeSettings__allEntriesInPuzzleTypeSettings__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[2];
  }

  v3 = v2;
  v7 = [v3 allValues];
  v4 = [v7 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end