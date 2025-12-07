@interface CPSWebClipStore
+ (id)_readWebClipDictionaryRepresentationFromDiskWithWebClipIdentifier:(id)identifier;
+ (id)_urlForWebClipWithIdentifier:(id)identifier;
+ (id)sharedStore;
- (BOOL)_redirectPoweredByWebClipsWithApplicationBundleIdentifier:(id)identifier toParentApplicationBundleIdentifier:(id)bundleIdentifier errors:(id *)errors;
- (BOOL)_removeWebClipWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)_removeWebClipsWithApplicationBundleIdentifier:(id)identifier errors:(id *)errors;
- (BOOL)_saveWebClip:(id)clip error:(id *)error;
- (id)_copyOrReplaceExistingFileAtPath:(id)path withNewFileAtPath:(id)atPath;
- (id)_createOrUpdateExistingWebClipWithClipMetadata:(id)metadata createdNewWebClip:(BOOL *)clip error:(id *)error;
- (id)_enumerateAndFilterClipsWithBlock:(id)block;
- (id)_enumerateAndMapClipsWithBlock:(id)block;
- (id)_fetchInstalledAppClips;
- (id)_init;
- (id)_removeFileFromPath:(id)path;
- (id)_webClipsBackedbyAppClipIdentifier:(id)identifier;
- (id)synchronouslyGetAppClipWithIdentifier:(id)identifier;
- (void)_reloadSpringBoardIconForWebClipWithIdentifier:(id)identifier;
- (void)createOrUpdateExistingWebClipWithMetadata:(id)metadata comletionHandler:(id)handler;
- (void)fetchAppClipsWithCompletionHandler:(id)handler;
- (void)fetchBookmarkWebClipsWithCompletionHandler:(id)handler;
- (void)fetchWebClipsURLStringForClientBundleID:(id)d completionHandler:(id)handler;
- (void)fetchWebClipsUUIDStringForClientBundleID:(id)d completionHandler:(id)handler;
- (void)getAppClipWithIdentifier:(id)identifier receiveOnQueue:(id)queue completionHandler:(id)handler;
- (void)getAppClipWithURLHash:(id)hash completionHandler:(id)handler;
- (void)getWebClipDictionaryWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getWebClipWithURL:(id)l completionHandler:(id)handler;
- (void)getWebClipsBackedbyAppClipIdentifier:(id)identifier completion:(id)completion;
- (void)purgeDuplicateWebClipsWithCompletionHandler:(id)handler;
- (void)redirectPoweredByWebClipsWithApplicationBundleIdentifier:(id)identifier toParentApplicationBundleIdentifier:(id)bundleIdentifier completionHandler:(id)handler;
- (void)reloadSpringBoardIconForWebClipWithIdentifier:(id)identifier;
- (void)removeAppClipIconForWebClipWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeExpiredPoweredByWebClipsWithCompletionHandler:(id)handler;
- (void)removePoweredByWebClipsLastActivatedBefore:(id)before completion:(id)completion;
- (void)removeWebClipWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeWebClipsWithApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeWebClipsWithApplicationBundleIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)saveWebClip:(id)clip completionHandler:(id)handler;
- (void)updateAppClipIcon:(id)icon forWebClipWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)updateWebClipTitle:(id)title forAppClipBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation CPSWebClipStore

+ (id)sharedStore
{
  if (sharedStore_onceToken != -1)
  {
    +[CPSWebClipStore sharedStore];
  }

  v3 = sharedStore_store;

  return v3;
}

