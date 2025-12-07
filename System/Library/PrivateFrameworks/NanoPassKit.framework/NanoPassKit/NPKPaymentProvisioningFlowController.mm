@interface NPKPaymentProvisioningFlowController
+ (BOOL)_isHSA2Enabled;
+ (BOOL)_localCredentials:(id)credentials containProduct:(id)product;
+ (BOOL)_readerModeEntryAllowedForProduct:(id)product;
+ (id)_authContext;
+ (id)_displayableCouldNotAddCardErrorWithUnderlyingError:(id)error;
+ (id)_displayableErrorWithIneligibilityReason:(int64_t)reason learnMoreURL:(id)l;
+ (id)_displayableErrorWithUnderlyingVerificationError:(id)error;
+ (id)_filterAssociatedCredentials:(id)credentials forProduct:(id)product;
+ (id)_filteredPaymentSetupProducts:(id)products localCredentials:(id)credentials setupContext:(int64_t)context webService:(id)service mobileCarrierRegion:(id)region readerModeSupported:(BOOL)supported digitalIssuanceSupported:(BOOL)issuanceSupported;
+ (id)_flowPickerSectionsWithContext:(int64_t)context provisioningController:(id)controller readerModeSupported:(BOOL)supported digitalIssuanceSupported:(BOOL)issuanceSupported;
+ (id)_physicalCardURLFromMetadata:(id)metadata forScale:(double)scale;
+ (id)_productsArrayFromPickerSection:(id)section;
+ (id)_readerModeResources;
+ (void)_addAppleBalanceToSections:(id)sections fromModel:(id)model;
+ (void)_addCreditDebitItemToSection:(id)section webService:(id)service;
+ (void)_addGroupedItemsToSections:(id)sections fromModel:(id)model webService:(id)service paymentSection:(id)section;
- (BOOL)_fieldRequiresLocalEntry:(id)entry;
- (BOOL)_fieldsModelCompleteExceptForLocalFields:(id)fields;
- (BOOL)hasCredentialsAssociatedWithProduct:(id)product;
- (NPKFidoAuthCoordinator)fidoAuthCoordinator;
- (NPKPaymentProvisioningFlowController)initWithProvisioningController:(id)controller setupContext:(int64_t)context;
- (NPKPaymentProvisioningFlowControllerDelegate)delegate;
- (id)_addCardErrorForPaymentRequest:(id)request;
- (id)_credentialReadonlyFieldIdentifiers;
- (id)_curatedDefaultPaymentSetupProvisioningFields;
- (id)_filteredPaymentSetupFields:(id)fields forLocalDeviceEntry:(BOOL)entry;
- (id)_localRequiredFieldsFromRequirementsResponse;
- (id)_newPaymentEligibilityRequest;
- (id)_newPaymentProvisioningRequest;
- (id)_newPaymentRequirementsRequest;
- (id)_paymentRequestForAmount:(id)amount serviceProviderProduct:(id)product productItem:(id)item;
- (id)_requiredFieldsFromRequirementsResponse;
- (id)_requiredFieldsFromRequirementsResponseExcludingLocalFields;
- (id)_secondaryFilteredFields:(id)fields forCredential:(id)credential;
- (id)_subtitleForState:(unint64_t)state;
- (id)_titleForState:(unint64_t)state;
- (void)_canMakeDigitalIssuancePaymentsForTransitProducts:(id)products withCompletion:(id)completion;
- (void)_canMakeDigitalIssuancePaymentsForTransitProductsWithCompletion:(id)completion;
- (void)_cardsOnFileForProduct:(id)product updateHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_checkSpaceAvailableForAppletTypes:(id)types triedCleanup:(BOOL)cleanup completion:(id)completion;
- (void)_chooseProductFromFlowPickerSection:(id)section requestContext:(id)context transitioningToStep:(int)step;
- (void)_configureWebServiceIfNecessary:(id)necessary completion:(id)completion;
- (void)_downloadAndAddUpdatedPassForPaymentPass:(id)pass completion:(id)completion;
- (void)_downloadRemoteAssetsAndAddPaymentPass:(id)pass completion:(id)completion;
- (void)_endProvisioningFlowWithError:(id)error requestContext:(id)context;
- (void)_endProvisioningFlowWithSuccessForPass:(id)pass requestContext:(id)context;
- (void)_ensureMetadataForCredentials:(id)credentials updateHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_fetchAddRequestWithCertificatesResponse:(id)response requestContext:(id)context;
- (void)_fetchInAppProvisioningCertificates:(id)certificates;
- (void)_handleAppleBalanceAccountDetailsAcknowledgedWithProduct:(id)product requestContext:(id)context;
- (void)_handleAppleBalanceProductChosen:(id)chosen requestContext:(id)context;
- (void)_handleDigitalIssuanceTermsAccepted:(id)accepted;
- (void)_handleEligibiltySuccessWithContext:(id)context;
- (void)_handleEndOfProvisioningFlowForCurrentPass:(id)pass requestContext:(id)context;
- (void)_handleFinished:(id)finished;
- (void)_handlePasscodeUpgradeCompleteWithSuccess:(BOOL)success error:(id)error requestContext:(id)context;
- (void)_handlePreconditionsVerified:(id)verified;
- (void)_handleProceedWithCredentials:(id)credentials chosenByUser:(BOOL)user requestContext:(id)context;
- (void)_handleProductChosen:(id)chosen includeCardsOnFile:(BOOL)file requestContext:(id)context;
- (void)_handleProvisioningFlowStarted:(id)started;
- (void)_handleReaderModeTermsAccepted:(id)accepted;
- (void)_handleVerificationCode:(id)code forPass:(id)pass context:(id)context;
- (void)_handleVerificationFieldsForPass:(id)pass context:(id)context;
- (void)_handleVerificationResponseForPass:(id)pass context:(id)context;
- (void)_invalidateCardNotFoundTimer;
- (void)_noteProvisioningStateChangeForReaderMode:(int64_t)mode;
- (void)_performEligibility:(id)eligibility;
- (void)_performNextActionForProvisioningState:(id)state;
- (void)_performNextStepForProvisionedPass:(id)pass moreInfoAcknowledged:(BOOL)acknowledged requestContext:(id)context;
- (void)_performPasscodeUpgrade:(id)upgrade;
- (void)_performProvision:(id)provision;
- (void)_performProvisionWithRequest:(id)request requestContext:(id)context assertion:(id)assertion;
- (void)_performProvisioningEligibility:(id)eligibility;
- (void)_performRequirementsOrEligibilityForInAppProvisioning:(id)provisioning;
- (void)_performResolveLocalEligibilityARequirements:(id)requirements completion:(id)completion;
- (void)_performSEStorageCheck:(id)check;
- (void)_performTerms:(id)terms;
- (void)_performTransitionToStep:(int)step withContext:(id)context;
- (void)_performValidateSecurityRequirements:(id)requirements completion:(id)completion;
- (void)_provisioningLocalizedProgressDescriptionDidChange:(id)change;
- (void)_removePassIfNecessary;
- (void)_requestPassDetailsForAccountCredential:(id)credential withCompletionHandler:(id)handler;
- (void)_requestRequirements:(id)requirements;
- (void)_requestVerificationOptionsForPass:(id)pass context:(id)context;
- (void)_resetReaderModeProvisioningState;
- (void)_sendDidEncounterError:(id)error requestContext:(id)context;
- (void)_sendDidTransitionFromStep:(int)step toStep:(int)toStep withContext:(id)context;
- (void)_setupCardIngester;
- (void)_startCardNotFoundTimer;
- (void)_startDigitalIssuancePaymentWithAmount:(id)amount requestContext:(id)context serviceProviderProduct:(id)product productItem:(id)item;
- (void)_startIngestion;
- (void)_startProvisioningForCredential:(id)credential requestContext:(id)context;
- (void)_startReaderModeIngestion:(id)ingestion;
- (void)_startReadingCard;
- (void)_startTransferringCard;
- (void)_tearDownCardIngester;
- (void)_transitionBasedOnCredentials:(id)credentials product:(id)product requestContext:(id)context;
- (void)_transitionBasedOnTermsForReason:(unint64_t)reason URL:(id)l requestContext:(id)context;
- (void)_transitionToAppleBalanceAccountDetailsWithProduct:(id)product requestContext:(id)context;
- (void)_transitionToChooseCredentials:(id)credentials product:(id)product requestContext:(id)context;
- (void)_transitionToChooseFlowWithSections:(id)sections requestContext:(id)context;
- (void)_transitionToChooseProductWithProducts:(id)products requestContext:(id)context;
- (void)_transitionToDigitalIssuanceForProduct:(id)product requestContext:(id)context;
- (void)_transitionToFlowIngestionState:(unint64_t)state;
- (void)_transitionToFlowIngestionState:(unint64_t)state progress:(double)progress;
- (void)_transitionToIngestionProgress:(double)progress;
- (void)_transitionToManualEntry:(id)entry;
- (void)_transitionToMoreInformationWithItems:(id)items pass:(id)pass requestContext:(id)context;
- (void)_transitionToProductDisambiguationWithProducts:(id)products requestContext:(id)context;
- (void)_transitionToProvisioningForCredential:(id)credential product:(id)product requestContext:(id)context;
- (void)_transitionToProvisioningProgressWithRequestContext:(id)context;
- (void)_transitionToReaderModeForProduct:(id)product requestContext:(id)context;
- (void)_transitionToSecondaryManualEntryWithFields:(id)fields credential:(id)credential requestContext:(id)context;
- (void)_transitionToVerificationChannelsWithPaymentPass:(id)pass channels:(id)channels requestContext:(id)context;
- (void)_transitionToVerificationCodeWithPaymentPass:(id)pass channel:(id)channel requestContext:(id)context;
- (void)_transitionToVerificationFieldsWithPaymentPass:(id)pass fields:(id)fields requestContext:(id)context;
- (void)_updateVerificationForPass:(id)pass channel:(id)channel context:(id)context;
- (void)_verifyPasscodeStateIfNecessaryWithCompletion:(id)completion;
- (void)acceptTerms:(id)terms;
- (void)acknowledgeAppleBalanceAccountDetailsWithProduct:(id)product requestContext:(id)context;
- (void)acknowledgeMoreInformation:(id)information;
- (void)acknowledgeWelcome:(id)welcome;
- (void)chooseCardsOnFileFlowForProduct:(id)product requestContext:(id)context preloadMetadata:(BOOL)metadata;
- (void)chooseCredentials:(id)credentials requestContext:(id)context;
- (void)chooseFlowForPickerItem:(id)item requestContext:(id)context;
- (void)chooseManualEntry:(id)entry;
- (void)chooseProduct:(id)product includeCardsOnFile:(BOOL)file requestContext:(id)context;
- (void)chooseReaderMode:(id)mode;
- (void)contactlessCardIngester:(id)ingester didFailToIngestCardWithError:(id)error resetProvisioning:(BOOL)provisioning isRecoverable:(BOOL)recoverable;
- (void)contactlessCardIngester:(id)ingester didUpdateCardIngestionStatus:(unint64_t)status;
- (void)dealloc;
- (void)ensureMetadataForCredentials:(id)credentials requestContext:(id)context updateHandler:(id)handler completionHandler:(id)completionHandler;
- (void)handleDigitalIssuanceAmount:(id)amount requestContext:(id)context;
- (void)handleDigitalIssuanceAmount:(id)amount serviceProviderProduct:(id)product item:(id)item requestContext:(id)context;
- (void)handleIssuerApplicationAddRequest:(id)request requestContext:(id)context;
- (void)handleIssuerVerificationChannel:(id)channel requestContext:(id)context;
- (void)handleIssuerVerificationCode:(id)code requestContext:(id)context;
- (void)handleIssuerVerificationFields:(id)fields requestContext:(id)context;
- (void)handleManualEntryFields:(id)fields credential:(id)credential requestContext:(id)context;
- (void)handlePasscodeUpgradeCompleteWithSuccess:(BOOL)success error:(id)error requestContext:(id)context;
- (void)handleProductSelection:(id)selection requestContext:(id)context;
- (void)handleReaderModeFields:(id)fields requestContext:(id)context;
- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationController:(id)controller didAuthorizePurchase:(id)purchase completion:(id)completion;
- (void)paymentAuthorizationControllerDidFinish:(id)finish;
- (void)prefetchCredentialsForProduct:(id)product requestContext:(id)context completionHandler:(id)handler;
- (void)reset;
- (void)skipIssuerVerification:(id)verification;
- (void)skipProvisioning:(id)provisioning;
- (void)startInAppProvisioningFlowWithConfiguration:(id)configuration requestContext:(id)context;
- (void)startIssuerVerificationFlowForPaymentPass:(id)pass requestContext:(id)context;
- (void)startProvisioningFlow:(id)flow;
@end

@implementation NPKPaymentProvisioningFlowController

- (NPKPaymentProvisioningFlowController)initWithProvisioningController:(id)controller setupContext:(int64_t)context
{
  v37 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v34.receiver = self;
  v34.super_class = NPKPaymentProvisioningFlowController;
  v8 = [(NPKPaymentProvisioningFlowController *)&v34 init];
  if (v8)
  {
    webService = [controllerCopy webService];
    webService = v8->_webService;
    v8->_webService = webService;

    v12 = pk_Payment_log(v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v15 = pk_Payment_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(PKPaymentWebService *)v8->_webService debugDescription];
        v17 = v16;
        uTF8String = [v16 UTF8String];
        *buf = 136315138;
        v36 = uTF8String;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: checking webService %s: ", buf, 0xCu);
      }
    }

    v8->_currentStep = 100;
    objc_storeStrong(&v8->_provisioningController, controller);
    v8->_setupContext = context;
    v20 = pk_Payment_log(v19);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v23 = pk_Payment_log(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(PKPaymentProvisioningController *)v8->_provisioningController debugDescription];
        v25 = v24;
        uTF8String2 = [v24 UTF8String];
        *buf = 136315138;
        v36 = uTF8String2;
        _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: checking controller initialization %s: ", buf, 0xCu);
      }
    }

    objc_initWeak(buf, v8);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    provisioningController = v8->_provisioningController;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __84__NPKPaymentProvisioningFlowController_initWithProvisioningController_setupContext___block_invoke;
    v32[3] = &unk_279946020;
    objc_copyWeak(&v33, buf);
    v29 = [defaultCenter addObserverForName:*MEMORY[0x277D388C8] object:provisioningController queue:0 usingBlock:v32];
    progressNotificationToken = v8->_progressNotificationToken;
    v8->_progressNotificationToken = v29;

    [MEMORY[0x277D37D28] beginSubjectReporting:@"provisioning"];
    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }

  return v8;
}

void __84__NPKPaymentProvisioningFlowController_initWithProvisioningController_setupContext___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _provisioningLocalizedProgressDescriptionDidChange:v5];
  }
}

- (void)dealloc
{
  if (self->_progressNotificationToken)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_progressNotificationToken];
  }

  [MEMORY[0x277D37D28] endSubjectReporting:@"provisioning"];
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowController;
  [(NPKPaymentProvisioningFlowController *)&v4 dealloc];
}

- (void)reset
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D37D28];
  v4 = NPKAnalyticsEventForProvisioningFlowClientInput(@"reset", 0);
  [v3 subject:@"provisioning" sendEvent:v4];

  v6 = pk_Payment_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PKPaymentWebService *)self->_webService debugDescription];
      v16 = 136315138;
      uTF8String = [v10 UTF8String];
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: checking webService %s: ", &v16, 0xCu);
    }
  }

  [(PKPaymentProvisioningController *)self->_provisioningController reset];
  currentCredential = self->_currentCredential;
  self->_currentCredential = 0;

  currentAppleBalanceCredential = self->_currentAppleBalanceCredential;
  self->_currentAppleBalanceCredential = 0;

  currentProduct = self->_currentProduct;
  self->_currentProduct = 0;

  self->_termsAcceptedOutOfBand = 0;
  self->_currentStep = 100;
  chooseCredentialsStepIdentifier = self->_chooseCredentialsStepIdentifier;
  self->_chooseCredentialsStepIdentifier = 0;

  inAppProvisioningRequestConfiguration = self->_inAppProvisioningRequestConfiguration;
  self->_inAppProvisioningRequestConfiguration = 0;
}

- (void)startProvisioningFlow:(id)flow
{
  flowCopy = flow;
  v5 = MEMORY[0x277D37D28];
  v6 = NPKAnalyticsEventForProvisioningFlowClientInput(@"startProvisioningFlow", 0);
  [v5 subject:@"provisioning" sendEvent:v6];

  currentStep = self->_currentStep;
  v9 = pk_Payment_log(v8);
  v10 = v9;
  if (currentStep == 100)
  {
    v11 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = pk_Payment_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: starting provisioning flow", buf, 2u);
      }
    }

    [(NPKPaymentProvisioningFlowController *)self _handleProvisioningFlowStarted:flowCopy];
  }

  else
  {
    v14 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      v16 = pk_Payment_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, "Error: Past initialization step; cannot start provisioning flow!", v17, 2u);
      }
    }
  }
}

- (void)acknowledgeWelcome:(id)welcome
{
  welcomeCopy = welcome;
  v5 = MEMORY[0x277D37D28];
  v6 = NPKAnalyticsEventForProvisioningFlowClientInput(@"acknowledgeWelcome", 0);
  [v5 subject:@"provisioning" sendEvent:v6];

  if (self->_inAppProvisioningRequestConfiguration)
  {
    [(NPKPaymentProvisioningFlowController *)self _performNextActionForProvisioningState:welcomeCopy];
  }

  else
  {
    v7 = [objc_opt_class() _flowPickerSectionsWithContext:self->_setupContext provisioningController:self->_provisioningController readerModeSupported:self->_readerModeProvisioningSupported digitalIssuanceSupported:self->_digitalIssuanceSupported];
    provisioningController = [(NPKPaymentProvisioningFlowController *)self provisioningController];
    webService = [provisioningController webService];
    paymentSetupSupportedInRegion = [webService paymentSetupSupportedInRegion];

    IsTinker = NPKPairedOrPairingDeviceIsTinker();
    if (IsTinker)
    {
      v12 = [(PKPaymentProvisioningController *)self->_provisioningController isCurrentUserUnder13]== 1;
    }

    else
    {
      v12 = 0;
    }

    if (paymentSetupSupportedInRegion == 1)
    {
      v13 = IsTinker;
    }

    else
    {
      v13 = 1;
    }

    v14 = paymentSetupSupportedInRegion == 1 && !v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__NPKPaymentProvisioningFlowController_acknowledgeWelcome___block_invoke;
    aBlock[3] = &unk_279946068;
    v15 = v7;
    v25 = v15;
    v16 = _Block_copy(aBlock);
    v17 = v16;
    if ((IsTinker & v14) == 1)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __59__NPKPaymentProvisioningFlowController_acknowledgeWelcome___block_invoke_3;
      v19[3] = &unk_279946090;
      v19[4] = self;
      v22 = v16;
      v20 = v15;
      v23 = v13;
      v21 = welcomeCopy;
      [(NPKPaymentProvisioningFlowController *)self _canMakeDigitalIssuancePaymentsForTransitProductsWithCompletion:v19];
    }

    else
    {
      v18 = (*(v16 + 2))(v16, v15, v13 ^ 1u, v14 & 1);
      [(NPKPaymentProvisioningFlowController *)self _transitionToChooseFlowWithSections:v18 requestContext:welcomeCopy];
    }
  }
}

id __59__NPKPaymentProvisioningFlowController_acknowledgeWelcome___block_invoke(uint64_t a1, void *a2, int a3, char a4)
{
  v7 = a2;
  v8 = v7;
  if (a3 && (a4 & 1) != 0)
  {
    v9 = v7;
  }

  else
  {
    v10 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__NPKPaymentProvisioningFlowController_acknowledgeWelcome___block_invoke_2;
    v13[3] = &__block_descriptor_34_e56_B32__0__NPKPaymentProvisioningFlowPickerSection_8Q16_B24l;
    v14 = a3;
    v15 = a4;
    v9 = [v10 pk_objectsPassingTest:v13];
  }

  v11 = v9;

  return v11;
}

uint64_t __59__NPKPaymentProvisioningFlowController_acknowledgeWelcome___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPaymentSection])
  {
    v4 = *(a1 + 32);
  }

  else if ([v3 isTransitSection])
  {
    v4 = *(a1 + 33);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

void __59__NPKPaymentProvisioningFlowController_acknowledgeWelcome___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = (*(a1[7] + 16))();
  [v2 _transitionToChooseFlowWithSections:v3 requestContext:a1[6]];
}

- (void)chooseFlowForPickerItem:(id)item requestContext:(id)context
{
  v15[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  contextCopy = context;
  identifier = [itemCopy identifier];

  if (identifier)
  {
    v14 = @"flowItem";
    identifier2 = [itemCopy identifier];
    v15[0] = identifier2;
    identifier = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  v10 = MEMORY[0x277D37D28];
  v11 = NPKAnalyticsEventForProvisioningFlowClientInput(@"chooseFlow", identifier);
  [v10 subject:@"provisioning" sendEvent:v11];

  products = [itemCopy products];
  if ([products count] < 2)
  {
    firstObject = [products firstObject];
    [(NPKPaymentProvisioningFlowController *)self _handleProductChosen:firstObject includeCardsOnFile:1 requestContext:contextCopy];
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _transitionToChooseProductWithProducts:products requestContext:contextCopy];
  }
}

+ (id)_filterAssociatedCredentials:(id)credentials forProduct:(id)product
{
  v28 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  productCopy = product;
  paymentOptions = [productCopy paymentOptions];
  firstObject = [paymentOptions firstObject];

  if (firstObject)
  {
    cardType = [firstObject cardType];
  }

  else
  {
    cardType = 0;
  }

  productIdentifier = [productCopy productIdentifier];
  v11 = productIdentifier;
  if (cardType)
  {
    if (productIdentifier)
    {
      productIdentifier = [productIdentifier length];
      if (productIdentifier)
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __80__NPKPaymentProvisioningFlowController__filterAssociatedCredentials_forProduct___block_invoke;
        v19[3] = &unk_2799460B8;
        v21 = cardType;
        v20 = v11;
        v12 = [credentialsCopy pk_objectsPassingTest:v19];
        v13 = v20;
LABEL_12:

        goto LABEL_14;
      }
    }
  }

  v14 = pk_General_log(productIdentifier);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

  if (v15)
  {
    v13 = pk_General_log(v16);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      displayName = [productCopy displayName];
      *buf = 138412802;
      v23 = displayName;
      v24 = 1024;
      v25 = cardType;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: Failed collecting associated credentials for product = '%@', cardType = %u, productIdentifier = %@", buf, 0x1Cu);
    }

    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_12;
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_14:

  return v12;
}

uint64_t __80__NPKPaymentProvisioningFlowController__filterAssociatedCredentials_forProduct___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 credentialType] == *(a1 + 40) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 productIdentifier];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasCredentialsAssociatedWithProduct:(id)product
{
  provisioningController = self->_provisioningController;
  productCopy = product;
  associatedCredentials = [(PKPaymentProvisioningController *)provisioningController associatedCredentials];
  v6 = [objc_opt_class() _filterAssociatedCredentials:associatedCredentials forProduct:productCopy];

  LOBYTE(productCopy) = [v6 count] != 0;
  return productCopy;
}

- (void)_ensureMetadataForCredentials:(id)credentials updateHandler:(id)handler completionHandler:(id)completionHandler
{
  v69 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  v66 = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3032000000;
  v63[3] = __Block_byref_object_copy__3;
  v63[4] = __Block_byref_object_dispose__3;
  v64 = 0;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = self->_provisioningController;
  v37 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = credentialsCopy;
  v10 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v10)
  {
    v11 = *v60;
    do
    {
      v12 = 0;
      do
      {
        if (*v60 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v59 + 1) + 8 * v12);
        credentialType = [v13 credentialType];
        if (!credentialType)
        {
          goto LABEL_12;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        v15 = v13;
        if (![v15 requiresMetadata])
        {

LABEL_12:
          [v9 addObject:v13];
          goto LABEL_13;
        }

        productIdentifier = [v15 productIdentifier];
        if (productIdentifier)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%u, %@", credentialType, productIdentifier];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%u", credentialType];
        }
        v17 = ;
        v18 = [v37 objectForKey:v17];
        v19 = v18;
        if (v18)
        {
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "unsignedIntegerValue") + 1}];
        }

        else
        {
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
        }

        [v37 setObject:v20 forKeyedSubscript:v17];

LABEL_13:
        ++v12;
      }

      while (v10 != v12);
      v21 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
      v10 = v21;
    }

    while (v21);
  }

  if ([v37 count])
  {
    if (handlerCopy && [v9 count])
    {
      handlerCopy[2](handlerCopy, 1, 0, v9);
    }

    v22 = [v37 keysSortedByValueUsingComparator:&__block_literal_global_5];
    v23 = objc_alloc_init(MEMORY[0x277D37DB0]);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v38 = v22;
    v24 = [v38 countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (v24)
    {
      v25 = *v56;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v56 != v25)
          {
            objc_enumerationMutation(v38);
          }

          v27 = *(*(&v55 + 1) + 8 * i);
          v28 = [v27 rangeOfString:{@", "}];
          v29 = v28;
          if (v28 == 0x7FFFFFFFFFFFFFFFLL)
          {
            integerValue = [v27 integerValue];
            v31 = 0;
          }

          else
          {
            v31 = [v27 substringFromIndex:v28 + 1];
            v32 = [v27 substringToIndex:v29];
            integerValue = [v32 integerValue];
          }

          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __102__NPKPaymentProvisioningFlowController__ensureMetadataForCredentials_updateHandler_completionHandler___block_invoke_2;
          v47[3] = &unk_279946128;
          v54 = integerValue;
          v33 = v31;
          v48 = v33;
          v49 = v40;
          v52 = v63;
          v50 = v9;
          v53 = v65;
          v51 = handlerCopy;
          [v23 addOperation:v47];
        }

        v24 = [v38 countByEnumeratingWithState:&v55 objects:v67 count:16];
      }

      while (v24);
    }

    null = [MEMORY[0x277CBEB68] null];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __102__NPKPaymentProvisioningFlowController__ensureMetadataForCredentials_updateHandler_completionHandler___block_invoke_85;
    v42[3] = &unk_279946150;
    v44 = completionHandlerCopy;
    v45 = v65;
    v46 = v63;
    v43 = v9;
    v35 = [v23 evaluateWithInput:null completion:v42];
  }

  else
  {
    (*(completionHandlerCopy + 2))(completionHandlerCopy, 1, 0, v9);
  }

  _Block_object_dispose(v63, 8);
  _Block_object_dispose(v65, 8);
}

void __102__NPKPaymentProvisioningFlowController__ensureMetadataForCredentials_updateHandler_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = objc_alloc_init(MEMORY[0x277D380A8]);
  [v10 setIncludeMetadata:1];
  [v10 setCredentialType:*(a1 + 80)];
  [v10 setProductIdentifier:*(a1 + 32)];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __102__NPKPaymentProvisioningFlowController__ensureMetadataForCredentials_updateHandler_completionHandler___block_invoke_3;
  v18[3] = &unk_279946100;
  v26 = v9;
  v27 = *(a1 + 80);
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 64);
  v19 = v12;
  v24 = v13;
  v14 = *(a1 + 48);
  v15 = *(a1 + 72);
  v20 = v14;
  v25 = v15;
  v22 = *(a1 + 56);
  v23 = v7;
  v21 = v6;
  v16 = v6;
  v17 = v7;
  [v11 updateRemoteCredentials:v10 withCompletionHandler:v18];
}

void __102__NPKPaymentProvisioningFlowController__ensureMetadataForCredentials_updateHandler_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a1 + 88);
  v14 = pk_General_log(v10);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v17 = pk_General_log(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 96);
      v19 = *(a1 + 32);
      v30 = 67109634;
      v31 = v18;
      v32 = 2112;
      v33 = v19;
      v34 = 2048;
      v35 = v12 - v13;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: updateRemoteCredentials [%u, %@] completed in %f seconds", &v30, 0x1Cu);
    }
  }

  if (!v9 || (v16 = [v9 count]) == 0)
  {
    v20 = pk_General_log(v16);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v22 = pk_General_log(v16);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 96);
        v30 = 67109120;
        v31 = v23;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: Warning: User had matching associated credentials (type=%d) but when fetching metadata no credentials were returned", &v30, 8u);
      }
    }
  }

  if (v8)
  {
    v24 = pk_General_log(v16);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (v25)
    {
      v27 = pk_General_log(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 96);
        v30 = 67109378;
        v31 = v28;
        v32 = 2112;
        v33 = v8;
        _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_ERROR, "Error: Failed collecting metadata for associated credentials (type=%d), error = %@", &v30, 0x12u);
      }
    }
  }

  if (a2 && v9 && !*(*(*(a1 + 72) + 8) + 40))
  {
    [*(a1 + 40) addObjectsFromArray:v9];
  }

  *(*(*(a1 + 80) + 8) + 24) |= a2;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  }

  v29 = *(a1 + 56);
  if (v29)
  {
    (*(v29 + 16))(v29, a2, v8, *(a1 + 40));
  }

  (*(*(a1 + 64) + 16))();
}

