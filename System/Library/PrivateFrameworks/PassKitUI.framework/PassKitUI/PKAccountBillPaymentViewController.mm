@interface PKAccountBillPaymentViewController
+ (BOOL)canPayBillForAccount:(id)account displayableError:(id *)error;
+ (CGSize)smallRingSizeWithAccessibilityLayout:(BOOL)layout;
+ (UIEdgeInsets)contentMargins;
+ (double)ringTopMargin;
+ (double)smallRingTopMargin;
+ (id)alertControllerForDisplayableError:(id)error handler:(id)handler;
+ (id)displayableErrorForAccount:(id)account reason:(unint64_t)reason;
+ (void)_billPaymentViewControllerForAccount:(id)account accountUserCollection:(id)collection transactionSource:(id)source configuration:(id)configuration withCompletion:(id)completion;
+ (void)billPaymentViewControllerForAccount:(id)account accountUserCollection:(id)collection transactionSource:(id)source configuration:(id)configuration withCompletion:(id)completion;
- (BOOL)_interestLabelIsOutsideSmallRing;
- (CGSize)_layoutScrollViewWithContentWidth:(double)width;
- (PKAccountBillPaymentObserver)observer;
- (PKAccountBillPaymentViewController)initWithAccount:(id)account accountUserCollection:(id)collection transactionSource:(id)source suggestedAmountController:(id)controller configuration:(id)configuration interstitalState:(unint64_t)state;
- (PKAccountBillPaymentViewController)initWithSuggestedAmountController:(id)controller transactionSource:(id)source;
- (double)_buttonHeightForButtonWidth:(double)width;
- (id)_addBankAccountInformationViewController;
- (id)_interestForAmount:(id)amount;
- (id)_interestPostDate;
- (id)_interestStringForAmount:(id)amount;
- (id)_paymentAmount;
- (id)_roundedInterestForAmount:(id)amount;
- (id)_title;
- (id)billPaymentRingView:(id)view bottomCurvedTextForSuggestedAmount:(id)amount;
- (id)billPaymentRingView:(id)view topCurvedTextForSuggestedAmount:(id)amount;
- (id)billPaymentRingViewZeroInterestText:(id)text;
- (id)disabledBottomCurvedTextForBillPaymentRingView:(id)view;
- (id)disabledTopCurvedTextForBillPaymentRingView:(id)view;
- (id)presentationSceneIdentifierForAccountAutomaticPaymentsController:(id)controller;
- (id)presentationSceneIdentifierForAccountBillPaymentController:(id)controller;
- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection;
- (void)_accountDidChange:(id)change;
- (void)_cancelButtonTapped:(id)tapped;
- (void)_configureProductHeroView;
- (void)_contactSupportButtonTapped:(id)tapped;
- (void)_dismissViewControllerWithSuccess:(BOOL)success;
- (void)_interstitialButtonTapped:(id)tapped;
- (void)_layoutFooterWithState:(id *)state;
- (void)_payLaterButtonTapped:(id)tapped;
- (void)_payNowButtonTapped:(id)tapped;
- (void)_performBillPaymentWithAmount:(id)amount billPaymentSuggestedAmountDataEvent:(id)event;
- (void)_presentAddBankAccount;
- (void)_presentAlertControllerForError:(id)error;
- (void)_reportEventForPassIfNecessary:(id)necessary;
- (void)_setAccount:(id)account;
- (void)_setEnabled:(BOOL)enabled;
- (void)_setPayButtonsEnabled:(BOOL)enabled;
- (void)_setShowKeyboard:(BOOL)keyboard;
- (void)_setupAmountDescriptionViewForInterstitial;
- (void)_showOrHideKeypad;
- (void)_updateForShowKeyboardAnimated:(BOOL)animated;
- (void)_updateLayoutForKeyboardAction:(id)action;
- (void)_updateNavigationTitle;
- (void)_updatePayNowButtonTitleWithAmount:(id)amount;
- (void)_updateSmallRingInterestString;
- (void)_updateSubtitle;
- (void)accountAutomaticPaymentsController:(id)controller didSchedulePayment:(id)payment;
- (void)accountBillPaymentController:(id)controller hasChangedState:(unint64_t)state error:(id)error updatedAccount:(id)account;
- (void)addBankAccountInformationViewController:(id)controller didAddFundingSource:(id)source;
- (void)addBankAccountInformationViewControllerDidFinish:(id)finish;
- (void)billPaymentAmountDescriptionView:(id)view hasChangedAmount:(id)amount isValidAmount:(BOOL)validAmount;
- (void)billPaymentAmountDescriptionViewHasTappedLearnMore:(id)more;
- (void)billPaymentRingView:(id)view amountChanged:(id)changed;
- (void)billPaymentRingView:(id)view selectedSuggestedAmount:(id)amount selectedSuggestedAmountIsTarget:(BOOL)target userInitiatedChange:(BOOL)change;
- (void)dealloc;
- (void)keyboardDidShow:(id)show;
- (void)keyboardWillChange:(id)change;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)loadView;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAccountBillPaymentViewController

+ (BOOL)canPayBillForAccount:(id)account displayableError:(id *)error
{
  accountCopy = account;
  v7 = accountCopy;
  if (accountCopy)
  {
    schedulePaymentFeatureDescriptor = [accountCopy schedulePaymentFeatureDescriptor];

    if (schedulePaymentFeatureDescriptor)
    {
      stateReason = [v7 stateReason];
      LOBYTE(schedulePaymentFeatureDescriptor) = stateReason != 14;
      v10 = 2 * (stateReason == 14);
      if (!error)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = 1;
      if (!error)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    LOBYTE(schedulePaymentFeatureDescriptor) = 0;
    v10 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if ((schedulePaymentFeatureDescriptor & 1) == 0)
  {
    *error = [self displayableErrorForAccount:v7 reason:v10];
  }

LABEL_10:

  return schedulePaymentFeatureDescriptor;
}

+ (id)displayableErrorForAccount:(id)account reason:(unint64_t)reason
{
  [account feature];
  if (reason != 2)
  {
    if (reason == 1)
    {
      v5 = PKLocalizedFeatureString();
    }

    else
    {
      v5 = 0;
    }

LABEL_10:
    v6 = PKLocalizedFeatureString();
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v6 = PKLocalizedFeatureString();
  v7 = PKLocalizedFeatureString();
  v5 = v7;
  if (!v6)
  {
    goto LABEL_10;
  }

  if (v7)
  {
    goto LABEL_6;
  }

LABEL_11:
  v5 = PKLocalizedFeatureString();
LABEL_6:
  v8 = PKDisplayableErrorCustom();

  return v8;
}

+ (id)alertControllerForDisplayableError:(id)error handler:(id)handler
{
  handlerCopy = handler;
  if (error)
  {
    v6 = MEMORY[0x1E69DC650];
    errorCopy = error;
    v8 = PKTitleForDisplayableError();
    v9 = MEMORY[0x1BFB42D10](errorCopy);

    error = [v6 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

    v10 = MEMORY[0x1E69DC648];
    v11 = PKLocalizedString(&cfstr_CancelButtonTi.isa);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__PKAccountBillPaymentViewController_alertControllerForDisplayableError_handler___block_invoke;
    v14[3] = &unk_1E8011248;
    v15 = handlerCopy;
    v12 = [v10 actionWithTitle:v11 style:1 handler:v14];

    [error addAction:v12];
  }

  return error;
}

uint64_t __81__PKAccountBillPaymentViewController_alertControllerForDisplayableError_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)billPaymentViewControllerForAccount:(id)account accountUserCollection:(id)collection transactionSource:(id)source configuration:(id)configuration withCompletion:(id)completion
{
  accountCopy = account;
  collectionCopy = collection;
  sourceCopy = source;
  configurationCopy = configuration;
  completionCopy = completion;
  if (completionCopy)
  {
    selfCopy = self;
    v48 = collectionCopy;
    v16 = accountCopy;
    creditDetails = [v16 creditDetails];
    accountSummary = [creditDetails accountSummary];
    balanceSummary = [accountSummary balanceSummary];
    adjustedBalance = [accountSummary adjustedBalance];
    pastDueAmount = [accountSummary pastDueAmount];
    v46 = balanceSummary;
    pendingPurchases = [balanceSummary pendingPurchases];
    cyclesPastDue = [accountSummary cyclesPastDue];
    createdDate = [creditDetails createdDate];
    v22 = objc_alloc(MEMORY[0x1E695DEE8]);
    v23 = [v22 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    date = [MEMORY[0x1E695DF00] date];
    v49 = v16;
    v44 = date;
    v45 = v23;
    if (createdDate && (v25 = date, [v23 isDate:createdDate equalToDate:date toUnitGranularity:8]))
    {
      v26 = [v23 isDate:createdDate equalToDate:v25 toUnitGranularity:4] ^ 1;
    }

    else
    {
      v26 = 1;
    }

    v40 = v26;
    v27 = pendingPurchases;
    v28 = pastDueAmount;
    if (pendingPurchases)
    {
      zero = [MEMORY[0x1E696AB90] zero];
      v27 = [pendingPurchases compare:zero] == 1;
    }

    v47 = sourceCopy;
    v30 = adjustedBalance;
    if (adjustedBalance)
    {
      zero2 = [MEMORY[0x1E696AB90] zero];
      v30 = [adjustedBalance compare:zero2] == 1;
    }

    if (cyclesPastDue <= 0)
    {
      if (v28)
      {
        [MEMORY[0x1E696AB90] zero];
        v33 = v43 = v27;
        v32 = [v28 compare:v33] == 1;

        v27 = v43;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 1;
    }

    earlyInstallmentPlan = [configurationCopy earlyInstallmentPlan];
    numberOfActiveStatementedInstallments = [creditDetails numberOfActiveStatementedInstallments];
    if (earlyInstallmentPlan)
    {
      if (numberOfActiveStatementedInstallments <= 1)
      {
        v36 = 6;
      }

      else
      {
        v36 = 7;
      }
    }

    else
    {
      v37 = newInstallmentsForAccount(v49, 0);
      if ((v40 | (v30 || v27)))
      {
        if (v30 || v27)
        {
          v38 = 5;
          if (!v37)
          {
            v38 = 0;
          }

          if (v32)
          {
            v38 = 4;
          }

          if (!v30 && v27)
          {
            v36 = 3;
          }

          else
          {
            v36 = v38;
          }
        }

        else
        {
          v36 = 2;
        }
      }

      else
      {
        v36 = 1;
      }
    }

    sourceCopy = v47;
    collectionCopy = v48;
    if (v36)
    {
      v39 = [[PKAccountBillPaymentViewController alloc] initWithAccount:v49 accountUserCollection:v48 transactionSource:v47 suggestedAmountController:0 configuration:configurationCopy interstitalState:v36];
      completionCopy[2](completionCopy, v39);
    }

    else
    {
      [selfCopy _billPaymentViewControllerForAccount:v49 accountUserCollection:v48 transactionSource:v47 configuration:configurationCopy withCompletion:completionCopy];
    }
  }
}

+ (void)_billPaymentViewControllerForAccount:(id)account accountUserCollection:(id)collection transactionSource:(id)source configuration:(id)configuration withCompletion:(id)completion
{
  accountCopy = account;
  collectionCopy = collection;
  sourceCopy = source;
  configurationCopy = configuration;
  completionCopy = completion;
  v16 = MEMORY[0x1E69B86C8];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __144__PKAccountBillPaymentViewController__billPaymentViewControllerForAccount_accountUserCollection_transactionSource_configuration_withCompletion___block_invoke;
  v22[3] = &unk_1E8013C78;
  v26 = configurationCopy;
  v27 = completionCopy;
  v23 = accountCopy;
  v24 = collectionCopy;
  v25 = sourceCopy;
  v17 = configurationCopy;
  v18 = sourceCopy;
  v19 = collectionCopy;
  v20 = accountCopy;
  v21 = completionCopy;
  [v16 defaultControllerForAccount:v20 accountUserCollection:v19 transactionSource:v18 configuration:v17 completion:v22];
}

void __144__PKAccountBillPaymentViewController__billPaymentViewControllerForAccount_accountUserCollection_transactionSource_configuration_withCompletion___block_invoke(void *a1, void *a2)
{
  v3 = a1[8];
  v4 = a2;
  v5 = [[PKAccountBillPaymentViewController alloc] initWithAccount:a1[4] accountUserCollection:a1[5] transactionSource:a1[6] suggestedAmountController:v4 configuration:a1[7] interstitalState:0];

  (*(v3 + 16))(v3, v5);
}

+ (UIEdgeInsets)contentMargins
{
  if (_UISolariumFeatureFlagEnabled())
  {
    v2 = PKSetupViewConstantsViewMargin();
  }

  else
  {
    v3 = PKUIGetMinScreenWidthType();
    if (v3 > 4)
    {
      v2 = 44.0;
    }

    else
    {
      v2 = dbl_1BE114A08[v3];
    }
  }

  v4 = 0.0;
  v5 = 0.0;
  v6 = v2;
  result.right = v6;
  result.bottom = v5;
  result.left = v2;
  result.top = v4;
  return result;
}

+ (double)ringTopMargin
{
  v2 = 21.0;
  if ((PKUserInterfaceIdiomSupportsLargeLayouts() & 1) == 0)
  {
    v3 = PKUIGetMinScreenType();
    if (v3 > 8)
    {
      return 44.0;
    }

    else
    {
      return dbl_1BE114A30[v3];
    }
  }

  return v2;
}

+ (double)smallRingTopMargin
{
  v2 = 14.0;
  if ((PKUserInterfaceIdiomSupportsLargeLayouts() & 1) == 0)
  {
    v3 = PKUIGetMinScreenType();
    v2 = 21.0;
    if (v3 <= 8)
    {
      return dbl_1BE114A78[v3];
    }
  }

  return v2;
}

+ (CGSize)smallRingSizeWithAccessibilityLayout:(BOOL)layout
{
  layoutCopy = layout;
  v4 = PKUIGetMinScreenWidthType();
  v5 = 120.0;
  if (layoutCopy)
  {
    v5 = 64.0;
  }

  if (!v4)
  {
    v5 = 54.0;
  }

  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

- (PKAccountBillPaymentViewController)initWithSuggestedAmountController:(id)controller transactionSource:(id)source
{
  sourceCopy = source;
  controllerCopy = controller;
  account = [controllerCopy account];
  accountUserCollection = [controllerCopy accountUserCollection];
  v10 = [(PKAccountBillPaymentViewController *)self initWithSuggestedAmountController:controllerCopy account:account accountUserCollection:accountUserCollection transactionSource:sourceCopy configuration:0 interstitialState:0];

  return v10;
}

- (PKAccountBillPaymentViewController)initWithAccount:(id)account accountUserCollection:(id)collection transactionSource:(id)source suggestedAmountController:(id)controller configuration:(id)configuration interstitalState:(unint64_t)state
{
  v77 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  collectionCopy = collection;
  sourceCopy = source;
  controllerCopy = controller;
  configurationCopy = configuration;
  v73.receiver = self;
  v73.super_class = PKAccountBillPaymentViewController;
  v18 = [(PKAccountBillPaymentViewController *)&v73 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    v62 = controllerCopy;
    v64 = collectionCopy;
    objc_storeStrong(&v18->_account, account);
    objc_storeStrong(&v19->_accountUserCollection, collection);
    objc_storeStrong(&v19->_transactionSource, source);
    v19->_interstitialState = state;
    if (state > 5)
    {
      v20 = 0;
    }

    else
    {
      v20 = qword_1BE114AC0[state];
    }

    v19->_featuredViewState = v20;
    objc_storeStrong(&v19->_configuration, configuration);
    v19->_viewIsEnabled = 1;
    v19->_payButtonsEnabled = 1;
    v19->_shouldEnablePayLaterButton = 1;
    v21 = *MEMORY[0x1E695F050];
    v22 = *(MEMORY[0x1E695F050] + 16);
    v19->_lastKeyboardFrame.origin = *MEMORY[0x1E695F050];
    v19->_lastKeyboardFrame.size = v22;
    v19->_keyboardFrame.origin = v21;
    v19->_keyboardFrame.size = v22;
    objc_storeStrong(&v19->_suggestedAmountController, controller);
    v23 = [(PKBillPaymentSuggestedAmountController *)v19->_suggestedAmountController generateAmountSuggestionListWithFinHealth:PKFinHealthBillPaymentSuggestionsEnabled()];
    suggestionList = v19->_suggestionList;
    v19->_suggestionList = v23;

    interstitialState = v19->_interstitialState;
    if (interstitialState - 6 < 2)
    {
      earlyInstallmentPlan = [configurationCopy earlyInstallmentPlan];
      v31 = earlyInstallmentPlan;
      if (earlyInstallmentPlan)
      {
        v75 = earlyInstallmentPlan;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
        installmentPlans = v19->_installmentPlans;
        v19->_installmentPlans = v32;
      }
    }

    else if (interstitialState == 5)
    {
      v72 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      newInstallmentsForAccount(accountCopy, &v72);
      v34 = [v72 copy];
      v35 = v19->_installmentPlans;
      v19->_installmentPlans = v34;

      v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v37 = v19->_installmentPlans;
      v38 = [(NSArray *)v37 countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v69;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v69 != v40)
            {
              objc_enumerationMutation(v37);
            }

            identifier = [*(*(&v68 + 1) + 8 * i) identifier];
            [v36 addObject:identifier];
          }

          v39 = [(NSArray *)v37 countByEnumeratingWithState:&v68 objects:v76 count:16];
        }

        while (v39);
      }

      if ([v36 count])
      {
        mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
        accountIdentifier = [(PKAccount *)v19->_account accountIdentifier];
        [mEMORY[0x1E69B8400] markUserViewedIntroduction:1 forInstallmentIdentifiers:v36 accountIdentifier:accountIdentifier];
      }
    }

    else if (!interstitialState)
    {
      v26 = objc_alloc(MEMORY[0x1E69B8348]);
      paymentPass = [sourceCopy paymentPass];
      v28 = [v26 initWithAccount:accountCopy paymentPass:paymentPass];
      billPaymentCoordinator = v19->_billPaymentCoordinator;
      v19->_billPaymentCoordinator = v28;

      [(PKAccountBillPaymentController *)v19->_billPaymentCoordinator setDelegate:v19];
    }

    creditDetails = [accountCopy creditDetails];
    rates = [creditDetails rates];
    aprForPurchases = [rates aprForPurchases];
    apr = v19->_apr;
    v19->_apr = aprForPurchases;

    v49 = objc_alloc_init(MEMORY[0x1E696AB78]);
    interestDateFormatter = v19->_interestDateFormatter;
    v19->_interestDateFormatter = v49;

    v51 = v19->_interestDateFormatter;
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v51 setLocale:autoupdatingCurrentLocale];

    [(NSDateFormatter *)v19->_interestDateFormatter setLocalizedDateFormatFromTemplate:@"MMM d"];
    currencyCode = [creditDetails currencyCode];
    v54 = PKMutableNumberFormatterForCurrencyCode();
    amountFormatter = v19->_amountFormatter;
    v19->_amountFormatter = v54;

    navigationItem = [(PKAccountBillPaymentViewController *)v19 navigationItem];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    v57 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v19 action:sel__cancelButtonTapped_];
    [v57 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    [navigationItem setLeftBarButtonItem:v57];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v19 selector:sel__accountDidChange_ name:*MEMORY[0x1E69B9E60] object:0];

    v74 = objc_opt_class();
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
    v60 = [(PKAccountBillPaymentViewController *)v19 registerForTraitChanges:v59 withHandler:&__block_literal_global_109];

    controllerCopy = v63;
    collectionCopy = v65;
  }

  return v19;
}

void __151__PKAccountBillPaymentViewController_initWithAccount_accountUserCollection_transactionSource_suggestedAmountController_configuration_interstitalState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = [v2 traitCollection];
  v3 = [v5 preferredContentSizeCategory];
  v2[1158] = UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC70]) == NSOrderedDescending;
  v4 = [v2 viewIfLoaded];

  if (v4)
  {
    [v4 setNeedsLayout];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  CLInUse = self->_CLInUse;
  if (CLInUse)
  {
    [(CLInUseAssertion *)CLInUse invalidate];
    v5 = self->_CLInUse;
    self->_CLInUse = 0;
  }

  v6.receiver = self;
  v6.super_class = PKAccountBillPaymentViewController;
  [(PKAccountBillPaymentViewController *)&v6 dealloc];
}

