@interface NPKBarcodePaymentSession
- (NPKBarcodePaymentSession)initWithPaymentPass:(id)pass authorizationCredential:(id)credential;
- (NPKBarcodePaymentSessionDelegate)delegate;
- (void)_acquireExpressTransactionSuppressAssertion;
- (void)_acquireNotificationSuppressionAssertion;
- (void)_completedAuthenticationForTransaction:(id)transaction;
- (void)_extendSessionTimeoutTimer;
- (void)_fetchDecryptedBarcodeWithCredential:(id)credential;
- (void)_handleSessionTimeout;
- (void)_handleUpdatedPaymentTransaction:(id)transaction;
- (void)_handleUpdatedTransactionStatus:(unint64_t)status;
- (void)_insertPaymentTransactionForActiveBarcode;
- (void)_invokeExtensionToCollectPaymentInformation;
- (void)_processedAuthenticationMechanismForTransaction:(id)transaction;
- (void)_releaseExpressTransactionSuppressionAssertion;
- (void)_releaseNotificationSuppressionAssertion;
- (void)_startSessionTimeoutTimer;
- (void)_stopSessionTimeoutTimer;
- (void)_updateCurrentPaymentBarcodeWithBarcodeIdentifier:(id)identifier decryptedBarcodeCredential:(id)credential error:(id)error;
- (void)_updateCurrentTransactionStatus:(unint64_t)status transaction:(id)transaction;
- (void)invalidateSession;
- (void)retryFetchingBarcode;
- (void)startSession;
- (void)submitPinCode:(id)code;
- (void)submitUserIntentionConfirmation:(BOOL)confirmation;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
@end

@implementation NPKBarcodePaymentSession

- (NPKBarcodePaymentSession)initWithPaymentPass:(id)pass authorizationCredential:(id)credential
{
  v23 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  credentialCopy = credential;
  v20.receiver = self;
  v20.super_class = NPKBarcodePaymentSession;
  v9 = [(NPKBarcodePaymentSession *)&v20 init];
  v10 = v9;
  if (v9)
  {
    v11 = pk_Payment_log(v9);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v14 = pk_Payment_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = [passCopy uniqueID];
        *buf = 138412290;
        v22 = uniqueID;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] New barcode session created for pass: %@", buf, 0xCu);
      }
    }

    objc_storeStrong(&v10->_paymentPass, pass);
    objc_storeStrong(&v10->_authorizationCredential, credential);
    v10->_currentTransactionStatus = 0;
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.NanoPassKit.BarcodePaymentSession", v16);
    serialQueue = v10->_serialQueue;
    v10->_serialQueue = v17;
  }

  return v10;
}

- (void)startSession
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] %@ session started!", &v9, 0xCu);
    }
  }

  [(NPKBarcodePaymentSession *)self setSessionStarted:1];
  v7 = [objc_alloc(MEMORY[0x277D380F0]) initWithDelegate:self];
  [(NPKBarcodePaymentSession *)self setPaymentService:v7];

  [(NPKBarcodePaymentSession *)self _startSessionTimeoutTimer];
  [(NPKBarcodePaymentSession *)self _updateCurrentPaymentBarcodeWithBarcodeIdentifier:0 decryptedBarcodeCredential:0 error:0];
  authorizationCredential = [(NPKBarcodePaymentSession *)self authorizationCredential];
  [(NPKBarcodePaymentSession *)self _fetchDecryptedBarcodeWithCredential:authorizationCredential];

  [(NPKBarcodePaymentSession *)self _acquireNotificationSuppressionAssertion];
  [(NPKBarcodePaymentSession *)self _acquireExpressTransactionSuppressAssertion];
}

- (void)retryFetchingBarcode
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] %@ session retried!", &v8, 0xCu);
    }
  }

  [(NPKBarcodePaymentSession *)self _extendSessionTimeoutTimer];
  [(NPKBarcodePaymentSession *)self _updateCurrentPaymentBarcodeWithBarcodeIdentifier:0 decryptedBarcodeCredential:0 error:0];
  authorizationCredential = [(NPKBarcodePaymentSession *)self authorizationCredential];
  [(NPKBarcodePaymentSession *)self _fetchDecryptedBarcodeWithCredential:authorizationCredential];
}

- (void)invalidateSession
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] %@ session invalidated!", &v8, 0xCu);
    }
  }

  [(NPKBarcodePaymentSession *)self setSessionStarted:0];
  paymentService = [(NPKBarcodePaymentSession *)self paymentService];
  [paymentService setDelegate:0];

  [(NPKBarcodePaymentSession *)self setPaymentService:0];
  [(NPKBarcodePaymentSession *)self _stopSessionTimeoutTimer];
  [(NPKBarcodePaymentSession *)self _releaseNotificationSuppressionAssertion];
  [(NPKBarcodePaymentSession *)self _releaseExpressTransactionSuppressionAssertion];
}

- (void)submitUserIntentionConfirmation:(BOOL)confirmation
{
  if (confirmation)
  {
    [(NPKBarcodePaymentSession *)self setSubmittingAuthenticationResult:1];
    paymentService = [(NPKBarcodePaymentSession *)self paymentService];
    currentTransaction = [(NPKBarcodePaymentSession *)self currentTransaction];
    identifier = [currentTransaction identifier];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__NPKBarcodePaymentSession_submitUserIntentionConfirmation___block_invoke;
    v8[3] = &unk_27994B268;
    v8[4] = self;
    [paymentService submitUserConfirmation:1 forTransactionIdentifier:identifier completion:v8];

    [(NPKBarcodePaymentSession *)self _extendSessionTimeoutTimer];
  }

  else
  {
    currentTransaction2 = [(NPKBarcodePaymentSession *)self currentTransaction];
    [(NPKBarcodePaymentSession *)self _completedAuthenticationForTransaction:currentTransaction2];

    [(NPKBarcodePaymentSession *)self _handleUpdatedTransactionStatus:2];
  }
}

