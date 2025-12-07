@interface IMDThreadSafeMessageDictionaryMapper
- (BOOL)_generateNextBatchOfIndexableDictionaries;
- (BOOL)processOnceWithBlock:(id)block;
- (IMDThreadSafeMessageDictionaryMapper)initWithBatchFetcher:(id)fetcher;
- (IMDThreadSafeMessageDictionaryMapper)initWithBatchFetcher:(id)fetcher timingCollection:(id)collection;
- (id)_loadChatDictionariesForMessagesWithGUIDs:(id)ds;
- (id)_loadChatsWithGUIDs:(id)ds;
- (id)_nextBatchOfMessageRecords;
- (id)initForFetchingMessageGUIDs:(id)ds timingCollection:(id)collection;
- (id)mapWithBlock:(id)block;
- (unint64_t)_messageRecordBatchSize;
- (void)_generateIndexableDictionariesForMessageRecords:(id)records;
- (void)processWithBlock:(id)block;
- (void)setLastIndexedRowID:(unint64_t)d;
- (void)setMaxMessagesToProcess:(unint64_t)process;
@end

@implementation IMDThreadSafeMessageDictionaryMapper

- (BOOL)_generateNextBatchOfIndexableDictionaries
{
  v5 = objc_msgSend_indexableDictionaries(self, a2, v2, v3);
  objc_msgSend_removeAllObjects(v5, v6, v7, v8);

  v12 = objc_msgSend_processedMessageCount(self, v9, v10, v11);
  if (v12 >= objc_msgSend_maxMessagesToProcess(self, v13, v14, v15))
  {
    return 0;
  }

  v19 = objc_msgSend__nextBatchOfMessageRecords(self, v16, v17, v18);
  objc_msgSend__generateIndexableDictionariesForMessageRecords_(self, v20, v19, v21);
  v25 = objc_msgSend_count(v19, v22, v23, v24) != 0;

  return v25;
}

- (id)_nextBatchOfMessageRecords
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_1B7AE1B10;
  v43 = sub_1B7AE2590;
  v44 = 0;
  v5 = objc_msgSend_timingCollection(self, a2, v2, v3);
  objc_msgSend_startTimingForKey_(v5, v6, @"sqlQuery", v7);

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = sub_1B7AF769C;
  v38[3] = &unk_1E7CBB6F0;
  v38[4] = self;
  v38[5] = &v39;
  IMDPersistencePerformBlock(v38, 1, v8, v9);
  v13 = objc_msgSend_lastObject(v40[5], v10, v11, v12);
  v17 = objc_msgSend_rowID(v13, v14, v15, v16);
  objc_msgSend_setLastIndexedRowID_(self, v18, v17, v19);

  v23 = objc_msgSend_count(v40[5], v20, v21, v22);
  v27 = objc_msgSend_processedMessageCount(self, v24, v25, v26);
  objc_msgSend_setProcessedMessageCount_(self, v28, v27 + v23, v29);
  v33 = objc_msgSend_timingCollection(self, v30, v31, v32);
  objc_msgSend_stopTimingForKey_(v33, v34, @"sqlQuery", v35);

  v36 = v40[5];
  _Block_object_dispose(&v39, 8);

  return v36;
}

- (unint64_t)_messageRecordBatchSize
{
  v5 = objc_msgSend_databaseBatchSize(self, a2, v2, v3);
  v9 = objc_msgSend_maxMessagesToProcess(self, v6, v7, v8);
  if (v5 >= v9 - objc_msgSend_processedMessageCount(self, v10, v11, v12))
  {
    v17 = objc_msgSend_maxMessagesToProcess(self, v13, v14, v15);
    return v17 - objc_msgSend_processedMessageCount(self, v18, v19, v20);
  }

  else
  {

    return objc_msgSend_databaseBatchSize(self, v13, v14, v15);
  }
}

