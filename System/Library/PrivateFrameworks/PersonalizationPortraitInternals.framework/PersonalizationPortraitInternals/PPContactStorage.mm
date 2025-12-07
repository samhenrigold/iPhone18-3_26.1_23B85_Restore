@interface PPContactStorage
+ (id)normalizeHandle:(id)handle;
- (BOOL)iterAllNameRecordsFromAllSourcesWithError:(id *)error block:(id)block;
- (PPContactStorage)initWithDatabase:(id)database foundInAppsHarvestStoreGetter:(id)getter;
- (id)_contactsContactsWithPredicate:(uint64_t)predicate explanationSet:(void *)set error:(void *)error;
- (id)_contactsFullTextSearchWithQuery:(uint64_t)query explanationSet:(uint64_t)set error:(void *)error filter:(void *)filter;
- (id)_foundInAppsContactsQueryWithTerm:(void *)term explanationSet:(void *)set error:(void *)error filter:;
- (id)_joinResults:(id)results;
- (id)_nameRecordKeysToFetch;
- (id)_waitForGroup:(id)group results:(id)results;
- (id)_waitForGroup:(id)group results:(id)results timeoutSeconds:(double)seconds explanationSet:(id)set;
- (id)cachedSignificantContactHandles;
- (id)contactHandleSourceCountsWithMinimumSourceCount:(unint64_t)count;
- (id)contactHandlesForSource:(id)source;
- (id)contactHandlesForTopics:(id)topics;
- (id)contactNameRecordsWithHistoryResult:(id)result truncated:(BOOL *)truncated error:(id *)error;
- (id)contactsChangeHistoryForClient:(id)client error:(id *)error;
- (id)contactsContactsWithQuery:(id)query explanationSet:(id)set error:(id *)error;
- (id)contactsWithQuery:(id)query explanationSet:(id)set timeoutSeconds:(id)seconds error:(id *)error;
- (id)emailFilterWithQuery:(id)query;
- (id)meCard;
- (id)nameFilterWithQuery:(id)query;
- (id)phoneFilterWithQuery:(id)query;
- (id)postalAddressFilterWithQuery:(id)query;
- (id)sourcesForContactHandle:(id)handle;
- (int64_t)insertIfNeededAndFetchIdentifierWithHandle:(id)handle txnWitness:(id)witness;
- (unint64_t)pruneOrphanedHandlesWithTxnWitness:(id)witness;
- (void)_addToCache:(void *)cache records:;
- (void)asyncFillResultsFromContactsWithQuery:(id)query explanationSet:(id)set group:(id)group results:(id)results;
- (void)asyncFillResultsFromFoundInAppsWithQuery:(id)query explanationSet:(id)set group:(id)group results:(id)results;
- (void)clearChangeHistoryForClient:(id)client historyResult:(id)result;
- (void)loadChineseBirthdayFoundKVData;
- (void)setCachedSignificantContactHandles:(id)handles;
- (void)setChineseBirthdayFoundKVData;
- (void)storeHandleSourceMapWithHandles:(id)handles sourceId:(int64_t)id txnWitness:(id)witness;
@end

@implementation PPContactStorage

- (id)cachedSignificantContactHandles
{
  v3 = objc_opt_new();
  db = self->_db;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __51__PPContactStorage_cachedSignificantContactHandles__block_invoke;
  v11 = &unk_278976428;
  v12 = @"SELECT handle FROM significant_contacts";
  v13 = v3;
  v5 = v3;
  [(PPSQLDatabase *)db readTransactionWithClient:3 block:&v8];
  v6 = [v5 copy];

  return v6;
}

void __51__PPContactStorage_cachedSignificantContactHandles__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__PPContactStorage_cachedSignificantContactHandles__block_invoke_3;
  v5[3] = &unk_278978DB8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 prepAndRunQuery:v4 onPrep:&__block_literal_global_149_17856 onRow:v5 onError:0];
}

uint64_t __51__PPContactStorage_cachedSignificantContactHandles__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnName:"handle" table:"significant_contacts"];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  else
  {
    v4 = pp_contacts_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_23224A000, v4, OS_LOG_TYPE_ERROR, "PPContactStorage: received a null handle from a nonnull column.", v7, 2u);
    }
  }

  v5 = MEMORY[0x277D42690];

  return *v5;
}

- (void)clearChangeHistoryForClient:(id)client historyResult:(id)result
{
  clientCopy = client;
  currentHistoryToken = [result currentHistoryToken];
  v7 = clientCopy;
  v8 = v7;
  if (self)
  {
    db = self->_db;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__PPContactStorage_History___setHistoryToken_clientIdentifier___block_invoke;
    v11[3] = &unk_278977CD8;
    v12 = v7;
    v13 = currentHistoryToken;
    [(PPSQLDatabase *)db writeTransactionWithClient:3 block:v11];
  }
}

void __63__PPContactStorage_History___setHistoryToken_clientIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__PPContactStorage_History___setHistoryToken_clientIdentifier___block_invoke_2;
  v4[3] = &unk_2789743E8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 prepAndRunQuery:@"INSERT OR REPLACE INTO cn_history_tokens (client_identifier onPrep:token) VALUES (:clientIdentifier onRow::token)" onError:{v4, 0, 0}];
}

void __63__PPContactStorage_History___setHistoryToken_clientIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":clientIdentifier" toNSString:v3];
  [v4 bindNamedParam:":token" toNSData:*(a1 + 40)];
}

- (id)contactsChangeHistoryForClient:(id)client error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v7 = objc_opt_new();
  v8 = clientCopy;
  v9 = v8;
  if (self)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__4662;
    v21 = __Block_byref_object_dispose__4663;
    v22 = 0;
    db = self->_db;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__PPContactStorage_History___historyTokenForClientIdentifier___block_invoke;
    v15[3] = &unk_278978BB8;
    v16 = v8;
    p_buf = &buf;
    [(PPSQLDatabase *)db readTransactionWithClient:3 block:v15];
    v11 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v11 = 0;
  }

  [v7 setStartingToken:v11];
  [v7 setIncludeGroupChanges:0];
  [v7 setShouldUnifyResults:1];
  v12 = pp_contacts_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "getting change history from contacts: %@", &buf, 0xCu);
  }

  v13 = [(CNContactStore *)self->_contactsStore enumeratorForChangeHistoryFetchRequest:v7 error:error];

  return v13;
}

void __62__PPContactStorage_History___historyTokenForClientIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__PPContactStorage_History___historyTokenForClientIdentifier___block_invoke_2;
  v5[3] = &unk_278978CF8;
  v6 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__PPContactStorage_History___historyTokenForClientIdentifier___block_invoke_3;
  v4[3] = &unk_278976450;
  v4[4] = *(a1 + 40);
  [v3 prepAndRunQuery:@"SELECT token FROM cn_history_tokens WHERE client_identifier = :clientIdentifier" onPrep:v5 onRow:v4 onError:0];
}

uint64_t __62__PPContactStorage_History___historyTokenForClientIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSDataForColumnName:"token" table:"cn_history_tokens"];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

- (id)contactNameRecordsWithHistoryResult:(id)result truncated:(BOOL *)truncated error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v8 = [PPContactNameRecordChangeHistoryAccumulator alloc];
  contactsStore = self->_contactsStore;
  _nameRecordKeysToFetch = [(PPContactStorage *)self _nameRecordKeysToFetch];
  v11 = contactsStore;
  v12 = _nameRecordKeysToFetch;
  if (v8)
  {
    v30.receiver = v8;
    v30.super_class = PPContactNameRecordChangeHistoryAccumulator;
    v13 = [(PPContactStorage *)&v30 init];
    v8 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_contactsStore, contactsStore);
      objc_storeStrong(&v8->_keysToFetch, _nameRecordKeysToFetch);
      v14 = objc_opt_new();
      records = v8->_records;
      v8->_records = v14;

      v8->_truncated = 0;
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  value = [resultCopy value];
  v17 = [value countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(value);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        [v21 acceptEventVisitor:v8];
        if (v8 && v8->_truncated)
        {
          objc_autoreleasePoolPop(v22);

          goto LABEL_16;
        }

        objc_autoreleasePoolPop(v22);
      }

      v18 = [value countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  if (v8)
  {
LABEL_16:
    if (v8->_truncated)
    {
      if (truncated)
      {
        *truncated = v8->_truncated;
      }

      v24 = objc_opt_new();
    }

    else
    {
      v24 = v8->_records;
    }

    v23 = v24;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_nameRecordKeysToFetch
{
  v8[12] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v1 = *MEMORY[0x277CBD0B0];
    v8[0] = *MEMORY[0x277CBD000];
    v8[1] = v1;
    v2 = *MEMORY[0x277CBD0B8];
    v8[2] = *MEMORY[0x277CBD058];
    v8[3] = v2;
    v3 = *MEMORY[0x277CBD0A8];
    v8[4] = *MEMORY[0x277CBCFF8];
    v8[5] = v3;
    v4 = *MEMORY[0x277CBD040];
    v8[6] = *MEMORY[0x277CBD090];
    v8[7] = v4;
    v5 = *MEMORY[0x277CBD120];
    v8[8] = *MEMORY[0x277CBD078];
    v8[9] = v5;
    v6 = *MEMORY[0x277CBD080];
    v8[10] = *MEMORY[0x277CBD0C8];
    v8[11] = v6;
    self = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:12];
  }

  return self;
}

