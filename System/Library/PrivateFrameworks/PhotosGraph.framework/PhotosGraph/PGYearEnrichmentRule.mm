@interface PGYearEnrichmentRule
- (PGYearEnrichmentRule)initWithModelReader:(id)reader loggingConnection:(id)connection;
- (double)promotionScoreForHighlightItemList:(id)list;
- (id)keyAssetForHighlightItemList:(id)list sharingFilter:(unsigned __int16)filter;
- (void)enumerateChildVisibilityStateForHighlightItemList:(id)list sharingFilter:(unsigned __int16)filter withGraph:(id)graph neighborScoreComputer:(id)computer usingBlock:(id)block;
@end

@implementation PGYearEnrichmentRule

- (void)enumerateChildVisibilityStateForHighlightItemList:(id)list sharingFilter:(unsigned __int16)filter withGraph:(id)graph neighborScoreComputer:(id)computer usingBlock:(id)block
{
  filterCopy = filter;
  v38 = *MEMORY[0x277D85DE8];
  listCopy = list;
  blockCopy = block;
  v26 = listCopy;
  [listCopy childHighlightItemsForHighlightFilter:filterCopy];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v12 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        modelReader = [(PGYearEnrichmentRule *)self modelReader];
        v18 = [modelReader visibilityStateForHighlightItem:v16 sharingFilter:filterCopy];

        blockCopy[2](blockCopy, v16, v18);
      }

      v13 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v13);
  }

  sortedChildHighlightItems = [listCopy sortedChildHighlightItems];
  v20 = [sortedChildHighlightItems arrayByExcludingObjectsInArray:obj];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        blockCopy[2](blockCopy, *(*(&v28 + 1) + 8 * j), 0);
      }

      v23 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v23);
  }
}

- (id)keyAssetForHighlightItemList:(id)list sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  v28 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v7 = [(PGHighlightItemModelReader *)self->_modelReader contextualKeyAssetForHighlightItem:listCopy sharingFilter:filterCopy];
  if (!v7)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = listCopy;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Unexpected nil contextual key asset for highlight item list %@, will fallback to promotion score.", buf, 0xCu);
    }

    v9 = [listCopy childHighlightItemsForHighlightFilter:filterCopy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v22;
      v14 = -1.79769313e308;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          [v16 promotionScore];
          if (v17 > v14)
          {
            v18 = v17;
            v19 = v16;

            v14 = v18;
            v12 = v19;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v7 = [v12 keyAssetForHighlightFilter:filterCopy];
  }

  return v7;
}

- (double)promotionScoreForHighlightItemList:(id)list
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sortedChildHighlightItems = [list sortedChildHighlightItems];
  v4 = [sortedChildHighlightItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(sortedChildHighlightItems);
        }

        [*(*(&v11 + 1) + 8 * i) promotionScore];
        if (v7 < v9)
        {
          v7 = v9;
        }
      }

      v5 = [sortedChildHighlightItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (PGYearEnrichmentRule)initWithModelReader:(id)reader loggingConnection:(id)connection
{
  readerCopy = reader;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = PGYearEnrichmentRule;
  v9 = [(PGYearEnrichmentRule *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_modelReader, reader);
    objc_storeStrong(&v10->_loggingConnection, connection);
  }

  return v10;
}

@end