uint64_t __30__CPSWebClipStore_sharedStore__block_invoke()
{
  sharedStore_store = [[CPSWebClipStore alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = CPSWebClipStore;
  v2 = [(CPSWebClipStore *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.ClipServices.%@.%p", objc_opt_class(), v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = v2;
  }

  return v2;
}

+ (id)_urlForWebClipWithIdentifier:(id)identifier
{
  v3 = pathForWebClipWithIdentifier(identifier);
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_readWebClipDictionaryRepresentationFromDiskWithWebClipIdentifier:(id)identifier
{
  v3 = [self _urlForWebClipWithIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    v5 = CFBundleCopyInfoDictionaryForURL(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)redirectPoweredByWebClipsWithApplicationBundleIdentifier:(id)identifier toParentApplicationBundleIdentifier:(id)bundleIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __130__CPSWebClipStore_redirectPoweredByWebClipsWithApplicationBundleIdentifier_toParentApplicationBundleIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278DCE070;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = bundleIdentifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = bundleIdentifierCopy;
  v14 = identifierCopy;
  dispatch_async(queue, v15);
}

void __130__CPSWebClipStore_redirectPoweredByWebClipsWithApplicationBundleIdentifier_toParentApplicationBundleIdentifier_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v7 = 0;
  [v2 _redirectPoweredByWebClipsWithApplicationBundleIdentifier:v3 toParentApplicationBundleIdentifier:v4 errors:&v7];
  v5 = v7;
  v6 = a1[7];
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

- (BOOL)_redirectPoweredByWebClipsWithApplicationBundleIdentifier:(id)identifier toParentApplicationBundleIdentifier:(id)bundleIdentifier errors:(id *)errors
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  _appClips = [(CPSWebClipStore *)self _appClips];
  v10 = [_appClips countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(_appClips);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if ([v14 isPoweredBy])
        {
          applicationBundleIdentifier = [v14 applicationBundleIdentifier];
          v16 = [applicationBundleIdentifier isEqualToString:identifierCopy];

          if (v16)
          {
            [v14 setApplicationBundleIdentifier:bundleIdentifierCopy];
            v21 = 0;
            [(CPSWebClipStore *)self _saveWebClip:v14 error:&v21];
            v17 = v21;
            if (v17)
            {
              [array addObject:v17];
            }
          }
        }
      }

      v11 = [_appClips countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v18 = [array count] == 0;
  return v18;
}

- (void)removeWebClipsWithApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__CPSWebClipStore_removeWebClipsWithApplicationBundleIdentifier_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

void __83__CPSWebClipStore_removeWebClipsWithApplicationBundleIdentifier_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v6 = 0;
  [v2 _removeWebClipsWithApplicationBundleIdentifier:v3 errors:&v6];
  v4 = v6;
  v5 = a1[6];
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

- (BOOL)_removeWebClipsWithApplicationBundleIdentifier:(id)identifier errors:(id *)errors
{
  errorsCopy = errors;
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  _appClips = [(CPSWebClipStore *)self _appClips];
  v8 = [_appClips countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(_appClips);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        applicationBundleIdentifier = [v12 applicationBundleIdentifier];
        v14 = [applicationBundleIdentifier isEqualToString:identifierCopy];

        if (v14)
        {
          identifier = [v12 identifier];
          v21 = 0;
          [(CPSWebClipStore *)self _removeWebClipWithIdentifier:identifier error:&v21];
          v16 = v21;
          if (v16)
          {
            [array addObject:v16];
          }
        }
      }

      v9 = [_appClips countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  if ([array count])
  {
    v17 = array;
  }

  else
  {
    v17 = 0;
  }

  *errorsCopy = v17;
  v18 = [array count] == 0;

  return v18;
}

- (void)removeWebClipsWithApplicationBundleIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__CPSWebClipStore_removeWebClipsWithApplicationBundleIdentifiers_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  v12 = identifiersCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifiersCopy;
  dispatch_async(queue, block);
}

void __84__CPSWebClipStore_removeWebClipsWithApplicationBundleIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [*(a1 + 40) _appClips];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 applicationBundleIdentifier];
        v11 = [v3 containsObject:v10];

        if (v11)
        {
          v12 = [v9 identifier];
          v13 = *(a1 + 40);
          v17 = 0;
          [v13 _removeWebClipWithIdentifier:v12 error:&v17];
          v14 = v17;
          if (v14)
          {
            [v2 addObject:v14];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    if ([v2 count])
    {
      v16 = v2;
    }

    else
    {
      v16 = 0;
    }

    (*(v15 + 16))(v15, v16);
  }
}

- (void)removeWebClipWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CPSWebClipStore_removeWebClipWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

void __65__CPSWebClipStore_removeWebClipWithIdentifier_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v6 = 0;
  [v2 _removeWebClipWithIdentifier:v3 error:&v6];
  v4 = v6;
  v5 = a1[6];
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

- (BOOL)_removeWebClipWithIdentifier:(id)identifier error:(id *)error
{
  v5 = MEMORY[0x277CCAA00];
  identifierCopy = identifier;
  defaultManager = [v5 defaultManager];
  v8 = pathForWebClipWithIdentifier(identifierCopy);
  [defaultManager removeItemAtPath:v8 error:error];

  v9 = SBSSpringBoardServerPort();
  uTF8String = [identifierCopy UTF8String];

  v11 = MEMORY[0x245D3D130](v9, uTF8String);
  v13 = v11;
  if (v11)
  {
    v14 = CPS_LOG_CHANNEL_PREFIXClipServices(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CPSWebClipStore _removeWebClipWithIdentifier:v13 error:v14];
    }
  }

  return !v13 && *error == 0;
}

- (void)saveWebClip:(id)clip completionHandler:(id)handler
{
  clipCopy = clip;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CPSWebClipStore_saveWebClip_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = clipCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = clipCopy;
  dispatch_async(queue, block);
}

void __49__CPSWebClipStore_saveWebClip_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 _saveWebClip:v3 error:&v7];
  v5 = v7;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v5);
  }
}

