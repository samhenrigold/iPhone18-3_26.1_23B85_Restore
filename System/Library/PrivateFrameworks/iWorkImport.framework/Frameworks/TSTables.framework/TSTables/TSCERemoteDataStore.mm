@interface TSCERemoteDataStore
- (BOOL)hasFullyPopulatedCache;
- (BOOL)p_isInCollaborationMode;
- (TSCECalculationEngine)calculationEngine;
- (TSCERemoteDataStore)initWithContext:(id)context calculationEngine:(id)engine;
- (TSCERemoteDataStoreDelegate)delegate;
- (double)remoteDataSyncKey;
- (id)allQuotes;
- (id)allRemoteData;
- (id)cachedQuoteForSymbol:(id)symbol;
- (id)p_dictionaryForRemoteData:(id)data;
- (id)p_tsceValueFromTsceCellValue:(id)value;
- (id)p_updateCachesWithMap:(id)map quotes:(id)quotes overwriteValues:(BOOL)values;
- (id)valueForRemoteData:(id)data;
- (void)addRemoteDataInterest:(id)interest forOwner:(const TSKUIDStruct *)owner;
- (void)dealloc;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_initializeQueue;
- (void)p_recursiveWriteWillModify:(BOOL)modify withBlock:(id)block;
- (void)registerWithCoordinator;
- (void)remoteDataDidUpdateValues:(id)values quotes:(id)quotes;
- (void)removeRemoteDataInterest:(id)interest forOwner:(const TSKUIDStruct *)owner;
- (void)saveToArchiver:(id)archiver;
- (void)unregisterWithCoordinator;
- (void)updateCachedStocksFromKnownStocks:(id)stocks;
- (void)updateCachedStocksIntoStore:(id)store;
- (void)updateWithRemoteDataMap:(id)map quotes:(id)quotes syncKey:(double)key;
@end

@implementation TSCERemoteDataStore

- (void)p_initializeQueue
{
  v3 = dispatch_queue_create("Remote Data Store", MEMORY[0x277D85CD8]);
  queue = self->_queue;
  self->_queue = v3;

  dispatch_queue_set_specific(self->_queue, qword_27CFB4708, self->_queue, 0);
  v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
  updateQueue = self->_updateQueue;
  self->_updateQueue = v5;

  objc_msgSend_setName_(self->_updateQueue, v7, @"Remote Data Store Update", v8);
  objc_msgSend_setMaxConcurrentOperationCount_(self->_updateQueue, v9, 1, v10);
  v11 = dispatch_semaphore_create(1);
  tspSemaphore = self->_tspSemaphore;
  self->_tspSemaphore = v11;
}

- (void)p_recursiveWriteWillModify:(BOOL)modify withBlock:(id)block
{
  modifyCopy = modify;
  block = block;
  specific = dispatch_get_specific(qword_27CFB4708);
  queue = self->_queue;
  if (specific == queue)
  {
    block[2]();
  }

  else
  {
    if (modifyCopy)
    {
      dispatch_semaphore_wait(self->_tspSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      objc_msgSend_willModify(self, v8, v9, v10);
      dispatch_semaphore_signal(self->_tspSemaphore);
      queue = self->_queue;
    }

    dispatch_barrier_sync(queue, block);
  }
}

- (TSCERemoteDataStore)initWithContext:(id)context calculationEngine:(id)engine
{
  contextCopy = context;
  engineCopy = engine;
  v25.receiver = self;
  v25.super_class = TSCERemoteDataStore;
  v8 = [(TSCERemoteDataStore *)&v25 initWithContext:contextCopy];
  if (v8)
  {
    v9 = objc_alloc_init(TSCERemoteDataValueMap);
    remoteDataMap = v8->_remoteDataMap;
    v8->_remoteDataMap = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedStocks = v8->_cachedStocks;
    v8->_cachedStocks = v11;

    v13 = objc_alloc_init(TSCERemoteDataSpecifierSet);
    interestingKeys = v8->_interestingKeys;
    v8->_interestingKeys = v13;

    v8->_hasInterestingKeys = 0;
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ownerMap = v8->_ownerMap;
    v8->_ownerMap = v15;

    v8->_registeredWithCoordinator = 0;
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    unSyncedStocks = v8->_unSyncedStocks;
    v8->_unSyncedStocks = v17;

    objc_msgSend_p_initializeQueue(v8, v19, v20, v21);
    objc_msgSend_setCalculationEngine_(v8, v22, engineCopy, v23);
  }

  return v8;
}

- (void)dealloc
{
  if (self->_registeredWithCoordinator)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERemoteDataStore dealloc]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataStore.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 162, 0, "Failed to unregister store before dealloc");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  v13.receiver = self;
  v13.super_class = TSCERemoteDataStore;
  [(TSCERemoteDataStore *)&v13 dealloc];
}

