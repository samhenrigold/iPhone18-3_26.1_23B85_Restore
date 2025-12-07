@interface TSEnableTableViewController
- (BOOL)_areAllInstallingPlansBeEnabled;
- (TSEnableTableViewController)initWithEnablingPlanInfo:(id)info;
- (TSEnableTableViewController)initWithInfos:(id)infos;
- (TSSIMSetupFlowDelegate)delegate;
- (id)_titleForItem:(id)item;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_doneButtonTapped;
- (void)_getTraveleSIMStateWithCompletion:(id)completion;
- (void)_maybeDismissSelf;
- (void)_prepareForEnablingItem:(id)item;
- (void)_prepareForInstallingItems:(id)items;
- (void)_refreshTableView;
- (void)_skipButtonTapped;
- (void)_updateButtonStatus;
- (void)_updateEnablePlanItems;
- (void)prepare:(id)prepare;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)selectRowAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(int64_t)position;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TSEnableTableViewController

- (TSEnableTableViewController)initWithInfos:(id)infos
{
  infosCopy = infos;
  v6 = +[TSCellularPlanManagerCache sharedInstance];
  planItems = [v6 planItems];

  v8 = [planItems count];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  if (v8 <= 1)
  {
    v11 = @"CELLULAR_PLAN_ENABLE_ONE_PLAN_TITLE";
  }

  else
  {
    v11 = @"CELLULAR_PLAN_ENABLE_MULTI_PLAN_TITLE";
  }

  if (v8 <= 1)
  {
    v12 = @"CELLULAR_PLAN_ENABLE_ONE_PLAN_DETAIL";
  }

  else
  {
    v12 = @"CELLULAR_PLAN_ENABLE_MULTI_PLAN_DETAIL";
  }

  v13 = [v9 localizedStringForKey:v11 value:&stru_28753DF48 table:@"Localizable"];

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:v12 value:&stru_28753DF48 table:@"Localizable"];

  v19.receiver = self;
  v19.super_class = TSEnableTableViewController;
  v16 = [(OBTableWelcomeController *)&v19 initWithTitle:v13 detailText:v15 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_installInfos, infos);
  }

  return v17;
}

