@interface FPSpotlightDropIndexOperation
+ (void)deleteSearchableItemsAndClearClientStateWithDomainIdentifier:(id)identifier index:(id)index dropReason:(unint64_t)reason delegate:(id)delegate completionHandler:(id)handler;
- (FPSpotlightDropIndexOperation)initWithIndexer:(id)indexer index:(id)index spotlightDomainIdentifier:(id)identifier dropReason:(unint64_t)reason delegate:(id)delegate;
- (void)main;
@end

@implementation FPSpotlightDropIndexOperation

- (FPSpotlightDropIndexOperation)initWithIndexer:(id)indexer index:(id)index spotlightDomainIdentifier:(id)identifier dropReason:(unint64_t)reason delegate:(id)delegate
{
  indexerCopy = indexer;
  indexCopy = index;
  identifierCopy = identifier;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = FPSpotlightDropIndexOperation;
  v16 = [(FPOperation *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_indexer, indexerCopy);
    objc_storeWeak(&v17->_delegate, delegateCopy);
    objc_storeStrong(&v17->_index, index);
    objc_storeStrong(&v17->_spotlightDomainIdentifier, identifier);
    v17->_dropReason = reason;
  }

  return v17;
}

+ (void)deleteSearchableItemsAndClearClientStateWithDomainIdentifier:(id)identifier index:(id)index dropReason:(unint64_t)reason delegate:(id)delegate completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x1E69E9840];
  indexCopy = index;
  delegateCopy = delegate;
  handlerCopy = handler;
  identifierCopy = identifier;
  v15 = FPCSIndexReasonForFPIndexDropReason(reason);
  v26[0] = identifierCopy;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __138__FPSpotlightDropIndexOperation_deleteSearchableItemsAndClearClientStateWithDomainIdentifier_index_dropReason_delegate_completionHandler___block_invoke;
  v20[3] = &unk_1E793D038;
  v23 = handlerCopy;
  reasonCopy = reason;
  v21 = delegateCopy;
  v22 = indexCopy;
  v25 = v15;
  v17 = indexCopy;
  v18 = delegateCopy;
  v19 = handlerCopy;
  [v17 deleteSearchableItemsWithDomainIdentifiers:v16 reason:v15 completionHandler:v20];
}

void __138__FPSpotlightDropIndexOperation_deleteSearchableItemsAndClearClientStateWithDomainIdentifier_index_dropReason_delegate_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    [*(a1 + 32) didDropIndexWithDropReason:*(a1 + 56)];
    [*(a1 + 40) beginIndexBatch];
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x1E695DEF0] data];
    [v4 endIndexBatchWithExpectedClientState:0 newClientState:v5 reason:*(a1 + 64) completionHandler:*(a1 + 48)];
  }
}

- (void)main
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  selfCopy = self;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx %@: dropping index", &v3, 0x16u);
}

void __37__FPSpotlightDropIndexOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v40 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 304));
  v4 = [WeakRetained log];
  v5 = fpfs_adopt_log(v4);

  v6 = [MEMORY[0x1E69DF068] sharedManager];
  v39 = [v6 currentPersona];

  v43 = 0;
  v7 = [v39 userPersonaUniqueString];
  v8 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v9 = [v8 domain];
  v10 = [v9 personaIdentifier];
  v11 = v10;
  if (v7 == v10)
  {

LABEL_13:
    v24 = 0;
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

  v42 = 0;
  v16 = [v39 copyCurrentPersonaContextWithError:&v42];
  v17 = v42;
  v18 = v43;
  v43 = v16;

  if (v17)
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(FPSpotlightDropIndexOperation *)v17 main];
    }
  }

  v21 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v22 = [v21 domain];
  v23 = [v22 personaIdentifier];
  v24 = [v39 generateAndRestorePersonaContextWithPersonaUniqueString:v23];

  if (v24)
  {
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_loadWeakRetained((*(a1 + 32) + 304));
      v37 = [v36 domain];
      [v37 personaIdentifier];
      v38 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412546;
      v45 = v38;
      v46 = 2112;
      v47 = v24;
      _os_log_error_impl(&dword_1AAAE1000, v25, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  if (v40)
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [v40 fp_prettyDescription];
      __37__FPSpotlightDropIndexOperation_main__block_invoke_cold_2(v27, buf, v26);
    }

    [*(a1 + 32) completedWithResult:0 error:v40];
  }

  else
  {
    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 40) timeIntervalSinceNow];
      v30 = v29;
      v31 = FPHumanReadableDropReason(*(*(a1 + 32) + 336));
      v32 = *(*(a1 + 32) + 320);
      *buf = 134218498;
      v45 = -v30;
      v46 = 2112;
      v47 = v31;
      v48 = 2112;
      v49 = v32;
      _os_log_impl(&dword_1AAAE1000, v28, OS_LOG_TYPE_DEFAULT, "[NOTICE] [spotlight] done deleting all searchable items in %.3fs (because %@) in %@", buf, 0x20u);
    }

    [*(*(a1 + 32) + 320) beginIndexBatch];
    v33 = *(*(a1 + 32) + 320);
    v34 = [MEMORY[0x1E695DEF0] data];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __37__FPSpotlightDropIndexOperation_main__block_invoke_4;
    v41[3] = &unk_1E793D060;
    v35 = *(a1 + 48);
    v41[4] = *(a1 + 32);
    v41[5] = v35;
    [v33 endIndexBatchWithClientState:v34 completionHandler:v41];
  }

  _FPRestorePersona(&v43);
}

void __37__FPSpotlightDropIndexOperation_main__block_invoke_4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 304));
  v5 = [WeakRetained log];
  v6 = fpfs_adopt_log(v5);

  v7 = *(a1 + 40);
  v11 = v7;
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __37__FPSpotlightDropIndexOperation_main__block_invoke_4_cold_1(v7, v8);
  }

  if (v3)
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v3 fp_prettyDescription];
      __37__FPSpotlightDropIndexOperation_main__block_invoke_4_cold_2(v10, v12, v9);
    }

    [*(a1 + 32) completedWithResult:0 error:v3];
  }

  else
  {
    [*(a1 + 32) completedWithResult:0 error:0];
  }

  __fp_leave_section_Debug(&v11);
}

void __37__FPSpotlightDropIndexOperation_main__block_invoke_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_13(&dword_1AAAE1000, a3, a3, "[ERROR] [spotlight] failed dropping all searchable items: %@", a2);
}

void __37__FPSpotlightDropIndexOperation_main__block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx [spotlight] endIndexBatchWithClientState", &v2, 0xCu);
}

void __37__FPSpotlightDropIndexOperation_main__block_invoke_4_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_13(&dword_1AAAE1000, a3, a3, "[ERROR] [spotlight] failed to reset client state: %@", a2);
}

@end