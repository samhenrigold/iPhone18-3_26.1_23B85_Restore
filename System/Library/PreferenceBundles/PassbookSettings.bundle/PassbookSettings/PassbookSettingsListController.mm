@interface PassbookSettingsListController
- (BOOL)isPresentingViewController;
- (Class)tableViewClass;
- (PassbookSettingsListController)init;
- (id)_appleCardUpsellAlertWithAccount:(id)account;
- (id)_passDetailsViewControllerForPass:(id)pass;
- (id)_presentPassDetailsViewControllerForPass:(id)pass presentationStyle:(int64_t)style animated:(BOOL)animated;
- (id)peerPaymentPass;
- (id)specifiers;
- (void)_checkManateeCapabilityForFeatureApplication:(id)application completion:(id)completion;
- (void)_presentAccountUserInvitation:(id)invitation animated:(BOOL)animated completion:(id)completion;
- (void)_presentManateeUpgradeForFeatureApplication:(id)application completion:(id)completion;
- (void)_refreshPasses;
- (void)dealloc;
- (void)handleDeepLinkResourceDictionary:(id)dictionary withCompletion:(id)completion;
- (void)openDailyCashForDateComponents:(id)components feature:(unint64_t)feature;
- (void)openDailyCashForDateComponents:(id)components onPass:(id)pass;
- (void)presentAccountForFeature:(unint64_t)feature destination:(unint64_t)destination fundingSourceIdentifier:(id)identifier animated:(BOOL)animated;
- (void)presentAccountUserDetailsWithPass:(id)pass presentationStyle:(int64_t)style forAccountUserAltDSID:(id)d animated:(BOOL)animated;
- (void)presentAccountUserInvitationForPass:(id)pass presentationStyle:(int64_t)style withStatementIdentifier:(id)identifier animated:(BOOL)animated;
- (void)presentAppleCardBillPaymentForPass:(id)pass presentationStyle:(int64_t)style amount:(id)amount billPayAmountType:(int64_t)type animated:(BOOL)animated;
- (void)presentAuthorizationFlowAnimated:(BOOL)animated completion:(id)completion;
- (void)presentAuthorizationViewControllerWithPaymentPass:(id)pass session:(id)session animated:(BOOL)animated completion:(id)completion;
- (void)presentCreditPaymentPassNumbersViewControllerForPass:(id)pass presentationStyle:(int64_t)style animated:(BOOL)animated;
- (void)presentImportFPANCardConsentAnimated:(BOOL)animated completion:(id)completion;
- (void)presentInstallmentPlansDetailsViewControllerForPass:(id)pass presentationStyle:(int64_t)style forFeature:(unint64_t)feature animated:(BOOL)animated;
- (void)presentPassDetailsViewControllerForPass:(id)pass presentationStyle:(int64_t)style presentingView:(int64_t)view animated:(BOOL)animated;
- (void)presentPeerPaymentRecurringPaymentWithPass:(id)pass presentationStyle:(int64_t)style recurringPaymentIdentifier:(id)identifier animated:(BOOL)animated;
- (void)presentPeerPaymentTransferToBankWithPass:(id)pass;
- (void)presentStatementDetailsViewControllerForPass:(id)pass presentationStyle:(int64_t)style withIdentifier:(id)identifier animated:(BOOL)animated;
- (void)presentTransactionDetailsForTransaction:(id)transaction transactionSourceType:(unint64_t)type confirmPaymentOfferPlan:(BOOL)plan;
- (void)registerTableCellClass:(Class)class forCellReuseIdentifier:(id)identifier;
- (void)requestResetToRootWithSettingsController:(id)controller;
- (void)settingsController:(id)controller requestShowPeerPaymentAssociatedAccountsFlowWithController:(id)withController withPresentationContext:(id)context;
- (void)settingsController:(id)controller requestsAddCardPreflightWithCompletion:(id)completion;
- (void)settingsController:(id)controller requestsAuthenticationChallengeForAppleAccountInformation:(id)information completion:(id)completion;
- (void)settingsController:(id)controller requestsDetailViewControllerForPass:(id)pass animated:(BOOL)animated;
- (void)settingsController:(id)controller requestsPresentAuthorizationFlowWithRedirectURL:(id)l animated:(BOOL)animated completion:(id)completion;
- (void)settingsController:(id)controller requestsPresentAutofillInformationWithSpecifier:(id)specifier cardDescriptors:(id)descriptors authentication:(id)authentication;
- (void)settingsController:(id)controller requestsPresentInboxMessage:(id)message animated:(BOOL)animated completion:(id)completion;
- (void)settingsController:(id)controller requestsPresentSecurityRepairFlowWithSecurityCapabilities:(unint64_t)capabilities completion:(id)completion;
- (void)settingsController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated completion:(id)completion;
- (void)settingsControllerRequestsPresentPrivacyWithPresenter:(id)presenter;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation PassbookSettingsListController