- (void)loadView
{
  v137[1] = *MEMORY[0x1E69E9840];
  v133.receiver = self;
  v133.super_class = PKAccountBillPaymentViewController;
  [(PKAccountBillPaymentViewController *)&v133 loadView];
  [(PKAccount *)self->_account feature];
  featuredViewState = self->_featuredViewState;
  if (_UISolariumFeatureFlagEnabled())
  {
    view = [(PKAccountBillPaymentViewController *)self view];
    [view pkui_applyContainerConcentricCornerConfiguration];
  }

  v5 = PKUIGetMinScreenType();
  if (featuredViewState != 1 || PKUIGetMinScreenWidthType() || PKIsVision())
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = self->_titleLabel;
    self->_titleLabel = v6;

    v8 = _UISolariumFeatureFlagEnabled();
    v9 = self->_titleLabel;
    if (v8)
    {
      v10 = PKOBKHeaderTitleFont(v8);
      [(UILabel *)v9 setFont:v10];

      v11 = self->_titleLabel;
      v12 = PKOBKHeaderTitleTextColor();
      [(UILabel *)v11 setTextColor:v12];
    }

    else
    {
      v12 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDB0], *MEMORY[0x1E69DDC58], 32770, 0);
      [(UILabel *)v9 setFont:v12];
    }

    [(UILabel *)self->_titleLabel setTextAlignment:PKOBKTextAlignment()];
    v13 = self->_titleLabel;
    _title = [(PKAccountBillPaymentViewController *)self _title];
    [(UILabel *)v13 setText:_title];

    [(UILabel *)self->_titleLabel setNumberOfLines:0];
    [(UILabel *)self->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  }

  v15 = MEMORY[0x1E69DDCF8];
  if (featuredViewState != 1 || v5 > 3 || PKIsVision())
  {
    v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = v16;

    v18 = _UISolariumFeatureFlagEnabled();
    v19 = self->_subtitleLabel;
    if (v18)
    {
      v20 = PKOBKHeaderSubtitleFont(v18);
      [(UILabel *)v19 setFont:v20];

      v21 = self->_subtitleLabel;
      v23 = PKOBKHeaderSubtitleTextColor(v22);
      [(UILabel *)v21 setTextColor:v23];
    }

    else
    {
      v23 = PKFontForDefaultDesign(*v15, *MEMORY[0x1E69DDC38], 0x8000, 0);
      [(UILabel *)v19 setFont:v23];
    }

    [(UILabel *)self->_subtitleLabel setTextAlignment:PKOBKTextAlignment()];
    [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)self->_subtitleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
  }

  [(PKAccountBillPaymentViewController *)self _updateSubtitle];
  v24 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  smallRingInterestLabel = self->_smallRingInterestLabel;
  self->_smallRingInterestLabel = v24;

  [(UILabel *)self->_smallRingInterestLabel setBaselineAdjustment:1];
  [(UILabel *)self->_smallRingInterestLabel setTextAlignment:1];
  [(UILabel *)self->_smallRingInterestLabel setNumberOfLines:0];
  [(UILabel *)self->_smallRingInterestLabel setAlpha:0.0];
  v26 = [[PKBillPaymentRingView alloc] initWithSuggestedAmountList:self->_suggestionList delegate:self dataSource:self];
  ringView = self->_ringView;
  self->_ringView = v26;

  [(PKBillPaymentRingView *)self->_ringView setEnabled:self->_interstitialState == 0];
  [(PKBillPaymentRingView *)self->_ringView setHidden:featuredViewState != 1];
  layer = [(PKBillPaymentRingView *)self->_ringView layer];
  [layer setAnchorPoint:{0.5, 0.0}];

  v29 = [[PKAccountBillPaymentAmountDescriptionView alloc] initWithSuggestedAmountList:self->_suggestionList account:self->_account configuration:self->_configuration delegate:self];
  amountDescriptionView = self->_amountDescriptionView;
  self->_amountDescriptionView = v29;

  v31 = self->_amountDescriptionView;
  schedulePaymentFeatureDescriptor = [(PKAccount *)self->_account schedulePaymentFeatureDescriptor];
  minimumAmount = [schedulePaymentFeatureDescriptor minimumAmount];
  [(PKAccountBillPaymentAmountDescriptionView *)v31 setMinimumAmount:minimumAmount];

  v34 = self->_amountDescriptionView;
  if (PKBroadwayAllowOverpaymentViaKeypadKey())
  {
    [(PKAccountBillPaymentAmountDescriptionView *)v34 setMaximumAmount:0];
  }

  else
  {
    maximumAmount = [(PKBillPaymentSuggestedAmountList *)self->_suggestionList maximumAmount];
    [(PKAccountBillPaymentAmountDescriptionView *)v34 setMaximumAmount:maximumAmount];
  }

  [(PKAccountBillPaymentViewController *)self _setupAmountDescriptionViewForInterstitial];
  v36 = _UISolariumFeatureFlagEnabled();
  v37 = *v15;
  v38 = *MEMORY[0x1E69DDC38];
  v118 = *MEMORY[0x1E69DDC38];
  v115 = *v15;
  if (v36)
  {
    PKFontForDefaultDesign(v37, v38, *MEMORY[0x1E69DB970]);
  }

  else
  {
    PKFontForDefaultDesign(v37, v38, 2, 0);
  }
  v39 = ;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PKAccountBillPaymentViewController_loadView__block_invoke;
  aBlock[3] = &unk_1E8013CC0;
  v116 = v39;
  v132 = v116;
  v117 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  if (_UISolariumFeatureFlagEnabled() && (PKIsVision() & 1) == 0)
  {
    prominentGlassButtonConfiguration = [MEMORY[0x1E69DC740] prominentGlassButtonConfiguration];
    v44 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_66];
    [prominentGlassButtonConfiguration setBaseForegroundColor:v44];

    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __46__PKAccountBillPaymentViewController_loadView__block_invoke_2;
    v128[3] = &unk_1E8013EE8;
    v129 = v116;
    [prominentGlassButtonConfiguration setTitleTextAttributesTransformer:v128];
    [prominentGlassButtonConfiguration setShowsActivityIndicator:!self->_viewIsEnabled];
    v45 = [MEMORY[0x1E69DC738] buttonWithConfiguration:prominentGlassButtonConfiguration primaryAction:0];
    primaryButton = self->_primaryButton;
    self->_primaryButton = v45;

    v47 = self->_primaryButton;
    v48 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_40];
    [(UIButton *)v47 setTintColor:v48];

    v49 = self->_primaryButton;
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = __46__PKAccountBillPaymentViewController_loadView__block_invoke_3;
    v126[3] = &unk_1E8013CE8;
    objc_copyWeak(&v127, &location);
    [(UIButton *)v49 setConfigurationUpdateHandler:v126];
    objc_destroyWeak(&v127);
    backgroundColor = v129;
  }

  else
  {
    prominentGlassButtonConfiguration = [MEMORY[0x1E69DC888] labelColor];
    backgroundColor = [objc_opt_class() backgroundColor];
    v42 = v117[2](v117, prominentGlassButtonConfiguration, backgroundColor);
    v43 = self->_primaryButton;
    self->_primaryButton = v42;
  }

  [(UIButton *)self->_primaryButton setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];
  interstitialState = self->_interstitialState;
  if (interstitialState - 4 < 3)
  {
    v51 = PKLocalizedPaymentString(&cfstr_Continue.isa);
LABEL_36:
    v53 = v51;
    goto LABEL_37;
  }

  if (interstitialState != 7)
  {
    if (!interstitialState)
    {
      self->_buttonsArePayButtons = 1;
      _paymentAmount = [(PKAccountBillPaymentViewController *)self _paymentAmount];
      [(PKAccountBillPaymentViewController *)self _updatePayNowButtonTitleWithAmount:_paymentAmount];

      [(UIButton *)self->_primaryButton addTarget:self action:sel__payNowButtonTapped_ forControlEvents:64];
      v53 = PKLocalizedFeatureString();
      if (_UISolariumFeatureFlagEnabled() && (PKIsVision() & 1) == 0)
      {
        prominentGlassButtonConfiguration2 = [MEMORY[0x1E69DC740] prominentGlassButtonConfiguration];
        [prominentGlassButtonConfiguration2 setTitle:v53];
        labelColor = [MEMORY[0x1E69DC888] labelColor];
        [prominentGlassButtonConfiguration2 setBaseForegroundColor:labelColor];

        v124[0] = MEMORY[0x1E69E9820];
        v124[1] = 3221225472;
        v124[2] = __46__PKAccountBillPaymentViewController_loadView__block_invoke_4;
        v124[3] = &unk_1E8013EE8;
        v125 = v116;
        [prominentGlassButtonConfiguration2 setTitleTextAttributesTransformer:v124];
        v70 = [MEMORY[0x1E69DC738] buttonWithConfiguration:prominentGlassButtonConfiguration2 primaryAction:0];
        secondaryButton = self->_secondaryButton;
        self->_secondaryButton = v70;

        v72 = self->_secondaryButton;
        systemGray6Color = [MEMORY[0x1E69DC888] systemGray6Color];
        [(UIButton *)v72 setTintColor:systemGray6Color];
      }

      else
      {
        tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
        labelColor2 = [MEMORY[0x1E69DC888] labelColor];
        v56 = v117[2](v117, tertiarySystemFillColor, labelColor2);
        v57 = self->_secondaryButton;
        self->_secondaryButton = v56;

        [(UIButton *)self->_secondaryButton setTitle:v53 forState:0];
      }

      [(UIButton *)self->_secondaryButton addTarget:self action:sel__payLaterButtonTapped_ forControlEvents:64];
      [(UIButton *)self->_secondaryButton sizeToFit];
      [(UIButton *)self->_secondaryButton setAccessibilityIdentifier:*MEMORY[0x1E69B9BE0]];
      v74 = MEMORY[0x1E69DC628];
      v122[0] = MEMORY[0x1E69E9820];
      v122[1] = 3221225472;
      v122[2] = __46__PKAccountBillPaymentViewController_loadView__block_invoke_5;
      v122[3] = &unk_1E8010A60;
      objc_copyWeak(&v123, &location);
      v75 = [v74 actionWithHandler:v122];
      v76 = PKLocalizedFeatureString();
      v77 = PKOBKLearnMoreButton(@"keyboard.chevron.compact.down.fill", v76, v75);
      tertiaryButton = self->_tertiaryButton;
      self->_tertiaryButton = v77;

      [(UIButton *)self->_tertiaryButton sizeToFit];
      [(UIButton *)self->_tertiaryButton setAccessibilityIdentifier:*MEMORY[0x1E69B9D10]];

      objc_destroyWeak(&v123);
      goto LABEL_45;
    }

    v51 = PKLocalizedString(&cfstr_Done.isa);
    goto LABEL_36;
  }

  v53 = PKLocalizedFeatureString();
  v58 = MEMORY[0x1E69DC740];
  v59 = PKLocalizedFeatureString();
  v60 = PKFontForDefaultDesign(v115, v118);
  v61 = [v58 pkui_plainConfigurationWithTitle:v59 font:v60];

  v62 = MEMORY[0x1E69DC628];
  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __46__PKAccountBillPaymentViewController_loadView__block_invoke_6;
  v120[3] = &unk_1E8010A60;
  objc_copyWeak(&v121, &location);
  v63 = [v62 actionWithHandler:v120];
  v64 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v61 primaryAction:v63];
  v65 = self->_tertiaryButton;
  self->_tertiaryButton = v64;

  [(UIButton *)self->_tertiaryButton setConfigurationUpdateHandler:&__block_literal_global_145_0];
  [(UIButton *)self->_tertiaryButton sizeToFit];

  objc_destroyWeak(&v121);
LABEL_37:
  objc_storeStrong(&self->_payNowButtonTitle, v53);
  if (_UISolariumFeatureFlagEnabled() && (PKIsVision() & 1) == 0)
  {
    [(UIButton *)self->_primaryButton setNeedsUpdateConfiguration];
  }

  else
  {
    [(UIButton *)self->_primaryButton setTitle:v53 forState:0];
  }

  [(UIButton *)self->_primaryButton addTarget:self action:sel__interstitialButtonTapped_ forControlEvents:64];
  if (self->_featuredViewState == 2)
  {
    v66 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    productHeroView = self->_productHeroView;
    self->_productHeroView = v66;

    [(UIImageView *)self->_productHeroView setAccessibilityIgnoresInvertColors:1];
    [(PKAccountBillPaymentViewController *)self _configureProductHeroView];
  }

