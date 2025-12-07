@interface FPSpotlightFetchOneBatchFromWorkingSetOperation
- (FPSpotlightFetchOneBatchFromWorkingSetOperation)initWithIndexer:(id)indexer queue:(id)queue;
- (id)observerItemID;
- (void)_indexOneChangesBatchFromChangeToken:(id)token;
- (void)_indexOnePageFromPage:(id)page;
- (void)handleInsertedItems:(id)items deletedItems:(id)deletedItems needsMoreWork:(BOOL)work state:(id)state error:(id)error;
- (void)main;
@end

@implementation FPSpotlightFetchOneBatchFromWorkingSetOperation

- (void)main
{
  WeakRetained = objc_loadWeakRetained(self);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (id)observerItemID
{
  v3 = [FPItemID alloc];
  WeakRetained = objc_loadWeakRetained(&self->_indexer);
  providerDomain = [WeakRetained providerDomain];
  identifier = [providerDomain identifier];
  v7 = [(FPItemID *)v3 initWithProviderDomainID:identifier itemIdentifier:@"NSFileProviderWorkingSetContainerItemIdentifier"];

  return v7;
}

- (FPSpotlightFetchOneBatchFromWorkingSetOperation)initWithIndexer:(id)indexer queue:(id)queue
{
  indexerCopy = indexer;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = FPSpotlightFetchOneBatchFromWorkingSetOperation;
  v8 = [(FPOperation *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_indexer, indexerCopy);
    domainContext = [indexerCopy domainContext];
    objc_storeWeak(&v9->_domainContext, domainContext);

    WeakRetained = objc_loadWeakRetained(&v9->_domainContext);
    if (!WeakRetained)
    {
      [FPSpotlightFetchOneBatchFromWorkingSetOperation initWithIndexer:queue:];
    }

    [(FPOperation *)v9 setCallbackQueue:queueCopy];
  }

  return v9;
}

- (void)handleInsertedItems:(id)items deletedItems:(id)deletedItems needsMoreWork:(BOOL)work state:(id)state error:(id)error
{
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  stateCopy = state;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_indexer);
  workloop = [WeakRetained workloop];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __110__FPSpotlightFetchOneBatchFromWorkingSetOperation_handleInsertedItems_deletedItems_needsMoreWork_state_error___block_invoke;
  v22[3] = &unk_1E793D1A8;
  v22[4] = self;
  v23 = itemsCopy;
  v24 = deletedItemsCopy;
  v25 = stateCopy;
  workCopy = work;
  v26 = errorCopy;
  v18 = errorCopy;
  v19 = stateCopy;
  v20 = deletedItemsCopy;
  v21 = itemsCopy;
  dispatch_async(workloop, v22);
}

uint64_t __110__FPSpotlightFetchOneBatchFromWorkingSetOperation_handleInsertedItems_deletedItems_needsMoreWork_state_error___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 336), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 344), *(a1 + 48));
  objc_storeStrong((*(a1 + 32) + 352), *(a1 + 56));
  *(*(a1 + 32) + 328) = *(a1 + 72);
  objc_storeStrong((*(a1 + 32) + 360), *(a1 + 64));
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);

  return [v2 completedWithResult:0 error:v3];
}

