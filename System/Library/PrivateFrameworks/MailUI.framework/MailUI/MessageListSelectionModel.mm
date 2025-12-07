@interface MessageListSelectionModel
- (BOOL)_allChildrenSelected:(id)selected;
- (BOOL)_trackItemIDs:(id)ds updateCount:(BOOL)count;
- (BOOL)_untrackItemIDs:(id)ds updateCount:(BOOL)count;
- (BOOL)isSelectedItemID:(id)d;
- (BOOL)isSelectionValid;
- (EMMailbox)predictedMoveMailbox;
- (MessageListSelectionModel)initWithDataSource:(id)source delegate:(id)delegate;
- (MessageListSelectionModelDataSource)dataSource;
- (MessageListSelectionModelDelegate)delegate;
- (NSString)ef_publicDescription;
- (id)cascadedItemIDsForItemID:(id)d isSelecting:(BOOL)selecting;
- (id)currentMessageListItemSelection;
- (id)deselectItemWithItemID:(id)d;
- (id)itemIDs;
- (id)itemIDsToUnselectForItemID:(id)d;
- (id)selectItemWithItemID:(id)d;
- (id)selectionWithMessageListItems:(id)items mailboxes:(id)mailboxes;
- (int64_t)count;
- (unint64_t)deleteSelectionState;
- (void)__updatePredictionWithSelection:(id)selection;
- (void)_fetchMissingMessageListItems;
- (void)_scheduleMailboxPredictionUpdate;
- (void)_untrackAllItemIDs;
- (void)configureSelectionForItemID:(id)d;
- (void)didExpandThreadItemID:(id)d addedItemIDs:(id)ds;
- (void)disableSelectAll;
- (void)enableSelectAllWithMailboxes:(id)mailboxes;
- (void)preserveSelection;
- (void)setMailboxPredictionFuture:(id)future;
- (void)setMultipleSelectionActive:(BOOL)active;
- (void)setPerformingDataSourceUpdates:(BOOL)updates;
- (void)willCollapseThreadItemID:(id)d;
@end

@implementation MessageListSelectionModel

uint64_t ___ef_log_MessageListSelectionModel_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MessageListSelectionModel");
  v1 = _ef_log_MessageListSelectionModel_log;
  _ef_log_MessageListSelectionModel_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (MessageListSelectionModel)initWithDataSource:(id)source delegate:(id)delegate
{
  sourceCopy = source;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = MessageListSelectionModel;
  v8 = [(MessageListSelectionModel *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, sourceCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10 = objc_alloc_init(TrackedMessageListItems);
    trackedItems = v9->_trackedItems;
    v9->_trackedItems = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    itemIDsPendingConfiguration = v9->_itemIDsPendingConfiguration;
    v9->_itemIDsPendingConfiguration = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    itemIDsMissingMessageListItem = v9->_itemIDsMissingMessageListItem;
    v9->_itemIDsMissingMessageListItem = v14;

    v9->_type = 0;
  }

  return v9;
}

- (int64_t)count
{
  if ([(MessageListSelectionModel *)self type])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(MessageListSelectionModel *)self trackedItemsCount];
}

- (id)itemIDs
{
  isSelectAll = [(MessageListSelectionModel *)self isSelectAll];
  trackedItems = [(MessageListSelectionModel *)self trackedItems];
  itemIDs = [trackedItems itemIDs];

  if (isSelectAll)
  {
    dataSource = [(MessageListSelectionModel *)self dataSource];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__MessageListSelectionModel_itemIDs__block_invoke;
    v10[3] = &unk_2781896E8;
    v11 = dataSource;
    selfCopy = self;
    v7 = dataSource;
    v8 = [itemIDs ef_filter:v10];

    itemIDs = v8;
  }

  return itemIDs;
}

- (BOOL)isSelectionValid
{
  if ([(MessageListSelectionModel *)self isSelectAll])
  {
    return 1;
  }

  itemIDs = [(MessageListSelectionModel *)self itemIDs];
  v3 = [itemIDs count] != 0;

  return v3;
}

