@interface IMDCoreSpotlightMessageIndexingJob
- (IMDCoreSpotlightMessageIndexingJob)initWithContext:(id)context timing:(id)timing;
- (void)finishWithCompletion:(id)completion;
- (void)processMessageDictionary:(id)dictionary chatDictionary:(id)chatDictionary;
@end

@implementation IMDCoreSpotlightMessageIndexingJob

- (IMDCoreSpotlightMessageIndexingJob)initWithContext:(id)context timing:(id)timing
{
  contextCopy = context;
  timingCopy = timing;
  v17.receiver = self;
  v17.super_class = IMDCoreSpotlightMessageIndexingJob;
  v9 = [(IMDCoreSpotlightMessageIndexingJob *)&v17 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    populatedChatItems = v9->_populatedChatItems;
    v9->_populatedChatItems = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    indexableItems = v9->_indexableItems;
    v9->_indexableItems = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    rejectedItems = v9->_rejectedItems;
    v9->_rejectedItems = v14;

    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v9->_timing, timing);
  }

  return v9;
}

- (void)processMessageDictionary:(id)dictionary chatDictionary:(id)chatDictionary
{
  chatDictionaryCopy = chatDictionary;
  dictionaryCopy = dictionary;
  v11 = objc_msgSend_timing(self, v8, v9, v10);
  objc_msgSend_startTimingForKey_(v11, v12, @"generate indexable item", v13);

  v17 = objc_msgSend_sharedManager(IMDCoreSpotlightIndexingManager, v14, v15, v16);
  v21 = objc_msgSend_searchableItemGenerator(v17, v18, v19, v20);
  v25 = objc_msgSend_context(self, v22, v23, v24);
  v29 = objc_msgSend_rejectedItems(self, v26, v27, v28);
  v33 = objc_msgSend_populatedChatItems(self, v30, v31, v32);
  v47 = objc_msgSend_newSearchableItemsForMessageItemDictionary_chatDictionary_context_rejectedItems_populatedChatItems_(v21, v34, dictionaryCopy, chatDictionaryCopy, v25, v29, v33);

  v38 = objc_msgSend_indexableItems(self, v35, v36, v37);
  objc_msgSend_addObjectsFromArray_(v38, v39, v47, v40);

  v44 = objc_msgSend_timing(self, v41, v42, v43);
  objc_msgSend_stopTimingForKey_(v44, v45, @"generate indexable item", v46);
}

- (void)finishWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [IMDCoreSpotlightIndexingJob alloc];
  v9 = objc_msgSend_context(self, v6, v7, v8);
  v26 = objc_msgSend_initWithContext_(v5, v10, v9, v11);

  v15 = objc_msgSend_indexableItems(self, v12, v13, v14);
  objc_msgSend_setSearchableItems_(v26, v16, v15, v17);

  v21 = objc_msgSend_rejectedItems(self, v18, v19, v20);
  objc_msgSend_setRejectedItems_(v26, v22, v21, v23);

  objc_msgSend_runWithCompletion_(v26, v24, completionCopy, v25);
}

@end