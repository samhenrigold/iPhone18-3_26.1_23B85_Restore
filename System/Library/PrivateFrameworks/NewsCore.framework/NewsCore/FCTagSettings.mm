@interface FCTagSettings
+ (id)commandsToMergeLocalDataToCloud:(id)cloud;
- (FCTagSettings)initWithStore:(id)store tagSettingsDelegate:(id)delegate;
- (id)accessTokenForTagID:(id)d;
- (id)allTagSettingsRecordNames;
- (id)allTagSettingsRecords;
- (id)authenticatedAccessTokensByTagID;
- (id)contentScaleForTagID:(id)d;
- (id)fontSizeForTagID:(id)d;
- (id)webAccessOptedInTagIDs;
- (void)handleSyncWithDeletedTagSettingsRecordName:(id)name;
- (void)handleSyncWithTagSettingsRecord:(id)record;
- (void)loadLocalCachesFromStore;
- (void)setAccessTokenForTagID:(id)d accessToken:(id)token userInitiated:(BOOL)initiated;
- (void)setContentScaleForTagID:(id)d contentScale:(id)scale;
- (void)setFontSizeForTagID:(id)d fontSize:(id)size;
- (void)setWebAccessOptInForTagID:(id)d webAccessOptIn:(BOOL)in;
- (void)syncForTagID:(id)d;
@end

@implementation FCTagSettings

- (void)loadLocalCachesFromStore
{
  v38 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  if (self)
  {
    objc_storeStrong(&self->_tagSettingsEntriesByTagID, dictionary);

    localStore = self->_localStore;
  }

  else
  {

    localStore = 0;
  }

  v6 = localStore;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  allKeys = [(FCKeyValueStore *)v6 allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    v11 = @"tagID";
    do
    {
      v12 = 0;
      v32 = v9;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v33 + 1) + 8 * v12);
        if (([objc_opt_class() isLocalStoreKeyInternal:v13] & 1) == 0)
        {
          objc_opt_class();
          v14 = [(FCKeyValueStore *)v6 objectForKey:v13];
          if (v14)
          {
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          if (!v16)
          {
            goto LABEL_27;
          }

          v17 = [v16 objectForKey:v11];
          if (!v17)
          {
            goto LABEL_27;
          }

          v18 = v17;
          v19 = [v16 objectForKey:@"fontMultiplier"];
          if (v19 || ([v16 objectForKey:@"fontMultiplierMacOS"], (v19 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v16, "objectForKey:", @"contentScale"), (v19 = objc_claimAutoreleasedReturnValue()) != 0))
          {
LABEL_21:
          }

          else
          {
            v20 = [v16 objectForKey:@"contentScaleMacOS"];
            if (v20)
            {

              v19 = 0;
              goto LABEL_21;
            }

            v30 = [v16 objectForKey:@"accessToken"];

            if (!v30)
            {
LABEL_27:

              goto LABEL_28;
            }
          }

          v21 = [FCTagSettingsEntry initWithEntryID:v16 dictionaryRepresentation:?];
          if (v21)
          {
            v22 = v10;
            v23 = v11;
            v24 = allKeys;
            v25 = v6;
            if (self)
            {
              selfCopy = self;
              tagSettingsEntriesByTagID = self->_tagSettingsEntriesByTagID;
            }

            else
            {
              selfCopy = 0;
              tagSettingsEntriesByTagID = 0;
            }

            v28 = tagSettingsEntriesByTagID;
            tagID = [v21 tagID];
            [(NSMutableDictionary *)v28 setObject:v21 forKey:tagID];

            self = selfCopy;
            v6 = v25;
            allKeys = v24;
            v11 = v23;
            v10 = v22;
            v9 = v32;
          }

          goto LABEL_27;
        }

LABEL_28:
        ++v12;
      }

      while (v9 != v12);
      v31 = [allKeys countByEnumeratingWithState:&v33 objects:v37 count:16];
      v9 = v31;
    }

    while (v31);
  }
}

