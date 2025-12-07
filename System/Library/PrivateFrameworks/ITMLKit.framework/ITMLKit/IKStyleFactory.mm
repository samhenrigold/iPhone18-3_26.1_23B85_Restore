@interface IKStyleFactory
+ (id)styleFactoryWithMarkup:(id)markup filterBlockedStyles:(BOOL)styles;
- (IKStyleFactory)initWithStylesGroup:(id)group;
- (id)_collapsedStyleListForSelectors:(id)selectors targetSelector:(id)selector stylesGroup:(id)group;
- (id)copyWithZone:(_NSZone *)zone;
- (id)styleListForClassSelector:(id)selector;
- (void)setViewElementStylesDirty;
@end

@implementation IKStyleFactory

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  stylesGroup = [(IKStyleFactory *)self stylesGroup];
  v6 = [v4 initWithStylesGroup:stylesGroup];

  return v6;
}

+ (id)styleFactoryWithMarkup:(id)markup filterBlockedStyles:(BOOL)styles
{
  v5 = [IKStylesGroup stylesGroupWithMarkup:markup filterBlockedStyles:styles];
  if (v5)
  {
    v6 = [[self alloc] initWithStylesGroup:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (IKStyleFactory)initWithStylesGroup:(id)group
{
  v15[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v14.receiver = self;
  v14.super_class = IKStyleFactory;
  v6 = [(IKStyleFactory *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stylesGroup, group);
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    styleListsByClassSelector = v7->_styleListsByClassSelector;
    v7->_styleListsByClassSelector = v8;

    v15[0] = @"*";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v11 = [(IKStyleFactory *)v7 _collapsedStyleListForSelectors:v10 targetSelector:@"*" stylesGroup:v7->_stylesGroup];

    if ([v11 count])
    {
      v12 = [[IKStyleList alloc] initWithClassSelector:@"*" styles:v11 baseStyleList:0];
      [(NSMutableDictionary *)v7->_styleListsByClassSelector setObject:v12 forKeyedSubscript:@"*"];
    }
  }

  return v7;
}

- (id)styleListForClassSelector:(id)selector
{
  selectorCopy = selector;
  styleListsByClassSelector = [(IKStyleFactory *)self styleListsByClassSelector];
  v6 = [styleListsByClassSelector objectForKeyedSubscript:@"*"];

  v7 = v6;
  v8 = [IKViewElementStyle normalizeClassSelectorString:selectorCopy];

  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v10 = [v8 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  v11 = v7;
  if ([v10 count])
  {
    v12 = [v10 componentsJoinedByString:@" "];
    styleListsByClassSelector2 = [(IKStyleFactory *)self styleListsByClassSelector];
    v11 = [styleListsByClassSelector2 objectForKeyedSubscript:v12];

    if (!v11)
    {
      stylesGroup = [(IKStyleFactory *)self stylesGroup];
      v15 = [(IKStyleFactory *)self _collapsedStyleListForSelectors:v10 targetSelector:v12 stylesGroup:stylesGroup];

      if ([v15 count])
      {
        v11 = [[IKStyleList alloc] initWithClassSelector:v12 styles:v15 baseStyleList:v7];
        if (v11)
        {
          styleListsByClassSelector3 = [(IKStyleFactory *)self styleListsByClassSelector];
          [styleListsByClassSelector3 setObject:v11 forKeyedSubscript:v12];
        }
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

- (void)setViewElementStylesDirty
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  styleListsByClassSelector = [(IKStyleFactory *)self styleListsByClassSelector];
  allValues = [styleListsByClassSelector allValues];

  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7++) setNeedsReresolution];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_collapsedStyleListForSelectors:(id)selectors targetSelector:(id)selector stylesGroup:(id)group
{
  v54 = *MEMORY[0x277D85DE8];
  selectorsCopy = selectors;
  selectorCopy = selector;
  groupCopy = group;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __77__IKStyleFactory__collapsedStyleListForSelectors_targetSelector_stylesGroup___block_invoke;
  v49[3] = &unk_279799858;
  v12 = v11;
  v50 = v12;
  v13 = selectorCopy;
  v51 = v13;
  v14 = v10;
  v52 = v14;
  v33 = MEMORY[0x259C21BA0](v49);
  orderedStylesOrGroups = [groupCopy orderedStylesOrGroups];
  v36 = groupCopy;
  indexedSelectors = [groupCopy indexedSelectors];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v17 = selectorsCopy;
  v18 = [v17 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v46;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [indexedSelectors objectForKeyedSubscript:*(*(&v45 + 1) + 8 * i)];
        if ([v22 count])
        {
          [indexSet addIndexes:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v19);
  }

  groupIndexes = [v36 groupIndexes];

  if (groupIndexes)
  {
    groupIndexes2 = [v36 groupIndexes];
    [indexSet addIndexes:groupIndexes2];
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __77__IKStyleFactory__collapsedStyleListForSelectors_targetSelector_stylesGroup___block_invoke_2;
  v37[3] = &unk_27979A040;
  v38 = orderedStylesOrGroups;
  v39 = v12;
  selfCopy = self;
  v41 = v17;
  v43 = v14;
  v44 = v33;
  v42 = v13;
  v25 = v14;
  v26 = v33;
  v27 = v13;
  v28 = v17;
  v29 = v12;
  v30 = orderedStylesOrGroups;
  [indexSet enumerateIndexesUsingBlock:v37];
  v26[2](v26);
  v31 = [v25 copy];

  return v31;
}

void __77__IKStyleFactory__collapsedStyleListForSelectors_targetSelector_stylesGroup___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [IKViewElementStyle elementStyleWithSelector:*(a1 + 40) aggregatingStyles:*(a1 + 32)];
    [*(a1 + 48) addObject:v2];
    [*(a1 + 32) removeAllObjects];
  }
}

void __77__IKStyleFactory__collapsedStyleListForSelectors_targetSelector_stylesGroup___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) objectAtIndex:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) addObject:v7];
  }

  else
  {
    v3 = v7;
    v4 = [*(a1 + 48) _collapsedStyleListForSelectors:*(a1 + 56) targetSelector:*(a1 + 64) stylesGroup:v3];
    v5 = [v4 firstObject];

    if (v5)
    {
      (*(*(a1 + 80) + 16))();
      v6 = [v3 mediaQueryList];
      [v5 setMediaQueryList:v6];

      [*(a1 + 72) addObject:v5];
    }
  }
}

@end