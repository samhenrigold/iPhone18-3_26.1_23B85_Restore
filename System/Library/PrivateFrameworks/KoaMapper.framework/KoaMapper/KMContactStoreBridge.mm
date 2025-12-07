@interface KMContactStoreBridge
+ (id)_contactFetchKeys;
- (BOOL)_checkAuthorization;
- (BOOL)enumerateDeltaItemsWithError:(id *)error addOrUpdateBlock:(id)block removeBlock:(id)removeBlock;
- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block;
- (BOOL)wasLastDonationAccepted;
- (KMContactStoreBridge)initWithContactStore:(id)store historyLog:(id)log;
- (KMContactStoreBridge)initWithDirectory:(id)directory;
- (id)_fetchContactsWithIdentifiers:(id)identifiers error:(id *)error;
@end

@implementation KMContactStoreBridge

- (BOOL)_checkAuthorization
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0];
  if (v2 != 3)
  {
    v3 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[KMContactStoreBridge _checkAuthorization]";
      _os_log_error_impl(&dword_2559DF000, v3, OS_LOG_TYPE_ERROR, "%s Not Authorized to access contacts using CNContactStore.", &v5, 0xCu);
    }
  }

  return v2 == 3;
}

- (BOOL)enumerateDeltaItemsWithError:(id *)error addOrUpdateBlock:(id)block removeBlock:(id)removeBlock
{
  v72 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  removeBlockCopy = removeBlock;
  if (![(KMContactStoreBridge *)self _checkAuthorization])
  {
    v17 = 0;
    goto LABEL_66;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBDA50]);
  [v9 setStartingToken:self->_historyToken];
  contactStore = self->_contactStore;
  v64 = 0;
  v11 = [(CNContactStore *)contactStore enumeratorForChangeHistoryFetchRequest:v9 error:&v64];
  v12 = v64;
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v14 = v12;
    v15 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v66 = "[KMContactStoreBridge enumerateDeltaItemsWithError:addOrUpdateBlock:removeBlock:]";
      v67 = 2112;
      v68 = v14;
      _os_log_error_impl(&dword_2559DF000, v15, OS_LOG_TYPE_ERROR, "%s Unable to fetch contact change history with error: %@", buf, 0x16u);
    }

    v16 = v14;
    KVSetError();
    v17 = 0;
    goto LABEL_65;
  }

  v50 = v9;
  v18 = objc_alloc_init(KMDeltaContactCollector);
  v57 = v11;
  value = [v11 value];
  nextObject = [value nextObject];

  v56 = 0;
  do
  {
    v21 = 0;
    v22 = nextObject;
    while (1)
    {
      v23 = objc_autoreleasePoolPush();
      [v22 acceptEventVisitor:v18];
      if ([(KMDeltaContactCollector *)v18 dropEverything]&& self->_historyToken)
      {
        v44 = KMLogContextCore;
        if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v66 = "[KMContactStoreBridge enumerateDeltaItemsWithError:addOrUpdateBlock:removeBlock:]";
          _os_log_impl(&dword_2559DF000, v44, OS_LOG_TYPE_INFO, "%s Received drop everything change history event. Reset is required.", buf, 0xCu);
        }

        goto LABEL_58;
      }

      contactIdentifier = [(KMDeltaContactCollector *)v18 contactIdentifier];
      deltaType = [(KMDeltaContactCollector *)v18 deltaType];
      if ((deltaType - 1) >= 2)
      {
        if (deltaType != 3)
        {
          goto LABEL_26;
        }

        if (contactIdentifier)
        {
          if (removeBlockCopy[2](removeBlockCopy, contactIdentifier))
          {
            goto LABEL_26;
          }

LABEL_58:
          objc_autoreleasePoolPop(v23);
          v17 = 0;
LABEL_59:
          v11 = v57;
          v9 = v50;
          goto LABEL_64;
        }

        v26 = KMLogContextCore;
        if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (!contactIdentifier)
        {
          v26 = KMLogContextCore;
          if (!os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

LABEL_36:
          *buf = 136315394;
          v66 = "[KMContactStoreBridge enumerateDeltaItemsWithError:addOrUpdateBlock:removeBlock:]";
          v67 = 2112;
          v68 = v22;
          _os_log_error_impl(&dword_2559DF000, v26, OS_LOG_TYPE_ERROR, "%s Skipping change history event: %@ missing contact identifier.", buf, 0x16u);
          goto LABEL_26;
        }

        if (!v21)
        {
          v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:250];
        }

        [v21 addObject:contactIdentifier];
      }

LABEL_26:
      [(KMDeltaContactCollector *)v18 reset];
      value2 = [v57 value];
      nextObject = [value2 nextObject];

      v28 = [v21 count];
      v29 = v28 && nextObject == 0;
      v30 = v29;
      if (v28 == 250 || v30)
      {
        break;
      }

      objc_autoreleasePoolPop(v23);
      v22 = nextObject;
      if (!nextObject)
      {
        goto LABEL_63;
      }
    }

    v63 = v56;
    selfCopy = self;
    v31 = [(KMContactStoreBridge *)self _fetchContactsWithIdentifiers:v21 error:&v63];
    v32 = v63;

    if (!v31)
    {

      objc_autoreleasePoolPop(v23);
      v45 = v32;
      goto LABEL_62;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v31;
    v53 = [obj countByEnumeratingWithState:&v59 objects:v71 count:16];
    if (v53)
    {
      v49 = removeBlockCopy;
      v54 = blockCopy;
      v52 = *v60;
      v33 = v32;
      while (2)
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v60 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v59 + 1) + 8 * i);
          v36 = objc_autoreleasePoolPush();
          itemMapper = selfCopy->_itemMapper;
          mapperAdditionalFields = selfCopy->_mapperAdditionalFields;
          v58 = v33;
          v39 = [(KVItemMapper *)itemMapper mapObject:v35 additionalFields:mapperAdditionalFields error:&v58];
          v56 = v58;

          if ([v39 count] != 1)
          {
            v43 = KMLogContextCore;
            removeBlockCopy = v49;
            if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v66 = "[KMContactStoreBridge enumerateDeltaItemsWithError:addOrUpdateBlock:removeBlock:]";
              v67 = 2112;
              v68 = v39;
              v69 = 2112;
              v70 = v56;
              _os_log_error_impl(&dword_2559DF000, v43, OS_LOG_TYPE_ERROR, "%s Unexepected items: %@ error: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v36);
            v42 = 1;
            blockCopy = v54;
            goto LABEL_52;
          }

          firstObject = [v39 firstObject];
          v41 = v54[2](v54, firstObject);

          objc_autoreleasePoolPop(v36);
          if (!v41)
          {

            objc_autoreleasePoolPop(v23);
            v17 = 0;
            v22 = nextObject;
            blockCopy = v54;
            removeBlockCopy = v49;
            v9 = v50;
            v11 = v57;
            goto LABEL_64;
          }

          v33 = v56;
        }

        v33 = v56;
        v53 = [obj countByEnumeratingWithState:&v59 objects:v71 count:16];
        if (v53)
        {
          continue;
        }

        break;
      }

      v42 = 0;
      blockCopy = v54;
      removeBlockCopy = v49;
    }

    else
    {
      v42 = 0;
      v56 = v32;
    }

