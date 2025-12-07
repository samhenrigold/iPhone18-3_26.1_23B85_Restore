@interface CNFRegSignInController
- (BOOL)passwordIsEmpty;
- (BOOL)usernameIsEmpty;
- (id)getPasswordForSpecifier:(id)specifier;
- (id)getUserNameForSpecifier:(id)specifier;
- (id)passwordTextField;
- (id)specifierList;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)usernameTextField;
- (id)validationString;
- (void)__userTappedTextField;
- (void)_buildCreateAccountButtonSpecifierCache:(id)cache;
- (void)_buildCredentialSpecifierCache:(id)cache;
- (void)_buildSignInGroupSpecifierCache:(id)cache;
- (void)_buildSpecifierCache:(id)cache;
- (void)_finishSignInWithAccount:(id)account animated:(BOOL)animated;
- (void)_handleTimeout;
- (void)_incrementSigninFailureCount;
- (void)_launchForgotPasswordUrl;
- (void)_layoutLearnMoreButton;
- (void)_loadRegionsIfNecessary;
- (void)_resignFirstResponders;
- (void)_returnKeyPressed;
- (void)_setFieldsEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)_setupAppearBlockForAccountAuthorizeWithAuthID:(id)d token:(id)token;
- (void)_setupAppearBlockForNewPasswordWithAppleID:(id)d;
- (void)_setupEventHandlers;
- (void)_showAccountNotAuthorizedSheetWithAuthID:(id)d token:(id)token;
- (void)_showNewPasswordNeededSheetWithAppleID:(id)d;
- (void)_showRegistrationFailureWithError:(id)error;
- (void)_showSigninFailureAlert;
- (void)_updateControllerState;
- (void)_updateUI;
- (void)applicationDidResume;
- (void)cancelButtonTapped;
- (void)createAccountControllerDidFinish:(id)finish withAppleId:(id)id authID:(id)d authToken:(id)token;
- (void)dealloc;
- (void)forgotIDButtonTapped;
- (void)learnMorePressed:(id)pressed;
- (void)loadView;
- (void)passwordFieldEmptyStateChanged:(id)changed forSpecifier:(id)specifier;
- (void)setCreateAccountButtonEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setHideLearnMoreButton:(BOOL)button;
- (void)setPasswordEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setPasswordText:(id)text;
- (void)setSignInButtonEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setSpecifier:(id)specifier;
- (void)setUsernameEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setUsernameText:(id)text;
- (void)showCreateAccountController;
- (void)signInTapped:(id)tapped;
- (void)signInWithUsername:(id)username password:(id)password;
- (void)systemApplicationDidEnterBackground;
- (void)systemApplicationWillEnterForeground;
- (void)usernameFieldEmptyStateChanged:(id)changed forSpecifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CNFRegSignInController

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNFRegSignInController;
  [(CNFRegFirstRunController *)&v4 dealloc];
}