- (PassbookSettingsListController)init
{
  v13.receiver = self;
  v13.super_class = PassbookSettingsListController;
  v2 = [(PassbookSettingsListController *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(PKPassbookSettingsDefaultBehavior);
    defaultBehavior = v2->_defaultBehavior;
    v2->_defaultBehavior = v3;

    v5 = [[PKPassbookSettingsController alloc] initWithDelegate:v2 dataSource:v2->_defaultBehavior context:0];
    settingsController = v2->_settingsController;
    v2->_settingsController = v5;

    v7 = [[PKSettingsDeepLinkController alloc] initWithDataSource:v2 delegate:v2];
    deepLinkController = v2->_deepLinkController;
    v2->_deepLinkController = v7;

    v2->_showUpdateRequired = +[PKSecureElement isInFailForward];
    v9 = +[PKAccountService sharedInstance];
    accountService = v2->_accountService;
    v2->_accountService = v9;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"_refreshPasses" name:PKPassLibraryDidChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  [(PKPassbookSettingsController *)self->_settingsController setDelegate:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PassbookSettingsListController;
  [(PassbookSettingsListController *)&v4 dealloc];
}

- (void)willMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = PassbookSettingsListController;
  [(PassbookSettingsListController *)&v4 willMoveToParentViewController:controller];
  if (self->_startedReporting)
  {
    self->_startedReporting = 0;
    [PKAnalyticsReporter endSubjectReporting:PKAnalyticsSubjectWallet];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PassbookSettingsListController;
  [(PassbookSettingsListController *)&v3 viewDidLoad];
  [(PKPassbookSettingsController *)self->_settingsController viewDidLoad];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PassbookSettingsListController;
  [(PassbookSettingsListController *)&v4 viewWillAppear:appear];
  [(PKPassbookSettingsController *)self->_settingsController viewWillAppear];
  self->_isVisible = 1;
  if (!self->_startedReporting)
  {
    self->_startedReporting = 1;
    [PKAnalyticsReporter beginSubjectReporting:PKAnalyticsSubjectWallet];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PassbookSettingsListController;
  [(PassbookSettingsListController *)&v4 viewWillDisappear:disappear];
  self->_isVisible = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = PassbookSettingsListController;
  [(PassbookSettingsListController *)&v11 viewDidAppear:appear];
  [(PKPassbookSettingsController *)self->_settingsController viewDidAppear];
  v4 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Wallet"];
  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = PKPassKitBundle();
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"WALLET_&_APPLE_PAY" table:@"WalletSettings_Localizable" locale:v6 bundleURL:bundleURL];

  v12 = v9;
  v10 = [NSArray arrayWithObjects:&v12 count:1];
  [(PassbookSettingsListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.wallet" title:v9 localizedNavigationComponents:v10 deepLink:v4];
}

- (Class)tableViewClass
{
  v2 = objc_opt_class();

  return v2;
}

- (void)handleDeepLinkResourceDictionary:(id)dictionary withCompletion:(id)completion
{
  dictionaryCopy = dictionary;
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_showUpdateRequired)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy);
    }
  }

  else
  {
    [(PKPassbookSettingsController *)self->_settingsController willHandleURL];
    [(PKSettingsDeepLinkController *)self->_deepLinkController handleDeepLinkResourceDictionary:dictionaryCopy withCompletion:v7];
  }
}

- (id)_appleCardUpsellAlertWithAccount:(id)account
{
  feature = [account feature];
  v5 = PKLocalizedFeatureString();
  v6 = PKLocalizedFeatureString();
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = PKLocalizedPaymentString(@"ADD_CARD");
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_3C94;
  v13[3] = &unk_14858;
  v13[4] = self;
  v13[5] = feature;
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:v13];

  v10 = PKLocalizedString(@"CANCEL");
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];

  PKApplyDefaultIconToAlertController();
  [v7 addAction:v9];
  [v7 addAction:v11];

  return v7;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = *&self->PSListController_opaque[v2];
    *&self->PSListController_opaque[v2] = v5;

    v3 = *&self->PSListController_opaque[v2];
    if (!self->_showUpdateRequired)
    {
      specifiers = [(PKPassbookSettingsController *)self->_settingsController specifiers];
      v8 = [v3 arrayByAddingObjectsFromArray:specifiers];
      v9 = *&self->PSListController_opaque[v2];
      *&self->PSListController_opaque[v2] = v8;

      v3 = *&self->PSListController_opaque[v2];
    }
  }

  return v3;
}

