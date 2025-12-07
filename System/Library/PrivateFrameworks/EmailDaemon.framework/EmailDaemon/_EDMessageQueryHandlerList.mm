@interface _EDMessageQueryHandlerList
- (BOOL)hasItemsInList;
- (NSArray)allMessageGlobalIDs;
- (NSArray)allMessageObjectIDs;
- (_EDMessageQueryHandlerList)initWithQuery:(id)query;
- (id)_comparatorForSortDescriptors:(id)descriptors;
- (id)insertMessagesReturningMessagesByPreviousObjectID:(id)d;
- (id)movesForExistingMessages:(id)messages;
@end

@implementation _EDMessageQueryHandlerList

- (_EDMessageQueryHandlerList)initWithQuery:(id)query
{
  queryCopy = query;
  v16.receiver = self;
  v16.super_class = _EDMessageQueryHandlerList;
  v5 = [(_EDMessageQueryHandlerList *)&v16 init];
  if (v5)
  {
    sortDescriptors = [queryCopy sortDescriptors];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = sortDescriptors;

    targetClassOptions = [queryCopy targetClassOptions];
    v9 = [targetClassOptions objectForKeyedSubscript:*MEMORY[0x1E699A9F0]];
    sectionPredicates = v5->_sectionPredicates;
    v5->_sectionPredicates = v9;

    v11 = [(_EDMessageQueryHandlerList *)v5 _comparatorForSortDescriptors:v5->_sortDescriptors];
    entryComparator = v5->_entryComparator;
    v5->_entryComparator = v11;

    v13 = objc_opt_new();
    entryList = v5->_entryList;
    v5->_entryList = v13;
  }

  return v5;
}

- (id)_comparatorForSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60___EDMessageQueryHandlerList__comparatorForSortDescriptors___block_invoke;
  aBlock[3] = &unk_1E8254FC0;
  v8 = descriptorsCopy;
  v4 = descriptorsCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

- (id)movesForExistingMessages:(id)messages
{
  v46 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  entryComparator = [(_EDMessageQueryHandlerList *)self entryComparator];
  sortDescriptors = [(_EDMessageQueryHandlerList *)self sortDescriptors];
  sectionPredicates = [(_EDMessageQueryHandlerList *)self sectionPredicates];
  v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  entryList = [(_EDMessageQueryHandlerList *)self entryList];
  v32 = [entryList copy];
  selfCopy = self;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = messagesCopy;
  v5 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v5)
  {
    v34 = *v42;
    do
    {
      v36 = v5;
      for (i = 0; i != v36; ++i)
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v41 + 1) + 8 * i);
        v8 = [[_EDMessageQueryHelperEntry alloc] initWithMessage:v7 sortDescriptors:sortDescriptors sectionPredicates:sectionPredicates];
        v9 = [entryList indexOfObject:v8];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          sectionIndex = [(_EDMessageQueryHelperEntry *)v8 sectionIndex];
          v11 = [entryList objectAtIndexedSubscript:v9];
          LOBYTE(sectionIndex) = sectionIndex > [v11 sectionIndex];

          if ((sectionIndex & 1) == 0)
          {
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __55___EDMessageQueryHandlerList_movesForExistingMessages___block_invoke;
            v38[3] = &unk_1E8254FE8;
            v40 = entryComparator;
            v12 = v8;
            v39 = v12;
            v13 = [v32 ef_firstObjectPassingTest:v38];
            null = v13;
            if (!v13)
            {
              null = [MEMORY[0x1E695DFB0] null];
            }

            [entryList removeObjectAtIndex:v9];
            entryComparator2 = [(_EDMessageQueryHandlerList *)selfCopy entryComparator];
            v16 = [entryList ef_insertObjectIfAbsent:v12 usingComparator:entryComparator2];

            if (v16 != v9)
            {
              v17 = [v29 objectForKeyedSubscript:null];
              if (!v17)
              {
                v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
                null2 = [MEMORY[0x1E695DFB0] null];
                v28 = v18;
                if (null == null2)
                {
                  v23 = null;
                }

                else
                {
                  v19 = objc_alloc(MEMORY[0x1E699ADA8]);
                  globalMessageID = [v13 globalMessageID];
                  objectID = [v7 objectID];
                  mailboxScope = [objectID mailboxScope];
                  v23 = [v19 initWithGlobalMessageID:globalMessageID mailboxScope:mailboxScope];
                }

                [v26 setObject:v28 forKeyedSubscript:v23];
                [v29 setObject:v28 forKeyedSubscript:null];

                v17 = v28;
              }

              [v17 ef_insertObject:v7 usingSortDescriptors:sortDescriptors];
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v5);
  }

  return v26;
}

