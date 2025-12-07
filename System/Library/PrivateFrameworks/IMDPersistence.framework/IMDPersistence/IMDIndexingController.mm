@interface IMDIndexingController
+ (id)queryProviderWithBlockingXPC:(BOOL)c;
+ (id)sharedController;
- (BOOL)_itemDonationTriggersChatPostProcessingForContext:(id)context;
- (BOOL)isIndexingDisabled;
- (IMDIndexingController)init;
- (NSArray)integrations;
- (id)_contextForDeletion:(id)deletion;
- (id)_createAggregateMessageIndexingJobWithSize:(int64_t)size context:(id)context;
- (id)_createBatchFetchingMessageIndexingJobWithSize:(int64_t)size context:(id)context batchFetcher:(id)fetcher;
- (int64_t)maxRowID;
- (int64_t)totalChats;
- (int64_t)totalMessages;
- (void)_beginThrottlingDueToIndexError:(id)error;
- (void)_checkForIndexedGUIDsWithSelector:(SEL)selector performBlock:(id)block completionBlock:(id)completionBlock;
- (void)_deferGUIDs:(id)ds forFlag:(unint64_t)flag context:(id)context;
- (void)_deleteBatchOfMessagesWithBatchAmount:(int64_t)amount reason:(int64_t)reason completionHandler:(id)handler;
- (void)_indexMessageGUIDs:(id)ds context:(id)context completionHandler:(id)handler;
- (void)_indexNextBatchOfMessagesWithFetcher:(id)fetcher context:(id)context completionHandler:(id)handler;
- (void)_performDeferrableManagerOperationWithFlag:(unint64_t)flag context:(id)context guids:(id)guids selector:(SEL)selector invokeBlock:(id)block completionBlock:(id)completionBlock;
- (void)_performManagerOperationWithSelector:(SEL)selector invokeBlock:(id)block completionBlock:(id)completionBlock;
- (void)addChatGUIDs:(id)ds context:(id)context completionHandler:(id)handler;
- (void)addMessageGUIDs:(id)ds context:(id)context completionHandler:(id)handler;
- (void)beginThrottlingForIdentifier:(id)identifier untilDate:(id)date;
- (void)checkForIndexedAttachmentGUIDs:(id)ds completionBlock:(id)block;
- (void)checkForIndexedChatGUIDs:(id)ds completionBlock:(id)block;
- (void)checkForIndexedMessageGUIDs:(id)ds completionBlock:(id)block;
- (void)copyIndexableMessageDictionariesWithLimit:(int64_t)limit requireIndexableAttachments:(BOOL)attachments completionHandler:(id)handler;
- (void)deleteAllDonationsForAppDeletionWithCompletion:(id)completion;
- (void)deleteAttachmentGUIDs:(id)ds context:(id)context completionHandler:(id)handler;
- (void)deleteChatGUIDs:(id)ds context:(id)context completionBlock:(id)block;
- (void)deleteMessageGUIDs:(id)ds context:(id)context completionHandler:(id)handler;
- (void)finishThrottlingForIdentifier:(id)identifier;
- (void)indexNextMessageBatchIfNeeded:(unint64_t)needed reason:(int64_t)reason completion:(id)completion;
- (void)indexableMessageGUIDsFromGUIDs:(id)ds ignoreRejections:(BOOL)rejections completionBlock:(id)block;
- (void)markAttachmentWithFileURL:(id)l sender:(id)sender recipients:(id)recipients isIncoming:(BOOL)incoming completionHandler:(id)handler;
- (void)postProcessIndexingForChatDictionary:(id)dictionary context:(id)context;
- (void)postProcessIndexingForItem:(id)item chatDictionary:(id)dictionary context:(id)context;
- (void)reindexRecentMessagesWithHandles:(id)handles batchDeferralTime:(int64_t)time messageAge:(double)age reason:(int64_t)reason;
- (void)scheduleUpdateForDeletedMessagesWithReason:(int64_t)reason;
- (void)setIndexingDisabled:(BOOL)disabled;
- (void)setNeedsMessageReindexingWithContext:(id)context completion:(id)completion;
@end

@implementation IMDIndexingController

