@interface DSSharingPermissionsDetailController
+ (id)detailControllerWithPeople:(id)people startingViewController:(id)controller delegate:(id)delegate;
+ (id)detailControllerWithSharingTypes:(id)types startingViewController:(id)controller delegate:(id)delegate;
+ (void)initialize;
- (DSSharingPermissionsDetailDelegate)delegate;
- (id)alertTextForSources:(id)sources;
- (id)personForIndexPath:(id)path;
- (id)sourceNameForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateButton;
- (void)checkDisplayNames;
- (void)next;
- (void)reloadTableViewData;
- (void)sharingStoppedForPerson:(id)person sourceNames:(id)names error:(id)error;
- (void)sharingStoppedForType:(id)type people:(id)people error:(id)error;
- (void)stopAllSharing;
- (void)stopSelectedSharing;
- (void)stopSharingSources:(id)sources people:(id)people alertLabel:(id)label alertDetail:(id)detail completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation DSSharingPermissionsDetailController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = os_log_create("com.apple.DigitalSeparation", "DSSharingByPersonDetail");
    v3 = DSLogSharingPermissionsDetail;
    DSLogSharingPermissionsDetail = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

+ (id)detailControllerWithPeople:(id)people startingViewController:(id)controller delegate:(id)delegate
{
  peopleCopy = people;
  delegateCopy = delegate;
  controllerCopy = controller;
  firstObject = [peopleCopy firstObject];
  if ([peopleCopy count] < 2)
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v10 = [peopleCopy subarrayWithRange:{1, objc_msgSend(peopleCopy, "count") - 1}];
  }

  v11 = DSUILocStringForKey(@"REVIEW_SHARING_WITH_FORMAT");
  v12 = MEMORY[0x277CCACA8];
  displayName = [firstObject displayName];
  v14 = [v12 stringWithFormat:v11, displayName];

  v15 = DSUILocStringForKey(@"SHARING_PERMISSION_DETAIL_TEXT_FORMAT");
  v16 = MEMORY[0x277CCACA8];
  displayName2 = [firstObject displayName];
  v18 = [v16 stringWithFormat:v15, displayName2];

  v19 = [DSSharingPermissionsDetailController alloc];
  iconForDetail = [firstObject iconForDetail];
  v21 = [(DSTableWelcomeController *)v19 initWithTitle:v14 detailText:v18 icon:iconForDetail adoptTableViewScrollView:1 shouldShowSearchBar:0];

  [(DSSharingPermissionsDetailController *)v21 setSharingPerson:firstObject];
  [(DSSharingPermissionsDetailController *)v21 setRemainingPeople:v10];
  [(DSSharingPermissionsDetailController *)v21 setStartingViewController:controllerCopy];

  [(DSSharingPermissionsDetailController *)v21 setDelegate:delegateCopy];

  return v21;
}

+ (id)detailControllerWithSharingTypes:(id)types startingViewController:(id)controller delegate:(id)delegate
{
  typesCopy = types;
  delegateCopy = delegate;
  controllerCopy = controller;
  firstObject = [typesCopy firstObject];
  if ([typesCopy count] < 2)
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v11 = [typesCopy subarrayWithRange:{1, objc_msgSend(typesCopy, "count") - 1}];
  }

  v12 = MEMORY[0x277D054C0];
  source = [firstObject source];
  name = [source name];
  v15 = [v12 sourceDescriptorForSource:name];

  v16 = [v15 localizedStopByTypeSubtitleForSharingType:firstObject];
  v17 = [DSSharingPermissionsDetailController alloc];
  displayName = [firstObject displayName];
  v19 = [(DSTableWelcomeController *)v17 initWithTitle:displayName detailText:v16 icon:0 adoptTableViewScrollView:1 shouldShowSearchBar:0];

  iconForDetail = [firstObject iconForDetail];
  [(DSTableWelcomeController *)v19 addBorderedIcon:iconForDetail];

  [(DSSharingPermissionsDetailController *)v19 setSharingType:firstObject];
  [(DSSharingPermissionsDetailController *)v19 setRemainingSharingTypes:v11];
  [(DSSharingPermissionsDetailController *)v19 setStartingViewController:controllerCopy];

  [(DSSharingPermissionsDetailController *)v19 setDelegate:delegateCopy];

  return v19;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = DSSharingPermissionsDetailController;
  [(DSTableWelcomeController *)&v7 viewDidLoad];
  [(DSSharingPermissionsDetailController *)self checkDisplayNames];
  [(DSSharingPermissionsDetailController *)self reloadTableViewData];
  v3 = DSUILocStringForKey(@"SKIP");
  v4 = [DSUIUtilities setUpBoldButtonForController:self title:v3 target:self selector:sel_next];
  [(DSTableWelcomeController *)self setBoldButton:v4];

  v5 = DSUILocStringForKey(@"STOP_ALL_SHARING");
  v6 = [DSUIUtilities setUpLinkButtonForController:self title:v5 target:self selector:sel_stopAllSharing];
  [(DSTableWelcomeController *)self setLinkButton:v6];
}