void __60__NPKBarcodePaymentSession_submitUserIntentionConfirmation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NPKBarcodePaymentSession_submitUserIntentionConfirmation___block_invoke_2;
  block[3] = &unk_279945880;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __60__NPKBarcodePaymentSession_submitUserIntentionConfirmation___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      [v6 transactionStatus];
      v7 = PKPaymentTransactionStatusToString();
      v8 = *(a1 + 40);
      v10 = 138412802;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] PKPaymentTransaction %@ user intention confirmation step up result: %@, error: %@", &v10, 0x20u);
    }
  }

  [*(a1 + 48) _handleUpdatedPaymentTransaction:*(a1 + 32)];
  return [*(a1 + 48) setSubmittingAuthenticationResult:0];
}

- (void)submitPinCode:(id)code
{
  codeCopy = code;
  if (codeCopy)
  {
    [(NPKBarcodePaymentSession *)self setSubmittingAuthenticationResult:1];
    paymentPass = [(NPKBarcodePaymentSession *)self paymentPass];
    uniqueID = [paymentPass uniqueID];

    currentTransaction = [(NPKBarcodePaymentSession *)self currentTransaction];
    paymentService = [(NPKBarcodePaymentSession *)self paymentService];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __42__NPKBarcodePaymentSession_submitPinCode___block_invoke;
    v15 = &unk_27994B290;
    v16 = codeCopy;
    v17 = currentTransaction;
    v18 = uniqueID;
    selfCopy = self;
    v9 = uniqueID;
    v10 = currentTransaction;
    [paymentService retrievePINEncryptionCertificateForPassUniqueIdentifier:v9 withCompletion:&v12];

    [(NPKBarcodePaymentSession *)self _extendSessionTimeoutTimer:v12];
  }

  else
  {
    currentTransaction2 = [(NPKBarcodePaymentSession *)self currentTransaction];
    [(NPKBarcodePaymentSession *)self _completedAuthenticationForTransaction:currentTransaction2];

    [(NPKBarcodePaymentSession *)self _handleUpdatedTransactionStatus:2];
  }
}

void __42__NPKBarcodePaymentSession_submitPinCode___block_invoke(id *a1, uint64_t a2)
{
  v14 = 0;
  v3 = PKEncryptTransactionAuthenticationPasscode();
  v4 = 0;
  if (v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__NPKBarcodePaymentSession_submitPinCode___block_invoke_2;
    block[3] = &unk_279945880;
    v11 = a1[6];
    v5 = v4;
    v6 = a1[7];
    v12 = v5;
    v13 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v7 = [a1[7] paymentService];
    v8 = [a1[5] identifier];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__NPKBarcodePaymentSession_submitPinCode___block_invoke_58;
    v9[3] = &unk_27994B268;
    v9[4] = a1[7];
    [v7 submitEncryptedPIN:v3 forTransactionIdentifier:v8 completion:v9];
  }
}

uint64_t __42__NPKBarcodePaymentSession_submitPinCode___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Failed to encrypt PIN for pass %@ with error %@", &v11, 0x16u);
    }
  }

  v8 = *(a1 + 48);
  v9 = [v8 currentTransaction];
  [v8 _completedAuthenticationForTransaction:v9];

  [*(a1 + 48) _handleUpdatedTransactionStatus:3];
  return [*(a1 + 48) setSubmittingAuthenticationResult:0];
}

void __42__NPKBarcodePaymentSession_submitPinCode___block_invoke_58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NPKBarcodePaymentSession_submitPinCode___block_invoke_2_59;
  block[3] = &unk_279945880;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __42__NPKBarcodePaymentSession_submitPinCode___block_invoke_2_59(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      [v6 transactionStatus];
      v7 = PKPaymentTransactionStatusToString();
      v8 = *(a1 + 40);
      v10 = 138412802;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] PKPaymentTransaction %@ pin step up result: %@, error: %@", &v10, 0x20u);
    }
  }

  [*(a1 + 48) _handleUpdatedPaymentTransaction:*(a1 + 32)];
  return [*(a1 + 48) setSubmittingAuthenticationResult:0];
}

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  transactionCopy = transaction;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__NPKBarcodePaymentSession_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __78__NPKBarcodePaymentSession_transactionSourceIdentifier_didReceiveTransaction___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) submittingAuthenticationResult];
  if (v2)
  {
    v3 = pk_Payment_log(v2);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v6 = pk_Payment_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Ignoring transaction update while submitting authentication result. %@", &v14, 0xCu);
      }
    }
  }

  else
  {
    v8 = [*(a1 + 40) barcodeIdentifier];
    v9 = [*(a1 + 32) currentPaymentBarcode];
    v10 = [v9 barcodeIdentifier];
    v11 = [v8 isEqualToString:v10];

    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);

      [v12 _handleUpdatedPaymentTransaction:v13];
    }
  }
}