+ (id)sharedController
{
  v2 = IMDIsRunningInDatabaseServerProcess();
  if ((v2 & 1) == 0)
  {
    sub_1B7CFB888(v2, v3, v4, v5);
  }

  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v3, v4, v5);
  isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v6, v7, v8, v9);

  if ((isSpotlightRefactorEnabled & 1) == 0)
  {
    sub_1B7CFB914(v11, v12, v13, v14);
  }

  if (qword_1EBA53AC8 != -1)
  {
    sub_1B7CFB9A0();
  }

  v15 = qword_1EBA53AC0;

  return v15;
}

+ (id)queryProviderWithBlockingXPC:(BOOL)c
{
  cCopy = c;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v8 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6, v7);
    isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v8, v9, v10, v11);

    if (isSpotlightRefactorEnabled)
    {
      objc_msgSend_sharedController(self, v13, v14, v15);
    }

    else
    {
      objc_msgSend_sharedProvider(IMDLegacyCoreSpotlightQueryProvider, v13, v14, v15);
    }
  }

  else if (cCopy)
  {
    objc_msgSend_synchronousIndexingQueryProvider(IMDPersistenceService, v5, v6, v7);
  }

  else
  {
    objc_msgSend_indexingQueryProvider(IMDPersistenceService, v5, v6, v7);
  }
  v16 = ;

  return v16;
}

- (IMDIndexingController)init
{
  v23[4] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = IMDIndexingController;
  v2 = [(IMDIndexingController *)&v22 init];
  if (v2)
  {
    v3 = objc_alloc_init(IMDCoreSpotlightIndexingManager);
    v23[0] = v3;
    v7 = objc_msgSend_sharedController(IMDCoreRecentsController, v4, v5, v6);
    v23[1] = v7;
    v11 = objc_msgSend_sharedManager(IMDSmartRepliesManager, v8, v9, v10);
    v23[2] = v11;
    v15 = objc_msgSend_sharedController(IMDINInteractionDonationController, v12, v13, v14);
    v23[3] = v15;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, v23, 4);
    integrations = v2->_integrations;
    v2->_integrations = v17;

    v19 = objc_alloc_init(MEMORY[0x1E696AD10]);
    indexingDisabledLock = v2->_indexingDisabledLock;
    v2->_indexingDisabledLock = v19;
  }

  return v2;
}

- (void)_deferGUIDs:(id)ds forFlag:(unint64_t)flag context:(id)context
{
  dsCopy = ds;
  contextCopy = context;
  if ((objc_msgSend_runningViaBGST(contextCopy, v8, v9, v10) & 1) == 0)
  {
    v14 = objc_msgSend_laneOverride(contextCopy, v11, v12, v13);

    if (v14)
    {
      v18 = objc_msgSend_laneOverride(contextCopy, v15, v16, v17);
      v22 = objc_msgSend_unsignedIntegerValue(v18, v19, v20, v21);
    }

    else
    {
      v23 = objc_msgSend_reason(contextCopy, v15, v16, v17);
      v22 = objc_msgSend_laneForFlag_reason_(IMDPersistentTaskUtilities, v24, flag, v23);
    }

    v25 = [IMDPersistentTaskQueryProvider alloc];
    v28 = objc_msgSend_initWithBlockingDatabaseCalls_(v25, v26, 1, v27);
    v32 = objc_msgSend_reason(contextCopy, v29, v30, v31);
    v36 = objc_msgSend_dictionaryRepresentation(contextCopy, v33, v34, v35);
    objc_msgSend_scheduleGUIDs_flag_lane_reason_userInfo_completionBlock_(v28, v37, dsCopy, flag, v22, v32, v36, &unk_1F2FA1330);
  }
}

