@interface PGHighlightItemList
+ (id)timeSortDescriptors;
+ (void)updateParentHighlightItemLists:(id)lists withChildHighlightItems:(id)items;
- (NSArray)extendedCuratedAssets;
- (NSArray)sortedChildHighlightItems;
- (NSArray)sortedHighlightItemModelObjects;
- (NSDate)endDate;
- (NSDate)localEndDate;
- (NSDate)localStartDate;
- (NSDate)startDate;
- (NSDateComponents)localDateComponents;
- (NSSet)addedHighlightItems;
- (NSSet)removedHighlightItems;
- (NSString)description;
- (NSString)uuid;
- (PGHighlightItemList)initWithParentHighlightItem:(id)item childHighlightItems:(id)items;
- (id)childHighlightItemsForHighlightFilter:(unsigned __int16)filter;
- (id)initAsNewList;
- (id)keyAssetForHighlightFilter:(unsigned __int16)filter;
- (unint64_t)numberOfAssetsInExtendedForSharingFilter:(unsigned __int16)filter;
- (unsigned)mixedSharingCompositionKeyAssetRelationship;
- (unsigned)sharingComposition;
- (unsigned)visibilityStateForHighlightFilter:(unsigned __int16)filter;
- (void)_updateHighlightItemsOrdering;
- (void)addHighlightItem:(id)item;
- (void)removeHighlightItem:(id)item;
- (void)setVisibilityState:(unsigned __int16)state forSharingFilter:(unsigned __int16)filter;
@end

@implementation PGHighlightItemList

- (id)childHighlightItemsForHighlightFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  v19 = *MEMORY[0x277D85DE8];
  sharingComposition = [(PGHighlightItemList *)self sharingComposition];
  if ([PGHighlightEnrichmentUtilities canUseSharingComposition:sharingComposition forSharingFilter:filterCopy])
  {
    if (sharingComposition == 2)
    {
      sortedChildHighlightItems2 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      sortedChildHighlightItems = [(PGHighlightItemList *)self sortedChildHighlightItems];
      v8 = [sortedChildHighlightItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(sortedChildHighlightItems);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            if (+[PGHighlightEnrichmentUtilities canUseSharingComposition:forSharingFilter:](PGHighlightEnrichmentUtilities, "canUseSharingComposition:forSharingFilter:", [v12 sharingComposition], filterCopy))
            {
              [sortedChildHighlightItems2 addObject:v12];
            }
          }

          v9 = [sortedChildHighlightItems countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }

    else
    {
      sortedChildHighlightItems2 = [(PGHighlightItemList *)self sortedChildHighlightItems];
    }
  }

  else
  {
    sortedChildHighlightItems2 = MEMORY[0x277CBEBF8];
  }

  return sortedChildHighlightItems2;
}

- (void)setVisibilityState:(unsigned __int16)state forSharingFilter:(unsigned __int16)filter
{
  if (filter <= 2u)
  {
    *(&self->_visibilityStatePrivate + (filter & 0x7FFF)) = state;
  }
}

- (unsigned)visibilityStateForHighlightFilter:(unsigned __int16)filter
{
  if (filter > 2u)
  {
    return 0;
  }

  else
  {
    return *(&self->_visibilityStatePrivate + (filter & 0x7FFF));
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGHighlightItemList;
  v4 = [(PGHighlightItemList *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ [(%@) - (%@)] (%ld) time periods", v4, self->_localStartDate, self->_localEndDate, -[NSMutableOrderedSet count](self->_internalHighlightItems, "count")];

  return v5;
}

- (void)_updateHighlightItemsOrdering
{
  v27 = *MEMORY[0x277D85DE8];
  internalHighlightItems = self->_internalHighlightItems;
  timeSortDescriptors = [objc_opt_class() timeSortDescriptors];
  [(NSMutableOrderedSet *)internalHighlightItems sortUsingDescriptors:timeSortDescriptors];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_internalHighlightItems;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v22 + 1) + 8 * i) kind] != 3)
        {
          firstObject = [(NSMutableOrderedSet *)self->_internalHighlightItems firstObject];
          startDate = [firstObject startDate];
          startDate = self->_startDate;
          self->_startDate = startDate;

          lastObject = [(NSMutableOrderedSet *)self->_internalHighlightItems lastObject];
          endDate = [lastObject endDate];
          endDate = self->_endDate;
          self->_endDate = endDate;

          firstObject2 = [(NSMutableOrderedSet *)self->_internalHighlightItems firstObject];
          localStartDate = [firstObject2 localStartDate];
          localStartDate = self->_localStartDate;
          self->_localStartDate = localStartDate;

          lastObject2 = [(NSMutableOrderedSet *)self->_internalHighlightItems lastObject];
          localEndDate = [lastObject2 localEndDate];
          localEndDate = self->_localEndDate;
          self->_localEndDate = localEndDate;

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)removeHighlightItem:(id)item
{
  itemCopy = item;
  if ([(NSMutableOrderedSet *)self->_internalHighlightItems containsObject:?])
  {
    [(NSMutableOrderedSet *)self->_internalHighlightItems removeObject:itemCopy];
    if ([(NSMutableSet *)self->_internalAddedHighlightItems containsObject:itemCopy])
    {
      [(NSMutableSet *)self->_internalAddedHighlightItems removeObject:itemCopy];
    }

    else
    {
      [(NSMutableSet *)self->_internalRemovedHighlightItems addObject:itemCopy];
    }

    [(PGHighlightItemList *)self _updateHighlightItemsOrdering];
  }
}