- (id)specifierList
{
  v68 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.super.super.isa + v68);
  if (!v3)
  {
    v4 = _os_feature_enabled_impl();
    regController = [(CNFRegListController *)self regController];
    [regController refreshSystemAccount];

    regController2 = [(CNFRegListController *)self regController];
    hasSystemAccount = [regController2 hasSystemAccount];

    if (hasSystemAccount)
    {
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "We have a system account available, using it", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      self->_useSystemAccount = 1;
    }

    v9 = CNFRegLoadSpecifiersFromPlist(self, @"CNFRegSignIn", self);
    v10 = [v9 specifierForID:@"FACETIME_SIGNIN_USERNAME_ID"];
    v11 = CommunicationsSetupUIBundle();
    v12 = CNFRegStringTableName();
    if (v4)
    {
      v13 = @"FACETIME_USERNAME_DESCRIPTION_LABEL_APPLEACCOUNT";
    }

    else
    {
      v13 = @"FACETIME_USERNAME_DESCRIPTION_LABEL";
    }

    if (v4)
    {
      v14 = @"FACETIME_SIGNIN_FORGOT_BUTTON_LABEL_APPLEACCOUNT";
    }

    else
    {
      v14 = @"FACETIME_SIGNIN_FORGOT_BUTTON_LABEL";
    }

    v15 = [v11 localizedStringForKey:v13 value:&stru_2856D3978 table:v12];
    [v10 setName:v15];

    v16 = [v9 specifierForID:@"FACETIME_SIGNIN_PASSWORD_ID"];
    v17 = CommunicationsSetupUIBundle();
    v18 = CNFRegStringTableName();
    v19 = [v17 localizedStringForKey:@"FACETIME_PASSWORD_DESCRIPTION_LABEL" value:&stru_2856D3978 table:v18];
    [v16 setName:v19];

    v20 = [v9 specifierForID:@"FACETIME_SIGNIN_BUTTON_GROUP_ID"];
    v21 = CommunicationsSetupUIBundle();
    v22 = CNFRegStringTableName();
    v23 = [v21 localizedStringForKey:v14 value:&stru_2856D3978 table:v22];

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v66 = *MEMORY[0x277D3FF48];
    [v20 setProperty:v25 forKey:?];

    v65 = *MEMORY[0x277D3FF70];
    [v20 setProperty:v23 forKey:?];
    v26 = CNFRegiForgotURL();
    v64 = *MEMORY[0x277D3FF78];
    [v20 setProperty:v26 forKey:?];

    v67 = v23;
    v71.length = [v23 length];
    v71.location = 0;
    v27 = NSStringFromRange(v71);
    v63 = *MEMORY[0x277D3FF58];
    [v20 setProperty:v27 forKey:?];

    v28 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    v62 = *MEMORY[0x277D3FF68];
    [v20 setProperty:v28 forKey:?];

    regController3 = [(CNFRegListController *)self regController];
    if ([regController3 hasSystemAccount])
    {
      v30 = 1;
    }

    else
    {
      regController4 = [(CNFRegListController *)self regController];
      guessedAccountName = [regController4 guessedAccountName];
      v30 = guessedAccountName != 0;
    }

    v33 = [v9 specifierForID:@"FACETIME_SIGNIN_CREATE_ACCOUNT_ID"];
    if (((v33 != 0) & v4) == 1)
    {
      v34 = CommunicationsSetupUIBundle();
      v35 = CNFRegStringTableName();
      [v34 localizedStringForKey:@"FACETIME_SIGNIN_CREATE_ACCOUNT_BUTTON_LABEL_APPLEACCOUNT" value:&stru_2856D3978 table:v35];
      v37 = v36 = v4;

      [v33 setProperty:v37 forKey:*MEMORY[0x277D40170]];
      [v33 setName:v37];

      v4 = v36;
    }

    v38 = [v9 specifierForID:@"FACETIME_SIGNIN_CREATE_ACCOUNT_GROUP_ID"];
    if (v30)
    {
      [v9 removeObject:v38];

      v38 = [v9 specifierForID:@"FACETIME_SIGNIN_CREATE_ACCOUNT_ID"];
      [v9 removeObject:v38];
    }

    else
    {
      CommunicationsSetupUIBundle();
      v61 = v33;
      v40 = v39 = v4;
      v41 = CNFRegStringTableName();
      v42 = [v40 localizedStringForKey:@"FACETIME_SIGNIN_CREATE_ACCOUNT_FOOTER_LEARN_MORE" value:&stru_2856D3978 table:v41];

      v43 = MEMORY[0x277CCACA8];
      v44 = CommunicationsSetupUIBundle();
      v45 = CNFRegStringTableName();
      if (v39)
      {
        v46 = @"FACETIME_SIGNIN_CREATE_ACCOUNT_FOOTER_FORMAT_APPLEACCOUNT";
      }

      else
      {
        v46 = @"FACETIME_SIGNIN_CREATE_ACCOUNT_FOOTER_FORMAT";
      }

      v47 = [v44 localizedStringForKey:v46 value:&stru_2856D3978 table:v45];
      v48 = [v43 stringWithFormat:v47, v42];

      v33 = v61;
      v49 = [v48 rangeOfString:v42];
      v51 = v50;
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      [v38 setProperty:v53 forKey:v66];

      [v38 setProperty:v48 forKey:v65];
      v54 = CNFRegAppleIDLearnMoreURL();
      [v38 setProperty:v54 forKey:v64];

      v72.location = v49;
      v72.length = v51;
      v55 = NSStringFromRange(v72);
      [v38 setProperty:v55 forKey:v63];

      v56 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [v38 setProperty:v56 forKey:v62];
    }

    [(CNFRegSignInController *)self _buildSpecifierCache:v9];
    presentingViewController = [(CNFRegSignInController *)self presentingViewController];
    if (presentingViewController)
    {
      createAccountButtonSpecifier = self->_createAccountButtonSpecifier;

      if (createAccountButtonSpecifier)
      {
        *(self->_createAccountButtonSpecifier + *MEMORY[0x277D3FC90]) = 2;
      }
    }

    v59 = *(&self->super.super.super.super.super.super.super.isa + v68);
    *(&self->super.super.super.super.super.super.super.isa + v68) = v9;

    [(CNFRegFirstRunController *)self _stopValidationModeAnimated:0];
    v3 = *(&self->super.super.super.super.super.super.super.isa + v68);
  }

  return v3;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = CNFRegSignInController;
  [(CNFRegListController *)&v3 loadView];
  [(CNFRegSignInController *)self _layoutLearnMoreButton];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CNFRegSignInController;
  [(CNFRegSignInController *)&v4 viewDidLoad];
  table = [(CNFRegSignInController *)self table];
  [table setShowsVerticalScrollIndicator:0];
}

- (void)setHideLearnMoreButton:(BOOL)button
{
  if (self->_hideLearnMoreButton != button)
  {
    self->_hideLearnMoreButton = button;
    if ([(CNFRegSignInController *)self isViewLoaded])
    {

      [(CNFRegSignInController *)self _layoutLearnMoreButton];
    }
  }
}