- (void)_refreshPasses
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3E4C;
  block[3] = &unk_14750;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)presentPassDetailsViewControllerForPass:(id)pass presentationStyle:(int64_t)style presentingView:(int64_t)view animated:(BOOL)animated
{
  v7 = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:pass presentationStyle:style animated:animated];
  v8 = v7;
  switch(view)
  {
    case 1:
      [v7 presentCardNumbers];
      goto LABEL_20;
    case 2:
      [v7 presentTermsAndConditions];
      goto LABEL_20;
    case 3:
      [v7 presentTermsAcceptance];
      goto LABEL_20;
    case 4:
      [v7 presentTopUp];
      goto LABEL_20;
    case 5:
      [v7 presentIdentityVerification];
      goto LABEL_20;
    case 6:
      [v7 presentSchedulePayments];
      goto LABEL_20;
    case 7:
      [v7 presentBalanceDetails];
      goto LABEL_20;
    case 8:
      [v7 presentBankAccounts];
      goto LABEL_20;
    case 9:
      [v7 presentBillPaymentWithConfig:0];
      goto LABEL_20;
    case 10:
      [v7 presentShareAccount];
      goto LABEL_20;
    case 11:
      [v7 presentMakeDefaultAtApple];
      goto LABEL_20;
    case 12:
      [v7 presentOrderPhysicalCard];
      goto LABEL_20;
    case 13:
      [v7 presentActivatePhysicalCard];
      goto LABEL_20;
    case 14:
      [v7 presentTrackPhysicalCard];
      goto LABEL_20;
    case 15:
      [v7 presentISO18013Details];
      goto LABEL_20;
    case 16:
      [v7 presentAutoReload];
      goto LABEL_20;
    case 17:
      [v7 presentReplacePhysicalCard];
      goto LABEL_20;
    case 18:
      [v7 presentDeleteCard];
LABEL_20:
      v7 = v8;
      break;
    default:
      break;
  }
}

- (void)presentInstallmentPlansDetailsViewControllerForPass:(id)pass presentationStyle:(int64_t)style forFeature:(unint64_t)feature animated:(BOOL)animated
{
  animated = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:pass presentationStyle:2 animated:0, animated];
  [animated presentInstallmentPlansForFeature:2];
}

