@interface AAUIAppleAccountViewController
+ (BOOL)_isSplitView;
- (AAUIAppleAccountViewController)init;
- (BOOL)_activeFaceTimeCall;
- (BOOL)_handleAuthKitURLWithPendingDictionary:(id)dictionary;
- (BOOL)_handleDeeplinkBySpecifierProviderWithAction:(id)action pendingDictionary:(id)dictionary;
- (BOOL)_handleDeeplinkWithAction:(id)action pendingDictionary:(id)dictionary;
- (BOOL)_isBeneficiaryAccount;
- (BOOL)_isDemoAccount;
- (BOOL)_isEnabledForAccount:(id)account;
- (BOOL)_isPasswordRequiredToValidateAppleAccount:(id)account;
- (BOOL)_isRestoringFromiCloud;
- (BOOL)_isSingleAccount;
- (BOOL)_setupForNetworkActivity;
- (BOOL)_shouldShowDeleteAccountButton;
- (BOOL)_shouldShowStoreSettings;
- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response;
- (BOOL)shouldShowRecoveryContactUpsellTip;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (id)_RUITableViewSectionForDevice:(id)device inPage:(id)page delegate:(id)delegate;
- (id)_accountAutoVerifier;
- (id)_accountForService:(id)service matchingAltDSID:(id)d DSID:(id)iD;
- (id)_activeAccount;
- (id)_appleAccount;
- (id)_authController;
- (id)_backupStatusString;
- (id)_cloudSpecifierForAccount:(id)account;
- (id)_deviceSpecificLocalizedStringKey:(id)key;
- (id)_familySpecifierProvider;
- (id)_fmipStatusString;
- (id)_gameCenterAccount;
- (id)_grandSlamAccount;
- (id)_grandSlamSigner;
- (id)_headerViewController;
- (id)_loadRemoteRequest:(id)request withIdentifier:(id)identifier preparation:(id)preparation completion:(id)completion;
- (id)_messageForError:(id)error account:(id)account;
- (id)_passcodeValueFromPage:(id)page withFieldIdentifier:(id)identifier;
- (id)_paymentSpecifierProvider;
- (id)_personNameComponents;
- (id)_personNameComponentsForAccountCollection:(id)collection;
- (id)_profilePictureStore;
- (id)_recoveryContactUpsellViewController;
- (id)_shouldRestrictSignoutMessage;
- (id)_siwaSpecifierForAccount:(id)account;
- (id)_specifiersForAccountGroup;
- (id)_specifiersForDevicesGroup;
- (id)_specifiersForFamily;
- (id)_specifiersForFollowupGroup;
- (id)_specifiersForServicesGroup;
- (id)_specifiersForSignoutGroup;
- (id)_specifiersForStore;
- (id)_storeAccount;
- (id)_storeSpecifier;
- (id)_storeSpecifierForAccount:(id)account;
- (id)_storeSpecifierProvider;
- (id)_titleForError:(id)error account:(id)account;
- (id)_valueForCloudSpecifier:(id)specifier;
- (id)_valueForPaymentSpecifier:(id)specifier;
- (id)_valueForServiceSpecifier:(id)specifier;
- (id)accountsForAccountManager:(id)manager;
- (id)remoteUIController:(id)controller createPageWithName:(id)name attributes:(id)attributes;
- (id)specifierForID:(id)d;
- (id)specifiers;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (unint64_t)_reloadOptionsForChangesFromAccounts:(id)accounts toAccounts:(id)toAccounts;
- (void)_accountEmailBecameVerified;
- (void)_addHeadersToRequest:(id)request;
- (void)_attemptSignInForServiceType:(id)type;
- (void)_attemptUpdateAuthControllerWithActionableResponse:(id)response;
- (void)_autoVerifyAccount;
- (void)_beginObservingCallStatusChanges;
- (void)_beginObservingEmailVerificationStatus;
- (void)_beginObservingProfilePictureStoreDidChangeNotification;
- (void)_beginObservingiCloudRestoreStatus;
- (void)_beginValidationForAccount:(id)account;
- (void)_checkNetworkReachabilityAndValidateAccount;
- (void)_cleanupFromNetworkActivity;
- (void)_clearCachedSpecifierValues;
- (void)_cloudSpecifierWasTapped:(id)tapped;
- (void)_contactSpecifierWasTapped:(id)tapped;
- (void)_deleteButtonTapped:(id)tapped;
- (void)_deviceLocatorStateDidChange:(id)change;
- (void)_didFinishSecondaryAuthentication;
- (void)_enableAllProvisionedDataclasses;
- (void)_forgetSpecifiers;
- (void)_generateLoginCode;
- (void)_getServerUILoadDelegateWithCompletion:(id)completion;
- (void)_handleAccountAutoVerificationCompletionWithSuccess:(BOOL)success error:(id)error;
- (void)_handleAccountBeneficiaryURL:(id)l;
- (void)_handleAccountRecoveryURL:(id)l;
- (void)_handleAccountRegistrationCompletionWithResult:(BOOL)result error:(id)error;
- (void)_handleAccountRevalidationCompletionWithValidatedAccount:(id)account success:(BOOL)success error:(id)error;
- (void)_handleAuthActionURL:(id)l;
- (void)_handleAuthkitFollowUpServerUI:(id)i;
- (void)_handleCDPActionURL:(id)l;
- (void)_handleChangePasswordActionURL:(id)l;
- (void)_handleOONAddressVettingActionURL:(id)l;
- (void)_handleObjectModelChangeForController:(id)controller objectModel:(id)model isModal:(BOOL)modal;
- (void)_handlePaymentMethodSummaryResponse:(id)response;
- (void)_handleResourcesDictionaryDidChange:(id)change;
- (void)_handleSecondaryAuthenticationResponse:(id)response baseURL:(id)l completion:(id)completion;
- (void)_handleUpgradeSecurityLevelActionURL:(id)l;
- (void)_handleiForgotActionURL:(id)l;
- (void)_imageControlTapped;
- (void)_issueFindMyiPhonePromptWithTitle:(id)title andMessage:(id)message;
- (void)_layoutHeader;
- (void)_layoutTableHeaderView;
- (void)_loadCloudKitSettingsBundleIfNeeded;
- (void)_loadCloudStorageSummary;
- (void)_loadPaymentMethodSummary;
- (void)_loadRemoteRequest:(id)request withIdentifier:(id)identifier specifier:(id)specifier;
- (void)_paymentSpecifierWasTapped:(id)tapped;
- (void)_performNetworkValidation;
- (void)_postCDPRepairFollowUp;
- (void)_presentFirstAlertIfNecessary;
- (void)_presentValidationErrorAlert:(id)alert account:(id)account;
- (void)_profilePictureStoreDidChange:(id)change;
- (void)_promptForAccountSignOutAppleAccount:(id)account storeAccount:(id)storeAccount completion:(id)completion;
- (void)_promptUserToEnableFindMyiPhoneIfPossible;
- (void)_pushSecondaryAuthenticationRemoteUI:(id)i baseURL:(id)l withCompletion:(id)completion;
- (void)_reachabilityChanged:(BOOL)changed;
- (void)_refreshAppleIDSettingsTokensWithCompletion:(id)completion;
- (void)_registerAccount;
- (void)_reloadSignoutGroupSpecifiersForName:(id)name;
- (void)_requestSecondaryAuthenticationIfNecessaryWithGSToken:(id)token completion:(id)completion;
- (void)_retryRequest:(id)request inRemoteUIController:(id)controller completion:(id)completion;
- (void)_revalidateAccount;
- (void)_securitySpecifierWasTapped:(id)tapped;
- (void)_setSignOutInProgressForAppleAccount:(id)account;
- (void)_setSignOutNotInProgressForAppleAccount:(id)account;
- (void)_setupAppleAccountHeader;
- (void)_setupHeader;
- (void)_setupNavigationBarButtons;
- (void)_showAccountDetailsUnavailableAlert;
- (void)_showAlertWithTitle:(id)title message:(id)message;
- (void)_showGenericTermsUI;
- (void)_siwaSpecifierWasTapped:(id)tapped;
- (void)_startMonitoringReachability;
- (void)_startObservingAccountStoreChanges;
- (void)_startObservingDeviceLocatorStateChanges;
- (void)_startObservingPresentCustodianSetupNotification;
- (void)_startObservingQuotaChangeNotifications;
- (void)_startObservingRCUpsellTipDismissedNotification;
- (void)_startSpinnerInSpecifier:(id)specifier;
- (void)_stopMonitoringReachability;
- (void)_stopObservingCallStatusChanges;
- (void)_stopObservingDeviceLocatorStateChanges;
- (void)_stopObservingPresentCustodianSetupNotification;
- (void)_stopObservingProfilePictureStoreDidChangeNotification;
- (void)_stopObservingQuotaChangeNotifications;
- (void)_stopObservingRCUpsellTipDismissedNotification;
- (void)_stopSpinnerInActiveSpecifier;
- (void)_storeSpecifierWasTapped:(id)tapped;
- (void)_subscriptionsSpecifierWasTapped:(id)tapped;
- (void)_updateLocalAccountInformationFromClientInfo:(id)info;
- (void)custodianSetupFlowControllerRecoveryContactInviteSent;
- (void)dealloc;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)endUpdates;
- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)insertSpecifier:(id)specifier afterSpecifierNamed:(id)named animated:(BOOL)animated;
- (void)operationsHelper:(id)helper didSaveAccount:(id)account withSuccess:(BOOL)success error:(id)error;
- (void)operationsHelper:(id)helper willSaveAccount:(id)account;
- (void)presentCustodianSetupFlow:(id)flow;
- (void)refreshDetailTextForTableCellWithTag:(int64_t)tag;
- (void)reloadSpecifierForProvider:(id)provider identifier:(id)identifier;
- (void)reloadSpecifiersForProvider:(id)provider oldSpecifiers:(id)specifiers animated:(BOOL)animated;
- (void)remoteUIController:(id)controller didDismissModalNavigationWithObjectModels:(id)models;
- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response;
- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal;
- (void)remoteUIController:(id)controller didRefreshObjectModel:(id)model;
- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController;
- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)remoteUIControllerDidDismiss:(id)dismiss;
- (void)setDeferredURL:(id)l;
- (void)setSpecifier:(id)specifier;
- (void)signInController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)signInControllerDidCancel:(id)cancel;
- (void)specifierProvider:(id)provider didFinishLoadingSpecifier:(id)specifier;
- (void)specifierProvider:(id)provider showViewController:(id)controller;
- (void)specifierProvider:(id)provider willBeginLoadingSpecifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation AAUIAppleAccountViewController

- (void)dealloc
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController dealloc", buf, 2u);
  }

  [(AAUIAppleAccountViewController *)self _stopObservingiCloudRestoreStatus];
  [(NSMutableDictionary *)self->_objectModelDecorators removeAllObjects];
  [(AAUIAppleAccountViewController *)self _stopObservingDeviceLocatorStateChanges];
  [(AAUIAppleAccountViewController *)self _stopObservingEmailVerificationStatus];
  [(AAUIAppleAccountViewController *)self _stopObservingAccountStoreChanges];
  [(AAUIAppleAccountViewController *)self _stopObservingProfilePictureStoreDidChangeNotification];
  [(AAUIAppleAccountViewController *)self _stopMonitoringReachability];
  [(AAUIAppleAccountViewController *)self _stopObservingPresentCustodianSetupNotification];
  [(AAUIAppleAccountViewController *)self _stopObservingRCUpsellTipDismissedNotification];
  [(AAUIAppleAccountViewController *)self _stopObservingQuotaChangeNotifications];
  [(AAUIAppleAccountViewController *)self _stopObservingCallStatusChanges];
  [(NSOperationQueue *)self->_networkActivityQueue cancelAllOperations];
  [(AAUIAppleAccountViewController *)self na_removeNotificationBlockObserver:self->_resourcesDictionaryObserver];
  resourcesDictionaryObserver = self->_resourcesDictionaryObserver;
  self->_resourcesDictionaryObserver = 0;

  v5.receiver = self;
  v5.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v5 dealloc];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(NSOperationQueue *)self->_networkActivityQueue cancelAllOperations];
  v5.receiver = self;
  v5.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v4 viewWillAppear:appear];
  if (+[AAUIAppleAccountViewController _isSplitView])
  {
    [(AAUIAppleAccountViewController *)self _loadCloudStorageSummary];
  }

  [(AAUIAppleAccountViewController *)self _setupHeader];
}

- (void)willMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v6 willMoveToParentViewController:controller];
  loader = [(AAUIRemoteUIController *)self->_activeRemoteUIController loader];
  [loader cancel];

  [(AAUIRemoteUIController *)self->_activeRemoteUIController setNavigationController:0];
  activeRemoteUIController = self->_activeRemoteUIController;
  self->_activeRemoteUIController = 0;
}

- (id)_deviceSpecificLocalizedStringKey:(id)key
{
  keyCopy = key;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:keyCopy];

  v6 = [v4 localizedStringForKey:v5 value:&stru_5A5F0 table:@"Localizable"];

  return v6;
}

- (AAUIAppleAccountViewController)init
{
  v23.receiver = self;
  v23.super_class = AAUIAppleAccountViewController;
  v2 = [(AAUIAppleAccountViewController *)&v23 init];
  v3 = v2;
  if (v2)
  {
    v2->_allowAccountRevalidation = 1;
    v2->_iCloudRestoreToken = -1;
    v4 = objc_alloc_init(NSMutableDictionary);
    objectModelDecorators = v3->_objectModelDecorators;
    v3->_objectModelDecorators = v4;

    v3->_emailVerificationToken = -1;
    v6 = objc_alloc_init(NSLock);
    accountValidationLock = v3->_accountValidationLock;
    v3->_accountValidationLock = v6;

    [(NSLock *)v3->_accountValidationLock setName:@"AAAccountValidationLock"];
    v8 = +[ACAccountStore defaultStore];
    v9 = [[AIDAServiceOwnersManager alloc] initWithAccountStore:v8];
    serviceOwnersManager = v3->_serviceOwnersManager;
    v3->_serviceOwnersManager = v9;

    v11 = [[AIDAAccountManager alloc] initWithAccountStore:v8];
    accountManager = v3->_accountManager;
    v3->_accountManager = v11;

    [(AIDAAccountManager *)v3->_accountManager setDelegate:v3];
    v13 = +[AAUIDeviceLocatorService sharedInstance];
    deviceLocatorService = v3->_deviceLocatorService;
    v3->_deviceLocatorService = v13;

    [(AAUIAppleAccountViewController *)v3 _startObservingDeviceLocatorStateChanges];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.appleaccountsettings.accountwork", v15);
    accountWorkQueue = v3->_accountWorkQueue;
    v3->_accountWorkQueue = v16;

    v18 = objc_alloc_init(NSOperationQueue);
    networkActivityQueue = v3->_networkActivityQueue;
    v3->_networkActivityQueue = v18;

    v20 = v3->_networkActivityQueue;
    v21 = dispatch_get_global_queue(33, 0);
    [(NSOperationQueue *)v20 setUnderlyingQueue:v21];

    [(AAUIAppleAccountViewController *)v3 _beginObservingiCloudRestoreStatus];
    [(AAUIAppleAccountViewController *)v3 _beginObservingEmailVerificationStatus];
    [(AAUIAppleAccountViewController *)v3 _startObservingAccountStoreChanges];
    [(AAUIAppleAccountViewController *)v3 _startMonitoringReachability];
    if ([(AAUIAppleAccountViewController *)v3 shouldShowRecoveryContactUpsellTip])
    {
      [(AAUIAppleAccountViewController *)v3 _startObservingPresentCustodianSetupNotification];
      [(AAUIAppleAccountViewController *)v3 _startObservingRCUpsellTipDismissedNotification];
    }

    [(AAUIAppleAccountViewController *)v3 _beginObservingCallStatusChanges];
    v3->_shouldIgnoreQuotaCache = 1;
    [(AAUIAppleAccountViewController *)v3 _startObservingQuotaChangeNotifications];
  }

  return v3;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v7 viewDidLoad];
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  v4 = @"APPLEID_TITLE_REBRAND";
  if ([_appleAccount aa_isManagedAppleID] && objc_msgSend(_appleAccount, "aa_isRemotelyManaged"))
  {
    v4 = @"APPLEID_TITLE_MANAGED_REBRAND";
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_5A5F0 table:@"Localizable"];
  [(AAUIAppleAccountViewController *)self setTitle:v6];

  [(AAUIAppleAccountViewController *)self _setupNavigationBarButtons];
}

- (BOOL)shouldShowRecoveryContactUpsellTip
{
  if (!+[AAUIFeatureFlags isRecoveryContactUpsellTipEnabled])
  {
    return 0;
  }

  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.appleaccount"];
  v3 = [v2 valueForKey:@"RecoveryContactUpsellTipAction"];
  v4 = v3 == 0;

  return v4;
}

- (void)_setupNavigationBarButtons
{
  navigationItem = [(AAUIAppleAccountViewController *)self navigationItem];
  if (([(AAUIAppleAccountViewController *)self isPresentedAsModalSheet]& 1) == 0)
  {
    [navigationItem setRightBarButtonItem:0];
  }

  [(AAUIAppleAccountViewController *)self setCancelButton:0];
  [navigationItem setLeftBarButtonItem:0];
  [navigationItem setHidesBackButton:0];
}

- (void)_setupAppleAccountHeader
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_33C90();
  }

  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  _storeAccount = [(AAUIAppleAccountViewController *)self _storeAccount];
  v6 = _storeAccount;
  if (_appleAccount | _storeAccount)
  {
    if (_appleAccount)
    {
      v9 = _appleAccount;
    }

    else
    {
      v9 = _storeAccount;
    }

    v10 = v9;
    _profilePictureStore = [(AAUIAppleAccountViewController *)self _profilePictureStore];
    profilePictureForAccountOwner = [_profilePictureStore profilePictureForAccountOwner];

    aa_formattedUsername = [v10 aa_formattedUsername];

    v13 = [[AAUIAppleAccountHeaderView alloc] initWithLabelInsets:3.0, 24.8013163, 3.0, 24.8013163];
    accountHeaderView = self->_accountHeaderView;
    self->_accountHeaderView = v13;

    [(AAUIAppleAccountHeaderView *)self->_accountHeaderView setDelegate:self];
    imageControl = [(AAUIAppleAccountHeaderView *)self->_accountHeaderView imageControl];
    [imageControl setEnabled:_appleAccount != 0];

    imageControl2 = [(AAUIAppleAccountHeaderView *)self->_accountHeaderView imageControl];
    imageView = [imageControl2 imageView];
    [imageView setImage:profilePictureForAccountOwner];

    accountHeaderLabel = [(AAUIAppleAccountHeaderView *)self->_accountHeaderView accountHeaderLabel];
    _personNameComponents = [(AAUIAppleAccountViewController *)self _personNameComponents];
    v20 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:_personNameComponents style:2 options:0];
    [accountHeaderLabel setText:v20];

    accountHeaderSublabel = [(AAUIAppleAccountHeaderView *)self->_accountHeaderView accountHeaderSublabel];
    [accountHeaderSublabel setText:aa_formattedUsername];

    table = [(AAUIAppleAccountViewController *)self table];
    [table setTableHeaderView:self->_accountHeaderView];

    [(AAUIAppleAccountViewController *)self _layoutTableHeaderView];
  }

  else
  {
    v7 = _AAUILogSystem(_storeAccount);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_33CCC();
    }

    profilePictureForAccountOwner = [(AAUIAppleAccountViewController *)self table];
    [profilePictureForAccountOwner setTableHeaderView:0];
  }
}

- (id)_recoveryContactUpsellViewController
{
  recoveryContactUpsellController = self->_recoveryContactUpsellController;
  if (!recoveryContactUpsellController)
  {
    v4 = +[AAUIRecoveryContactUpsellFactory createRecoveryContactUpsellTipView];
    v5 = self->_recoveryContactUpsellController;
    self->_recoveryContactUpsellController = v4;

    recoveryContactUpsellController = self->_recoveryContactUpsellController;
  }

  return recoveryContactUpsellController;
}

- (id)_headerViewController
{
  headerViewController = self->_headerViewController;
  if (!headerViewController)
  {
    if (self->_meCard)
    {
      _activeAccount = [(AAUIAppleAccountViewController *)self _activeAccount];
      v5 = [AAUIAppleAccountHeaderViewFactory createAppleAccountHeaderViewFromContact:self->_meCard account:_activeAccount showAccountDetails:1 showChangeButton:0];
      v6 = self->_headerViewController;
      self->_headerViewController = v5;

      headerViewController = self->_headerViewController;
    }

    else
    {
      headerViewController = 0;
    }
  }

  return headerViewController;
}

- (void)_setupHeader
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_33D08();
  }

  objc_initWeak(&location, self);
  _profilePictureStore = [(AAUIAppleAccountViewController *)self _profilePictureStore];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1308C;
  v5[3] = &unk_59820;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [_profilePictureStore meCardWithVisualIdentity:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v3 viewWillLayoutSubviews];
  [(AAUIAppleAccountViewController *)self _layoutHeader];
}

- (void)_layoutTableHeaderView
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_33E34();
  }

  table = [(AAUIAppleAccountViewController *)self table];
  tableHeaderView = [table tableHeaderView];

  [tableHeaderView systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v7 = v6;
  table2 = [(AAUIAppleAccountViewController *)self table];
  tableHeaderView2 = [table2 tableHeaderView];
  [tableHeaderView2 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [tableHeaderView setFrame:{v11, v13, v15, v7}];
  [UIView setAnimationsEnabled:0];
  table3 = [(AAUIAppleAccountViewController *)self table];
  [table3 beginUpdates];

  table4 = [(AAUIAppleAccountViewController *)self table];
  [table4 endUpdates];

  [UIView setAnimationsEnabled:1];
}

- (void)_layoutHeader
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_33E70();
  }

  table = [(AAUIAppleAccountViewController *)self table];
  tableHeaderView = [table tableHeaderView];

  [tableHeaderView setNeedsLayout];
  [tableHeaderView layoutIfNeeded];
  [tableHeaderView intrinsicContentSize];
  v7 = v6;
  table2 = [(AAUIAppleAccountViewController *)self table];
  [table2 setSectionHeaderHeight:UITableViewAutomaticDimension];

  table3 = [(AAUIAppleAccountViewController *)self table];
  [table3 setEstimatedSectionHeaderHeight:v7];

  table4 = [(AAUIAppleAccountViewController *)self table];
  tableHeaderView2 = [table4 tableHeaderView];
  [tableHeaderView2 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  if (v19 != v7)
  {
    [tableHeaderView setFrame:{v13, v15, v17, v7}];
  }

  table5 = [(AAUIAppleAccountViewController *)self table];
  [table5 layoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = AAUIAppleAccountViewController;
  coordinatorCopy = coordinator;
  [(AAUIAppleAccountViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_136D0;
  v8[3] = &unk_59888;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:&stru_59860 completion:v8];
}

+ (BOOL)_isSplitView
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == &dword_0 + 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    v3 = [v4 userInterfaceIdiom] == &dword_4 + 2;
  }

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = AAUIAppleAccountViewController;
  v4 = [(AAUIAppleAccountViewController *)&v16 viewDidAppear:appear];
  v5 = _AAUILogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithInt:!self->_appearedBefore];
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController appeared, first time: %@", buf, 0xCu);
  }

  if (!self->_appearedBefore)
  {
    if (self->_shouldAttemptToEnableDataclasses && (-[AAUIAppleAccountViewController _appleAccount](self, "_appleAccount"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 aa_isPrimaryEmailVerified], v12, v13))
    {
      [(AAUIAppleAccountViewController *)self _enableAllProvisionedDataclasses];
    }

    else
    {
      accountOperationsHelper = [(AAUIAppleAccountViewController *)self accountOperationsHelper];
      isRemovingAccount = [accountOperationsHelper isRemovingAccount];

      if ((isRemovingAccount & 1) == 0)
      {
        [(AAUIAppleAccountViewController *)self _presentFirstAlertIfNecessary];
        [(AAUIAppleAccountViewController *)self _checkNetworkReachabilityAndValidateAccount];
      }
    }
  }

  resourcesDictionary = [(AAUIAppleAccountDeferredURL *)self->_deferredURL resourcesDictionary];

  if (resourcesDictionary)
  {
    v9 = _AAUILogSystem(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_33EAC();
    }

    resourcesDictionary2 = [(AAUIAppleAccountDeferredURL *)self->_deferredURL resourcesDictionary];
    v11 = [resourcesDictionary2 copy];

    [(AAUIAppleAccountDeferredURL *)self->_deferredURL setResourcesDictionary:0];
    [(AAUIAppleAccountViewController *)self _handleResourcesDictionaryDidChange:v11];
  }

  self->_appearedBefore = 1;
}

