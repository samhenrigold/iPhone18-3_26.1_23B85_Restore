@interface REMChangeSet
+ (id)errorChangeSetWithError:(id)error;
- (BOOL)_filterAndFlattenAndConsolidateChanges;
- (BOOL)applyFilterByTransactionAuthors:(id)authors isExclusion:(BOOL)exclusion;
- (BOOL)consolidateAndFilterChangesWithTransactionAuthors:(id)authors isExclusion:(BOOL)exclusion;
- (BOOL)enumerateChanges:(int64_t)changes forModelsOfClass:(Class)class withBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (REMChangeSet)initWithChangeTransactions:(id)transactions;
- (REMChangeSet)initWithCoder:(id)coder;
- (REMChangeSet)initWithError:(id)error;
- (id)description;
- (id)lastChangeTokenForAccountID:(id)d;
- (void)_filterAndFlattenAndConsolidateChanges;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMChangeSet

+ (id)errorChangeSetWithError:(id)error
{
  errorCopy = error;
  v4 = [[REMChangeSet alloc] initWithError:errorCopy];

  return v4;
}

- (REMChangeSet)initWithError:(id)error
{
  errorCopy = error;
  v10.receiver = self;
  v10.super_class = REMChangeSet;
  v6 = [(REMChangeSet *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
    transactions = v7->_transactions;
    v7->_transactions = MEMORY[0x1E695E0F0];

    v7->_isTruncated = [errorCopy code] == 4;
  }

  return v7;
}

- (REMChangeSet)initWithChangeTransactions:(id)transactions
{
  transactionsCopy = transactions;
  v9.receiver = self;
  v9.super_class = REMChangeSet;
  v6 = [(REMChangeSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transactions, transactions);
  }

  return v7;
}

- (id)description
{
  v12 = MEMORY[0x1E696AEC0];
  v11 = [(NSArray *)self->_transactions count];
  firstObject = [(NSArray *)self->_transactions firstObject];
  changes = [firstObject changes];
  firstObject2 = [changes firstObject];
  changeID = [firstObject2 changeID];
  lastObject = [(NSArray *)self->_transactions lastObject];
  changes2 = [lastObject changes];
  lastObject2 = [changes2 lastObject];
  v8 = [v12 stringWithFormat:@"REMChangeSet<%p>: {raw-txn-count=%lu, chg-ids-from=%lld, chg-ids-to=%lld} {filtered-txn-count=%lu, cnsld-inserts=%lu, cnsld-updates=%lu, #cnsld-deletes=%lu}; {error=%@}", self, v11, changeID, objc_msgSend(lastObject2, "changeID"), -[NSArray count](self->_filteredTransactions, "count"), -[NSArray count](self->_inserts, "count"), -[NSArray count](self->_updates, "count"), -[NSArray count](self->_deletes, "count"), self->_error];;

  return v8;
}

- (BOOL)consolidateAndFilterChangesWithTransactionAuthors:(id)authors isExclusion:(BOOL)exclusion
{
  exclusionCopy = exclusion;
  v25 = *MEMORY[0x1E69E9840];
  authorsCopy = authors;
  if (![(REMChangeSet *)self isTruncated])
  {
    error = [(REMChangeSet *)self error];

    if (!error)
    {
      filteredTransactions = [(REMChangeSet *)self filteredTransactions];
      if (filteredTransactions)
      {
        v11 = filteredTransactions;
        filterByTransactionAuthorStrings = [(REMChangeSet *)self filterByTransactionAuthorStrings];
        if (filterByTransactionAuthorStrings == authorsCopy)
        {
          filterByTransactionAuthorsIsExclusion = [(REMChangeSet *)self filterByTransactionAuthorsIsExclusion];

          if (filterByTransactionAuthorsIsExclusion == exclusionCopy)
          {
            goto LABEL_16;
          }
        }

        else
        {
          filterByTransactionAuthorStrings2 = [(REMChangeSet *)self filterByTransactionAuthorStrings];
          if ([filterByTransactionAuthorStrings2 isEqual:authorsCopy])
          {
            filterByTransactionAuthorsIsExclusion2 = [(REMChangeSet *)self filterByTransactionAuthorsIsExclusion];

            if (filterByTransactionAuthorsIsExclusion2 == exclusionCopy)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }
        }
      }

      [(REMChangeSet *)self setFilterByTransactionAuthorStrings:authorsCopy];
      [(REMChangeSet *)self setFilterByTransactionAuthorsIsExclusion:exclusionCopy];
      v16 = +[REMLog changeTracking];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v19 = 134218498;
        selfCopy = self;
        v21 = 1024;
        v22 = exclusionCopy;
        v23 = 2114;
        v24 = authorsCopy;
        _os_log_debug_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_DEBUG, "REMChangeSet applyFilterByTransactionAuthors: {self=%p, exclude=%d, authors=%{public}@}", &v19, 0x1Cu);
      }

      if (![(REMChangeSet *)self _filterAndFlattenAndConsolidateChanges])
      {
        if (!self->_error)
        {
          v17 = [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:5];
          error = self->_error;
          self->_error = v17;
        }

        goto LABEL_3;
      }

LABEL_16:
      v8 = 1;
      goto LABEL_4;
    }
  }