- (id)insertMessagesReturningMessagesByPreviousObjectID:(id)d
{
  v42 = *MEMORY[0x1E69E9840];
  dCopy = d;
  entryComparator = [(_EDMessageQueryHandlerList *)self entryComparator];
  sortDescriptors = [(_EDMessageQueryHandlerList *)self sortDescriptors];
  sectionPredicates = [(_EDMessageQueryHandlerList *)self sectionPredicates];
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
  entryList = [(_EDMessageQueryHandlerList *)self entryList];
  v25 = [entryList copy];
  selfCopy = self;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = dCopy;
  v5 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v5)
  {
    v29 = *v38;
    do
    {
      v31 = v5;
      for (i = 0; i != v31; ++i)
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        v8 = [[_EDMessageQueryHelperEntry alloc] initWithMessage:v7 sortDescriptors:sortDescriptors sectionPredicates:sectionPredicates];
        if (([entryList containsObject:v8] & 1) == 0)
        {
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __80___EDMessageQueryHandlerList_insertMessagesReturningMessagesByPreviousObjectID___block_invoke;
          v34[3] = &unk_1E8254FE8;
          v36 = entryComparator;
          v9 = v8;
          v35 = v9;
          v10 = [v25 ef_firstObjectPassingTest:v34];
          null = v10;
          if (!v10)
          {
            null = [MEMORY[0x1E695DFB0] null];
          }

          entryComparator2 = [(_EDMessageQueryHandlerList *)selfCopy entryComparator];
          [entryList ef_insertObjectIfAbsent:v9 usingComparator:entryComparator2];

          v13 = [v28 objectForKeyedSubscript:null];
          if (!v13)
          {
            v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
            null2 = [MEMORY[0x1E695DFB0] null];
            v27 = v14;
            if (null == null2)
            {
              v20 = null;
            }

            else
            {
              v16 = objc_alloc(MEMORY[0x1E699ADA8]);
              globalMessageID = [v10 globalMessageID];
              objectID = [v7 objectID];
              mailboxScope = [objectID mailboxScope];
              v20 = [v16 initWithGlobalMessageID:globalMessageID mailboxScope:mailboxScope];
            }

            [v22 setObject:v27 forKeyedSubscript:v20];
            [v28 setObject:v27 forKeyedSubscript:null];

            v13 = v27;
          }

          [v13 ef_insertObject:v7 usingSortDescriptors:sortDescriptors];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v5);
  }

  return v22;
}

- (BOOL)hasItemsInList
{
  entryList = [(_EDMessageQueryHandlerList *)self entryList];
  v3 = [entryList count] != 0;

  return v3;
}

- (NSArray)allMessageGlobalIDs
{
  entryList = [(_EDMessageQueryHandlerList *)self entryList];
  v3 = [entryList ef_map:&__block_literal_global_369];

  return v3;
}

- (NSArray)allMessageObjectIDs
{
  entryList = [(_EDMessageQueryHandlerList *)self entryList];
  v3 = [entryList ef_map:&__block_literal_global_372];

  return v3;
}

@end