- (void)_fetchDecryptedBarcodeWithCredential:(id)credential
{
  v16 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  v5 = pk_Payment_log(credentialCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = credentialCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Start fetching decrypted barcode with credential: %@", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  paymentService = [(NPKBarcodePaymentSession *)self paymentService];
  paymentPass = [(NPKBarcodePaymentSession *)self paymentPass];
  uniqueID = [paymentPass uniqueID];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__NPKBarcodePaymentSession__fetchDecryptedBarcodeWithCredential___block_invoke;
  v12[3] = &unk_27994B2E0;
  objc_copyWeak(&v13, buf);
  [paymentService retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier:uniqueID authorization:credentialCopy withCompletion:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __65__NPKBarcodePaymentSession__fetchDecryptedBarcodeWithCredential___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277D37D28];
  v11 = *MEMORY[0x277D38558];
  v27[0] = *MEMORY[0x277D38538];
  v27[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v13 = *MEMORY[0x277D383D8];
  v26[0] = *MEMORY[0x277D38410];
  v14 = *MEMORY[0x277D38380];
  v25[0] = v13;
  v25[1] = v14;
  v15 = PKAnalyticsReportBarcodeCredentialRetrivalStatusFromError();
  v26[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  [v10 subjects:v12 sendEvent:v16];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NPKBarcodePaymentSession__fetchDecryptedBarcodeWithCredential___block_invoke_2;
  block[3] = &unk_27994B2B8;
  v21 = v9;
  v22 = v7;
  v17 = v7;
  v18 = v9;
  objc_copyWeak(&v24, (a1 + 32));
  v23 = v8;
  v19 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v24);
}

void __65__NPKBarcodePaymentSession__fetchDecryptedBarcodeWithCredential___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = pk_Payment_log(a1);
  v4 = v3;
  if (v2)
  {
    v5 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (!v5)
    {
      goto LABEL_10;
    }

    v7 = pk_Payment_log(v6);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v8 = *(a1 + 32);
    v17 = 138412290;
    v18 = v8;
    v9 = "Error: [BarcodePayment] Failed to fetch barcode due to: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    goto LABEL_8;
  }

  v12 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (!v12)
  {
    goto LABEL_10;
  }

  v7 = pk_Payment_log(v13);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    v17 = 138412290;
    v18 = v14;
    v9 = "Notice: [BarcodePayment] Fetched barcode with identifier: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
    _os_log_impl(&dword_25B300000, v10, v11, v9, &v17, 0xCu);
  }

LABEL_9:

LABEL_10:
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateCurrentPaymentBarcodeWithBarcodeIdentifier:*(a1 + 40) decryptedBarcodeCredential:*(a1 + 48) error:*(a1 + 32)];
  }
}

- (void)_invokeExtensionToCollectPaymentInformation
{
  v58 = *MEMORY[0x277D85DE8];
  paymentPass = [(NPKBarcodePaymentSession *)self paymentPass];
  uniqueID = [paymentPass uniqueID];

  currentPaymentBarcode = [(NPKBarcodePaymentSession *)self currentPaymentBarcode];
  barcodeIdentifier = [currentPaymentBarcode barcodeIdentifier];

  paymentPass2 = [(NPKBarcodePaymentSession *)self paymentPass];
  deviceAccountIdentifier = [paymentPass2 deviceAccountIdentifier];

  paymentPass3 = [(NPKBarcodePaymentSession *)self paymentPass];
  associatedApplicationIdentifiers = [paymentPass3 associatedApplicationIdentifiers];

  v12 = pk_Payment_log(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v16 = pk_Payment_log(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = uniqueID;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Starting to collect payment information for pass %@", &buf, 0xCu);
    }
  }

  v17 = NPKMyPid(v14, v15);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__24;
  v56 = __Block_byref_object_dispose__24;
  v18 = objc_alloc(MEMORY[0x277CEEEA8]);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke;
  v51[3] = &__block_descriptor_36_e8_v12__0B8l;
  v52 = v17;
  v57 = [v18 initWithPID:v17 flags:1 reason:4 name:@"Submit Barcode Payment Event" withHandler:v51];
  [*(*(&buf + 1) + 40) setInvalidationHandler:&__block_literal_global_34];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_71;
  aBlock[3] = &unk_2799457C8;
  aBlock[4] = &buf;
  v19 = _Block_copy(aBlock);
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  paymentService = [(NPKBarcodePaymentSession *)self paymentService];
  objc_initWeak(&location, paymentService);

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2;
  v41[3] = &unk_27994B328;
  v45 = v48;
  v21 = deviceAccountIdentifier;
  v42 = v21;
  v22 = barcodeIdentifier;
  v43 = v22;
  v23 = uniqueID;
  v44 = v23;
  objc_copyWeak(&v46, &location);
  v24 = _Block_copy(v41);
  v25 = [MEMORY[0x277D37E98] providerForExtensionPoint:*MEMORY[0x277D38630]];
  allObjects = [associatedApplicationIdentifiers allObjects];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_76;
  v33[3] = &unk_27994B418;
  v27 = v23;
  v34 = v27;
  selfCopy = self;
  v28 = v24;
  v39 = v28;
  v29 = v19;
  v40 = v29;
  v30 = v22;
  v36 = v30;
  v31 = v21;
  v37 = v31;
  v32 = associatedApplicationIdentifiers;
  v38 = v32;
  [v25 extensionsWithContainingApplicationIdentifiers:allObjects completion:v33];

  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
  _Block_object_dispose(v48, 8);

  _Block_object_dispose(&buf, 8);
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = pk_Payment_log(a1);
  v5 = v4;
  if (a2)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (!v6)
    {
      return;
    }

    v8 = pk_Payment_log(v7);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v9 = *(a1 + 32);
    v16 = 67109120;
    v17 = v9;
    v10 = "Notice: [BarcodePayment] Acquired process assertion for barcode payment event for %d.";
    v11 = v8;
    v12 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_8;
  }

  v13 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (!v13)
  {
    return;
  }

  v8 = pk_Payment_log(v14);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 32);
    v16 = 67109120;
    v17 = v15;
    v10 = "Error: [BarcodePayment] Failed to acquire process assertion for barcode payment event: %d.";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