- (void)_indexOnePageFromPage:(id)page
{
  v39 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v34 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  WeakRetained = objc_loadWeakRetained(&self->_domainContext);
  domain = [WeakRetained domain];
  personaIdentifier = [domain personaIdentifier];
  v9 = personaIdentifier;
  if (userPersonaUniqueString == personaIdentifier)
  {

LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  v10 = objc_loadWeakRetained(&self->_domainContext);
  domain2 = [v10 domain];
  personaIdentifier2 = [domain2 personaIdentifier];
  v13 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

  if ((v13 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v33 = 0;
  v14 = [currentPersona copyCurrentPersonaContextWithError:&v33];
  v15 = v33;
  v16 = v34;
  v34 = v14;

  if (v15)
  {
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v18 = objc_loadWeakRetained(&self->_domainContext);
  domain3 = [v18 domain];
  personaIdentifier3 = [domain3 personaIdentifier];
  v21 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

  if (v21)
  {
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_loadWeakRetained(&self->_domainContext);
      domain4 = [v26 domain];
      personaIdentifier4 = [domain4 personaIdentifier];
      *buf = 138412546;
      v36 = personaIdentifier4;
      v37 = 2112;
      v38 = v21;
      _os_log_error_impl(&dword_1AAAE1000, v22, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  v23 = objc_loadWeakRetained(&self->_indexer);
  vendorEnumerator = [v23 vendorEnumerator];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __73__FPSpotlightFetchOneBatchFromWorkingSetOperation__indexOnePageFromPage___block_invoke;
  v31[3] = &unk_1E793D1F8;
  v31[4] = self;
  v25 = pageCopy;
  v32 = v25;
  [vendorEnumerator currentSyncAnchorWithCompletionHandler:v31];

  _FPRestorePersona(&v34);
}

void __73__FPSpotlightFetchOneBatchFromWorkingSetOperation__indexOnePageFromPage___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 length];
  v5 = fp_current_or_default_log();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __73__FPSpotlightFetchOneBatchFromWorkingSetOperation__indexOnePageFromPage___block_invoke_cold_1(a1, v3);
    }

    v7 = [FPXItemsObserver alloc];
    v8 = [*(a1 + 32) observerItemID];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 312));
    v10 = [(FPXItemsObserver *)v7 initWithObservedItemID:v8 domainContext:WeakRetained nsFileProviderRequest:0];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__FPSpotlightFetchOneBatchFromWorkingSetOperation__indexOnePageFromPage___block_invoke_7;
    v17[3] = &unk_1E793D1D0;
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v18 = v11;
    v19 = v12;
    v20 = v3;
    [(FPXItemsObserver *)v10 setFinishedBlock:v17];
    v13 = objc_loadWeakRetained((*(a1 + 32) + 304));
    v14 = [v13 vendorEnumerator];
    [v14 enumerateItemsForObserver:v10 startingAtPage:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_loadWeakRetained((*(a1 + 32) + 304));
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&dword_1AAAE1000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] %@: didn't return a change token during working set indexing. Recents and search results will be disabled.", buf, 0xCu);
    }

    v16 = *(a1 + 32);
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:MEMORY[0x1E695E0F8]];
    [v16 handleInsertedItems:MEMORY[0x1E695E0F0] deletedItems:MEMORY[0x1E695E0F0] needsMoreWork:0 state:0 error:v10];
  }
}

void __73__FPSpotlightFetchOneBatchFromWorkingSetOperation__indexOnePageFromPage___block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    v16 = 1;
  }

  else
  {
    v16 = [*(a1 + 32) isEqual:0] ^ 1;
  }

  v17 = fp_current_or_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 304));
    v23 = [v11 count];
    [MEMORY[0x1E696AEC0] fp_hashForToken:v12];
    v25 = 138413314;
    v26 = WeakRetained;
    v27 = 1024;
    v28 = v23;
    v30 = v29 = 2112;
    v24 = v30;
    v31 = 1024;
    v32 = v16;
    v33 = 2112;
    v34 = v15;
    _os_log_debug_impl(&dword_1AAAE1000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: finished enumerating provider %d items, nextPage=%@ hasMore=%{BOOL}d, error=%@", &v25, 0x2Cu);
  }

  v18 = [[FPSpotlightIndexState alloc] initWithPage:v12 changeToken:*(a1 + 48)];
  v19 = *(a1 + 40);
  v20 = [v11 copy];
  v21 = [(FPSpotlightIndexState *)v18 dataRepresentation];
  [v19 handleInsertedItems:v20 deletedItems:MEMORY[0x1E695E0F0] needsMoreWork:v16 state:v21 error:v15];
}

