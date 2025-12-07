@interface TSCERemoteDataCoordinator
+ (id)sharedCoordinator;
- (BOOL)isOnlineForDataKind:(int64_t)kind;
- (BOOL)p_canUpdateStore:(id)store;
- (TSCERemoteDataCoordinator)init;
- (id)cachedQuoteForSingleSymbol:(id)symbol;
- (id)p_actionMapForKeys:(id)keys quotes:(id)quotes;
- (id)p_dataSourceFetcherForRemoteData:(id)data;
- (id)p_defaultStockList;
- (id)p_fetcherForDataKind:(int64_t)kind;
- (id)valueForSingleKey:(id)key;
- (void)addRemoteDataInterest:(id)interest forStore:(id)store;
- (void)autoCompleteQuotesWithInput:(id)input completion:(id)completion;
- (void)fetchQuotesWithTickers:(id)tickers completion:(id)completion;
- (void)p_removeRemoteDataInterest:(id)interest forStore:(id)store;
- (void)p_revalidateOnlineStatus;
- (void)registerStore:(id)store;
- (void)removeRemoteDataInterest:(id)interest forStore:(id)store;
- (void)sourceFetcherDidGoOffline:(id)offline forKeys:(id)keys;
- (void)sourceFetcherDidGoOnline:(id)online forKeys:(id)keys;
- (void)sourceFetcherDidUpdate:(id)update withValues:(id)values quotes:(id)quotes;
- (void)unregisterStore:(id)store;
- (void)updateKnownCachedStocksInStore:(id)store;
@end

@implementation TSCERemoteDataCoordinator

+ (id)sharedCoordinator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_221294AE8;
  block[3] = &unk_278462558;
  block[4] = self;
  if (qword_27CFB53D0 != -1)
  {
    dispatch_once(&qword_27CFB53D0, block);
  }

  v2 = qword_27CFB53C8;

  return v2;
}

- (TSCERemoteDataCoordinator)init
{
  v17.receiver = self;
  v17.super_class = TSCERemoteDataCoordinator;
  v2 = [(TSCERemoteDataCoordinator *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    sourceFetchers = v2->_sourceFetchers;
    v2->_sourceFetchers = v3;

    v5 = objc_alloc_init(MEMORY[0x277D812B8]);
    storeMap = v2->_storeMap;
    v2->_storeMap = v5;

    v7 = objc_alloc_init(TSCERemoteDataValueMap);
    cachedSpecifiers = v2->_cachedSpecifiers;
    v2->_cachedSpecifiers = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedQuotes = v2->_cachedQuotes;
    v2->_cachedQuotes = v9;

    v11 = dispatch_queue_create("Remote Data Coordinator", MEMORY[0x277D85CD8]);
    queue = v2->_queue;
    v2->_queue = v11;

    v13 = objc_alloc_init(MEMORY[0x277D81208]);
    dataKindStatus = v2->_dataKindStatus;
    v2->_dataKindStatus = v13;

    objc_msgSend_setInt_forKey_(v2->_dataKindStatus, v15, 1, 1);
  }

  return v2;
}

- (void)registerStore:(id)store
{
  storeCopy = store;
  if (__C != -1)
  {
    sub_2216F75D4();
  }

  v4 = self->_storeMap;
  objc_sync_enter(v4);
  v8 = objc_msgSend_storeMap(self, v5, v6, v7);
  v11 = objc_msgSend_objectForKey_(v8, v9, storeCopy, v10);

  if (v11)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCERemoteDataCoordinator registerStore:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataCoordinator.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 178, 0, "%@ is already registered!", storeCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v24 = objc_msgSend_storeMap(self, v12, v13, v14);
  v28 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v25, v26, v27);
  objc_msgSend_setObject_forUncopiedKey_(v24, v29, v28, storeCopy);

  objc_sync_exit(v4);
}

- (void)unregisterStore:(id)store
{
  storeCopy = store;
  if (__C != -1)
  {
    sub_2216F75E8();
  }

  v4 = self->_storeMap;
  objc_sync_enter(v4);
  v8 = objc_msgSend_storeMap(self, v5, v6, v7);
  v11 = objc_msgSend_objectForKey_(v8, v9, storeCopy, v10);

  if (!v11)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCERemoteDataCoordinator unregisterStore:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataCoordinator.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 187, 0, "%@ is not registered", storeCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v24 = objc_msgSend_storeMap(self, v12, v13, v14);
  v27 = objc_msgSend_objectForKeyedSubscript_(v24, v25, storeCopy, v26);

  objc_msgSend_p_removeRemoteDataInterest_forStore_(self, v28, v27, storeCopy);
  v32 = objc_msgSend_storeMap(self, v29, v30, v31);
  objc_msgSend_removeObjectForKey_(v32, v33, storeCopy, v34);

  objc_sync_exit(v4);
}