- (void)reloadTableViewData
{
  sharingPerson = [(DSSharingPermissionsDetailController *)self sharingPerson];
  sortedSourceNames = [sharingPerson sortedSourceNames];
  [(DSSharingPermissionsDetailController *)self setSortedSourceNames:sortedSourceNames];

  sharingType = [(DSSharingPermissionsDetailController *)self sharingType];
  sortedPeople = [sharingType sortedPeople];
  [(DSSharingPermissionsDetailController *)self setSortedPeople:sortedPeople];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 layoutIfNeeded];
}

- (void)checkDisplayNames
{
  v23 = *MEMORY[0x277D85DE8];
  sharingType = [(DSSharingPermissionsDetailController *)self sharingType];

  if (sharingType)
  {
    v4 = MEMORY[0x277D054C0];
    sharingType2 = [(DSSharingPermissionsDetailController *)self sharingType];
    source = [sharingType2 source];
    name = [source name];
    v8 = [v4 sourceDescriptorForSource:name];

    sharingType3 = [(DSSharingPermissionsDetailController *)self sharingType];
    sortedPeople = [sharingType3 sortedPeople];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = sortedPeople;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [v8 localizedResourceNamesForPerson:{*(*(&v18 + 1) + 8 * v15), v18}];
          v17 = [v16 length];

          if (!v17)
          {

            goto LABEL_12;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    [(DSSharingPermissionsDetailController *)self setHasDisplayNames:1];
LABEL_12:
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  sharingPerson = [(DSSharingPermissionsDetailController *)self sharingPerson];

  if (!sharingPerson)
  {
    v7 = [(DSSharingPermissionsDetailController *)self personForIndexPath:pathCopy];

    if (v7)
    {
      if ([(DSSharingPermissionsDetailController *)self hasDisplayNames])
      {
        v15 = MEMORY[0x277D054C0];
        sharingType = [(DSSharingPermissionsDetailController *)self sharingType];
        source = [sharingType source];
        name = [source name];
        v19 = [v15 sourceDescriptorForSource:name];

        v8 = [v19 localizedResourceNamesForPerson:v7];
      }

      else
      {
        v8 = &stru_285BA4988;
      }

      tableView = [(OBTableWelcomeController *)self tableView];
      displayName = [v7 displayName];
      iconForTable = [v7 iconForTable];
      v14 = [DSIconTableViewCell iconTableViewCellFromTableView:tableView withText:displayName detail:v8 icon:iconForTable];
      goto LABEL_12;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_14;
  }

  v7 = [(DSSharingPermissionsDetailController *)self sourceNameForIndexPath:pathCopy];

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [MEMORY[0x277D054C0] sourceDescriptorForSource:v7];
  sharingPerson2 = [(DSSharingPermissionsDetailController *)self sharingPerson];
  tableView = [(__CFString *)v8 localizedStopByPerson:sharingPerson2];

  if (tableView)
  {
    displayName = [(OBTableWelcomeController *)self tableView];
    iconForTable = [(__CFString *)v8 localizedName];
    iconForTable2 = [(__CFString *)v8 iconForTable];
    v14 = [DSIconTableViewCell iconTableViewCellFromTableView:displayName withText:iconForTable detail:tableView icon:iconForTable2];

LABEL_12:
    goto LABEL_13;
  }

  v14 = 0;
LABEL_13:

  [v14 setAccessoryType:0];
LABEL_14:

  return v14;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(DSSharingPermissionsDetailController *)self sharingPerson:view];

  if (v5)
  {
    [(DSSharingPermissionsDetailController *)self sortedSourceNames];
  }

  else
  {
    [(DSSharingPermissionsDetailController *)self sortedPeople];
  }
  v6 = ;
  v7 = [v6 count];

  if (v7 < 0)
  {
    v8 = DSLogSharingPermissionsDetail;
    if (os_log_type_enabled(DSLogSharingPermissionsDetail, OS_LOG_TYPE_FAULT))
    {
      [DSSharingPermissionsDetailController tableView:v8 numberOfRowsInSection:?];
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)sourceNameForIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row] < 0 || (v5 = objc_msgSend(pathCopy, "row"), -[DSSharingPermissionsDetailController sortedSourceNames](self, "sortedSourceNames"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 >= v7))
  {
    v11 = DSLogSharingPermissionsDetail;
    if (os_log_type_enabled(DSLogSharingPermissionsDetail, OS_LOG_TYPE_FAULT))
    {
      [(DSSharingPermissionsDetailController *)pathCopy sourceNameForIndexPath:v11];
    }

    v10 = 0;
  }

  else
  {
    v8 = [pathCopy row];
    sortedSourceNames = [(DSSharingPermissionsDetailController *)self sortedSourceNames];
    v10 = [sortedSourceNames objectAtIndexedSubscript:v8];
  }

  return v10;
}

- (id)personForIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row] < 0 || (v5 = objc_msgSend(pathCopy, "row"), -[DSSharingPermissionsDetailController sortedPeople](self, "sortedPeople"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 >= v7))
  {
    v11 = DSLogSharingPermissionsDetail;
    if (os_log_type_enabled(DSLogSharingPermissionsDetail, OS_LOG_TYPE_FAULT))
    {
      [(DSSharingPermissionsDetailController *)pathCopy personForIndexPath:v11];
    }

    v10 = 0;
  }

  else
  {
    v8 = [pathCopy row];
    sortedPeople = [(DSSharingPermissionsDetailController *)self sortedPeople];
    v10 = [sortedPeople objectAtIndexedSubscript:v8];
  }

  return v10;
}

