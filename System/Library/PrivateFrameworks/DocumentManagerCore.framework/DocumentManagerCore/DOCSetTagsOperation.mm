@interface DOCSetTagsOperation
- (DOCSetTagsOperation)initWithItems:(id)items tagsLists:(id)lists isUndoable:(BOOL)undoable shouldClearUndoStack:(BOOL)stack undoManager:(id)manager;
- (NSString)actionNameForUndoing;
- (id)currentItems;
- (id)currentTagsLists;
- (id)itemIDsFromItems:(id)items;
- (id)itemsFromItemIDs:(id)ds;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (id)operationItemIDs;
- (id)tagsListsFromItems:(id)items;
- (void)clearUndoStack;
- (void)registerUndo;
@end

@implementation DOCSetTagsOperation

- (DOCSetTagsOperation)initWithItems:(id)items tagsLists:(id)lists isUndoable:(BOOL)undoable shouldClearUndoStack:(BOOL)stack undoManager:(id)manager
{
  stackCopy = stack;
  undoableCopy = undoable;
  listsCopy = lists;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = DOCSetTagsOperation;
  v15 = [(FPSetTagsOperation *)&v20 initWithItems:items tagsLists:listsCopy];
  v16 = v15;
  if (v15)
  {
    currentTagsLists = [(DOCSetTagsOperation *)v15 currentTagsLists];
    oldTagsLists = v16->_oldTagsLists;
    v16->_oldTagsLists = currentTagsLists;

    objc_storeStrong(&v16->_updatedTagsLists, lists);
    objc_storeStrong(&v16->_undoManager, manager);
    if (undoableCopy)
    {
      [(DOCSetTagsOperation *)v16 registerUndo];
    }

    else if (stackCopy)
    {
      [(DOCSetTagsOperation *)v16 clearUndoStack];
    }
  }

  return v16;
}

- (NSString)actionNameForUndoing
{
  v3 = _DocumentManagerBundle();
  v4 = [v3 localizedStringForKey:@"Edit Tags of “%@” [undo / redo command]" value:@"Edit Tags of “%@”" table:@"Localizable"];

  v5 = _DocumentManagerBundle();
  v6 = [v5 localizedStringForKey:@"Edit Tags of %lu Items [undo / redo command]" value:@"Edit Tags of %lu Items [undo / redo command]" table:@"Localizable"];

  items = [(FPTransformOperation *)self items];
  v8 = [items count];

  items2 = [(FPTransformOperation *)self items];
  firstObject = [items2 firstObject];
  displayName = [firstObject displayName];

  if (v8 == 1)
  {
    [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, displayName];
  }

  else
  {
    [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, v8];
  }
  v12 = ;

  return v12;
}

- (id)operationForRedoing
{
  currentItems = [(DOCSetTagsOperation *)self currentItems];
  if ([currentItems count] && (v4 = objc_msgSend(currentItems, "count"), -[FPTransformOperation items](self, "items"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4 == v6))
  {
    v7 = [DOCSetTagsOperation alloc];
    updatedTagsLists = [(DOCSetTagsOperation *)self updatedTagsLists];
    undoManager = [(DOCSetTagsOperation *)self undoManager];
    v10 = [(DOCSetTagsOperation *)v7 initWithItems:currentItems tagsLists:updatedTagsLists isUndoable:1 shouldClearUndoStack:0 undoManager:undoManager];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)operationForUndoing
{
  currentItems = [(DOCSetTagsOperation *)self currentItems];
  if ([currentItems count] && (v4 = objc_msgSend(currentItems, "count"), -[FPTransformOperation items](self, "items"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4 == v6))
  {
    v7 = [DOCSetTagsOperation alloc];
    oldTagsLists = [(DOCSetTagsOperation *)self oldTagsLists];
    undoManager = [(DOCSetTagsOperation *)self undoManager];
    v10 = [(DOCSetTagsOperation *)v7 initWithItems:currentItems tagsLists:oldTagsLists isUndoable:1 shouldClearUndoStack:0 undoManager:undoManager];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)registerUndo
{
  undoManager = [(DOCSetTagsOperation *)self undoManager];
  [undoManager registerUndoOperationForSender:self];
}

- (void)clearUndoStack
{
  undoManager = [(DOCSetTagsOperation *)self undoManager];
  [undoManager removeAllActions];
}

- (id)currentItems
{
  operationItemIDs = [(DOCSetTagsOperation *)self operationItemIDs];
  v4 = [(DOCSetTagsOperation *)self itemsFromItemIDs:operationItemIDs];

  return v4;
}

- (id)operationItemIDs
{
  items = [(FPTransformOperation *)self items];
  v4 = [(DOCSetTagsOperation *)self itemIDsFromItems:items];

  return v4;
}

- (id)itemIDsFromItems:(id)items
{
  v17 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        itemID = [*(*(&v12 + 1) + 8 * i) itemID];
        [v4 addObject:itemID];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)itemsFromItemIDs:(id)ds
{
  v30 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2;
  v27 = __Block_byref_object_dispose__2;
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = dispatch_semaphore_create(0);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = dsCopy;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        itemManager = [(FPActionOperation *)self itemManager];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __40__DOCSetTagsOperation_itemsFromItemIDs___block_invoke;
        v16[3] = &unk_278F9BA90;
        v18 = &v23;
        v11 = v5;
        v17 = v11;
        [itemManager fetchItemForItemID:v9 completionHandler:v16];

        v12 = dispatch_time(0, 1000000000);
        dispatch_semaphore_wait(v11, v12);
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v6);
  }

  v13 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v13;
}

intptr_t __40__DOCSetTagsOperation_itemsFromItemIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:a2];
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (id)currentTagsLists
{
  items = [(FPTransformOperation *)self items];
  v4 = [(DOCSetTagsOperation *)self tagsListsFromItems:items];

  return v4;
}

- (id)tagsListsFromItems:(id)items
{
  v20 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        tags = [v11 tags];

        if (tags)
        {
          tags2 = [v11 tags];
          [v4 addObject:tags2];
        }

        else
        {
          [v4 addObject:v9];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

@end