- (id)webAccessOptedInTagIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__FCTagSettings_webAccessOptedInTagIDs__block_invoke;
  v6[3] = &unk_1E7C408B8;
  v4 = v3;
  v7 = v4;
  [(FCTagSettings *)self enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

- (FCTagSettings)initWithStore:(id)store tagSettingsDelegate:(id)delegate
{
  v21 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = FCTagSettings;
  v9 = [(FCTagSettings *)&v12 init];
  if (v9)
  {
    if (!storeCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "store"];
      *buf = 136315906;
      v14 = "[FCTagSettings initWithStore:tagSettingsDelegate:]";
      v15 = 2080;
      v16 = "FCTagSettings.m";
      v17 = 1024;
      v18 = 43;
      v19 = 2114;
      v20 = v11;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    objc_storeStrong(&v9->_localStore, store);
    objc_storeWeak(&v9->_delegate, delegateCopy);
  }

  return v9;
}

+ (id)commandsToMergeLocalDataToCloud:(id)cloud
{
  v29 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  allKeys = [cloudCopy allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
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

          if (!v12)
          {
            goto LABEL_23;
          }

          v13 = [v12 objectForKey:@"tagID"];
          if (!v13)
          {
            goto LABEL_23;
          }

          v14 = v13;
          v15 = [v12 objectForKey:@"fontMultiplier"];
          if (v15 || ([v12 objectForKey:@"fontMultiplierMacOS"], (v15 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v12, "objectForKey:", @"contentScale"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
          {
LABEL_19:
          }

          else
          {
            v16 = [v12 objectForKey:@"contentScaleMacOS"];
            if (v16)
            {

              v15 = 0;
              goto LABEL_19;
            }

            v18 = [v12 objectForKey:@"accessToken"];

            if (!v18)
            {
LABEL_23:

              goto LABEL_24;
            }
          }

          v17 = [FCTagSettingsEntry initWithEntryID:v12 dictionaryRepresentation:?];
          if (v17)
          {
            [array2 addObject:v17];
          }

          goto LABEL_23;
        }

LABEL_24:
        ++v8;
      }

      while (v6 != v8);
      v19 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
      v6 = v19;
    }

    while (v19);
  }

  v20 = [[FCModifyTagSettingsCommand alloc] initWithTagSettingsEntries:array2 merge:1];
  [array addObject:v20];

  return array;
}

- (void)syncForTagID:(id)d
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (d)
  {
    p_isa = &self->super.isa;
    if (self)
    {
      tagSettingsEntriesByTagID = self->_tagSettingsEntriesByTagID;
    }

    else
    {
      tagSettingsEntriesByTagID = 0;
    }

    v6 = tagSettingsEntriesByTagID;
    v7 = [(NSMutableDictionary *)v6 objectForKey:d];

    if (v7)
    {
      v8 = [FCModifyTagSettingsCommand alloc];
      v11[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      v10 = [(FCModifyTagSettingsCommand *)v8 initWithTagSettingsEntries:v9 merge:1];

      if (p_isa)
      {
        p_isa = objc_loadWeakRetained(p_isa + 3);
      }

      [p_isa addModifyTagSettingsCommandToCommandQueue:v10];
    }
  }
}

- (void)setFontSizeForTagID:(id)d fontSize:(id)size
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  sizeCopy = size;
  [MEMORY[0x1E696AF00] isMainThread];
  if (dCopy)
  {
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", dCopy];
    if (self)
    {
      localStore = self->_localStore;
    }

    else
    {
      localStore = 0;
    }

    v10 = [(FCKeyValueStore *)localStore objectForKey:dCopy];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 mutableCopy];
      dCopy2 = v12;
      if (sizeCopy)
      {
        [v12 setObject:sizeCopy forKeyedSubscript:@"fontMultiplier"];
      }

      else
      {
        [v12 removeObjectForKey:@"fontMultiplier"];
      }

      v15 = [FCTagSettingsEntry initWithEntryID:dCopy2 dictionaryRepresentation:?];
    }

    else
    {
      v14 = [FCTagSettingsEntry alloc];
      dCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", dCopy];
      LOBYTE(v20) = 0;
      v15 = [(FCTagSettingsEntry *)v14 initWithEntryID:dCopy2 tagID:dCopy fontMultiplier:sizeCopy fontMultiplierMacOS:0 contentScale:0 contentScaleMacOS:0 accessToken:0 webAccessOptIn:v20];
    }

    v16 = v15;

    if (v16)
    {
      dictionaryRepresentation = [(FCTagSettingsEntry *)v16 dictionaryRepresentation];
      if (self)
      {
        [(FCKeyValueStore *)self->_localStore setObject:dictionaryRepresentation forKey:dCopy];
        tagSettingsEntriesByTagID = self->_tagSettingsEntriesByTagID;
      }

      else
      {
        [0 setObject:dictionaryRepresentation forKey:dCopy];
        tagSettingsEntriesByTagID = 0;
      }

      [(NSMutableDictionary *)tagSettingsEntriesByTagID setObject:v16 forKey:dCopy];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "entry"];
      *buf = 136315906;
      v22 = "[FCTagSettings setFontSizeForTagID:fontSize:]";
      v23 = 2080;
      v24 = "FCTagSettings.m";
      v25 = 1024;
      v26 = 188;
      v27 = 2114;
      v28 = v19;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    dCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v22 = "[FCTagSettings setFontSizeForTagID:fontSize:]";
    v23 = 2080;
    v24 = "FCTagSettings.m";
    v25 = 1024;
    v26 = 135;
    v27 = 2114;
    v28 = dCopy;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_19:
  }
}