- (TSEnableTableViewController)initWithEnablingPlanInfo:(id)info
{
  v73[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_SELECTION_FOR_TURN_ON_A_SIM_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  planItem = [infoCopy planItem];
  phoneNumber = [planItem phoneNumber];
  formattedPhoneNumber = [phoneNumber formattedPhoneNumber];
  v10 = [formattedPhoneNumber length];

  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_SELECTION_FOR_TURN_ON_A_SIM_DETAIL_WITH_PHONE_NUMBER_%@" value:&stru_28753DF48 table:@"Localizable"];
    planItem2 = [infoCopy planItem];
    [planItem2 phoneNumber];
    selfCopy = self;
    v17 = v16 = infoCopy;
    formattedPhoneNumber2 = [v17 formattedPhoneNumber];
    v19 = [v11 stringWithFormat:v13, formattedPhoneNumber2];

    infoCopy = v16;
    self = selfCopy;

    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_TURN_OFF_%@" value:&stru_28753DF48 table:@"Localizable"];
    planItem3 = [infoCopy planItem];
    phoneNumber2 = [planItem3 phoneNumber];
LABEL_5:
    userLabel2 = phoneNumber2;
    formattedPhoneNumber3 = [phoneNumber2 formattedPhoneNumber];
LABEL_6:
    v39 = formattedPhoneNumber3;
    v40 = [v20 stringWithFormat:v22, formattedPhoneNumber3];
    secondaryButtonDetail = self->_secondaryButtonDetail;
    self->_secondaryButtonDetail = v40;

    goto LABEL_7;
  }

  planItem4 = [infoCopy planItem];
  cachedPhoneNumber = [planItem4 cachedPhoneNumber];
  formattedPhoneNumber4 = [cachedPhoneNumber formattedPhoneNumber];
  v28 = [formattedPhoneNumber4 length];

  if (v28)
  {
    v29 = MEMORY[0x277CCACA8];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_SELECTION_FOR_TURN_ON_A_SIM_DETAIL_WITH_PHONE_NUMBER_%@" value:&stru_28753DF48 table:@"Localizable"];
    planItem5 = [infoCopy planItem];
    [planItem5 cachedPhoneNumber];
    selfCopy2 = self;
    v35 = v34 = infoCopy;
    formattedPhoneNumber5 = [v35 formattedPhoneNumber];
    v19 = [v29 stringWithFormat:v31, formattedPhoneNumber5];

    infoCopy = v34;
    self = selfCopy2;

    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_TURN_OFF_%@" value:&stru_28753DF48 table:@"Localizable"];
    planItem3 = [infoCopy planItem];
    phoneNumber2 = [planItem3 cachedPhoneNumber];
    goto LABEL_5;
  }

  planItem6 = [infoCopy planItem];
  userLabel = [planItem6 userLabel];
  label = [userLabel label];
  v51 = [label length];

  if (v51)
  {
    v52 = MEMORY[0x277CCACA8];
    v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v54 = [v53 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_SELECTION_FOR_TURN_ON_A_SIM_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
    planItem7 = [infoCopy planItem];
    [planItem7 userLabel];
    selfCopy3 = self;
    v58 = v57 = infoCopy;
    label2 = [v58 label];
    v19 = [v52 stringWithFormat:v54, label2];

    infoCopy = v57;
    self = selfCopy3;

    v20 = MEMORY[0x277CCACA8];
LABEL_14:
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_TURN_OFF_%@" value:&stru_28753DF48 table:@"Localizable"];
    planItem3 = [infoCopy planItem];
    userLabel2 = [planItem3 userLabel];
    formattedPhoneNumber3 = [userLabel2 label];
    goto LABEL_6;
  }

  planItem8 = [infoCopy planItem];
  carrierName = [planItem8 carrierName];
  v62 = [carrierName length];

  if (v62)
  {
    v63 = MEMORY[0x277CCACA8];
    v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v65 = [v64 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_SELECTION_FOR_TURN_ON_A_SIM_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
    planItem9 = [infoCopy planItem];
    [planItem9 carrierName];
    selfCopy4 = self;
    v69 = v68 = infoCopy;
    v19 = [v63 stringWithFormat:v65, v69];

    infoCopy = v68;
    self = selfCopy4;

    v20 = MEMORY[0x277CCACA8];
    goto LABEL_14;
  }

  v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v70 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_SELECTION_FOR_TURN_ON_A_SIM_DETAIL" value:&stru_28753DF48 table:@"Localizable"];

  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v71 = [v21 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_SELECTION_NO_CHANGE" value:&stru_28753DF48 table:@"Localizable"];
  v22 = self->_secondaryButtonDetail;
  self->_secondaryButtonDetail = v71;
LABEL_7:

  v72.receiver = self;
  v72.super_class = TSEnableTableViewController;
  v42 = [(OBTableWelcomeController *)&v72 initWithTitle:v6 detailText:v19 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];
  if (v42)
  {
    v73[0] = infoCopy;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:1];
    installInfos = v42->_installInfos;
    v42->_installInfos = v43;

    targetIccid = [infoCopy targetIccid];
    enablingIccid = v42->_enablingIccid;
    v42->_enablingIccid = targetIccid;
  }

  return v42;
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = TSEnableTableViewController;
  [(TSOBTableWelcomeController *)&v31 viewDidLoad];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];

  v4 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v4;

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel__doneButtonTapped forControlEvents:64];
  v6 = self->_continueButton;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v6 setTitle:v8 forState:0];

  buttonTray = [(TSEnableTableViewController *)self buttonTray];
  [buttonTray addButton:self->_continueButton];

  if (![(NSString *)self->_enablingIccid length])
  {
    v10 = +[TSUtilities inBuddy];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    if (v10)
    {
      v13 = @"SET_UP_LATER_IN_SETTINGS";
    }

    else
    {
      v13 = @"NOT_NOW";
    }

    v14 = [v11 localizedStringForKey:v13 value:&stru_28753DF48 table:@"Localizable"];
    secondaryButtonDetail = self->_secondaryButtonDetail;
    self->_secondaryButtonDetail = v14;
  }

  v16 = +[SSOBLinkTrayButton linkButton];
  skipButton = self->_skipButton;
  self->_skipButton = v16;

  [(SSOBLinkTrayButton *)self->_skipButton setTitle:self->_secondaryButtonDetail forState:0];
  [(SSOBLinkTrayButton *)self->_skipButton addTarget:self action:sel__skipButtonTapped forControlEvents:64];
  buttonTray2 = [(TSEnableTableViewController *)self buttonTray];
  [buttonTray2 addButton:self->_skipButton];

  v19 = objc_alloc(MEMORY[0x277D75B40]);
  v20 = [v19 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v20];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setRowHeight:*MEMORY[0x277D76F30]];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView3 setBackgroundColor:clearColor];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setEstimatedRowHeight:1.0];

  if (![(NSString *)self->_enablingIccid length])
  {
    tableView5 = [(OBTableWelcomeController *)self tableView];
    [tableView5 setAllowsMultipleSelection:1];
  }

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setDataSource:self];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 setDelegate:self];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 setScrollEnabled:1];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 reloadData];
}

