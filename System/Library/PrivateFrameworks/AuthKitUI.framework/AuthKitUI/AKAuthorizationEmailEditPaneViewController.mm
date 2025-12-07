@interface AKAuthorizationEmailEditPaneViewController
- (AKAuthorizationScopeChoices)editableScopeChoices;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (id)tableView:(id)view anonymousCellForRow:(unint64_t)row;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view emailCellForRow:(unint64_t)row;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AKAuthorizationEmailEditPaneViewController

- (void)viewDidLoad
{
  v39[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v37 = a2;
  v36.receiver = self;
  v36.super_class = AKAuthorizationEmailEditPaneViewController;
  [(AKAuthorizationPaneViewController *)&v36 viewDidLoad];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v27 localizedStringForKey:@"AUTHORIZE_EMAIL_CONTACT" value:&stru_28358EF68 table:@"Localizable"];
  [(AKAuthorizationEmailEditPaneViewController *)selfCopy setTitle:?];
  MEMORY[0x277D82BD8](v26);
  *&v2 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationEmailAddressesTableViewCell"];
  *&v3 = MEMORY[0x277D82BD8](tableView).n128_u64[0];
  tableView2 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationEmailAnonymousTableViewCell"];
  *&v4 = MEMORY[0x277D82BD8](tableView2).n128_u64[0];
  tableView3 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView3 setDataSource:selfCopy];
  *&v5 = MEMORY[0x277D82BD8](tableView3).n128_u64[0];
  tableView4 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView4 setDelegate:selfCopy];
  MEMORY[0x277D82BD8](tableView4);
  v35 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76918] traits:0x8000];
  [v35 setFont:?];
  [v35 setTextAlignment:{1, MEMORY[0x277D82BD8](v32).n128_f64[0]}];
  [v35 setNumberOfLines:0];
  [v35 setAdjustsFontSizeToFitWidth:0];
  applicationName = [(AKAuthorizationEmailEditPaneViewController *)selfCopy applicationName];
  v34 = [(NSString *)applicationName length];
  MEMORY[0x277D82BD8](applicationName);
  if (v34)
  {
    v19 = MEMORY[0x277CCACA8];
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v23 localizedStringForKey:@"AUTHORIZE_EMAIL_EDIT_INFO_FORMAT" value:&stru_28358EF68 table:@"Localizable"];
    applicationName2 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy applicationName];
    v20 = [v19 stringWithFormat:v22, applicationName2];
    [v35 setText:?];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](applicationName2);
    MEMORY[0x277D82BD8](v22);
    v6 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  }

  else
  {
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v25 localizedStringForKey:@"AUTHORIZE_EMAIL_EDIT_INFO" value:&stru_28358EF68 table:@"Localizable"];
    [v35 setText:?];
    MEMORY[0x277D82BD8](v24);
    v6 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  }

  paneHeaderStackView = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  [(UIStackView *)paneHeaderStackView addArrangedSubview:v35];
  *&v7 = MEMORY[0x277D82BD8](paneHeaderStackView).n128_u64[0];
  paneHeaderStackView2 = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  v11 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(UIStackView *)paneHeaderStackView2 addArrangedSubview:?];
  MEMORY[0x277D82BD8](v11);
  *&v8 = MEMORY[0x277D82BD8](paneHeaderStackView2).n128_u64[0];
  v13 = MEMORY[0x277CCAAD0];
  widthAnchor = [v35 widthAnchor];
  paneHeaderStackView3 = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  widthAnchor2 = [(UIStackView *)paneHeaderStackView3 widthAnchor];
  +[AKAuthorizationPaneMetrics editPaneInfoLabelHorizontalPadding];
  v15 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-(2.0 * v9)];
  v39[0] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  [v13 activateConstraints:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](paneHeaderStackView3);
  MEMORY[0x277D82BD8](widthAnchor);
  objc_storeStrong(&v35, 0);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v6 = a2;
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = AKAuthorizationEmailEditPaneViewController;
  [(AKAuthorizationEmailEditPaneViewController *)&v4 viewWillDisappear:disappear];
  editableDataSources = [(AKAuthorizationPaneViewController *)selfCopy editableDataSources];
  [(AKAuthorizationEditableDataSources *)editableDataSources setEditableScopeChoicesChanged:1];
  MEMORY[0x277D82BD8](editableDataSources);
}