- (id)fontSizeForTagID:(id)d
{
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v3 = [(FCTagSettings *)self objectForKey:d];
  fontMultiplier = [v3 fontMultiplier];

  return fontMultiplier;
}

- (void)setContentScaleForTagID:(id)d contentScale:(id)scale
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  scaleCopy = scale;
  [MEMORY[0x1E696AF00] isMainThread];
  if (dCopy)
  {
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", dCopy];
    if (self)
    {
      localStore = self->_localStore;
    }

    else
    {
      localStore = 0;
    }

    v10 = [(FCKeyValueStore *)localStore objectForKey:dCopy];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 mutableCopy];
      dCopy2 = v12;
      if (scaleCopy)
      {
        [v12 setObject:scaleCopy forKeyedSubscript:@"contentScale"];
      }

      else
      {
        [v12 removeObjectForKey:@"contentScale"];
      }

      v15 = [FCTagSettingsEntry initWithEntryID:dCopy2 dictionaryRepresentation:?];
    }

    else
    {
      v14 = [FCTagSettingsEntry alloc];
      dCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", dCopy];
      LOBYTE(v20) = 0;
      v15 = [(FCTagSettingsEntry *)v14 initWithEntryID:dCopy2 tagID:dCopy fontMultiplier:0 fontMultiplierMacOS:0 contentScale:scaleCopy contentScaleMacOS:0 accessToken:0 webAccessOptIn:v20];
    }

    v16 = v15;

    if (v16)
    {
      dictionaryRepresentation = [(FCTagSettingsEntry *)v16 dictionaryRepresentation];
      if (self)
      {
        [(FCKeyValueStore *)self->_localStore setObject:dictionaryRepresentation forKey:dCopy];
        tagSettingsEntriesByTagID = self->_tagSettingsEntriesByTagID;
      }

      else
      {
        [0 setObject:dictionaryRepresentation forKey:dCopy];
        tagSettingsEntriesByTagID = 0;
      }

      [(NSMutableDictionary *)tagSettingsEntriesByTagID setObject:v16 forKey:dCopy];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "entry"];
      *buf = 136315906;
      v22 = "[FCTagSettings setContentScaleForTagID:contentScale:]";
      v23 = 2080;
      v24 = "FCTagSettings.m";
      v25 = 1024;
      v26 = 266;
      v27 = 2114;
      v28 = v19;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    dCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v22 = "[FCTagSettings setContentScaleForTagID:contentScale:]";
    v23 = 2080;
    v24 = "FCTagSettings.m";
    v25 = 1024;
    v26 = 213;
    v27 = 2114;
    v28 = dCopy;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_19:
  }
}

- (id)contentScaleForTagID:(id)d
{
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v3 = [(FCTagSettings *)self objectForKey:d];
  contentScale = [v3 contentScale];

  return contentScale;
}

