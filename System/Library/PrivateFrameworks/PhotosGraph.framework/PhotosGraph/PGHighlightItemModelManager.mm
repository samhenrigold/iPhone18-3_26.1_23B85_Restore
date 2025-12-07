@interface PGHighlightItemModelManager
- (PGHighlightItemModelManager)initWithLibrary:(id)library;
- (id)_contextualKeyAssetByHighlighItemUUIDForHighlightFilter:(unsigned __int16)filter;
- (id)_visibilityStateByHighlighItemUUIDForHighlightFilter:(unsigned __int16)filter;
- (id)contextualKeyAssetForHighlightItem:(id)item sharingFilter:(unsigned __int16)filter;
- (id)fetchChildHighlightItemsForHighlightItem:(id)item sharingFilter:(unsigned __int16)filter;
- (id)fetchParentHighlightItemsForHighlightItems:(id)items;
- (id)highlightUUIDsWithContextualKeyAssetChange;
- (id)highlightUUIDsWithVisibilityStateChange;
- (id)initForTesting;
- (unsigned)visibilityStateForHighlightItem:(id)item sharingFilter:(unsigned __int16)filter;
- (void)addVisibleHighlight:(id)highlight inMonth:(id)month withHighlightFilter:(unsigned __int16)filter;
- (void)commonInit;
- (void)consumeHighlightItemList:(id)list;
- (void)setContextualKeyAsset:(id)asset forHighlightItem:(id)item sharingFilter:(unsigned __int16)filter;
- (void)setVisibilityState:(unsigned __int16)state forHighlightItem:(id)item sharingFilter:(unsigned __int16)filter;
- (void)setVisibilityState:(unsigned __int16)state forHighlightItemList:(id)list sharingFilter:(unsigned __int16)filter;
@end

@implementation PGHighlightItemModelManager

- (id)_contextualKeyAssetByHighlighItemUUIDForHighlightFilter:(unsigned __int16)filter
{
  if (filter <= 2u)
  {
    a2 = (&self->_contextualKeyAssetPrivateByHighlighItemUUID)[filter & 0x1FFF];
  }

  return a2;
}

- (id)_visibilityStateByHighlighItemUUIDForHighlightFilter:(unsigned __int16)filter
{
  if (filter <= 2u)
  {
    a2 = (&self->_visibilityStatePrivateByHighlighItemUUID)[filter & 0x1FFF];
  }

  return a2;
}

- (void)addVisibleHighlight:(id)highlight inMonth:(id)month withHighlightFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  v28 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  monthCopy = month;
  v10 = [(PGHighlightItemModelManager *)self fetchChildHighlightItemsForHighlightItem:monthCopy sharingFilter:filterCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v22 = highlightCopy;
    v13 = 0;
    v14 = 0;
    v15 = *v24;
    v16 = 1.79769313e308;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        if (MEMORY[0x231902060]([(PGHighlightItemModelManager *)self visibilityStateForHighlightItem:v18 sharingFilter:filterCopy]))
        {
          ++v13;
          [v18 promotionScore];
          if (v19 < v16)
          {
            v20 = v19;
            v21 = v18;

            v16 = v20;
            v14 = v21;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
    if (v14)
    {
      highlightCopy = v22;
      if (v13 >= +[PGUserDefaults maximumNumberOfVisibleItems])
      {
        [(PGHighlightItemModelManager *)self setVisibilityState:1 forHighlightItem:v14 sharingFilter:filterCopy];
      }
    }

    else
    {
      highlightCopy = v22;
    }
  }

  else
  {
    v14 = 0;
  }

  [(PGHighlightItemModelManager *)self setVisibilityState:3 forHighlightItem:highlightCopy sharingFilter:filterCopy];
}

- (id)highlightUUIDsWithContextualKeyAssetChange
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  allKeys = [(NSMutableDictionary *)self->_contextualKeyAssetPrivateByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:allKeys];

  allKeys2 = [(NSMutableDictionary *)self->_contextualKeyAssetSharedByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:allKeys2];

  allKeys3 = [(NSMutableDictionary *)self->_contextualKeyAssetMixedByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:allKeys3];

  return v3;
}

- (id)highlightUUIDsWithVisibilityStateChange
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  allKeys = [(NSMutableDictionary *)self->_visibilityStatePrivateByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:allKeys];

  allKeys2 = [(NSMutableDictionary *)self->_visibilityStateSharedByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:allKeys2];

  allKeys3 = [(NSMutableDictionary *)self->_visibilityStateMixedByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:allKeys3];

  return v3;
}

- (id)contextualKeyAssetForHighlightItem:(id)item sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  itemCopy = item;
  v7 = [(PGHighlightItemModelManager *)self _contextualKeyAssetByHighlighItemUUIDForHighlightFilter:filterCopy];
  uuid = [itemCopy uuid];

  v9 = [v7 objectForKeyedSubscript:uuid];

  return v9;
}

- (void)setContextualKeyAsset:(id)asset forHighlightItem:(id)item sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  itemCopy = item;
  assetCopy = asset;
  v11 = [(PGHighlightItemModelManager *)self _contextualKeyAssetByHighlighItemUUIDForHighlightFilter:filterCopy];
  uuid = [itemCopy uuid];

  [v11 setObject:assetCopy forKeyedSubscript:uuid];
}