- (BOOL)_saveWebClip:(id)clip error:(id *)error
{
  v65[1] = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  webClipType = [clipCopy webClipType];
  if (webClipType == 1)
  {
    identifier = [clipCopy identifier];
    v10 = pathForWebClipWithIdentifier(identifier);
    v11 = iconPathForWebClipWithIdentifier(identifier);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (([defaultManager fileExistsAtPath:v10] & 1) == 0)
    {
      v13 = [defaultManager createDirectoryAtPath:v10 withIntermediateDirectories:0 attributes:0 error:error];
      if ((v13 & 1) == 0)
      {
        v47 = CPS_LOG_CHANNEL_PREFIXClipServices(v13, v14);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          [CPSWebClipStore _saveWebClip:error error:v47];
        }

        v44 = 0;
        goto LABEL_41;
      }
    }

    v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10 isDirectory:1];
    v16 = [v15 setResourceValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE878] error:error];
    if ((v16 & 1) == 0)
    {
      v46 = CPS_LOG_CHANNEL_PREFIXClipServices(v16, v17);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [CPSWebClipStore _saveWebClip:error error:v46];
      }

      v44 = 0;
      goto LABEL_40;
    }

    v57 = v15;
    v18 = [v10 stringByAppendingPathComponent:@"Info.plist"];
    _dictionaryRepresentation = [clipCopy _dictionaryRepresentation];
    v20 = [_dictionaryRepresentation writeToFile:v18 atomically:1];

    if (v20)
    {
      v56 = v11;
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v53 = *MEMORY[0x277CCA1B0];
      v64 = *MEMORY[0x277CCA1B0];
      v52 = *MEMORY[0x277CCA1B8];
      v65[0] = *MEMORY[0x277CCA1B8];
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
      v59 = 0;
      v55 = v18;
      v25 = [defaultManager2 setAttributes:v24 ofItemAtPath:v18 error:&v59];
      v26 = v59;

      if ((v25 & 1) == 0)
      {
        v29 = CPS_LOG_CHANNEL_PREFIXClipServices(v27, v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = v29;
          cps_privacyPreservingDescription = [v26 cps_privacyPreservingDescription];
          *buf = 138543362;
          v63 = cps_privacyPreservingDescription;
          _os_log_impl(&dword_2436ED000, v30, OS_LOG_TYPE_INFO, "Couldn't change WebClip Info.plist's data protection class: %{public}@", buf, 0xCu);
        }
      }

      _temporaryIconPath = [clipCopy _temporaryIconPath];
      if (_temporaryIconPath && (v33 = [(CPSWebClipStore *)self _copyOrReplaceExistingFileAtPath:v56 withNewFileAtPath:_temporaryIconPath], v33, !v33))
      {
        v49 = CPS_LOG_CHANNEL_PREFIXClipServices(v34, v35);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          [CPSWebClipStore _saveWebClip:error:];
        }

        v11 = v56;
        if (error)
        {
          [MEMORY[0x277CCA9B8] cps_errorWithCode:1];
          *error = v44 = 0;
        }

        else
        {
          v44 = 0;
        }
      }

      else
      {
        iconImagePath = [clipCopy iconImagePath];

        if (iconImagePath)
        {
          v51 = v26;
          v37 = v56;
          defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
          v60 = v53;
          v61 = v52;
          v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          v58 = 0;
          v54 = v37;
          LOBYTE(v37) = [defaultManager3 setAttributes:v39 ofItemAtPath:v37 error:&v58];
          v40 = v58;

          if ((v37 & 1) == 0)
          {
            v43 = CPS_LOG_CHANNEL_PREFIXClipServices(v41, v42);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              [CPSWebClipStore _saveWebClip:v43 error:?];
            }
          }

          v26 = v51;
        }

        [(CPSWebClipStore *)self _reloadSpringBoardIconForWebClipWithIdentifier:identifier, v51];
        v44 = 1;
        v11 = v56;
      }

      v18 = v55;
      goto LABEL_39;
    }

    v48 = CPS_LOG_CHANNEL_PREFIXClipServices(v21, v22);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [CPSWebClipStore _saveWebClip:error:];
      if (error)
      {
        goto LABEL_29;
      }
    }

    else if (error)
    {
LABEL_29:
      [MEMORY[0x277CCA9B8] cps_errorWithCode:1];
      *error = v44 = 0;
LABEL_39:

      v15 = v57;
LABEL_40:

LABEL_41:
      goto LABEL_42;
    }

    v44 = 0;
    goto LABEL_39;
  }

  v45 = CPS_LOG_CHANNEL_PREFIXClipServices(webClipType, v8);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    [CPSWebClipStore _saveWebClip:error:];
    if (error)
    {
      goto LABEL_20;
    }

LABEL_31:
    v44 = 0;
    goto LABEL_42;
  }

  if (!error)
  {
    goto LABEL_31;
  }

LABEL_20:
  [MEMORY[0x277CCA9B8] cps_errorWithCode:13];
  *error = v44 = 0;