- (BOOL)iterAllNameRecordsFromAllSourcesWithError:(id *)error block:(id)block
{
  v78 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__5895;
  v54 = __Block_byref_object_dispose__5896;
  v55 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PPContactStorage_NameRecords__iterAllNameRecordsFromAllSourcesWithError_block___block_invoke;
  aBlock[3] = &unk_278973350;
  aBlock[4] = &v56;
  aBlock[5] = &v50;
  v7 = _Block_copy(aBlock);
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__5895;
  v47 = __Block_byref_object_dispose__5896;
  v48 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__PPContactStorage_NameRecords__iterAllNameRecordsFromAllSourcesWithError_block___block_invoke_2;
  block[3] = &unk_278973378;
  v42 = &v43;
  block[4] = self;
  v8 = v7;
  v41 = v8;
  v9 = dispatch_block_create(0, block);
  if (iterAllNameRecordsFromAllSourcesWithError_block___pasOnceToken5 != -1)
  {
    dispatch_once(&iterAllNameRecordsFromAllSourcesWithError_block___pasOnceToken5, &__block_literal_global_5897);
  }

  dispatch_async(iterAllNameRecordsFromAllSourcesWithError_block___pasExprOnceResult, v9);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __81__PPContactStorage_NameRecords__iterAllNameRecordsFromAllSourcesWithError_block___block_invoke_4;
  v33[3] = &unk_2789733A0;
  v35 = &v36;
  v10 = blockCopy;
  v34 = v10;
  v11 = v33;
  v12 = v11;
  if (self)
  {
    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy__5895;
    v68 = __Block_byref_object_dispose__5896;
    v69 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    contactCacheManager = self->_contactCacheManager;
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v72 = __87__PPContactStorage_NameRecords___iterContactsNameRecordsForAllContactsWithError_block___block_invoke;
    v73 = &unk_278973418;
    selfCopy = self;
    v76 = &v64;
    v77 = &v60;
    v75 = v11;
    [(PPContactDiskCacheManager *)contactCacheManager accessCacheWithBlock:&buf];
    LOBYTE(self) = *(v61 + 24);
    if (self)
    {
      v14 = 0;
    }

    else
    {
      v14 = v65[5];
      v15 = v14;
    }

    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(&v64, 8);
  }

  else
  {
    v14 = 0;
  }

  v16 = v14;
  v17 = pp_contacts_log_handle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(v37 + 6);
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v18;
    _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "CN name record count: %u", &buf, 8u);
  }

  if (self)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v20 = v51[5];
    v51[5] = date;

    atomic_store(1u, v57 + 24);
    [MEMORY[0x277D425A0] waitForBlock:v9];
    v21 = pp_contacts_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v44[5] count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v22;
      _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEFAULT, "FiA name record count: %tu", &buf, 0xCu);
    }

    LOBYTE(buf) = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v23 = v44[5];
    v24 = [v23 countByEnumeratingWithState:&v29 objects:v70 count:16];
    if (v24)
    {
      v25 = *v30;
LABEL_15:
      v26 = 0;
      while (1)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v23);
        }

        (*(v10 + 2))(v10, *(*(&v29 + 1) + 8 * v26), &buf);
        if (buf)
        {
          break;
        }

        if (v24 == ++v26)
        {
          v24 = [v23 countByEnumeratingWithState:&v29 objects:v70 count:16];
          if (v24)
          {
            goto LABEL_15;
          }

          break;
        }
      }
    }
  }

  else if (error)
  {
    v27 = v16;
    *error = v16;
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  return self;
}

BOOL __81__PPContactStorage_NameRecords__iterAllNameRecordsFromAllSourcesWithError_block___block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(*(a1 + 32) + 8) + 24));
  if ((v1 & 1) == 0)
  {
    return 1;
  }

  [*(*(*(a1 + 40) + 8) + 40) timeIntervalSinceNow];
  return v2 > -20.0;
}

void __81__PPContactStorage_NameRecords__iterAllNameRecordsFromAllSourcesWithError_block___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = objc_opt_new();
    v5 = (*(*(v2 + 56) + 16))();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __90__PPContactStorage_NameRecords___namesRecordsForAllFoundInAppsContactsWithKeepGoingBlock___block_invoke;
    v11[3] = &unk_278973468;
    v13 = v3;
    v6 = v4;
    v12 = v6;
    [v5 enumerateAllContactsWithSnippets:0 limitTo:10000 usingBlock:v11];

    v7 = v12;
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __87__PPContactStorage_NameRecords___iterContactsNameRecordsForAllContactsWithError_block___block_invoke(uint64_t a1, void *a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isEmpty])
  {
    v4 = pp_contacts_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "contact disk cache was empty", buf, 2u);
    }

LABEL_42:

    v42 = *(*(a1 + 48) + 8);
    v43 = *(v42 + 40);
    *(v42 + 40) = 0;

    v44 = *(a1 + 32);
    v45 = *(*(a1 + 48) + 8);
    obj = *(v45 + 40);
    v46 = [v44 contactsChangeHistoryForClient:@"name_records_cache" error:&obj];
    objc_storeStrong((v45 + 40), obj);
    if (!v46)
    {
      v47 = pp_contacts_log_handle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v57 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412546;
        *&buf[4] = @"name_records_cache";
        *&buf[12] = 2112;
        *&buf[14] = v57;
        _os_log_error_impl(&dword_23224A000, v47, OS_LOG_TYPE_ERROR, "failed to load change history for client: %@ error: %@", buf, 0x16u);
      }
    }

    v48 = *(a1 + 32);
    v49 = *(v48 + 32);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __87__PPContactStorage_NameRecords___iterContactsNameRecordsForAllContactsWithError_block___block_invoke_123;
    v59[3] = &unk_2789733F0;
    v62 = *(a1 + 48);
    v59[4] = v48;
    v4 = v46;
    v60 = v4;
    v61 = *(a1 + 40);
    [v49 mutateCacheWithBlock:v59];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (v46)
      {
        [*(a1 + 32) clearChangeHistoryForClient:@"name_records_cache" historyResult:v4];
      }
    }

    else
    {
      v50 = pp_contacts_log_handle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v56 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412290;
        *&buf[4] = v56;
        _os_log_error_impl(&dword_23224A000, v50, OS_LOG_TYPE_ERROR, "failed to load CN name records from contacts framework: %@", buf, 0xCu);
      }
    }

    goto LABEL_53;
  }

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 48) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  if (v4)
  {
    v69 = 0;
    v9 = [v4 contactsChangeHistoryForClient:@"name_records_cache" error:&v69];
    v10 = v69;
    v11 = v10;
    if (!v9)
    {
      v14 = pp_contacts_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = @"name_records_cache";
        *&buf[12] = 2112;
        *&buf[14] = v11;
        _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "PPContactStorage+NameRecords: failed to load change history for client: %@ error: %@", buf, 0x16u);
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D3A580];
      if (v11)
      {
        v71 = *MEMORY[0x277CCA7E8];
        *buf = v11;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v71 count:1];
      }

      else
      {
        v17 = 0;
      }

      v7 = [v15 errorWithDomain:v16 code:17 userInfo:v17];
      v18 = v7;
      if (v11)
      {
      }

      v4 = 0;
      goto LABEL_22;
    }

    v68 = 0;
    v71 = 0;
    v12 = [v4 contactNameRecordsWithHistoryResult:v9 truncated:&v68 error:&v71];
    v11 = v71;
    if (v68 == 1)
    {
      v13 = pp_contacts_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPContactStorage+NameRecords: Contacts change history truncated", buf, 2u);
      }

      [v4 clearChangeHistoryForClient:@"name_records_cache" historyResult:v9];
    }

    else
    {
      if (v12)
      {
        [v4 clearChangeHistoryForClient:@"name_records_cache" historyResult:v9];
        v4 = v12;
        goto LABEL_17;
      }

      v51 = pp_contacts_log_handle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v11;
        _os_log_error_impl(&dword_23224A000, v51, OS_LOG_TYPE_ERROR, "PPContactStorage+NameRecords: contactNameRecordChangeResultWithChanges failed with error: %@", buf, 0xCu);
      }

      v52 = MEMORY[0x277CCA9B8];
      v53 = *MEMORY[0x277D3A580];
      if (v11)
      {
        v70 = *MEMORY[0x277CCA7E8];
        *buf = v11;
        v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v70 count:1];
      }

      else
      {
        v54 = 0;
      }

      v7 = [v52 errorWithDomain:v53 code:18 userInfo:v54];
      v55 = v7;
      if (v11)
      {
      }
    }

    v4 = 0;
LABEL_17:

LABEL_22:
  }

  objc_storeStrong(v6, v7);
  if (v4)
  {
    v19 = 1;
  }

  else
  {
    v20 = pp_contacts_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v58 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      *&buf[4] = v58;
      _os_log_error_impl(&dword_23224A000, v20, OS_LOG_TYPE_ERROR, "PPContactStorage+NameRecords: _disksCacheHistoryRecordsWithError failed: %@", buf, 0xCu);
    }

    v19 = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = v19;
  if ([v4 count])
  {
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = 0;

    v23 = *(*(a1 + 32) + 32);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __87__PPContactStorage_NameRecords___iterContactsNameRecordsForAllContactsWithError_block___block_invoke_121;
    v64[3] = &unk_2789733C8;
    v66 = *(a1 + 56);
    v24 = v4;
    v25 = *(a1 + 48);
    v65 = v24;
    v67 = v25;
    [v23 mutateCacheWithBlock:v64];
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v26 = *(*(a1 + 48) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = 0;

    v28 = *(*(a1 + 48) + 8);
    v31 = *(v28 + 40);
    v29 = (v28 + 40);
    v30 = v31;
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    v34 = v33;
    if (v32)
    {
      v69 = 0;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __75__PPContactStorage_NameRecords___iterNameRecordsFromDiskCache_error_block___block_invoke;
      v73 = &unk_2789734B8;
      v74 = v33;
      LOBYTE(v32) = [v3 iterNameRecordCacheWithError:&v69 block:buf];
      v35 = v69;
      v36 = v35;
      if ((v32 & 1) == 0)
      {
        v37 = v35;
        v30 = v36;
      }
    }

    objc_storeStrong(v29, v30);
    *(*(*(a1 + 56) + 8) + 24) = v32;
    v38 = *(*(*(a1 + 56) + 8) + 24);
    v39 = pp_contacts_log_handle();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
    if (v38 != 1)
    {
      if (v40)
      {
        v41 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412290;
        *&buf[4] = v41;
        _os_log_impl(&dword_23224A000, v39, OS_LOG_TYPE_DEFAULT, "failed to load CN name records from disk cache: %@", buf, 0xCu);
      }

      goto LABEL_42;
    }

    if (v40)
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v39, OS_LOG_TYPE_DEFAULT, "loaded CN name records from disk cache", buf, 2u);
    }
  }

LABEL_53:
}

