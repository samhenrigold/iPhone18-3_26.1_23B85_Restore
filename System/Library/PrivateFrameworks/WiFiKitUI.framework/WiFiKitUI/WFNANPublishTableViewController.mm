@interface WFNANPublishTableViewController
- (WFNANPublishTableViewController)initWithContext:(id)context;
- (id)createTextFieldCellWithTableView:(id)view indexPath:(id)path text:(id)text placeholder:(id)placeholder keyboardType:(int64_t)type textChangedHandler:(id)handler;
- (id)serviceSpecificInfoFromString;
- (void)_configureDataSource;
- (void)_handleAddPublisher;
- (void)_handleDataSessionsChangedNotification:(id)notification;
- (void)_handlePublishersChangedNotification:(id)notification;
- (void)clearInputFields;
- (void)dismissKeyboard;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation WFNANPublishTableViewController

- (WFNANPublishTableViewController)initWithContext:(id)context
{
  contextCopy = context;
  v6 = +[WFAppearanceProxy defaultAppearanceProxy];
  v19.receiver = self;
  v19.super_class = WFNANPublishTableViewController;
  v7 = -[WFNANPublishTableViewController initWithStyle:](&v19, sel_initWithStyle_, [v6 tableViewStyle]);

  if (v7)
  {
    v8 = MEMORY[0x277CBEB70];
    _defaultSections = [(WFNANPublishTableViewController *)v7 _defaultSections];
    v10 = [v8 orderedSetWithArray:_defaultSections];
    sections = v7->_sections;
    v7->_sections = v10;

    objc_storeStrong(&v7->_context, context);
    v12 = [WFNetworkSettingsCellFactory alloc];
    tableView = [(WFNANPublishTableViewController *)v7 tableView];
    v14 = [(WFNetworkSettingsCellFactory *)v12 initWithTableView:tableView];
    cellFactory = v7->_cellFactory;
    v7->_cellFactory = v14;

    [(WFNANPublishTableViewController *)v7 clearInputFields];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__handlePublishersChangedNotification_ name:@"WFNANPublishersChangedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__handleDataSessionsChangedNotification_ name:@"WFNANDataSessionsForPublishChangedNotification" object:0];

    [(WFInsetTableViewController *)v7 setReloadDataOnUpdateSectionContentInset:0];
  }

  return v7;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = WFNANPublishTableViewController;
  [(WFNANPublishTableViewController *)&v9 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"kWFLocNANPublish" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [(WFNANPublishTableViewController *)self setTitle:v4];

  v5 = MEMORY[0x277D757B0];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 nibWithNibName:@"WFTextFieldCell" bundle:v6];

  tableView = [(WFNANPublishTableViewController *)self tableView];
  [tableView registerNib:v7 forCellReuseIdentifier:@"kWFTextFieldCellIdentifier"];

  [(WFNANPublishTableViewController *)self _configureDataSource];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = WFNANPublishTableViewController;
  [(WFNANPublishTableViewController *)&v3 viewDidDisappear:disappear];
}

- (void)dismissKeyboard
{
  view = [(WFNANPublishTableViewController *)self view];
  [view endEditing:1];
}

- (id)createTextFieldCellWithTableView:(id)view indexPath:(id)path text:(id)text placeholder:(id)placeholder keyboardType:(int64_t)type textChangedHandler:(id)handler
{
  handlerCopy = handler;
  placeholderCopy = placeholder;
  textCopy = text;
  v16 = [view dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:path];
  [v16 setHideLabel:1];
  [v16 setEditable:1];
  textField = [v16 textField];
  [textField setText:textCopy];

  textField2 = [v16 textField];
  [textField2 setPlaceholder:placeholderCopy];

  textField3 = [v16 textField];
  [textField3 setKeyboardType:type];

  [v16 setTextChangeHandler:handlerCopy];

  return v16;
}