uint64_t __102__NPKPaymentProvisioningFlowController__ensureMetadataForCredentials_updateHandler_completionHandler___block_invoke_85(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_cardsOnFileForProduct:(id)product updateHandler:(id)handler completionHandler:(id)completionHandler
{
  productCopy = product;
  if (productCopy)
  {
    completionHandlerCopy = completionHandler;
    handlerCopy = handler;
    v10 = objc_opt_class();
    associatedCredentials = [(PKPaymentProvisioningController *)self->_provisioningController associatedCredentials];
    associatedCredentials2 = [v10 _filterAssociatedCredentials:associatedCredentials forProduct:productCopy];
  }

  else
  {
    provisioningController = self->_provisioningController;
    completionHandlerCopy2 = completionHandler;
    handlerCopy2 = handler;
    associatedCredentials2 = [(PKPaymentProvisioningController *)provisioningController associatedCredentials];
  }

  [(NPKPaymentProvisioningFlowController *)self _ensureMetadataForCredentials:associatedCredentials2 updateHandler:handler completionHandler:completionHandler];
}

- (void)ensureMetadataForCredentials:(id)credentials requestContext:(id)context updateHandler:(id)handler completionHandler:(id)completionHandler
{
  contextCopy = context;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __116__NPKPaymentProvisioningFlowController_ensureMetadataForCredentials_requestContext_updateHandler_completionHandler___block_invoke;
  v19[3] = &unk_279946178;
  v19[4] = self;
  v20 = contextCopy;
  v21 = handlerCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __116__NPKPaymentProvisioningFlowController_ensureMetadataForCredentials_requestContext_updateHandler_completionHandler___block_invoke_87;
  v16[3] = &unk_279946178;
  v16[4] = self;
  v17 = v20;
  v18 = completionHandlerCopy;
  v13 = completionHandlerCopy;
  v14 = v20;
  v15 = handlerCopy;
  [(NPKPaymentProvisioningFlowController *)self _ensureMetadataForCredentials:credentials updateHandler:v19 completionHandler:v16];
}

void __116__NPKPaymentProvisioningFlowController_ensureMetadataForCredentials_requestContext_updateHandler_completionHandler___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if ((a2 & 1) == 0)
  {
    v10 = pk_Payment_log(v8);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = pk_Payment_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when setting up product for provisioning: %@", &v14, 0xCu);
      }
    }

    [*(a1 + 32) _sendDidEncounterError:v7 requestContext:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

void __116__NPKPaymentProvisioningFlowController_ensureMetadataForCredentials_requestContext_updateHandler_completionHandler___block_invoke_87(uint64_t a1, char a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if ((a2 & 1) == 0)
  {
    v10 = pk_Payment_log(v8);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = pk_Payment_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when setting up product for provisioning: %@", &v14, 0xCu);
      }
    }

    [*(a1 + 32) _sendDidEncounterError:v7 requestContext:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)chooseCardsOnFileFlowForProduct:(id)product requestContext:(id)context preloadMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  productCopy = product;
  contextCopy = context;
  if (metadataCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __103__NPKPaymentProvisioningFlowController_chooseCardsOnFileFlowForProduct_requestContext_preloadMetadata___block_invoke;
    v13[3] = &unk_2799461A0;
    v13[4] = self;
    v14 = productCopy;
    v15 = contextCopy;
    [(NPKPaymentProvisioningFlowController *)self _cardsOnFileForProduct:v14 updateHandler:0 completionHandler:v13];
  }

  else
  {
    v11 = self->_provisioningController;
    associatedCredentials = [(PKPaymentProvisioningController *)v11 associatedCredentials];
    objc_storeStrong(&self->_currentProduct, product);
    [(NPKPaymentProvisioningFlowController *)self _transitionBasedOnCredentials:associatedCredentials product:productCopy requestContext:contextCopy];
  }
}

void __103__NPKPaymentProvisioningFlowController_chooseCardsOnFileFlowForProduct_requestContext_preloadMetadata___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2)
  {
    objc_storeStrong((*(a1 + 32) + 184), *(a1 + 40));
    [*(a1 + 32) _transitionBasedOnCredentials:v9 product:*(a1 + 40) requestContext:*(a1 + 48)];
  }

  else
  {
    v10 = pk_Payment_log(v8);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = pk_Payment_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when setting up product for provisioning: %@", &v14, 0xCu);
      }
    }

    [*(a1 + 32) _sendDidEncounterError:v7 requestContext:*(a1 + 48)];
  }
}

+ (id)_productsArrayFromPickerSection:(id)section
{
  v18 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  items = [sectionCopy items];
  v6 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(items);
        }

        products = [*(*(&v13 + 1) + 8 * i) products];
        [v4 addObjectsFromArray:products];
      }

      v7 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (void)_chooseProductFromFlowPickerSection:(id)section requestContext:(id)context transitioningToStep:(int)step
{
  v5 = *&step;
  contextCopy = context;
  sectionCopy = section;
  v11 = [objc_opt_class() _productsArrayFromPickerSection:sectionCopy];

  v10 = [[NPKPaymentProvisioningFlowControllerChooseProductStepContext alloc] initWithRequestContext:contextCopy];
  [(NPKPaymentProvisioningFlowControllerChooseProductStepContext *)v10 setProducts:v11];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:v5 withContext:v10];
}

- (void)prefetchCredentialsForProduct:(id)product requestContext:(id)context completionHandler:(id)handler
{
  productCopy = product;
  contextCopy = context;
  handlerCopy = handler;
  IsSetupAssistant = NPKPaymentProvisioningSetupContextIsSetupAssistant(self->_setupContext);
  provisioningController = self->_provisioningController;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __103__NPKPaymentProvisioningFlowController_prefetchCredentialsForProduct_requestContext_completionHandler___block_invoke;
  v16[3] = &unk_2799461C8;
  v17 = productCopy;
  selfCopy = self;
  v19 = contextCopy;
  v20 = handlerCopy;
  v13 = contextCopy;
  v14 = productCopy;
  v15 = handlerCopy;
  [(PKPaymentProvisioningController *)provisioningController setupProductForProvisioning:v14 includePurchases:!IsSetupAssistant withCompletionHandler:v16];
}

void __103__NPKPaymentProvisioningFlowController_prefetchCredentialsForProduct_requestContext_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = pk_Payment_log(v5);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v10 = pk_Payment_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(a1 + 32) displayName];
        v12 = 138412546;
        v13 = v11;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when collecting associated purchases for product %@, error: %@", &v12, 0x16u);
      }
    }

    [*(a1 + 40) _sendDidEncounterError:v6 requestContext:*(a1 + 48)];
  }
}

- (void)chooseProduct:(id)product includeCardsOnFile:(BOOL)file requestContext:(id)context
{
  fileCopy = file;
  v15[1] = *MEMORY[0x277D85DE8];
  productCopy = product;
  contextCopy = context;
  productIdentifier = [productCopy productIdentifier];

  if (productIdentifier)
  {
    v14 = @"productIdentifier";
    productIdentifier2 = [productCopy productIdentifier];
    v15[0] = productIdentifier2;
    productIdentifier = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  v12 = MEMORY[0x277D37D28];
  v13 = NPKAnalyticsEventForProvisioningFlowClientInput(@"chooseProduct", productIdentifier);
  [v12 subject:@"provisioning" sendEvent:v13];

  if ([productCopy isAppleBalanceProduct])
  {
    [(NPKPaymentProvisioningFlowController *)self _handleAppleBalanceProductChosen:productCopy requestContext:contextCopy];
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _handleProductChosen:productCopy includeCardsOnFile:fileCopy requestContext:contextCopy];
  }
}

- (void)handleDigitalIssuanceAmount:(id)amount requestContext:(id)context
{
  amountCopy = amount;
  v7 = MEMORY[0x277D37D28];
  contextCopy = context;
  v8 = NPKAnalyticsEventForProvisioningFlowClientInput(@"digitalIssuanceAmount", 0);
  [v7 subject:@"provisioning" sendEvent:v8];

  digitalIssuanceAmount = self->_digitalIssuanceAmount;
  self->_digitalIssuanceAmount = amountCopy;
  v10 = amountCopy;

  [(NPKPaymentProvisioningFlowController *)self _startDigitalIssuancePaymentWithAmount:v10 requestContext:contextCopy];
}

- (void)handleDigitalIssuanceAmount:(id)amount serviceProviderProduct:(id)product item:(id)item requestContext:(id)context
{
  amountCopy = amount;
  v11 = MEMORY[0x277D37D28];
  contextCopy = context;
  itemCopy = item;
  productCopy = product;
  v14 = NPKAnalyticsEventForProvisioningFlowClientInput(@"digitalIssuanceAmount", 0);
  [v11 subject:@"provisioning" sendEvent:v14];

  digitalIssuanceAmount = self->_digitalIssuanceAmount;
  self->_digitalIssuanceAmount = amountCopy;
  v16 = amountCopy;

  [(NPKPaymentProvisioningFlowController *)self _startDigitalIssuancePaymentWithAmount:v16 requestContext:contextCopy serviceProviderProduct:productCopy productItem:itemCopy];
}

- (void)chooseReaderMode:(id)mode
{
  v4 = MEMORY[0x277D37D28];
  modeCopy = mode;
  v5 = NPKAnalyticsEventForProvisioningFlowClientInput(@"chooseReaderMode", 0);
  [v4 subject:@"provisioning" sendEvent:v5];

  [(NPKPaymentProvisioningFlowController *)self _transitionToReaderModeForProduct:self->_currentProduct requestContext:modeCopy];
}

- (void)handleReaderModeFields:(id)fields requestContext:(id)context
{
  contextCopy = context;
  v10 = NPKAnalyticsEventEntriesForPaymentSetupFields(fields);
  v7 = MEMORY[0x277D37D28];
  v8 = NPKAnalyticsEventForProvisioningFlowClientInput(@"readerModeFields", v10);
  [v7 subject:@"provisioning" sendEvent:v8];

  termsURL = [(PKPaymentSetupProduct *)self->_currentProduct termsURL];
  [(NPKPaymentProvisioningFlowController *)self _transitionBasedOnTermsForReason:2 URL:termsURL requestContext:contextCopy];
}

- (void)chooseCredentials:(id)credentials requestContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  contextCopy = context;
  v8 = NPKAnalyticsEventEntriesForCredentials(credentialsCopy);
  v9 = MEMORY[0x277D37D28];
  v10 = NPKAnalyticsEventForProvisioningFlowClientInput(@"chooseCredentials", v8);
  [v9 subject:@"provisioning" sendEvent:v10];

  v11 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_92];
  v12 = [credentialsCopy filteredArrayUsingPredicate:v11];

  if ([v12 count])
  {
    [(NPKPaymentProvisioningFlowController *)self _handleProceedWithCredentials:v12 chosenByUser:1 requestContext:contextCopy];
  }

  else
  {
    v13 = pk_General_log(0);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      v16 = pk_General_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = credentialsCopy;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, "Error: Error: No valid provisioning methods exist for credentials [%@]", &v17, 0xCu);
      }
    }
  }
}

BOOL __73__NPKPaymentProvisioningFlowController_chooseCredentials_requestContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 remoteCredential];
  v3 = v2;
  if (v2)
  {
    v4 = ([v2 status] - 1) < 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)chooseManualEntry:(id)entry
{
  v4 = MEMORY[0x277D37D28];
  entryCopy = entry;
  v5 = NPKAnalyticsEventForProvisioningFlowClientInput(@"chooseManualEntry", 0);
  [v4 subject:@"provisioning" sendEvent:v5];

  [(NPKPaymentProvisioningFlowController *)self _transitionBasedOnCredentials:0 product:self->_currentProduct requestContext:entryCopy];
}

- (void)handleManualEntryFields:(id)fields credential:(id)credential requestContext:(id)context
{
  v91 = *MEMORY[0x277D85DE8];
  fieldsCopy = fields;
  credentialCopy = credential;
  contextCopy = context;
  v11 = NPKAnalyticsEventEntriesForPaymentSetupFields(fieldsCopy);
  v12 = MEMORY[0x277D37D28];
  v69 = v11;
  v13 = NPKAnalyticsEventForProvisioningFlowClientInput(@"manualEntryFields", v11);
  [v12 subject:@"provisioning" sendEvent:v13];

  if ([(PKPaymentProvisioningController *)self->_provisioningController state]== 3)
  {
    [(PKPaymentProvisioningController *)self->_provisioningController declineTerms];
  }

  if (self->_currentStep == 192)
  {
    v14 = [[NPKPaymentProvisioningFlowControllerLocalDeviceManualEntryProgressStepContext alloc] initWithRequestContext:contextCopy];
    [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:193 withContext:v14];
  }

  state = [(PKPaymentProvisioningController *)self->_provisioningController state];
  v70 = contextCopy;
  if (state == 1)
  {
    if (credentialCopy)
    {
      state = PKEqualObjects();
      if (state)
      {
        goto LABEL_39;
      }

      v16 = pk_General_log(state);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v19 = pk_General_log(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          currentCredential = self->_currentCredential;
          *buf = 138412546;
          v88 = credentialCopy;
          v89 = 2112;
          v90 = currentCredential;
          _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Provided credential %@ does not match current credential %@; going back to requirements", buf, 0x16u);
        }
      }

      requirementsResponse = [credentialCopy requirementsResponse];
      requiredPaymentSetupFields = [requirementsResponse requiredPaymentSetupFields];
    }

    else
    {
      requirementsResponse = [MEMORY[0x277CBEB58] set];
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v23 = fieldsCopy;
      v24 = [v23 countByEnumeratingWithState:&v80 objects:v86 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v81;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v81 != v26)
            {
              objc_enumerationMutation(v23);
            }

            identifier = [*(*(&v80 + 1) + 8 * i) identifier];
            [requirementsResponse addObject:identifier];
          }

          v25 = [v23 countByEnumeratingWithState:&v80 objects:v86 count:16];
        }

        while (v25);
      }

      fieldsModel = [MEMORY[0x277CBEB58] set];
      if ((self->_currentStep & 0xFFFFFFFE) == 0xC0)
      {
        [(NPKPaymentProvisioningFlowController *)self _localRequiredFieldsFromRequirementsResponse];
      }

      else
      {
        [(NPKPaymentProvisioningFlowController *)self _requiredFieldsFromRequirementsResponseExcludingLocalFields];
      }

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v30 = v77 = 0u;
      v31 = [v30 countByEnumeratingWithState:&v76 objects:v85 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v77;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v77 != v33)
            {
              objc_enumerationMutation(v30);
            }

            identifier2 = [*(*(&v76 + 1) + 8 * j) identifier];
            [fieldsModel addObject:identifier2];
          }

          v32 = [v30 countByEnumeratingWithState:&v76 objects:v85 count:16];
        }

        while (v32);
      }

      v36 = [fieldsModel isSubsetOfSet:requirementsResponse];
      if (v36)
      {

LABEL_38:
        goto LABEL_39;
      }

      v37 = pk_General_log(v36);
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);

      if (v38)
      {
        v40 = pk_General_log(v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v88 = requirementsResponse;
          v89 = 2112;
          v90 = fieldsModel;
          _os_log_impl(&dword_25B300000, v40, OS_LOG_TYPE_DEFAULT, "Notice: Manual entry fields %@ do not contain all required fields %@; going back to requirements", buf, 0x16u);
        }
      }

      requiredPaymentSetupFields = [(NPKPaymentProvisioningFlowController *)self _curatedDefaultPaymentSetupProvisioningFields];
    }

    [(PKPaymentProvisioningController *)self->_provisioningController resetForNewProvisioning];
    credentialProvisioningQueue = [(PKPaymentProvisioningController *)self->_provisioningController credentialProvisioningQueue];
    [credentialProvisioningQueue setCurrentCredential:credentialCopy];

    v42 = [objc_alloc(MEMORY[0x277D38110]) initWithPaymentSetupFields:requiredPaymentSetupFields];
    fieldsModel = self->_fieldsModel;
    self->_fieldsModel = v42;
    requirementsResponse = requiredPaymentSetupFields;
    goto LABEL_38;
  }

LABEL_39:
  v43 = pk_Payment_log(state);
  v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);

  if (v44)
  {
    v46 = pk_Payment_log(v45);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      paymentSetupFields = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFields];
      *buf = 138412546;
      v88 = fieldsCopy;
      v89 = 2112;
      v90 = paymentSetupFields;
      _os_log_impl(&dword_25B300000, v46, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Handling manual entry fields: %@ with fields model fields: %@", buf, 0x16u);
    }
  }

  v71 = credentialCopy;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v48 = fieldsCopy;
  v49 = [v48 countByEnumeratingWithState:&v72 objects:v84 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v73;
    do
    {
      for (k = 0; k != v50; ++k)
      {
        if (*v73 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v72 + 1) + 8 * k);
        v54 = self->_fieldsModel;
        identifier3 = [v53 identifier];
        v56 = [(PKPaymentSetupFieldsModel *)v54 paymentSetupFieldWithIdentifier:identifier3];

        v58 = pk_Payment_log(v57);
        v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);

        if (v56)
        {
          if (!v59)
          {
            goto LABEL_56;
          }

          v61 = pk_Payment_log(v60);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v88 = v56;
            _os_log_impl(&dword_25B300000, v61, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Updating %@", buf, 0xCu);
          }
        }

        else
        {
          if (!v59)
          {
            goto LABEL_56;
          }

          v61 = pk_Payment_log(v60);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            identifier4 = [v53 identifier];
            *buf = 138412290;
            v88 = identifier4;
            _os_log_impl(&dword_25B300000, v61, OS_LOG_TYPE_DEFAULT, "Warning: Standalone: no model field with identifier %@ to update!", buf, 0xCu);
          }
        }

LABEL_56:
        currentValue = [v53 currentValue];
        [v56 setCurrentValue:currentValue];

        [v56 setSource:{objc_msgSend(v53, "source") == 1}];
      }

      v50 = [v48 countByEnumeratingWithState:&v72 objects:v84 count:16];
    }

    while (v50);
  }

  if ([(NPKPaymentProvisioningFlowController *)self _fieldsModelCompleteExceptForLocalFields:self->_fieldsModel])
  {
    paymentSetupFields2 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFields];
    selfCopy = self;
    v67 = v70;
    v66 = v71;
    [(NPKPaymentProvisioningFlowController *)selfCopy _transitionToSecondaryManualEntryWithFields:paymentSetupFields2 credential:v71 requestContext:v70];
  }

  else
  {
    selfCopy2 = self;
    v67 = v70;
    [(NPKPaymentProvisioningFlowController *)selfCopy2 _performNextActionForProvisioningState:v70];
    v66 = v71;
  }
}

- (void)handleProductSelection:(id)selection requestContext:(id)context
{
  v42 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  contextCopy = context;
  v8 = NPKAnalyticsEventEntriesForProduct(selectionCopy);
  v9 = MEMORY[0x277D37D28];
  v10 = NPKAnalyticsEventForProvisioningFlowClientInput(@"productSelection", v8);
  [v9 subject:@"provisioning" sendEvent:v10];

  v12 = pk_Payment_log(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v15 = pk_Payment_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      rawDictionary = [selectionCopy rawDictionary];
      v36 = 138412546;
      v37 = selectionCopy;
      v38 = 2112;
      v39 = rawDictionary;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Handling product selection: %@ (%@)", &v36, 0x16u);
    }
  }

  if (self->_currentStep == 195)
  {
    if (selectionCopy)
    {
      v17 = pk_Payment_log(v14);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

      if (v18)
      {
        v20 = pk_Payment_log(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          productIdentifier = [selectionCopy productIdentifier];
          state = [(PKPaymentProvisioningController *)self->_provisioningController state];
          requirementsResponse = [(PKPaymentProvisioningController *)self->_provisioningController requirementsResponse];
          status = [requirementsResponse status];
          v36 = 138412802;
          v37 = productIdentifier;
          v38 = 2048;
          v39 = state;
          v40 = 2048;
          v41 = status;
          _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: id %@ state %lu response status %lu", &v36, 0x20u);
        }
      }

      provisioningController = self->_provisioningController;
      productIdentifier2 = [selectionCopy productIdentifier];
      [(PKPaymentProvisioningController *)provisioningController resolveAmbiguousRequirementsWithProductIdentifier:productIdentifier2];
    }

    _requiredFieldsFromRequirementsResponseExcludingLocalFields = [(NPKPaymentProvisioningFlowController *)self _requiredFieldsFromRequirementsResponseExcludingLocalFields];
    v28 = pk_Payment_log(_requiredFieldsFromRequirementsResponseExcludingLocalFields);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

    if (v29)
    {
      v31 = pk_Payment_log(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [_requiredFieldsFromRequirementsResponseExcludingLocalFields count];
        v36 = 134217984;
        v37 = v32;
        _os_log_impl(&dword_25B300000, v31, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Start secondary manual entry with %lu fields following product disambiguation.", &v36, 0xCu);
      }
    }

    [(NPKPaymentProvisioningFlowController *)self _transitionToSecondaryManualEntryWithFields:_requiredFieldsFromRequirementsResponseExcludingLocalFields credential:0 requestContext:contextCopy];
  }

  else
  {
    v33 = pk_Payment_log(v14);
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

    if (!v34)
    {
      goto LABEL_21;
    }

    _requiredFieldsFromRequirementsResponseExcludingLocalFields = pk_Payment_log(v35);
    if (os_log_type_enabled(_requiredFieldsFromRequirementsResponseExcludingLocalFields, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&dword_25B300000, _requiredFieldsFromRequirementsResponseExcludingLocalFields, OS_LOG_TYPE_ERROR, "Error: Not on product disambiguation step; cannot choose product!", &v36, 2u);
    }
  }

LABEL_21:
}

- (void)handlePasscodeUpgradeCompleteWithSuccess:(BOOL)success error:(id)error requestContext:(id)context
{
  successCopy = success;
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  contextCopy = context;
  v10 = MEMORY[0x277D37D28];
  v11 = NPKAnalyticsEventForProvisioningFlowClientInput(@"passcodeUpgradeComplete", 0);
  [v10 subject:@"provisioning" sendEvent:v11];

  v13 = pk_Payment_log(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v16 = pk_Payment_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17[0] = 67109378;
      v17[1] = successCopy;
      v18 = 2112;
      v19 = errorCopy;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Handling passcode upgrade complete with success: %d error: %@", v17, 0x12u);
    }
  }

  [(NPKPaymentProvisioningFlowController *)self _handlePasscodeUpgradeCompleteWithSuccess:successCopy error:errorCopy requestContext:contextCopy];
}

- (void)acknowledgeAppleBalanceAccountDetailsWithProduct:(id)product requestContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  productCopy = product;
  contextCopy = context;
  v8 = MEMORY[0x277D37D28];
  v9 = NPKAnalyticsEventForProvisioningFlowClientInput(@"acknowledgeAppleBalanceAccountDetails", 0);
  [v8 subject:@"provisioning" sendEvent:v9];

  v11 = pk_Payment_log(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Payment_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = productCopy;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Handling Apple Balance Account Details Acknowledged with product: %@", &v15, 0xCu);
    }
  }

  [(NPKPaymentProvisioningFlowController *)self _handleAppleBalanceAccountDetailsAcknowledgedWithProduct:productCopy requestContext:contextCopy];
}

- (void)acceptTerms:(id)terms
{
  termsCopy = terms;
  v4 = MEMORY[0x277D37D28];
  v5 = NPKAnalyticsEventForProvisioningFlowClientInput(@"acceptTerms", 0);
  [v4 subject:@"provisioning" sendEvent:v5];

  termsReason = self->_termsReason;
  if (termsReason == 2)
  {
    [(NPKPaymentProvisioningFlowController *)self _handleReaderModeTermsAccepted:termsCopy];
  }

  else if (termsReason == 1)
  {
    [(NPKPaymentProvisioningFlowController *)self _handleDigitalIssuanceTermsAccepted:termsCopy];
  }

  else
  {
    v7 = termsCopy;
    if (termsReason)
    {
      goto LABEL_8;
    }

    [(PKPaymentProvisioningController *)self->_provisioningController acceptTerms];
    [(NPKPaymentProvisioningFlowController *)self _performNextActionForProvisioningState:termsCopy];
  }

  v7 = termsCopy;
LABEL_8:
}

- (void)skipProvisioning:(id)provisioning
{
  provisioningCopy = provisioning;
  v4 = MEMORY[0x277D37D28];
  v5 = NPKAnalyticsEventForProvisioningFlowClientInput(@"skipProvisioning", 0);
  [v4 subject:@"provisioning" sendEvent:v5];

  if ((self->_currentStep - 180) <= 0x14 && ((1 << (LOBYTE(self->_currentStep) + 76)) & 0x103401) != 0)
  {
    [(NPKPaymentProvisioningFlowController *)self _handleEndOfProvisioningFlowForCurrentPass:0 requestContext:provisioningCopy];
  }
}

- (void)acknowledgeMoreInformation:(id)information
{
  v4 = MEMORY[0x277D37D28];
  informationCopy = information;
  v6 = NPKAnalyticsEventForProvisioningFlowClientInput(@"acknowledgeMoreInformation", 0);
  [v4 subject:@"provisioning" sendEvent:v6];

  v8 = pk_Payment_log(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: More information acknowledged", v13, 2u);
    }
  }

  provisionedPass = [(PKPaymentProvisioningController *)self->_provisioningController provisionedPass];
  [(NPKPaymentProvisioningFlowController *)self _performNextStepForProvisionedPass:provisionedPass moreInfoAcknowledged:1 requestContext:informationCopy];
}

- (void)startIssuerVerificationFlowForPaymentPass:(id)pass requestContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  contextCopy = context;
  v9 = MEMORY[0x277D37D28];
  v10 = NPKAnalyticsEventForProvisioningFlowClientInput(@"startIssuerVerificationFlow", 0);
  [v9 subject:@"provisioning" sendEvent:v10];

  currentStep = self->_currentStep;
  v13 = pk_Payment_log(v12);
  v14 = v13;
  if (currentStep == 100)
  {
    v15 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v17 = pk_Payment_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = [passCopy uniqueID];
        v22 = 138412290;
        v23 = uniqueID;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: starting issuer verification flow for pass %@", &v22, 0xCu);
      }
    }

    objc_storeStrong(&self->_issuerVerificationPass, pass);
    [(NPKPaymentProvisioningFlowController *)self _requestVerificationOptionsForPass:passCopy context:contextCopy];
  }

  else
  {
    v19 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v19)
    {
      v21 = pk_Payment_log(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_ERROR, "Error: Past initialization step; cannot start issuer verification flow!", &v22, 2u);
      }
    }
  }
}

- (void)handleIssuerVerificationChannel:(id)channel requestContext:(id)context
{
  contextCopy = context;
  channelCopy = channel;
  v10 = NPKAnalyticsEventEntriesForVerificationChannel(channelCopy);
  v8 = MEMORY[0x277D37D28];
  v9 = NPKAnalyticsEventForProvisioningFlowClientInput(@"chooseIssuerVerificationChannel", v10);
  [v8 subject:@"provisioning" sendEvent:v9];

  [(NPKPaymentProvisioningFlowController *)self _updateVerificationForPass:self->_issuerVerificationPass channel:channelCopy context:contextCopy];
}

- (void)handleIssuerVerificationFields:(id)fields requestContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  fieldsCopy = fields;
  contextCopy = context;
  v8 = MEMORY[0x277D37D28];
  v9 = NPKAnalyticsEventForProvisioningFlowClientInput(@"issuerVerificationFields", 0);
  [v8 subject:@"provisioning" sendEvent:v9];

  v11 = pk_Payment_log(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Payment_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      paymentSetupFields = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFields];
      *buf = 138412546;
      v32 = fieldsCopy;
      v33 = 2112;
      v34 = paymentSetupFields;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Handling issuer verification fields: %@ with fields model fields: %@", buf, 0x16u);
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = fieldsCopy;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        fieldsModel = self->_fieldsModel;
        identifier = [v21 identifier];
        v24 = [(PKPaymentSetupFieldsModel *)fieldsModel paymentSetupFieldWithIdentifier:identifier];

        currentValue = [v21 currentValue];
        [v24 setCurrentValue:currentValue];
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  [(NPKPaymentProvisioningFlowController *)self _handleVerificationFieldsForPass:self->_issuerVerificationPass context:contextCopy];
}

- (void)handleIssuerVerificationCode:(id)code requestContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  contextCopy = context;
  v8 = MEMORY[0x277D37D28];
  v9 = NPKAnalyticsEventForProvisioningFlowClientInput(@"issuerVerificationCode", 0);
  [v8 subject:@"provisioning" sendEvent:v9];

  v11 = pk_Payment_log(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Payment_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = [codeCopy length];
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Handling issuer verification code of length %lu", &v15, 0xCu);
    }
  }

  [(NPKPaymentProvisioningFlowController *)self _handleVerificationCode:codeCopy forPass:self->_issuerVerificationPass context:contextCopy];
}

- (void)skipIssuerVerification:(id)verification
{
  verificationCopy = verification;
  v5 = MEMORY[0x277D37D28];
  v6 = NPKAnalyticsEventForProvisioningFlowClientInput(@"skipIssuerVerification", 0);
  [v5 subject:@"provisioning" sendEvent:v6];

  if ((self->_currentStep - 230) > 0x14 || ((1 << (LOBYTE(self->_currentStep) + 26)) & 0x100401) == 0)
  {
    v9 = pk_Payment_log(v7);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v12 = pk_Payment_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: Not on an issuer verification step; cannot skip issuer verification!", v13, 2u);
      }
    }
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _handleEndOfProvisioningFlowForCurrentPass:self->_issuerVerificationPass requestContext:verificationCopy];
  }
}

- (void)startInAppProvisioningFlowWithConfiguration:(id)configuration requestContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  contextCopy = context;
  v9 = MEMORY[0x277D37D28];
  v10 = NPKAnalyticsEventForProvisioningFlowClientInput(@"startInAppProvisioningFlow", 0);
  [v9 subject:@"provisioning" sendEvent:v10];

  currentStep = self->_currentStep;
  v13 = pk_Payment_log(v12);
  v14 = v13;
  if (currentStep == 100)
  {
    v15 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v17 = pk_Payment_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = configurationCopy;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: starting in-app provisioning flow with configuration %@", &v21, 0xCu);
      }
    }

    objc_storeStrong(&self->_inAppProvisioningRequestConfiguration, configuration);
    [(NPKPaymentProvisioningFlowController *)self _handleProvisioningFlowStarted:contextCopy];
  }

  else
  {
    v18 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v18)
    {
      v20 = pk_Payment_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_ERROR, "Error: Past initialization step; cannot start issuer verification flow!", &v21, 2u);
      }
    }
  }
}