LABEL_3:
  v8 = 0;
LABEL_4:

  return v8;
}

- (BOOL)applyFilterByTransactionAuthors:(id)authors isExclusion:(BOOL)exclusion
{
  exclusionCopy = exclusion;
  authorsCopy = authors;
  if (exclusionCopy)
  {
    if (authorsCopy)
    {
      [MEMORY[0x1E695DFA8] setWithArray:authorsCopy];
    }

    else
    {
      [MEMORY[0x1E695DFA8] set];
    }
    v7 = ;
    filterByTransactionAuthorStrings = [(REMChangeSet *)self filterByTransactionAuthorStrings];
    v9 = [filterByTransactionAuthorStrings count];

    if (v9)
    {
      filterByTransactionAuthorStrings2 = [(REMChangeSet *)self filterByTransactionAuthorStrings];
      [v7 addObjectsFromArray:filterByTransactionAuthorStrings2];
    }

    allObjects = [v7 allObjects];

    authorsCopy = allObjects;
  }

  v12 = [(REMChangeSet *)self consolidateAndFilterChangesWithTransactionAuthors:authorsCopy isExclusion:exclusionCopy];

  return v12;
}

- (BOOL)_filterAndFlattenAndConsolidateChanges
{
  v123 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v83 = [MEMORY[0x1E695DFA8] set];
  v82 = [MEMORY[0x1E695DFA8] set];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  transactions = [(REMChangeSet *)self transactions];
  v7 = [transactions countByEnumeratingWithState:&v105 objects:v122 count:16];
  selfCopy = self;
  v85 = dictionary;
  v88 = dictionary2;
  v80 = array;
  if (!v7)
  {

    [(REMChangeSet *)self setFilteredTransactions:array];
    goto LABEL_57;
  }

  v9 = v7;
  v78 = 0;
  v10 = *v106;
  *&v8 = 138412290;
  v76 = v8;
  obj = transactions;
  v79 = *v106;
  do
  {
    v11 = 0;
    v89 = v9;
    do
    {
      if (*v106 != v10)
      {
        objc_enumerationMutation(transactions);
      }

      v12 = *(*(&v105 + 1) + 8 * v11);
      context = objc_autoreleasePoolPush();
      accountID = [v12 accountID];

      if (!accountID)
      {
        v35 = [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:6];
        [(REMChangeSet *)selfCopy setError:v35];

        v36 = +[REMLog changeTracking];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          [(REMChangeSet *)v12 _filterAndFlattenAndConsolidateChanges];
        }

        objc_autoreleasePoolPop(context);
        [(REMChangeSet *)selfCopy setFilteredTransactions:array];
        dictionary = v85;
        goto LABEL_53;
      }

      filterByTransactionAuthorStrings = [(REMChangeSet *)selfCopy filterByTransactionAuthorStrings];

      if (filterByTransactionAuthorStrings)
      {
        author = [v12 author];
        if ([(REMChangeSet *)selfCopy filterByTransactionAuthorsIsExclusion])
        {
          if (author)
          {
            filterByTransactionAuthorStrings2 = [(REMChangeSet *)selfCopy filterByTransactionAuthorStrings];
            v17 = [filterByTransactionAuthorStrings2 containsObject:author];

            if (v17)
            {
              goto LABEL_43;
            }
          }
        }

        else if (!author || (-[REMChangeSet filterByTransactionAuthorStrings](selfCopy, "filterByTransactionAuthorStrings"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 containsObject:author], v18, !v19))
        {
LABEL_43:
          v34 = context;
          goto LABEL_46;
        }
      }

      [array addObject:{v12, v76}];
      changes = [v12 changes];
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      author = changes;
      v21 = [author countByEnumeratingWithState:&v101 objects:v121 count:16];
      if (!v21)
      {
        array = v80;
        goto LABEL_45;
      }

      v22 = v21;
      v23 = *v102;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v102 != v23)
          {
            objc_enumerationMutation(author);
          }

          v25 = *(*(&v101 + 1) + 8 * i);
          transaction = [(REMChangeSet *)v25 transaction];

          if (!transaction)
          {
            v33 = os_log_create("com.apple.reminderkit", "default");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              *buf = v76;
              v118 = v25;
              _os_log_debug_impl(&dword_19A0DB000, v33, OS_LOG_TYPE_DEBUG, "Trying to populate flattened changes with a change that lost back pointer to its transaction %@.", buf, 0xCu);
            }

            v78 = 1;
            goto LABEL_42;
          }

          changedObjectID = [(REMChangeSet *)v25 changedObjectID];

          if (changedObjectID)
          {
            changedObjectID2 = [(REMChangeSet *)v25 changedObjectID];
            if ([(REMChangeSet *)v25 changeType]== 1)
            {
              v29 = [v85 objectForKeyedSubscript:changedObjectID2];
              v30 = v29;
              if (v29)
              {
                [v29 addObject:v25];
              }

              else
              {
                v32 = [MEMORY[0x1E695DF70] arrayWithObject:v25];
                [v85 setObject:v32 forKey:changedObjectID2];
              }

LABEL_35:

              goto LABEL_36;
            }

            if ([(REMChangeSet *)v25 changeType])
            {
              if ([(REMChangeSet *)v25 changeType]!= 2)
              {
                v30 = +[REMLog changeTracking];
                if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
                {
                  [(REMChangeSet *)v115 _filterAndFlattenAndConsolidateChanges:v25];
                }

                goto LABEL_35;
              }

              [v82 addObject:changedObjectID2];
              v31 = dictionary3;
            }

            else
            {
              [v83 addObject:changedObjectID2];
              v31 = v88;
            }

            [v31 setObject:v25 forKey:changedObjectID2];
            goto LABEL_36;
          }

          changedObjectID2 = +[REMLog changeTracking];
          if (os_log_type_enabled(changedObjectID2, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v118 = v25;
            v119 = 2112;
            v120 = v12;
            _os_log_error_impl(&dword_19A0DB000, changedObjectID2, OS_LOG_TYPE_ERROR, "chg.changedObjectID is nil! {chg: %@, txn: %@}", buf, 0x16u);
          }

LABEL_36:
        }

        v22 = [author countByEnumeratingWithState:&v101 objects:v121 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }

LABEL_42:
      v10 = v79;
      array = v80;
      transactions = obj;
      v9 = v89;
LABEL_45:
      v34 = context;

LABEL_46:
      objc_autoreleasePoolPop(v34);
      ++v11;
      dictionary2 = v88;
    }

    while (v11 != v9);
    v9 = [transactions countByEnumeratingWithState:&v105 objects:v122 count:16];
  }

  while (v9);

  [(REMChangeSet *)selfCopy setFilteredTransactions:array];
  dictionary = v85;
  if ((v78 & 1) == 0)
  {
LABEL_57:
    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    allValues = [dictionary allValues];
    v41 = [allValues countByEnumeratingWithState:&v97 objects:v114 count:16];
    contexta = dictionary4;
    if (!v41)
    {
      goto LABEL_72;
    }

    v42 = v41;
    v43 = *v98;
    while (1)
    {
      v44 = 0;
      do
      {
        if (*v98 != v43)
        {
          objc_enumerationMutation(allValues);
        }

        v45 = *(*(&v97 + 1) + 8 * v44);
        v46 = objc_autoreleasePoolPush();
        if ([v45 count] < 2)
        {
          copyForCoalescing = [v45 objectAtIndexedSubscript:0];
          changedObjectID3 = [copyForCoalescing changedObjectID];
          if (changedObjectID3)
          {
            goto LABEL_66;
          }

          [REMChangeSet _filterAndFlattenAndConsolidateChanges];
        }

        else
        {
          [v45 sortUsingComparator:&__block_literal_global_14];
          v47 = [v45 objectAtIndexedSubscript:0];
          copyForCoalescing = [v47 copyForCoalescing];

          changedObjectID3 = [copyForCoalescing changedObjectID];
          if (changedObjectID3)
          {
            v50 = [v45 subarrayWithRange:{1, objc_msgSend(v45, "count") - 1}];
            [copyForCoalescing setCoalescedChanges:v50];

            [copyForCoalescing setIsCoalesced:1];
            dictionary4 = contexta;
LABEL_66:
            [dictionary4 setObject:copyForCoalescing forKey:changedObjectID3];
            goto LABEL_67;
          }

          [REMChangeSet _filterAndFlattenAndConsolidateChanges];
          dictionary4 = contexta;
        }

LABEL_67:

        objc_autoreleasePoolPop(v46);
        ++v44;
      }

      while (v42 != v44);
      v51 = [allValues countByEnumeratingWithState:&v97 objects:v114 count:16];
      v42 = v51;
      if (!v51)
      {
LABEL_72:

        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        obja = v83;
        v52 = [obja countByEnumeratingWithState:&v93 objects:v113 count:16];
        v53 = v88;
        if (v52)
        {
          v54 = v52;
          v90 = *v94;
          do
          {
            for (j = 0; j != v54; ++j)
            {
              if (*v94 != v90)
              {
                objc_enumerationMutation(obja);
              }

              v56 = *(*(&v93 + 1) + 8 * j);
              v57 = objc_autoreleasePoolPush();
              v58 = [dictionary4 objectForKeyedSubscript:v56];
              if (v58)
              {
                v59 = [v53 objectForKeyedSubscript:v56];
                if (!v59)
                {
                  [REMChangeSet _filterAndFlattenAndConsolidateChanges];
                }

                copyForCoalescing2 = [v59 copyForCoalescing];
                [copyForCoalescing2 setIsCoalesced:1];
                coalescedChanges = [v58 coalescedChanges];
                if (coalescedChanges)
                {
                  v112 = v58;
                  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
                  v63 = [v62 arrayByAddingObjectsFromArray:coalescedChanges];
                  [copyForCoalescing2 setCoalescedChanges:v63];

                  v53 = v88;
                }

                else
                {
                  v111 = v58;
                  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
                  [copyForCoalescing2 setCoalescedChanges:v62];
                }

                [v53 setObject:copyForCoalescing2 forKey:v56];
                dictionary4 = contexta;
                [contexta removeObjectForKey:v56];
              }

              objc_autoreleasePoolPop(v57);
            }

            v54 = [obja countByEnumeratingWithState:&v93 objects:v113 count:16];
          }

          while (v54);
        }

        allObjects = [v82 allObjects];
        [dictionary4 removeObjectsForKeys:allObjects];

        allValues2 = [dictionary4 allValues];
        [allValues2 sortedArrayUsingComparator:&__block_literal_global_14];
        v67 = v66 = v53;
        [(REMChangeSet *)selfCopy setUpdates:v67];

        allObjects2 = [v82 allObjects];
        [v66 removeObjectsForKeys:allObjects2];

        allObjects3 = [obja allObjects];
        [dictionary3 removeObjectsForKeys:allObjects3];

        allValues3 = [v66 allValues];
        v71 = [allValues3 sortedArrayUsingComparator:&__block_literal_global_14];
        [(REMChangeSet *)selfCopy setInserts:v71];

        allValues4 = [dictionary3 allValues];
        v73 = [allValues4 sortedArrayUsingComparator:&__block_literal_global_14];
        [(REMChangeSet *)selfCopy setDeletes:v73];

        v74 = +[REMLog changeTracking];
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          *v109 = 138412290;
          v110 = selfCopy;
          _os_log_impl(&dword_19A0DB000, v74, OS_LOG_TYPE_INFO, "REMChangeSet _filterAndFlattenAndConsolidateChanges was successful. ChangeSet: %@", v109, 0xCu);
        }

        v38 = 1;
        dictionary = v85;
        dictionary2 = v88;
        array = v80;
        v37 = contexta;
        goto LABEL_89;
      }
    }
  }