LABEL_45:

  [(UIButton *)self->_primaryButton sizeToFit];
  v79 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v79;

  [(UIScrollView *)self->_scrollView setDelegate:self];
  if (_UISolariumFeatureFlagEnabled())
  {
    if ((PKIsVision() & 1) == 0)
    {
      [(UIScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
    }

    v81 = objc_alloc_init(MEMORY[0x1E69DD250]);
    buttonContainerView = self->_buttonContainerView;
    self->_buttonContainerView = v81;

    v83 = self->_buttonContainerView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v83 setBackgroundColor:clearColor];
  }

  else
  {
    v85 = [_PKVisibilityBackdropView alloc];
    v86 = [(_PKVisibilityBackdropView *)v85 initWithFrame:-2 privateStyle:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    blurringView = self->_blurringView;
    self->_blurringView = v86;

    [(_PKVisibilityBackdropView *)self->_blurringView setDelegate:self];
    [(_PKVisibilityBackdropView *)self->_blurringView setUserInteractionEnabled:1];
    [(_PKVisibilityBackdropView *)self->_blurringView pkui_setVisibility:0 animated:0.0];
    v88 = self->_blurringView;
    clearColor = self->_buttonContainerView;
    self->_buttonContainerView = &v88->super.super;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  [defaultCenter addObserver:self selector:sel_keyboardDidShow_ name:*MEMORY[0x1E69DDF78] object:0];
  [defaultCenter addObserver:self selector:sel_keyboardWillChange_ name:*MEMORY[0x1E69DE068] object:0];
  [defaultCenter addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
  v114 = defaultCenter;
  view2 = [(PKAccountBillPaymentViewController *)self view];
  backgroundColor2 = [objc_opt_class() backgroundColor];
  [view2 setBackgroundColor:backgroundColor2];

  [view2 addSubview:self->_scrollView];
  [view2 addSubview:self->_buttonContainerView];
  if ((_UISolariumFeatureFlagEnabled() & 1) != 0 || PKIsVision())
  {
    contentView = self->_buttonContainerView;
  }

  else
  {
    contentView = [(_UIBackdropView *)self->_blurringView contentView];
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    [(UIScrollView *)self->_scrollView addSubview:self->_tertiaryButton];
  }

  else
  {
    [(UIView *)contentView addSubview:self->_tertiaryButton];
  }

  [(UIView *)contentView addSubview:self->_secondaryButton];
  [(UIView *)contentView addSubview:self->_primaryButton];
  [(UIScrollView *)self->_scrollView addSubview:self->_ringView];
  [(UIScrollView *)self->_scrollView addSubview:self->_productHeroView];
  [(UIScrollView *)self->_scrollView addSubview:self->_amountDescriptionView];
  [(UIScrollView *)self->_scrollView addSubview:self->_titleLabel];
  [(UIScrollView *)self->_scrollView addSubview:self->_subtitleLabel];
  [(UIScrollView *)self->_scrollView addSubview:self->_smallRingInterestLabel];
  [view2 setUserInteractionEnabled:self->_viewIsEnabled];
  v92 = !self->_buttonsArePayButtons || self->_payButtonsEnabled;
  [(UIButton *)self->_primaryButton setEnabled:v92];
  v93 = self->_shouldEnablePayLaterButton && self->_payButtonsEnabled;
  [(UIButton *)self->_secondaryButton setEnabled:v93];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    [(UIButton *)self->_primaryButton setShowSpinner:!self->_viewIsEnabled];
  }

  [(UIButton *)self->_tertiaryButton setEnabled:self->_viewIsEnabled];
  traitCollection = [(PKAccountBillPaymentViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v96 = *MEMORY[0x1E69DDC70];
  self->_usesAccessibilityLayout = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC70]) == NSOrderedDescending;
  self->_usesLargestAccessibilityLayout = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC20]) < 2;
  _interestLabelIsOutsideSmallRing = [(PKAccountBillPaymentViewController *)self _interestLabelIsOutsideSmallRing];
  v98 = *MEMORY[0x1E69DDD28];
  if (_interestLabelIsOutsideSmallRing)
  {
    v99 = *MEMORY[0x1E69DDD28];
  }

  else
  {
    v99 = v115;
  }

  if (_interestLabelIsOutsideSmallRing)
  {
    v100 = v118;
  }

  else
  {
    v100 = v96;
  }

  v101 = PKFontForDesign(*MEMORY[0x1E69DB8D8], v99, v100, 0x8000, 0);
  pk_fixedWidthFont = [v101 pk_fixedWidthFont];

  v136 = *MEMORY[0x1E69DB648];
  v103 = v136;
  v137[0] = pk_fixedWidthFont;
  v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v137 forKeys:&v136 count:1];
  v105 = [v104 mutableCopy];
  smallRingInterestAttributes = self->_smallRingInterestAttributes;
  self->_smallRingInterestAttributes = v105;

  v107 = PKFontForDefaultDesign(v98, v118, 0x8000, 0);
  v135[0] = v107;
  v108 = *MEMORY[0x1E69DB650];
  v134[0] = v103;
  v134[1] = v108;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v135[1] = secondaryLabelColor;
  v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v135 forKeys:v134 count:2];
  smallRingInterestDateAttributes = self->_smallRingInterestDateAttributes;
  self->_smallRingInterestDateAttributes = v110;

  [(PKAccountBillPaymentViewController *)self _updateNavigationTitle];
  [(PKAccountBillPaymentViewController *)self _updateForShowKeyboardAnimated:0];
  view3 = [(PKAccountBillPaymentViewController *)self view];
  [view3 setAccessibilityIdentifier:*MEMORY[0x1E69B9540]];

  if (_UISolariumFeatureFlagEnabled() && (PKIsVision() & 1) == 0)
  {
    v113 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:self->_scrollView edge:4];
    [(UIView *)self->_buttonContainerView addInteraction:v113];
  }

  objc_destroyWeak(&location);
}

PKContinuousButton *__46__PKAccountBillPaymentViewController_loadView__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v10 = 0x402C000000000000;
  v11 = xmmword_1BE0B69E0;
  v12 = vdupq_n_s64(2uLL);
  v7 = [[PKContinuousButton alloc] initWithConfiguration:&v10];
  [(PKContinuousButton *)v7 setTintColor:v6];

  [(PKContinuousButton *)v7 updateTitleColorWithColor:v5];
  [(PKContinuousButton *)v7 updateActivityIndicatorColorWithColor:v5];

  [(PKContinuousButton *)v7 setContentEdgeInsets:0.0, 14.0, 0.0, 14.0];
  v8 = [(PKContinuousButton *)v7 titleLabel];
  [v8 setFont:*(a1 + 32)];
  [v8 setAdjustsFontSizeToFitWidth:1];

  return v7;
}

id __46__PKAccountBillPaymentViewController_loadView__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKey:*MEMORY[0x1E69DB648]];

  return v3;
}

void __46__PKAccountBillPaymentViewController_loadView__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 configuration];
    [v4 setShowsActivityIndicator:(WeakRetained[1156] & 1) == 0];
    if (WeakRetained[1156] == 1)
    {
      v5 = *(WeakRetained + 143);
    }

    else
    {
      v5 = 0;
    }

    [v4 setTitle:v5];
    [v6 setConfiguration:v4];
  }
}

id __46__PKAccountBillPaymentViewController_loadView__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKey:*MEMORY[0x1E69DB648]];

  return v3;
}

void __46__PKAccountBillPaymentViewController_loadView__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _showKeyboardButtonTapped:v4];
}

void __46__PKAccountBillPaymentViewController_loadView__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _contactSupportButtonTapped:v4];
}

void __46__PKAccountBillPaymentViewController_loadView__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setExclusiveTouch:1];
  v3 = [v2 titleLabel];
  [v3 setTextAlignment:1];

  v4 = [v2 titleLabel];

  [v4 setNumberOfLines:0];
}