- (void)handleIssuerApplicationAddRequest:(id)request requestContext:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  contextCopy = context;
  v9 = MEMORY[0x277D37D28];
  v10 = NPKAnalyticsEventForProvisioningFlowClientInput(@"issuerApplicationAddRequest", 0);
  [v9 subject:@"provisioning" sendEvent:v10];

  v12 = pk_Payment_log(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v15 = pk_Payment_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = requestCopy;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Handling issuer add request %@", &v23, 0xCu);
    }
  }

  if (self->_currentStep == 300)
  {
    if (requestCopy)
    {
      inAppProvisioningGetRequestTimer = self->_inAppProvisioningGetRequestTimer;
      if (inAppProvisioningGetRequestTimer)
      {
        dispatch_source_cancel(inAppProvisioningGetRequestTimer);
        v17 = self->_inAppProvisioningGetRequestTimer;
        self->_inAppProvisioningGetRequestTimer = 0;
      }

      objc_storeStrong(&self->_inAppProvisioningRequest, request);
      [requestCopy setPublicKeyHash:self->_inAppProvisioningPublicKeyHash];
      [requestCopy setNonce:self->_inAppProvisioningNonce];
      [(NPKPaymentProvisioningFlowController *)self _performNextActionForProvisioningState:contextCopy];
    }

    else
    {
      v22 = PKDisplayableErrorForCommonType();
      [(NPKPaymentProvisioningFlowController *)self _endProvisioningFlowWithError:v22 requestContext:contextCopy];
    }
  }

  else
  {
    v18 = pk_Payment_log(v14);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (v19)
    {
      v21 = pk_Payment_log(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_ERROR, "Error: Not on get issuer add request step; cannot handle request!", &v23, 2u);
      }
    }
  }
}

- (void)_performRequirementsOrEligibilityForInAppProvisioning:(id)provisioning
{
  if (self->_inAppProvisioningRequest)
  {
    [(NPKPaymentProvisioningFlowController *)self _performEligibility:provisioning];
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _fetchInAppProvisioningCertificates:provisioning];
  }
}

- (void)_fetchInAppProvisioningCertificates:(id)certificates
{
  certificatesCopy = certificates;
  v5 = objc_alloc(MEMORY[0x277D38070]);
  encryptionScheme = [(PKAddPaymentPassRequestConfiguration *)self->_inAppProvisioningRequestConfiguration encryptionScheme];
  v7 = [v5 initWithEncryptionScheme:encryptionScheme];

  webService = self->_webService;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke;
  v10[3] = &unk_279946288;
  v10[4] = self;
  v11 = certificatesCopy;
  v9 = certificatesCopy;
  [(PKPaymentWebService *)webService issuerProvisioningCertificatesForRequest:v7 withCompletion:v10];
}

void __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke_2;
  v11[3] = &unk_279946260;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke_2(id *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  if (v2)
  {
    v4 = *(v3 + 13);
    v5 = [v2 nonce];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke_3;
    v20[3] = &unk_279946238;
    *&v6 = a1[4];
    *(&v6 + 1) = a1[5];
    v19 = v6;
    v7 = a1[6];
    v8 = a1[7];
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v21 = v19;
    v22 = v9;
    [v4 signNonce:v5 withCompletion:v20];

    v10 = v21;
  }

  else
  {
    v11 = [*(v3 + 3) displayableErrorForProvisioningError:a1[7]];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = PKDisplayableErrorForCommonType();
    }

    v10 = v13;

    v15 = pk_Payment_log(v14);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v18 = pk_Payment_log(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v10;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: No response from issuer provisioning certificates endpoint: %@", buf, 0xCu);
      }
    }

    [a1[5] _sendDidEncounterError:v10 requestContext:a1[6]];
  }
}

void __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke_4;
  block[3] = &unk_279946210;
  v11 = v3;
  *&v4 = *(a1 + 32);
  *(&v4 + 1) = *(a1 + 40);
  v9 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v12 = v9;
  v13 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    [*(a1 + 40) setNonceSignature:?];
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v4 = *(a1 + 56);

    [v2 _fetchAddRequestWithCertificatesResponse:v3 requestContext:v4];
  }

  else
  {
    v5 = [*(*(a1 + 48) + 24) displayableErrorForProvisioningError:*(a1 + 64)];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = PKDisplayableErrorForCommonType();
    }

    v8 = v7;

    v10 = pk_Payment_log(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = pk_Payment_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: No response from issuer provisioning certificates endpoint: %@", &v14, 0xCu);
      }
    }

    [*(a1 + 48) _sendDidEncounterError:v8 requestContext:*(a1 + 56)];
  }
}

- (void)_fetchAddRequestWithCertificatesResponse:(id)response requestContext:(id)context
{
  responseCopy = response;
  contextCopy = context;
  inAppProvisioningGetRequestTimer = self->_inAppProvisioningGetRequestTimer;
  if (inAppProvisioningGetRequestTimer)
  {
    dispatch_source_cancel(inAppProvisioningGetRequestTimer);
    v9 = self->_inAppProvisioningGetRequestTimer;
    self->_inAppProvisioningGetRequestTimer = 0;
  }

  v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  v11 = self->_inAppProvisioningGetRequestTimer;
  self->_inAppProvisioningGetRequestTimer = v10;

  v12 = self->_inAppProvisioningGetRequestTimer;
  v13 = dispatch_time(0, 20000000000);
  dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v14 = self->_inAppProvisioningGetRequestTimer;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __96__NPKPaymentProvisioningFlowController__fetchAddRequestWithCertificatesResponse_requestContext___block_invoke;
  v27 = &unk_2799454E0;
  selfCopy = self;
  v29 = contextCopy;
  v15 = contextCopy;
  dispatch_source_set_event_handler(v14, &v24);
  dispatch_resume(self->_inAppProvisioningGetRequestTimer);
  publicKeyHash = [responseCopy publicKeyHash];
  inAppProvisioningPublicKeyHash = self->_inAppProvisioningPublicKeyHash;
  self->_inAppProvisioningPublicKeyHash = publicKeyHash;

  nonce = [responseCopy nonce];
  inAppProvisioningNonce = self->_inAppProvisioningNonce;
  self->_inAppProvisioningNonce = nonce;

  v20 = [[NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext alloc] initWithRequestContext:v15];
  certificates = [responseCopy certificates];
  [(NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext *)v20 setCertificates:certificates];

  nonce2 = [responseCopy nonce];
  [(NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext *)v20 setNonce:nonce2];

  nonceSignature = [responseCopy nonceSignature];
  [(NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext *)v20 setNonceSignature:nonceSignature];

  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:300 withContext:v20];
}

uint64_t __96__NPKPaymentProvisioningFlowController__fetchAddRequestWithCertificatesResponse_requestContext___block_invoke(uint64_t a1)
{
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: In-app provisioning timed out waiting for response from client", v9, 2u);
    }
  }

  v6 = *(a1 + 32);
  v7 = PKDisplayableErrorForCommonType();
  [v6 _endProvisioningFlowWithError:v7 requestContext:*(a1 + 40)];

  return [*(a1 + 32) reset];
}

- (void)_handleProvisioningFlowStarted:(id)started
{
  startedCopy = started;
  v5 = [[NPKPaymentProvisioningFlowControllerPreconditionsStepContext alloc] initWithRequestContext:startedCopy];
  objc_storeStrong(&self->_preconditionsRequestContext, v5);
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:110 withContext:v5];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  webService = self->_webService;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke;
  v10[3] = &unk_279946350;
  v10[4] = self;
  v11 = startedCopy;
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = startedCopy;
  [(NPKPaymentProvisioningFlowController *)self _configureWebServiceIfNecessary:webService completion:v10];
}

void __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 1)
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_2;
    aBlock[3] = &unk_2799462B0;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v27 = v28;
    aBlock[4] = v6;
    v25 = v7;
    v26 = *(a1 + 48);
    v8 = _Block_copy(aBlock);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_3;
    v20[3] = &unk_2799462D8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v23 = v28;
    v20[4] = v9;
    v21 = v10;
    v22 = *(a1 + 48);
    v11 = _Block_copy(v20);
    v12 = *(a1 + 32);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_4;
    v16[3] = &unk_279946328;
    v16[4] = v12;
    v13 = v8;
    v17 = v13;
    v19 = *(a1 + 56);
    v14 = v11;
    v18 = v14;
    [v12 _verifyPasscodeStateIfNecessaryWithCompletion:v16];

    _Block_object_dispose(v28, 8);
  }

  else
  {
    v15 = PKDisplayableErrorForCommonType();
    [*(a1 + 32) _endProvisioningFlowWithError:v15 requestContext:*(a1 + 40)];
  }
}

void __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) _handlePreconditionsVerified:*(a1 + 40)];
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    [*(a1 + 48) setPreconditionsState:2];
    [*(a1 + 32) _performTransitionToStep:110 withContext:*(a1 + 48)];
  }

  else
  {
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = PKDisplayableErrorForCommonType();
    }

    v7 = v6;
    [*(a1 + 32) _endProvisioningFlowWithError:v6 requestContext:*(a1 + 40)];
  }
}

uint64_t __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_3(uint64_t a1)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) _handlePreconditionsVerified:*(a1 + 40)];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  [*(a1 + 48) setPreconditionsState:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _performTransitionToStep:110 withContext:v3];
}

void __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    if (*(v6 + 56))
    {
      [*(v6 + 24) validatePreconditionsAndRegister:*(a1 + 40)];
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_5;
      v8[3] = &unk_279946300;
      v8[4] = v6;
      v9 = *(a1 + 40);
      v11 = 45;
      v12 = *(a1 + 56);
      v13 = 13;
      v10 = *(a1 + 48);
      [v7 preflightWithRequirements:45 update:v8];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v5)
  {
    if ([v5 code] != 5 || (objc_msgSend(*(*(a1 + 32) + 24), "webService"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "paymentSetupSupportedInRegion"), v6, v7 != 1))
    {
      v8 = *(*(a1 + 40) + 16);
LABEL_11:
      v8();
      goto LABEL_12;
    }

LABEL_10:
    v8 = *(*(a1 + 40) + 16);
    goto LABEL_11;
  }

  if ((*(a1 + 56) & ~a2) == 0)
  {
    v9 = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v11 = v10;
    v12 = *(a1 + 64);
    v13 = pk_Payment_log(v9);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v16 = pk_Payment_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136315394;
        v26 = "[NPKPaymentProvisioningFlowController _handleProvisioningFlowStarted:]_block_invoke_5";
        v27 = 2048;
        v28 = v11 - v12;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: %s: time taken to all requirements = %fs", &v25, 0x16u);
      }
    }

    goto LABEL_10;
  }

  if ((*(a1 + 72) & ~a2) == 0)
  {
    v17 = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v19 = v18;
    v20 = *(a1 + 64);
    v21 = pk_Payment_log(v17);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (v22)
    {
      v24 = pk_Payment_log(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136315394;
        v26 = "[NPKPaymentProvisioningFlowController _handleProvisioningFlowStarted:]_block_invoke";
        v27 = 2048;
        v28 = v19 - v20;
        _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEFAULT, "Notice: %s: time taken to min requirements = %fs", &v25, 0x16u);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

LABEL_12:
}

- (void)_handlePreconditionsVerified:(id)verified
{
  verifiedCopy = verified;
  v5 = [[NPKPaymentProvisioningFlowControllerWelcomeStepContext alloc] initWithRequestContext:verifiedCopy];

  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:120 withContext:v5];
}

- (void)_handleProductChosen:(id)chosen includeCardsOnFile:(BOOL)file requestContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  chosenCopy = chosen;
  contextCopy = context;
  v10 = pk_Payment_log(contextCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = chosenCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Product chosen: %@", buf, 0xCu);
    }
  }

  IsSetupAssistant = NPKPaymentProvisioningSetupContextIsSetupAssistant(self->_setupContext);
  provisioningController = self->_provisioningController;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __95__NPKPaymentProvisioningFlowController__handleProductChosen_includeCardsOnFile_requestContext___block_invoke;
  v18[3] = &unk_279946378;
  v18[4] = self;
  v19 = chosenCopy;
  fileCopy = file;
  v20 = contextCopy;
  v16 = contextCopy;
  v17 = chosenCopy;
  [(PKPaymentProvisioningController *)provisioningController setupProductForProvisioning:v17 includePurchases:!IsSetupAssistant withCompletionHandler:v18];
}

void __95__NPKPaymentProvisioningFlowController__handleProductChosen_includeCardsOnFile_requestContext___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2)
  {
    objc_storeStrong((*(a1 + 32) + 184), *(a1 + 40));
    if (*(a1 + 56))
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    [*(a1 + 32) _transitionBasedOnCredentials:v10 product:*(a1 + 40) requestContext:*(a1 + 48)];
  }

  else
  {
    v11 = pk_Payment_log(v8);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v14 = pk_Payment_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v7;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when setting up product for provisioning: %@", &v15, 0xCu);
      }
    }

    [*(a1 + 32) _sendDidEncounterError:v7 requestContext:*(a1 + 48)];
  }
}

- (void)_handleAppleBalanceProductChosen:(id)chosen requestContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  chosenCopy = chosen;
  contextCopy = context;
  v9 = pk_Payment_log(contextCopy);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_Payment_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = chosenCopy;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Apple Balance product chosen. Requesting resolve local eligibility with product: %@", buf, 0xCu);
    }
  }

  v13 = [objc_alloc(MEMORY[0x277D37D40]) initWithProduct:chosenCopy eligibilitySource:1];
  [(NPKPaymentProvisioningFlowController *)self setCurrentAppleBalanceCredential:v13];

  objc_storeStrong(&self->_currentProduct, chosen);
  provisioningController = [(NPKPaymentProvisioningFlowController *)self provisioningController];
  currentAppleBalanceCredential = [(NPKPaymentProvisioningFlowController *)self currentAppleBalanceCredential];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke;
  v18[3] = &unk_2799463A0;
  v18[4] = self;
  v19 = contextCopy;
  v20 = chosenCopy;
  v16 = chosenCopy;
  v17 = contextCopy;
  [provisioningController resolveLocalEligibilityRequirementsForAppleBalanceCredential:currentAppleBalanceCredential withCompletion:v18];
}

void __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v24 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEBUG, "Debug: Standalone: Apple Balance. Local eligibility resolved. Error: %@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_106;
  aBlock[3] = &unk_2799463A0;
  v8 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v21 = v8;
  v22 = *(a1 + 48);
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (v3)
  {
    (*(v9 + 2))(v9, v3);
  }

  else
  {
    v11 = [*(a1 + 32) _newPaymentEligibilityRequest];
    v12 = pk_Payment_log(v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v15 = pk_Payment_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Apple Balance. Requesting eligibility", buf, 2u);
      }
    }

    v16 = *(a1 + 32);
    v17 = *(v16 + 24);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_108;
    v18[3] = &unk_2799463C8;
    v18[4] = v16;
    v19 = v10;
    [v17 requestEligibility:v11 withCompletionHandler:v18];
  }
}

void __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_106(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_2;
  v7[3] = &unk_279946260;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 48);
  v6 = v3;
  NPKGuaranteeMainThread(v7);
}

uint64_t __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 _sendDidEncounterError:v3 requestContext:a1[6]];
  }

  else
  {
    return [v2 _transitionToAppleBalanceAccountDetailsWithProduct:a1[7] requestContext:a1[6]];
  }
}

void __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_108(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = pk_Payment_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Apple Balance. Eligibility resolved. Error: %@", buf, 0xCu);
    }
  }

  [*(*(a1 + 32) + 176) setEligibilityResponse:v6];
  [v6 eligibilityStatus];

  v11 = PKProvisioningErrorForAppleBalanceEligibilityStatus();
  if (v11)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = [MEMORY[0x277D37CD0] sharedInstance];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_110;
    v13[3] = &unk_279944F48;
    v14 = *(a1 + 40);
    [v12 validateAppleBalanceSecurityRequirementsWithCompletion:v13];
  }
}

void __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_110(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5 || (a2 & 1) == 0)
  {
    v8 = pk_Payment_log(v5);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: Standalone: Apple Balance security requirements not met. Could not verify/setup Apple Pay cloud store container. Error: %@", &v14, 0xCu);
      }
    }

    v12 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpT.isa);
    v13 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpM.isa);
    v7 = PKDisplayableErrorCustom();
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_handleAppleBalanceAccountDetailsAcknowledgedWithProduct:(id)product requestContext:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  productCopy = product;
  contextCopy = context;
  v8 = pk_Payment_log(contextCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = productCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Apple Balance. Acknowledged account details with product: %@", &v12, 0xCu);
    }
  }

  [(NPKPaymentProvisioningFlowController *)self _performNextActionForProvisioningState:contextCopy];
}

- (void)_handleProceedWithCredentials:(id)credentials chosenByUser:(BOOL)user requestContext:(id)context
{
  userCopy = user;
  v23 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  contextCopy = context;
  v10 = pk_Payment_log(contextCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = credentialsCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Credentials chosen: %@", &v21, 0xCu);
    }
  }

  if (userCopy)
  {
    credentialProvisioningQueue = [(PKPaymentProvisioningController *)self->_provisioningController credentialProvisioningQueue];
    [credentialProvisioningQueue setCredentialsToProvision:credentialsCopy];
    nextCredentialToProvision = [credentialProvisioningQueue nextCredentialToProvision];
  }

  else
  {
    v16 = [credentialsCopy count];
    if (v16 >= 2)
    {
      v17 = pk_Payment_log(v16);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (v18)
      {
        v20 = pk_Payment_log(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_ERROR, "Error: >1 credentials when not chosen by user!", &v21, 2u);
        }
      }
    }

    nextCredentialToProvision = [credentialsCopy firstObject];
  }

  [(NPKPaymentProvisioningFlowController *)self _startProvisioningForCredential:nextCredentialToProvision requestContext:contextCopy];
}

- (void)_startProvisioningForCredential:(id)credential requestContext:(id)context
{
  credentialCopy = credential;
  contextCopy = context;
  objc_storeStrong(&self->_currentCredential, credential);
  v9 = objc_alloc(MEMORY[0x277D38110]);
  v10 = [v9 initWithPaymentSetupFields:MEMORY[0x277CBEBF8]];
  fieldsModel = self->_fieldsModel;
  self->_fieldsModel = v10;

  if ([credentialCopy isAccountCredential])
  {
    accountCredential = [credentialCopy accountCredential];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __87__NPKPaymentProvisioningFlowController__startProvisioningForCredential_requestContext___block_invoke;
    v14[3] = &unk_2799463F0;
    v15 = accountCredential;
    selfCopy = self;
    v17 = contextCopy;
    v13 = accountCredential;
    [(NPKPaymentProvisioningFlowController *)self _requestPassDetailsForAccountCredential:v13 withCompletionHandler:v14];
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _requestRequirements:contextCopy];
  }
}

void __87__NPKPaymentProvisioningFlowController__startProvisioningForCredential_requestContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);

    [v4 _sendDidEncounterError:? requestContext:?];
  }

  else
  {
    v5 = [*(a1 + 32) passDetailsResponse];
    v6 = [v5 status];

    if (v6 == 1)
    {
      v7 = [*(a1 + 32) account];
      v9 = [v7 creditDetails];

      if (v9 && ([v9 termsAcceptanceRequired] & 1) == 0)
      {
        [*(a1 + 40) setTermsAcceptedOutOfBand:1];
      }

      [*(a1 + 40) _requestRequirements:*(a1 + 48)];
    }

    else
    {
      v8 = *(a1 + 40);
      v9 = PKDisplayableErrorForCommonType();
      [v8 _sendDidEncounterError:v9 requestContext:*(a1 + 48)];
    }
  }
}

- (void)_performNextActionForProvisioningState:(id)state
{
  v27 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  state = [(PKPaymentProvisioningController *)self->_provisioningController state];
  v6 = pk_Payment_log(state);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134217984;
      v24 = state;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: current State is %ld", &v23, 0xCu);
    }
  }

  v10 = [(NPKPaymentProvisioningFlowController *)self _noteProvisioningStateChangeForReaderMode:state];
  if (state > 2)
  {
    switch(state)
    {
      case 3:
        [(NPKPaymentProvisioningFlowController *)self _performTerms:stateCopy];
        goto LABEL_31;
      case 4:
        [(NPKPaymentProvisioningFlowController *)self _performProvision:stateCopy];
        goto LABEL_31;
      case 5:
        [(NPKPaymentProvisioningFlowController *)self _handleFinished:stateCopy];
        goto LABEL_31;
    }

    goto LABEL_18;
  }

  switch(state)
  {
    case 0:
      if (!self->_inAppProvisioningRequestConfiguration)
      {
        [(NPKPaymentProvisioningFlowController *)self _requestRequirements:stateCopy];
        goto LABEL_31;
      }

LABEL_23:
      [(NPKPaymentProvisioningFlowController *)self _performRequirementsOrEligibilityForInAppProvisioning:stateCopy];
      goto LABEL_31;
    case 1:
      if (!self->_inAppProvisioningRequestConfiguration)
      {
        [(NPKPaymentProvisioningFlowController *)self _performEligibility:stateCopy];
        goto LABEL_31;
      }

      goto LABEL_23;
    case 2:
      _isPasscodeUpgradeRequired = [(NPKPaymentProvisioningFlowController *)self _isPasscodeUpgradeRequired];
      if (_isPasscodeUpgradeRequired)
      {
        [(NPKPaymentProvisioningFlowController *)self _performPasscodeUpgrade:stateCopy];
      }

      else
      {
        v19 = pk_Payment_log(_isPasscodeUpgradeRequired);
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

        if (v20)
        {
          v22 = pk_Payment_log(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v23) = 0;
            _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Skipping passcode upgrade", &v23, 2u);
          }
        }

        [(NPKPaymentProvisioningFlowController *)self _handlePasscodeUpgradeCompleteWithSuccess:1 error:0 requestContext:stateCopy];
      }

      goto LABEL_31;
  }

LABEL_18:
  v12 = pk_Payment_log(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v15 = pk_Payment_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = PKPaymentProvisioningControllerStateToString();
      v23 = 138543618;
      v24 = v17;
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Warning: Error: %{public}@ does not know how to handle provisioning state : %{public}@.", &v23, 0x16u);
    }
  }

LABEL_31:
}

- (id)_newPaymentRequirementsRequest
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_currentCredential)
  {
    v3 = pk_Payment_log(self);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v6 = pk_Payment_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        currentCredential = self->_currentCredential;
        v24 = 138412290;
        v25 = currentCredential;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Forming payment requirements request from current credential %@", &v24, 0xCu);
      }
    }

    v8 = objc_alloc(MEMORY[0x277D380E8]);
    v9 = self->_currentCredential;
    return [v8 initWithPaymentCredential:v9];
  }

  currentAppleBalanceCredential = self->_currentAppleBalanceCredential;
  v11 = pk_Payment_log(self);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (currentAppleBalanceCredential)
  {
    if (v12)
    {
      v14 = pk_Payment_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_currentAppleBalanceCredential;
        v24 = 138412290;
        v25 = v15;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Forming payment requirements request from current Apple Balance credential %@", &v24, 0xCu);
      }
    }

    v8 = objc_alloc(MEMORY[0x277D380E8]);
    v9 = self->_currentAppleBalanceCredential;
    return [v8 initWithPaymentCredential:v9];
  }

  if (v12)
  {
    v18 = pk_Payment_log(v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Forming payment requirements request from fields model", &v24, 2u);
    }
  }

  v19 = objc_alloc(MEMORY[0x277D380E8]);
  v20 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*MEMORY[0x277D38930]];
  submissionString = [v20 submissionString];
  v22 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*MEMORY[0x277D38938]];
  submissionString2 = [v22 submissionString];
  v16 = [v19 initWithCardholderName:submissionString primaryAccountNumber:submissionString2];

  return v16;
}

- (id)_newPaymentEligibilityRequest
{
  v52 = *MEMORY[0x277D85DE8];
  if (self->_inAppProvisioningRequest)
  {
    v3 = pk_Payment_log(self);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v6 = pk_Payment_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        inAppProvisioningRequest = self->_inAppProvisioningRequest;
        v50 = 138412290;
        v51 = inAppProvisioningRequest;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Forming payment eligibility request from in-app provisioning request %@", &v50, 0xCu);
      }
    }

    v8 = [objc_alloc(MEMORY[0x277D38058]) initWithSource:2];
    encryptionVersion = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest encryptionVersion];
    [v8 setEncryptionVersion:encryptionVersion];

    encryptedPassData = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest encryptedPassData];
    [v8 setEncryptedCardData:encryptedPassData];

    publicKeyHash = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest publicKeyHash];
    [v8 setPublicKeyHash:publicKeyHash];

    ephemeralPublicKey = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest ephemeralPublicKey];
    [v8 setEphemeralPublicKey:ephemeralPublicKey];

    wrappedKey = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest wrappedKey];
    [v8 setWrappedKey:wrappedKey];

    issuerIdentifier = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest issuerIdentifier];
    [v8 setIssuerIdentifier:issuerIdentifier];

    hostApplicationIdentifier = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest hostApplicationIdentifier];
    [v8 setHostApplicationIdentifier:hostApplicationIdentifier];

    hostApplicationVersion = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest hostApplicationVersion];
    [v8 setHostApplicationVersion:hostApplicationVersion];

    fPInfo = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest FPInfo];
    [v8 setFPInfo:fPInfo];

    nonce = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest nonce];
    hexEncoding = [nonce hexEncoding];
    [v8 setNonce:hexEncoding];

    return v8;
  }

  if (self->_currentCredential)
  {
    v20 = pk_Payment_log(self);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v23 = pk_Payment_log(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        currentCredential = self->_currentCredential;
        v50 = 138412290;
        v51 = currentCredential;
        _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: Forming payment eligibility request from current credential %@", &v50, 0xCu);
      }
    }

    v25 = objc_alloc(MEMORY[0x277D38058]);
    v26 = self->_currentCredential;
    return [v25 initWithPaymentCredential:v26];
  }

  currentAppleBalanceCredential = self->_currentAppleBalanceCredential;
  v28 = pk_Payment_log(self);
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

  if (currentAppleBalanceCredential)
  {
    if (v29)
    {
      v31 = pk_Payment_log(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = self->_currentAppleBalanceCredential;
        v50 = 138412290;
        v51 = v32;
        _os_log_impl(&dword_25B300000, v31, OS_LOG_TYPE_DEFAULT, "Notice: Forming payment eligibility request from current Apple Balance credential %@", &v50, 0xCu);
      }
    }

    v25 = objc_alloc(MEMORY[0x277D38058]);
    v26 = self->_currentAppleBalanceCredential;
    return [v25 initWithPaymentCredential:v26];
  }

  if (v29)
  {
    v34 = pk_Payment_log(v30);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v50) = 0;
      _os_log_impl(&dword_25B300000, v34, OS_LOG_TYPE_DEFAULT, "Notice: Forming payment eligibility request from fields model", &v50, 2u);
    }
  }

  v8 = [objc_alloc(MEMORY[0x277D38058]) initWithSource:1];
  v35 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*MEMORY[0x277D38930]];
  submissionString = [v35 submissionString];
  [v8 setCardholderName:submissionString];

  if ([v35 source] == 1)
  {
    v37 = 2;
  }

  else
  {
    v37 = 1;
  }

  [v8 setCardholderNameInputMethod:v37];
  v38 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*MEMORY[0x277D38938]];
  submissionString2 = [v38 submissionString];
  [v8 setPrimaryAccountNumber:submissionString2];

  if ([v38 source] == 1)
  {
    v40 = 2;
  }

  else
  {
    v40 = 1;
  }

  [v8 setPrimaryAccountNumberInputMethod:v40];
  v41 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*MEMORY[0x277D38918]];
  submissionString3 = [v41 submissionString];
  [v8 setExpiration:submissionString3];

  if ([v41 source] == 1)
  {
    v43 = 2;
  }

  else
  {
    v43 = 1;
  }

  [v8 setExpirationInputMethod:v43];
  productIdentifier = [(PKPaymentProvisioningController *)self->_provisioningController productIdentifier];
  [v8 setProductIdentifier:productIdentifier];

  fieldsModel = [(NPKPaymentProvisioningFlowController *)self fieldsModel];
  v46 = *MEMORY[0x277D38948];
  v47 = [fieldsModel submissionValuesForDestination:*MEMORY[0x277D38948]];

  [v8 setOverlayParameters:v47];
  fieldsModel2 = [(NPKPaymentProvisioningFlowController *)self fieldsModel];
  v49 = [fieldsModel2 secureSubmissionValuesForDestination:v46];

  [v8 setSecureOverlayParameters:v49];
  return v8;
}

- (id)_newPaymentProvisioningRequest
{
  v3 = objc_alloc(MEMORY[0x277D38090]);
  eligibilityResponse = [(PKPaymentProvisioningController *)self->_provisioningController eligibilityResponse];
  v5 = [v3 initWithEligibilityResponse:eligibilityResponse];

  inAppProvisioningRequest = self->_inAppProvisioningRequest;
  if (inAppProvisioningRequest)
  {
    activationData = [(PKAddPaymentPassRequest *)inAppProvisioningRequest activationData];
    [v5 setActivationData:activationData];

    if ([(PKAddPaymentPassRequestConfiguration *)self->_inAppProvisioningRequestConfiguration style]== PKAddPaymentPassStyleAccess)
    {
      [v5 setStyle:1];
    }
  }

  else
  {
    provisioningController = [(NPKPaymentProvisioningFlowController *)self provisioningController];
    eligibilityResponse2 = [provisioningController eligibilityResponse];
    [v5 setEligibilityResponse:eligibilityResponse2];

    v10 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*MEMORY[0x277D38928]];
    submissionString = [v10 submissionString];
    [v5 setCardSecurityCode:submissionString];

    v12 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*MEMORY[0x277D38930]];
    submissionString2 = [v12 submissionString];
    [v5 setCardholderName:submissionString2];

    fieldsModel = [(NPKPaymentProvisioningFlowController *)self fieldsModel];
    v15 = *MEMORY[0x277D38950];
    v16 = [fieldsModel submissionValuesForDestination:*MEMORY[0x277D38950]];

    [v5 setOverlayParameters:v16];
    fieldsModel2 = [(NPKPaymentProvisioningFlowController *)self fieldsModel];
    v18 = [fieldsModel2 secureSubmissionValuesForDestination:v15];

    [v5 setSecureOverlayParameters:v18];
  }

  return v5;
}