- (BOOL)p_isInCollaborationMode
{
  v4 = objc_msgSend_calculationEngine(self, a2, v2, v3);
  v8 = objc_msgSend_isInCollaborationMode(v4, v5, v6, v7);

  return v8;
}

- (void)registerWithCoordinator
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_22137C7D8;
  v2[3] = &unk_27845E3F8;
  v2[4] = self;
  objc_msgSend_p_recursiveWriteWillModify_withBlock_(self, a2, 1, v2);
}

- (void)unregisterWithCoordinator
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_22137C94C;
  v2[3] = &unk_27845E3F8;
  v2[4] = self;
  objc_msgSend_p_recursiveWriteWillModify_withBlock_(self, a2, 1, v2);
}

- (id)valueForRemoteData:(id)data
{
  dataCopy = data;
  if (objc_msgSend_isCold(dataCopy, v5, v6, v7) && objc_msgSend_year(dataCopy, v8, v9, v10) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCERemoteDataStore valueForRemoteData:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataStore.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 196, 0, "Cold specifiers must have dates!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
    v25 = objc_msgSend_invalidHistoricalDateError(TSCEError, v22, v23, v24);
    v28 = objc_msgSend_errorValue_(TSCEErrorValue, v26, v25, v27);
  }

  else
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_22137CCF4;
    v44 = sub_22137CD04;
    v45 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22137CD0C;
    block[3] = &unk_278461A90;
    v39 = &v40;
    block[4] = self;
    v38 = dataCopy;
    dispatch_sync(queue, block);
    v32 = v41[5];
    if (v32)
    {
      v28 = objc_msgSend_p_tsceValueFromTsceCellValue_(self, v30, v32, v31);
    }

    else
    {
      if (__C != -1)
      {
        sub_2216F77F8();
      }

      v33 = objc_msgSend_notReadyError(TSCEError, v30, v32, v31);
      v28 = objc_msgSend_errorValue_(TSCEErrorValue, v34, v33, v35);
    }

    _Block_object_dispose(&v40, 8);
  }

  return v28;
}

- (id)cachedQuoteForSymbol:(id)symbol
{
  symbolCopy = symbol;
  if (symbolCopy)
  {
    v8 = objc_msgSend_calculationEngine(self, v4, v5, v6);
    v12 = objc_msgSend_documentLocale(v8, v9, v10, v11);
    v16 = objc_msgSend_locale(v12, v13, v14, v15);

    v19 = objc_msgSend_uppercaseStringWithLocale_(symbolCopy, v17, v16, v18);
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = sub_22137CCF4;
    v64 = sub_22137CD04;
    v65 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22137D13C;
    block[3] = &unk_278461A90;
    v59 = &v60;
    block[4] = self;
    v21 = v19;
    v58 = v21;
    dispatch_sync(queue, block);
    v25 = v61[5];
    if (!v25)
    {
      v26 = objc_msgSend_calculationEngine(self, v22, v23, v24);
      v30 = objc_msgSend_accessController(v26, v27, v28, v29);
      v34 = objc_msgSend_hasWrite(v30, v31, v32, v33);

      if (v34)
      {
        v38 = MEMORY[0x277D81150];
        v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSCERemoteDataStore cachedQuoteForSymbol:]", v37);
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataStore.mm", v41);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 244, 0, "We're about to capture the coordinator's queue lock. We should NOT have the write lock at this time.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
      }

      v47 = objc_msgSend_coordinator(self, v35, v36, v37);
      v50 = objc_msgSend_cachedQuoteForSingleSymbol_(v47, v48, v21, v49);
      v51 = v61[5];
      v61[5] = v50;

      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = sub_22137D1BC;
      v55[3] = &unk_27845FEF0;
      v55[4] = self;
      v56 = v21;
      objc_msgSend_p_recursiveWriteWillModify_withBlock_(self, v52, 0, v55);

      v25 = v61[5];
    }

    v53 = v25;

    _Block_object_dispose(&v60, 8);
  }

  else
  {
    v53 = 0;
  }

  return v53;
}

