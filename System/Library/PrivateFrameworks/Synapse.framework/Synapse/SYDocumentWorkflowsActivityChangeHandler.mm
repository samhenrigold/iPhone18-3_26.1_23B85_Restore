@interface SYDocumentWorkflowsActivityChangeHandler
- (BOOL)canHandleUserActivityChange:(id)change appStateObserver:(id)observer;
- (SYDocumentWorkflowsActivityChangeHandler)init;
- (void)_fetchAttributesForItemsWithIndexKeys:(id)keys maxRetryCount:(int64_t)count completion:(id)completion;
- (void)handleActiveUserActivityChange:(id)change withCompletion:(id)completion;
@end

@implementation SYDocumentWorkflowsActivityChangeHandler

- (SYDocumentWorkflowsActivityChangeHandler)init
{
  v8.receiver = self;
  v8.super_class = SYDocumentWorkflowsActivityChangeHandler;
  v2 = [(SYDocumentWorkflowsActivityChangeHandler *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SYDocumentWorkflowsClient);
    client = v2->_client;
    v2->_client = v3;

    v5 = dispatch_queue_create("com.apple.synapse.DocumentWorkflowsActivityChangeHandler.retryQueue", 0);
    retryQueue = v2->_retryQueue;
    v2->_retryQueue = v5;
  }

  return v2;
}

- (BOOL)canHandleUserActivityChange:(id)change appStateObserver:(id)observer
{
  changeCopy = change;
  observerCopy = observer;
  if ((SYIsMailApp() & 1) == 0)
  {
    v9 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v16 = 0;
    v10 = "User activity isn't from Mail";
    v11 = &v16;
LABEL_14:
    _os_log_impl(&dword_225901000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    goto LABEL_15;
  }

  if (([observerCopy appIsActive] & 1) == 0)
  {
    v9 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v15 = 0;
    v10 = "App changed user activity while it is inactive";
    v11 = &v15;
    goto LABEL_14;
  }

  if ((SYIsCurrentLocalUserActivity(changeCopy) & 1) == 0)
  {
    v9 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v14 = 0;
    v10 = "User activity isn't the current user activity";
    v11 = &v14;
    goto LABEL_14;
  }

  v7 = [SYDocumentWorkflowsActivityChangeHandler _indexKeyFromUserActivity:changeCopy];

  if (!v7)
  {
    v9 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v10 = "User activity doesn't have an index key";
      v11 = &v13;
      goto LABEL_14;
    }

LABEL_15:

    v8 = 0;
    goto LABEL_16;
  }

  v8 = 1;
LABEL_16:

  return v8;
}

- (void)handleActiveUserActivityChange:(id)change withCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  completionCopy = completion;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke;
  v26[3] = &unk_27856B738;
  v8 = completionCopy;
  v27 = v8;
  v9 = MEMORY[0x22AA6A360](v26);
  v10 = [SYDocumentWorkflowsActivityChangeHandler _indexKeyFromUserActivity:changeCopy];
  v11 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v10;
    _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_DEFAULT, "Handle user activity with index key: %@", buf, 0xCu);
  }

  v12 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SYDocumentWorkflowsActivityChangeHandler handleActiveUserActivityChange:changeCopy withCompletion:v12];
  }

  v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v10;
    _os_log_impl(&dword_225901000, v13, OS_LOG_TYPE_DEFAULT, "Saving current user activity for message with index key: %@", buf, 0xCu);
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v16 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v17 = bundleIdentifier;
  }

  else
  {
    v17 = &stru_2838DFF18;
  }

  v18 = v17;

  [changeCopy setTitle:&stru_2838DFF18];
  client = self->_client;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke_7;
  v22[3] = &unk_27856C008;
  selfCopy = self;
  v25 = v9;
  v23 = v10;
  v20 = v10;
  v21 = v9;
  [(SYDocumentWorkflowsClient *)client saveUserActivity:changeCopy forDocumentIndexKey:v20 sourceBundleIdentifier:v18 completion:v22];
}