- (void)_layoutLearnMoreButton
{
  learnMoreButton = self->_learnMoreButton;
  if (learnMoreButton)
  {
    if (self->_hideLearnMoreButton)
    {
      [(CNFRegLearnMoreButton *)learnMoreButton removeTarget:self forEvents:64];
      [(CNFRegLearnMoreButton *)self->_learnMoreButton removeFromSuperview];
      view = self->_learnMoreButton;
      self->_learnMoreButton = 0;
LABEL_6:
    }
  }

  else if (!self->_hideLearnMoreButton)
  {
    v5 = [CNFRegLearnMoreButton alloc];
    v6 = [(CNFRegLearnMoreButton *)v5 initWithFrame:0 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v7 = self->_learnMoreButton;
    self->_learnMoreButton = v6;

    [(CNFRegLearnMoreButton *)self->_learnMoreButton setAutoresizingMask:13];
    [(CNFRegLearnMoreButton *)self->_learnMoreButton addTarget:self action:sel_learnMorePressed_ forEvents:64];
    view = [(CNFRegSignInController *)self view];
    [view addSubview:self->_learnMoreButton];
    goto LABEL_6;
  }

  if (!self->_hideLearnMoreButton && self->_learnMoreButton)
  {
    view2 = [(CNFRegSignInController *)self view];
    [view2 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [(CNFRegLearnMoreButton *)self->_learnMoreButton sizeToFit];
    v22.origin.x = v10;
    v22.origin.y = v12;
    v22.size.width = v14;
    v22.size.height = v16;
    MidX = CGRectGetMidX(v22);
    v23.origin.x = v10;
    v23.origin.y = v12;
    v23.size.width = v14;
    v23.size.height = v16;
    MaxY = CGRectGetMaxY(v23);
    [(CNFRegLearnMoreButton *)self->_learnMoreButton bounds];
    v19 = MaxY + CGRectGetHeight(v24) * -0.5 + -17.0;
    v20 = self->_learnMoreButton;

    [(CNFRegLearnMoreButton *)v20 setCenter:MidX, v19];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CNFRegSignInController;
  [(CNFRegFirstRunController *)&v4 viewWillAppear:appear];
  [(CNFRegSignInController *)self _updateUI];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CNFRegSignInController;
  [(CNFRegFirstRunController *)&v4 viewDidAppear:appear];
  [(CNFRegSignInController *)self _updateUI];
  [(CNFRegListController *)self _showWiFiAlertIfNecessary];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CNFRegSignInController;
  [(CNFRegFirstRunController *)&v4 viewWillDisappear:disappear];
  [(CNFRegSignInController *)self _resignFirstResponders];
}

- (void)setSpecifier:(id)specifier
{
  v11 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v8.receiver = self;
  v8.super_class = CNFRegSignInController;
  [(CNFRegFirstRunController *)&v8 setSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"cnf-hideLearnMoreButton"];
  if (v5)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Setting hide learn more button to : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v7 = v5;
      IMLogString();
    }

    -[CNFRegSignInController setHideLearnMoreButton:](self, "setHideLearnMoreButton:", [v5 BOOLValue]);
  }
}

- (void)systemApplicationWillEnterForeground
{
  v3.receiver = self;
  v3.super_class = CNFRegSignInController;
  [(CNFRegFirstRunController *)&v3 systemApplicationWillEnterForeground];
  [(CNFRegSignInController *)self _updateUI];
}

- (void)systemApplicationDidEnterBackground
{
  v2.receiver = self;
  v2.super_class = CNFRegSignInController;
  [(CNFRegFirstRunController *)&v2 systemApplicationDidEnterBackground];
}

- (void)applicationDidResume
{
  account = [(CNFRegFirstRunController *)self account];

  if (!account)
  {
    regController = [(CNFRegListController *)self regController];
    accounts = [regController accounts];
    firstObject = [accounts firstObject];
    [(CNFRegFirstRunController *)self setAccount:firstObject];
  }

  [(CNFRegSignInController *)self _updateControllerState];
}

- (id)validationString
{
  v2 = CommunicationsSetupUIBundle();
  v3 = CNFRegStringTableName();
  v4 = [v2 localizedStringForKey:@"SIGNING_IN" value:&stru_2856D3978 table:v3];

  return v4;
}

- (void)_resignFirstResponders
{
  usernameTextField = [(CNFRegSignInController *)self usernameTextField];
  passwordTextField = [(CNFRegSignInController *)self passwordTextField];
  if ([usernameTextField isFirstResponder])
  {
    [usernameTextField resignFirstResponder];
  }

  if ([passwordTextField isFirstResponder])
  {
    [passwordTextField resignFirstResponder];
  }
}

- (id)getUserNameForSpecifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  if (self->_useSystemAccount)
  {
    regController = [(CNFRegListController *)self regController];
    systemAccount = [regController systemAccount];

    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = systemAccount;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Using system account for username field: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v13 = systemAccount;
      IMLogString();
    }

    regController2 = [(CNFRegListController *)self regController];
    pendingUsername = [regController2 loginForAccount:systemAccount];

    if (!pendingUsername || ![pendingUsername length])
    {
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = systemAccount;
        _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "** WARNING ** We are using a system account but it has no login: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }
    }
  }

  else
  {
    pendingUsername = [(CNFRegSignInController *)self pendingUsername];
    if (!pendingUsername)
    {
      regController3 = [(CNFRegListController *)self regController];
      pendingUsername = [regController3 guessedAccountName];
    }
  }

  return pendingUsername;
}