- (void)viewDidLayoutSubviews
{
  view = [(TSEnableTableViewController *)self view];
  [view layoutIfNeeded];

  v4.receiver = self;
  v4.super_class = TSEnableTableViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TSEnableTableViewController;
  [(OBTableWelcomeController *)&v4 viewWillAppear:appear];
  [(TSEnableTableViewController *)self _updateButtonStatus];
}

- (void)prepare:(id)prepare
{
  prepareCopy = prepare;
  if (+[TSUtilities isPad])
  {
    prepareCopy[2](prepareCopy, 0);
  }

  else if ([(NSString *)self->_enablingIccid length])
  {
    [(TSEnableTableViewController *)self _prepareForEnablingItem:prepareCopy];
  }

  else
  {
    [(TSEnableTableViewController *)self _prepareForInstallingItems:prepareCopy];
  }
}

- (void)_prepareForEnablingItem:(id)item
{
  v49 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v4 = [MEMORY[0x277CBEB58] set];
  array = [MEMORY[0x277CBEB18] array];
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v7 = [mEMORY[0x277CF96D8] planItemsShouldUpdate:0];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_18;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v37;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v37 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v36 + 1) + 8 * i);
      if ([v14 isSelectable] && objc_msgSend(v14, "transferredStatus") != 2 && objc_msgSend(v14, "transferredStatus") != 4)
      {
        if ([v14 isSelected])
        {
          [v4 addObject:v14];
        }

        else if ([(NSString *)self->_enablingIccid length])
        {
          enablingIccid = self->_enablingIccid;
          iccid = [v14 iccid];
          LOBYTE(enablingIccid) = [(NSString *)enablingIccid isEqualToString:iccid];

          v11 |= enablingIccid;
          continue;
        }

        [array addObject:v14];
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v36 objects:v48 count:16];
  }

  while (v10);