- (id)currentMessageListItemSelection
{
  v20 = *MEMORY[0x277D85DE8];
  trackedItems = [(MessageListSelectionModel *)self trackedItems];
  messageListItems = [trackedItems messageListItems];
  v5 = [messageListItems count];
  v6 = [trackedItems count];
  if (v5 != v6)
  {
    v7 = _ef_log_MessageListSelectionModel(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [trackedItems count];
      v14 = 138543874;
      v15 = v12;
      v16 = 2048;
      selfCopy = self;
      v18 = 2048;
      v19 = v13 - [messageListItems count];
      _os_log_error_impl(&dword_214A5E000, v7, OS_LOG_TYPE_ERROR, "<%{public}@: %p> Message list selection is missing %lu items", &v14, 0x20u);
    }
  }

  trackedMailboxes = [(MessageListSelectionModel *)self trackedMailboxes];
  v9 = [(MessageListSelectionModel *)self selectionWithMessageListItems:messageListItems mailboxes:trackedMailboxes];

  return v9;
}

- (id)selectionWithMessageListItems:(id)items mailboxes:(id)mailboxes
{
  itemsCopy = items;
  mailboxesCopy = mailboxes;
  if (-[MessageListSelectionModel isSelectionValid](self, "isSelectionValid") && ([itemsCopy count] || -[MessageListSelectionModel isSelectAll](self, "isSelectAll")) && (objc_msgSend(mailboxesCopy, "count") || !-[MessageListSelectionModel isSelectAll](self, "isSelectAll")))
  {
    isSelectAll = [(MessageListSelectionModel *)self isSelectAll];
    v10 = objc_alloc(MEMORY[0x277D25998]);
    if (isSelectAll)
    {
      v11 = [v10 initWithMailboxes:mailboxesCopy excludedMessageListItems:itemsCopy];
    }

    else
    {
      v11 = [v10 initWithMessageListItems:itemsCopy];
    }

    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)deleteSelectionState
{
  result = [(MessageListSelectionModel *)self count];
  if (result)
  {
    v4 = [(MessageListSelectionModel *)self count];
    v5 = v4 == [(MessageListSelectionModel *)self trackedItemsWillMoveToTrash];
    v6 = [(MessageListSelectionModel *)self count];
    v7 = v6 == [(MessageListSelectionModel *)self trackedItemsSupportArchiving];
    v8 = [(MessageListSelectionModel *)self count];
    return (v5 || 4 * v7) | (2 * (v8 == [(MessageListSelectionModel *)self trackedItemsArchiveByDefault]));
  }

  return result;
}

- (id)cascadedItemIDsForItemID:(id)d isSelecting:(BOOL)selecting
{
  selectingCopy = selecting;
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataSource = [(MessageListSelectionModel *)self dataSource];
  if ([dataSource selectionModel:self isThreadedItemID:dCopy])
  {
    v9 = [dataSource selectionModel:self isItemIDExpandedThread:dCopy];
    v10 = v9;
    v11 = _ef_log_MessageListSelectionModel(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      v23 = 138544386;
      v24 = v12;
      v25 = 2114;
      v26 = dCopy;
      v27 = 1024;
      v28 = selectingCopy;
      v29 = 1024;
      v30 = 1;
      v31 = 1024;
      LODWORD(v32) = v10;
      _os_log_impl(&dword_214A5E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - itemID: %{public}@, isSelecting: %{BOOL}d, isThread: %{BOOL}d, isExpanded: %{BOOL}d", &v23, 0x28u);
    }

    if (v10)
    {
      v13 = [dataSource selectionModel:self itemIDsInExpandedThread:dCopy];
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v14 = [dataSource selectionModel:self threadItemIDForItemInExpandedThread:dCopy];
    if (v14)
    {
      v15 = MEMORY[0x277CBEB98];
      v16 = [dataSource selectionModel:self itemIDsInExpandedThread:v14];
      v17 = [v15 setWithArray:v16];

      v18 = [(MessageListSelectionModel *)self _allChildrenSelected:v17];
      v19 = v18;
      v20 = _ef_log_MessageListSelectionModel(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = NSStringFromSelector(a2);
        v23 = 138544642;
        v24 = v21;
        v25 = 2114;
        v26 = dCopy;
        v27 = 1024;
        v28 = selectingCopy;
        v29 = 1024;
        v30 = v19;
        v31 = 2114;
        v32 = v14;
        v33 = 2114;
        v34 = v17;
        _os_log_impl(&dword_214A5E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - itemID: %{public}@, isSelecting: %{BOOL}d, allChildrenSelected: %{BOOL}d, parent: %{public}@, children: %{public}@", &v23, 0x36u);
      }

      if (v19 == selectingCopy)
      {
        v13 = [MEMORY[0x277CBEBF8] arrayByAddingObject:v14];
      }

      else
      {
        v13 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }
  }

  return v13;
}

- (id)itemIDsToUnselectForItemID:(id)d
{
  dCopy = d;
  dataSource = [(MessageListSelectionModel *)self dataSource];
  if ([dataSource selectionModel:self isThreadedItemID:dCopy] && objc_msgSend(dataSource, "selectionModel:isItemIDExpandedThread:", self, dCopy))
  {
    v6 = [dataSource selectionModel:self itemIDsInExpandedThread:dCopy];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (BOOL)_allChildrenSelected:(id)selected
{
  selectedCopy = selected;
  trackedItems = [(MessageListSelectionModel *)self trackedItems];
  itemIDsSet = [trackedItems itemIDsSet];

  if ([(MessageListSelectionModel *)self isSelectAll])
  {
    if ([itemIDsSet count])
    {
      v7 = [itemIDsSet intersectsSet:selectedCopy] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = [selectedCopy isSubsetOfSet:itemIDsSet];
  }

  return v7;
}

void __58__MessageListSelectionModel__fetchMissingMessageListItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ef_log_MessageListSelectionModel(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__MessageListSelectionModel__fetchMissingMessageListItems__block_invoke_2_cold_1(a1, v3, v4);
  }
}

- (BOOL)_trackItemIDs:(id)ds updateCount:(BOOL)count
{
  countCopy = count;
  v62 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if ([dsCopy count])
  {
    trackedItems = [(MessageListSelectionModel *)self trackedItems];
    itemIDsSet = [trackedItems itemIDsSet];
    v9 = [MEMORY[0x277CBEB58] setWithArray:dsCopy];
    [v9 minusSet:itemIDsSet];
    if ([v9 count])
    {
      allObjects = [v9 allObjects];
      dataSource = [(MessageListSelectionModel *)self dataSource];
      isPerformingDataSourceUpdates = [(MessageListSelectionModel *)self isPerformingDataSourceUpdates];
      v42 = dataSource;
      v43 = allObjects;
      if (isPerformingDataSourceUpdates)
      {
        v13 = _ef_log_MessageListSelectionModel(isPerformingDataSourceUpdates);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          *buf = 138544130;
          v55 = v15;
          v56 = 2048;
          selfCopy2 = self;
          v58 = 2048;
          v59 = [allObjects count];
          v60 = 2114;
          v61 = allObjects;
          _os_log_impl(&dword_214A5E000, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Data source is performing updates, load message list items (%lu) once completed: %{public}@", buf, 0x2Au);
        }

        itemIDsMissingMessageListItem = [(MessageListSelectionModel *)self itemIDsMissingMessageListItem];
        [itemIDsMissingMessageListItem addObjectsFromArray:allObjects];

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v17 = allObjects;
        v18 = [v17 countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v49;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v49 != v20)
              {
                objc_enumerationMutation(v17);
              }

              [trackedItems trackMessageListItemWithItemID:*(*(&v48 + 1) + 8 * i)];
            }

            v19 = [v17 countByEnumeratingWithState:&v48 objects:v53 count:16];
          }

          while (v19);
        }
      }

      else
      {
        v39 = v9;
        v40 = dsCopy;
        v41 = countCopy;
        v22 = [dataSource selectionModel:self messageListItemsForItemIDs:allObjects];
        v23 = [v22 ef_map:&__block_literal_global_48];

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v17 = v23;
        v24 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v45;
          v27 = *MEMORY[0x277D07110];
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v45 != v26)
              {
                objc_enumerationMutation(v17);
              }

              v29 = *(*(&v44 + 1) + 8 * j);
              v30 = (*(v27 + 16))(v27, v29);
              if (v30)
              {
                [trackedItems trackmessageListItem:v29];
              }

              else
              {
                v31 = _ef_log_MessageListSelectionModel(v30);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  v32 = objc_opt_class();
                  v33 = NSStringFromClass(v32);
                  *buf = 138543618;
                  v55 = v33;
                  v56 = 2048;
                  selfCopy2 = self;
                  _os_log_error_impl(&dword_214A5E000, v31, OS_LOG_TYPE_ERROR, "<%{public}@: %p> Skip tracking message -- message is null", buf, 0x16u);
                }
              }
            }

            v25 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v25);
        }

        countCopy = v41;
        dsCopy = v40;
        v9 = v39;
      }

      if (countCopy)
      {
        allObjects2 = [v9 allObjects];
        -[MessageListSelectionModel setTrackedItemsCount:](self, "setTrackedItemsCount:", -[MessageListSelectionModel trackedItemsCount](self, "trackedItemsCount") + [v42 selectionModel:self countForItemIDs:allObjects2]);

        allObjects3 = [v9 allObjects];
        -[MessageListSelectionModel setTrackedItemsWillMoveToTrash:](self, "setTrackedItemsWillMoveToTrash:", -[MessageListSelectionModel trackedItemsWillMoveToTrash](self, "trackedItemsWillMoveToTrash") + [v42 selectionModel:self countDeleteMovesToTrashForItemIDs:allObjects3]);

        allObjects4 = [v9 allObjects];
        -[MessageListSelectionModel setTrackedItemsSupportArchiving:](self, "setTrackedItemsSupportArchiving:", -[MessageListSelectionModel trackedItemsSupportArchiving](self, "trackedItemsSupportArchiving") + [v42 selectionModel:self countSupportsArchivingForItemIDs:allObjects4]);

        allObjects5 = [v9 allObjects];
        -[MessageListSelectionModel setTrackedItemsArchiveByDefault:](self, "setTrackedItemsArchiveByDefault:", -[MessageListSelectionModel trackedItemsArchiveByDefault](self, "trackedItemsArchiveByDefault") + [v42 selectionModel:self countShouldArchiveByDefaultForItemIDs:allObjects5]);
      }

      [(MessageListSelectionModel *)self _scheduleMailboxPredictionUpdate];
    }

    else
    {
      LOBYTE(countCopy) = 0;
    }
  }

  else
  {
    LOBYTE(countCopy) = 0;
  }

  return countCopy;
}