- (void)_performDeferrableManagerOperationWithFlag:(unint64_t)flag context:(id)context guids:(id)guids selector:(SEL)selector invokeBlock:(id)block completionBlock:(id)completionBlock
{
  contextCopy = context;
  guidsCopy = guids;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v21 = objc_msgSend_sharedController(IMDIndexThrottlingController, v18, v19, v20);
  shouldDeferIndexingActionWithContext = objc_msgSend_shouldDeferIndexingActionWithContext_(v21, v22, contextCopy, v23);

  if (shouldDeferIndexingActionWithContext)
  {
    objc_msgSend__deferGUIDs_forFlag_context_(self, v25, guidsCopy, flag, contextCopy);
    v29 = objc_msgSend_sharedController(IMDIndexThrottlingController, v26, v27, v28);
    if (objc_msgSend_isThrottled(v29, v30, v31, v32))
    {
      objc_msgSend__throttleError(self, v33, v34, v35);
    }

    else
    {
      objc_msgSend__deferredError(self, v33, v34, v35);
    }
    v37 = ;
    completionBlockCopy[2](completionBlockCopy, v37);
  }

  else
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = sub_1B7BCDA8C;
    v38[3] = &unk_1E7CBC488;
    v38[4] = self;
    v39 = guidsCopy;
    flagCopy = flag;
    v40 = contextCopy;
    v41 = completionBlockCopy;
    objc_msgSend__performManagerOperationWithSelector_invokeBlock_completionBlock_(self, v36, selector, blockCopy, v38);
  }
}

- (void)_performManagerOperationWithSelector:(SEL)selector invokeBlock:(id)block completionBlock:(id)completionBlock
{
  v61 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v11 = objc_msgSend_integrations(self, v8, v9, v10);
  v15 = objc_msgSend_count(v11, v12, v13, v14);

  if (!v15)
  {
    v25 = completionBlockCopy;
    (*(completionBlockCopy + 2))(completionBlockCopy, 0);
    goto LABEL_27;
  }

  v19 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v16, v17, v18);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v19, v20, v21, v22);

  if (!isUnderFirstDataProtectionLock)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v57 = 0x3032000000;
    v58 = sub_1B7AE1B20;
    v59 = sub_1B7AE2598;
    v60 = 0;
    if (qword_1EBA542F8 != -1)
    {
      sub_1B7CFB9B4();
    }

    v26 = dispatch_group_create();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v30 = objc_msgSend_integrations(self, v27, v28, v29);
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v51, v55, 16);
    if (v32)
    {
      v33 = 0;
      v34 = *v52;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v52 != v34)
          {
            objc_enumerationMutation(v30);
          }

          v36 = *(*(&v51 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            dispatch_group_enter(v26);
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = sub_1B7BCDF5C;
            v47[3] = &unk_1E7CBC4D8;
            v38 = blockCopy;
            v47[4] = v36;
            v49 = v38;
            p_buf = &buf;
            v48 = v26;
            objc_msgSend__performSpotlightRequestWithBlock_(self, v39, v47, v40);

            v33 = 1;
          }
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v37, &v51, v55, 16);
      }

      while (v32);

      if (v33)
      {
        v41 = dispatch_get_global_queue(-32768, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1B7BCE140;
        block[3] = &unk_1E7CBC388;
        v46 = &buf;
        v45 = completionBlockCopy;
        dispatch_group_notify(v26, v41, block);

LABEL_25:
        _Block_object_dispose(&buf, 8);

        goto LABEL_26;
      }
    }

    else
    {
    }

    (*(completionBlockCopy + 2))(completionBlockCopy, 0);
    goto LABEL_25;
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = sel_getName(selector);
      _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, " => Before first unlock, skipping donation operation %s", &buf, 0xCu);
    }
  }

  v25 = completionBlockCopy;
  if (completionBlockCopy)
  {
    (*(completionBlockCopy + 2))(completionBlockCopy, 0);
LABEL_26:
    v25 = completionBlockCopy;
  }

LABEL_27:
}

- (id)_contextForDeletion:(id)deletion
{
  deletionCopy = deletion;
  if ((objc_msgSend_ignoreThrottle(deletionCopy, v4, v5, v6) & 1) == 0)
  {
    v10 = objc_msgSend_copy(deletionCopy, v7, v8, v9);

    objc_msgSend_setIgnoreThrottle_(v10, v11, 1, v12);
    deletionCopy = v10;
  }

  return deletionCopy;
}

- (void)deleteAttachmentGUIDs:(id)ds context:(id)context completionHandler:(id)handler
{
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
  v13 = objc_msgSend__contextForDeletion_(self, v11, contextCopy, v12);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1B7BCE3BC;
  v17[3] = &unk_1E7CBC500;
  v18 = dsCopy;
  v19 = contextCopy;
  v14 = contextCopy;
  v15 = dsCopy;
  objc_msgSend__performDeferrableManagerOperationWithFlag_context_guids_selector_invokeBlock_completionBlock_(self, v16, 5, v13, v15, sel_deleteAttachmentGUIDs_reason_completionHandler_, v17, handlerCopy);
}