LABEL_18:

  v17 = [array copy];
  allPlans = self->_allPlans;
  self->_allPlans = v17;

  v19 = [v4 copy];
  originalEnabledPlans = self->_originalEnabledPlans;
  self->_originalEnabledPlans = v19;

  v21 = +[TSCoreTelephonyClientCache sharedInstance];
  deviceSupportsHydra = [v21 deviceSupportsHydra];

  v24 = 1;
  if (deviceSupportsHydra)
  {
    v24 = 2;
  }

  self->_maxAllowedeSIMCount = v24;
  v25 = _TSLogDomain(v23);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    if (deviceSupportsHydra)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v27 = [array count];
    v28 = [v4 count];
    *buf = 138413058;
    v41 = v26;
    v42 = 2048;
    v43 = v27;
    v44 = 2048;
    v45 = v28;
    v46 = 2080;
    v47 = "[TSEnableTableViewController _prepareForEnablingItem:]";
    _os_log_impl(&dword_262AA8000, v25, OS_LOG_TYPE_DEFAULT, "supports hydra: %@, selectable plans: %lu, enabled plans: %lu @%s", buf, 0x2Au);
  }

  if (itemCopy)
  {
    if ([(NSString *)self->_enablingIccid length])
    {
      v29 = [v4 count];
      if (v29 == 2)
      {
        if ((deviceSupportsHydra & 1) == 0)
        {
          v30 = _TSLogDomain(2);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            [TSEnableTableViewController _prepareForEnablingItem:v30];
          }

          goto LABEL_34;
        }
      }

      else
      {
        v30 = _TSLogDomain(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          [TSEnableTableViewController _prepareForEnablingItem:v30];
        }

LABEL_34:
      }
    }

    else
    {
      v31 = [array count];
      v11 = v31 > [v4 count];
    }

    self->_needShow = v11 & 1;
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__TSEnableTableViewController__prepareForEnablingItem___block_invoke;
    block[3] = &unk_279B454B8;
    v34 = itemCopy;
    objc_copyWeak(&v35, buf);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v35);

    objc_destroyWeak(buf);
  }
}

void __55__TSEnableTableViewController__prepareForEnablingItem___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, [WeakRetained needShow]);
}

- (void)_prepareForInstallingItems:(id)items
{
  itemsCopy = items;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__TSEnableTableViewController__prepareForInstallingItems___block_invoke;
  v6[3] = &unk_279B44EE8;
  v5 = itemsCopy;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [(TSEnableTableViewController *)self _getTraveleSIMStateWithCompletion:v6];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __58__TSEnableTableViewController__prepareForInstallingItems___block_invoke(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) != 0 || (v3 = _os_feature_enabled_impl(), !v3))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained _areAllInstallingPlansBeEnabled];
      v7 = *(a1 + 32);
      if (v6)
      {
        (*(v7 + 16))(*(a1 + 32), 0);
      }

      else
      {
        [v8 _prepareForEnablingItem:v7];
      }
    }

    else
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
    }
  }

  else
  {
    v4 = _TSLogDomain(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[TSEnableTableViewController _prepareForInstallingItems:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "Skip showing enablement pane for travel eSIM @%s", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_doneButtonTapped
{
  [(OBWelcomeController *)self _showButtonTraySpinnerWithBusyText:&stru_28753DF48];
  view = [(TSEnableTableViewController *)self view];
  [view setUserInteractionEnabled:0];

  [(TSEnableTableViewController *)self _updateEnablePlanItems];
}

- (void)_skipButtonTapped
{
  view = [(TSEnableTableViewController *)self view];
  [view setUserInteractionEnabled:0];

  [(TSEnableTableViewController *)self _maybeDismissSelf];
}

- (void)_updateEnablePlanItems
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(NSString *)self->_enablingIccid length])
  {
    [MEMORY[0x277CBEB58] setWithArray:self->_allPlans];
  }

  else
  {
    [MEMORY[0x277CBEB58] set];
  }
  v3 = ;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  v6 = [indexPathsForSelectedRows countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    *&v7 = 136315650;
    v21 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        v11 = -[NSArray objectAtIndex:](self->_allPlans, "objectAtIndex:", [*(*(&v22 + 1) + 8 * i) row]);
        v12 = _TSLogDomain(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(NSString *)self->_enablingIccid length];
          *buf = v21;
          v14 = "un";
          if (!v13)
          {
            v14 = "";
          }

          v27 = v14;
          v28 = 2112;
          v29 = v11;
          v30 = 2080;
          v31 = "[TSEnableTableViewController _updateEnablePlanItems]";
          _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "%sselect plan : %@ @%s", buf, 0x20u);
        }

        if ([(NSString *)self->_enablingIccid length])
        {
          [v3 removeObject:v11];
        }

        else
        {
          [v3 addObject:v11];
        }
      }

      v8 = [indexPathsForSelectedRows countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v8);
  }

  if ([(NSString *)self->_enablingIccid length])
  {
    v15 = [(NSArray *)self->_installInfos objectAtIndexedSubscript:0];
    planItem = [v15 planItem];
    [v3 addObject:planItem];
  }

  allObjects = [v3 allObjects];
  selectedItems = self->_selectedItems;
  self->_selectedItems = allObjects;

  v19 = [v3 isEqualToSet:self->_originalEnabledPlans];
  if (v19)
  {
    v20 = _TSLogDomain(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[TSEnableTableViewController _updateEnablePlanItems]";
      _os_log_impl(&dword_262AA8000, v20, OS_LOG_TYPE_DEFAULT, "no change @%s", buf, 0xCu);
    }
  }

  else
  {
    v20 = +[TSCellularPlanManagerCache sharedInstance];
    [v20 didEnablePlanItems:self->_selectedItems];
  }

  [(TSEnableTableViewController *)self _maybeDismissSelf];
}