void __87__PPContactStorage_NameRecords___iterContactsNameRecordsForAllContactsWithError_block___block_invoke_121(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [a2 updateNameRecordCacheWithHistoryRecords:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v6 = pp_contacts_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(a1[6] + 8) + 40);
      *buf = 138412290;
      v10 = v7;
      _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPContactStorage+NameRecords: updateNameRecordCacheWithHistoryRecords failed: %@", buf, 0xCu);
    }
  }
}

void __87__PPContactStorage_NameRecords___iterContactsNameRecordsForAllContactsWithError_block___block_invoke_123(void *a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
  v5 = a2;

  v6 = a1[6];
  v7 = *(a1[7] + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  v26 = v5;
  obj = v9;
  v10 = a1[4];
  if (a1[5])
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v28 = v6;
  if (v10)
  {
    v29 = [(PPContactStorage *)v10 _nameRecordKeysToFetch];
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v13 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:{v29, v26, obj}];
    [v13 setPredicate:0];
    [v13 setUnifyResults:1];
    v14 = PPNewCNContactStore();
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x2020000000;
    v47 = 0;
    v15 = objc_opt_new();
    [v12 deleteNameRecordCache];
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__5895;
    v44 = __Block_byref_object_dispose__5896;
    v45 = 0;
    v39 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __125__PPContactStorage_NameRecords___iterContactsNameRecordsForAllContactsFromSouceAndReplaceDiskCacheWithError_diskCache_block___block_invoke;
    v30[3] = &unk_278973440;
    v35 = &v48;
    v36 = v46;
    v34 = v28;
    v16 = v12;
    v31 = v16;
    v17 = v15;
    v38 = 100;
    v32 = v17;
    v33 = v10;
    v37 = &v40;
    v18 = [v14 enumerateContactsWithFetchRequest:v13 error:&v39 usingBlock:v30];
    v19 = v39;
    v20 = v41[5];
    if (v20)
    {
      [v20 raise];
    }

    if (v18)
    {
      if (v16)
      {
        [(PPContactStorage *)v10 _addToCache:v16 records:v17];
      }

      v21 = *(v49 + 24);
      if (v21 != v10[80])
      {
        v10[80] = v21;
        [v10 setChineseBirthdayFoundKVData];
      }
    }

    else
    {
      v22 = pp_contacts_log_handle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v19;
        _os_log_error_impl(&dword_23224A000, v22, OS_LOG_TYPE_ERROR, "Error: failed to enumerate all CN contacts: %@", buf, 0xCu);
      }

      v23 = MEMORY[0x277CCA9B8];
      if (v19)
      {
        v52 = *MEMORY[0x277CCA7E8];
        *buf = v19;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v52 count:1];
      }

      else
      {
        v24 = 0;
      }

      obj = [v23 errorWithDomain:*MEMORY[0x277D3A580] code:19 userInfo:v24];
      v25 = obj;
      if (v19)
      {
      }
    }

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(v46, 8);

    _Block_object_dispose(&v48, 8);
  }

  else
  {
    v18 = 0;
  }

  objc_storeStrong(v8, obj);
  *(*(a1[8] + 8) + 24) = v18;
}

void __125__PPContactStorage_NameRecords___iterContactsNameRecordsForAllContactsFromSouceAndReplaceDiskCacheWithError_diskCache_block___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_28;
  }

  v8 = [v6 givenName];
  if (v8)
  {
    v3 = [v7 givenName];
    if ([v3 length])
    {

      goto LABEL_32;
    }
  }

  v9 = [v7 middleName];
  if (!v9 || ([v7 middleName], v4 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v4, "length")))
  {
    v11 = [v7 familyName];
    if (v11)
    {
      v2 = [v7 familyName];
      if ([v2 length])
      {
        v12 = v2;
        v10 = 0;
LABEL_23:

LABEL_24:
        if (!v9)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    v13 = [v7 phoneticGivenName];
    if (v13)
    {
      v5 = [v7 phoneticGivenName];
      if ([v5 length])
      {
        v14 = v13;
        v15 = v4;
        v16 = v5;
        v12 = v2;
        v10 = 0;
LABEL_21:

LABEL_22:
        v4 = v15;
        if (!v11)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    v17 = [v7 phoneticMiddleName];
    v40 = v13;
    if (v17 && ([v7 phoneticMiddleName], v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "length")))
    {
      v15 = v4;
      v16 = v5;
      v12 = v2;
      v10 = 0;
    }

    else
    {
      v38 = [v7 phoneticFamilyName];
      if (v38)
      {
        v36 = [v7 phoneticFamilyName];
        v15 = v4;
        v16 = v5;
        v12 = v2;
        v10 = [v36 length] == 0;

        if (!v17)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v15 = v4;
        v16 = v5;
        v12 = v2;
        v10 = 1;
        if (!v17)
        {
LABEL_20:
          v14 = v40;
          if (!v40)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }
    }

    goto LABEL_20;
  }

  v10 = 0;
LABEL_25:

LABEL_26:
  if (!v8)
  {

    if (v10)
    {
      goto LABEL_28;
    }

LABEL_32:
    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      v19 = [v7 nonGregorianBirthday];
      v20 = [v19 calendar];
      v21 = [v20 calendarIdentifier];
      v22 = [v21 isEqualToString:*MEMORY[0x277CBE590]];

      if (v22)
      {
        *(*(*(a1 + 64) + 8) + 24) = 1;
      }
    }

    v23 = [PPInternalContactNameRecord alloc];
    v43 = [MEMORY[0x277CCAD78] UUID];
    v41 = [v43 UUIDString];
    v39 = [v7 identifier];
    v37 = [v7 givenName];
    v35 = [v7 phoneticGivenName];
    v34 = [v7 middleName];
    v33 = [v7 phoneticMiddleName];
    v24 = [v7 familyName];
    v25 = [v7 phoneticFamilyName];
    v26 = [v7 organizationName];
    v27 = [v7 jobTitle];
    v28 = [v7 nickname];
    v29 = PPRelatedNamesForContact(v7);
    v30 = PPStreetNamesForContact(v7);
    v31 = PPCityNamesForContact(v7);
    v32 = [(PPInternalContactNameRecord *)v23 initWithIdentifier:v41 score:1 source:v39 sourceIdentifier:1 changeType:v37 firstName:v35 phoneticFirstName:0.0 middleName:v34 phoneticMiddleName:v33 lastName:v24 phoneticLastName:v25 organizationName:v26 jobTitle:v27 nickname:v28 relatedNames:v29 streetNames:v30 cityNames:v31];

    if (v32)
    {
      if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
      {
        (*(*(a1 + 56) + 16))();
      }

      if (*(a1 + 32))
      {
        [*(a1 + 40) addObject:v32];
        if ([*(a1 + 40) count] >= *(a1 + 88))
        {
          [(PPContactStorage *)*(a1 + 48) _addToCache:*(a1 + 40) records:?];
          [*(a1 + 40) removeAllObjects];
        }
      }
    }

    goto LABEL_42;
  }

  if (!v10)
  {
    goto LABEL_32;
  }

LABEL_28:
  v18 = pp_contacts_log_handle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v46 = v7;
    _os_log_debug_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEBUG, "skipping empty named CN contact: %@", buf, 0xCu);
  }

LABEL_42:
}

- (void)_addToCache:(void *)cache records:
{
  v17 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  if (self)
  {
    v6 = a2;
    v7 = pp_contacts_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v14 = [cacheCopy count];
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_INFO, "PPContactStorage: _addToCache: flushing cache batch of size: %tu", buf, 0xCu);
    }

    v12 = 0;
    v8 = [v6 addNameRecords:cacheCopy error:&v12];

    v9 = v12;
    if ((v8 & 1) == 0)
    {
      v10 = pp_contacts_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [cacheCopy count];
        *buf = 134218242;
        v14 = v11;
        v15 = 2112;
        v16 = v9;
        _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "PPContactStorage: _writeToCacheWithRecords: failed to add %tu name records to cache: %@", buf, 0x16u);
      }
    }
  }
}

void __75__PPContactStorage_NameRecords___iterNameRecordsFromDiskCache_error_block___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__PPContactStorage_NameRecords___iterNameRecordsFromDiskCache_error_block___block_invoke_2;
  v5[3] = &unk_278973490;
  v6 = *(a1 + 32);
  v7 = a3;
  [a2 enumerateKeysAndObjectsUsingBlock:v5];
}

uint64_t __75__PPContactStorage_NameRecords___iterNameRecordsFromDiskCache_error_block___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (a4)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      *v7 = *a4;
    }
  }

  return result;
}

void __81__PPContactStorage_NameRecords__iterAllNameRecordsFromAllSourcesWithError_block___block_invoke_3()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"iterAllNameRecordsFromAllSourcesWithError-FiA"];
  v2 = iterAllNameRecordsFromAllSourcesWithError_block___pasExprOnceResult;
  iterAllNameRecordsFromAllSourcesWithError_block___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

uint64_t __90__PPContactStorage_NameRecords___namesRecordsForAllFoundInAppsContactsWithKeepGoingBlock___block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 name];
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = v4;
  v6 = [v3 name];
  v7 = [v6 firstName];
  if (!v7)
  {
    v7 = [v3 name];
    v8 = [v7 middleName];
    if (v8)
    {

      goto LABEL_5;
    }

    v41 = [v3 name];
    v42 = [v41 lastName];

    if (v42)
    {
      goto LABEL_6;
    }

LABEL_25:
    v40 = (*(*(a1 + 40) + 16))();
    goto LABEL_26;
  }

LABEL_5:

LABEL_6:
  v44 = a1;
  v47 = objc_opt_new();
  v45 = v3;
  v46 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [v3 postalAddresses];
  v50 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v50)
  {
    goto LABEL_21;
  }

  v49 = *v53;
  do
  {
    for (i = 0; i != v50; ++i)
    {
      if (*v53 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v52 + 1) + 8 * i);
      v11 = objc_autoreleasePoolPush();
      v12 = [v10 components];
      v13 = [v12 city];
      if (v13)
      {
        v14 = v13;
        v15 = [v10 components];
        v16 = [v15 city];
        v17 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v18 = [v16 stringByTrimmingCharactersInSet:v17];
        v19 = [v18 isEqualToString:&stru_284759D38];

        if (v19)
        {
          goto LABEL_15;
        }

        v12 = [v10 components];
        v20 = [v12 city];
        [v46 addObject:v20];
      }

LABEL_15:
      v21 = [v10 components];
      v22 = [v21 street];
      if (v22)
      {
        v23 = v22;
        v24 = [v10 components];
        v25 = [v24 street];
        v26 = [v25 isEqualToString:&stru_284759D38];

        if (v26)
        {
          goto LABEL_19;
        }

        v21 = [v10 components];
        v27 = [v21 street];
        [v47 addObject:v27];
      }

LABEL_19:
      objc_autoreleasePoolPop(v11);
    }

    v50 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  }

  while (v50);