LABEL_42:

  return v44;
}

- (void)updateWebClipTitle:(id)title forAppClipBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  titleCopy = title;
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__CPSWebClipStore_updateWebClipTitle_forAppClipBundleIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278DCE070;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = titleCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = titleCopy;
  v14 = identifierCopy;
  dispatch_async(queue, v15);
}

void __83__CPSWebClipStore_updateWebClipTitle_forAppClipBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) _webClipsBackedbyAppClipIdentifier:*(a1 + 40)];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if (([v8 isPoweredBy] & 1) == 0)
        {
          v9 = [v8 title];
          v10 = [v9 isEqualToString:*(a1 + 48)];

          if ((v10 & 1) == 0)
          {
            [v8 setTitle:*(a1 + 48)];
          }

          v11 = *(a1 + 32);
          v14 = v5;
          [v11 _saveWebClip:v8 error:&v14];
          v12 = v14;

          v5 = v12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))(v13, v5);
  }
}

- (void)updateAppClipIcon:(id)icon forWebClipWithIdentifier:(id)identifier completionHandler:(id)handler
{
  iconCopy = icon;
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__CPSWebClipStore_updateAppClipIcon_forWebClipWithIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278DCE070;
  v16 = iconCopy;
  selfCopy = self;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = iconCopy;
  dispatch_async(queue, v15);
}

uint64_t __80__CPSWebClipStore_updateAppClipIcon_forWebClipWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = iconPathForWebClipWithIdentifier(*(a1 + 48));
    v4 = [*(a1 + 32) path];
    [v2 _copyOrReplaceExistingFileAtPath:v3 withNewFileAtPath:v4];
  }

  [*(a1 + 40) _reloadSpringBoardIconForWebClipWithIdentifier:*(a1 + 48)];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)removeAppClipIconForWebClipWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__CPSWebClipStore_removeAppClipIconForWebClipWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

void __79__CPSWebClipStore_removeAppClipIconForWebClipWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = iconPathForWebClipWithIdentifier(*(a1 + 40));
  v5 = [v2 _removeFileFromPath:v3];

  [*(a1 + 32) _reloadSpringBoardIconForWebClipWithIdentifier:*(a1 + 40)];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (id)_copyOrReplaceExistingFileAtPath:(id)path withNewFileAtPath:(id)atPath
{
  v24 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  atPathCopy = atPath;
  v8 = [(CPSWebClipStore *)self _removeFileFromPath:pathCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v17 = v8;
  [defaultManager copyItemAtPath:atPathCopy toPath:pathCopy error:&v17];
  v10 = v17;

  if (v10)
  {
    v13 = CPS_LOG_CHANNEL_PREFIXClipServices(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = v13;
      cps_privacyPreservingDescription = [v10 cps_privacyPreservingDescription];
      *buf = 138478339;
      v19 = atPathCopy;
      v20 = 2113;
      v21 = pathCopy;
      v22 = 2114;
      v23 = cps_privacyPreservingDescription;
      _os_log_error_impl(&dword_2436ED000, v15, OS_LOG_TYPE_ERROR, "Could not copy icon from path %{private}@ to %{private}@: %{public}@", buf, 0x20u);
    }
  }

  return v10;
}

- (id)_removeFileFromPath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:pathCopy])
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = 0;
    [defaultManager2 removeItemAtPath:pathCopy error:&v11];
    v6 = v11;

    if (v6)
    {
      v9 = CPS_LOG_CHANNEL_PREFIXClipServices(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CPSWebClipStore *)pathCopy _removeFileFromPath:v9, v6];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)getAppClipWithIdentifier:(id)identifier receiveOnQueue:(id)queue completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CPSWebClipStore_getAppClipWithIdentifier_receiveOnQueue_completionHandler___block_invoke;
  block[3] = &unk_278DCE318;
  v13 = identifierCopy;
  v14 = handlerCopy;
  block[4] = self;
  v10 = identifierCopy;
  v11 = handlerCopy;
  dispatch_async(queue, block);
}

void __77__CPSWebClipStore_getAppClipWithIdentifier_receiveOnQueue_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) synchronouslyGetAppClipWithIdentifier:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (id)synchronouslyGetAppClipWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [objc_opt_class() _readWebClipDictionaryRepresentationFromDiskWithWebClipIdentifier:identifierCopy];
  if (v4)
  {
    v5 = [[CPSWebClip alloc] _initWithIdentifier:identifierCopy webClipDictionary:v4];
    if ([v5 webClipType] == 1)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)getAppClipWithURLHash:(id)hash completionHandler:(id)handler
{
  hashCopy = hash;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CPSWebClipStore_getAppClipWithURLHash_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = hashCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = hashCopy;
  dispatch_async(queue, block);
}