- (id)getPasswordForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_useSystemAccount)
  {
    regController = [(CNFRegListController *)self regController];
    systemAccount = [regController systemAccount];

    regController2 = [(CNFRegListController *)self regController];
    v8 = [regController2 loginForAccount:systemAccount];

    if (v8)
    {
      if ([v8 length])
      {
        pendingPassword = @"•••••••";
      }

      else
      {
        pendingPassword = 0;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  pendingPassword = [(CNFRegSignInController *)self pendingPassword];
  if (pendingPassword)
  {
    goto LABEL_11;
  }

  systemAccount = [(CNFRegSignInController *)self getUserNameForSpecifier:specifierCopy];
  regController3 = [(CNFRegListController *)self regController];
  v8 = [regController3 accountWithLogin:systemAccount];

  if (!v8)
  {
LABEL_9:
    pendingPassword = 0;
    goto LABEL_10;
  }

  pendingPassword = [v8 password];
LABEL_10:

LABEL_11:

  return pendingPassword;
}

- (id)usernameTextField
{
  v2 = [(CNFRegSignInController *)self cachedCellForSpecifier:self->_usernameSpecifier];
  editableTextField = [v2 editableTextField];

  return editableTextField;
}

- (void)setUsernameText:(id)text
{
  usernameSpecifier = self->_usernameSpecifier;
  textCopy = text;
  v7 = [(CNFRegSignInController *)self cachedCellForSpecifier:usernameSpecifier];
  editableTextField = [v7 editableTextField];
  [editableTextField setText:textCopy];

  if (objc_opt_respondsToSelector())
  {
    [v7 textFieldChangedExternally];
  }
}

- (BOOL)usernameIsEmpty
{
  usernameTextField = [(CNFRegSignInController *)self usernameTextField];

  if (!usernameTextField)
  {
    text = [(CNFRegSignInController *)self getUserNameForSpecifier:self->_usernameSpecifier];
    if (text)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  usernameTextField2 = [(CNFRegSignInController *)self usernameTextField];
  text = [usernameTextField2 text];

  if (!text)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [text length] == 0;
LABEL_6:

  return v6;
}

- (id)passwordTextField
{
  v2 = [(CNFRegSignInController *)self cachedCellForSpecifier:self->_passwordSpecifier];
  editableTextField = [v2 editableTextField];

  return editableTextField;
}

- (void)setPasswordText:(id)text
{
  passwordSpecifier = self->_passwordSpecifier;
  textCopy = text;
  v7 = [(CNFRegSignInController *)self cachedCellForSpecifier:passwordSpecifier];
  editableTextField = [v7 editableTextField];
  [editableTextField setText:textCopy];

  if (objc_opt_respondsToSelector())
  {
    [v7 textFieldChangedExternally];
  }
}

- (BOOL)passwordIsEmpty
{
  passwordTextField = [(CNFRegSignInController *)self passwordTextField];

  if (!passwordTextField)
  {
    text = [(CNFRegSignInController *)self getPasswordForSpecifier:self->_passwordSpecifier];
    if (text)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  passwordTextField2 = [(CNFRegSignInController *)self passwordTextField];
  text = [passwordTextField2 text];

  if (!text)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [text length] == 0;
LABEL_6:

  return v6;
}

- (void)usernameFieldEmptyStateChanged:(id)changed forSpecifier:(id)specifier
{
  v5 = ([changed BOOLValue] & 1) == 0 && !-[CNFRegSignInController passwordIsEmpty](self, "passwordIsEmpty");

  [(CNFRegSignInController *)self setSignInButtonEnabled:v5 animated:1];
}

- (void)passwordFieldEmptyStateChanged:(id)changed forSpecifier:(id)specifier
{
  v5 = ([changed BOOLValue] & 1) == 0 && !-[CNFRegSignInController usernameIsEmpty](self, "usernameIsEmpty");

  [(CNFRegSignInController *)self setSignInButtonEnabled:v5 animated:1];
}

- (void)__userTappedTextField
{
  if (self->_useSystemAccount)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "User tapped a text field and we were using a system account, clearing password and going to normal mode", v5, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    self->_useSystemAccount = 0;
    passwordTextField = [(CNFRegSignInController *)self passwordTextField];
    [passwordTextField setClearsOnBeginEditing:0];

    [(CNFRegSignInController *)self setPasswordText:0];
  }
}

- (void)showCreateAccountController
{
  if (![(CNFRegListController *)self _showWiFiAlertIfNecessary])
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Show create account controller", v14, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    [(CNFRegListController *)self setShowingChildController:1];
    [(CNFRegSignInController *)self _resignFirstResponders];
    v4 = [CNFRegCreateAccountController alloc];
    regController = [(CNFRegListController *)self regController];
    v6 = [(CNFRegAccountWebViewController *)v4 initWithRegController:regController];

    [(CNFRegCreateAccountController *)v6 setDelegate:self];
    [(CNFRegCreateAccountController *)v6 setEdgesForExtendedLayout:0];
    v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
    v8 = +[CNFRegAppearanceController globalAppearanceController];
    [v7 setModalPresentationStyle:{objc_msgSend(v8, "modalPresentationStyle")}];
    navigationBarStyle = [v8 navigationBarStyle];
    navigationBar = [v7 navigationBar];
    [navigationBar setBarStyle:navigationBarStyle];

    navigationBarIsTranslucent = [v8 navigationBarIsTranslucent];
    navigationBar2 = [v7 navigationBar];
    [navigationBar2 setTranslucent:navigationBarIsTranslucent];

    navigationController = [(CNFRegSignInController *)self navigationController];
    [navigationController presentViewController:v7 animated:1 completion:0];
  }
}

- (void)forgotIDButtonTapped
{
  if (![(CNFRegListController *)self _showWiFiAlertIfNecessary])
  {

    [(CNFRegSignInController *)self _launchForgotPasswordUrl];
  }
}

- (void)createAccountControllerDidFinish:(id)finish withAppleId:(id)id authID:(id)d authToken:(id)token
{
  v34 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  idCopy = id;
  dCopy = d;
  tokenCopy = token;
  if (idCopy)
  {
    [(CNFRegSignInController *)self setUsernameText:idCopy];
    v14 = 0;
    if (dCopy && tokenCopy)
    {
      [(CNFRegSignInController *)self setPasswordText:0];
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __88__CNFRegSignInController_createAccountControllerDidFinish_withAppleId_authID_authToken___block_invoke;
  v25[3] = &unk_278DE81E0;
  v15 = finishCopy;
  v26 = v15;
  selfCopy = self;
  [(CNFRegFirstRunController *)self _executeDismissBlock:v25];
  if (v14)
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v29 = idCopy;
      v30 = 2112;
      v31 = dCopy;
      v32 = 2112;
      v33 = tokenCopy;
      _os_log_impl(&dword_243BE5000, v16, OS_LOG_TYPE_DEFAULT, "Signing in with username (new account): %@  profileID: %@ token: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v19 = dCopy;
      v20 = tokenCopy;
      v18 = idCopy;
      IMLogString();
    }

    [(CNFRegSignInController *)self setPendingUsername:idCopy, v18, v19, v20];
    [(CNFRegSignInController *)self setPendingPassword:0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __88__CNFRegSignInController_createAccountControllerDidFinish_withAppleId_authID_authToken___block_invoke_167;
    v21[3] = &unk_278DE8668;
    v21[4] = self;
    v22 = idCopy;
    v23 = dCopy;
    v24 = tokenCopy;
    v17 = MEMORY[0x245D4D850](v21);
    if ([(CNFRegListController *)self appeared])
    {
      v17[2](v17);
    }

    else
    {
      [(CNFRegListController *)self setAppearBlock:v17];
    }
  }
}

uint64_t __88__CNFRegSignInController_createAccountControllerDidFinish_withAppleId_authID_authToken___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:0];
  v2 = *(a1 + 40);

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

uint64_t __88__CNFRegSignInController_createAccountControllerDidFinish_withAppleId_authID_authToken___block_invoke_167(uint64_t a1)
{
  v5 = 0;
  [*(a1 + 32) _startValidationModeAnimated:0];
  v2 = [*(a1 + 32) regController];
  v3 = [v2 beginAccountSetupWithLogin:*(a1 + 40) authID:*(a1 + 48) authToken:*(a1 + 56) regionInfo:0 foundExisting:&v5];
  [*(a1 + 32) setAccount:v3];

  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) _resetSigninFailureCount];
  }

  [*(a1 + 32) _startTimeout];
  return [*(a1 + 32) _loadRegionsIfNecessary];
}