LABEL_21:

  v28 = [PPInternalContactNameRecord alloc];
  v51 = [MEMORY[0x277CCAD78] UUID];
  v29 = [v51 UUIDString];
  v30 = objc_alloc(MEMORY[0x277CCACA8]);
  v31 = [v45 recordId];
  v32 = [v30 initWithFormat:@"%lld", objc_msgSend(v31, "internalEntityId")];
  v33 = [v45 name];
  v34 = [v33 firstName];
  v35 = [v45 name];
  v36 = [v35 middleName];
  v37 = [v45 name];
  v38 = [v37 lastName];
  v39 = [(PPInternalContactNameRecord *)v28 initWithIdentifier:v29 score:2 source:v32 sourceIdentifier:1 changeType:v34 firstName:0 phoneticFirstName:0.0 middleName:v36 phoneticMiddleName:0 lastName:v38 phoneticLastName:0 organizationName:0 jobTitle:0 nickname:0 relatedNames:MEMORY[0x277CBEC10] streetNames:v47 cityNames:v46];

  if (v39)
  {
    [*(v44 + 32) addObject:v39];
  }

  v40 = (*(*(v44 + 40) + 16))();

  v3 = v45;
LABEL_26:

  return v40;
}

- (id)contactsContactsWithQuery:(id)query explanationSet:(id)set error:(id *)error
{
  v68 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  setCopy = set;
  v8 = pp_contacts_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = queryCopy;
    _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "PPLocalContactStore contactsContactsWithQuery: %@", &buf, 0xCu);
  }

  v9 = objc_opt_new();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v66 = 0x2020000000;
  v67 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PPContactStorage_Contacts__contactsContactsWithQuery_explanationSet_error___block_invoke;
  aBlock[3] = &unk_278978108;
  p_buf = &buf;
  v55 = v9;
  v62 = v55;
  v10 = _Block_copy(aBlock);
  v11 = objc_opt_new();
  v12 = [queryCopy isEqual:v11];

  if (v12)
  {
    allObjects = [PPContactStorage _contactsContactsWithPredicate:0 explanationSet:setCopy error:?];
    v10[2](v10, allObjects);
  }

  else
  {
    matchingIdentifiers = [queryCopy matchingIdentifiers];
    v15 = [matchingIdentifiers count] == 0;

    if (!v15)
    {
      v16 = objc_alloc(MEMORY[0x277CBEB18]);
      matchingIdentifiers2 = [queryCopy matchingIdentifiers];
      v18 = [v16 initWithCapacity:{objc_msgSend(matchingIdentifiers2, "count")}];

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      matchingIdentifiers3 = [queryCopy matchingIdentifiers];
      v20 = [matchingIdentifiers3 countByEnumeratingWithState:&v57 objects:v64 count:16];
      if (v20)
      {
        v21 = *v58;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v58 != v21)
            {
              objc_enumerationMutation(matchingIdentifiers3);
            }

            v23 = *(*(&v57 + 1) + 8 * i);
            if ([MEMORY[0x277D3A358] sourceFromSourceIdentifier:{v23, v55, setCopy}] != 2)
            {
              v24 = [MEMORY[0x277D3A358] contactsContactIdentifierWithIdentifier:v23 error:0];
              if (v24)
              {
                [v18 addObject:v24];
              }
            }
          }

          v20 = [matchingIdentifiers3 countByEnumeratingWithState:&v57 objects:v64 count:16];
        }

        while (v20);
      }

      v25 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:v18];
      v26 = [PPContactStorage _contactsContactsWithPredicate:v25 explanationSet:setCopy error:?];
      v10[2](v10, v26);
    }

    matchingName = [queryCopy matchingName];
    v28 = [matchingName length] == 0;

    if (!v28)
    {
      if (self)
      {
        v29 = setCopy;
        v30 = queryCopy;
        matchingName2 = [v30 matchingName];
        v32 = [(PPContactStorage *)self nameFilterWithQuery:v30];

        v33 = [PPContactStorage _contactsFullTextSearchWithQuery:matchingName2 explanationSet:v29 error:v32 filter:?];
      }

      else
      {
        v33 = 0;
      }

      v10[2](v10, v33);
    }

    matchingEmail = [queryCopy matchingEmail];
    v35 = [matchingEmail length] == 0;

    if (!v35)
    {
      if (self)
      {
        v36 = setCopy;
        v37 = queryCopy;
        matchingEmail2 = [v37 matchingEmail];
        v39 = [(PPContactStorage *)self emailFilterWithQuery:v37];

        v40 = [PPContactStorage _contactsFullTextSearchWithQuery:matchingEmail2 explanationSet:v36 error:v39 filter:?];
      }

      else
      {
        v40 = 0;
      }

      v10[2](v10, v40);
    }

    matchingPhone = [queryCopy matchingPhone];
    v42 = [matchingPhone length] == 0;

    if (!v42)
    {
      if (self)
      {
        v43 = setCopy;
        v44 = queryCopy;
        matchingPhone2 = [v44 matchingPhone];
        v46 = [(PPContactStorage *)self phoneFilterWithQuery:v44];

        v47 = [PPContactStorage _contactsFullTextSearchWithQuery:matchingPhone2 explanationSet:v43 error:v46 filter:?];
      }

      else
      {
        v47 = 0;
      }

      v10[2](v10, v47);
    }

    matchingPostalAddress = [queryCopy matchingPostalAddress];
    v49 = [matchingPostalAddress length] == 0;

    if (!v49)
    {
      if (self)
      {
        v50 = setCopy;
        v51 = queryCopy;
        matchingPostalAddress2 = [v51 matchingPostalAddress];
        v53 = [(PPContactStorage *)self postalAddressFilterWithQuery:v51];

        self = [PPContactStorage _contactsFullTextSearchWithQuery:matchingPostalAddress2 explanationSet:v50 error:v53 filter:?];
      }

      v10[2](v10, self);
    }

    allObjects = [v55 allObjects];
  }

  _Block_object_dispose(&buf, 8);

  return allObjects;
}

uint64_t __77__PPContactStorage_Contacts__contactsContactsWithQuery_explanationSet_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v3];
      [v4 intersectSet:v5];
    }

    else
    {
      [v4 addObjectsFromArray:v3];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (id)_contactsContactsWithPredicate:(uint64_t)predicate explanationSet:(void *)set error:(void *)error
{
  v34 = *MEMORY[0x277D85DE8];
  setCopy = set;
  errorCopy = error;
  if (predicate)
  {
    v7 = pp_contacts_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = setCopy;
      _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPLocalContactStore contactsContactsWithPredicate: %@", &buf, 0xCu);
    }

    v8 = objc_opt_new();
    v9 = objc_alloc(MEMORY[0x277CBDA70]);
    v10 = PPKeysToFetchPeople();
    v11 = [v9 initWithKeysToFetch:v10];

    [v11 setPredicate:setCopy];
    [v11 setUnifyResults:1];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__9232;
    v32 = __Block_byref_object_dispose__9233;
    v33 = 0;
    v12 = *(predicate + 8);
    v26 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __82__PPContactStorage_Contacts___contactsContactsWithPredicate_explanationSet_error___block_invoke;
    v23[3] = &unk_278974110;
    v13 = v8;
    v24 = v13;
    p_buf = &buf;
    v14 = [v12 enumerateContactsWithFetchRequest:v11 error:&v26 usingBlock:v23];
    v15 = v26;
    v16 = *(*(&buf + 1) + 40);
    if (v16)
    {
      [v16 raise];
    }

    if (v14)
    {
      v17 = pp_contacts_log_handle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *v27 = 138739971;
        v28 = v13;
        _os_log_debug_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEBUG, "Matches from enumerateContactsWithFetchRequest: %{sensitive}@", v27, 0xCu);
      }

      v18 = pp_contacts_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v22 = [v13 count];
        *v27 = 134217984;
        v28 = v22;
        _os_log_debug_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEBUG, "Contacts returned %tu matches", v27, 0xCu);
      }

      v19 = v13;
    }

    else
    {
      v20 = pp_contacts_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v27 = 138412290;
        v28 = v15;
        _os_log_error_impl(&dword_23224A000, v20, OS_LOG_TYPE_ERROR, "failed CNContacts name lookup: %@", v27, 0xCu);
      }

      [errorCopy push:12];
      +[PPQuickTypeMetrics frameworkError:errorCode:](PPQuickTypeMetrics, "frameworkError:errorCode:", @"CN_CS", [v15 code]);
      v19 = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_contactsFullTextSearchWithQuery:(uint64_t)query explanationSet:(uint64_t)set error:(void *)error filter:(void *)filter
{
  filterCopy = filter;
  v8 = MEMORY[0x277CBDA58];
  errorCopy = error;
  v10 = [v8 predicateForContactsMatchingFullTextSearch:set containerIdentifiers:0 groupIdentifiers:0];
  v11 = [PPContactStorage _contactsContactsWithPredicate:query explanationSet:v10 error:errorCopy];

  v12 = MEMORY[0x277CCAC30];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__PPContactStorage_Contacts___contactsFullTextSearchWithQuery_explanationSet_error_filter___block_invoke;
  v17[3] = &unk_278974A28;
  v13 = filterCopy;
  v18 = v13;
  v14 = [v12 predicateWithBlock:v17];
  v15 = [v11 filteredArrayUsingPredicate:v14];

  return v15;
}

void __82__PPContactStorage_Contacts___contactsContactsWithPredicate_explanationSet_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [objc_alloc(MEMORY[0x277D3A358]) initWithContactsContact:v5];
  [v3 addObject:v4];
}