- (id)_appleAccount
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

  return v3;
}

- (id)_storeAccount
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:AIDAServiceTypeStore];

  return v3;
}

- (id)_gameCenterAccount
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:AIDAServiceTypeGameCenter];

  return v3;
}

- (id)_activeAccount
{
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  v4 = _appleAccount;
  if (_appleAccount)
  {
    _storeAccount = _appleAccount;
  }

  else
  {
    _storeAccount = [(AAUIAppleAccountViewController *)self _storeAccount];
  }

  v6 = _storeAccount;

  return v6;
}

- (BOOL)_shouldShowStoreSettings
{
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  if (_appleAccount)
  {
  }

  else
  {
    _storeAccount = [(AAUIAppleAccountViewController *)self _storeAccount];

    if (_storeAccount)
    {
      return 1;
    }
  }

  _appleAccount2 = [(AAUIAppleAccountViewController *)self _appleAccount];
  if (([_appleAccount2 aa_isManagedAppleID] & 1) != 0 || -[AAUIAppleAccountViewController _isBeneficiaryAccount](self, "_isBeneficiaryAccount"))
  {
    v5 = 0;
  }

  else
  {
    _appleAccount3 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v5 = [_appleAccount3 aa_isAccountClass:AAAccountClassPrimary];
  }

  return v5;
}

- (BOOL)_isBeneficiaryAccount
{
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  aa_altDSID = [_appleAccount aa_altDSID];

  if (aa_altDSID)
  {
    v4 = +[AKAccountManager sharedInstance];
    v5 = [v4 authKitAccountWithAltDSID:aa_altDSID];

    v6 = +[AKAccountManager sharedInstance];
    v7 = [v6 isBeneficiaryForAccount:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isDemoAccount
{
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  aa_altDSID = [_appleAccount aa_altDSID];

  if (aa_altDSID)
  {
    v4 = +[AKAccountManager sharedInstance];
    v5 = [v4 authKitAccountWithAltDSID:aa_altDSID];

    v6 = +[AKAccountManager sharedInstance];
    v7 = [v6 demoAccountForAccount:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_grandSlamAccount
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13DE0;
  block[3] = &unk_59680;
  block[4] = self;
  if (self->_grandSlamAccountOnceToken != -1)
  {
    dispatch_once(&self->_grandSlamAccountOnceToken, block);
  }

  return self->_grandSlamAccount;
}

- (id)_grandSlamSigner
{
  grandSlamSigner = self->_grandSlamSigner;
  if (!grandSlamSigner)
  {
    v4 = [AAGrandSlamSigner alloc];
    _accountStore = [(AAUIAppleAccountViewController *)self _accountStore];
    _grandSlamAccount = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
    v7 = [v4 initWithAccountStore:_accountStore grandSlamAccount:_grandSlamAccount appTokenID:AAGrandSlamAppTokenIDiCloudSettings];
    v8 = self->_grandSlamSigner;
    self->_grandSlamSigner = v7;

    grandSlamSigner = self->_grandSlamSigner;
  }

  return grandSlamSigner;
}

- (BOOL)_isSingleAccount
{
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  _storeAccount = [(AAUIAppleAccountViewController *)self _storeAccount];
  v5 = _storeAccount;
  v6 = 1;
  if (_appleAccount && _storeAccount)
  {
    v7 = AIDAServiceTypeCloud;
    v8 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager altDSIDForAccount:_appleAccount service:AIDAServiceTypeCloud];
    v9 = AIDAServiceTypeStore;
    v10 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager altDSIDForAccount:v5 service:AIDAServiceTypeStore];
    v11 = [v8 length];
    if (v11 && (v11 = [v10 length]) != 0)
    {
      v6 = [v8 isEqualToString:v10];
    }

    else
    {
      v12 = _AAUILogSystem(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_33EE8();
      }

      v13 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager DSIDForAccount:_appleAccount service:v7];
      v14 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager DSIDForAccount:v5 service:v9];
      v6 = [v13 isEqualToString:v14];
    }
  }

  return v6;
}

- (id)_personNameComponentsForAccountCollection:(id)collection
{
  collectionCopy = collection;
  v5 = AIDAServiceTypeCloud;
  v6 = [collectionCopy objectForKeyedSubscript:AIDAServiceTypeCloud];
  if (v6)
  {
    v7 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager nameComponentsForAccount:v6 service:v5];
  }

  else
  {
    v8 = AIDAServiceTypeStore;
    v9 = [collectionCopy objectForKeyedSubscript:AIDAServiceTypeStore];
    if (v9)
    {
      v7 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager nameComponentsForAccount:v9 service:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_personNameComponents
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v4 = [(AAUIAppleAccountViewController *)self _personNameComponentsForAccountCollection:accounts];

  return v4;
}

- (id)_profilePictureStore
{
  profilePictureStore = self->_profilePictureStore;
  if (!profilePictureStore)
  {
    v4 = _AAUIPPSLogSystem(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Loading Profile Picture Store", v10, 2u);
    }

    [(AAUIAppleAccountViewController *)self _stopObservingProfilePictureStoreDidChangeNotification];
    v5 = [AAUIProfilePictureStore alloc];
    _grandSlamSigner = [(AAUIAppleAccountViewController *)self _grandSlamSigner];
    v7 = [v5 initWithGrandSlamSigner:_grandSlamSigner];
    v8 = self->_profilePictureStore;
    self->_profilePictureStore = v7;

    [(AAUIProfilePictureStore *)self->_profilePictureStore setPictureDiameter:80.0];
    [(AAUIAppleAccountViewController *)self _beginObservingProfilePictureStoreDidChangeNotification];
    profilePictureStore = self->_profilePictureStore;
  }

  return profilePictureStore;
}

- (id)specifierForID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = AAUIAppleAccountViewController;
  v5 = [(AAUIAppleAccountViewController *)&v8 specifierForID:dCopy];
  if (!v5)
  {
    if ([dCopy isEqualToString:@"SIWA_SERVICE"])
    {
      v7.receiver = self;
      v7.super_class = AAUIAppleAccountViewController;
      v5 = [(AAUIAppleAccountViewController *)&v7 specifierForID:@"PASSWORD_AND_SECURITY"];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = _AAUILogSystem(specifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_33F6C();
  }

  [specifierCopy setName:0];
  v6 = [specifierCopy objectForKeyedSubscript:AAUIAppleAccountDeferredURLKey];
  [(AAUIAppleAccountViewController *)self setDeferredURL:v6];

  v7.receiver = self;
  v7.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v7 setSpecifier:specifierCopy];
}

- (void)setDeferredURL:(id)l
{
  lCopy = l;
  v6 = _AAUILogSystem(lCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_33FA8();
  }

  if (self->_resourcesDictionaryObserver)
  {
    [(AAUIAppleAccountViewController *)self na_removeNotificationBlockObserver:?];
    resourcesDictionaryObserver = self->_resourcesDictionaryObserver;
    self->_resourcesDictionaryObserver = 0;
  }

  objc_storeStrong(&self->_deferredURL, l);
  if (lCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_146F8;
    v10[3] = &unk_598B0;
    v10[4] = self;
    v8 = [(AAUIAppleAccountViewController *)self na_addNotificationBlockObserverForObject:lCopy keyPath:@"resourcesDictionary" options:7 usingBlock:v10];
    v9 = self->_resourcesDictionaryObserver;
    self->_resourcesDictionaryObserver = v8;
  }
}

- (void)_handleResourcesDictionaryDidChange:(id)change
{
  changeCopy = change;
  self->_loadedViaURL = 1;
  v5 = [changeCopy copy];
  cachedResourceDictionary = self->_cachedResourceDictionary;
  self->_cachedResourceDictionary = v5;

  v7 = [changeCopy objectForKeyedSubscript:@"aaaction"];
  v8 = _AAUILogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "_handleResourcesDictionaryDidChange action - %@", &v15, 0xCu);
  }

  v9 = [(AAUIAppleAccountViewController *)self _handleDeeplinkWithAction:v7 pendingDictionary:changeCopy];
  if (v9)
  {
    v10 = _AAUILogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_34100();
    }
  }

  else
  {
    v11 = [(AAUIAppleAccountViewController *)self _handleDeeplinkBySpecifierProviderWithAction:v7 pendingDictionary:changeCopy];
    if (v11)
    {
      v10 = _AAUILogSystem(v11);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_34090();
      }
    }

    else
    {
      v12 = [(AAUIAppleAccountViewController *)self _handleAuthKitURLWithPendingDictionary:changeCopy];
      v13 = v12;
      v14 = _AAUILogSystem(v12);
      v10 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_34054();
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_33FE4();
      }
    }
  }
}

- (BOOL)_handleDeeplinkWithAction:(id)action pendingDictionary:(id)dictionary
{
  actionCopy = action;
  dictionaryCopy = dictionary;
  if ([actionCopy isEqual:@"auth"])
  {
    [(AAUIAppleAccountViewController *)self _handleAuthActionURL:dictionaryCopy];
LABEL_21:
    v9 = 1;
    goto LABEL_22;
  }

  if ([actionCopy isEqual:@"resetPassword"])
  {
    [(AAUIAppleAccountViewController *)self _handleiForgotActionURL:dictionaryCopy];
    goto LABEL_21;
  }

  if ([actionCopy isEqual:@"changePassword"])
  {
    [(AAUIAppleAccountViewController *)self _handleChangePasswordActionURL:dictionaryCopy];
    goto LABEL_21;
  }

  if ([actionCopy isEqual:@"CDP"])
  {
    [(AAUIAppleAccountViewController *)self _handleCDPActionURL:dictionaryCopy];
    goto LABEL_21;
  }

  if ([actionCopy isEqual:@"accountRecovery"])
  {
    [(AAUIAppleAccountViewController *)self _handleAccountRecoveryURL:dictionaryCopy];
    goto LABEL_21;
  }

  if ([actionCopy isEqual:@"accountBeneficiary"])
  {
    [(AAUIAppleAccountViewController *)self _handleAccountBeneficiaryURL:dictionaryCopy];
    goto LABEL_21;
  }

  if ([actionCopy isEqual:@"accountContactDetails"])
  {
    [(AAUIAppleAccountViewController *)self _contactSpecifierWasTapped:0];
    goto LABEL_21;
  }

  if ([actionCopy isEqualToString:@"IDMSUrl"])
  {
    [(AAUIAppleAccountViewController *)self _handleAuthkitFollowUpServerUI:dictionaryCopy];
    goto LABEL_21;
  }

  if ([actionCopy isEqual:@"oonAddressVetting"])
  {
    [(AAUIAppleAccountViewController *)self _handleOONAddressVettingActionURL:dictionaryCopy];
    goto LABEL_21;
  }

  v8 = [actionCopy isEqual:@"upgradeSecurityLevel"];
  if (v8)
  {
    [(AAUIAppleAccountViewController *)self _handleUpgradeSecurityLevelActionURL:dictionaryCopy];
    goto LABEL_21;
  }

  v11 = _AAUILogSystem(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_34170();
  }

  v9 = 0;
LABEL_22:

  return v9;
}

- (BOOL)_handleDeeplinkBySpecifierProviderWithAction:(id)action pendingDictionary:(id)dictionary
{
  actionCopy = action;
  dictionaryCopy = dictionary;
  _familySpecifierProvider = [(AAUIAppleAccountViewController *)self _familySpecifierProvider];
  v9 = [_familySpecifierProvider handleURL:dictionaryCopy];

  if (v9)
  {
    v11 = _AAUILogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = actionCopy;
      v12 = "AAUIAppleAccountViewController Family specifier provider handled: %@";
LABEL_10:
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v12, &v20, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v13 = [(AAUISpecifierProvider *)self->_dmcReauthSpecifierProvider handleURL:dictionaryCopy];
  if (v13)
  {
    v11 = _AAUILogSystem(v13);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = actionCopy;
      v12 = "AAUIAppleAccountViewController DMC Reauth specifier provider handled: %@";
      goto LABEL_10;
    }

LABEL_11:
    v17 = 1;
    goto LABEL_12;
  }

  _storeSpecifierProvider = [(AAUIAppleAccountViewController *)self _storeSpecifierProvider];
  v15 = [_storeSpecifierProvider handleURL:dictionaryCopy];

  if (v15)
  {
    v11 = _AAUILogSystem(v16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = actionCopy;
      v12 = "SKAccountPageSpecifierProvider specifier provider handled: %@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  tuiOptInSpecifierProvider = self->_tuiOptInSpecifierProvider;
  if (tuiOptInSpecifierProvider)
  {
    tuiOptInSpecifierProvider = objc_opt_respondsToSelector();
    if (tuiOptInSpecifierProvider)
    {
      tuiOptInSpecifierProvider = [(AAUISpecifierProvider *)self->_tuiOptInSpecifierProvider handleURL:dictionaryCopy];
      if (tuiOptInSpecifierProvider)
      {
        v11 = _AAUILogSystem(tuiOptInSpecifierProvider);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        v20 = 138412290;
        v21 = actionCopy;
        v12 = "TUIOptInSpecifierProvider specifier provider handled: %@";
        goto LABEL_10;
      }
    }
  }

  v11 = _AAUILogSystem(tuiOptInSpecifierProvider);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_341E0();
  }

  v17 = 0;
LABEL_12:

  return v17;
}

- (BOOL)_handleAuthKitURLWithPendingDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"notifyAuthKit"];

  if (v5)
  {
    v6 = objc_alloc_init(AAUIAuthKitURLHandler);
    v7 = _AAUILogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_34250(dictionaryCopy);
    }

    [(AAUIAuthKitURLHandler *)v6 handleAuthKitURLWithResourceDictionary:dictionaryCopy presentingViewController:self];
  }

  return v5 != 0;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (*&self->ACUIAccountConfigurationViewController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    goto LABEL_26;
  }

  v4 = _AAUILogSystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController is loading specifiers.", &buf, 2u);
  }

  userInfo = [*&self->ACUIAccountConfigurationViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v6 = objc_alloc_init(NSMutableArray);
  _specifiersForFollowupGroup = [(AAUIAppleAccountViewController *)self _specifiersForFollowupGroup];
  [v6 addObjectsFromArray:_specifiersForFollowupGroup];

  dmcReauthSpecifierProvider = self->_dmcReauthSpecifierProvider;
  if (!dmcReauthSpecifierProvider)
  {
    v9 = [[DMCReauthSpecifierProvider alloc] initWithAccountManager:self->_accountManager presenter:self];
    v10 = self->_dmcReauthSpecifierProvider;
    self->_dmcReauthSpecifierProvider = v9;

    [(AAUISpecifierProvider *)self->_dmcReauthSpecifierProvider setDelegate:self];
    dmcReauthSpecifierProvider = self->_dmcReauthSpecifierProvider;
  }

  specifiers = [(AAUISpecifierProvider *)dmcReauthSpecifierProvider specifiers];
  [v6 addObjectsFromArray:specifiers];

  if (![(AAUIAppleAccountViewController *)self _isBeneficiaryAccount])
  {
    _specifiersForAccountGroup = [(AAUIAppleAccountViewController *)self _specifiersForAccountGroup];
    [v6 addObjectsFromArray:_specifiersForAccountGroup];
  }

  mdmDetailsSpecifierProvider = self->_mdmDetailsSpecifierProvider;
  if (!mdmDetailsSpecifierProvider)
  {
    v14 = [[DMCMDMDetailsSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
    v15 = self->_mdmDetailsSpecifierProvider;
    self->_mdmDetailsSpecifierProvider = v14;

    [(AAUISpecifierProvider *)self->_mdmDetailsSpecifierProvider setDelegate:self];
    mdmDetailsSpecifierProvider = self->_mdmDetailsSpecifierProvider;
  }

  specifiers2 = [(AAUISpecifierProvider *)mdmDetailsSpecifierProvider specifiers];
  [v6 addObjectsFromArray:specifiers2];

  _specifiersForServicesGroup = [(AAUIAppleAccountViewController *)self _specifiersForServicesGroup];
  [v6 addObjectsFromArray:_specifiersForServicesGroup];

  if (![(AAUIAppleAccountViewController *)self _isBeneficiaryAccount])
  {
    _specifiersForDevicesGroup = [(AAUIAppleAccountViewController *)self _specifiersForDevicesGroup];
    [v6 addObjectsFromArray:_specifiersForDevicesGroup];
  }

  if (_os_feature_enabled_impl() && ![(AAUIAppleAccountViewController *)self _isDemoAccount]&& ![(AAUIAppleAccountViewController *)self _isBeneficiaryAccount])
  {
    _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
    if (![_appleAccount aa_isAccountClass:AAAccountClassPrimary])
    {
LABEL_22:

      goto LABEL_23;
    }

    _appleAccount2 = [(AAUIAppleAccountViewController *)self _appleAccount];
    aa_isManagedAppleID = [_appleAccount2 aa_isManagedAppleID];

    if ((aa_isManagedAppleID & 1) == 0)
    {
      tuiOptInSpecifierProvider = self->_tuiOptInSpecifierProvider;
      if (!tuiOptInSpecifierProvider)
      {
        v38 = 0;
        v39 = &v38;
        v40 = 0x2050000000;
        v23 = qword_6A208;
        v41 = qword_6A208;
        if (!qword_6A208)
        {
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v43 = sub_28CC4;
          v44 = &unk_59380;
          v45 = &v38;
          sub_28CC4(&buf);
          v23 = v39[3];
        }

        v24 = v23;
        _Block_object_dispose(&v38, 8);
        v25 = [v23 alloc];
        v26 = [v25 initWithAccountManager:{self->_accountManager, v38}];
        v27 = self->_tuiOptInSpecifierProvider;
        self->_tuiOptInSpecifierProvider = v26;

        [(AAUISpecifierProvider *)self->_tuiOptInSpecifierProvider setDelegate:self];
        tuiOptInSpecifierProvider = self->_tuiOptInSpecifierProvider;
      }

      _appleAccount = [(AAUISpecifierProvider *)tuiOptInSpecifierProvider specifiers];
      [v6 addObjectsFromArray:_appleAccount];
      goto LABEL_22;
    }
  }

LABEL_23:
  managedAccountsSpecifierProvider = self->_managedAccountsSpecifierProvider;
  if (!managedAccountsSpecifierProvider)
  {
    v29 = [[DMCManagedAccountsSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
    v30 = self->_managedAccountsSpecifierProvider;
    self->_managedAccountsSpecifierProvider = v29;

    [(AAUISpecifierProvider *)self->_managedAccountsSpecifierProvider setDelegate:self];
    managedAccountsSpecifierProvider = self->_managedAccountsSpecifierProvider;
  }

  specifiers3 = [(AAUISpecifierProvider *)managedAccountsSpecifierProvider specifiers];
  [v6 addObjectsFromArray:specifiers3];

  _specifiersForSignoutGroup = [(AAUIAppleAccountViewController *)self _specifiersForSignoutGroup];
  [v6 addObjectsFromArray:_specifiersForSignoutGroup];

  v33 = *&self->ACUIAccountConfigurationViewController_opaque[v3];
  *&self->ACUIAccountConfigurationViewController_opaque[v3] = v6;

LABEL_26:
  v34 = _AAUILogSystem(self);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = *&self->ACUIAccountConfigurationViewController_opaque[v3];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v35;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController specifiers: returning %@", &buf, 0xCu);
  }

  v36 = *&self->ACUIAccountConfigurationViewController_opaque[v3];

  return v36;
}

- (void)_forgetSpecifiers
{
  userInfoForSpecifiers = self->_userInfoForSpecifiers;
  self->_userInfoForSpecifiers = 0;

  followupGroupSpecifiers = self->_followupGroupSpecifiers;
  self->_followupGroupSpecifiers = 0;

  accountGroupSpecifiers = self->_accountGroupSpecifiers;
  self->_accountGroupSpecifiers = 0;

  servicesGroupSpecifiers = self->_servicesGroupSpecifiers;
  self->_servicesGroupSpecifiers = 0;

  storeSpecifier = self->_storeSpecifier;
  self->_storeSpecifier = 0;

  [(AAUIDeviceSpecifierProvider *)self->_deviceSpecifierProvider setSpecifiers:0];
  signoutGroupSpecifiers = self->_signoutGroupSpecifiers;
  self->_signoutGroupSpecifiers = 0;

  [(AAUISpecifierProvider *)self->_familySpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_dmcReauthSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_mdmDetailsSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_mdmSignoutSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_managedAccountsSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_paymentSpecifierProvider setSpecifiers:0];
  fmfSpecifierProvider = self->_fmfSpecifierProvider;

  [(AAUISpecifierProvider *)fmfSpecifierProvider setSpecifiers:0];
}

- (void)_clearCachedSpecifierValues
{
  [(AAUIDeviceSpecifierProvider *)self->_deviceSpecifierProvider refreshDeviceList];
  [(AAUISpecifierProvider *)self->_familySpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_dmcReauthSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_mdmDetailsSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_mdmSignoutSpecifierProvider setSpecifiers:0];
  managedAccountsSpecifierProvider = self->_managedAccountsSpecifierProvider;
  self->_managedAccountsSpecifierProvider = 0;

  [(AAUISpecifierProvider *)self->_paymentSpecifierProvider setSpecifiers:0];
  fmfSpecifierProvider = self->_fmfSpecifierProvider;

  [(AAUISpecifierProvider *)fmfSpecifierProvider setSpecifiers:0];
}

- (id)_specifiersForFollowupGroup
{
  followupGroupSpecifiers = self->_followupGroupSpecifiers;
  self->_followupGroupSpecifiers = 0;

  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  v5 = [_appleAccount aa_isAccountClass:AAAccountClassPrimary];

  if (v5)
  {
    followUpController = self->_followUpController;
    if (!followUpController)
    {
      v7 = objc_alloc_init(FLPreferencesController);
      v8 = self->_followUpController;
      self->_followUpController = v7;

      [(FLPreferencesController *)self->_followUpController setListViewController:self];
      objc_initWeak(&location, self);
      v9 = self->_followUpController;
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_15740;
      v20 = &unk_59540;
      objc_copyWeak(&v21, &location);
      [(FLPreferencesController *)v9 setItemChangeObserver:&v17];
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
      followUpController = self->_followUpController;
    }

    v10 = [(FLPreferencesController *)followUpController spyglassSpecifiers:v17];
    if ([v10 count])
    {
      v11 = objc_alloc_init(NSMutableArray);
      v12 = self->_followupGroupSpecifiers;
      self->_followupGroupSpecifiers = v11;

      v13 = self->_followupGroupSpecifiers;
      v14 = [PSSpecifier groupSpecifierWithID:@"FOLLOWUP_GROUP"];
      [(NSMutableArray *)v13 addObject:v14];

      [(NSMutableArray *)self->_followupGroupSpecifiers addObjectsFromArray:v10];
    }
  }

  v15 = self->_followupGroupSpecifiers;

  return v15;
}

- (id)_specifiersForAccountGroup
{
  if (!self->_accountGroupSpecifiers)
  {
    v3 = objc_alloc_init(NSMutableArray);
    accountGroupSpecifiers = self->_accountGroupSpecifiers;
    self->_accountGroupSpecifiers = v3;

    if ([(AAUIAppleAccountViewController *)self shouldShowRecoveryContactUpsellTip])
    {
      v5 = [PSSpecifier groupSpecifierWithID:@"PERSONAL_INFORMATION_GROUP"];
      [(NSMutableArray *)self->_accountGroupSpecifiers addObject:v5];
      _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
      aa_isManagedAppleID = [_appleAccount aa_isManagedAppleID];

      v8 = [AAUISpyglassSpecifierFactory specifierForPersonalInformationWithAppleIDType:aa_isManagedAppleID];
      contactSpecifier = self->_contactSpecifier;
      self->_contactSpecifier = v8;

      objc_storeWeak((self->_contactSpecifier + OBJC_IVAR___PSSpecifier_target), self);
      [(PSSpecifier *)self->_contactSpecifier setControllerLoadAction:"_contactSpecifierWasTapped:"];
      [(NSMutableArray *)self->_accountGroupSpecifiers addObject:self->_contactSpecifier];
      v10 = self->_accountGroupSpecifiers;
      v11 = [PSSpecifier groupSpecifierWithID:@"ACCOUNT_GROUP"];
      [(NSMutableArray *)v10 addObject:v11];
    }

    else
    {
      v12 = self->_accountGroupSpecifiers;
      v13 = [PSSpecifier groupSpecifierWithID:@"ACCOUNT_GROUP"];
      [(NSMutableArray *)v12 addObject:v13];

      _appleAccount2 = [(AAUIAppleAccountViewController *)self _appleAccount];
      aa_isManagedAppleID2 = [_appleAccount2 aa_isManagedAppleID];

      v16 = [AAUISpyglassSpecifierFactory specifierForPersonalInformationWithAppleIDType:aa_isManagedAppleID2];
      v17 = self->_contactSpecifier;
      self->_contactSpecifier = v16;

      objc_storeWeak((self->_contactSpecifier + OBJC_IVAR___PSSpecifier_target), self);
      [(PSSpecifier *)self->_contactSpecifier setControllerLoadAction:"_contactSpecifierWasTapped:"];
      [(NSMutableArray *)self->_accountGroupSpecifiers addObject:self->_contactSpecifier];
    }

    v18 = +[AAUISpyglassSpecifierFactory specifierForSignInAndSecurity];
    securitySpecifier = self->_securitySpecifier;
    self->_securitySpecifier = v18;

    objc_storeWeak((self->_securitySpecifier + OBJC_IVAR___PSSpecifier_target), self);
    [(PSSpecifier *)self->_securitySpecifier setControllerLoadAction:"_securitySpecifierWasTapped:"];
    [(NSMutableArray *)self->_accountGroupSpecifiers addObject:self->_securitySpecifier];
    if ([(AAUIAppleAccountViewController *)self _shouldShowStoreSettings])
    {
      _paymentSpecifierProvider = [(AAUIAppleAccountViewController *)self _paymentSpecifierProvider];
      v21 = _paymentSpecifierProvider;
      if (_paymentSpecifierProvider)
      {
        specifiers = [_paymentSpecifierProvider specifiers];
        firstObject = [specifiers firstObject];
        paymentSpecifier = self->_paymentSpecifier;
        self->_paymentSpecifier = firstObject;
      }

      v25 = [AAUISpyglassSpecifierFactory specifierForPaymentAndShipping:self->_paymentSpecifier isPaymentSpecifierProviderNil:v21 == 0];
      v26 = self->_paymentSpecifier;
      self->_paymentSpecifier = v25;

      if (!v21)
      {
        objc_storeWeak((self->_paymentSpecifier + OBJC_IVAR___PSSpecifier_target), self);
        [(PSSpecifier *)self->_paymentSpecifier setControllerLoadAction:"_paymentSpecifierWasTapped:"];
        *(self->_paymentSpecifier + OBJC_IVAR___PSSpecifier_getter) = "_valueForPaymentSpecifier:";
      }

      [(NSMutableArray *)self->_accountGroupSpecifiers addObject:self->_paymentSpecifier];
    }

    if ([(AAUIAppleAccountViewController *)self _shouldShowStoreSettings])
    {
      v27 = [[AMSUIManageSubsriptionSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
      manageSubscriptionSpecifier = self->_manageSubscriptionSpecifier;
      self->_manageSubscriptionSpecifier = v27;

      [(AAUISpecifierProvider *)self->_manageSubscriptionSpecifier setDelegate:self];
      specifiers2 = [(AAUISpecifierProvider *)self->_manageSubscriptionSpecifier specifiers];
      v30 = [AAUISpyglassSpecifierFactory specifierForSubscriptions:specifiers2];

      [(NSMutableArray *)self->_accountGroupSpecifiers addObjectsFromArray:v30];
    }
  }

  _appleAccount3 = [(AAUIAppleAccountViewController *)self _appleAccount];
  if (_appleAccount3)
  {
    v32 = _appleAccount3;
    _appleAccount4 = [(AAUIAppleAccountViewController *)self _appleAccount];
    aa_isPrimaryEmailVerified = [_appleAccount4 aa_isPrimaryEmailVerified];

    if ((aa_isPrimaryEmailVerified & 1) == 0)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v35 = self->_accountGroupSpecifiers;
      v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v47;
        v39 = PSEnabledKey;
        do
        {
          for (i = 0; i != v37; i = i + 1)
          {
            if (*v47 != v38)
            {
              objc_enumerationMutation(v35);
            }

            [*(*(&v46 + 1) + 8 * i) setProperty:&__kCFBooleanFalse forKey:{v39, v46}];
          }

          v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v37);
      }
    }
  }

  v41 = +[AKNetworkObserver sharedNetworkObserver];
  isNetworkReachable = [v41 isNetworkReachable];

  if ((isNetworkReachable & 1) == 0)
  {
    v43 = PSEnabledKey;
    [(PSSpecifier *)self->_contactSpecifier setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    [(PSSpecifier *)self->_paymentSpecifier setProperty:&__kCFBooleanFalse forKey:v43];
  }

  v44 = self->_accountGroupSpecifiers;

  return v44;
}

- (id)_specifiersForServicesGroup
{
  servicesGroupSpecifiers = self->_servicesGroupSpecifiers;
  if (servicesGroupSpecifiers)
  {
    goto LABEL_40;
  }

  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  _storeAccount = [(AAUIAppleAccountViewController *)self _storeAccount];
  _isSingleAccount = [(AAUIAppleAccountViewController *)self _isSingleAccount];
  v6 = objc_alloc_init(NSMutableArray);
  v7 = self->_servicesGroupSpecifiers;
  self->_servicesGroupSpecifiers = v6;

  v8 = [PSSpecifier groupSpecifierWithID:@"GROUP_SERVICES"];
  servicesGroupSpecifier = self->_servicesGroupSpecifier;
  self->_servicesGroupSpecifier = v8;

  [(NSMutableArray *)self->_servicesGroupSpecifiers addObject:self->_servicesGroupSpecifier];
  v10 = [(AAUIAppleAccountViewController *)self _cloudSpecifierForAccount:_appleAccount];
  [(NSMutableArray *)self->_servicesGroupSpecifiers addObject:v10];
  _appleAccount2 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v12 = [NSNumber numberWithBool:[(AAUIAppleAccountViewController *)self _isEnabledForAccount:_appleAccount2]];
  v13 = PSEnabledKey;
  [v10 setProperty:v12 forKey:PSEnabledKey];

  if (![(AAUIAppleAccountViewController *)self _isBeneficiaryAccount])
  {
    _appleAccount3 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v15 = [_appleAccount3 aa_isAccountClass:AAAccountClassPrimary];

    if (v15)
    {
      _appleAccount4 = [(AAUIAppleAccountViewController *)self _appleAccount];
      aa_isFamilyEligible = [_appleAccount4 aa_isFamilyEligible];

      if (aa_isFamilyEligible)
      {
        v18 = self->_servicesGroupSpecifiers;
        _specifiersForFamily = [(AAUIAppleAccountViewController *)self _specifiersForFamily];
        [(NSMutableArray *)v18 addObjectsFromArray:_specifiersForFamily];
      }

      fmfSpecifierProvider = self->_fmfSpecifierProvider;
      if (!fmfSpecifierProvider)
      {
        v21 = [[FMFSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
        v22 = self->_fmfSpecifierProvider;
        self->_fmfSpecifierProvider = v21;

        [(AAUISpecifierProvider *)self->_fmfSpecifierProvider setDelegate:self];
        fmfSpecifierProvider = self->_fmfSpecifierProvider;
      }

      v23 = self->_servicesGroupSpecifiers;
      specifiers = [(AAUISpecifierProvider *)fmfSpecifierProvider specifiers];
      [(NSMutableArray *)v23 addObjectsFromArray:specifiers];
    }
  }

  v25 = _storeAccount;
  if ([(AAUIAppleAccountViewController *)self _shouldShowStoreSettings])
  {
    _specifiersForStore = [(AAUIAppleAccountViewController *)self _specifiersForStore];
    firstObject = [_specifiersForStore firstObject];

    if (!firstObject)
    {
      firstObject = [(AAUIAppleAccountViewController *)self _storeSpecifierForAccount:_storeAccount];
      if ((_isSingleAccount & 1) == 0)
      {
        [firstObject setProperty:objc_opt_class() forKey:PSCellClassKey];
        preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
        IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
        v30 = UITableViewAutomaticDimension;
        if (!IsAccessibilityCategory)
        {
          v30 = 58.0;
        }

        v31 = [NSNumber numberWithDouble:v30];
        [firstObject setProperty:v31 forKey:PSTableCellHeightKey];

        aa_formattedUsername = [_storeAccount aa_formattedUsername];
        [firstObject setProperty:aa_formattedUsername forKey:PSTableCellSubtitleTextKey];
      }
    }

    if ((+[AADeviceInfo isMultiUserMode]& 1) == 0 && firstObject)
    {
      [(NSMutableArray *)self->_servicesGroupSpecifiers addObject:firstObject];
    }

    _storeAccount2 = [(AAUIAppleAccountViewController *)self _storeAccount];
    v34 = [NSNumber numberWithBool:[(AAUIAppleAccountViewController *)self _isEnabledForAccount:_storeAccount2]];
    [firstObject setProperty:v34 forKey:v13];
  }

  v35 = +[AKAccountManager sharedInstance];
  aa_altDSID = [_appleAccount aa_altDSID];
  v37 = [v35 authKitAccountWithAltDSID:aa_altDSID];

  if (v37)
  {
    v38 = [v35 securityLevelForAccount:v37];
    if ((v38 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      if (![v35 userUnderAgeForAccount:v37])
      {
        goto LABEL_25;
      }

      v39 = [v35 authorizationUsedForAccount:v37];
      v40 = v39;
      v41 = _AAUILogSystem(v39);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        sub_34320();
      }

      if (v40)
      {
LABEL_25:
        v43 = self->_servicesGroupSpecifiers;
        v44 = [(AAUIAppleAccountViewController *)self _siwaSpecifierForAccount:_appleAccount];
        [(NSMutableArray *)v43 addObject:v44];

        goto LABEL_29;
      }

      v45 = _AAUILogSystem(v42);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v45 = _AAUILogSystem(v38);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
LABEL_28:

        goto LABEL_29;
      }
    }

    sub_342E4();
    goto LABEL_28;
  }

LABEL_29:
  _appleAccount5 = [(AAUIAppleAccountViewController *)self _appleAccount];
  if (_appleAccount5)
  {
    v47 = _appleAccount5;
    _appleAccount6 = [(AAUIAppleAccountViewController *)self _appleAccount];
    aa_isPrimaryEmailVerified = [_appleAccount6 aa_isPrimaryEmailVerified];

    if ((aa_isPrimaryEmailVerified & 1) == 0)
    {
      v56 = _appleAccount;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v50 = self->_servicesGroupSpecifiers;
      v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v59;
        do
        {
          for (i = 0; i != v52; i = i + 1)
          {
            if (*v59 != v53)
            {
              objc_enumerationMutation(v50);
            }

            [*(*(&v58 + 1) + 8 * i) setProperty:&__kCFBooleanFalse forKey:{v13, v56}];
          }

          v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v58 objects:v62 count:16];
        }

        while (v52);
      }

      _appleAccount = v56;
      v25 = _storeAccount;
    }
  }

  servicesGroupSpecifiers = self->_servicesGroupSpecifiers;
LABEL_40:

  return servicesGroupSpecifiers;
}

- (id)_specifiersForDevicesGroup
{
  deviceSpecifierProvider = self->_deviceSpecifierProvider;
  if (!deviceSpecifierProvider)
  {
    v4 = [[AAUIDeviceSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
    v5 = self->_deviceSpecifierProvider;
    self->_deviceSpecifierProvider = v4;

    [(AAUIDeviceSpecifierProvider *)self->_deviceSpecifierProvider setDelegate:self];
    deviceSpecifierProvider = self->_deviceSpecifierProvider;
  }

  specifiers = [(AAUIDeviceSpecifierProvider *)deviceSpecifierProvider specifiers];
  v7 = +[AKNetworkObserver sharedNetworkObserver];
  isNetworkReachable = [v7 isNetworkReachable];

  if ((isNetworkReachable & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = specifiers;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      v13 = PSEnabledKey;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v16 + 1) + 8 * i) setProperty:&__kCFBooleanFalse forKey:{v13, v16}];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  return specifiers;
}

- (id)_valueForServiceSpecifier:(id)specifier
{
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"account"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"SET_UP" value:&stru_5A5F0 table:@"Localizable"];
  }

  return v5;
}

- (id)_valueForCloudSpecifier:(id)specifier
{
  userInfo = [specifier userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"account"];

  if (v5)
  {
    if (self->_totalStorageString)
    {
      v6 = [NSString stringWithFormat:@"%@", self->_totalStorageString];
    }

    else
    {
      [(AAUIAppleAccountViewController *)self _loadCloudStorageSummary];
      v6 = 0;
    }
  }

  else
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"SET_UP" value:&stru_5A5F0 table:@"Localizable"];
  }

  return v6;
}