- (void)viewWillLayoutSubviews
{
  v90.receiver = self;
  v90.super_class = PKAccountBillPaymentViewController;
  [(PKAccountBillPaymentViewController *)&v90 viewWillLayoutSubviews];
  v3 = objc_autoreleasePoolPush();
  self->_inLayoutSubviews = 1;
  view = [(PKAccountBillPaymentViewController *)self view];
  [view safeAreaInsets];
  v6 = v5;
  v78 = v7;
  [view bounds];
  v9 = v8;
  v11 = v10;
  v81 = v12;
  v82 = v13;
  [(UIScrollView *)self->_scrollView setFrame:?];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  [objc_opt_class() contentMargins];
  [view pkui_readableContentBoundsWithMargins:?];
  v15 = v14;
  if (PKUIGetMinScreenWidthType())
  {
    pkui_userInterfaceIdiomSupportsLargeLayouts = [(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts];
    v17 = 24.0;
    if (pkui_userInterfaceIdiomSupportsLargeLayouts)
    {
      v17 = 19.0;
    }
  }

  else
  {
    v17 = 19.0;
  }

  v84 = v17;
  v83 = 0.0;
  v79 = v15;
  v18 = v15;
  if (_UISolariumFeatureFlagEnabled())
  {
    v91.origin.x = v81;
    v91.origin.y = v82;
    v91.size.width = v9;
    v91.size.height = v11;
    v19 = CGRectGetMaxY(v91) + -48.0;
    view2 = [(PKAccountBillPaymentViewController *)self view];
    [view2 _concentricEdgeInsetsForEdge:4 bounds:0.0 minimumEdgeInsets:{v19, v9, 48.0, 0.0, 28.0, 28.0, 28.0}];
    v22 = v21;
    v83 = v23;
    v25 = v24;

    v18 = v9 - (v22 + v25);
    v84 = 12.0;
  }

  v26 = PKUIGetMinScreenWidthType();
  v28.n128_u64[0] = 15.0;
  if (!v26)
  {
    v28.n128_f64[0] = 10.0;
  }

  v76 = v28.n128_u64[0];
  v27.n128_u64[0] = 0.5;
  v28.n128_f64[0] = (v18 - v28.n128_f64[0]) * 0.5;
  PKFloatRoundToPixel(v28, v27);
  v30 = v29;
  [(UIButton *)self->_secondaryButton sizeThatFits:1.79769313e308, 48.0];
  v32 = v31;
  [(UIButton *)self->_primaryButton sizeThatFits:1.79769313e308, 48.0];
  v34 = v32 <= v30 && v33 <= v30;
  v77 = v18;
  if (v34 && self->_primaryButton && self->_secondaryButton)
  {
    v35 = 0;
  }

  else
  {
    v35 = 1;
    v30 = v18;
  }

  [(PKAccountBillPaymentViewController *)self _buttonHeightForButtonWidth:v30];
  v37 = v36;
  remainder.origin.x = v81;
  remainder.origin.y = v82;
  remainder.size.width = v9;
  remainder.size.height = v11;
  v80 = v11;
  v38 = v84 + v83 + v36;
  if (self->_showKeyboard)
  {
    v75 = v6;
    if (self->_visibility - 1 > 1)
    {
      x = self->_lastKeyboardFrame.origin.x;
      y = self->_lastKeyboardFrame.origin.y;
      width = self->_lastKeyboardFrame.size.width;
      height = self->_lastKeyboardFrame.size.height;
    }

    else
    {
      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
      if (!CGRectIsNull(self->_keyboardFrame))
      {
        window = [view window];
        v44 = window;
        if (window)
        {
          [window convertRect:0 fromWindow:{self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height}];
          [view convertRect:0 fromView:?];
          x = v45;
          y = v46;
          width = v47;
          height = v48;
        }
      }
    }

    v92.origin.x = x;
    v92.origin.y = y;
    v92.size.width = width;
    v92.size.height = height;
    if (!CGRectIsNull(v92) && (PKUIKeyboardIsHardwareKeyboardActive() & 1) == 0)
    {
      v50 = fmax(v82 + v80 - y, 0.0);
      v51 = v50 + 16.0;
      v52 = v50 <= 0.0;
      if (v50 > 0.0)
      {
        v38 = v37 + v50 + 16.0;
      }

      v53 = v84;
      if (v52)
      {
        v54 = v83;
      }

      else
      {
        v54 = v51;
      }

      if (!v52)
      {
        v53 = 0.0;
      }

      v83 = v54;
      v84 = v53;
    }

    self->_lastKeyboardFrame.origin.x = x;
    self->_lastKeyboardFrame.origin.y = y;
    self->_lastKeyboardFrame.size.width = width;
    self->_lastKeyboardFrame.size.height = height;
    v6 = v75;
    if (v35)
    {
LABEL_42:
      if (self->_primaryButton && self->_secondaryButton)
      {
        v38 = v37 + 15.0 + v38;
      }
    }
  }

  else
  {
    if (self->_tertiaryButton && (_UISolariumFeatureFlagEnabled() & 1) == 0)
    {
      v38 = v38 + v37 + 3.0 + 3.0;
    }

    v49 = *(MEMORY[0x1E695F050] + 16);
    self->_lastKeyboardFrame.origin = *MEMORY[0x1E695F050];
    self->_lastKeyboardFrame.size = v49;
    if (v35)
    {
      goto LABEL_42;
    }
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v55 = 0.0;
  }

  else
  {
    v55 = v78;
  }

  v56 = v38 + v55;
  v93.origin.x = v81;
  v93.origin.y = v82;
  v93.size.width = v9;
  v93.size.height = v80;
  CGRectDivide(v93, &slice, &remainder, v38 + v55, CGRectMaxYEdge);
  [(UIView *)self->_buttonContainerView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  [(UIView *)self->_buttonContainerView layoutIfNeeded];
  [(UIScrollView *)self->_scrollView contentInset];
  v59 = v58;
  v60 = 20.0;
  if (self->_showKeyboard)
  {
    v60 = 0.0;
  }

  v61 = v56 - v55;
  if (v6 + v60 != v59 || v61 != v57)
  {
    [(UIScrollView *)self->_scrollView setContentInset:*&v75];
  }

  v62 = v83 + v55;
  [(UIScrollView *)self->_scrollView verticalScrollIndicatorInsets];
  if (v61 != v63)
  {
    [(UIScrollView *)self->_scrollView setVerticalScrollIndicatorInsets:?];
  }

  *v85 = v79;
  *&v85[1] = v77;
  *&v85[2] = v30;
  *&v85[3] = v37;
  v85[4] = v76;
  *&v85[5] = v84;
  *&v85[6] = v62;
  v86 = v35;
  memset(v87, 0, sizeof(v87));
  [(PKAccountBillPaymentViewController *)self _layoutFooterWithState:v85];
  [(PKAccountBillPaymentViewController *)self _layoutScrollViewWithContentWidth:v79];
  v65 = v64;
  v67 = v66;
  [(UIScrollView *)self->_scrollView contentSize];
  if (v65 != v69 || v67 != v68)
  {
    [(UIScrollView *)self->_scrollView setContentSize:v65, v67];
  }

  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    [(UIScrollView *)self->_scrollView bounds];
    if (v67 <= v71 - v6 - v56)
    {
      v72 = 0.0;
    }

    else
    {
      v72 = fmin(fmax((v67 - v70 - (v80 - v56)) / (v80 - v56 + 8.0 - (v80 - v56)), 0.0), 1.0);
    }

    [(_PKVisibilityBackdropView *)self->_blurringView pkui_setVisibility:0 animated:v72];
    scrollView = self->_scrollView;
    navigationItem = [(PKAccountBillPaymentViewController *)self navigationItem];
    [(UIScrollView *)scrollView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKAccountBillPaymentViewController;
  [(PKAccountBillPaymentViewController *)&v3 viewDidLayoutSubviews];
  self->_inLayoutSubviews = 0;
}

- (CGSize)_layoutScrollViewWithContentWidth:(double)width
{
  [(UIScrollView *)self->_scrollView bounds];
  v128 = v5;
  [(UILabel *)self->_titleLabel sizeThatFits:width, 1.79769313e308];
  v154 = v7;
  v156 = v6;
  [(UILabel *)self->_subtitleLabel sizeThatFits:width, 1.79769313e308];
  v150 = v9;
  v152 = v8;
  [(PKAccountBillPaymentAmountDescriptionView *)self->_amountDescriptionView sizeThatFits:width, 1.79769313e308];
  v158 = v11;
  v160 = v10;
  widthCopy = width;
  [(PKBillPaymentRingView *)self->_ringView sizeThatFits:width, 1.79769313e308];
  v13 = v12;
  v15 = v14;
  image = [(UIImageView *)self->_productHeroView image];
  [image size];
  PKSizeAspectFit();
  v18 = v17;
  v20 = v19;

  [objc_opt_class() smallRingSizeWithAccessibilityLayout:self->_usesAccessibilityLayout];
  v23 = v21;
  v24 = v21 / v13;
  if (self->_showKeyboard)
  {
    v25 = v22;
  }

  else
  {
    v25 = v15;
  }

  if (!self->_showKeyboard)
  {
    v21 = v13;
  }

  v141 = v21;
  v143 = v25;
  v26 = 1.0;
  v146 = v24;
  if (self->_showKeyboard)
  {
    v27 = v24;
  }

  else
  {
    v27 = 1.0;
  }

  sx = v27;
  if (self->_showKeyboard)
  {
    v26 = 0.05;
  }

  v145 = v26;
  v28 = MEMORY[0x1E695EFF8];
  v29 = *MEMORY[0x1E695EFF8];
  v30 = *(MEMORY[0x1E695EFF8] + 8);
  [(UILabel *)self->_titleLabel setBounds:*MEMORY[0x1E695EFF8], v30, v156, v154];
  [(UILabel *)self->_subtitleLabel setBounds:v29, v30, v152, v150];
  [(PKAccountBillPaymentAmountDescriptionView *)self->_amountDescriptionView setBounds:v29, v30, v160, v158];
  v137 = *&v20;
  v139 = *&v18;
  [(UIImageView *)self->_productHeroView setBounds:v29, v30, v18, v20];
  v148 = v29;
  [(PKBillPaymentRingView *)self->_ringView setBounds:v29, v30, v13, v15];
  [(PKBillPaymentRingView *)self->_ringView layoutIfNeeded];
  _interestLabelIsOutsideSmallRing = [(PKAccountBillPaymentViewController *)self _interestLabelIsOutsideSmallRing];
  if (_interestLabelIsOutsideSmallRing)
  {
    v32 = *&widthCopy;
    [(UILabel *)self->_smallRingInterestLabel sizeThatFits:widthCopy, 1.79769313e308];
    v34 = v33;
    v36 = v35;
  }

  else
  {
    [(PKBillPaymentRingView *)self->_ringView ringWidth];
    [(UILabel *)self->_smallRingInterestLabel sizeThatFits:v23 + v37 * -2.0 * v146 + -10.0, v23 + v37 * -2.0 * v146 + -10.0];
    v34 = v38;
    v36 = v39;
    v32 = *&widthCopy;
  }

  [(UILabel *)self->_smallRingInterestLabel setBounds:v148, v30, v34, v36];
  [(UIScrollView *)self->_scrollView bounds];
  v41 = v40;
  v43 = v42;
  v45.n128_u64[0] = v44;
  v47 = v46;
  v48 = *MEMORY[0x1E69BB7F8];
  v49.n128_u64[0] = v32;
  v50.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
  v51.n128_u64[0] = v41;
  v52.n128_u64[0] = v43;
  v53.n128_u64[0] = v45.n128_u64[0];
  v54.n128_u64[0] = v47;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v49, v50, v51, v52, v53, v54, v45);
  v56 = v55;
  v167 = 0;
  v168 = &v167;
  v169 = 0x3010000000;
  v170 = &unk_1BE347799;
  v171 = *v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PKAccountBillPaymentViewController__layoutScrollViewWithContentWidth___block_invoke;
  aBlock[3] = &unk_1E8013D10;
  aBlock[4] = &v167;
  aBlock[5] = v32;
  v57 = _Block_copy(aBlock);
  v58 = v48;
  if ((PKIsVision() & 1) == 0)
  {
    view = [(PKAccountBillPaymentViewController *)self view];
    [view _shouldReverseLayoutDirection];

    v58 = PKContentAlignmentMake();
  }

  v133 = v36;
  v135 = v34;
  v60 = *MEMORY[0x1E695F058];
  v61 = *(MEMORY[0x1E695F058] + 8);
  v63 = *(MEMORY[0x1E695F058] + 16);
  v62 = *(MEMORY[0x1E695F058] + 24);
  v64 = v168;
  *(v168 + 4) = v56;
  v165 = *(v64 + 2);
  v147 = v62;
  if (self->_titleLabel)
  {
    v131 = v57[2](v57, v58, v156 * v145, v154 * v145);
    v155 = v65;
    v157 = v66;
    v68 = v67;
    v69 = _UISolariumFeatureFlagEnabled();
    v70 = 15.0;
    if (v69)
    {
      v70 = 0.0;
    }

    v64 = v168;
    v168[5] = v168[5] + v145 * v70;
  }

  else
  {
    v68 = v62;
    v155 = v61;
    v157 = v63;
    v131 = v60;
  }

  if (self->_subtitleLabel)
  {
    v71 = v57[2](v57, v58, v152 * v145, v150 * v145);
    v147 = v72;
    v60 = v71;
    v61 = v73;
    v63 = v74;
    v64 = v168;
  }

  if (self->_showKeyboard)
  {
    *(v64 + 2) = v165;
  }

  v164 = *(v64 + 2);
  v151 = v61;
  v153 = v63;
  v130 = v68;
  v129 = v60;
  if (self->_featuredViewState == 1)
  {
    if (self->_showKeyboard)
    {
      [objc_opt_class() smallRingTopMargin];
    }

    else
    {
      [objc_opt_class() ringTopMargin];
    }

    v64 = v168;
    v76 = v168[5];
  }

  else
  {
    v75 = v64[5];
    v76 = 20.0;
  }

  v64[5] = v75 + v76;
  v77 = v57[2](v57, v48, v141, v143);
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85.n128_u64[0] = v137;
  v84.n128_u64[0] = v139;
  v86.n128_f64[0] = v77;
  v87.n128_f64[0] = v79;
  v88.n128_f64[0] = v81;
  v89.n128_f64[0] = v83;
  PKSizeAlignedInRect(v48, v84, v85, v86, v87, v88, v89, v90);
  v142 = v92.n128_f64[0];
  v144 = v91.n128_f64[0];
  v138 = v94.n128_f64[0];
  v140 = v93.n128_f64[0];
  if (!self->_featuredViewState)
  {
    v91.n128_u64[1] = *(&v164 + 1);
    *(v168 + 2) = v164;
  }

  if (_interestLabelIsOutsideSmallRing)
  {
    v168[5] = v168[5] + 8.0;
    v57[2](v57, v48, v135, v133);
  }

  else
  {
    v92.n128_f64[0] = v133;
    v91.n128_f64[0] = v135;
    v93.n128_f64[0] = v77;
    v94.n128_f64[0] = v79;
    v95.n128_f64[0] = v81;
    v96.n128_f64[0] = v83;
    PKSizeAlignedInRect(v48, v91, v92, v93, v94, v95, v96, v97);
  }

  v134 = v101;
  v136 = v100;
  v102 = v99;
  v103 = v98;
  v168[5] = v168[5] + 20.0;
  v104 = v57[2](v57, v58, v160, v158);
  v159 = v105;
  v161 = v104;
  v126 = v107;
  v127 = v106;
  v108 = !self->_showKeyboard;
  [(UILabel *)self->_titleLabel setAlpha:v108];
  [(UILabel *)self->_subtitleLabel setAlpha:v108];
  [(UIButton *)self->_tertiaryButton setAlpha:v108];
  [(UIImageView *)self->_productHeroView setAlpha:v108];
  LOBYTE(v109) = self->_showKeyboard;
  [(UILabel *)self->_smallRingInterestLabel setAlpha:v109];
  ringView = self->_ringView;
  CATransform3DMakeScale(&v163, sx, sx, 1.0);
  [(PKBillPaymentRingView *)ringView setTransform3D:&v163];
  memset(&v163, 0, sizeof(v163));
  CATransform3DMakeScale(&v163, v145, v145, 1.0);
  titleLabel = self->_titleLabel;
  v162 = v163;
  [(UILabel *)titleLabel setTransform3D:&v162];
  subtitleLabel = self->_subtitleLabel;
  v162 = v163;
  [(UILabel *)subtitleLabel setTransform3D:&v162];
  __72__PKAccountBillPaymentViewController__layoutScrollViewWithContentWidth___block_invoke_2(self->_titleLabel, v131, v155, v157, v130);
  __72__PKAccountBillPaymentViewController__layoutScrollViewWithContentWidth___block_invoke_2(self->_subtitleLabel, v129, v151, v153, v147);
  __72__PKAccountBillPaymentViewController__layoutScrollViewWithContentWidth___block_invoke_2(self->_ringView, v77, v79, v81, v83);
  __72__PKAccountBillPaymentViewController__layoutScrollViewWithContentWidth___block_invoke_2(self->_productHeroView, v144, v142, v140, v138);
  __72__PKAccountBillPaymentViewController__layoutScrollViewWithContentWidth___block_invoke_2(self->_smallRingInterestLabel, v103, v102, v136, v134);
  __72__PKAccountBillPaymentViewController__layoutScrollViewWithContentWidth___block_invoke_2(self->_amountDescriptionView, v161, v159, v127, v126);
  tertiaryButton = self->_tertiaryButton;
  v114 = 0.0;
  if (tertiaryButton)
  {
    [(UIButton *)tertiaryButton sizeThatFits:widthCopy, 1.79769313e308];
    v116 = v115;
    v118 = v117;
    [(UIButton *)self->_tertiaryButton setBounds:v148, v30, v115, v117];
    v168[5] = v168[5] + 6.0;
    v119 = v57[2](v57, v58, v116, v118);
    __72__PKAccountBillPaymentViewController__layoutScrollViewWithContentWidth___block_invoke_2(self->_tertiaryButton, v119, v120, v121, v122);
    v114 = v118 + 6.0;
    if (!self->_showKeyboard)
    {
      v114 = 0.0;
    }
  }

  v123 = fmax(v168[5] - v114, 0.0);

  _Block_object_dispose(&v167, 8);
  v124 = v128;
  v125 = v123;
  result.height = v125;
  result.width = v124;
  return result;
}

uint64_t __72__PKAccountBillPaymentViewController__layoutScrollViewWithContentWidth___block_invoke(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v9 = a4.n128_f64[0];
  v11 = *(*(a1 + 32) + 8);
  a5.n128_u64[0] = *(v11 + 32);
  a6.n128_u64[0] = *(v11 + 40);
  a7.n128_u64[0] = *(a1 + 40);
  a8.n128_u64[0] = a4.n128_u64[0];
  result = PKSizeAlignedInRect(a2, a3, a4, a5, a6, a7, a8, a9);
  *(*(*(a1 + 32) + 8) + 40) = v9 + *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void __72__PKAccountBillPaymentViewController__layoutScrollViewWithContentWidth___block_invoke_2(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v12 = [v9 layer];
  [v12 anchorPoint];
  [v9 setCenter:{a2 + v10 * a4, a3 + v11 * a5}];
}

- (void)_layoutFooterWithState:(id *)state
{
  if (_UISolariumFeatureFlagEnabled())
  {
    contentView = self->_buttonContainerView;
  }

  else
  {
    contentView = [(_UIBackdropView *)self->_blurringView contentView];
  }

  v6 = contentView;
  memset(&slice, 0, sizeof(slice));
  [(UIView *)contentView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v67.origin.x = v7;
  v67.origin.y = v9;
  v67.size.width = v11;
  v67.size.height = v13;
  if ([(UIView *)v6 _shouldReverseLayoutDirection])
  {
    v15 = CGRectMaxXEdge;
  }

  else
  {
    v15 = CGRectMinXEdge;
  }

  v69.origin.x = v8;
  v69.origin.y = v10;
  v69.size.width = v12;
  v69.size.height = v14;
  CGRectDivide(v69, &slice, &v67, state->var5, CGRectMaxYEdge);
  if (self->_tertiaryButton && (_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    [(UIButton *)self->_tertiaryButton sizeThatFits:state->var1, 1.79769313e308];
    v30 = v23.n128_u64[0];
    height = state->var2.height;
    if (self->_showKeyboard)
    {
      v27.n128_u64[0] = *&v67.size.width;
      v26.n128_f64[0] = v67.origin.y + v67.size.height + 3.0;
      slice.origin.x = v67.origin.x;
      slice.origin.y = v26.n128_f64[0];
      slice.size.width = v67.size.width;
      slice.size.height = height;
      tertiaryButton = self->_tertiaryButton;
      v24.n128_f64[0] = height;
      v25.n128_u64[0] = *&v67.origin.x;
      v28.n128_f64[0] = height;
      PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v23, v24, v25, v26, v27, v28, v29);
      [(UIButton *)tertiaryButton setFrame:?];
    }

    else
    {
      CGRectDivide(v67, &slice, &v67, 3.0, CGRectMaxYEdge);
      CGRectDivide(v67, &slice, &v67, state->var2.height, CGRectMaxYEdge);
      v33 = self->_tertiaryButton;
      v34.n128_u64[0] = *&slice.origin.x;
      v35.n128_u64[0] = *&slice.origin.y;
      v36.n128_u64[0] = *&slice.size.width;
      v37.n128_u64[0] = *&slice.size.height;
      v38.n128_u64[0] = v30;
      v39.n128_f64[0] = height;
      PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v38, v39, v34, v35, v36, v37, v40);
      [(UIButton *)v33 setFrame:?];
      CGRectDivide(v67, &slice, &v67, 3.0, CGRectMaxYEdge);
    }
  }

  if (!state->var6)
  {
    v16.n128_f64[0] = state->var3 + state->var2.width * 2.0;
    v18.n128_u64[0] = *&v67.origin.x;
    v19.n128_u64[0] = *&v67.origin.y;
    v20.n128_u64[0] = *&v67.size.width;
    v17.n128_u64[0] = *&v67.size.height;
    v58 = *MEMORY[0x1E69BB7F8];
    v21.n128_u64[0] = *&v67.size.height;
    PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v16, v17, v18, v19, v20, v21, v22);
    v67 = v70;
    CGRectDivide(v70, &v67, &slice, state->var2.height, CGRectMaxYEdge);
    CGRectDivide(v67, &slice, &v67, state->var2.width, v15);
    secondaryButton = self->_secondaryButton;
    v60.n128_u64[0] = *&state->var2.width;
    v61.n128_u64[0] = *&state->var2.height;
    v62.n128_u64[0] = *&slice.origin.x;
    v63.n128_u64[0] = *&slice.origin.y;
    v64.n128_u64[0] = *&slice.size.width;
    v65.n128_u64[0] = *&slice.size.height;
    PKSizeAlignedInRect(v58, v60, v61, v62, v63, v64, v65, v66);
    [(UIButton *)secondaryButton setFrame:?];
    CGRectDivide(v67, &slice, &v67, state->var3, v15);
    primaryButton = self->_primaryButton;
    v51.n128_u64[0] = *&state->var2.width;
    v52.n128_u64[0] = *&state->var2.height;
    v54.n128_u64[0] = *&v67.origin.y;
    v53.n128_u64[0] = *&v67.origin.x;
    v56.n128_u64[0] = *&v67.size.height;
    v55.n128_u64[0] = *&v67.size.width;
    v57 = v58;
    goto LABEL_20;
  }

  if (self->_secondaryButton)
  {
    CGRectDivide(v67, &slice, &v67, state->var2.height, CGRectMaxYEdge);
    v41 = self->_secondaryButton;
    v42.n128_u64[0] = *&state->var2.width;
    v43.n128_u64[0] = *&state->var2.height;
    v44.n128_u64[0] = *&slice.origin.x;
    v45.n128_u64[0] = *&slice.origin.y;
    v46.n128_u64[0] = *&slice.size.width;
    v47.n128_u64[0] = *&slice.size.height;
    PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v42, v43, v44, v45, v46, v47, v48);
    [(UIButton *)v41 setFrame:?];
  }

  if (self->_primaryButton)
  {
    if (!self->_secondaryButton || (CGRectDivide(v67, &slice, &v67, 15.0, CGRectMaxYEdge), self->_primaryButton))
    {
      CGRectDivide(v67, &slice, &v67, state->var2.height, CGRectMaxYEdge);
      primaryButton = self->_primaryButton;
      v51.n128_u64[0] = *&state->var2.width;
      v52.n128_u64[0] = *&state->var2.height;
      v53.n128_u64[0] = *&slice.origin.x;
      v54.n128_u64[0] = *&slice.origin.y;
      v55.n128_u64[0] = *&slice.size.width;
      v56.n128_u64[0] = *&slice.size.height;
      v57 = *MEMORY[0x1E69BB7F8];
LABEL_20:
      PKSizeAlignedInRect(v57, v51, v52, v53, v54, v55, v56, v49);
      [(UIButton *)primaryButton setFrame:?];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = PKAccountBillPaymentViewController;
  [(PKAccountBillPaymentViewController *)&v11 viewWillAppear:appear];
  self->_visibility = 1;
  [(PKAccountBillPaymentController *)self->_billPaymentCoordinator setDelegate:self];
  if (self->_hasAnimatedRing || ![(PKBillPaymentRingView *)self->_ringView isEnabled])
  {
    goto LABEL_14;
  }

  v4 = [(PKBillPaymentSuggestedAmountList *)self->_suggestionList suggestedAmountWithCategory:18];
  amount = [v4 amount];

  if (!amount)
  {
    amount = [(PKBillPaymentSuggestedAmountList *)self->_suggestionList maximumAmount];
  }

  configuration = self->_configuration;
  if (configuration)
  {
    billPayAmountType = [(PKAccountServiceAccountResolutionConfiguration *)configuration billPayAmountType];
    switch(billPayAmountType)
    {
      case 3:
        billPayAmount = [(PKAccountServiceAccountResolutionConfiguration *)self->_configuration billPayAmount];
        goto LABEL_12;
      case 2:
        billPayAmount = [(PKBillPaymentSuggestedAmountList *)self->_suggestionList minimumAmount];
        goto LABEL_12;
      case 1:
        billPayAmount = [(PKBillPaymentSuggestedAmountList *)self->_suggestionList remainingStatementAmount];
LABEL_12:
        v9 = billPayAmount;

        amount = v9;
        break;
    }
  }

  [(PKBillPaymentRingView *)self->_ringView prepareForInitialDisplayWithAmount:amount];

LABEL_14:
  if (self->_showKeyboard)
  {
    view = [(PKAccountBillPaymentViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v8[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = PKAccountBillPaymentViewController;
  [(PKAccountBillPaymentViewController *)&v6 viewDidAppear:appear];
  self->_visibility = 2;
  if (!self->_hasAnimatedRing)
  {
    [(PKBillPaymentRingView *)self->_ringView completeInitialDisplayAnimated:1];
    self->_hasAnimatedRing = 1;
  }

  [(PKAccountBillPaymentViewController *)self _showOrHideKeypad];
  if (self->_showKeyboard)
  {
    view = [(PKAccountBillPaymentViewController *)self view];
    [view setNeedsLayout];
  }

  v7 = *MEMORY[0x1E69BA680];
  v8[0] = *MEMORY[0x1E69BA818];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(PKAccountBillPaymentViewController *)self _reportEventForPassIfNecessary:v5];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = PKAccountBillPaymentViewController;
  [(PKAccountBillPaymentViewController *)&v7 viewWillDisappear:disappear];
  self->_visibility = 3;
  CLInUse = self->_CLInUse;
  if (CLInUse)
  {
    [(CLInUseAssertion *)CLInUse invalidate];
    v5 = self->_CLInUse;
    self->_CLInUse = 0;
  }

  if (self->_showKeyboard)
  {
    view = [(PKAccountBillPaymentViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = PKAccountBillPaymentViewController;
  [(PKAccountBillPaymentViewController *)&v6 viewDidDisappear:disappear];
  self->_visibility = 0;
  if (self->_showKeyboard)
  {
    view = [(PKAccountBillPaymentViewController *)self view];
    [view setNeedsLayout];
  }

  v7 = *MEMORY[0x1E69BA680];
  v8[0] = *MEMORY[0x1E69BA820];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(PKAccountBillPaymentViewController *)self _reportEventForPassIfNecessary:v5];
}

- (void)billPaymentRingView:(id)view selectedSuggestedAmount:(id)amount selectedSuggestedAmountIsTarget:(BOOL)target userInitiatedChange:(BOOL)change
{
  changeCopy = change;
  targetCopy = target;
  v20[2] = *MEMORY[0x1E69E9840];
  amountCopy = amount;
  if (!self->_interstitialState)
  {
    v10 = [(PKBillPaymentSuggestedAmountList *)self->_suggestionList suggestedAmountGapMessageForStartSuggestedAmount:amountCopy];
    v11 = v10;
    if (targetCopy || !v10)
    {
      title = [amountCopy title];
      v13 = amountCopy;
    }

    else
    {
      title = [v10 title];
      v13 = v11;
    }

    message = [v13 message];
    [(PKAccountBillPaymentAmountDescriptionView *)self->_amountDescriptionView setTitleText:title];
    [(PKAccountBillPaymentAmountDescriptionView *)self->_amountDescriptionView setDescriptionText:message];
    view = [(PKAccountBillPaymentViewController *)self view];
    [view setNeedsLayout];

    if (changeCopy)
    {
      v16 = *MEMORY[0x1E69BA3E8];
      v19[0] = *MEMORY[0x1E69BA680];
      v19[1] = v16;
      v17 = @"false";
      if (targetCopy)
      {
        v17 = @"true";
      }

      v20[0] = *MEMORY[0x1E69BA3F0];
      v20[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
      [(PKAccountBillPaymentViewController *)self _reportEventForPassIfNecessary:v18];
    }
  }
}

- (void)billPaymentRingView:(id)view amountChanged:(id)changed
{
  changedCopy = changed;
  v8 = changedCopy;
  if (self->_showKeyboard)
  {
    _paymentAmount = [(PKAccountBillPaymentViewController *)self _paymentAmount];
  }

  else
  {
    _paymentAmount = changedCopy;
  }

  v7 = _paymentAmount;
  [(PKAccountBillPaymentViewController *)self _updatePayNowButtonTitleWithAmount:_paymentAmount];
}

- (id)billPaymentRingView:(id)view topCurvedTextForSuggestedAmount:(id)amount
{
  [(PKAccount *)self->_account feature:view];
  creditDetails = [(PKAccount *)self->_account creditDetails];
  earlyInstallmentPlan = [(PKAccountServiceAccountResolutionConfiguration *)self->_configuration earlyInstallmentPlan];
  if (earlyInstallmentPlan)
  {
    [creditDetails totalBalance];
  }

  else
  {
    [creditDetails cardBalance];
  }
  v7 = ;

  amount = [v7 amount];
  zero = [MEMORY[0x1E696AB90] zero];
  v10 = [amount compare:zero];

  if (v10 == -1)
  {
    negativeValue = [v7 negativeValue];

    v7 = negativeValue;
  }

  formattedStringValue = [v7 formattedStringValue];
  if (formattedStringValue)
  {
    if (v10 == -1)
    {
      v17 = formattedStringValue;
      v13 = PKLocalizedFeatureString();

      formattedStringValue = v13;
    }

    [(PKAccountServiceAccountResolutionConfiguration *)self->_configuration earlyInstallmentPlan];

    v17 = formattedStringValue;
    v14 = PKLocalizedFeatureString();
  }

  else
  {
    v14 = 0;
  }

  pk_uppercaseStringForPreferredLocale = [v14 pk_uppercaseStringForPreferredLocale];

  return pk_uppercaseStringForPreferredLocale;
}

- (id)billPaymentRingView:(id)view bottomCurvedTextForSuggestedAmount:(id)amount
{
  amountCopy = amount;
  if ([(PKAccount *)self->_account showBillPaymentInterest])
  {
    [(PKAccount *)self->_account feature];
    amount = [amountCopy amount];
    v7 = [(PKAccountBillPaymentViewController *)self _interestForAmount:amount];

    if (v7 && ([MEMORY[0x1E696AB90] zero], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "compare:", v8), v8, v9 == 1))
    {
      _interestPostDate = [(PKAccountBillPaymentViewController *)self _interestPostDate];
      unpostedInterest = [(NSDateFormatter *)self->_interestDateFormatter stringFromDate:_interestPostDate];
      v12 = PKLocalizedFeatureString();
    }

    else
    {
      creditDetails = [(PKAccount *)self->_account creditDetails];
      _interestPostDate = [creditDetails accountSummary];

      unpostedInterest = [_interestPostDate unpostedInterest];
      if ([_interestPostDate inGrace])
      {
        v15 = unpostedInterest == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        zero = [MEMORY[0x1E696AB90] zero];
        [unpostedInterest compare:zero];
      }

      v12 = PKLocalizedFeatureString();
    }

    v17 = v12;

    pk_uppercaseStringForPreferredLocale = [v17 pk_uppercaseStringForPreferredLocale];
  }

  else
  {
    pk_uppercaseStringForPreferredLocale = 0;
  }

  return pk_uppercaseStringForPreferredLocale;
}

- (id)disabledTopCurvedTextForBillPaymentRingView:(id)view
{
  [(PKAccount *)self->_account feature];
  creditDetails = [(PKAccount *)self->_account creditDetails];
  v5 = creditDetails;
  if (self->_interstitialState - 1 > 2)
  {
    v11 = 0;
  }

  else
  {
    cardBalance = [creditDetails cardBalance];
    amount = [cardBalance amount];
    zero = [MEMORY[0x1E696AB90] zero];
    v9 = [amount compare:zero];

    if (v9 == -1)
    {
      negativeValue = [cardBalance negativeValue];

      formattedStringValue = [negativeValue formattedStringValue];
      formattedStringValue2 = PKLocalizedFeatureString();

      cardBalance = negativeValue;
    }

    else
    {
      formattedStringValue2 = [cardBalance formattedStringValue];
    }

    if ([v5 numberOfActiveStatementedInstallments] >= 1)
    {
      [(PKAccountServiceAccountResolutionConfiguration *)self->_configuration earlyInstallmentPlan];
    }

    formattedStringValue = formattedStringValue2;
    v11 = PKLocalizedFeatureString();
  }

  pk_uppercaseStringForPreferredLocale = [v11 pk_uppercaseStringForPreferredLocale];

  return pk_uppercaseStringForPreferredLocale;
}

- (id)disabledBottomCurvedTextForBillPaymentRingView:(id)view
{
  [(PKAccount *)self->_account feature];
  creditDetails = [(PKAccount *)self->_account creditDetails];
  currencyCode = [creditDetails currencyCode];
  accountSummary = [creditDetails accountSummary];
  v7 = accountSummary;
  if (self->_interstitialState - 1 > 2)
  {
    v10 = 0;
  }

  else
  {
    availableCredit = [accountSummary availableCredit];
    v9 = PKCurrencyAmountCreate(availableCredit, currencyCode);

    formattedStringValue = [v9 formattedStringValue];
    v10 = PKLocalizedFeatureString();
  }

  pk_uppercaseStringForPreferredLocale = [v10 pk_uppercaseStringForPreferredLocale];

  return pk_uppercaseStringForPreferredLocale;
}

- (id)billPaymentRingViewZeroInterestText:(id)text
{
  amountFormatter = self->_amountFormatter;
  zero = [MEMORY[0x1E696AB90] zero];
  v5 = [(NSNumberFormatter *)amountFormatter stringFromNumber:zero];

  return v5;
}

- (void)_updateSmallRingInterestString
{
  if ([(PKAccount *)self->_account showBillPaymentInterest])
  {
    _interestPostDate = [(PKAccountBillPaymentViewController *)self _interestPostDate];
    _paymentAmount = [(PKAccountBillPaymentViewController *)self _paymentAmount];
    v5 = [(PKAccountBillPaymentViewController *)self _interestStringForAmount:_paymentAmount];

    [(PKAccount *)self->_account feature];
    currentStartColor = [(PKBillPaymentRingView *)self->_ringView currentStartColor];
    if (!currentStartColor)
    {
      currentStartColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    [(NSMutableDictionary *)self->_smallRingInterestAttributes setObject:currentStartColor forKey:*MEMORY[0x1E69DB650]];
    if (!_interestPostDate || ![v5 length] || ((v7 = -[PKAccountBillPaymentViewController _interestLabelIsOutsideSmallRing](self, "_interestLabelIsOutsideSmallRing"), v8 = objc_alloc(MEMORY[0x1E696AAB0]), !v7) ? (v9 = @"%@\n") : (v9 = @"%@ "), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", v9, v5), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "initWithString:attributes:", v10, self->_smallRingInterestAttributes), v10, -[NSDateFormatter stringFromDate:](self->_interestDateFormatter, "stringFromDate:", _interestPostDate), v12 = objc_claimAutoreleasedReturnValue(), PKLocalizedFeatureString(), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "pk_uppercaseStringForPreferredLocale", v12), v14 = objc_claimAutoreleasedReturnValue(), v13, v12, v15 = objc_msgSend(objc_alloc(MEMORY[0x1E696AAB0]), "initWithString:attributes:", v14, self->_smallRingInterestDateAttributes), v16 = objc_msgSend(v11, "mutableCopy"), objc_msgSend(v16, "appendAttributedString:", v15), v24 = objc_msgSend(v16, "copy"), v16, v15, v14, v11, !v24))
    {
      creditDetails = [(PKAccount *)self->_account creditDetails];
      accountSummary = [creditDetails accountSummary];

      unpostedInterest = [accountSummary unpostedInterest];
      if ([accountSummary inGrace])
      {
        v20 = unpostedInterest == 0;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        zero = [MEMORY[0x1E696AB90] zero];
        [unpostedInterest compare:zero];
      }

      v22 = PKLocalizedFeatureString();
      pk_uppercaseStringForPreferredLocale = [v22 pk_uppercaseStringForPreferredLocale];

      v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:pk_uppercaseStringForPreferredLocale attributes:self->_smallRingInterestDateAttributes];
    }

    [(UILabel *)self->_smallRingInterestLabel setAttributedText:v24];
  }
}

- (void)billPaymentAmountDescriptionView:(id)view hasChangedAmount:(id)amount isValidAmount:(BOOL)validAmount
{
  validAmountCopy = validAmount;
  ringView = self->_ringView;
  amountCopy = amount;
  [(PKBillPaymentRingView *)ringView setAmount:amountCopy animated:1 userInitiatedWithKeypad:1];
  [(PKAccountBillPaymentViewController *)self _updatePayNowButtonTitleWithAmount:amountCopy];

  [(PKAccountBillPaymentViewController *)self _setPayButtonsEnabled:validAmountCopy];
  [(PKAccountBillPaymentViewController *)self _updateSmallRingInterestString];
  [(PKBillPaymentRingView *)self->_ringView setNeedsLayout];
  view = [(PKAccountBillPaymentViewController *)self view];
  [view setNeedsLayout];
}

- (void)billPaymentAmountDescriptionViewHasTappedLearnMore:(id)more
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = [[PKAccountBillPaymentLearnMoreViewController alloc] initWithAccount:self->_account];
  v5 = [[PKNavigationController alloc] initWithRootViewController:v4];
  if (![(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    navigationController = [(PKAccountBillPaymentViewController *)self navigationController];
    v8 = navigationController;
    goto LABEL_5;
  }

  [(PKNavigationController *)v5 setModalPresentationStyle:3];
  v6 = PKIsVision();
  navigationController = [(PKAccountBillPaymentViewController *)self navigationController];
  v8 = navigationController;
  if (v6)
  {
LABEL_5:
    [navigationController presentViewController:v5 animated:1 completion:0];
    goto LABEL_6;
  }

  [navigationController presentViewController:v5 withTransition:8 completion:0];
LABEL_6:

  v9 = *MEMORY[0x1E69BA6F0];
  v10 = *MEMORY[0x1E69BA440];
  v13[0] = *MEMORY[0x1E69BA680];
  v13[1] = v10;
  v11 = *MEMORY[0x1E69BAA58];
  v14[0] = v9;
  v14[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(PKAccountBillPaymentViewController *)self _reportEventForPassIfNecessary:v12];
}

- (void)accountBillPaymentController:(id)controller hasChangedState:(unint64_t)state error:(id)error updatedAccount:(id)account
{
  controllerCopy = controller;
  errorCopy = error;
  accountCopy = account;
  v13 = accountCopy;
  self->_performingAction = 0;
  switch(state)
  {
    case 2uLL:
      [(PKAccountBillPaymentViewController *)self _setEnabled:1];
      [(PKAccountBillPaymentViewController *)self _showOrHideKeypad];
      [(PKBillPaymentSuggestedAmountController *)self->_suggestedAmountController recordPaymentActionWithDifferentialPrivacy:0];
      [(PKBillPaymentSuggestedAmountController *)self->_suggestedAmountController recordPaymentRingAction:1];
      break;
    case 1uLL:
      if (accountCopy)
      {
        [(PKAccountBillPaymentViewController *)self _setAccount:accountCopy];
      }

      WeakRetained = objc_loadWeakRetained(&self->_observer);
      if (objc_opt_respondsToSelector())
      {
        payments = [(PKAccountBillPaymentController *)self->_billPaymentCoordinator payments];
        [WeakRetained accountBillPaymentViewController:self didSchedulePayments:payments];
      }

      if ([(PKBillPaymentRingView *)self->_ringView isSmall])
      {
        v16 = 3;
      }

      else
      {
        v16 = 1;
      }

      [(PKBillPaymentSuggestedAmountController *)self->_suggestedAmountController recordPaymentActionWithDifferentialPrivacy:v16];
      if ([(PKBillPaymentRingView *)self->_ringView isSmall])
      {
        v17 = 2;
      }

      else
      {
        v17 = 4;
      }

      [(PKBillPaymentSuggestedAmountController *)self->_suggestedAmountController recordPaymentRingAction:v17];
      payments2 = [(PKAccountBillPaymentController *)self->_billPaymentCoordinator payments];
      if ([payments2 count])
      {
        paymentPass = [(PKTransactionSource *)self->_transactionSource paymentPass];
        v20 = [[PKAccountBillPaymentConfirmationViewController alloc] initWithAccount:self->_account previousAccountSummary:self->_previousAccountSummary paymentPass:paymentPass payments:payments2 suggestionList:self->_suggestionList interestForPaymentTotal:self->_interestForPaymentTotal interestForStatementBalance:self->_interestForStatementBalance];
        objc_initWeak(&location, self);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __104__PKAccountBillPaymentViewController_accountBillPaymentController_hasChangedState_error_updatedAccount___block_invoke;
        v22[3] = &unk_1E80113B0;
        objc_copyWeak(&v24, &location);
        v21 = v20;
        v23 = v21;
        [(PKAccountBillPaymentConfirmationViewController *)v21 preflightWithCompletion:v22];

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }

      else
      {
        [(PKAccountBillPaymentViewController *)self _dismissViewControllerWithSuccess:1];
      }

      break;
    case 0uLL:
      [(PKAccountBillPaymentViewController *)self _presentAlertControllerForError:errorCopy];
      break;
  }
}

void __104__PKAccountBillPaymentViewController_accountBillPaymentController_hasChangedState_error_updatedAccount___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __104__PKAccountBillPaymentViewController_accountBillPaymentController_hasChangedState_error_updatedAccount___block_invoke_2;
  v2[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __104__PKAccountBillPaymentViewController_accountBillPaymentController_hasChangedState_error_updatedAccount___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained navigationController];
    [v3 pushViewController:*(a1 + 32) animated:1];

    WeakRetained = v4;
  }
}

- (id)presentationSceneIdentifierForAccountBillPaymentController:(id)controller
{
  view = [(PKAccountBillPaymentViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)accountAutomaticPaymentsController:(id)controller didSchedulePayment:(id)payment
{
  v8[1] = *MEMORY[0x1E69E9840];
  paymentCopy = payment;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = paymentCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [WeakRetained accountBillPaymentViewController:self didSchedulePayments:v7];
  }
}

- (id)presentationSceneIdentifierForAccountAutomaticPaymentsController:(id)controller
{
  view = [(PKAccountBillPaymentViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)addBankAccountInformationViewController:(id)controller didAddFundingSource:(id)source
{
  v9 = *MEMORY[0x1E69E9840];
  billPaymentCoordinator = self->_billPaymentCoordinator;
  sourceCopy = source;
  v5 = MEMORY[0x1E695DEC8];
  sourceCopy2 = source;
  v7 = [v5 arrayWithObjects:&sourceCopy count:1];
  [(PKAccountBillPaymentController *)billPaymentCoordinator setFundingSources:v7, sourceCopy, v9];
}

- (void)addBankAccountInformationViewControllerDidFinish:(id)finish
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__PKAccountBillPaymentViewController_addBankAccountInformationViewControllerDidFinish___block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [(PKAccountBillPaymentViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

void __87__PKAccountBillPaymentViewController_addBankAccountInformationViewControllerDidFinish___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1352);
  *(v2 + 1352) = 0;

  [*(a1 + 32) _showOrHideKeypad];
  v4 = *(a1 + 32);
  v5 = v4[129];
  v6 = [v4 _paymentAmount];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__PKAccountBillPaymentViewController_addBankAccountInformationViewControllerDidFinish___block_invoke_2;
  v7[3] = &unk_1E8013D38;
  v7[4] = *(a1 + 32);
  [v5 canPerformBillPaymentWithAmount:v6 scheduledDate:0 completion:v7];
}

void __87__PKAccountBillPaymentViewController_addBankAccountInformationViewControllerDidFinish___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = v5;
    [*(a1 + 32) _payNowButtonTapped:0];
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v7 = v5;
    [*(a1 + 32) _presentAlertControllerForError:v5];
  }

  v6 = v7;
LABEL_6:
}

- (void)_performBillPaymentWithAmount:(id)amount billPaymentSuggestedAmountDataEvent:(id)event
{
  v23 = *MEMORY[0x1E69E9840];
  amountCopy = amount;
  eventCopy = event;
  if (!self->_CLInUse)
  {
    v8 = MEMORY[0x1E695FBE0];
    v9 = PKPassKitCoreBundle();
    v10 = [v8 newAssertionForBundle:v9 withReason:@"Perform Account Service Now Payment"];
    CLInUse = self->_CLInUse;
    self->_CLInUse = v10;
  }

  if (self->_performingAction)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "[PKAccountBillPaymentViewController _performBillPaymentWithAmount:billPaymentSuggestedAmountDataEvent:]";
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "%s: Cannot Present - already performing action", &v21, 0xCu);
    }
  }

  else
  {
    self->_performingAction = 1;
    [(PKAccountBillPaymentViewController *)self _setEnabled:0];
    creditDetails = [(PKAccount *)self->_account creditDetails];
    accountSummary = [creditDetails accountSummary];
    previousAccountSummary = self->_previousAccountSummary;
    self->_previousAccountSummary = accountSummary;

    v16 = [(PKAccountBillPaymentViewController *)self _roundedInterestForAmount:amountCopy];
    interestForPaymentTotal = self->_interestForPaymentTotal;
    self->_interestForPaymentTotal = v16;

    remainingStatementBalance = [(PKCreditAccountSummary *)self->_previousAccountSummary remainingStatementBalance];
    v19 = [(PKAccountBillPaymentViewController *)self _roundedInterestForAmount:remainingStatementBalance];
    interestForStatementBalance = self->_interestForStatementBalance;
    self->_interestForStatementBalance = v19;

    [(PKAccountBillPaymentController *)self->_billPaymentCoordinator performBillPaymentActionWithAmount:amountCopy billPaymentSuggestedAmountDataEvent:eventCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(PKAccountBillPaymentViewController *)self view];
  [view setNeedsLayout];
}

- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection
{
  if ([collection userInterfaceStyle] == 2)
  {
    return 2030;
  }

  else
  {
    return 2010;
  }
}

- (void)_accountDidChange:(id)change
{
  if (self->_account)
  {
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__PKAccountBillPaymentViewController__accountDidChange___block_invoke;
    v6[3] = &unk_1E80112C0;
    v6[4] = self;
    [mEMORY[0x1E69B8400] accountWithIdentifier:accountIdentifier completion:v6];
  }
}

void __56__PKAccountBillPaymentViewController__accountDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PKAccountBillPaymentViewController__accountDidChange___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)_setAccount:(id)account
{
  accountCopy = account;
  v5 = [(PKAccount *)self->_account isContentEqualToAccount:?];
  objc_storeStrong(&self->_account, account);
  if ((v5 & 1) == 0)
  {
    configuration = [(PKCompoundInterestCalculator *)self->_interestCalculator configuration];
    [configuration updateWithCreditAccount:accountCopy];

    [(NSMutableDictionary *)self->_cachedInterestResults removeAllObjects];
  }
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PKAccountBillPaymentViewController_keyboardWillShow___block_invoke;
  v7[3] = &unk_1E8010E90;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PKAccountBillPaymentViewController *)self _updateLayoutForKeyboardAction:v7];
}

BOOL __55__PKAccountBillPaymentViewController_keyboardWillShow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1168);
  v4 = *(v2 + 1176);
  v5 = *(v2 + 1184);
  v6 = *(v2 + 1192);
  *(v2 + 1161) = 1;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = (v8 + 1168);
  if (v7)
  {
    [v7 CGRectValue];
    *v9 = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
  }

  else
  {
    v14 = *(MEMORY[0x1E695F050] + 16);
    *v9 = *MEMORY[0x1E695F050];
    *(v8 + 1184) = v14;
  }

  v16.origin.x = v3;
  v16.origin.y = v4;
  v16.size.width = v5;
  v16.size.height = v6;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1168), v16);
}

- (void)keyboardDidShow:(id)show
{
  amountContainerView = [(PKAccountBillPaymentAmountDescriptionView *)self->_amountDescriptionView amountContainerView];
  enterCurrencyAmountView = [amountContainerView enterCurrencyAmountView];
  [enterCurrencyAmountView frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  view = [(PKAccountBillPaymentViewController *)self view];
  [view convertRect:self->_amountDescriptionView fromView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [(UIScrollView *)self->_scrollView pkui_naturalRestingBounds];
  v24 = v23;
  v26 = v25;
  v31.origin.x = v16;
  v31.origin.y = v18;
  v31.size.width = v20;
  v31.size.height = v22;
  MaxY = CGRectGetMaxY(v31);
  [(UIView *)self->_buttonContainerView frame];
  v28 = MaxY - CGRectGetMinY(v32);
  if (v28 > 0.0)
  {
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView setContentOffset:1 animated:v24, v26 + v28];
  }
}

- (void)keyboardWillChange:(id)change
{
  if (self->_keyboardVisible)
  {
    v10 = v3;
    v11 = v4;
    userInfo = [change userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __57__PKAccountBillPaymentViewController_keyboardWillChange___block_invoke;
      v8[3] = &unk_1E8010E90;
      v8[4] = self;
      v9 = v7;
      [(PKAccountBillPaymentViewController *)self _updateLayoutForKeyboardAction:v8];
    }
  }
}

BOOL __57__PKAccountBillPaymentViewController_keyboardWillChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 146;
  v4 = *(v2 + 146);
  v5 = *(v2 + 147);
  v6 = *(v2 + 148);
  v7 = *(v2 + 149);
  [*(a1 + 40) CGRectValue];
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v10;
  v3[3] = v11;
  v13.origin.x = v4;
  v13.origin.y = v5;
  v13.size.width = v6;
  v13.size.height = v7;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1168), v13);
}