- (AKAuthorizationScopeChoices)editableScopeChoices
{
  editableDataSources = [(AKAuthorizationPaneViewController *)self editableDataSources];
  editableScopeChoices = [(AKAuthorizationEditableDataSources *)editableDataSources editableScopeChoices];
  MEMORY[0x277D82BD8](editableDataSources);

  return editableScopeChoices;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v11 = 0;
  objc_storeStrong(&v11, path);
  v9 = 0;
  if ([v11 section] || (v7 = 1, objc_msgSend(v11, "row")))
  {
    v6 = 0;
    if ([v11 section] == 1)
    {
      v5 = [v11 row];
      editableScopeChoices = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
      v9 = 1;
      v6 = v5 < [(AKAuthorizationScopeChoices *)editableScopeChoices emailCount];
    }

    v7 = v6;
  }

  v14 = v7;
  if (v9)
  {
    MEMORY[0x277D82BD8](editableScopeChoices);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v14 & 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v23 = 0;
  objc_storeStrong(&v23, path);
  section = [v23 section];
  if (section)
  {
    if (section == 1)
    {
      v15 = [v23 row];
      editableScopeChoices = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
      emailCount = [(AKAuthorizationScopeChoices *)editableScopeChoices emailCount];
      *&v4 = MEMORY[0x277D82BD8](editableScopeChoices).n128_u64[0];
      if (v15 >= emailCount)
      {
        v20 = _AKLogSiwa();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "row")}];
          v6 = MEMORY[0x277CCABB0];
          editableScopeChoices2 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
          v7 = [v6 numberWithUnsignedInteger:{-[AKAuthorizationScopeChoices emailCount](editableScopeChoices2, "emailCount")}];
          __os_log_helper_16_2_2_8_64_8_64(v26, v9, v7);
          _os_log_error_impl(&dword_222379000, v20, OS_LOG_TYPE_ERROR, "row %@ selected >= %@ emails available", v26, 0x16u);
          MEMORY[0x277D82BD8](v7);
          MEMORY[0x277D82BD8](editableScopeChoices2);
          MEMORY[0x277D82BD8](v9);
        }

        objc_storeStrong(&v20, 0);
      }

      else
      {
        editableScopeChoices3 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
        [(AKAuthorizationScopeChoices *)editableScopeChoices3 setWantsPrivateEmail:0];
        *&v5 = MEMORY[0x277D82BD8](editableScopeChoices3).n128_u64[0];
        v11 = [v23 row];
        editableScopeChoices4 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
        [(AKAuthorizationScopeChoices *)editableScopeChoices4 setIndexOfChosenEmail:v11];
        MEMORY[0x277D82BD8](editableScopeChoices4);
      }
    }
  }

  else if ([v23 row])
  {
    v22 = _AKLogSiwa();
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "row")}];
      __os_log_helper_16_2_1_8_64(v27, v16);
      _os_log_error_impl(&dword_222379000, v22, v21, "unexpected row %@ selected in Anonymous Email section", v27, 0xCu);
      MEMORY[0x277D82BD8](v16);
    }

    objc_storeStrong(&v22, 0);
  }

  else
  {
    editableScopeChoices5 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
    [(AKAuthorizationScopeChoices *)editableScopeChoices5 setWantsPrivateEmail:1];
    MEMORY[0x277D82BD8](editableScopeChoices5);
  }

  [location[0] deselectRowAtIndexPath:v23 animated:0];
  [location[0] reloadData];
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 2;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (section == 1)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:@"AUTHORIZE_YOUR_EMAIL_ADDRESSES" value:&stru_28358EF68 table:@"Localizable"];
    localizedUppercaseString = [v7 localizedUppercaseString];
    v11 = [@"\n\n" stringByAppendingString:?];
    MEMORY[0x277D82BD8](localizedUppercaseString);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (section)
  {
    v9 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v6 localizedStringForKey:@"AUTHORIZE_PRIVATE_EMAIL_FOOTER" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(location, 0);
  v4 = v9;

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (section)
  {
    if (section == 1)
    {
      editableScopeChoices = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
      emailCount = [(AKAuthorizationScopeChoices *)editableScopeChoices emailCount];
      MEMORY[0x277D82BD8](editableScopeChoices);
    }

    else
    {
      emailCount = 0;
    }
  }

  else
  {
    emailCount = 1;
  }

  objc_storeStrong(location, 0);
  return emailCount;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v8 = 0;
  objc_storeStrong(&v8, path);
  section = [v8 section];
  if (section)
  {
    if (section == 1)
    {
      v11 = -[AKAuthorizationEmailEditPaneViewController tableView:emailCellForRow:](selfCopy, "tableView:emailCellForRow:", location[0], [v8 row]);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = -[AKAuthorizationEmailEditPaneViewController tableView:anonymousCellForRow:](selfCopy, "tableView:anonymousCellForRow:", location[0], [v8 row]);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

- (id)tableView:(id)view emailCellForRow:(unint64_t)row
{
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  rowCopy = row;
  editableScopeChoices = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
  emailCount = [(AKAuthorizationScopeChoices *)editableScopeChoices emailCount];
  *&v4 = MEMORY[0x277D82BD8](editableScopeChoices).n128_u64[0];
  if (row >= emailCount)
  {
    v27 = _AKLogSiwa();
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:rowCopy];
      v15 = MEMORY[0x277CCABB0];
      editableScopeChoices2 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
      v16 = [v15 numberWithUnsignedInteger:{-[AKAuthorizationScopeChoices emailCount](editableScopeChoices2, "emailCount")}];
      __os_log_helper_16_2_2_8_64_8_64(v32, v18, v16);
      _os_log_error_impl(&dword_222379000, v27, v26, "cell row %@ >= %@ rows available", v32, 0x16u);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](editableScopeChoices2);
      MEMORY[0x277D82BD8](v18);
    }

    objc_storeStrong(&v27, 0);
    v31 = 0;
    v25 = 1;
  }

  else
  {
    v24 = [location[0] dequeueReusableCellWithIdentifier:{@"AKAuthorizationEmailAddressesTableViewCell", v4}];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v24 setBackgroundColor:?];
    [v24 setSelectionStyle:{1, MEMORY[0x277D82BD8](clearColor).n128_f64[0]}];
    editableScopeChoices3 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
    v11 = [(AKAuthorizationScopeChoices *)editableScopeChoices3 emailAtIndex:rowCopy];
    textLabel = [v24 textLabel];
    [textLabel setText:v11];
    MEMORY[0x277D82BD8](textLabel);
    MEMORY[0x277D82BD8](v11);
    *&v5 = MEMORY[0x277D82BD8](editableScopeChoices3).n128_u64[0];
    editableScopeChoices4 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
    v22 = 0;
    v14 = 0;
    if (rowCopy == [(AKAuthorizationScopeChoices *)editableScopeChoices4 indexOfChosenEmail])
    {
      editableScopeChoices5 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
      v22 = 1;
      v14 = ![(AKAuthorizationScopeChoices *)editableScopeChoices5 wantsPrivateEmail];
    }

    if (v22)
    {
      MEMORY[0x277D82BD8](editableScopeChoices5);
    }

    *&v6 = MEMORY[0x277D82BD8](editableScopeChoices4).n128_u64[0];
    if (v14)
    {
      [v24 setAccessoryType:{3, v6}];
    }

    else
    {
      [v24 setAccessoryType:{0, v6}];
    }

    v31 = MEMORY[0x277D82BE0](v24);
    v25 = 1;
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(location, 0);
  v7 = v31;

  return v7;
}

