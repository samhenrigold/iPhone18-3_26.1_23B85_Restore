@interface TKToneClassicsTableViewController
- (TKToneClassicsTableViewController)initWithClassicTonesHeaderItem:(id)item;
- (TKTonePickerTableViewControllerHelper)tonePickerTableViewControllerHelper;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)didReloadTones;
- (void)didUpdateCheckedStatus:(BOOL)status ofToneClassicsPickerItem:(id)item;
- (void)didUpdateDetailText:(id)text ofToneClassicsPickerItem:(id)item;
- (void)layoutMarginsDidChangeInTonePickerTableView:(id)view;
- (void)loadView;
- (void)separatorColorDidChangeInTonePickerTableView:(id)view;
- (void)setTonePickerTableViewControllerHelper:(id)helper;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TKToneClassicsTableViewController

- (TKToneClassicsTableViewController)initWithClassicTonesHeaderItem:(id)item
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = TKToneClassicsTableViewController;
  v6 = [(TKToneClassicsTableViewController *)&v10 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classicTonesHeaderItem, item);
    v8 = TLLocalizedString();
    [(TKToneClassicsTableViewController *)v7 setTitle:v8];
  }

  return v7;
}

- (void)dealloc
{
  tonePickerTableViewControllerHelper = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  [tonePickerTableViewControllerHelper tonePickerTableViewControllerWillBeDeallocated:self];

  v4.receiver = self;
  v4.super_class = TKToneClassicsTableViewController;
  [(TKToneClassicsTableViewController *)&v4 dealloc];
}