- (void)asyncFillResultsFromContactsWithQuery:(id)query explanationSet:(id)set group:(id)group results:(id)results
{
  queryCopy = query;
  setCopy = set;
  resultsCopy = results;
  concurrentContactQueryThrottleSem = self->_concurrentContactQueryThrottleSem;
  groupCopy = group;
  dispatch_semaphore_wait(concurrentContactQueryThrottleSem, 0xFFFFFFFFFFFFFFFFLL);
  concurrentContactQueryQueue = self->_concurrentContactQueryQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__PPContactStorage_Contacts__asyncFillResultsFromContactsWithQuery_explanationSet_group_results___block_invoke;
  v19[3] = &unk_2789799D0;
  v19[4] = self;
  v20 = queryCopy;
  v21 = setCopy;
  v22 = resultsCopy;
  v16 = resultsCopy;
  v17 = setCopy;
  v18 = queryCopy;
  dispatch_group_async(groupCopy, concurrentContactQueryQueue, v19);
}

void __97__PPContactStorage_Contacts__asyncFillResultsFromContactsWithQuery_explanationSet_group_results___block_invoke(void *a1)
{
  v2 = pp_contacts_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_contacts_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPContactStorage.asyncFillResultsFromContactsWithQuery", "", buf, 2u);
  }

  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v19 = 0;
  v9 = [v6 contactsContactsWithQuery:v7 explanationSet:v8 error:&v19];
  v10 = v19;
  v11 = a1[7];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__PPContactStorage_Contacts__asyncFillResultsFromContactsWithQuery_explanationSet_group_results___block_invoke_5;
  v16[3] = &unk_2789749D0;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  [v11 runWithLockAcquired:v16];
  v14 = pp_contacts_signpost_handle();
  v15 = v14;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v15, OS_SIGNPOST_INTERVAL_END, v3, "PPContactStorage.asyncFillResultsFromContactsWithQuery", "", buf, 2u);
  }

  dispatch_semaphore_signal(*(a1[4] + 16));
}

void __97__PPContactStorage_Contacts__asyncFillResultsFromContactsWithQuery_explanationSet_group_results___block_invoke_5(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 joined])
  {
    v4 = pp_contacts_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) count];
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPLocalContactStore: _contactsContactsWithQuery ignoring %tu contacts returned after timeout and join", &v8, 0xCu);
    }
  }

  else if (*(a1 + 32))
  {
    [v3 setCnContacts:?];
  }

  else
  {
    v6 = pp_contacts_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPLocalContactStore: _contactsContactsWithQuery error: %@", &v8, 0xCu);
    }

    [v3 setLatestError:*(a1 + 40)];
  }
}

- (id)meCard
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9232;
  v10 = __Block_byref_object_dispose__9233;
  v11 = 0;
  meCardCacheManager = self->_meCardCacheManager;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PPContactStorage_Contacts__meCard__block_invoke;
  v5[3] = &unk_2789740E8;
  v5[4] = &v6;
  [(PPMeCardCacheManager *)meCardCacheManager accessCacheWithBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__PPContactStorage_Contacts__meCard__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 loadMeCardCache];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v6 = PPContactMeCardFromSource();
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*(*(*(a1 + 32) + 8) + 40))
    {
      [v9 writeMeCardCache:?];
    }
  }
}

- (void)asyncFillResultsFromFoundInAppsWithQuery:(id)query explanationSet:(id)set group:(id)group results:(id)results
{
  queryCopy = query;
  setCopy = set;
  resultsCopy = results;
  concurrentContactQueryThrottleSem = self->_concurrentContactQueryThrottleSem;
  groupCopy = group;
  dispatch_semaphore_wait(concurrentContactQueryThrottleSem, 0xFFFFFFFFFFFFFFFFLL);
  concurrentContactQueryQueue = self->_concurrentContactQueryQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__PPContactStorage_FoundInApps__asyncFillResultsFromFoundInAppsWithQuery_explanationSet_group_results___block_invoke;
  v19[3] = &unk_2789799D0;
  v19[4] = self;
  v20 = queryCopy;
  v21 = setCopy;
  v22 = resultsCopy;
  v16 = resultsCopy;
  v17 = setCopy;
  v18 = queryCopy;
  dispatch_group_async(groupCopy, concurrentContactQueryQueue, v19);
}

void __103__PPContactStorage_FoundInApps__asyncFillResultsFromFoundInAppsWithQuery_explanationSet_group_results___block_invoke(uint64_t a1)
{
  v113 = *MEMORY[0x277D85DE8];
  v1 = pp_contacts_signpost_handle();
  spid = os_signpost_id_generate(v1);

  v2 = pp_contacts_signpost_handle();
  v3 = v2;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v3, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PPContactStorage.asyncFillResultsFromFoundInAppsWithQuery", "", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v75 = *(a1 + 40);
  v78 = v5;
  v77 = v4;
  if (v4)
  {
    v6 = pp_contacts_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v106 = v75;
      _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "PPLocalContactStore foundInAppsContactsWithQuery: %@", buf, 0xCu);
    }

    v7 = objc_opt_new();
    v93[0] = 0;
    v93[1] = v93;
    v93[2] = 0x2020000000;
    v94 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__PPContactStorage_FoundInApps___foundInAppsContactsWithQuery_explanationSet_error___block_invoke;
    aBlock[3] = &unk_278978108;
    v92 = v93;
    v73 = v7;
    v91 = v73;
    v79 = _Block_copy(aBlock);
    v8 = [v75 matchingIdentifiers];
    v9 = [v8 count] == 0;

    if (v9)
    {
      v76 = 0;
      v12 = 0;
    }

    else
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v10 = [v75 matchingIdentifiers];
      v11 = [v10 countByEnumeratingWithState:&v86 objects:buf count:16];
      if (v11)
      {
        v12 = 0;
        v81 = *v87;
        v76 = 0;
        obj = v10;
        do
        {
          v82 = v11;
          for (i = 0; i != v82; ++i)
          {
            if (*v87 != v81)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v86 + 1) + 8 * i);
            if ([MEMORY[0x277D3A358] sourceFromSourceIdentifier:v14] != 1)
            {
              v15 = v14;
              v16 = v78;
              v17 = objc_opt_new();
              v18 = pp_contacts_log_handle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(v108) = 138412290;
                *(&v108 + 4) = v15;
                _os_log_debug_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEBUG, "PPLocalContactStore foundInAppsContactsQueryWithIdentifier: %@", &v108, 0xCu);
              }

              v19 = [MEMORY[0x277D3A358] foundInAppsRecordIdentifierNumberWithIdentifier:v15 error:0];
              if (v19 < 0)
              {
                v28 = v17;
                v26 = v12;
              }

              else
              {
                v99 = 0;
                v100 = &v99;
                v101 = 0x2050000000;
                v20 = getSGRecordIdClass_softClass;
                v102 = getSGRecordIdClass_softClass;
                if (!getSGRecordIdClass_softClass)
                {
                  *&v108 = MEMORY[0x277D85DD0];
                  *(&v108 + 1) = 3221225472;
                  v109 = __getSGRecordIdClass_block_invoke;
                  v110 = &unk_2789792D0;
                  v111 = &v99;
                  __getSGRecordIdClass_block_invoke(&v108);
                  v20 = v100[3];
                }

                v21 = v20;
                _Block_object_dispose(&v99, 8);
                v22 = [v20 recordIdWithNumericValue:v19];
                *&v108 = 0;
                *(&v108 + 1) = &v108;
                v109 = 0x3032000000;
                v110 = __Block_byref_object_copy__11637;
                v111 = __Block_byref_object_dispose__11638;
                v112 = 0;
                v99 = 0;
                v100 = &v99;
                v101 = 0x3032000000;
                v102 = __Block_byref_object_copy__11637;
                v103 = __Block_byref_object_dispose__11638;
                v104 = 0;
                v23 = dispatch_semaphore_create(0);
                v24 = v77[6];
                v95[0] = MEMORY[0x277D85DD0];
                v95[1] = 3221225472;
                v95[2] = __94__PPContactStorage_FoundInApps___foundInAppsContactsQueryWithIdentifier_explanationSet_error___block_invoke;
                v95[3] = &unk_278974A50;
                v97 = &v99;
                v98 = &v108;
                v25 = v23;
                v96 = v25;
                [v24 contactFromRecordID:v22 withCompletion:v95];
                [MEMORY[0x277D425A0] waitForSemaphore:v25];
                if (v100[5])
                {
                  [v16 push:11];
                  +[PPQuickTypeMetrics frameworkError:errorCode:](PPQuickTypeMetrics, "frameworkError:errorCode:", @"SG", [v100[5] code]);
                  v26 = v100[5];
                  v27 = v26;
                  v28 = 0;
                }

                else
                {
                  v29 = pp_contacts_log_handle();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                  {
                    v35 = *(*(&v108 + 1) + 40);
                    *v107 = 138739971;
                    *&v107[4] = v35;
                    _os_log_debug_impl(&dword_23224A000, v29, OS_LOG_TYPE_DEBUG, "Matches from contactFromRecordID: %{sensitive}@", v107, 0xCu);
                  }

                  v30 = pp_contacts_log_handle();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                  {
                    v36 = *(*(&v108 + 1) + 40) != 0;
                    *v107 = 67109120;
                    *&v107[4] = v36;
                    _os_log_debug_impl(&dword_23224A000, v30, OS_LOG_TYPE_DEBUG, "Suggestions contactFromRecordID returned %d match", v107, 8u);
                  }

                  if (*(*(&v108 + 1) + 40))
                  {
                    v31 = objc_alloc(MEMORY[0x277D3A358]);
                    v32 = [v31 initWithFoundInAppsContact:*(*(&v108 + 1) + 40)];
                    [v17 addObject:v32];
                  }

                  v28 = v17;
                  v26 = v12;
                }

                _Block_object_dispose(&v99, 8);
                _Block_object_dispose(&v108, 8);
              }

              v33 = v26;
              v79[2](v79, v28);
              if (v33)
              {
                v34 = v33;
                v76 = v33;
              }

              v12 = v33;
            }
          }

          v10 = obj;
          v11 = [obj countByEnumeratingWithState:&v86 objects:buf count:16];
        }

        while (v11);
      }

      else
      {
        v76 = 0;
        v12 = 0;
      }
    }

    v37 = [v75 matchingName];
    v38 = [v37 length] == 0;

    if (v38)
    {
      v42 = v12;
    }

    else
    {
      v39 = [v75 matchingName];
      v95[0] = v12;
      v40 = [v77 nameFilterWithQuery:v75];
      v41 = [(PPContactStorage *)v77 _foundInAppsContactsQueryWithTerm:v39 explanationSet:v78 error:v95 filter:v40];
      v42 = v95[0];

      v79[2](v79, v41);
      if (v42)
      {
        v43 = v42;
        v76 = v42;
      }
    }

    v44 = [v75 matchingEmail];
    v45 = [v44 length] == 0;

    if (v45)
    {
      v49 = v42;
    }

    else
    {
      v46 = [v75 matchingEmail];
      *&v108 = v42;
      v47 = [v77 emailFilterWithQuery:v75];
      v48 = [(PPContactStorage *)v77 _foundInAppsContactsQueryWithTerm:v46 explanationSet:v78 error:&v108 filter:v47];
      v49 = v108;

      v79[2](v79, v48);
      if (v49)
      {
        v50 = v49;
        v76 = v49;
      }
    }

    v51 = [v75 matchingPhone];
    v52 = [v51 length] == 0;

    if (v52)
    {
      v56 = v49;
    }

    else
    {
      v53 = [v75 matchingPhone];
      v99 = v49;
      v54 = [v77 phoneFilterWithQuery:v75];
      v55 = [(PPContactStorage *)v77 _foundInAppsContactsQueryWithTerm:v53 explanationSet:v78 error:&v99 filter:v54];
      v56 = v99;

      v79[2](v79, v55);
      if (v56)
      {
        v57 = v56;
        v76 = v56;
      }
    }

    v58 = [v75 matchingPostalAddress];
    v59 = [v58 length] == 0;

    if (v59)
    {
      v63 = v56;
    }

    else
    {
      v60 = [v75 matchingPostalAddress];
      *v107 = v56;
      v61 = [v77 postalAddressFilterWithQuery:v75];
      v62 = [(PPContactStorage *)v77 _foundInAppsContactsQueryWithTerm:v60 explanationSet:v78 error:v107 filter:v61];
      v63 = *v107;

      v79[2](v79, v62);
      if (v63)
      {
        v64 = v63;
        v76 = v63;
      }
    }

    v65 = [v73 allObjects];

    _Block_object_dispose(v93, 8);
  }

  else
  {
    v76 = 0;
    v65 = 0;
  }

  v66 = v76;
  v67 = *(a1 + 56);
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __103__PPContactStorage_FoundInApps__asyncFillResultsFromFoundInAppsWithQuery_explanationSet_group_results___block_invoke_4;
  v83[3] = &unk_2789749D0;
  v84 = v65;
  v85 = v66;
  v68 = v66;
  v69 = v65;
  [v67 runWithLockAcquired:v83];
  v70 = pp_contacts_signpost_handle();
  v71 = v70;
  if (spid - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v70))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v71, OS_SIGNPOST_INTERVAL_END, spid, "PPContactStorage.asyncFillResultsFromFoundInAppsWithQuery", "", buf, 2u);
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 16));
}