- (void)presentCreditPaymentPassNumbersViewControllerForPass:(id)pass presentationStyle:(int64_t)style animated:(BOOL)animated
{
  v5 = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:pass presentationStyle:2 animated:0];
  [v5 presentCardNumbers];
}

- (void)presentStatementDetailsViewControllerForPass:(id)pass presentationStyle:(int64_t)style withIdentifier:(id)identifier animated:(BOOL)animated
{
  identifierCopy = identifier;
  v9 = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:pass presentationStyle:2 animated:0];
  [v9 showStatementDetailsWithIdentifier:identifierCopy];
}

- (void)presentAccountUserDetailsWithPass:(id)pass presentationStyle:(int64_t)style forAccountUserAltDSID:(id)d animated:(BOOL)animated
{
  dCopy = d;
  v9 = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:pass presentationStyle:2 animated:0];
  [v9 presentAccountUserDetailsForAccountUserAltDSID:dCopy];
}

- (void)presentAccountUserInvitationForPass:(id)pass presentationStyle:(int64_t)style withStatementIdentifier:(id)identifier animated:(BOOL)animated
{
  identifierCopy = identifier;
  v9 = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:pass presentationStyle:2 animated:0];
  [v9 presentAccountUserInvitationWithIdentifier:identifierCopy];
}

- (void)openDailyCashForDateComponents:(id)components onPass:(id)pass
{
  componentsCopy = components;
  v6 = [(PassbookSettingsListController *)self _passDetailsViewControllerForPass:pass];
  if (v6)
  {
    [(PassbookSettingsListController *)self showController:v6 animate:1];
    [v6 presentDailyCashForDateComponents:componentsCopy];
  }
}

- (void)openDailyCashForDateComponents:(id)components feature:(unint64_t)feature
{
  componentsCopy = components;
  if (feature == 5)
  {
    objc_initWeak(location, self);
    accountService = self->_accountService;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_43E4;
    v9[3] = &unk_148A8;
    objc_copyWeak(&v11, location);
    v10 = componentsCopy;
    [(PKAccountService *)accountService defaultAccountForFeature:5 completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Attempted to present daily cash for an unsupported feature", location, 2u);
    }
  }
}

- (void)presentImportFPANCardConsentAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  settingsController = self->_settingsController;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4628;
  v8[3] = &unk_147C8;
  v9 = completionCopy;
  v7 = completionCopy;
  [(PKPassbookSettingsController *)settingsController presentFPANAdditionFlowWithPreflight:0 selectedCredentials:0 withCompletion:v8];
}

- (void)presentAppleCardBillPaymentForPass:(id)pass presentationStyle:(int64_t)style amount:(id)amount billPayAmountType:(int64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  amountCopy = amount;
  passCopy = pass;
  v15 = objc_alloc_init(PKAccountServiceAccountResolutionConfiguration);
  [v15 setBillPayAmount:amountCopy];

  [v15 setBillPayAmountType:type];
  v14 = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:passCopy presentationStyle:style animated:animatedCopy];

  [v14 presentBillPaymentWithConfig:v15];
}