- (void)_loadCloudStorageSummary
{
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  v4 = _appleAccount;
  if (_appleAccount)
  {
    if (!self->_isStorageSummaryRequestInProgress)
    {
      self->_isStorageSummaryRequestInProgress = 1;
      *buf = 0;
      v9 = buf;
      v10 = 0x3032000000;
      v11 = sub_16804;
      v12 = sub_16814;
      v13 = [[ICSHomeDataController alloc] initWithAccount:_appleAccount];
      v6 = *(v9 + 5);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1681C;
      v7[3] = &unk_598D8;
      v7[4] = self;
      v7[5] = buf;
      [v6 fetchCloudStorage:0 completion:v7];
      _Block_object_dispose(buf, 8);

      goto LABEL_9;
    }

    v5 = _AAUILogSystem(_appleAccount);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Storage summary request is already in progress. Bailing.", buf, 2u);
    }
  }

  else
  {
    v5 = _AAUILogSystem(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_34398();
    }
  }

LABEL_9:
}

- (id)_cloudSpecifierForAccount:(id)account
{
  accountCopy = account;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"APPLEID_SERVICES_ICLOUD_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"_valueForCloudSpecifier:" detail:0 cell:2 edit:0];

  [v7 setControllerLoadAction:"_cloudSpecifierWasTapped:"];
  [v7 setIdentifier:@"ICLOUD_SERVICE"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"APPLEID_SERVICES_ICLOUD_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  [v7 setProperty:v9 forKey:PSTitleKey];

  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconLoading];
  [v7 setObject:@"com.apple.application-icon.icloud" forKeyedSubscript:PSIconUTTypeIdentifierKey];
  if (accountCopy)
  {
    v12 = @"account";
    v13 = accountCopy;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v7 setUserInfo:v10];
  }

  return v7;
}

- (id)_paymentSpecifierProvider
{
  paymentSpecifierProvider = self->_paymentSpecifierProvider;
  if (!paymentSpecifierProvider)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v4 = qword_6A218;
    v14 = qword_6A218;
    if (!qword_6A218)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_28E7C;
      v10[3] = &unk_59380;
      v10[4] = &v11;
      sub_28E7C(v10);
      v4 = v12[3];
    }

    v5 = v4;
    _Block_object_dispose(&v11, 8);
    v6 = [[v4 alloc] initWithAccountManager:self->_accountManager];
    [v6 setDelegate:self];
    v7 = [(AAUIAppleAccountViewController *)self _valueForPaymentSpecifier:self->_paymentSpecifier];
    if (v7)
    {
      [v6 setPaymentSummaryDescription:v7];
    }

    v8 = self->_paymentSpecifierProvider;
    self->_paymentSpecifierProvider = v6;

    paymentSpecifierProvider = self->_paymentSpecifierProvider;
  }

  return paymentSpecifierProvider;
}

- (id)_storeSpecifierForAccount:(id)account
{
  accountCopy = account;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"APPLEID_SERVICES_STORE_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"_valueForServiceSpecifier:" detail:0 cell:2 edit:0];

  [v7 setControllerLoadAction:"_storeSpecifierWasTapped:"];
  [v7 setIdentifier:@"STORE_SERVICE"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"APPLEID_SERVICES_STORE_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  [v7 setProperty:v9 forKey:PSTitleKey];

  [v7 setProperty:&__kCFBooleanTrue forKey:PSBundleIsControllerKey];
  [v7 setProperty:@"MobileStoreSettings" forKey:PSBundlePathKey];
  v10 = PSBundlePathForPreferenceBundle();
  [v7 setProperty:v10 forKey:PSLazilyLoadedBundleKey];

  [v7 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  [v7 setProperty:@"com.apple.AppStore" forKey:PSLazyIconAppID];
  if (accountCopy)
  {
    v13 = @"account";
    v14 = accountCopy;
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v7 setUserInfo:v11];
  }

  return v7;
}

- (id)_siwaSpecifierForAccount:(id)account
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"APPLEID_SERVICES_SIWA_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:2 edit:0];

  [v6 setControllerLoadAction:"_siwaSpecifierWasTapped:"];
  [v6 setIdentifier:@"SIWA_SERVICE"];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"APPLEID_SERVICES_SIWA_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  [v6 setObject:v8 forKeyedSubscript:PSTitleKey];

  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconLoading];
  [v6 setObject:@"com.apple.application-icon.sign-in-with-apple" forKeyedSubscript:PSIconUTTypeIdentifierKey];

  return v6;
}

- (BOOL)_shouldShowDeleteAccountButton
{
  if ((+[AADeviceInfo isMultiUserMode]& 1) != 0)
  {
    return 0;
  }

  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  aa_isUnremovableRemotelyManagedAccount = [_appleAccount aa_isUnremovableRemotelyManagedAccount];

  return aa_isUnremovableRemotelyManagedAccount ^ 1;
}

- (id)_shouldRestrictSignoutMessage
{
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  v4 = [_appleAccount aa_isAccountClass:AAAccountClassPrimary];

  if (v4)
  {
    if (+[AADeviceInfo aas_hasiCloudSignOutRestriction])
    {
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"SIGNOUT_RESTRICTED_FOOTER";
LABEL_4:
      v8 = [v5 localizedStringForKey:v7 value:&stru_5A5F0 table:@"Localizable"];

      goto LABEL_10;
    }

    if ([(AAUIAppleAccountViewController *)self _isRestoringFromiCloud])
    {
      v8 = [(AAUIAppleAccountViewController *)self _deviceSpecificLocalizedStringKey:@"DELETE_ACCOUNT_RESTORE_WARNING_REBRAND"];
      goto LABEL_10;
    }

    if ([(AAUIAppleAccountViewController *)self _activeFaceTimeCall])
    {
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"SIGNOUT_FACETIME_IN_PROGRESS_FOOTER";
      goto LABEL_4;
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)_specifiersForSignoutGroup
{
  if (![(AAUIAppleAccountViewController *)self _shouldShowDeleteAccountButton])
  {
    v12 = 0;
    goto LABEL_38;
  }

  signoutGroupSpecifiers = self->_signoutGroupSpecifiers;
  if (!signoutGroupSpecifiers)
  {
    _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
    aa_isRemotelyManaged = [_appleAccount aa_isRemotelyManaged];

    if (aa_isRemotelyManaged)
    {
      mdmSignoutSpecifierProvider = self->_mdmSignoutSpecifierProvider;
      if (!mdmSignoutSpecifierProvider)
      {
        v7 = [[DMCMDMSignoutSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
        v8 = self->_mdmSignoutSpecifierProvider;
        self->_mdmSignoutSpecifierProvider = v7;

        [(AAUISpecifierProvider *)self->_mdmSignoutSpecifierProvider setDelegate:self];
        mdmSignoutSpecifierProvider = self->_mdmSignoutSpecifierProvider;
      }

      specifiers = [(AAUISpecifierProvider *)mdmSignoutSpecifierProvider specifiers];
      v10 = [specifiers mutableCopy];
      v11 = self->_signoutGroupSpecifiers;
      self->_signoutGroupSpecifiers = v10;

      goto LABEL_36;
    }

    v13 = objc_alloc_init(NSMutableArray);
    v14 = self->_signoutGroupSpecifiers;
    self->_signoutGroupSpecifiers = v13;

    specifiers = [PSSpecifier groupSpecifierWithID:@"GROUP_SIGNOUT"];
    [(NSMutableArray *)self->_signoutGroupSpecifiers addObject:specifiers];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"APPLEID_SIGNOUT_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
    v17 = [PSSpecifier deleteButtonSpecifierWithName:v16 target:self action:"_deleteButtonTapped:"];

    [v17 setProperty:@"AAUIDeleteButtonSpecifierID" forKey:PSIDKey];
    [(NSMutableArray *)self->_signoutGroupSpecifiers addObject:v17];
    _shouldRestrictSignoutMessage = [(AAUIAppleAccountViewController *)self _shouldRestrictSignoutMessage];
    _appleAccount2 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v20 = [_appleAccount2 aa_isAccountClass:AAAccountClassPrimary];

    v21 = +[AKNetworkObserver sharedNetworkObserver];
    isNetworkReachable = [v21 isNetworkReachable];

    if (v20)
    {
      isChangingState = [(AAUIDeviceLocatorService *)self->_deviceLocatorService isChangingState];
      _isRestoringFromiCloud = [(AAUIAppleAccountViewController *)self _isRestoringFromiCloud];
      v26 = +[AADeviceInfo isMultiUserMode];
      _activeFaceTimeCall = [(AAUIAppleAccountViewController *)self _activeFaceTimeCall];
      if (!isNetworkReachable || (isChangingState & 1) != 0 || (_isRestoringFromiCloud & 1) != 0 || _shouldRestrictSignoutMessage || (v26 & 1) != 0 || _activeFaceTimeCall)
      {
        v28 = _AAUILogSystem(_activeFaceTimeCall);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          sub_343D4();
        }

        v30 = _AAUILogSystem(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          sub_34410();
        }

        v32 = _AAUILogSystem(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          sub_34490();
        }

        v34 = _AAUILogSystem(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_34518();
        }

        v36 = _AAUILogSystem(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          sub_345A0();
        }

        v38 = _AAUILogSystem(v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          sub_34628();
        }

        v40 = _AAUILogSystem(v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          sub_346B0();
        }

        goto LABEL_31;
      }
    }

    else if ((isNetworkReachable & 1) == 0)
    {
LABEL_31:
      v41 = _AAUILogSystem(v23);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        sub_34738();
      }

      [v17 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
      if (_shouldRestrictSignoutMessage)
      {
        [specifiers setProperty:_shouldRestrictSignoutMessage forKey:PSFooterTextGroupKey];
      }
    }

LABEL_36:
    signoutGroupSpecifiers = self->_signoutGroupSpecifiers;
  }

  v12 = signoutGroupSpecifiers;
LABEL_38:

  return v12;
}

- (void)_reloadSignoutGroupSpecifiersForName:(id)name
{
  nameCopy = name;
  v5 = _AAUILogSystem(nameCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = nameCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Reloading sign out specifiers for %@", &v7, 0xCu);
  }

  signoutGroupSpecifiers = self->_signoutGroupSpecifiers;
  self->_signoutGroupSpecifiers = 0;

  [(AAUIAppleAccountViewController *)self reloadSpecifiers];
}

- (BOOL)_activeFaceTimeCall
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 anyCallPassesTest:&stru_59918];

  return v3;
}

- (void)_beginObservingCallStatusChanges
{
  objc_initWeak(&location, self);
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[NSOperationQueue mainQueue];
  v5 = TUCallCenterCallStatusChangedNotification;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_17A24;
  v15[3] = &unk_59940;
  objc_copyWeak(&v16, &location);
  v6 = [v3 addObserverForName:v5 object:0 queue:v4 usingBlock:v15];
  callStatusNotificationObserver = self->_callStatusNotificationObserver;
  self->_callStatusNotificationObserver = v6;

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = +[NSOperationQueue mainQueue];
  v10 = TUCallCenterVideoCallStatusChangedNotification;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_17A9C;
  v13[3] = &unk_59940;
  objc_copyWeak(&v14, &location);
  v11 = [v8 addObserverForName:v10 object:0 queue:v9 usingBlock:v13];
  videoCallStatusNotificationObserver = self->_videoCallStatusNotificationObserver;
  self->_videoCallStatusNotificationObserver = v11;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_stopObservingCallStatusChanges
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self->_callStatusNotificationObserver name:TUCallCenterCallStatusChangedNotification object:0];
  [v3 removeObserver:self->_videoCallStatusNotificationObserver name:TUCallCenterVideoCallStatusChangedNotification object:0];
}