- (void)stopAllSharing
{
  v41[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  sortedSourceNames = [(DSSharingPermissionsDetailController *)self sortedSourceNames];
  v31 = [sortedSourceNames copy];

  sharingPerson = [(DSSharingPermissionsDetailController *)self sharingPerson];

  if (sharingPerson)
  {
    sharingPerson2 = [(DSSharingPermissionsDetailController *)self sharingPerson];
    displayName = [sharingPerson2 displayName];

    sharingPerson3 = [(DSSharingPermissionsDetailController *)self sharingPerson];
    termsOfAddress = [sharingPerson3 termsOfAddress];

    localizedStopAllAlertLabel = DSUILocStringForKey(@"STOP_ALL_SHARING_BY_PEOPLE_ALERT_LABEL");
    v10 = objc_alloc(MEMORY[0x277CCA898]);
    v11 = DSUILocAttributedStringForKey(@"STOP_ALL_SHARING_BY_PEOPLE_ALERT_DETAIL");
    v12 = *MEMORY[0x277CCA290];
    v40 = *MEMORY[0x277CCA290];
    v39 = termsOfAddress;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    v41[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    allPeople = [v10 initWithFormat:v11 options:0 locale:0 context:v14, displayName, displayName, displayName];

    string = [allPeople string];
    if ([v31 containsObject:*MEMORY[0x277D05450]])
    {
      v17 = objc_alloc(MEMORY[0x277CCA898]);
      v18 = DSUILocAttributedStringForKey(@"FIND_MY_NOTIFICATION_WARNING_SPECIFIC");
      v36 = termsOfAddress;
      v37 = v12;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      v38 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v21 = [v17 initWithFormat:v18 options:0 locale:0 context:v20, displayName];

      v35[0] = string;
      string2 = [v21 string];
      v35[1] = string2;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
      v24 = [v23 componentsJoinedByString:@" "];

      string = v24;
    }
  }

  else
  {
    v25 = MEMORY[0x277D054C0];
    sharingType = [(DSSharingPermissionsDetailController *)self sharingType];
    source = [sharingType source];
    name = [source name];
    displayName = [v25 sourceDescriptorForSource:name];

    localizedStopAllAlertLabel = [displayName localizedStopAllAlertLabel];
    if (![displayName supportsResourceTypes])
    {
      string = [displayName localizedStopAllAlertDetail];
      goto LABEL_7;
    }

    termsOfAddress = [(DSSharingPermissionsDetailController *)self sharingType];
    allPeople = [termsOfAddress allPeople];
    string = [displayName localizedStopAllAlertDetailForPeople:allPeople];
  }

LABEL_7:
  sortedPeople = [(DSSharingPermissionsDetailController *)self sortedPeople];
  v30 = [sortedPeople copy];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __54__DSSharingPermissionsDetailController_stopAllSharing__block_invoke;
  v32[3] = &unk_278F75230;
  objc_copyWeak(&v33, &location);
  [(DSSharingPermissionsDetailController *)self stopSharingSources:v31 people:v30 alertLabel:localizedStopAllAlertLabel alertDetail:string completion:v32];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

void __54__DSSharingPermissionsDetailController_stopAllSharing__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadTableViewData];
  [WeakRetained next];
}

- (id)alertTextForSources:(id)sources
{
  sourcesCopy = sources;
  v5 = *MEMORY[0x277D05458];
  v6 = [sourcesCopy containsObject:*MEMORY[0x277D05458]];
  v7 = *MEMORY[0x277D05450];
  if (v6 && [sourcesCopy containsObject:*MEMORY[0x277D05450]])
  {
    v8 = DSUILocStringForKey(@"HEALTH_AND_FIND_MY_COMBO_STOP_BY_PERSON_ALERT");
    v9 = MEMORY[0x277CCACA8];
    sharingPerson = [(DSSharingPermissionsDetailController *)self sharingPerson];
    displayName = [sharingPerson displayName];
    sharingPerson2 = [(DSSharingPermissionsDetailController *)self sharingPerson];
    displayName2 = [sharingPerson2 displayName];
    v14 = [v9 stringWithFormat:v8, displayName, displayName2];

    goto LABEL_11;
  }

  if ([sourcesCopy containsObject:v7])
  {
    v15 = MEMORY[0x277D054C0];
    v16 = v7;
  }

  else
  {
    v17 = [sourcesCopy containsObject:v5];
    v18 = MEMORY[0x277D054C0];
    if (!v17)
    {
      firstObject = [sourcesCopy firstObject];
      v8 = [v18 sourceDescriptorForSource:firstObject];

      goto LABEL_10;
    }

    v15 = MEMORY[0x277D054C0];
    v16 = v5;
  }

  v8 = [v15 sourceDescriptorForSource:v16];
LABEL_10:
  sharingPerson = [(DSSharingPermissionsDetailController *)self sharingPerson];
  v14 = [v8 localizedAlertTextForPerson:sharingPerson];
LABEL_11:

  return v14;
}

- (void)stopSelectedSharing
{
  v37 = *MEMORY[0x277D85DE8];
  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  sharingPerson = [(DSSharingPermissionsDetailController *)self sharingPerson];

  if (sharingPerson)
  {
    v33 = 0uLL;
    v34 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v8 = indexPathsForSelectedRows;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [(DSSharingPermissionsDetailController *)self sourceNameForIndexPath:*(*(&v31 + 1) + 8 * i)];
          if (v12)
          {
            [array addObject:v12];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v9);
    }

    v13 = [(DSSharingPermissionsDetailController *)self alertTextForSources:array];
    localizedAlertButtonLabel = DSUILocStringForKey(@"STOP_SHARING_MULTIPLE_BY_PERSON_ALERT_LABEL");
  }

  else
  {
    v29 = 0uLL;
    v30 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v15 = indexPathsForSelectedRows;
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v16)
    {
      v17 = *v28;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [(DSSharingPermissionsDetailController *)self personForIndexPath:*(*(&v27 + 1) + 8 * j)];
          if (v19)
          {
            [array2 addObject:v19];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v16);
    }

    sharingType = [(DSSharingPermissionsDetailController *)self sharingType];
    source = [sharingType source];
    name = [source name];

    v23 = [MEMORY[0x277D054C0] sourceDescriptorForSource:name];
    v13 = [v23 localizedAlertDetailForSelectedPeople:array2];
    localizedAlertButtonLabel = [v23 localizedAlertButtonLabel];
  }

  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __59__DSSharingPermissionsDetailController_stopSelectedSharing__block_invoke;
  v24[3] = &unk_278F75230;
  objc_copyWeak(&v25, &location);
  [(DSSharingPermissionsDetailController *)self stopSharingSources:array people:array2 alertLabel:localizedAlertButtonLabel alertDetail:v13 completion:v24];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __59__DSSharingPermissionsDetailController_stopSelectedSharing__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [WeakRetained tableView];
  v3 = [v2 indexPathsForSelectedRows];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [WeakRetained tableView];
        [v9 deselectRowAtIndexPath:v8 animated:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [WeakRetained _updateButton];
  [WeakRetained reloadTableViewData];
  [WeakRetained next];
}

