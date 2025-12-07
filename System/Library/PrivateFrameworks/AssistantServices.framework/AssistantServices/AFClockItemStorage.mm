@interface AFClockItemStorage
- (AFClockItemStorage)initWithIdentifier:(id)identifier delegate:(id)delegate;
- (id)itemWithID:(id)d;
- (void)beginGrouping;
- (void)deleteAllItems;
- (void)deleteItemsWithIDs:(id)ds;
- (void)endGroupingWithOptions:(unint64_t)options;
- (void)insertOrUpdateItems:(id)items;
- (void)invalidate;
- (void)setDate:(id)date;
- (void)setGeneration:(unint64_t)generation;
- (void)setItemsByID:(id)d;
@end

@implementation AFClockItemStorage

- (void)invalidate
{
  objc_storeWeak(&self->_delegate, 0);
  self->_groupingDepth = 0;
  self->_workingGeneration = 0;
  workingDate = self->_workingDate;
  self->_workingDate = 0;

  workingItemsByID = self->_workingItemsByID;
  self->_workingItemsByID = 0;

  date = self->_date;
  self->_generation = 0;
  self->_date = 0;

  itemsByID = self->_itemsByID;
  self->_itemsByID = 0;
}

- (void)deleteAllItems
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AFClockItemStorage deleteAllItems]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(AFClockItemStorage *)self beginGrouping];
  [(NSMutableDictionary *)self->_workingItemsByID removeAllObjects];
  [(AFClockItemStorage *)self endGroupingWithOptions:0];
}

- (void)deleteItemsWithIDs:(id)ds
{
  v10 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[AFClockItemStorage deleteItemsWithIDs:]";
    v8 = 2112;
    v9 = dsCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s itemIDs = %@", &v6, 0x16u);
  }

  if ([dsCopy count])
  {
    [(AFClockItemStorage *)self beginGrouping];
    [(NSMutableDictionary *)self->_workingItemsByID removeObjectsForKeys:dsCopy];
    [(AFClockItemStorage *)self endGroupingWithOptions:0];
  }
}

- (void)insertOrUpdateItems:(id)items
{
  v22 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[AFClockItemStorage insertOrUpdateItems:]";
    v20 = 2112;
    v21 = itemsCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s items = %@", buf, 0x16u);
  }

  if ([itemsCopy count])
  {
    [(AFClockItemStorage *)self beginGrouping];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = itemsCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          itemID = [v11 itemID];
          if (itemID)
          {
            [(NSMutableDictionary *)self->_workingItemsByID setObject:v11 forKey:itemID];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(AFClockItemStorage *)self endGroupingWithOptions:0];
  }
}

- (id)itemWithID:(id)d
{
  v3 = 72;
  if (self->_groupingDepth > 0)
  {
    v3 = 40;
  }

  v4 = [*(&self->super.isa + v3) objectForKey:d];

  return v4;
}