- (BOOL)p_canUpdateStore:(id)store
{
  storeCopy = store;
  v5 = self->_storeMap;
  objc_sync_enter(v5);
  v9 = objc_msgSend_storeMap(self, v6, v7, v8);
  v12 = objc_msgSend_objectForKeyedSubscript_(v9, v10, storeCopy, v11);
  v13 = v12 != 0;

  objc_sync_exit(v5);
  return v13;
}

- (id)p_fetcherForDataKind:(int64_t)kind
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = objc_msgSend_sourceFetchers(self, a2, kind, v3, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v27, v31, 16);
  if (v10)
  {
    v11 = *v28;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v27 + 1) + 8 * v12);
      if (objc_msgSend_dataKind(v13, v7, v8, v9) == kind)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v27, v31, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = v13;

    if (v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v17 = MEMORY[0x277D81150];
  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSCERemoteDataCoordinator p_fetcherForDataKind:]", v15);
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataCoordinator.mm", v20);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 222, 0, "No configured fetcher for this data kind!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  v16 = 0;
LABEL_12:

  return v16;
}

- (void)fetchQuotesWithTickers:(id)tickers completion:(id)completion
{
  tickersCopy = tickers;
  completionCopy = completion;
  if (!tickersCopy || objc_msgSend_isEqualToString_(tickersCopy, v7, &stru_2834BADA0, v9))
  {
    v11 = objc_msgSend_p_defaultStockList(self, v7, v8, v9);
    v14 = objc_msgSend_componentsJoinedByString_(v11, v12, @",", v13);

    tickersCopy = v14;
  }

  v15 = objc_msgSend_p_fetcherForDataKind_(self, v7, 1, v9);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_221295424;
  v18[3] = &unk_2784625D0;
  v18[4] = self;
  v16 = completionCopy;
  v19 = v16;
  objc_msgSend_fetchQuotesWithTickers_completion_(v15, v17, tickersCopy, v18);
}

- (void)autoCompleteQuotesWithInput:(id)input completion:(id)completion
{
  inputCopy = input;
  completionCopy = completion;
  v10 = objc_msgSend_p_fetcherForDataKind_(self, v8, 1, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2212957CC;
  v13[3] = &unk_2784625F8;
  v11 = completionCopy;
  v14 = v11;
  objc_msgSend_autoCompleteQuotesWithInput_completion_(v10, v12, inputCopy, v13);
}

- (id)valueForSingleKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_22129599C;
  v16 = sub_2212959AC;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2212959B4;
  block[3] = &unk_278461A90;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)cachedQuoteForSingleSymbol:(id)symbol
{
  symbolCopy = symbol;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_22129599C;
  v16 = sub_2212959AC;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_221295B44;
  block[3] = &unk_278461A90;
  v10 = symbolCopy;
  v11 = &v12;
  block[4] = self;
  v6 = symbolCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)updateKnownCachedStocksInStore:(id)store
{
  v21 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = objc_msgSend_storeMap(self, v5, v6, v7, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if (v15 != storeCopy)
        {
          objc_msgSend_updateCachedStocksIntoStore_(v15, v10, storeCopy, v11);
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v16, v20, 16);
    }

    while (v12);
  }
}

- (void)addRemoteDataInterest:(id)interest forStore:(id)store
{
  interestCopy = interest;
  storeCopy = store;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_221295DC0;
  block[3] = &unk_278462620;
  v12 = interestCopy;
  selfCopy = self;
  v14 = storeCopy;
  v9 = storeCopy;
  v10 = interestCopy;
  dispatch_barrier_async(queue, block);
}

- (void)removeRemoteDataInterest:(id)interest forStore:(id)store
{
  interestCopy = interest;
  storeCopy = store;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2212963F0;
  block[3] = &unk_278462620;
  block[4] = self;
  v12 = interestCopy;
  v13 = storeCopy;
  v9 = storeCopy;
  v10 = interestCopy;
  dispatch_barrier_async(queue, block);
}