- (void)_contactSpecifierWasTapped:(id)tapped
{
  if (tapped)
  {
    [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:?];
  }

  v4 = [AAPersonalInfoUIRequest alloc];
  _grandSlamAccount = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
  _accountStore = [(AAUIAppleAccountViewController *)self _accountStore];
  v7 = [v4 initWithGrandSlamAccount:_grandSlamAccount accountStore:_accountStore];

  urlRequest = [v7 urlRequest];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_17CC4;
  v11[3] = &unk_59968;
  v11[4] = self;
  v9 = [(AAUIAppleAccountViewController *)self _loadRemoteRequest:urlRequest withIdentifier:@"_AAUIRemotePageIdentifierPersonalInfo" preparation:v11 completion:0];
  activeRemoteUIController = self->_activeRemoteUIController;
  self->_activeRemoteUIController = v9;
}

- (void)_securitySpecifierWasTapped:(id)tapped
{
  [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:tapped];
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_17E14;
  block[3] = &unk_59680;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController
{
  controllerCopy = controller;
  navigationControllerCopy = navigationController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = controllerCopy;
    identifier = [v8 identifier];
    v10 = [identifier isEqualToString:@"_AAUIRemotePageIdentifierSecurity"];

    if (v10)
    {
      v12 = _AAUILogSystem(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Presenting modal for security controller: %@", &v13, 0xCu);
      }

      [(AAUIServerUIHookHandler *)self->_serverHookHandler setPresentingControllerOverride:navigationControllerCopy];
    }
  }
}

- (void)remoteUIController:(id)controller didDismissModalNavigationWithObjectModels:(id)models
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = controllerCopy;
    identifier = [v6 identifier];
    v8 = [identifier isEqualToString:@"_AAUIRemotePageIdentifierSecurity"];

    if (v8)
    {
      v10 = _AAUILogSystem(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v6;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Dismissing modal for security controller: %@", buf, 0xCu);
      }

      [(AAUIServerUIHookHandler *)self->_serverHookHandler setPresentingControllerOverride:0];
    }

    if (self->_didCompleteHSA2)
    {
      self->_didCompleteHSA2 = 0;
      v11 = [AAUICDPHelper helperWithPresenter:self];
      cdpStateControllerForPrimaryAccount = [v11 cdpStateControllerForPrimaryAccount];
      v13 = _AAUILogSystem(cdpStateControllerForPrimaryAccount);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_347C0(self);
      }

      context = [cdpStateControllerForPrimaryAccount context];
      [context setNewPassword:self->_newPassword oldPassword:self->_oldPassword];

      context2 = [cdpStateControllerForPrimaryAccount context];
      [context2 setType:13];

      currentObjectModel = self->_currentObjectModel;
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"STINGRAY_TITLE_VERIFYING" value:&stru_5A5F0 table:@"Localizable"];
      [(RUIObjectModel *)currentObjectModel startNavigationBarSpinnerWithTitle:v18];

      v20 = _AAUILogSystem(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_3487C(cdpStateControllerForPrimaryAccount);
      }

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_18514;
      v21[3] = &unk_599B8;
      v21[4] = self;
      [cdpStateControllerForPrimaryAccount repairCloudDataProtectionStateWithCompletion:v21];
    }
  }
}

- (id)_loadRemoteRequest:(id)request withIdentifier:(id)identifier preparation:(id)preparation completion:(id)completion
{
  requestCopy = request;
  preparationCopy = preparation;
  completionCopy = completion;
  identifierCopy = identifier;
  _activeAccount = [(AAUIAppleAccountViewController *)self _activeAccount];
  v15 = [[AAUIRemoteUIController alloc] initWithIdentifier:identifierCopy account:_activeAccount];

  [v15 setDelegate:self];
  navigationController = [(AAUIAppleAccountViewController *)self navigationController];
  [v15 setNavigationController:navigationController];

  if (preparationCopy)
  {
    preparationCopy[2](preparationCopy, v15);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_187AC;
  v23[3] = &unk_59A30;
  v26 = completionCopy;
  v17 = v15;
  v24 = v17;
  v25 = requestCopy;
  v18 = requestCopy;
  v19 = completionCopy;
  [(AAUIAppleAccountViewController *)self _getServerUILoadDelegateWithCompletion:v23];
  v20 = v25;
  v21 = v17;

  return v17;
}

- (void)_loadRemoteRequest:(id)request withIdentifier:(id)identifier specifier:(id)specifier
{
  identifierCopy = identifier;
  requestCopy = request;
  [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:specifier];
  v10 = [(AAUIAppleAccountViewController *)self _loadRemoteRequest:requestCopy withIdentifier:identifierCopy preparation:0 completion:0];

  activeRemoteUIController = self->_activeRemoteUIController;
  self->_activeRemoteUIController = v10;
}

- (void)_paymentSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = _AAUILogSystem(tappedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "html payment and shipping page (on by default)", buf, 2u);
  }

  v6 = [NSURL URLWithString:SKAccountPagePaymentsShippingURLString];
  v7 = [[SKAccountPageViewController alloc] initWithAccountURL:v6];
  v8 = objc_opt_respondsToSelector();
  v9 = v8;
  p_super = _AAUILogSystem(v8);
  v11 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      cachedResourceDictionary = self->_cachedResourceDictionary;
      *buf = 138412290;
      v18 = cachedResourceDictionary;
      _os_log_impl(&dword_0, p_super, OS_LOG_TYPE_DEFAULT, "Passing cached resource dictionary %@", buf, 0xCu);
    }

    [v7 setClientData:self->_cachedResourceDictionary];
    p_super = &self->_cachedResourceDictionary->super;
    self->_cachedResourceDictionary = 0;
  }

  else if (v11)
  {
    *buf = 0;
    _os_log_impl(&dword_0, p_super, OS_LOG_TYPE_DEFAULT, "SKAccountPageViewController does not respond to setClientData:", buf, 2u);
  }

  _grandSlamAccount = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
  [v7 setAccount:_grandSlamAccount];

  [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:tappedCopy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_18D04;
  v15[3] = &unk_594A0;
  v15[4] = self;
  v16 = v7;
  v14 = v7;
  [v14 loadWithCompletionBlock:v15];
}

- (void)_cloudSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:?];
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];

  if (!_appleAccount)
  {
    [(AAUIAppleAccountViewController *)self _attemptSignInForServiceType:AIDAServiceTypeCloud];
    goto LABEL_9;
  }

  [tappedCopy setObject:self->_accountManager forKeyedSubscript:@"icloudAccountManager"];
  [tappedCopy setControllerLoadAction:0];
  _appleAccount2 = [(AAUIAppleAccountViewController *)self _appleAccount];
  if ([_appleAccount2 aa_isAccountClass:AAAccountClassPrimary])
  {
  }

  else
  {
    _appleAccount3 = [(AAUIAppleAccountViewController *)self _appleAccount];
    aa_isManagedAppleID = [_appleAccount3 aa_isManagedAppleID];

    if (!aa_isManagedAppleID)
    {
      v8 = +[ICSViewBuilder iCloudHomeViewControllerClassLegacy];
      goto LABEL_8;
    }
  }

  v8 = objc_opt_class();
LABEL_8:
  [tappedCopy setDetailControllerClass:v8];
LABEL_9:
  [(AAUIAppleAccountViewController *)self _stopSpinnerInActiveSpecifier];
}

- (void)_attemptSignInForServiceType:(id)type
{
  typeCopy = type;
  v5 = objc_alloc_init(AAUISignInController);
  [v5 setDelegate:self];
  v14 = typeCopy;
  v6 = [NSArray arrayWithObjects:&v14 count:1];
  [v5 setServiceTypes:v6];

  [v5 _setShouldForceOperation:1];
  v7 = PSIsiPad();
  if (v7)
  {
    [v5 setModalPresentationStyle:2];
    v7 = [v5 setModalTransitionStyle:0];
  }

  v8 = _AAUILogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = typeCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Preflighting sign in controller for service: %{public}@", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_19008;
  v10[3] = &unk_59720;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  [v9 prepareInViewController:self completion:v10];
}

- (void)_storeSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:tappedCopy];
  _storeAccount = [(AAUIAppleAccountViewController *)self _storeAccount];

  if (!_storeAccount)
  {
    [(AAUIAppleAccountViewController *)self _attemptSignInForServiceType:AIDAServiceTypeStore];
    goto LABEL_17;
  }

  v5 = PSLazilyLoadedBundleKey;
  v6 = [tappedCopy propertyForKey:PSLazilyLoadedBundleKey];
  if (v6)
  {
    v7 = [NSBundle bundleWithPath:v6];
    v8 = [tappedCopy propertyForKey:PSBundleOverridePrincipalClassKey];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      v10 = [tappedCopy propertyForKey:PSDetailControllerClassKey];
      if (v10)
      {
        v11 = v10;
        v12 = NSClassFromString(v10);
        if (v12)
        {
          principalClass = v12;

LABEL_11:
          v14 = tappedCopy;
          *&tappedCopy[OBJC_IVAR___PSSpecifier_detailControllerClass] = principalClass;
          if (!*&tappedCopy[OBJC_IVAR___PSSpecifier_editPaneClass])
          {
            v15 = [tappedCopy propertyForKey:PSEditPaneClassKey];
            v16 = [v7 classNamed:v15];
            *&tappedCopy[OBJC_IVAR___PSSpecifier_editPaneClass] = v16;

            v14 = tappedCopy;
          }

          [v14 setControllerLoadAction:0];
          [tappedCopy removePropertyForKey:v5];
          if (objc_opt_respondsToSelector())
          {
            [*&tappedCopy[OBJC_IVAR___PSSpecifier_detailControllerClass] validateSpecifier:?];
          }

          [(AAUIAppleAccountViewController *)self _stopSpinnerInActiveSpecifier];

          goto LABEL_16;
        }

        [v7 load];
        principalClass = NSClassFromString(v11);

        if (principalClass)
        {
          goto LABEL_11;
        }
      }
    }

    principalClass = [v7 principalClass];
    goto LABEL_11;
  }

  [tappedCopy setControllerLoadAction:0];
LABEL_16:

LABEL_17:
}

- (void)_siwaSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = [AASignInWithAppleManagementUIRequest alloc];
  _grandSlamAccount = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
  accountStore = [(AAUIAppleAccountViewController *)self accountStore];
  v9 = [v5 initWithGrandSlamAccount:_grandSlamAccount accountStore:accountStore];

  urlRequest = [v9 urlRequest];
  [(AAUIAppleAccountViewController *)self _loadRemoteRequest:urlRequest withIdentifier:@"_AAUIRemotePageIdentifierSIWAManagement" specifier:tappedCopy];

  [(AAUIRemoteUIController *)self->_activeRemoteUIController registerSIWASharingTipView];
}

- (void)_deleteButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v42 = _os_activity_create(&dword_0, "appleaccount/sign-out", &_os_activity_current, OS_ACTIVITY_FLAG_DETACHED);
  os_activity_scope_enter(v42, &state);
  objc_initWeak(&location, self);
  [(AAUIAppleAccountViewController *)self _stopObservingAccountStoreChanges];
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = sub_16804;
  v70 = sub_16814;
  v71 = [[AAUISignOutFlowControllerDelegate alloc] initWithPresentingViewController:self];
  [v67[5] setAccountManager:self->_accountManager];
  [v67[5] setClientID:@"spyglassSignOut"];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_19FE8;
  v64[3] = &unk_59A80;
  objc_copyWeak(&v65, &location);
  v64[4] = &v66;
  v44 = objc_retainBlock(v64);
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  _storeAccount = [(AAUIAppleAccountViewController *)self _storeAccount];
  v6 = +[AKAccountManager sharedInstance];
  aa_altDSID = [_appleAccount aa_altDSID];
  v45 = [v6 authKitAccountWithAltDSID:aa_altDSID];

  v8 = objc_alloc_init(AIDAMutableServiceContext);
  [v8 setViewController:self];
  v9 = AIDAServiceTypeCloud;
  v10 = v67[5];
  v75 = AIDAServiceTypeCloud;
  v76 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
  [v8 setSignOutContexts:v11];

  if (_appleAccount && _storeAccount)
  {
    inited = objc_initWeak(from, self);
    v14 = _AAUISignOutLogSystem(inited);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "User signed in to iCloud & Store, prompting for clarification...", buf, 2u);
    }

    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1A2A0;
    v56[3] = &unk_59B70;
    objc_copyWeak(&v62, from);
    v57 = v45;
    v58 = v8;
    v61 = v44;
    v59 = _storeAccount;
    v60 = _appleAccount;
    [(AAUIAppleAccountViewController *)self _promptForAccountSignOutAppleAccount:v60 storeAccount:v59 completion:v56, tappedCopy, v42];

    objc_destroyWeak(&v62);
    objc_destroyWeak(from);
  }

  else if (_appleAccount)
  {
    v15 = [(AAUIAppleAccountViewController *)self _appleAccount:tappedCopy];
    v16 = [v15 aa_isAccountClass:AAAccountClassPrimary];

    if (v16)
    {
      v18 = _AAUISignOutLogSystem(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(from[0]) = 138412290;
        *(from + 4) = v45;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Signing out user from iCloud service for account %@", from, 0xCu);
      }

      [(AAUIAppleAccountViewController *)self _setSignOutInProgressForAppleAccount:v45];
      objc_initWeak(from, self);
      serviceOwnersManager = self->_serviceOwnersManager;
      v20 = [v8 copy];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1AE58;
      v48[3] = &unk_59BC0;
      objc_copyWeak(&v53, from);
      v49 = v45;
      v52 = v44;
      v50 = _appleAccount;
      v51 = v8;
      [(AIDAServiceOwnerProtocol *)serviceOwnersManager signOutService:v9 withContext:v20 completion:v48];

      objc_destroyWeak(&v53);
      objc_destroyWeak(from);
    }

    else
    {
      v25 = [NSBundle bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_5A5F0 table:@"Localizable"];
      v27 = [NSBundle bundleForClass:objc_opt_class()];
      v28 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DELETE_ACCOUNT_WARNING_FORMAT"];
      v29 = [v27 localizedStringForKey:v28 value:&stru_5A5F0 table:@"Localizable"];
      v30 = [UIAlertController alertWithTitle:v26 message:v29];

      v31 = [NSBundle bundleForClass:objc_opt_class()];
      v32 = [v31 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_5A5F0 table:@"Localizable"];
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_1AE04;
      v54[3] = &unk_59B98;
      v54[4] = self;
      v55 = _appleAccount;
      v33 = [UIAlertAction actionWithTitle:v32 style:2 handler:v54];

      v34 = [NSBundle bundleForClass:objc_opt_class()];
      v35 = [v34 localizedStringForKey:@"CANCEL" value:&stru_5A5F0 table:@"Localizable"];
      v36 = [UIAlertAction actionWithTitle:v35 style:1 handler:0];

      [v30 addAction:v33];
      [v30 addAction:v36];
      navigationController = [(AAUIAppleAccountViewController *)self navigationController];
      [navigationController presentViewController:v30 animated:1 completion:0];
    }
  }

  else if (_storeAccount)
  {
    v21 = _AAUILogSystem(v12);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(from[0]) = 138412290;
      *(from + 4) = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Signing out user from iTunes service for account %@", from, 0xCu);
    }

    v22 = self->_serviceOwnersManager;
    v23 = [v8 copy];
    v24 = AIDAServiceTypeStore;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1B134;
    v46[3] = &unk_59B48;
    v47 = v44;
    [(AIDAServiceOwnerProtocol *)v22 signOutService:v24 withContext:v23 completion:v46];
  }

  else
  {
    v38 = _AAUISignOutLogSystem(v12);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(from[0]) = 0;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "User attempted to sign out but isn't signed in!", from, 2u);
    }

    v39 = [NSError aa_errorWithCode:-1, tappedCopy, v42];
    (v44[2])(v44, 0, v39);
  }

  objc_destroyWeak(&v65);
  _Block_object_dispose(&v66, 8);

  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
}

- (void)_setSignOutInProgressForAppleAccount:(id)account
{
  accountCopy = account;
  v5 = _AAUISignOutLogSystem(accountCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_34AA4();
  }

  v6 = +[AKAccountManager sharedInstance];
  [v6 setSignOutInProgress:&__kCFBooleanTrue forAccount:accountCopy];

  _accountStore = [(AAUIAppleAccountViewController *)self _accountStore];
  [_accountStore saveVerifiedAccount:accountCopy withCompletionHandler:&stru_59C00];
}

- (void)_setSignOutNotInProgressForAppleAccount:(id)account
{
  accountCopy = account;
  v5 = _AAUISignOutLogSystem(accountCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_34B8C();
  }

  v6 = +[AKAccountManager sharedInstance];
  [v6 setSignOutInProgress:&__kCFBooleanFalse forAccount:accountCopy];

  _accountStore = [(AAUIAppleAccountViewController *)self _accountStore];
  [_accountStore saveVerifiedAccount:accountCopy withCompletionHandler:&stru_59C20];
}

- (void)_promptForAccountSignOutAppleAccount:(id)account storeAccount:(id)storeAccount completion:(id)completion
{
  accountCopy = account;
  storeAccountCopy = storeAccount;
  completionCopy = completion;
  v11 = AIDAServiceTypeCloud;
  v12 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager altDSIDForAccount:accountCopy service:AIDAServiceTypeCloud];
  v13 = AIDAServiceTypeStore;
  v14 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager altDSIDForAccount:storeAccountCopy service:AIDAServiceTypeStore];
  v15 = [v12 isEqualToString:v14];
  if (v15)
  {
    v16 = _AAUISignOutLogSystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Apple account and store account have matching altDSIDs!", buf, 2u);
    }

    completionCopy[2](completionCopy, 1, 1);
  }

  else
  {
    v17 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager DSIDForAccount:accountCopy service:v11];
    v18 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager DSIDForAccount:storeAccountCopy service:v13];
    v19 = [v17 isEqualToString:v18];
    if (v19)
    {
      v20 = _AAUISignOutLogSystem(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Apple account and store account have matching DSIDs!", buf, 2u);
      }

      completionCopy[2](completionCopy, 1, 1);
    }

    else
    {
      PSIsiPad();
      [NSBundle bundleForClass:objc_opt_class()];
      v21 = v40 = v17;
      [v21 localizedStringForKey:@"MULTIPLE_SERVICES_MESSAGE" value:&stru_5A5F0 table:@"Localizable"];
      v22 = v39 = v18;
      v41 = [UIAlertController alertWithTitle:v22 message:0];

      v23 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"MULTIPLE_SERVICES_SIGN_OUT_BOTH" value:&stru_5A5F0 table:@"Localizable"];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1BAA4;
      v48[3] = &unk_59C48;
      v25 = completionCopy;
      v49 = v25;
      v26 = [UIAlertAction actionWithTitle:v24 style:2 handler:v48];
      [v41 addAction:v26];

      v27 = [NSBundle bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"MULTIPLE_SERVICES_SIGN_OUT_CLOUD" value:&stru_5A5F0 table:@"Localizable"];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1BB28;
      v46[3] = &unk_59C48;
      v29 = v25;
      v47 = v29;
      v30 = [UIAlertAction actionWithTitle:v28 style:2 handler:v46];
      [v41 addAction:v30];

      v31 = [NSBundle bundleForClass:objc_opt_class()];
      v32 = [v31 localizedStringForKey:@"MULTIPLE_SERVICES_SIGN_OUT_STORE" value:&stru_5A5F0 table:@"Localizable"];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1BBAC;
      v44[3] = &unk_59C48;
      v33 = v29;
      v45 = v33;
      v34 = [UIAlertAction actionWithTitle:v32 style:2 handler:v44];
      [v41 addAction:v34];

      v35 = [NSBundle bundleForClass:objc_opt_class()];
      v36 = [v35 localizedStringForKey:@"MULTIPLE_SERVICES_CANCEL" value:&stru_5A5F0 table:@"Localizable"];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1BC30;
      v42[3] = &unk_59C48;
      v37 = v33;
      v17 = v40;
      v43 = v37;
      v38 = [UIAlertAction actionWithTitle:v36 style:1 handler:v42];
      [v41 addAction:v38];

      v18 = v39;
      [(AAUIAppleAccountViewController *)self presentViewController:v41 animated:1 completion:0];
    }
  }
}

- (void)_subscriptionsSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = _os_activity_create(&dword_0, "appleaccountui/load-subscription-page", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _AAUILogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Subscription Specifier tapped", buf, 2u);
  }

  v8 = [NSURL URLWithString:SKAccountPageManageSubscriptionsURLString];
  v9 = [[SKAccountPageViewController alloc] initWithAccountURL:v8];
  [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:tappedCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1BE44;
  v11[3] = &unk_594A0;
  v11[4] = self;
  v10 = v9;
  v12 = v10;
  [v10 loadWithCompletionBlock:v11];

  os_activity_scope_leave(&state);
}

- (void)signInController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1BF34;
  v5[3] = &unk_59680;
  v5[4] = self;
  [(AAUIAppleAccountViewController *)self dismissViewControllerAnimated:1 completion:v5, error];
}

- (void)signInControllerDidCancel:(id)cancel
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1BFAC;
  v3[3] = &unk_59680;
  v3[4] = self;
  [(AAUIAppleAccountViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)_startSpinnerInSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (specifierCopy && !self->_activelyLoadingSpecifier && [specifierCopy aaui_startSpinner])
  {
    objc_storeStrong(&self->_activelyLoadingSpecifier, specifier);
  }

  _objc_release_x1();
}

- (void)_stopSpinnerInActiveSpecifier
{
  activelyLoadingSpecifier = self->_activelyLoadingSpecifier;
  if (activelyLoadingSpecifier)
  {
    [(PSSpecifier *)activelyLoadingSpecifier aaui_stopSpinner];
    v4 = self->_activelyLoadingSpecifier;
    self->_activelyLoadingSpecifier = 0;
  }
}

- (void)endUpdates
{
  v3.receiver = self;
  v3.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v3 endUpdates];
  [(AAUIAppleAccountViewController *)self handlePendingURL];
}

- (id)_valueForPaymentSpecifier:(id)specifier
{
  paymentSpecifierValue = self->_paymentSpecifierValue;
  if (!paymentSpecifierValue)
  {
    [(AAUIAppleAccountViewController *)self _loadPaymentMethodSummary];
    paymentSpecifierValue = self->_paymentSpecifierValue;
  }

  return paymentSpecifierValue;
}

- (void)_loadPaymentMethodSummary
{
  if (!self->_didAttemptToFetchPaymentMethodSummary)
  {
    self->_didAttemptToFetchPaymentMethodSummary = 1;
    v3 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1C1EC;
    block[3] = &unk_59680;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

- (void)_handlePaymentMethodSummaryResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];

  if (error)
  {
    v7 = _AAUILogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      error2 = [responseCopy error];
      v13 = 138412290;
      v14 = error2;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Failed to fetch payment method summary with error: %@", &v13, 0xCu);
    }
  }

  else if ([responseCopy numberOfCards])
  {
    v9 = [responseCopy description];
    paymentSpecifierValue = self->_paymentSpecifierValue;
    self->_paymentSpecifierValue = v9;

    _paymentSpecifierProvider = [(AAUIAppleAccountViewController *)self _paymentSpecifierProvider];
    v12 = _paymentSpecifierProvider;
    if (_paymentSpecifierProvider)
    {
      [_paymentSpecifierProvider setPaymentSummaryDescription:self->_paymentSpecifierValue];
    }

    else
    {
      [(AAUIAppleAccountViewController *)self reloadSpecifier:self->_paymentSpecifier];
    }
  }
}

- (id)_specifiersForFamily
{
  _familySpecifierProvider = [(AAUIAppleAccountViewController *)self _familySpecifierProvider];
  specifiers = [_familySpecifierProvider specifiers];

  return specifiers;
}

- (id)_familySpecifierProvider
{
  familySpecifierProvider = self->_familySpecifierProvider;
  if (!familySpecifierProvider)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = qword_6A228;
    v13 = qword_6A228;
    if (!qword_6A228)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_28FF0;
      v9[3] = &unk_59380;
      v9[4] = &v10;
      sub_28FF0(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [[v4 alloc] initWithAccountManager:self->_accountManager presenter:self];
    v7 = self->_familySpecifierProvider;
    self->_familySpecifierProvider = v6;

    [(AAUISpecifierProvider *)self->_familySpecifierProvider setDelegate:self];
    familySpecifierProvider = self->_familySpecifierProvider;
  }

  return familySpecifierProvider;
}