- (void)sharingStoppedForPerson:(id)person sourceNames:(id)names error:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  personCopy = person;
  namesCopy = names;
  errorCopy = error;
  delegate = [(DSSharingPermissionsDetailController *)self delegate];
  v12 = delegate;
  if (errorCopy)
  {
    v13 = DSLogSharingPermissionsDetail;
    if (os_log_type_enabled(DSLogSharingPermissionsDetail, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v25 = personCopy;
      v26 = 2114;
      v27 = namesCopy;
      v28 = 2114;
      v29 = errorCopy;
      _os_log_error_impl(&dword_248C7E000, v13, OS_LOG_TYPE_ERROR, "Failed to stop sharing %{public}@ from %{public}@ because %{public}@", buf, 0x20u);
    }

    [v12 stopSharingFailedWithError:errorCopy];
  }

  else
  {
    [delegate sharingStoppedForPerson:personCopy sourceNames:namesCopy];
    sortedSourceNames = [(DSSharingPermissionsDetailController *)self sortedSourceNames];
    v15 = [sortedSourceNames count];
    v16 = [namesCopy count];

    if (v15 == v16)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = DSUILocStringForKey(@"NO_SHARING_INFORMATION_PERSON");
      displayName = [personCopy displayName];
      v20 = [v17 localizedStringWithFormat:v18, displayName];

      v21 = [MEMORY[0x277D755B8] systemImageNamed:@"person.fill"];
      [(DSTableWelcomeController *)self showNoSharingViewWithText:v20 image:v21];

      [(DSTableWelcomeController *)self setIsModelEmpty:1];
      buttonTray = [(DSSharingPermissionsDetailController *)self buttonTray];
      linkButton = [(DSTableWelcomeController *)self linkButton];
      [buttonTray removeButton:linkButton];

      [(DSSharingPermissionsDetailController *)self _updateButton];
    }
  }
}

