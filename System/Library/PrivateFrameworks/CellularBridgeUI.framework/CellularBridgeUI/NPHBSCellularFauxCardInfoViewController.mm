@interface NPHBSCellularFauxCardInfoViewController
- (BOOL)textFieldShouldReturn:(id)return;
- (NPHBSCellularFauxCardInfoViewController)init;
- (NSLayoutConstraint)infoTableViewHeightConstraint;
- (UILabel)enterActivationLabel;
- (UIScrollView)scrollView;
- (UITableView)infoTableView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)activatePlan:(id)plan;
- (void)configureCell:(id)cell atIndexPath:(id)path;
- (void)keyboardWasShown:(id)shown;
- (void)keyboardWillBeHidden:(id)hidden;
- (void)scrollViewForKeyboardIfNecessary;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation NPHBSCellularFauxCardInfoViewController

- (NPHBSCellularFauxCardInfoViewController)init
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24.receiver = self;
  v24.super_class = NPHBSCellularFauxCardInfoViewController;
  v4 = [(NPHBSCellularFauxCardInfoViewController *)&v24 initWithNibName:@"NPHBSCellularFauxCardInfo" bundle:v3];

  if (v4)
  {
    v5 = objc_opt_new();
    tableData = v4->_tableData;
    v4->_tableData = v5;

    v30 = @"TITLE_KEY";
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"NPHCELLULAR_CARD_INFO_SMDP_LABEL" value:&stru_285611AE0 table:0];
    v31[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v23 = [v9 mutableCopy];

    v28 = @"TITLE_KEY";
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"NPHCELLULAR_CARD_INFO_ACTIVATION_CODE_LABEL" value:&stru_285611AE0 table:0];
    v29 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v13 = [v12 mutableCopy];

    v26[0] = @"TITLE_KEY";
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"NPHCELLULAR_CARD_INFO_CONFIRMATION_CODE_LABEL" value:&stru_285611AE0 table:0];
    v26[1] = @"PLACEHOLDER_KEY";
    v27[0] = v15;
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"NPHCELLULAR_CARD_INFO_CONFIRMATION_CODE_PLACEHOLDER" value:&stru_285611AE0 table:0];
    v27[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v19 = [v18 mutableCopy];

    v25[0] = v23;
    v25[1] = v13;
    v25[2] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    v21 = v4->_tableData;
    v4->_tableData = v20;
  }

  return v4;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = NPHBSCellularFauxCardInfoViewController;
  [(NPHBSCellularFauxCardInfoViewController *)&v8 viewDidLoad];
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A00]];
  v4 = MEMORY[0x277D74300];
  v5 = [v3 fontDescriptorWithSymbolicTraits:2];
  v6 = [v4 fontWithDescriptor:v5 size:0.0];

  WeakRetained = objc_loadWeakRetained(&self->_enterActivationLabel);
  [WeakRetained setFont:v6];
}

- (void)viewDidLayoutSubviews
{
  WeakRetained = objc_loadWeakRetained(&self->_infoTableView);
  v4 = [MEMORY[0x277CCAA70] indexPathWithIndex:0];
  [(NPHBSCellularFauxCardInfoViewController *)self tableView:WeakRetained heightForRowAtIndexPath:v4];
  v6 = v5;

  v7 = objc_loadWeakRetained(&self->_infoTableViewHeightConstraint);
  [v7 setConstant:v6 * 3.0 + -0.5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = NPHBSCellularFauxCardInfoViewController;
  [(NPHBSCellularFauxCardInfoViewController *)&v6 viewWillAppear:appear];
  self->_keyboardSize = *MEMORY[0x277CBF3A8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardWasShown_ name:*MEMORY[0x277D76BA8] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_keyboardWillBeHidden_ name:*MEMORY[0x277D76C50] object:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = NPHBSCellularFauxCardInfoViewController;
  [(NPHBSCellularFauxCardInfoViewController *)&v6 viewWillDisappear:disappear];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA8] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D76C50] object:0];
}

- (void)keyboardWasShown:(id)shown
{
  userInfo = [shown userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x277D76BB0]];
  [v4 CGRectValue];
  self->_keyboardSize.width = v5;
  self->_keyboardSize.height = v6;

  [(NPHBSCellularFauxCardInfoViewController *)self scrollViewForKeyboardIfNecessary];
}

- (void)keyboardWillBeHidden:(id)hidden
{
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained setContentInset:{v4, v5, v6, v7}];

  v9 = objc_loadWeakRetained(&self->_scrollView);
  [v9 setScrollIndicatorInsets:{v4, v5, v6, v7}];
}