- (void)_updateUI
{
  if (!self->super._showingActivityIndicator)
  {
    v3 = ![(CNFRegSignInController *)self passwordIsEmpty]&& ![(CNFRegSignInController *)self usernameIsEmpty];
    [(CNFRegSignInController *)self setSignInButtonEnabled:v3 animated:0];
  }

  [(CNFRegSignInController *)self _layoutLearnMoreButton];
}

- (void)_updateControllerState
{
  v19.receiver = self;
  v19.super_class = CNFRegSignInController;
  [(CNFRegFirstRunController *)&v19 _updateControllerState];
  regController = [(CNFRegListController *)self regController];
  account = [(CNFRegFirstRunController *)self account];
  v5 = [regController accountStateForAccount:account];

  if (v5)
  {
    navigationController = [(CNFRegSignInController *)self navigationController];
    visibleViewController = [navigationController visibleViewController];

    if ((v5 & 2) != 0)
    {
      if ((v5 & 4) != 0)
      {
        v18 = [(CNFRegFirstRunController *)self pushCompletionControllerIfPossible]|| [(CNFRegFirstRunController *)self dismissWithState:v5];
        CNFAssert(v18, 7, @"Finished signin but no action was taken", v13, v14, v15, v16, v17, v19.receiver);
        goto LABEL_13;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = CNFRegEmailController;
        goto LABEL_8;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = CNFRegLocaleController;
LABEL_8:
        v9 = [v8 alloc];
        account2 = [(CNFRegFirstRunController *)self account];
        v11 = [v9 initWithParentController:self account:account2];

        [v11 setCompletionControllerClass:{-[CNFRegFirstRunController completionControllerClass](self, "completionControllerClass")}];
        delegate = [(CNFRegFirstRunController *)self delegate];
        [v11 setDelegate:delegate];

        [(CNFRegSignInController *)self showController:v11 animate:1];
      }
    }

LABEL_13:
  }
}

- (void)_setFieldsEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  v8.receiver = self;
  v8.super_class = CNFRegSignInController;
  [CNFRegListController _setFieldsEnabled:sel__setFieldsEnabled_animated_ animated:?];
  [(CNFRegSignInController *)self setUsernameEnabled:enabledCopy animated:animatedCopy];
  [(CNFRegSignInController *)self setPasswordEnabled:enabledCopy animated:animatedCopy];
  [(CNFRegSignInController *)self setCreateAccountButtonEnabled:enabledCopy animated:animatedCopy];
  v7 = enabledCopy && ![(CNFRegSignInController *)self passwordIsEmpty]&& ![(CNFRegSignInController *)self usernameIsEmpty];
  [(CNFRegSignInController *)self setSignInButtonEnabled:v7 animated:animatedCopy];
}

- (void)_finishSignInWithAccount:(id)account animated:(BOOL)animated
{
  [(CNFRegFirstRunController *)self _stopValidationModeAnimated:1, animated];

  [(CNFRegSignInController *)self _updateControllerState];
}

- (void)_returnKeyPressed
{
  if (![(CNFRegSignInController *)self usernameIsEmpty])
  {
    if ([(CNFRegSignInController *)self passwordIsEmpty])
    {
      usernameTextField = [(CNFRegSignInController *)self usernameTextField];
      isFirstResponder = [usernameTextField isFirstResponder];

      if (isFirstResponder)
      {
        passwordTextField = [(CNFRegSignInController *)self passwordTextField];
        [passwordTextField becomeFirstResponder];
      }
    }

    else
    {
      signInButtonSpecifier = self->_signInButtonSpecifier;

      [(CNFRegSignInController *)self signInTapped:signInButtonSpecifier];
    }
  }
}

- (void)signInWithUsername:(id)username password:(id)password
{
  v14 = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  passwordCopy = password;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = usernameCopy;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Signing in with username (password entered): %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v11 = usernameCopy;
    IMLogString();
  }

  [(CNFRegSignInController *)self setPendingUsername:usernameCopy, v11];
  [(CNFRegSignInController *)self setPendingPassword:passwordCopy];
  [(CNFRegFirstRunController *)self _startValidationModeAnimated:0];
  buf[0] = 0;
  regController = [(CNFRegListController *)self regController];
  v10 = [regController beginAccountSetupWithLogin:usernameCopy password:passwordCopy foundExisting:buf];
  [(CNFRegFirstRunController *)self setAccount:v10];

  if ((buf[0] & 1) == 0)
  {
    [(CNFRegSignInController *)self _resetSigninFailureCount];
  }

  [(CNFRegSignInController *)self _startTimeout];
  [(CNFRegSignInController *)self _loadRegionsIfNecessary];
}

