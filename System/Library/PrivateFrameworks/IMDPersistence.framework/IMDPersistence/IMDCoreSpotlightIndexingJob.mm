@interface IMDCoreSpotlightIndexingJob
+ (id)_timeoutError;
- (BOOL)_contextHasEffectsOnClientState;
- (BOOL)_shouldWithdrawRejectionsFromSpotlight;
- (IMDCoreSpotlightIndexingJob)initWithContext:(id)context;
- (IMDCoreSpotlightIndexingJob)initWithIndex:(id)index context:(id)context;
- (void)_applyContextToClientState;
- (void)_beginIndexing;
- (void)_donateToSuggestions;
- (void)_finishIndexingAndSaveClientState;
- (void)_indexToSpotlight;
- (void)_loadClientStateIfNeeded;
- (void)_startJob;
- (void)_withdrawRejectionsFromSpotlight;
- (void)runWithCompletion:(id)completion;
@end

@implementation IMDCoreSpotlightIndexingJob

- (void)_startJob
{
  v35 = *MEMORY[0x1E69E9840];
  IMDIndexingAssertClientRequestQueue();
  objc_msgSend__beginIndexing(self, v3, v4, v5);
  objc_msgSend__indexToSpotlight(self, v6, v7, v8);
  objc_msgSend__withdrawRejectionsFromSpotlight(self, v9, v10, v11);
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v19 = objc_msgSend_searchableItems(self, v16, v17, v18);
      v23 = objc_msgSend_count(v19, v20, v21, v22);
      v27 = objc_msgSend_transactionID(self, v24, v25, v26);
      v31 = 134218242;
      v32 = v23;
      v33 = 2112;
      v34 = v27;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Indexing %ld items to Spotlight and Suggestions - transaction ID %@", &v31, 0x16u);
    }
  }

  objc_msgSend__donateToSuggestions(self, v12, v13, v14);
  objc_msgSend__finishIndexingAndSaveClientState(self, v28, v29, v30);
}

- (void)_beginIndexing
{
  v5 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, a2, v2, v3);
  v9 = objc_msgSend_index(self, v6, v7, v8);
  objc_msgSend_beginIndexBatch(v9, v10, v11, v12);

  v16 = objc_msgSend_group(self, v13, v14, v15);
  dispatch_group_enter(v16);
}

- (void)_indexToSpotlight
{
  v5 = objc_msgSend_index(self, a2, v2, v3);
  v9 = objc_msgSend_searchableItems(self, v6, v7, v8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7BBA888;
  v11[3] = &unk_1E7CB6C58;
  v11[4] = self;
  objc_msgSend_indexSearchableItems_completionHandler_(v5, v10, v9, v11);
}

- (IMDCoreSpotlightIndexingJob)initWithIndex:(id)index context:(id)context
{
  indexCopy = index;
  contextCopy = context;
  if (indexCopy)
  {
    v20.receiver = self;
    v20.super_class = IMDCoreSpotlightIndexingJob;
    v9 = [(IMDCoreSpotlightIndexingJob *)&v20 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_index, index);
      objc_storeStrong(&v10->_context, context);
      v14 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v11, v12, v13);
      transactionID = v10->_transactionID;
      v10->_transactionID = v14;

      v16 = dispatch_group_create();
      group = v10->_group;
      v10->_group = v16;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IMDCoreSpotlightIndexingJob)initWithContext:(id)context
{
  contextCopy = context;
  v8 = objc_msgSend_reason(contextCopy, v5, v6, v7);
  v9 = _IMDSpotlightIndexForIndexingReason(v8);
  v11 = objc_msgSend_initWithIndex_context_(self, v10, v9, contextCopy);

  return v11;
}

+ (id)_timeoutError
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v3 = *MEMORY[0x1E69A7C30];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = @"Timed out talking to Spotlight.";
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v10, &v9, 1);
  v7 = objc_msgSend_initWithDomain_code_userInfo_(v2, v6, v3, 2, v5);

  return v7;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  if (IMDCoreSpotlightDisabled(completionCopy, v5, v6, v7))
  {
    completionCopy[2](completionCopy, 0);
  }

  else if (objc_msgSend_forceSpotlightIndexingErrors(MEMORY[0x1E69A7FF8], v8, v9, v10))
  {
    v14 = objc_msgSend__timeoutError(IMDCoreSpotlightIndexingJob, v11, v12, v13);
    (completionCopy)[2](completionCopy, v14);
  }

  else
  {
    objc_msgSend__startJob(self, v11, v12, v13);
    v18 = objc_msgSend_group(self, v15, v16, v17);
    v19 = IMDIndexingClientRequestQueue(v18);
    dispatch_time(0, 60000000000);
    v20 = completionCopy;
    IMDispatchGroupNotifyWithTimeout();
  }
}