- (void)_requestRequirements:(id)requirements
{
  v28 = *MEMORY[0x277D85DE8];
  requirementsCopy = requirements;
  v5 = pk_Payment_log([(PKPaymentProvisioningController *)self->_provisioningController resetForNewProvisioning]);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: performing requirements", buf, 2u);
    }
  }

  currentCredential = self->_currentCredential;
  if (currentCredential && [(PKPaymentCredential *)currentCredential isPurchasedProductCredential])
  {
    purchasedProductCredential = [(PKPaymentCredential *)self->_currentCredential purchasedProductCredential];
    v11 = self->_provisioningController;
    product = [purchasedProductCredential product];
    v13 = [product provisioningMethodMetadataForType:*MEMORY[0x277D388D0]];
    [(PKPaymentProvisioningController *)v11 resolveRequirementsUsingProvisioningMethodMetadata:v13];

    requirementsResponse = [(PKPaymentProvisioningController *)v11 requirementsResponse];
    [purchasedProductCredential setRequirementsResponse:requirementsResponse];

    v15 = pk_Payment_log([(NPKPaymentProvisioningFlowController *)self setTermsAcceptedOutOfBand:1]);
    LODWORD(v13) = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v17 = pk_Payment_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        product2 = [purchasedProductCredential product];
        displayName = [product2 displayName];
        summaryMetadataDescription = [purchasedProductCredential summaryMetadataDescription];
        *buf = 138412546;
        v25 = displayName;
        v26 = 2112;
        v27 = summaryMetadataDescription;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Moving directly to next provisioning step for purchased product %@ (%@).", buf, 0x16u);
      }
    }

    [(NPKPaymentProvisioningFlowController *)self _performNextActionForProvisioningState:requirementsCopy];
  }

  else
  {
    purchasedProductCredential = [(NPKPaymentProvisioningFlowController *)self _newPaymentRequirementsRequest];
    provisioningController = self->_provisioningController;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __61__NPKPaymentProvisioningFlowController__requestRequirements___block_invoke;
    v22[3] = &unk_279946418;
    v22[4] = self;
    v23 = requirementsCopy;
    [(PKPaymentProvisioningController *)provisioningController requestRequirements:purchasedProductCredential withCompletionHandler:v22];
  }
}

void __61__NPKPaymentProvisioningFlowController__requestRequirements___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v15 = pk_Payment_log(v6);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      if (v16)
      {
        v18 = pk_Payment_log(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v47 = 138412290;
          v48 = v7;
          _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when sending requirements request: %@", &v47, 0xCu);
        }
      }

      v19 = *(a1 + 32);
      v20 = [v19[3] displayableErrorForProvisioningError:v7];
    }

    else
    {
      if (v16)
      {
        v32 = pk_Payment_log(v17);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v47) = 0;
          _os_log_impl(&dword_25B300000, v32, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: No response or error from requirements!", &v47, 2u);
        }
      }

      v19 = *(a1 + 32);
      v20 = PKDisplayableErrorForCommonType();
    }

    v14 = v20;
    [v19 _sendDidEncounterError:v20 requestContext:*(a1 + 40)];
    goto LABEL_28;
  }

  v8 = [v5 status];
  if (v8 == 2 || (v8 = PKForcePrivateLabelSetupDisambiguation(), v8))
  {
    v9 = pk_Payment_log(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v12 = pk_Payment_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v47) = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: PKPaymentRequirementsStatusRequirementsAmbiguous is responded by server", &v47, 2u);
      }
    }

    v13 = [*(*(a1 + 32) + 24) requirementsResponse];
    v14 = [v13 possibleProducts];

    [*(a1 + 32) _transitionToProductDisambiguationWithProducts:v14 requestContext:*(a1 + 40)];
LABEL_28:

    goto LABEL_29;
  }

  if ([v5 status] == 1)
  {
    v21 = *(*(a1 + 32) + 136);
    v22 = [v5 requiredPaymentSetupFields];
    [v21 updateWithPaymentSetupFields:v22];

    v23 = [*(*(a1 + 32) + 136) hasIncompletePaymentSetupFields];
    if (v23)
    {
      v24 = [v5 requiredPaymentSetupFields];
      v25 = [v24 count];

      v27 = pk_Payment_log(v26);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

      if (v28)
      {
        v30 = pk_Payment_log(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v47 = 134217984;
          v48 = v25;
          _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Start secondary manual entry with %lu fields.", &v47, 0xCu);
        }
      }

      v31 = *(a1 + 32);
      v14 = [v5 requiredPaymentSetupFields];
      [v31 _transitionToSecondaryManualEntryWithFields:v14 credential:*(*(a1 + 32) + 168) requestContext:*(a1 + 40)];
      goto LABEL_28;
    }

    v42 = pk_Payment_log(v23);
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);

    if (v43)
    {
      v45 = pk_Payment_log(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [*(*(a1 + 32) + 136) paymentSetupFields];
        v47 = 138412290;
        v48 = v46;
        _os_log_impl(&dword_25B300000, v45, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Moving directly to next provisioning step since all fields are complete (%@).", &v47, 0xCu);
      }
    }

    [*(a1 + 32) _performNextActionForProvisioningState:*(a1 + 40)];
  }

  else
  {
    v33 = [v5 status];
    if (!v33 || (v33 = [v5 status], v33 == 3))
    {
      v34 = pk_Payment_log(v33);
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

      if (v35)
      {
        v37 = pk_Payment_log(v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v47) = 0;
          _os_log_impl(&dword_25B300000, v37, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: PKPaymentRequirementsStatusUnknownRequirements or PKPaymentRequirementsStatusCardNotSupported is responded by server", &v47, 2u);
        }
      }

      v38 = objc_opt_class();
      v39 = NPKPaymentCardIneligibleReasonForRequirementsStatus([v5 status]);
      v40 = [v5 learnMoreURL];
      v41 = [v38 _displayableErrorWithIneligibilityReason:v39 learnMoreURL:v40];

      [*(a1 + 32) _sendDidEncounterError:v41 requestContext:*(a1 + 40)];
    }
  }

LABEL_29:
}

- (void)_performEligibility:(id)eligibility
{
  eligibilityCopy = eligibility;
  if ([(NPKPaymentProvisioningFlowController *)self _isResolveLocalEligibilityRequired])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__NPKPaymentProvisioningFlowController__performEligibility___block_invoke;
    v5[3] = &unk_279946440;
    v5[4] = self;
    v6 = eligibilityCopy;
    [(NPKPaymentProvisioningFlowController *)self _performResolveLocalEligibilityARequirements:v6 completion:v5];
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _performProvisioningEligibility:eligibilityCopy];
  }
}

void __60__NPKPaymentProvisioningFlowController__performEligibility___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__NPKPaymentProvisioningFlowController__performEligibility___block_invoke_2;
  v7[3] = &unk_279945880;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  NPKGuaranteeMainThread(v7);
}

uint64_t __60__NPKPaymentProvisioningFlowController__performEligibility___block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 _sendDidEncounterError:v3 requestContext:a1[6]];
  }

  else
  {
    return [v2 _performProvisioningEligibility:a1[6]];
  }
}

- (void)_performProvisioningEligibility:(id)eligibility
{
  eligibilityCopy = eligibility;
  v5 = pk_Payment_log(eligibilityCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: performing provisioning eligibility", buf, 2u);
    }
  }

  _newPaymentEligibilityRequest = [(NPKPaymentProvisioningFlowController *)self _newPaymentEligibilityRequest];
  provisioningController = self->_provisioningController;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke;
  v12[3] = &unk_279946468;
  v12[4] = self;
  v13 = eligibilityCopy;
  v11 = eligibilityCopy;
  [(PKPaymentProvisioningController *)provisioningController requestEligibility:_newPaymentEligibilityRequest withCompletionHandler:v12];
}

void __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke_2;
  v11[3] = &unk_279946260;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v9 = v6;
  v10 = v5;
  NPKGuaranteeMainThread(v11);
}

void __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 eligibilityStatus] == 1)
    {
      v3 = [*(a1 + 40) _isValidateSecurityRequirementsRequired];
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      if (v3)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke_3;
        v23[3] = &unk_279946440;
        v23[4] = v5;
        v24 = v4;
        [v5 _performValidateSecurityRequirements:v24 completion:v23];
      }

      else
      {
        v17 = *(a1 + 40);

        [v17 _handleEligibiltySuccessWithContext:v4];
      }
    }

    else
    {
      v14 = objc_opt_class();
      v15 = NPKPaymentCardIneligibleReasonForEligibilityStatus([*(a1 + 32) eligibilityStatus]);
      v16 = [*(a1 + 32) learnMoreURL];
      v22 = [v14 _displayableErrorWithIneligibilityReason:v15 learnMoreURL:v16];

      [*(a1 + 40) _sendDidEncounterError:v22 requestContext:*(a1 + 48)];
    }
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = pk_Payment_log(0);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      if (v8)
      {
        v10 = pk_Payment_log(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 56);
          *buf = 138412290;
          v26 = v11;
          _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when sending eligibility request: %@", buf, 0xCu);
        }
      }

      v12 = *(a1 + 40);
      v13 = [v12[3] displayableErrorForProvisioningError:*(a1 + 56)];
    }

    else
    {
      if (v8)
      {
        v18 = pk_Payment_log(v9);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: No response or error from requirements!", buf, 2u);
        }
      }

      v12 = *(a1 + 40);
      v13 = PKDisplayableErrorForCommonType();
    }

    v19 = v13;
    [v12 _sendDidEncounterError:v13 requestContext:*(a1 + 48)];

    v20 = *(a1 + 40);
    v21 = *(v20 + 64);
    *(v20 + 64) = 0;
  }
}

void __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke_4;
  v7[3] = &unk_279945880;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  NPKGuaranteeMainThread(v7);
}

uint64_t __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke_4(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 _sendDidEncounterError:v3 requestContext:a1[6]];
  }

  else
  {
    return [v2 _handleEligibiltySuccessWithContext:a1[6]];
  }
}

- (void)_handleEligibiltySuccessWithContext:(id)context
{
  contextCopy = context;
  if (PKEnableDynamicSEAllocation())
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __76__NPKPaymentProvisioningFlowController__handleEligibiltySuccessWithContext___block_invoke;
    v5[3] = &unk_2799464B8;
    v5[4] = self;
    v6 = contextCopy;
    [(NPKPaymentProvisioningFlowController *)self _performSEStorageCheck:v5];
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _performNextActionForProvisioningState:contextCopy];
  }
}

void __76__NPKPaymentProvisioningFlowController__handleEligibiltySuccessWithContext___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __76__NPKPaymentProvisioningFlowController__handleEligibiltySuccessWithContext___block_invoke_2;
  v3[3] = &unk_279946490;
  v5 = a2;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  NPKGuaranteeMainThread(v3);
}

void __76__NPKPaymentProvisioningFlowController__handleEligibiltySuccessWithContext___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v2 _performNextActionForProvisioningState:v3];
  }

  else
  {
    v4 = PKDisplayableErrorForCommonType();
    [*(a1 + 32) _sendDidEncounterError:v4 requestContext:*(a1 + 40)];
  }
}

- (void)_performResolveLocalEligibilityARequirements:(id)requirements completion:(id)completion
{
  completionCopy = completion;
  v6 = pk_Payment_log(completionCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Resolving local eligibility requirements", buf, 2u);
    }
  }

  currentCredential = self->_currentCredential;
  if (!currentCredential)
  {
    currentCredential = self->_currentAppleBalanceCredential;
  }

  provisioningController = self->_provisioningController;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96__NPKPaymentProvisioningFlowController__performResolveLocalEligibilityARequirements_completion___block_invoke;
  v14[3] = &unk_279945218;
  v15 = completionCopy;
  v12 = completionCopy;
  v13 = currentCredential;
  [(PKPaymentProvisioningController *)provisioningController resolveLocalEligibilityRequirementsForAppleBalanceCredential:v13 withCompletion:v14];
}

void __96__NPKPaymentProvisioningFlowController__performResolveLocalEligibilityARequirements_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Local eligibility resolved. Error: %@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)_performValidateSecurityRequirements:(id)requirements completion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277D37CD0] = [MEMORY[0x277D37CD0] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__NPKPaymentProvisioningFlowController__performValidateSecurityRequirements_completion___block_invoke;
  v7[3] = &unk_279944F48;
  v8 = completionCopy;
  v6 = completionCopy;
  [mEMORY[0x277D37CD0] validateAppleBalanceSecurityRequirementsWithCompletion:v7];
}

void __88__NPKPaymentProvisioningFlowController__performValidateSecurityRequirements_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5 || (a2 & 1) == 0)
  {
    v8 = pk_Payment_log(v5);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: Standalone: Apple Balance security requirements not met. Could not verify/setup Apple Pay cloud store container. Error: %@", &v15, 0xCu);
      }
    }

    v12 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpT.isa);
    v13 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpM.isa);
    v7 = PKDisplayableErrorCustom();
  }

  else
  {
    v7 = 0;
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, v7);
  }
}

- (void)_performSEStorageCheck:(id)check
{
  v23 = *MEMORY[0x277D85DE8];
  checkCopy = check;
  v5 = pk_General_log(checkCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Performing SE storage check.", buf, 2u);
    }
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  eligibilityResponse = [(PKPaymentProvisioningController *)self->_provisioningController eligibilityResponse];
  paymentApplications = [eligibilityResponse paymentApplications];

  v12 = [paymentApplications countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(paymentApplications);
        }

        appletTypeIdentifier = [*(*(&v17 + 1) + 8 * v15) appletTypeIdentifier];
        [v9 npkSafelyAddObject:appletTypeIdentifier];

        ++v15;
      }

      while (v13 != v15);
      v13 = [paymentApplications countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v13);
  }

  [(NPKPaymentProvisioningFlowController *)self _checkSpaceAvailableForAppletTypes:v9 triedCleanup:0 completion:checkCopy];
}

- (void)_checkSpaceAvailableForAppletTypes:(id)types triedCleanup:(BOOL)cleanup completion:(id)completion
{
  typesCopy = types;
  completionCopy = completion;
  v10 = MEMORY[0x277D38230];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__NPKPaymentProvisioningFlowController__checkSpaceAvailableForAppletTypes_triedCleanup_completion___block_invoke;
  v13[3] = &unk_2799464E0;
  cleanupCopy = cleanup;
  v14 = typesCopy;
  selfCopy = self;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = typesCopy;
  [v10 getCurrentSnapshot:v13];
}

void __99__NPKPaymentProvisioningFlowController__checkSpaceAvailableForAppletTypes_triedCleanup_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v16 = *(*(a1 + 48) + 16);
LABEL_16:
    v16();
    goto LABEL_17;
  }

  v5 = [v3 canFitAppletTypes:*(a1 + 32)];
  v6 = pk_General_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_General_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromBOOL();
      *buf = 138412546;
      v22 = v10;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: SE storage check returned can fit applets on SE: %@ from snapshot %@", buf, 0x16u);
    }
  }

  v11 = PKDynamicSEAllocationFakeFullSE();
  if (v11)
  {
    v5 = pk_General_log(v11);
    v12 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    LOBYTE(v5) = 0;
    if (v12)
    {
      v5 = pk_General_log(v13);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Overriding canFit to NO b/c fake full se", buf, 2u);
      }

      LOBYTE(v5) = 0;
    }
  }

  if (*(a1 + 56) & 1) != 0 || (v5)
  {
    v16 = *(*(a1 + 48) + 16);
    goto LABEL_16;
  }

  v14 = [objc_alloc(MEMORY[0x277D38228]) initWithWebService:*(*(a1 + 40) + 104)];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __99__NPKPaymentProvisioningFlowController__checkSpaceAvailableForAppletTypes_triedCleanup_completion___block_invoke_126;
  v18[3] = &unk_279945A48;
  v17 = *(a1 + 32);
  v15 = v17.i64[0];
  v19 = vextq_s8(v17, v17, 8uLL);
  v20 = *(a1 + 48);
  [v14 debugPerformSECleanup:v18];

LABEL_17:
}

- (void)_handlePasscodeUpgradeCompleteWithSuccess:(BOOL)success error:(id)error requestContext:(id)context
{
  successCopy = success;
  contextCopy = context;
  [(PKPaymentProvisioningController *)self->_provisioningController passcodeUpgradeCompleted:successCopy];
  if (successCopy)
  {
    [(NPKPaymentProvisioningFlowController *)self _performNextActionForProvisioningState:contextCopy];
  }
}

- (void)_performPasscodeUpgrade:(id)upgrade
{
  upgradeCopy = upgrade;
  provisioningController = self->_provisioningController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__NPKPaymentProvisioningFlowController__performPasscodeUpgrade___block_invoke;
  v7[3] = &unk_279946530;
  v7[4] = self;
  v8 = upgradeCopy;
  v6 = upgradeCopy;
  [(PKPaymentProvisioningController *)provisioningController preflightPasscodeUpgradeWithCompletion:v7];
}

void __64__NPKPaymentProvisioningFlowController__performPasscodeUpgrade___block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__NPKPaymentProvisioningFlowController__performPasscodeUpgrade___block_invoke_2;
  v11[3] = &unk_279946508;
  v15 = a2;
  v16 = a3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __64__NPKPaymentProvisioningFlowController__performPasscodeUpgrade___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 57);
      v8 = *(a1 + 32);
      v12[0] = 67109634;
      v12[1] = v6;
      v13 = 1024;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Preflighted passcode upgrade with success %d, meets policy %d, error %@", v12, 0x18u);
    }
  }

  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 57) == 1)
    {
      [*(a1 + 40) _handlePasscodeUpgradeCompleteWithSuccess:1 error:0 requestContext:*(a1 + 48)];
    }

    else
    {
      v11 = [[NPKPaymentProvisioningFlowControllerPasscodeUpgradeStepContext alloc] initWithRequestContext:*(a1 + 48)];
      [*(a1 + 40) _performTransitionToStep:197 withContext:v11];
    }
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = PKDisplayableErrorForCommonType();
    [v9 _sendDidEncounterError:v10 requestContext:*(a1 + 48)];
  }
}

- (void)_performTerms:(id)terms
{
  provisioningController = self->_provisioningController;
  termsCopy = terms;
  eligibilityResponse = [(PKPaymentProvisioningController *)provisioningController eligibilityResponse];
  termsURL = [eligibilityResponse termsURL];
  [(NPKPaymentProvisioningFlowController *)self _transitionBasedOnTermsForReason:0 URL:termsURL requestContext:termsCopy];
}

- (void)_performProvision:(id)provision
{
  provisionCopy = provision;
  [(NPKPaymentProvisioningFlowController *)self _transitionToProvisioningProgressWithRequestContext:provisionCopy];
  _newPaymentProvisioningRequest = [(NPKPaymentProvisioningFlowController *)self _newPaymentProvisioningRequest];
  v6 = MEMORY[0x277CBFBF8];
  v7 = PKPassKitCoreBundle();
  v8 = [v6 newAssertionForBundle:v7 withReason:@"User-requested Wallet pass provisioning"];

  v10 = pk_General_log(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_General_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Requesting externalized auth...", buf, 2u);
    }
  }

  fidoAuthCoordinator = [(NPKPaymentProvisioningFlowController *)self fidoAuthCoordinator];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__NPKPaymentProvisioningFlowController__performProvision___block_invoke;
  v18[3] = &unk_279946580;
  v18[4] = self;
  v19 = _newPaymentProvisioningRequest;
  v20 = provisionCopy;
  v21 = v8;
  v15 = v8;
  v16 = provisionCopy;
  v17 = _newPaymentProvisioningRequest;
  [fidoAuthCoordinator requestAuthorizationWithCompletion:v18];
}

void __58__NPKPaymentProvisioningFlowController__performProvision___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NPKPaymentProvisioningFlowController__performProvision___block_invoke_2;
  block[3] = &unk_279946558;
  v22 = a2;
  v18 = v8;
  v19 = v9;
  v16 = *(a1 + 32);
  v10 = *(&v16 + 1);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v20 = v16;
  v21 = v13;
  v14 = v9;
  v15 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__NPKPaymentProvisioningFlowController__performProvision___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 80);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v19 = 138412802;
      v20 = v7;
      v21 = 1024;
      v22 = v6;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Created context %@ with success %i and error %@", &v19, 0x1Cu);
    }
  }

  if (*(a1 + 80) == 1)
  {
    v9 = [*(a1 + 48) fidoAuthCoordinator];
    v10 = [v9 context];
    v11 = [v10 externalizedContext];

    [*(*(a1 + 48) + 24) storeExternalizedAuth:v11];
    [*(a1 + 48) _performProvisionWithRequest:*(a1 + 56) requestContext:*(a1 + 64) assertion:*(a1 + 72)];
  }

  else
  {
    if (!*(a1 + 40))
    {
      return;
    }

    v12 = pk_General_log(v4);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v15 = pk_General_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 40);
        v19 = 138412290;
        v20 = v16;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_ERROR, "Error: Standalone: Error: Unable to request and store externalized auth! %@", &v19, 0xCu);
      }
    }

    v17 = [*(a1 + 48) fidoAuthCoordinator];
    [v17 clearContext];

    v18 = *(a1 + 48);
    v11 = [v18[3] displayableErrorForProvisioningError:*(a1 + 40)];
    [v18 _sendDidEncounterError:v11 requestContext:*(a1 + 64)];
  }
}

- (void)_performProvisionWithRequest:(id)request requestContext:(id)context assertion:(id)assertion
{
  contextCopy = context;
  assertionCopy = assertion;
  provisioningController = self->_provisioningController;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__NPKPaymentProvisioningFlowController__performProvisionWithRequest_requestContext_assertion___block_invoke;
  v13[3] = &unk_2799465A8;
  v14 = assertionCopy;
  selfCopy = self;
  v16 = contextCopy;
  v11 = contextCopy;
  v12 = assertionCopy;
  [(PKPaymentProvisioningController *)provisioningController requestProvisioning:request withCompletion:v13];
}

void __94__NPKPaymentProvisioningFlowController__performProvisionWithRequest_requestContext_assertion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [*(a1 + 32) invalidate];
  if (a2)
  {
    [*(a1 + 40) _performNextActionForProvisioningState:*(a1 + 48)];
    v8 = [*(a1 + 40) fidoAuthCoordinator];

    if (v8)
    {
      v9 = [*(a1 + 40) fidoAuthCoordinator];
      [v9 clearContext];
    }
  }

  else
  {
    v10 = pk_Payment_log(v7);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      if (v11)
      {
        v13 = pk_Payment_log(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412290;
          v21 = v6;
          _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when sending provision request: %@", &v20, 0xCu);
        }
      }

      v14 = *(a1 + 40);
      v15 = [v14[3] displayableErrorForProvisioningError:v6];
    }

    else
    {
      if (v11)
      {
        v16 = pk_Payment_log(v12);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: No response or error from provision!", &v20, 2u);
        }
      }

      v14 = *(a1 + 40);
      v15 = PKDisplayableErrorForCommonType();
    }

    v17 = v15;
    [v14 _sendDidEncounterError:v15 requestContext:*(a1 + 48)];

    v18 = *(a1 + 40);
    v19 = *(v18 + 64);
    *(v18 + 64) = 0;
  }
}

- (void)_handleFinished:(id)finished
{
  finishedCopy = finished;
  provisionedPass = [(PKPaymentProvisioningController *)self->_provisioningController provisionedPass];
  if ([(NPKPaymentProvisioningFlowController *)self internalIngestionState]== 7)
  {
    v6 = pk_Payment_log(7);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v9 = pk_Payment_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Provisioning is complete, but waiting for reader mode second tap", v10, 2u);
      }
    }
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _performNextStepForProvisionedPass:provisionedPass requestContext:finishedCopy];
  }
}

- (void)_performNextStepForProvisionedPass:(id)pass moreInfoAcknowledged:(BOOL)acknowledged requestContext:(id)context
{
  passCopy = pass;
  contextCopy = context;
  webService = [(PKPaymentProvisioningController *)self->_provisioningController webService];
  targetDevice = [webService targetDevice];
  secureElementIdentifiers = [targetDevice secureElementIdentifiers];
  [passCopy updateDevicePaymentApplicationsWithSecureElementIdentifiers:secureElementIdentifiers];

  devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
  state = [devicePrimaryPaymentApplication state];

  moreInfoItems = [(PKPaymentProvisioningController *)self->_provisioningController moreInfoItems];
  v17 = moreInfoItems;
  if (acknowledged || (moreInfoItems = [moreInfoItems count]) == 0)
  {
    if ((state - 3) > 1)
    {
      [(NPKPaymentProvisioningFlowController *)self _handleEndOfProvisioningFlowForCurrentPass:passCopy requestContext:contextCopy];
    }

    else
    {
      v18 = pk_Payment_log(moreInfoItems);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

      if (v19)
      {
        v21 = pk_Payment_log(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Verification is necessary", v22, 2u);
        }
      }

      objc_storeStrong(&self->_issuerVerificationPass, pass);
      [(NPKPaymentProvisioningFlowController *)self _requestVerificationOptionsForPass:passCopy context:contextCopy];
    }
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _transitionToMoreInformationWithItems:v17 pass:passCopy requestContext:contextCopy];
  }
}

- (void)_handleVerificationResponseForPass:(id)pass context:(id)context
{
  passCopy = pass;
  contextCopy = context;
  v8 = [(PKPaymentWebService *)self->_webService verificationRecordForPass:passCopy];
  verificationStatus = [v8 verificationStatus];
  switch(verificationStatus)
  {
    case 3:
      channel = [v8 channel];
      allChannels = channel;
      if (channel && ([channel type] == 2 || objc_msgSend(allChannels, "type") == 1))
      {
        [(NPKPaymentProvisioningFlowController *)self _transitionToVerificationCodeWithPaymentPass:passCopy channel:allChannels requestContext:contextCopy];
      }

      else
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __83__NPKPaymentProvisioningFlowController__handleVerificationResponseForPass_context___block_invoke;
        v21[3] = &unk_2799465D0;
        v21[4] = self;
        v22 = contextCopy;
        [(NPKPaymentProvisioningFlowController *)self _downloadAndAddUpdatedPassForPaymentPass:passCopy completion:v21];
      }

      break;
    case 2:
      allChannels = [v8 allChannels];
      [(NPKPaymentProvisioningFlowController *)self _transitionToVerificationChannelsWithPaymentPass:passCopy channels:allChannels requestContext:contextCopy];
      break;
    case 1:
      v10 = objc_alloc(MEMORY[0x277D38110]);
      requiredVerificationFields = [v8 requiredVerificationFields];
      v12 = [v10 initWithPaymentSetupFields:requiredVerificationFields];
      fieldsModel = self->_fieldsModel;
      self->_fieldsModel = v12;

      allChannels = [v8 requiredVerificationFields];
      [(NPKPaymentProvisioningFlowController *)self _transitionToVerificationFieldsWithPaymentPass:passCopy fields:allChannels requestContext:contextCopy];
      break;
    default:
      v16 = pk_Payment_log(verificationStatus);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v19 = pk_Payment_log(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Warning: Standalone verification status: unknown, showing error.", v20, 2u);
        }
      }

      allChannels = PKDisplayableErrorForCommonType();
      [(NPKPaymentProvisioningFlowController *)self _sendDidEncounterError:allChannels requestContext:contextCopy];
      break;
  }
}

- (void)_requestVerificationOptionsForPass:(id)pass context:(id)context
{
  passCopy = pass;
  contextCopy = context;
  v8 = [MEMORY[0x277D38160] requestWithPass:passCopy];
  webService = self->_webService;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__NPKPaymentProvisioningFlowController__requestVerificationOptionsForPass_context___block_invoke;
  v12[3] = &unk_2799465F8;
  v12[4] = self;
  v13 = passCopy;
  v14 = contextCopy;
  v10 = contextCopy;
  v11 = passCopy;
  [(PKPaymentWebService *)webService verificationOptionsForRequest:v8 completion:v12];
}

void __83__NPKPaymentProvisioningFlowController__requestVerificationOptionsForPass_context___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__NPKPaymentProvisioningFlowController__requestVerificationOptionsForPass_context___block_invoke_2;
  block[3] = &unk_279945490;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = a2;
  block[4] = v7;
  v11 = v8;
  v12 = *(a1 + 48);
  v13 = v6;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __83__NPKPaymentProvisioningFlowController__requestVerificationOptionsForPass_context___block_invoke_2(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1[8] == 1)
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = a1[6];

    [v2 _handleVerificationResponseForPass:v3 context:v4];
  }

  else
  {
    v5 = pk_Payment_log(a1);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[7];
        v9 = a1[8];
        v13 = 134218242;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Standalone: requesting verification options failed (result %lu). Showing error: %@", &v13, 0x16u);
      }
    }

    v11 = a1[4];
    v12 = [objc_opt_class() _displayableErrorWithUnderlyingVerificationError:a1[7]];
    [v11 _sendDidEncounterError:v12 requestContext:a1[6]];
  }
}

- (void)_updateVerificationForPass:(id)pass channel:(id)channel context:(id)context
{
  passCopy = pass;
  contextCopy = context;
  webService = self->_webService;
  channelCopy = channel;
  v12 = [(PKPaymentWebService *)webService verificationRecordForPass:passCopy];
  v13 = objc_alloc_init(MEMORY[0x277D38168]);
  currentStepIdentifier = [v12 currentStepIdentifier];
  [v13 setStepIdentifier:currentStepIdentifier];

  [v13 setPass:passCopy];
  [v13 setChannel:channelCopy];

  v15 = self->_webService;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__NPKPaymentProvisioningFlowController__updateVerificationForPass_channel_context___block_invoke;
  v18[3] = &unk_2799465F8;
  v18[4] = self;
  v19 = passCopy;
  v20 = contextCopy;
  v16 = contextCopy;
  v17 = passCopy;
  [(PKPaymentWebService *)v15 updateVerification:v13 completion:v18];
}

void __83__NPKPaymentProvisioningFlowController__updateVerificationForPass_channel_context___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__NPKPaymentProvisioningFlowController__updateVerificationForPass_channel_context___block_invoke_2;
  block[3] = &unk_279945490;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = a2;
  block[4] = v7;
  v11 = v8;
  v12 = *(a1 + 48);
  v13 = v6;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __83__NPKPaymentProvisioningFlowController__updateVerificationForPass_channel_context___block_invoke_2(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1[8] == 1)
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = a1[6];

    [v2 _handleVerificationResponseForPass:v3 context:v4];
  }

  else
  {
    v5 = pk_Payment_log(a1);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[7];
        v9 = a1[8];
        v13 = 134218242;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Standalone: requesting verification fields failed (result %lu). Showing error: %@", &v13, 0x16u);
      }
    }

    v11 = a1[4];
    v12 = [objc_opt_class() _displayableErrorWithUnderlyingVerificationError:a1[7]];
    [v11 _sendDidEncounterError:v12 requestContext:a1[6]];
  }
}