- (void)deleteMessageGUIDs:(id)ds context:(id)context completionHandler:(id)handler
{
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
  if (objc_msgSend_count(dsCopy, v11, v12, v13))
  {
    v16 = objc_msgSend__contextForDeletion_(self, v14, contextCopy, v15);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1B7BCE5E0;
    v19[3] = &unk_1E7CBC500;
    v20 = dsCopy;
    v21 = contextCopy;
    objc_msgSend__performDeferrableManagerOperationWithFlag_context_guids_selector_invokeBlock_completionBlock_(self, v17, 4, v16, v20, sel_deleteMessageGUIDs_reason_completionHandler_, v19, handlerCopy);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Attempted to delete messages without providing guids. Bailing.", buf, 2u);
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)deleteChatGUIDs:(id)ds context:(id)context completionBlock:(id)block
{
  dsCopy = ds;
  contextCopy = context;
  blockCopy = block;
  v13 = objc_msgSend__contextForDeletion_(self, v11, contextCopy, v12);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1B7BCE764;
  v17[3] = &unk_1E7CBC500;
  v18 = dsCopy;
  v19 = contextCopy;
  v14 = contextCopy;
  v15 = dsCopy;
  objc_msgSend__performDeferrableManagerOperationWithFlag_context_guids_selector_invokeBlock_completionBlock_(self, v16, 6, v13, v15, sel_deleteChatGUIDs_reason_completionHandler_, v17, blockCopy);
}

- (id)_createAggregateMessageIndexingJobWithSize:(int64_t)size context:(id)context
{
  contextCopy = context;
  v7 = [_IMDAggregateMessageIndexingJob alloc];
  v11 = objc_msgSend_integrations(self, v8, v9, v10);
  v13 = objc_msgSend_initWithIntegrations_size_context_(v7, v12, v11, size, contextCopy);

  return v13;
}

- (id)_createBatchFetchingMessageIndexingJobWithSize:(int64_t)size context:(id)context batchFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  v10 = objc_msgSend__createAggregateMessageIndexingJobWithSize_context_(self, v9, size, context);
  if (v10)
  {
    v11 = [_IMDBatchFetchingMessageIndexingJob alloc];
    v13 = objc_msgSend_initWithAggregateIndexingJob_batchFetcher_(v11, v12, v10, fetcherCopy);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_indexNextBatchOfMessagesWithFetcher:(id)fetcher context:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  fetcherCopy = fetcher;
  v14 = objc_msgSend_batchSize(fetcherCopy, v11, v12, v13);
  v16 = objc_msgSend__createBatchFetchingMessageIndexingJobWithSize_context_batchFetcher_(self, v15, v14, contextCopy, fetcherCopy);

  if (v16)
  {
    objc_msgSend_setRunsOneBatch_(v16, v17, 1, v18);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1B7BCEA30;
    v22[3] = &unk_1E7CBB328;
    v19 = handlerCopy;
    v23 = v19;
    if ((objc_msgSend_runWithCompletion_(v16, v20, v22, v21) & 1) == 0)
    {
      (*(v19 + 2))(v19, 0, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)_indexMessageGUIDs:(id)ds context:(id)context completionHandler:(id)handler
{
  v68 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
  IMDIndexingAssertClientRequestQueue();
  if (objc_msgSend_count(dsCopy, v11, v12, v13))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1B7BCEF00;
    aBlock[3] = &unk_1E7CB6798;
    aBlock[4] = self;
    v14 = dsCopy;
    v64 = v14;
    v15 = contextCopy;
    v65 = v15;
    v16 = _Block_copy(aBlock);
    v20 = objc_msgSend_sharedController(IMDIndexThrottlingController, v17, v18, v19);
    shouldDeferIndexingActionWithContext = objc_msgSend_shouldDeferIndexingActionWithContext_(v20, v21, v15, v22);

    if (shouldDeferIndexingActionWithContext)
    {
      v16[2](v16);
      v30 = objc_msgSend__throttleError(self, v27, v28, v29);
      handlerCopy[2](handlerCopy, v30);
LABEL_30:

      goto LABEL_31;
    }

    isReindexing = objc_msgSend_isReindexing(v15, v24, v25, v26);
    v33 = IMOSLoggingEnabled();
    if (isReindexing)
    {
      if (v33)
      {
        v34 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v38 = objc_msgSend_count(v14, v35, v36, v37);
          *buf = 67109120;
          v67 = v38;
          _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "Request to re-index messages with messages count: %d", buf, 8u);
        }

LABEL_18:
      }
    }

    else if (v33)
    {
      v34 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v42 = objc_msgSend_count(v14, v39, v40, v41);
        *buf = 67109120;
        v67 = v42;
        _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "Request to index messages with messages count: %d", buf, 8u);
      }

      goto LABEL_18;
    }

    v30 = objc_alloc_init(IMDMessageRecordBatchFetcher);
    v45 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v43, @"%K IN %@", v44, *MEMORY[0x1E69A7168], v14);
    objc_msgSend_setPredicate_(v30, v46, v45, v47);

    v51 = objc_msgSend_count(v14, v48, v49, v50);
    v53 = objc_msgSend__createBatchFetchingMessageIndexingJobWithSize_context_batchFetcher_(self, v52, v51, v15, v30);
    if (v53)
    {
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = sub_1B7BCEF5C;
      v58[3] = &unk_1E7CBC528;
      v59 = v14;
      selfCopy = self;
      v61 = v16;
      v54 = handlerCopy;
      v62 = v54;
      if ((objc_msgSend_runWithCompletion_(v53, v55, v58, v56) & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v57 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v57, OS_LOG_TYPE_INFO, "Didn't index anything", buf, 2u);
          }
        }

        v54[2](v54, 0);
      }
    }

    else if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }

    goto LABEL_30;
  }

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Trying to reindex messages with an empty guids array", buf, 2u);
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_31:
}