- (BOOL)_shouldWithdrawRejectionsFromSpotlight
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_rejectedItems(self, a2, v2, v3);
  if (!objc_msgSend_count(v5, v6, v7, v8))
  {

    goto LABEL_6;
  }

  v12 = objc_msgSend_context(self, v9, v10, v11);
  objc_msgSend_reason(v12, v13, v14, v15);
  IsIncomingMessage = IMCoreSpotlightIndexReasonIsIncomingMessage();

  if (IsIncomingMessage)
  {
LABEL_6:
    LOBYTE(v20) = 0;
    return v20;
  }

  if ((objc_msgSend_withdrawDonationsForFailedPreviewGenerations(MEMORY[0x1E69A7FF8], v17, v18, v19) & 1) == 0)
  {
    v20 = IMOSLoggingEnabled();
    if (!v20)
    {
      return v20;
    }

    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v25 = objc_msgSend_rejectedItems(self, v22, v23, v24);
      v30 = 134217984;
      v31 = objc_msgSend_count(v25, v26, v27, v28);
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "not deleting %ld items from Spotlight due to override", &v30, 0xCu);
    }

    goto LABEL_6;
  }

  LOBYTE(v20) = 1;
  return v20;
}

- (void)_withdrawRejectionsFromSpotlight
{
  v43 = *MEMORY[0x1E69E9840];
  if (objc_msgSend__shouldWithdrawRejectionsFromSpotlight(self, a2, v2, v3))
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    selfCopy = self;
    v9 = objc_msgSend_rejectedItems(self, v6, v7, v8);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v38, v42, 16);
    if (v11)
    {
      v15 = v11;
      v16 = *v39;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v9);
          }

          v18 = *(*(&v38 + 1) + 8 * i);
          v19 = MEMORY[0x1E696AD98];
          v20 = objc_msgSend_reason(v18, v12, v13, v14);
          v23 = objc_msgSend_numberWithInteger_(v19, v21, v20, v22);
          v29 = objc_msgSend_objectForKeyedSubscript_(v5, v24, v23, v25);
          if (!v29)
          {
            v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
            objc_msgSend_setObject_forKeyedSubscript_(v5, v30, v29, v23);
          }

          v31 = objc_msgSend_proposedIdentifier(v18, v26, v27, v28);
          objc_msgSend_addObject_(v29, v32, v31, v33);
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v38, v42, 16);
      }

      while (v15);
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_1B7BBACF8;
    v37[3] = &unk_1E7CBC1B0;
    v37[4] = selfCopy;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v34, v37, v35);
  }
}

- (void)_donateToSuggestions
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_searchableItems(self, a2, v2, v3);
  v9 = objc_msgSend_count(v5, v6, v7, v8);

  if (v9)
  {
    if (qword_1EBA53B40 != -1)
    {
      sub_1B7CFA520();
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v17 = objc_msgSend_searchableItems(self, v14, v15, v16);
        v21 = objc_msgSend_count(v17, v18, v19, v20);
        v25 = objc_msgSend_transactionID(self, v22, v23, v24);
        *buf = 134218242;
        v61 = v21;
        v62 = 2112;
        v63 = v25;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Donating %ld items to Suggestions with transaction ID %@", buf, 0x16u);
      }
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = objc_msgSend_searchableItems(self, v10, v11, v12);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v56, v66, 16);
    if (v30)
    {
      v32 = *v57;
      *&v31 = 138412802;
      v53 = v31;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v57 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v56 + 1) + 8 * i);
          if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v27, v28, v29, v53) && IMOSLoggingEnabled())
          {
            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v42 = objc_msgSend_uniqueIdentifier(v34, v39, v40, v41);
              v46 = objc_msgSend_domainIdentifier(v34, v43, v44, v45);
              v50 = objc_msgSend_transactionID(self, v47, v48, v49);
              *buf = v53;
              v61 = v42;
              v62 = 2112;
              v63 = v46;
              v64 = 2112;
              v65 = v50;
              _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_INFO, "Donating item ID %@ domain %@ to Suggestions with transaction ID %@", buf, 0x20u);
            }
          }

          v51 = objc_msgSend_group(self, v35, v36, v37);
          dispatch_group_enter(v51);

          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = sub_1B7BBB388;
          v55[3] = &unk_1E7CBC1D8;
          v55[4] = v34;
          v55[5] = self;
          objc_msgSend_suggestionsFromMessage_options_completionHandler_(qword_1EBA53B38, v52, v34, 3, v55);
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v56, v66, 16);
      }

      while (v30);
    }
  }
}