- (IMDThreadSafeMessageDictionaryMapper)initWithBatchFetcher:(id)fetcher timingCollection:(id)collection
{
  fetcherCopy = fetcher;
  collectionCopy = collection;
  v28.receiver = self;
  v28.super_class = IMDThreadSafeMessageDictionaryMapper;
  v9 = [(IMDThreadSafeMessageDictionaryMapper *)&v28 init];
  v13 = v9;
  if (v9)
  {
    *(v9 + 2) = 0;
    *(v9 + 56) = xmmword_1B7D09CD0;
    *(v9 + 9) = objc_msgSend_messageRecordBatchSize(MEMORY[0x1E69A7FF8], v10, v11, v12);
    objc_storeStrong(&v13->_batchFetcher, fetcher);
    objc_msgSend_setParentedOnly_(v13->_batchFetcher, v14, 1, v15);
    objc_storeStrong(&v13->_timingCollection, collection);
    v16 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    chatDictionaries = v13->_chatDictionaries;
    v13->_chatDictionaries = v16;

    v18 = MEMORY[0x1E695DF70];
    v22 = objc_msgSend_databaseBatchSize(v13, v19, v20, v21);
    v25 = objc_msgSend_arrayWithCapacity_(v18, v23, v22, v24);
    indexableDictionaries = v13->_indexableDictionaries;
    v13->_indexableDictionaries = v25;
  }

  return v13;
}

- (IMDThreadSafeMessageDictionaryMapper)initWithBatchFetcher:(id)fetcher
{
  v4 = MEMORY[0x1E69A6170];
  fetcherCopy = fetcher;
  v6 = objc_alloc_init(v4);
  v8 = objc_msgSend_initWithBatchFetcher_timingCollection_(self, v7, fetcherCopy, v6);

  return v8;
}

- (id)initForFetchingMessageGUIDs:(id)ds timingCollection:(id)collection
{
  collectionCopy = collection;
  dsCopy = ds;
  v8 = objc_alloc_init(IMDMessageRecordBatchFetcher);
  v11 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v9, @"%K IN %@", v10, *MEMORY[0x1E69A7168], dsCopy);

  objc_msgSend_setPredicate_(v8, v12, v11, v13);
  v15 = objc_msgSend_initWithBatchFetcher_timingCollection_(self, v14, v8, collectionCopy);

  return v15;
}

- (void)setMaxMessagesToProcess:(unint64_t)process
{
  self->_maxMessagesToProcess = process;
  v5 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, process, v3);
  objc_msgSend_addObjectsFromArray_(v5, v6, self->_indexableDictionaries, v7);
  indexableDictionaries = self->_indexableDictionaries;
  self->_indexableDictionaries = v5;
}

- (void)setLastIndexedRowID:(unint64_t)d
{
  v6 = objc_msgSend_batchFetcher(self, a2, d, v3);
  objc_msgSend_setLastRowID_(v6, v7, d, v8);

  self->_lastIndexedRowID = d;
}

- (id)_loadChatsWithGUIDs:(id)ds
{
  v78 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFA8], v7, dsCopy, v8);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v10 = dsCopy;
  v11 = v9;
  obj = v10;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v72, v77, 16);
  if (v13)
  {
    v17 = v13;
    v18 = *v73;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v73 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v72 + 1) + 8 * i);
        v21 = objc_msgSend_chatDictionaries(self, v14, v15, v16);
        v24 = objc_msgSend_objectForKey_(v21, v22, v20, v23);

        if (v24)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v6, v25, v24, v20);
          objc_msgSend_removeObject_(v11, v26, v20, v27);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v72, v77, 16);
    }

    while (v17);
  }

  if (objc_msgSend_count(v11, v28, v29, v30))
  {
    v66 = v5;
    v31 = objc_alloc_init(IMDChatRecordBatchFetcher);
    v32 = MEMORY[0x1E696AE18];
    v33 = *MEMORY[0x1E69A6B70];
    v65 = v11;
    v37 = objc_msgSend_allObjects(v11, v34, v35, v36);
    v40 = objc_msgSend_predicateWithFormat_(v32, v38, @"%K IN %@", v39, v33, v37);
    objc_msgSend_setPredicate_(v31, v41, v40, v42);

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v43 = v31;
    v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v68, v76, 16);
    if (v45)
    {
      v46 = v45;
      v47 = *v69;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v69 != v47)
          {
            objc_enumerationMutation(v43);
          }

          v49 = IMCopyIndexableChatDictionaryForRecord(*(*(&v68 + 1) + 8 * j), 0);
          v52 = objc_msgSend_objectForKeyedSubscript_(v49, v50, @"guid", v51);
          v56 = v52;
          if (v49 && objc_msgSend_length(v52, v53, v54, v55))
          {
            objc_msgSend_setObject_forKeyedSubscript_(v6, v57, v49, v56);
            v61 = objc_msgSend_chatDictionaries(self, v58, v59, v60);
            objc_msgSend_setObject_forKey_(v61, v62, v49, v56);
          }
        }

        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v63, &v68, v76, 16);
      }

      while (v46);
    }

    v11 = v65;
    v5 = v66;
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)_loadChatDictionariesForMessagesWithGUIDs:(id)ds
{
  dsCopy = ds;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1B7AE1B10;
  v37 = sub_1B7AE2590;
  v38 = 0;
  v8 = objc_msgSend_synchronousDatabase(IMDDatabase, v5, v6, v7);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1B7BCC254;
  v32[3] = &unk_1E7CBC3D8;
  v32[4] = &v33;
  objc_msgSend_fetchChatGUIDsForMessageGUIDs_completionHandler_(v8, v9, dsCopy, v32);

  v13 = objc_msgSend_allKeys(v34[5], v10, v11, v12);
  if (objc_msgSend_count(v13, v14, v15, v16))
  {
    v19 = objc_msgSend__loadChatsWithGUIDs_(self, v17, v13, v18);
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21 = v34[5];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1B7BCC264;
    v29[3] = &unk_1E7CBC400;
    v22 = v19;
    v30 = v22;
    v23 = v20;
    v31 = v23;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v21, v24, v29, v25);
    v26 = v31;
    v27 = v23;
  }

  else
  {
    v27 = 0;
  }

  _Block_object_dispose(&v33, 8);

  return v27;
}