LABEL_8:
    _os_log_impl(&dword_25B300000, v11, v12, v10, &v16, 8u);
  }

LABEL_9:
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_70(uint64_t a1)
{
  v1 = pk_Payment_log(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    v4 = pk_Payment_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Invalidated process assertion for barcode payment event.", v5, 2u);
    }
  }
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_71(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  v7 = *(*(a1 + 56) + 8);
  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    v13 = [v5 paymentInformation];

    v14 = NPKAnalyticsReportEventTypeBarcodePaymentTransactionLocalExtensionSucceeded;
    if (!a3)
    {
      v14 = NPKAnalyticsReportEventTypeBarcodePaymentTransactionRemoteExtensionSucceeded;
    }

    v15 = NPKAnalyticsReportEventTypeBarcodePaymentTransactionLocalExtensionFailed;
    if (!a3)
    {
      v15 = NPKAnalyticsReportEventTypeBarcodePaymentTransactionRemoteExtensionFailed;
    }

    if (!v13)
    {
      v14 = v15;
    }

    v11 = *v14;
    v16 = MEMORY[0x277D37D28];
    v17 = *MEMORY[0x277D38558];
    v37[0] = *MEMORY[0x277D38538];
    v37[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v35 = *MEMORY[0x277D383D8];
    v36 = v11;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    [v16 subjects:v18 sendEvent:v19];

    v20 = objc_alloc_init(MEMORY[0x277D37DF0]);
    [v20 setEventType:1];
    v21 = [MEMORY[0x277CBEAA8] date];
    [v20 setTimestamp:v21];

    v22 = [v6 paymentInformation];
    [v20 setEventMetadata:v22];

    [v20 setDeviceAccountIdentifier:*(a1 + 32)];
    [v20 setBarcodeIdentifier:*(a1 + 40)];
    v23 = pk_Payment_log([v20 setAuthenticationType:1]);
    LODWORD(v19) = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v25 = pk_Payment_log(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 48);
        v31 = 138412546;
        v32 = v20;
        v33 = 2112;
        v34 = v26;
        _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Submitting barcodePaymentEvent %@ for %@", &v31, 0x16u);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v28 = WeakRetained;
    if (WeakRetained)
    {
      v29 = WeakRetained;
    }

    else
    {
      v29 = objc_alloc_init(MEMORY[0x277D380F0]);
    }

    v30 = v29;

    [v30 submitBarcodePaymentEvent:v20 forPassUniqueIdentifier:*(a1 + 48) withCompletion:0];
    goto LABEL_19;
  }

  v8 = pk_Payment_log(v5);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 48);
      v31 = 138412290;
      v32 = v12;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] BarcodePaymentEvent already submitted for %@. Skipping.", &v31, 0xCu);
    }