- (id)tableView:(id)view anonymousCellForRow:(unint64_t)row
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v21[1] = row;
  v21[0] = [location[0] dequeueReusableCellWithIdentifier:@"AKAuthorizationEmailAnonymousTableViewCell"];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v10 localizedStringForKey:@"AUTHORIZE_PRIVATE_EMAIL_TITLE" value:? table:?];
  textLabel = [v21[0] textLabel];
  [textLabel setText:v9];
  MEMORY[0x277D82BD8](textLabel);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v11 = MEMORY[0x277CCACA8];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v17 localizedStringForKey:@"AUTHORIZE_FORWARDED_TO_FORMAT" value:&stru_28358EF68 table:@"Localizable"];
  editableScopeChoices = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
  forwardingEmail = [(AKAuthorizationScopeChoices *)editableScopeChoices forwardingEmail];
  v13 = [v11 stringWithFormat:v16, forwardingEmail];
  detailTextLabel = [v21[0] detailTextLabel];
  [detailTextLabel setText:v13];
  MEMORY[0x277D82BD8](detailTextLabel);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](forwardingEmail);
  MEMORY[0x277D82BD8](editableScopeChoices);
  MEMORY[0x277D82BD8](v16);
  v4 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  v19 = 0;
  wantsPrivateEmail = 0;
  if (!row)
  {
    editableScopeChoices2 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
    v19 = 1;
    wantsPrivateEmail = [(AKAuthorizationScopeChoices *)editableScopeChoices2 wantsPrivateEmail];
  }

  if (v19)
  {
    v4 = MEMORY[0x277D82BD8](editableScopeChoices2).n128_u64[0];
  }

  if (wantsPrivateEmail)
  {
    [v21[0] setAccessoryType:{3, *&v4}];
  }

  else
  {
    [v21[0] setAccessoryType:{0, *&v4}];
  }

  v6 = MEMORY[0x277D82BE0](v21[0]);
  objc_storeStrong(v21, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end