- (void)_configureDataSource
{
  v50[1] = *MEMORY[0x277D85DE8];
  v3 = [WFNANPublishTableViewDataSource alloc];
  tableView = [(WFNANPublishTableViewController *)self tableView];
  context = [(WFNANPublishTableViewController *)self context];
  sections = [(WFNANPublishTableViewController *)self sections];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke;
  v40[3] = &unk_279EC5440;
  v40[4] = self;
  v7 = [(WFNANPublishTableViewDataSource *)v3 initWithTableView:tableView context:context sections:sections cellProvider:v40];
  [(WFNANPublishTableViewController *)self setDataSource:v7];

  v8 = objc_alloc_init(MEMORY[0x277CFB890]);
  array = [MEMORY[0x277CBEB18] array];
  sections2 = [(WFNANPublishTableViewController *)self sections];
  v11 = [sections2 count];

  if (v11)
  {
    v12 = 0;
    do
    {
      sections3 = [(WFNANPublishTableViewController *)self sections];
      v14 = [sections3 objectAtIndexedSubscript:v12];
      unsignedIntegerValue = [v14 unsignedIntegerValue];

      v16 = [(WFNANPublishTableViewController *)self _identifierForSection:unsignedIntegerValue];
      [array addObject:v16];

      ++v12;
      sections4 = [(WFNANPublishTableViewController *)self sections];
      v18 = [sections4 count];
    }

    while (v18 > v12);
  }

  [v8 appendSectionsWithIdentifiers:array];
  v50[0] = @"WFNANPublishServiceNameIdentifier";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
  v20 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v19 intoSectionWithIdentifier:v20];

  v49 = @"WFNANPublishServiceTypeIdentifier";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  v22 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v21 intoSectionWithIdentifier:v22];

  v48 = @"WFNANPublishInstanceNameIdentifier";
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
  v24 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v23 intoSectionWithIdentifier:v24];

  v47 = @"WFNANPublishServiceSpecificInfoIdentifier";
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  v26 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v25 intoSectionWithIdentifier:v26];

  v46 = @"WFNANPublishServiceSpecificInfoTypeIdentifier";
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v28 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v27 intoSectionWithIdentifier:v28];

  v45 = @"WFNANPublishPortNumberIdentifier";
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  v30 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v29 intoSectionWithIdentifier:v30];

  v44 = @"WFNANPublishProtocolTypeIdentifier";
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  v32 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v31 intoSectionWithIdentifier:v32];

  v43 = @"WFNANPublishPassphraseIdentifier";
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  v34 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v33 intoSectionWithIdentifier:v34];

  v42 = @"WFNANPublishAddIdentifier";
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  v36 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v35 intoSectionWithIdentifier:v36];

  if ([(WFNANTableViewContext *)self->_context getPublishersCount]<= 0)
  {
    v41 = @"WFNANPublishNoPublishersIdentifier";
    [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  }

  else
  {
    [(WFNANTableViewContext *)self->_context getPublishers];
  }
  v37 = ;
  v38 = [(WFNANPublishTableViewController *)self _identifierForSection:1];
  [v8 appendItemsWithIdentifiers:v37 intoSectionWithIdentifier:v38];

  dataSource = [(WFNANPublishTableViewController *)self dataSource];
  [dataSource applySnapshot:v8 animatingDifferences:1];
}

