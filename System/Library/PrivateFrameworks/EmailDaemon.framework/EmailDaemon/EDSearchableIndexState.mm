@interface EDSearchableIndexState
- (BOOL)didPreprocessItem:(id)item;
- (BOOL)needsImmediateProcessing;
- (BOOL)needsToScheduleRefresh;
- (BOOL)needsToScheduleVerification;
- (BOOL)queueContentsAllowsRefresh;
- (EDSearchableIndexState)initWithPendingIdentifierRemovals:(id)removals;
- (NSArray)pendingIdentifiers;
- (id)prepareToIndexItems:(id)items;
- (id)processBatchOfSize:(unint64_t)size;
- (id)removePendingDomainRemovals;
- (int64_t)indexItem:(id)item;
- (int64_t)resume;
- (int64_t)suspend;
- (unint64_t)countOfItemsInPendingQueues;
- (void)removeIdentifiersFromPendingQueues:(id)queues reasons:(id)reasons;
- (void)removeItemsForDomainIdentifier:(id)identifier;
- (void)startReindex;
@end

@implementation EDSearchableIndexState

- (EDSearchableIndexState)initWithPendingIdentifierRemovals:(id)removals
{
  removalsCopy = removals;
  v20.receiver = self;
  v20.super_class = EDSearchableIndexState;
  v6 = [(EDSearchableIndexState *)&v20 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    removedIdentifiers = v6->_removedIdentifiers;
    v6->_removedIdentifiers = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    preparingItems = v6->_preparingItems;
    v6->_preparingItems = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingItems = v6->_pendingItems;
    v6->_pendingItems = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    preprocessingItems = v6->_preprocessingItems;
    v6->_preprocessingItems = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    processingItems = v6->_processingItems;
    v6->_processingItems = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingDomainRemovals = v6->_pendingDomainRemovals;
    v6->_pendingDomainRemovals = v17;

    objc_storeStrong(&v6->_pendingIdentifierRemovals, removals);
  }

  return v6;
}

- (unint64_t)countOfItemsInPendingQueues
{
  pendingItems = [(EDSearchableIndexState *)self pendingItems];
  v4 = [pendingItems count];
  pendingIdentifierRemovals = [(EDSearchableIndexState *)self pendingIdentifierRemovals];
  v6 = [pendingIdentifierRemovals count];
  pendingDomainRemovals = [(EDSearchableIndexState *)self pendingDomainRemovals];
  v8 = [pendingDomainRemovals count];

  return v6 + v4 + v8;
}

- (NSArray)pendingIdentifiers
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  pendingItems = [(EDSearchableIndexState *)self pendingItems];
  v5 = [pendingItems countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(pendingItems);
        }

        identifier = [*(*(&v30 + 1) + 8 * i) identifier];
        [v3 addObject:identifier];
      }

      v5 = [pendingItems countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v5);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  preprocessingItems = [(EDSearchableIndexState *)self preprocessingItems];
  v10 = [preprocessingItems countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(preprocessingItems);
        }

        identifier2 = [*(*(&v26 + 1) + 8 * j) identifier];
        [v3 addObject:identifier2];
      }

      v10 = [preprocessingItems countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  processingItems = [(EDSearchableIndexState *)self processingItems];
  v15 = [processingItems countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v15)
  {
    v16 = *v23;
    do
    {
      for (k = 0; k != v15; ++k)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(processingItems);
        }

        identifier3 = [*(*(&v22 + 1) + 8 * k) identifier];
        [v3 addObject:identifier3];
      }

      v15 = [processingItems countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v15);
  }

  removedIdentifiers = [(EDSearchableIndexState *)self removedIdentifiers];
  [v3 unionSet:removedIdentifiers];

  allObjects = [v3 allObjects];

  return allObjects;
}

- (BOOL)needsToScheduleRefresh
{
  needsRefresh = [(EDSearchableIndexState *)self needsRefresh];
  if (needsRefresh)
  {
    LOBYTE(needsRefresh) = ![(EDSearchableIndexState *)self scheduledRefresh];
  }

  return needsRefresh;
}