- (id)_specifiersForStore
{
  _storeSpecifier = [(AAUIAppleAccountViewController *)self _storeSpecifier];
  if (objc_opt_respondsToSelector())
  {
    _storeSpecifier2 = [(AAUIAppleAccountViewController *)self _storeSpecifier];
    specifiers = [_storeSpecifier2 specifiers];
  }

  else
  {
    specifiers = 0;
  }

  return specifiers;
}

- (id)_storeSpecifierProvider
{
  _storeSpecifier = [(AAUIAppleAccountViewController *)self _storeSpecifier];
  if ([_storeSpecifier conformsToProtocol:&OBJC_PROTOCOL___AAUISpecifierProvider] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = _storeSpecifier;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_storeSpecifier
{
  if (!self->_storeSpecifier)
  {
    v3 = NSClassFromString(@"SKAccountPageSpecifierProvider");
    _storeAccount = [(AAUIAppleAccountViewController *)self _storeAccount];

    if (_storeAccount)
    {
      if (v3)
      {
        v5 = [[v3 alloc] initWithAccountManager:self->_accountManager];
        storeSpecifier = self->_storeSpecifier;
        self->_storeSpecifier = v5;

        [(AAUISpecifierProvider *)self->_storeSpecifier setDelegate:self];
      }
    }
  }

  v7 = self->_storeSpecifier;

  return v7;
}

- (void)custodianSetupFlowControllerRecoveryContactInviteSent
{
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_34C74();
  }
}

- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response
{
  controllerCopy = controller;
  requestCopy = request;
  responseCopy = response;
  [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate processResponse:responseCopy];
  v11 = [NSSet setWithObjects:@"fmip1", @"prefs", @"itms", 0];
  v12 = [requestCopy URL];
  scheme = [v12 scheme];
  v14 = [v11 containsObject:scheme];

  if (v14)
  {
    v15 = +[LSApplicationWorkspace defaultWorkspace];
    v16 = [requestCopy URL];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1CC6C;
    v27[3] = &unk_59CC0;
    v28 = requestCopy;
    [v15 openURL:v16 configuration:0 completionHandler:v27];

LABEL_5:
    v20 = 0;
    goto LABEL_17;
  }

  v17 = [requestCopy URL];
  absoluteString = [v17 absoluteString];
  v19 = [absoluteString isEqualToString:@"code:generate"];

  if (v19)
  {
    [(AAUIAppleAccountViewController *)self _generateLoginCode];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AAUIAppleAccountViewController *)self _attemptUpdateAuthControllerWithActionableResponse:responseCopy];
  }

  [(AAUIAppleAccountViewController *)self _addHeadersToRequest:requestCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    redirectResponse = [controllerCopy redirectResponse];
    v22 = redirectResponse;
    if (redirectResponse)
    {
      allHeaderFields = [redirectResponse allHeaderFields];
      v24 = [allHeaderFields objectForKey:@"X-Apple-2SV-Authenticate"];

      if (v24)
      {
        objc_storeStrong(&self->_secondaryToken, v24);
      }
    }
  }

  secondaryToken = self->_secondaryToken;
  if (secondaryToken)
  {
    [requestCopy setValue:secondaryToken forHTTPHeaderField:@"X-Apple-2SV-Authenticate"];
  }

  v20 = 1;
LABEL_17:

  return v20;
}

- (void)_generateLoginCode
{
  v3 = objc_alloc_init(AAUITwoFactorCodeHook);
  [v3 generateLoginCodeWithPresenter:self completion:0];
}

- (id)remoteUIController:(id)controller createPageWithName:(id)name attributes:(id)attributes
{
  v5 = objc_alloc_init(AAUIRemotePage);
  [v5 setHidesBottomBarWhenPushed:1];

  return v5;
}

- (void)remoteUIController:(id)controller didRefreshObjectModel:(id)model
{
  controllerCopy = controller;
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AAUIAppleAccountViewController *)self _handleObjectModelChangeForController:controllerCopy objectModel:modelCopy isModal:0];
  }
}

- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally
{
  modallyCopy = modally;
  controllerCopy = controller;
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AAUIAppleAccountViewController *)self _handleObjectModelChangeForController:controllerCopy objectModel:modelCopy isModal:modallyCopy];
  }
}

- (void)_handleObjectModelChangeForController:(id)controller objectModel:(id)model isModal:(BOOL)modal
{
  modalCopy = modal;
  controllerCopy = controller;
  modelCopy = model;
  v10 = _AAUILogSystem(modelCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [modelCopy identifier];
    *buf = 138412290;
    v82 = identifier;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Handling an object model: %@", buf, 0xCu);
  }

  objc_storeStrong(&self->_currentObjectModel, model);
  defaultPages = [modelCopy defaultPages];
  firstObject = [defaultPages firstObject];
  navigationItem = [firstObject navigationItem];

  if (+[AAUIFeatureFlags isSolariumEnabled](AAUIFeatureFlags, "isSolariumEnabled") && ([navigationItem rightBarButtonItems], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count") == 0, v15, v16))
  {
    identifier2 = [controllerCopy identifier];
    v36 = [identifier2 isEqualToString:@"_AAUIRemotePageIdentifierSecondaryAuth"];

    if (v36)
    {
      if (!self->_hasShownSecondaryAuthFirstPage)
      {
        if (+[AAUIFeatureFlags isHighlightAAUICloseButtonInRUIFlowsEnabled])
        {
          v37 = 16;
        }

        else
        {
          v37 = 24;
        }

        v38 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:v37 target:self action:"_cancelSecondaryAuthenticationWasTapped:"];
        [navigationItem setRightBarButtonItem:v38];

        self->_hasShownSecondaryAuthFirstPage = 1;
      }
    }

    else if (modalCopy)
    {
      if (+[AAUIFeatureFlags isHighlightAAUICloseButtonInRUIFlowsEnabled])
      {
        v69 = 16;
      }

      else
      {
        v69 = 24;
      }

      v70 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:v69 target:self action:"_cancelButtonForRemoteObjectModelWasTapped:"];
      [navigationItem setRightBarButtonItem:v70];
    }
  }

  else if ((+[AAUIFeatureFlags isSolariumEnabled](AAUIFeatureFlags, "isSolariumEnabled") & 1) == 0 && ([navigationItem leftBarButtonItems], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count") == 0, v17, v18))
  {
    identifier3 = [controllerCopy identifier];
    v40 = [identifier3 isEqualToString:@"_AAUIRemotePageIdentifierSecondaryAuth"];

    if (v40)
    {
      if (!self->_hasShownSecondaryAuthFirstPage)
      {
        v41 = [UIBarButtonItem alloc];
        v42 = [NSBundle bundleForClass:objc_opt_class()];
        v43 = [v42 localizedStringForKey:@"CANCEL" value:&stru_5A5F0 table:@"Localizable"];
        v44 = [v41 initWithTitle:v43 style:0 target:self action:"_cancelSecondaryAuthenticationWasTapped:"];
        [navigationItem setLeftBarButtonItem:v44];

        self->_hasShownSecondaryAuthFirstPage = 1;
      }
    }

    else if (modalCopy)
    {
      v71 = [UIBarButtonItem alloc];
      v72 = [NSBundle bundleForClass:objc_opt_class()];
      v73 = [v72 localizedStringForKey:@"CANCEL" value:&stru_5A5F0 table:@"Localizable"];
      v74 = [v71 initWithTitle:v73 style:0 target:self action:"_cancelButtonForRemoteObjectModelWasTapped:"];
      [navigationItem setLeftBarButtonItem:v74];
    }
  }

  else
  {
    objc_initWeak(buf, controllerCopy);
    v75 = _NSConcreteStackBlock;
    v76 = 3221225472;
    v77 = sub_1D784;
    v78 = &unk_59CE8;
    objc_copyWeak(&v79, buf);
    v80 = modalCopy;
    [controllerCopy setHandlerForButtonName:AKActionButtonKey handler:&v75];
    objc_destroyWeak(&v79);
    objc_destroyWeak(buf);
  }

  identifier4 = [controllerCopy identifier];
  v20 = [identifier4 isEqualToString:@"_AAUIRemotePageIdentifierSecurity"];

  if (v20)
  {
    [(AAUIServerUIHookHandler *)self->_serverHookHandler processObjectModel:modelCopy isModal:modalCopy];
  }

  identifier5 = [controllerCopy identifier];
  v22 = [identifier5 isEqualToString:@"_AAUIRemotePageIdentifierPersonalInfo"];

  if (v22)
  {
    if (!self->_serverHookHandler)
    {
      v24 = objc_opt_new();
      v25 = [v24 hooksFor:3 accountManager:self->_accountManager];
      v26 = [[AAUIServerUIHookHandler alloc] initWithRemoteUIController:controllerCopy hooks:v25];
      serverHookHandler = self->_serverHookHandler;
      self->_serverHookHandler = v26;
    }

    v28 = _AAUILogSystem(v23);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Processing object model for Personal Info page.", buf, 2u);
    }

    [(AAUIServerUIHookHandler *)self->_serverHookHandler processObjectModel:modelCopy isModal:modalCopy];
  }

  identifier6 = [controllerCopy identifier];
  v30 = [identifier6 isEqualToString:@"_AAUIRemotePageIdentifierPaymentInfo"];

  if (v30)
  {
    clientInfo = [modelCopy clientInfo];
    v32 = [clientInfo objectForKey:@"paymentSummary"];

    if (v32)
    {
      [(AARequester *)self->_paymentMethodSummaryRequester cancel];
      self->_didAttemptToFetchPaymentMethodSummary = 1;
      objc_storeStrong(&self->_paymentSpecifierValue, v32);
      _paymentSpecifierProvider = [(AAUIAppleAccountViewController *)self _paymentSpecifierProvider];
      v34 = _paymentSpecifierProvider;
      if (_paymentSpecifierProvider)
      {
        [_paymentSpecifierProvider setPaymentSummaryDescription:self->_paymentSpecifierValue];
      }

      else
      {
        [(AAUIAppleAccountViewController *)self reloadSpecifier:self->_paymentSpecifier];
      }
    }
  }

  clientInfo2 = [modelCopy clientInfo];
  v46 = [clientInfo2 objectForKeyedSubscript:@"showDeviceHeaderNatively"];
  bOOLValue = [v46 BOOLValue];

  if (bOOLValue)
  {
    v49 = _AAUILogSystem(v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "Adding FMIP Header to Device Info RUI", buf, 2u);
    }

    defaultPages2 = [modelCopy defaultPages];
    firstObject2 = [defaultPages2 firstObject];

    deviceRecentlyTapped = [(AAUIDeviceSpecifierProvider *)self->_deviceSpecifierProvider deviceRecentlyTapped];
    clientInfo3 = [modelCopy clientInfo];
    [deviceRecentlyTapped updateWithRUIClientInfo:clientInfo3];

    v54 = [AAUIFMIPHeaderDeviceInfoPageSurrogate alloc];
    _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
    v56 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)v54 initWithPage:firstObject2 device:deviceRecentlyTapped appleAccount:_appleAccount];
    deviceSurrogate = self->_deviceSurrogate;
    self->_deviceSurrogate = v56;

    [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self->_deviceSurrogate setDelegate:self->_deviceSpecifierProvider];
    if (([deviceRecentlyTapped showFMIPRow] & 1) != 0 || ((objc_msgSend(deviceRecentlyTapped, "showBackupRow") & 1) != 0 || objc_msgSend(deviceRecentlyTapped, "showAppleCareRow")) && (-[AAUIAppleAccountViewController _appleAccount](self, "_appleAccount"), v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v58, "aa_isAccountClass:", AAAccountClassPrimary), v58, v59))
    {
      v60 = [(AAUIAppleAccountViewController *)self _RUITableViewSectionForDevice:deviceRecentlyTapped inPage:firstObject2 delegate:self->_deviceSurrogate];
      tableViewOM = [firstObject2 tableViewOM];
      sections = [tableViewOM sections];
      [sections insertObject:v60 atIndex:0];
    }
  }

  defaultPages3 = [modelCopy defaultPages];
  firstObject3 = [defaultPages3 firstObject];

  if ([AAUIRUITableViewSectionInjector shouldInject:AAUIRUITableInjectionTypeGDPR inPage:firstObject3])
  {
    v65 = [AAUIRUITableViewSectionInjectorFactory tableViewSectionInjectorForGPPRWithPage:firstObject3];
    objectModelDecorators = self->_objectModelDecorators;
    sourceURL = [modelCopy sourceURL];
    [(NSMutableDictionary *)objectModelDecorators setObject:v65 forKey:sourceURL];
  }

  clientInfo4 = [modelCopy clientInfo];
  [(AAUIAppleAccountViewController *)self _updateLocalAccountInformationFromClientInfo:clientInfo4];
}

- (void)_updateLocalAccountInformationFromClientInfo:(id)info
{
  infoCopy = info;
  allKeys = [infoCopy allKeys];
  v6 = [NSSet setWithArray:allKeys];

  v7 = [NSSet setWithObjects:@"firstName", @"middleName", @"lastName", @"accountName", @"primaryEmailAddress", 0];
  if ([v6 intersectsSet:v7])
  {
    selfCopy = self;
    _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
    v9 = [_appleAccount copy];

    [v9 reload];
    v10 = sub_1DAEC(infoCopy, @"firstName");
    if ([v10 length])
    {
      [v9 aa_setFirstName:v10];
    }

    v11 = sub_1DAEC(infoCopy, @"middleName");
    if ([v11 length])
    {
      [v9 aa_setMiddleName:v11];
    }

    v12 = sub_1DAEC(infoCopy, @"lastName");
    if ([v12 length])
    {
      [v9 aa_setLastName:v12];
    }

    v13 = sub_1DAEC(infoCopy, @"accountName");
    if ([v13 length])
    {
      [v9 _aa_setAppleID:v13];
    }

    v14 = sub_1DAEC(infoCopy, @"primaryEmailAddress");
    if ([v14 length])
    {
      [v9 _aa_setPrimaryEmail:v14];
    }

    isDirty = [v9 isDirty];
    if (isDirty)
    {
      v16 = _AAUILogSystem(isDirty);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Server returned updated contact information, updating account...", buf, 2u);
      }

      _accountStore = [(AAUIAppleAccountViewController *)selfCopy _accountStore];
      [_accountStore saveVerifiedAccount:v9 withCompletionHandler:&stru_59D08];
    }
  }
}

- (id)_RUITableViewSectionForDevice:(id)device inPage:(id)page delegate:(id)delegate
{
  deviceCopy = device;
  delegateCopy = delegate;
  pageCopy = page;
  v11 = [RUITableViewSection alloc];
  v12 = objc_alloc_init(NSDictionary);
  tableViewOM = [pageCopy tableViewOM];

  v14 = [v11 initWithAttributes:v12 parent:tableViewOM];
  if ([deviceCopy showFMIPRow])
  {
    _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
    v16 = [AAUIRUITableViewCellFactory ruiTableViewForRowType:0 device:deviceCopy section:v14 delegate:delegateCopy appleAccount:_appleAccount];

    [v14 addRow:v16];
  }

  if ([deviceCopy showBackupRow])
  {
    _appleAccount2 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v18 = [_appleAccount2 aa_isAccountClass:AAAccountClassPrimary];

    if (v18)
    {
      _appleAccount3 = [(AAUIAppleAccountViewController *)self _appleAccount];
      v20 = [AAUIRUITableViewCellFactory ruiTableViewForRowType:1 device:deviceCopy section:v14 delegate:delegateCopy appleAccount:_appleAccount3];

      [v14 addRow:v20];
    }
  }

  if ([deviceCopy showAppleCareRow])
  {
    _appleAccount4 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v22 = [_appleAccount4 aa_isAccountClass:AAAccountClassPrimary];

    if (v22)
    {
      _appleAccount5 = [(AAUIAppleAccountViewController *)self _appleAccount];
      v24 = [AAUIRUITableViewCellFactory ruiTableViewForRowType:2 device:deviceCopy section:v14 delegate:delegateCopy appleAccount:_appleAccount5];

      [v14 addRow:v24];
    }
  }

  return v14;
}

- (id)_fmipStatusString
{
  v2 = +[AAUIDeviceLocatorService sharedInstance];
  isEnabled = [v2 isEnabled];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (isEnabled)
  {
    v6 = @"ON";
  }

  else
  {
    v6 = @"OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_5A5F0 table:@"Localizable"];

  return v7;
}

- (id)_backupStatusString
{
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  v3 = [_appleAccount isEnabledForDataclass:kAccountDataclassBackup];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"ON";
  }

  else
  {
    v6 = @"OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_5A5F0 table:@"Localizable"];

  return v7;
}

- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal
{
  controllerCopy = controller;
  modelCopy = model;
  v10 = _AAUILogSystem(modelCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *signal;
    v32 = 138412802;
    v33 = controllerCopy;
    v34 = 2112;
    v35 = modelCopy;
    v36 = 2048;
    v37 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController (%@) did receieve objectModel (%@) with actionSignal (%lu)", &v32, 0x20u);
  }

  clientInfo = [(AAUIServerUIHookHandler *)modelCopy clientInfo];
  v13 = clientInfo;
  if (clientInfo)
  {
    v14 = [clientInfo objectForKey:AAUIClientInfoActionKey];
    v15 = [v14 isEqualToString:@"update:trustedDevicesSummary"];
    if (v15)
    {
      v16 = _AAUILogSystem(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Server request client to update trusted devices list", &v32, 2u);
      }

      [(AAUIDeviceSpecifierProvider *)self->_deviceSpecifierProvider refreshDeviceList];
    }
  }

  if (!*signal)
  {
    allPages = [(AAUIServerUIHookHandler *)modelCopy allPages];
    v18 = [allPages count];

    if (!v18)
    {
      v20 = _AAUILogSystem(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        serverHookHandler = self->_serverHookHandler;
        v32 = 138412546;
        v33 = modelCopy;
        v34 = 2112;
        v35 = serverHookHandler;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController: Undefined action signal and no page, not displaying modally! Processing objectModel (%@) with handler (%@)", &v32, 0x16u);
      }

      v22 = self->_serverHookHandler;
      if (!v22)
      {
        v23 = _AAUILogSystem(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v32) = 0;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "_serverHookHandler is nil", &v32, 2u);
        }

        v24 = objc_opt_new();
        v25 = [v24 hooksFor:1 accountManager:self->_accountManager];
        v26 = [[AAUIServerUIHookHandler alloc] initWithRemoteUIController:controllerCopy hooks:v25];
        v27 = self->_serverHookHandler;
        self->_serverHookHandler = v26;

        v29 = _AAUILogSystem(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = self->_serverHookHandler;
          activeRemoteUIController = self->_activeRemoteUIController;
          v32 = 138412546;
          v33 = v30;
          v34 = 2112;
          v35 = activeRemoteUIController;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "_serverHookHandler is %@, remoteController: %@", &v32, 0x16u);
        }

        v22 = self->_serverHookHandler;
      }

      [(AAUIServerUIHookHandler *)v22 processObjectModel:modelCopy isModal:0];
    }
  }
}

- (void)_postCDPRepairFollowUp
{
  v2 = objc_alloc_init(CDPFollowUpController);
  v3 = +[CDPFollowUpContext contextForStateRepair];
  [v3 setRepairType:2];
  v7 = 0;
  v4 = [v2 postFollowUpWithContext:v3 error:&v7];
  if (v7)
  {
    v5 = _AAUILogSystem(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Failed to post CDP repair follow up", v6, 2u);
    }
  }
}

- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response
{
  controllerCopy = controller;
  responseCopy = response;
  [(AAUIServerUIHookHandler *)self->_serverHookHandler processServerResponse:responseCopy];
  [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate processResponse:responseCopy];
  [(AAUIAppleAccountViewController *)self _attemptUpdateAuthControllerWithActionableResponse:responseCopy];
  allHeaderFields = [responseCopy allHeaderFields];
  obj = [allHeaderFields objectForKey:@"X-Apple-2SV-Authenticate"];

  if (obj)
  {
    objc_storeStrong(&self->_secondaryToken, obj);
  }

  if ([responseCopy statusCode] == &stru_158.reloff + 1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      isKindOfClass = [controllerCopy currentRequest];
      v10 = isKindOfClass;
    }

    else
    {
      v10 = 0;
    }

    v12 = _AAUILogSystem(isKindOfClass);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Got a 401 response from BuddyML request.", buf, 2u);
    }

    objc_initWeak(buf, self);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1EA94;
    v43[3] = &unk_59D30;
    objc_copyWeak(&v46, buf);
    v13 = v10;
    v44 = v13;
    v45 = controllerCopy;
    [(AAUIAppleAccountViewController *)self _refreshAppleIDSettingsTokensWithCompletion:v43];

    objc_destroyWeak(&v46);
    objc_destroyWeak(buf);
  }

  else
  {
    statusCode = [responseCopy statusCode];
    if (statusCode == stru_B8.segname)
    {
      [(AAUIAppleAccountViewController *)self _stopSpinnerInActiveSpecifier];
    }

    else
    {
      v14 = _AAUILogSystem(statusCode);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [responseCopy statusCode]);
        *buf = 138412290;
        v48 = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "unexpected HTTP response for BuddyML request: %@", buf, 0xCu);
      }

      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"ICLOUD_UNREACHABLE_TITLE" value:&stru_5A5F0 table:@"Localizable"];
      v18 = [NSBundle bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"OK" value:&stru_5A5F0 table:@"Localizable"];
      v20 = [UIAlertController alertWithTitle:v17 message:0 buttonTitle:v19 actionHandler:0];

      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1EBDC;
      v42[3] = &unk_59680;
      v42[4] = self;
      [(AAUIAppleAccountViewController *)self presentViewController:v20 animated:1 completion:v42];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = controllerCopy;
    identifier = [v21 identifier];
    v23 = [identifier isEqualToString:@"_AAUIRemotePageIdentifierSecurity"];

    if (v23)
    {
      v24 = [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate isResponseFinalForHSA2ServerFlow:responseCopy];
      self->_didCompleteHSA2 = v24;
      if (v24)
      {
        v25 = _AAUILogSystem(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Completed HSA2 flow", buf, 2u);
        }
      }
    }
  }

  clientInfo = [(RUIObjectModel *)self->_currentObjectModel clientInfo];
  v27 = [clientInfo objectForKey:@"currentPasswordRowId"];

  if (v27)
  {
    v29 = _AAUILogSystem(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Detected old password identifier, attempting to harvest...", buf, 2u);
    }

    displayedPages = [(RUIObjectModel *)self->_currentObjectModel displayedPages];
    firstObject = [displayedPages firstObject];
    v32 = [(AAUIAppleAccountViewController *)self _passcodeValueFromPage:firstObject withFieldIdentifier:v27];

    if (v32)
    {
      objc_storeStrong(&self->_oldPassword, v32);
    }
  }

  clientInfo2 = [(RUIObjectModel *)self->_currentObjectModel clientInfo];
  v34 = [clientInfo2 objectForKey:@"newPasswordRowId"];

  if (v34)
  {
    v36 = _AAUILogSystem(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Detected new password identifier, attempting to harvest...", buf, 2u);
    }

    v37 = +[NSMutableDictionary dictionary];
    [(RUIObjectModel *)self->_currentObjectModel populatePostbackDictionary:v37];
    v38 = [v37 objectForKey:v34];
    v39 = v38;
    if (v38)
    {
      v40 = _AAUILogSystem(v38);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v34;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "Harvested a new password with identifier: %@", buf, 0xCu);
      }

      objc_storeStrong(&self->_newPassword, v39);
    }
  }
}

- (id)_passcodeValueFromPage:(id)page withFieldIdentifier:(id)identifier
{
  identifierCopy = identifier;
  passcodeViewOM = [page passcodeViewOM];
  v7 = passcodeViewOM;
  if (passcodeViewOM)
  {
    v8 = _AAUILogSystem(passcodeViewOM);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      attributes = [v7 attributes];
      v10 = [attributes objectForKeyedSubscript:@"id"];
      v18 = 138412290;
      v19 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Found a passcode OM with ID: %@", &v18, 0xCu);
    }
  }

  attributes2 = [v7 attributes];
  v12 = [attributes2 objectForKeyedSubscript:@"id"];
  v13 = [v12 isEqual:identifierCopy];

  if (v13)
  {
    v15 = _AAUILogSystem(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = identifierCopy;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Harvesting passcode with for identifier: %@", &v18, 0xCu);
    }

    submittedPIN = [v7 submittedPIN];
  }

  else
  {
    submittedPIN = 0;
  }

  return submittedPIN;
}