- (void)scrollViewForKeyboardIfNecessary
{
  if (self->_activeTextField)
  {
    p_height = &self->_keyboardSize.height;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
  }

  else
  {
    v6 = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v4 = *(MEMORY[0x277D768C8] + 24);
    p_height = (MEMORY[0x277D768C8] + 16);
  }

  v7 = *p_height;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained setContentInset:{v6, v5, v7, v4}];

  v9 = objc_loadWeakRetained(&self->_scrollView);
  [v9 setScrollIndicatorInsets:{v6, v5, v7, v4}];

  if (self->_activeTextField)
  {
    view = [(NPHBSCellularFauxCardInfoViewController *)self view];
    [view frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = v18 - self->_keyboardSize.height;
    activeTextField = self->_activeTextField;
    [(UITextField *)activeTextField bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = objc_loadWeakRetained(&self->_scrollView);
    [(UITextField *)activeTextField convertRect:v29 toView:v22, v24, v26, v28];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v40.origin.x = v12;
    v40.origin.y = v14;
    v40.size.width = v16;
    v40.size.height = v19;
    v41.origin.x = v31;
    v41.origin.y = v33;
    v41.size.width = v35;
    v41.size.height = v37;
    if (!CGRectContainsRect(v40, v41))
    {
      v38 = objc_loadWeakRetained(&self->_scrollView);
      [v38 scrollRectToVisible:1 animated:{v31, v33, v35, v37}];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = NPHBSCellularFauxCardInfoViewController;
  [(NPHBSCellularFauxCardInfoViewController *)&v14 viewDidAppear:appear];
  v4 = objc_alloc(MEMORY[0x277D751E0]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"NPHCELLULAR_CARD_INFO_NEXT" value:&stru_285611AE0 table:0];
  v7 = [v4 initWithTitle:v6 style:2 target:self action:sel_activatePlan_];

  navigationController = [(NPHBSCellularFauxCardInfoViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  topItem = [navigationBar topItem];
  [topItem setRightBarButtonItem:v7];
  v11 = [(NSArray *)self->_tableData objectAtIndexedSubscript:0];
  v12 = [v11 objectForKeyedSubscript:@"TABLE_CELL_KEY"];

  editableTextField = [v12 editableTextField];
  [editableTextField becomeFirstResponder];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[NSArray objectAtIndexedSubscript:](self->_tableData, "objectAtIndexedSubscript:", [pathCopy row]);
  v7 = [v6 objectForKeyedSubscript:@"TABLE_CELL_KEY"];

  if (!v7)
  {
    v7 = -[NPHSetupTableViewCell initWithTag:delegate:]([NPHSetupTableViewCell alloc], "initWithTag:delegate:", [pathCopy row], self);
    v8 = -[NSArray objectAtIndexedSubscript:](self->_tableData, "objectAtIndexedSubscript:", [pathCopy row]);
    [v8 setObject:v7 forKeyedSubscript:@"TABLE_CELL_KEY"];
  }

  [(NPHBSCellularFauxCardInfoViewController *)self configureCell:v7 atIndexPath:pathCopy];

  return v7;
}

- (void)configureCell:(id)cell atIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  v15 = -[NSArray objectAtIndexedSubscript:](self->_tableData, "objectAtIndexedSubscript:", [pathCopy row]);
  v8 = [v15 objectForKeyedSubscript:@"TITLE_KEY"];
  textLabel = [cellCopy textLabel];
  [textLabel setText:v8];

  v10 = [v15 objectForKeyedSubscript:@"PLACEHOLDER_KEY"];
  editableTextField = [cellCopy editableTextField];
  [editableTextField setPlaceholder:v10];

  v12 = [v15 objectForKeyedSubscript:@"VALUE_KEY"];
  editableTextField2 = [cellCopy editableTextField];
  [editableTextField2 setText:v12];

  v14 = [pathCopy row];
  [cellCopy setTag:v14];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  [returnCopy resignFirstResponder];
  v5 = [returnCopy tag];

  switch(v5)
  {
    case 2:
      [(NPHBSCellularFauxCardInfoViewController *)self activatePlan:0];
      return 1;
    case 1:
      tableData = self->_tableData;
      v7 = 2;
      goto LABEL_6;
    case 0:
      tableData = self->_tableData;
      v7 = 1;
LABEL_6:
      v8 = [(NSArray *)tableData objectAtIndexedSubscript:v7];
      v9 = [v8 objectForKeyedSubscript:@"TABLE_CELL_KEY"];

      editableTextField = [v9 editableTextField];
      [editableTextField becomeFirstResponder];

      break;
  }

  return 1;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  if ([(UITextField *)editingCopy tag]== 2)
  {
    v5 = 11;
  }

  else
  {
    v5 = 4;
  }

  [(UITextField *)editingCopy setReturnKeyType:v5];
  activeTextField = self->_activeTextField;
  self->_activeTextField = editingCopy;

  [(NPHBSCellularFauxCardInfoViewController *)self scrollViewForKeyboardIfNecessary];
}

- (void)textFieldDidEndEditing:(id)editing
{
  tableData = self->_tableData;
  editingCopy = editing;
  v9 = -[NSArray objectAtIndexedSubscript:](tableData, "objectAtIndexedSubscript:", [editingCopy tag]);
  text = [editingCopy text];

  v7 = [text copy];
  [v9 setObject:v7 forKeyedSubscript:@"VALUE_KEY"];

  activeTextField = self->_activeTextField;
  self->_activeTextField = 0;
}

- (void)activatePlan:(id)plan
{
  planCopy = plan;
  view = [(NPHBSCellularFauxCardInfoViewController *)self view];
  [view endEditing:1];

  presentingViewController = [(NPHBSCellularFauxCardInfoViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  objc_initWeak(&location, self);
  v7 = +[NPHCellularBridgeUIManager sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__NPHBSCellularFauxCardInfoViewController_activatePlan___block_invoke;
  v8[3] = &unk_278DACEB0;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  [v7 _prePromptForUserConsentIfNecessary:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__NPHBSCellularFauxCardInfoViewController_activatePlan___block_invoke(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1 + 32;
  v4 = [*(*(a1 + 32) + 1000) objectAtIndexedSubscript:0];
  v18 = [v4 objectForKeyedSubscript:@"VALUE_KEY"];

  v5 = [*(*v3 + 1000) objectAtIndexedSubscript:1];
  v6 = [v5 objectForKeyedSubscript:@"VALUE_KEY"];

  v7 = [*(*v3 + 1000) objectAtIndexedSubscript:2];
  v8 = [v7 objectForKeyedSubscript:@"VALUE_KEY"];

  v10 = nph_general_log(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v22 = "[NPHBSCellularFauxCardInfoViewController activatePlan:]_block_invoke";
    v23 = 2112;
    v24 = v18;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_243333000, v10, OS_LOG_TYPE_DEFAULT, "%s - addressField:%@, activationCode:%@, confirmationCode:%@", buf, 0x2Au);
  }

  v11 = [MEMORY[0x277CF96D8] sharedManager];
  v12 = IsCurrentDevicePairing();
  v13 = +[NPHCellularBridgeUIManager sharedInstance];
  v14 = [v13 _currentDeviceCSN];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = [WeakRetained subscriptionContext];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__NPHBSCellularFauxCardInfoViewController_activatePlan___block_invoke_60;
  v19[3] = &unk_278DACA18;
  objc_copyWeak(&v20, (a1 + 40));
  v19[4] = *(a1 + 32);
  [v11 addNewRemotePlanWithAddress:v18 matchingId:v6 oid:0 confirmationCode:v8 isPairing:v12 withCSN:v14 withContext:v16 userConsent:a2 completion:v19];

  objc_destroyWeak(&v20);
}

void __56__NPHBSCellularFauxCardInfoViewController_activatePlan___block_invoke_60(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NPHBSCellularFauxCardInfoViewController_activatePlan___block_invoke_2;
  v5[3] = &unk_278DAC9F0;
  v4 = v3;
  v6 = v4;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  nph_ensure_on_main_queue(v5);
  objc_destroyWeak(&v8);
}

void __56__NPHBSCellularFauxCardInfoViewController_activatePlan___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = nph_general_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[NPHBSCellularFauxCardInfoViewController activatePlan:]_block_invoke_2";
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s - error:%@", &v8, 0x16u);
  }

  if (v2)
  {
    v4 = MEMORY[0x277CCA9B8];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = [WeakRetained subscriptionContext];
    v7 = [v4 NPHCellularSanitizedError:v2 forSubscriptionContext:v6];

    [NPHCellularBridgeUIManager presentCellularError:v7 onViewController:*(a1 + 40)];
  }
}

- (UILabel)enterActivationLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_enterActivationLabel);

  return WeakRetained;
}

- (UITableView)infoTableView
{
  WeakRetained = objc_loadWeakRetained(&self->_infoTableView);

  return WeakRetained;
}

- (NSLayoutConstraint)infoTableViewHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_infoTableViewHeightConstraint);

  return WeakRetained;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

@end