- (BOOL)_untrackItemIDs:(id)ds updateCount:(BOOL)count
{
  countCopy = count;
  dsCopy = ds;
  if ([dsCopy count])
  {
    v7 = [MEMORY[0x277CBEB58] setWithArray:dsCopy];
    trackedItems = [(MessageListSelectionModel *)self trackedItems];
    itemIDsSet = [trackedItems itemIDsSet];
    [v7 intersectSet:itemIDsSet];
    if ([v7 count])
    {
      allObjects = [v7 allObjects];
      [trackedItems untrackMessageListItemsWithItemIDs:allObjects];

      if (countCopy)
      {
        dataSource = [(MessageListSelectionModel *)self dataSource];
        allObjects2 = [v7 allObjects];
        -[MessageListSelectionModel setTrackedItemsCount:](self, "setTrackedItemsCount:", -[MessageListSelectionModel trackedItemsCount](self, "trackedItemsCount") - [dataSource selectionModel:self countForItemIDs:allObjects2]);

        allObjects3 = [v7 allObjects];
        -[MessageListSelectionModel setTrackedItemsWillMoveToTrash:](self, "setTrackedItemsWillMoveToTrash:", -[MessageListSelectionModel trackedItemsWillMoveToTrash](self, "trackedItemsWillMoveToTrash") - [dataSource selectionModel:self countDeleteMovesToTrashForItemIDs:allObjects3]);

        allObjects4 = [v7 allObjects];
        -[MessageListSelectionModel setTrackedItemsSupportArchiving:](self, "setTrackedItemsSupportArchiving:", -[MessageListSelectionModel trackedItemsSupportArchiving](self, "trackedItemsSupportArchiving") - [dataSource selectionModel:self countSupportsArchivingForItemIDs:allObjects4]);

        allObjects5 = [v7 allObjects];
        -[MessageListSelectionModel setTrackedItemsArchiveByDefault:](self, "setTrackedItemsArchiveByDefault:", -[MessageListSelectionModel trackedItemsArchiveByDefault](self, "trackedItemsArchiveByDefault") - [dataSource selectionModel:self countShouldArchiveByDefaultForItemIDs:allObjects5]);
      }

      [(MessageListSelectionModel *)self _scheduleMailboxPredictionUpdate];
    }

    else
    {
      LOBYTE(countCopy) = 0;
    }
  }

  else
  {
    LOBYTE(countCopy) = 0;
  }

  return countCopy;
}