LABEL_53:
  v37 = +[REMLog changeTracking];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = v77;
    v118 = selfCopy;
    _os_log_impl(&dword_19A0DB000, v37, OS_LOG_TYPE_INFO, "REMChangeSet _filterAndFlattenAndConsolidateChanges failed. ChangeSet: %@", buf, 0xCu);
  }

  v38 = 0;
LABEL_89:

  return v38;
}

uint64_t __54__REMChangeSet__filterAndFlattenAndConsolidateChanges__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 transaction];
  v7 = [v6 timestamp];

  v8 = [v5 transaction];
  v9 = [v8 timestamp];

  v10 = [v7 compare:v9];
  if (!v10)
  {
    v11 = [v4 changeID];
    v12 = [v5 changeID];
    if (v11 < v12)
    {
      v10 = -1;
    }

    else
    {
      v10 = v11 > v12;
    }
  }

  return v10;
}

- (BOOL)enumerateChanges:(int64_t)changes forModelsOfClass:(Class)class withBlock:(id)block
{
  changesCopy = changes;
  blockCopy = block;
  if (blockCopy)
  {
    if (![(REMChangeSet *)self isTruncated])
    {
      error = [(REMChangeSet *)self error];

      if (!error)
      {
        if (!class)
        {
          v14 = &__block_literal_global_17;
LABEL_11:
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __60__REMChangeSet_enumerateChanges_forModelsOfClass_withBlock___block_invoke_2;
          v20[3] = &unk_1E7508AC0;
          v21 = v14;
          v22 = blockCopy;
          v15 = v14;
          v16 = MEMORY[0x19A8FD720](v20);
          if (changesCopy)
          {
            inserts = [(REMChangeSet *)self inserts];
            (v16)[2](v16, inserts, 0);

            if ((changesCopy & 2) == 0)
            {
LABEL_13:
              if ((changesCopy & 4) == 0)
              {
LABEL_15:

                v10 = 1;
LABEL_22:

                goto LABEL_5;
              }

LABEL_14:
              deletes = [(REMChangeSet *)self deletes];
              (v16)[2](v16, deletes, 2);

              goto LABEL_15;
            }
          }

          else if ((changesCopy & 2) == 0)
          {
            goto LABEL_13;
          }

          updates = [(REMChangeSet *)self updates];
          (v16)[2](v16, updates, 1);

          if ((changesCopy & 4) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (objc_opt_respondsToSelector())
        {
          v12 = [(objc_class *)class performSelector:sel_cdEntityName];
          if (v12)
          {
LABEL_9:
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __60__REMChangeSet_enumerateChanges_forModelsOfClass_withBlock___block_invoke;
            v23[3] = &unk_1E7508A78;
            v24 = v12;
            v13 = v12;
            v14 = MEMORY[0x19A8FD720](v23);

            goto LABEL_11;
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          if (([(objc_class *)class methodForSelector:sel_conformsToREMChangeTrackingIdentifiable])(class, sel_conformsToREMChangeTrackingIdentifiable))
          {
            v12 = NSStringFromClass(class);
            if (v12)
            {
              goto LABEL_9;
            }
          }
        }

        v15 = +[REMLog changeTracking];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          [REMChangeSet enumerateChanges:class forModelsOfClass:v15 withBlock:?];
        }

        v10 = 0;
        goto LABEL_22;
      }
    }
  }

  v10 = 0;
LABEL_5:

  return v10;
}

uint64_t __60__REMChangeSet_enumerateChanges_forModelsOfClass_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 changedObjectID];
  v5 = [v4 entityName];

  if (v5)
  {
    v6 = [v5 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v7 = +[REMLog changeTracking];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__REMChangeSet_enumerateChanges_forModelsOfClass_withBlock___block_invoke_cold_1(v3, v7);
    }

    v6 = 0;
  }

  return v6;
}