- (void)_indexOneChangesBatchFromChangeToken:(id)token
{
  v41 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(FPSpotlightFetchOneBatchFromWorkingSetOperation *)self _indexOneChangesBatchFromChangeToken:tokenCopy];
  }

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v36 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  WeakRetained = objc_loadWeakRetained(&self->_domainContext);
  domain = [WeakRetained domain];
  personaIdentifier = [domain personaIdentifier];
  v10 = personaIdentifier;
  if (userPersonaUniqueString == personaIdentifier)
  {

    v22 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v11 = objc_loadWeakRetained(&self->_domainContext);
  domain2 = [v11 domain];
  personaIdentifier2 = [domain2 personaIdentifier];
  v14 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

  if ((v14 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    v22 = 0;
  }

  else
  {
    v35 = 0;
    v15 = [currentPersona copyCurrentPersonaContextWithError:&v35];
    v16 = v35;
    v17 = v36;
    v36 = v15;

    if (v16)
    {
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [FPSpotlightIndexer _fetchClientStateIfNeeded];
      }
    }

    v19 = objc_loadWeakRetained(&self->_domainContext);
    domain3 = [v19 domain];
    personaIdentifier3 = [domain3 personaIdentifier];
    v22 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

    if (v22)
    {
      WeakRetained = fp_current_or_default_log();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_loadWeakRetained(&self->_domainContext);
        domain4 = [v23 domain];
        personaIdentifier4 = [domain4 personaIdentifier];
        *buf = 138412546;
        v38 = personaIdentifier4;
        v39 = 2112;
        v40 = v22;
        _os_log_error_impl(&dword_1AAAE1000, WeakRetained, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v26 = [FPXChangesObserver alloc];
  observerItemID = [(FPSpotlightFetchOneBatchFromWorkingSetOperation *)self observerItemID];
  v28 = objc_loadWeakRetained(&self->_domainContext);
  v29 = [(FPXChangesObserver *)v26 initWithObservedItemID:observerItemID domainContext:v28 previousChangeToken:tokenCopy nsFileProviderRequest:0];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __88__FPSpotlightFetchOneBatchFromWorkingSetOperation__indexOneChangesBatchFromChangeToken___block_invoke;
  v34[3] = &unk_1E793D220;
  v34[4] = self;
  [(FPXChangesObserver *)v29 setFinishedBlock:v34];
  v30 = objc_loadWeakRetained(&self->_indexer);
  vendorEnumerator = [v30 vendorEnumerator];
  [vendorEnumerator enumerateChangesForObserver:v29 fromSyncAnchor:tokenCopy];

  _FPRestorePersona(&v36);
}

void __88__FPSpotlightFetchOneBatchFromWorkingSetOperation__indexOneChangesBatchFromChangeToken___block_invoke(uint64_t a1, void *a2, void *a3, unsigned int a4, void *a5, void *a6, void *a7)
{
  v64 = *MEMORY[0x1E69E9840];
  v48 = a2;
  v47 = a3;
  v50 = a5;
  v45 = a6;
  v51 = a7;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 312));
  v13 = [WeakRetained log];
  v14 = fpfs_adopt_log(v13);

  v15 = [MEMORY[0x1E69DF068] sharedManager];
  v49 = [(FPSpotlightIndexState *)v15 currentPersona];

  v53 = 0;
  v16 = [v49 userPersonaUniqueString];
  v17 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v18 = [v17 domain];
  v19 = [v18 personaIdentifier];
  v20 = v19;
  if (v16 == v19)
  {

LABEL_13:
    v30 = 0;
    goto LABEL_14;
  }

  v15 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v21 = [(FPSpotlightIndexState *)v15 domain];
  v22 = [v21 personaIdentifier];
  v23 = [v16 isEqualToString:v22];

  if ((v23 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v52 = 0;
  v24 = [v49 copyCurrentPersonaContextWithError:&v52];
  v25 = v52;
  v26 = v53;
  v53 = v24;

  if (v25)
  {
    v27 = fp_current_or_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v28 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v15 = [v28 domain];
  v29 = [(FPSpotlightIndexState *)v15 personaIdentifier];
  v30 = [v49 generateAndRestorePersonaContextWithPersonaUniqueString:v29];

  if (v30)
  {
    v31 = fp_current_or_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_loadWeakRetained((*(a1 + 32) + 312));
      v15 = [v43 domain];
      v44 = [(FPSpotlightIndexState *)v15 personaIdentifier];
      *buf = 138412546;
      v55 = v44;
      v56 = 2112;
      *v57 = v30;
      _os_log_error_impl(&dword_1AAAE1000, v31, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  v32 = fp_current_or_default_log();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    v39 = objc_loadWeakRetained((*(a1 + 32) + 304));
    v40 = [v48 count];
    v41 = [v47 count];
    v42 = [MEMORY[0x1E696AEC0] fp_hashForToken:v50];
    v15 = [v51 fp_prettyDescription];
    *buf = 138413570;
    v55 = v39;
    v56 = 1024;
    *v57 = v40;
    *&v57[4] = 1024;
    *&v57[6] = v41;
    v58 = 2112;
    v59 = v42;
    v60 = 1024;
    v61 = a4;
    v62 = 2112;
    v63 = v15;
    _os_log_debug_impl(&dword_1AAAE1000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: finished enumerating changes %d updates, %d deletions, nextAnchor=%@ hasMore=%{BOOL}d, error=%@", buf, 0x32u);
  }

  v33 = *(a1 + 32);
  v34 = [v48 copy];
  v35 = [v47 copy];
  if (v50)
  {
    v36 = v51 == 0;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;
  if (v36)
  {
    v15 = [[FPSpotlightIndexState alloc] initWithChangeToken:v50];
    v38 = [(FPSpotlightIndexState *)v15 dataRepresentation];
  }

  else
  {
    v38 = 0;
  }

  [v33 handleInsertedItems:v34 deletedItems:v35 needsMoreWork:a4 state:v38 error:v51];
  if (v37)
  {
  }

  _FPRestorePersona(&v53);
}

void __55__FPSpotlightFetchOneBatchFromWorkingSetOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v30 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 304));
  v4 = [WeakRetained log];
  v5 = fpfs_adopt_log(v4);

  v6 = [MEMORY[0x1E69DF068] sharedManager];
  v31 = [v6 currentPersona];

  v33 = 0;
  v7 = [v31 userPersonaUniqueString];
  v8 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v9 = [v8 domain];
  v10 = [v9 personaIdentifier];
  v11 = v10;
  if (v7 == v10)
  {

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v12 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v13 = [v12 domain];
  v14 = [v13 personaIdentifier];
  v15 = [v7 isEqualToString:v14];

  if ((v15 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v32 = 0;
  v16 = [v31 copyCurrentPersonaContextWithError:&v32];
  v17 = v32;
  v18 = v33;
  v33 = v16;

  if (v17)
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v20 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v21 = [v20 domain];
  v22 = [v21 personaIdentifier];
  v23 = [v31 generateAndRestorePersonaContextWithPersonaUniqueString:v22];

  if (v23)
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_loadWeakRetained((*(a1 + 32) + 312));
      v28 = [v27 domain];
      v29 = [v28 personaIdentifier];
      *buf = 138412546;
      v35 = v29;
      v36 = 2112;
      v37 = v23;
      _os_log_error_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  v25 = *(a1 + 32);
  if (v30)
  {
    [v25 handleInsertedItems:MEMORY[0x1E695E0F0] deletedItems:MEMORY[0x1E695E0F0] needsMoreWork:0 state:0 error:?];
  }

  else
  {
    v26 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"invalid index state"];
    [v25 handleInsertedItems:MEMORY[0x1E695E0F0] deletedItems:MEMORY[0x1E695E0F0] needsMoreWork:1 state:0 error:v26];
  }

  _FPRestorePersona(&v33);
}

void __73__FPSpotlightFetchOneBatchFromWorkingSetOperation__indexOnePageFromPage___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 304));
  v5 = [MEMORY[0x1E696AEC0] fp_hashForToken:a2];
  v11 = [MEMORY[0x1E696AEC0] fp_hashForToken:*(a1 + 40)];
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

- (void)_indexOneChangesBatchFromChangeToken:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 304));
  v9 = [MEMORY[0x1E696AEC0] fp_hashForToken:a2];
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

@end