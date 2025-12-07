@interface REArrayDiff
+ (id)_createSetFromElementArray:(id)array equalComparator:(id)comparator hashGenerator:(id)generator;
+ (id)_indexSetFromSet:(id)set;
+ (id)diffFromElements:(id)elements toElements:(id)toElements equalComparator:(id)comparator hashGenerator:(id)generator changeComparator:(id)changeComparator;
- (void)enumerateOperationsUsingBlock:(id)block;
@end

@implementation REArrayDiff

+ (id)diffFromElements:(id)elements toElements:(id)toElements equalComparator:(id)comparator hashGenerator:(id)generator changeComparator:(id)changeComparator
{
  v128 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  toElementsCopy = toElements;
  comparatorCopy = comparator;
  generatorCopy = generator;
  changeComparatorCopy = changeComparator;
  v82 = objc_opt_new();
  v74 = elementsCopy;
  v16 = [self _createSetFromElementArray:elementsCopy equalComparator:comparatorCopy hashGenerator:generatorCopy];
  selfCopy = self;
  v78 = comparatorCopy;
  v80 = toElementsCopy;
  v76 = generatorCopy;
  v17 = [self _createSetFromElementArray:toElementsCopy equalComparator:comparatorCopy hashGenerator:generatorCopy];
  v18 = [MEMORY[0x277CBEB58] set];
  v19 = [MEMORY[0x277CBEB58] set];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v20 = v16;
  v21 = [v20 countByEnumeratingWithState:&v121 objects:v127 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v122;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v122 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v121 + 1) + 8 * i);
        if ([v17 containsObject:v25])
        {
          v26 = v19;
        }

        else
        {
          v26 = v18;
        }

        [v26 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v121 objects:v127 count:16];
    }

    while (v22);
  }

  v84 = v18;

  v27 = [MEMORY[0x277CBEB58] set];
  v28 = [MEMORY[0x277CBEB58] set];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = v17;
  v29 = [obj countByEnumeratingWithState:&v117 objects:v126 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v118;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v118 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v117 + 1) + 8 * j);
        if ([v20 containsObject:v33])
        {
          v34 = v28;
        }

        else
        {
          v34 = v27;
        }

        [v34 addObject:v33];
      }

      v30 = [obj countByEnumeratingWithState:&v117 objects:v126 count:16];
    }

    while (v30);
  }

  v69 = v28;
  v83 = v27;
  v81 = v20;

  indexSet = [MEMORY[0x277CCAB58] indexSet];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  indexSet2 = [MEMORY[0x277CCAB58] indexSet];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v35 = v19;
  v36 = [v35 countByEnumeratingWithState:&v113 objects:v125 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v114;
    v85 = *MEMORY[0x277CBE658];
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v114 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v113 + 1) + 8 * k);
        v41 = [obj member:v40];
        if (!v41)
        {
          v42 = MEMORY[0x277CBEAD8];
          object = [v40 object];
          [v42 raise:v85 format:{@"Missing object %@ in toSet", object}];
        }

        object2 = [v40 object];
        object3 = [v41 object];
        v46 = changeComparatorCopy[2](changeComparatorCopy, object2, object3);

        index = [v40 index];
        if (v46)
        {
          [indexSet addIndex:index];
          v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v40, "index")}];
          [dictionary setObject:v41 forKeyedSubscript:v48];
        }

        else
        {
          [indexSet2 addIndex:index];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v113 objects:v125 count:16];
    }

    while (v37);
  }

  v71 = v35;

  v49 = [selfCopy _indexSetFromSet:v84];
  v68 = [selfCopy _indexSetFromSet:v83];
  v50 = [MEMORY[0x277CBEB58] set];
  v51 = [v49 mutableCopy];
  v52 = [v68 mutableCopy];
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke;
  v105[3] = &unk_2785FD558;
  v53 = v74;
  v111 = v78;
  v112 = v76;
  v106 = v53;
  v107 = v69;
  v108 = v51;
  v109 = v52;
  v110 = v50;
  v54 = v50;
  v86 = v52;
  v75 = v51;
  v73 = v69;
  v77 = v76;
  v79 = v78;
  v55 = MEMORY[0x22AABC5E0](v105);
  [indexSet enumerateIndexesUsingBlock:v55];
  [indexSet2 enumerateIndexesUsingBlock:v55];
  array = [MEMORY[0x277CBEB18] array];
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3221225472;
  v102[2] = __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_2;
  v102[3] = &unk_2785FD580;
  v103 = dictionary;
  v57 = array;
  v104 = v57;
  v88 = dictionary;
  [indexSet enumerateIndexesUsingBlock:v102];
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_3;
  v99[3] = &unk_2785FD580;
  v100 = v53;
  v58 = v57;
  v101 = v58;
  v70 = v53;
  [v49 enumerateIndexesWithOptions:2 usingBlock:v99];
  allObjects = [v54 allObjects];
  v60 = [allObjects sortedArrayUsingComparator:&__block_literal_global_108];
  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_5;
  v96[3] = &unk_2785FD5C8;
  v61 = v80;
  v97 = v61;
  v62 = v58;
  v98 = v62;
  [v60 enumerateObjectsUsingBlock:v96];

  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_6;
  v93[3] = &unk_2785FD580;
  v94 = v61;
  v63 = v62;
  v95 = v63;
  v64 = v61;
  [v68 enumerateIndexesUsingBlock:v93];
  v65 = v82[1];
  v82[1] = v63;
  v66 = v63;

  return v82;
}

