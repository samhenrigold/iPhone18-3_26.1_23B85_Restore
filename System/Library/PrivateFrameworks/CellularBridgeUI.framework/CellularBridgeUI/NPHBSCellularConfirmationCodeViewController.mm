@interface NPHBSCellularConfirmationCodeViewController
- (BOOL)textFieldShouldReturn:(id)return;
- (NPHBSCellularConfirmationCodeViewController)init;
- (NPHBSCellularConfirmationCodeViewControllerDelegate)delegate;
- (NSLayoutConstraint)infoTableViewHeightConstraint;
- (UILabel)confirmationCodeTitleLabel;
- (UITableView)infoTableView;
- (void)confirm:(id)confirm;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NPHBSCellularConfirmationCodeViewController

- (NPHBSCellularConfirmationCodeViewController)init
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[NPHBSCellularConfirmationCodeViewController init]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13.receiver = self;
  v13.super_class = NPHBSCellularConfirmationCodeViewController;
  v5 = [(NPHBSCellularConfirmationCodeViewController *)&v13 initWithNibName:@"NPHBSCellularConfirmationCode" bundle:v4];

  if (v5)
  {
    v6 = [[NPHSetupTableViewCell alloc] initWithTag:0 delegate:v5];
    confirmationCodeCell = v5->_confirmationCodeCell;
    v5->_confirmationCodeCell = v6;

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"NPHCELLULAR_CARD_INFO_CONFIRMATION_CODE_LABEL" value:&stru_285611AE0 table:0];
    textLabel = [(NPHSetupTableViewCell *)v5->_confirmationCodeCell textLabel];
    [textLabel setText:v9];

    editableTextField = [(NPHSetupTableViewCell *)v5->_confirmationCodeCell editableTextField];
    [editableTextField setKeyboardType:2];
  }

  return v5;
}

- (void)viewDidLoad
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[NPHBSCellularConfirmationCodeViewController viewDidLoad]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = NPHBSCellularConfirmationCodeViewController;
  [(NPHBSCellularConfirmationCodeViewController *)&v9 viewDidLoad];
  v4 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A00]];
  v5 = MEMORY[0x277D74300];
  v6 = [v4 fontDescriptorWithSymbolicTraits:2];
  v7 = [v5 fontWithDescriptor:v6 size:0.0];

  WeakRetained = objc_loadWeakRetained(&self->_confirmationCodeTitleLabel);
  [WeakRetained setFont:v7];
}

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = NPHBSCellularConfirmationCodeViewController;
  [(NPHBSCellularConfirmationCodeViewController *)&v12 viewDidAppear:appear];
  v4 = objc_alloc(MEMORY[0x277D751E0]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"NPHCELLULAR_CARD_INFO_NEXT" value:&stru_285611AE0 table:0];
  v7 = [v4 initWithTitle:v6 style:2 target:self action:sel_confirm_];

  navigationController = [(NPHBSCellularConfirmationCodeViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  topItem = [navigationBar topItem];
  [topItem setRightBarButtonItem:v7];
  editableTextField = [(NPHSetupTableViewCell *)self->_confirmationCodeCell editableTextField];
  [editableTextField becomeFirstResponder];
}

- (void)viewDidLayoutSubviews
{
  WeakRetained = objc_loadWeakRetained(&self->_infoTableView);
  [(NPHBSCellularConfirmationCodeViewController *)self tableView:WeakRetained heightForRowAtIndexPath:0];
  v5 = v4;

  v6 = objc_loadWeakRetained(&self->_infoTableViewHeightConstraint);
  [v6 setConstant:v5 + -0.5];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  [return resignFirstResponder];
  [(NPHBSCellularConfirmationCodeViewController *)self confirm:0];
  return 1;
}

- (void)confirm:(id)confirm
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = nph_general_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    editableTextField = [(NPHSetupTableViewCell *)self->_confirmationCodeCell editableTextField];
    text = [editableTextField text];
    v11 = 136315394;
    v12 = "[NPHBSCellularConfirmationCodeViewController confirm:]";
    v13 = 2112;
    v14 = text;
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s confirmation code:%@", &v11, 0x16u);
  }

  presentingViewController = [(NPHBSCellularConfirmationCodeViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  delegate = [(NPHBSCellularConfirmationCodeViewController *)self delegate];
  editableTextField2 = [(NPHSetupTableViewCell *)self->_confirmationCodeCell editableTextField];
  text2 = [editableTextField2 text];
  [delegate cellularConfirmationCodeViewController:self confirmedWithCode:text2];
}

- (NPHBSCellularConfirmationCodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UILabel)confirmationCodeTitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_confirmationCodeTitleLabel);

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

@end