- (void)_retryRequest:(id)request inRemoteUIController:(id)controller completion:(id)completion
{
  requestCopy = request;
  controllerCopy = controller;
  completionCopy = completion;
  v10 = _AAUILogSystem(completionCopy);
  v11 = v10;
  if (requestCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [requestCopy URL];
      *buf = 138477827;
      v16 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Retrying request to %{private}@...", buf, 0xCu);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1EF30;
    v13[3] = &unk_59B48;
    v14 = completionCopy;
    [controllerCopy loadRequest:requestCopy completion:v13];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_34D48();
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)remoteUIControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [dismissCopy identifier];
    v5 = [identifier isEqualToString:@"_AAUIRemotePageIdentifierSecondaryAuth"];

    if (v5)
    {
      [(AAUIAppleAccountViewController *)self _didFinishSecondaryAuthentication];
    }

    [(NSMutableDictionary *)self->_objectModelDecorators removeAllObjects];
  }

  _objc_release_x1();
}

- (void)_addHeadersToRequest:(id)request
{
  requestCopy = request;
  v5 = _AAUILogSystem(requestCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = requestCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Appending headers to page request %@...", &v11, 0xCu);
  }

  _grandSlamAccount = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
  _accountStore = [(AAUIAppleAccountViewController *)self _accountStore];
  v8 = [_accountStore credentialForAccount:_grandSlamAccount serviceID:AAGrandSlamAppTokenIDAppleIDSettings];

  token = [v8 token];
  [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate setServiceToken:token];
  [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate signRequest:requestCopy];
  aida_dsid = [_grandSlamAccount aida_dsid];
  [requestCopy aa_addDeviceProvisioningInfoHeadersWithDSID:aida_dsid];
}

- (id)_authController
{
  authController = self->_authController;
  if (!authController)
  {
    v4 = objc_alloc_init(AKAppleIDAuthenticationController);
    v5 = self->_authController;
    self->_authController = v4;

    authController = self->_authController;
  }

  return authController;
}

- (void)_getServerUILoadDelegateWithCompletion:(id)completion
{
  completionCopy = completion;
  serverUILoadDelegate = self->_serverUILoadDelegate;
  v6 = _AAUILogSystem(completionCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (serverUILoadDelegate)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AKAppleIDServerResourceLoadDelegate cache available", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, self->_serverUILoadDelegate, 0);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Starting to fetch AKAppleIDServerResourceLoadDelegate", buf, 2u);
    }

    _grandSlamAccount = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
    v9 = objc_alloc_init(AKAppleIDAuthenticationContext);
    aida_alternateDSID = [_grandSlamAccount aida_alternateDSID];
    [v9 setAltDSID:aida_alternateDSID];

    [v9 setAnticipateEscrowAttempt:1];
    _authController = [(AAUIAppleAccountViewController *)self _authController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1F47C;
    v12[3] = &unk_59D80;
    v12[4] = self;
    v13 = completionCopy;
    [_authController getServerUILoadDelegateWithContext:v9 completion:v12];
  }
}

- (void)_attemptUpdateAuthControllerWithActionableResponse:(id)response
{
  responseCopy = response;
  v5 = [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate isResponseActionable:responseCopy];
  if (v5)
  {
    v6 = _AAUILogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Final Apple ID settings UI server response! Informing AuthKit...", buf, 2u);
    }

    _grandSlamAccount = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
    v8 = objc_alloc_init(AKAppleIDAuthenticationContext);
    aida_alternateDSID = [_grandSlamAccount aida_alternateDSID];
    [v8 setAltDSID:aida_alternateDSID];

    [v8 setAnticipateEscrowAttempt:1];
    username = [_grandSlamAccount username];
    [v8 setUsername:username];

    v11 = dispatch_semaphore_create(0);
    _authController = [(AAUIAppleAccountViewController *)self _authController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1F7F4;
    v14[3] = &unk_599B8;
    v15 = v11;
    v13 = v11;
    [_authController updateStateWithExternalAuthenticationResponse:responseCopy forContext:v8 completion:v14];

    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)_imageControlTapped
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "User opted to edit profile picture...", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1F9CC;
  v5[3] = &unk_59DA8;
  v5[4] = self;
  v4 = [AAUIImagePickerAlertController alertControllerWithSelectionHandler:v5];
  [(AAUIAppleAccountViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_beginObservingProfilePictureStoreDidChangeNotification
{
  objc_initWeak(&location, self);
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[NSOperationQueue mainQueue];
  v5 = AAUIProfilePictureStoreDidChangeNotification;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1FBB4;
  v8[3] = &unk_59940;
  objc_copyWeak(&v9, &location);
  v6 = [v3 addObserverForName:v5 object:0 queue:v4 usingBlock:v8];
  profilePictureStoreDidChangeObserver = self->_profilePictureStoreDidChangeObserver;
  self->_profilePictureStoreDidChangeObserver = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_profilePictureStoreDidChange:(id)change
{
  v4 = _AAUIPPSLogSystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController updating profile photo", v9, 2u);
  }

  _profilePictureStore = [(AAUIAppleAccountViewController *)self _profilePictureStore];
  profilePictureForAccountOwner = [_profilePictureStore profilePictureForAccountOwner];

  [(AAUIAppleAccountViewController *)self _setupHeader];
  imageControl = [(AAUIAppleAccountHeaderView *)self->_accountHeaderView imageControl];
  imageView = [imageControl imageView];
  [imageView setImage:profilePictureForAccountOwner];
}

- (void)_stopObservingProfilePictureStoreDidChangeNotification
{
  if (self->_profilePictureStoreDidChangeObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_profilePictureStoreDidChangeObserver];

    profilePictureStoreDidChangeObserver = self->_profilePictureStoreDidChangeObserver;
    self->_profilePictureStoreDidChangeObserver = 0;
  }
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  lsCopy = ls;
  [(AAUIAppleAccountViewController *)self dismissViewControllerAnimated:1 completion:&stru_59DC8];
  firstObject = [lsCopy firstObject];

  v7 = [NSData dataWithContentsOfURL:firstObject options:0 error:0];

  if (v7)
  {
    v8 = [[UIImagePickerController alloc] _initWithSourceImageData:v7 cropRect:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    _properties = [v8 _properties];
    v10 = [NSMutableDictionary dictionaryWithDictionary:_properties];

    v12[0] = UIImagePickerControllerAllowsEditing;
    v12[1] = _UIImagePickerControllerUseTelephonyUI;
    v13[0] = &__kCFBooleanTrue;
    v13[1] = &__kCFBooleanTrue;
    v12[2] = _UIImagePickerControllerAllowAnySuperview;
    v12[3] = _UIImagePickerControllerForceNativeScreenScale;
    v13[2] = &__kCFBooleanTrue;
    v13[3] = &__kCFBooleanTrue;
    v12[4] = _UIImagePickerController1XCroppedImage;
    v13[4] = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
    [v10 addEntriesFromDictionary:v11];

    [v8 _setProperties:v10];
    [v8 setDelegate:self];
    [(AAUIAppleAccountViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  v4 = _AAUILogSystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "User cancelled document picker view controller.", v5, 2u);
  }

  [(AAUIAppleAccountViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_refreshAppleIDSettingsTokensWithCompletion:(id)completion
{
  completionCopy = completion;
  _grandSlamAccount = [(AAUIAppleAccountViewController *)self _grandSlamAccount];

  if (_grandSlamAccount)
  {
    v18[0] = &__kCFBooleanTrue;
    v17[0] = kACRenewCredentialsShouldForceKey;
    v17[1] = kACRenewCredentialsServicesKey;
    v16 = AAGrandSlamAppTokenIDAppleIDSettings;
    v6 = [NSArray arrayWithObjects:&v16 count:1];
    v18[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

    _accountStore = [(AAUIAppleAccountViewController *)self _accountStore];
    _grandSlamAccount2 = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_20228;
    v14[3] = &unk_59E40;
    v14[4] = self;
    v15 = completionCopy;
    [_accountStore renewCredentialsForAccount:_grandSlamAccount2 options:v7 completion:v14];
  }

  else
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"SERVER_NO_CREDENTIALS_TITLE" value:&stru_5A5F0 table:@"Localizable"];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SERVER_NO_CREDENTIALS_MESSAGE" value:&stru_5A5F0 table:@"Localizable"];
    [(AAUIAppleAccountViewController *)self _showAlertWithTitle:v11 message:v13];

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_requestSecondaryAuthenticationIfNecessaryWithGSToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  _grandSlamAccount = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
  v9 = [AASecondaryAuthenticationRequest alloc];
  aida_alternateDSID = [_grandSlamAccount aida_alternateDSID];
  v11 = [v9 initWithDSID:aida_alternateDSID primaryToken:tokenCopy];

  urlRequest = [v11 urlRequest];
  v13 = [urlRequest URL];

  v14 = [NSURL URLWithString:@"/" relativeToURL:v13];
  absoluteURL = [v14 absoluteURL];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_20814;
  v18[3] = &unk_59E90;
  v18[4] = self;
  v19 = absoluteURL;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = absoluteURL;
  [v11 performRequestWithHandler:v18];
}

- (void)_handleSecondaryAuthenticationResponse:(id)response baseURL:(id)l completion:(id)completion
{
  responseCopy = response;
  lCopy = l;
  completionCopy = completion;
  v11 = _AAUILogSystem(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    statusCode = [responseCopy statusCode];
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Secondary Auth response code: %lu", &v13, 0xCu);
  }

  if ([responseCopy statusCode] == &stru_158.reloff + 3)
  {
    buddyML = [responseCopy buddyML];
    [(AAUIAppleAccountViewController *)self _pushSecondaryAuthenticationRemoteUI:buddyML baseURL:lCopy withCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_pushSecondaryAuthenticationRemoteUI:(id)i baseURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  iCopy = i;
  v10 = objc_retainBlock(completion);
  secondaryAuthCompletion = self->_secondaryAuthCompletion;
  self->_secondaryAuthCompletion = v10;

  v12 = objc_alloc_init(PSSetupController);
  [v12 setParentController:self];
  [v12 setModalPresentationStyle:2];
  v13 = [[AAUIRemoteUIController alloc] initWithIdentifier:@"_AAUIRemotePageIdentifierSecondaryAuth"];
  [v13 setDelegate:self];
  [v13 setNavigationController:v12];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_20B70;
  v15[3] = &unk_599B8;
  v16 = v13;
  v14 = v13;
  [v14 setLoadCompletion:v15];
  [v14 loadData:iCopy baseURL:lCopy];

  [(AAUIAppleAccountViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_didFinishSecondaryAuthentication
{
  secondaryAuthCompletion = self->_secondaryAuthCompletion;
  if (secondaryAuthCompletion)
  {
    secondaryAuthCompletion[2](secondaryAuthCompletion, a2);
    v4 = self->_secondaryAuthCompletion;
    self->_secondaryAuthCompletion = 0;
  }

  self->_hasShownSecondaryAuthFirstPage = 0;
}

- (void)_showAccountDetailsUnavailableAlert
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ACCOUNT_DETAILS_UNAVAILABLE_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ACCOUNT_DETAILS_UNAVAILABLE_MESSAGE" value:&stru_5A5F0 table:@"Localizable"];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_5A5F0 table:@"Localizable"];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"GET_VERIFICATION_CODE_BUTTON" value:&stru_5A5F0 table:@"Localizable"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_20E48;
  v12[3] = &unk_59EB8;
  v12[4] = self;
  v11 = [UIAlertController alertWithTitle:v4 message:v6 cancelButtonTitle:v8 defaultButtonTitle:v10 actionHandler:v12];

  [(AAUIAppleAccountViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)_showAlertWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_5A5F0 table:@"Localizable"];
  v10 = [UIAlertController alertWithTitle:titleCopy message:messageCopy buttonTitle:v9];

  [(AAUIAppleAccountViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)_presentFirstAlertIfNecessary
{
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  aa_accountFirstDisplayAlert = [_appleAccount aa_accountFirstDisplayAlert];
  v4 = aa_accountFirstDisplayAlert;
  if (aa_accountFirstDisplayAlert)
  {
    v5 = [aa_accountFirstDisplayAlert objectForKeyedSubscript:@"identifier"];
    stringValue = [v5 stringValue];

    v7 = AAPrefsDomain;
    v8 = CFPreferencesCopyAppValue(@"AAMobileMeAccountAlerts", AAPrefsDomain);
    if (!v8 || ([_appleAccount identifier], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKey:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10) || (objc_msgSend(v10, "objectForKey:", stringValue), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "BOOLValue"), v11, v10, (v12 & 1) == 0))
    {
      v13 = [v4 objectForKeyedSubscript:@"title"];
      v14 = [v4 objectForKeyedSubscript:@"message"];
      [(AAUIAppleAccountViewController *)self _showAlertWithTitle:v13 message:v14];

      v15 = [v8 mutableCopy];
      if (!v15)
      {
        v15 = objc_alloc_init(NSMutableDictionary);
      }

      identifier = [_appleAccount identifier];
      v17 = [v15 objectForKey:identifier];
      v18 = [v17 mutableCopy];

      if (!v18)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
      }

      v19 = [v4 objectForKeyedSubscript:@"identifier"];
      stringValue2 = [v19 stringValue];

      if (stringValue2)
      {
        [v18 setValue:&__kCFBooleanTrue forKey:stringValue2];
      }

      identifier2 = [_appleAccount identifier];
      [v15 setObject:v18 forKey:identifier2];

      CFPreferencesSetAppValue(@"AAMobileMeAccountAlerts", v15, v7);
      CFPreferencesSynchronize(v7, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    }
  }
}

- (unint64_t)_reloadOptionsForChangesFromAccounts:(id)accounts toAccounts:(id)toAccounts
{
  v6 = AIDAServiceTypeCloud;
  toAccountsCopy = toAccounts;
  accountsCopy = accounts;
  v9 = [accountsCopy objectForKeyedSubscript:v6];
  v10 = AIDAServiceTypeStore;
  v11 = [accountsCopy objectForKeyedSubscript:AIDAServiceTypeStore];
  v12 = [(AAUIAppleAccountViewController *)self _personNameComponentsForAccountCollection:accountsCopy];

  v13 = [toAccountsCopy objectForKeyedSubscript:v6];
  v14 = [toAccountsCopy objectForKeyedSubscript:v10];
  v66 = [(AAUIAppleAccountViewController *)self _personNameComponentsForAccountCollection:toAccountsCopy];

  if (v9)
  {
    if (([v9 aa_isPrimaryEmailVerified] & 1) == 0)
    {
      aa_isPrimaryEmailVerified = [v13 aa_isPrimaryEmailVerified];
      if (aa_isPrimaryEmailVerified)
      {
        v16 = _AAUILogSystem(aa_isPrimaryEmailVerified);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "_reloadOptionsForChangesFromAccounts:toAccounts: Apple Account primary email address became verified.", buf, 2u);
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_217BC;
        block[3] = &unk_59680;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }

  username = [v9 username];
  v67 = v13;
  username2 = [v13 username];
  if (username | username2 && ![username isEqual:username2])
  {
    v21 = 0;
    v22 = v66;
  }

  else
  {
    username3 = [v11 username];
    username4 = [v14 username];
    if (username3 | username4)
    {
      v21 = [username3 isEqual:username4];
    }

    else
    {
      v21 = 1;
    }

    v22 = v66;
  }

  if (v12 | v22)
  {
    v23 = [v12 isEqual:v22];
  }

  else
  {
    v23 = 1;
  }

  v63 = v14;
  if (v11 || !v14)
  {
    if (v11)
    {
      v25 = v14 == 0;
    }

    else
    {
      v25 = 0;
    }

    v24 = v25;
  }

  else
  {
    v24 = 1;
  }

  v64 = v11;
  v62 = v12;
  if (v9 || !v67)
  {
    if (v9)
    {
      v27 = v67 == 0;
    }

    else
    {
      v27 = 0;
    }

    v26 = v27;
  }

  else
  {
    v26 = 1;
  }

  v59 = v23;
  v60 = v21 & v23;
  v61 = v21;
  aa_needsToVerifyTerms = [v67 aa_needsToVerifyTerms];
  aa_needsToVerifyTerms2 = [v9 aa_needsToVerifyTerms];
  aa_suspensionInfo = [v67 aa_suspensionInfo];
  isiCloudSuspended = [aa_suspensionInfo isiCloudSuspended];
  aa_suspensionInfo2 = [v9 aa_suspensionInfo];
  v33 = v9;
  isiCloudSuspended2 = [aa_suspensionInfo2 isiCloudSuspended];

  aa_suspensionInfo3 = [v67 aa_suspensionInfo];
  isFamilySuspended = [aa_suspensionInfo3 isFamilySuspended];
  v65 = v33;
  aa_suspensionInfo4 = [v33 aa_suspensionInfo];
  isFamilySuspended2 = [aa_suspensionInfo4 isFamilySuspended];

  v39 = 1;
  if (((v24 | v26) & 1) == 0 && ((aa_needsToVerifyTerms ^ aa_needsToVerifyTerms2) & 1) == 0)
  {
    v39 = isiCloudSuspended ^ isiCloudSuspended2 | isFamilySuspended ^ isFamilySuspended2;
  }

  v40 = kAccountDataclassBackup;
  v41 = v65;
  v42 = [v65 isEnabledForDataclass:kAccountDataclassBackup];
  v43 = [v67 isEnabledForDataclass:v40];
  v44 = v43;
  if (v60)
  {
    v45 = 0;
    goto LABEL_48;
  }

  if ((v61 & 1) == 0)
  {
    v46 = _AAUILogSystem(v43);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      username5 = [v65 username];
      username6 = [v67 username];
      username7 = [v64 username];
      username8 = [v63 username];
      *buf = 138413058;
      v70 = username5;
      v71 = 2112;
      v72 = username6;
      v73 = 2112;
      v74 = username7;
      v75 = 2112;
      v76 = username8;
      _os_log_debug_impl(&dword_0, v46, OS_LOG_TYPE_DEBUG, "AAUI Username change: AppleAccount: %@/%@ (old/new)  StoreAccount: %@/%@ (old/new)", buf, 0x2Au);

      v41 = v65;
    }

    goto LABEL_46;
  }

  if ((v59 & 1) == 0)
  {
    v46 = _AAUILogSystem(v43);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      sub_34D84();
    }

LABEL_46:
  }

  v45 = 1;
LABEL_48:
  v47 = v42 ^ v44;
  if ((v39 & 1) == 0)
  {
    v49 = v64;
    v50 = v62;
    v51 = v67;
    if (!v47)
    {
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  v48 = _AAUILogSystem(v43);
  v49 = v64;
  v50 = v62;
  v51 = v67;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Account authentication state changed. Will reload specifiers.", buf, 2u);
  }

  v45 |= 2uLL;
  if (v47)
  {
LABEL_54:
    v52 = _AAUILogSystem(v43);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "Account backup dataclass changed", buf, 2u);
    }

    v45 |= 4uLL;
  }

LABEL_57:
  if (v41 && !v51)
  {
    v53 = _AAUILogSystem(v43);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "AppleAccount signed out", buf, 2u);
    }

    v45 |= 8uLL;
  }

  return v45;
}

- (void)operationsHelper:(id)helper willSaveAccount:(id)account
{
  accountCopy = account;
  helperCopy = helper;
  v8 = _AAUILogSystem(helperCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = accountCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Operations helper will save account: %@", buf, 0xCu);
  }

  if (self->_shouldAttemptToEnableDataclasses)
  {
    self->_shouldAttemptToEnableDataclasses = 0;
  }

  [(AAUIAppleAccountViewController *)self _stopObservingAccountStoreChanges];
  v9.receiver = self;
  v9.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v9 operationsHelper:helperCopy willSaveAccount:accountCopy];
}

- (void)operationsHelper:(id)helper didSaveAccount:(id)account withSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  accountCopy = account;
  helperCopy = helper;
  v13 = _AAUILogSystem(helperCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (successCopy)
    {
      v14 = @"YES";
    }

    *buf = 138412546;
    v17 = v14;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Operations helper did save account with success? %@, error: %@", buf, 0x16u);
  }

  v15.receiver = self;
  v15.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v15 operationsHelper:helperCopy didSaveAccount:accountCopy withSuccess:successCopy error:errorCopy];

  [(AAUIAppleAccountViewController *)self _startObservingAccountStoreChanges];
}

- (void)_issueFindMyiPhonePromptWithTitle:(id)title andMessage:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_5A5F0 table:@"Localizable"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_21BF0;
  v11[3] = &unk_59680;
  v11[4] = self;
  v10 = [UIAlertController alertWithTitle:titleCopy message:messageCopy buttonTitle:v9 actionHandler:v11];

  [(AAUIAppleAccountViewController *)self presentViewController:v10 animated:0 completion:0];
}

- (void)_promptUserToEnableFindMyiPhoneIfPossible
{
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  if ([_appleAccount aa_isPrimaryEmailVerified] && objc_msgSend(_appleAccount, "isProvisionedForDataclass:", kAccountDataclassDeviceLocator) && objc_msgSend(_appleAccount, "aa_isPrimaryAccount"))
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DEVICE_LOCATOR_TITLE"];
    v6 = [v4 localizedStringForKey:v5 value:&stru_5A5F0 table:@"Localizable"];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ENABLE_DEVICE_LOCATOR_MESSAGE_REBRAND"];
    v9 = [v7 localizedStringForKey:v8 value:&stru_5A5F0 table:@"Localizable"];

    v10 = +[NRPairedDeviceRegistry sharedInstance];
    getActivePairedDevice = [v10 getActivePairedDevice];

    v12 = [[NSUUID alloc] initWithUUIDString:@"02168E84-5DD8-4B19-9204-A79F04B33A32"];
    v13 = [getActivePairedDevice supportsCapability:v12];

    if (v13)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_21EB8;
      v14[3] = &unk_59EE0;
      v14[4] = self;
      v15 = v6;
      [AAUIDeviceLocatorConfirmationUtilities checkIfWatchHasAppleIDAccount:v14];
    }

    else
    {
      [(AAUIAppleAccountViewController *)self _issueFindMyiPhonePromptWithTitle:v6 andMessage:v9];
    }
  }
}

- (void)_startObservingDeviceLocatorStateChanges
{
  if (!self->_deviceLocatorStateDidChangeObserver)
  {
    objc_initWeak(&location, self);
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = AAUIDeviceLocatorStateDidChangeNotification;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_22124;
    v7[3] = &unk_59940;
    objc_copyWeak(&v8, &location);
    v5 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v7];
    deviceLocatorStateDidChangeObserver = self->_deviceLocatorStateDidChangeObserver;
    self->_deviceLocatorStateDidChangeObserver = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_stopObservingDeviceLocatorStateChanges
{
  if (self->_deviceLocatorStateDidChangeObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_deviceLocatorStateDidChangeObserver];

    deviceLocatorStateDidChangeObserver = self->_deviceLocatorStateDidChangeObserver;
    self->_deviceLocatorStateDidChangeObserver = 0;
  }
}

- (void)_deviceLocatorStateDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_222B4;
  block[3] = &unk_59680;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)refreshDetailTextForTableCellWithTag:(int64_t)tag
{
  v8 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self->_deviceSurrogate cellWithTag:?];
  if (tag == 1002)
  {
    _backupStatusString = [(AAUIAppleAccountViewController *)self _backupStatusString];
    goto LABEL_5;
  }

  if (tag == 1001)
  {
    _backupStatusString = [(AAUIAppleAccountViewController *)self _fmipStatusString];
LABEL_5:
    v6 = _backupStatusString;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  detailTextLabel = [v8 detailTextLabel];
  [detailTextLabel setText:v6];
}

- (void)_startObservingPresentCustodianSetupNotification
{
  objc_initWeak(&location, self);
  if (!self->_presentAddRecoveryContactNotificationObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_225A4;
    v6[3] = &unk_59940;
    objc_copyWeak(&v7, &location);
    v4 = [v3 addObserverForName:@"AAUIPresentCustodianSetupNotification" object:0 queue:0 usingBlock:v6];
    presentAddRecoveryContactNotificationObserver = self->_presentAddRecoveryContactNotificationObserver;
    self->_presentAddRecoveryContactNotificationObserver = v4;

    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

- (void)_stopObservingPresentCustodianSetupNotification
{
  if (self->_presentAddRecoveryContactNotificationObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_presentAddRecoveryContactNotificationObserver];

    presentAddRecoveryContactNotificationObserver = self->_presentAddRecoveryContactNotificationObserver;
    self->_presentAddRecoveryContactNotificationObserver = 0;
  }
}

- (void)_startObservingRCUpsellTipDismissedNotification
{
  objc_initWeak(&location, self);
  if (!self->_rcUpsellTipDismissedNotificationObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_227B8;
    v6[3] = &unk_59940;
    objc_copyWeak(&v7, &location);
    v4 = [v3 addObserverForName:@"AAUIRecoveryContactUpsellTipDismissed" object:0 queue:0 usingBlock:v6];
    rcUpsellTipDismissedNotificationObserver = self->_rcUpsellTipDismissedNotificationObserver;
    self->_rcUpsellTipDismissedNotificationObserver = v4;

    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

- (void)_stopObservingRCUpsellTipDismissedNotification
{
  if (self->_rcUpsellTipDismissedNotificationObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_rcUpsellTipDismissedNotificationObserver];

    rcUpsellTipDismissedNotificationObserver = self->_rcUpsellTipDismissedNotificationObserver;
    self->_rcUpsellTipDismissedNotificationObserver = 0;
  }
}

- (void)presentCustodianSetupFlow:(id)flow
{
  v4 = [[AAUICustodianSetupFlowController alloc] initWithAccountManager:self->_accountManager];
  custodianSetupFlowController = self->_custodianSetupFlowController;
  self->_custodianSetupFlowController = v4;

  [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController setDelegate:self];
  [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController start];
  navigationController = [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController navigationController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_22980;
  v7[3] = &unk_59680;
  v7[4] = self;
  [(AAUIAppleAccountViewController *)self presentViewController:navigationController animated:1 completion:v7];
}

- (void)_beginObservingEmailVerificationStatus
{
  if (self->_emailVerificationToken == -1)
  {
    objc_initWeak(&location, self);
    uTF8String = [AKEmailVerificationCompletedNotificationKey UTF8String];
    v4 = &_dispatch_main_q;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_22AD8;
    v5[3] = &unk_59F08;
    objc_copyWeak(&v6, &location);
    notify_register_dispatch(uTF8String, &self->_emailVerificationToken, &_dispatch_main_q, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_beginObservingiCloudRestoreStatus
{
  if (self->_iCloudRestoreToken == -1)
  {
    objc_initWeak(&location, self);
    uTF8String = [kMBManagerRestoreStateChangedNotification UTF8String];
    v4 = &_dispatch_main_q;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_22C7C;
    v5[3] = &unk_59F08;
    objc_copyWeak(&v6, &location);
    notify_register_dispatch(uTF8String, &self->_iCloudRestoreToken, &_dispatch_main_q, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_isRestoringFromiCloud
{
  state64 = 0;
  notify_get_state(self->_iCloudRestoreToken, &state64);
  return state64 - 1 < 2;
}

- (BOOL)_setupForNetworkActivity
{
  tryLock = [(NSLock *)self->_accountValidationLock tryLock];
  v4 = tryLock;
  if (tryLock)
  {
    self->_performingUpdate = 1;
    v5 = _AAUILogSystem(tryLock);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Enabling task completion", buf, 2u);
    }

    [(AAUIAppleAccountViewController *)self setTaskCompletionAssertionEnabled:1];
    v6 = +[UIApplication sharedApplication];
    [v6 setNetworkActivityIndicatorVisible:1];
  }

  else
  {
    v6 = _AAUILogSystem(tryLock);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Failed to grab validation lock.", v8, 2u);
    }
  }

  return v4;
}

- (void)_cleanupFromNetworkActivity
{
  self->_performingUpdate = 0;
  v3 = self->_accountValidationLock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_22F78;
  block[3] = &unk_59680;
  v4 = v3;
  v9 = v4;
  dispatch_async(&_dispatch_main_q, block);
  v5 = +[UIApplication sharedApplication];
  [v5 setNetworkActivityIndicatorVisible:0];

  v6 = _AAUILogSystem([(AAUIAppleAccountViewController *)self setTaskCompletionAssertionEnabled:0]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Disabling task completion", &v7, 2u);
  }
}

- (void)_checkNetworkReachabilityAndValidateAccount
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Attempting to revalidate account", buf, 2u);
  }

  v4 = +[AKNetworkObserver sharedNetworkObserver];
  isNetworkReachable = [v4 isNetworkReachable];

  performedUpdate = self->_performedUpdate;
  v8 = _AAUILogSystem(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (performedUpdate)
  {
    if (v9)
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Revaidation already complete, skipping", v10, 2u);
    }
  }

  else if (isNetworkReachable)
  {
    if (v9)
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Performing network revalidation of account", v12, 2u);
    }

    [(AAUIAppleAccountViewController *)self _performNetworkValidation];
  }

  else
  {
    if (v9)
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "We are offline, starting to wait for reachability...", v11, 2u);
    }

    self->_monitoringReachability = 1;
  }
}

- (void)_performNetworkValidation
{
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  v4 = _appleAccount;
  if (_appleAccount)
  {
    if ([_appleAccount aa_needsRegistration] && (v5 = objc_msgSend(v4, "aa_isSyncedAccount"), (v5 & 1) == 0))
    {
      v7 = _AAUILogSystem(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "The account has no dataclass properties and needs to be registered", v8, 2u);
      }

      [(AAUIAppleAccountViewController *)self _registerAccount];
    }

    else
    {
      [(AAUIAppleAccountViewController *)self _revalidateAccount];
    }
  }

  else
  {
    v6 = _AAUILogSystem(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Not signed in to an iCloud account, unable to perform network validation", buf, 2u);
    }
  }
}

- (void)_startMonitoringReachability
{
  v3 = +[AKNetworkObserver sharedNetworkObserver];
  [v3 addNetworkReachableObserver:self selector:"_reachabilityChanged:"];
}

- (void)_stopMonitoringReachability
{
  v3 = +[AKNetworkObserver sharedNetworkObserver];
  [v3 removeNetworkReachableObserver:self];
}

- (void)_reachabilityChanged:(BOOL)changed
{
  changedCopy = changed;
  v5 = _AAUILogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (changedCopy)
    {
      v6 = @"YES";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Network reachability changed to: %@", &v8, 0xCu);
  }

  if (self->_monitoringReachability && changedCopy)
  {
    [(AAUIAppleAccountViewController *)self _performNetworkValidation];
    self->_monitoringReachability = 0;
  }

  [(AAUIAppleAccountViewController *)self _forgetSpecifiers];
  [(AAUIAppleAccountViewController *)self reloadSpecifiers];
}

- (void)_registerAccount
{
  [(AAUIAppleAccountViewController *)self _setupForNetworkActivity];
  _accountStore = [(AAUIAppleAccountViewController *)self _accountStore];
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_23484;
  v5[3] = &unk_599B8;
  v5[4] = self;
  [_accountStore aa_registerAppleAccount:_appleAccount withCompletion:v5];
}

- (void)_handleAccountRegistrationCompletionWithResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v7 = errorCopy;
  self->_performedUpdate = 1;
  if (resultCopy)
  {
    _accountStore = [(AAUIAppleAccountViewController *)self _accountStore];
    _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
    [_accountStore saveAccount:_appleAccount withCompletionHandler:&stru_59F28];

    [(AAUIAppleAccountViewController *)self _cleanupFromNetworkActivity];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_236B4;
    block[3] = &unk_59680;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if (errorCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_236F8;
    v10[3] = &unk_594A0;
    v10[4] = self;
    v11 = errorCopy;
    dispatch_async(&_dispatch_main_q, v10);
  }

  else
  {
    [(AAUIAppleAccountViewController *)self _cleanupFromNetworkActivity];
  }
}

- (void)_revalidateAccount
{
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  v4 = _appleAccount;
  if (!_appleAccount)
  {
    v6 = _AAUILogSystem(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v10 = "User not signed in to AppleAccount, will not perform revalidation";
LABEL_14:
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    goto LABEL_17;
  }

  allowAccountRevalidation = self->_allowAccountRevalidation;
  v6 = _AAUILogSystem(_appleAccount);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!allowAccountRevalidation)
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    *buf = 0;
    v10 = "Hold off account revalidation, we're probably displaying a dialog";
    goto LABEL_14;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Revalidating Account", buf, 2u);
  }

  _setupForNetworkActivity = [(AAUIAppleAccountViewController *)self _setupForNetworkActivity];
  if ((_setupForNetworkActivity & 1) == 0)
  {
    v6 = _AAUILogSystem(_setupForNetworkActivity);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v10 = "Network setup failed, aborting update";
    goto LABEL_14;
  }

  if ([v4 aa_isPrimaryEmailVerified])
  {
    v9 = -32768;
  }

  else
  {
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"VERIFYING" value:&stru_5A5F0 table:@"Localizable"];
    [(AAUIAppleAccountViewController *)self startValidationWithPrompt:v12 userInteraction:1];

    v9 = 2;
  }

  v13 = [v4 copy];
  v14 = dispatch_get_global_queue(v9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_23A78;
  block[3] = &unk_59F78;
  block[4] = self;
  v16 = v4;
  v17 = v13;
  v6 = v13;
  dispatch_async(v14, block);

LABEL_17:
}

- (BOOL)_isPasswordRequiredToValidateAppleAccount:(id)account
{
  accountCopy = account;
  aa_authToken = [accountCopy aa_authToken];
  if (aa_authToken)
  {
  }

  else
  {
    aa_password = [accountCopy aa_password];

    if (!aa_password)
    {
      v8 = _AAUILogSystem(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        v14 = "No iCloud auth token and no password. Need to do password auth.";
        v15 = v20;
        goto LABEL_16;
      }

LABEL_17:
      v11 = 1;
      goto LABEL_18;
    }
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AAUISuppressFire", @"com.apple.Preferences", 0);
  if (AppBooleanValue == 1)
  {
    v8 = _AAUILogSystem(AppBooleanValue);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:
      v11 = 0;
LABEL_18:

      goto LABEL_19;
    }

    *buf = 0;
    v9 = "AAUISuppressFire is on. Will not check for Lilac Mode.";
    v10 = buf;
LABEL_7:
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    goto LABEL_8;
  }

  isAuthenticated = [accountCopy isAuthenticated];
  if ((isAuthenticated & 1) == 0)
  {
    v8 = _AAUILogSystem(isAuthenticated);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v14 = "Account is marked as unauthenticated. Need to do password auth.";
      v15 = &v18;
LABEL_16:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  aa_isPrimaryEmailVerified = [accountCopy aa_isPrimaryEmailVerified];
  if ((aa_isPrimaryEmailVerified & 1) == 0)
  {
    v8 = _AAUILogSystem(aa_isPrimaryEmailVerified);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v17 = 0;
    v9 = "iCloud account is still unverified. Skipping Lilac Mode check.";
    v10 = &v17;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_19:

  return v11;
}

- (void)_beginValidationForAccount:(id)account
{
  accountCopy = account;
  _accountStore = [(AAUIAppleAccountViewController *)self _accountStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_23EA0;
  v7[3] = &unk_59720;
  v7[4] = self;
  v8 = accountCopy;
  v6 = accountCopy;
  [_accountStore aa_updatePropertiesForAppleAccount:v6 completion:v7];
}

- (void)_handleAccountRevalidationCompletionWithValidatedAccount:(id)account success:(BOOL)success error:(id)error
{
  successCopy = success;
  accountCopy = account;
  errorCopy = error;
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  aa_serviceUnavailable = [_appleAccount aa_serviceUnavailable];
  aa_serviceUnavailable2 = [accountCopy aa_serviceUnavailable];
  aa_isPrimaryEmailVerified = [_appleAccount aa_isPrimaryEmailVerified];
  aa_isPrimaryEmailVerified2 = [accountCopy aa_isPrimaryEmailVerified];
  if (errorCopy || !successCopy)
  {
    if (!errorCopy || successCopy)
    {
      v25 = _AAUILogSystem(aa_isPrimaryEmailVerified2);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "validation operations canceled", buf, 2u);
      }

      self->_performedUpdate = 1;
    }

    else
    {
      self->_performedUpdate = 1;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_24534;
      block[3] = &unk_59FC8;
      block[4] = self;
      v34 = errorCopy;
      v35 = _appleAccount;
      v36 = accountCopy;
      dispatch_async(&_dispatch_main_q, block);
    }

    goto LABEL_27;
  }

  v15 = aa_isPrimaryEmailVerified2;
  v31 = aa_serviceUnavailable;
  v32 = aa_isPrimaryEmailVerified;
  v30 = aa_serviceUnavailable2;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  provisionedDataclasses = [accountCopy provisionedDataclasses];
  v17 = [provisionedDataclasses countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(provisionedDataclasses);
        }

        v21 = *(*(&v40 + 1) + 8 * i);
        v22 = [_appleAccount isEnabledForDataclass:v21];
        if (v22 != [accountCopy isEnabledForDataclass:v21])
        {
          [accountCopy setEnabled:v22 forDataclass:v21];
        }
      }

      v18 = [provisionedDataclasses countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v18);
  }

  if (v32 & 1 | ((v15 & 1) == 0) && ((v31 ^ 1 | v30) & 1) != 0)
  {
    if ((v15 & 1) == 0)
    {
      [(AAUIAppleAccountViewController *)self _autoVerifyAccount];
      v24 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v26 = _AAUILogSystem(v23);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Account became verified", buf, 2u);
    }

    v27 = [NSBundle bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"APPLEID_TITLE" value:&stru_5A5F0 table:@"Localizable"];
    [(AAUIAppleAccountViewController *)self stopValidationWithPrompt:v28 showButtons:0];

    [(AAUIAppleAccountViewController *)self _accountEmailBecameVerified];
  }

  v24 = 1;
LABEL_26:
  self->_performedUpdate = 1;
  [(AAUIAppleAccountViewController *)self _presentFirstAlertIfNecessary];
  v29 = dispatch_get_global_queue(0, 0);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_24464;
  v37[3] = &unk_594A0;
  v37[4] = self;
  v38 = accountCopy;
  dispatch_async(v29, v37);

  errorCopy = 0;
  if (v24)
  {
LABEL_27:
    [(AAUIAppleAccountViewController *)self _cleanupFromNetworkActivity];
  }
}