- (void)signInTapped:(id)tapped
{
  v26 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "signInTapped", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  if (![(CNFRegListController *)self _showWiFiAlertIfNecessary])
  {
    if (!self->_useSystemAccount)
    {
      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      usernameTextField = [(CNFRegSignInController *)self usernameTextField];
      text = [usernameTextField text];

      regController3 = [text stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      passwordTextField = [(CNFRegSignInController *)self passwordTextField];
      text2 = [passwordTextField text];

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __39__CNFRegSignInController_signInTapped___block_invoke;
      v23[3] = &unk_278DE8A98;
      v23[4] = self;
      v13 = MEMORY[0x245D4D850](v23);
      if (regController3 && [regController3 length])
      {
        if (text2 && [text2 length])
        {
          v14 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = regController3;
            _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "Signing in with username (password entered): %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            v22 = regController3;
            IMLogString();
          }

          [(CNFRegSignInController *)self setPendingUsername:regController3, v22];
          [(CNFRegSignInController *)self setPendingPassword:text2];
          [(CNFRegFirstRunController *)self _startValidationModeAnimated:0];
          buf[0] = 0;
          regController = [(CNFRegListController *)self regController];
          v16 = [regController beginAccountSetupWithLogin:regController3 password:text2 foundExisting:buf];
          [(CNFRegFirstRunController *)self setAccount:v16];

          if ((buf[0] & 1) == 0)
          {
            [(CNFRegSignInController *)self _resetSigninFailureCount];
          }

          goto LABEL_10;
        }

        v20 = MEMORY[0x277CCACA8];
        v17 = CommunicationsSetupUIBundle();
        v18 = CNFRegStringTableName();
        v19 = [v17 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_INVALID_CREDENTIALS_FOR_%@" value:&stru_2856D3978 table:v18];
        v21 = [v20 stringWithFormat:v19, regController3];
        (v13)[2](v13, v21);
      }

      else
      {
        v17 = CommunicationsSetupUIBundle();
        v18 = CNFRegStringTableName();
        v19 = [v17 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_BLANK_USERNAME" value:&stru_2856D3978 table:v18];
        (v13)[2](v13, v19);
      }

      goto LABEL_26;
    }

    regController2 = [(CNFRegListController *)self regController];
    whitespaceCharacterSet = [regController2 systemAccount];

    if (whitespaceCharacterSet)
    {
      [(CNFRegFirstRunController *)self _startValidationModeAnimated:0];
      regController3 = [(CNFRegListController *)self regController];
      text2 = [regController3 beginAccountSetupWithAccount:whitespaceCharacterSet];
      [(CNFRegFirstRunController *)self setAccount:text2];
LABEL_10:

      [(CNFRegSignInController *)self _startTimeout];
      [(CNFRegSignInController *)self _loadRegionsIfNecessary];
    }
  }

LABEL_26:
}

void __39__CNFRegSignInController_signInTapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CommunicationsSetupUIBundle();
  v5 = CNFRegStringTableName();
  v11 = [v4 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v5];

  v6 = CommunicationsSetupUIBundle();
  v7 = CNFRegStringTableName();
  v8 = [v6 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v7];

  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v11 message:v3 preferredStyle:1];

  v10 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:0 handler:0];
  [v9 addAction:v10];

  [*(a1 + 32) presentViewController:v9 animated:1 completion:0];
}

- (void)learnMorePressed:(id)pressed
{
  v3 = *MEMORY[0x277D76620];
  v4 = CNFRegLocalizedSplashScreenURL(self, a2);
  [v3 openURL:v4 withCompletionHandler:0];
}

- (void)_loadRegionsIfNecessary
{
  mEMORY[0x277D07DE8] = [MEMORY[0x277D07DE8] sharedInstance];
  if (([mEMORY[0x277D07DE8] isLoaded] & 1) == 0)
  {
    [mEMORY[0x277D07DE8] startLoading];
  }
}

- (void)_handleTimeout
{
  [(CNFRegFirstRunController *)self _stopValidationModeAnimated:1];
  v3 = CommunicationsSetupUIBundle();
  v4 = CNFRegStringTableName();
  v13 = [v3 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v4];

  v5 = CommunicationsSetupUIBundle();
  v6 = CNFRegStringTableName();
  v7 = [v5 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_TIMEOUT" value:&stru_2856D3978 table:v6];

  v8 = CommunicationsSetupUIBundle();
  v9 = CNFRegStringTableName();
  v10 = [v8 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v9];

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v13 message:v7 preferredStyle:1];
  v12 = [MEMORY[0x277D750F8] actionWithTitle:v10 style:0 handler:0];
  [v11 addAction:v12];

  [(CNFRegSignInController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)cancelButtonTapped
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Cancel button tapped", v7, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  regController = [(CNFRegListController *)self regController];
  accountState = [regController accountState];

  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
  [WeakRetained dismissFinished:(accountState >> 30) & 1];
}

- (void)setUsernameEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (enabledCopy)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Setting username enabled to :%@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = @"NO";
    if (enabledCopy)
    {
      v9 = @"YES";
    }

    v10 = v9;
    IMLogString();
  }

  [(CNFRegListController *)self _setSpecifierEnabled:self->_usernameSpecifier enabled:enabledCopy animated:animatedCopy, v10];
}

- (void)setPasswordEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (enabledCopy)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Setting password enabled to :%@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = @"NO";
    if (enabledCopy)
    {
      v9 = @"YES";
    }

    v10 = v9;
    IMLogString();
  }

  [(CNFRegListController *)self _setSpecifierEnabled:self->_passwordSpecifier enabled:enabledCopy animated:animatedCopy, v10];
}

- (void)setCreateAccountButtonEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (enabledCopy)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Setting account button enabled to :%@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = @"NO";
    if (enabledCopy)
    {
      v9 = @"YES";
    }

    v10 = v9;
    IMLogString();
  }

  [(CNFRegListController *)self _setSpecifierEnabled:self->_createAccountButtonSpecifier enabled:enabledCopy animated:animatedCopy, v10];
}

- (void)setSignInButtonEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (enabledCopy)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Setting signin button enabled to :%@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = @"NO";
    if (enabledCopy)
    {
      v9 = @"YES";
    }

    v10 = v9;
    IMLogString();
  }

  [(CNFRegListController *)self _setSpecifierEnabled:self->_signInButtonSpecifier enabled:enabledCopy animated:animatedCopy, v10];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = CNFRegSignInController;
  v5 = [(CNFRegSignInController *)&v9 tableView:view cellForRowAtIndexPath:path];
  v6 = [(CNFRegSignInController *)self cachedCellForSpecifierID:@"FACETIME_SIGNIN_PASSWORD_ID"];

  if (v5 == v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    textField = [v5 textField];
    if ([textField conformsToProtocol:&unk_285730F48])
    {
      [textField setReturnKeyType:1];
    }

    if (self->_useSystemAccount)
    {
      [textField setClearsOnBeginEditing:1];
    }
  }

  return v5;
}

