@interface TVRCUpNextController
- (void)_fetchPlayableOpenURLForMediaIdentifier:(id)identifier type:(int64_t)type completion:(id)completion;
- (void)_fetchUpNextInfosWithPaginationToken:(id)token completion:(id)completion;
- (void)_openURL:(id)l completion:(id)completion;
- (void)_openURLString:(id)string completion:(id)completion;
- (void)_playItemForMediaIdentifier:(id)identifier kind:(unint64_t)kind completion:(id)completion;
- (void)addItemWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)fetchUpNextInfosWithPaginationToken:(id)token completion:(id)completion;
- (void)markAsWatchedWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)playItem:(id)item completion:(id)completion;
- (void)removeItemWithMediaIdentifier:(id)identifier completion:(id)completion;
@end

@implementation TVRCUpNextController

- (void)fetchUpNextInfosWithPaginationToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  fetchUpNextInfosImpl = [(TVRCUpNextController *)self fetchUpNextInfosImpl];

  if (fetchUpNextInfosImpl)
  {
    fetchUpNextInfosImpl2 = [(TVRCUpNextController *)self fetchUpNextInfosImpl];
    (fetchUpNextInfosImpl2)[2](fetchUpNextInfosImpl2, tokenCopy, completionCopy);
  }

  else
  {
    [(TVRCUpNextController *)self _fetchUpNextInfosWithPaginationToken:tokenCopy completion:completionCopy];
  }
}

- (void)markAsWatchedWithMediaIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = [objc_alloc(MEMORY[0x277D7A950]) initWithItemID:identifierCopy];
  objc_initWeak(&location, v7);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __68__TVRCUpNextController_markAsWatchedWithMediaIdentifier_completion___block_invoke;
  v14 = &unk_279D82430;
  objc_copyWeak(&v17, &location);
  v8 = identifierCopy;
  v15 = v8;
  v9 = completionCopy;
  v16 = v9;
  [v7 setCompletionBlock:&v11];
  wlkDefaultQueue = [MEMORY[0x277CCABD8] wlkDefaultQueue];
  [wlkDefaultQueue addOperation:v7];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __68__TVRCUpNextController_markAsWatchedWithMediaIdentifier_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  v4 = v3;
  if (v3)
  {
    v5 = _TVRCRapportLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __68__TVRCUpNextController_markAsWatchedWithMediaIdentifier_completion___block_invoke_cold_1();
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__TVRCUpNextController_markAsWatchedWithMediaIdentifier_completion___block_invoke_1;
  v8[3] = &unk_279D82408;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)addItemWithMediaIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = [objc_alloc(MEMORY[0x277D7A928]) initWithCanonicalID:identifierCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__TVRCUpNextController_addItemWithMediaIdentifier_completion___block_invoke;
  v10[3] = &unk_279D82458;
  v11 = identifierCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = identifierCopy;
  [v7 makeRequestWithCompletion:v10];
}

void __62__TVRCUpNextController_addItemWithMediaIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _TVRCRapportLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __62__TVRCUpNextController_addItemWithMediaIdentifier_completion___block_invoke_cold_1();
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__TVRCUpNextController_addItemWithMediaIdentifier_completion___block_invoke_4;
  v9[3] = &unk_279D82408;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)removeItemWithMediaIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = [objc_alloc(MEMORY[0x277D7A960]) initWithCanonicalID:identifierCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__TVRCUpNextController_removeItemWithMediaIdentifier_completion___block_invoke;
  v10[3] = &unk_279D82458;
  v11 = identifierCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = identifierCopy;
  [v7 makeRequestWithCompletion:v10];
}