- (void)keyboardWillHide:(id)hide
{
  if (self->_keyboardVisible)
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__PKAccountBillPaymentViewController_keyboardWillHide___block_invoke;
    v5[3] = &unk_1E8010EB8;
    v5[4] = self;
    [(PKAccountBillPaymentViewController *)self _updateLayoutForKeyboardAction:v5];
  }
}

BOOL __55__PKAccountBillPaymentViewController_keyboardWillHide___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = *(v1 + 1168);
  *(v1 + 1161) = 0;
  v2 = (*(a1 + 32) + 1168);
  v3 = *(MEMORY[0x1E695F050] + 16);
  *v2 = *MEMORY[0x1E695F050];
  v2[1] = v3;
  *&v3 = *(*(a1 + 32) + 1168);
  v4 = *(*(a1 + 32) + 1176);
  v5 = *(*(a1 + 32) + 1184);
  v6 = *(*(a1 + 32) + 1192);
  return !CGRectEqualToRect(*&v3, v8);
}

- (void)_updateLayoutForKeyboardAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    if (self->_showKeyboard)
    {
      viewIfLoaded = [(PKAccountBillPaymentViewController *)self viewIfLoaded];
      v6 = viewIfLoaded;
      v7 = self->_visibility - 3;
      v8 = v7 < 0xFFFFFFFE;
      v9 = viewIfLoaded == 0;
      if (viewIfLoaded && v7 >= 0xFFFFFFFE)
      {
        [viewIfLoaded layoutIfNeeded];
        v9 = 0;
        v8 = 0;
      }
    }

    else
    {
      v6 = 0;
      v8 = self->_visibility - 3 < 0xFFFFFFFE;
      v9 = 1;
    }

    v10 = actionCopy[2](actionCopy);
    if (!v9)
    {
      if (v10)
      {
        [v6 setNeedsLayout];
        if (!v8)
        {
          v11 = MEMORY[0x1E69DD250];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __69__PKAccountBillPaymentViewController__updateLayoutForKeyboardAction___block_invoke;
          v12[3] = &unk_1E8010970;
          v13 = v6;
          [v11 _animateUsingDefaultTimingWithOptions:134 animations:v12 completion:0];
        }
      }
    }
  }
}