- (void)_untrackAllItemIDs
{
  trackedItems = [(MessageListSelectionModel *)self trackedItems];
  [trackedItems untrackAllMessageListItems];

  [(MessageListSelectionModel *)self setTrackedItemsCount:0];
  [(MessageListSelectionModel *)self setTrackedItemsWillMoveToTrash:0];
  [(MessageListSelectionModel *)self setTrackedItemsSupportArchiving:0];
  [(MessageListSelectionModel *)self setTrackedItemsArchiveByDefault:0];

  [(MessageListSelectionModel *)self _scheduleMailboxPredictionUpdate];
}

- (id)selectItemWithItemID:(id)d
{
  v14[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    isSelectAll = [(MessageListSelectionModel *)self isSelectAll];
    v6 = [(MessageListSelectionModel *)self itemIDsToUnselectForItemID:dCopy];
    if (isSelectAll)
    {
      [(MessageListSelectionModel *)self _trackItemIDs:v6 updateCount:1];
      v14[0] = dCopy;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      v8 = [(MessageListSelectionModel *)self _untrackItemIDs:v7 updateCount:1];

      v9 = [(MessageListSelectionModel *)self cascadedItemIDsForItemID:dCopy isSelecting:1];
      [(MessageListSelectionModel *)self _untrackItemIDs:v9 updateCount:!v8];
    }

    else
    {
      [(MessageListSelectionModel *)self _untrackItemIDs:v6 updateCount:1];
      v13 = dCopy;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
      v11 = [(MessageListSelectionModel *)self _trackItemIDs:v10 updateCount:1];

      v9 = [(MessageListSelectionModel *)self cascadedItemIDsForItemID:dCopy isSelecting:1];
      [(MessageListSelectionModel *)self _trackItemIDs:v9 updateCount:!v11];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)deselectItemWithItemID:(id)d
{
  v12[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    if ([(MessageListSelectionModel *)self isSelectAll])
    {
      v12[0] = dCopy;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v6 = [(MessageListSelectionModel *)self _trackItemIDs:v5 updateCount:1];

      v7 = [(MessageListSelectionModel *)self cascadedItemIDsForItemID:dCopy isSelecting:0];
      [(MessageListSelectionModel *)self _trackItemIDs:v7 updateCount:!v6];
    }

    else
    {
      v11 = dCopy;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
      v9 = [(MessageListSelectionModel *)self _untrackItemIDs:v8 updateCount:1];

      v7 = [(MessageListSelectionModel *)self cascadedItemIDsForItemID:dCopy isSelecting:0];
      [(MessageListSelectionModel *)self _untrackItemIDs:v7 updateCount:!v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)willCollapseThreadItemID:(id)d
{
  dCopy = d;
  v4 = [MessageListSelectionModel cascadedItemIDsForItemID:"cascadedItemIDsForItemID:isSelecting:" isSelecting:?];
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];
  if (![(MessageListSelectionModel *)self _allChildrenSelected:v5])
  {
    v6 = [(MessageListSelectionModel *)self deselectItemWithItemID:dCopy];
    delegate = [(MessageListSelectionModel *)self delegate];
    [delegate selectionModel:self deselectItemID:dCopy];
  }

  [(MessageListSelectionModel *)self _untrackItemIDs:v4 updateCount:0];
}

- (void)didExpandThreadItemID:(id)d addedItemIDs:(id)ds
{
  dsCopy = ds;
  if ([(MessageListSelectionModel *)self isSelectedItemID:d])
  {
    if ([(MessageListSelectionModel *)self isSelectAll])
    {
      [(MessageListSelectionModel *)self _untrackItemIDs:dsCopy updateCount:0];
    }

    else
    {
      [(MessageListSelectionModel *)self _trackItemIDs:dsCopy updateCount:0];
    }
  }
}

- (BOOL)isSelectedItemID:(id)d
{
  dCopy = d;
  trackedItems = [(MessageListSelectionModel *)self trackedItems];
  v6 = [trackedItems hasMessageListItemForItemID:dCopy];

  return v6 ^ [(MessageListSelectionModel *)self isSelectAll];
}

- (void)configureSelectionForItemID:(id)d
{
  dCopy = d;
  if ([(MessageListSelectionModel *)self isPerformingDataSourceUpdates])
  {
    itemIDsPendingConfiguration = [(MessageListSelectionModel *)self itemIDsPendingConfiguration];
    [itemIDsPendingConfiguration addObject:dCopy];
  }

  else
  {
    itemIDsPendingConfiguration = [(MessageListSelectionModel *)self delegate];
    if ([(MessageListSelectionModel *)self isSelectedItemID:dCopy])
    {
      [itemIDsPendingConfiguration selectionModel:self selectItemID:dCopy];
    }

    else
    {
      [itemIDsPendingConfiguration selectionModel:self deselectItemID:dCopy];
    }

    itemIDsPendingConfiguration2 = [(MessageListSelectionModel *)self itemIDsPendingConfiguration];
    [itemIDsPendingConfiguration2 removeObject:dCopy];
  }
}

- (void)setPerformingDataSourceUpdates:(BOOL)updates
{
  v5 = *MEMORY[0x277D85DE8];
  if (self->_performingDataSourceUpdates != updates)
  {
    self->_performingDataSourceUpdates = updates;
    if (!updates)
    {
      [(MessageListSelectionModel *)self setPerformingDataSourceUpdates:v3, v4];
    }
  }
}

- (void)setMultipleSelectionActive:(BOOL)active
{
  if (self->_multipleSelectionActive != active)
  {
    self->_multipleSelectionActive = active;
    if (active)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    else
    {
      v5 = 0;
    }

    itemsToDeselectAfterMultipleSelection = self->_itemsToDeselectAfterMultipleSelection;
    self->_itemsToDeselectAfterMultipleSelection = v5;

    MEMORY[0x2821F96F8](v5, itemsToDeselectAfterMultipleSelection);
  }
}

- (EMMailbox)predictedMoveMailbox
{
  if ([(MessageListSelectionModel *)self type])
  {
    resultIfAvailable = 0;
  }

  else
  {
    mailboxPredictionFuture = [(MessageListSelectionModel *)self mailboxPredictionFuture];
    resultIfAvailable = [mailboxPredictionFuture resultIfAvailable];
  }

  return resultIfAvailable;
}

- (void)_scheduleMailboxPredictionUpdate
{
  if (-[MessageListSelectionModel isSelectAll](self, "isSelectAll") || (-[MessageListSelectionModel trackedItems](self, "trackedItems"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, !v4))
  {

    [(MessageListSelectionModel *)self setMailboxPredictionFuture:0];
  }

  else
  {
    predictionDebouncer = [(MessageListSelectionModel *)self predictionDebouncer];

    if (!predictionDebouncer)
    {
      objc_initWeak(&location, self);
      v6 = objc_alloc(MEMORY[0x277D07140]);
      mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __61__MessageListSelectionModel__scheduleMailboxPredictionUpdate__block_invoke;
      v15 = &unk_278189760;
      objc_copyWeak(&v16, &location);
      v8 = [v6 initWithTimeInterval:mainThreadScheduler scheduler:0 startAfter:&v12 block:0.25];
      [(MessageListSelectionModel *)self setPredictionDebouncer:v8, v12, v13, v14, v15];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    trackedItems = [(MessageListSelectionModel *)self trackedItems];
    itemIDs = [trackedItems itemIDs];

    predictionDebouncer2 = [(MessageListSelectionModel *)self predictionDebouncer];
    [predictionDebouncer2 debounceResult:itemIDs];
  }
}

void __61__MessageListSelectionModel__scheduleMailboxPredictionUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __updatePredictionWithSelection:v3];
}

- (void)__updatePredictionWithSelection:(id)selection
{
  v23 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  dataSource = [(MessageListSelectionModel *)self dataSource];
  v6 = [dataSource selectionModel:self objectIDsForItemIDs:selectionCopy];
  ef_UUID = [MEMORY[0x277CCACA8] ef_UUID];
  v8 = _ef_log_MessageListSelectionModel(ef_UUID);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v20 = [selectionCopy count];
    v21 = 2114;
    v22 = ef_UUID;
    _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_INFO, "Requesting predicted mailbox for %lu messages. predictionID=%{public}@", buf, 0x16u);
  }

  v9 = [dataSource selectionModel:self predictMailboxForMovingMessagesWithIDs:v6];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__MessageListSelectionModel___updatePredictionWithSelection___block_invoke;
  v17[3] = &unk_278189788;
  v10 = ef_UUID;
  v18 = v10;
  [v9 addSuccessBlock:v17];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __61__MessageListSelectionModel___updatePredictionWithSelection___block_invoke_54;
  v15 = &unk_278189738;
  v16 = v10;
  v11 = v10;
  [v9 addFailureBlock:&v12];
  [(MessageListSelectionModel *)self setMailboxPredictionFuture:v9, v12, v13, v14, v15];
}

void __61__MessageListSelectionModel___updatePredictionWithSelection___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ef_log_MessageListSelectionModel(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 ef_publicDescription];
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_INFO, "Mailbox prediction finished with mailbox=%{public}@ predictionID=%{public}@", &v7, 0x16u);
  }
}