- (void)setAccessTokenForTagID:(id)d accessToken:(id)token userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  tokenCopy = token;
  [MEMORY[0x1E696AF00] isMainThread];
  if (dCopy)
  {
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", dCopy];
    if (self)
    {
      localStore = self->_localStore;
    }

    else
    {
      localStore = 0;
    }

    v12 = [(FCKeyValueStore *)localStore objectForKey:dCopy];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 mutableCopy];
      dCopy2 = v14;
      if (tokenCopy)
      {
        [v14 setObject:tokenCopy forKeyedSubscript:@"accessToken"];
      }

      else
      {
        [v14 removeObjectForKey:@"accessToken"];
      }

      v18 = [FCTagSettingsEntry initWithEntryID:dCopy2 dictionaryRepresentation:?];
    }

    else
    {
      v17 = [FCTagSettingsEntry alloc];
      dCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", dCopy];
      LOBYTE(v26) = 0;
      v18 = [(FCTagSettingsEntry *)v17 initWithEntryID:dCopy2 tagID:dCopy fontMultiplier:0 fontMultiplierMacOS:0 contentScale:0 contentScaleMacOS:0 accessToken:tokenCopy webAccessOptIn:v26];
    }

    v19 = v18;

    if (v19)
    {
      dictionaryRepresentation = [(FCTagSettingsEntry *)v19 dictionaryRepresentation];
      if (self)
      {
        [(FCKeyValueStore *)self->_localStore setObject:dictionaryRepresentation forKey:dCopy];
        tagSettingsEntriesByTagID = self->_tagSettingsEntriesByTagID;
      }

      else
      {
        [0 setObject:dictionaryRepresentation forKey:dCopy];
        tagSettingsEntriesByTagID = 0;
      }

      [(NSMutableDictionary *)tagSettingsEntriesByTagID setObject:v19 forKey:dCopy];
      v22 = [FCModifyTagSettingsCommand alloc];
      v27 = v19;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      v24 = [(FCModifyTagSettingsCommand *)v22 initWithTagSettingsEntries:v23 merge:1];

      if (self)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
      }

      else
      {
        WeakRetained = 0;
      }

      [WeakRetained addModifyTagSettingsCommandToCommandQueue:v24];
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      dictionaryRepresentation = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "entry"];
      *buf = 136315906;
      v29 = "[FCTagSettings setAccessTokenForTagID:accessToken:userInitiated:]";
      v30 = 2080;
      v31 = "FCTagSettings.m";
      v32 = 1024;
      v33 = 326;
      v34 = 2114;
      v35 = dictionaryRepresentation;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

LABEL_20:
    if (!tokenCopy)
    {
      if (self)
      {
        self = objc_loadWeakRetained(&self->_delegate);
      }

      [(FCTagSettings *)self accessTokenRemovedForTagID:dCopy userInitiated:initiatedCopy];
    }

    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v29 = "[FCTagSettings setAccessTokenForTagID:accessToken:userInitiated:]";
    v30 = 2080;
    v31 = "FCTagSettings.m";
    v32 = 1024;
    v33 = 291;
    v34 = 2114;
    v35 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_25:
}

- (id)accessTokenForTagID:(id)d
{
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v3 = [(FCTagSettings *)self objectForKey:d];
  accessToken = [v3 accessToken];

  return accessToken;
}

- (id)authenticatedAccessTokensByTagID
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__FCTagSettings_authenticatedAccessTokensByTagID__block_invoke;
  v7[3] = &unk_1E7C408B8;
  v8 = dictionary;
  v4 = dictionary;
  [(FCTagSettings *)self enumerateKeysAndObjectsUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

void __49__FCTagSettings_authenticatedAccessTokensByTagID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 accessToken];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v5 accessToken];
    [v7 setObject:v9 forKey:v8];
  }
}

