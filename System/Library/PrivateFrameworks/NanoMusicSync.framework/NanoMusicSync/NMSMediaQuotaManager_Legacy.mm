@interface NMSMediaQuotaManager_Legacy
- (BOOL)isItemGroupWithinQuota:(id)quota;
- (NMSMediaQuotaManager_Legacy)initWithGroupIterators:(id)iterators quota:(unint64_t)quota;
- (id)_containerListForBundleIdentifier:(id)identifier;
- (id)downloadInfoWithinQuota;
- (id)downloadInfoWithinQuotaForBundleIdentifier:(id)identifier;
- (id)groupIteratorForBundleIdentifier:(id)identifier;
- (unint64_t)sizeOfItemsWithinQuotaForBundleIdentifier:(id)identifier;
- (unint64_t)sizeOfNominatedItemsForBundleIdentifier:(id)identifier;
- (void)_evaluateAddedItemsIfNecessary;
@end

@implementation NMSMediaQuotaManager_Legacy

- (NMSMediaQuotaManager_Legacy)initWithGroupIterators:(id)iterators quota:(unint64_t)quota
{
  iteratorsCopy = iterators;
  v15.receiver = self;
  v15.super_class = NMSMediaQuotaManager_Legacy;
  v7 = [(NMSMediaQuotaManager_Legacy *)&v15 init];
  if (v7)
  {
    v8 = [iteratorsCopy copy];
    groupIterators = v7->_groupIterators;
    v7->_groupIterators = v8;

    v7->_quota = quota;
    v10 = [NMSMediaDownloadInfo alloc];
    v11 = objc_opt_new();
    v12 = [(NMSMediaDownloadInfo *)v10 initWithItems:v11];
    downloadInfoWithinQuota = v7->_downloadInfoWithinQuota;
    v7->_downloadInfoWithinQuota = v12;

    v7->_quotaUsage = 0;
    v7->_hasEvaluated = 0;
  }

  return v7;
}

- (id)groupIteratorForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v5 = [(NSDictionary *)self->_groupIterators objectForKey:identifierCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)downloadInfoWithinQuota
{
  [(NMSMediaQuotaManager_Legacy *)self _evaluateAddedItemsIfNecessary];
  downloadInfoWithinQuota = self->_downloadInfoWithinQuota;

  return downloadInfoWithinQuota;
}

- (id)downloadInfoWithinQuotaForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(NMSMediaQuotaManager_Legacy *)self _evaluateAddedItemsIfNecessary];
  v5 = [(NMSMediaQuotaManager_Legacy *)self _containerListForBundleIdentifier:identifierCopy];

  downloadInfoWithinQuota = [v5 downloadInfoWithinQuota];

  return downloadInfoWithinQuota;
}

- (unint64_t)sizeOfItemsWithinQuotaForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(NMSMediaQuotaManager_Legacy *)self _evaluateAddedItemsIfNecessary];
  v5 = [(NMSMediaQuotaManager_Legacy *)self _containerListForBundleIdentifier:identifierCopy];

  sizeForItemListWithinQuota = [v5 sizeForItemListWithinQuota];
  return sizeForItemListWithinQuota;
}

- (unint64_t)sizeOfNominatedItemsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(NMSMediaQuotaManager_Legacy *)self _evaluateAddedItemsIfNecessary];
  v5 = [(NMSMediaQuotaManager_Legacy *)self _containerListForBundleIdentifier:identifierCopy];

  nominatedItemSize = [v5 nominatedItemSize];
  return nominatedItemSize;
}