- (void)presentTransactionDetailsForTransaction:(id)transaction transactionSourceType:(unint64_t)type confirmPaymentOfferPlan:(BOOL)plan
{
  transactionCopy = transaction;
  v9 = +[PKPaymentService paymentService];
  if (type > 1)
  {
    if (type == 2)
    {
      accountIdentifier = [transactionCopy accountIdentifier];
      altDSID = [transactionCopy altDSID];
      if (altDSID)
      {
        objc_initWeak(location, self);
        accountService = self->_accountService;
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_51DC;
        v26[3] = &unk_148A8;
        objc_copyWeak(&v28, location);
        v27 = transactionCopy;
        [(PKAccountService *)accountService accountWithIdentifier:accountIdentifier completion:v26];

        objc_destroyWeak(&v28);
        objc_destroyWeak(location);
      }

      else
      {
        v22 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = transactionCopy;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "There is no altDSID defined for account user on tranasction %@", location, 0xCu);
        }
      }
    }

    else if (type == 3)
    {
      accountIdentifier2 = [transactionCopy accountIdentifier];
      objc_initWeak(location, self);
      v17 = self->_accountService;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_5374;
      v23[3] = &unk_148A8;
      objc_copyWeak(&v25, location);
      v24 = transactionCopy;
      [(PKAccountService *)v17 accountWithIdentifier:accountIdentifier2 completion:v23];

      objc_destroyWeak(&v25);
      objc_destroyWeak(location);
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      accountIdentifier3 = [transactionCopy accountIdentifier];
      v11 = +[PKPeerPaymentService sharedInstance];
      account = [v11 account];

      v13 = [account peerPaymentAccountWithIdentifier:accountIdentifier3];
      v14 = v13;
      if (v13)
      {
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_4DD4;
        v29[3] = &unk_14948;
        v30 = v13;
        selfCopy = self;
        v32 = transactionCopy;
        [v9 familyMembersWithCompletion:v29];

        v15 = v30;
      }

      else
      {
        v15 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = transactionCopy;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Cannot find a peer payment account for transaction %@", location, 0xCu);
        }
      }
    }
  }

  else
  {
    objc_initWeak(location, self);
    identifier = [transactionCopy identifier];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_4C48;
    v33[3] = &unk_148F8;
    objc_copyWeak(&v35, location);
    planCopy = plan;
    v34 = transactionCopy;
    [v9 passUniqueIdentifierForTransactionWithIdentifier:identifier completion:v33];

    objc_destroyWeak(&v35);
    objc_destroyWeak(location);
  }
}

- (void)presentPeerPaymentRecurringPaymentWithPass:(id)pass presentationStyle:(int64_t)style recurringPaymentIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  passCopy = pass;
  v11 = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:passCopy presentationStyle:style animated:animatedCopy];
  secureElementPass = [passCopy secureElementPass];

  devicePrimaryPaymentApplication = [secureElementPass devicePrimaryPaymentApplication];
  state = [devicePrimaryPaymentApplication state];

  if (state != &dword_4 + 3)
  {
    [v11 presentRecurringPaymentsWithIdentifier:identifierCopy];
  }
}

- (void)presentPeerPaymentTransferToBankWithPass:(id)pass
{
  v4 = [(PassbookSettingsListController *)self _passDetailsViewControllerForPass:pass];
  if (v4)
  {
    v5 = v4;
    [(PassbookSettingsListController *)self showController:v4 animate:0];
    [v5 presentTransferToBank];
  }

  _objc_release_x1();
}

- (void)presentAccountForFeature:(unint64_t)feature destination:(unint64_t)destination fundingSourceIdentifier:(id)identifier animated:(BOOL)animated
{
  identifierCopy = identifier;
  if (feature == 5)
  {
    *buf = 0;
    v25 = buf;
    v26 = 0x3032000000;
    v27 = sub_5930;
    v28 = sub_5940;
    v29 = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = sub_5930;
    v22[4] = sub_5940;
    v23 = 0;
    v10 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_5948;
    v21[3] = &unk_14998;
    v21[5] = buf;
    v21[6] = 5;
    v21[4] = self;
    [v10 addOperation:v21];
    if ([identifierCopy length])
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_5AA8;
      v17[3] = &unk_149E8;
      v17[4] = self;
      v18 = identifierCopy;
      v19 = buf;
      v20 = v22;
      [v10 addOperation:v17];
    }

    objc_initWeak(&location, self);
    v11 = +[NSNull null];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_5C18;
    v14[3] = &unk_14A38;
    objc_copyWeak(v15, &location);
    v15[1] = destination;
    v14[4] = buf;
    v14[5] = v22;
    v12 = [v10 evaluateWithInput:v11 completion:v14];

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Attempted to present an unsupported feature", buf, 2u);
    }
  }
}