- (void)addRemoteDataInterest:(id)interest forOwner:(const TSKUIDStruct *)owner
{
  interestCopy = interest;
  if (objc_msgSend_count(interestCopy, v7, v8, v9))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_22137CCF4;
    v32 = sub_22137CD04;
    v33 = 0;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = sub_22137D3A4;
    v23 = &unk_278463668;
    ownerCopy = owner;
    selfCopy = self;
    v25 = interestCopy;
    v26 = &v28;
    objc_msgSend_p_recursiveWriteWillModify_withBlock_(self, v10, 1, &v20);
    v14 = v29[5];
    if (v14 && objc_msgSend_count(v14, v11, v12, v13, v20, v21, v22, v23, selfCopy))
    {
      v18 = objc_msgSend_coordinator(self, v15, v16, v17);
      objc_msgSend_addRemoteDataInterest_forStore_(v18, v19, v29[5], self);
    }

    _Block_object_dispose(&v28, 8);
  }
}

- (void)removeRemoteDataInterest:(id)interest forOwner:(const TSKUIDStruct *)owner
{
  interestCopy = interest;
  if (objc_msgSend_count(interestCopy, v7, v8, v9))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_22137CCF4;
    v32 = sub_22137CD04;
    v33 = 0;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = sub_22137D6BC;
    v23 = &unk_278463690;
    v26 = &v28;
    ownerCopy = owner;
    selfCopy = self;
    v25 = interestCopy;
    objc_msgSend_p_recursiveWriteWillModify_withBlock_(self, v10, 1, &v20);
    v14 = v29[5];
    if (v14 && objc_msgSend_count(v14, v11, v12, v13, v20, v21, v22, v23, selfCopy))
    {
      v18 = objc_msgSend_coordinator(self, v15, v16, v17);
      objc_msgSend_removeRemoteDataInterest_forStore_(v18, v19, v29[5], self);
    }

    _Block_object_dispose(&v28, 8);
  }
}

- (id)p_updateCachesWithMap:(id)map quotes:(id)quotes overwriteValues:(BOOL)values
{
  mapCopy = map;
  quotesCopy = quotes;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_22137CCF4;
  v25 = sub_22137CD04;
  v26 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22137DAD4;
  v15[3] = &unk_2784636E0;
  v16 = quotesCopy;
  selfCopy = self;
  valuesCopy = values;
  v18 = mapCopy;
  v19 = &v21;
  v10 = mapCopy;
  v11 = quotesCopy;
  objc_msgSend_p_recursiveWriteWillModify_withBlock_(self, v12, 1, v15);
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (double)remoteDataSyncKey
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22137DF08;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  remoteDataSyncKey = -1.0;
  if (!v8[3])
  {
    remoteDataSyncKey = self->_remoteDataSyncKey;
  }

  _Block_object_dispose(&v7, 8);
  return remoteDataSyncKey;
}

- (void)remoteDataDidUpdateValues:(id)values quotes:(id)quotes
{
  valuesCopy = values;
  quotesCopy = quotes;
  if (objc_msgSend_count(valuesCopy, v8, v9, v10) <= 0 && !objc_msgSend_count(quotesCopy, v11, v12, v13))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCERemoteDataStore remoteDataDidUpdateValues:quotes:]", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataStore.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 371, 0, "Shouldn't get an empty update!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  if (self->_registeredWithCoordinator && (objc_msgSend_calculationEngine(self, v11, v12, v13), v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
  {
    updateQueue = self->_updateQueue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_22137E1B0;
    v27[3] = &unk_278462620;
    v27[4] = self;
    v28 = valuesCopy;
    v29 = quotesCopy;
    objc_msgSend_addOperationWithBlock_(updateQueue, v25, v27, v26);
  }

  else if (__C != -1)
  {
    sub_2216F7820();
  }
}

