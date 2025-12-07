@interface IMDCoreSpotlightChatReindexingJob
- (IMDCoreSpotlightChatReindexingJob)initWithIndex:(id)index reason:(int64_t)reason delegate:(id)delegate;
- (IMDCoreSpotlightChatReindexingJobDelegate)delegate;
- (id)_chatDictionaryForChatAtIndex:(unint64_t)index withChats:(id)chats;
- (id)_newSearchableChatItemsForChats:(id)chats;
- (id)_nextBatchOfSearchableItems;
- (void)_indexAllSearchableItemsWithCompletionBlock:(id)block;
- (void)_indexNextBatchOfSearchableItemsWithCompletionBlock:(id)block;
- (void)runWithCompletionBlock:(id)block;
@end

@implementation IMDCoreSpotlightChatReindexingJob

- (IMDCoreSpotlightChatReindexingJob)initWithIndex:(id)index reason:(int64_t)reason delegate:(id)delegate
{
  indexCopy = index;
  delegateCopy = delegate;
  v37.receiver = self;
  v37.super_class = IMDCoreSpotlightChatReindexingJob;
  v11 = [(IMDCoreSpotlightChatReindexingJob *)&v37 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_index, index);
    v12->_reason = reason;
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v13 = objc_alloc_init(MEMORY[0x1E69A6170]);
    timingCollection = v12->_timingCollection;
    v12->_timingCollection = v13;

    v15 = objc_alloc_init(IMDChatRecordBatchFetcher);
    batchFetcher = v12->_batchFetcher;
    v12->_batchFetcher = v15;

    v20 = objc_msgSend_chatBatchSize(MEMORY[0x1E69A7FF8], v17, v18, v19);
    objc_msgSend_setBatchSize_(v12->_batchFetcher, v21, v20, v22);
    v26 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v23, v24, v25);
    v36 = 0;
    v29 = objc_msgSend_currentClientStateWithError_(v26, v27, &v36, v28);
    v30 = v36;
    clientState = v12->_clientState;
    v12->_clientState = v29;

    if (v30)
    {
      v32 = IMLogHandleForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF8DA4(v30, v32);
      }

      v33 = objc_alloc_init(MEMORY[0x1E69A82A8]);
      v34 = v12->_clientState;
      v12->_clientState = v33;
    }
  }

  return v12;
}

- (id)_nextBatchOfSearchableItems
{
  v5 = objc_msgSend_timingCollection(self, a2, v2, v3);
  objc_msgSend_startTimingForKey_(v5, v6, @"loadChats", v7);

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1B7AE1A64;
  v47 = sub_1B7AE2548;
  v48 = 0;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1B7B930AC;
  v42[3] = &unk_1E7CBB6F0;
  v42[4] = self;
  v42[5] = &v43;
  IMDPersistencePerformBlock(v42, 1, v8, v9);
  v13 = objc_msgSend_count(v44[5], v10, v11, v12);
  v17 = objc_msgSend_processedChats(self, v14, v15, v16);
  objc_msgSend_setProcessedChats_(self, v18, v17 + v13, v19);
  v23 = objc_msgSend_timingCollection(self, v20, v21, v22);
  objc_msgSend_stopTimingForKey_(v23, v24, @"loadChats", v25);

  v29 = objc_msgSend_timingCollection(self, v26, v27, v28);
  objc_msgSend_startTimingForKey_(v29, v30, @"generateItems", v31);

  v34 = objc_msgSend__newSearchableChatItemsForChats_(self, v32, v44[5], v33);
  v38 = objc_msgSend_timingCollection(self, v35, v36, v37);
  objc_msgSend_stopTimingForKey_(v38, v39, @"generateItems", v40);

  _Block_object_dispose(&v43, 8);

  return v34;
}

- (void)_indexNextBatchOfSearchableItemsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = objc_autoreleasePoolPush();
  v9 = objc_msgSend__nextBatchOfSearchableItems(self, v6, v7, v8);
  if (objc_msgSend_count(v9, v10, v11, v12))
  {
    v16 = objc_msgSend_clientState(self, v13, v14, v15);
    v20 = objc_msgSend_count(v9, v17, v18, v19);
    v24 = objc_msgSend_initialIndexedChats(v16, v21, v22, v23);
    objc_msgSend_setInitialIndexedChats_(v16, v25, v24 + v20, v26);

    v27 = [IMDCoreSpotlightIndexingJob alloc];
    v31 = objc_msgSend_index(self, v28, v29, v30);
    v32 = [IMDIndexingContext alloc];
    v36 = objc_msgSend_reason(self, v33, v34, v35);
    v38 = objc_msgSend_initForReindexing_reason_(v32, v37, 1, v36);
    v40 = objc_msgSend_initWithIndex_context_(v27, v39, v31, v38);

    v44 = objc_msgSend_clientState(self, v41, v42, v43);
    objc_msgSend_setClientState_(v40, v45, v44, v46);

    objc_msgSend_setSearchableItems_(v40, v47, v9, v48);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = sub_1B7B932D4;
    v51[3] = &unk_1E7CBB328;
    v52 = blockCopy;
    objc_msgSend_runWithCompletion_(v40, v49, v51, v50);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 1, 0);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_indexAllSearchableItemsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B93380;
  v8[3] = &unk_1E7CBB718;
  v8[4] = self;
  v9 = blockCopy;
  v5 = blockCopy;
  objc_msgSend__indexNextBatchOfSearchableItemsWithCompletionBlock_(self, v6, v8, v7);
}

- (id)_chatDictionaryForChatAtIndex:(unint64_t)index withChats:(id)chats
{
  chatsCopy = chats;
  v8 = objc_msgSend_objectAtIndexedSubscript_(chatsCopy, v6, index, v7);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1B7AE1A64;
  v21 = sub_1B7AE2548;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7B934E8;
  v14[3] = &unk_1E7CBB6F0;
  v16 = &v17;
  v9 = v8;
  v15 = v9;
  IMDPersistencePerformBlock(v14, 1, v10, v11);
  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

- (id)_newSearchableChatItemsForChats:(id)chats
{
  v61 = *MEMORY[0x1E69E9840];
  chatsCopy = chats;
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = objc_msgSend_count(chatsCopy, v6, v7, v8);
  v58 = objc_msgSend_initWithCapacity_(v5, v10, v9, v11);
  if (objc_msgSend_count(chatsCopy, v12, v13, v14))
  {
    v19 = 0;
    *&v18 = 138412290;
    v57 = v18;
    do
    {
      v20 = objc_msgSend__chatDictionaryForChatAtIndex_withChats_(self, v15, v19, chatsCopy, v57);
      v23 = _IMDCoreSpotlightChatUIDForChatDictionary(v20);
      if (v23)
      {
        v24 = objc_msgSend_objectForKey_(v58, v21, v23, v22);
        v28 = objc_msgSend_attributeSet(v24, v25, v26, v27);
        v32 = objc_msgSend_lastUsedDate(v28, v29, v30, v31);

        v38 = objc_msgSend_objectForKey_(v20, v33, @"lastMessageDate", v34);
        if (v38 && v32 && objc_msgSend_compare_(v32, v35, v38, v37) == 1)
        {
          if (IMOSLoggingEnabled())
          {
            v39 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = v57;
              v60 = v23;
              _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_INFO, "Not indexing UID %@, already indexed newer record", buf, 0xCu);
            }
          }
        }

        else
        {
          v40 = objc_msgSend_delegate(self, v35, v36, v37);
          v44 = objc_msgSend_searchableItemGenerator(v40, v41, v42, v43);
          MessageDate = objc_msgSend_newChatSearchableItemForChatDictionary_optionalLastMessageDate_(v44, v45, v20, 0);

          if (MessageDate)
          {
            objc_msgSend_setObject_forKey_(v58, v47, MessageDate, v23);
          }
        }
      }

      ++v19;
    }

    while (v19 < objc_msgSend_count(chatsCopy, v48, v49, v50));
  }

  v51 = objc_msgSend_allValues(v58, v15, v16, v17);
  v55 = objc_msgSend_copy(v51, v52, v53, v54);

  return v55;
}

- (void)runWithCompletionBlock:(id)block
{
  v32 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  IMDIndexingAssertClientRequestQueue();
  v8 = objc_msgSend_chatBatchSize(MEMORY[0x1E69A7FF8], v5, v6, v7);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = objc_msgSend_clientState(self, v13, v14, v15);
      *buf = 134218240;
      v29 = objc_msgSend_initialTotalChats(v16, v17, v18, v19);
      v30 = 2048;
      v31 = v8;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "About to index %llu chats in batches of %lu", buf, 0x16u);
    }
  }

  v20 = objc_msgSend_timingCollection(self, v9, v10, v11);
  objc_msgSend_startTimingForKey_(v20, v21, @"totalTime", v22);

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1B7B93948;
  v26[3] = &unk_1E7CBB398;
  v26[4] = self;
  v27 = blockCopy;
  v23 = blockCopy;
  objc_msgSend__indexAllSearchableItemsWithCompletionBlock_(self, v24, v26, v25);
}

- (IMDCoreSpotlightChatReindexingJobDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end