id __55__WFNANPublishTableViewController__configureDataSource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v84 = a2;
  v7 = a3;
  v83 = a4;
  v8 = [*(a1 + 32) sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];
  v10 = [v9 unsignedIntegerValue];

  objc_initWeak(location, *(a1 + 32));
  if (v10 == 1)
  {
    v12 = [v84 dequeueReusableCellWithIdentifier:@"WFNANTableViewTextCellIdentifier"];
    if (!v12)
    {
      v12 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFNANTableViewTextCellIdentifier"];
    }

    [v12 setSelectionStyle:0];
    if ([*(*(a1 + 32) + 1064) getPublishersCount])
    {
      v82 = a1;
      v28 = [*(*(a1 + 32) + 1064) getPublisherAtIndex:{objc_msgSend(v7, "row")}];
      v29 = MEMORY[0x277CCACA8];
      v30 = [v28 configuration];
      v31 = [v30 serviceName];
      v32 = [v28 configuration];
      v33 = [v32 serviceSpecificInfo];
      v34 = [v33 instanceName];
      v35 = [v29 stringWithFormat:@"%@ [%@]", v31, v34];
      v36 = [v12 textLabel];
      [v36 setText:v35];

      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld sessions", objc_msgSend(*(*(v82 + 32) + 1064), "getDataSessionsCountForPublisher:", v28)];
      v38 = [v12 detailTextLabel];
      [v38 setText:v37];

      [v12 setAccessoryType:1];
      [v12 setSelectionStyle:1];
    }

    else
    {
      v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v47 = [v46 localizedStringForKey:@"kWFLocNANNoPublishers" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v48 = [v12 textLabel];
      [v48 setText:v47];
    }
  }

  else
  {
    if (v10)
    {
      v12 = 0;
      goto LABEL_19;
    }

    v11 = v7;
    if (![v7 row])
    {
      v39 = *(a1 + 32);
      v40 = v39[136];
      v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v42 = [v41 localizedStringForKey:@"kWFLocNANServiceName" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v43 = v96;
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_2;
      v96[3] = &unk_279EC5418;
      objc_copyWeak(&v97, location);
      v44 = v39;
      v7 = v11;
      v45 = [v44 createTextFieldCellWithTableView:v84 indexPath:v11 text:v40 placeholder:v42 keyboardType:0 textChangedHandler:v96];
LABEL_18:
      v12 = v45;

      objc_destroyWeak(v43 + 4);
      goto LABEL_19;
    }

    if ([v7 row] == 1)
    {
      v12 = [*(*(a1 + 32) + 1072) segmentedCellAtIndexPath:v7];
      v13 = [v12 segmentedControl];
      [v13 removeAllSegments];

      v14 = [v12 segmentedControl];
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"kWFLocNANServiceTypeAdaptive" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      [v14 insertSegmentWithTitle:v16 atIndex:0 animated:1];

      v17 = [v12 segmentedControl];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"kWFLocNANServiceTypeRealtime" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      [v17 insertSegmentWithTitle:v19 atIndex:1 animated:1];

      v20 = [v12 segmentedControl];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"kWFLocNANServiceTypeLowLatency" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      [v20 insertSegmentWithTitle:v22 atIndex:2 animated:1];

      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_3;
      v95[3] = &unk_279EC6248;
      v95[4] = *(a1 + 32);
      [v12 setHandler:v95];
      v23 = [v12 segmentedControl];
      [v23 setSelectedSegmentIndex:0];

      v24 = [MEMORY[0x277D75348] systemBackgroundColor];
      v25 = [v12 segmentedControl];
      [v25 setBackgroundColor:v24];

      v26 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      v27 = [v12 contentView];
      [v27 setBackgroundColor:v26];
LABEL_6:

      goto LABEL_19;
    }

    if ([v7 row] == 2)
    {
      v49 = *(a1 + 32);
      v50 = v49[138];
      v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v42 = [v41 localizedStringForKey:@"kWFLocNANInstanceName" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v43 = v93;
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_4;
      v93[3] = &unk_279EC5418;
      objc_copyWeak(&v94, location);
      v51 = v49;
      v7 = v11;
      v45 = [v51 createTextFieldCellWithTableView:v84 indexPath:v11 text:v50 placeholder:v42 keyboardType:0 textChangedHandler:v93];
      goto LABEL_18;
    }

    if ([v7 row] == 3)
    {
      v52 = *(a1 + 32);
      v53 = v52[139];
      v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v42 = [v41 localizedStringForKey:@"kWFLocNANServiceSpecificInfo" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v43 = v91;
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_5;
      v91[3] = &unk_279EC5418;
      objc_copyWeak(&v92, location);
      v54 = v52;
      v7 = v11;
      v45 = [v54 createTextFieldCellWithTableView:v84 indexPath:v11 text:v53 placeholder:v42 keyboardType:0 textChangedHandler:v91];
      goto LABEL_18;
    }

    if ([v7 row] == 4)
    {
      v12 = [*(*(a1 + 32) + 1072) segmentedCellAtIndexPath:v7];
      v56 = [v12 segmentedControl];
      [v56 removeAllSegments];

      v57 = [v12 segmentedControl];
      [v57 insertSegmentWithTitle:@"Hex" atIndex:0 animated:1];

      v58 = [v12 segmentedControl];
      [v58 insertSegmentWithTitle:@"ASCII" atIndex:1 animated:1];

      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_6;
      v90[3] = &unk_279EC6248;
      v90[4] = *(a1 + 32);
      [v12 setHandler:v90];
      v59 = [v12 segmentedControl];
      [v59 setSelectedSegmentIndex:0];

      v60 = [MEMORY[0x277D75348] systemBackgroundColor];
      v61 = [v12 segmentedControl];
      [v61 setBackgroundColor:v60];

      v26 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      v27 = [v12 contentView];
      [v27 setBackgroundColor:v26];
      goto LABEL_6;
    }

    if ([v7 row] == 5)
    {
      v62 = *(a1 + 32);
      v63 = v62[140];
      v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v42 = [v41 localizedStringForKey:@"kWFLocNANPortNumber" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v43 = v88;
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_7;
      v88[3] = &unk_279EC5418;
      objc_copyWeak(&v89, location);
      v64 = v62;
      v7 = v11;
      v45 = [v64 createTextFieldCellWithTableView:v84 indexPath:v11 text:v63 placeholder:v42 keyboardType:4 textChangedHandler:v88];
      goto LABEL_18;
    }

    if ([v7 row] == 6)
    {
      v12 = [*(*(a1 + 32) + 1072) segmentedCellAtIndexPath:v7];
      v65 = [v12 segmentedControl];
      [v65 removeAllSegments];

      v66 = [v12 segmentedControl];
      v67 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v68 = [v67 localizedStringForKey:@"kWFLocNANProtocolTypeTCP" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      [v66 insertSegmentWithTitle:v68 atIndex:0 animated:1];

      v69 = [v12 segmentedControl];
      v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v71 = [v70 localizedStringForKey:@"kWFLocNANProtocolTypeUDP" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      [v69 insertSegmentWithTitle:v71 atIndex:1 animated:1];

      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_8;
      v87[3] = &unk_279EC6248;
      v87[4] = *(a1 + 32);
      [v12 setHandler:v87];
      v72 = [v12 segmentedControl];
      [v72 setSelectedSegmentIndex:0];

      v73 = [MEMORY[0x277D75348] systemBackgroundColor];
      v74 = [v12 segmentedControl];
      [v74 setBackgroundColor:v73];

      v26 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      v27 = [v12 contentView];
      [v27 setBackgroundColor:v26];
      goto LABEL_6;
    }

    if ([v7 row] == 7)
    {
      v75 = *(a1 + 32);
      v76 = v75[142];
      v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v42 = [v41 localizedStringForKey:@"kWFLocNANPassphrase" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v43 = v85;
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_9;
      v85[3] = &unk_279EC5418;
      objc_copyWeak(&v86, location);
      v77 = v75;
      v7 = v11;
      v45 = [v77 createTextFieldCellWithTableView:v84 indexPath:v11 text:v76 placeholder:v42 keyboardType:0 textChangedHandler:v85];
      goto LABEL_18;
    }

    if ([v7 row] == 8)
    {
      v12 = [v84 dequeueReusableCellWithIdentifier:@"WFNANTableViewTextCellIdentifier"];
      if (!v12)
      {
        v12 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFNANTableViewTextCellIdentifier"];
      }

      [v12 setSelectionStyle:0];
      v78 = [MEMORY[0x277D75220] buttonWithType:1];
      [v78 setTitle:@"Add" forState:0];
      v79 = [v12 textLabel];
      v80 = [v79 font];
      v81 = [v78 titleLabel];
      [v81 setFont:v80];

      [v78 sizeToFit];
      [v78 addTarget:*(a1 + 32) action:sel__handleAddPublisher forControlEvents:64];
      [v12 setAccessoryView:v78];
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_19:
  objc_destroyWeak(location);

  return v12;
}

void __55__WFNANPublishTableViewController__configureDataSource__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setServiceName:v3];
}

void __55__WFNANPublishTableViewController__configureDataSource__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setInstanceName:v3];
}

void __55__WFNANPublishTableViewController__configureDataSource__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setServiceSpecificInfo:v3];
}

void __55__WFNANPublishTableViewController__configureDataSource__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPortNumber:v3];
}

void __55__WFNANPublishTableViewController__configureDataSource__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPassphrase:v3];
}