- (void)_handleVerificationFieldsForPass:(id)pass context:(id)context
{
  passCopy = pass;
  contextCopy = context;
  v8 = [(PKPaymentWebService *)self->_webService verificationRecordForPass:passCopy];
  v9 = objc_alloc_init(MEMORY[0x277D38168]);
  currentStepIdentifier = [v8 currentStepIdentifier];
  [v9 setStepIdentifier:currentStepIdentifier];

  [v9 setPass:passCopy];
  channel = [v8 channel];
  [v9 setChannel:channel];

  fieldsModel = [(NPKPaymentProvisioningFlowController *)self fieldsModel];
  v13 = *MEMORY[0x277D38940];
  v14 = [fieldsModel submissionValuesForDestination:*MEMORY[0x277D38940]];

  [v9 setOverlayParameters:v14];
  fieldsModel2 = [(NPKPaymentProvisioningFlowController *)self fieldsModel];
  v16 = [fieldsModel2 secureSubmissionValuesForDestination:v13];

  [v9 setSecureOverlayParameters:v16];
  webService = self->_webService;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__NPKPaymentProvisioningFlowController__handleVerificationFieldsForPass_context___block_invoke;
  v20[3] = &unk_2799465F8;
  v20[4] = self;
  v21 = passCopy;
  v22 = contextCopy;
  v18 = contextCopy;
  v19 = passCopy;
  [(PKPaymentWebService *)webService updateVerification:v9 completion:v20];
}

void __81__NPKPaymentProvisioningFlowController__handleVerificationFieldsForPass_context___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__NPKPaymentProvisioningFlowController__handleVerificationFieldsForPass_context___block_invoke_2;
  block[3] = &unk_279945490;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = a2;
  block[4] = v7;
  v11 = v8;
  v12 = *(a1 + 48);
  v13 = v6;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __81__NPKPaymentProvisioningFlowController__handleVerificationFieldsForPass_context___block_invoke_2(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1[8] == 1)
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = a1[6];

    [v2 _handleVerificationResponseForPass:v3 context:v4];
  }

  else
  {
    v5 = pk_Payment_log(a1);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[7];
        v9 = a1[8];
        v13 = 134218242;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Standalone: requesting verification fields failed (result %lu). Showing error: %@", &v13, 0x16u);
      }
    }

    v11 = a1[4];
    v12 = [objc_opt_class() _displayableErrorWithUnderlyingVerificationError:a1[7]];
    [v11 _sendDidEncounterError:v12 requestContext:a1[6]];
  }
}

- (void)_handleVerificationCode:(id)code forPass:(id)pass context:(id)context
{
  contextCopy = context;
  webService = self->_webService;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__NPKPaymentProvisioningFlowController__handleVerificationCode_forPass_context___block_invoke;
  v11[3] = &unk_279946620;
  v11[4] = self;
  v12 = contextCopy;
  v10 = contextCopy;
  [(PKPaymentWebService *)webService submitVerificationCode:code verificationData:0 forPass:pass completion:v11];
}

void __80__NPKPaymentProvisioningFlowController__handleVerificationCode_forPass_context___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NPKPaymentProvisioningFlowController__handleVerificationCode_forPass_context___block_invoke_2;
  block[3] = &unk_279945490;
  v16 = a2;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v13 = v7;
  v14 = v9;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __80__NPKPaymentProvisioningFlowController__handleVerificationCode_forPass_context___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __80__NPKPaymentProvisioningFlowController__handleVerificationCode_forPass_context___block_invoke_3;
    v12[3] = &unk_2799465D0;
    v12[4] = v2;
    v13 = *(a1 + 48);
    [v2 _downloadRemoteAssetsAndAddPaymentPass:v3 completion:v12];
  }

  else
  {
    v4 = pk_Payment_log(a1);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = pk_Payment_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 56);
        v8 = *(a1 + 64);
        *buf = 134218242;
        v15 = v8;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Warning: Standalone: submitting verification code failed (result %lu). Showing error: %@", buf, 0x16u);
      }
    }

    v10 = *(a1 + 32);
    v11 = [objc_opt_class() _displayableErrorWithUnderlyingVerificationError:*(a1 + 56)];
    [v10 _sendDidEncounterError:v11 requestContext:*(a1 + 48)];
  }
}

- (void)_downloadAndAddUpdatedPassForPaymentPass:(id)pass completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  webService = self->_webService;
  passTypeIdentifier = [passCopy passTypeIdentifier];
  serialNumber = [passCopy serialNumber];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__NPKPaymentProvisioningFlowController__downloadAndAddUpdatedPassForPaymentPass_completion___block_invoke;
  v13[3] = &unk_279946648;
  v13[4] = self;
  v14 = passCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = passCopy;
  [(PKPaymentWebService *)webService passWithPassTypeIdentifier:passTypeIdentifier serialNumber:serialNumber completion:v13];
}

- (void)_downloadRemoteAssetsAndAddPaymentPass:(id)pass completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  dataAccessor = [passCopy dataAccessor];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__NPKPaymentProvisioningFlowController__downloadRemoteAssetsAndAddPaymentPass_completion___block_invoke;
  v11[3] = &unk_279946698;
  v11[4] = self;
  v12 = passCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = passCopy;
  [dataAccessor downloadRemoteAssetsWithCloudStoreCoordinatorDelegate:0 completion:v11];
}

void __90__NPKPaymentProvisioningFlowController__downloadRemoteAssetsAndAddPaymentPass_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(*(a1 + 32) + 104) targetDevice];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 104);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __90__NPKPaymentProvisioningFlowController__downloadRemoteAssetsAndAddPaymentPass_completion___block_invoke_2;
    v6[3] = &unk_279946670;
    v8 = *(a1 + 48);
    v7 = *(a1 + 40);
    [v3 paymentWebService:v5 addPaymentPass:v4 withCompletionHandler:v6];
  }
}

uint64_t __90__NPKPaymentProvisioningFlowController__downloadRemoteAssetsAndAddPaymentPass_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)_provisioningLocalizedProgressDescriptionDidChange:(id)change
{
  if (self->_currentStep == 210)
  {
    v7 = [[NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext alloc] initWithRequestContext:self->_provisioningProgressRequestContext];
    localizedProgressDescription = [(PKPaymentProvisioningController *)self->_provisioningController localizedProgressDescription];
    [(NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext *)v7 setLocalizedProgressDescription:localizedProgressDescription];

    currentProduct = [(NPKPaymentProvisioningFlowController *)self currentProduct];
    [(NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext *)v7 setProduct:currentProduct];

    [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:210 withContext:v7];
  }
}

- (void)_transitionToChooseFlowWithSections:(id)sections requestContext:(id)context
{
  contextCopy = context;
  sectionsCopy = sections;
  v8 = [[NPKPaymentProvisioningFlowControllerChooseFlowStepContext alloc] initWithRequestContext:contextCopy];

  [(NPKPaymentProvisioningFlowControllerChooseFlowStepContext *)v8 setSections:sectionsCopy];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:130 withContext:v8];
}

- (void)_transitionToChooseProductWithProducts:(id)products requestContext:(id)context
{
  contextCopy = context;
  productsCopy = products;
  v8 = [[NPKPaymentProvisioningFlowControllerChooseProductStepContext alloc] initWithRequestContext:contextCopy];

  [(NPKPaymentProvisioningFlowControllerChooseProductStepContext *)v8 setProducts:productsCopy];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:135 withContext:v8];
}

- (void)_transitionBasedOnTermsForReason:(unint64_t)reason URL:(id)l requestContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  self->_termsReason = reason;
  contextCopy = context;
  v10 = [[NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext alloc] initWithRequestContext:contextCopy];

  currentProduct = [(NPKPaymentProvisioningFlowController *)self currentProduct];
  [(NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext *)v10 setProduct:currentProduct];

  [(NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext *)v10 setTermsURL:lCopy];
  context = [(PKPaymentWebService *)self->_webService context];
  -[NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext setAllowNonSecureHTTP:](v10, "setAllowNonSecureHTTP:", [context devSigned]);

  if (lCopy && !self->_termsAcceptedOutOfBand)
  {
    [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:200 withContext:v10];
  }

  else
  {
    v14 = pk_Payment_log(v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v17 = pk_Payment_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        termsAcceptedOutOfBand = self->_termsAcceptedOutOfBand;
        v20 = 138412546;
        v21 = lCopy;
        v22 = 1024;
        v23 = termsAcceptedOutOfBand;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Not showing terms (termsURL %@, accepted out of band %d)", &v20, 0x12u);
      }
    }

    self->_termsAcceptedOutOfBand = 0;
    requestContext = [(NPKPaymentProvisioningFlowStepContext *)v10 requestContext];
    [(NPKPaymentProvisioningFlowController *)self acceptTerms:requestContext];
  }
}

- (void)_transitionToProvisioningProgressWithRequestContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_provisioningProgressRequestContext, context);
  currentStep = self->_currentStep;
  if (currentStep != 165 && currentStep != 210)
  {
    v6 = [[NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext alloc] initWithRequestContext:self->_provisioningProgressRequestContext];
    [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:210 withContext:v6];
  }
}

- (void)_transitionToProvisioningForCredential:(id)credential product:(id)product requestContext:(id)context
{
  v28[1] = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  productCopy = product;
  contextCopy = context;
  isRemoteCredential = [credentialCopy isRemoteCredential];
  if (isRemoteCredential && ([credentialCopy remoteCredential], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "status"), v12, v13 != 1))
  {
    v19 = pk_General_log(isRemoteCredential);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (!v20)
    {
      goto LABEL_9;
    }

    v18 = pk_General_log(v21);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      displayName = [productCopy displayName];
      longDescription = [credentialCopy longDescription];
      v24 = 138412546;
      v25 = displayName;
      v26 = 2112;
      v27 = longDescription;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_ERROR, "Error: Error: No valid provisioning methods exist for product[%@] credential [%@]", &v24, 0x16u);
    }
  }

  else
  {
    v14 = pk_Payment_log(isRemoteCredential);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v17 = pk_Payment_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Single remote credential", &v24, 2u);
      }
    }

    v28[0] = credentialCopy;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    [(NPKPaymentProvisioningFlowController *)self _handleProceedWithCredentials:v18 chosenByUser:0 requestContext:contextCopy];
  }

LABEL_9:
}

- (void)_transitionBasedOnCredentials:(id)credentials product:(id)product requestContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  productCopy = product;
  contextCopy = context;
  v11 = [credentialsCopy count];
  if (!v11)
  {
    v16 = pk_Payment_log(0);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (productCopy)
    {
      if (v17)
      {
        v19 = pk_Payment_log(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          productIdentifier = [productCopy productIdentifier];
          provisioningMethodTypes = [productCopy provisioningMethodTypes];
          v31 = 138412546;
          v32 = productIdentifier;
          v33 = 2112;
          v34 = provisioningMethodTypes;
          _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Have product with identifier %@ provisioning method types %@", &v31, 0x16u);
        }
      }

      if (!NPKPaymentProvisioningSetupContextIsSetupAssistant(self->_setupContext))
      {
        v22 = [productCopy provisioningMethodMetadataForType:*MEMORY[0x277D388D0]];

        if (v22)
        {
          [(NPKPaymentProvisioningFlowController *)self _transitionToDigitalIssuanceForProduct:productCopy requestContext:contextCopy];
          goto LABEL_27;
        }
      }

      v23 = [productCopy provisioningMethodMetadataForType:*MEMORY[0x277D388E8]];

      if (v23)
      {
        [(NPKPaymentProvisioningFlowController *)self _transitionToReaderModeForProduct:productCopy requestContext:contextCopy];
        goto LABEL_27;
      }

      v26 = pk_General_log(v24);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

      if (v27)
      {
        v29 = pk_General_log(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_ERROR, "Error: Error: No valid provisioning methods exist for product; transitioning to manual entry", &v31, 2u);
        }
      }

      currentProduct = self->_currentProduct;
      self->_currentProduct = 0;
    }

    else if (v17)
    {
      v25 = pk_Payment_log(v18);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Enter Manual Entry, no credentials found", &v31, 2u);
      }
    }

    [(NPKPaymentProvisioningFlowController *)self _transitionToManualEntry:contextCopy];
    goto LABEL_27;
  }

  v12 = pk_Payment_log(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v15 = pk_Payment_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: TransitionToRemoteCredentials Step", &v31, 2u);
    }
  }

  [(NPKPaymentProvisioningFlowController *)self _transitionToChooseCredentials:credentialsCopy product:productCopy requestContext:contextCopy];
LABEL_27:
}

- (void)_transitionToChooseCredentials:(id)credentials product:(id)product requestContext:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  productCopy = product;
  contextCopy = context;
  v20 = [[NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext alloc] initWithRequestContext:contextCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = credentialsCopy;
  v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        remoteCredential = [v14 remoteCredential];
        identifier = [remoteCredential identifier];
        v17 = identifier;
        if (identifier)
        {
          uUIDString = identifier;
        }

        else
        {
          uUID = [MEMORY[0x277CCAD78] UUID];
          uUIDString = [uUID UUIDString];
        }

        [array addObject:uUIDString];
        [dictionary setObject:v14 forKey:uUIDString];
      }

      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)v20 setFlowIdentifiers:array];
  [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)v20 setFlowIdentifierToCredential:dictionary];
  [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)v20 setAllowsManualEntry:1];
  [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)v20 setProduct:productCopy];
  [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)v20 setCredentials:obj];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:140 withContext:v20];
}

- (void)_transitionToAppleBalanceAccountDetailsWithProduct:(id)product requestContext:(id)context
{
  contextCopy = context;
  v20 = [[NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext alloc] initWithRequestContext:contextCopy];

  provisioningController = [(NPKPaymentProvisioningFlowController *)self provisioningController];
  webService = [provisioningController webService];
  targetDevice = [webService targetDevice];
  appleAccountInformation = [targetDevice appleAccountInformation];
  appleID = [appleAccountInformation appleID];

  [(NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext *)v20 setAppleID:appleID];
  currentAppleBalanceCredential = [(NPKPaymentProvisioningFlowController *)self currentAppleBalanceCredential];
  eligibilityResponse = [currentAppleBalanceCredential eligibilityResponse];
  supplementaryData = [eligibilityResponse supplementaryData];
  lightweightAccount = [supplementaryData lightweightAccount];

  appleBalanceDetails = [lightweightAccount appleBalanceDetails];
  accountSummary = [appleBalanceDetails accountSummary];
  currentBalance = [accountSummary currentBalance];
  currencyCode = [appleBalanceDetails currencyCode];
  v19 = PKCurrencyAmountMake();
  [(NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext *)v20 setBalance:v19];

  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:260 withContext:v20];
}

- (id)_curatedDefaultPaymentSetupProvisioningFields
{
  defaultPaymentSetupProvisioningFields = [MEMORY[0x277D38110] defaultPaymentSetupProvisioningFields];
  if ([(PKPaymentProvisioningController *)self->_provisioningController suppressDefaultCardholderNameField])
  {
    v4 = [defaultPaymentSetupProvisioningFields pk_objectsPassingTest:&__block_literal_global_151];

    defaultPaymentSetupProvisioningFields = v4;
  }

  return defaultPaymentSetupProvisioningFields;
}

uint64_t __85__NPKPaymentProvisioningFlowController__curatedDefaultPaymentSetupProvisioningFields__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277D38930]];

  return v3 ^ 1u;
}

- (void)_transitionToManualEntry:(id)entry
{
  v39 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  currentCredential = self->_currentCredential;
  self->_currentCredential = 0;

  v5 = objc_alloc(MEMORY[0x277D38110]);
  _curatedDefaultPaymentSetupProvisioningFields = [(NPKPaymentProvisioningFlowController *)self _curatedDefaultPaymentSetupProvisioningFields];
  v7 = [v5 initWithPaymentSetupFields:_curatedDefaultPaymentSetupProvisioningFields];
  fieldsModel = self->_fieldsModel;
  self->_fieldsModel = v7;

  [(PKPaymentProvisioningController *)self->_provisioningController resetForNewProvisioning];
  context = [(PKPaymentWebService *)self->_webService context];
  configuration = [context configuration];

  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  deviceRegion = [targetDevice deviceRegion];

  v30 = [configuration cameraFirstProvisioningEnabledForRegion:deviceRegion];
  _curatedDefaultPaymentSetupProvisioningFields2 = [(NPKPaymentProvisioningFlowController *)self _curatedDefaultPaymentSetupProvisioningFields];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = [_curatedDefaultPaymentSetupProvisioningFields2 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(_curatedDefaultPaymentSetupProvisioningFields2);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        defaultValue = [v18 defaultValue];

        if (!defaultValue)
        {
          v20 = self->_fieldsModel;
          identifier = [v18 identifier];
          v22 = [(PKPaymentSetupFieldsModel *)v20 paymentSetupFieldWithIdentifier:identifier];

          if (v22)
          {
            defaultValue2 = [v22 defaultValue];
            [v18 setDefaultValue:defaultValue2];
          }
        }
      }

      v15 = [_curatedDefaultPaymentSetupProvisioningFields2 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v15);
  }

  v24 = [_curatedDefaultPaymentSetupProvisioningFields2 count];
  v25 = pk_Payment_log(v24);
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

  if (v26)
  {
    v28 = pk_Payment_log(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v37 = v24;
      _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: There are %lu fields required in the Manual Entry", buf, 0xCu);
    }
  }

  v29 = [[NPKPaymentProvisioningFlowControllerManualEntryStepContext alloc] initWithRequestContext:entryCopy];
  [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)v29 setCameraFirstProvisioningEnabled:v30];
  [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)v29 setSetupFields:_curatedDefaultPaymentSetupProvisioningFields2];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:180 withContext:v29];
}

- (id)_credentialReadonlyFieldIdentifiers
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277D38920];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)_secondaryFilteredFields:(id)fields forCredential:(id)credential
{
  fieldsCopy = fields;
  v7 = fieldsCopy;
  if (credential)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__NPKPaymentProvisioningFlowController__secondaryFilteredFields_forCredential___block_invoke;
    v11[3] = &unk_2799466E0;
    v11[4] = self;
    v8 = [fieldsCopy pk_objectsPassingTest:v11];
  }

  else
  {
    v8 = fieldsCopy;
  }

  v9 = v8;

  return v9;
}

uint64_t __79__NPKPaymentProvisioningFlowController__secondaryFilteredFields_forCredential___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) _credentialReadonlyFieldIdentifiers];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

- (void)_transitionToSecondaryManualEntryWithFields:(id)fields credential:(id)credential requestContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  fieldsModel = self->_fieldsModel;
  contextCopy = context;
  [(PKPaymentSetupFieldsModel *)fieldsModel updateWithPaymentSetupFields:fields];
  v11 = [(NPKPaymentProvisioningFlowController *)self _fieldsModelCompleteExceptForLocalFields:self->_fieldsModel];
  if (v11)
  {
    v12 = [[NPKPaymentProvisioningFlowControllerLocalDeviceManualEntryStepContext alloc] initWithRequestContext:contextCopy];

    v14 = pk_Payment_log(v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v17 = pk_Payment_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        incompletePaymentSetupFields = [(PKPaymentSetupFieldsModel *)self->_fieldsModel incompletePaymentSetupFields];
        v31 = 138412546;
        v32 = credentialCopy;
        v33 = 2048;
        v34 = [incompletePaymentSetupFields count];
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Entered Local Device Manual Entry for credential %@. There are %lu incomplete fields.", &v31, 0x16u);
      }

      v19 = 192;
LABEL_10:

      goto LABEL_13;
    }

    v19 = 192;
  }

  else
  {
    v12 = [[NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext alloc] initWithRequestContext:contextCopy];

    v21 = pk_Payment_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (v22)
    {
      v17 = pk_Payment_log(v23);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        incompletePaymentSetupFields2 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel incompletePaymentSetupFields];
        v31 = 138412546;
        v32 = credentialCopy;
        v33 = 2048;
        v34 = [incompletePaymentSetupFields2 count];
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Entered Secondary Manual Entry for credential %@. There are %lu incomplete fields.", &v31, 0x16u);
      }

      v19 = 190;
      goto LABEL_10;
    }

    v19 = 190;
  }

LABEL_13:
  paymentSetupFields = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFields];
  v26 = [(NPKPaymentProvisioningFlowController *)self _filteredPaymentSetupFields:paymentSetupFields forLocalDeviceEntry:v11];

  v27 = [(NPKPaymentProvisioningFlowController *)self _secondaryFilteredFields:v26 forCredential:credentialCopy];
  [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)v12 setSetupFields:v27];
  [(NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext *)v12 setCredential:credentialCopy];
  credentialProvisioningQueue = [(PKPaymentProvisioningController *)self->_provisioningController credentialProvisioningQueue];
  v29 = [credentialProvisioningQueue count];

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = credentialCopy != 0;
  }

  [(NPKPaymentProvisioningFlowStepContext *)v12 setAllowsAddLater:v29 != 0];
  [(NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext *)v12 setAllowsAddingDifferentCard:v30];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:v19 withContext:v12];
}

- (void)_transitionToProductDisambiguationWithProducts:(id)products requestContext:(id)context
{
  contextCopy = context;
  productsCopy = products;
  v8 = [[NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext alloc] initWithRequestContext:contextCopy];

  [(NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext *)v8 setProducts:productsCopy];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:195 withContext:v8];
}

- (void)_transitionToMoreInformationWithItems:(id)items pass:(id)pass requestContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  contextCopy = context;
  passCopy = pass;
  v11 = pk_Payment_log(passCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Payment_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = [itemsCopy count];
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Entered more information step. There are %lu more info items", &v16, 0xCu);
    }
  }

  v15 = [[NPKPaymentProvisioningFlowControllerMoreInformationStepContext alloc] initWithRequestContext:contextCopy];

  [(NPKPaymentProvisioningFlowControllerMoreInformationStepContext *)v15 setPaymentPass:passCopy];
  [(NPKPaymentProvisioningFlowControllerMoreInformationStepContext *)v15 setMoreInfoItems:itemsCopy];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:157 withContext:v15];
}

- (void)_transitionToVerificationChannelsWithPaymentPass:(id)pass channels:(id)channels requestContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  channelsCopy = channels;
  contextCopy = context;
  passCopy = pass;
  v11 = pk_Payment_log(passCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Payment_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = [channelsCopy count];
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Entered verification options step. There are %lu channels", &v16, 0xCu);
    }
  }

  v15 = [[NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext alloc] initWithRequestContext:contextCopy];

  [(NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext *)v15 setPaymentPass:passCopy];
  [(NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext *)v15 setVerificationChannels:channelsCopy];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:230 withContext:v15];
}

- (void)_transitionToVerificationFieldsWithPaymentPass:(id)pass fields:(id)fields requestContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  fieldsCopy = fields;
  passCopy = pass;
  v11 = [fieldsCopy count];
  v12 = pk_Payment_log(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v15 = pk_Payment_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = v11;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Entered verification fields step. There are %lu fields required", &v17, 0xCu);
    }
  }

  v16 = [[NPKPaymentProvisioningFlowControllerIssuerVerificationFieldsStepContext alloc] initWithRequestContext:contextCopy];

  [(NPKPaymentProvisioningFlowControllerIssuerVerificationFieldsStepContext *)v16 setPaymentPass:passCopy];
  [(NPKPaymentProvisioningFlowControllerIssuerVerificationFieldsStepContext *)v16 setVerificationFields:fieldsCopy];

  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:240 withContext:v16];
}

- (void)_transitionToVerificationCodeWithPaymentPass:(id)pass channel:(id)channel requestContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  contextCopy = context;
  passCopy = pass;
  v11 = pk_Payment_log(passCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Payment_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [channelCopy description];
      v17 = 136315138;
      uTF8String = [v15 UTF8String];
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Entered verification code step with channel %s", &v17, 0xCu);
    }
  }

  v16 = [[NPKPaymentProvisioningFlowControllerIssuerVerificationCodeStepContext alloc] initWithRequestContext:contextCopy];

  [(NPKPaymentProvisioningFlowControllerIssuerVerificationCodeStepContext *)v16 setPaymentPass:passCopy];
  [(NPKPaymentProvisioningFlowControllerIssuerVerificationCodeStepContext *)v16 setVerificationChannel:channelCopy];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:250 withContext:v16];
}

- (void)_handleEndOfProvisioningFlowForCurrentPass:(id)pass requestContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  contextCopy = context;
  v8 = pk_Payment_log(contextCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20[0]) = 0;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: End of provisioning flow for current card", v20, 2u);
    }
  }

  self->_termsAcceptedOutOfBand = 0;
  credentialProvisioningQueue = [(PKPaymentProvisioningController *)self->_provisioningController credentialProvisioningQueue];
  remaining = [credentialProvisioningQueue remaining];
  nextCredentialToProvision = [credentialProvisioningQueue nextCredentialToProvision];
  v15 = nextCredentialToProvision;
  if (nextCredentialToProvision)
  {
    v16 = pk_Payment_log(nextCredentialToProvision);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v19 = pk_Payment_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20[0] = 67109378;
        v20[1] = remaining;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: %d credentials remaining; moving to credential: %@", v20, 0x12u);
      }
    }

    [(NPKPaymentProvisioningFlowController *)self _startProvisioningForCredential:v15 requestContext:contextCopy];
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _endProvisioningFlowWithSuccessForPass:passCopy requestContext:contextCopy];
  }
}

- (void)_endProvisioningFlowWithSuccessForPass:(id)pass requestContext:(id)context
{
  contextCopy = context;
  passCopy = pass;
  v8 = [[NPKPaymentProvisioningFlowControllerProvisioningResultStepContext alloc] initWithRequestContext:contextCopy];

  [(NPKPaymentProvisioningFlowControllerProvisioningResultStepContext *)v8 setCardAdded:1];
  [(NPKPaymentProvisioningFlowControllerProvisioningResultStepContext *)v8 setProvisionedPass:passCopy];

  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:220 withContext:v8];
}

- (void)_endProvisioningFlowWithError:(id)error requestContext:(id)context
{
  contextCopy = context;
  errorCopy = error;
  v8 = [[NPKPaymentProvisioningFlowControllerProvisioningResultStepContext alloc] initWithRequestContext:contextCopy];

  [(NPKPaymentProvisioningFlowControllerProvisioningResultStepContext *)v8 setCardAdded:0];
  [(NPKPaymentProvisioningFlowControllerProvisioningResultStepContext *)v8 setError:errorCopy];

  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:220 withContext:v8];
}

- (void)_performTransitionToStep:(int)step withContext:(id)context
{
  contextCopy = context;
  if (([contextCopy allowsAddLater] & 1) == 0 && NPKPaymentProvisioningSetupContextIsSetupAssistant(self->_setupContext))
  {
    [contextCopy setAllowsAddLater:1];
  }

  if (((step - 100) > 0x39 || ((1 << (step - 100)) & 0x200000000100401) == 0) && step != 220)
  {
    if (step == 210 && (chooseCredentialsStepIdentifier = self->_immediatelyBeforeTermsStepIdentifier) != 0)
    {
      v7 = contextCopy;
    }

    else
    {
      v8 = contextCopy;
      if (step != 190 || !self->_chooseCredentialsStepIdentifier)
      {
        if (step != 150 || (digitalIssuanceAmountRequestContext = self->_digitalIssuanceAmountRequestContext) == 0)
        {
LABEL_16:
          backStepIdentifier = [v8 backStepIdentifier];

          if (!backStepIdentifier)
          {
            requestContext = [contextCopy requestContext];
            currentStepIdentifier = [requestContext currentStepIdentifier];
            [contextCopy setBackStepIdentifier:currentStepIdentifier];
          }

          goto LABEL_18;
        }

        currentStepIdentifier2 = [(NPKPaymentProvisioningFlowControllerRequestContext *)digitalIssuanceAmountRequestContext currentStepIdentifier];
        [contextCopy setBackStepIdentifier:currentStepIdentifier2];

LABEL_15:
        v8 = contextCopy;
        goto LABEL_16;
      }

      secondaryManualEntryStepContext = [contextCopy secondaryManualEntryStepContext];
      credential = [secondaryManualEntryStepContext credential];

      v8 = contextCopy;
      if (!credential)
      {
        goto LABEL_16;
      }

      chooseCredentialsStepIdentifier = self->_chooseCredentialsStepIdentifier;
      v7 = contextCopy;
    }

    [v7 setBackStepIdentifier:chooseCredentialsStepIdentifier];
    goto LABEL_15;
  }

LABEL_18:
  currentStep = self->_currentStep;
  self->_currentStep = step;
  if (step == 200)
  {
    requestContext2 = [contextCopy requestContext];
    currentStepIdentifier3 = [requestContext2 currentStepIdentifier];
    immediatelyBeforeTermsStepIdentifier = self->_immediatelyBeforeTermsStepIdentifier;
    self->_immediatelyBeforeTermsStepIdentifier = currentStepIdentifier3;
  }

  else
  {
    if (step != 140)
    {
      goto LABEL_23;
    }

    stepIdentifier = [contextCopy stepIdentifier];
    requestContext2 = self->_chooseCredentialsStepIdentifier;
    self->_chooseCredentialsStepIdentifier = stepIdentifier;
  }

LABEL_23:
  [(NPKPaymentProvisioningFlowController *)self _sendDidTransitionFromStep:currentStep toStep:self->_currentStep withContext:contextCopy];
}