- (id)_presentPassDetailsViewControllerForPass:(id)pass presentationStyle:(int64_t)style animated:(BOOL)animated
{
  animatedCopy = animated;
  v8 = [(PassbookSettingsListController *)self _passDetailsViewControllerForPass:pass];
  if (v8)
  {
    if (style >= 2)
    {
      if (style == 2)
      {
        [(PassbookSettingsListController *)self showController:v8 animate:animatedCopy];
      }
    }

    else
    {
      navigationController = [(PassbookSettingsListController *)self navigationController];
      [navigationController presentViewController:v8 animated:animatedCopy completion:0];
    }

    v10 = v8;
  }

  return v8;
}

- (id)_passDetailsViewControllerForPass:(id)pass
{
  if (pass)
  {
    settingsController = self->_settingsController;
    passCopy = pass;
    v6 = [(PKPassbookSettingsController *)settingsController rendererStateForPaymentPass:passCopy];
    v7 = [PKPaymentPassDetailViewController alloc];
    v8 = +[PKPaymentWebService sharedService];
    peerPaymentDataSource = [(PKPassbookSettingsDefaultBehavior *)self->_defaultBehavior peerPaymentDataSource];
    peerPaymentWebService = [peerPaymentDataSource peerPaymentWebService];
    passLibraryDataProvider = [(PKPassbookSettingsDefaultBehavior *)self->_defaultBehavior passLibraryDataProvider];
    paymentDataProvider = [(PKPassbookSettingsDefaultBehavior *)self->_defaultBehavior paymentDataProvider];
    v13 = [v7 initWithPass:passCopy group:0 groupsController:0 webService:v8 peerPaymentWebService:peerPaymentWebService style:1 passLibraryDataProvider:passLibraryDataProvider paymentServiceDataProvider:paymentDataProvider rendererState:v6 context:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)peerPaymentPass
{
  peerPaymentDataSource = [(PKPassbookSettingsDefaultBehavior *)self->_defaultBehavior peerPaymentDataSource];
  peerPaymentWebService = [peerPaymentDataSource peerPaymentWebService];
  peerPaymentService = [peerPaymentWebService peerPaymentService];
  account = [peerPaymentService account];
  associatedPassUniqueID = [account associatedPassUniqueID];

  v8 = [(PKPassbookSettingsController *)self->_settingsController passWithUniqueIdentifier:associatedPassUniqueID];

  return v8;
}

- (void)settingsController:(id)controller requestsAddCardPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[PKPaymentWebService sharedService];
  v6 = [[PKPaymentProvisioningController alloc] initWithWebService:v5];
  [v6 setAllowProductsInUnsupportedRegion:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_611C;
  v9[3] = &unk_14A60;
  v10 = v6;
  v11 = completionCopy;
  v7 = v6;
  v8 = completionCopy;
  [v7 preflightWithCompletion:v9];
}

- (void)settingsController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated completion:(id)completion
{
  if (self->_isVisible)
  {
    [(PassbookSettingsListController *)self presentViewController:viewController animated:animated completion:completion];
  }
}

- (BOOL)isPresentingViewController
{
  presentedViewController = [(PassbookSettingsListController *)self presentedViewController];
  v3 = presentedViewController != 0;

  return v3;
}

- (void)settingsController:(id)controller requestsDetailViewControllerForPass:(id)pass animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = [(PassbookSettingsListController *)self _passDetailsViewControllerForPass:pass];
  if (v7)
  {
    [(PassbookSettingsListController *)self showController:v7 animate:animatedCopy];
  }

  _objc_release_x1();
}

- (void)settingsControllerRequestsPresentPrivacyWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  [presenterCopy setPresentingViewController:self];
  if ([(PassbookSettingsListController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [presenterCopy setModalPresentationStyle:2];
  }

  [presenterCopy present];
}

- (void)settingsController:(id)controller requestsPresentSecurityRepairFlowWithSecurityCapabilities:(unint64_t)capabilities completion:(id)completion
{
  completionCopy = completion;
  v11 = [[PKSecurityCapabilitiesController alloc] initWithRequirements:capabilities feature:1 context:3];
  navigationController = [(PassbookSettingsListController *)self navigationController];
  if (navigationController)
  {
    selfCopy = [(PassbookSettingsListController *)self navigationController];
  }

  else
  {
    selfCopy = self;
  }

  v10 = selfCopy;

  [v11 presentSecurityRepairFlowWithPresentingViewController:v10 completion:completionCopy];
}

- (void)settingsController:(id)controller requestsAuthenticationChallengeForAppleAccountInformation:(id)information completion:(id)completion
{
  completionCopy = completion;
  informationCopy = information;
  v9 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  [v9 setPresentingViewController:self];
  appleID = [informationCopy appleID];
  [v9 setUsername:appleID];

  aaAlternateDSID = [informationCopy aaAlternateDSID];

  [v9 setAltDSID:aaAlternateDSID];
  [v9 setIsUsernameEditable:0];
  [v9 setShouldPromptForPasswordOnly:1];
  [v9 setAuthenticationType:2];
  v12 = objc_alloc_init(AKAppleIDAuthenticationController);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_6554;
  v14[3] = &unk_14AD8;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [v12 authenticateWithContext:v9 completion:v14];
}

- (void)registerTableCellClass:(Class)class forCellReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  table = [(PassbookSettingsListController *)self table];
  [table registerClass:class forCellReuseIdentifier:identifierCopy];
}

- (void)requestResetToRootWithSettingsController:(id)controller
{
  navigationController = [(PassbookSettingsListController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popToRootViewController];
  }

  else
  {
    v3 = [navigationController popToRootViewControllerAnimated:1];
  }
}

- (void)settingsController:(id)controller requestShowPeerPaymentAssociatedAccountsFlowWithController:(id)withController withPresentationContext:(id)context
{
  contextCopy = context;
  withControllerCopy = withController;
  navigationController = [(PassbookSettingsListController *)self navigationController];
  [withControllerCopy presentAssociatedAccountsFlowWithPresentationContext:contextCopy fromNavigationController:navigationController];
}

- (void)settingsController:(id)controller requestsPresentAutofillInformationWithSpecifier:(id)specifier cardDescriptors:(id)descriptors authentication:(id)authentication
{
  authenticationCopy = authentication;
  descriptorsCopy = descriptors;
  controllerCopy = controller;
  traitCollection = [(PassbookSettingsListController *)self traitCollection];
  [PKPassbookSettingsNavigationPathBuilder appendAutofillViewNavigationPathToTraitCollection:traitCollection descriptors:descriptorsCopy authentication:authenticationCopy settingsController:controllerCopy];
}

- (void)settingsController:(id)controller requestsPresentAuthorizationFlowWithRedirectURL:(id)l animated:(BOOL)animated completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6B08;
  v10[3] = &unk_14B00;
  lCopy = l;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = lCopy;
  [(PassbookSettingsListController *)self presentAuthorizationFlowAnimated:1 completion:v10];
}