- (BOOL)needsToScheduleVerification
{
  countOfItemsInPendingQueues = [(EDSearchableIndexState *)self countOfItemsInPendingQueues];
  if ([(EDSearchableIndexState *)self needsVerification])
  {
    v4 = ![(EDSearchableIndexState *)self scheduledVerification];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return !countOfItemsInPendingQueues && v4;
}

- (BOOL)needsImmediateProcessing
{
  countOfItemsInPendingQueues = [(EDSearchableIndexState *)self countOfItemsInPendingQueues];
  pendingDomainRemovals = [(EDSearchableIndexState *)self pendingDomainRemovals];
  if ([pendingDomainRemovals count])
  {
    v5 = 1;
  }

  else
  {
    indexImmediately = [(EDSearchableIndexState *)self indexImmediately];
    if (countOfItemsInPendingQueues)
    {
      v5 = indexImmediately;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)queueContentsAllowsRefresh
{
  preprocessingItems = [(EDSearchableIndexState *)self preprocessingItems];
  v4 = [preprocessingItems ef_countObjectsPassingTest:&__block_literal_global_82];

  countOfItemsInPendingQueues = [(EDSearchableIndexState *)self countOfItemsInPendingQueues];
  preprocessingItems2 = [(EDSearchableIndexState *)self preprocessingItems];
  v7 = [preprocessingItems2 count];

  return v4 <= 0xC && v7 + countOfItemsInPendingQueues == 0;
}

BOOL __52__EDSearchableIndexState_queueContentsAllowsRefresh__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [EDSearchableIndexAttachmentItem attachmentPersistentIDFromItemIdentifier:v2];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)suspend
{
  v3 = [(EDSearchableIndexState *)self resumeCount]- 1;
  [(EDSearchableIndexState *)self setResumeCount:v3];
  return v3;
}

- (int64_t)resume
{
  resumeCount = [(EDSearchableIndexState *)self resumeCount];
  [(EDSearchableIndexState *)self setResumeCount:resumeCount + 1];
  return resumeCount + 1;
}

- (id)prepareToIndexItems:(id)items
{
  itemsCopy = items;
  [(NSMutableArray *)self->_preparingItems addObjectsFromArray:itemsCopy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__EDSearchableIndexState_prepareToIndexItems___block_invoke;
  v8[3] = &unk_1E8257290;
  v8[4] = self;
  v5 = [itemsCopy indexesOfObjectsPassingTest:v8];
  if ([v5 count])
  {
    v6 = [itemsCopy objectsAtIndexes:v5];
    [(NSMutableArray *)self->_preparingItems removeObjectsInArray:v6];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __46__EDSearchableIndexState_prepareToIndexItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) removedIdentifiers];
  v5 = [v3 identifier];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (BOOL)didPreprocessItem:(id)item
{
  itemCopy = item;
  v5 = [(NSMutableArray *)self->_preprocessingItems indexOfObject:itemCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_preprocessingItems removeObjectAtIndex:v5];
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (int64_t)indexItem:(id)item
{
  itemCopy = item;
  preprocessingItems = [(EDSearchableIndexState *)self preprocessingItems];
  v6 = [preprocessingItems indexOfObject:itemCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([itemCopy requiresPreprocessing])
    {
      [(NSMutableArray *)self->_preprocessingItems addObject:itemCopy];
      v7 = 0;
    }

    else
    {
      pendingItems = [(EDSearchableIndexState *)self pendingItems];
      v12 = [pendingItems indexOfObject:itemCopy];

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        pendingItems2 = [(EDSearchableIndexState *)self pendingItems];
        v14 = [pendingItems2 ef_indexWhereObjectWouldBeInserted:itemCopy usingComparator:&__block_literal_global_6_0];

        [(NSMutableArray *)self->_pendingItems insertObject:itemCopy atIndex:v14];
        pendingItems3 = [(EDSearchableIndexState *)self pendingItems];
        v16 = [pendingItems3 count];

        if (v16 >= 0x800 && (-[NSMutableArray removeLastObject](self->_pendingItems, "removeLastObject"), -[EDSearchableIndexState pendingItems](self, "pendingItems"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 count], v17, v14 == v18))
        {
          v7 = 4;
        }

        else
        {
          v7 = 3;
        }
      }

      else
      {
        pendingItems4 = [(EDSearchableIndexState *)self pendingItems];
        v20 = [pendingItems4 objectAtIndexedSubscript:v12];

        [v20 addPendingItem:itemCopy];
        v7 = 2;
      }
    }
  }

  else
  {
    preprocessingItems2 = [(EDSearchableIndexState *)self preprocessingItems];
    v9 = [preprocessingItems2 objectAtIndexedSubscript:v6];

    [v9 addPendingItem:itemCopy];
    v7 = 1;
  }

  return v7;
}

- (void)removeIdentifiersFromPendingQueues:(id)queues reasons:(id)reasons
{
  v33 = *MEMORY[0x1E69E9840];
  queuesCopy = queues;
  reasonsCopy = reasons;
  if ([queuesCopy count])
  {
    [(NSMutableSet *)self->_removedIdentifiers addObjectsFromArray:queuesCopy];
    v20 = [MEMORY[0x1E695DFD8] setWithArray:queuesCopy];
    pendingItems = [(EDSearchableIndexState *)self pendingItems];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __69__EDSearchableIndexState_removeIdentifiersFromPendingQueues_reasons___block_invoke;
    v30[3] = &unk_1E82572D8;
    v7 = v20;
    v31 = v7;
    v21 = [pendingItems indexesOfObjectsPassingTest:v30];

    [(NSMutableArray *)self->_pendingItems removeObjectsAtIndexes:v21];
    pendingIdentifierRemovals = [(EDSearchableIndexState *)self pendingIdentifierRemovals];
    [pendingIdentifierRemovals addIdentifiers:queuesCopy withReasons:reasonsCopy];

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    preprocessingItems = [(EDSearchableIndexState *)self preprocessingItems];
    v11 = [preprocessingItems countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v11)
    {
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(preprocessingItems);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          identifier = [v14 identifier];
          v16 = [v7 containsObject:identifier];

          if (v16)
          {
            [v9 addObject:v14];
          }
        }

        v11 = [preprocessingItems countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v11);
    }

    if ([v9 count])
    {
      [(NSMutableArray *)self->_preprocessingItems removeObjectsInArray:v9];
    }

    preparingItems = [(EDSearchableIndexState *)self preparingItems];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __69__EDSearchableIndexState_removeIdentifiersFromPendingQueues_reasons___block_invoke_2;
    v24[3] = &unk_1E8257290;
    v18 = v7;
    v25 = v18;
    v19 = [preparingItems indexesOfObjectsPassingTest:v24];

    [(NSMutableArray *)self->_preparingItems removeObjectsAtIndexes:v19];
  }
}

uint64_t __69__EDSearchableIndexState_removeIdentifiersFromPendingQueues_reasons___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __69__EDSearchableIndexState_removeIdentifiersFromPendingQueues_reasons___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)removeItemsForDomainIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  pendingItems = [(EDSearchableIndexState *)self pendingItems];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __57__EDSearchableIndexState_removeItemsForDomainIdentifier___block_invoke;
  v21[3] = &unk_1E82572D8;
  v4 = identifierCopy;
  v22 = v4;
  v15 = [pendingItems indexesOfObjectsPassingTest:v21];

  [(NSMutableArray *)self->_pendingItems removeObjectsAtIndexes:v15];
  [(NSMutableSet *)self->_pendingDomainRemovals addObject:v4];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  preprocessingItems = [(EDSearchableIndexState *)self preprocessingItems];
  v7 = [preprocessingItems countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(preprocessingItems);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        referenceItem = [v10 referenceItem];
        domainIdentifier = [referenceItem domainIdentifier];
        v13 = [domainIdentifier hasPrefix:v4];

        if (v13)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [preprocessingItems countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    [(NSMutableArray *)self->_preprocessingItems removeObjectsInArray:v5];
  }
}

uint64_t __57__EDSearchableIndexState_removeItemsForDomainIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 referenceItem];
  v4 = [v3 domainIdentifier];
  v5 = [v4 hasPrefix:*(a1 + 32)];

  return v5;
}