- (id)p_tsceValueFromTsceCellValue:(id)value
{
  valueCopy = value;
  v10 = objc_msgSend_valueType(valueCopy, v4, v5, v6);
  if (v10 <= 4)
  {
    if (!v10)
    {
      v25 = objc_msgSend_nilValue(TSCENilValue, v7, v8, v9);
      goto LABEL_14;
    }

    if (v10 == 3)
    {
      objc_opt_class();
      v11 = TSUCheckedDynamicCast();
      v15 = objc_msgSend_dateValue(v11, v16, v17, v18);
      goto LABEL_13;
    }

LABEL_12:
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCERemoteDataStore p_tsceValueFromTsceCellValue:]", v9);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataStore.mm", v29);
    v31 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v30, 466, 0, "Attempted to create a TSCEvalue from an unsupported TSCECellValue of class: %@", v31);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
    v11 = objc_msgSend_remoteDataServerError(TSCEError, v36, v37, v38);
    v15 = objc_msgSend_errorValue_(TSCEErrorValue, v39, v11, v40);
    goto LABEL_13;
  }

  if (v10 == 5)
  {
    objc_opt_class();
    v11 = TSUCheckedDynamicCast();
    v15 = objc_msgSend_numberValue(v11, v19, v20, v21);
    goto LABEL_13;
  }

  if (v10 == 7)
  {
    objc_opt_class();
    v11 = TSUCheckedDynamicCast();
    v15 = objc_msgSend_stringValue(v11, v22, v23, v24);
    goto LABEL_13;
  }

  if (v10 != 9)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  v11 = TSUCheckedDynamicCast();
  v15 = objc_msgSend_errorValue(v11, v12, v13, v14);
LABEL_13:
  v25 = v15;

LABEL_14:

  return v25;
}

- (id)allRemoteData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_22137CCF4;
  v10 = sub_22137CD04;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22137EAFC;
  v5[3] = &unk_27845EC10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)allQuotes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_22137CCF4;
  v10 = sub_22137CD04;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22137EC6C;
  v5[3] = &unk_27845EC10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)p_dictionaryForRemoteData:(id)data
{
  dataCopy = data;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_22137CCF4;
  v21 = sub_22137CD04;
  v8 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6, v7);
  queue = self->_queue;
  v22 = v8;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22137EE40;
  block[3] = &unk_278463780;
  selfCopy = self;
  v16 = &v17;
  v14 = dataCopy;
  v10 = dataCopy;
  dispatch_sync(queue, block);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (void)updateWithRemoteDataMap:(id)map quotes:(id)quotes syncKey:(double)key
{
  mapCopy = map;
  quotesCopy = quotes;
  if ((objc_msgSend_p_isInCollaborationMode(self, v10, v11, v12) & 1) == 0)
  {
    v16 = objc_msgSend_delegate(self, v13, v14, v15);

    if (!v16)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSCERemoteDataStore updateWithRemoteDataMap:quotes:syncKey:]", v15);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataStore.mm", v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 508, 0, "Should never get a docserver update for an unshared file!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    }
  }

  v26 = objc_msgSend_delegate(self, v13, v14, v15);

  if (!v26 && __C != -1)
  {
    sub_2216F7834();
  }

  updateQueue = self->_updateQueue;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_22137F1B4;
  v32[3] = &unk_2784637D0;
  v32[4] = self;
  v28 = mapCopy;
  v33 = v28;
  v29 = quotesCopy;
  v34 = v29;
  keyCopy = key;
  objc_msgSend_addOperationWithBlock_(updateQueue, v30, v32, v31);
}

- (BOOL)hasFullyPopulatedCache
{
  if (!objc_msgSend_hasArchivableState(self, a2, v2, v3))
  {
    return 1;
  }

  v8 = objc_msgSend_remoteDataMap(self, v5, v6, v7);
  v12 = objc_msgSend_interestingKeys(self, v9, v10, v11);
  v15 = objc_msgSend_containsValueForAllSpecifiersInSet_(v8, v13, v12, v14);

  return v15;
}