- (void)_buildCreateAccountButtonSpecifierCache:(id)cache
{
  self->_createAccountButtonSpecifier = [cache specifierForID:@"FACETIME_SIGNIN_CREATE_ACCOUNT_ID"];

  MEMORY[0x2821F96F8]();
}

- (void)_buildSignInGroupSpecifierCache:(id)cache
{
  cacheCopy = cache;
  v5 = [cacheCopy specifierForID:@"FACETIME_SIGNIN_BUTTON_GROUP_ID"];
  actionGroupSpecifier = self->_actionGroupSpecifier;
  self->_actionGroupSpecifier = v5;

  v7 = [cacheCopy specifierForID:@"FACETIME_SIGNIN_BUTTON_ID"];

  signInButtonSpecifier = self->_signInButtonSpecifier;
  self->_signInButtonSpecifier = v7;
}

- (void)_buildCredentialSpecifierCache:(id)cache
{
  cacheCopy = cache;
  v5 = [cacheCopy specifierForID:@"FACETIME_SIGNIN_USERNAME_ID"];
  usernameSpecifier = self->_usernameSpecifier;
  self->_usernameSpecifier = v5;

  v7 = [cacheCopy specifierForID:@"FACETIME_SIGNIN_PASSWORD_ID"];

  passwordSpecifier = self->_passwordSpecifier;
  self->_passwordSpecifier = v7;
}

- (void)_buildSpecifierCache:(id)cache
{
  cacheCopy = cache;
  [(CNFRegSignInController *)self _buildCreateAccountButtonSpecifierCache:cacheCopy];
  [(CNFRegSignInController *)self _buildSignInGroupSpecifierCache:cacheCopy];
  [(CNFRegSignInController *)self _buildCredentialSpecifierCache:cacheCopy];
}

- (void)_showRegistrationFailureWithError:(id)error
{
  v41 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = errorCopy;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Received sign in error : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v34 = errorCopy;
      IMLogString();
    }

    code = [errorCopy code];
  }

  else
  {
    code = -1;
  }

  regController = [(CNFRegListController *)self regController];
  v8 = [regController shouldShowAlertForError:errorCopy];

  if (v8 && (code > 0x1A || ((1 << code) & 0x4100C00) == 0))
  {
    userInfo = [errorCopy userInfo];
    v10 = [userInfo objectForKey:@"cnf-customTitle"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v13 = CommunicationsSetupUIBundle();
      v14 = CNFRegStringTableName();
      v12 = [v13 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v14];
    }

    localizedDescription = [errorCopy localizedDescription];
    v16 = localizedDescription;
    if (localizedDescription)
    {
      v17 = localizedDescription;
    }

    else
    {
      v18 = CommunicationsSetupUIBundle();
      v19 = CNFRegStringTableName();
      v17 = [v18 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_GENERIC" value:&stru_2856D3978 table:v19];
    }

    userInfo2 = [errorCopy userInfo];
    v21 = [userInfo2 objectForKey:@"cnf-customButton"];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v24 = CommunicationsSetupUIBundle();
      v25 = CNFRegStringTableName();
      v23 = [v24 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v25];
    }

    v26 = [MEMORY[0x277D75110] alertControllerWithTitle:v12 message:v17 preferredStyle:1];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __60__CNFRegSignInController__showRegistrationFailureWithError___block_invoke;
    v38[3] = &unk_278DE8AC0;
    v38[4] = self;
    v38[5] = code;
    v27 = [MEMORY[0x277D750F8] actionWithTitle:v23 style:0 handler:v38];
    [v26 addAction:v27];

    userInfo3 = [errorCopy userInfo];
    v29 = [userInfo3 objectForKey:@"cnf-customActionTitle"];

    if (v29)
    {
      v30 = MEMORY[0x277D750F8];
      userInfo4 = [errorCopy userInfo];
      v32 = [userInfo4 objectForKey:@"cnf-customActionTitle"];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __60__CNFRegSignInController__showRegistrationFailureWithError___block_invoke_2;
      v35[3] = &unk_278DE8420;
      v36 = errorCopy;
      selfCopy = self;
      v33 = [v30 actionWithTitle:v32 style:0 handler:v35];
      [v26 addAction:v33];
    }

    [(CNFRegSignInController *)self presentViewController:v26 animated:1 completion:0];
  }
}

id *__60__CNFRegSignInController__showRegistrationFailureWithError___block_invoke(id *result)
{
  if (result[5] == 3)
  {
    v1 = result;
    [result[4] _incrementSigninFailureCount];
    result = [v1[4] signinFailureCount];
    if (result >= 3)
    {
      v2 = v1[4];

      return [v2 _showSigninFailureAlert];
    }
  }

  return result;
}

void __60__CNFRegSignInController__showRegistrationFailureWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKey:@"cnf-customActionURLString"];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    if (v6)
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Launching URL : %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        v9 = v6;
        IMLogString();
      }

      v8 = [*(a1 + 40) regController];
      [v8 openURL:v6];
    }
  }
}

- (void)_showSigninFailureAlert
{
  v3 = _os_feature_enabled_impl();
  v4 = CommunicationsSetupUIBundle();
  v5 = CNFRegStringTableName();
  if (v3)
  {
    v6 = @"FACETIME_FORGOT_PASSWORD_ALERT_TITLE_APPLEACCOUNT";
  }

  else
  {
    v6 = @"FACETIME_FORGOT_PASSWORD_ALERT_TITLE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_2856D3978 table:v5];

  v8 = CommunicationsSetupUIBundle();
  v9 = CNFRegStringTableName();
  v10 = [v8 localizedStringForKey:@"FACETIME_FORGOT_PASSWORD_ALERT_MESSAGE" value:&stru_2856D3978 table:v9];

  v11 = CommunicationsSetupUIBundle();
  v12 = CNFRegStringTableName();
  v13 = [v11 localizedStringForKey:@"FACETIME_ALERT_CANCEL" value:&stru_2856D3978 table:v12];

  v14 = CommunicationsSetupUIBundle();
  v15 = CNFRegStringTableName();
  v16 = [v14 localizedStringForKey:@"FACETIME_FORGOT_PASSWORD_ALERT_OK" value:&stru_2856D3978 table:v15];

  v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v10 preferredStyle:1];
  v18 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:1 handler:0];
  [v17 addAction:v18];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __49__CNFRegSignInController__showSigninFailureAlert__block_invoke;
  v20[3] = &unk_278DE8328;
  v20[4] = self;
  v19 = [MEMORY[0x277D750F8] actionWithTitle:v16 style:0 handler:v20];
  [v17 addAction:v19];

  [(CNFRegSignInController *)self presentViewController:v17 animated:1 completion:0];
}