- (BOOL)_contextHasEffectsOnClientState
{
  v5 = objc_msgSend_context(self, a2, v2, v3);
  v9 = objc_msgSend_messagesContributingToFullReindex(v5, v6, v7, v8);

  if (v9 > 0)
  {
    return 1;
  }

  v13 = objc_msgSend_context(self, v10, v11, v12);
  v17 = objc_msgSend_chatsContributingToFullReindex(v13, v14, v15, v16);

  if (v17 > 0)
  {
    return 1;
  }

  v23 = objc_msgSend_context(self, v18, v19, v20);
  v27 = objc_msgSend_oldestFullReindexMessageGUID(v23, v24, v25, v26);
  v21 = v27 != 0;

  return v21;
}

- (void)_loadClientStateIfNeeded
{
  v5 = objc_msgSend_clientState(self, a2, v2, v3);

  if (!v5)
  {
    v9 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v6, v7, v8);
    v18 = 0;
    v12 = objc_msgSend_currentClientStateWithError_(v9, v10, &v18, v11);
    v13 = v18;

    if (v13)
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFA534(v13, self, v16, v17);
      }
    }

    else
    {
      objc_msgSend_setClientState_(self, v14, v12, v15);
    }
  }
}

- (void)_applyContextToClientState
{
  v72[1] = *MEMORY[0x1E69E9840];
  if (objc_msgSend__contextHasEffectsOnClientState(self, a2, v2, v3))
  {
    objc_msgSend__loadClientStateIfNeeded(self, v5, v6, v7);
    v11 = objc_msgSend_clientState(self, v8, v9, v10);

    if (v11)
    {
      v15 = objc_msgSend_clientState(self, v12, v13, v14);
      v19 = objc_msgSend_context(self, v16, v17, v18);
      v23 = objc_msgSend_messagesContributingToFullReindex(v19, v20, v21, v22);
      v27 = objc_msgSend_initialIndexedMessages(v15, v24, v25, v26);
      objc_msgSend_setInitialIndexedMessages_(v15, v28, v27 + v23, v29);

      v33 = objc_msgSend_clientState(self, v30, v31, v32);
      v37 = objc_msgSend_context(self, v34, v35, v36);
      v41 = objc_msgSend_chatsContributingToFullReindex(v37, v38, v39, v40);
      v45 = objc_msgSend_initialIndexedChats(v33, v42, v43, v44);
      objc_msgSend_setInitialIndexedChats_(v33, v46, v45 + v41, v47);

      v51 = objc_msgSend_context(self, v48, v49, v50);
      v55 = objc_msgSend_oldestFullReindexMessageGUID(v51, v52, v53, v54);

      if (v55)
      {
        v59 = objc_msgSend_synchronousDatabase(IMDDatabase, v56, v57, v58);
        v63 = objc_msgSend_context(self, v60, v61, v62);
        v67 = objc_msgSend_oldestFullReindexMessageGUID(v63, v64, v65, v66);
        v72[0] = v67;
        v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v68, v72, 1);
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = sub_1B7BBB8C4;
        v71[3] = &unk_1E7CBC200;
        v71[4] = self;
        objc_msgSend_fetchMessageRowIDsForGUIDs_completionHandler_(v59, v70, v69, v71);
      }
    }
  }
}

- (void)_finishIndexingAndSaveClientState
{
  v57 = *MEMORY[0x1E69E9840];
  objc_msgSend__applyContextToClientState(self, a2, v2, v3);
  v8 = objc_msgSend_clientState(self, v5, v6, v7);
  v50 = 0;
  v11 = objc_msgSend_dataWithError_(v8, v9, &v50, v10);
  v12 = v50;

  if (v12)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA684(v12, self, v13, v14);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v22 = objc_msgSend_searchableItems(self, v19, v20, v21);
      v26 = objc_msgSend_count(v22, v23, v24, v25);
      v30 = objc_msgSend_context(self, v27, v28, v29);
      objc_msgSend_reason(v30, v31, v32, v33);
      v34 = NSStringFromIMCoreSpotlightIndexReason();
      v38 = objc_msgSend_transactionID(self, v35, v36, v37);
      *buf = 134218498;
      v52 = v26;
      v53 = 2112;
      v54 = v34;
      v55 = 2112;
      v56 = v38;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Indexing %ld searchable items due to %@ - transaction %@", buf, 0x20u);
    }
  }

  v39 = objc_msgSend_index(self, v15, v16, v17);
  v43 = objc_msgSend_context(self, v40, v41, v42);
  objc_msgSend_reason(v43, v44, v45, v46);
  v47 = IMCSIndexReasonFromIMIndexReason();
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = sub_1B7BBBC24;
  v49[3] = &unk_1E7CB6C58;
  v49[4] = self;
  objc_msgSend_endIndexBatchWithExpectedClientState_newClientState_reason_completionHandler_(v39, v48, 0, v11, v47, v49);
}

@end