void __65__TVRCUpNextController_removeItemWithMediaIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _TVRCRapportLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __65__TVRCUpNextController_removeItemWithMediaIdentifier_completion___block_invoke_cold_1();
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__TVRCUpNextController_removeItemWithMediaIdentifier_completion___block_invoke_7;
  v9[3] = &unk_279D82408;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)playItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  if ([itemCopy hasMediaIdentifierAndKind])
  {
    mediaIdentifier = [itemCopy mediaIdentifier];
    kind = [itemCopy kind];
    -[TVRCUpNextController _playItemForMediaIdentifier:kind:completion:](self, "_playItemForMediaIdentifier:kind:completion:", mediaIdentifier, [kind integerValue], completionCopy);

LABEL_5:
    goto LABEL_9;
  }

  hasURL = [itemCopy hasURL];
  if (hasURL)
  {
    mediaIdentifier = [itemCopy url];
    [(TVRCUpNextController *)self _openURL:mediaIdentifier completion:completionCopy];
    goto LABEL_5;
  }

  v11 = _TVRCRapportLog(hasURL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [TVRCUpNextController playItem:v11 completion:?];
  }

  completionCopy[2](completionCopy, 0);
LABEL_9:
}

- (void)_playItemForMediaIdentifier:(id)identifier kind:(unint64_t)kind completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = 3;
  if (kind != 1)
  {
    v10 = 1;
  }

  if (kind == 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__TVRCUpNextController__playItemForMediaIdentifier_kind_completion___block_invoke;
  v13[3] = &unk_279D82480;
  objc_copyWeak(&v15, &location);
  v12 = completionCopy;
  v14 = v12;
  [(TVRCUpNextController *)self _fetchPlayableOpenURLForMediaIdentifier:identifierCopy type:v11 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __68__TVRCUpNextController__playItemForMediaIdentifier_kind_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openURLString:v3 completion:*(a1 + 32)];
}

- (void)_fetchUpNextInfosWithPaginationToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x277D7A940]) initWithQueryParameters:0];
  objc_initWeak(&location, v8);
  objc_initWeak(&from, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__TVRCUpNextController__fetchUpNextInfosWithPaginationToken_completion___block_invoke;
  v11[3] = &unk_279D824D0;
  objc_copyWeak(&v13, &from);
  objc_copyWeak(&v14, &location);
  v9 = completionCopy;
  v12 = v9;
  [v8 setCompletionBlock:v11];
  wlkDefaultQueue = [MEMORY[0x277CCABD8] wlkDefaultQueue];
  [wlkDefaultQueue addOperation:v8];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __72__TVRCUpNextController__fetchUpNextInfosWithPaginationToken_completion___block_invoke(id *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = v3;
  if (WeakRetained)
  {
    v5 = [v3 error];
    v6 = v5;
    if (v5)
    {
      v7 = _TVRCRapportLog(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __72__TVRCUpNextController__fetchUpNextInfosWithPaginationToken_completion___block_invoke_cold_1(v6, v7);
      }
    }

    v21 = v4;
    v8 = [v4 response];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = v8;
    v10 = [v8 items];
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v26 + 1) + 8 * i) dictionary];
          v16 = [TVRCUpNextInfo upNextInfoWithDictionary:v15];
          [v9 addObject:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__TVRCUpNextController__fetchUpNextInfosWithPaginationToken_completion___block_invoke_12;
    block[3] = &unk_279D824A8;
    block[4] = WeakRetained;
    v23 = v9;
    v17 = a1[4];
    v24 = v6;
    v25 = v17;
    v18 = v6;
    v19 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v4 = v21;
  }
}