- (void)addHighlightItem:(id)item
{
  itemCopy = item;
  if (([(NSMutableOrderedSet *)self->_internalHighlightItems containsObject:?]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_internalHighlightItems addObject:itemCopy];
    if ([(NSMutableSet *)self->_internalRemovedHighlightItems containsObject:itemCopy])
    {
      [(NSMutableSet *)self->_internalRemovedHighlightItems removeObject:itemCopy];
    }

    else
    {
      [(NSMutableSet *)self->_internalAddedHighlightItems addObject:itemCopy];
    }

    [(PGHighlightItemList *)self _updateHighlightItemsOrdering];
  }
}

- (NSSet)removedHighlightItems
{
  v2 = [(NSMutableSet *)self->_internalRemovedHighlightItems copy];

  return v2;
}

- (NSSet)addedHighlightItems
{
  v2 = [(NSMutableSet *)self->_internalAddedHighlightItems copy];

  return v2;
}

- (NSArray)sortedChildHighlightItems
{
  array = [(NSMutableOrderedSet *)self->_internalHighlightItems array];
  v3 = [array copy];

  return v3;
}

- (NSArray)extendedCuratedAssets
{
  if ([(PGHighlightItemList *)self isCandidateForReuse])
  {
    parentHighlightItem = [(PGHighlightItemList *)self parentHighlightItem];
    extendedCuratedAssets = [parentHighlightItem extendedCuratedAssets];
  }

  else
  {
    extendedCuratedAssets = self->_extendedCuratedAssets;
  }

  return extendedCuratedAssets;
}

- (id)keyAssetForHighlightFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  sharingComposition = [(PGHighlightItemList *)self sharingComposition];
  mixedSharingCompositionKeyAssetRelationship = [(PGHighlightItemList *)self mixedSharingCompositionKeyAssetRelationship];
  v9[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__PGHighlightItemList_keyAssetForHighlightFilter___block_invoke;
  v10[3] = &unk_278884470;
  v10[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__PGHighlightItemList_keyAssetForHighlightFilter___block_invoke_2;
  v9[3] = &unk_278884470;
  v7 = [PGHighlightEnrichmentUtilities selectKeyAssetForSharingComposition:sharingComposition mixedSharingCompositionKeyAssetRelationship:mixedSharingCompositionKeyAssetRelationship givenHighlightFilter:filterCopy privateHandler:v10 sharedHandler:v9];

  return v7;
}

- (unsigned)mixedSharingCompositionKeyAssetRelationship
{
  if (![(PGHighlightItemList *)self isCandidateForReuse])
  {
    return self->_mixedSharingCompositionKeyAssetRelationship;
  }

  parentHighlightItem = [(PGHighlightItemList *)self parentHighlightItem];
  mixedSharingCompositionKeyAssetRelationship = [parentHighlightItem mixedSharingCompositionKeyAssetRelationship];

  return mixedSharingCompositionKeyAssetRelationship;
}

- (NSArray)sortedHighlightItemModelObjects
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableOrderedSet count](self->_internalHighlightItems, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_internalHighlightItems;
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        modelObject = [v9 modelObject];

        if (modelObject)
        {
          modelObject2 = [v9 modelObject];
          [v3 addObject:modelObject2];
        }
      }

      v6 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unint64_t)numberOfAssetsInExtendedForSharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_internalHighlightItems;
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 += [*(*(&v11 + 1) + 8 * i) numberOfAssetsInExtendedForSharingFilter:{filterCopy, v11}];
      }

      v6 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)uuid
{
  parentHighlightItem = [(PGHighlightItemList *)self parentHighlightItem];
  uuid = [parentHighlightItem uuid];

  return uuid;
}

- (NSDateComponents)localDateComponents
{
  startDate = [(PGHighlightItemList *)self startDate];
  endDate = [(PGHighlightItemList *)self endDate];
  [endDate timeIntervalSinceDate:startDate];
  v6 = [startDate dateByAddingTimeInterval:v5 * 0.5];
  localStartDate = [(PGHighlightItemList *)self localStartDate];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  if (localStartDate)
  {
    [startDate timeIntervalSinceDate:localStartDate];
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:v10];
  v12 = [currentCalendar componentsInTimeZone:v11 fromDate:v6];

  return v12;
}

- (unsigned)sharingComposition
{
  if (![(PGHighlightItemList *)self isCandidateForReuse])
  {
    return self->_sharingComposition;
  }

  parentHighlightItem = [(PGHighlightItemList *)self parentHighlightItem];
  sharingComposition = [parentHighlightItem sharingComposition];

  return sharingComposition;
}