- (void)_maybeDismissSelf
{
  v13[1] = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_installInfos count]== 1 && [(NSArray *)self->_selectedItems count]== 1)
  {
    defaultCenter2 = [(NSArray *)self->_installInfos objectAtIndexedSubscript:0];
    targetIccid = [defaultCenter2 targetIccid];
    v5 = [(NSArray *)self->_selectedItems objectAtIndexedSubscript:0];
    iccid = [v5 iccid];
    if (![targetIccid isEqualToString:iccid])
    {

      goto LABEL_7;
    }

    v7 = [(NSArray *)self->_installInfos objectAtIndexedSubscript:0];
    activatingState = [v7 activatingState];

    if (!activatingState)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel__updateTrayButtonText_ name:@"esim.install.state.changed" object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      v12 = @"InstallStateKey";
      v13[0] = @"PostInstall";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      [defaultCenter2 postNotificationName:@"esim.install.state.changed" object:0 userInfo:v10];

LABEL_7:
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (void)_refreshTableView
{
  selfCopy = self;
  v41 = *MEMORY[0x277D85DE8];
  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  v34 = [indexPathsForSelectedRows count];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  tableView2 = [(OBTableWelcomeController *)selfCopy tableView];
  indexPathsForSelectedRows2 = [tableView2 indexPathsForSelectedRows];

  v7 = [indexPathsForSelectedRows2 countByEnumeratingWithState:&v36 objects:v40 count:16];
  v8 = 0x27FF49000uLL;
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(indexPathsForSelectedRows2);
        }

        v13 = -[NSArray objectAtIndex:](selfCopy->_allPlans, "objectAtIndex:", [*(*(&v36 + 1) + 8 * i) row]);
        if ([v13 type])
        {
          ++v10;
        }
      }

      v9 = [indexPathsForSelectedRows2 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  tableView3 = [(OBTableWelcomeController *)selfCopy tableView];
  numberOfSections = [tableView3 numberOfSections];

  if (numberOfSections)
  {
    v16 = 0;
    while (1)
    {
      tableView4 = [(OBTableWelcomeController *)selfCopy tableView];
      v18 = [tableView4 numberOfRowsInSection:v16];

      if (v18)
      {
        break;
      }

LABEL_26:
      ++v16;
      tableView5 = [(OBTableWelcomeController *)selfCopy tableView];
      numberOfSections2 = [tableView5 numberOfSections];

      if (v16 >= numberOfSections2)
      {
        return;
      }
    }

    v19 = 0;
    v35 = v16;
    while (1)
    {
      v20 = [MEMORY[0x277CCAA70] indexPathForRow:v19 inSection:v16];
      tableView6 = [(OBTableWelcomeController *)selfCopy tableView];
      v22 = [tableView6 cellForRowAtIndexPath:v20];

      v23 = v8;
      v24 = [*(&selfCopy->super.super.super.super.super.super.super.isa + *(v8 + 2848)) objectAtIndex:v19];
      v25 = selfCopy;
      tableView7 = [(OBTableWelcomeController *)selfCopy tableView];
      indexPathsForSelectedRows3 = [tableView7 indexPathsForSelectedRows];
      v28 = [indexPathsForSelectedRows3 containsObject:v20];

      if (v28)
      {
        [v22 setAccessoryType:3];
      }

      else
      {
        [v22 setAccessoryType:0];
        if ([v24 type])
        {
          selfCopy = v25;
          v29 = v34 <= 1 && v10 < v25->_maxAllowedeSIMCount;
          v8 = v23;
          [v22 setUserInteractionEnabled:v29];
          v16 = v35;
          goto LABEL_25;
        }

        [v22 setUserInteractionEnabled:v34 < 2];
      }

      v8 = v23;
      v16 = v35;
      selfCopy = v25;
LABEL_25:

      ++v19;
      tableView8 = [(OBTableWelcomeController *)selfCopy tableView];
      v31 = [tableView8 numberOfRowsInSection:v16];

      if (v19 >= v31)
      {
        goto LABEL_26;
      }
    }
  }
}