- (id)p_defaultStockList
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_mutableCopy(&unk_28350EEC0, a2, v2, v3);
  v9 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v6, v7, v8);
  v13 = objc_msgSend_locale(v9, v10, v11, v12);
  v16 = objc_msgSend_objectForKey_(v13, v14, *MEMORY[0x277CBE690], v15);

  if (objc_msgSend_length(v16, v17, v18, v19))
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v23 = objc_msgSend_p_localeStocks(self, v20, v21, v22, 0);
    v26 = objc_msgSend_objectForKey_(v23, v24, v16, v25);
    v30 = objc_msgSend_reverseObjectEnumerator(v26, v27, v28, v29);

    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v40, v44, 16);
    if (v34)
    {
      v35 = *v41;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v41 != v35)
          {
            objc_enumerationMutation(v30);
          }

          v37 = *(*(&v40 + 1) + 8 * i);
          objc_msgSend_removeObject_(v5, v32, v37, v33);
          objc_msgSend_insertObject_atIndex_(v5, v38, v37, 0);
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v40, v44, 16);
      }

      while (v34);
    }
  }

  return v5;
}

- (id)p_dataSourceFetcherForRemoteData:(id)data
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = objc_msgSend_sourceFetchers(self, v5, v6, v7);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v29, v33, 16);
  if (v12)
  {
    v13 = *v30;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v30 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v29 + 1) + 8 * v14);
      if (objc_msgSend_canFetchKey_(v15, v10, dataCopy, v11))
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v29, v33, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v18 = v15;

    if (v18)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v19 = MEMORY[0x277D81150];
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSCERemoteDataCoordinator p_dataSourceFetcherForRemoteData:]", v17);
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataCoordinator.mm", v22);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 453, 0, "No matching remote data source fetcher for %@", dataCopy);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
  v18 = 0;
LABEL_12:

  return v18;
}

- (void)p_removeRemoteDataInterest:(id)interest forStore:(id)store
{
  v87 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  storeCopy = store;
  v7 = self->_storeMap;
  objc_sync_enter(v7);
  v76 = storeCopy;
  v11 = objc_msgSend_storeMap(self, v8, v9, v10);
  v14 = objc_msgSend_objectForKey_(v11, v12, storeCopy, v13);

  if (v14 && objc_msgSend_count(v14, v15, v16, v17))
  {
    v20 = objc_msgSend_setByIntersectingWithSet_(interestCopy, v18, v14, v19);
    v24 = objc_msgSend_storeMap(self, v21, v22, v23);
    v27 = objc_msgSend_objectForKey_(v24, v25, storeCopy, v26);
    objc_msgSend_removeSpecifiersFromSet_(v27, v28, v20, v29);

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v33 = objc_msgSend_storeMap(self, v30, v31, v32);
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v81, v86, 16);
    if (v38)
    {
      v39 = *v82;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v82 != v39)
          {
            objc_enumerationMutation(v33);
          }

          v41 = *(*(&v81 + 1) + 8 * i);
          v42 = objc_msgSend_storeMap(self, v35, v36, v37, interestCopy);
          v45 = objc_msgSend_objectForKeyedSubscript_(v42, v43, v41, v44);
          objc_msgSend_removeSpecifiersFromSet_(v20, v46, v45, v47);
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v81, v86, 16);
      }

      while (v38);
    }
  }

  else
  {
    v20 = 0;
  }

  objc_sync_exit(v7);
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v51 = objc_msgSend_sourceFetchers(self, v48, v49, v50);
  v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v77, v85, 16);
  if (v55)
  {
    v56 = *v78;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v78 != v56)
        {
          objc_enumerationMutation(v51);
        }

        v58 = objc_msgSend_removeRemoteDataInterest_(*(*(&v77 + 1) + 8 * j), v53, v20, v54, interestCopy);
        objc_msgSend_removeSpecifiersFromSet_(v20, v59, v58, v60);
      }

      v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v53, &v77, v85, 16);
    }

    while (v55);
  }

  if (objc_msgSend_count(v20, v61, v62, v63))
  {
    v66 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[TSCERemoteDataCoordinator p_removeRemoteDataInterest:forStore:]", v65);
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataCoordinator.mm", v69);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v71, v67, v70, 486, 0, "Unclaimed specifiers after unregister!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74);
  }
}