- (void)_accountEmailBecameVerified
{
  [(AAUIAppleAccountViewController *)self _enableAllProvisionedDataclasses];
  [(AAUIAppleAccountViewController *)self _forgetSpecifiers];

  [(AAUIAppleAccountViewController *)self reloadSpecifiers];
}

- (void)_enableAllProvisionedDataclasses
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Attempting to enable all provisioned dataclasses", buf, 2u);
  }

  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  v5 = _appleAccount;
  if (_appleAccount)
  {
    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 0;
    accountWorkQueue = self->_accountWorkQueue;
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_248B0;
    v13 = &unk_59FF0;
    v7 = _appleAccount;
    v14 = v7;
    v15 = buf;
    dispatch_sync(accountWorkQueue, &v10);
    if (v17[24] == 1)
    {
      [(AAUIAppleAccountViewController *)self _stopObservingAccountStoreChanges:v10];
      accountOperationsHelper = [(AAUIAppleAccountViewController *)self accountOperationsHelper];
      [accountOperationsHelper saveAccount:v7 requireVerification:0];
    }

    else if (!self->_accountWasPromoted)
    {
      [(AAUIAppleAccountViewController *)self _promptUserToEnableFindMyiPhoneIfPossible:v10];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = _AAUILogSystem(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "User not signed in to an AppleAccount, will not enable all provisioned dataclasses", buf, 2u);
    }
  }
}

- (BOOL)_isEnabledForAccount:(id)account
{
  accountCopy = account;
  v4 = accountCopy;
  if (!accountCopy)
  {
    LOBYTE(identifier2) = 1;
    goto LABEL_9;
  }

  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v7 = [identifier isEqualToString:ACAccountTypeIdentifierAppleAccount];

  if (!v7)
  {
    accountType2 = [v4 accountType];
    identifier2 = [accountType2 identifier];
    [identifier2 isEqualToString:ACAccountTypeIdentifieriTunesStore];

    LOBYTE(identifier2) = 1;
LABEL_8:

    goto LABEL_9;
  }

  if (([v4 aa_needsToVerifyTerms] & 1) == 0)
  {
    accountType2 = [v4 aa_suspensionInfo];
    LODWORD(identifier2) = [accountType2 isiCloudSuspended] ^ 1;
    goto LABEL_8;
  }

  LOBYTE(identifier2) = 0;
LABEL_9:

  return identifier2;
}

- (void)_showGenericTermsUI
{
  if (!self->_isPresentingUpdateSheet)
  {
    self->_isPresentingUpdateSheet = 1;
    v4 = [AAUIGenericTermsRemoteUI alloc];
    _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
    _accountStore = [(AAUIAppleAccountViewController *)self _accountStore];
    v7 = [v4 initWithAccount:_appleAccount inStore:_accountStore];
    genericTermsRemoteUI = self->_genericTermsRemoteUI;
    self->_genericTermsRemoteUI = v7;

    [(AAUIGenericTermsRemoteUI *)self->_genericTermsRemoteUI setDelegate:self];
    v9 = self->_genericTermsRemoteUI;

    [(AAUIGenericTermsRemoteUI *)v9 presentFromViewController:self modal:1];
  }
}

- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success
{
  successCopy = success;
  self->_isPresentingUpdateSheet = 0;
  genericTermsRemoteUI = self->_genericTermsRemoteUI;
  self->_genericTermsRemoteUI = 0;

  if (successCopy)
  {

    [(AAUIAppleAccountViewController *)self _revalidateAccount];
  }

  else
  {
    v8 = _AAUILogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
      aa_needsToVerifyTerms = [_appleAccount aa_needsToVerifyTerms];
      v11 = @"NO";
      if (aa_needsToVerifyTerms)
      {
        v11 = @"YES";
      }

      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Terms have not been agreed to, are we in gray mode like we should? %@, let's save.", buf, 0xCu);
    }

    [(AAUIAppleAccountViewController *)self _forgetSpecifiers];
    [(AAUIAppleAccountViewController *)self reloadSpecifiers];
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_24D7C;
    block[3] = &unk_59680;
    block[4] = self;
    dispatch_async(v12, block);
  }
}

- (id)_accountAutoVerifier
{
  accountVerifier = self->_accountVerifier;
  if (!accountVerifier)
  {
    v4 = [AAAutoAccountVerifier alloc];
    _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
    v6 = [v4 initWithAccount:_appleAccount];
    v7 = self->_accountVerifier;
    self->_accountVerifier = v6;

    accountVerifier = self->_accountVerifier;
  }

  return accountVerifier;
}

- (void)_autoVerifyAccount
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Auto-verifying account", buf, 2u);
  }

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"VERIFYING" value:&stru_5A5F0 table:@"Localizable"];
  [(AAUIAppleAccountViewController *)self startValidationWithPrompt:v5 userInteraction:1];

  _accountAutoVerifier = [(AAUIAppleAccountViewController *)self _accountAutoVerifier];
  [_accountAutoVerifier sendVerificationEmail];

  _accountAutoVerifier2 = [(AAUIAppleAccountViewController *)self _accountAutoVerifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_250A8;
  v8[3] = &unk_599B8;
  v8[4] = self;
  [_accountAutoVerifier2 verifyWithHandler:v8];
}

- (void)_handleAccountAutoVerificationCompletionWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  v7 = errorCopy;
  if (success)
  {
    _accountStore = [(AAUIAppleAccountViewController *)self _accountStore];
    _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_2528C;
    v13[3] = &unk_599B8;
    v13[4] = self;
    [_accountStore aa_updatePropertiesForAppleAccount:_appleAccount completion:v13];
LABEL_5:

    goto LABEL_6;
  }

  _accountStore = _AAUILogSystem(errorCopy);
  if (os_log_type_enabled(_accountStore, OS_LOG_TYPE_DEFAULT))
  {
    _appleAccount = [v7 localizedDescription];
    *buf = 138412290;
    v15 = _appleAccount;
    _os_log_impl(&dword_0, _accountStore, OS_LOG_TYPE_DEFAULT, "Verification failed: %@", buf, 0xCu);
    goto LABEL_5;
  }

LABEL_6:

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"APPLEID_TITLE_REBRAND" value:&stru_5A5F0 table:@"Localizable"];
  [(AAUIAppleAccountViewController *)self stopValidationWithPrompt:v11 showButtons:0];

  navigationItem = [(AAUIAppleAccountViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];

  [(AAUIAppleAccountViewController *)self _cleanupFromNetworkActivity];
}

