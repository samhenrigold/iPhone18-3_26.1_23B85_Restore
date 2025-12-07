@interface IMDCoreSpotlightMessageReindexingJob
- (BOOL)_shouldIndexMore;
- (IMDCoreSpotlightMessageReindexingJob)initWithBatchSize:(int64_t)size index:(id)index delegate:(id)delegate reason:(int64_t)reason;
- (IMDCoreSpotlightMessageReindexingJobDelegate)delegate;
- (unint64_t)_generateSearchableItemsForMessageItemDictionary:(id)dictionary chatDictionary:(id)chatDictionary;
- (unint64_t)_remainingToIndex;
- (unint64_t)_subBatchSize;
- (void)_generateSearchableItems;
- (void)_indexMoreWithCompletionBlock:(id)block;
- (void)_indexSearchableItemsWithCompletionBlock:(id)block;
- (void)_indexingFinished;
- (void)runWithCompletion:(id)completion;
@end

@implementation IMDCoreSpotlightMessageReindexingJob

- (IMDCoreSpotlightMessageReindexingJob)initWithBatchSize:(int64_t)size index:(id)index delegate:(id)delegate reason:(int64_t)reason
{
  indexCopy = index;
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = IMDCoreSpotlightMessageReindexingJob;
  v13 = [(IMDCoreSpotlightMessageReindexingJob *)&v24 init];
  v14 = v13;
  if (v13)
  {
    v13->_batchSize = size;
    objc_storeStrong(&v13->_index, index);
    objc_storeWeak(&v14->_delegate, delegateCopy);
    v15 = objc_alloc_init(MEMORY[0x1E69A6170]);
    timingCollection = v14->_timingCollection;
    v14->_timingCollection = v15;

    v14->_hasMoreToIndex = 1;
    v14->_reason = reason;
    v14->_indexedCount = 0;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    searchableItems = v14->_searchableItems;
    v14->_searchableItems = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    rejectedItems = v14->_rejectedItems;
    v14->_rejectedItems = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    guidsInBatch = v14->_guidsInBatch;
    v14->_guidsInBatch = v21;
  }

  return v14;
}

- (unint64_t)_remainingToIndex
{
  v5 = objc_msgSend_batchSize(self, a2, v2, v3);
  if (v5 == objc_msgSend_indexedCount(self, v6, v7, v8))
  {
    return 0;
  }

  v13 = objc_msgSend_batchSize(self, v9, v10, v11);
  return v13 - objc_msgSend_indexedCount(self, v14, v15, v16);
}

- (unint64_t)_subBatchSize
{
  v5 = objc_msgSend_messageSubBatchSize(MEMORY[0x1E69A7FF8], a2, v2, v3);
  if (v5 >= objc_msgSend__remainingToIndex(self, v6, v7, v8))
  {

    return objc_msgSend__remainingToIndex(self, v9, v10, v11);
  }

  else
  {
    v12 = MEMORY[0x1E69A7FF8];

    return objc_msgSend_messageSubBatchSize(v12, v9, v10, v11);
  }
}

- (void)_indexMoreWithCompletionBlock:(id)block
{
  v62 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v8 = objc_msgSend__subBatchSize(self, v5, v6, v7);
  v12 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v9, v10, v11);
  v57 = 0;
  v15 = objc_msgSend_currentClientStateWithError_(v12, v13, &v57, v14);
  v16 = v57;

  if (v16)
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1B7CF8F34(v16, v19);
    }

    objc_msgSend_setHasMoreToIndex_(self, v20, 0, v21);
    blockCopy[2](blockCopy, v16);
  }

  else
  {
    objc_msgSend_setClientState_(self, v17, v15, v18);
    objc_msgSend_setMessageRecordCount_(self, v22, 0, v23);
    objc_msgSend_setMessagesWithItemsGeneratedCount_(self, v24, 0, v25);
    objc_msgSend__generateSearchableItems(self, v26, v27, v28);
    v32 = objc_msgSend_searchableItems(self, v29, v30, v31);
    v36 = objc_msgSend_count(v32, v33, v34, v35);

    if (objc_msgSend_messageRecordCount(self, v37, v38, v39) < v8)
    {
      objc_msgSend_setHasMoreToIndex_(self, v40, 0, v42);
      if (IMOSLoggingEnabled())
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v47 = objc_msgSend_messageRecordCount(self, v44, v45, v46);
          *buf = 134218240;
          v59 = v47;
          v60 = 2048;
          v61 = v8;
          _os_log_impl(&dword_1B7AD5000, v43, OS_LOG_TYPE_INFO, "messageRecordCount (%lu) < current sub batch size (%lu). Reaching the end of indexing all message records.", buf, 0x16u);
        }
      }
    }

    v48 = objc_msgSend_timingCollection(self, v40, v41, v42);
    objc_msgSend_startTimingForKey_(v48, v49, @"CSIngest", v50);

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = sub_1B7B978BC;
    v53[3] = &unk_1E7CBB880;
    v53[4] = self;
    v55 = v8;
    v56 = v36;
    v54 = blockCopy;
    objc_msgSend__indexSearchableItemsWithCompletionBlock_(self, v51, v53, v52);
  }
}

