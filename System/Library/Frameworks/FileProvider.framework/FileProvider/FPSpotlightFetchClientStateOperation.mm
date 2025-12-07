@interface FPSpotlightFetchClientStateOperation
- (FPSpotlightFetchClientStateOperation)initWithIndexer:(id)indexer index:(id)index indexName:(id)name spotlightDomainIdentifier:(id)identifier reason:(id)reason supportURL:(id)l;
- (id)_clientStateCurrentVersionIfNeedReset;
- (void)_fetchClientState;
- (void)_handleFetchedClientState:(id)state error:(id)error;
- (void)_markClientStateResetDone;
- (void)main;
@end

@implementation FPSpotlightFetchClientStateOperation

- (void)main
{
  *v3 = 134218242;
  *&v3[4] = *self;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, a2, a3, "[DEBUG] ┳%llx client reset is needed from %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (id)_clientStateCurrentVersionIfNeedReset
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_supportURL)
  {
    v3 = [FPSpotlightIndexer indexerPropertyOfClass:objc_opt_class() forKey:@"com.apple.fileproviderd.spotlight-indexer-current-version" supportURL:self->_supportURL];
  }

  else
  {
    v3 = CFPreferencesCopyAppValue(@"com.apple.fileproviderd.spotlight-indexer-current-version", self->_indexName);
  }

  v4 = v3;
  v5 = fp_current_or_default_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      indexName = self->_indexName;
      _currentIndexerVersion = [objc_opt_class() _currentIndexerVersion];
      v15 = 138413058;
      v16 = @"com.apple.fileproviderd.spotlight-indexer-current-version";
      v17 = 2112;
      v18 = indexName;
      v19 = 2112;
      v20 = v4;
      v21 = 2112;
      v22 = _currentIndexerVersion;
      _os_log_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_INFO, "[INFO] Fetched indexer version (%@ %@) %@ (current: %@)", &v15, 0x2Au);
    }

    _currentIndexerVersion2 = [objc_opt_class() _currentIndexerVersion];
    v10 = [v4 isEqualToString:_currentIndexerVersion2];

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "integerValue")}];
    }
  }

  else
  {
    if (v6)
    {
      v12 = self->_indexName;
      _currentIndexerVersion3 = [objc_opt_class() _currentIndexerVersion];
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = _currentIndexerVersion3;
      _os_log_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_INFO, "[INFO] Failed to fetch indexer version for index %@ (current: %@)", &v15, 0x16u);
    }

    v11 = &unk_1F1FC9A88;
  }

  return v11;
}

- (void)_fetchClientState
{
  section = __fp_create_section();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPSpotlightFetchClientStateOperation _fetchClientState];
  }

  if (!self->_index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPSpotlightFetchClientStateOperation.m" lineNumber:158 description:@"no index"];
  }

  date = [MEMORY[0x1E695DF00] date];
  index = self->_index;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__FPSpotlightFetchClientStateOperation__fetchClientState__block_invoke;
  v10[3] = &unk_1E793D0D8;
  v11 = date;
  v12 = section;
  v10[4] = self;
  v9 = date;
  [(CSSearchableIndex *)index fetchLastClientStateWithCompletionHandler:v10];
}