- (void)_generateIndexableDictionariesForMessageRecords:(id)records
{
  recordsCopy = records;
  v8 = objc_msgSend_timingCollection(self, v5, v6, v7);
  objc_msgSend_startTimingForKey_(v8, v9, @"dictionaryConversion", v10);

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_1B7AE1B10;
  v33[4] = sub_1B7AE2590;
  v34 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BCC544;
  block[3] = &unk_1E7CBC338;
  v32 = v33;
  block[4] = self;
  v11 = recordsCopy;
  v31 = v11;
  IMDPersistencePerformBlock(block, 1, v12, v13);
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = sub_1B7BCC5BC;
  v26 = &unk_1E7CBC428;
  v14 = v11;
  v27 = v14;
  selfCopy = self;
  v29 = v33;
  IMDPersistencePerformBlock(&v23, 1, v15, v16);
  v20 = objc_msgSend_timingCollection(self, v17, v18, v19, v23, v24, v25, v26);
  objc_msgSend_stopTimingForKey_(v20, v21, @"dictionaryConversion", v22);

  _Block_object_dispose(v33, 8);
}

- (BOOL)processOnceWithBlock:(id)block
{
  v44 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = objc_autoreleasePoolPush();
  NextBatchOfIndexableDictionaries = objc_msgSend__generateNextBatchOfIndexableDictionaries(self, v6, v7, v8);
  v12 = objc_msgSend_timingCollection(self, v9, v10, v11);
  objc_msgSend_startTimingForKey_(v12, v13, @"indexCreation", v14);

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v18 = objc_msgSend_indexableDictionaries(self, v15, v16, v17);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v39, v43, 16);
  if (v20)
  {
    v23 = v20;
    v24 = *v40;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(v18);
        }

        v26 = *(*(&v39 + 1) + 8 * i);
        v27 = objc_msgSend_objectAtIndexedSubscript_(v26, v21, 0, v22);
        v30 = objc_msgSend_objectAtIndexedSubscript_(v26, v28, 1, v29);
        blockCopy[2](blockCopy, v27, v30);
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v39, v43, 16);
    }

    while (v23);
  }

  v34 = objc_msgSend_timingCollection(self, v31, v32, v33);
  objc_msgSend_stopTimingForKey_(v34, v35, @"indexCreation", v36);

  objc_autoreleasePoolPop(v5);
  return NextBatchOfIndexableDictionaries;
}

- (void)processWithBlock:(id)block
{
    ;
  }
}

- (id)mapWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = sub_1B7BCCA2C;
  v18 = &unk_1E7CBC450;
  v19 = v5;
  v20 = blockCopy;
  v6 = v5;
  v7 = blockCopy;
  objc_msgSend_processWithBlock_(self, v8, &v15, v9);
  v13 = objc_msgSend_copy(v6, v10, v11, v12, v15, v16, v17, v18);

  return v13;
}

@end