- (void)_sendDidTransitionFromStep:(int)step toStep:(int)toStep withContext:(id)context
{
  v5 = *&toStep;
  v6 = *&step;
  v25 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v9 = pk_Payment_log(contextCopy);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_Payment_log(v11);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_148:

      goto LABEL_149;
    }

    if (v6 <= 164)
    {
      if (v6 > 139)
      {
        if (v6 <= 149)
        {
          switch(v6)
          {
            case 0x8C:
              v13 = @"ChooseCredentials";
              goto LABEL_74;
            case 0x90:
              v13 = @"ChooseTransitProductType";
              goto LABEL_74;
            case 0x91:
              v13 = @"ChooseServiceProviderProducts";
              goto LABEL_74;
          }
        }

        else if (v6 > 156)
        {
          if (v6 == 157)
          {
            v13 = @"MoreInformation";
            goto LABEL_74;
          }

          if (v6 == 160)
          {
            v13 = @"ReaderModeEntry";
            goto LABEL_74;
          }
        }

        else
        {
          if (v6 == 150)
          {
            v13 = @"DigitalIssuanceAmount";
            goto LABEL_74;
          }

          if (v6 == 155)
          {
            v13 = @"DigitalIssuancePayment";
            goto LABEL_74;
          }
        }
      }

      else if (v6 <= 129)
      {
        switch(v6)
        {
          case 'd':
            v13 = @"Initialized";
            goto LABEL_74;
          case 'n':
            v13 = @"Preconditions";
            goto LABEL_74;
          case 'x':
            v13 = @"Welcome";
            goto LABEL_74;
        }
      }

      else if (v6 > 136)
      {
        if (v6 == 137)
        {
          v13 = @"ChooseTransitProduct";
          goto LABEL_74;
        }

        if (v6 == 138)
        {
          v13 = @"ChooseEMoneyProduct";
          goto LABEL_74;
        }
      }

      else
      {
        if (v6 == 130)
        {
          v13 = @"ChooseFlow";
          goto LABEL_74;
        }

        if (v6 == 135)
        {
          v13 = @"ChooseProduct";
          goto LABEL_74;
        }
      }
    }

    else if (v6 <= 199)
    {
      if (v6 <= 191)
      {
        switch(v6)
        {
          case 0xA5:
            v13 = @"ReaderModeIngestion";
            goto LABEL_74;
          case 0xB4:
            v13 = @"ManualEntry";
            goto LABEL_74;
          case 0xBE:
            v13 = @"SecondaryManualEntry";
            goto LABEL_74;
        }
      }

      else if (v6 > 194)
      {
        if (v6 == 195)
        {
          v13 = @"ProductDisambiguation";
          goto LABEL_74;
        }

        if (v6 == 197)
        {
          v13 = @"PasscodeUpgrade";
          goto LABEL_74;
        }
      }

      else
      {
        if (v6 == 192)
        {
          v13 = @"LocalDeviceManualEntry";
          goto LABEL_74;
        }

        if (v6 == 193)
        {
          v13 = @"LocalDeviceManualEntryProgress";
          goto LABEL_74;
        }
      }
    }

    else if (v6 > 239)
    {
      if (v6 > 259)
      {
        if (v6 == 260)
        {
          v13 = @"AppleBalanceAccountDetails";
          goto LABEL_74;
        }

        if (v6 == 300)
        {
          v13 = @"GetIssuerApplicationAddRequest";
          goto LABEL_74;
        }
      }

      else
      {
        if (v6 == 240)
        {
          v13 = @"IssuerVerificationFields";
          goto LABEL_74;
        }

        if (v6 == 250)
        {
          v13 = @"IssuerVerificationCode";
          goto LABEL_74;
        }
      }
    }

    else if (v6 > 219)
    {
      if (v6 == 220)
      {
        v13 = @"ProvisioningResult";
        goto LABEL_74;
      }

      if (v6 == 230)
      {
        v13 = @"IssuerVerificationChannels";
        goto LABEL_74;
      }
    }

    else
    {
      if (v6 == 200)
      {
        v13 = @"TermsAndConditions";
        goto LABEL_74;
      }

      if (v6 == 210)
      {
        v13 = @"ProvisioningProgress";
        goto LABEL_74;
      }
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v6];
LABEL_74:
    v14 = v13;
    if (v5 <= 164)
    {
      if (v5 > 139)
      {
        if (v5 <= 149)
        {
          switch(v5)
          {
            case 0x8C:
              v15 = @"ChooseCredentials";
              goto LABEL_145;
            case 0x90:
              v15 = @"ChooseTransitProductType";
              goto LABEL_145;
            case 0x91:
              v15 = @"ChooseServiceProviderProducts";
              goto LABEL_145;
          }
        }

        else if (v5 > 156)
        {
          if (v5 == 157)
          {
            v15 = @"MoreInformation";
            goto LABEL_145;
          }

          if (v5 == 160)
          {
            v15 = @"ReaderModeEntry";
            goto LABEL_145;
          }
        }

        else
        {
          if (v5 == 150)
          {
            v15 = @"DigitalIssuanceAmount";
            goto LABEL_145;
          }

          if (v5 == 155)
          {
            v15 = @"DigitalIssuancePayment";
            goto LABEL_145;
          }
        }
      }

      else if (v5 <= 129)
      {
        switch(v5)
        {
          case 'd':
            v15 = @"Initialized";
            goto LABEL_145;
          case 'n':
            v15 = @"Preconditions";
            goto LABEL_145;
          case 'x':
            v15 = @"Welcome";
            goto LABEL_145;
        }
      }

      else if (v5 > 136)
      {
        if (v5 == 137)
        {
          v15 = @"ChooseTransitProduct";
          goto LABEL_145;
        }

        if (v5 == 138)
        {
          v15 = @"ChooseEMoneyProduct";
          goto LABEL_145;
        }
      }

      else
      {
        if (v5 == 130)
        {
          v15 = @"ChooseFlow";
          goto LABEL_145;
        }

        if (v5 == 135)
        {
          v15 = @"ChooseProduct";
          goto LABEL_145;
        }
      }
    }

    else if (v5 <= 199)
    {
      if (v5 <= 191)
      {
        switch(v5)
        {
          case 0xA5:
            v15 = @"ReaderModeIngestion";
            goto LABEL_145;
          case 0xB4:
            v15 = @"ManualEntry";
            goto LABEL_145;
          case 0xBE:
            v15 = @"SecondaryManualEntry";
            goto LABEL_145;
        }
      }

      else if (v5 > 194)
      {
        if (v5 == 195)
        {
          v15 = @"ProductDisambiguation";
          goto LABEL_145;
        }

        if (v5 == 197)
        {
          v15 = @"PasscodeUpgrade";
          goto LABEL_145;
        }
      }

      else
      {
        if (v5 == 192)
        {
          v15 = @"LocalDeviceManualEntry";
          goto LABEL_145;
        }

        if (v5 == 193)
        {
          v15 = @"LocalDeviceManualEntryProgress";
          goto LABEL_145;
        }
      }
    }

    else if (v5 > 239)
    {
      if (v5 > 259)
      {
        if (v5 == 260)
        {
          v15 = @"AppleBalanceAccountDetails";
          goto LABEL_145;
        }

        if (v5 == 300)
        {
          v15 = @"GetIssuerApplicationAddRequest";
          goto LABEL_145;
        }
      }

      else
      {
        if (v5 == 240)
        {
          v15 = @"IssuerVerificationFields";
          goto LABEL_145;
        }

        if (v5 == 250)
        {
          v15 = @"IssuerVerificationCode";
          goto LABEL_145;
        }
      }
    }

    else if (v5 > 219)
    {
      if (v5 == 220)
      {
        v15 = @"ProvisioningResult";
        goto LABEL_145;
      }

      if (v5 == 230)
      {
        v15 = @"IssuerVerificationChannels";
        goto LABEL_145;
      }
    }

    else
    {
      if (v5 == 200)
      {
        v15 = @"TermsAndConditions";
        goto LABEL_145;
      }

      if (v5 == 210)
      {
        v15 = @"ProvisioningProgress";
LABEL_145:
        v16 = @"<none>";
        *buf = 138412802;
        if (contextCopy)
        {
          v16 = contextCopy;
        }

        v20 = v14;
        v21 = 2112;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Flow controller change step from %@ to %@ with context: %@", buf, 0x20u);

        goto LABEL_148;
      }
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v5];
    goto LABEL_145;
  }

LABEL_149:
  v17 = NPKAnalyticsEventForProvisioningFlowStepTransition(v6, v5, contextCopy);
  [MEMORY[0x277D37D28] subject:@"provisioning" sendEvent:v17];
  delegate = [(NPKPaymentProvisioningFlowController *)self delegate];
  [delegate paymentProvisioningFlowController:self didTransitionFromStep:v6 toStep:v5 withContext:contextCopy];
}

- (void)_sendDidEncounterError:(id)error requestContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  contextCopy = context;
  v8 = pk_Payment_log(contextCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = errorCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Flow controller encountered error: %@", &v15, 0xCu);
    }
  }

  if (errorCopy)
  {
    v12 = MEMORY[0x277D37D28];
    v13 = NPKAnalyticsEventForError(@"nonFatalError", errorCopy);
    [v12 subject:@"provisioning" sendEvent:v13];
  }

  delegate = [(NPKPaymentProvisioningFlowController *)self delegate];
  [delegate paymentProvisioningFlowController:self didEncounterError:errorCopy requestContext:contextCopy];
}

- (id)_requiredFieldsFromRequirementsResponseExcludingLocalFields
{
  _requiredFieldsFromRequirementsResponse = [(NPKPaymentProvisioningFlowController *)self _requiredFieldsFromRequirementsResponse];
  v4 = _requiredFieldsFromRequirementsResponse;
  if (self->_separateLocalDeviceEntryRequired)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __99__NPKPaymentProvisioningFlowController__requiredFieldsFromRequirementsResponseExcludingLocalFields__block_invoke;
    v13[3] = &unk_2799466E0;
    v13[4] = self;
    v5 = [_requiredFieldsFromRequirementsResponse pk_objectsPassingTest:v13];
    v6 = PKEqualObjects();
    if ((v6 & 1) == 0)
    {
      v7 = pk_Payment_log(v6);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        v10 = pk_Payment_log(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Filtered required fields based on local device entry requirement", v12, 2u);
        }
      }
    }

    v4 = v5;
  }

  return v4;
}

- (id)_localRequiredFieldsFromRequirementsResponse
{
  if (self->_separateLocalDeviceEntryRequired)
  {
    _requiredFieldsFromRequirementsResponse = [(NPKPaymentProvisioningFlowController *)self _requiredFieldsFromRequirementsResponse];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __84__NPKPaymentProvisioningFlowController__localRequiredFieldsFromRequirementsResponse__block_invoke;
    v6[3] = &unk_2799466E0;
    v6[4] = self;
    v4 = [_requiredFieldsFromRequirementsResponse pk_objectsPassingTest:v6];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (BOOL)_fieldsModelCompleteExceptForLocalFields:(id)fields
{
  v37 = *MEMORY[0x277D85DE8];
  if (self->_separateLocalDeviceEntryRequired)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    paymentSetupFields = [fields paymentSetupFields];
    v5 = [paymentSetupFields countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = 0;
      v9 = 0;
      v10 = *v30;
      *&v6 = 138412546;
      v28 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(paymentSetupFields);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          submissionStringMeetsAllRequirements = [v12 submissionStringMeetsAllRequirements];
          if ((submissionStringMeetsAllRequirements & 1) == 0)
          {
            v14 = pk_Payment_log(submissionStringMeetsAllRequirements);
            v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

            if (v15)
            {
              v17 = pk_Payment_log(v16);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                identifier = [v12 identifier];
                v19 = [(NPKPaymentProvisioningFlowController *)self _fieldRequiresLocalEntry:v12];
                *buf = v28;
                *v34 = identifier;
                *&v34[8] = 1024;
                v35[0] = v19;
                _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Field %@ is incomplete requires local entry %d", buf, 0x12u);
              }
            }

            v20 = [(NPKPaymentProvisioningFlowController *)self _fieldRequiresLocalEntry:v12];
            v8 |= !v20;
            v9 |= v20;
          }
        }

        v7 = [paymentSetupFields countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v21 = v9 & (v8 ^ 1);
    v23 = pk_Payment_log(v22);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

    if (v24)
    {
      v26 = pk_Payment_log(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v34 = v21 & 1;
        *&v34[4] = 1024;
        *&v34[6] = v9 & 1;
        LOWORD(v35[0]) = 1024;
        *(v35 + 2) = v8 & 1;
        _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: Complete except for local fields %d local %d non local %d", buf, 0x14u);
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

- (BOOL)_fieldRequiresLocalEntry:(id)entry
{
  identifier = [entry identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x277D38928]];

  return v4;
}

- (id)_filteredPaymentSetupFields:(id)fields forLocalDeviceEntry:(BOOL)entry
{
  fieldsCopy = fields;
  v7 = fieldsCopy;
  if (self->_separateLocalDeviceEntryRequired)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__NPKPaymentProvisioningFlowController__filteredPaymentSetupFields_forLocalDeviceEntry___block_invoke;
    v11[3] = &unk_279946708;
    v11[4] = self;
    entryCopy = entry;
    v8 = [fieldsCopy pk_objectsPassingTest:v11];
  }

  else
  {
    v8 = fieldsCopy;
  }

  v9 = v8;

  return v9;
}

- (id)_requiredFieldsFromRequirementsResponse
{
  v30 = *MEMORY[0x277D85DE8];
  requirementsResponse = [(PKPaymentProvisioningController *)self->_provisioningController requirementsResponse];
  v4 = pk_Payment_log(requirementsResponse);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      status = [requirementsResponse status];
      productIdentifier = [(PKPaymentProvisioningController *)self->_provisioningController productIdentifier];
      *buf = 134218242;
      v27 = status;
      v28 = 2112;
      v29 = productIdentifier;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Determining required fields for response status %ld and product identifier %@", buf, 0x16u);
    }
  }

  if ([requirementsResponse status] == 1)
  {
    requiredPaymentSetupFields = [requirementsResponse requiredPaymentSetupFields];
  }

  else if ([requirementsResponse status] == 2 && (-[PKPaymentProvisioningController productIdentifier](self->_provisioningController, "productIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    possibleProducts = [requirementsResponse possibleProducts];
    v13 = [possibleProducts countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = *v22;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(possibleProducts);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          productIdentifier2 = [v16 productIdentifier];
          productIdentifier3 = [(PKPaymentProvisioningController *)self->_provisioningController productIdentifier];
          v19 = [productIdentifier2 isEqualToString:productIdentifier3];

          if (v19)
          {
            v13 = v16;
            goto LABEL_20;
          }
        }

        v13 = [possibleProducts countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    requiredPaymentSetupFields = [v13 requiredFields];
  }

  else
  {
    requiredPaymentSetupFields = MEMORY[0x277CBEBF8];
  }

  return requiredPaymentSetupFields;
}

- (void)_configureWebServiceIfNecessary:(id)necessary completion:(id)completion
{
  necessaryCopy = necessary;
  completionCopy = completion;
  if ([necessaryCopy needsConfiguration])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__NPKPaymentProvisioningFlowController__configureWebServiceIfNecessary_completion___block_invoke;
    v12[3] = &unk_279946758;
    v7 = &v13;
    v13 = completionCopy;
    v8 = completionCopy;
    [necessaryCopy configurePaymentServiceWithCompletion:v12];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __83__NPKPaymentProvisioningFlowController__configureWebServiceIfNecessary_completion___block_invoke_3;
    v10[3] = &unk_279945198;
    v7 = &v11;
    v11 = completionCopy;
    v9 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __83__NPKPaymentProvisioningFlowController__configureWebServiceIfNecessary_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__NPKPaymentProvisioningFlowController__configureWebServiceIfNecessary_completion___block_invoke_2;
  block[3] = &unk_279946730;
  v9 = *(a1 + 32);
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_verifyPasscodeStateIfNecessaryWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1, 0);
  }
}

- (void)_requestPassDetailsForAccountCredential:(id)credential withCompletionHandler:(id)handler
{
  credentialCopy = credential;
  handlerCopy = handler;
  passDetailsResponse = [credentialCopy passDetailsResponse];

  if (passDetailsResponse)
  {
    if (handlerCopy)
    {
      passDetailsResponse2 = [credentialCopy passDetailsResponse];
      handlerCopy[2](handlerCopy, passDetailsResponse2, 0);
    }
  }

  else
  {
    provisioningController = self->_provisioningController;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __102__NPKPaymentProvisioningFlowController__requestPassDetailsForAccountCredential_withCompletionHandler___block_invoke;
    v11[3] = &unk_2799467A8;
    v13 = handlerCopy;
    v12 = credentialCopy;
    [(PKPaymentProvisioningController *)provisioningController setupAccountCredentialForProvisioning:v12 completion:v11];
  }
}

void __102__NPKPaymentProvisioningFlowController__requestPassDetailsForAccountCredential_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__NPKPaymentProvisioningFlowController__requestPassDetailsForAccountCredential_withCompletionHandler___block_invoke_2;
  block[3] = &unk_279946780;
  v9 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __102__NPKPaymentProvisioningFlowController__requestPassDetailsForAccountCredential_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = [*(a1 + 32) passDetailsResponse];
    (*(v1 + 16))(v1, v3, *(a1 + 40));
  }
}

- (NPKFidoAuthCoordinator)fidoAuthCoordinator
{
  fidoAuthCoordinator = self->_fidoAuthCoordinator;
  if (!fidoAuthCoordinator)
  {
    v4 = objc_alloc_init(NPKFidoAuthCoordinator);
    v5 = self->_fidoAuthCoordinator;
    self->_fidoAuthCoordinator = v4;

    fidoAuthCoordinator = self->_fidoAuthCoordinator;
  }

  return fidoAuthCoordinator;
}

- (NPKPaymentProvisioningFlowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)_flowPickerSectionsWithContext:(int64_t)context provisioningController:(id)controller readerModeSupported:(BOOL)supported digitalIssuanceSupported:(BOOL)issuanceSupported
{
  supportedCopy = supported;
  controllerCopy = controller;
  webService = [controllerCopy webService];
  v12 = PKCurrentMobileCarrierRegion();
  paymentSetupProductModel = [controllerCopy paymentSetupProductModel];
  LOBYTE(v22) = issuanceSupported;
  v14 = [self _filteredPaymentSetupProducts:paymentSetupProductModel localCredentials:0 setupContext:context webService:webService mobileCarrierRegion:v12 readerModeSupported:supportedCopy digitalIssuanceSupported:v22];

  array = [MEMORY[0x277CBEB18] array];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__6;
  v30 = __Block_byref_object_dispose__6;
  v31 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __154__NPKPaymentProvisioningFlowController_FlowSelection___flowPickerSectionsWithContext_provisioningController_readerModeSupported_digitalIssuanceSupported___block_invoke;
  aBlock[3] = &unk_279946C38;
  v25 = &v26;
  v16 = array;
  v24 = v16;
  v17 = _Block_copy(aBlock);
  [objc_opt_class() _addGroupedItemsToSections:v16 fromModel:v14 webService:webService paymentSection:v17];
  [objc_opt_class() _addAppleBalanceToSections:v16 fromModel:v14];
  if ([v16 count])
  {
    [objc_opt_class() _addCreditDebitItemToSection:v17 webService:webService];
  }

  if (v27[5])
  {
    firstObject = [v16 firstObject];
    v19 = v27[5];

    if (firstObject != v19)
    {
      [v16 removeObject:v27[5]];
      [v16 insertObject:v27[5] atIndex:0];
    }
  }

  v20 = v16;

  _Block_object_dispose(&v26, 8);

  return v20;
}

id __154__NPKPaymentProvisioningFlowController_FlowSelection___flowPickerSectionsWithContext_provisioningController_readerModeSupported_digitalIssuanceSupported___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = PKLocalizedPaymentString(&cfstr_CardTypePaymen.isa);
    v4 = [NPKPaymentProvisioningFlowPickerSection sectionWithTitle:v3 productType:&unk_286CE76A8];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(*(*(a1 + 40) + 8) + 40) title];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Added products section with title: %@", &v10, 0xCu);
    }

    [*(a1 + 32) addObject:*(*(*(a1 + 40) + 8) + 40)];
    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  return v2;
}

+ (id)_filteredPaymentSetupProducts:(id)products localCredentials:(id)credentials setupContext:(int64_t)context webService:(id)service mobileCarrierRegion:(id)region readerModeSupported:(BOOL)supported digitalIssuanceSupported:(BOOL)issuanceSupported
{
  supportedCopy = supported;
  v91 = *MEMORY[0x277D85DE8];
  productsCopy = products;
  credentialsCopy = credentials;
  serviceCopy = service;
  regionCopy = region;
  array = [MEMORY[0x277CBEB18] array];
  v74 = PKOSVersion();
  v73 = PKDeviceClass();
  v60 = serviceCopy;
  targetDevice = [serviceCopy targetDevice];
  deviceRegion = [targetDevice deviceRegion];
  deviceVersion = [targetDevice deviceVersion];
  v18 = supportedCopy;
  if (issuanceSupported && !NPKPaymentProvisioningSetupContextIsSetupAssistant(context))
  {
    v18 = supportedCopy | 2;
  }

  v71 = v18;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v62 = productsCopy;
  obj = [productsCopy allSetupProducts];
  v19 = [obj countByEnumeratingWithState:&v79 objects:v90 count:16];
  v20 = regionCopy;
  if (v19)
  {
    v21 = v19;
    v70 = *v80;
    do
    {
      v22 = 0;
      do
      {
        if (*v80 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v79 + 1) + 8 * v22);
        if (([v23 updateSupportWithOSVersion:v74 deviceClass:v73 deviceRegion:deviceRegion deviceVersion:deviceVersion] & 1) == 0)
        {
          regions = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(regions, OS_LOG_TYPE_DEFAULT))
          {
            displayName = [v23 displayName];
            *buf = 138412290;
            v85 = displayName;
            v29 = regions;
            v30 = "Product: %@ is not supported due to device OS version";
            v31 = 12;
            goto LABEL_14;
          }

LABEL_15:
          v26 = 0;
LABEL_16:

          goto LABEL_17;
        }

        configuration = [v23 configuration];
        type = [configuration type];

        if (type != 3)
        {
          if (deviceRegion)
          {
            regions = [v23 regions];
            if (([regions containsObject:deviceRegion]& 1) != 0)
            {
              v26 = 1;
              v68 = regions;
              goto LABEL_16;
            }

            if (!v20)
            {

              v68 = regions;
LABEL_70:
              regions = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(regions, OS_LOG_TYPE_DEFAULT))
              {
                displayName = [v23 displayName];
                *buf = 138412802;
                v85 = displayName;
                v86 = 2112;
                v87 = deviceRegion;
                v88 = 2112;
                v89 = v20;
                v29 = regions;
                v30 = "Product: %@ is not supported in neither this device region: %@, nor mobile carrier region: %@";
                v31 = 32;
LABEL_14:
                _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, v31);
              }

              goto LABEL_15;
            }

            v68 = regions;
          }

          else if (!v20)
          {
            goto LABEL_70;
          }

          regions2 = [v23 regions];
          v48 = [regions2 containsObject:v20];

          if (deviceRegion)
          {
          }

          if ((v48 & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        v26 = 1;
LABEL_17:
        supportedProvisioningMethods = [v23 supportedProvisioningMethods];
        if (v26 && (supportedProvisioningMethods & v71) == 0)
        {
          v33 = PKLogFacilityTypeGetObject();
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          displayName2 = [v23 displayName];
          supportedProvisioningMethods2 = [v23 supportedProvisioningMethods];
          *buf = 138412802;
          v85 = displayName2;
          v86 = 2048;
          v87 = v71;
          v88 = 2048;
          v89 = supportedProvisioningMethods2;
          v36 = v33;
          v37 = "Product: %@ is not supported due to no matching provisioning methods (local supported methods %lu, product supported methods %lu)";
          v38 = 32;
          goto LABEL_57;
        }

        if ((v26 & 1) == 0)
        {
          v33 = PKLogFacilityTypeGetObject();
          goto LABEL_59;
        }

        if (([v23 allSupportedProtocols] & 4) != 0)
        {
          IsAvailable = PKFelicaSecureElementIsAvailable();
          v33 = PKLogFacilityTypeGetObject();
          v40 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
          if (!IsAvailable)
          {
            if (!v40)
            {
              goto LABEL_58;
            }

            displayName2 = [v23 displayName];
            *buf = 138412290;
            v85 = displayName2;
            v36 = v33;
            v37 = "Product: %@ is not supported due to lack of Type F support";
            goto LABEL_56;
          }

          if (v40)
          {
            displayName3 = [v23 displayName];
            *buf = 138412290;
            v85 = displayName3;
            _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Product: %@ is supported due to available Type F support", buf, 0xCu);
          }
        }

        if (!PKSecureElementIsAvailable())
        {
          v33 = PKLogFacilityTypeGetObject();
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          displayName2 = [v23 displayName];
          *buf = 138412290;
          v85 = displayName2;
          v36 = v33;
          v37 = "Product: %@ is not supported due to lack of SE";
LABEL_56:
          v38 = 12;
LABEL_57:
          _os_log_impl(&dword_25B300000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, v38);

          goto LABEL_58;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_38;
        }

        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        paymentOptions = [v23 paymentOptions];
        v43 = [paymentOptions countByEnumeratingWithState:&v75 objects:v83 count:16];
        if (!v43)
        {
LABEL_37:

          v20 = regionCopy;
LABEL_38:
          v33 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            displayName2 = [v23 displayName];
            *buf = 138412290;
            v85 = displayName2;
            v36 = v33;
            v37 = "Product: %@ is not supported on device";
            goto LABEL_56;
          }

LABEL_58:

LABEL_59:
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            displayName4 = [v23 displayName];
            *buf = 138412290;
            v85 = displayName4;
            _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Product: %@ is unsupported and will not be shown in the flow picker", buf, 0xCu);
          }

          goto LABEL_61;
        }

        v44 = v43;
        v45 = *v76;
LABEL_31:
        v46 = 0;
        while (1)
        {
          if (*v76 != v45)
          {
            objc_enumerationMutation(paymentOptions);
          }

          if ([targetDevice supportsCredentialType:{objc_msgSend(*(*(&v75 + 1) + 8 * v46), "cardType")}])
          {
            break;
          }

          if (v44 == ++v46)
          {
            v44 = [paymentOptions countByEnumeratingWithState:&v75 objects:v83 count:16];
            if (v44)
            {
              goto LABEL_31;
            }

            goto LABEL_37;
          }
        }

        if (context == 1 && [v23 hsa2Requirement] == 2 && (objc_msgSend(self, "_isHSA2Enabled") & 1) == 0)
        {
          v33 = PKLogFacilityTypeGetObject();
          v20 = regionCopy;
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          displayName2 = [v23 displayName];
          *buf = 138412290;
          v85 = displayName2;
          v36 = v33;
          v37 = "Product: %@ is not supported in setup context due to HSA requirement";
          goto LABEL_56;
        }

        configuration2 = [v23 configuration];
        state = [configuration2 state];

        v20 = regionCopy;
        if (state == 2)
        {
          v33 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            displayName5 = [v23 displayName];
            configuration3 = [v23 configuration];
            [configuration3 state];
            v53 = PKPaymentSetupProductStateToString();
            *buf = 138412546;
            v85 = displayName5;
            v86 = 2112;
            v87 = v53;
            _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Product: %@ not supported. Product state is: %@. Previously provisioned to device?", buf, 0x16u);
          }

          goto LABEL_58;
        }

        v33 = v23;
        v54 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          displayName6 = [v33 displayName];
          productIdentifier = [v33 productIdentifier];
          provisioningMethodTypes = [v33 provisioningMethodTypes];
          *buf = 138412802;
          v85 = displayName6;
          v86 = 2112;
          v87 = productIdentifier;
          v88 = 2112;
          v89 = provisioningMethodTypes;
          _os_log_impl(&dword_25B300000, v54, OS_LOG_TYPE_DEFAULT, "Product: %@ (%@) is supported with provisioning types %@", buf, 0x20u);
        }

        [array addObject:v33];
LABEL_61:

        ++v22;
      }

      while (v22 != v21);
      v57 = [obj countByEnumeratingWithState:&v79 objects:v90 count:16];
      v21 = v57;
    }

    while (v57);
  }

  v58 = objc_alloc_init(MEMORY[0x277D38120]);
  [v58 setPaymentSetupProducts:array];

  return v58;
}

+ (void)_addGroupedItemsToSections:(id)sections fromModel:(id)model webService:(id)service paymentSection:(id)section
{
  v38[2] = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  modelCopy = model;
  serviceCopy = service;
  sectionCopy = section;
  v37[0] = &unk_286CE76C0;
  v13 = PKLocalizedPaymentString(&cfstr_CardTypeTransi.isa);
  v38[0] = v13;
  v37[1] = &unk_286CE76D8;
  v14 = PKLocalizedPaymentString(&cfstr_CardTypeEmoney.isa);
  v38[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

  v35[0] = &unk_286CE76C0;
  v16 = PKLocalizedPaymentString(&cfstr_CardTypeTransi_0.isa);
  v35[1] = &unk_286CE76D8;
  v36[0] = v16;
  v17 = PKLocalizedPaymentString(&cfstr_PaymentSetupEm.isa);
  v36[1] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

  targetDevice = [serviceCopy targetDevice];
  deviceRegion = [targetDevice deviceRegion];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __118__NPKPaymentProvisioningFlowController_FlowSelection___addGroupedItemsToSections_fromModel_webService_paymentSection___block_invoke;
  v27[3] = &unk_279946C60;
  v28 = modelCopy;
  v29 = v18;
  v30 = serviceCopy;
  v31 = deviceRegion;
  v32 = &unk_286CE76C0;
  v33 = sectionsCopy;
  v34 = sectionCopy;
  v21 = sectionCopy;
  v22 = sectionsCopy;
  v23 = deviceRegion;
  v24 = serviceCopy;
  v25 = v18;
  v26 = modelCopy;
  [v15 enumerateKeysAndObjectsUsingBlock:v27];
}

void __118__NPKPaymentProvisioningFlowController_FlowSelection___addGroupedItemsToSections_fromModel_webService_paymentSection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) setupProductsOfType:{objc_msgSend(v5, "unsignedIntegerValue")}];
  if (![v7 count])
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [v5 unsignedIntegerValue];
      v12 = PKPaymentSetupProductTypeToString();
      *buf = 138412290;
      v53 = v12;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Skipped products of type: %@. Not available setup products.", buf, 0xCu);
    }

    goto LABEL_29;
  }

  if ([v7 count] == 1)
  {
    v8 = [v7 firstObject];
    v9 = [v8 displayName];

    if ([v9 length])
    {
      v10 = v9;

      v6 = v10;
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        [v5 unsignedIntegerValue];
        v14 = PKPaymentSetupProductTypeToString();
        *buf = 138412290;
        v53 = v14;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Only one available product of type: %@ but no name for display. Using default for product type instead.", buf, 0xCu);
      }
    }
  }

  v11 = [*(a1 + 40) objectForKey:v5];
  if (!v11)
  {
    [v5 unsignedIntegerValue];
    v15 = PKPaymentSetupProductTypeToString();
    v38 = [NPKPaymentProvisioningFlowPickerItem itemWithIdentifier:v15 title:v6 products:v7];
    v20 = (*(*(a1 + 80) + 16))();
    v36 = [v20 items];
    [v36 addObject:v38];
    goto LABEL_28;
  }

  v41 = v6;
  v39 = v11;
  v44 = v5;
  v15 = [NPKPaymentProvisioningFlowPickerSection sectionWithTitle:v11 productType:v5];
  v16 = [*(a1 + 48) context];
  v43 = a1;
  v42 = [v16 betaPaymentNetworksForRegion:*(a1 + 56)];

  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"displayName" ascending:1];
  v51 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  v40 = v7;
  v19 = [v7 sortedArrayUsingDescriptors:v18];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (!v21)
  {
    goto LABEL_24;
  }

  v22 = v21;
  v23 = *v46;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v46 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v25 = *(*(&v45 + 1) + 8 * i);
      v26 = [v25 productIdentifier];
      v49 = v25;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
      v28 = [NPKPaymentProvisioningFlowPickerItem itemWithIdentifier:v26 products:v27];

      v29 = [v15 footer];
      if (!v29 && [v44 isEqualToNumber:*(v43 + 64)])
      {
        v30 = MEMORY[0x277CCABB0];
        v31 = [v25 paymentOptions];
        v32 = [v31 firstObject];
        v33 = [v30 numberWithInteger:{objc_msgSend(v32, "cardType")}];
        v34 = [v42 containsObject:v33];

        if (!v34)
        {
          goto LABEL_22;
        }

        v29 = PKLocalizedPaymentString(&cfstr_CardTypeTransi_1.isa);
        [v15 setFooter:v29];
      }