- (void)_cancelButtonTapped:(id)tapped
{
  [(PKAccountBillPaymentAmountDescriptionView *)self->_amountDescriptionView dismissKeyboard];
  presentingViewController = [(PKAccountBillPaymentViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_contactSupportButtonTapped:(id)tapped
{
  v4 = [PKBusinessChatInstallmentPaymentContext alloc];
  account = self->_account;
  paymentPass = [(PKTransactionSource *)self->_transactionSource paymentPass];
  v15 = [(PKBusinessChatInstallmentPaymentContext *)v4 initWithAccount:account paymentPass:paymentPass];

  v7 = objc_alloc_init(MEMORY[0x1E69B8408]);
  [v7 setBusinessChatContext:v15];
  if (!self->_accountResolutionController)
  {
    v8 = [PKAccountServiceAccountResolutionController alloc];
    v9 = self->_account;
    accountUserCollection = self->_accountUserCollection;
    v11 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:self->_transactionSource];
    v12 = [(PKAccountServiceAccountResolutionController *)v8 initWithAccount:v9 accountUserCollection:accountUserCollection transactionSourceCollection:v11];
    accountResolutionController = self->_accountResolutionController;
    self->_accountResolutionController = v12;

    [(PKAccountServiceAccountResolutionController *)self->_accountResolutionController setDelegate:self];
  }

  if (+[PKBusinessChatController deviceSupportsBusinessChat])
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  [(PKAccountServiceAccountResolutionController *)self->_accountResolutionController presentFlowForAccountResolution:v14 configuration:v7 completion:0];
}

- (void)_setShowKeyboard:(BOOL)keyboard
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (self->_showKeyboard == !keyboard)
  {
    keyboardCopy = keyboard;
    view = [(PKAccountBillPaymentViewController *)self view];
    [view layoutIfNeeded];
    self->_showKeyboard = keyboardCopy;
    [view setNeedsLayout];
    if (keyboardCopy)
    {
      amount = [(PKBillPaymentRingView *)self->_ringView amount];
      [(PKAccountBillPaymentAmountDescriptionView *)self->_amountDescriptionView setAmount:amount];

      [(PKAccountBillPaymentViewController *)self _updateNavigationTitle];
      [(PKAccountBillPaymentViewController *)self _updateForShowKeyboardAnimated:1];
      [(PKAccountBillPaymentViewController *)self _showOrHideKeypad];
    }

    else
    {
      [(PKAccountBillPaymentViewController *)self _updateNavigationTitle];
      [(PKAccountBillPaymentViewController *)self _updateForShowKeyboardAnimated:1];
      [(PKAccountBillPaymentViewController *)self _showOrHideKeypad];
      [(PKAccountBillPaymentViewController *)self _setPayButtonsEnabled:1];
      _paymentAmount = [(PKAccountBillPaymentViewController *)self _paymentAmount];
      [(PKAccountBillPaymentViewController *)self _updatePayNowButtonTitleWithAmount:_paymentAmount];

      [(PKAccountBillPaymentAmountDescriptionView *)self->_amountDescriptionView normalizeEnteredAmount];
    }

    [(UIScrollView *)self->_scrollView pkui_naturalRestingBounds];
    v9 = v8;
    v11 = v10;
    [(UIScrollView *)self->_scrollView contentOffset];
    if (v9 != v13 || v11 != v12)
    {
      [(UIScrollView *)self->_scrollView setContentOffset:1 animated:v9, v11];
    }

    v15 = *MEMORY[0x1E69BA6F0];
    v16 = *MEMORY[0x1E69BA440];
    showKeyboard = self->_showKeyboard;
    v21[0] = *MEMORY[0x1E69BA680];
    v21[1] = v16;
    v18 = MEMORY[0x1E69BB298];
    if (!showKeyboard)
    {
      v18 = MEMORY[0x1E69BA8B0];
    }

    v19 = *v18;
    v22[0] = v15;
    v22[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [(PKAccountBillPaymentViewController *)self _reportEventForPassIfNecessary:v20];
  }
}

- (void)_updateForShowKeyboardAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (self->_showKeyboard)
  {
    v5 = 1312;
  }

  else
  {
    v5 = 1304;
  }

  v6 = (&self->super.super.super.isa + v5);
  if (*(&self->super.super.super.isa + v5))
  {
    [(PKBillPaymentRingView *)self->_ringView removeGestureRecognizer:?];
    v7 = *v6;
    *v6 = 0;
  }

  viewIfLoaded = [(PKAccountBillPaymentViewController *)self viewIfLoaded];
  v9 = viewIfLoaded;
  if (viewIfLoaded)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__PKAccountBillPaymentViewController__updateForShowKeyboardAnimated___block_invoke;
    aBlock[3] = &unk_1E8013D60;
    aBlock[4] = self;
    v22 = animatedCopy;
    v21 = viewIfLoaded;
    v10 = _Block_copy(aBlock);
    objc_initWeak(&location, self);
    showKeyboard = self->_showKeyboard;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __69__PKAccountBillPaymentViewController__updateForShowKeyboardAnimated___block_invoke_2;
    v16 = &unk_1E8012858;
    objc_copyWeak(&v17, &location);
    v18 = showKeyboard;
    v12 = _Block_copy(&v13);
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:134 animations:v10 completion:{v12, v13, v14, v15, v16}];
    }

    else
    {
      v10[2](v10);
      v12[2](v12, 1);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void *__69__PKAccountBillPaymentViewController__updateForShowKeyboardAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1240) setShowAmount:*(*(a1 + 32) + 1160)];
  [*(*(a1 + 32) + 1248) setIsSmall:*(*(a1 + 32) + 1160)];
  v2 = *(a1 + 32);
  if (*(v2 + 1160) == 1)
  {
    v3 = PKUIGetMinScreenType();
    v2 = *(a1 + 32);
    if (v3 < 4)
    {
      v4 = 0;
    }

    else if (*(v2 + 1159) == 1)
    {
      v4 = [v2 pkui_userInterfaceIdiomSupportsLargeLayouts];
      v2 = *(a1 + 32);
    }

    else
    {
      v4 = 1;
    }

    if (v3 > 8)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
    v4 = 1;
  }

  [*(v2 + 1240) setShowDescriptionLabels:v4];
  result = [*(*(a1 + 32) + 1240) setShowDescriptionSubtitle:v5];
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);

    return [v7 layoutIfNeeded];
  }

  return result;
}