- (NSDate)localEndDate
{
  if ([(PGHighlightItemList *)self isCandidateForReuse])
  {
    parentHighlightItem = [(PGHighlightItemList *)self parentHighlightItem];
    localEndDate = [parentHighlightItem localEndDate];
  }

  else
  {
    localEndDate = self->_localEndDate;
  }

  return localEndDate;
}

- (NSDate)localStartDate
{
  if ([(PGHighlightItemList *)self isCandidateForReuse])
  {
    parentHighlightItem = [(PGHighlightItemList *)self parentHighlightItem];
    localStartDate = [parentHighlightItem localStartDate];
  }

  else
  {
    localStartDate = self->_localStartDate;
  }

  return localStartDate;
}

- (NSDate)endDate
{
  if ([(PGHighlightItemList *)self isCandidateForReuse])
  {
    parentHighlightItem = [(PGHighlightItemList *)self parentHighlightItem];
    endDate = [parentHighlightItem endDate];
  }

  else
  {
    endDate = self->_endDate;
  }

  return endDate;
}

- (NSDate)startDate
{
  if ([(PGHighlightItemList *)self isCandidateForReuse])
  {
    parentHighlightItem = [(PGHighlightItemList *)self parentHighlightItem];
    startDate = [parentHighlightItem startDate];
  }

  else
  {
    startDate = self->_startDate;
  }

  return startDate;
}

- (id)initAsNewList
{
  v10.receiver = self;
  v10.super_class = PGHighlightItemList;
  v2 = [(PGHighlightItemList *)&v10 init];
  if (v2)
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    internalHighlightItems = v2->_internalHighlightItems;
    v2->_internalHighlightItems = orderedSet;

    v5 = [MEMORY[0x277CBEB58] set];
    internalAddedHighlightItems = v2->_internalAddedHighlightItems;
    v2->_internalAddedHighlightItems = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    internalRemovedHighlightItems = v2->_internalRemovedHighlightItems;
    v2->_internalRemovedHighlightItems = v7;
  }

  return v2;
}

- (PGHighlightItemList)initWithParentHighlightItem:(id)item childHighlightItems:(id)items
{
  itemCopy = item;
  itemsCopy = items;
  v20.receiver = self;
  v20.super_class = PGHighlightItemList;
  v9 = [(PGHighlightItemList *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parentHighlightItem, item);
    modelObject = [itemCopy modelObject];
    modelObject = v10->_modelObject;
    v10->_modelObject = modelObject;

    v13 = [MEMORY[0x277CBEB40] orderedSetWithArray:itemsCopy];
    internalHighlightItems = v10->_internalHighlightItems;
    v10->_internalHighlightItems = v13;

    v15 = [MEMORY[0x277CBEB58] set];
    internalAddedHighlightItems = v10->_internalAddedHighlightItems;
    v10->_internalAddedHighlightItems = v15;

    v17 = [MEMORY[0x277CBEB58] set];
    internalRemovedHighlightItems = v10->_internalRemovedHighlightItems;
    v10->_internalRemovedHighlightItems = v17;

    v10->_sharingComposition = [itemCopy sharingComposition];
    v10->_kind = [itemCopy kind];
    v10->_type = [itemCopy type];
    v10->_category = [itemCopy category];
    [(PGHighlightItemList *)v10 _updateHighlightItemsOrdering];
  }

  return v10;
}

+ (void)updateParentHighlightItemLists:(id)lists withChildHighlightItems:(id)items
{
  v49 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  itemsCopy = items;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        uuid = [v13 uuid];
        [v7 setObject:v13 forKeyedSubscript:uuid];
      }

      v10 = [v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v10);
  }

  v29 = v8;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = listsCopy;
  v32 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v32)
  {
    v31 = *v39;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v38 + 1) + 8 * j);
        internalAddedHighlightItems = [v16 internalAddedHighlightItems];
        [internalAddedHighlightItems removeAllObjects];

        internalRemovedHighlightItems = [v16 internalRemovedHighlightItems];
        [internalRemovedHighlightItems removeAllObjects];

        v33 = v16;
        internalHighlightItems = [v16 internalHighlightItems];
        v20 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(internalHighlightItems, "count")}];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v21 = internalHighlightItems;
        v22 = [v21 countByEnumeratingWithState:&v34 objects:v46 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v35;
          do
          {
            for (k = 0; k != v23; ++k)
            {
              if (*v35 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v34 + 1) + 8 * k);
              uuid2 = [v26 uuid];
              v28 = [v7 objectForKeyedSubscript:uuid2];

              if (!v28)
              {
                v28 = v26;
              }

              [v20 addObject:v28];
            }

            v23 = [v21 countByEnumeratingWithState:&v34 objects:v46 count:16];
          }

          while (v23);
        }

        [v33 setInternalHighlightItems:v20];
        [v33 _updateHighlightItemsOrdering];
      }

      v32 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v32);
  }
}

+ (id)timeSortDescriptors
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

@end