LABEL_22:
      v35 = [v15 items];
      [v35 addObject:v28];
    }

    v22 = [v20 countByEnumeratingWithState:&v45 objects:v50 count:16];
  }

  while (v22);
LABEL_24:

  [*(v43 + 72) addObject:v15];
  v36 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v15 title];
    *buf = 138412290;
    v53 = v37;
    _os_log_impl(&dword_25B300000, v36, OS_LOG_TYPE_DEFAULT, "Added products section with title: %@", buf, 0xCu);
  }

  v5 = v44;
  v7 = v40;
  v6 = v41;
  v11 = v39;
  v38 = v42;
LABEL_28:

LABEL_29:
}

+ (void)_addAppleBalanceToSections:(id)sections fromModel:(id)model
{
  v18[1] = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  v6 = [model productsForFeatureIdentifier:4];
  if ([v6 count])
  {
    firstObject = [v6 firstObject];
    displayName = [firstObject displayName];
    v9 = displayName;
    if (displayName)
    {
      v10 = displayName;
    }

    else
    {
      v10 = PKLocalizedAppleBalanceString(&cfstr_AppleAccountTi.isa);
    }

    v11 = v10;

    productIdentifier = [firstObject productIdentifier];
    v18[0] = firstObject;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v14 = [NPKPaymentProvisioningFlowPickerItem itemWithIdentifier:productIdentifier products:v13];

    v17 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v16 = [NPKPaymentProvisioningFlowPickerSection sectionWithTitle:v11 productType:&unk_286CE76F0 items:v15];

    [sectionsCopy addObject:v16];
  }
}

+ (void)_addCreditDebitItemToSection:(id)section webService:(id)service
{
  sectionCopy = section;
  if (PKDeviceSupportsFelicaDebitWithWebService())
  {
    v5 = @"CARD_TYPE_CREDIT_DEBIT";
  }

  else
  {
    v5 = @"CARD_TYPE_CREDIT_PREPAID";
  }

  v9 = PKLocalizedPaymentString(&v5->isa);
  v6 = [NPKPaymentProvisioningFlowPickerItem itemWithIdentifier:@"regularPaymentCardProvisioning" title:v9 products:0];
  v7 = sectionCopy[2](sectionCopy);

  items = [v7 items];
  [items insertObject:v6 atIndex:0];
}

+ (id)_authContext
{
  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  v5 = [mEMORY[0x277CF0130] altDSIDForAccount:aa_primaryAppleAccount];

  v6 = objc_alloc_init(MEMORY[0x277CF0170]);
  [v6 setAltDSID:v5];
  [v6 setSecurityUpgradeContext:*MEMORY[0x277CF0090]];

  return v6;
}

+ (BOOL)_isHSA2Enabled
{
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  _authContext = [self _authContext];
  altDSID = [_authContext altDSID];
  v6 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:altDSID];

  LOBYTE(_authContext) = [mEMORY[0x277CF0130] securityLevelForAccount:v6] > 3;
  return _authContext;
}

+ (BOOL)_localCredentials:(id)credentials containProduct:(id)product
{
  credentialsCopy = credentials;
  paymentOptions = [product paymentOptions];
  firstObject = [paymentOptions firstObject];

  cardType = [firstObject cardType];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__NPKPaymentProvisioningFlowController_FlowSelection___localCredentials_containProduct___block_invoke;
  v10[3] = &__block_descriptor_40_e29_B16__0__PKPaymentCredential_8l;
  v10[4] = cardType;
  LOBYTE(paymentOptions) = [credentialsCopy pk_containsObjectPassingTest:v10];

  return paymentOptions;
}

- (void)_transitionToDigitalIssuanceForProduct:(id)product requestContext:(id)context
{
  contextCopy = context;
  productCopy = product;
  [(NPKPaymentProvisioningFlowController *)self setDigitalIssuanceAmountRequestContext:contextCopy];
  v15 = [[NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext alloc] initWithRequestContext:contextCopy];

  [(NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext *)v15 setProduct:productCopy];
  -[NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext setAllowsReaderModeEntry:](v15, "setAllowsReaderModeEntry:", [objc_opt_class() _readerModeEntryAllowedForProduct:productCopy]);
  v8 = [productCopy provisioningMethodMetadataForType:*MEMORY[0x277D388D0]];

  digitalIssuanceMetadata = [v8 digitalIssuanceMetadata];
  serviceProviderProducts = [digitalIssuanceMetadata serviceProviderProducts];
  v11 = serviceProviderProducts;
  if (!serviceProviderProducts || ![serviceProviderProducts count])
  {
LABEL_6:
    v14 = 150;
    goto LABEL_7;
  }

  balanceIdentifier = [digitalIssuanceMetadata balanceIdentifier];

  if (balanceIdentifier)
  {
    balanceIdentifier2 = [digitalIssuanceMetadata balanceIdentifier];

    if (balanceIdentifier2)
    {
      v14 = 144;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v14 = 145;
LABEL_7:
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:v14 withContext:v15];
}

- (void)_handleDigitalIssuanceTermsAccepted:(id)accepted
{
  acceptedCopy = accepted;
  v5 = pk_Payment_log(acceptedCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Digital issuance terms accepted", buf, 2u);
    }
  }

  [(NPKPaymentProvisioningFlowController *)self setDigitalIssuancePaymentRequestContext:acceptedCopy];
  [(NPKPaymentProvisioningFlowController *)self setTermsAcceptedOutOfBand:1];
  unitTestingAuthorizationController = [(NPKPaymentProvisioningFlowController *)self unitTestingAuthorizationController];
  v10 = unitTestingAuthorizationController;
  if (unitTestingAuthorizationController)
  {
    v11 = unitTestingAuthorizationController;
  }

  else
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v12 = getPKPaymentAuthorizationControllerClass_softClass;
    v28 = getPKPaymentAuthorizationControllerClass_softClass;
    if (!getPKPaymentAuthorizationControllerClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __getPKPaymentAuthorizationControllerClass_block_invoke;
      v23 = &unk_2799457C8;
      v24 = &v25;
      __getPKPaymentAuthorizationControllerClass_block_invoke(buf);
      v12 = v26[3];
    }

    v13 = v12;
    _Block_object_dispose(&v25, 8);
    v14 = [v12 alloc];
    digitalIssuancePaymentRequest = [(NPKPaymentProvisioningFlowController *)self digitalIssuancePaymentRequest];
    v11 = [v14 initWithPaymentRequest:digitalIssuancePaymentRequest];
  }

  [(NPKPaymentProvisioningFlowController *)self setAuthorizationController:v11];
  [v11 setDelegate:self];
  [v11 setPrivateDelegate:self];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __93__NPKPaymentProvisioningFlowController_DigitalIssuance___handleDigitalIssuanceTermsAccepted___block_invoke;
  v17[3] = &unk_2799464B8;
  v18 = acceptedCopy;
  selfCopy = self;
  v16 = acceptedCopy;
  [v11 presentWithCompletion:v17];
}

void __93__NPKPaymentProvisioningFlowController_DigitalIssuance___handleDigitalIssuanceTermsAccepted___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NPKPaymentProvisioningFlowController_DigitalIssuance___handleDigitalIssuanceTermsAccepted___block_invoke_2;
  block[3] = &unk_279946490;
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __93__NPKPaymentProvisioningFlowController_DigitalIssuance___handleDigitalIssuanceTermsAccepted___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v4 = [[NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext alloc] initWithRequestContext:*(a1 + 32)];
    v2 = [*(a1 + 40) currentProduct];
    [(NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext *)v4 setProduct:v2];

    [*(a1 + 40) _performTransitionToStep:155 withContext:v4];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = PKDisplayableErrorForCommonType();
    [v3 _sendDidEncounterError:? requestContext:?];
  }
}

- (void)_canMakeDigitalIssuancePaymentsForTransitProducts:(id)products withCompletion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  productsCopy = products;
  completionCopy = completion;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v7 = v6;
  webService = [(NPKPaymentProvisioningFlowController *)self webService];
  targetDevice = [webService targetDevice];
  deviceRegion = [targetDevice deviceRegion];

  v9 = [productsCopy sortedArrayUsingFunction:_compareProductByRegionCodes context:deviceRegion];
  mEMORY[0x277D37FC0] = [MEMORY[0x277D37FC0] sharedInstance];
  v10 = objc_alloc_init(MEMORY[0x277D37DB0]);
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v11)
  {
    v12 = *v34;
    do
    {
      v13 = 0;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __122__NPKPaymentProvisioningFlowController_DigitalIssuance___canMakeDigitalIssuancePaymentsForTransitProducts_withCompletion___block_invoke;
        v29[3] = &unk_279947478;
        v29[4] = self;
        v29[5] = v14;
        v30 = mEMORY[0x277D37FC0];
        v31 = v39;
        v32 = v37;
        [v10 addOperation:v29];

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v11);
  }

  null = [MEMORY[0x277CBEB68] null];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __122__NPKPaymentProvisioningFlowController_DigitalIssuance___canMakeDigitalIssuancePaymentsForTransitProducts_withCompletion___block_invoke_3;
  v24[3] = &unk_2799474A0;
  v28 = v7;
  v26 = v37;
  v27 = v39;
  v16 = completionCopy;
  v25 = v16;
  v17 = [v10 evaluateWithInput:null completion:v24];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);
}

void __122__NPKPaymentProvisioningFlowController_DigitalIssuance___canMakeDigitalIssuancePaymentsForTransitProducts_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) provisioningController];
  v9 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __122__NPKPaymentProvisioningFlowController_DigitalIssuance___canMakeDigitalIssuancePaymentsForTransitProducts_withCompletion___block_invoke_2;
  v13[3] = &unk_279947450;
  v13[4] = v9;
  v10 = *(a1 + 48);
  v17 = *(a1 + 56);
  v15 = v6;
  v16 = v7;
  v14 = v10;
  v11 = v6;
  v12 = v7;
  [v8 requestProvisioningMethodMetadataForProduct:v9 completionHandler:v13];
}

void __122__NPKPaymentProvisioningFlowController_DigitalIssuance___canMakeDigitalIssuancePaymentsForTransitProducts_withCompletion___block_invoke_2(uint64_t a1)
{
  v10 = [*(a1 + 32) provisioningMethodMetadataForType:*MEMORY[0x277D388D0]];
  if (v10)
  {
    v2 = [v10 digitalIssuanceMetadata];
    v3 = [v2 serviceProviderAcceptedNetworks];
    v4 = [v2 serviceProviderCountryCode];
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CBEB98] setWithArray:v3];
    v7 = [v2 serviceProviderCapabilities];
    v8 = PKMerchantCapabilityFromStrings();
    v9 = [MEMORY[0x277CBEB98] setWithObject:v4];
    LOBYTE(v5) = [v5 hasPassesWithSupportedNetworks:v6 merchantCapabilities:v8 issuerCountryCodes:v9 webDomain:0];

    *(*(*(a1 + 64) + 8) + 24) |= v5;
  }

  ++*(*(*(a1 + 72) + 8) + 24);
  (*(*(a1 + 56) + 16))();
}

uint64_t __122__NPKPaymentProvisioningFlowController_DigitalIssuance___canMakeDigitalIssuancePaymentsForTransitProducts_withCompletion___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v2 = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = *(a1 + 56);
  v6 = pk_General_log(v2);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_General_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(*(a1 + 40) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v13 = 136315906;
      v14 = "[NPKPaymentProvisioningFlowController(DigitalIssuance) _canMakeDigitalIssuancePaymentsForTransitProducts:withCompletion:]_block_invoke_3";
      v15 = 2048;
      v16 = v4 - v5;
      v17 = 1024;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: %s: completed in %f seconds, after %u products, hasCompatiblePass = %@", &v13, 0x26u);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_canMakeDigitalIssuancePaymentsForTransitProductsWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = PKInAppSupportedPaymentNetworks();
  mEMORY[0x277D37FC0] = [MEMORY[0x277D37FC0] sharedInstance];
  v5 = [MEMORY[0x277CBEB98] setWithArray:v7];
  v6 = [mEMORY[0x277D37FC0] hasPassesWithSupportedNetworks:v5 merchantCapabilities:159 issuerCountryCodes:0 webDomain:0];

  completionCopy[2](completionCopy, v6, 0);
}

- (void)_startDigitalIssuancePaymentWithAmount:(id)amount requestContext:(id)context serviceProviderProduct:(id)product productItem:(id)item
{
  v40 = *MEMORY[0x277D85DE8];
  amountCopy = amount;
  contextCopy = context;
  productCopy = product;
  itemCopy = item;
  currentProduct = [(NPKPaymentProvisioningFlowController *)self currentProduct];
  v15 = [currentProduct provisioningMethodMetadataForType:*MEMORY[0x277D388D0]];
  minLoadedBalance = [v15 minLoadedBalance];
  maxLoadedBalance = [v15 maxLoadedBalance];
  v32 = productCopy;
  if (minLoadedBalance && [amountCopy compare:{minLoadedBalance, productCopy}] == -1)
  {
    v18 = itemCopy;
    v29 = pk_Payment_log(-1);
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

    if (v30)
    {
      v22 = pk_Payment_log(v31);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v37 = amountCopy;
        v38 = 2112;
        v39 = minLoadedBalance;
        v23 = "Warning: Provided digital issuance amount %@ which is less than the minimum %@";
        goto LABEL_16;
      }

LABEL_17:
    }

LABEL_18:
    mEMORY[0x277D37FC0] = PKDisplayableErrorForCommonType();
    [(NPKPaymentProvisioningFlowController *)self _sendDidEncounterError:mEMORY[0x277D37FC0] requestContext:contextCopy];
    goto LABEL_19;
  }

  if (maxLoadedBalance && [amountCopy compare:maxLoadedBalance] == 1)
  {
    v18 = itemCopy;
    v19 = pk_Payment_log(1);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v22 = pk_Payment_log(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v37 = amountCopy;
        v38 = 2112;
        v39 = maxLoadedBalance;
        v23 = "Warning: Provided digital issuance amount %@ which is more than the maximum %@";
LABEL_16:
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (productCopy && itemCopy)
  {
    v24 = productCopy;
    v18 = itemCopy;
    v25 = [(NPKPaymentProvisioningFlowController *)self _paymentRequestForAmount:amountCopy serviceProviderProduct:v24 productItem:itemCopy];
  }

  else
  {
    v18 = itemCopy;
    v25 = [(NPKPaymentProvisioningFlowController *)self _paymentRequestForAmount:amountCopy, v32];
  }

  v26 = v25;
  [(NPKPaymentProvisioningFlowController *)self setDigitalIssuancePaymentRequest:v25, v32];
  mEMORY[0x277D37FC0] = [MEMORY[0x277D37FC0] sharedInstance];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __146__NPKPaymentProvisioningFlowController_DigitalIssuance___startDigitalIssuancePaymentWithAmount_requestContext_serviceProviderProduct_productItem___block_invoke;
  v33[3] = &unk_2799474C8;
  v33[4] = self;
  v34 = v26;
  v35 = contextCopy;
  v28 = v26;
  [mEMORY[0x277D37FC0] canPresentPaymentRequest:v28 completion:v33];

LABEL_19:
}

void __146__NPKPaymentProvisioningFlowController_DigitalIssuance___startDigitalIssuancePaymentWithAmount_requestContext_serviceProviderProduct_productItem___block_invoke(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __146__NPKPaymentProvisioningFlowController_DigitalIssuance___startDigitalIssuancePaymentWithAmount_requestContext_serviceProviderProduct_productItem___block_invoke_2;
  v5[3] = &unk_279945958;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = a2;
  v5[4] = v3;
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __146__NPKPaymentProvisioningFlowController_DigitalIssuance___startDigitalIssuancePaymentWithAmount_requestContext_serviceProviderProduct_productItem___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 5 || v2 == 2)
  {
    v4 = *(a1 + 32);
    v7 = [v4 _addCardErrorForPaymentRequest:*(a1 + 40)];
    [v4 _sendDidEncounterError:? requestContext:?];
  }

  else
  {
    [*(a1 + 32) setDigitalIssuancePaymentRequestContext:*(a1 + 48)];
    v5 = *(a1 + 32);
    v7 = [v5 currentProduct];
    v6 = [v7 termsURL];
    [v5 _transitionBasedOnTermsForReason:1 URL:v6 requestContext:*(a1 + 48)];
  }
}

- (id)_paymentRequestForAmount:(id)amount serviceProviderProduct:(id)product productItem:(id)item
{
  v70[2] = *MEMORY[0x277D85DE8];
  amountCopy = amount;
  productCopy = product;
  itemCopy = item;
  v66 = productCopy;
  v67 = itemCopy;
  if (productCopy)
  {
    v11 = itemCopy == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  currentProduct = [(NPKPaymentProvisioningFlowController *)self currentProduct];
  v14 = [currentProduct provisioningMethodMetadataForType:*MEMORY[0x277D388D0]];
  v15 = amountCopy;
  depositAmount = [v14 depositAmount];
  v17 = v15;
  if (depositAmount)
  {
    zero = [MEMORY[0x277CCA980] zero];
    v19 = [zero compare:depositAmount];

    v17 = v15;
    if (v19 == -1)
    {
      v17 = [v15 decimalNumberByAdding:depositAmount];
    }
  }

  v61 = currentProduct;
  digitalIssuanceMetadata = [v14 digitalIssuanceMetadata];
  v21 = objc_alloc_init(MEMORY[0x277D37F90]);
  [digitalIssuanceMetadata action];
  v23 = v22 = v17;
  [v21 setItemDescription:v23];

  v24 = objc_alloc(MEMORY[0x277CBEB38]);
  serviceProviderDict = [digitalIssuanceMetadata serviceProviderDict];
  v26 = [v24 initWithDictionary:serviceProviderDict];

  v62 = v22;
  [v26 setObject:v22 forKey:*MEMORY[0x277D38990]];
  v64 = v26;
  if (v12)
  {
    v69[0] = @"identifier";
    identifier = [v67 identifier];
    v69[1] = @"amount";
    v70[0] = identifier;
    v70[1] = v15;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];

    v68 = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
    [v64 setObject:v29 forKey:*MEMORY[0x277D38998]];

    v26 = v64;
  }

  v65 = v15;
  [v21 setServiceProviderData:v26];
  serviceProviderIdentifier = [digitalIssuanceMetadata serviceProviderIdentifier];
  [v21 setServiceProviderIdentifier:serviceProviderIdentifier];

  v31 = [objc_alloc(MEMORY[0x277D38278]) initWithServiceProviderOrder:v21];
  serviceProviderAcceptedNetworks = [digitalIssuanceMetadata serviceProviderAcceptedNetworks];
  [v31 setSupportedNetworks:serviceProviderAcceptedNetworks];

  serviceProviderSupportedCountries = [digitalIssuanceMetadata serviceProviderSupportedCountries];
  [v31 setSupportedCountries:serviceProviderSupportedCountries];

  serviceProviderCapabilities = [digitalIssuanceMetadata serviceProviderCapabilities];
  [v31 setMerchantCapabilities:PKMerchantCapabilityFromStrings()];

  serviceProviderCountryCode = [digitalIssuanceMetadata serviceProviderCountryCode];
  [v31 setCountryCode:serviceProviderCountryCode];

  v63 = v14;
  currency = [v14 currency];
  [v31 setCurrencyCode:currency];

  v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  if (v12)
  {
    v38 = objc_alloc_init(MEMORY[0x277CCACA8]);
    localizedDisplayName = [v66 localizedDisplayName];
    if (localizedDisplayName && (v40 = localizedDisplayName, [v67 localizedDisplayName], v41 = objc_claimAutoreleasedReturnValue(), v41, v40, v41))
    {
      v42 = MEMORY[0x277CCACA8];
      localizedDisplayName2 = [v66 localizedDisplayName];
      localizedDisplayName3 = [v67 localizedDisplayName];
      localizedDisplayName5 = [v42 stringWithFormat:@"%@ - %@", localizedDisplayName2, localizedDisplayName3];

      v38 = localizedDisplayName2;
    }

    else
    {
      localizedDisplayName4 = [v66 localizedDisplayName];

      if (!localizedDisplayName4)
      {
LABEL_20:
        v47 = MEMORY[0x277D38138];
        goto LABEL_21;
      }

      localizedDisplayName5 = [v66 localizedDisplayName];
    }

    v38 = localizedDisplayName5;
    goto LABEL_20;
  }

  v46 = MEMORY[0x277D38138];
  v38 = PKLocalizedPaymentString(&cfstr_SetupPurchaseT.isa);
  v47 = v46;
LABEL_21:
  v49 = [v47 summaryItemWithLabel:v38 amount:v65];

  [v37 addObject:v49];
  if (depositAmount)
  {
    zero2 = [MEMORY[0x277CCA980] zero];
    v51 = [zero2 compare:depositAmount];

    if (v51 == -1)
    {
      depositType = [v63 depositType];
      if (depositType > 2)
      {
        v53 = 0;
      }

      else
      {
        v53 = PKLocalizedPaymentString(&off_279947500[depositType]->isa);
      }

      v54 = [MEMORY[0x277D38138] summaryItemWithLabel:v53 amount:depositAmount];
      [v37 addObject:v54];
    }
  }

  serviceProviderLocalizedDisplayName = [digitalIssuanceMetadata serviceProviderLocalizedDisplayName];
  v56 = serviceProviderLocalizedDisplayName;
  if (serviceProviderLocalizedDisplayName)
  {
    displayName = serviceProviderLocalizedDisplayName;
    v58 = v61;
  }

  else
  {
    v58 = v61;
    displayName = [v61 displayName];
  }

  v59 = [MEMORY[0x277D38138] summaryItemWithLabel:displayName amount:v62];
  [v37 addObject:v59];
  [v31 setPaymentSummaryItems:v37];

  return v31;
}

- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler
{
  v5 = MEMORY[0x277D37FF0];
  handlerCopy = handler;
  v7 = [[v5 alloc] initWithStatus:0 errors:0];
  handlerCopy[2](handlerCopy, v7);
}

- (void)paymentAuthorizationControllerDidFinish:(id)finish
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __97__NPKPaymentProvisioningFlowController_DigitalIssuance__paymentAuthorizationControllerDidFinish___block_invoke;
  v3[3] = &unk_279944F98;
  v3[4] = self;
  [finish dismissWithCompletion:v3];
}

void __97__NPKPaymentProvisioningFlowController_DigitalIssuance__paymentAuthorizationControllerDidFinish___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__NPKPaymentProvisioningFlowController_DigitalIssuance__paymentAuthorizationControllerDidFinish___block_invoke_2;
  block[3] = &unk_279944F98;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __97__NPKPaymentProvisioningFlowController_DigitalIssuance__paymentAuthorizationControllerDidFinish___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAuthorizationController:0];
  v2 = [*(a1 + 32) currentProduct];
  v3 = [*(a1 + 32) digitalIssuancePurchase];
  if (v3)
  {
    v4 = [v2 provisioningMethodMetadataForType:*MEMORY[0x277D388D0]];
    v5 = objc_alloc(MEMORY[0x277D37E50]);
    v6 = [*(a1 + 32) digitalIssuanceAmount];
    v7 = [v4 currency];
    v8 = [v5 initWithAmount:v6 currency:v7 exponent:0];

    v9 = [objc_alloc(MEMORY[0x277D38050]) initWithPaymentSetupProduct:v2 purchase:v3 balance:v8];
    [*(a1 + 32) setDigitalIssuancePurchase:0];
    v10 = [*(a1 + 32) provisioningController];
    [v10 resolveRequirementsUsingProvisioningMethodMetadata:v4];

    v11 = [*(a1 + 32) provisioningController];
    v12 = [v11 requirementsResponse];
    [v9 setRequirementsResponse:v12];

    v13 = *(a1 + 32);
    v14 = [v13 digitalIssuancePaymentRequestContext];
    [v13 _transitionToProvisioningProgressWithRequestContext:v14];

    v15 = *(a1 + 32);
    v16 = [v15 digitalIssuancePaymentRequestContext];
    [v15 _transitionToProvisioningForCredential:v9 product:v2 requestContext:v16];
  }

  else
  {
    v17 = pk_Payment_log(0);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v20 = pk_Payment_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: No digital issuance purchase; going back", v22, 2u);
      }
    }

    [*(a1 + 32) setTermsAcceptedOutOfBand:0];
    v21 = *(a1 + 32);
    v4 = [v21 digitalIssuanceAmountRequestContext];
    [v21 _transitionToDigitalIssuanceForProduct:v2 requestContext:v4];
  }
}

- (void)paymentAuthorizationController:(id)controller didAuthorizePurchase:(id)purchase completion:(id)completion
{
  purchaseCopy = purchase;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__NPKPaymentProvisioningFlowController_DigitalIssuance__paymentAuthorizationController_didAuthorizePurchase_completion___block_invoke;
  block[3] = &unk_279945A48;
  v12 = purchaseCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = purchaseCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __120__NPKPaymentProvisioningFlowController_DigitalIssuance__paymentAuthorizationController_didAuthorizePurchase_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setDigitalIssuancePurchase:?];
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (id)_addCardErrorForPaymentRequest:(id)request
{
  requestCopy = request;
  supportedNetworks = [requestCopy supportedNetworks];
  merchantCapabilities = [requestCopy merchantCapabilities];

  v6 = [supportedNetworks count];
  v7 = merchantCapabilities & 0xC;
  v8 = PKLocalizedPaymentString(&cfstr_SetupPurchaseP.isa);
  if (v6 == 1)
  {
    v9 = [supportedNetworks objectAtIndexedSubscript:0];
    PKPaymentCredentialTypeForPaymentNetworkName();

    v10 = PKDisplayablePaymentNetworkNameForPaymentCredentialType();
    if (NPKPairedOrPairingDeviceIsTinker())
    {
      v11 = @"PROVISIONING_SETUP_PURCHASE_ADD_SPECIFIC_CARD_ALERT_MESSAGE_FAMILY_SETUP";
      if (v7 == 8)
      {
        v11 = @"PROVISIONING_SETUP_PURCHASE_ADD_SPECIFIC_DEBIT_CARD_ALERT_MESSAGE_FAMILY_SETUP";
      }

      v12 = v11;
      v13 = NPKLocalizedStringWithTableSuffix(v12, &cfstr_Paymentprovisi.isa, &stru_286C96FD8.isa, v10);
    }

    else
    {
      v16 = @"SETUP_PURCHASE_ADD_SPECIFIC_CARD_ALERT_MESSAGE";
      if (v7 == 8)
      {
        v16 = @"SETUP_PURCHASE_ADD_SPECIFIC_DEBIT_CARD_ALERT_MESSAGE";
      }

      v12 = v16;
      v13 = PKLocalizedPaymentString(v12, &stru_286C96FD8.isa, v10);
    }

    v17 = v13;
  }

  else
  {
    if (NPKPairedOrPairingDeviceIsTinker())
    {
      if (v7 == 8)
      {
        v14 = @"PROVISIONING_SETUP_PURCHASE_ADD_DEBIT_PAYMENT_METHOD_ALERT_MESSAGE_FAMILY_SETUP";
      }

      else
      {
        v14 = @"PROVISIONING_SETUP_PURCHASE_ADD_PAYMENT_METHOD_ALERT_MESSAGE_FAMILY_SETUP";
      }

      v15 = NPKLocalizedStringWithTableSuffix(&v14->isa, &cfstr_Paymentprovisi.isa);
    }

    else
    {
      if (v7 == 8)
      {
        v18 = @"SETUP_PURCHASE_ADD_DEBIT_PAYMENT_METHOD_ALERT_MESSAGE";
      }

      else
      {
        v18 = @"SETUP_PURCHASE_ADD_PAYMENT_METHOD_ALERT_MESSAGE";
      }

      v15 = PKLocalizedPaymentString(&v18->isa);
    }

    v17 = v15;
  }

  v19 = PKDisplayableErrorCustom();

  return v19;
}