- (void)sharingStoppedForType:(id)type people:(id)people error:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  peopleCopy = people;
  errorCopy = error;
  delegate = [(DSSharingPermissionsDetailController *)self delegate];
  v12 = delegate;
  if (errorCopy)
  {
    v13 = DSLogSharingPermissionsDetail;
    if (os_log_type_enabled(DSLogSharingPermissionsDetail, OS_LOG_TYPE_ERROR))
    {
      v24 = v13;
      displayName = [typeCopy displayName];
      *buf = 138543874;
      v27 = displayName;
      v28 = 2114;
      v29 = peopleCopy;
      v30 = 2114;
      v31 = errorCopy;
      _os_log_error_impl(&dword_248C7E000, v24, OS_LOG_TYPE_ERROR, "Failed to stop sharing %{public}@ with %{public}@ because %{public}@", buf, 0x20u);
    }

    [v12 stopSharingFailedWithError:errorCopy];
  }

  else
  {
    [delegate sharingStoppedForType:typeCopy people:peopleCopy];
    sortedPeople = [(DSSharingPermissionsDetailController *)self sortedPeople];
    v15 = [sortedPeople count];
    v16 = [peopleCopy count];

    if (v15 == v16)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = DSUILocStringForKey(@"NO_SHARING_INFORMATION_TYPE");
      displayName2 = [typeCopy displayName];
      v20 = [v17 localizedStringWithFormat:v18, displayName2];

      v21 = [MEMORY[0x277D755B8] systemImageNamed:@"person.3.fill"];
      [(DSTableWelcomeController *)self showNoSharingViewWithText:v20 image:v21];

      [(DSTableWelcomeController *)self setIsModelEmpty:1];
      buttonTray = [(DSSharingPermissionsDetailController *)self buttonTray];
      linkButton = [(DSTableWelcomeController *)self linkButton];
      [buttonTray removeButton:linkButton];

      [(DSSharingPermissionsDetailController *)self _updateButton];
    }
  }
}