- (void)_beginThrottlingDueToIndexError:(id)error
{
  v5 = objc_msgSend_sharedController(IMDIndexThrottlingController, a2, error, v3);
  objc_msgSend_beginThrottlingForIdentifier_untilDate_(v5, v4, @"com.apple.messages.indexing", 0);
}

- (void)addMessageGUIDs:(id)ds context:(id)context completionHandler:(id)handler
{
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7BCF134;
  v16[3] = &unk_1E7CB70F8;
  v16[4] = self;
  v17 = dsCopy;
  v18 = contextCopy;
  v19 = handlerCopy;
  v11 = handlerCopy;
  v12 = contextCopy;
  v13 = dsCopy;
  objc_msgSend__performSpotlightRequestWithBlock_(self, v14, v16, v15);
}

- (void)addChatGUIDs:(id)ds context:(id)context completionHandler:(id)handler
{
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1B7BCF284;
  v17[3] = &unk_1E7CBC500;
  v18 = dsCopy;
  v19 = contextCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7BCF340;
  v15[3] = &unk_1E7CBB328;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = contextCopy;
  v13 = dsCopy;
  objc_msgSend__performDeferrableManagerOperationWithFlag_context_guids_selector_invokeBlock_completionBlock_(self, v14, 3, v12, v13, sel_addChatGUIDs_context_completionHandler_, v17, v15);
}

- (void)deleteAllDonationsForAppDeletionWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5, v6);
  isMessagesAppDeletionEnabled = objc_msgSend_isMessagesAppDeletionEnabled(v7, v8, v9, v10);

  if (isMessagesAppDeletionEnabled)
  {
    objc_msgSend__performManagerOperationWithSelector_invokeBlock_completionBlock_(self, v12, sel_deleteAllDonationsForAppDeletionWithCompletion_, &unk_1F2FA1350, completionCopy);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)setNeedsMessageReindexingWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v11 = objc_msgSend_totalMessages(self, v8, v9, v10);
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_sharedNotifier(IMSpotlightEventNotifier, v12, v13, v14);

    if (v16)
    {
      v20 = objc_msgSend_sharedNotifier(IMSpotlightEventNotifier, v17, v18, v19);
      v24 = objc_msgSend_reason(contextCopy, v21, v22, v23);
      objc_msgSend_reindexInitiatedWithTotalMessages_reason_(v20, v25, v15, v24);
    }

    v26 = objc_msgSend_copy(contextCopy, v17, v18, v19);

    objc_msgSend_setReindexing_(v26, v27, 1, v28);
    objc_msgSend_setRunningViaBGST_(v26, v29, 1, v30);
    objc_msgSend_setFullReindex_(v26, v31, 1, v32);
    v36 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v33, v34, v35);
    isSpotlightReindexRefactorEnabled = objc_msgSend_isSpotlightReindexRefactorEnabled(v36, v37, v38, v39);

    if (isSpotlightReindexRefactorEnabled)
    {
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = sub_1B7BCF728;
      v53[3] = &unk_1E7CBC570;
      v54 = v26;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = sub_1B7BCF79C;
      v50[3] = &unk_1E7CBB398;
      contextCopy = v54;
      v51 = contextCopy;
      v52 = completionCopy;
      objc_msgSend__performManagerOperationWithSelector_invokeBlock_completionBlock_(self, v41, sel_prepareForReindexingWithReason_completion_, v53, v50);

      v42 = v54;
    }

    else
    {
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = sub_1B7BCF8A8;
      v48[3] = &unk_1E7CBC570;
      v49 = v26;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = sub_1B7BCF91C;
      v45[3] = &unk_1E7CBC598;
      v45[4] = self;
      contextCopy = v49;
      v46 = contextCopy;
      v47 = completionCopy;
      objc_msgSend__performManagerOperationWithSelector_invokeBlock_completionBlock_(self, v44, sel_setNeedsMessageReindexingWithReason_completion_, v48, v45);

      v42 = v49;
    }
  }

  else
  {
    v43 = IMLogHandleForCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v43, OS_LOG_TYPE_INFO, "Not scheduling reindex as we have no messages", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)indexNextMessageBatchIfNeeded:(unint64_t)needed reason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  v12 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v9, v10, v11);
  isSpotlightReindexRefactorEnabled = objc_msgSend_isSpotlightReindexRefactorEnabled(v12, v13, v14, v15);

  if (isSpotlightReindexRefactorEnabled)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1B7BCFB04;
    v21[3] = &unk_1E7CBC5B8;
    v21[4] = needed;
    v21[5] = reason;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7BCFB14;
    v18[3] = &unk_1E7CBC5E0;
    v18[4] = self;
    reasonCopy = reason;
    v19 = completionCopy;
    objc_msgSend__performManagerOperationWithSelector_invokeBlock_completionBlock_(self, v17, sel_indexNextMessageBatchIfNeeded_reason_completion_, v21, v18);
  }
}

- (void)reindexRecentMessagesWithHandles:(id)handles batchDeferralTime:(int64_t)time messageAge:(double)age reason:(int64_t)reason
{
  handlesCopy = handles;
  v10 = [IMDHandleReindexer alloc];
  v15 = objc_msgSend_initWithHandles_batchDeferralTime_messageAge_reason_(v10, v11, handlesCopy, time, reason, age);

  objc_msgSend_reindex(v15, v12, v13, v14);
}

- (void)markAttachmentWithFileURL:(id)l sender:(id)sender recipients:(id)recipients isIncoming:(BOOL)incoming completionHandler:(id)handler
{
  senderCopy = sender;
  recipientsCopy = recipients;
  handlerCopy = handler;
  lCopy = l;
  v19 = objc_msgSend_url(lCopy, v16, v17, v18);
  v23 = objc_msgSend_url(lCopy, v20, v21, v22);

  v27 = objc_msgSend_path(v23, v24, v25, v26);

  if (!objc_msgSend_length(v27, v28, v29, v30) || (objc_msgSend_currentConnection(MEMORY[0x1E696B0B8], v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), AccessToPath = IMNSXPCConnectionHasReadAccessToPath(), v34, (AccessToPath & 1) == 0))
  {
LABEL_8:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_9;
  }

  if ((objc_msgSend_startAccessingSecurityScopedResource(v19, v36, v37, v38) & 1) == 0)
  {
    v40 = IMLogHandleForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9E98(v19, v40);
    }

    goto LABEL_8;
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = sub_1B7BCFEB8;
  v44[3] = &unk_1E7CBC630;
  v45 = v27;
  v46 = senderCopy;
  v47 = recipientsCopy;
  incomingCopy = incoming;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1B7BD002C;
  v41[3] = &unk_1E7CBB398;
  v42 = v19;
  v43 = handlerCopy;
  objc_msgSend__performManagerOperationWithSelector_invokeBlock_completionBlock_(self, v39, sel_markAttachmentWithFilePath_sender_recipients_isIncoming_completionHandler_, v44, v41);

LABEL_9:
}

