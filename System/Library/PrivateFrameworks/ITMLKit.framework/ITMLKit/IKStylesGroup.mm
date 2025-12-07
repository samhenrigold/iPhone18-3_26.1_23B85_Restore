@interface IKStylesGroup
- (IKStylesGroup)initWithCSSRule:(id)rule mediaQueryList:(id)list filterBlockedStyles:(BOOL)styles;
- (IKStylesGroup)initWithMarkup:(id)markup parseSubGroups:(BOOL)groups mediaQueryList:(id)list filterBlockedStyles:(BOOL)styles;
- (void)_computeIndexedSelectorsFromStylesOrGroups:(id)groups;
@end

@implementation IKStylesGroup

- (IKStylesGroup)initWithCSSRule:(id)rule mediaQueryList:(id)list filterBlockedStyles:(BOOL)styles
{
  stylesCopy = styles;
  ruleCopy = rule;
  listCopy = list;
  v25.receiver = self;
  v25.super_class = IKStylesGroup;
  v10 = [(IKStylesGroup *)&v25 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_mediaQueryList, list);
    array = [MEMORY[0x277CBEB18] array];
    selectorList = [ruleCopy selectorList];
    v14 = [selectorList count];

    if (v14)
    {
      v15 = 0;
      do
      {
        selectorList2 = [ruleCopy selectorList];
        v17 = [selectorList2 selectorAtIndex:v15];

        if (v17 && (![v17 type] || objc_msgSend(v17, "type") == 3))
        {
          name = [v17 name];
          v19 = [IKViewElementStyle elementStyleWithSelector:name cssRule:ruleCopy filterBlockedStyles:stylesCopy];

          if (v19)
          {
            [array addObject:v19];
          }
        }

        ++v15;
        selectorList3 = [ruleCopy selectorList];
        v21 = [selectorList3 count];
      }

      while (v15 < v21);
    }

    v22 = [array copy];
    orderedStylesOrGroups = v11->_orderedStylesOrGroups;
    v11->_orderedStylesOrGroups = v22;

    [(IKStylesGroup *)v11 _computeIndexedSelectorsFromStylesOrGroups:v11->_orderedStylesOrGroups];
  }

  return v11;
}

- (IKStylesGroup)initWithMarkup:(id)markup parseSubGroups:(BOOL)groups mediaQueryList:(id)list filterBlockedStyles:(BOOL)styles
{
  stylesCopy = styles;
  markupCopy = markup;
  listCopy = list;
  v42.receiver = self;
  v42.super_class = IKStylesGroup;
  v11 = [(IKStylesGroup *)&v42 init];
  v12 = v11;
  if (v11)
  {
    listCopy2 = list;
    v40 = v11;
    array = [MEMORY[0x277CBEB18] array];
    v41 = markupCopy;
    v14 = [IKCSSParser parse:markupCopy];
    v15 = v14;
    if (v14)
    {
      ruleList = [v14 ruleList];
      v17 = [ruleList count];

      if (v17)
      {
        v18 = 0;
        do
        {
          ruleList2 = [v15 ruleList];
          v20 = [ruleList2 ruleAtIndex:v18];

          mediaQuery = [v20 mediaQuery];

          if (mediaQuery)
          {
            mediaQuery2 = [v20 mediaQuery];
            v23 = [IKStyleMediaQuery mediaQueryListWithCSSMediaQuery:mediaQuery2];

            v24 = [[IKStylesGroup alloc] initWithCSSRule:v20 mediaQueryList:v23 filterBlockedStyles:stylesCopy];
            if (v24)
            {
              [array addObject:v24];
            }
          }

          else
          {
            selectorList = [v20 selectorList];
            v26 = [selectorList count];

            if (v26)
            {
              v27 = 0;
              do
              {
                selectorList2 = [v20 selectorList];
                v29 = [selectorList2 selectorAtIndex:v27];

                if (v29 && (![v29 type] || objc_msgSend(v29, "type") == 3))
                {
                  name = [v29 name];
                  v31 = [IKViewElementStyle elementStyleWithSelector:name cssRule:v20 filterBlockedStyles:stylesCopy];

                  if (v31)
                  {
                    [array addObject:v31];
                  }
                }

                ++v27;
                selectorList3 = [v20 selectorList];
                v33 = [selectorList3 count];
              }

              while (v27 < v33);
            }
          }

          ++v18;
          ruleList3 = [v15 ruleList];
          v35 = [ruleList3 count];
        }

        while (v18 < v35);
      }
    }

    v12 = v40;
    objc_storeStrong(&v40->_mediaQueryList, listCopy2);
    v36 = [array copy];
    orderedStylesOrGroups = v40->_orderedStylesOrGroups;
    v40->_orderedStylesOrGroups = v36;

    [(IKStylesGroup *)v12 _computeIndexedSelectorsFromStylesOrGroups:v12->_orderedStylesOrGroups];
    markupCopy = v41;
  }

  return v12;
}

- (void)_computeIndexedSelectorsFromStylesOrGroups:(id)groups
{
  v30 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(groupsCopy, "count")}];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __60__IKStylesGroup__computeIndexedSelectorsFromStylesOrGroups___block_invoke;
  v26[3] = &unk_27979A018;
  v7 = v6;
  v27 = v7;
  v8 = indexSet;
  v28 = v8;
  v21 = groupsCopy;
  [groupsCopy enumerateObjectsUsingBlock:v26];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [v7 allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v7 objectForKey:v14];
        v16 = [v15 copy];
        [v7 setObject:v16 forKey:v14];
      }

      v11 = [allKeys countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v11);
  }

  v17 = [v7 count];
  if (v17)
  {
    v17 = [v7 copy];
  }

  indexedSelectors = self->_indexedSelectors;
  self->_indexedSelectors = v17;

  v19 = [v8 count];
  if (v19)
  {
    v19 = [v8 copy];
  }

  groupIndexes = self->_groupIndexes;
  self->_groupIndexes = v19;
}

void __60__IKStylesGroup__computeIndexedSelectorsFromStylesOrGroups___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v7 classDescriptorString];
    v6 = [*(a1 + 32) objectForKey:v5];
    if (!v6)
    {
      v6 = [MEMORY[0x277CCAB58] indexSet];
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
    }

    [v6 addIndex:a3];
  }

  else
  {
    [*(a1 + 40) addIndex:a3];
  }
}

@end