void __103__PPContactStorage_FoundInApps__asyncFillResultsFromFoundInAppsWithQuery_explanationSet_group_results___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 joined])
  {
    v4 = pp_contacts_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) count];
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPLocalContactStore: _foundInAppsContactsWithQuery ignoring %tu contacts returned after timeout and join", &v8, 0xCu);
    }
  }

  else if (*(a1 + 32))
  {
    [v3 setFiaContacts:?];
  }

  else
  {
    v6 = pp_contacts_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPLocalContactStore: _foundInAppsContactsWithQuery error: %@", &v8, 0xCu);
    }

    [v3 setLatestError:*(a1 + 40)];
  }
}

uint64_t __84__PPContactStorage_FoundInApps___foundInAppsContactsWithQuery_explanationSet_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v3];
      [v4 intersectSet:v5];
    }

    else
    {
      [v4 addObjectsFromArray:v3];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (id)_foundInAppsContactsQueryWithTerm:(void *)term explanationSet:(void *)set error:(void *)error filter:
{
  v58 = *MEMORY[0x277D85DE8];
  v9 = a2;
  termCopy = term;
  errorCopy = error;
  v10 = objc_opt_new();
  v11 = pp_contacts_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_debug_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEBUG, "PPLocalContactStore foundInAppsContactsQueryWithTerm: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__11637;
  v56 = __Block_byref_object_dispose__11638;
  v57 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__11637;
  v48 = __Block_byref_object_dispose__11638;
  v49 = 0;
  v12 = dispatch_semaphore_create(0);
  v13 = *(self + 48);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __95__PPContactStorage_FoundInApps___foundInAppsContactsQueryWithTerm_explanationSet_error_filter___block_invoke;
  v40[3] = &unk_2789749F8;
  v42 = &v44;
  p_buf = &buf;
  v14 = v12;
  v41 = v14;
  [v13 suggestContactMatchesWithFullTextSearch:v9 limitTo:16 withCompletion:v40];
  [MEMORY[0x277D425A0] waitForSemaphore:v14];
  if (v45[5])
  {
    [termCopy push:11];
    +[PPQuickTypeMetrics frameworkError:errorCode:](PPQuickTypeMetrics, "frameworkError:errorCode:", @"SG", [v45[5] code]);
    v15 = 0;
    if (set)
    {
      *set = v45[5];
    }
  }

  else
  {
    v16 = pp_contacts_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(*(&buf + 1) + 40);
      *v51 = 138739971;
      v52 = v30;
      _os_log_debug_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEBUG, "Matches from suggestContactMatchesWithFullTextSearch: %{sensitive}@", v51, 0xCu);
    }

    v17 = pp_contacts_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v31 = [*(*(&buf + 1) + 40) count];
      *v51 = 134217984;
      v52 = v31;
      _os_log_debug_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEBUG, "Suggestions returned %tu matches", v51, 0xCu);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = *(*(&buf + 1) + 40);
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v50 count:16];
    if (v19)
    {
      v20 = *v37;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          contact = [v22 contact];

          if (contact)
          {
            v24 = objc_alloc(MEMORY[0x277D3A358]);
            contact2 = [v22 contact];
            v26 = [v24 initWithFoundInAppsContact:contact2];
            [v10 addObject:v26];
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v36 objects:v50 count:16];
      }

      while (v19);
    }

    v27 = MEMORY[0x277CCAC30];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __95__PPContactStorage_FoundInApps___foundInAppsContactsQueryWithTerm_explanationSet_error_filter___block_invoke_15;
    v34[3] = &unk_278974A28;
    v35 = errorCopy;
    v28 = [v27 predicateWithBlock:v34];
    v15 = [v10 filteredArrayUsingPredicate:v28];
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&buf, 8);

  return v15;
}

void __95__PPContactStorage_FoundInApps___foundInAppsContactsQueryWithTerm_explanationSet_error_filter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = pp_contacts_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "Error from Suggestions suggestContactMatchesWithFullTextSearch: %@", &v11, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __94__PPContactStorage_FoundInApps___foundInAppsContactsQueryWithIdentifier_explanationSet_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = pp_contacts_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "Error from Suggestions contactFromRecordID: %@", &v11, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)setChineseBirthdayFoundKVData
{
  db = self->_db;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__PPContactStorage_setChineseBirthdayFoundKVData__block_invoke;
  v3[3] = &unk_278978B68;
  v3[4] = self;
  [(PPSQLDatabase *)db writeTransactionWithClient:3 block:v3];
}

void __49__PPContactStorage_setChineseBirthdayFoundKVData__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEA90];
  v4 = a2;
  v5 = [[v3 alloc] initWithBytes:*(a1 + 32) + 80 length:1];
  [PPSQLKVStore storeBlob:v5 forKey:@"kPPContactStorageChineseBirthdayFoundKey" transaction:v4];
}

- (void)loadChineseBirthdayFoundKVData
{
  db = self->_db;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__PPContactStorage_loadChineseBirthdayFoundKVData__block_invoke;
  v3[3] = &unk_278976500;
  v3[4] = self;
  [(PPSQLDatabase *)db readTransactionWithClient:3 block:v3];
}

void __50__PPContactStorage_loadChineseBirthdayFoundKVData__block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 80) = 0;
  v3 = [PPSQLKVStore loadBlobForKey:@"kPPContactStorageChineseBirthdayFoundKey" transaction:a2];
  v4 = v3;
  if (v3)
  {
    [v3 getBytes:*(a1 + 32) + 80 length:1];
    v5 = pp_contacts_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1 + 32) + 80);
      v7[0] = 67436801;
      v7[1] = v6;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPContactStorage initialization: chineseBirthdayFound: %{sensitive}d", v7, 8u);
    }
  }
}

- (void)setCachedSignificantContactHandles:(id)handles
{
  handlesCopy = handles;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__PPContactStorage_setCachedSignificantContactHandles___block_invoke;
  v7[3] = &unk_278977BC0;
  v8 = @"DELETE FROM significant_contacts WHERE handle NOT IN _pas_nsset(:significantHandles)";
  v9 = handlesCopy;
  v10 = @"INSERT OR IGNORE INTO significant_contacts (handle) SELECT value FROM _pas_nsset(:significantHandles)";
  v6 = handlesCopy;
  [(PPSQLDatabase *)db writeTransactionWithClient:3 block:v7];
}

void __55__PPContactStorage_setCachedSignificantContactHandles___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__PPContactStorage_setCachedSignificantContactHandles___block_invoke_2;
  v10[3] = &unk_278978CF8;
  v5 = *(a1 + 32);
  v11 = *(a1 + 40);
  [v4 prepAndRunQuery:v5 onPrep:v10 onRow:&__block_literal_global_160_17844 onError:0];

  v6 = [v3 db];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__PPContactStorage_setCachedSignificantContactHandles___block_invoke_4;
  v8[3] = &unk_278978CF8;
  v7 = *(a1 + 48);
  v9 = *(a1 + 40);
  [v6 prepAndRunQuery:v7 onPrep:v8 onRow:&__block_literal_global_162_17845 onError:0];
}