void __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke(uint64_t a1, uint64_t a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) objectAtIndex:a2];
  v5 = [_REDiffItem itemWithObject:v4 index:a2 comparator:*(a1 + 72) hashGenerator:*(a1 + 80)];

  v6 = [*(a1 + 40) member:v5];
  v7 = [v5 index];
  v8 = v7 - [*(a1 + 48) countOfIndexesInRange:{0, objc_msgSend(v5, "index")}];
  v9 = [v6 index];
  if (v8 != v9 - [*(a1 + 56) countOfIndexesInRange:{0, objc_msgSend(v6, "index")}])
  {
    v10 = [v5 index];
    if (v10 != [v6 index])
    {
      v11 = *(a1 + 64);
      v12 = MEMORY[0x277CCAA70];
      v14[0] = [v5 index];
      v14[1] = [v6 index];
      v13 = [v12 indexPathWithIndexes:v14 length:2];
      [v11 addObject:v13];

      [*(a1 + 48) addIndex:{objc_msgSend(v5, "index")}];
      [*(a1 + 56) addIndex:{objc_msgSend(v6, "index")}];
    }
  }
}

void __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v9 = [v4 objectForKeyedSubscript:v5];

  v6 = *(a1 + 40);
  v7 = [v9 object];
  v8 = [REDiffOperation reloadWithItem:v7 atIndex:a2];
  [v6 addObject:v8];
}

void __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) objectAtIndex:a2];
  v4 = *(a1 + 40);
  v5 = [REDiffOperation deleteWithItem:v6 atIndex:a2];
  [v4 addObject:v5];
}

void __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 indexAtPosition:0];
  v5 = [v3 indexAtPosition:1];

  v8 = [*(a1 + 32) objectAtIndex:v5];
  v6 = *(a1 + 40);
  v7 = [REDiffOperation moveWithItem:v8 fromIndex:v4 toIndex:v5];
  [v6 addObject:v7];
}

void __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) objectAtIndex:a2];
  v4 = *(a1 + 40);
  v5 = [REDiffOperation insertWithItem:v6 atIndex:a2];
  [v4 addObject:v5];
}

- (void)enumerateOperationsUsingBlock:(id)block
{
  blockCopy = block;
  allOperations = self->_allOperations;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__REArrayDiff_enumerateOperationsUsingBlock___block_invoke;
  v7[3] = &unk_2785FD5F0;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSArray *)allOperations enumerateObjectsUsingBlock:v7];
}

void __45__REArrayDiff_enumerateOperationsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 type];
  v7 = [v3 item];
  v5 = [v3 toIndex];
  v6 = [v3 fromIndex];

  (*(v2 + 16))(v2, v4, v7, v5, v6);
}

+ (id)_indexSetFromSet:(id)set
{
  v16 = *MEMORY[0x277D85DE8];
  setCopy = set;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = setCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [indexSet addIndex:{objc_msgSend(*(*(&v11 + 1) + 8 * i), "index", v11)}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return indexSet;
}

+ (id)_createSetFromElementArray:(id)array equalComparator:(id)comparator hashGenerator:(id)generator
{
  arrayCopy = array;
  comparatorCopy = comparator;
  generatorCopy = generator;
  v10 = [MEMORY[0x277CBEB58] set];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__REArrayDiff__createSetFromElementArray_equalComparator_hashGenerator___block_invoke;
  v24[3] = &unk_2785FD618;
  v26 = comparatorCopy;
  v27 = generatorCopy;
  v11 = v10;
  v25 = v11;
  v12 = generatorCopy;
  v13 = comparatorCopy;
  [arrayCopy enumerateObjectsUsingBlock:v24];
  v14 = [v11 count];
  if (v14 != [arrayCopy count])
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Items in array are not unique: %@", v15, v16, v17, v18, v19, v20, arrayCopy);
  }

  v21 = v25;
  v22 = v11;

  return v11;
}

void __72__REArrayDiff__createSetFromElementArray_equalComparator_hashGenerator___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [_REDiffItem itemWithObject:a2 index:a3 comparator:*(a1 + 40) hashGenerator:*(a1 + 48)];
  [*(a1 + 32) addObject:v4];
}

@end