- (void)setWebAccessOptInForTagID:(id)d webAccessOptIn:(BOOL)in
{
  inCopy = in;
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [MEMORY[0x1E696AF00] isMainThread];
  if (dCopy)
  {
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", dCopy];
    if (self)
    {
      localStore = self->_localStore;
    }

    else
    {
      localStore = 0;
    }

    v9 = [(FCKeyValueStore *)localStore objectForKey:dCopy];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 mutableCopy];
      dCopy2 = v11;
      if (inCopy)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [dCopy2 setObject:v13 forKeyedSubscript:@"webAccessOptIn"];
      }

      else
      {
        [v11 removeObjectForKey:@"webAccessOptIn"];
      }

      v15 = [FCTagSettingsEntry initWithEntryID:dCopy2 dictionaryRepresentation:?];
    }

    else
    {
      v14 = [FCTagSettingsEntry alloc];
      dCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", dCopy];
      LOBYTE(v23) = inCopy;
      v15 = [(FCTagSettingsEntry *)v14 initWithEntryID:dCopy2 tagID:dCopy fontMultiplier:0 fontMultiplierMacOS:0 contentScale:0 contentScaleMacOS:0 accessToken:0 webAccessOptIn:v23];
    }

    v16 = v15;

    if (v16)
    {
      dictionaryRepresentation = [(FCTagSettingsEntry *)v16 dictionaryRepresentation];
      if (self)
      {
        [(FCKeyValueStore *)self->_localStore setObject:dictionaryRepresentation forKey:dCopy];
        tagSettingsEntriesByTagID = self->_tagSettingsEntriesByTagID;
      }

      else
      {
        [0 setObject:dictionaryRepresentation forKey:dCopy];
        tagSettingsEntriesByTagID = 0;
      }

      [(NSMutableDictionary *)tagSettingsEntriesByTagID setObject:v16 forKey:dCopy];
      v19 = [FCModifyTagSettingsCommand alloc];
      v24 = v16;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      v21 = [(FCModifyTagSettingsCommand *)v19 initWithTagSettingsEntries:v20 merge:1];

      if (self)
      {
        self = objc_loadWeakRetained(&self->_delegate);
      }

      [(FCTagSettings *)self addModifyTagSettingsCommandToCommandQueue:v21];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "entry"];
      *buf = 136315906;
      v26 = "[FCTagSettings setWebAccessOptInForTagID:webAccessOptIn:]";
      v27 = 2080;
      v28 = "FCTagSettings.m";
      v29 = 1024;
      v30 = 404;
      v31 = 2114;
      v32 = v22;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    dCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v26 = "[FCTagSettings setWebAccessOptInForTagID:webAccessOptIn:]";
    v27 = 2080;
    v28 = "FCTagSettings.m";
    v29 = 1024;
    v30 = 369;
    v31 = 2114;
    v32 = dCopy;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_21:
  }
}

void __39__FCTagSettings_webAccessOptedInTagIDs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 webAccessOptIn])
  {
    v4 = *(a1 + 32);
    v5 = [v6 tagID];
    [v4 addObject:v5];
  }
}

- (void)handleSyncWithTagSettingsRecord:(id)record
{
  v47 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];

  selfCopy = self;
  if (self)
  {
    localStore = self->_localStore;
  }

  else
  {
    localStore = 0;
  }

  v7 = localStore;
  v8 = [recordCopy objectForKeyedSubscript:@"tagID"];
  v9 = [recordCopy objectForKeyedSubscript:@"fontMultiplier"];
  v10 = [recordCopy objectForKeyedSubscript:@"fontMultiplierMacOS"];
  v34 = [recordCopy objectForKeyedSubscript:@"contentScale"];
  v33 = [recordCopy objectForKeyedSubscript:@"contentScaleMacOS"];
  v32 = [recordCopy objectForKeyedSubscript:?];
  v36 = [recordCopy objectForKeyedSubscript:?];

  v35 = v7;
  v11 = [(FCKeyValueStore *)v7 objectForKey:recordName];
  v12 = v11;
  if (v11)
  {
    v31 = v11;
    v13 = [v11 mutableCopy];
    v14 = v13;
    if (v9)
    {
      [v13 setObject:v9 forKeyedSubscript:@"fontMultiplier"];
    }

    else
    {
      [v13 removeObjectForKey:@"fontMultiplier"];
    }

    v15 = v8;
    v26 = v36;
    v17 = v10;
    if (v10)
    {
      [v14 setObject:v10 forKeyedSubscript:@"fontMultiplierMacOS"];
    }

    else
    {
      [v14 removeObjectForKey:@"fontMultiplierMacOS"];
    }

    v18 = v34;
    v20 = v32;
    if (v34)
    {
      [v14 setObject:v34 forKeyedSubscript:@"contentScale"];
    }

    else
    {
      [v14 removeObjectForKey:@"contentScale"];
    }

    v19 = v33;
    if (v33)
    {
      [v14 setObject:v33 forKeyedSubscript:@"contentScaleMacOS"];
    }

    else
    {
      [v14 removeObjectForKey:@"contentScaleMacOS"];
    }

    if (v36)
    {
      [v14 setObject:v36 forKeyedSubscript:@"accessToken"];
    }

    else
    {
      [v14 removeObjectForKey:@"accessToken"];
    }

    if (v32)
    {
      [v14 setObject:v32 forKeyedSubscript:@"webAccessOptIn"];
    }

    else
    {
      [v14 removeObjectForKey:@"webAccessOptIn"];
    }

    v25 = v35;
    [(FCKeyValueStore *)v35 setObject:v14 forKey:recordName];
    if (v15)
    {
      v27 = [FCTagSettingsEntry initWithEntryID:v14 dictionaryRepresentation:?];
      if (selfCopy)
      {
        tagSettingsEntriesByTagID = selfCopy->_tagSettingsEntriesByTagID;
      }

      else
      {
        tagSettingsEntriesByTagID = 0;
      }

      [(NSMutableDictionary *)tagSettingsEntriesByTagID setObject:v27 forKey:v15];
    }

    if (selfCopy)
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained accessTokenDidChangeForTagID:v15];