- (void)stopSharingSources:(id)sources people:(id)people alertLabel:(id)label alertDetail:(id)detail completion:(id)completion
{
  sourcesCopy = sources;
  peopleCopy = people;
  completionCopy = completion;
  detailCopy = detail;
  labelCopy = label;
  sharingPerson = [(DSSharingPermissionsDetailController *)self sharingPerson];
  sharingType = [(DSSharingPermissionsDetailController *)self sharingType];
  delegate = [(DSSharingPermissionsDetailController *)self delegate];
  v18 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:detailCopy preferredStyle:0];

  v19 = MEMORY[0x277D750F8];
  v20 = DSUILocStringForKey(@"CANCEL");
  v29 = [v19 actionWithTitle:v20 style:1 handler:&__block_literal_global_1];

  v21 = MEMORY[0x277D750F8];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_2;
  v32[3] = &unk_278F75280;
  v32[4] = self;
  v33 = sharingPerson;
  v37 = peopleCopy;
  v38 = completionCopy;
  v34 = sourcesCopy;
  v35 = delegate;
  v36 = sharingType;
  v22 = peopleCopy;
  v23 = sharingType;
  v24 = delegate;
  v25 = completionCopy;
  v26 = sourcesCopy;
  v27 = sharingPerson;
  v28 = [v21 actionWithTitle:labelCopy style:2 handler:v32];

  [v18 addAction:v28];
  [v18 addAction:v29];
  [(DSSharingPermissionsDetailController *)self presentViewController:v18 animated:1 completion:0];
}

void __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_2(id *a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] buttonTray];
  [v2 showButtonsBusy];

  if (a1[5])
  {
    v3 = [a1[6] count];
    v4 = [a1[5] sortedSourceNames];
    v5 = [v4 count];

    v6 = a1[5];
    if (v3 == v5)
    {
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_3;
      v51[3] = &unk_278F75258;
      v7 = a1[5];
      v51[4] = a1[4];
      v52 = v7;
      v53 = a1[6];
      v54 = a1[10];
      [v6 stopAllSharingOnQueue:MEMORY[0x277D85CD0] completion:v51];

      v8 = v52;
    }

    else
    {
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_4;
      v47[3] = &unk_278F75258;
      v25 = a1[5];
      v26 = a1[6];
      v47[4] = a1[4];
      v48 = v25;
      v49 = a1[6];
      v50 = a1[10];
      [v6 stopSharingSourceNames:v26 queue:MEMORY[0x277D85CD0] completion:v47];

      v8 = v48;
    }
  }

  else
  {
    v9 = [a1[7] permissions];
    v10 = [v9 allPublicSharingTypes];
    v11 = v10;
    v12 = MEMORY[0x277CBEBF8];
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v44;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v43 + 1) + 8 * v18) source];
          v20 = [v19 name];
          v21 = [a1[8] source];
          v22 = [v21 name];
          v23 = [v20 isEqualToString:v22];

          if (v23)
          {
            v24 = 1;
            goto LABEL_18;
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v24 = 0;
LABEL_18:

    v27 = [a1[9] count];
    v28 = [a1[8] sortedPeople];
    v29 = [v28 count];

    v30 = a1[8];
    if ((v24 & 1) != 0 || v27 != v29)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_6;
      v35[3] = &unk_278F75258;
      v35[4] = a1[4];
      v31 = &v36;
      v34 = a1[9];
      v36 = a1[8];
      v32 = &v37;
      v37 = a1[9];
      v33 = &v38;
      v38 = a1[10];
      [v30 stopSharingPeople:v34 queue:MEMORY[0x277D85CD0] completion:v35];
    }

    else
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_5;
      v39[3] = &unk_278F75258;
      v39[4] = a1[4];
      v31 = &v40;
      v40 = a1[8];
      v32 = &v41;
      v41 = a1[9];
      v33 = &v42;
      v42 = a1[10];
      [v30 stopAllSharingOnQueue:MEMORY[0x277D85CD0] completion:v39];
    }
  }
}