LABEL_19:
  }
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_76(uint64_t a1, void *a2, void *a3)
{
  v60[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 count];
  }

  v8 = MEMORY[0x277D37D28];
  v9 = *MEMORY[0x277D38558];
  v60[0] = *MEMORY[0x277D38538];
  v60[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
  v11 = *MEMORY[0x277D38430];
  v12 = *MEMORY[0x277D38480];
  v58[0] = *MEMORY[0x277D383D8];
  v58[1] = v12;
  v13 = *MEMORY[0x277D38630];
  v59[0] = v11;
  v59[1] = v13;
  v58[2] = *MEMORY[0x277D384B0];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v7];
  v59[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:3];
  [v8 subjects:v10 sendEvent:v15];

  if ([v5 count])
  {
    v16 = [v5 firstObject];
    v17 = pk_Payment_log(v16);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v20 = pk_Payment_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 32);
        *buf = 138412546;
        *&buf[4] = v16;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Local extension %@ is now collecting payment information for pass %@", buf, 0x16u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v55 = __Block_byref_object_copy__24;
    v56 = __Block_byref_object_dispose__24;
    v57 = 0;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_81;
    v46[3] = &unk_27994B3A0;
    v46[4] = *(a1 + 40);
    v22 = v16;
    v47 = v22;
    v48 = *(a1 + 32);
    v51 = *(a1 + 72);
    v52 = *(a1 + 80);
    v53 = buf;
    v49 = *(a1 + 48);
    v50 = *(a1 + 56);
    [v22 beginExtensionRequestWithOptions:1 completion:v46];

    _Block_object_dispose(buf, 8);
    goto LABEL_23;
  }

  v23 = [v6 domain];
  if ([v23 isEqualToString:*MEMORY[0x277D386B0]])
  {
    v24 = [v6 code] == -1001;

    if (v24)
    {
      v26 = pk_Payment_log(v25);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

      if (v27)
      {
        v29 = pk_Payment_log(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Extension doesn't exist locally. Invoking remote extension on paired device.", buf, 2u);
        }
      }

      v30 = [objc_alloc(MEMORY[0x277D37DE8]) initWithBarcodeIdentifier:*(a1 + 48) deviceAccountIdentifier:*(a1 + 56)];
      v31 = objc_alloc_init(NPKNanoPassDaemonConnection);
      v32 = *(a1 + 64);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_94;
      v43[3] = &unk_27994B3F0;
      v43[4] = *(a1 + 40);
      v44 = *(a1 + 72);
      v45 = *(a1 + 80);
      [(NPKNanoPassDaemonConnection *)v31 handleMetadataRequestOnPairedDevice:v30 withAssociatedApplicationIdentifiers:v32 completion:v43];
      v33 = dispatch_time(0, 0x37E11D800);
      v34 = [*(a1 + 40) serialQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_97;
      block[3] = &unk_2799486C0;
      v41 = *(a1 + 72);
      v42 = *(a1 + 80);
      dispatch_after(v33, v34, block);

      goto LABEL_23;
    }
  }

  else
  {
  }

  v35 = pk_Payment_log(v25);
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

  if (v36)
  {
    v38 = pk_Payment_log(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = *(a1 + 32);
      *buf = 138412546;
      *&buf[4] = v39;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_25B300000, v38, OS_LOG_TYPE_ERROR, "Error: [BarcodePayment] Failed to begin payment information event extension for pass %@ with error %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 72) + 16))();
  (*(*(a1 + 80) + 16))();
LABEL_23:
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_81(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 isInvalidated] & 1) == 0)
  {
    v5 = [v4 extensionContext];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = MEMORY[0x277CBFBF8];
        v15 = [*(a1 + 40) identifier];
        v16 = [v14 newAssertionForBundleIdentifier:v15 withReason:@"Barcode Event Metadata"];
        v17 = *(*(a1 + 88) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;

        v13 = [objc_alloc(MEMORY[0x277D37DE8]) initWithBarcodeIdentifier:*(a1 + 56) deviceAccountIdentifier:*(a1 + 64)];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_89;
        v21[3] = &unk_27994B378;
        v21[4] = *(a1 + 32);
        v19 = *(a1 + 72);
        v20 = *(a1 + 88);
        v23 = v19;
        v25 = v20;
        v22 = v4;
        v24 = *(a1 + 80);
        [v5 handleInformationRequest:v13 completion:v21];

        goto LABEL_5;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2_83;
  block[3] = &unk_27994A668;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v27 = v12;
  v28 = v11;
  dispatch_async(v6, block);

  v13 = v27;
LABEL_5:
}

uint64_t __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2_83(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: [BarcodePayment] Local extension %@ for pass %@ failed to collect payment information", &v9, 0x16u);
    }
  }

  (*(a1[6] + 16))();
  return (*(a1[7] + 16))();
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_89(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2_90;
  block[3] = &unk_27994B350;
  v5 = *(a1 + 48);
  v11 = v3;
  v12 = v5;
  v13 = *(a1 + 64);
  v6 = v3;
  dispatch_async(v4, block);

  [*(a1 + 40) invalidate];
  v7 = [*(a1 + 32) serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_3;
  v8[3] = &unk_279945198;
  v9 = *(a1 + 56);
  dispatch_async(v7, v8);
}

uint64_t __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2_90(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(*(a1 + 48) + 8) + 40);

  return [v2 invalidate];
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_94(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] serialQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2_95;
  v11[3] = &unk_27994B3C8;
  v12 = v6;
  v8 = a1[5];
  v13 = v5;
  v14 = v8;
  v15 = a1[6];
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

uint64_t __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2_95(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = pk_Payment_log(a1);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v5 = pk_Payment_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = a1[4];
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: [BarcodePayment] Remote extension failed with error: %@", &v9, 0xCu);
      }
    }

    v7 = *(a1[6] + 16);
  }

  else
  {
    v7 = *(a1[6] + 16);
  }

  v7();
  return (*(a1[7] + 16))();
}

uint64_t __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_97(uint64_t a1)
{
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: [BarcodePayment] Remote extension timed out.", v7, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
  return (*(*(a1 + 40) + 16))();
}

- (void)_updateCurrentPaymentBarcodeWithBarcodeIdentifier:(id)identifier decryptedBarcodeCredential:(id)credential error:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  credentialCopy = credential;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v11 = [[NPKPaymentBarcode alloc] initWithBarcodeIdentifier:identifierCopy decryptedBarcodeCredential:credentialCopy error:errorCopy];

  currentPaymentBarcode = [(NPKBarcodePaymentSession *)self currentPaymentBarcode];
  LOBYTE(errorCopy) = [currentPaymentBarcode isEqual:v11];

  v14 = pk_Payment_log(v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (errorCopy)
  {
    if (v15)
    {
      v17 = pk_Payment_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Barcode state didn't change.", &v24, 2u);
      }
    }
  }

  else
  {
    if (v15)
    {
      v18 = pk_Payment_log(v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        currentPaymentBarcode2 = [(NPKBarcodePaymentSession *)self currentPaymentBarcode];
        v24 = 138412546;
        v25 = currentPaymentBarcode2;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Updating barcode state from %@ to %@", &v24, 0x16u);
      }
    }

    [(NPKBarcodePaymentSession *)self setCurrentPaymentBarcode:v11];
    delegate = [(NPKBarcodePaymentSession *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      delegate2 = [(NPKBarcodePaymentSession *)self delegate];
      currentPaymentBarcode3 = [(NPKBarcodePaymentSession *)self currentPaymentBarcode];
      [delegate2 barcodePaymentSession:self didReceivePaymentBarcode:currentPaymentBarcode3];
    }

    if ([(NPKPaymentBarcode *)v11 state]== 1)
    {
      [(NPKBarcodePaymentSession *)self _insertPaymentTransactionForActiveBarcode];
      [(NPKBarcodePaymentSession *)self _invokeExtensionToCollectPaymentInformation];
    }
  }
}