- (id)contactHandleSourceCountsWithMinimumSourceCount:(unint64_t)count
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  db = self->_db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__PPContactStorage_contactHandleSourceCountsWithMinimumSourceCount___block_invoke;
  v13[3] = &unk_278976498;
  v14 = @"SELECT ch.value, COUNT(ch.id) as count FROM cn_handles ch LEFT JOIN cn_handles_sources chs ON ch.id = chs.cn_handle_id GROUP BY ch.id HAVING COUNT(ch.id) >= :minSourceCount";
  countCopy = count;
  v7 = v5;
  v15 = v7;
  [(PPSQLDatabase *)db readTransactionWithClient:3 block:v13];
  v8 = pp_contacts_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 count];
    *buf = 134217984;
    v18 = v9;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "contactHandleSourceCounts: returning %tu tuples", buf, 0xCu);
  }

  v10 = v15;
  v11 = v7;

  return v7;
}

void __68__PPContactStorage_contactHandleSourceCountsWithMinimumSourceCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__PPContactStorage_contactHandleSourceCountsWithMinimumSourceCount___block_invoke_2;
  v7[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v7[4] = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__PPContactStorage_contactHandleSourceCountsWithMinimumSourceCount___block_invoke_3;
  v5[3] = &unk_278978DB8;
  v6 = *(a1 + 40);
  [v3 prepAndRunQuery:v4 onPrep:v7 onRow:v5 onError:0];
}

uint64_t __68__PPContactStorage_contactHandleSourceCountsWithMinimumSourceCount___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"value" table:"cn_handles"];
  v5 = [v3 getInt64AsNSNumberForColumnAlias:"count"];

  v6 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v4 second:v5];
  [*(a1 + 32) addObject:v6];
  v7 = MEMORY[0x277D42690];

  return *v7;
}

- (unint64_t)pruneOrphanedHandlesWithTxnWitness:(id)witness
{
  v11[1] = *MEMORY[0x277D85DE8];
  witnessCopy = witness;
  v4 = [witnessCopy db];
  v5 = [v4 numberOfRowsInTable:@"cn_handles"];

  v6 = [witnessCopy db];
  v11[0] = @"DELETE FROM cn_handles WHERE id NOT IN (SELECT DISTINCT cn_handle_id FROM cn_handles_sources)";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v6 prepAndRunNonDataQueries:v7 onError:0];

  v8 = [witnessCopy db];

  v9 = [v8 numberOfRowsInTable:@"cn_handles"];
  return v5 - v9;
}

- (void)storeHandleSourceMapWithHandles:(id)handles sourceId:(int64_t)id txnWitness:(id)witness
{
  v22 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  witnessCopy = witness;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [handlesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(handlesCopy);
        }

        v14 = [(PPContactStorage *)self insertIfNeededAndFetchIdentifierWithHandle:*(*(&v17 + 1) + 8 * i) txnWitness:witnessCopy];
        v15 = [witnessCopy db];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __72__PPContactStorage_storeHandleSourceMapWithHandles_sourceId_txnWitness___block_invoke;
        v16[3] = &__block_descriptor_48_e29_v16__0___PASSqliteStatement_8l;
        v16[4] = v14;
        v16[5] = id;
        [v15 prepAndRunQuery:@"INSERT INTO cn_handles_sources (cn_handle_id onPrep:source_id) VALUES (:handleId onRow::sourceId)" onError:{v16, 0, 0}];
      }

      v11 = [handlesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

void __72__PPContactStorage_storeHandleSourceMapWithHandles_sourceId_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":handleId" toInt64:v3];
  [v4 bindNamedParam:":sourceId" toInt64:*(a1 + 40)];
}

- (int64_t)insertIfNeededAndFetchIdentifierWithHandle:(id)handle txnWitness:(id)witness
{
  handleCopy = handle;
  witnessCopy = witness;
  v9 = [PPContactStorage normalizeHandle:handleCopy];
  v10 = [witnessCopy db];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __74__PPContactStorage_insertIfNeededAndFetchIdentifierWithHandle_txnWitness___block_invoke;
  v24[3] = &unk_278978CF8;
  v11 = v9;
  v25 = v11;
  [v10 prepAndRunQuery:@"INSERT OR IGNORE INTO cn_handles (value) VALUES (:value)" onPrep:v24 onRow:0 onError:0];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v12 = [witnessCopy db];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__PPContactStorage_insertIfNeededAndFetchIdentifierWithHandle_txnWitness___block_invoke_2;
  v18[3] = &unk_278978CF8;
  v13 = v11;
  v19 = v13;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__PPContactStorage_insertIfNeededAndFetchIdentifierWithHandle_txnWitness___block_invoke_3;
  v17[3] = &unk_278976450;
  v17[4] = &v20;
  [v12 prepAndRunQuery:@"SELECT id FROM cn_handles WHERE value = :value" onPrep:v18 onRow:v17 onError:0];

  v14 = v21[3];
  if (v14 <= 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPContactStorage.m" lineNumber:340 description:@"Failed to find handle in cn_handles"];

    v14 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  return v14;
}

- (id)sourcesForContactHandle:(id)handle
{
  handleCopy = handle;
  v5 = objc_opt_new();
  db = self->_db;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__PPContactStorage_sourcesForContactHandle___block_invoke;
  v12[3] = &unk_278976400;
  v13 = @"SELECT hs.source_id FROM cn_handles_sources hs LEFT JOIN cn_handles h ON h.id = hs.cn_handle_id WHERE h.value = :contactHandle";
  v14 = handleCopy;
  v7 = v5;
  v15 = v7;
  v8 = handleCopy;
  [(PPSQLDatabase *)db readTransactionWithClient:3 block:v12];
  v9 = v15;
  v10 = v7;

  return v7;
}

void __44__PPContactStorage_sourcesForContactHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PPContactStorage_sourcesForContactHandle___block_invoke_2;
  v7[3] = &unk_278978CF8;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PPContactStorage_sourcesForContactHandle___block_invoke_3;
  v5[3] = &unk_278978DB8;
  v6 = *(a1 + 48);
  [v3 prepAndRunQuery:v4 onPrep:v7 onRow:v5 onError:0];
}

void __44__PPContactStorage_sourcesForContactHandle___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [PPContactStorage normalizeHandle:v2];
  [v3 bindNamedParam:":contactHandle" toNSString:v4];
}

uint64_t __44__PPContactStorage_sourcesForContactHandle___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getInt64AsNSNumberForColumnName:"source_id" table:"cn_handles_sources"];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

- (id)contactHandlesForSource:(id)source
{
  sourceCopy = source;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  db = self->_db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__PPContactStorage_contactHandlesForSource___block_invoke;
  v13[3] = &unk_278976428;
  v8 = sourceCopy;
  v14 = v8;
  v9 = v6;
  v15 = v9;
  [(PPSQLDatabase *)db readTransactionWithClient:3 block:v13];
  v10 = v15;
  v11 = v9;

  objc_autoreleasePoolPop(v5);

  return v11;
}

void __44__PPContactStorage_contactHandlesForSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PPContactStorage_contactHandlesForSource___block_invoke_2;
  v6[3] = &unk_278978CF8;
  v7 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__PPContactStorage_contactHandlesForSource___block_invoke_3;
  v4[3] = &unk_278978DB8;
  v5 = *(a1 + 40);
  [v3 prepAndRunQuery:@"SELECT h.value FROM sources src LEFT JOIN cn_handles_sources hs ON hs.source_id = src.id LEFT JOIN cn_handles h ON h.id = hs.cn_handle_id WHERE src.sha256 = :sha256 " onPrep:v6 onRow:v4 onError:0];
}

void __44__PPContactStorage_contactHandlesForSource___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sha256];
  [v3 bindNamedParam:":sha256" toNSData:v4];
}

uint64_t __44__PPContactStorage_contactHandlesForSource___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnName:"value" table:"cn_handles"];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

- (id)contactHandlesForTopics:(id)topics
{
  v28 = *MEMORY[0x277D85DE8];
  topicsCopy = topics;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = topicsCopy;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        topicIdentifier = [*(*(&v23 + 1) + 8 * v11) topicIdentifier];
        [v6 addObject:topicIdentifier];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  db = self->_db;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__PPContactStorage_contactHandlesForTopics___block_invoke;
  v19[3] = &unk_278976400;
  v20 = @"SELECT value, count(*) AS num_handles FROM cn_handles h JOIN cn_handles_sources hs ON h.id = hs.cn_handle_id WHERE hs.source_id IN (SELECT DISTINCT source_id FROM tp_records r WHERE r.topic_id IN _pas_nsarray(?)) GROUP BY value ORDER BY num_handles DESC";
  v21 = v6;
  v14 = v5;
  v22 = v14;
  v15 = v6;
  [(PPSQLDatabase *)db readTransactionWithClient:3 block:v19];
  v16 = v22;
  v17 = v14;

  return v14;
}

void __44__PPContactStorage_contactHandlesForTopics___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PPContactStorage_contactHandlesForTopics___block_invoke_2;
  v7[3] = &unk_278978CF8;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PPContactStorage_contactHandlesForTopics___block_invoke_3;
  v5[3] = &unk_278978DB8;
  v6 = *(a1 + 48);
  [v3 prepAndRunQuery:v4 onPrep:v7 onRow:v5 onError:0];
}

uint64_t __44__PPContactStorage_contactHandlesForTopics___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnAlias:"value"];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

- (id)postalAddressFilterWithQuery:(id)query
{
  v3 = MEMORY[0x277D3A460];
  matchingPostalAddress = [query matchingPostalAddress];
  v5 = [v3 normalizeAddressString:matchingPostalAddress];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PPContactStorage_postalAddressFilterWithQuery___block_invoke;
  aBlock[3] = &unk_2789763D8;
  v10 = v5;
  v6 = v5;
  v7 = _Block_copy(aBlock);

  return v7;
}