void __61__MessageListSelectionModel___updatePredictionWithSelection___block_invoke_54(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 ef_isCancelledError];
  if (v4)
  {
    v5 = _ef_log_MessageListSelectionModel(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v14 = 138543362;
      v15 = v6;
      v7 = "Mailbox prediction cancelled. predictionID=%{public}@";
LABEL_7:
      _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_INFO, v7, &v14, 0xCu);
    }
  }

  else
  {
    v8 = [v3 em_isItemNotFoundError];
    v9 = v8;
    v5 = _ef_log_MessageListSelectionModel(v8);
    v10 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v10)
      {
        v11 = *(a1 + 32);
        v14 = 138543362;
        v15 = v11;
        v7 = "Mailbox prediction finished with no mailbox found. predictionID=%{public}@";
        goto LABEL_7;
      }
    }

    else if (v10)
    {
      v12 = *(a1 + 32);
      v13 = [v3 ef_publicDescription];
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_INFO, "Mailbox prediction produced an unexpected error. predictionID=%{public}@ error=%{public}@", &v14, 0x16u);
    }
  }
}

- (void)setMailboxPredictionFuture:(id)future
{
  futureCopy = future;
  [(EFFuture *)self->_mailboxPredictionFuture cancel];
  mailboxPredictionFuture = self->_mailboxPredictionFuture;
  self->_mailboxPredictionFuture = futureCopy;
}