- (void)_handleUpdatedPaymentTransaction:(id)transaction
{
  v38 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  transactionStatus = [transactionCopy transactionStatus];
  v6 = 0;
  if (transactionStatus <= 3)
  {
    if (transactionStatus > 0)
    {
      if (transactionStatus == 1)
      {
        v24 = MEMORY[0x277D37D28];
        v25 = *MEMORY[0x277D38558];
        v33[0] = *MEMORY[0x277D38538];
        v33[1] = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
        v31 = *MEMORY[0x277D383D8];
        v32 = *MEMORY[0x277D38418];
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        [v24 subjects:v26 sendEvent:v27];

        v6 = 4;
        goto LABEL_28;
      }

      if (transactionStatus != 2)
      {
        v6 = 4;
        goto LABEL_28;
      }

      goto LABEL_9;
    }

    if (transactionStatus != -1)
    {
      if (transactionStatus)
      {
        goto LABEL_28;
      }

      ShouldAuthenticateForMechanism = PKPaymentTransactionShouldAuthenticateForMechanism();
      v12 = ShouldAuthenticateForMechanism;
      v13 = pk_Payment_log(ShouldAuthenticateForMechanism);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        if (v14)
        {
          v16 = pk_Payment_log(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            authenticationContext = [transactionCopy authenticationContext];
            [authenticationContext requestedAuthenticationMechanisms];
            v18 = PKTransactionAuthenticationMechanismToStrings();
            *buf = 138412546;
            v35 = transactionCopy;
            v36 = 2112;
            v37 = v18;
            _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] PKPaymentTransaction %@ status is pending with authentication request %@.", buf, 0x16u);
          }
        }

        [(NPKBarcodePaymentSession *)self _processedAuthenticationMechanismForTransaction:transactionCopy];
        v6 = 1;
        goto LABEL_28;
      }

      if (v14)
      {
        v22 = pk_Payment_log(v15);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = transactionCopy;
          _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] PKPaymentTransaction %@ status is pending without valid authentication context. Skipping.", buf, 0xCu);
        }

LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_25;
    }

LABEL_21:
    v19 = pk_Payment_log(transactionStatus);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v22 = pk_Payment_log(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        [transactionCopy transactionStatus];
        v23 = PKPaymentTransactionStatusToString();
        *buf = 138412546;
        v35 = transactionCopy;
        v36 = 2112;
        v37 = v23;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] PKPaymentTransaction %@ status %@ is not relevant. Skipping.", buf, 0x16u);
      }

      goto LABEL_24;
    }

LABEL_25:
    v6 = 0;
    goto LABEL_28;
  }

  if (transactionStatus <= 6)
  {
    if ((transactionStatus - 4) < 2)
    {
LABEL_10:
      v6 = 3;
      goto LABEL_28;
    }

    if (transactionStatus != 6)
    {
      goto LABEL_28;
    }

LABEL_9:
    v7 = MEMORY[0x277D37D28];
    v8 = *MEMORY[0x277D38558];
    v30[0] = *MEMORY[0x277D38538];
    v30[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v28 = *MEMORY[0x277D383D8];
    v29 = *MEMORY[0x277D38420];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [v7 subjects:v9 sendEvent:v10];

    goto LABEL_10;
  }

  if (transactionStatus == 7)
  {
    v6 = 5;
    goto LABEL_28;
  }

  if (transactionStatus == 8)
  {
    goto LABEL_21;
  }

LABEL_28:
  [(NPKBarcodePaymentSession *)self _updateCurrentTransactionStatus:v6 transaction:transactionCopy];
}

- (void)_handleUpdatedTransactionStatus:(unint64_t)status
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentTransaction = [(NPKBarcodePaymentSession *)self currentTransaction];
  [(NPKBarcodePaymentSession *)self _updateCurrentTransactionStatus:status transaction:currentTransaction];
}

- (void)_updateCurrentTransactionStatus:(unint64_t)status transaction:(id)transaction
{
  v26 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentTransactionStatus = [(NPKBarcodePaymentSession *)self currentTransactionStatus];
  if (currentTransactionStatus != status || ([(NPKBarcodePaymentSession *)self currentTransaction], v8 = objc_claimAutoreleasedReturnValue(), v9 = PKEqualObjects(), v8, (v9 & 1) == 0))
  {
    v10 = pk_Payment_log(currentTransactionStatus);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = pk_Payment_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 134218242;
        statusCopy = status;
        v24 = 2112;
        v25 = transactionCopy;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Session status is updated to %lu with transaction %@.", &v22, 0x16u);
      }
    }

    [(NPKBarcodePaymentSession *)self setCurrentTransactionStatus:status];
    v14 = [(NPKBarcodePaymentSession *)self setCurrentTransaction:transactionCopy];
    if (status == 1)
    {
      v15 = pk_Payment_log(v14);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (v16)
      {
        v18 = pk_Payment_log(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22) = 0;
          _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Session timeout timer is extended because transaction authentication is requested.", &v22, 2u);
        }
      }

      [(NPKBarcodePaymentSession *)self _extendSessionTimeoutTimer];
    }

    delegate = [(NPKBarcodePaymentSession *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      delegate2 = [(NPKBarcodePaymentSession *)self delegate];
      [delegate2 barcodePaymentSession:self didUpdateTransactionStatus:status withTransaction:transactionCopy];
    }
  }
}

- (void)_insertPaymentTransactionForActiveBarcode
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D38140] paymentTransactionWithSource:1];
  [v3 setOriginatedByDevice:1];
  currentPaymentBarcode = [(NPKBarcodePaymentSession *)self currentPaymentBarcode];
  barcodeIdentifier = [currentPaymentBarcode barcodeIdentifier];
  v6 = PKTransactionPaymentHashForBarcodeIdentifier();
  [v3 setPaymentHash:v6];

  [v3 addUpdateReasons:0x20000];
  date = [MEMORY[0x277CBEAA8] date];
  [v3 setTransactionDate:date];

  v9 = pk_Payment_log(v8);
  LODWORD(barcodeIdentifier) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (barcodeIdentifier)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      currentPaymentBarcode2 = [(NPKBarcodePaymentSession *)self currentPaymentBarcode];
      barcodeIdentifier2 = [currentPaymentBarcode2 barcodeIdentifier];
      v19 = 138412546;
      v20 = v3;
      v21 = 2112;
      v22 = barcodeIdentifier2;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Inserting transaction %@ for current barcode: %@", &v19, 0x16u);
    }
  }

  paymentService = [(NPKBarcodePaymentSession *)self paymentService];
  paymentPass = [(NPKBarcodePaymentSession *)self paymentPass];
  uniqueID = [paymentPass uniqueID];
  paymentPass2 = [(NPKBarcodePaymentSession *)self paymentPass];
  devicePrimaryBarcodePaymentApplication = [paymentPass2 devicePrimaryBarcodePaymentApplication];
  [paymentService insertOrUpdatePaymentTransaction:v3 forPassUniqueIdentifier:uniqueID paymentApplication:devicePrimaryBarcodePaymentApplication completion:0];
}

