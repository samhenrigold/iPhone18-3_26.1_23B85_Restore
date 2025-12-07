@interface BMAprioriPatternMiner
- (BMAprioriPatternMiner)initWithBaskets:(id)baskets;
- (id)getItemIndexSetsWithMinSupport:(double)support itemIndexSets:(id)sets;
- (id)minePatternsWithMinSupport:(unint64_t)support constrainedToPatternsWithTypes:(id)types;
- (id)supportOfItemIndexSet:(id)set;
@end

@implementation BMAprioriPatternMiner

- (BMAprioriPatternMiner)initWithBaskets:(id)baskets
{
  v43 = *MEMORY[0x277D85DE8];
  basketsCopy = baskets;
  v40.receiver = self;
  v40.super_class = BMAprioriPatternMiner;
  v5 = [(BMAprioriPatternMiner *)&v40 init];
  v6 = v5;
  if (v5)
  {
    v25 = v5;
    v5->_maxItemsetSize = 0;
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = basketsCopy;
    obj = basketsCopy;
    v30 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v30)
    {
      v28 = *v37;
      do
      {
        v9 = 0;
        do
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v31 = v9;
          v10 = *(*(&v36 + 1) + 8 * v9);
          indexSet = [MEMORY[0x277CCAB58] indexSet];
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v33;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v33 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v32 + 1) + 8 * i);
                v18 = [orderedSet indexOfObject:v17];
                if (v18 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  [orderedSet addObject:v17];
                  v18 = [orderedSet indexOfObject:v17];
                  [array addObject:v17];
                }

                [indexSet addIndex:v18];
              }

              v14 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
            }

            while (v14);
          }

          v19 = [indexSet copy];
          [array2 addObject:v19];

          v9 = v31 + 1;
        }

        while (v31 + 1 != v30);
        v30 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v30);
    }

    v20 = [array copy];
    v6 = v25;
    items = v25->_items;
    v25->_items = v20;

    v22 = [array2 copy];
    indexBaskets = v25->_indexBaskets;
    v25->_indexBaskets = v22;

    v25->_shouldStop = 0;
    basketsCopy = v26;
  }

  return v6;
}

- (id)supportOfItemIndexSet:(id)set
{
  v18 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  indexBaskets = [(BMAprioriPatternMiner *)self indexBaskets];
  v6 = [indexBaskets countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(indexBaskets);
        }

        v8 += [*(*(&v13 + 1) + 8 * i) containsIndexes:setCopy];
      }

      v7 = [indexBaskets countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];

  return v11;
}

- (id)getItemIndexSetsWithMinSupport:(double)support itemIndexSets:(id)sets
{
  v23 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = setsCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([(BMAprioriPatternMiner *)self shouldStop])
        {

          v16 = MEMORY[0x277CBEC10];
          goto LABEL_13;
        }

        v14 = [(BMAprioriPatternMiner *)self supportOfItemIndexSet:v13];
        integerValue = [v14 integerValue];
        if (integerValue >= support)
        {
          [dictionary setObject:v14 forKey:{v13, integerValue}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = dictionary;
LABEL_13:

  return v16;
}

- (id)minePatternsWithMinSupport:(unint64_t)support constrainedToPatternsWithTypes:(id)types
{
  typesCopy = types;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  items = [(BMAprioriPatternMiner *)self items];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __83__BMAprioriPatternMiner_minePatternsWithMinSupport_constrainedToPatternsWithTypes___block_invoke;
  v47[3] = &unk_278D065F8;
  v41 = typesCopy;
  v48 = v41;
  v9 = indexSet;
  v49 = v9;
  [items enumerateObjectsUsingBlock:v47];

  v40 = v9;
  v46 = [v9 copy];
  v10 = 0x277CBE000uLL;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  items2 = [(BMAprioriPatternMiner *)self items];
  v13 = [items2 count];

  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = [MEMORY[0x277CCAA78] indexSetWithIndex:v14];
      [v11 addObject:v15];

      ++v14;
      items3 = [(BMAprioriPatternMiner *)self items];
      v17 = [items3 count];
    }

    while (v17 > v14);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  supportCopy = support;
  v39 = v11;
  v20 = [(BMAprioriPatternMiner *)self getItemIndexSetsWithMinSupport:v11 itemIndexSets:support];
  v21 = 0;
  if ([v20 count])
  {
    v22 = 2;
    v23 = v20;
    v38 = dictionary;
    while (1)
    {
      [dictionary addEntriesFromDictionary:v23];
      v44 = objc_alloc_init(*(v10 + 2840));

      v42 = v23;
      allKeys = [v23 allKeys];
      if ([allKeys count])
      {
        break;
      }

LABEL_17:
      if ([(BMAprioriPatternMiner *)self maxItemsetSize])
      {
        maxItemsetSize = [(BMAprioriPatternMiner *)self maxItemsetSize];
        if (v22 > maxItemsetSize)
        {
          v36 = BMLog(maxItemsetSize);
          v21 = v44;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            [BMAprioriPatternMiner minePatternsWithMinSupport:v36 constrainedToPatternsWithTypes:?];
          }

          v20 = v42;
          dictionary = v38;
          goto LABEL_25;
        }
      }

      v21 = v44;
      v20 = [(BMAprioriPatternMiner *)self getItemIndexSetsWithMinSupport:v44 itemIndexSets:supportCopy];

      ++v22;
      v23 = v20;
      v10 = 0x277CBE000;
      dictionary = v38;
      if (![v20 count])
      {
        goto LABEL_25;
      }
    }

    v25 = 0;
    v45 = allKeys;
    while (1)
    {
      v43 = v25 + 1;
      if (v25 + 1 < [allKeys count])
      {
        break;
      }

LABEL_16:
      v25 = v43;
      if (v43 >= [allKeys count])
      {
        goto LABEL_17;
      }
    }

    v26 = v25 + 1;
    while (![(BMAprioriPatternMiner *)self shouldStop])
    {
      v27 = [allKeys objectAtIndexedSubscript:v25];
      v28 = [allKeys objectAtIndexedSubscript:v26];
      v29 = objc_alloc_init(MEMORY[0x277CCAB58]);
      [v29 addIndexes:v27];
      [v29 addIndexes:v28];
      if ([v29 count] == v22)
      {
        v30 = v25;
        v31 = v22;
        v32 = [v46 mutableCopy];
        [v32 removeIndexes:v29];
        v33 = [v32 count];
        if (v33 != [v46 count])
        {
          [v44 addObject:v29];
        }

        v22 = v31;
        v25 = v30;
        allKeys = v45;
      }

      if (++v26 >= [allKeys count])
      {
        goto LABEL_16;
      }
    }

    v35 = MEMORY[0x277CBEC10];
    dictionary = v38;
    v21 = v44;
    v20 = v42;
  }

  else
  {
LABEL_25:
    v35 = dictionary;
  }

  return v35;
}

void __83__BMAprioriPatternMiner_minePatternsWithMinSupport_constrainedToPatternsWithTypes___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 type];
  LODWORD(v5) = [v5 containsObject:v6];

  if (v5)
  {
    v7 = *(a1 + 40);

    [v7 addIndex:a3];
  }
}

- (void)minePatternsWithMinSupport:(void *)a1 constrainedToPatternsWithTypes:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "maxItemsetSize")}];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_241ACA000, a2, OS_LOG_TYPE_DEBUG, "Finished mining patterns due to max items in itemset (%@) reached", &v4, 0xCu);
}

@end