- (void)_incrementSigninFailureCount
{
  if ([(CNFRegSignInController *)self signinFailureCount]!= -1)
  {
    v3 = [(CNFRegSignInController *)self signinFailureCount]+ 1;

    [(CNFRegSignInController *)self setSigninFailureCount:v3];
  }
}

- (void)_launchForgotPasswordUrl
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v2 = CNFRegiForgotURL();
  [mEMORY[0x277D75128] openURL:v2 withCompletionHandler:0];
}

- (void)_showNewPasswordNeededSheetWithAppleID:(id)d
{
  dCopy = d;
  v5 = [CNFRegChangeAccountPasswordController alloc];
  regController = [(CNFRegListController *)self regController];
  v14 = [(CNFRegChangeAccountPasswordController *)v5 initWithRegController:regController appleID:dCopy];

  [(CNFRegChangeAccountPasswordController *)v14 setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v14];
  v8 = +[CNFRegAppearanceController globalAppearanceController];
  [v7 setModalPresentationStyle:{objc_msgSend(v8, "modalPresentationStyle")}];
  navigationBarStyle = [v8 navigationBarStyle];
  navigationBar = [v7 navigationBar];
  [navigationBar setBarStyle:navigationBarStyle];

  navigationBarIsTranslucent = [v8 navigationBarIsTranslucent];
  navigationBar2 = [v7 navigationBar];
  [navigationBar2 setTranslucent:navigationBarIsTranslucent];

  navigationController = [(CNFRegSignInController *)self navigationController];
  [navigationController presentViewController:v7 animated:1 completion:0];
}

- (void)_setupAppearBlockForNewPasswordWithAppleID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__CNFRegSignInController__setupAppearBlockForNewPasswordWithAppleID___block_invoke;
  v6[3] = &unk_278DE8AE8;
  objc_copyWeak(&v8, &location);
  v5 = dCopy;
  v7 = v5;
  [(CNFRegListController *)self setAppearBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __69__CNFRegSignInController__setupAppearBlockForNewPasswordWithAppleID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showNewPasswordNeededSheetWithAppleID:*(a1 + 32)];
}

- (void)_showAccountNotAuthorizedSheetWithAuthID:(id)d token:(id)token
{
  tokenCopy = token;
  dCopy = d;
  v8 = [CNFRegAccountAuthorizationController alloc];
  regController = [(CNFRegListController *)self regController];
  v17 = [(CNFRegAccountAuthorizationController *)v8 initWithRegController:regController authID:dCopy token:tokenCopy];

  [(CNFRegAccountAuthorizationController *)v17 setDelegate:self];
  v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v17];
  v11 = +[CNFRegAppearanceController globalAppearanceController];
  [v10 setModalPresentationStyle:{objc_msgSend(v11, "modalPresentationStyle")}];
  navigationBarStyle = [v11 navigationBarStyle];
  navigationBar = [v10 navigationBar];
  [navigationBar setBarStyle:navigationBarStyle];

  navigationBarIsTranslucent = [v11 navigationBarIsTranslucent];
  navigationBar2 = [v10 navigationBar];
  [navigationBar2 setTranslucent:navigationBarIsTranslucent];

  navigationController = [(CNFRegSignInController *)self navigationController];
  [navigationController presentViewController:v10 animated:1 completion:0];
}

- (void)_setupAppearBlockForAccountAuthorizeWithAuthID:(id)d token:(id)token
{
  dCopy = d;
  tokenCopy = token;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__CNFRegSignInController__setupAppearBlockForAccountAuthorizeWithAuthID_token___block_invoke;
  v10[3] = &unk_278DE8B10;
  objc_copyWeak(&v13, &location);
  v8 = dCopy;
  v11 = v8;
  v9 = tokenCopy;
  v12 = v9;
  [(CNFRegListController *)self setAppearBlock:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __79__CNFRegSignInController__setupAppearBlockForAccountAuthorizeWithAuthID_token___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _showAccountNotAuthorizedSheetWithAuthID:*(a1 + 32) token:*(a1 + 40)];
}

- (void)_setupEventHandlers
{
  v5.receiver = self;
  v5.super_class = CNFRegSignInController;
  [(CNFRegFirstRunController *)&v5 _setupEventHandlers];
  regController = [(CNFRegListController *)self regController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__CNFRegSignInController__setupEventHandlers__block_invoke;
  v4[3] = &unk_278DE85A8;
  v4[4] = self;
  [regController setAccountRegistrationBlock:v4];
}

void __45__CNFRegSignInController__setupEventHandlers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 registrationStatus];
  v7 = [*(a1 + 32) account];

  if (v7 == v8)
  {
    if ((v6 - 3) >= 3)
    {
      if (v6 == -1)
      {
        [*(a1 + 32) _stopTimeout];
        if (([*(a1 + 32) timedOut] & 1) == 0)
        {
          [*(a1 + 32) _showRegistrationFailureWithError:v5];
          [*(a1 + 32) _stopValidationModeAnimated:1];
        }
      }
    }

    else
    {
      [*(a1 + 32) _stopTimeout];
      [*(a1 + 32) _resetSigninFailureCount];
      [*(a1 + 32) _finishSignInWithAccount:v8 animated:1];
    }
  }
}

@end