void __59__CPSWebClipStore_getAppClipWithURLHash_completionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CPSWebClipStore_getAppClipWithURLHash_completionHandler___block_invoke_2;
  v7[3] = &unk_278DCE340;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v3 = [v2 _enumerateAndFilterClipsWithBlock:v7];
  v4 = [v3 count];
  v5 = *(a1 + 48);
  if (v4)
  {
    v6 = [v3 firstObject];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    (*(v5 + 16))(v5, 0);
  }
}

uint64_t __59__CPSWebClipStore_getAppClipWithURLHash_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 registeredURL];
  v4 = [v3 absoluteString];
  v5 = [v4 cps_sha256String];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

- (void)fetchBookmarkWebClipsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__CPSWebClipStore_fetchBookmarkWebClipsWithCompletionHandler___block_invoke;
    v7[3] = &unk_278DCE368;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_async(queue, v7);
  }
}

void __62__CPSWebClipStore_fetchBookmarkWebClipsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _bookmarkWebClips];
  (*(v1 + 16))(v1, v2);
}

- (void)fetchWebClipsUUIDStringForClientBundleID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__CPSWebClipStore_fetchWebClipsUUIDStringForClientBundleID_completionHandler___block_invoke;
    block[3] = &unk_278DCDCF8;
    block[4] = self;
    v10 = dCopy;
    v11 = handlerCopy;
    dispatch_async(queue, block);
  }
}

void __78__CPSWebClipStore_fetchWebClipsUUIDStringForClientBundleID_completionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__CPSWebClipStore_fetchWebClipsUUIDStringForClientBundleID_completionHandler___block_invoke_2;
  v4[3] = &unk_278DCE390;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _enumerateAndMapClipsWithBlock:v4];
  (*(*(a1 + 48) + 16))();
}

id __78__CPSWebClipStore_fetchWebClipsUUIDStringForClientBundleID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 32))
  {
    if ([v3 webClipType] != 1)
    {
      goto LABEL_9;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_11;
  }

  v5 = [v3 trustedClientBundleIdentifiers];
  if ([v5 containsObject:*(a1 + 32)])
  {

LABEL_9:
    v5 = [v4 uuid];
    v6 = [v5 UUIDString];
    goto LABEL_10;
  }

  if (!*(a1 + 32))
  {
    v7 = [v4 webClipType];

    if (v7 != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v6 = 0;
LABEL_10:

LABEL_11:

  return v6;
}

- (void)fetchWebClipsURLStringForClientBundleID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__CPSWebClipStore_fetchWebClipsURLStringForClientBundleID_completionHandler___block_invoke;
    block[3] = &unk_278DCDCF8;
    block[4] = self;
    v10 = dCopy;
    v11 = handlerCopy;
    dispatch_async(queue, block);
  }
}

void __77__CPSWebClipStore_fetchWebClipsURLStringForClientBundleID_completionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__CPSWebClipStore_fetchWebClipsURLStringForClientBundleID_completionHandler___block_invoke_2;
  v4[3] = &unk_278DCE390;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _enumerateAndMapClipsWithBlock:v4];
  (*(*(a1 + 48) + 16))();
}

id __77__CPSWebClipStore_fetchWebClipsURLStringForClientBundleID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 32))
  {
    if ([v3 webClipType] != 1)
    {
      goto LABEL_9;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_11;
  }

  v5 = [v3 trustedClientBundleIdentifiers];
  if ([v5 containsObject:*(a1 + 32)])
  {

LABEL_9:
    v5 = [v4 pageURL];
    v6 = [v5 absoluteString];
    goto LABEL_10;
  }

  if (!*(a1 + 32))
  {
    v7 = [v4 webClipType];

    if (v7 != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v6 = 0;
LABEL_10:

LABEL_11:

  return v6;
}

- (void)fetchAppClipsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__CPSWebClipStore_fetchAppClipsWithCompletionHandler___block_invoke;
    v7[3] = &unk_278DCE368;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_async(queue, v7);
  }
}

void __54__CPSWebClipStore_fetchAppClipsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _appClips];
  (*(v1 + 16))(v1, v2);
}

- (id)_fetchInstalledAppClips
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__CPSWebClipStore__fetchInstalledAppClips__block_invoke;
  v5[3] = &unk_278DCE2C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__CPSWebClipStore__fetchInstalledAppClips__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _appClips];
  v2 = [v5 safari_filterObjectsUsingBlock:&__block_literal_global_16];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_enumerateAndFilterClipsWithBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__CPSWebClipStore__enumerateAndFilterClipsWithBlock___block_invoke;
  v9[3] = &unk_278DCE3D8;
  v10 = blockCopy;
  v5 = blockCopy;
  v6 = MEMORY[0x245D3D5F0](v9);
  v7 = [(CPSWebClipStore *)self _enumerateAndMapClipsWithBlock:v6];

  return v7;
}