uint64_t __49__PPContactStorage_postalAddressFilterWithQuery___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 postalAddresses];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 value];
        v11 = [v10 singleLineNormalizedAddressString];

        if (v11 && (_PASInsensitiveStringContainsString() & 1) != 0)
        {

          objc_autoreleasePoolPop(v9);
          v12 = 1;
          goto LABEL_12;
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)phoneFilterWithQuery:(id)query
{
  queryCopy = query;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__PPContactStorage_phoneFilterWithQuery___block_invoke;
  aBlock[3] = &unk_2789763D8;
  v8 = queryCopy;
  v4 = queryCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

uint64_t __41__PPContactStorage_phoneFilterWithQuery___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) matchingPhone];
  v5 = PPRemovePhoneExtensionAndNonDigits(v4);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v3 phoneNumbers];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) value];
        v11 = PPRemovePhoneExtensionAndNonDigits(v10);

        LOBYTE(v10) = [v11 containsString:v5];
        if (v10)
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)nameFilterWithQuery:(id)query
{
  queryCopy = query;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__PPContactStorage_nameFilterWithQuery___block_invoke;
  aBlock[3] = &unk_2789763D8;
  v8 = queryCopy;
  v4 = queryCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

uint64_t __40__PPContactStorage_nameFilterWithQuery___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 localizedFullName];
  v4 = [*(a1 + 32) matchingName];
  v5 = _PASInsensitiveStringContainsString();

  return v5;
}

- (id)emailFilterWithQuery:(id)query
{
  queryCopy = query;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__PPContactStorage_emailFilterWithQuery___block_invoke;
  aBlock[3] = &unk_2789763D8;
  v8 = queryCopy;
  v4 = queryCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

uint64_t __41__PPContactStorage_emailFilterWithQuery___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 emailAddresses];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 value];
        v12 = [*(a1 + 32) matchingEmail];
        v13 = _PASInsensitiveStringContainsString();

        objc_autoreleasePoolPop(v10);
        if (v13)
        {
          v14 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)_waitForGroup:(id)group results:(id)results timeoutSeconds:(double)seconds explanationSet:(id)set
{
  groupCopy = group;
  resultsCopy = results;
  setCopy = set;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__17916;
  v30 = __Block_byref_object_dispose__17917;
  v31 = 0;
  v13 = MEMORY[0x277D425A0];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __72__PPContactStorage__waitForGroup_results_timeoutSeconds_explanationSet___block_invoke;
  v23[3] = &unk_278976388;
  v25 = &v26;
  v23[4] = self;
  v24 = resultsCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__PPContactStorage__waitForGroup_results_timeoutSeconds_explanationSet___block_invoke_2;
  v18[3] = &unk_2789763B0;
  v14 = setCopy;
  v22 = &v26;
  v19 = v14;
  selfCopy = self;
  v15 = v24;
  v21 = v15;
  [v13 waitForGroup:groupCopy timeoutSeconds:v23 onGroupComplete:v18 onTimeout:seconds];
  v16 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v16;
}

uint64_t __72__PPContactStorage__waitForGroup_results_timeoutSeconds_explanationSet___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _joinResults:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

void __72__PPContactStorage__waitForGroup_results_timeoutSeconds_explanationSet___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = pp_contacts_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPLocalContactStore: contactsWithQuery: timed out waiting on SG and/or CN queries", v8, 2u);
  }

  [*(a1 + 32) push:49];
  v5 = [*(a1 + 40) _joinResults:*(a1 + 48)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_waitForGroup:(id)group results:(id)results
{
  v6 = MEMORY[0x277D425A0];
  resultsCopy = results;
  [v6 waitForGroup:group];
  v8 = [(PPContactStorage *)self _joinResults:resultsCopy];

  return v8;
}

- (id)_joinResults:(id)results
{
  resultsCopy = results;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__PPContactStorage__joinResults___block_invoke;
  v7[3] = &unk_278976360;
  v5 = v4;
  v8 = v5;
  [resultsCopy runWithLockAcquired:v7];

  return v5;
}

void __33__PPContactStorage__joinResults___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 cnContacts];
  v5 = [v4 count];

  if (v5)
  {
    v6 = pp_contacts_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 cnContacts];
      v20 = 134217984;
      v21 = [v7 count];
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPLocalContactStore: contactsWithQuery: found %tu contacts from Contacts", &v20, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = [v3 cnContacts];
    [v8 addObjectsFromArray:v9];
  }

  v10 = [v3 fiaContacts];
  v11 = [v10 count];

  if (v11)
  {
    v12 = pp_contacts_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v3 fiaContacts];
      v14 = [v13 count];
      v20 = 134217984;
      v21 = v14;
      _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPLocalContactStore: contactsWithQuery: found %tu contacts from Found in Apps", &v20, 0xCu);
    }

    v15 = *(a1 + 32);
    v16 = [v3 fiaContacts];
    [v15 addObjectsFromArray:v16];
  }

  [v3 setJoined:1];
  v17 = [v3 cnContacts];
  v18 = [v17 count];
  v19 = [v3 fiaContacts];
  +[PPQuickTypeMetrics contactMatchesWithContactsCount:foundInAppsCount:](PPQuickTypeMetrics, "contactMatchesWithContactsCount:foundInAppsCount:", v18, [v19 count]);
}

- (id)contactsWithQuery:(id)query explanationSet:(id)set timeoutSeconds:(id)seconds error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  setCopy = set;
  secondsCopy = seconds;
  v12 = pp_contacts_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = queryCopy;
    v21 = 2112;
    v22 = setCopy;
    v23 = 2112;
    v24 = secondsCopy;
    _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "contactsWithQuery: %@ e:%@ t:%@", &v19, 0x20u);
  }

  v13 = objc_alloc(MEMORY[0x277D425F8]);
  v14 = objc_opt_new();
  v15 = [v13 initWithGuardedData:v14];

  v16 = dispatch_group_create();
  [(PPContactStorage *)self asyncFillResultsFromFoundInAppsWithQuery:queryCopy explanationSet:setCopy group:v16 results:v15];
  [(PPContactStorage *)self asyncFillResultsFromContactsWithQuery:queryCopy explanationSet:setCopy group:v16 results:v15];
  if (secondsCopy)
  {
    [secondsCopy doubleValue];
    [(PPContactStorage *)self _waitForGroup:v16 results:v15 timeoutSeconds:setCopy explanationSet:?];
  }

  else
  {
    [(PPContactStorage *)self _waitForGroup:v16 results:v15];
  }
  v17 = ;

  return v17;
}

- (PPContactStorage)initWithDatabase:(id)database foundInAppsHarvestStoreGetter:(id)getter
{
  location[3] = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  getterCopy = getter;
  v45.receiver = self;
  v45.super_class = PPContactStorage;
  v9 = [(PPContactStorage *)&v45 init];
  if (v9)
  {
    v10 = dispatch_semaphore_create(2);
    concurrentContactQueryThrottleSem = v9->_concurrentContactQueryThrottleSem;
    v9->_concurrentContactQueryThrottleSem = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = qos_class_self();
    v14 = dispatch_queue_attr_make_with_qos_class(v12, v13, 0);

    v15 = dispatch_queue_create("PPLocalContactStore.contactsWithQuery", v14);
    concurrentContactQueryQueue = v9->_concurrentContactQueryQueue;
    v9->_concurrentContactQueryQueue = v15;

    v17 = PPSharedCNContactStore();
    contactsStore = v9->_contactsStore;
    v9->_contactsStore = v17;

    v19 = PPSharedSuggestionsContactService();
    foundInAppsService = v9->_foundInAppsService;
    v9->_foundInAppsService = v19;

    if (getterCopy)
    {
      v21 = getterCopy;
    }

    else
    {
      v21 = &__block_literal_global_17931;
    }

    v22 = _Block_copy(v21);
    foundInAppsHarvestStoreGetter = v9->_foundInAppsHarvestStoreGetter;
    v9->_foundInAppsHarvestStoreGetter = v22;

    v24 = objc_autoreleasePoolPush();
    parentDirectory = [databaseCopy parentDirectory];
    v26 = [parentDirectory stringByAppendingPathComponent:@"Contacts"];

    objc_autoreleasePoolPop(v24);
    path = v9->_path;
    v9->_path = v26;

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    objc_sync_enter(defaultManager);
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v30 = v9->_path;
    v44 = 0;
    v31 = [defaultManager2 createDirectoryAtPath:v30 withIntermediateDirectories:1 attributes:0 error:&v44];
    v32 = v44;

    if (v31)
    {
      v33 = [[PPContactDiskCacheManager alloc] initWithPath:v9->_path];
      contactCacheManager = v9->_contactCacheManager;
      v9->_contactCacheManager = v33;

      v35 = [[PPMeCardCacheManager alloc] initWithPath:v9->_path];
      p_super = &v9->_meCardCacheManager->super;
      v9->_meCardCacheManager = v35;
    }

    else
    {
      p_super = pp_default_log_handle();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v32;
        _os_log_fault_impl(&dword_23224A000, p_super, OS_LOG_TYPE_FAULT, "PPContactStorage: failed to create Contacts subdirectory: %@", location, 0xCu);
      }
    }

    objc_sync_exit(defaultManager);
    objc_storeStrong(&v9->_db, database);
    objc_initWeak(location, v9);
    v37 = MEMORY[0x277D3A458];
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __67__PPContactStorage_initWithDatabase_foundInAppsHarvestStoreGetter___block_invoke_71;
    v42 = &unk_2789797B8;
    objc_copyWeak(&v43, location);
    [v37 addMeCardObserverForLifetimeOfObject:v9 block:&v39];
    [(PPContactStorage *)v9 loadChineseBirthdayFoundKVData:v39];
    objc_destroyWeak(&v43);
    objc_destroyWeak(location);
  }

  return v9;
}

void __67__PPContactStorage_initWithDatabase_foundInAppsHarvestStoreGetter___block_invoke_71(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[5] accessCacheWithBlock:&__block_literal_global_74];
    WeakRetained = v2;
  }
}

+ (id)normalizeHandle:(id)handle
{
  handleCopy = handle;
  v6 = handleCopy;
  if (handleCopy)
  {
    v13 = 0;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPContactStorage.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"handle"}];

    v13 = 0;
    handleCopy = 0;
  }

  PPStringNormalizationTypeCheck(handleCopy, &v13, &v13 + 1);
  if (v13 == 1)
  {
    v7 = PPNormalizeEmailAddress(v6);
  }

  else if (HIBYTE(v13) == 1)
  {
    v7 = PPNormalizePhoneNumber(v6);
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  if ([v7 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

@end