- (BOOL)isItemGroupWithinQuota:(id)quota
{
  v45 = *MEMORY[0x277D85DE8];
  quotaCopy = quota;
  [(NMSMediaQuotaManager_Legacy *)self _evaluateAddedItemsIfNecessary];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  allValues = [(NSDictionary *)self->_groupIterators allValues];
  v29 = [allValues countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v29)
  {
    v5 = *v40;
    v31 = allValues;
    v28 = *v40;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v40 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        v30 = v6;
        v7 = *(*(&v39 + 1) + 8 * v6);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        itemGroups = [v7 itemGroups];
        v9 = [itemGroups countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (!v9)
        {
          goto LABEL_24;
        }

        v10 = v9;
        v11 = *v36;
        v33 = itemGroups;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v36 != v11)
            {
              objc_enumerationMutation(itemGroups);
            }

            v13 = *(*(&v35 + 1) + 8 * i);
            iteratingOrder = [v7 iteratingOrder];
            if (iteratingOrder == 1)
            {
              quotaData = [v13 quotaData];
              if ([quotaData numItemsAdded])
              {
                goto LABEL_21;
              }

              quotaData2 = [v13 quotaData];
              if (([quotaData2 hasItemsAboveQuota] & 1) == 0)
              {

LABEL_21:
                continue;
              }

              quotaData3 = [v13 quotaData];
              quotaRefObj = [quotaData3 quotaRefObj];
              quotaData4 = [quotaCopy quotaData];
              quotaRefObj2 = [quotaData4 quotaRefObj];
              v32 = [quotaRefObj isEqual:quotaRefObj2];

              itemGroups = v33;
              if (v32)
              {
LABEL_27:

                v26 = 0;
                allValues = v31;
                goto LABEL_29;
              }
            }

            else
            {
              if (iteratingOrder)
              {
                continue;
              }

              quotaData = [v13 quotaData];
              if (![quotaData hasItemsAboveQuota])
              {
                goto LABEL_21;
              }

              quotaData5 = [v13 quotaData];
              quotaRefObj3 = [quotaData5 quotaRefObj];
              quotaData6 = [quotaCopy quotaData];
              quotaRefObj4 = [quotaData6 quotaRefObj];
              v20 = [quotaRefObj3 isEqual:quotaRefObj4];

              itemGroups = v33;
              if (v20)
              {
                goto LABEL_27;
              }
            }
          }

          v10 = [itemGroups countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

LABEL_24:

        v6 = v30 + 1;
        allValues = v31;
        v5 = v28;
      }

      while (v30 + 1 != v29);
      v26 = 1;
      v29 = [v31 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (!v29)
      {
        goto LABEL_29;
      }
    }
  }

  v26 = 1;
LABEL_29:

  return v26;
}

- (id)_containerListForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(NMSMediaQuotaManager_Legacy *)self _evaluateAddedItemsIfNecessary];
  v5 = [(NSDictionary *)self->_groupIterators objectForKeyedSubscript:identifierCopy];

  return v5;
}