LABEL_52:
    self = selfCopy;

    objc_autoreleasePoolPop(v23);
  }

  while (nextObject && (v42 & 1) == 0);
  v21 = 0;
  v45 = v56;
  if (v42)
  {
LABEL_62:
    v56 = v45;
    KVSetError();
    v17 = 0;
    v22 = nextObject;
    goto LABEL_59;
  }

LABEL_63:
  v11 = v57;
  v9 = v50;
  currentHistoryToken = [v57 currentHistoryToken];
  historyToken = self->_historyToken;
  self->_historyToken = currentHistoryToken;

  v17 = 1;
  v22 = nextObject;
LABEL_64:

  v16 = v56;
LABEL_65:

LABEL_66:
  return v17;
}

- (id)_fetchContactsWithIdentifiers:(id)identifiers error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v6 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:identifiersCopy];
  contactStore = self->_contactStore;
  _contactFetchKeys = [objc_opt_class() _contactFetchKeys];
  v17 = 0;
  v9 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v6 keysToFetch:_contactFetchKeys error:&v17];
  v10 = v17;

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = v12;
      v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(identifiersCopy, "count")}];
      *buf = 136315650;
      v19 = "[KMContactStoreBridge _fetchContactsWithIdentifiers:error:]";
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v10;
      _os_log_error_impl(&dword_2559DF000, v15, OS_LOG_TYPE_ERROR, "%s Unable to fetch contacts from identifiers in batch (%@) error: %@", buf, 0x20u);
    }

    KVSetError();
  }

  return v9;
}

- (BOOL)wasLastDonationAccepted
{
  getDonationStartTime = [(KMProviderHistoryLog *)self->_log getDonationStartTime];
  getDonationEndTime = [(KMProviderHistoryLog *)self->_log getDonationEndTime];
  v5 = [getDonationEndTime compare:getDonationStartTime] == 1;

  return v5;
}

- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block
{
  blockCopy = block;
  if ([(KMContactStoreBridge *)self _checkAuthorization])
  {
    v6 = objc_alloc(MEMORY[0x277CBDA70]);
    _contactFetchKeys = [objc_opt_class() _contactFetchKeys];
    v8 = [v6 initWithKeysToFetch:_contactFetchKeys];

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__1422;
    v18[4] = __Block_byref_object_dispose__1423;
    v19 = 0;
    contactStore = self->_contactStore;
    v16 = &v20;
    obj = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__KMContactStoreBridge_enumerateItemsWithError_usingBlock___block_invoke;
    v13[3] = &unk_279805C80;
    v13[4] = self;
    v15 = v18;
    v14 = blockCopy;
    v10 = [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v8 error:&obj usingBlock:v13];
    objc_storeStrong(&v19, obj);
    if (v10 && *(v21 + 24) != 1)
    {
      v11 = 1;
    }

    else
    {
      KVSetError();
      v11 = 0;
    }

    _Block_object_dispose(v18, 8);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __59__KMContactStoreBridge_enumerateItemsWithError_usingBlock___block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v6 = *(v5 + 16);
  v7 = *(v5 + 40);
  v8 = *(a1[6] + 8);
  obj = *(v8 + 40);
  v9 = [v6 mapObject:a2 additionalFields:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if ([v9 count] == 1)
  {
    v10 = a1[5];
    v11 = [v9 firstObject];
    LOBYTE(v10) = (*(v10 + 16))(v10, v11);

    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(a1[6] + 8) + 40);
      *buf = 136315650;
      v16 = "[KMContactStoreBridge enumerateItemsWithError:usingBlock:]_block_invoke";
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v13;
      _os_log_error_impl(&dword_2559DF000, v12, OS_LOG_TYPE_ERROR, "%s Unexepected items: %@ error: %@", buf, 0x20u);
    }
  }

  *(*(a1[7] + 8) + 24) = 1;
  *a3 = 1;
LABEL_7:
}

- (KMContactStoreBridge)initWithContactStore:(id)store historyLog:(id)log
{
  v27 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  logCopy = log;
  v22.receiver = self;
  v22.super_class = KMContactStoreBridge;
  v9 = [(KMContactStoreBridge *)&v22 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v9->_log, log);
  if (!v10->_log)
  {
    v17 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "[KMContactStoreBridge initWithContactStore:historyLog:]";
      v18 = "%s nil history log.";
LABEL_11:
      _os_log_error_impl(&dword_2559DF000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
    }

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  objc_storeStrong(&v10->_contactStore, store);
  if (!v10->_contactStore)
  {
    v17 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "[KMContactStoreBridge initWithContactStore:historyLog:]";
      v18 = "%s nil contactStore.";
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v21 = 0;
  v11 = [objc_alloc(MEMORY[0x277D22D30]) initWithObjectClass:objc_opt_class() error:&v21];
  v12 = v21;
  itemMapper = v10->_itemMapper;
  v10->_itemMapper = v11;

  if (!v10->_itemMapper)
  {
    v19 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[KMContactStoreBridge initWithContactStore:historyLog:]";
      v25 = 2112;
      v26 = v12;
      _os_log_error_impl(&dword_2559DF000, v19, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  getHistoryToken = [(KMProviderHistoryLog *)v10->_log getHistoryToken];
  historyToken = v10->_historyToken;
  v10->_historyToken = getHistoryToken;

  v10->_version = [(KMProviderHistoryLog *)v10->_log getVersion]+ 1;
LABEL_6:
  v16 = v10;
LABEL_16:

  return v16;
}

- (KMContactStoreBridge)initWithDirectory:(id)directory
{
  directoryCopy = directory;
  v5 = [KMProviderHistoryLog alloc];
  v6 = [(KMProviderHistoryLog *)v5 initWithDirectory:directoryCopy originAppId:*MEMORY[0x277D22CD8]];

  v7 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v8 = [(KMContactStoreBridge *)self initWithContactStore:v7 historyLog:v6];

  return v8;
}

+ (id)_contactFetchKeys
{
  v14[21] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBD000];
  v14[0] = *MEMORY[0x277CBD068];
  v14[1] = v2;
  v3 = *MEMORY[0x277CBCFF8];
  v14[2] = *MEMORY[0x277CBD058];
  v14[3] = v3;
  v4 = *MEMORY[0x277CBD070];
  v14[4] = *MEMORY[0x277CBD0E0];
  v14[5] = v4;
  v5 = *MEMORY[0x277CBD090];
  v14[6] = *MEMORY[0x277CBD078];
  v14[7] = v5;
  v6 = *MEMORY[0x277CBD040];
  v14[8] = *MEMORY[0x277CBCFB8];
  v14[9] = v6;
  v7 = *MEMORY[0x277CBCFC0];
  v14[10] = *MEMORY[0x277CBD098];
  v14[11] = v7;
  v8 = *MEMORY[0x277CBD168];
  v14[12] = *MEMORY[0x277CBD0C8];
  v14[13] = v8;
  v9 = *MEMORY[0x277CBD038];
  v14[14] = *MEMORY[0x277CBD138];
  v14[15] = v9;
  v10 = *MEMORY[0x277CBD0B0];
  v14[16] = *MEMORY[0x277CBD120];
  v14[17] = v10;
  v11 = *MEMORY[0x277CBD0A8];
  v14[18] = *MEMORY[0x277CBD0B8];
  v14[19] = v11;
  v14[20] = *MEMORY[0x277CBD0C0];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:21];

  return v12;
}

@end