- (void)_updateButtonStatus
{
  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  v5 = [indexPathsForSelectedRows count];

  [(OBBoldTrayButton *)self->_continueButton setEnabled:v5 != 0];
  [(SSOBBoldTrayButton *)self->_continueButton setUserInteractionEnabled:v5 != 0];
  if (![(NSString *)self->_enablingIccid length])
  {
    v6 = v5 == 0;
    [(SSOBLinkTrayButton *)self->_skipButton setEnabled:v6];
    skipButton = self->_skipButton;

    [(SSOBLinkTrayButton *)skipButton setUserInteractionEnabled:v6];
  }
}

- (void)_getTraveleSIMStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(NSArray *)self->_installInfos count]== 1)
  {
    v5 = [(NSArray *)self->_installInfos objectAtIndexedSubscript:0];
    eSIMTravelState = [v5 eSIMTravelState];

    if (eSIMTravelState)
    {
      eSIMTravelState2 = [v5 eSIMTravelState];
      completionCopy[2](completionCopy, [eSIMTravelState2 BOOLValue] ^ 1);
    }

    else
    {
      v8 = +[TSCoreTelephonyClientCache sharedInstance];
      eSIMTravelState2 = [v8 getCoreTelephonyClient];

      targetIccid = [v5 targetIccid];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __65__TSEnableTableViewController__getTraveleSIMStateWithCompletion___block_invoke;
      v10[3] = &unk_279B447D8;
      v11 = v5;
      v12 = completionCopy;
      [eSIMTravelState2 getTravelInfoForIccid:targetIccid completion:v10];
    }
  }

  else
  {
    completionCopy[2](completionCopy, 1);
  }
}

void __65__TSEnableTableViewController__getTraveleSIMStateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TSLogDomain(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v3;
    v10 = 2080;
    v11 = "[TSEnableTableViewController _getTraveleSIMStateWithCompletion:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "CTPlanTravelDetails (%@) @%s", &v8, 0x16u);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isTraveleSIM")}];
  [*(a1 + 32) setESIMTravelState:v5];

  [*(a1 + 32) setIsUserInHomeCountry:{objc_msgSend(v3, "isUserTraveling") ^ 1}];
  v6 = [v3 isDataOnly];
  if (v6)
  {
    v7 = [v3 isDataOnly];
    [*(a1 + 32) setIsDataOnly:{objc_msgSend(v7, "BOOLValue")}];
  }

  else
  {
    [*(a1 + 32) setIsDataOnly:0];
  }

  if ([v3 isGlobalMVNO])
  {
    [*(a1 + 32) setWaitForPhoneNumber:MEMORY[0x277CBEC28]];
    [*(a1 + 32) useGMVNOAsTravelSIM];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), [v3 isTraveleSIM] ^ 1);
  }
}