- (void)preserveSelection
{
  restoreSelectionCancelable = [(MessageListSelectionModel *)self restoreSelectionCancelable];
  v4 = restoreSelectionCancelable;
  if (restoreSelectionCancelable)
  {
    [restoreSelectionCancelable cancel];
  }

  [(MessageListSelectionModel *)self setShouldRestoreSelection:1];
  objc_initWeak(&location, self);
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  preserveSelectionTimeout = [(MessageListSelectionModel *)self preserveSelectionTimeout];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __46__MessageListSelectionModel_preserveSelection__block_invoke;
  v11 = &unk_278188CD0;
  objc_copyWeak(&v12, &location);
  v7 = [mainThreadScheduler afterDelay:&v8 performBlock:preserveSelectionTimeout];
  [(MessageListSelectionModel *)self setRestoreSelectionCancelable:v7, v8, v9, v10, v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __46__MessageListSelectionModel_preserveSelection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShouldRestoreSelection:0];
}

- (void)enableSelectAllWithMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  [(MessageListSelectionModel *)self clearAll];
  v5 = [mailboxesCopy copy];

  [(MessageListSelectionModel *)self setTrackedMailboxes:v5];

  [(MessageListSelectionModel *)self setType:1];
}

- (void)disableSelectAll
{
  [(MessageListSelectionModel *)self clearAll];
  [(MessageListSelectionModel *)self setTrackedMailboxes:0];

  [(MessageListSelectionModel *)self setType:0];
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  trackedItems = [(MessageListSelectionModel *)self trackedItems];
  v7 = [trackedItems count];
  trackedItems2 = [(MessageListSelectionModel *)self trackedItems];
  v9 = [trackedItems2 count];
  trackedMailboxes = [(MessageListSelectionModel *)self trackedMailboxes];
  v11 = [v3 stringWithFormat:@"<%@: %p> itemIDs:%ld, messageListItems:%ld, mailboxes:%ld, isSelectAll:%d", v5, self, v7, v9, objc_msgSend(trackedMailboxes, "count"), -[MessageListSelectionModel isSelectAll](self, "isSelectAll")];

  return v11;
}