+ (id)_displayableErrorWithIneligibilityReason:(int64_t)reason learnMoreURL:(id)l
{
  v29[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = lCopy;
  v8 = reason == 5 || lCopy == 0;
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PKPaymentCardEligibilityErrorDomain" code:reason userInfo:0];
  if (reason <= 3)
  {
    switch(reason)
    {
      case 1:
        v10 = PKLocalizedPaymentString(&cfstr_EligibilityUnk.isa);
        if (v8)
        {
          v19 = @"ELIGIBILITY_UNKNOWN_REQUIREMENTS_ERROR_MESSAGE_NO_URL";
LABEL_29:
          v11 = PKLocalizedPaymentString(&v19->isa);
          goto LABEL_30;
        }

        v21 = @"ELIGIBILITY_UNKNOWN_REQUIREMENTS_ERROR_MESSAGE";
        break;
      case 2:
        NPKTrackPaymentProvisioningWebServicesCheck(0);
        v10 = PKLocalizedPaymentString(&cfstr_EligibilityIne.isa);
        if (v8)
        {
          v19 = @"ELIGIBILITY_INELIGIBLE_ERROR_MESSAGE_NO_URL";
          goto LABEL_29;
        }

        v21 = @"ELIGIBILITY_INELIGIBLE_ERROR_MESSAGE";
        break;
      case 3:
        NPKTrackPaymentProvisioningWebServicesCheck(1);
        v10 = PKLocalizedPaymentString(&cfstr_EligibilityUna.isa);
        v17 = @"ELIGIBILITY_UNAVAILABLE_ERROR_MESSAGE";
LABEL_24:
        v18 = PKLocalizedPaymentString(&v17->isa);
LABEL_25:
        v11 = v18;
        if (!v8)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      default:
LABEL_20:
        v10 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar.isa);
        v17 = @"COULD_NOT_ADD_CARD_MESSAGE";
        goto LABEL_24;
    }

    v11 = PKLocalizedPaymentString(&v21->isa);
LABEL_34:
    v25[0] = *MEMORY[0x277CCA480];
    v12 = PKLocalizedPaymentString(&cfstr_EligibilityLea.isa);
    v24 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v25[1] = *MEMORY[0x277D38628];
    v26[0] = v13;
    v26[1] = v6;
    v14 = MEMORY[0x277CBEAC0];
    v15 = v26;
    v16 = v25;
    goto LABEL_35;
  }

  if (reason > 5)
  {
    if (reason == 6)
    {
      v10 = PKLocalizedPaymentString(&cfstr_EligibilityHar.isa);
      v17 = @"ELIGIBILITY_HARDWARE_NOT_SUPPORTED_ERROR_MESSAGE_WATCH";
      goto LABEL_24;
    }

    if (reason == 7)
    {
      v10 = PKLocalizedAppleBalanceString(&cfstr_EligibilityErr.isa);
      v18 = PKLocalizedAppleBalanceString(&cfstr_EligibilityErr_0.isa);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (reason == 4)
  {
    NPKTrackPaymentProvisioningWebServicesCheck(2);
    v10 = PKLocalizedPaymentString(&cfstr_EligibilityAlr.isa);
    v11 = 0;
    if (!v8)
    {
      goto LABEL_34;
    }

LABEL_30:
    v20 = 0;
    goto LABEL_36;
  }

  NPKTrackPaymentProvisioningWebServicesCheck(3);
  v10 = PKLocalizedPaymentString(&cfstr_EligibilityNew.isa);
  v11 = PKLocalizedPaymentString(&cfstr_EligibilityNew_0.isa);
  v28[0] = *MEMORY[0x277CCA480];
  v12 = PKLocalizedPaymentString(&cfstr_EligibilitySof.isa);
  v27 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v28[1] = *MEMORY[0x277D38628];
  v29[0] = v13;
  v29[1] = @"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK";
  v14 = MEMORY[0x277CBEAC0];
  v15 = v29;
  v16 = v28;
LABEL_35:
  v20 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:2];

LABEL_36:
  v22 = PKDisplayableErrorCustom();

  return v22;
}

+ (id)_displayableErrorWithUnderlyingVerificationError:(id)error
{
  errorCopy = error;
  v4 = PKLocalizedPaymentString(&cfstr_ActivationNotA.isa);
  v5 = PKLocalizedPaymentString(&cfstr_ActivationNotA_0.isa);
  domain = [errorCopy domain];
  v7 = [domain isEqualToString:*MEMORY[0x277CCA738]];

  if (v7)
  {
    localizedFailureReason3 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa);

    localizedRecoverySuggestion = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
LABEL_10:
    domain3 = v5;
    v4 = localizedFailureReason3;
    v5 = localizedRecoverySuggestion;
    goto LABEL_11;
  }

  domain2 = [errorCopy domain];
  v11 = [domain2 isEqualToString:*MEMORY[0x277D38AF8]];

  if (!v11)
  {
    domain3 = [errorCopy domain];
    if (![domain3 isEqualToString:*MEMORY[0x277D38958]])
    {
LABEL_11:

      goto LABEL_12;
    }

    localizedFailureReason = [errorCopy localizedFailureReason];

    if (!localizedFailureReason)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ([errorCopy code] <= 5)
  {
    localizedFailureReason2 = [errorCopy localizedFailureReason];

    if (localizedFailureReason2)
    {
LABEL_9:
      localizedFailureReason3 = [errorCopy localizedFailureReason];

      localizedRecoverySuggestion = [errorCopy localizedRecoverySuggestion];
      goto LABEL_10;
    }
  }

LABEL_12:
  v15 = PKDisplayableErrorCustom();

  return v15;
}

+ (id)_displayableCouldNotAddCardErrorWithUnderlyingError:(id)error
{
  errorCopy = error;
  v4 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar.isa);
  v5 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar_0.isa);
  v6 = PKDisplayableErrorCustom();

  return v6;
}

+ (BOOL)_readerModeEntryAllowedForProduct:(id)product
{
  productCopy = product;
  v4 = productCopy;
  if (!productCopy)
  {
    goto LABEL_20;
  }

  supportedProvisioningMethods = [productCopy supportedProvisioningMethods];
  v6 = supportedProvisioningMethods;
  if ((supportedProvisioningMethods & 1) == 0)
  {
    v7 = pk_Payment_log(supportedProvisioningMethods);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v10 = pk_Payment_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Reader mode entry is disabled because transit product lacks reader mode provisioning method", buf, 2u);
      }
    }
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (([v4 allSupportedProtocols] & 4) != 0)
  {
    IsAvailable = PKFelicaSecureElementIsAvailable();
    if (!IsAvailable)
    {
      v20 = pk_Payment_log(IsAvailable);
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

      if (v21)
      {
        v17 = pk_Payment_log(v22);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          v18 = "Notice: Reader mode entry is disabled for typeF product as a local Felica secure element is not available";
          v19 = v25;
          goto LABEL_18;
        }

LABEL_19:
      }

LABEL_20:
      v13 = 0;
      goto LABEL_21;
    }
  }

  v12 = PKSecureElementIsAvailable();
  if (!v12)
  {
    v14 = pk_Payment_log(v12);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v17 = pk_Payment_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 0;
        v18 = "Notice: Reader mode entry is disabled because secure element is not available";
        v19 = &v24;
LABEL_18:
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 2u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v13 = 1;
LABEL_21:

  return v13;
}

- (void)_transitionToReaderModeForProduct:(id)product requestContext:(id)context
{
  productCopy = product;
  contextCopy = context;
  provisioningController = [(NPKPaymentProvisioningFlowController *)self provisioningController];
  [provisioningController resolveRequirementsUsingProduct:productCopy];

  v8 = [productCopy provisioningMethodMetadataForType:*MEMORY[0x277D388E8]];
  [(NPKPaymentProvisioningFlowController *)self setIngestionMethodMetadata:v8];
  if (v8)
  {
    requiredFields = [v8 requiredFields];
    readerModeResources = [v8 readerModeResources];
    v11 = [readerModeResources objectForKeyedSubscript:*MEMORY[0x277D388F8]];
    v12 = [v11 objectForKeyedSubscript:@"welcome"];

    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D388E0]];
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277D388D8]];
  }

  else
  {
    requiredFields = [productCopy requiredFields];
    v14 = 0;
    v13 = 0;
  }

  v15 = [objc_alloc(MEMORY[0x277D38110]) initWithPaymentSetupFields:requiredFields];
  [(NPKPaymentProvisioningFlowController *)self setFieldsModel:v15];

  v16 = [[NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext alloc] initWithRequestContext:contextCopy];
  [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)v16 setProduct:productCopy];
  [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)v16 setTitle:v13];
  [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)v16 setSubtitle:v14];
  [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)v16 setSetupFields:requiredFields];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:160 withContext:v16];
}

- (void)_handleReaderModeTermsAccepted:(id)accepted
{
  acceptedCopy = accepted;
  v5 = pk_Payment_log(acceptedCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Reader mode terms accepted", v9, 2u);
    }
  }

  [(NPKPaymentProvisioningFlowController *)self setTermsAcceptedOutOfBand:1];
  [(NPKPaymentProvisioningFlowController *)self _startReaderModeIngestion:acceptedCopy];
}

- (void)_startReaderModeIngestion:(id)ingestion
{
  [(NPKPaymentProvisioningFlowController *)self setReaderModeRequestContext:ingestion];
  [(NPKPaymentProvisioningFlowController *)self setInternalIngestionState:0];
  [(NPKPaymentProvisioningFlowController *)self setFlowIngestionState:0];

  [(NPKPaymentProvisioningFlowController *)self _startIngestion];
}

- (void)_noteProvisioningStateChangeForReaderMode:(int64_t)mode
{
  internalIngestionState = [(NPKPaymentProvisioningFlowController *)self internalIngestionState];
  if (mode == 1 && internalIngestionState == 3)
  {
    [(NPKPaymentProvisioningFlowController *)self setInternalIngestionState:4];
    v6 = 0.537313433;
LABEL_7:

    [(NPKPaymentProvisioningFlowController *)self _transitionToIngestionProgress:v6];
    return;
  }

  internalIngestionState2 = [(NPKPaymentProvisioningFlowController *)self internalIngestionState];
  if (mode == 4 && internalIngestionState2 == 4)
  {
    [(NPKPaymentProvisioningFlowController *)self setInternalIngestionState:5];
    v6 = 0.776119403;
    goto LABEL_7;
  }

  internalIngestionState3 = [(NPKPaymentProvisioningFlowController *)self internalIngestionState];
  if (mode == 5 && internalIngestionState3 == 5)
  {
    [(NPKPaymentProvisioningFlowController *)self setInternalIngestionState:6];
    [(NPKPaymentProvisioningFlowController *)self _transitionToIngestionProgress:0.98];

    [(NPKPaymentProvisioningFlowController *)self _startTransferringCard];
  }
}

- (void)_setupCardIngester
{
  cardIngester = [(NPKPaymentProvisioningFlowController *)self cardIngester];

  if (!cardIngester)
  {
    unitTestingCardIngester = [(NPKPaymentProvisioningFlowController *)self unitTestingCardIngester];
    v5 = unitTestingCardIngester;
    if (unitTestingCardIngester)
    {
      v8 = unitTestingCardIngester;
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x277D37E30]);
      currentProduct = [(NPKPaymentProvisioningFlowController *)self currentProduct];
      v8 = [v6 initWithPaymentSetupProduct:currentProduct delegate:self];
    }

    [(NPKPaymentProvisioningFlowController *)self setCardIngester:v8];
  }
}

- (void)_tearDownCardIngester
{
  cardIngester = [(NPKPaymentProvisioningFlowController *)self cardIngester];
  [cardIngester invalidate];

  [(NPKPaymentProvisioningFlowController *)self setCardIngester:0];
  [(NPKPaymentProvisioningFlowController *)self setIngestionCardSessionToken:0];

  [(NPKPaymentProvisioningFlowController *)self _invalidateCardNotFoundTimer];
}

- (void)contactlessCardIngester:(id)ingester didUpdateCardIngestionStatus:(unint64_t)status
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __105__NPKPaymentProvisioningFlowController_ReaderMode__contactlessCardIngester_didUpdateCardIngestionStatus___block_invoke;
  v5[3] = &unk_279945830;
  v5[4] = self;
  v5[5] = status;
  v4 = v5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke;
  block[3] = &unk_279945198;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __105__NPKPaymentProvisioningFlowController_ReaderMode__contactlessCardIngester_didUpdateCardIngestionStatus___block_invoke(id *a1)
{
  v1 = a1;
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  if (v2 == 2)
  {
    v3 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__NPKPaymentProvisioningFlowController_ReaderMode__contactlessCardIngester_didUpdateCardIngestionStatus___block_invoke_2;
    block[3] = &unk_279944F98;
    block[4] = v1[4];
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
    [v1[4] _invalidateCardNotFoundTimer];
    a1 = [v1[4] internalIngestionState];
    if (a1 == 2)
    {
      v4 = 0.179104478;
    }

    else
    {
      if (a1 != 7)
      {
        goto LABEL_9;
      }

      v4 = 0.98;
    }

    a1 = [v1[4] _transitionToIngestionProgress:v4];
  }

  else if (v2 == 10)
  {
    a1 = [a1[4] _startCardNotFoundTimer];
  }

LABEL_9:
  v5 = pk_Payment_log(a1);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v1[5];
      *buf = 134217984;
      v12 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Card ingestion status: %lu", buf, 0xCu);
    }
  }
}

unint64_t __105__NPKPaymentProvisioningFlowController_ReaderMode__contactlessCardIngester_didUpdateCardIngestionStatus___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) internalIngestionState];
  if (result <= 7 && ((1 << result) & 0x9C) != 0)
  {
    v4 = *(a1 + 32);

    return [v4 _transitionToFlowIngestionState:3];
  }

  return result;
}

- (void)_transitionToFlowIngestionState:(unint64_t)state progress:(double)progress
{
  if ([(NPKPaymentProvisioningFlowController *)self flowIngestionState]!= state || ([(NPKPaymentProvisioningFlowController *)self ingestionProgress], v7 != progress))
  {
    [(NPKPaymentProvisioningFlowController *)self setFlowIngestionState:state];
    [(NPKPaymentProvisioningFlowController *)self setIngestionProgress:progress];
    v8 = [NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext alloc];
    readerModeRequestContext = [(NPKPaymentProvisioningFlowController *)self readerModeRequestContext];
    v15 = [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)v8 initWithRequestContext:readerModeRequestContext];

    [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)v15 setIngestionState:state];
    [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)v15 setIngestionProgress:progress];
    v10 = [(NPKPaymentProvisioningFlowController *)self _titleForState:state];
    [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)v15 setTitle:v10];

    v11 = [(NPKPaymentProvisioningFlowController *)self _subtitleForState:state];
    [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)v15 setSubtitle:v11];

    v12 = objc_opt_class();
    ingestionMethodMetadata = [(NPKPaymentProvisioningFlowController *)self ingestionMethodMetadata];
    PKScreenScale();
    v14 = [v12 _physicalCardURLFromMetadata:ingestionMethodMetadata forScale:?];
    [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)v15 setPhysicalCardImageURL:v14];

    [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:165 withContext:v15];
  }
}

- (void)contactlessCardIngester:(id)ingester didFailToIngestCardWithError:(id)error resetProvisioning:(BOOL)provisioning isRecoverable:(BOOL)recoverable
{
  errorCopy = error;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __137__NPKPaymentProvisioningFlowController_ReaderMode__contactlessCardIngester_didFailToIngestCardWithError_resetProvisioning_isRecoverable___block_invoke;
  v12[3] = &unk_279949070;
  provisioningCopy = provisioning;
  v12[4] = self;
  v13 = errorCopy;
  recoverableCopy = recoverable;
  v10 = v12;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke;
  block[3] = &unk_279945198;
  v17 = v10;
  v11 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __137__NPKPaymentProvisioningFlowController_ReaderMode__contactlessCardIngester_didFailToIngestCardWithError_resetProvisioning_isRecoverable___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _invalidateCardNotFoundTimer];
  [*(a1 + 32) setIngestionStateOnRetry:0];
  v2 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v3 = [v2 _resetReaderModeProvisioningState];
  }

  else
  {
    v4 = [v2 internalIngestionState];
    v5 = 0.0;
    if (v4 == 7)
    {
      [*(a1 + 32) setIngestionStateOnRetry:{6, 0.0}];
      v5 = 0.776119403;
    }

    v3 = [*(a1 + 32) _transitionToFlowIngestionState:0 progress:v5];
  }

  v6 = pk_Payment_log(v3);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = *(a1 + 49);
      v17 = 136315906;
      v18 = "[NPKPaymentProvisioningFlowController(ReaderMode) contactlessCardIngester:didFailToIngestCardWithError:resetProvisioning:isRecoverable:]_block_invoke";
      v19 = 2112;
      v20 = v10;
      v21 = 1024;
      v22 = v11;
      v23 = 1024;
      v24 = v12;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: %s:%@ (resetProvisioning: %d, isRecoverable: %d)", &v17, 0x22u);
    }
  }

  v13 = *(a1 + 49);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = [v14 readerModeRequestContext];
  if (v13 == 1)
  {
    [v14 _sendDidEncounterError:v15 requestContext:v16];
  }

  else
  {
    [v14 _endProvisioningFlowWithError:v15 requestContext:v16];
  }
}

- (void)_startIngestion
{
  if (![(NPKPaymentProvisioningFlowController *)self internalIngestionState]|| [(NPKPaymentProvisioningFlowController *)self internalIngestionState]== 6)
  {
    [(NPKPaymentProvisioningFlowController *)self _setupCardIngester];
    [(NPKPaymentProvisioningFlowController *)self _transitionToFlowIngestionState:2];
    if ([(NPKPaymentProvisioningFlowController *)self internalIngestionState])
    {
      if ([(NPKPaymentProvisioningFlowController *)self internalIngestionState]== 6)
      {

        [(NPKPaymentProvisioningFlowController *)self _startTransferringCard];
      }
    }

    else
    {

      [(NPKPaymentProvisioningFlowController *)self _startReadingCard];
    }
  }
}

- (void)_startReadingCard
{
  internalIngestionState = [(NPKPaymentProvisioningFlowController *)self internalIngestionState];
  if (internalIngestionState)
  {
    v4 = pk_Payment_log(internalIngestionState);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = pk_Payment_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Warning: Warning! Attempted to ingestCard: while currently ingesting", v10, 2u);
      }
    }

    cardIngester = [objc_opt_class() _displayableCouldNotAddCardErrorWithUnderlyingError:0];
    readerModeRequestContext = [(NPKPaymentProvisioningFlowController *)self readerModeRequestContext];
    [(NPKPaymentProvisioningFlowController *)self _sendDidEncounterError:cardIngester requestContext:readerModeRequestContext];
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self setInternalIngestionState:2];
    cardIngester = [(NPKPaymentProvisioningFlowController *)self cardIngester];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__NPKPaymentProvisioningFlowController_ReaderMode___startReadingCard__block_invoke;
    v11[3] = &unk_279949098;
    v11[4] = self;
    [cardIngester ingestCardWithSuccessHandler:v11];
  }
}

void __69__NPKPaymentProvisioningFlowController_ReaderMode___startReadingCard__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__NPKPaymentProvisioningFlowController_ReaderMode___startReadingCard__block_invoke_2;
  v5[3] = &unk_2799454E0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __69__NPKPaymentProvisioningFlowController_ReaderMode___startReadingCard__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _invalidateCardNotFoundTimer];
  [*(a1 + 32) setIngestionCardSessionToken:*(a1 + 40)];
  v2 = objc_alloc(MEMORY[0x277D38020]);
  v3 = [*(a1 + 32) currentProduct];
  v7 = [v2 initWithPaymentSetupProduct:v3 cardSessionToken:*(a1 + 40)];

  [*(a1 + 32) setInternalIngestionState:3];
  v4 = *(a1 + 32);
  v5 = [v4 currentProduct];
  v6 = [*(a1 + 32) readerModeRequestContext];
  [v4 _transitionToProvisioningForCredential:v7 product:v5 requestContext:v6];
}

- (void)_startTransferringCard
{
  internalIngestionState = [(NPKPaymentProvisioningFlowController *)self internalIngestionState];
  if (internalIngestionState == 6)
  {
    [(NPKPaymentProvisioningFlowController *)self setInternalIngestionState:7];
    cardIngester = [(NPKPaymentProvisioningFlowController *)self cardIngester];
    ingestionCardSessionToken = [(NPKPaymentProvisioningFlowController *)self ingestionCardSessionToken];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__NPKPaymentProvisioningFlowController_ReaderMode___startTransferringCard__block_invoke;
    v11[3] = &unk_279944F98;
    v11[4] = self;
    [cardIngester ingestCardWithCardSessionToken:ingestionCardSessionToken successHandler:v11];
  }

  else
  {
    v6 = pk_Payment_log(internalIngestionState);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v9 = pk_Payment_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: Warning! attempting to ingestCardWithCardSessionToken: while currently ingesting", v10, 2u);
      }
    }

    cardIngester = [objc_opt_class() _displayableCouldNotAddCardErrorWithUnderlyingError:0];
    ingestionCardSessionToken = [(NPKPaymentProvisioningFlowController *)self readerModeRequestContext];
    [(NPKPaymentProvisioningFlowController *)self _sendDidEncounterError:cardIngester requestContext:ingestionCardSessionToken];
  }
}

void __74__NPKPaymentProvisioningFlowController_ReaderMode___startTransferringCard__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __74__NPKPaymentProvisioningFlowController_ReaderMode___startTransferringCard__block_invoke_2;
  v2[3] = &unk_279944F98;
  v2[4] = *(a1 + 32);
  v1 = v2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke;
  block[3] = &unk_279945198;
  v4 = v1;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__NPKPaymentProvisioningFlowController_ReaderMode___startTransferringCard__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setInternalIngestionState:8];
  v2 = [*(a1 + 32) provisioningController];
  v3 = [v2 provisionedPass];
  v4 = [v3 fieldForKey:*MEMORY[0x277D388C0]];
  if (v4)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  [*(a1 + 32) _transitionToFlowIngestionState:v5 progress:1.0];
  [*(a1 + 32) _tearDownCardIngester];
  v6 = *(a1 + 32);
  v9 = [v6 provisioningController];
  v7 = [v9 provisionedPass];
  v8 = [*(a1 + 32) readerModeRequestContext];
  [v6 _performNextStepForProvisionedPass:v7 requestContext:v8];
}

- (void)_resetReaderModeProvisioningState
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __85__NPKPaymentProvisioningFlowController_ReaderMode___resetReaderModeProvisioningState__block_invoke;
  v3[3] = &unk_279944F98;
  v3[4] = self;
  v2 = v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke;
  block[3] = &unk_279945198;
  v5 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __85__NPKPaymentProvisioningFlowController_ReaderMode___resetReaderModeProvisioningState__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removePassIfNecessary];
  v2 = [*(a1 + 32) provisioningController];
  [v2 resetForNewProvisioning];

  v3 = [*(a1 + 32) provisioningController];
  v4 = [*(a1 + 32) currentProduct];
  [v3 resolveRequirementsUsingProduct:v4];

  v5 = *(a1 + 32);

  return [v5 _transitionToFlowIngestionState:0 progress:0.0];
}

- (void)_removePassIfNecessary
{
  if ([(NPKPaymentProvisioningFlowController *)self internalIngestionState]!= 8)
  {
    provisioningController = [(NPKPaymentProvisioningFlowController *)self provisioningController];
    hasPaymentPass = [provisioningController hasPaymentPass];

    if (hasPaymentPass)
    {
      provisioningController2 = [(NPKPaymentProvisioningFlowController *)self provisioningController];
      [provisioningController2 removeProvisionedPass];
    }
  }
}

- (void)_transitionToFlowIngestionState:(unint64_t)state
{
  [(NPKPaymentProvisioningFlowController *)self ingestionProgress];

  [(NPKPaymentProvisioningFlowController *)self _transitionToFlowIngestionState:state progress:?];
}

- (void)_transitionToIngestionProgress:(double)progress
{
  flowIngestionState = [(NPKPaymentProvisioningFlowController *)self flowIngestionState];

  [(NPKPaymentProvisioningFlowController *)self _transitionToFlowIngestionState:flowIngestionState progress:progress];
}

- (void)_startCardNotFoundTimer
{
  [(NPKPaymentProvisioningFlowController *)self _invalidateCardNotFoundTimer];
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  [(NPKPaymentProvisioningFlowController *)self setIngestionCardNotFoundTimer:v3];

  objc_initWeak(&location, self);
  ingestionCardNotFoundTimer = [(NPKPaymentProvisioningFlowController *)self ingestionCardNotFoundTimer];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __75__NPKPaymentProvisioningFlowController_ReaderMode___startCardNotFoundTimer__block_invoke;
  v11 = &unk_279945030;
  objc_copyWeak(&v12, &location);
  dispatch_source_set_event_handler(ingestionCardNotFoundTimer, &v8);

  v5 = [(NPKPaymentProvisioningFlowController *)self ingestionCardNotFoundTimer:v8];
  v6 = dispatch_time(0, 15000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);

  ingestionCardNotFoundTimer2 = [(NPKPaymentProvisioningFlowController *)self ingestionCardNotFoundTimer];
  dispatch_resume(ingestionCardNotFoundTimer2);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __75__NPKPaymentProvisioningFlowController_ReaderMode___startCardNotFoundTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cardNotFoundTimerFired];
}

- (void)_invalidateCardNotFoundTimer
{
  ingestionCardNotFoundTimer = [(NPKPaymentProvisioningFlowController *)self ingestionCardNotFoundTimer];

  if (ingestionCardNotFoundTimer)
  {
    ingestionCardNotFoundTimer2 = [(NPKPaymentProvisioningFlowController *)self ingestionCardNotFoundTimer];
    dispatch_source_cancel(ingestionCardNotFoundTimer2);

    [(NPKPaymentProvisioningFlowController *)self setIngestionCardNotFoundTimer:0];
  }
}

+ (id)_readerModeResources
{
  if (_readerModeResources_onceToken != -1)
  {
    +[NPKPaymentProvisioningFlowController(ReaderMode) _readerModeResources];
  }

  v3 = _readerModeResources_resourceKeys;

  return v3;
}

void __72__NPKPaymentProvisioningFlowController_ReaderMode___readerModeResources__block_invoke()
{
  v2[6] = *MEMORY[0x277D85DE8];
  v2[0] = @"transferValue";
  v2[1] = @"notFound";
  v2[2] = @"transferValue";
  v2[3] = @"transferring";
  v2[4] = @"cardAdded";
  v2[5] = @"commuteCardAdded";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:6];
  v1 = _readerModeResources_resourceKeys;
  _readerModeResources_resourceKeys = v0;
}

+ (id)_physicalCardURLFromMetadata:(id)metadata forScale:(double)scale
{
  v5 = @"2x";
  if (scale > 2.0)
  {
    v5 = @"3x";
  }

  v6 = v5;
  readerModeResources = [metadata readerModeResources];
  v8 = [readerModeResources objectForKeyedSubscript:*MEMORY[0x277D388F0]];
  v9 = [v8 objectForKeyedSubscript:@"plasticCardImages"];

  if (v9 && (v10 = [v9 count]) != 0)
  {
    v11 = MEMORY[0x277CBEBC0];
    v12 = [v9 objectAtIndexedSubscript:0];
    v13 = [v12 objectForKeyedSubscript:v6];
    v14 = [v11 URLWithString:v13];
  }

  else
  {
    v15 = pk_Payment_log(v10);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v18 = pk_Payment_log(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Malformed reader mode resources - missing card image urls", v20, 2u);
      }
    }

    v14 = 0;
  }

  return v14;
}

- (id)_titleForState:(unint64_t)state
{
  _readerModeResources = [objc_opt_class() _readerModeResources];
  v6 = [_readerModeResources objectAtIndexedSubscript:state];

  ingestionMethodMetadata = [(NPKPaymentProvisioningFlowController *)self ingestionMethodMetadata];
  readerModeResources = [ingestionMethodMetadata readerModeResources];
  v9 = [readerModeResources objectForKeyedSubscript:*MEMORY[0x277D388F8]];
  v10 = [v9 objectForKeyedSubscript:v6];
  v11 = [v10 objectForKeyedSubscript:@"localizedTitle"];

  if (!v11)
  {
    if (state > 5)
    {
      v11 = 0;
    }

    else
    {
      v11 = PKLocalizedPaymentString(&off_2799490B8[state]->isa);
    }
  }

  return v11;
}

- (id)_subtitleForState:(unint64_t)state
{
  _readerModeResources = [objc_opt_class() _readerModeResources];
  v6 = [_readerModeResources objectAtIndexedSubscript:state];

  ingestionMethodMetadata = [(NPKPaymentProvisioningFlowController *)self ingestionMethodMetadata];
  readerModeResources = [ingestionMethodMetadata readerModeResources];
  v9 = [readerModeResources objectForKeyedSubscript:*MEMORY[0x277D388F8]];
  v10 = [v9 objectForKeyedSubscript:v6];
  v11 = [v10 objectForKeyedSubscript:@"localizedDescription"];

  if (!v11)
  {
    if (state > 2)
    {
      if (state != 3)
      {
        if (state == 4)
        {
          currentProduct = [(NPKPaymentProvisioningFlowController *)self currentProduct];
          displayName = [currentProduct displayName];
          PKLocalizedPaymentString(&cfstr_ReaderModeProv_6.isa, &stru_286C96FD8.isa, displayName);
        }

        else
        {
          if (state != 5)
          {
            goto LABEL_16;
          }

          currentProduct = [(NPKPaymentProvisioningFlowController *)self currentProduct];
          displayName = [currentProduct displayName];
          PKLocalizedPaymentString(&cfstr_ReaderModeProv_7.isa, &stru_286C96FD8.isa, displayName);
        }

        goto LABEL_15;
      }

      v14 = @"READER_MODE_PROVISIONING_TRANSFERRING_SUBTITLE";
    }

    else
    {
      if (!state)
      {
LABEL_6:
        currentProduct = [(NPKPaymentProvisioningFlowController *)self currentProduct];
        displayName = [currentProduct displayName];
        PKLocalizedPaymentString(&cfstr_ReaderModeProv_3.isa, &stru_286C96FD8.isa, displayName);
        v11 = LABEL_15:;

        goto LABEL_16;
      }

      if (state != 1)
      {
        if (state != 2)
        {
          goto LABEL_16;
        }

        goto LABEL_6;
      }

      v14 = @"READER_MODE_PROVISIONING_CARD_NOT_FOUND_SUBTITLE";
    }

    v11 = PKLocalizedPaymentString(&v14->isa);
  }

LABEL_16:

  return v11;
}

@end