- (id)processBatchOfSize:(unint64_t)size
{
  v27 = *MEMORY[0x1E69E9840];
  pendingItems = [(EDSearchableIndexState *)self pendingItems];
  v5 = [pendingItems count];

  if (v5 >= size)
  {
    sizeCopy = size;
  }

  else
  {
    sizeCopy = v5;
  }

  if (sizeCopy)
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:size];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    pendingItems2 = [(EDSearchableIndexState *)self pendingItems];
    obj = pendingItems2;
    v8 = [pendingItems2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = 0;
      v19 = 0;
      v10 = *v23;
      while (2)
      {
        v11 = 0;
        v12 = v19 + 1;
        v19 += v8;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v22 + 1) + 8 * v11);
          estimatedSizeInBytes = [v13 estimatedSizeInBytes];
          if (estimatedSizeInBytes <= 0x2000000)
          {
            v15 = estimatedSizeInBytes;
          }

          else
          {
            v15 = 0;
          }

          items = [v13 items];
          [v21 addObjectsFromArray:items];

          if (v12 >= sizeCopy || (v9 += v15, v9 >= 0x2000000))
          {
            v19 = v12;
            pendingItems2 = obj;
            goto LABEL_21;
          }

          ++v11;
          ++v12;
        }

        while (v8 != v11);
        pendingItems2 = obj;
        v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_21:

    [(NSMutableArray *)self->_pendingItems removeObjectsInRange:0, v19];
    [(NSMutableArray *)self->_processingItems addObjectsFromArray:v21];
  }

  else
  {
    v21 = MEMORY[0x1E695E0F0];
  }

  return v21;
}

- (id)removePendingDomainRemovals
{
  pendingDomainRemovals = [(EDSearchableIndexState *)self pendingDomainRemovals];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  pendingDomainRemovals = self->_pendingDomainRemovals;
  self->_pendingDomainRemovals = v4;

  return pendingDomainRemovals;
}

- (void)startReindex
{
  [(EDSearchableIndexState *)self setTransaction:0];
  [(EDSearchableIndexState *)self setClientStateFetched:0];
  [(NSMutableArray *)self->_processingItems removeAllObjects];
  [(NSMutableArray *)self->_pendingItems removeAllObjects];
  [(NSMutableArray *)self->_preprocessingItems removeAllObjects];
  [(NSMutableSet *)self->_pendingDomainRemovals removeAllObjects];
  pendingIdentifierRemovals = [(EDSearchableIndexState *)self pendingIdentifierRemovals];
  [pendingIdentifierRemovals removeAllIdentifiers];
}

@end