- (void)p_revalidateOnlineStatus
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = self->_dataKindStatus;
  objc_sync_enter(v3);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = objc_msgSend_sourceFetchers(self, v4, v5, v6, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
  if (v12)
  {
    v13 = *v19;
    v14 = 1;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v7);
      }

      v16 = *(*(&v18 + 1) + 8 * v15);
      if (objc_msgSend_dataKind(v16, v9, v10, v11) == 1 && (objc_msgSend_offline(v16, v9, v10, v11) & 1) == 0)
      {
        break;
      }

      if (v12 == ++v15)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v18, v22, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  objc_msgSend_setInt_forKey_(self->_dataKindStatus, v17, v14, 1);
  objc_sync_exit(v3);
}

- (BOOL)isOnlineForDataKind:(int64_t)kind
{
  v5 = self->_dataKindStatus;
  objc_sync_enter(v5);
  if (!objc_msgSend_containsKey_(self->_dataKindStatus, v6, kind, v7))
  {
    objc_sync_exit(v5);

    objc_msgSend_p_revalidateOnlineStatus(self, v10, v11, v12);
    v5 = self->_dataKindStatus;
    objc_sync_enter(v5);
    if ((objc_msgSend_containsKey_(self->_dataKindStatus, v13, kind, v14) & 1) == 0)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCERemoteDataCoordinator isOnlineForDataKind:]", v9);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataCoordinator.mm", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 516, 0, "No status for this data kind!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    }
  }

  v24 = objc_msgSend_intForKey_(self->_dataKindStatus, v8, kind, v9) != 0;
  objc_sync_exit(v5);

  return v24;
}

- (id)p_actionMapForKeys:(id)keys quotes:(id)quotes
{
  v58 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  quotesCopy = quotes;
  v46 = objc_msgSend_dictionary(MEMORY[0x277D812B8], v6, v7, v8);
  v44 = self->_storeMap;
  objc_sync_enter(v44);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  objc_msgSend_storeMap(self, v9, v10, v11);
  obj = v47 = self;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v53, v57, 16);
  if (v16)
  {
    v17 = *v54;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v54 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v53 + 1) + 8 * i);
        v20 = objc_msgSend_storeMap(v47, v13, v14, v15, v44);
        v23 = objc_msgSend_objectForKeyedSubscript_(v20, v21, v19, v22);

        v26 = objc_msgSend_setOfSpecifiersContainedInSet_(keysCopy, v24, v23, v25);
        v30 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v27, v28, v29);
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = sub_221297278;
        v50[3] = &unk_278462648;
        v31 = v23;
        v51 = v31;
        v32 = v30;
        v52 = v32;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(quotesCopy, v33, v50, v34);
        if (objc_msgSend_count(v26, v35, v36, v37) || objc_msgSend_count(v32, v38, v39, v40))
        {
          v41 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v38, v26, v32);
          objc_msgSend_setObject_forUncopiedKey_(v46, v42, v41, v19);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v53, v57, 16);
    }

    while (v16);
  }

  objc_sync_exit(v44);

  return v46;
}

- (void)sourceFetcherDidUpdate:(id)update withValues:(id)values quotes:(id)quotes
{
  valuesCopy = values;
  quotesCopy = quotes;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2212973CC;
  block[3] = &unk_278462620;
  v13 = quotesCopy;
  selfCopy = self;
  v15 = valuesCopy;
  v10 = valuesCopy;
  v11 = quotesCopy;
  dispatch_barrier_async(queue, block);
}

- (void)sourceFetcherDidGoOffline:(id)offline forKeys:(id)keys
{
  offlineCopy = offline;
  keysCopy = keys;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_221297B7C;
  block[3] = &unk_278462620;
  v12 = offlineCopy;
  selfCopy = self;
  v14 = keysCopy;
  v9 = keysCopy;
  v10 = offlineCopy;
  dispatch_barrier_async(queue, block);
}

- (void)sourceFetcherDidGoOnline:(id)online forKeys:(id)keys
{
  onlineCopy = online;
  keysCopy = keys;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_221297EB4;
  block[3] = &unk_278462620;
  v12 = onlineCopy;
  selfCopy = self;
  v14 = keysCopy;
  v9 = keysCopy;
  v10 = onlineCopy;
  dispatch_barrier_async(queue, block);
}

@end