id __53__CPSWebClipStore__enumerateAndFilterClipsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_enumerateAndMapClipsWithBlock:(id)block
{
  v44 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_autoreleasePoolPush();
  v5 = webClipsDirectoryPath();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v42 = 0;
  v7 = [defaultManager contentsOfDirectoryAtPath:v5 error:&v42];
  v8 = v42;
  v10 = v8;
  if (v8)
  {
    v11 = CPS_LOG_CHANNEL_PREFIXClipServices(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CPSWebClipStore _enumerateAndMapClipsWithBlock:v11];
    }

    [v7 count];
    goto LABEL_5;
  }

  if (![v7 count])
  {
LABEL_5:
    v12 = array;

    objc_autoreleasePoolPop(v4);
    goto LABEL_24;
  }

  context = v4;
  v32 = array;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    v33 = v5;
    v36 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        v20 = [v5 stringByAppendingPathComponent:v18];
        v37 = 0;
        if ([defaultManager fileExistsAtPath:v20 isDirectory:&v37] && v37 == 1)
        {
          stringByDeletingPathExtension = [v18 stringByDeletingPathExtension];
          v22 = [v20 stringByAppendingPathComponent:@"Info.plist"];
          if (stringByDeletingPathExtension)
          {
            if ([defaultManager fileExistsAtPath:v22])
            {
              v23 = [objc_opt_class() _readWebClipDictionaryRepresentationFromDiskWithWebClipIdentifier:stringByDeletingPathExtension];
              if (v23)
              {
                v24 = v23;
                v25 = [[CPSWebClip alloc] _initWithIdentifier:stringByDeletingPathExtension webClipDictionary:v23];
                v26 = blockCopy[2](blockCopy, v25);
                v27 = v24;
                v28 = v26;
                if (v26)
                {
                  v34 = v27;
                  [v32 addObject:v26];
                  v27 = v34;
                }

                v5 = v33;
              }
            }
          }

          v16 = v36;
        }

        objc_autoreleasePoolPop(v19);
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v15);
  }

  objc_autoreleasePoolPop(context);
  array = v32;
  v29 = v32;
LABEL_24:

  return array;
}

- (void)reloadSpringBoardIconForWebClipWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__CPSWebClipStore_reloadSpringBoardIconForWebClipWithIdentifier___block_invoke;
  v7[3] = &unk_278DCDE58;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (void)_reloadSpringBoardIconForWebClipWithIdentifier:(id)identifier
{
  if (identifier)
  {
    [MEMORY[0x277D66CE8] updateWebClipPropertiesWithIdentifier:?];
  }
}

- (void)createOrUpdateExistingWebClipWithMetadata:(id)metadata comletionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__CPSWebClipStore_createOrUpdateExistingWebClipWithMetadata_comletionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = metadataCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = metadataCopy;
  dispatch_async(queue, block);
}

void __78__CPSWebClipStore_createOrUpdateExistingWebClipWithMetadata_comletionHandler___block_invoke(void *a1)
{
  v8 = 0;
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 _createOrUpdateExistingWebClipWithClipMetadata:v3 createdNewWebClip:&v8 error:&v7];
  v5 = v7;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v8, v5);
  }
}

- (id)_createOrUpdateExistingWebClipWithClipMetadata:(id)metadata createdNewWebClip:(BOOL *)clip error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if ([metadataCopy hasFullAppInstalledOnSystem])
  {
    [metadataCopy fullAppBundleID];
  }

  else
  {
    [metadataCopy clipBundleID];
  }
  v8 = ;
  clipURL = [metadataCopy clipURL];
  *clip = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  _appClips = [(CPSWebClipStore *)self _appClips];
  v10 = [_appClips countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (!v10)
  {

LABEL_28:
    _init = [[CPSWebClip alloc] _init];
    *clip = 1;
    goto LABEL_29;
  }

  v12 = v10;
  clipCopy = clip;
  errorCopy = error;
  _init = 0;
  v14 = *v40;
  *&v11 = 138478083;
  v33 = v11;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v40 != v14)
      {
        objc_enumerationMutation(_appClips);
      }

      v16 = *(*(&v39 + 1) + 8 * i);
      applicationBundleIdentifier = [v16 applicationBundleIdentifier];
      v18 = [applicationBundleIdentifier isEqualToString:v8];

      if (v18)
      {
        if ([metadataCopy isPoweredByThirdParty] & 1) != 0 || (objc_msgSend(v16, "isPoweredBy"))
        {
          if (!_init)
          {
            registeredURL = [v16 registeredURL];
            v20 = registeredURL;
            if (registeredURL == clipURL || ([registeredURL isEqual:?] & 1) != 0)
            {
              _init = v16;

              goto LABEL_25;
            }

            _init = 0;
          }
        }

        else if (_init)
        {
          identifier = [v16 identifier];
          v38 = 0;
          [(CPSWebClipStore *)self _removeWebClipWithIdentifier:identifier error:&v38];
          v22 = v38;

          v25 = CPS_LOG_CHANNEL_PREFIXClipServices(v23, v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = v25;
            cps_privacyPreservingDescription = [v22 cps_privacyPreservingDescription];
            *buf = v33;
            v44 = v8;
            v45 = 2114;
            v46 = cps_privacyPreservingDescription;
            _os_log_error_impl(&dword_2436ED000, v26, OS_LOG_TYPE_ERROR, "Removed duplicate web clip for %{private}@, error: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          _init = v16;
        }
      }
    }

    v12 = [_appClips countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_25:

  clip = clipCopy;
  error = errorCopy;
  if (!_init)
  {
    goto LABEL_28;
  }

LABEL_29:
  [_init _updateWithClipMetadata:metadataCopy];
  v28 = [(CPSWebClipStore *)self _saveWebClip:_init error:error];
  if (v28)
  {
    v30 = _init;
  }

  else
  {
    v31 = CPS_LOG_CHANNEL_PREFIXClipServices(v28, v29);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CPSWebClipStore _createOrUpdateExistingWebClipWithClipMetadata:createdNewWebClip:error:];
    }

    v30 = 0;
  }

  return v30;
}