- (void)endGroupingWithOptions:(unint64_t)options
{
  v128 = *MEMORY[0x1E69E9840];
  groupingDepth = self->_groupingDepth;
  p_superclass = AFSpeechPackage.superclass;
  if (groupingDepth < 1)
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v123 = "[AFClockItemStorage endGroupingWithOptions:]";
      _os_log_error_impl(&dword_1912FE000, v12, OS_LOG_TYPE_ERROR, "%s Attempt to end grouping without a balanced begin grouping.", buf, 0xCu);
    }
  }

  else
  {
    optionsCopy = options;
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v123 = "[AFClockItemStorage endGroupingWithOptions:]";
      v124 = 2048;
      v125 = groupingDepth;
      v126 = 2048;
      v127 = groupingDepth - 1;
      _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s grouping depth: %ld -> %ld", buf, 0x20u);
    }

    self->_groupingDepth = groupingDepth - 1;
    if (groupingDepth == 1)
    {
      itemsByID = self->_itemsByID;
      v105 = optionsCopy;
      if (itemsByID == self->_workingItemsByID || ([(NSMutableDictionary *)itemsByID isEqualToDictionary:?]& 1) != 0)
      {
        v9 = 0;
        v106 = 0;
        v10 = 0;
        v11 = 0;
        goto LABEL_81;
      }

      v13 = [(NSDictionary *)self->_itemsByID count];
      v14 = [(NSMutableDictionary *)self->_workingItemsByID count];
      v15 = AFSiriLogContextConnection;
      v16 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
      if (v13 == v14)
      {
        if (!v16)
        {
          goto LABEL_16;
        }

        *buf = 136315394;
        v123 = "[AFClockItemStorage endGroupingWithOptions:]";
        v124 = 2048;
        v125 = v13;
        v17 = "%s numberOfItems: %lu";
        v18 = v15;
        v19 = 22;
      }

      else
      {
        if (!v16)
        {
          goto LABEL_16;
        }

        *buf = 136315650;
        v123 = "[AFClockItemStorage endGroupingWithOptions:]";
        v124 = 2048;
        v125 = v13;
        v126 = 2048;
        v127 = v14;
        v17 = "%s numberOfItems: %lu -> %lu";
        v18 = v15;
        v19 = 32;
      }

      _os_log_impl(&dword_1912FE000, v18, OS_LOG_TYPE_INFO, v17, buf, v19);
LABEL_16:
      v20 = objc_alloc(MEMORY[0x1E695DFD8]);
      allKeys = [(NSDictionary *)self->_itemsByID allKeys];
      v22 = allKeys;
      v23 = MEMORY[0x1E695E0F0];
      if (allKeys)
      {
        v24 = allKeys;
      }

      else
      {
        v24 = MEMORY[0x1E695E0F0];
      }

      v25 = [v20 initWithArray:v24];

      v26 = objc_alloc(MEMORY[0x1E695DFD8]);
      allKeys2 = [(NSMutableDictionary *)self->_workingItemsByID allKeys];
      v28 = allKeys2;
      if (allKeys2)
      {
        v29 = allKeys2;
      }

      else
      {
        v29 = v23;
      }

      v30 = [v26 initWithArray:v29];

      if (v14)
      {
        if (v13)
        {
          v31 = [v30 mutableCopy];
          [v31 minusSet:v25];
        }

        else
        {
          v31 = [v30 copy];
        }

        if (![v31 count])
        {

          v10 = 0;
          v44 = v13;
          v13 = 0;
          v45 = 0;
          if (v44)
          {
            goto LABEL_43;
          }

          goto LABEL_77;
        }

        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v10 = v31;
        v33 = [v10 countByEnumeratingWithState:&v115 objects:v121 count:16];
        if (v33)
        {
          v34 = v33;
          v96 = v14;
          v98 = v13;
          v101 = v30;
          v35 = *v116;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v116 != v35)
              {
                objc_enumerationMutation(v10);
              }

              v37 = p_superclass[285];
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                v38 = v10;
                v39 = *(*(&v115 + 1) + 8 * i);
                workingItemsByID = self->_workingItemsByID;
                v41 = v37;
                v42 = workingItemsByID;
                p_superclass = (AFSpeechPackage + 8);
                v43 = [(NSMutableDictionary *)v42 objectForKey:v39];
                *buf = 136315394;
                v123 = "[AFClockItemStorage endGroupingWithOptions:]";
                v124 = 2112;
                v125 = v43;
                _os_log_impl(&dword_1912FE000, v41, OS_LOG_TYPE_INFO, "%s itemsByID: [+] %@", buf, 0x16u);

                v10 = v38;
              }
            }

            v34 = [v10 countByEnumeratingWithState:&v115 objects:v121 count:16];
          }

          while (v34);

          if (v98)
          {
            v30 = v101;
            v14 = v96;
LABEL_43:
            v32 = [v25 mutableCopy];
            [v32 minusSet:v30];
LABEL_44:
            if ([v32 count])
            {
              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              v13 = v32;
              v46 = [v13 countByEnumeratingWithState:&v111 objects:v120 count:16];
              if (v46)
              {
                v47 = v46;
                v95 = v32;
                v102 = v30;
                v99 = v10;
                v48 = *v112;
                do
                {
                  for (j = 0; j != v47; ++j)
                  {
                    if (*v112 != v48)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v50 = p_superclass[285];
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                    {
                      v51 = *(*(&v111 + 1) + 8 * j);
                      v52 = v13;
                      v53 = self->_itemsByID;
                      v54 = v50;
                      v55 = v51;
                      p_superclass = (AFSpeechPackage + 8);
                      v56 = [(NSDictionary *)v53 objectForKey:v55];
                      *buf = 136315394;
                      v123 = "[AFClockItemStorage endGroupingWithOptions:]";
                      v124 = 2112;
                      v125 = v56;
                      _os_log_impl(&dword_1912FE000, v54, OS_LOG_TYPE_INFO, "%s itemsByID: [-] %@", buf, 0x16u);

                      v13 = v52;
                    }
                  }

                  v47 = [v13 countByEnumeratingWithState:&v111 objects:v120 count:16];
                }

                while (v47);
                v10 = v99;
                v30 = v102;
                v32 = v95;
              }
            }

            else
            {
              v13 = 0;
            }

            if (v14)
            {
              v57 = [v25 mutableCopy];
              [v57 intersectSet:v30];
              if ([v57 count])
              {
                v103 = v30;
                v104 = v25;
                v97 = v13;
                v100 = v10;
                v45 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                v107 = 0u;
                v108 = 0u;
                v109 = 0u;
                v110 = 0u;
                v95 = v57;
                v58 = v57;
                v59 = [v58 countByEnumeratingWithState:&v107 objects:v119 count:16];
                if (v59)
                {
                  v60 = v59;
                  v61 = *v108;
                  do
                  {
                    for (k = 0; k != v60; ++k)
                    {
                      if (*v108 != v61)
                      {
                        objc_enumerationMutation(v58);
                      }

                      v63 = *(*(&v107 + 1) + 8 * k);
                      v64 = [(NSDictionary *)self->_itemsByID objectForKey:v63, v95];
                      v65 = [(NSMutableDictionary *)self->_workingItemsByID objectForKey:v63];
                      if (v64 != v65 && ([v64 isEqual:v65] & 1) == 0)
                      {
                        v66 = AFSiriLogContextConnection;
                        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
                        {
                          *buf = 136315650;
                          v123 = "[AFClockItemStorage endGroupingWithOptions:]";
                          v124 = 2112;
                          v125 = v64;
                          v126 = 2112;
                          v127 = v65;
                          _os_log_impl(&dword_1912FE000, v66, OS_LOG_TYPE_INFO, "%s itemsByID: [*] %@ -> %@", buf, 0x20u);
                        }

                        [v45 addObject:v63];
                      }
                    }

                    v60 = [v58 countByEnumeratingWithState:&v107 objects:v119 count:16];
                  }

                  while (v60);
                }

                p_superclass = (AFSpeechPackage + 8);
                if (![v45 count])
                {

                  v45 = 0;
                }

                v13 = v97;
                v10 = v100;
                v30 = v103;
                v25 = v104;
                v57 = v95;
              }

              else
              {
                v45 = 0;
              }

              goto LABEL_77;
            }

            goto LABEL_76;
          }

          v13 = 0;
          v45 = 0;
          v30 = v101;