- (unint64_t)_generateSearchableItemsForMessageItemDictionary:(id)dictionary chatDictionary:(id)chatDictionary
{
  chatDictionaryCopy = chatDictionary;
  dictionaryCopy = dictionary;
  v11 = objc_msgSend_delegate(self, v8, v9, v10);
  v15 = objc_msgSend_searchableItemGenerator(v11, v12, v13, v14);

  v16 = [IMDIndexingContext alloc];
  v20 = objc_msgSend_reason(self, v17, v18, v19);
  v22 = objc_msgSend_initForReindexing_reason_(v16, v21, 1, v20);
  v26 = objc_msgSend_rejectedItems(self, v23, v24, v25);
  v28 = objc_msgSend_newSearchableItemsForMessageItemDictionary_chatDictionary_context_rejectedItems_populatedChatItems_(v15, v27, dictionaryCopy, chatDictionaryCopy, v22, v26, 0);

  v32 = objc_msgSend_searchableItems(self, v29, v30, v31);
  objc_msgSend_addObjectsFromArray_(v32, v33, v28, v34);

  v37 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v35, @"guid", v36);

  if (v37)
  {
    v41 = objc_msgSend_guidsInBatch(self, v38, v39, v40);
    objc_msgSend_addObject_(v41, v42, v37, v43);
  }

  v44 = objc_msgSend_count(v28, v38, v39, v40);

  return v44;
}

- (void)_generateSearchableItems
{
  v3 = [IMDMessageRecordBatchFetcher alloc];
  v5 = objc_msgSend_initWithAssociatedChatGUID_sortAscending_(v3, v4, 0, 0);
  v6 = [IMDThreadSafeMessageDictionaryMapper alloc];
  v10 = objc_msgSend_timingCollection(self, v7, v8, v9);
  v12 = objc_msgSend_initWithBatchFetcher_timingCollection_(v6, v11, v5, v10);

  v16 = objc_msgSend_clientState(self, v13, v14, v15);
  IndexedRowID = objc_msgSend_lastIndexedRowID(v16, v17, v18, v19);
  objc_msgSend_setLastIndexedRowID_(v12, v21, IndexedRowID, v22);

  v26 = objc_msgSend__subBatchSize(self, v23, v24, v25);
  objc_msgSend_setMaxMessagesToProcess_(v12, v27, v26, v28);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = sub_1B7B97DD0;
  v47[3] = &unk_1E7CBB8A8;
  v47[4] = self;
  objc_msgSend_processWithBlock_(v12, v29, v47, v30);
  v34 = objc_msgSend_lastIndexedRowID(v12, v31, v32, v33);
  v38 = objc_msgSend_clientState(self, v35, v36, v37);
  objc_msgSend_setLastIndexedRowID_(v38, v39, v34, v40);

  v44 = objc_msgSend_processedMessageCount(v12, v41, v42, v43);
  objc_msgSend_setMessageRecordCount_(self, v45, v44, v46);
}

- (void)_indexingFinished
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_searchableItems(self, a2, v2, v3);
  objc_msgSend_removeAllObjects(v5, v6, v7, v8);

  v12 = objc_msgSend_rejectedItems(self, v9, v10, v11);
  objc_msgSend_removeAllObjects(v12, v13, v14, v15);

  v19 = objc_msgSend_guidsInBatch(self, v16, v17, v18);
  objc_msgSend_removeAllObjects(v19, v20, v21, v22);

  LOBYTE(v19) = objc_msgSend_hasMoreToIndex(self, v23, v24, v25);
  v26 = IMOSLoggingEnabled();
  if (v19)
  {
    if (v26)
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v34 = objc_msgSend_clientState(self, v31, v32, v33);
        v55 = 134217984;
        IndexedRowID = objc_msgSend_lastIndexedRowID(v34, v35, v36, v37);
        _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_INFO, "New lastIndexedRowID is %lu", &v55, 0xCu);
      }
    }
  }

  else
  {
    if (v26)
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        LOWORD(v55) = 0;
        _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_INFO, "Indexing complete!", &v55, 2u);
      }
    }

    v39 = objc_msgSend_delegate(self, v27, v28, v29);
    objc_msgSend_setNeedsIndexing_(v39, v40, 0, v41);

    v45 = objc_msgSend_sharedNotifier(IMSpotlightEventNotifier, v42, v43, v44);
    v49 = objc_msgSend_clientState(self, v46, v47, v48);
    v53 = objc_msgSend_reason(self, v50, v51, v52);
    objc_msgSend_reindexCompletedWithState_reason_(v45, v54, v49, v53);
  }
}