- (MessageListSelectionModelDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (MessageListSelectionModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_fetchMissingMessageListItems
{
  v37 = *MEMORY[0x277D85DE8];
  if (self)
  {
    itemIDsMissingMessageListItem = [self itemIDsMissingMessageListItem];
    allObjects = [itemIDsMissingMessageListItem allObjects];

    v4 = [allObjects count];
    if (v4)
    {
      v5 = _ef_log_MessageListSelectionModel(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        *buf = 138544130;
        v30 = v7;
        v31 = 2048;
        selfCopy = self;
        v33 = 2048;
        v34 = [allObjects count];
        v35 = 2114;
        v36 = allObjects;
        _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Fetch message list items for item ids (%lu): %{public}@", buf, 0x2Au);
      }

      itemIDsMissingMessageListItem2 = [self itemIDsMissingMessageListItem];
      [itemIDsMissingMessageListItem2 removeAllObjects];

      trackedItems = [self trackedItems];
      dataSource = [self dataSource];
      selfCopy2 = self;
      v12 = [dataSource selectionModel:self messageListItemsForItemIDs:allObjects];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = v12;
      v13 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
            v22[0] = MEMORY[0x277D85DD0];
            v22[1] = 3221225472;
            v22[2] = __58__MessageListSelectionModel__fetchMissingMessageListItems__block_invoke;
            v22[3] = &unk_278189710;
            v23 = trackedItems;
            [v17 onScheduler:mainThreadScheduler addSuccessBlock:v22];

            mainThreadScheduler2 = [MEMORY[0x277D071B8] mainThreadScheduler];
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __58__MessageListSelectionModel__fetchMissingMessageListItems__block_invoke_2;
            v21[3] = &unk_278189738;
            v21[4] = selfCopy2;
            [v17 onScheduler:mainThreadScheduler2 addFailureBlock:v21];
          }

          v14 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v14);
      }
    }
  }
}

