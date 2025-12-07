@interface BMRuleExtractor
- (BMRuleExtractor)initWithPatterns:(id)patterns items:(id)items basketCount:(unint64_t)count;
- (id)itemSetForItemIndexSet:(id)set;
- (id)subsetsOfItemset:(id)itemset;
- (unint64_t)supportOfItemSet:(id)set;
- (void)extractRulesWithMinSupport:(unint64_t)support minConfidence:(double)confidence targetTypes:(id)types batchSize:(unint64_t)size currentDate:(id)date datedBaskets:(id)baskets handler:(id)handler;
@end

@implementation BMRuleExtractor

- (BMRuleExtractor)initWithPatterns:(id)patterns items:(id)items basketCount:(unint64_t)count
{
  patternsCopy = patterns;
  itemsCopy = items;
  v22.receiver = self;
  v22.super_class = BMRuleExtractor;
  v10 = [(BMRuleExtractor *)&v22 init];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
    if ([itemsCopy count])
    {
      v12 = 0;
      do
      {
        v13 = [itemsCopy objectAtIndexedSubscript:v12];
        v14 = [v13 copy];

        v15 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndex:v12];
        v16 = [patternsCopy objectForKeyedSubscript:v15];
        [v14 setAbsoluteSupport:{objc_msgSend(v16, "unsignedIntegerValue")}];
        [v11 addObject:v14];

        ++v12;
      }

      while (v12 < [itemsCopy count]);
    }

    v17 = [patternsCopy mutableCopy];
    patterns = v10->_patterns;
    v10->_patterns = v17;

    v19 = [v11 copy];
    items = v10->_items;
    v10->_items = v19;

    v10->_basketCount = count;
    v10->_shouldStop = 0;
  }

  return v10;
}

- (id)subsetsOfItemset:(id)itemset
{
  v23 = *MEMORY[0x277D85DE8];
  itemsetCopy = itemset;
  v4 = [MEMORY[0x277CBEB58] set];
  firstIndex = [itemsetCopy firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = firstIndex;
    do
    {
      v7 = [MEMORY[0x277CBEB58] set];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = v4;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v18 + 1) + 8 * i) mutableCopy];
            [v13 addIndex:v6];
            v14 = [v13 copy];
            [v7 addObject:v14];
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

      v15 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndex:v6];
      [v8 addObject:v15];

      allObjects = [v7 allObjects];
      [v8 addObjectsFromArray:allObjects];

      v6 = [itemsetCopy indexGreaterThanIndex:v6];
    }

    while (v6 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return v4;
}

- (unint64_t)supportOfItemSet:(id)set
{
  v24 = *MEMORY[0x277D85DE8];
  setCopy = set;
  patterns = [(BMRuleExtractor *)self patterns];
  v6 = [patterns objectForKeyedSubscript:setCopy];

  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    patterns2 = [(BMRuleExtractor *)self patterns];
    v9 = [patterns2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      unsignedIntegerValue = 0;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(patterns2);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if ([v13 containsIndexes:setCopy])
          {
            patterns3 = [(BMRuleExtractor *)self patterns];
            v15 = [patterns3 objectForKey:v13];
            unsignedIntegerValue += [v15 integerValue];
          }
        }

        v10 = [patterns2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    patterns4 = [(BMRuleExtractor *)self patterns];
    [patterns4 setObject:v16 forKeyedSubscript:setCopy];
  }

  return unsignedIntegerValue;
}

- (id)itemSetForItemIndexSet:(id)set
{
  setCopy = set;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  firstIndex = [setCopy firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = firstIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [setCopy indexGreaterThanIndex:i])
    {
      items = [(BMRuleExtractor *)self items];
      v9 = [items objectAtIndexedSubscript:i];
      [v5 addObject:v9];
    }
  }

  v10 = [v5 copy];

  return v10;
}

