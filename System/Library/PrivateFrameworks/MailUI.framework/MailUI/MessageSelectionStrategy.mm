@interface MessageSelectionStrategy
- (BOOL)shouldChangeSelectionAfterDeletedMessageItemIDs:(id)ds selectedItemIDs:(id)iDs;
- (MessageSelectionStrategy)initWithDataSource:(id)source;
- (MessageSelectionStrategyDataSource)dataSource;
- (id)_itemIDToSelectFromItemID:(id)d deletedMessageIDs:(id)ds withDirection:(int)direction;
- (id)itemIDToSelectAfterDeletedMessageItemIDs:(id)ds;
@end

@implementation MessageSelectionStrategy

uint64_t ___ef_log_MessageSelectionStrategy_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MessageSelectionStrategy");
  v1 = _ef_log_MessageSelectionStrategy_log;
  _ef_log_MessageSelectionStrategy_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (MessageSelectionStrategy)initWithDataSource:(id)source
{
  sourceCopy = source;
  if (!sourceCopy)
  {
    [MessageSelectionStrategy initWithDataSource:];
  }

  v5 = sourceCopy;
  v10.receiver = self;
  v10.super_class = MessageSelectionStrategy;
  v6 = [(MessageSelectionStrategy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_dataSource, v5);
    v8 = v7;
  }

  return v7;
}

- (BOOL)shouldChangeSelectionAfterDeletedMessageItemIDs:(id)ds selectedItemIDs:(id)iDs
{
  iDsCopy = iDs;
  dsCopy = ds;
  v8 = [iDsCopy count];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __92__MessageSelectionStrategy_shouldChangeSelectionAfterDeletedMessageItemIDs_selectedItemIDs___block_invoke;
  v12[3] = &unk_2781896E8;
  v9 = v8 != 0;
  v13 = iDsCopy;
  selfCopy = self;
  v10 = iDsCopy;
  LOBYTE(iDsCopy) = [dsCopy ef_any:v12];

  return v9 & iDsCopy;
}

uint64_t __92__MessageSelectionStrategy_shouldChangeSelectionAfterDeletedMessageItemIDs_selectedItemIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v6 = [WeakRetained messageSelectionStrategy:*(a1 + 40) isExpandedThreadWithItemID:v3];

  if (v6)
  {
    v7 = objc_loadWeakRetained((*(a1 + 40) + 8));
    v8 = [v7 messageSelectionStrategy:*(a1 + 40) indexPathOfItemID:v3];

    if (v8)
    {
      for (i = [v8 item] + 1; ; ++i)
      {
        v10 = objc_loadWeakRetained((*(a1 + 40) + 8));
        v11 = *(a1 + 40);
        v12 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:{objc_msgSend(v8, "section")}];
        v13 = [v10 messageSelectionStrategy:v11 itemIDForIndexPath:v12];

        v14 = objc_loadWeakRetained((*(a1 + 40) + 8));
        LODWORD(v12) = [v14 messageSelectionStrategy:*(a1 + 40) anyExpandedThreadContainsItemID:v13];

        if (!v12)
        {
          break;
        }

        if ([*(a1 + 32) containsObject:v13])
        {
          v4 = 1;
          break;
        }
      }
    }
  }

  return v4;
}

