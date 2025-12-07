@interface CompletionListTableViewDataSource
- (CompletionItemActionHandler)actionHandler;
- (CompletionListTableViewDataSource)initWithTableView:(id)view;
- (id)buildSnapshot;
- (id)completionItemAtIndexPath:(id)path;
- (id)tableView:(id)view cellForItem:(id)item atIndexPath:(id)path;
- (void)reloadVisibleRows;
- (void)updateTableViewWithCompletionList:(id)list animated:(BOOL)animated completion:(id)completion;
- (void)updateTableViewWithCompletionList:(id)list rowAnimation:(int64_t)animation completion:(id)completion;
@end

@implementation CompletionListTableViewDataSource

- (CompletionListTableViewDataSource)initWithTableView:(id)view
{
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = CompletionListTableViewDataSource;
  v6 = [(CompletionListTableViewDataSource *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, view);
    objc_initWeak(&location, v7);
    v8 = objc_alloc(MEMORY[0x277D75B60]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__CompletionListTableViewDataSource_initWithTableView___block_invoke;
    v13[3] = &unk_2781D7358;
    objc_copyWeak(&v14, &location);
    v9 = [v8 initWithTableView:viewCopy cellProvider:v13];
    dataSource = v7->_dataSource;
    v7->_dataSource = v9;

    v11 = v7;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v7;
}

id __55__CompletionListTableViewDataSource_initWithTableView___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained tableView:v9 cellForItem:v7 atIndexPath:v8];

  return v11;
}

- (id)completionItemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section >= -[UITableViewDiffableDataSource numberOfSectionsInTableView:](self->_dataSource, "numberOfSectionsInTableView:", self->_tableView) || (v6 = [pathCopy item], v6 >= -[UITableViewDiffableDataSource tableView:numberOfRowsInSection:](self->_dataSource, "tableView:numberOfRowsInSection:", self->_tableView, objc_msgSend(pathCopy, "section"))))
  {
    completionItem = 0;
  }

  else
  {
    v7 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
    completionItem = [v7 completionItem];
  }

  return completionItem;
}

- (void)updateTableViewWithCompletionList:(id)list animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v18[1] = *MEMORY[0x277D85DE8];
  listCopy = list;
  completionCopy = completion;
  objc_storeStrong(&self->_completionList, list);
  snapshot = [(UITableViewDiffableDataSource *)self->_dataSource snapshot];
  buildSnapshot = [(CompletionListTableViewDataSource *)self buildSnapshot];
  if ([buildSnapshot isEqual:snapshot])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    sectionIdentifiers = [snapshot sectionIdentifiers];
    sectionIdentifiers2 = [buildSnapshot sectionIdentifiers];
    indexOfSearchSuggestionsGroup = [(CompletionList *)self->_completionList indexOfSearchSuggestionsGroup];
    if ([sectionIdentifiers2 count] > indexOfSearchSuggestionsGroup)
    {
      v16 = [sectionIdentifiers2 objectAtIndexedSubscript:indexOfSearchSuggestionsGroup];
      if (indexOfSearchSuggestionsGroup != [sectionIdentifiers indexOfObject:v16])
      {
        v18[0] = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
        [buildSnapshot reloadSectionsWithIdentifiers:v17];
      }
    }

    [(UITableViewDiffableDataSource *)self->_dataSource applySnapshot:buildSnapshot animatingDifferences:animatedCopy completion:completionCopy];
  }
}

- (void)updateTableViewWithCompletionList:(id)list rowAnimation:(int64_t)animation completion:(id)completion
{
  dataSource = self->_dataSource;
  completionCopy = completion;
  listCopy = list;
  defaultRowAnimation = [(UITableViewDiffableDataSource *)dataSource defaultRowAnimation];
  [(UITableViewDiffableDataSource *)self->_dataSource setDefaultRowAnimation:animation];
  [(CompletionListTableViewDataSource *)self updateTableViewWithCompletionList:listCopy animated:1 completion:completionCopy];

  v12 = self->_dataSource;

  [(UITableViewDiffableDataSource *)v12 setDefaultRowAnimation:defaultRowAnimation];
}