- (unsigned)visibilityStateForHighlightItem:(id)item sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  itemCopy = item;
  v7 = [(PGHighlightItemModelManager *)self _visibilityStateByHighlighItemUUIDForHighlightFilter:filterCopy];
  uuid = [itemCopy uuid];
  v9 = [v7 objectForKeyedSubscript:uuid];

  if (v9)
  {
    unsignedShortValue = [v9 unsignedShortValue];
  }

  else
  {
    unsignedShortValue = [itemCopy visibilityStateForHighlightFilter:filterCopy];
  }

  v11 = unsignedShortValue;

  return v11;
}

- (void)setVisibilityState:(unsigned __int16)state forHighlightItemList:(id)list sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  stateCopy = state;
  listCopy = list;
  [listCopy setVisibilityState:stateCopy forSharingFilter:filterCopy];
  [(PGHighlightItemModelManager *)self setVisibilityState:stateCopy forHighlightItem:listCopy sharingFilter:filterCopy];
}

- (void)setVisibilityState:(unsigned __int16)state forHighlightItem:(id)item sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  stateCopy = state;
  itemCopy = item;
  v11 = [(PGHighlightItemModelManager *)self _visibilityStateByHighlighItemUUIDForHighlightFilter:filterCopy];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:stateCopy];
  uuid = [itemCopy uuid];

  [v11 setObject:v9 forKeyedSubscript:uuid];
}

- (id)fetchChildHighlightItemsForHighlightItem:(id)item sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  v17[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  library = [(PGHighlightItemModelManager *)self library];
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];

  [librarySpecificFetchOptions setSharingFilter:filterCopy];
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v17[0] = v9;
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v17[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v11];

  v12 = MEMORY[0x277CD9958];
  modelObject = [itemCopy modelObject];

  v14 = [v12 fetchChildHighlightsForHighlight:modelObject options:librarySpecificFetchOptions];

  fetchedObjects = [v14 fetchedObjects];

  return fetchedObjects;
}

- (id)fetchParentHighlightItemsForHighlightItems:(id)items
{
  v22 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  library = [(PGHighlightItemModelManager *)self library];
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];

  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        modelObject = [*(*(&v17 + 1) + 8 * i) modelObject];
        [array addObject:modelObject];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  if ([array count])
  {
    v14 = [MEMORY[0x277CD9958] fetchParentHighlightsForHighlights:array options:librarySpecificFetchOptions];
    fetchedObjects = [v14 fetchedObjects];
  }

  else
  {
    fetchedObjects = MEMORY[0x277CBEBF8];
  }

  return fetchedObjects;
}

- (void)consumeHighlightItemList:(id)list
{
  v3 = MEMORY[0x277CD9960];
  listCopy = list;
  modelObject = [listCopy modelObject];
  v9 = [v3 changeRequestForPhotosHighlight:modelObject];

  [listCopy promotionScore];
  [v9 setPromotionScore:?];
  [v9 setEnrichmentState:4];
  [v9 setVisibilityState:{objc_msgSend(listCopy, "visibilityStateForHighlightFilter:", 0)}];
  [v9 setVisibilityStateShared:{objc_msgSend(listCopy, "visibilityStateForHighlightFilter:", 1)}];
  [v9 setVisibilityStateMixed:{objc_msgSend(listCopy, "visibilityStateForHighlightFilter:", 2)}];
  keyAssetPrivate = [listCopy keyAssetPrivate];
  [v9 setKeyAssetPrivate:keyAssetPrivate];

  keyAssetShared = [listCopy keyAssetShared];
  [v9 setKeyAssetShared:keyAssetShared];

  mixedSharingCompositionKeyAssetRelationship = [listCopy mixedSharingCompositionKeyAssetRelationship];
  [v9 setMixedSharingCompositionKeyAssetRelationship:mixedSharingCompositionKeyAssetRelationship];
  [v9 didEnrichHighlight];
}

- (void)commonInit
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  visibilityStatePrivateByHighlighItemUUID = self->_visibilityStatePrivateByHighlighItemUUID;
  self->_visibilityStatePrivateByHighlighItemUUID = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  visibilityStateSharedByHighlighItemUUID = self->_visibilityStateSharedByHighlighItemUUID;
  self->_visibilityStateSharedByHighlighItemUUID = dictionary2;

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  visibilityStateMixedByHighlighItemUUID = self->_visibilityStateMixedByHighlighItemUUID;
  self->_visibilityStateMixedByHighlighItemUUID = dictionary3;

  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  contextualKeyAssetPrivateByHighlighItemUUID = self->_contextualKeyAssetPrivateByHighlighItemUUID;
  self->_contextualKeyAssetPrivateByHighlighItemUUID = dictionary4;

  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  contextualKeyAssetSharedByHighlighItemUUID = self->_contextualKeyAssetSharedByHighlighItemUUID;
  self->_contextualKeyAssetSharedByHighlighItemUUID = dictionary5;

  dictionary6 = [MEMORY[0x277CBEB38] dictionary];
  contextualKeyAssetMixedByHighlighItemUUID = self->_contextualKeyAssetMixedByHighlighItemUUID;
  self->_contextualKeyAssetMixedByHighlighItemUUID = dictionary6;
}

- (id)initForTesting
{
  v5.receiver = self;
  v5.super_class = PGHighlightItemModelManager;
  v2 = [(PGHighlightItemModelManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PGHighlightItemModelManager *)v2 commonInit];
  }

  return v3;
}

- (PGHighlightItemModelManager)initWithLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = PGHighlightItemModelManager;
  v6 = [(PGHighlightItemModelManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_library, library);
    [(PGHighlightItemModelManager *)v7 commonInit];
  }

  return v7;
}

@end