uint64_t __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke_7(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  v7 = v6;
  if (!v5 || (a2 & 1) != 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Fetching attachments for message with index key: %@", buf, 0xCu);
    }

    v9 = *(a1 + 40);
    v14 = *(a1 + 32);
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke_9;
    v11[3] = &unk_27856C270;
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    [v9 _fetchAttributesForItemsWithIndexKeys:v10 maxRetryCount:3 completion:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke_7_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  v8 = v7;
  if (v5 || !v6)
  {
    v29 = v6;
    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 count];
      v11 = *(a1 + 32);
      *buf = 134218242;
      v38 = v10;
      v39 = 2112;
      v40 = v11;
      _os_log_impl(&dword_225901000, v9, OS_LOG_TYPE_DEFAULT, "Found %ld attachments for message with index key: %@", buf, 0x16u);
    }

    v28 = a1;

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = v5;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (!v13)
    {
LABEL_27:

      (*(*(v28 + 40) + 16))();
      v6 = v29;
      v5 = v30;
      goto LABEL_28;
    }

    v14 = v13;
    v15 = *v33;
LABEL_10:
    v16 = 0;
    while (1)
    {
      if (*v33 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v32 + 1) + 8 * v16);
      v18 = [v17 originalFileURL];
      v19 = [SYDocumentAttributes documentAttributesForFileAtURL:v18];

      if (v19)
      {
        v20 = os_log_create("com.apple.synapse", "DocumentWorkflows");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v17 originalFileURL];
          *buf = 138412290;
          v38 = v21;
          _os_log_impl(&dword_225901000, v20, OS_LOG_TYPE_DEFAULT, "Skip attachment with existing document attributes, URL: %@", buf, 0xCu);
        }

        v22 = v20;
        goto LABEL_23;
      }

      v23 = [v17 originalFileURL];
      v31 = 0;
      v24 = [v17 saveToFileURL:v23 error:&v31];
      v22 = v31;

      v25 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      v20 = v25;
      if ((v24 & 1) == 0)
      {
        break;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v17 originalFileURL];
        *buf = 138412290;
        v38 = v26;
        _os_log_impl(&dword_225901000, v20, OS_LOG_TYPE_DEFAULT, "Extended attributes added to URL: %@", buf, 0xCu);
LABEL_20:
      }

LABEL_22:

LABEL_23:
      if (v14 == ++v16)
      {
        v27 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
        v14 = v27;
        if (!v27)
        {
          goto LABEL_27;
        }

        goto LABEL_10;
      }
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v26 = [v17 originalFileURL];
    *buf = 138412546;
    v38 = v26;
    v39 = 2112;
    v40 = v22;
    _os_log_error_impl(&dword_225901000, v20, OS_LOG_TYPE_ERROR, "Unable to save extended attributes to URL: %@, error: %@", buf, 0x16u);
    goto LABEL_20;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke_9_cold_1();
  }

  (*(*(a1 + 40) + 16))();
LABEL_28:
}

- (void)_fetchAttributesForItemsWithIndexKeys:(id)keys maxRetryCount:(int64_t)count completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  completionCopy = completion;
  v10 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = keysCopy;
    v19 = 2048;
    countCopy = count;
    _os_log_impl(&dword_225901000, v10, OS_LOG_TYPE_DEFAULT, "Fetching attributes for items with index keys: %@, retryCount: %ld", buf, 0x16u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__SYDocumentWorkflowsActivityChangeHandler__fetchAttributesForItemsWithIndexKeys_maxRetryCount_completion___block_invoke;
  v13[3] = &unk_27856C2C0;
  v13[4] = self;
  v14 = keysCopy;
  v15 = completionCopy;
  countCopy2 = count;
  v11 = completionCopy;
  v12 = keysCopy;
  [SYDocumentAttributesFetchRequest fetchAttributesForDocumentsWithIndexKeys:v12 completion:v13];
}

void __107__SYDocumentWorkflowsActivityChangeHandler__fetchAttributesForItemsWithIndexKeys_maxRetryCount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || [v5 count] || *(a1 + 56) < 1)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, v5, v6);
    }
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v8 = dispatch_time(0, 1500000000);
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__SYDocumentWorkflowsActivityChangeHandler__fetchAttributesForItemsWithIndexKeys_maxRetryCount_completion___block_invoke_2;
    block[3] = &unk_27856C298;
    objc_copyWeak(v16, &location);
    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    v11 = *(a1 + 56);
    v14 = v10;
    v16[1] = v11;
    v15 = v12;
    dispatch_after(v8, v9, block);

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }
}

void __107__SYDocumentWorkflowsActivityChangeHandler__fetchAttributesForItemsWithIndexKeys_maxRetryCount_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _fetchAttributesForItemsWithIndexKeys:*(a1 + 32) maxRetryCount:*(a1 + 56) - 1 completion:*(a1 + 40)];
}

- (void)handleActiveUserActivityChange:(void *)a1 withCompletion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 _syLoggableDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_225901000, a2, OS_LOG_TYPE_DEBUG, "%@", &v4, 0xCu);
}

@end