- (void)_deleteBatchOfMessagesWithBatchAmount:(int64_t)amount reason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7BD0124;
  v12[3] = &unk_1E7CBC680;
  amountCopy = amount;
  reasonCopy = reason;
  v12[4] = self;
  v13 = handlerCopy;
  v9 = handlerCopy;
  objc_msgSend__performSpotlightRequestWithBlock_(self, v10, v12, v11);
}

- (void)scheduleUpdateForDeletedMessagesWithReason:(int64_t)reason
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7BD05F8;
  v4[3] = &unk_1E7CB8680;
  v4[4] = self;
  v4[5] = reason;
  v3 = _Block_copy(v4);
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    _IMDPerformBlockWithDelay(v3, 5.0);
  }
}

- (void)_checkForIndexedGUIDsWithSelector:(SEL)selector performBlock:(id)block completionBlock:(id)completionBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1B7BD07D0;
  v18[3] = &unk_1E7CBC6F8;
  v20 = blockCopy;
  v19 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7BD0A4C;
  v15[3] = &unk_1E7CBB7E0;
  v16 = v19;
  v17 = completionBlockCopy;
  v11 = v19;
  v12 = completionBlockCopy;
  v13 = blockCopy;
  objc_msgSend__performManagerOperationWithSelector_invokeBlock_completionBlock_(self, v14, selector, v18, v15);
}

- (void)checkForIndexedMessageGUIDs:(id)ds completionBlock:(id)block
{
  dsCopy = ds;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BD0B70;
  v9[3] = &unk_1E7CBC720;
  v10 = dsCopy;
  v7 = dsCopy;
  objc_msgSend__checkForIndexedGUIDsWithSelector_performBlock_completionBlock_(self, v8, sel_checkForIndexedMessageGUIDs_completionBlock_, v9, block);
}

- (void)checkForIndexedChatGUIDs:(id)ds completionBlock:(id)block
{
  dsCopy = ds;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BD0C30;
  v9[3] = &unk_1E7CBC720;
  v10 = dsCopy;
  v7 = dsCopy;
  objc_msgSend__checkForIndexedGUIDsWithSelector_performBlock_completionBlock_(self, v8, sel_checkForIndexedChatGUIDs_completionBlock_, v9, block);
}

- (void)checkForIndexedAttachmentGUIDs:(id)ds completionBlock:(id)block
{
  dsCopy = ds;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BD0CF0;
  v9[3] = &unk_1E7CBC720;
  v10 = dsCopy;
  v7 = dsCopy;
  objc_msgSend__checkForIndexedGUIDsWithSelector_performBlock_completionBlock_(self, v8, sel_checkForIndexedAttachmentGUIDs_completionBlock_, v9, block);
}

- (int64_t)maxRowID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BD0DC0;
  block[3] = &unk_1E7CB6EA8;
  block[4] = &v7;
  IMDPersistencePerformBlock(block, 1, v2, v3);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (int64_t)totalMessages
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BD0EB0;
  block[3] = &unk_1E7CB6EA8;
  block[4] = &v7;
  IMDPersistencePerformBlock(block, 1, v2, v3);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (int64_t)totalChats
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BD1018;
  block[3] = &unk_1E7CB6EA8;
  block[4] = &v7;
  IMDPersistencePerformBlock(block, 1, v2, v3);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)_itemDonationTriggersChatPostProcessingForContext:(id)context
{
  contextCopy = context;
  v10 = (objc_msgSend_isReindexing(contextCopy, v4, v5, v6) & 1) == 0 && objc_msgSend_reason(contextCopy, v7, v8, v9) != 1005;

  return v10;
}