void __57__FPSpotlightFetchClientStateOperation__fetchClientState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v40 = a2;
  v38 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 304));
  v6 = [WeakRetained log];
  v7 = fpfs_adopt_log(v6);

  v8 = [MEMORY[0x1E69DF068] sharedManager];
  v39 = [v8 currentPersona];

  v43 = 0;
  v9 = [v39 userPersonaUniqueString];
  v10 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v11 = [v10 domain];
  v12 = [v11 personaIdentifier];
  v13 = v12;
  if (v9 == v12)
  {

LABEL_13:
    v25 = 0;
    goto LABEL_14;
  }

  v14 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v15 = [v14 domain];
  v16 = [v15 personaIdentifier];
  v17 = [v9 isEqualToString:v16];

  if ((v17 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v42 = 0;
  v18 = [v39 copyCurrentPersonaContextWithError:&v42];
  v19 = v42;
  v20 = v43;
  v43 = v18;

  if (v19)
  {
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v22 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v23 = [v22 domain];
  v24 = [v23 personaIdentifier];
  v25 = [v39 generateAndRestorePersonaContextWithPersonaUniqueString:v24];

  if (v25)
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_loadWeakRetained((*(a1 + 32) + 304));
      v36 = [v35 domain];
      v37 = [v36 personaIdentifier];
      *buf = 138412546;
      v45 = v37;
      v46 = 2112;
      v47 = v25;
      _os_log_error_impl(&dword_1AAAE1000, v26, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  v27 = *(a1 + 48);
  v41 = v27;
  v28 = fp_current_or_default_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v33 = *(a1 + 32);
    v34 = [v38 fp_prettyDescription];
    *buf = 134218754;
    v45 = v27;
    v46 = 2112;
    v47 = v33;
    v48 = 2112;
    v49 = *&v40;
    v50 = 2112;
    v51 = v34;
    _os_log_debug_impl(&dword_1AAAE1000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx %@: received spotlight client state %@, error: %@", buf, 0x2Au);
  }

  v29 = fp_current_or_default_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(*(a1 + 32) + 336);
    [*(a1 + 40) timeIntervalSinceNow];
    v31 = *(*(a1 + 32) + 312);
    *buf = 138413058;
    v45 = v40;
    v46 = 2112;
    v47 = v30;
    v48 = 2048;
    v49 = -v32;
    v50 = 2112;
    v51 = v31;
    _os_log_impl(&dword_1AAAE1000, v29, OS_LOG_TYPE_DEFAULT, "[NOTICE] [spotlight] fetched last stored state is:%@ (fetched because %@) in %.3fs (in %@)", buf, 0x2Au);
  }

  [*(a1 + 32) _handleFetchedClientState:v40 error:v38];
  __fp_leave_section_Debug(&v41);

  _FPRestorePersona(&v43);
}

- (FPSpotlightFetchClientStateOperation)initWithIndexer:(id)indexer index:(id)index indexName:(id)name spotlightDomainIdentifier:(id)identifier reason:(id)reason supportURL:(id)l
{
  indexerCopy = indexer;
  indexCopy = index;
  nameCopy = name;
  identifierCopy = identifier;
  reasonCopy = reason;
  lCopy = l;
  v23.receiver = self;
  v23.super_class = FPSpotlightFetchClientStateOperation;
  v18 = [(FPOperation *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_indexer, indexerCopy);
    objc_storeStrong(&v19->_index, index);
    objc_storeStrong(&v19->_indexName, name);
    objc_storeStrong(&v19->_spotlightDomainIdentifier, identifier);
    objc_storeStrong(&v19->_supportURL, l);
    objc_storeStrong(&v19->_reason, reason);
  }

  return v19;
}

- (void)_markClientStateResetDone
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *self;
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, a2, a3, "[ERROR] failed to synchronize user defaults for %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_handleFetchedClientState:(id)state error:(id)error
{
  stateCopy = state;
  errorCopy = error;
  v9 = errorCopy;
  if (!errorCopy)
  {
    selfCopy2 = self;
    v20 = stateCopy;
    v21 = 0;
LABEL_10:
    [(FPOperation *)selfCopy2 completedWithResult:v20 error:v21];
    goto LABEL_14;
  }

  domain = [errorCopy domain];
  v11 = getCSIndexErrorDomain();
  v12 = [domain isEqualToString:v11];

  if ((v12 & 1) == 0)
  {
    domain2 = [v9 domain];
    v14 = getCSIndexErrorDomain();
    v15 = [domain2 isEqualToString:v14];

    if ((v15 & 1) == 0)
    {
      [FPSpotlightFetchClientStateOperation _handleFetchedClientState:a2 error:self];
    }
  }

  code = [v9 code];
  v17 = fp_current_or_default_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (code == -1003)
  {
    if (v18)
    {
      [FPSpotlightFetchClientStateOperation _handleFetchedClientState:v9 error:?];
    }

    selfCopy2 = self;
    v20 = 0;
    v21 = v9;
    goto LABEL_10;
  }

  if (v18)
  {
    [FPSpotlightFetchClientStateOperation _handleFetchedClientState:v9 error:?];
  }

  spotlightDomainIdentifier = self->_spotlightDomainIdentifier;
  index = self->_index;
  WeakRetained = objc_loadWeakRetained(&self->_indexer);
  dropIndexDelegate = [WeakRetained dropIndexDelegate];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __72__FPSpotlightFetchClientStateOperation__handleFetchedClientState_error___block_invoke;
  v26[3] = &unk_1E793D0B0;
  v27 = v9;
  selfCopy3 = self;
  [FPSpotlightDropIndexOperation deleteSearchableItemsAndClearClientStateWithDomainIdentifier:spotlightDomainIdentifier index:index dropReason:7 delegate:dropIndexDelegate completionHandler:v26];

LABEL_14:
}

void __72__FPSpotlightFetchClientStateOperation__handleFetchedClientState_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__FPSpotlightFetchClientStateOperation__handleFetchedClientState_error___block_invoke_cold_1((a1 + 32));
    }
  }

  [*(a1 + 40) completedWithResult:0 error:v3];
}

void __44__FPSpotlightFetchClientStateOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v36 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 304));
  v4 = [WeakRetained log];
  v5 = fpfs_adopt_log(v4);

  v6 = [MEMORY[0x1E69DF068] sharedManager];
  v35 = [v6 currentPersona];

  v42 = 0;
  v7 = [v35 userPersonaUniqueString];
  v8 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v9 = [v8 domain];
  v10 = [v9 personaIdentifier];
  v11 = v10;
  if (v7 == v10)
  {

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v12 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v13 = [v12 domain];
  v14 = [v13 personaIdentifier];
  v15 = [v7 isEqualToString:v14];

  if ((v15 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v41 = 0;
  v16 = [v35 copyCurrentPersonaContextWithError:&v41];
  v17 = v41;
  v18 = v42;
  v42 = v16;

  if (v17)
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v20 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v21 = [v20 domain];
  v22 = [v21 personaIdentifier];
  v23 = [v35 generateAndRestorePersonaContextWithPersonaUniqueString:v22];

  if (v23)
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_loadWeakRetained((*(a1 + 32) + 304));
      v33 = [v32 domain];
      v34 = [v33 personaIdentifier];
      *buf = 138412546;
      v44 = v34;
      v45 = 2112;
      v46 = v23;
      _os_log_error_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  v40 = *(a1 + 40);
  v25 = fp_current_or_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    __44__FPSpotlightFetchClientStateOperation_main__block_invoke_cold_2();
  }

  if (v36)
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [v36 fp_prettyDescription];
      __44__FPSpotlightFetchClientStateOperation_main__block_invoke_cold_3(v27, buf, v26);
    }

    [*(a1 + 32) completedWithResult:0 error:v36];
  }

  else
  {
    [*(*(a1 + 32) + 312) beginIndexBatch];
    v28 = *(*(a1 + 32) + 312);
    v29 = [MEMORY[0x1E695DEF0] data];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __44__FPSpotlightFetchClientStateOperation_main__block_invoke_17;
    v37[3] = &unk_1E793D088;
    v30 = *(a1 + 32);
    v31 = *(a1 + 40);
    v38 = 0;
    v39 = v31;
    v37[4] = v30;
    [v28 endIndexBatchWithClientState:v29 completionHandler:v37];
  }

  __fp_leave_section_Debug(&v40);

  _FPRestorePersona(&v42);
}

void __44__FPSpotlightFetchClientStateOperation_main__block_invoke_17(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v31 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 304));
  v4 = [WeakRetained log];
  v5 = fpfs_adopt_log(v4);

  v6 = [MEMORY[0x1E69DF068] sharedManager];
  v32 = [v6 currentPersona];

  v35 = 0;
  v7 = [v32 userPersonaUniqueString];
  v8 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v9 = [v8 domain];
  v10 = [v9 personaIdentifier];
  v11 = v10;
  if (v7 == v10)
  {

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v12 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v13 = [v12 domain];
  v14 = [v13 personaIdentifier];
  v15 = [v7 isEqualToString:v14];

  if ((v15 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v34 = 0;
  v16 = [v32 copyCurrentPersonaContextWithError:&v34];
  v17 = v34;
  v18 = v35;
  v35 = v16;

  if (v17)
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v20 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v21 = [v20 domain];
  v22 = [v21 personaIdentifier];
  v23 = [v32 generateAndRestorePersonaContextWithPersonaUniqueString:v22];

  if (v23)
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_loadWeakRetained((*(a1 + 32) + 304));
      v29 = [v28 domain];
      v30 = [v29 personaIdentifier];
      *buf = 138412546;
      v37 = v30;
      v38 = 2112;
      v39 = v23;
      _os_log_error_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  v33 = *(a1 + 48);
  v25 = fp_current_or_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    __44__FPSpotlightFetchClientStateOperation_main__block_invoke_17_cold_2();
  }

  if (v31)
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [*(a1 + 40) fp_prettyDescription];
      __44__FPSpotlightFetchClientStateOperation_main__block_invoke_17_cold_3(v27, buf, v26);
    }

    [*(a1 + 32) completedWithResult:0 error:*(a1 + 40)];
  }

  else
  {
    [*(a1 + 32) _markClientStateResetDone];
    [*(a1 + 32) _fetchClientState];
  }

  __fp_leave_section_Debug(&v33);

  _FPRestorePersona(&v35);
}

- (void)_handleFetchedClientState:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPSpotlightFetchClientStateOperation.m" lineNumber:127 description:@"unexpected error"];
}

- (void)_handleFetchedClientState:(void *)a1 error:.cold.2(void *a1)
{
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1AAAE1000, v2, v3, "[ERROR] failed fetching client state, Starting index from scratch: %@", v4, v5, v6, v7);
}

- (void)_handleFetchedClientState:(void *)a1 error:.cold.3(void *a1)
{
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1AAAE1000, v2, v3, "[ERROR] failed fetching client state with xpc error (%@), retrying later.", v4, v5, v6, v7);
}

void __72__FPSpotlightFetchClientStateOperation__handleFetchedClientState_error___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1AAAE1000, v2, v3, "[ERROR] can't drop spotlight index: %@", v4, v5, v6, v7);
}

void __44__FPSpotlightFetchClientStateOperation_main__block_invoke_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx done resetting index", v1, 0xCu);
}

void __44__FPSpotlightFetchClientStateOperation_main__block_invoke_cold_3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] failed to delete all fileproviderd searchable items: %@", buf, 0xCu);
}

void __44__FPSpotlightFetchClientStateOperation_main__block_invoke_17_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx done resetting client state", v1, 0xCu);
}

void __44__FPSpotlightFetchClientStateOperation_main__block_invoke_17_cold_3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] failed to reset client state: %@", buf, 0xCu);
}

@end