LABEL_45:
    v12 = v31;
    goto LABEL_46;
  }

  v15 = v8;
  if (v8)
  {
    v31 = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v8 forKey:@"tagID"];
    if (v9)
    {
      [dictionary setObject:v9 forKey:@"fontMultiplier"];
    }

    v17 = v10;
    if (v10)
    {
      [dictionary setObject:v10 forKey:@"fontMultiplierMacOS"];
    }

    v18 = v34;
    if (v34)
    {
      [dictionary setObject:v34 forKey:@"contentScale"];
    }

    v20 = v32;
    v19 = v33;
    if (v33)
    {
      [dictionary setObject:v33 forKey:@"contentScaleMacOS"];
    }

    if (v36)
    {
      [dictionary setObject:v36 forKey:@"accessToken"];
    }

    if (v32)
    {
      [dictionary setObject:v32 forKey:@"webAccessOptIn"];
    }

    v21 = [FCTagSettingsEntry alloc];
    v22 = [dictionary copy];
    v23 = [FCTagSettingsEntry initWithEntryID:v21 dictionaryRepresentation:v22];

    if (selfCopy)
    {
      [(NSMutableDictionary *)selfCopy->_tagSettingsEntriesByTagID setObject:v23 forKey:v15];
      v24 = objc_loadWeakRetained(&selfCopy->_delegate);
    }

    else
    {
      [0 setObject:v23 forKey:v15];
      v24 = 0;
    }

    v25 = v35;
    [v24 accessTokenDidChangeForTagID:v15];

    [(FCKeyValueStore *)v35 setObject:dictionary forKey:recordName];
    v26 = v36;
    goto LABEL_45;
  }

  v17 = v10;
  v18 = v34;
  v25 = v35;
  v20 = v32;
  v19 = v33;
  v26 = v36;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a tag settings entry without a tag ID"];
    *buf = 136315906;
    v40 = "[FCTagSettings handleSyncWithTagSettingsRecord:]";
    v41 = 2080;
    v42 = "FCTagSettings.m";
    v43 = 1024;
    v44 = 448;
    v45 = 2114;
    v46 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    v12 = 0;
  }

LABEL_46:
}

- (void)handleSyncWithDeletedTagSettingsRecordName:(id)name
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

  v9 = nameCopy;
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

    [(FCKeyValueStore *)v7 removeObjectForKey:v9];
    v8 = [v6 objectForKeyedSubscript:@"tagID"];
    if (v8)
    {
      if (self)
      {
        [(NSMutableDictionary *)self->_tagSettingsEntriesByTagID fc_safelySetObject:0 forKey:v8];
        self = objc_loadWeakRetained(&self->_delegate);
      }

      else
      {
        [0 fc_safelySetObject:0 forKey:v8];
      }

      [(FCTagSettings *)self accessTokenDidChangeForTagID:v8];
    }
  }
}

- (id)allTagSettingsRecordNames
{
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  allValues = [(FCTagSettings *)self allValues];
  v3 = [allValues fc_arrayByTransformingWithBlock:&__block_literal_global_71];

  return v3;
}

- (id)allTagSettingsRecords
{
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  allValues = [(FCTagSettings *)self allValues];
  v3 = [allValues fc_arrayByTransformingWithBlock:&__block_literal_global_25_0];

  return v3;
}

@end