- (void)updateCachedStocksFromKnownStocks:(id)stocks
{
  stocksCopy = stocks;
  v8 = objc_msgSend_cachedStocks(self, v5, v6, v7);
  v12 = objc_msgSend_tsu_allKeysAsSet(v8, v9, v10, v11);
  v16 = objc_msgSend_tsu_allKeysAsSet(stocksCopy, v13, v14, v15);
  v19 = objc_msgSend_tsu_setByIntersectingSet_(v12, v17, v16, v18);

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_22137F554;
  v23[3] = &unk_2784637F8;
  v23[4] = self;
  v20 = stocksCopy;
  v24 = v20;
  objc_msgSend_enumerateObjectsUsingBlock_(v19, v21, v23, v22);
}

- (void)updateCachedStocksIntoStore:(id)store
{
  storeCopy = store;
  v7 = objc_msgSend_cachedStocks(self, v4, v5, v6);
  objc_msgSend_updateCachedStocksFromKnownStocks_(storeCopy, v8, v7, v9);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E2AC8[156], v5);

  objc_msgSend_p_initializeQueue(self, v7, v8, v9);
  v10 = [TSCERemoteDataValueMap alloc];
  if (*(v6 + 48))
  {
    v13 = objc_msgSend_initFromArchive_(v10, v11, *(v6 + 48), v12);
  }

  else
  {
    v13 = objc_msgSend_initFromArchive_(v10, v11, &TSCE::_RemoteDataValueMapArchive_default_instance_, v12);
  }

  remoteDataMap = self->_remoteDataMap;
  self->_remoteDataMap = v13;

  v15 = objc_alloc_init(TSCERemoteDataSpecifierSet);
  interestingKeys = self->_interestingKeys;
  self->_interestingKeys = v15;

  self->_hasInterestingKeys = 0;
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  ownerMap = self->_ownerMap;
  self->_ownerMap = v17;

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cachedStocks = self->_cachedStocks;
  self->_cachedStocks = v19;

  v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
  unSyncedStocks = self->_unSyncedStocks;
  self->_unSyncedStocks = v21;

  v26 = *(v6 + 40);
  if (v26)
  {
    v27 = (v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  v28 = *(v6 + 32);
  if (v28)
  {
    v29 = 8 * v28;
    do
    {
      v30 = objc_msgSend_stockFromArchive_(TSCEStock, v23, *v27, v25);
      v31 = self->_cachedStocks;
      v35 = objc_msgSend_symbol(v30, v32, v33, v34);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v36, v30, v35);

      v37 = self->_unSyncedStocks;
      v41 = objc_msgSend_symbol(v30, v38, v39, v40);
      objc_msgSend_addObject_(v37, v42, v41, v43);

      ++v27;
      v29 -= 8;
    }

    while (v29);
  }

  if (__C != -1)
  {
    sub_2216F7848();
  }

  v44 = objc_msgSend_sharedCoordinator(TSCERemoteDataCoordinator, v23, v24, v25);
  objc_msgSend_updateKnownCachedStocksInStore_(v44, v45, self, v46);
}

- (void)saveToArchiver:(id)archiver
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_221380188, off_2812E2AC8[156]);

  v37 = v6;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_22137CCF4;
  v32 = sub_22137CD04;
  v33 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_22137CCF4;
  v26[4] = sub_22137CD04;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_22137CCF4;
  v24[4] = sub_22137CD04;
  v25 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_22137FC80;
  v23[3] = &unk_278463820;
  v23[4] = self;
  v23[5] = &v28;
  v23[6] = v26;
  v23[7] = v24;
  objc_msgSend_p_recursiveWriteWillModify_withBlock_(self, v7, 0, v23);
  if (__C != -1)
  {
    sub_2216F785C();
  }

  v10 = v29[5];
  v11 = v35[3];
  *(v11 + 16) |= 1u;
  v12 = *(v11 + 48);
  if (!v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RemoteDataValueMapArchive>(v13);
    *(v11 + 48) = v12;
  }

  objc_msgSend_saveToArchive_(v10, v8, v12, v9);
  v17 = objc_msgSend_cachedStocks(self, v14, v15, v16);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22137FE1C;
  v22[3] = &unk_278463848;
  v22[4] = v26;
  v22[5] = &v34;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v17, v18, v22, v19);

  objc_msgSend_requiresDocumentVersion_(archiverCopy, v20, *MEMORY[0x277D80978], v21);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
}

- (TSCERemoteDataStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TSCECalculationEngine)calculationEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);

  return WeakRetained;
}

@end