LABEL_77:
          v67 = [v10 count];
          v106 = v45;
          v68 = [v45 count] + v67;
          if (!(v68 + [v13 count]))
          {
            v69 = p_superclass[285];
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v123 = "[AFClockItemStorage endGroupingWithOptions:]";
              _os_log_error_impl(&dword_1912FE000, v69, OS_LOG_TYPE_ERROR, "%s Item changes detected, but there is no inserted, updated or deleted items.", buf, 0xCu);
            }
          }

          v9 = v13;
          v70 = [(NSMutableDictionary *)self->_workingItemsByID copy];
          v71 = self->_itemsByID;
          self->_itemsByID = v70;

          v11 = 1;
LABEL_81:
          generation = self->_generation;
          workingGeneration = self->_workingGeneration;
          v74 = generation != workingGeneration;
          if (generation != workingGeneration)
          {
            v75 = p_superclass[285];
            if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v123 = "[AFClockItemStorage endGroupingWithOptions:]";
              v124 = 2048;
              v125 = generation;
              v126 = 2048;
              v127 = workingGeneration;
              _os_log_impl(&dword_1912FE000, v75, OS_LOG_TYPE_INFO, "%s generation: %llu -> %llu", buf, 0x20u);
              v76 = self->_workingGeneration;
            }

            else
            {
              v76 = workingGeneration;
            }

            self->_generation = v76;
          }

          date = self->_date;
          if (date == self->_workingDate || [(NSDate *)date isEqualToDate:?])
          {
            v78 = 0;
          }

          else
          {
            v79 = p_superclass[285];
            if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
            {
              v80 = self->_date;
              workingDate = self->_workingDate;
              *buf = 136315650;
              v123 = "[AFClockItemStorage endGroupingWithOptions:]";
              v124 = 2112;
              v125 = v80;
              v126 = 2112;
              v127 = workingDate;
              _os_log_impl(&dword_1912FE000, v79, OS_LOG_TYPE_INFO, "%s date: %@ -> %@", buf, 0x20u);
            }

            v82 = [(NSDate *)self->_workingDate copy];
            v83 = self->_date;
            self->_date = v82;

            v78 = 1;
          }

          if (generation == workingGeneration)
          {
            v84 = v9;
            if (v11 | v78)
            {
              v85 = self->_generation;
              v86 = p_superclass[285];
              if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v123 = "[AFClockItemStorage endGroupingWithOptions:]";
                v124 = 2048;
                v125 = v85;
                v126 = 2048;
                v127 = v85 + 1;
                _os_log_impl(&dword_1912FE000, v86, OS_LOG_TYPE_INFO, "%s generation: %llu -> %llu", buf, 0x20u);
              }

              self->_generation = v85 + 1;
              v74 = 1;
            }
          }

          else
          {
            v84 = v9;
          }

          if ((v78 | (v11 | v74) ^ 1))
          {
            if ((v78 | v11 | v74) != 1)
            {
              v87 = p_superclass[285];
              v88 = v106;
              if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v123 = "[AFClockItemStorage endGroupingWithOptions:]";
                _os_log_impl(&dword_1912FE000, v87, OS_LOG_TYPE_INFO, "%s There's no generation, date or item changes.", buf, 0xCu);
              }

LABEL_107:

              return;
            }
          }

          else
          {
            date = [MEMORY[0x1E695DF00] date];
            v90 = p_superclass[285];
            if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
            {
              v91 = self->_date;
              *buf = 136315650;
              v123 = "[AFClockItemStorage endGroupingWithOptions:]";
              v124 = 2112;
              v125 = v91;
              v126 = 2112;
              v127 = date;
              _os_log_impl(&dword_1912FE000, v90, OS_LOG_TYPE_INFO, "%s date: %@ -> %@", buf, 0x20u);
            }

            v92 = [date copy];
            v93 = self->_date;
            self->_date = v92;
          }

          v88 = v106;
          if ((v105 & 1) == 0)
          {
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained clockItemStorageDidUpdate:self insertedItemIDs:v10 updatedItemIDs:v106 deletedItemIDs:v84];
          }

          goto LABEL_107;
        }

        if (v13)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v13)
        {
          v32 = [v25 copy];
          v10 = 0;
          goto LABEL_44;
        }

        v10 = 0;
      }