void __58__MessageListSelectionModel__fetchMissingMessageListItems__block_invoke_2_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *(a1 + 32);
  v9 = [a2 ef_publicDescription];
  v10 = 138543874;
  v11 = v7;
  v12 = 2048;
  v13 = v8;
  v14 = 2114;
  v15 = v9;
  _os_log_error_impl(&dword_214A5E000, a3, OS_LOG_TYPE_ERROR, "<%{public}@: %p> Failed to get message list item: %{public}@", &v10, 0x20u);
}

- (void)setPerformingDataSourceUpdates:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 itemIDsPendingConfiguration];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [a1 itemIDsPendingConfiguration];
    v9 = [v8 mutableCopy];

    v10 = [a1 trackedItems];
    v11 = [v10 itemIDs];
    [v9 addObjectsFromArray:v11];

    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:a2 objects:a3 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = **(a2 + 16);
      do
      {
        v16 = 0;
        do
        {
          if (**(a2 + 16) != v15)
          {
            objc_enumerationMutation(v12);
          }

          [a1 configureSelectionForItemID:*(*(a2 + 8) + 8 * v16++)];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:a2 objects:a3 count:16];
      }

      while (v14);
    }
  }

  [(MessageListSelectionModel *)a1 _fetchMissingMessageListItems];
}

@end