- (void)_presentValidationErrorAlert:(id)alert account:(id)account
{
  alertCopy = alert;
  accountCopy = account;
  userInfo = [alertCopy userInfo];
  userInfo2 = [alertCopy userInfo];
  v10 = [userInfo2 objectForKey:kAAProtocolErrorResponseDictionaryKey];

  if (v10)
  {
    v11 = [v10 objectForKey:kAAProtocolErrorMessageKey];
    v12 = [v10 objectForKey:kAAProtocolErrorTitleKey];
    v13 = [v10 objectForKey:kAAProtocolErrorCancelButtonTitleKey];
    if (userInfo)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
    if (userInfo)
    {
LABEL_3:
      v14 = [userInfo objectForKey:kAAProtocolErrorKey];
      if (v12)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v14 = 0;
  if (!v12)
  {
LABEL_4:
    v12 = [(AAUIAppleAccountViewController *)self _titleForError:alertCopy account:accountCopy];
  }

LABEL_5:
  if (!v11)
  {
    v11 = [(AAUIAppleAccountViewController *)self _messageForError:alertCopy account:accountCopy];
  }

  if ([alertCopy code] == &stru_158.reloff + 1)
  {
    _accountStore = [(AAUIAppleAccountViewController *)self _accountStore];
    _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
    selfCopy = self;
    v18 = v12;
    v19 = v11;
    v20 = v13;
    v21 = v14;
    v22 = userInfo;
    v23 = accountCopy;
    v24 = _appleAccount;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_256BC;
    v33[3] = &unk_5A060;
    v33[4] = selfCopy;
    [_accountStore renewCredentialsForAccount:_appleAccount completion:v33];

    accountCopy = v23;
    userInfo = v22;
    v14 = v21;
    v13 = v20;
    v11 = v19;
    v12 = v18;
  }

  else
  {
    if (!v13)
    {
      v25 = v14;
      v26 = userInfo;
      v27 = accountCopy;
      v28 = [NSBundle bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"OK" value:&stru_5A5F0 table:@"Localizable"];

      accountCopy = v27;
      userInfo = v26;
      v14 = v25;
      v13 = v29;
    }

    if ([v14 isEqualToString:kAAProtocolErrorMobileMeAccountMissingInfo])
    {
      v30 = 1;
    }

    else
    {
      v30 = [v14 isEqualToString:kAAProtocolErrorMobileMeTermsOfServiceUpdate];
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_25748;
    v31[3] = &unk_59990;
    v32 = v30;
    v31[4] = self;
    _accountStore = [UIAlertController alertWithTitle:v12 message:v11 buttonTitle:v13 actionHandler:v31];
    [(AAUIAppleAccountViewController *)self presentViewController:_accountStore animated:1 completion:0];
  }
}

- (id)_messageForError:(id)error account:(id)account
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v6 = userInfo;
  if (userInfo && (v7 = kAAProtocolErrorKey, [userInfo objectForKey:kAAProtocolErrorKey], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v6 objectForKey:v7];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    localizedDescription = [v10 localizedStringForKey:v9 value:&stru_5A5F0 table:@"Localizable"];
  }

  else
  {
    localizedDescription = [errorCopy localizedDescription];
  }

  return localizedDescription;
}

- (id)_titleForError:(id)error account:(id)account
{
  errorCopy = error;
  accountCopy = account;
  userInfo = [errorCopy userInfo];
  v8 = userInfo;
  if (userInfo && (v9 = kAAProtocolErrorKey, [userInfo objectForKey:kAAProtocolErrorKey], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [v8 objectForKey:v9];
  }

  else
  {
    v11 = 0;
  }

  code = [errorCopy code];
  if (code == &stru_158.reloff + 3)
  {
    if (!v11)
    {
LABEL_13:
      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = v13;
      v15 = @"VERIFICATION_FAILED_TITLE";
      goto LABEL_14;
    }

    if (![v11 isEqualToString:kAAProtocolErrorMobileMeAccountDisabled])
    {
      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v11 stringByAppendingString:@"_TITLE"];
      aa_displayName = [v14 localizedStringForKey:v18 value:&stru_5A5F0 table:@"Localizable"];

      goto LABEL_15;
    }

LABEL_12:
    aa_displayName = [accountCopy aa_displayName];
    goto LABEL_16;
  }

  if (code != &stru_158.reloff + 2)
  {
    if (code != &stru_158.reloff + 1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = v13;
  v15 = @"MOBILEME_PAID_ACCOUNT_LAPSED_TITLE";
LABEL_14:
  aa_displayName = [v13 localizedStringForKey:v15 value:&stru_5A5F0 table:@"Localizable"];
LABEL_15:

LABEL_16:

  return aa_displayName;
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  viewIfLoaded = [(AAUIAppleAccountViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    self->_loadedViaURL = 1;
    v11 = [lCopy objectForKeyedSubscript:@"aaaction"];
    v12 = [lCopy copy];
    cachedResourceDictionary = self->_cachedResourceDictionary;
    self->_cachedResourceDictionary = v12;

    v15 = _AAUILogSystem(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v11;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController handleURL action - %@", buf, 0xCu);
    }

    if ([v11 isEqual:@"auth"])
    {
      [(AAUIAppleAccountViewController *)self _handleAuthActionURL:lCopy];
      goto LABEL_43;
    }

    if ([v11 isEqual:@"resetPassword"])
    {
      [(AAUIAppleAccountViewController *)self _handleiForgotActionURL:lCopy];
      goto LABEL_43;
    }

    if ([v11 isEqual:@"changePassword"])
    {
      [(AAUIAppleAccountViewController *)self _handleChangePasswordActionURL:lCopy];
      goto LABEL_43;
    }

    if ([v11 isEqual:@"CDP"])
    {
      [(AAUIAppleAccountViewController *)self _handleCDPActionURL:lCopy];
      goto LABEL_43;
    }

    if ([v11 isEqual:@"accountRecovery"])
    {
      [(AAUIAppleAccountViewController *)self _handleAccountRecoveryURL:lCopy];
      goto LABEL_43;
    }

    if ([v11 isEqual:@"accountBeneficiary"])
    {
      [(AAUIAppleAccountViewController *)self _handleAccountBeneficiaryURL:lCopy];
      goto LABEL_43;
    }

    if ([v11 isEqual:@"accountContactDetails"])
    {
      [(AAUIAppleAccountViewController *)self _contactSpecifierWasTapped:0];
      goto LABEL_43;
    }

    if ([v11 isEqualToString:@"IDMSUrl"])
    {
      [(AAUIAppleAccountViewController *)self _handleAuthkitFollowUpServerUI:lCopy];
      goto LABEL_43;
    }

    if ([v11 isEqual:@"oonAddressVetting"])
    {
      [(AAUIAppleAccountViewController *)self _handleOONAddressVettingActionURL:lCopy];
      goto LABEL_43;
    }

    if ([v11 isEqual:@"upgradeSecurityLevel"])
    {
      [(AAUIAppleAccountViewController *)self _handleUpgradeSecurityLevelActionURL:lCopy];
      goto LABEL_43;
    }

    v20 = [(AAUIAppleAccountViewController *)self _handleAuthKitURLWithPendingDictionary:lCopy];
    if (v20)
    {
      v21 = _AAUILogSystem(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_34EF8();
      }

      goto LABEL_42;
    }

    _familySpecifierProvider = [(AAUIAppleAccountViewController *)self _familySpecifierProvider];
    v23 = [_familySpecifierProvider handleURL:lCopy];

    if (v23)
    {
      v21 = _AAUILogSystem(v24);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v11;
        v25 = "AAUIAppleAccountViewController Family specifier provider handled: %@";
LABEL_41:
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
      }
    }

    else
    {
      v26 = [(AAUISpecifierProvider *)self->_dmcReauthSpecifierProvider handleURL:lCopy];
      if (v26)
      {
        v21 = _AAUILogSystem(v26);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v11;
          v25 = "AAUIAppleAccountViewController DMC Reauth specifier provider handled: %@";
          goto LABEL_41;
        }
      }

      else
      {
        _storeSpecifierProvider = [(AAUIAppleAccountViewController *)self _storeSpecifierProvider];
        v28 = [_storeSpecifierProvider handleURL:lCopy];

        if (!v28)
        {
          tuiOptInSpecifierProvider = self->_tuiOptInSpecifierProvider;
          if (!tuiOptInSpecifierProvider || (tuiOptInSpecifierProvider = objc_opt_respondsToSelector(), (tuiOptInSpecifierProvider & 1) == 0) || (tuiOptInSpecifierProvider = [(AAUISpecifierProvider *)self->_tuiOptInSpecifierProvider handleURL:lCopy], !tuiOptInSpecifierProvider))
          {
            v31 = _AAUILogSystem(tuiOptInSpecifierProvider);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v34 = v11;
              v35 = 2112;
              v36 = lCopy;
              _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Unknown action (%@) sent to AAUIAppleAccountViewController. %@", buf, 0x16u);
            }

            v32.receiver = self;
            v32.super_class = AAUIAppleAccountViewController;
            [(AAUIAppleAccountViewController *)&v32 handleURL:lCopy withCompletion:completionCopy];
            goto LABEL_45;
          }

          v21 = _AAUILogSystem(tuiOptInSpecifierProvider);
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_42;
          }

          *buf = 138412290;
          v34 = v11;
          v25 = "TUIOptInSpecifierProvider specifier provider handled: %@";
          goto LABEL_41;
        }

        v21 = _AAUILogSystem(v29);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v11;
          v25 = "SKAccountPageSpecifierProvider specifier provider handled: %@";
          goto LABEL_41;
        }
      }
    }

LABEL_42:

LABEL_43:
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

LABEL_45:

    goto LABEL_46;
  }

  v16 = _AAUILogSystem(v10);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_34F34();
  }

  deferredURL = self->_deferredURL;
  if (!deferredURL)
  {
    v18 = objc_alloc_init(AAUIAppleAccountDeferredURL);
    v19 = self->_deferredURL;
    self->_deferredURL = v18;

    deferredURL = self->_deferredURL;
  }

  [(AAUIAppleAccountDeferredURL *)deferredURL setResourcesDictionary:lCopy];
LABEL_46:
}

- (void)_handleUpgradeSecurityLevelActionURL:(id)l
{
  v4 = [l objectForKey:AKClientBundleIDKey];
  v5 = [CDPStateController alloc];
  v6 = +[CDPAccount sharedInstance];
  contextForPrimaryAccount = [v6 contextForPrimaryAccount];
  v8 = [v5 initWithContext:contextForPrimaryAccount];

  v9 = [v8 isManateeAvailable:0];
  if ((v9 & 1) == 0)
  {
    v11 = [[AAUISpinnerViewController alloc] initWithNibName:0 bundle:0];
    v12 = [[UINavigationController alloc] initWithRootViewController:v11];
    v13 = [CDPUIDeviceToDeviceEncryptionFlowContext alloc];
    v14 = +[CDPAccount sharedInstance];
    primaryAccountAltDSID = [v14 primaryAccountAltDSID];
    v16 = [v13 initWithAltDSID:primaryAccountAltDSID];

    [v16 setSecurityUpgradeContext:AKSecurityUpgradeContextKeychainSync];
    [v16 setDeviceToDeviceEncryptionUpgradeUIStyle:1];
    [v16 setDeviceToDeviceEncryptionUpgradeType:0];
    [v16 setPresentingViewController:v12];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_26260;
    v20[3] = &unk_59FC8;
    v21 = [[CDPUIDeviceToDeviceEncryptionHelper alloc] initWithContext:v16];
    v22 = v12;
    selfCopy = self;
    v24 = v4;
    v17 = v12;
    v18 = v21;
    [(AAUIAppleAccountViewController *)self presentViewController:v17 animated:1 completion:v20];

    goto LABEL_7;
  }

  v10 = _AAUILogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "_handleUpgradeSecurityLevelActionURL called when Manatee is already available", v19, 2u);
  }

  if (v4)
  {
    v11 = +[LSApplicationWorkspace defaultWorkspace];
    [v11 openApplicationWithBundleID:v4];
LABEL_7:
  }
}

- (void)_handleAuthkitFollowUpServerUI:(id)i
{
  iCopy = i;
  v5 = _AAUILogSystem(iCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_34F70();
  }

  v6 = [iCopy objectForKeyedSubscript:@"urlKey"];
  if (v6)
  {
    v7 = objc_alloc_init(AKExtensionlessFollowUpHelperContext);
    _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
    aa_altDSID = [_appleAccount aa_altDSID];
    [v7 setAltDSID:aa_altDSID];

    [v7 setPresentingViewController:self];
    v10 = [iCopy objectForKeyedSubscript:@"id"];
    [v7 setUniqueItemIdentifier:v10];

    [v7 setUrlKey:v6];
    v11 = objc_alloc_init(AKAppleIDFollowUpServerUIPresenter);
    v12 = objc_opt_respondsToSelector();
    if (v12)
    {
      v13 = _AAUILogSystem(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_34FE0();
      }

      [v11 presentServerUIWithContext:v7 withCompletion:&stru_5A0A8];
    }
  }

  else
  {
    v7 = _AAUILogSystem(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_3501C();
    }
  }
}

- (void)_handleCDPActionURL:(id)l
{
  lCopy = l;
  v5 = _AAUILogSystem(lCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Received a CDP URL action. Redirecting to CDP", buf, 2u);
  }

  v6 = [AAUICDPHelper helperWithPresenter:self];
  v7 = +[PSNavBarSpinnerManager sharedSpinnerManager];
  navigationItem = [(AAUIAppleAccountViewController *)self navigationItem];
  [v7 startAnimatingInNavItem:navigationItem forIdentifier:@"cdpAction" hideBackButton:1];

  view = [(AAUIAppleAccountViewController *)self view];
  [view setUserInteractionEnabled:0];

  cdpStateControllerForPrimaryAccount = [v6 cdpStateControllerForPrimaryAccount];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2678C;
  v11[3] = &unk_599B8;
  v11[4] = self;
  [cdpStateControllerForPrimaryAccount handleURLActionWithInfo:lCopy completion:v11];
}

- (void)_handleiForgotActionURL:(id)l
{
  v4 = _AAUILogSystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Received an iForgot redirect action. Will call to akd now...", v10, 2u);
  }

  v5 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  [v5 setNeedsCredentialRecovery:1];
  [v5 setPresentingViewController:self];
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  username = [_appleAccount username];
  [v5 setUsername:username];

  [v5 setTriggeredByNotification:1];
  v8 = objc_alloc_init(AKAppleIDAuthenticationController);
  authController = self->_authController;
  self->_authController = v8;

  [(AKAppleIDAuthenticationController *)self->_authController authenticateWithContext:v5 completion:&stru_5A0E8];
}

- (void)_handleChangePasswordActionURL:(id)l
{
  v4 = _AAUILogSystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Received a change password redirect action. Will call to akd now...", v10, 2u);
  }

  v5 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  [v5 setNeedsPasswordChange:1];
  [v5 setPresentingViewController:self];
  _appleAccount = [(AAUIAppleAccountViewController *)self _appleAccount];
  username = [_appleAccount username];
  [v5 setUsername:username];

  v8 = objc_alloc_init(AKAppleIDAuthenticationController);
  authController = self->_authController;
  self->_authController = v8;

  [(AKAppleIDAuthenticationController *)self->_authController authenticateWithContext:v5 completion:&stru_5A108];
}

- (void)_handleAuthActionURL:(id)l
{
  lCopy = l;
  v5 = _AAUILogSystem(lCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Received an authentication redirect. Will call to akd now...", v10, 2u);
  }

  v6 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  v7 = [lCopy objectForKeyedSubscript:@"u"];

  [v6 setUsername:v7];
  [v6 setPresentingViewController:self];
  v8 = objc_alloc_init(AKAppleIDAuthenticationController);
  authController = self->_authController;
  self->_authController = v8;

  [(AKAppleIDAuthenticationController *)self->_authController authenticateWithContext:v6 completion:&stru_5A128];
}

- (void)_handleAccountRecoveryURL:(id)l
{
  lCopy = l;
  v5 = _AAUILogSystem(lCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Handling URL to show account recovery settings....", v9, 2u);
  }

  v6 = [lCopy objectForKey:@"highlight"];

  if (v6)
  {
    v7 = [lCopy objectForKey:@"highlight"];
    v8 = _AAUILogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_35058();
    }

    [AAUISettingsHelper showAccountRecoveryFromViewController:self accountManager:self->_accountManager highlightRowIdentifier:v7];
  }

  else
  {
    [AAUISettingsHelper showAccountRecoveryFromViewController:self accountManager:self->_accountManager];
  }
}

- (void)_handleAccountBeneficiaryURL:(id)l
{
  lCopy = l;
  v5 = _AAUILogSystem(lCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Handling URL to show account beneficiary settings.", buf, 2u);
  }

  v6 = [[AAUID2DEncryptionFlowContext alloc] initWithType:3];
  v7 = [[AAUIManateeStateValidator alloc] initWithFlowContext:v6 withPresentingViewController:self];
  v8 = [AAUILegacyContactsViewFactory createViewModelWithAccountManager:self->_accountManager];
  objc_initWeak(buf, v8);

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_27014;
  v11[3] = &unk_5A150;
  v9 = v7;
  v12 = v9;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, buf);
  v10 = lCopy;
  v13 = v10;
  selfCopy = self;
  [v9 verifyAndRepairManateeWithCompletion:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

- (void)_handleOONAddressVettingActionURL:(id)l
{
  lCopy = l;
  v5 = [lCopy objectForKeyedSubscript:@"potentialMatches"];
  v6 = [lCopy objectForKeyedSubscript:@"sharedItem"];
  v7 = [lCopy objectForKeyedSubscript:@"shareURL"];
  v8 = v7;
  if (v5)
  {
    v9 = _AAUILogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Found matches in URL dictionary: %@", buf, 0xCu);
    }

    v10 = [(__CFString *)v5 componentsSeparatedByString:@", "];
    v11 = [v10 mutableCopy];

    if ([v11 count])
    {
      v12 = 0;
      do
      {
        v13 = [v11 objectAtIndexedSubscript:v12];
        v14 = [v13 componentsSeparatedByString:@":"];
        [v11 setObject:v14 atIndexedSubscript:v12];

        ++v12;
      }

      while (v12 < [v11 count]);
    }

    [(AAUIAppleAccountViewController *)self _loadCloudKitSettingsBundleIfNeeded];
    v15 = NSClassFromString(@"CKVettingAddressSelectionController");
    if (v15)
    {
      if (v6 && v8)
      {
        v16 = v15;
        v17 = [NSURL URLWithString:v8];
        v18 = v17;
        if (!v17)
        {
          v30 = _AAUILogSystem(0);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v33 = v8;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Invalid URL from rawShareURL: %@", buf, 0xCu);
          }

          goto LABEL_24;
        }

        v36[0] = v11;
        v36[1] = v6;
        v36[2] = v17;
        v19 = [NSArray arrayWithObjects:v36 count:3];
        v20 = objc_alloc_init(v16);
        v31 = v19;
        v21 = v19;
        v22 = v20;
        v23 = [v20 performSelector:"setParameters:" withObject:v21];
        if (v22)
        {
          v24 = [[UINavigationController alloc] initWithRootViewController:v22];
          [v24 setDelegate:self];
          v25 = +[UIDevice currentDevice];
          -[NSObject setModalPresentationStyle:](v24, "setModalPresentationStyle:", 2 * ([v25 userInterfaceIdiom] != 0));

          navigationController = [(AAUIAppleAccountViewController *)self navigationController];
          [navigationController presentViewController:v24 animated:1 completion:0];
        }

        else
        {
          v24 = _AAUILogSystem(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v33 = @"CKVettingAddressSelectionController";
            v34 = 2112;
            v30 = v31;
            v35 = v31;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Unable to instantiate class named %@ using params %@", buf, 0x16u);
LABEL_23:

LABEL_24:
            goto LABEL_25;
          }
        }

        v30 = v31;
        goto LABEL_23;
      }

      v18 = _AAUILogSystem(v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v27 = "Unexpectedly found sharedItem or rawShareURL to be null.";
        v28 = v18;
        v29 = 2;
        goto LABEL_17;
      }
    }

    else
    {
      v18 = _AAUILogSystem(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = @"CKVettingAddressSelectionController";
        v27 = "Unable to load class named %@, is CloudKit.bundle in place?";
        v28 = v18;
        v29 = 12;
LABEL_17:
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
      }
    }

LABEL_25:
  }
}

- (void)_loadCloudKitSettingsBundleIfNeeded
{
  v2 = UISystemRootDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"System/Library/PreferenceBundles/AccountSettings"];

  v4 = [v3 stringByAppendingPathComponent:@"CloudKitSettings.bundle"];
  v5 = [NSBundle bundleWithPath:v4];
  isLoaded = [v5 isLoaded];
  if ((isLoaded & 1) == 0)
  {
    v7 = _AAUILogSystem(isLoaded);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "CloudKit settings bundle not loaded. Loading...", v8, 2u);
    }

    [v5 load];
  }
}

- (id)accountsForAccountManager:(id)manager
{
  v4 = objc_alloc_init(NSMutableDictionary);
  specifier = [(AAUIAppleAccountViewController *)self specifier];
  userInfo = [specifier userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    specifier2 = [(AAUIAppleAccountViewController *)self specifier];
    userInfo2 = [specifier2 userInfo];

    v10 = [userInfo2 objectForKey:ACUIAccountKey];

    if (v10)
    {
      accountStore = [(AAUIAppleAccountViewController *)self accountStore];
      aa_altDSID = [v10 aa_altDSID];
      v13 = [accountStore aa_appleAccountWithAltDSID:aa_altDSID];
      [v4 setObject:v13 forKeyedSubscript:AIDAServiceTypeCloud];
LABEL_12:

      goto LABEL_13;
    }
  }

  v14 = AIDAServiceTypeCloud;
  v10 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager accountForService:AIDAServiceTypeCloud];
  if (v10)
  {
    [v4 setObject:v10 forKeyedSubscript:v14];
  }

  v15 = AIDAServiceTypeStore;
  accountStore = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager accountForService:AIDAServiceTypeStore];
  if (accountStore)
  {
    [v4 setObject:accountStore forKeyedSubscript:v15];
  }

  if (v10)
  {
    aa_altDSID = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager altDSIDForAccount:v10 service:v14];
    v13 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager DSIDForAccount:v10 service:v14];
    v16 = AIDAServiceTypeGameCenter;
    v17 = [(AAUIAppleAccountViewController *)self _accountForService:AIDAServiceTypeGameCenter matchingAltDSID:aa_altDSID DSID:v13];
    if (v17)
    {
      [v4 setObject:v17 forKeyedSubscript:v16];
    }

    goto LABEL_12;
  }

LABEL_13:

  v18 = [v4 copy];

  return v18;
}

- (id)_accountForService:(id)service matchingAltDSID:(id)d DSID:(id)iD
{
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  v11 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager accountForService:serviceCopy];
  if (v11)
  {
    v12 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager altDSIDForAccount:v11 service:serviceCopy];
    if ([v12 isEqualToString:dCopy])
    {
      v13 = v11;
    }

    else
    {
      v14 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager DSIDForAccount:v11 service:serviceCopy];
      if ([v14 isEqualToString:iDCopy])
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)specifierProvider:(id)provider showViewController:(id)controller
{
  providerCopy = provider;
  controllerCopy = controller;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || self->_storeSpecifier == providerCopy)
  {
    [(AAUIAppleAccountViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    [(AAUIAppleAccountViewController *)self showController:controllerCopy animate:1];
  }
}

- (void)specifierProvider:(id)provider willBeginLoadingSpecifier:(id)specifier
{
  providerCopy = provider;
  specifierCopy = specifier;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  _hasActiveSpecifier = [(AAUIAppleAccountViewController *)self _hasActiveSpecifier];
  if (_hasActiveSpecifier)
  {
    v9 = _AAUILogSystem(_hasActiveSpecifier);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_351B0();
    }
  }

  else
  {
    [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:specifierCopy];
  }
}

- (void)specifierProvider:(id)provider didFinishLoadingSpecifier:(id)specifier
{
  providerCopy = provider;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  _hasActiveSpecifier = [(AAUIAppleAccountViewController *)self _hasActiveSpecifier];
  if (_hasActiveSpecifier)
  {
    [(AAUIAppleAccountViewController *)self _stopSpinnerInActiveSpecifier];
  }

  else
  {
    v7 = _AAUILogSystem(_hasActiveSpecifier);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_35220();
    }
  }
}

- (void)reloadSpecifiersForProvider:(id)provider oldSpecifiers:(id)specifiers animated:(BOOL)animated
{
  animatedCopy = animated;
  providerCopy = provider;
  specifiersCopy = specifiers;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v11 = _AAUILogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = providerCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Reloading specifiers for provider %@", &v14, 0xCu);
  }

  if (self->_familySpecifierProvider == providerCopy)
  {
    servicesGroupSpecifiers = self->_servicesGroupSpecifiers;
    self->_servicesGroupSpecifiers = 0;
  }

  if ([specifiersCopy count])
  {
    specifiers = [(AAUISpecifierProvider *)providerCopy specifiers];
    [(AAUIAppleAccountViewController *)self replaceContiguousSpecifiers:specifiersCopy withSpecifiers:specifiers animated:animatedCopy];
  }

  else
  {
    [(AAUIAppleAccountViewController *)self reloadSpecifiers];
  }
}

- (void)insertSpecifier:(id)specifier afterSpecifierNamed:(id)named animated:(BOOL)animated
{
  specifierCopy = specifier;
  namedCopy = named;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10 = _AAUILogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(AAUIAppleAccountViewController *)self specifierForID:namedCopy];
    v19 = 138412546;
    v20 = specifierCopy;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Inserting new specifier %@ after %@", &v19, 0x16u);
  }

  v12 = [*&self->ACUIAccountConfigurationViewController_opaque[OBJC_IVAR___PSListController__specifiers] containsObject:specifierCopy];
  if (v12)
  {
    v13 = _AAUILogSystem(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v14 = "Did not insert new specifier because it's already present";
      v15 = v13;
      v16 = 2;
LABEL_8:
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, v14, &v19, v16);
    }
  }

  else
  {
    v17 = [(AAUIAppleAccountViewController *)self specifierForID:namedCopy];
    [(AAUIAppleAccountViewController *)self insertSpecifier:specifierCopy afterSpecifier:v17 animated:1];

    v13 = _AAUILogSystem(v18);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = specifierCopy;
      v14 = "Inserted new specifier %@";
      v15 = v13;
      v16 = 12;
      goto LABEL_8;
    }
  }
}

- (void)reloadSpecifierForProvider:(id)provider identifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v7 = _AAUILogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = identifierCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Reloading specifier with ID: %@", &v8, 0xCu);
  }

  [(AAUIAppleAccountViewController *)self reloadSpecifierID:identifierCopy];
}

- (void)_startObservingAccountStoreChanges
{
  objc_initWeak(&location, self);
  accountManager = self->_accountManager;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_280B4;
  v4[3] = &unk_5A178;
  objc_copyWeak(&v5, &location);
  [(AIDAAccountManager *)accountManager addAccountChangeObserver:self handler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  shouldShowRecoveryContactUpsellTip = [(AAUIAppleAccountViewController *)self shouldShowRecoveryContactUpsellTip];
  view = 0;
  if (section == 1 && shouldShowRecoveryContactUpsellTip)
  {
    _recoveryContactUpsellViewController = [(AAUIAppleAccountViewController *)self _recoveryContactUpsellViewController];
    view = [_recoveryContactUpsellViewController view];
  }

  return view;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(AAUIAppleAccountViewController *)self _hasActiveSpecifier])
  {
    v8 = 0;
  }

  else if ([-[AAUIAppleAccountViewController superclass](self "superclass")])
  {
    v10.receiver = self;
    v10.super_class = AAUIAppleAccountViewController;
    v8 = [(AAUIAppleAccountViewController *)&v10 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_startObservingQuotaChangeNotifications
{
  if (!self->_quotaChangeNotificationObserver)
  {
    objc_initWeak(&location, self);
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = +[NSOperationQueue mainQueue];
    v5 = ICQQuotaDidChangeNotification;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_285DC;
    v8[3] = &unk_59940;
    objc_copyWeak(&v9, &location);
    v6 = [v3 addObserverForName:v5 object:0 queue:v4 usingBlock:v8];
    quotaChangeNotificationObserver = self->_quotaChangeNotificationObserver;
    self->_quotaChangeNotificationObserver = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_stopObservingQuotaChangeNotifications
{
  if (self->_quotaChangeNotificationObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_quotaChangeNotificationObserver];

    quotaChangeNotificationObserver = self->_quotaChangeNotificationObserver;
    self->_quotaChangeNotificationObserver = 0;
  }
}

@end