- (void)_handlePublishersChangedNotification:(id)notification
{
  v24[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dataSource = [(WFNANPublishTableViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  userInfo = [notificationCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"WFNANTableViewContextChangedPublisherKey"];

  userInfo2 = [notificationCopy userInfo];

  v10 = [userInfo2 objectForKeyedSubscript:@"WFNANTableViewContextChangedOperationTypeKey"];

  if (v10)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    unsignedIntegerValue = [v10 unsignedIntegerValue];
    if (unsignedIntegerValue == 1)
    {
      v21 = v8;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
      [snapshot deleteItemsWithIdentifiers:v17];

      if (![(WFNANTableViewContext *)self->_context getPublishersCount])
      {
        v20 = @"WFNANPublishNoPublishersIdentifier";
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
        v18 = [(WFNANPublishTableViewController *)self _identifierForSection:1];
        [snapshot appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:v18];

LABEL_12:
      }
    }

    else if (!unsignedIntegerValue)
    {
      v24[0] = v8;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      v14 = [(WFNANPublishTableViewController *)self _identifierForSection:1];
      [snapshot appendItemsWithIdentifiers:v13 intoSectionWithIdentifier:v14];

      if ([(WFNANTableViewContext *)self->_context getPublishersCount]== 1)
      {
        v23 = @"WFNANPublishNoPublishersIdentifier";
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
        [snapshot deleteItemsWithIdentifiers:v15];
      }

      [(WFNANPublishTableViewController *)self clearInputFields];
      v22[0] = @"WFNANPublishServiceNameIdentifier";
      v22[1] = @"WFNANPublishServiceTypeIdentifier";
      v22[2] = @"WFNANPublishInstanceNameIdentifier";
      v22[3] = @"WFNANPublishServiceSpecificInfoIdentifier";
      v22[4] = @"WFNANPublishServiceSpecificInfoTypeIdentifier";
      v22[5] = @"WFNANPublishPortNumberIdentifier";
      v22[6] = @"WFNANPublishProtocolTypeIdentifier";
      v22[7] = @"WFNANPublishPassphraseIdentifier";
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:8];
      [snapshot reconfigureItemsWithIdentifiers:v16];
      goto LABEL_12;
    }

    dataSource2 = [(WFNANPublishTableViewController *)self dataSource];
    [dataSource2 applySnapshot:snapshot animatingDifferences:1];
  }
}

- (void)_handleDataSessionsChangedNotification:(id)notification
{
  v11[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dataSource = [(WFNANPublishTableViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  userInfo = [notificationCopy userInfo];

  v8 = [userInfo objectForKeyedSubscript:@"WFNANTableViewContextChangedPublisherKey"];

  if (v8)
  {
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [snapshot reconfigureItemsWithIdentifiers:v9];

    dataSource2 = [(WFNANPublishTableViewController *)self dataSource];
    [dataSource2 applySnapshot:snapshot animatingDifferences:1];
  }
}

- (void)clearInputFields
{
  serviceName = self->_serviceName;
  self->_serviceName = &stru_288308678;

  self->_serviceType = 0;
  instanceName = self->_instanceName;
  self->_instanceName = &stru_288308678;

  serviceSpecificInfo = self->_serviceSpecificInfo;
  self->_serviceSpecificInfo = &stru_288308678;

  self->_isServiceSpecificInfoHex = 1;
  self->_portNumber = &stru_288308678;
  self->_protocolType = 0;
  self->_passphrase = &stru_288308678;
}

- (id)serviceSpecificInfoFromString
{
  if (self->_isServiceSpecificInfoHex)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    serviceSpecificInfo = [(WFNANPublishTableViewController *)self serviceSpecificInfo];
    lowercaseString = [serviceSpecificInfo lowercaseString];
    uTF8String = [lowercaseString UTF8String];

    serviceSpecificInfo2 = [(WFNANPublishTableViewController *)self serviceSpecificInfo];
    v8 = [serviceSpecificInfo2 length];

    if (v8 >= 2)
    {
      v9 = 0;
      v10 = (uTF8String + 1);
      while (1)
      {
        v19 = 0;
        v11 = *(v10 - 1);
        v12 = *v10;
        if ((v11 - 48) <= 9)
        {
          break;
        }

        if ((v11 - 97) <= 5)
        {
          v13 = 16 * v11 - 112;
          goto LABEL_8;
        }

        v13 = 0;
LABEL_10:
        if ((v12 - 48) <= 9)
        {
          v14 = v13 | (v12 - 48);
LABEL_14:
          v19 = v14;
          goto LABEL_15;
        }

        if ((v12 - 97) <= 5)
        {
          v14 = v13 | (v12 - 87);
          goto LABEL_14;
        }

LABEL_15:
        v10 += 2;
        [v3 appendBytes:&v19 length:1];
        ++v9;
        serviceSpecificInfo3 = [(WFNANPublishTableViewController *)self serviceSpecificInfo];
        v16 = [serviceSpecificInfo3 length];

        if (v9 >= v16 >> 1)
        {
          goto LABEL_18;
        }
      }

      v13 = 16 * v11;
LABEL_8:
      v19 = v13;
      goto LABEL_10;
    }
  }

  else
  {
    serviceSpecificInfo4 = [(WFNANPublishTableViewController *)self serviceSpecificInfo];
    v3 = [serviceSpecificInfo4 dataUsingEncoding:4];
  }

LABEL_18:

  return v3;
}

- (void)_handleAddPublisher
{
  v20[1] = *MEMORY[0x277D85DE8];
  passphrase = self->_passphrase;
  if (passphrase && [(NSString *)passphrase length])
  {
    v4 = objc_alloc(MEMORY[0x277D7BAD8]);
    v20[0] = self->_passphrase;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v6 = [v4 initWithPMKList:MEMORY[0x277CBEBF8] passphraseList:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_alloc(MEMORY[0x277D7BAD0]) initWithServiceType:-[WFNANPublishTableViewController serviceType](self securityConfiguration:{"serviceType"), v6}];
  v8 = objc_alloc(MEMORY[0x277D7BAE0]);
  protocolType = [(WFNANPublishTableViewController *)self protocolType];
  portNumber = [(WFNANPublishTableViewController *)self portNumber];
  v11 = [v8 initWithProtocolType:protocolType servicePort:{objc_msgSend(portNumber, "integerValue")}];

  [v7 setServiceSpecificInfo:v11];
  v12 = objc_alloc_init(MEMORY[0x277D7BAE8]);
  instanceName = [(WFNANPublishTableViewController *)self instanceName];
  [v12 setInstanceName:instanceName];

  serviceSpecificInfoFromString = [(WFNANPublishTableViewController *)self serviceSpecificInfoFromString];
  [v12 setBlob:serviceSpecificInfoFromString];

  v15 = objc_alloc(MEMORY[0x277D7BAC8]);
  serviceName = [(WFNANPublishTableViewController *)self serviceName];
  v17 = [v15 initWithServiceName:serviceName];

  [v17 setDatapathConfiguration:v7];
  [v17 setServiceSpecificInfo:v12];
  [v17 setAuthenticationType:0];
  v18 = [objc_alloc(MEMORY[0x277D7BAF0]) initWithConfiguration:v17];
  [v18 setDelegate:self->_context];
  [(WFNANPublishTableViewController *)self clearInputFields];
  context = [(WFNANPublishTableViewController *)self context];
  [context addPublisher:v18];

  [(WFNANPublishTableViewController *)self dismissKeyboard];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(WFNANPublishTableViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue == 1 && [(WFNANTableViewContext *)self->_context getPublishersCount]>= 1)
  {
    v8 = [WFNANDataSessionsTableViewController alloc];
    context = self->_context;
    v10 = -[WFNANTableViewContext getPublisherAtIndex:](context, "getPublisherAtIndex:", [pathCopy row]);
    v11 = [(WFNANDataSessionsTableViewController *)v8 initWithContext:context forPublisher:v10];

    [(UIViewController *)self wf_pushViewController:v11 animated:1];
  }
}

@end