void __69__PKAccountBillPaymentViewController__updateForShowKeyboardAnimated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*(a1 + 40) == 1)
    {
      if (*(WeakRetained + 1160) && !*(WeakRetained + 163) && *(WeakRetained + 156))
      {
        v8 = WeakRetained;
        v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:WeakRetained action:sel__tappedSmallRingView_];
        v4 = *(v8 + 163);
        *(v8 + 163) = v3;

        [*(v8 + 156) addGestureRecognizer:*(v8 + 163)];
LABEL_11:
        WeakRetained = v8;
      }
    }

    else if ((*(WeakRetained + 1160) & 1) == 0 && !*(WeakRetained + 164) && *(WeakRetained + 156))
    {
      v8 = WeakRetained;
      v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:WeakRetained action:sel__tappedNormalRingViewAmount_];
      v6 = *(v8 + 164);
      *(v8 + 164) = v5;

      v7 = [*(v8 + 156) enterCurrencyAmountView];
      [v7 addGestureRecognizer:*(v8 + 164)];

      goto LABEL_11;
    }
  }
}

- (void)_payNowButtonTapped:(id)tapped
{
  v4 = PKStoreDemoModeEnabled();
  if (v4)
  {
    v10 = PKUIStoreDemoGatewayViewController(v4, v5, v6);
    [(PKAccountBillPaymentViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    _paymentAmount = [(PKAccountBillPaymentViewController *)self _paymentAmount];
    [(PKAccountBillPaymentViewController *)self _setEnabled:0];
    billPaymentCoordinator = self->_billPaymentCoordinator;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PKAccountBillPaymentViewController__payNowButtonTapped___block_invoke;
    v11[3] = &unk_1E8013D88;
    v11[4] = self;
    v12 = _paymentAmount;
    v9 = _paymentAmount;
    [(PKAccountBillPaymentController *)billPaymentCoordinator canPerformBillPaymentWithAmount:v9 scheduledDate:0 completion:v11];
  }
}

void __58__PKAccountBillPaymentViewController__payNowButtonTapped___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [*(*(a1 + 32) + 992) accountIdentifier];
    v7 = [*(*(a1 + 32) + 992) creditDetails];
    v8 = [v7 accountSummary];
    v9 = [v8 currentStatement];
    v10 = [v9 identifier];

    v11 = [*(*(a1 + 32) + 1048) billPaymentSelectedSuggestedAmountDataEventForAmount:*(a1 + 40) accountIdentifier:v6 statementIdentifier:v10];
    [*(a1 + 32) _performBillPaymentWithAmount:*(a1 + 40) billPaymentSuggestedAmountDataEvent:v11];
  }

  else
  {
    v12 = *(a1 + 32);
    if (v5)
    {
      [v12 _presentAlertControllerForError:v5];
    }

    else
    {
      [v12 _presentAddBankAccount];
      [*(a1 + 32) _setEnabled:1];
    }
  }

  v13 = *(a1 + 32);
  v14 = *MEMORY[0x1E69BA440];
  v17[0] = *MEMORY[0x1E69BA680];
  v17[1] = v14;
  v15 = *MEMORY[0x1E69BACE8];
  v18[0] = *MEMORY[0x1E69BA6F0];
  v18[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v13 _reportEventForPassIfNecessary:v16];
}

- (void)_payLaterButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = PKStoreDemoModeEnabled();
  if (v5)
  {
    v8 = PKUIStoreDemoGatewayViewController(v5, v6, v7);
    [(PKAccountBillPaymentViewController *)self presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    objc_initWeak(&location, self);
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PKAccountBillPaymentViewController__payLaterButtonTapped___block_invoke;
    v11[3] = &unk_1E8013DF8;
    objc_copyWeak(&v12, &location);
    v11[4] = self;
    [mEMORY[0x1E69B8400] scheduledPaymentsWithAccountIdentifier:accountIdentifier includeFailedRecurringPayments:1 completion:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __60__PKAccountBillPaymentViewController__payLaterButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PKAccountBillPaymentViewController__payLaterButtonTapped___block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __60__PKAccountBillPaymentViewController__payLaterButtonTapped___block_invoke_2(uint64_t a1)
{
  v44[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) pk_objectsPassingTest:&__block_literal_global_249];
    v4 = WeakRetained[124];
    [v4 feature];
    v34 = [v3 count] != 0;
    v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
    v6 = [v5 popoverPresentationController];
    [v6 setSourceView:WeakRetained[161]];

    v7 = MEMORY[0x1E69DC648];
    v8 = PKLocalizedFeatureString();
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __60__PKAccountBillPaymentViewController__payLaterButtonTapped___block_invoke_4;
    v42[3] = &unk_1E80112E8;
    v42[4] = WeakRetained;
    v9 = [v7 actionWithTitle:v8 style:0 handler:v42];

    [v9 setAccessibilityIdentifier:*MEMORY[0x1E69B9C80]];
    if (([v4 isClosedAndChargedOff] & 1) == 0)
    {
      v10 = [v4 creditDetails];
      v11 = [v10 accountSummary];
      v12 = [v11 paymentDueDate];

      if (v12)
      {
        v13 = objc_alloc(MEMORY[0x1E695DEE8]);
        v33 = [v13 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
        v14 = [MEMORY[0x1E695DF00] date];
        [v33 components:16 fromDate:v14 toDate:v12 options:0];
        v16 = v15 = v9;
        v17 = [v16 day];

        v9 = v15;
        [v15 setEnabled:v17 > 0];
      }
    }

    [v5 addAction:v9];
    v18 = PKLocalizedFeatureString();
    v19 = MEMORY[0x1E69DC648];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __60__PKAccountBillPaymentViewController__payLaterButtonTapped___block_invoke_5;
    v36[3] = &unk_1E8013DD0;
    v41 = v34;
    v37 = v4;
    v38 = v3;
    v20 = *(a1 + 40);
    v39 = WeakRetained;
    v40 = v20;
    v35 = v3;
    v21 = v4;
    v22 = v18;
    v23 = [v19 actionWithTitle:v18 style:0 handler:v36];
    [v23 setAccessibilityIdentifier:*MEMORY[0x1E69B9B30]];
    [v5 addAction:v23];
    v24 = MEMORY[0x1E69DC648];
    v25 = PKLocalizedFeatureString();
    [v24 actionWithTitle:v25 style:1 handler:0];
    v27 = v26 = v9;

    [v27 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    [v5 addAction:v27];
    v28 = [v5 popoverPresentationController];
    [v28 setSourceView:*(*(a1 + 40) + 1288)];
    [v28 setPermittedArrowDirections:2];
    [WeakRetained presentViewController:v5 animated:1 completion:0];
    v29 = *MEMORY[0x1E69BA6F0];
    v30 = *MEMORY[0x1E69BA440];
    v43[0] = *MEMORY[0x1E69BA680];
    v43[1] = v30;
    v31 = *MEMORY[0x1E69BACD8];
    v44[0] = v29;
    v44[1] = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
    [WeakRetained _reportEventForPassIfNecessary:v32];

    [WeakRetained[130] recordPaymentActionWithDifferentialPrivacy:2];
    [WeakRetained[130] recordPaymentRingAction:3];
  }
}

void __60__PKAccountBillPaymentViewController__payLaterButtonTapped___block_invoke_4(uint64_t a1)
{
  v2 = [PKAccountBillPaymentPayLaterViewController alloc];
  v3 = *(a1 + 32);
  v4 = v3[124];
  v5 = v3[173];
  v6 = v3[129];
  v7 = v3[125];
  v8 = v3[131];
  v9 = [v3 _paymentAmount];
  v12 = [(PKAccountBillPaymentPayLaterViewController *)v2 initWithAccount:v4 accountUserCollection:v5 billPaymentController:v6 transactionSource:v7 suggestionList:v8 selectedAmount:v9];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1392));
  [(PKAccountBillPaymentPayLaterViewController *)v12 setObserver:WeakRetained];

  v11 = [*(a1 + 32) navigationController];
  [v11 pushViewController:v12 animated:1];
}

void __60__PKAccountBillPaymentViewController__payLaterButtonTapped___block_invoke_5(uint64_t a1)
{
  v8 = [MEMORY[0x1E69B8EF8] sharedService];
  if (*(a1 + 64) == 1)
  {
    v2 = [PKCreditAccountPaymentDetailsViewController alloc];
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) firstObject];
    v5 = [(PKCreditAccountPaymentDetailsViewController *)v2 initWithAccount:v3 payment:v4 paymentWebService:v8 overrideViewStyle:2];

    v6 = [*(a1 + 48) navigationController];
    [(PKAccountAutomaticPaymentsController *)v6 pushViewController:v5 animated:1];
  }

  else
  {
    v5 = [MEMORY[0x1E69B8400] sharedInstance];
    v6 = [[PKAccountAutomaticPaymentsController alloc] initWithAccountService:v5 paymentWebService:v8 account:*(a1 + 32) context:0];
    [(PKAccountAutomaticPaymentsController *)v6 setDelegate:*(a1 + 48)];
    v7 = [[PKAccountAutomaticPaymentsViewController alloc] initWithController:v6 showSetupPrompt:0];
    if ([*(a1 + 56) pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      if (PKIsVision())
      {
        [(PKAccountAutomaticPaymentsViewController *)v7 setModalPresentationStyle:1];
        [(PKAccountAutomaticPaymentsViewController *)v7 setModalTransitionStyle:0];
      }

      else
      {
        [(PKAccountAutomaticPaymentsViewController *)v7 setModalPresentationStyle:2];
      }
    }

    [*(a1 + 56) presentViewController:v7 animated:1 completion:0];
  }
}

- (void)_interstitialButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if ((self->_interstitialState & 0xFFFFFFFFFFFFFFFCLL) == 4)
  {
    objc_initWeak(&location, self);
    v5 = objc_opt_class();
    account = self->_account;
    accountUserCollection = self->_accountUserCollection;
    transactionSource = self->_transactionSource;
    configuration = self->_configuration;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__PKAccountBillPaymentViewController__interstitialButtonTapped___block_invoke;
    v10[3] = &unk_1E8013E20;
    objc_copyWeak(&v11, &location);
    [v5 _billPaymentViewControllerForAccount:account accountUserCollection:accountUserCollection transactionSource:transactionSource configuration:configuration withCompletion:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PKAccountBillPaymentViewController *)self _cancelButtonTapped:tappedCopy];
  }
}

void __64__PKAccountBillPaymentViewController__interstitialButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PKAccountBillPaymentViewController__interstitialButtonTapped___block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __64__PKAccountBillPaymentViewController__interstitialButtonTapped___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(a1 + 32) && WeakRetained[1376] - 1 <= 1)
  {
    v9 = WeakRetained;
    v3 = [WeakRetained navigationController];
    v4 = [v3 viewControllers];
    v5 = [v4 mutableCopy];

    v6 = [v5 indexOfObjectIdenticalTo:v9];
    v7 = [v5 count];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7 - v6;
      if (v7 > v6)
      {
        [v5 removeObjectsInRange:{v6, v8}];
      }
    }

    [v5 addObject:{*(a1 + 32), v8}];
    [v3 setViewControllers:v5 animated:1];

    WeakRetained = v9;
  }
}

- (double)_buttonHeightForButtonWidth:(double)width
{
  primaryButton = self->_primaryButton;
  if (primaryButton)
  {
    [(UIButton *)primaryButton sizeThatFits:width, 1.79769313e308];
    v7 = fmax(v6, 48.0);
    secondaryButton = self->_secondaryButton;
    if (!secondaryButton)
    {
      return v7;
    }

LABEL_6:
    [(UIButton *)secondaryButton sizeThatFits:width, 1.79769313e308];
    return fmax(v9, v7);
  }

  secondaryButton = self->_secondaryButton;
  if (secondaryButton)
  {
    v7 = 48.0;
    goto LABEL_6;
  }

  return 0.0;
}

- (void)_updatePayNowButtonTitleWithAmount:(id)amount
{
  if (self->_buttonsArePayButtons)
  {
    account = self->_account;
    amountCopy = amount;
    [(PKAccount *)account feature];
    v8 = [(NSNumberFormatter *)self->_amountFormatter stringFromNumber:amountCopy];

    v7 = PKLocalizedFeatureString();
    objc_storeStrong(&self->_payNowButtonTitle, v7);
    if (_UISolariumFeatureFlagEnabled() && (PKIsVision() & 1) == 0)
    {
      [(UIButton *)self->_primaryButton setNeedsUpdateConfiguration];
    }

    else
    {
      [(UIButton *)self->_primaryButton setTitle:v7 forState:0, v8];
    }
  }
}