- (void)_indexSearchableItemsWithCompletionBlock:(id)block
{
  v95 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  IMDIndexingAssertClientRequestQueue();
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = objc_msgSend_searchableItems(self, v9, v10, v11);
      v16 = objc_msgSend_count(v12, v13, v14, v15);
      v20 = objc_msgSend_index(self, v17, v18, v19);
      *buf = 136315650;
      v90 = "[IMDCoreSpotlightMessageReindexingJob _indexSearchableItemsWithCompletionBlock:]";
      v91 = 2048;
      v92 = v16;
      v93 = 2112;
      v94 = v20;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "%s Generated %lu items to index!. Using Index %@", buf, 0x20u);
    }
  }

  if ((objc_msgSend_hasMoreToIndex(self, v5, v6, v7) & 1) == 0)
  {
    v24 = objc_msgSend_clientState(self, v21, v22, v23);
    objc_msgSend_setLastIndexedRowID_(v24, v25, 1, v26);
  }

  v27 = objc_msgSend_clientState(self, v21, v22, v23);
  v31 = objc_msgSend_messagesWithItemsGeneratedCount(self, v28, v29, v30);
  v35 = objc_msgSend_initialIndexedMessages(v27, v32, v33, v34);
  objc_msgSend_setInitialIndexedMessages_(v27, v36, v35 + v31, v37);

  v41 = objc_msgSend_clientState(self, v38, v39, v40);
  v45 = objc_msgSend_messageRecordCount(self, v42, v43, v44);
  v49 = objc_msgSend_processedMessageRecords(v41, v46, v47, v48);
  objc_msgSend_setProcessedMessageRecords_(v41, v50, v49 + v45, v51);

  v52 = [IMDCoreSpotlightIndexingJob alloc];
  v56 = objc_msgSend_index(self, v53, v54, v55);
  v57 = [IMDIndexingContext alloc];
  v61 = objc_msgSend_reason(self, v58, v59, v60);
  v63 = objc_msgSend_initForReindexing_reason_(v57, v62, 1, v61);
  v65 = objc_msgSend_initWithIndex_context_(v52, v64, v56, v63);

  v69 = objc_msgSend_clientState(self, v66, v67, v68);
  objc_msgSend_setClientState_(v65, v70, v69, v71);

  v75 = objc_msgSend_searchableItems(self, v72, v73, v74);
  objc_msgSend_setSearchableItems_(v65, v76, v75, v77);

  v81 = objc_msgSend_rejectedItems(self, v78, v79, v80);
  objc_msgSend_setRejectedItems_(v65, v82, v81, v83);

  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = sub_1B7B98374;
  v87[3] = &unk_1E7CBB398;
  v87[4] = self;
  v88 = blockCopy;
  v84 = blockCopy;
  objc_msgSend_runWithCompletion_(v65, v85, v87, v86);
}

- (BOOL)_shouldIndexMore
{
  hasMoreToIndex = objc_msgSend_hasMoreToIndex(self, a2, v2, v3);
  if (hasMoreToIndex)
  {
    v9 = objc_msgSend_indexedCount(self, v6, v7, v8);
    LOBYTE(hasMoreToIndex) = v9 < objc_msgSend_batchSize(self, v10, v11, v12);
  }

  return hasMoreToIndex;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = objc_msgSend_timingCollection(self, v5, v6, v7);
  objc_msgSend_startTimingForKey_(v8, v9, @"totalTime", v10);

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1B7AE1A84;
  v21 = sub_1B7AE2558;
  v22 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7B98648;
  aBlock[3] = &unk_1E7CBB8D0;
  aBlock[4] = self;
  v16 = &v17;
  v11 = completionCopy;
  v15 = v11;
  v12 = _Block_copy(aBlock);
  v13 = v18[5];
  v18[5] = v12;

  (*(v18[5] + 16))();
  _Block_object_dispose(&v17, 8);
}

- (IMDCoreSpotlightMessageReindexingJobDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end