uint64_t __72__TVRCUpNextController__fetchUpNextInfosWithPaginationToken_completion___block_invoke_12(uint64_t a1)
{
  [*(a1 + 32) setUpNextInfos:*(a1 + 40)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

- (void)_fetchPlayableOpenURLForMediaIdentifier:(id)identifier type:(int64_t)type completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = [objc_alloc(MEMORY[0x277D7A938]) initWithCanonicalID:identifierCopy];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__TVRCUpNextController__fetchPlayableOpenURLForMediaIdentifier_type_completion___block_invoke;
  v13[3] = &unk_279D824F8;
  objc_copyWeak(&v16, &location);
  v11 = identifierCopy;
  v14 = v11;
  v12 = completionCopy;
  v15 = v12;
  [v10 makeRequestWithCompletion:v13 canonicalType:type];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __80__TVRCUpNextController__fetchPlayableOpenURLForMediaIdentifier_type_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = _TVRCRapportLog(WeakRetained);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __80__TVRCUpNextController__fetchPlayableOpenURLForMediaIdentifier_type_completion___block_invoke_cold_1();
      }
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = [v5 playables];
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
LABEL_10:
        v17 = 0;
        while (1)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v25 + 1) + 8 * v17);
          if ([v18 isEntitled] & 1) != 0 || (objc_msgSend(v18, "isEntitledAnywhere"))
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v15)
            {
              goto LABEL_10;
            }

            goto LABEL_17;
          }
        }

        v9 = v18;

        if (!v9)
        {
          goto LABEL_20;
        }

        v10 = [v9 playPunchoutURL];
        goto LABEL_6;
      }

LABEL_17:

LABEL_20:
      v9 = _TVRCRapportLog(v19);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        v21 = [v5 playables];
        *buf = 138543618;
        v30 = v20;
        v31 = 2112;
        v32 = v21;
        _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Failed to find an entitled playable to play %{public}@ - playables=%@", buf, 0x16u);
      }
    }

    v10 = 0;
LABEL_6:

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __80__TVRCUpNextController__fetchPlayableOpenURLForMediaIdentifier_type_completion___block_invoke_14;
    v22[3] = &unk_279D82408;
    v11 = *(a1 + 40);
    v23 = v10;
    v24 = v11;
    v12 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v22);
  }
}

- (void)_openURLString:(id)string completion:(id)completion
{
  v6 = MEMORY[0x277CBEBC0];
  completionCopy = completion;
  v10 = [v6 URLWithString:string];
  absoluteString = [v10 absoluteString];
  v9 = [absoluteString length];

  if (v9)
  {
    [(TVRCUpNextController *)self _openURL:v10 completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_openURL:(id)l completion:(id)completion
{
  v17[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v7 = objc_alloc_init(MEMORY[0x277CC1F00]);
  v8 = *MEMORY[0x277D0AC30];
  v16[0] = *MEMORY[0x277D0AC58];
  v16[1] = v8;
  v17[0] = MEMORY[0x277CBEC38];
  v17[1] = &unk_287E66C78;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v7 setFrontBoardOptions:v9];

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__TVRCUpNextController__openURL_completion___block_invoke;
  v13[3] = &unk_279D82520;
  v14 = lCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = lCopy;
  [defaultWorkspace openURL:v12 configuration:v7 completionHandler:v13];
}

void __44__TVRCUpNextController__openURL_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _TVRCRapportLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__TVRCUpNextController__openURL_completion___block_invoke_cold_1();
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__TVRCUpNextController__openURL_completion___block_invoke_22;
  v9[3] = &unk_279D82408;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __68__TVRCUpNextController_markAsWatchedWithMediaIdentifier_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CF7F000, v0, v1, "Error marking %{public}@ as watched: %{public}@");
}

void __62__TVRCUpNextController_addItemWithMediaIdentifier_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CF7F000, v0, v1, "Error adding to upNext %{public}@: %{public}@");
}

void __65__TVRCUpNextController_removeItemWithMediaIdentifier_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CF7F000, v0, v1, "Error removing %{public}@ from UpNext: %{public}@");
}

void __72__TVRCUpNextController__fetchUpNextInfosWithPaginationToken_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Error fetching up next infos: %{public}@", &v2, 0xCu);
}

void __80__TVRCUpNextController__fetchPlayableOpenURLForMediaIdentifier_type_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CF7F000, v0, v1, "Error requesting playables to play %{public}@: %{public}@");
}

void __44__TVRCUpNextController__openURL_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CF7F000, v0, v1, "Error attempting to openURL %@: %{public}@");
}

@end