- (void)postProcessIndexingForItem:(id)item chatDictionary:(id)dictionary context:(id)context
{
  dictionaryCopy = dictionary;
  contextCopy = context;
  if (objc_msgSend__itemDonationTriggersChatPostProcessingForContext_(self, v8, contextCopy, v9))
  {
    objc_msgSend_postProcessIndexingForChatDictionary_context_(self, v10, dictionaryCopy, contextCopy);
  }
}

- (void)postProcessIndexingForChatDictionary:(id)dictionary context:(id)context
{
  dictionaryCopy = dictionary;
  v8 = objc_msgSend_preflight(context, v5, v6, v7);
  v10 = dictionaryCopy;
  if ((v8 & 1) == 0)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, dictionaryCopy, @"guid", v9);
    v14 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v12, @"groupPhotoGUID", v13);
    v17 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v15, @"groupPhotoPath", v16);
    if (objc_msgSend_length(v14, v18, v19, v20) && objc_msgSend_length(v17, v21, v22, v23))
    {
      v27 = objc_msgSend_sharedInstance(IMDGroupPhotoDonationManager, v24, v25, v26);
      objc_msgSend_copyGroupPhotoToExternalPathIfNecessary_chatGUID_attachmentFilepath_(v27, v28, v14, v11, v17);
    }

    v10 = dictionaryCopy;
  }
}

- (void)copyIndexableMessageDictionariesWithLimit:(int64_t)limit requireIndexableAttachments:(BOOL)attachments completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = IMDIndexingClientRequestQueue(handlerCopy);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BD1338;
  v13[3] = &unk_1E7CBBDE0;
  v14 = handlerCopy;
  limitCopy = limit;
  attachmentsCopy = attachments;
  v13[4] = self;
  v10 = handlerCopy;
  IMDPersistenceDispatchAsyncWithHandoffIfNeeded(v9, v13, v11, v12);
}

- (void)indexableMessageGUIDsFromGUIDs:(id)ds ignoreRejections:(BOOL)rejections completionBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v10 = IMDIndexingClientRequestQueue(blockCopy);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7BD167C;
  v15[3] = &unk_1E7CBBE58;
  rejectionsCopy = rejections;
  v16 = dsCopy;
  selfCopy = self;
  v18 = blockCopy;
  v11 = blockCopy;
  v12 = dsCopy;
  IMDPersistenceDispatchAsyncWithHandoffIfNeeded(v10, v15, v13, v14);
}

- (void)beginThrottlingForIdentifier:(id)identifier untilDate:(id)date
{
  dateCopy = date;
  identifierCopy = identifier;
  v11 = objc_msgSend_sharedController(IMDIndexThrottlingController, v7, v8, v9);
  objc_msgSend_beginThrottlingForIdentifier_untilDate_(v11, v10, identifierCopy, dateCopy);
}

- (void)finishThrottlingForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = objc_msgSend_sharedController(IMDIndexThrottlingController, v4, v5, v6);
  objc_msgSend_finishThrottlingForIdentifier_(v9, v7, identifierCopy, v8);
}

- (NSArray)integrations
{
  if (objc_msgSend_isIndexingDisabled(self, a2, v2, v3))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = self->_integrations;
  }

  return v5;
}

- (BOOL)isIndexingDisabled
{
  if (IMIsRunningInUnitTesting())
  {
    v6 = objc_msgSend_indexingDisabledLock(self, v3, v4, v5);
    objc_msgSend_lock(v6, v7, v8, v9);

    indexingDisabled = self->_indexingDisabled;
    v14 = objc_msgSend_indexingDisabledLock(self, v11, v12, v13);
    objc_msgSend_unlock(v14, v15, v16, v17);
  }

  else
  {
    return 0;
  }

  return indexingDisabled;
}

- (void)setIndexingDisabled:(BOOL)disabled
{
  if (IMIsRunningInUnitTesting())
  {
    v8 = objc_msgSend_indexingDisabledLock(self, v5, v6, v7);
    objc_msgSend_lock(v8, v9, v10, v11);

    self->_indexingDisabled = disabled;
    v18 = objc_msgSend_indexingDisabledLock(self, v12, v13, v14);
    objc_msgSend_unlock(v18, v15, v16, v17);
  }
}

@end