- (BOOL)_areAllInstallingPlansBeEnabled
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = self->_installInfos;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 138412546;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if (!isFailedState([v8 status]))
        {
          planItem = [v8 planItem];

          if (planItem)
          {
            planItem2 = [v8 planItem];
            isSelected = [planItem2 isSelected];

            if (!isSelected)
            {
              v15 = 0;
              goto LABEL_16;
            }
          }

          else
          {
            v13 = _TSLogDomain(v10);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              identifier = [v8 identifier];
              *buf = v17;
              v23 = identifier;
              v24 = 2080;
              v25 = "[TSEnableTableViewController _areAllInstallingPlansBeEnabled]";
              _os_log_error_impl(&dword_262AA8000, v13, OS_LOG_TYPE_ERROR, "[E]plan %@ has no item @%s", buf, 0x16u);
            }
          }
        }
      }

      v5 = [(NSArray *)v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v5);
  }

  v15 = 1;
LABEL_16:

  return v15;
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  [(TSEnableTableViewController *)self _refreshTableView:view];

  [(TSEnableTableViewController *)self _updateButtonStatus];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  [(TSEnableTableViewController *)self _refreshTableView:view];

  [(TSEnableTableViewController *)self _updateButtonStatus];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"plan%ld", objc_msgSend(pathCopy, "row")];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];
  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:v8];
  }

  defaultConfig = [v9 defaultConfig];
  v11 = -[NSArray objectAtIndex:](self->_allPlans, "objectAtIndex:", [pathCopy row]);
  v12 = MEMORY[0x277D755B8];
  if ([v11 type])
  {
    v13 = @"esim";
  }

  else
  {
    v13 = @"simcard";
  }

  v14 = [v12 systemImageNamed:v13];
  [defaultConfig setImage:v14];

  v15 = [(TSEnableTableViewController *)self _titleForItem:v11];
  [defaultConfig setText:v15];

  v16 = [(NSString *)self->_enablingIccid length];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = v17;
  if (v16)
  {
    v19 = @"ON";
  }

  else
  {
    v19 = @"AVAILABLE";
  }

  v20 = [v17 localizedStringForKey:v19 value:&stru_28753DF48 table:@"Localizable"];
  [defaultConfig setSecondaryText:v20];

  if ([(NSString *)self->_enablingIccid length])
  {
    v21 = viewCopy;
    if (![(NSArray *)self->_allPlans containsObject:v11])
    {
      goto LABEL_16;
    }

    iccid = [v11 iccid];
    v23 = [iccid isEqualToString:self->_enablingIccid];

    if (!v23)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v21 = viewCopy;
    if (![(NSSet *)self->_originalEnabledPlans containsObject:v11])
    {
      goto LABEL_16;
    }
  }

  indexPathsForSelectedRows = [v21 indexPathsForSelectedRows];
  v25 = [indexPathsForSelectedRows containsObject:pathCopy];

  if ((v25 & 1) == 0)
  {
    [(TSEnableTableViewController *)self selectRowAtIndexPath:pathCopy animated:0 scrollPosition:0];
  }

LABEL_16:
  [v9 setContentConfiguration:defaultConfig];

  return v9;
}