- (void)extractRulesWithMinSupport:(unint64_t)support minConfidence:(double)confidence targetTypes:(id)types batchSize:(unint64_t)size currentDate:(id)date datedBaskets:(id)baskets handler:(id)handler
{
  v126 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  dateCopy = date;
  basketsCopy = baskets;
  handlerCopy = handler;
  if (handlerCopy)
  {
    sizeCopy = size;
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    items = [(BMRuleExtractor *)self items];
    v120[0] = MEMORY[0x277D85DD0];
    v120[1] = 3221225472;
    v120[2] = __115__BMRuleExtractor_extractRulesWithMinSupport_minConfidence_targetTypes_batchSize_currentDate_datedBaskets_handler___block_invoke;
    v120[3] = &unk_278D065F8;
    v121 = typesCopy;
    v22 = indexSet;
    v122 = v22;
    [items enumerateObjectsUsingBlock:v120];

    v85 = v22;
    v96 = [v22 copy];
    v95 = [MEMORY[0x277CBEB58] set];
    selfCopy = self;
    patterns = [(BMRuleExtractor *)self patterns];
    v24 = [patterns copy];

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v25 = v24;
    v86 = [v25 countByEnumeratingWithState:&v116 objects:v125 count:16];
    if (v86)
    {
      v26 = *v117;
      supportCopy = support;
      v28 = selfCopy;
      v82 = dateCopy;
      v83 = typesCopy;
      v84 = basketsCopy;
      v88 = handlerCopy;
      v81 = v25;
      v80 = *v117;
      do
      {
        v29 = 0;
        do
        {
          if (*v117 != v26)
          {
            v30 = v29;
            objc_enumerationMutation(v25);
            v29 = v30;
          }

          v90 = v29;
          v31 = *(*(&v116 + 1) + 8 * v29);
          v94 = objc_autoreleasePoolPush();
          patterns2 = [(BMRuleExtractor *)v28 patterns];
          v33 = [patterns2 objectForKey:v31];
          [v33 doubleValue];
          v35 = v34;

          if (v35 >= supportCopy)
          {
            v37 = [(BMRuleExtractor *)v28 subsetsOfItemset:v31];
            v112 = 0u;
            v113 = 0u;
            v114 = 0u;
            v115 = 0u;
            obj = v37;
            v36 = v96;
            v104 = [obj countByEnumeratingWithState:&v112 objects:v124 count:16];
            if (v104)
            {
              v38 = v31;
              v103 = *v113;
              v87 = v31;
              v39 = sizeCopy;
              do
              {
                v40 = 0;
                do
                {
                  if (*v113 != v103)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v41 = *(*(&v112 + 1) + 8 * v40);
                  v42 = objc_autoreleasePoolPush();
                  if ([(BMRuleExtractor *)v28 shouldStop])
                  {
                    dateCopy = v82;
                    typesCopy = v83;
                    v79 = v95;
                    v25 = v81;
                    goto LABEL_51;
                  }

                  context = v42;
                  v43 = [v38 mutableCopy];
                  [v43 removeIndexes:v41];
                  if ([v43 count])
                  {
                    v44 = [v43 mutableCopy];
                    [v44 removeIndexes:v36];
                    v105 = v44;
                    if ([v44 count] || (v45 = -[BMRuleExtractor supportOfItemSet:](v28, "supportOfItemSet:", v41), v46 = v35 / v45, v46 < confidence))
                    {
                      v47 = v44;
                    }

                    else
                    {
                      v93 = v45;
                      basketCount = [(BMRuleExtractor *)v28 basketCount];
                      v92 = [(BMRuleExtractor *)v28 supportOfItemSet:v43];
                      if (basketsCopy)
                      {
                        v100 = objc_alloc_init(MEMORY[0x277CBEB58]);
                        v97 = objc_alloc_init(MEMORY[0x277CBEB58]);
                        v48 = MEMORY[0x277CBEB58];
                        v49 = [(BMRuleExtractor *)v28 itemSetForItemIndexSet:v41];
                        v50 = [v48 setWithSet:v49];

                        v51 = [(BMRuleExtractor *)v28 itemSetForItemIndexSet:v43];
                        v106 = v50;
                        [v50 unionSet:v51];

                        v99 = [MEMORY[0x277CBEAA8] now];
                        v108 = 0u;
                        v109 = 0u;
                        v110 = 0u;
                        v111 = 0u;
                        v101 = basketsCopy;
                        v52 = [v101 countByEnumeratingWithState:&v108 objects:v123 count:16];
                        if (v52)
                        {
                          v53 = v52;
                          v54 = *v109;
                          while (2)
                          {
                            for (i = 0; i != v53; ++i)
                            {
                              if (*v109 != v54)
                              {
                                objc_enumerationMutation(v101);
                              }

                              v56 = *(*(&v108 + 1) + 8 * i);
                              if ([(BMRuleExtractor *)v28 shouldStop])
                              {

                                v69 = 0;
                                v68 = 0;
                                v66 = 0;
                                v67 = v100;
                                v65 = v97;
                                goto LABEL_37;
                              }

                              basket = [v56 basket];
                              v58 = [v106 isSubsetOfSet:basket];

                              if (v58)
                              {
                                currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
                                date = [v56 date];
                                v61 = [currentCalendar components:28 fromDate:date];

                                [v100 addObject:v61];
                                date2 = [v56 date];
                                [v99 timeIntervalSinceDate:date2];
                                v64 = v63;

                                if (v64 < 604800.0)
                                {
                                  [v97 addObject:v61];
                                }

                                v28 = selfCopy;
                              }
                            }

                            v53 = [v101 countByEnumeratingWithState:&v108 objects:v123 count:16];
                            if (v53)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        v65 = v97;
                        v66 = [v97 count];
                        v67 = v100;
                        v68 = [v100 count];
                        v69 = 1;
LABEL_37:

                        basketsCopy = v84;
                        v39 = sizeCopy;
                        if (!v69)
                        {
                          v79 = v95;
                          handlerCopy = v88;
                          goto LABEL_59;
                        }
                      }

                      else
                      {
                        v68 = 0;
                        v66 = 0;
                      }

                      v70 = [BMRule alloc];
                      v71 = [(BMRuleExtractor *)selfCopy itemSetForItemIndexSet:v41];
                      v72 = [(BMRuleExtractor *)selfCopy itemSetForItemIndexSet:v43];
                      v73 = [(BMRule *)v70 initWithAntecedent:v71 consequent:v72 support:[(BMRuleExtractor *)selfCopy basketCount] confidence:v35 basketCount:v93 absoluteSupport:v92 absoluteAntecedentSupport:v35 / basketCount absoluteConsequentSupport:v46 uniqueDaysLastWeek:v66 uniqueDaysTotal:v68];

                      [v95 addObject:v73];
                      if ([v95 count] >= v39)
                      {
                        v74 = [v95 copy];
                        handlerCopy = v88;
                        v75 = (v88[2])(v88, v74);

                        v76 = [MEMORY[0x277CBEB58] set];

                        if (v75)
                        {

                          v79 = v76;
LABEL_59:

                          dateCopy = v82;
                          typesCopy = v83;
                          v36 = v96;
                          v25 = v81;
                          v42 = context;
LABEL_51:
                          objc_autoreleasePoolPop(v42);

                          objc_autoreleasePoolPop(v94);
                          v78 = v25;
                          goto LABEL_55;
                        }

                        v95 = v76;
                      }

                      else
                      {
                        handlerCopy = v88;
                      }

                      v47 = v105;

                      v36 = v96;
                      v28 = selfCopy;
                      v38 = v87;
                    }
                  }

                  objc_autoreleasePoolPop(context);
                  ++v40;
                }

                while (v40 != v104);
                v77 = [obj countByEnumeratingWithState:&v112 objects:v124 count:16];
                v104 = v77;
              }

              while (v77);
            }

            dateCopy = v82;
            typesCopy = v83;
            v25 = v81;
            v26 = v80;
          }

          else
          {
            v36 = v96;
          }

          objc_autoreleasePoolPop(v94);
          v29 = v90 + 1;
        }

        while (v90 + 1 != v86);
        v86 = [v25 countByEnumeratingWithState:&v116 objects:v125 count:16];
      }

      while (v86);
    }

    else
    {
      v36 = v96;
    }

    v79 = v95;
    if ([v95 count])
    {
      v78 = [v95 copy];
      handlerCopy[2](handlerCopy, v78);
LABEL_55:
    }
  }
}

void __115__BMRuleExtractor_extractRulesWithMinSupport_minConfidence_targetTypes_batchSize_currentDate_datedBaskets_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
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

@end