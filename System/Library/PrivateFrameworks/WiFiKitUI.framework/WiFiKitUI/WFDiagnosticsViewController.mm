@interface WFDiagnosticsViewController
- (WFDiagnosticsViewController)initWithNANUI:(BOOL)i;
- (id)_defaultSections;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)setSaving:(BOOL)saving;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation WFDiagnosticsViewController

- (WFDiagnosticsViewController)initWithNANUI:(BOOL)i
{
  v4 = [(WFDiagnosticsViewController *)self initWithStyle:1];
  v4->_showNANUI = i;
  v5 = MEMORY[0x277CBEB70];
  _defaultSections = [(WFDiagnosticsViewController *)v4 _defaultSections];
  v7 = [v5 orderedSetWithArray:_defaultSections];
  sections = v4->_sections;
  v4->_sections = v7;

  return v4;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = WFDiagnosticsViewController;
  [(WFDiagnosticsViewController *)&v15 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"kWFLocWiFiDiagnosticsTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [(WFDiagnosticsViewController *)self setTitle:v4];

  v5 = MEMORY[0x277D757B0];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 nibWithNibName:@"WFTextFieldCell" bundle:v6];

  tableView = [(WFDiagnosticsViewController *)self tableView];
  [tableView registerNib:v7 forCellReuseIdentifier:@"kWFTextFieldCellIdentifier"];

  tableView2 = [(WFDiagnosticsViewController *)self tableView];
  [tableView2 setCellLayoutMarginsFollowReadableWidth:0];

  v10 = *MEMORY[0x277D76F30];
  tableView3 = [(WFDiagnosticsViewController *)self tableView];
  [tableView3 setRowHeight:v10];

  tableView4 = [(WFDiagnosticsViewController *)self tableView];
  [tableView4 setEstimatedRowHeight:44.0];

  tableView5 = [(WFDiagnosticsViewController *)self tableView];
  [tableView5 setEstimatedSectionHeaderHeight:0.0];

  tableView6 = [(WFDiagnosticsViewController *)self tableView];
  [tableView6 setEstimatedSectionFooterHeight:0.0];
}

- (void)setSaving:(BOOL)saving
{
  v6[1] = *MEMORY[0x277D85DE8];
  self->_saving = saving;
  tableView = [(WFDiagnosticsViewController *)self tableView];
  v4 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [tableView reloadRowsAtIndexPaths:v5 withRowAnimation:100];
}

- (id)_defaultSections
{
  if ([(WFDiagnosticsViewController *)self showNANUI])
  {
    return &unk_288322B70;
  }

  else
  {
    return &unk_288322B88;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFDiagnosticsViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  sections = [(WFDiagnosticsViewController *)self sections];
  v9 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  switch(unsignedIntegerValue)
  {
    case 2:
      showNANUI = [(WFDiagnosticsViewController *)self showNANUI];
      if (!showNANUI)
      {
LABEL_15:
        v11 = 0;
        goto LABEL_19;
      }

      v26 = WFCurrentDeviceCapability(showNANUI);
      IsChinaDevice = WFCapabilityIsChinaDevice(v26);
      v11 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = v28;
      if (IsChinaDevice)
      {
        v30 = @"kWFLocDiagnosticsNAN_CH";
      }

      else
      {
        v30 = @"kWFLocDiagnosticsNAN";
      }

      v31 = [v28 localizedStringForKey:v30 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textLabel = [v11 textLabel];
      [textLabel setText:v31];

      [v11 setAccessoryType:1];
      v33 = v11;
      v34 = 1;
      break;
    case 1:
      v11 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
      saving = [(WFDiagnosticsViewController *)self saving];
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = v20;
      if (saving)
      {
        v22 = @"kWFLocDiagnosticsSavingInProgressTitle";
      }

      else
      {
        v22 = @"kWFLocDiagnosticsSaveLogTitle";
      }

      v23 = [v20 localizedStringForKey:v22 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textLabel2 = [v11 textLabel];
      [textLabel2 setText:v23];

      if ([(WFDiagnosticsViewController *)self saving])
      {
        [MEMORY[0x277D75348] systemGrayColor];
      }

      else
      {
        [MEMORY[0x277D75348] systemBlueColor];
      }
      v35 = ;
      textLabel3 = [v11 textLabel];
      [textLabel3 setTextColor:v35];

      v34 = [(WFDiagnosticsViewController *)self saving]^ 1;
      v33 = v11;
      break;
    case 0:
      v11 = [viewCopy dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:pathCopy];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"kWFLocDiagnosticsCommentTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      label = [v11 label];
      [label setText:v13];

      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"kWFLocDiagnosticsCommentPlaceholder" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textField = [v11 textField];
      [textField setPlaceholder:v16];

      textField2 = [v11 textField];
      [textField2 setTextAlignment:0];

      objc_initWeak(&location, self);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __63__WFDiagnosticsViewController_tableView_cellForRowAtIndexPath___block_invoke;
      v38[3] = &unk_279EC5418;
      objc_copyWeak(&v39, &location);
      [v11 setTextChangeHandler:v38];
      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
      goto LABEL_19;
    default:
      goto LABEL_15;
  }

  [v33 setSelectionStyle:v34];
LABEL_19:

  return v11;
}

void __63__WFDiagnosticsViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setComment:v3];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v28 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  sections = [(WFDiagnosticsViewController *)self sections];
  v9 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  if (unsignedIntegerValue == 2)
  {
    v19 = WFLogForCategory(0);
    v20 = OSLogForWFLogLevel(3uLL);
    v21 = v20;
    if (WFCurrentLogLevel(v20, v22) >= 3 && v19 && os_log_type_enabled(v19, v21))
    {
      v26 = 136315138;
      v27 = "[WFDiagnosticsViewController tableView:didSelectRowAtIndexPath:]";
      _os_log_impl(&dword_273FB9000, v19, v21, "%s: tapped on NAN row", &v26, 0xCu);
    }

    saveHandler2 = objc_alloc_init(WFNANTableViewController);
    [(UIViewController *)self wf_pushViewController:saveHandler2 animated:1];
    goto LABEL_21;
  }

  if (!unsignedIntegerValue && ![(WFDiagnosticsViewController *)self saving])
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(3uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) >= 3 && v11)
    {
      v15 = v11;
      if (os_log_type_enabled(v15, v13))
      {
        comment = [(WFDiagnosticsViewController *)self comment];
        v17 = [comment length];
        if (v17)
        {
          comment2 = [(WFDiagnosticsViewController *)self comment];
        }

        else
        {
          comment2 = @"<nil>";
        }

        v26 = 138412290;
        v27 = comment2;
        _os_log_impl(&dword_273FB9000, v15, v13, "Saving logs with comment %@", &v26, 0xCu);
        if (v17)
        {
        }
      }
    }

    saveHandler = [(WFDiagnosticsViewController *)self saveHandler];

    if (saveHandler)
    {
      saveHandler2 = [(WFDiagnosticsViewController *)self saveHandler];
      comment3 = [(WFDiagnosticsViewController *)self comment];
      (saveHandler2->super.super.super._overrideTransitioningDelegate)(saveHandler2, comment3);

LABEL_21:
    }
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  sections = [(WFDiagnosticsViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"kWFLocDiagnosticsCommentFooter" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v8;
}

@end