void __60__REMChangeSet_enumerateChanges_forModelsOfClass_withBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = objc_autoreleasePoolPush();
        if ((*(*(a1 + 32) + 16))(*(a1 + 32)))
        {
          (*(*(a1 + 40) + 16))(*(a1 + 40));
        }

        objc_autoreleasePoolPop(v8);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)lastChangeTokenForAccountID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([(REMChangeSet *)self isTruncated]|| ([(REMChangeSet *)self error], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    reverseObjectEnumerator = +[REMLog changeTracking];
    if (os_log_type_enabled(reverseObjectEnumerator, OS_LOG_TYPE_ERROR))
    {
      [(REMChangeSet *)dCopy lastChangeTokenForAccountID:reverseObjectEnumerator];
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    transactions = [(REMChangeSet *)self transactions];
    reverseObjectEnumerator = [transactions reverseObjectEnumerator];

    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          accountID = [v14 accountID];
          if ([dCopy isEqual:accountID])
          {
            token = [v14 token];

            goto LABEL_6;
          }
        }

        v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    reverseObjectEnumerator = +[REMLog changeTracking];
    if (os_log_type_enabled(reverseObjectEnumerator, OS_LOG_TYPE_DEFAULT))
    {
      transactions2 = [(REMChangeSet *)self transactions];
      *buf = 138543618;
      v22 = dCopy;
      v23 = 2112;
      v24 = transactions2;
      _os_log_impl(&dword_19A0DB000, reverseObjectEnumerator, OS_LOG_TYPE_DEFAULT, "REMChangeset does not contain token for accountID (this is not an error). Returning nil {accountID: %{public}@, transactions: %@}", buf, 0x16u);
    }
  }

  token = 0;
LABEL_6:

  return token;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  error = [(REMChangeSet *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  transactions = [(REMChangeSet *)self transactions];
  [coderCopy encodeObject:transactions forKey:@"transactions"];
}

- (REMChangeSet)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"transactions"];

  if (v5)
  {
    if ([v9 count])
    {
      [(REMChangeSet *)v5 initWithCoder:v9];
    }

    v10 = [(REMChangeSet *)self initWithError:v5];
  }

  else
  {
    v11 = +[REMLog changeTracking];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_19A0DB000, v11, OS_LOG_TYPE_INFO, "REMChangeSet initWithCoder: {self=%p}", buf, 0xCu);
    }

    v10 = [(REMChangeSet *)self initWithChangeTransactions:v9];
  }

  v12 = v10;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      transactions = [(REMChangeSet *)self transactions];
      transactions2 = [(REMChangeSet *)v6 transactions];
      if (transactions == transactions2)
      {
        v11 = 1;
      }

      else
      {
        transactions3 = [(REMChangeSet *)self transactions];
        transactions4 = [(REMChangeSet *)v6 transactions];
        v11 = [transactions3 isEqual:transactions4];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (void)_filterAndFlattenAndConsolidateChanges
{
  OUTLINED_FUNCTION_1_7();
  v3 = +[REMLog changeTracking];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v0 = 138543362;
    *v1 = v2;
    OUTLINED_FUNCTION_0_9(&dword_19A0DB000, v4, v5, "rem_log_fault_if (!ins) -- Nil change for insertedID {insertedID: %{public}@}");
  }
}