- (id)buildSnapshot
{
  v59[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CFB890]);
  if ([(CompletionList *)self->_completionList numberOfGroups])
  {
    v4 = 0;
    v5 = 0x277CBE000uLL;
    v38 = v3;
    selfCopy = self;
    do
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [(CompletionList *)self->_completionList identifierForGroupAtIndex:v4];
      v8 = [(CompletionList *)self->_completionList titleForGroupAtIndex:v4];
      v9 = [v6 stringWithFormat:@"%@-%@", v7, v8];

      v10 = [(CompletionList *)self->_completionList completionsForGroupAtIndex:v4];
      v45 = v9;
      v59[0] = v9;
      v11 = [*(v5 + 2656) arrayWithObjects:v59 count:1];
      [v3 appendSectionsWithIdentifiers:v11];

      v12 = [v10 safari_mapObjectsUsingBlock:&__block_literal_global_9];
      v43 = [MEMORY[0x277CBEB70] orderedSetWithArray:v12];
      array = [v43 array];
      v14 = [v12 count];
      v44 = array;
      if (v14 != [array count])
      {
        v41 = v10;
        v42 = v4;
        v15 = [MEMORY[0x277CBEB58] set];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v16 = v12;
        v17 = [v16 countByEnumeratingWithState:&v46 objects:v58 count:16];
        v40 = v12;
        if (v17)
        {
          v18 = v17;
          v19 = *v47;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v47 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v46 + 1) + 8 * i);
              if ([v15 containsObject:v21])
              {
                completionItem = [v21 completionItem];
                v24 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(completionItem, v23);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
                {
                  v25 = v24;
                  v26 = objc_opt_class();
                  v27 = NSStringFromClass(v26);
                  tableItemEqualityInfo = [completionItem tableItemEqualityInfo];
                  *buf = 138544130;
                  v51 = v45;
                  v52 = 2114;
                  v53 = v27;
                  v54 = 2114;
                  v55 = tableItemEqualityInfo;
                  v56 = 2114;
                  v57 = completionItem;
                  _os_log_fault_impl(&dword_215819000, v25, OS_LOG_TYPE_FAULT, "Duplicate completion item found in section '%{public}@': class=%{public}@, tableItemEqualityInfo=%{public}@, completionItem=%{public}@", buf, 0x2Au);
                }
              }

              else
              {
                [v15 addObject:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v46 objects:v58 count:16];
          }

          while (v18);
        }

        v31 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v29, v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          v32 = v31;
          v33 = [v16 count];
          v34 = [v44 count];
          v35 = [v16 count];
          v36 = [v44 count];
          *buf = 138544130;
          v51 = v45;
          v52 = 2048;
          v53 = v33;
          v54 = 2048;
          v55 = v34;
          v56 = 2048;
          v57 = v35 - v36;
          _os_log_fault_impl(&dword_215819000, v32, OS_LOG_TYPE_FAULT, "Section '%{public}@' had %lu items before deduplication, %lu items after deduplication (%lu duplicates removed)", buf, 0x2Au);
        }

        v3 = v38;
        self = selfCopy;
        v10 = v41;
        v4 = v42;
        v5 = 0x277CBE000;
        v12 = v40;
      }

      [v3 appendItemsWithIdentifiers:v44];

      ++v4;
    }

    while (v4 < [(CompletionList *)self->_completionList numberOfGroups]);
  }

  return v3;
}

CompletionListTableItem *__50__CompletionListTableViewDataSource_buildSnapshot__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CompletionListTableItem alloc] initWithCompletionItem:v2];

  return v3;
}

- (void)reloadVisibleRows
{
  indexPathsForVisibleRows = [(UITableView *)self->_tableView indexPathsForVisibleRows];
  if ([indexPathsForVisibleRows count])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__CompletionListTableViewDataSource_reloadVisibleRows__block_invoke;
    v6[3] = &unk_2781D73A0;
    v6[4] = self;
    v4 = [indexPathsForVisibleRows safari_mapObjectsUsingBlock:v6];
    snapshot = [(UITableViewDiffableDataSource *)self->_dataSource snapshot];
    [snapshot reloadItemsWithIdentifiers:v4];
    [(UITableViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:0];
  }
}