uint64_t __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) sharingStoppedForPerson:*(a1 + 40) sourceNames:*(a1 + 48) error:a2];
  v3 = [*(a1 + 32) buttonTray];
  [v3 showButtonsAvailable];

  v4 = *(*(a1 + 56) + 16);

  return v4();
}

uint64_t __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) sharingStoppedForPerson:*(a1 + 40) sourceNames:*(a1 + 48) error:a2];
  v3 = [*(a1 + 32) buttonTray];
  [v3 showButtonsAvailable];

  v4 = *(*(a1 + 56) + 16);

  return v4();
}

uint64_t __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) sharingStoppedForType:*(a1 + 40) people:*(a1 + 48) error:a2];
  v3 = [*(a1 + 32) buttonTray];
  [v3 showButtonsAvailable];

  v4 = *(*(a1 + 56) + 16);

  return v4();
}

uint64_t __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_6(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) sharingStoppedForType:*(a1 + 40) people:*(a1 + 48) error:a2];
  v3 = [*(a1 + 32) buttonTray];
  [v3 showButtonsAvailable];

  v4 = *(*(a1 + 56) + 16);

  return v4();
}

- (void)next
{
  delegate = [(DSSharingPermissionsDetailController *)self delegate];
  remainingPeople = [(DSSharingPermissionsDetailController *)self remainingPeople];
  v4 = [remainingPeople count];

  if (v4)
  {
    remainingPeople2 = [(DSSharingPermissionsDetailController *)self remainingPeople];
    startingViewController = [(DSSharingPermissionsDetailController *)self startingViewController];
    v7 = [DSSharingPermissionsDetailController detailControllerWithPeople:remainingPeople2 startingViewController:startingViewController delegate:delegate];
  }

  else
  {
    remainingSharingTypes = [(DSSharingPermissionsDetailController *)self remainingSharingTypes];
    v9 = [remainingSharingTypes count];

    if (!v9)
    {
      goto LABEL_7;
    }

    remainingPeople2 = [(DSSharingPermissionsDetailController *)self remainingSharingTypes];
    startingViewController = [(DSSharingPermissionsDetailController *)self startingViewController];
    v7 = [DSSharingPermissionsDetailController detailControllerWithSharingTypes:remainingPeople2 startingViewController:startingViewController delegate:delegate];
  }

  v10 = v7;

  if (v10)
  {
    navigationController = [(DSSharingPermissionsDetailController *)self navigationController];
    [navigationController pushViewController:v10 animated:1];

    goto LABEL_8;
  }

LABEL_7:
  [delegate reviewSelectedSharingFlowCompleted];
LABEL_8:
}

- (void)_updateButton
{
  boldButton = [(DSTableWelcomeController *)self boldButton];
  [boldButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  v6 = [indexPathsForSelectedRows count];

  if (v6)
  {
    boldButton2 = [(DSTableWelcomeController *)self boldButton];
    v8 = DSUILocStringForKey(@"STOP_SHARING");
    [boldButton2 setTitle:v8 forState:0];

    boldButton3 = [(DSTableWelcomeController *)self boldButton];
    [boldButton3 addTarget:self action:sel_stopSelectedSharing forControlEvents:64];
  }

  else
  {
    if ([(DSTableWelcomeController *)self isModelEmpty])
    {
      v9 = @"CONTINUE";
    }

    else
    {
      v9 = @"SKIP";
    }

    boldButton3 = DSUILocStringForKey(v9);
    boldButton4 = [(DSTableWelcomeController *)self boldButton];
    [boldButton4 setTitle:boldButton3 forState:0];

    boldButton5 = [(DSTableWelcomeController *)self boldButton];
    [boldButton5 addTarget:self action:sel_next forControlEvents:64];
  }
}

- (DSSharingPermissionsDetailDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sourceNameForIndexPath:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_248C7E000, a2, OS_LOG_TYPE_FAULT, "Failed to find a source for index path %{public}@", &v2, 0xCu);
}

- (void)personForIndexPath:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_248C7E000, a2, OS_LOG_TYPE_FAULT, "Failed to find a person for index path %{public}@", &v2, 0xCu);
}

@end