- (void)enumerateChanges:(uint64_t)a1 forModelsOfClass:(NSObject *)a2 withBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Requested change tracking for unsupported class {klass: %{public}@}", &v2, 0xCu);
}

void __60__REMChangeSet_enumerateChanges_forModelsOfClass_withBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Missing changeEntityName {change: %@}", &v2, 0xCu);
}

- (void)lastChangeTokenForAccountID:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = [a2 error];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a2, "isTruncated")}];
  v8 = [a2 transactions];
  v9 = 138544130;
  v10 = a1;
  v11 = 2112;
  v12 = v6;
  v13 = 2114;
  v14 = v7;
  v15 = 2112;
  v16 = v8;
  _os_log_error_impl(&dword_19A0DB000, a3, OS_LOG_TYPE_ERROR, "REMChangeSet is in error or truncated. Returning nil token for account {accountID: %{public}@, error: %@, isTruncated: %{public}@, transactions: %@}", &v9, 0x2Au);
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = +[REMLog changeTracking];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = 138412546;
    v6 = a1;
    v7 = 2112;
    v8 = a2;
    _os_log_fault_impl(&dword_19A0DB000, v4, OS_LOG_TYPE_FAULT, "rem_log_fault_if (transactions.count != 0) -- Attempt to decode an error change set with non-empty transaction list. {error: %@, transaction: %@}", &v5, 0x16u);
  }
}

@end