- (void)selectRowAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(int64_t)position
{
  animatedCopy = animated;
  pathCopy = path;
  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  v11 = [indexPathsForSelectedRows containsObject:pathCopy];

  if ((v11 & 1) == 0)
  {
    tableView2 = [(OBTableWelcomeController *)self tableView];
    [tableView2 selectRowAtIndexPath:pathCopy animated:animatedCopy scrollPosition:position];

    v13 = dispatch_time(0, 50000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__TSEnableTableViewController_UITableViewDataSource__selectRowAtIndexPath_animated_scrollPosition___block_invoke;
    block[3] = &unk_279B44578;
    block[4] = self;
    dispatch_after(v13, MEMORY[0x277D85CD0], block);
  }
}

uint64_t __99__TSEnableTableViewController_UITableViewDataSource__selectRowAtIndexPath_animated_scrollPosition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _refreshTableView];
  v2 = *(a1 + 32);

  return [v2 _updateButtonStatus];
}

- (id)_titleForItem:(id)item
{
  itemCopy = item;
  installInfos = self->_installInfos;
  iccid = [itemCopy iccid];
  v7 = findPlanInfoWithTargetIccid(installInfos, iccid);

  if (v7)
  {
    [v7 text];
  }

  else
  {
    [TSUtilities planItemText:itemCopy];
  }
  v8 = ;
  if (!+[TSUtilities isPad])
  {
    phoneNumber = [v7 phoneNumber];
    v10 = [phoneNumber length];

    v11 = v7;
    if (v10)
    {
      goto LABEL_6;
    }

    displayPlan = [v7 displayPlan];
    phoneNumber2 = [displayPlan phoneNumber];
    v18 = [phoneNumber2 length];

    if (v18)
    {
      displayPlan2 = [v7 displayPlan];
      phoneNumber3 = [displayPlan2 phoneNumber];
      formattedPhoneNumber = [phoneNumber3 formattedPhoneNumber];

      v8 = phoneNumber3;
      goto LABEL_11;
    }

    phoneNumber4 = [itemCopy phoneNumber];
    v22 = [phoneNumber4 length];

    v11 = itemCopy;
    if (v22)
    {
LABEL_6:
      phoneNumber5 = [v11 phoneNumber];
LABEL_7:
      displayPlan2 = phoneNumber5;
      formattedPhoneNumber2 = [phoneNumber5 formattedPhoneNumber];
LABEL_8:
      formattedPhoneNumber = formattedPhoneNumber2;
LABEL_11:

      v8 = formattedPhoneNumber;
      goto LABEL_12;
    }

    cachedPhoneNumber = [itemCopy cachedPhoneNumber];
    v24 = [cachedPhoneNumber length];

    if (v24)
    {
      phoneNumber5 = [itemCopy cachedPhoneNumber];
      goto LABEL_7;
    }

    displayPlan3 = [v7 displayPlan];
    label = [displayPlan3 label];
    v27 = [label length];

    if (v27)
    {
      displayPlan4 = [v7 displayPlan];
LABEL_22:
      displayPlan2 = displayPlan4;
      formattedPhoneNumber2 = [displayPlan4 label];
      goto LABEL_8;
    }

    userLabel = [itemCopy userLabel];
    label2 = [userLabel label];
    v31 = [label2 length];

    if (v31)
    {
      displayPlan4 = [itemCopy userLabel];
      goto LABEL_22;
    }
  }

LABEL_12:

  return v8;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__TSEnableTableViewController_UIScrollViewDelegate__scrollViewDidEndDecelerating___block_invoke;
  block[3] = &unk_279B44578;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __82__TSEnableTableViewController_UIScrollViewDelegate__scrollViewDidEndDecelerating___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _refreshTableView];
  v2 = *(a1 + 32);

  return [v2 _updateButtonStatus];
}

- (void)_prepareForEnablingItem:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSEnableTableViewController _prepareForEnablingItem:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]No need to launch enable plan flow when there is only 1 plan enabled @%s", &v1, 0xCu);
}

- (void)_prepareForEnablingItem:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSEnableTableViewController _prepareForEnablingItem:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]No need launch enable plan flow for non-hydra device @%s", &v1, 0xCu);
}

@end