- (void)_processedAuthenticationMechanismForTransaction:(id)transaction
{
  transactionCopy = transaction;
  authenticationContext = [transactionCopy authenticationContext];
  requestedAuthenticationMechanisms = [authenticationContext requestedAuthenticationMechanisms];

  if ((requestedAuthenticationMechanisms & 8) != 0)
  {
    [(NPKBarcodePaymentSession *)self _completedAuthenticationForTransaction:transactionCopy];
  }

  else
  {
    if (requestedAuthenticationMechanisms)
    {
      v7 = 1;
      goto LABEL_7;
    }

    if ((requestedAuthenticationMechanisms & 4) != 0)
    {
      v7 = 4;
LABEL_7:
      paymentService = [(NPKBarcodePaymentSession *)self paymentService];
      identifier = [transactionCopy identifier];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __76__NPKBarcodePaymentSession__processedAuthenticationMechanismForTransaction___block_invoke;
      v10[3] = &unk_279945830;
      v12 = v7;
      v11 = transactionCopy;
      [paymentService processedAuthenticationMechanism:v7 forTransactionIdentifier:identifier completion:v10];
    }
  }
}

void __76__NPKBarcodePaymentSession__processedAuthenticationMechanismForTransaction___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PKTransactionAuthenticationMechanismToStrings();
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Marking processed %@ for transaction %@.", &v8, 0x16u);
    }
  }
}

- (void)_completedAuthenticationForTransaction:(id)transaction
{
  transactionCopy = transaction;
  paymentService = [(NPKBarcodePaymentSession *)self paymentService];
  currentTransaction = [(NPKBarcodePaymentSession *)self currentTransaction];
  identifier = [currentTransaction identifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__NPKBarcodePaymentSession__completedAuthenticationForTransaction___block_invoke;
  v9[3] = &unk_279944F98;
  v10 = transactionCopy;
  v8 = transactionCopy;
  [paymentService markAuthenticationCompleteForTransactionIdentifier:identifier completion:v9];
}

void __67__NPKBarcodePaymentSession__completedAuthenticationForTransaction___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Marking completed authentication for transaction %@.", &v7, 0xCu);
    }
  }
}

- (void)_acquireNotificationSuppressionAssertion
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D37DA8];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__NPKBarcodePaymentSession__acquireNotificationSuppressionAssertion__block_invoke;
  v3[3] = &unk_27994B440;
  objc_copyWeak(&v4, &location);
  [v2 acquireAssertionOfType:4 withReason:@"Barcode Payment" completion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __68__NPKBarcodePaymentSession__acquireNotificationSuppressionAssertion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NPKBarcodePaymentSession__acquireNotificationSuppressionAssertion__block_invoke_2;
  block[3] = &unk_279945290;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __68__NPKBarcodePaymentSession__acquireNotificationSuppressionAssertion__block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v11 = pk_Payment_log(0);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v14 = pk_Payment_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        *buf = 138412290;
        v26 = v15;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Session is invalid, releasing assertion %@", buf, 0xCu);
      }
    }

    goto LABEL_7;
  }

  v4 = *(a1 + 40) == 0;
  v5 = pk_Payment_log(WeakRetained);
  v6 = v5;
  if (!v4)
  {
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v9 = pk_Payment_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 40);
        *buf = 138412290;
        v26 = v10;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: [BarcodePayment] Error acquiring notification suppression assertion: %@", buf, 0xCu);
      }
    }

LABEL_7:
    [*(a1 + 32) invalidate];
    goto LABEL_18;
  }

  v16 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v18 = pk_Payment_log(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      *buf = 138412290;
      v26 = v19;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Acquired notification suppression assertion: %@", buf, 0xCu);
    }
  }

  v20 = [v3 notificationSuppressionAssertion];
  [v20 setInvalidationHandler:0];

  v21 = [v3 notificationSuppressionAssertion];
  [v21 invalidate];

  [v3 setNotificationSuppressionAssertion:*(a1 + 32)];
  v22 = *(a1 + 32);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __68__NPKBarcodePaymentSession__acquireNotificationSuppressionAssertion__block_invoke_109;
  v23[3] = &unk_279945030;
  objc_copyWeak(&v24, (a1 + 48));
  [v22 setInvalidationHandler:v23];
  objc_destroyWeak(&v24);
LABEL_18:
}

void __68__NPKBarcodePaymentSession__acquireNotificationSuppressionAssertion__block_invoke_109(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setNotificationSuppressionAssertion:0];
    WeakRetained = v3;
  }
}

- (void)_releaseNotificationSuppressionAssertion
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      notificationSuppressionAssertion = [(NPKBarcodePaymentSession *)self notificationSuppressionAssertion];
      v9 = 138412290;
      v10 = notificationSuppressionAssertion;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Released notification suppression assertion: %@", &v9, 0xCu);
    }
  }

  notificationSuppressionAssertion2 = [(NPKBarcodePaymentSession *)self notificationSuppressionAssertion];
  [notificationSuppressionAssertion2 invalidate];

  [(NPKBarcodePaymentSession *)self setNotificationSuppressionAssertion:0];
}