- (id)itemIDToSelectAfterDeletedMessageItemIDs:(id)ds
{
  v71 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v6 = _ef_log_MessageSelectionStrategy(dsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138543618;
    v63 = v7;
    v64 = 2114;
    v65 = dsCopy;
    _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v9 = [WeakRetained preferredDeleteOrMoveMessageActionForStrategy:self];

  if (v9 == 1)
  {
    v10 = 0;
    goto LABEL_37;
  }

  firstObject = [dsCopy firstObject];
  aSelector = a2;
  v53 = dsCopy;
  if ([dsCopy count] < 2)
  {
    v15 = firstObject;
  }

  else
  {
    v12 = objc_loadWeakRetained(&self->_dataSource);
    v56 = firstObject;
    v13 = [v12 messageSelectionStrategy:self indexPathOfItemID:firstObject];

    v51 = v13;
    if (v13)
    {
      item = [v13 item];
    }

    else
    {
      item = 0x7FFFFFFFFFFFFFFFLL;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = dsCopy;
    v16 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v59;
      v19 = item;
      v55 = v56;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v59 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v58 + 1) + 8 * i);
          v22 = objc_loadWeakRetained(&self->_dataSource);
          v23 = [v22 messageSelectionStrategy:self indexPathOfItemID:v21];

          if (v23)
          {
            item2 = [v23 item];
            if (item2 > v19)
            {
              v25 = v21;

              v19 = item2;
              v55 = v25;
            }

            if (item2 < item)
            {
              v26 = v21;

              item = item2;
              v56 = v26;
            }
          }
        }

        v17 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
      }

      while (v17);
    }

    else
    {
      v55 = v56;
    }

    dsCopy = v53;
    v15 = v55;
    firstObject = v56;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__MessageSelectionStrategy_itemIDToSelectAfterDeletedMessageItemIDs___block_invoke;
  aBlock[3] = &unk_278188D48;
  aBlock[4] = self;
  v27 = _Block_copy(aBlock);
  v28 = [(MessageSelectionStrategy *)self _itemIDToSelectFromItemID:firstObject deletedMessageIDs:dsCopy withDirection:0xFFFFFFFFLL];
  v29 = v27[2](v27, v28);
  v30 = dsCopy;
  v31 = v29;
  v32 = v15;
  v33 = [(MessageSelectionStrategy *)self _itemIDToSelectFromItemID:v15 deletedMessageIDs:v30 withDirection:1];
  v34 = v27[2](v27, v33);
  if ((!v28 || v33) && (v28 || !v33))
  {
    if (v31 == v34)
    {
      if (v28 | v33)
      {
        v43 = objc_loadWeakRetained(&self->_dataSource);
        v44 = [v43 lastChangeDirectionForMessageSelectionStrategy:self];

        v46 = _ef_log_MessageSelectionStrategy(v45);
        v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
        dsCopy = v53;
        if (v44 == 1)
        {
          if (v47)
          {
            v48 = NSStringFromSelector(aSelector);
            *buf = 138544130;
            v63 = v48;
            v64 = 2114;
            v65 = v33;
            v66 = 2114;
            v67 = v28;
            v68 = 2114;
            v69 = 0;
            _os_log_impl(&dword_214A5E000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@ Last browse direction was explicitly down. Older: %{public}@, Newer: %{public}@, Selected: %{public}@", buf, 0x2Au);
          }

          v49 = v33;
        }

        else
        {
          if (v47)
          {
            v50 = NSStringFromSelector(aSelector);
            *buf = 138544130;
            v63 = v50;
            v64 = 2114;
            v65 = v33;
            v66 = 2114;
            v67 = v28;
            v68 = 2114;
            v69 = 0;
            _os_log_impl(&dword_214A5E000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@ Last browse directio was up or not defined. Older: %{public}@, Newer: %{public}@, Selected: %{public}@", buf, 0x2Au);
          }

          v49 = v28;
        }

        v36 = v49;
        goto LABEL_36;
      }

      v36 = 0;
    }

    else
    {
      v40 = _ef_log_MessageSelectionStrategy(v34);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = NSStringFromSelector(aSelector);
        *buf = 138544130;
        v63 = v41;
        v64 = 2114;
        v65 = v33;
        v66 = 2114;
        v67 = v28;
        v68 = 2114;
        v69 = 0;
        _os_log_impl(&dword_214A5E000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ Only one adjacent message is unread. Older: %{public}@, Newer: %{public}@, Selected: %{public}@", buf, 0x2Au);
      }

      if (v31)
      {
        v42 = v28;
      }

      else
      {
        v42 = v33;
      }

      v36 = v42;
    }
  }

  else
  {
    if (v28)
    {
      v35 = v28;
    }

    else
    {
      v35 = v33;
    }

    v36 = v35;
    v37 = _ef_log_MessageSelectionStrategy(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = NSStringFromSelector(aSelector);
      *buf = 138544130;
      v63 = v38;
      v64 = 2114;
      v65 = v33;
      v66 = 2114;
      v67 = v28;
      v68 = 2114;
      v69 = v36;
      _os_log_impl(&dword_214A5E000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ One of the adjacent messages does not exist. Older: %{public}@, Newer: %{public}@, Selected: %{public}@", buf, 0x2Au);
    }
  }

  dsCopy = v53;
LABEL_36:
  v10 = v36;

LABEL_37:

  return v10;
}

uint64_t __69__MessageSelectionStrategy_itemIDToSelectAfterDeletedMessageItemIDs___block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 8));
  v6 = [WeakRetained messageSelectionStrategy:*(a1 + 32) messageListItemForItemID:v4];

  if (v6)
  {
    v7 = [v6 flags];
    v8 = [v7 read] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_itemIDToSelectFromItemID:(id)d deletedMessageIDs:(id)ds withDirection:(int)direction
{
  v50 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsCopy = ds;
  if (!dCopy)
  {
    v14 = 0;
    goto LABEL_38;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v11 = [WeakRetained messageSelectionStrategy:self indexPathOfItemID:dCopy];

  if (v11)
  {
    item = [v11 item];
    item2 = item;
  }

  else
  {
    item2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = _ef_log_MessageSelectionStrategy(item);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v45 = dCopy;
    v46 = 1024;
    directionCopy = direction;
    v48 = 2048;
    v49 = item2;
    _os_log_debug_impl(&dword_214A5E000, v15, OS_LOG_TYPE_DEBUG, "_itemIDToSelectFromItemID:%{public}@ direction:%i startIndex:%li", buf, 0x1Cu);
  }

  if (item2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = objc_loadWeakRetained(&self->_dataSource);
    v17 = [v16 indexPathOfSelectedMessageForMessageSelectionStrategy:self];

    if (v17)
    {
      item2 = [v17 item];
      v18 = 0;
      v11 = v17;
    }

    else
    {
      v19 = objc_loadWeakRetained(&self->_dataSource);
      v11 = [v19 indexPathOfPreviouslySelectedMessageForMessageSelectionStrategy:self];

      if (v11)
      {
        item3 = [v11 item];
        item2 = item3;
      }

      else
      {
        item2 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v21 = _ef_log_MessageSelectionStrategy(item3);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [MessageSelectionStrategy _itemIDToSelectFromItemID:dCopy deletedMessageIDs:item2 withDirection:v21];
      }

      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (direction == 1)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__MessageSelectionStrategy__itemIDToSelectFromItemID_deletedMessageIDs_withDirection___block_invoke;
    aBlock[3] = &unk_2781897B0;
    aBlock[4] = self;
    v22 = _Block_copy(aBlock);
    if (v18)
    {
      if (item2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = [MEMORY[0x277CCAA70] indexPathForItem:item2 inSection:{objc_msgSend(v11, "section")}];
        v14 = v22[2](v22, v23);

        goto LABEL_34;
      }
    }

    else
    {
      v36 = objc_loadWeakRetained(&self->_dataSource);
      v37 = [v36 numberOfItemsForMessageSelectionStrategy:self] - 1;

      if (item2 < v37)
      {
        do
        {
          v38 = [MEMORY[0x277CCAA70] indexPathForItem:++item2 inSection:{objc_msgSend(v11, "section")}];
          v14 = v22[2](v22, v38);

          if (![dsCopy containsObject:v14])
          {
            goto LABEL_34;
          }

          v39 = objc_loadWeakRetained(&self->_dataSource);
          v40 = [v39 numberOfItemsForMessageSelectionStrategy:self] - 1;
        }

        while (item2 < v40);
      }
    }

    v14 = 0;
    goto LABEL_34;
  }

  v24 = objc_loadWeakRetained(&self->_dataSource);
  v25 = [v24 messageSelectionStrategy:self anyExpandedThreadContainsItemID:dCopy];

  if (v25)
  {
    v27 = objc_loadWeakRetained(&self->_dataSource);
    v28 = [v27 messageSelectionStrategy:self indexPathOfItemID:dCopy];

    if (v28)
    {
      v29 = objc_loadWeakRetained(&self->_dataSource);
      v30 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v28 inSection:{"item") - 1, objc_msgSend(v28, "section")}];
      v31 = [v29 messageSelectionStrategy:self itemIDForIndexPath:v30];

      if (v31)
      {
        v32 = objc_loadWeakRetained(&self->_dataSource);
        [v32 messageSelectionStrategy:self anyExpandedThreadContainsItemID:v31];
      }
    }
  }

  v33 = item2 < 1;
  v34 = item2 - 1;
  if (v33)
  {
    v14 = 0;
    goto LABEL_35;
  }

  v22 = objc_loadWeakRetained(&self->_dataSource);
  v35 = [MEMORY[0x277CCAA70] indexPathForItem:v34 inSection:{objc_msgSend(v11, "section")}];
  v14 = [v22 messageSelectionStrategy:self itemIDForIndexPath:v35];

LABEL_34:
LABEL_35:
  v41 = _ef_log_MessageSelectionStrategy(v26);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    [MessageSelectionStrategy _itemIDToSelectFromItemID:dCopy deletedMessageIDs:v14 withDirection:v41];
  }

LABEL_38:

  return v14;
}

id __86__MessageSelectionStrategy__itemIDToSelectFromItemID_deletedMessageIDs_withDirection___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 8));
  v6 = [WeakRetained messageSelectionStrategy:*(a1 + 32) itemIDForIndexPath:v4];

  return v6;
}

- (MessageSelectionStrategyDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)_itemIDToSelectFromItemID:(uint64_t)a1 deletedMessageIDs:(uint64_t)a2 withDirection:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2048;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0_5(&dword_214A5E000, a2, a3, "_itemIDToSelectFromItemID:%{public}@ message was deleted. Get the index of where it should have been startIndex:%li", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)_itemIDToSelectFromItemID:(uint64_t)a1 deletedMessageIDs:(uint64_t)a2 withDirection:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0_5(&dword_214A5E000, a2, a3, "_itemIDToSelectFromItemID:%{public}@ result:%{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end