- (id)_interestForAmount:(id)amount
{
  amountCopy = amount;
  if (amountCopy)
  {
    if (!self->_interestCalculator)
    {
      v6 = [MEMORY[0x1E69B8720] configurationWithCreditAccount:self->_account];
      [v6 setCalculationMethod:1];
      v7 = [objc_alloc(MEMORY[0x1E69B8718]) initWithConfiguration:v6];
      interestCalculator = self->_interestCalculator;
      self->_interestCalculator = v7;

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      cachedInterestResults = self->_cachedInterestResults;
      self->_cachedInterestResults = dictionary;

      transactionSourceIdentifiers = [(PKTransactionSource *)self->_transactionSource transactionSourceIdentifiers];
      accountUserCollection = self->_accountUserCollection;
      if (accountUserCollection)
      {
        transactionSourceIdentifiers2 = [(PKAccountUserCollection *)accountUserCollection transactionSourceIdentifiers];
        if (transactionSourceIdentifiers2)
        {
          v14 = [transactionSourceIdentifiers setByAddingObjectsFromSet:transactionSourceIdentifiers2];

          transactionSourceIdentifiers = v14;
        }
      }

      paymentService = [MEMORY[0x1E69B8DB8] paymentService];
      periodStartDate = [v6 periodStartDate];
      periodEndDate = [v6 periodEndDate];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __57__PKAccountBillPaymentViewController__interestForAmount___block_invoke;
      v19[3] = &unk_1E8013E48;
      v19[4] = self;
      [paymentService approvedTransactionsForTransactionSourceIdentifiers:transactionSourceIdentifiers withTransactionSource:0 withBackingData:1 startDate:periodStartDate endDate:periodEndDate limit:0 completion:v19];
    }

    v5 = [(NSMutableDictionary *)self->_cachedInterestResults objectForKey:amountCopy];
    if (!v5)
    {
      v5 = [(PKCompoundInterestCalculator *)self->_interestCalculator compoundInterestWithPaymentOfAmount:amountCopy];
      [(NSMutableDictionary *)self->_cachedInterestResults setObject:v5 forKey:amountCopy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __57__PKAccountBillPaymentViewController__interestForAmount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PKAccountBillPaymentViewController__interestForAmount___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __57__PKAccountBillPaymentViewController__interestForAmount___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1056) configuration];
  v3 = [*(a1 + 40) allObjects];
  [v2 setPeriodTransactions:v3];

  v4 = *(*(a1 + 32) + 1064);

  return [v4 removeAllObjects];
}

- (id)_paymentAmount
{
  v2 = 23;
  if (self->_showKeyboard)
  {
    v2 = 24;
  }

  amount = [*(&self->super.super.super.isa + OBJC_IVAR___PKAccountBillPaymentViewController__account[v2]) amount];

  return amount;
}

- (void)_setEnabled:(BOOL)enabled
{
  if (self->_viewIsEnabled == !enabled)
  {
    self->_viewIsEnabled = enabled;
    viewIfLoaded = [(PKAccountBillPaymentViewController *)self viewIfLoaded];
    [viewIfLoaded setUserInteractionEnabled:self->_viewIsEnabled];
    [(PKAccountBillPaymentViewController *)self _setPayButtonsEnabled:self->_viewIsEnabled];
    v4 = _UISolariumFeatureFlagEnabled();
    primaryButton = self->_primaryButton;
    if (v4)
    {
      [(UIButton *)primaryButton setNeedsUpdateConfiguration];
    }

    else
    {
      [(UIButton *)primaryButton setShowSpinner:!self->_viewIsEnabled];
    }

    [(UIButton *)self->_tertiaryButton setEnabled:self->_viewIsEnabled];
    navigationItem = [(PKAccountBillPaymentViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    [leftBarButtonItem setEnabled:self->_viewIsEnabled];

    [viewIfLoaded setNeedsLayout];
  }
}

- (void)_setPayButtonsEnabled:(BOOL)enabled
{
  if (self->_payButtonsEnabled == !enabled)
  {
    self->_payButtonsEnabled = enabled;
    [(UIButton *)self->_primaryButton setEnabled:enabled | !self->_buttonsArePayButtons];
    secondaryButton = self->_secondaryButton;
    v5 = self->_shouldEnablePayLaterButton && self->_payButtonsEnabled;

    [(UIButton *)secondaryButton setEnabled:v5];
  }
}

- (void)_dismissViewControllerWithSuccess:(BOOL)success
{
  presentingViewController = [(PKAccountBillPaymentViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_presentAddBankAccount
{
  _addBankAccountInformationViewController = [(PKAccountBillPaymentViewController *)self _addBankAccountInformationViewController];
  [_addBankAccountInformationViewController setOfferKeychainPreFill:1];
  v3 = [[PKNavigationController alloc] initWithRootViewController:_addBankAccountInformationViewController];
  [(PKNavigationController *)v3 setSupportedInterfaceOrientations:2];
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [(PKNavigationController *)v3 setModalPresentationStyle:2];
  }

  [(PKAccountBillPaymentViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (id)_addBankAccountInformationViewController
{
  addBankAccountViewController = self->_addBankAccountViewController;
  if (!addBankAccountViewController)
  {
    v4 = [PKAddBankAccountInformationViewController alloc];
    v5 = [objc_alloc(MEMORY[0x1E69B86A8]) initWithType:1];
    creditDetails = [(PKAccount *)self->_account creditDetails];
    countryCode = [creditDetails countryCode];
    v8 = [(PKAddBankAccountInformationViewController *)v4 initWithDelegate:self bankInformation:v5 accountCountryCode:countryCode featureAccount:self->_account];
    v9 = self->_addBankAccountViewController;
    self->_addBankAccountViewController = v8;

    addBankAccountViewController = self->_addBankAccountViewController;
  }

  return addBankAccountViewController;
}

- (id)_interestPostDate
{
  creditDetails = [(PKAccount *)self->_account creditDetails];
  accountSummary = [creditDetails accountSummary];
  balanceSummary = [accountSummary balanceSummary];
  closingDate = [balanceSummary closingDate];

  return closingDate;
}

- (id)_roundedInterestForAmount:(id)amount
{
  amountCopy = amount;
  if ([(PKAccount *)self->_account showBillPaymentInterest])
  {
    v5 = [(PKAccountBillPaymentViewController *)self _interestForAmount:amountCopy];
    roundingHandler = [MEMORY[0x1E69B86D0] roundingHandler];
    v7 = [v5 decimalNumberByRoundingAccordingToBehavior:roundingHandler];

    zero = [MEMORY[0x1E696AB90] zero];
    LOBYTE(roundingHandler) = [v7 isEqualToNumber:zero];

    if (roundingHandler)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_interestStringForAmount:(id)amount
{
  v4 = [(PKAccountBillPaymentViewController *)self _roundedInterestForAmount:amount];
  if (v4)
  {
    v5 = [(NSNumberFormatter *)self->_amountFormatter stringFromNumber:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_interestLabelIsOutsideSmallRing
{
  if (PKIsVision())
  {
    return 0;
  }

  if (!PKUIGetMinScreenWidthType() || self->_usesAccessibilityLayout)
  {
    return 1;
  }

  ringView = self->_ringView;

  return [(PKBillPaymentRingView *)ringView isHidden];
}

- (void)_updateNavigationTitle
{
  if (self->_showKeyboard || self->_titleLabel)
  {
    _title = 0;
  }

  else
  {
    _title = [(PKAccountBillPaymentViewController *)self _title];
  }

  v4 = _title;
  [(PKAccountBillPaymentViewController *)self setTitle:_title];
}

- (id)_title
{
  [(PKAccount *)self->_account feature];
  interstitialState = self->_interstitialState;
  if (interstitialState > 4)
  {
    if ((interstitialState - 6) < 2)
    {
      goto LABEL_10;
    }

    if (interstitialState == 5)
    {
      [(NSArray *)self->_installmentPlans count];
      goto LABEL_10;
    }
  }

  else if ((interstitialState - 1) < 3 || interstitialState == 4)
  {
LABEL_10:
    v4 = PKLocalizedFeatureString();
    if (v4)
    {
      goto LABEL_12;
    }
  }

  v4 = PKLocalizedFeatureString();
LABEL_12:

  return v4;
}

- (void)_updateSubtitle
{
  if (!self->_subtitleLabel)
  {
    return;
  }

  [(PKAccount *)self->_account feature];
  creditDetails = [(PKAccount *)self->_account creditDetails];
  accountSummary = [creditDetails accountSummary];
  currentStatement = [accountSummary currentStatement];
  v5 = createDateFormatter();
  interstitialState = self->_interstitialState;
  if (interstitialState > 3)
  {
    if (interstitialState > 5)
    {
      if (interstitialState == 6 || interstitialState == 7)
      {
        rates = [creditDetails rates];
        formattedAPRForPurchasesPercentageString = [rates formattedAPRForPurchasesPercentageString];

        v44 = formattedAPRForPurchasesPercentageString;
        v7 = PKLocalizedFeatureString();

        if (v7)
        {
          goto LABEL_17;
        }
      }

LABEL_33:
      pastDueAmount = [accountSummary pastDueAmount];
      v55 = v5;
      if ([accountSummary cyclesPastDue] <= 0)
      {
        if (pastDueAmount)
        {
          zero = [MEMORY[0x1E696AB90] zero];
          v22 = [pastDueAmount compare:zero] == 1;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 1;
      }

      v52 = currentStatement;
      remainingStatementAmount = [(PKBillPaymentSuggestedAmountList *)self->_suggestionList remainingStatementAmount];
      paymentDueDate = [accountSummary paymentDueDate];
      v50 = pastDueAmount;
      if (remainingStatementAmount)
      {
        zero2 = [MEMORY[0x1E696AB90] zero];
        v27 = [remainingStatementAmount compare:zero2] == 1;
      }

      else
      {
        v27 = 0;
      }

      productTimeZone = [creditDetails productTimeZone];
      stateReason = [(PKAccount *)self->_account stateReason];
      v29 = createBaseDateFormatter();
      [v29 setTimeStyle:1];
      if (!v22)
      {
        if (paymentDueDate)
        {
          v31 = v27;
        }

        else
        {
          v31 = 0;
        }

        if (v31)
        {
          IsSingular = PKHourOfDateIsSingular();
          v33 = @"ACCOUNT_SERVICE_BILL_PAYMENT_PAYMENT_DUE_BY";
          if (IsSingular)
          {
            v33 = @"ACCOUNT_SERVICE_BILL_PAYMENT_PAYMENT_DUE_BY_HOUR_ONE";
          }

          v34 = v33;
          v35 = [v29 stringFromDate:paymentDueDate];
          [v55 stringFromDate:paymentDueDate];
          v45 = v44 = v35;
          v30 = PKLocalizedFeatureString();

          goto LABEL_59;
        }

        if (v27)
        {
          v30 = 0;
          goto LABEL_59;
        }

        if (stateReason != 2)
        {
          if (paymentDueDate)
          {
            v36 = PKEndOfNextMonthAndTimeZone();
          }

          else
          {
            date = [MEMORY[0x1E695DF00] date];
            v36 = PKEndOfNextMonthAndTimeZone();
          }

          v38 = PKHourOfDateIsSingular();
          v39 = @"ACCOUNT_SERVICE_BILL_PAYMENT_NO_PAYMENTS_DUE_UNTIL";
          if (v38)
          {
            v39 = @"ACCOUNT_SERVICE_BILL_PAYMENT_NO_PAYMENTS_DUE_UNTIL_HOUR_ONE";
          }

          v40 = v39;
          v41 = [v29 stringFromDate:v36];
          v42 = v36;
          v48 = v36;
          v43 = v41;
          [v55 stringFromDate:v42];
          v45 = v44 = v43;
          v30 = PKLocalizedFeatureString();

          goto LABEL_59;
        }
      }

      v30 = PKLocalizedFeatureString();
LABEL_59:

      v13 = v30 == 0;
      if (v30)
      {
        v7 = v30;
      }

      else
      {
        v7 = @" ";
      }

      currentStatement = v52;
      v5 = v55;
      goto LABEL_63;
    }

    if (interstitialState != 4)
    {
      [(NSArray *)self->_installmentPlans count];
      goto LABEL_8;
    }

    currencyCode = [creditDetails currencyCode];
    if (accountCurrentStatementIsLastMonthsStatement(self->_account))
    {
      closingDate = [currentStatement closingDate];
      if (closingDate)
      {
        v10 = [v5 stringFromDate:closingDate];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      closingDate = 0;
    }

    pastDueAmount2 = [accountSummary pastDueAmount];
    v51 = pastDueAmount2;
    if (pastDueAmount2)
    {
      pastDueAmount2 = PKCurrencyAmountCreate(pastDueAmount2, currencyCode);
    }

    v49 = pastDueAmount2;
    formattedStringValue = [(NSDecimalNumber *)pastDueAmount2 formattedStringValue];
    v16 = formattedStringValue;
    v53 = v10;
    if (formattedStringValue && v10)
    {
      v44 = v10;
      v45 = formattedStringValue;
    }

    else if (formattedStringValue)
    {
      v44 = formattedStringValue;
    }

    else
    {
      if (!v10)
      {
        v17 = PKLocalizedFeatureString();
LABEL_30:
        v7 = v17;
        if ([accountSummary requiresDebtCollectionNotices])
        {
          PKLocalizedFeatureString();
          v18 = v47 = currencyCode;
          [(__CFString *)v7 stringByAppendingString:v18];
          v46 = closingDate;
          v20 = v19 = v5;

          v7 = v20;
          v5 = v19;
          closingDate = v46;
          currencyCode = v47;
        }

        if (v7)
        {
          goto LABEL_17;
        }

        goto LABEL_33;
      }

      v44 = v10;
    }

    v17 = PKLocalizedFeatureString();
    goto LABEL_30;
  }

  if ((interstitialState - 1) >= 3)
  {
    goto LABEL_33;
  }

LABEL_8:
  v7 = PKLocalizedFeatureString();
  if (!v7)
  {
    goto LABEL_33;
  }

LABEL_17:
  v13 = 0;
LABEL_63:
  [(UILabel *)self->_subtitleLabel setText:v7, v44, v45];
  [(UILabel *)self->_subtitleLabel setHidden:v13];
}

- (void)_setupAmountDescriptionViewForInterstitial
{
  if (!self->_interstitialState)
  {
    return;
  }

  [(PKAccount *)self->_account feature];
  v3 = 0;
  interstitialState = self->_interstitialState;
  if (interstitialState > 2)
  {
    if (interstitialState == 3 || (v13 = 0, interstitialState == 5))
    {
      v13 = PKLocalizedFeatureString();
      v3 = PKLocalizedFeatureString();
    }

    goto LABEL_13;
  }

  if (interstitialState == 1)
  {
    creditDetails = [(PKAccount *)self->_account creditDetails];
    createdDate = [creditDetails createdDate];

    v13 = PKLocalizedFeatureString();
    v8 = createDateFormatter();
    v9 = PKEndOfNextMonth();
    v10 = [v8 stringFromDate:v9];
    goto LABEL_11;
  }

  v13 = 0;
  if (interstitialState == 2)
  {
    creditDetails2 = [(PKAccount *)self->_account creditDetails];
    accountSummary = [creditDetails2 accountSummary];
    createdDate = [accountSummary paymentDueDate];

    v13 = PKLocalizedFeatureString();
    v8 = createDateFormatter();
    v9 = PKEndOfNextMonth();
    v10 = [v8 stringFromDate:v9];
LABEL_11:
    v12 = v10;
    v3 = PKLocalizedFeatureString();
  }

LABEL_13:
  [(PKAccountBillPaymentAmountDescriptionView *)self->_amountDescriptionView setTitleText:v13, v12];
  [(PKAccountBillPaymentAmountDescriptionView *)self->_amountDescriptionView setDescriptionText:v3];
}

- (void)_configureProductHeroView
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKAccountBillPaymentViewController__configureProductHeroView__block_invoke;
  aBlock[3] = &unk_1E8010A38;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  firstObject = [(NSArray *)self->_installmentPlans firstObject];
  product = [firstObject product];
  v6 = [product iconURLForScale:0 suffix:PKUIScreenScale()];

  if (v6)
  {
    mEMORY[0x1E69B8A08] = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
    v8 = [mEMORY[0x1E69B8A08] cachedDataForURL:v6];
    if (v8)
    {
      v9 = [MEMORY[0x1E69DCAB8] imageWithData:v8];
      v3[2](v3, v9);
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __63__PKAccountBillPaymentViewController__configureProductHeroView__block_invoke_2;
      v10[3] = &unk_1E8013E70;
      v11 = v3;
      [mEMORY[0x1E69B8A08] downloadFromUrl:v6 completionHandler:v10];
      v9 = v11;
    }
  }

  else
  {
    mEMORY[0x1E69B8A08] = PKUIImageNamed(@"Hero_Apply-CCS");
    v3[2](v3, mEMORY[0x1E69B8A08]);
  }
}

void __63__PKAccountBillPaymentViewController__configureProductHeroView__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 1344) setImage:a2];
    v3 = [*(a1 + 32) view];
    [v3 setNeedsLayout];
  }
}

void __63__PKAccountBillPaymentViewController__configureProductHeroView__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (v6 && !a4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__PKAccountBillPaymentViewController__configureProductHeroView__block_invoke_3;
    v7[3] = &unk_1E8010E20;
    v9 = *(a1 + 32);
    v8 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __63__PKAccountBillPaymentViewController__configureProductHeroView__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x1E69DCAB8] imageWithData:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

- (void)_showOrHideKeypad
{
  showKeyboard = self->_showKeyboard;
  amountDescriptionView = self->_amountDescriptionView;
  if (showKeyboard)
  {
    [(PKAccountBillPaymentAmountDescriptionView *)amountDescriptionView showKeyboard];
  }

  else
  {
    [(PKAccountBillPaymentAmountDescriptionView *)amountDescriptionView dismissKeyboard];
  }
}

- (void)_presentAlertControllerForError:(id)error
{
  errorCopy = error;
  v5 = [PKAccountFlowController displayableErrorForError:errorCopy featureIdentifier:[(PKAccount *)self->_account feature] genericErrorTitle:0 genericErrorMessage:0];
  objc_initWeak(&location, self);
  v6 = objc_opt_class();
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __70__PKAccountBillPaymentViewController__presentAlertControllerForError___block_invoke;
  v11 = &unk_1E8010998;
  objc_copyWeak(&v12, &location);
  v7 = [v6 alertControllerForDisplayableError:v5 handler:&v8];
  if (v7)
  {
    [(PKAccountBillPaymentViewController *)self presentViewController:v7 animated:1 completion:0, v8, v9, v10, v11];
  }

  else
  {
    [(PKAccountBillPaymentViewController *)self _setEnabled:1, v8, v9, v10, v11];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __70__PKAccountBillPaymentViewController__presentAlertControllerForError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showOrHideKeypad];
  [WeakRetained _setEnabled:1];
}

- (void)_reportEventForPassIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v4 = MEMORY[0x1E69B8540];
  paymentPass = [(PKTransactionSource *)self->_transactionSource paymentPass];
  v6 = [v4 subjectToReportDashboardAnalyticsForPass:paymentPass];

  if (necessaryCopy && v6)
  {
    v7 = [necessaryCopy mutableCopy];
    [v7 setObject:*MEMORY[0x1E69BA5A0] forKey:*MEMORY[0x1E69BABE8]];
    v8 = MEMORY[0x1E69B8540];
    v9 = [v7 copy];
    [v8 subject:v6 sendEvent:v9];
  }
}

- (PKAccountBillPaymentObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end