- (void)presentAuthorizationFlowAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  inited = objc_initWeak(&location, self);
  v8 = objc_alloc_init(off_19560(inited));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6C70;
  v10[3] = &unk_14B50;
  v9 = completionCopy;
  v11 = v9;
  objc_copyWeak(&v12, &location);
  animatedCopy = animated;
  [v8 authorizationSessionWithCompletion:v10];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
}

- (void)presentAuthorizationViewControllerWithPaymentPass:(id)pass session:(id)session animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  passCopy = pass;
  sessionCopy = session;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_5930;
  v42 = sub_5940;
  v43 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_717C;
  v32[3] = &unk_14B78;
  objc_copyWeak(&v36, &location);
  v13 = completionCopy;
  v35 = v13;
  v14 = passCopy;
  v33 = v14;
  v15 = sessionCopy;
  v34 = v15;
  v37 = animatedCopy;
  v16 = objc_retainBlock(v32);
  v17 = [(objc_class *)off_19568() makeAuthorizationViewControllerForAuthorizationSession:v15 completion:v16];
  v18 = v39[5];
  v39[5] = v17;

  navigationController = [(PassbookSettingsListController *)self navigationController];
  pkui_frontMostViewController = [navigationController pkui_frontMostViewController];

  [(PassbookSettingsListController *)self navigationController];
  if (pkui_frontMostViewController)
    v21 = {;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_7264;
    v28[3] = &unk_14BC8;
    v28[4] = self;
    v30 = &v38;
    v31 = animatedCopy;
    v29 = v13;
    [v21 dismissViewControllerAnimated:0 completion:v28];

    v22 = v29;
  }

  else
    v23 = {;
    v24 = v39[5];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_7344;
    v25[3] = &unk_14BA0;
    v26 = v13;
    v27 = &v38;
    [v23 presentViewController:v24 animated:animatedCopy completion:v25];

    v22 = v26;
  }

  objc_destroyWeak(&v36);
  _Block_object_dispose(&v38, 8);

  objc_destroyWeak(&location);
}