- (void)setTonePickerTableViewControllerHelper:(id)helper
{
  v14 = *MEMORY[0x277D85DE8];
  helperCopy = helper;
  WeakRetained = objc_loadWeakRetained(&self->_tonePickerTableViewControllerHelper);
  objc_storeWeak(&self->_tonePickerTableViewControllerHelper, helperCopy);
  if ([(TKToneClassicsTableViewController *)self isViewLoaded]&& (helperCopy == 0) == (WeakRetained != 0))
  {
    v6 = TLLogToneManagement();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543874;
      selfCopy = self;
      v10 = 2114;
      v11 = WeakRetained;
      v12 = 2114;
      v13 = helperCopy;
      _os_log_impl(&dword_21C599000, v6, OS_LOG_TYPE_DEFAULT, "The tonePickerTableViewControllerHelper property of %{public}@ is being updated from %{public}@ to %{public}@. Reloading table view.", &v8, 0x20u);
    }

    tableView = [(TKToneClassicsTableViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)didReloadTones
{
  if ([(TKToneClassicsTableViewController *)self isViewLoaded])
  {
    tableView = [(TKToneClassicsTableViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)didUpdateCheckedStatus:(BOOL)status ofToneClassicsPickerItem:(id)item
{
  statusCopy = status;
  v6 = MEMORY[0x277CCAA70];
  itemCopy = item;
  v11 = [v6 indexPathForRow:objc_msgSend(itemCopy inSection:{"classicToneIndex"), 0}];
  tableView = [(TKToneClassicsTableViewController *)self tableView];
  v9 = [tableView cellForRowAtIndexPath:v11];

  tonePickerTableViewControllerHelper = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  [tonePickerTableViewControllerHelper updateCell:v9 withCheckedStatus:statusCopy forTonePickerItem:itemCopy];
}

- (void)didUpdateDetailText:(id)text ofToneClassicsPickerItem:(id)item
{
  v6 = MEMORY[0x277CCAA70];
  textCopy = text;
  v11 = [v6 indexPathForRow:objc_msgSend(item inSection:{"classicToneIndex"), 0}];
  tableView = [(TKToneClassicsTableViewController *)self tableView];
  v9 = [tableView cellForRowAtIndexPath:v11];

  tonePickerTableViewControllerHelper = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  [tonePickerTableViewControllerHelper updateCell:v9 withDetailText:textCopy];
}

- (void)loadView
{
  tonePickerTableViewControllerHelper = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  [tonePickerTableViewControllerHelper loadViewForTonePickerTableViewController:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v16.receiver = self;
  v16.super_class = TKToneClassicsTableViewController;
  [(TKToneClassicsTableViewController *)&v16 viewWillAppear:?];
  tableView = [(TKToneClassicsTableViewController *)self tableView];
  if (tableView)
  {
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v6 lineHeight];
    [tableView setEstimatedRowHeight:ceil(v7 + v7)];

    [tableView setRowHeight:*MEMORY[0x277D76F30]];
  }

  tonePickerTableViewControllerHelper = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  selectedTonePickerItem = [tonePickerTableViewControllerHelper selectedTonePickerItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = selectedTonePickerItem;
    parentItem = [v10 parentItem];
    section = [parentItem section];
    if (section == [(TKPickerItem *)self->_classicTonesHeaderItem section])
    {
      v13 = [parentItem row];
      if (v13 == [(TKPickerRowItem *)self->_classicTonesHeaderItem row])
      {
        v14 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v10 inSection:{"classicToneIndex"), 0}];
        tableView2 = [(TKToneClassicsTableViewController *)self tableView];
        [tableView2 scrollToRowAtIndexPath:v14 atScrollPosition:2 animated:appearCopy];
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = TKToneClassicsTableViewController;
  [(TKToneClassicsTableViewController *)&v6 viewWillDisappear:?];
  tonePickerTableViewControllerHelper = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  [tonePickerTableViewControllerHelper tonePickerTableViewWillDisappear:disappearCopy];
}

- (void)layoutMarginsDidChangeInTonePickerTableView:(id)view
{
  v19 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  tonePickerTableViewControllerHelper = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  [viewCopy indexPathsForVisibleRows];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = v17 = 0u;
  v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [viewCopy cellForRowAtIndexPath:v10];
        v12 = -[TKTonePickerItem childItemAtIndex:](self->_classicTonesHeaderItem, "childItemAtIndex:", [v10 row]);
        [tonePickerTableViewControllerHelper tableView:viewCopy updateCell:v11 withSeparatorForPickerRowItem:v12];
      }

      v7 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)separatorColorDidChangeInTonePickerTableView:(id)view
{
  viewCopy = view;
  tonePickerTableViewControllerHelper = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  [tonePickerTableViewControllerHelper updateDividerContentColorToMatchSeparatorColorInTableView:viewCopy];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper:view];
  if (v5)
  {
    numberOfChildren = [(TKTonePickerItem *)self->_classicTonesHeaderItem numberOfChildren];
  }

  else
  {
    numberOfChildren = 0;
  }

  return numberOfChildren;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v62 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  tonePickerTableViewControllerHelper = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  if (!tonePickerTableViewControllerHelper)
  {
    v9 = TLLogGeneral();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

    if (v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/Embedded/iOS/TKToneClassicsTableViewController.m"];
      v12 = TLLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v11 lastPathComponent];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v54 = 136381443;
        selfCopy = "[TKToneClassicsTableViewController tableView:cellForRowAtIndexPath:]";
        v56 = 2113;
        v57 = lastPathComponent;
        v58 = 2049;
        v59 = 183;
        v60 = 2113;
        v61 = callStackSymbols;
        _os_log_impl(&dword_21C599000, v12, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v54, 0x2Au);
      }
    }

    else
    {
      v11 = TLLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(TKToneClassicsTableViewController *)v11 tableView:v15 cellForRowAtIndexPath:v16, v17, v18, v19, v20, v21];
      }
    }

    v22 = TLLogGeneral();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [TKToneClassicsTableViewController tableView:cellForRowAtIndexPath:];
    }
  }

  v23 = -[TKTonePickerItem childItemAtIndex:](self->_classicTonesHeaderItem, "childItemAtIndex:", [pathCopy row]);
  if (!v23)
  {
    v24 = TLLogGeneral();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);

    if (v25)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/Embedded/iOS/TKToneClassicsTableViewController.m"];
      v27 = TLLogGeneral();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent2 = [v26 lastPathComponent];
        callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
        v54 = 136381443;
        selfCopy = "[TKToneClassicsTableViewController tableView:cellForRowAtIndexPath:]";
        v56 = 2113;
        v57 = lastPathComponent2;
        v58 = 2049;
        v59 = 185;
        v60 = 2113;
        v61 = callStackSymbols2;
        _os_log_impl(&dword_21C599000, v27, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v54, 0x2Au);
      }
    }

    else
    {
      v26 = TLLogGeneral();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(TKToneClassicsTableViewController *)v26 tableView:v30 cellForRowAtIndexPath:v31, v32, v33, v34, v35, v36];
      }
    }

    v37 = TLLogGeneral();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [TKToneClassicsTableViewController tableView:cellForRowAtIndexPath:];
    }
  }

  v38 = [tonePickerTableViewControllerHelper tableView:viewCopy cellForPickerRowItem:v23];
  if (!v38)
  {
    v39 = TLLogGeneral();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);

    if (v40)
    {
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/Embedded/iOS/TKToneClassicsTableViewController.m"];
      v42 = TLLogGeneral();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent3 = [v41 lastPathComponent];
        callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
        v54 = 136381443;
        selfCopy = "[TKToneClassicsTableViewController tableView:cellForRowAtIndexPath:]";
        v56 = 2113;
        v57 = lastPathComponent3;
        v58 = 2049;
        v59 = 187;
        v60 = 2113;
        v61 = callStackSymbols3;
        _os_log_impl(&dword_21C599000, v42, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v54, 0x2Au);
      }
    }

    else
    {
      v41 = TLLogGeneral();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [(TKToneClassicsTableViewController *)v41 tableView:v45 cellForRowAtIndexPath:v46, v47, v48, v49, v50, v51];
      }
    }

    v52 = TLLogGeneral();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v54 = 138543874;
      selfCopy = self;
      v56 = 2114;
      v57 = pathCopy;
      v58 = 2114;
      v59 = v23;
      _os_log_error_impl(&dword_21C599000, v52, OS_LOG_TYPE_ERROR, "%{public}@ is about to return a nil cell for row at index path %{public}@ with toneClassicsPickerItem = %{public}@.", &v54, 0x20u);
    }
  }

  return v38;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  viewCopy = view;
  tonePickerTableViewControllerHelper = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  classicTonesHeaderItem = self->_classicTonesHeaderItem;
  v12 = [pathCopy row];

  v13 = [(TKTonePickerItem *)classicTonesHeaderItem childItemAtIndex:v12];
  [tonePickerTableViewControllerHelper tableView:viewCopy willDisplayCell:cellCopy forPickerRowItem:v13];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  tonePickerTableViewControllerHelper = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  v8 = -[TKTonePickerItem childItemAtIndex:](self->_classicTonesHeaderItem, "childItemAtIndex:", [pathCopy row]);
  [tonePickerTableViewControllerHelper tableView:viewCopy didSelectRowAtIndexPath:pathCopy forPickerRowItem:v8];
}

- (TKTonePickerTableViewControllerHelper)tonePickerTableViewControllerHelper
{
  WeakRetained = objc_loadWeakRetained(&self->_tonePickerTableViewControllerHelper);

  return WeakRetained;
}

@end