- (void)getWebClipWithURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CPSWebClipStore_getWebClipWithURL_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = lCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = lCopy;
  dispatch_async(queue, block);
}

void __55__CPSWebClipStore_getWebClipWithURL_completionHandler___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CPSWebClipStore_getWebClipWithURL_completionHandler___block_invoke_2;
  v6[3] = &unk_278DCE340;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = [v2 _enumerateAndFilterClipsWithBlock:v6];
  v4 = *(a1 + 48);
  if ([v3 count])
  {
    v5 = [v3 firstObject];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

uint64_t __55__CPSWebClipStore_getWebClipWithURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 pageURL];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)getWebClipDictionaryWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__CPSWebClipStore_getWebClipDictionaryWithIdentifier_completionHandler___block_invoke;
    v9[3] = &unk_278DCDD70;
    v10 = identifierCopy;
    v11 = handlerCopy;
    dispatch_async(queue, v9);
  }
}

void __72__CPSWebClipStore_getWebClipDictionaryWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) UUIDString];
  v15 = [v2 stringByReplacingOccurrencesOfString:@"-" withString:&stru_28567C2A8];

  v3 = pathForWebClipWithIdentifier(v15);
  v4 = [v3 stringByAppendingPathComponent:@"Info.plist"];
  if (v15 && ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "fileExistsAtPath:", v4), v5, v6) && (objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithContentsOfFile:", v4), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "mutableCopy"), v7, v8))
  {
    [v8 setObject:v15 forKeyedSubscript:@"DictionaryRepresentationIdentifier"];
    v9 = [v3 stringByAppendingPathComponent:@"ApplicationManifest"];
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [v10 fileExistsAtPath:v9];

    if (v11)
    {
      v12 = MEMORY[0x277CBEA90];
      v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9 isDirectory:0];
      v14 = [v12 dataWithContentsOfURL:v13];

      [v8 setObject:v14 forKeyedSubscript:@"DictionaryRepresentationManifest"];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)getWebClipsBackedbyAppClipIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__CPSWebClipStore_getWebClipsBackedbyAppClipIdentifier_completion___block_invoke;
  block[3] = &unk_278DCE318;
  v12 = identifierCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = identifierCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __67__CPSWebClipStore_getWebClipsBackedbyAppClipIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _webClipsBackedbyAppClipIdentifier:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (id)_webClipsBackedbyAppClipIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _appClips = [(CPSWebClipStore *)self _appClips];
  v7 = [_appClips countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(_appClips);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        applicationBundleIdentifier = [v11 applicationBundleIdentifier];
        v13 = [applicationBundleIdentifier isEqualToString:identifierCopy];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [_appClips countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)purgeDuplicateWebClipsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__CPSWebClipStore_purgeDuplicateWebClipsWithCompletionHandler___block_invoke;
  v7[3] = &unk_278DCDD70;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __63__CPSWebClipStore_purgeDuplicateWebClipsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 32) _appClips];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (([v8 isPoweredBy] & 1) == 0)
        {
          v9 = [v8 applicationBundleIdentifier];
          if (v9)
          {
            v10 = [v2 objectForKeyedSubscript:v9];

            if (!v10)
            {
              v11 = [MEMORY[0x277CBEB18] array];
              [v2 setObject:v11 forKeyedSubscript:v9];
            }

            v12 = [v2 objectForKeyedSubscript:v9];
            [v12 addObject:v8];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__CPSWebClipStore_purgeDuplicateWebClipsWithCompletionHandler___block_invoke_2;
  v13[3] = &unk_278DCE400;
  v13[4] = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v13];
  (*(*(a1 + 40) + 16))();
}