- (void)_acquireExpressTransactionSuppressAssertion
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D37DA8];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__NPKBarcodePaymentSession__acquireExpressTransactionSuppressAssertion__block_invoke;
  v3[3] = &unk_27994B440;
  objc_copyWeak(&v4, &location);
  [v2 acquireAssertionOfType:0 withReason:@"Barcode Payment" completion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __71__NPKBarcodePaymentSession__acquireExpressTransactionSuppressAssertion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__NPKBarcodePaymentSession__acquireExpressTransactionSuppressAssertion__block_invoke_2;
  block[3] = &unk_279945290;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __71__NPKBarcodePaymentSession__acquireExpressTransactionSuppressAssertion__block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v11 = pk_Payment_log(0);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v14 = pk_Payment_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        *buf = 138412290;
        v26 = v15;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Session is invalid, releasing assertion %@", buf, 0xCu);
      }
    }

    goto LABEL_7;
  }

  v4 = *(a1 + 40) == 0;
  v5 = pk_Payment_log(WeakRetained);
  v6 = v5;
  if (!v4)
  {
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v9 = pk_Payment_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 40);
        *buf = 138412290;
        v26 = v10;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: [BarcodePayment] Error acquiring express transaction suppression assertion: %@", buf, 0xCu);
      }
    }

LABEL_7:
    [*(a1 + 32) invalidate];
    goto LABEL_18;
  }

  v16 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v18 = pk_Payment_log(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      *buf = 138412290;
      v26 = v19;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Acquired express transaction suppression assertion: %@", buf, 0xCu);
    }
  }

  v20 = [v3 expressTransactionSuppressionAssertion];
  [v20 setInvalidationHandler:0];

  v21 = [v3 expressTransactionSuppressionAssertion];
  [v21 invalidate];

  [v3 setExpressTransactionSuppressionAssertion:*(a1 + 32)];
  v22 = *(a1 + 32);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __71__NPKBarcodePaymentSession__acquireExpressTransactionSuppressAssertion__block_invoke_111;
  v23[3] = &unk_279945030;
  objc_copyWeak(&v24, (a1 + 48));
  [v22 setInvalidationHandler:v23];
  objc_destroyWeak(&v24);
LABEL_18:
}

void __71__NPKBarcodePaymentSession__acquireExpressTransactionSuppressAssertion__block_invoke_111(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setExpressTransactionSuppressionAssertion:0];
    WeakRetained = v3;
  }
}

- (void)_releaseExpressTransactionSuppressionAssertion
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      expressTransactionSuppressionAssertion = [(NPKBarcodePaymentSession *)self expressTransactionSuppressionAssertion];
      v9 = 138412290;
      v10 = expressTransactionSuppressionAssertion;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Released express transaction suppression assertion: %@", &v9, 0xCu);
    }
  }

  expressTransactionSuppressionAssertion2 = [(NPKBarcodePaymentSession *)self expressTransactionSuppressionAssertion];
  [expressTransactionSuppressionAssertion2 invalidate];

  [(NPKBarcodePaymentSession *)self setExpressTransactionSuppressionAssertion:0];
}

- (void)_startSessionTimeoutTimer
{
  sessionTimeoutTimer = [(NPKBarcodePaymentSession *)self sessionTimeoutTimer];

  if (!sessionTimeoutTimer)
  {
    objc_initWeak(&location, self);
    v4 = dispatch_get_global_queue(21, 0);
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
    [(NPKBarcodePaymentSession *)self setSessionTimeoutTimer:v5];

    sessionTimeoutTimer2 = [(NPKBarcodePaymentSession *)self sessionTimeoutTimer];
    v7 = dispatch_time(0, 0xDF8476000);
    dispatch_source_set_timer(sessionTimeoutTimer2, v7, 0xFFFFFFFFFFFFFFFFLL, 0);

    sessionTimeoutTimer3 = [(NPKBarcodePaymentSession *)self sessionTimeoutTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __53__NPKBarcodePaymentSession__startSessionTimeoutTimer__block_invoke;
    handler[3] = &unk_279945240;
    objc_copyWeak(&v11, &location);
    handler[4] = self;
    dispatch_source_set_event_handler(sessionTimeoutTimer3, handler);

    sessionTimeoutTimer4 = [(NPKBarcodePaymentSession *)self sessionTimeoutTimer];
    dispatch_resume(sessionTimeoutTimer4);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __53__NPKBarcodePaymentSession__startSessionTimeoutTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__NPKBarcodePaymentSession__startSessionTimeoutTimer__block_invoke_2;
    block[3] = &unk_279944F98;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_stopSessionTimeoutTimer
{
  sessionTimeoutTimer = [(NPKBarcodePaymentSession *)self sessionTimeoutTimer];

  if (sessionTimeoutTimer)
  {
    sessionTimeoutTimer2 = [(NPKBarcodePaymentSession *)self sessionTimeoutTimer];
    dispatch_source_cancel(sessionTimeoutTimer2);

    [(NPKBarcodePaymentSession *)self setSessionTimeoutTimer:0];
  }
}

- (void)_extendSessionTimeoutTimer
{
  [(NPKBarcodePaymentSession *)self _stopSessionTimeoutTimer];

  [(NPKBarcodePaymentSession *)self _startSessionTimeoutTimer];
}

- (void)_handleSessionTimeout
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(NPKBarcodePaymentSession *)self _handleUpdatedTransactionStatus:5];

  [(NPKBarcodePaymentSession *)self invalidateSession];
}

- (NPKBarcodePaymentSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end