- (void)settingsController:(id)controller requestsPresentInboxMessage:(id)message animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  messageCopy = message;
  completionCopy = completion;
  if (![messageCopy type])
  {
    accountUserInvitation = [messageCopy accountUserInvitation];
    [(PassbookSettingsListController *)self _presentAccountUserInvitation:accountUserInvitation animated:animatedCopy completion:completionCopy];
  }
}

- (void)_presentAccountUserInvitation:(id)invitation animated:(BOOL)animated completion:(id)completion
{
  invitationCopy = invitation;
  completionCopy = completion;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_7540;
  v17[3] = &unk_14C68;
  v17[4] = self;
  v10 = invitationCopy;
  animatedCopy = animated;
  v18 = v10;
  v19 = completionCopy;
  v11 = completionCopy;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_7950;
  v14[3] = &unk_14C90;
  v15 = v10;
  v16 = objc_retainBlock(v17);
  v14[4] = self;
  v12 = v10;
  v13 = v16;
  [(PassbookSettingsListController *)self _checkManateeCapabilityForFeatureApplication:v12 completion:v14];
}

- (void)_checkManateeCapabilityForFeatureApplication:(id)application completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    applicationCopy = application;
    v8 = [PKSecurityCapabilitiesController alloc];
    feature = [applicationCopy feature];

    v10 = [v8 initWithRequirements:8 feature:feature context:3];
    securityCapabilitiesController = self->_securityCapabilitiesController;
    self->_securityCapabilitiesController = v10;

    v12 = self->_securityCapabilitiesController;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_7C4C;
    v13[3] = &unk_14CE0;
    v14 = completionCopy;
    [(PKSecurityCapabilitiesController *)v12 isEnabledForSecuirtyRequirementsWithCompletion:v13];
  }
}

- (void)_presentManateeUpgradeForFeatureApplication:(id)application completion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (completionCopy)
  {
    v8 = [[PKSecurityCapabilitiesController alloc] initWithRequirements:8 feature:objc_msgSend(applicationCopy context:{"feature"), 3}];
    securityCapabilitiesController = self->_securityCapabilitiesController;
    self->_securityCapabilitiesController = v8;

    navigationController = [(PassbookSettingsListController *)self navigationController];
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Presenting hsa2 flow for account user invitation", buf, 2u);
    }

    v12 = self->_securityCapabilitiesController;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_7E74;
    v13[3] = &unk_14D30;
    v13[4] = self;
    v14 = applicationCopy;
    v15 = completionCopy;
    [(PKSecurityCapabilitiesController *)v12 presentSecurityRepairFlowWithPresentingViewController:navigationController completion:v13];
  }
}

@end