void __63__CPSWebClipStore_purgeDuplicateWebClipsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 count] >= 2)
  {
    [v6 removeObjectAtIndex:0];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = v6;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(a1 + 32);
          v13 = [*(*(&v22 + 1) + 8 * v11) identifier];
          v21 = 0;
          [v12 _removeWebClipWithIdentifier:v13 error:&v21];
          v14 = v21;

          v17 = CPS_LOG_CHANNEL_PREFIXClipServices(v15, v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = v17;
            v19 = [v14 cps_privacyPreservingDescription];
            *buf = 138478083;
            v27 = v5;
            v28 = 2114;
            v29 = v19;
            _os_log_error_impl(&dword_2436ED000, v18, OS_LOG_TYPE_ERROR, "Removed duplicate web clip for %{private}@, error: %{public}@", buf, 0x16u);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v9);
    }

    v6 = v20;
  }
}

- (void)removePoweredByWebClipsLastActivatedBefore:(id)before completion:(id)completion
{
  beforeCopy = before;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CPSWebClipStore_removePoweredByWebClipsLastActivatedBefore_completion___block_invoke;
  block[3] = &unk_278DCDCF8;
  v12 = beforeCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = beforeCopy;
  dispatch_async(queue, block);
}

uint64_t __73__CPSWebClipStore_removePoweredByWebClipsLastActivatedBefore_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v39 = v4;
    _os_log_impl(&dword_2436ED000, v3, OS_LOG_TYPE_DEFAULT, "Removing powered by web clips last activated before: %@", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [*(a1 + 40) _appClips];
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v35;
    *&v7 = 138412546;
    v32 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [v11 lastActivatedTime];

        if (!v12)
        {
          v24 = [MEMORY[0x277CBEAA8] now];
          [v11 setLastActivatedTime:v24];
LABEL_17:

          continue;
        }

        if ([v11 isPoweredBy])
        {
          v13 = [v11 lastActivatedTime];
          v14 = [v13 compare:*(a1 + 32)];

          if (v14 == -1)
          {
            v17 = CPS_LOG_CHANNEL_PREFIXClipServices(v15, v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = v17;
              v19 = [v11 identifier];
              v20 = [v11 lastActivatedTime];
              *buf = v32;
              v39 = v19;
              v40 = 2112;
              v41 = v20;
              _os_log_impl(&dword_2436ED000, v18, OS_LOG_TYPE_DEFAULT, "Removing web clip with identifier: %@ lastActivatedTime: %@", buf, 0x16u);
            }

            v21 = *(a1 + 40);
            v22 = [v11 identifier];
            v33 = 0;
            v23 = [v21 _removeWebClipWithIdentifier:v22 error:&v33];
            v24 = v33;

            if ((v23 & 1) == 0)
            {
              v27 = CPS_LOG_CHANNEL_PREFIXClipServices(v25, v26);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v28 = v27;
                v29 = [v11 identifier];
                v30 = [v24 localizedDescription];
                *buf = v32;
                v39 = v29;
                v40 = 2112;
                v41 = v30;
                _os_log_error_impl(&dword_2436ED000, v28, OS_LOG_TYPE_ERROR, "Unable to remove expired web clip with identifier: %@ error: %@", buf, 0x16u);
              }
            }

            goto LABEL_17;
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v8);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)removeExpiredPoweredByWebClipsWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x277CBEA80];
  handlerCopy = handler;
  currentCalendar = [v4 currentCalendar];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [currentCalendar dateByAddingUnit:16 value:-10 toDate:v7 options:0];

  [(CPSWebClipStore *)self removePoweredByWebClipsLastActivatedBefore:v8 completion:handlerCopy];
}

- (void)_removeWebClipWithIdentifier:(int)a1 error:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "Unable to remove web clip to Home Screen %d", v2, 8u);
}

- (void)_saveWebClip:(uint64_t)a1 error:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v5, v6, "Couldn't create WebClip bundle: %{public}@", v7, v8, v9, v10);
}

- (void)_saveWebClip:(uint64_t)a1 error:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v5, v6, "Couldn't exclude WebClip from backup: %{public}@", v7, v8, v9, v10);
}

- (void)_saveWebClip:(void *)a1 error:.cold.6(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Couldn't change WebClip icon's data protection class: %{public}@", v6, v7, v8, v9);
}

- (void)_removeFileFromPath:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 cps_privacyPreservingDescription];
  v7 = 138478083;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_2436ED000, v5, OS_LOG_TYPE_ERROR, "Could not remove existing icon from path %{private}@: %{public}@", &v7, 0x16u);
}

- (void)_enumerateAndMapClipsWithBlock:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Unable to retrieve contents of the web clip directory: %{public}@", v6, v7, v8, v9);
}

@end