- (void)_evaluateAddedItemsIfNecessary
{
  v88 = *MEMORY[0x277D85DE8];
  if (!self->_hasEvaluated)
  {
    context = objc_autoreleasePoolPush();
    v2 = NMLogForCategory(5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      date = [MEMORY[0x277CBEAA8] date];
      *buf = 138412802;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager_Legacy _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2112;
      v85 = date;
      _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "%@ %s ****** Started QuotaEvaluation %@!", buf, 0x20u);
    }

    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      groupIterators = self->_groupIterators;
      quota = self->_quota;
      *buf = 138413058;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager_Legacy _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2048;
      v85 = quota;
      LOWORD(v86) = 2114;
      *(&v86 + 2) = groupIterators;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "%@ %s Evaluating items with quota %llu for container lists %{public}@", buf, 0x2Au);
    }

    v52 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v54 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](self->_groupIterators, "count")}];
    v53 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](self->_groupIterators, "count")}];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = self->_groupIterators;
    v7 = [(NSDictionary *)obj countByEnumeratingWithState:&v78 objects:v87 count:16];
    if (v7)
    {
      v8 = *v79;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v79 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v78 + 1) + 8 * i);
          v11 = self->_quota;
          v12 = [(NSDictionary *)self->_groupIterators count];
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11 / v12];
          [v54 setObject:v13 forKey:v10];

          v14 = [NMLogActionsCoalescer alloc];
          v15 = NMLogForCategory(6);
          v16 = [(NMLogActionsCoalescer *)v14 initWithIdentifier:v10 logCategory:v15];

          v17 = [@"[MediaQuota]" stringByAppendingString:@" QuotaEvaluation process"];
          [(NMLogActionsCoalescer *)v16 setPrefix:v17];

          [v53 setObject:v16 forKeyedSubscript:v10];
        }

        v7 = [(NSDictionary *)obj countByEnumeratingWithState:&v78 objects:v87 count:16];
      }

      while (v7);
    }

    v18 = NMLogForCategory(5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager_Legacy _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2114;
      v85 = v54;
      _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "%@ %s Calculated initial per bundleIdentifier quotas %{public}@", buf, 0x20u);
    }

    v19 = [(NSDictionary *)self->_groupIterators mutableCopy];
    v48 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](self->_groupIterators, "count")}];
    obja = [MEMORY[0x277CBEB58] set];
    if ([v19 count])
    {
      v20 = MEMORY[0x277D85DD0];
      do
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v85 = __Block_byref_object_copy__1;
        *&v86 = __Block_byref_object_dispose__1;
        *(&v86 + 1) = 0;
        do
        {
          v71[0] = v20;
          v71[1] = 3221225472;
          v71[2] = __61__NMSMediaQuotaManager_Legacy__evaluateAddedItemsIfNecessary__block_invoke;
          v71[3] = &unk_27993DDB0;
          v21 = v54;
          v72 = v21;
          v22 = v53;
          v73 = v22;
          v77 = buf;
          v74 = v52;
          selfCopy = self;
          v76 = obja;
          [v19 enumerateKeysAndObjectsUsingBlock:v71];
          if (!*(*&buf[8] + 40))
          {
            v70[0] = 0;
            v70[1] = v70;
            v70[2] = 0x2020000000;
            v70[3] = 0;
            v69[0] = MEMORY[0x277D85DD0];
            v69[1] = 3221225472;
            v69[2] = __61__NMSMediaQuotaManager_Legacy__evaluateAddedItemsIfNecessary__block_invoke_2;
            v69[3] = &unk_27993DDD8;
            v69[4] = v70;
            v69[5] = buf;
            [v19 enumerateKeysAndObjectsUsingBlock:v69];
            _Block_object_dispose(v70, 8);
          }
        }

        while (!*(*&buf[8] + 40));
        v49 = [v19 objectForKeyedSubscript:?];
        [v48 setObject:v49 forKeyedSubscript:*(*&buf[8] + 40)];
        [v19 removeObjectForKey:*(*&buf[8] + 40)];
        v23 = [v22 objectForKeyedSubscript:*(*&buf[8] + 40)];
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Removing item list"];
        v25 = [NMGenericMessageLogAction logActionWithMessage:v24];
        [v23 addLogAction:v25];

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        allValues = [v48 allValues];
        v27 = 0;
        v28 = [allValues countByEnumeratingWithState:&v65 objects:v83 count:16];
        if (v28)
        {
          v29 = *v66;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v66 != v29)
              {
                objc_enumerationMutation(allValues);
              }

              v27 += [*(*(&v65 + 1) + 8 * j) sizeForItemListWithinQuota];
            }

            v28 = [allValues countByEnumeratingWithState:&v65 objects:v83 count:16];
          }

          while (v28);
        }

        v31 = self->_quota;
        v32 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];

        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __61__NMSMediaQuotaManager_Legacy__evaluateAddedItemsIfNecessary__block_invoke_3;
        v60[3] = &unk_27993DE00;
        v64 = v31 - v27;
        v33 = v19;
        v61 = v33;
        v54 = v32;
        v62 = v54;
        v63 = v22;
        [v33 enumerateKeysAndObjectsUsingBlock:v60];

        _Block_object_dispose(buf, 8);
      }

      while ([v33 count]);
    }

    v34 = [[NMSMediaDownloadInfo alloc] initWithItems:v52];
    downloadInfoWithinQuota = self->_downloadInfoWithinQuota;
    self->_downloadInfoWithinQuota = v34;

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    allValues2 = [v53 allValues];
    v37 = [allValues2 countByEnumeratingWithState:&v56 objects:v82 count:16];
    if (v37)
    {
      v38 = *v57;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v57 != v38)
          {
            objc_enumerationMutation(allValues2);
          }

          [*(*(&v56 + 1) + 8 * k) flush];
        }

        v37 = [allValues2 countByEnumeratingWithState:&v56 objects:v82 count:16];
      }

      while (v37);
    }

    v40 = NMLogForCategory(5);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = self->_quota;
      totalItemCount = [(NMSMediaDownloadInfo *)self->_downloadInfoWithinQuota totalItemCount];
      *buf = 138413058;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager_Legacy _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2048;
      v85 = v41;
      LOWORD(v86) = 2048;
      *(&v86 + 2) = totalItemCount;
      _os_log_impl(&dword_25B27B000, v40, OS_LOG_TYPE_DEFAULT, "%@ %s QuotaEvaluation result: downloadInfoWithinQuota (quota: %llu) (count: %lu)", buf, 0x2Au);
    }

    v43 = NMLogForCategory(5);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      quotaUsage = self->_quotaUsage;
      *buf = 138412802;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager_Legacy _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2048;
      v85 = quotaUsage;
      _os_log_impl(&dword_25B27B000, v43, OS_LOG_TYPE_DEFAULT, "%@ %s QuotaEvaluation result: downloadInfoWithinQuota using %llu bytes", buf, 0x20u);
    }

    [(NSDictionary *)self->_groupIterators enumerateKeysAndObjectsUsingBlock:&__block_literal_global_0];
    v45 = NMLogForCategory(5);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      *buf = 138412802;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager_Legacy _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2112;
      v85 = date2;
      _os_log_impl(&dword_25B27B000, v45, OS_LOG_TYPE_DEFAULT, "%@ %s ****** Finished QuotaEvaluation! %@", buf, 0x20u);
    }

    self->_hasEvaluated = 1;
    objc_autoreleasePoolPop(context);
  }
}

@end