- (id)tableView:(id)view cellForItem:(id)item atIndexPath:(id)path
{
  v67 = *MEMORY[0x277D85DE8];
  val = view;
  itemCopy = item;
  pathCopy = path;
  v50 = itemCopy;
  completionItem = [itemCopy completionItem];
  completionTableViewCellReuseIdentifier = [completionItem completionTableViewCellReuseIdentifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![pathCopy section])
  {
    inlineCard = [completionItem inlineCard];
    cardSections = [inlineCard cardSections];
    firstObject = [cardSections firstObject];
    [firstObject setSeparatorStyle:1];
  }

  v14 = [val dequeueReusableCellWithIdentifier:completionTableViewCellReuseIdentifier];
  if (!v14)
  {
    v14 = [completionItem completionTableViewCellForCompletionList:self->_completionList];
  }

  completionTableViewCellReuseIdentifier2 = [completionItem completionTableViewCellReuseIdentifier];
  [v14 setAccessibilityIdentifier:completionTableViewCellReuseIdentifier2];

  [completionItem configureCompletionTableViewCell:v14 forCompletionList:self->_completionList];
  v16 = [pathCopy row] + 1;
  if (v16 >= -[UITableViewDiffableDataSource tableView:numberOfRowsInSection:](self->_dataSource, "tableView:numberOfRowsInSection:", val, [pathCopy section]))
  {
    v21 = 0;
  }

  else
  {
    dataSource = self->_dataSource;
    v18 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(pathCopy inSection:{"row") + 1, objc_msgSend(pathCopy, "section")}];
    v19 = [(UITableViewDiffableDataSource *)dataSource itemIdentifierForIndexPath:v18];
    completionItem2 = [v19 completionItem];

    v21 = completionItem2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [completionItem safari_configureBackgroundColorForCompletionList:self->_completionList];
  }

  v22 = ![pathCopy section] && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v21, "completionCellBackgroundModeInTopSection") == 1;
  separatorStyle = 1;
  if (([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0 && !v22)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v21;
      inlineCard2 = [completionItem inlineCard];
      cardSections2 = [inlineCard2 cardSections];
      firstObject2 = [cardSections2 firstObject];
      separatorStyle = [firstObject2 separatorStyle];

      v21 = v24;
    }

    else
    {
      separatorStyle = 2;
    }
  }

  if ([pathCopy section] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    completionCellBackgroundModeInTopSection = 0;
  }

  else
  {
    completionCellBackgroundModeInTopSection = [completionItem completionCellBackgroundModeInTopSection];
  }

  if ([pathCopy row])
  {
    v29 = 0;
  }

  else
  {
    v29 = ([pathCopy section] | v21) == 0;
  }

  v49 = v21;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v31 = completionCellBackgroundModeInTopSection;
  if (isKindOfClass)
  {
    v32 = completionItem;
    resultType = [v32 resultType];
    if ([resultType isEqualToString:@"web_index"])
    {
      topHit = [v32 topHit];

      if (topHit)
      {
        v31 = completionCellBackgroundModeInTopSection;
      }

      else
      {
        v31 = 1;
      }
    }

    else
    {

      v31 = completionCellBackgroundModeInTopSection;
    }
  }

  if (v29)
  {
    v35 = v31;
  }

  else
  {
    v35 = completionCellBackgroundModeInTopSection;
  }

  v36 = v35 == 1 && [pathCopy row] != 0;
  objc_initWeak(&location, val);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__CompletionListTableViewDataSource_tableView_cellForItem_atIndexPath___block_invoke;
  aBlock[3] = &unk_2781D73C8;
  objc_copyWeak(&v55, &location);
  v37 = pathCopy;
  v54 = v37;
  v38 = _Block_copy(aBlock);
  [CompletionListTableViewController configureCell:v14 backgroundMode:v35 separatorStyle:separatorStyle shouldHaveTopPadding:v36 configurationStateDidChangeCallback:v38];
  [v14 setClipsToBounds:0];
  v39 = objc_opt_respondsToSelector();
  if (v39)
  {
    WeakRetained = objc_loadWeakRetained(&self->_actionHandler);
    [completionItem setHandlerForActionItem:WeakRetained];
  }

  if (!v14)
  {
    v42 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v39, v40);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      if (self->_completionList)
      {
        v44 = @"IS NOT";
      }

      else
      {
        v44 = @"IS";
      }

      v45 = objc_opt_class();
      numberOfGroups = [(CompletionList *)self->_completionList numberOfGroups];
      v47 = -[CompletionList completionsForGroupAtIndex:](self->_completionList, "completionsForGroupAtIndex:", [v37 section]);
      v48 = [v47 count];
      *buf = 138544386;
      v58 = v37;
      v59 = 2114;
      v60 = v44;
      v61 = 2114;
      v62 = v45;
      v63 = 2048;
      v64 = numberOfGroups;
      v65 = 2048;
      v66 = v48;
      _os_log_fault_impl(&dword_215819000, v42, OS_LOG_TYPE_FAULT, "No cell returned for completion item at index path %{public}@; completion list %{public}@ nil; item class: %{public}@; number of groups: %ld; number of completions in group: %ld", buf, 0x34u);
    }
  }

  objc_destroyWeak(&v55);
  objc_destroyWeak(&location);

  return v14;
}

void __71__CompletionListTableViewDataSource_tableView_cellForItem_atIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained && ![*(a1 + 32) row])
    {
      v4 = [WeakRetained headerViewForSection:{objc_msgSend(*(a1 + 32), "section")}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v6 isSelected])
        {
          v5 = 0;
        }

        else
        {
          v5 = [v6 isHighlighted] ^ 1;
        }

        [v4 setShowsSeparator:v5];
      }
    }
  }
}

- (CompletionItemActionHandler)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

@end