LABEL_76:
      v45 = 0;
      goto LABEL_77;
    }
  }
}

- (void)beginGrouping
{
  v18 = *MEMORY[0x1E69E9840];
  groupingDepth = self->_groupingDepth;
  v4 = groupingDepth + 1;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[AFClockItemStorage beginGrouping]";
    v14 = 2048;
    v15 = groupingDepth;
    v16 = 2048;
    v17 = groupingDepth + 1;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s grouping depth: %ld -> %ld", &v12, 0x20u);
    groupingDepth = self->_groupingDepth;
  }

  if (!groupingDepth)
  {
    date = self->_date;
    self->_workingGeneration = self->_generation;
    v7 = [(NSDate *)date copy];
    workingDate = self->_workingDate;
    self->_workingDate = v7;

    itemsByID = self->_itemsByID;
    if (itemsByID)
    {
      v10 = [(NSDictionary *)itemsByID mutableCopy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    workingItemsByID = self->_workingItemsByID;
    self->_workingItemsByID = v10;
  }

  self->_groupingDepth = v4;
}

- (void)setItemsByID:(id)d
{
  dCopy = d;
  [(AFClockItemStorage *)self beginGrouping];
  v5 = [dCopy mutableCopy];

  workingItemsByID = self->_workingItemsByID;
  self->_workingItemsByID = v5;

  [(AFClockItemStorage *)self endGroupingWithOptions:0];
}

- (void)setDate:(id)date
{
  dateCopy = date;
  [(AFClockItemStorage *)self beginGrouping];
  v5 = [dateCopy copy];

  workingDate = self->_workingDate;
  self->_workingDate = v5;

  [(AFClockItemStorage *)self endGroupingWithOptions:0];
}

- (void)setGeneration:(unint64_t)generation
{
  [(AFClockItemStorage *)self beginGrouping];
  self->_workingGeneration = generation;

  [(AFClockItemStorage *)self endGroupingWithOptions:0];
}

- (AFClockItemStorage)initWithIdentifier:(id)identifier delegate:(id)delegate
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = AFClockItemStorage;
  v8 = [(AFClockItemStorage *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeWeak(&v8->_delegate, delegateCopy);
  }

  return v8;
}

@end