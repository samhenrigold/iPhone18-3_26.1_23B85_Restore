@interface ISBiometricStore
+ (BOOL)isActionSupported:(int64_t)supported withBiometricAuthenticationContext:(id)context;
+ (BOOL)shouldUseApplePayClassic;
+ (BOOL)shouldUseAutoEnrollment;
+ (BOOL)shouldUseExtendedEnrollment;
+ (BOOL)shouldUseUpsellEnrollment;
+ (BOOL)shouldUseX509;
+ (BOOL)tokenUpdateShouldStartWithLogKey:(id)key;
+ (id)applePayClassicNetworks;
+ (id)countryCode;
+ (id)diskBasedPaymentSheet;
+ (id)keychainLabelForCertWithAccountID:(id)d purpose:(int64_t)purpose;
+ (id)keychainLabelForKeyWithAccountID:(id)d purpose:(int64_t)purpose;
+ (id)sharedInstance;
+ (int64_t)tokenUpdateState;
+ (void)tokenUpdateDidFinishWithLogKey:(id)key;
- (BOOL)canPerformBiometricOptIn;
- (BOOL)canPerformExtendedBiometricActionsForAccountIdentifier:(id)identifier;
- (BOOL)deleteKeychainTokensForAccountIdentifier:(id)identifier error:(id *)error;
- (BOOL)isIdentityMapValidForAccountIdentifier:(id)identifier;
- (ISBiometricStore)init;
- (NSNumber)lastRegisteredAccountIdentifier;
- (id)createAttestationDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (id)createX509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (id)fetchContextFromCacheWithToken:(id)token evict:(BOOL)evict;
- (id)publicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (id)signData:(id)data context:(id)context error:(id *)error;
- (id)x509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose regenerateCerts:(BOOL)certs error:(id *)error;
- (int64_t)biometricAvailabilityForAccountIdentifier:(id)identifier;
- (int64_t)biometricState;
- (unint64_t)identityMapCount;
- (unint64_t)keyCountForAccountIdentifier:(id)identifier;
- (void)addContextToCache:(id)cache withToken:(id)token;
- (void)clearLastRegisteredAccountIdentifier;
- (void)registerAccountIdentifier:(id)identifier;
- (void)saveIdentityMapForAccountIdentifier:(id)identifier;
- (void)setBiometricState:(int64_t)state;
@end

@implementation ISBiometricStore

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ISBiometricStore sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __34__ISBiometricStore_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(ISBiometricStore);

  return MEMORY[0x2821F96F8]();
}

- (ISBiometricStore)init
{
  v20 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = ISBiometricStore;
  v2 = [(ISBiometricStore *)&v15 init];
  if (v2)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v5) = shouldLog | 2;
    }

    else
    {
      LODWORD(v5) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v7 = objc_opt_class();
      v16 = 138543618;
      v17 = v7;
      v18 = 2050;
      v19 = v2;
      v8 = v7;
      v9 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_275BC3000, oSLogObject, 2, "%{public}@: Initializing singleton: %{public}p", &v16, 22);

      if (!v9)
      {
LABEL_14:

        v10 = objc_alloc_init(MEMORY[0x277CBEA78]);
        contextCache = v2->_contextCache;
        v2->_contextCache = v10;

        [(NSCache *)v2->_contextCache setCountLimit:5];
        v12 = objc_alloc_init(MEMORY[0x277CCAAF8]);
        lock = v2->_lock;
        v2->_lock = v12;

        return v2;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
      free(v9);
      SSFileLog();
    }

    goto LABEL_14;
  }

  return v2;
}

- (void)addContextToCache:(id)cache withToken:(id)token
{
  lock = self->_lock;
  tokenCopy = token;
  cacheCopy = cache;
  [(NSLock *)lock lock];
  [(NSCache *)self->_contextCache setObject:cacheCopy forKey:tokenCopy];

  v9 = self->_lock;

  [(NSLock *)v9 unlock];
}

+ (id)applePayClassicNetworks
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(ISLoadURLBagOperation);
  v4 = +[ISOperationQueue mainQueue];
  v30[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [v4 addOperations:v5 waitUntilFinished:1];

  if (![(ISOperation *)v3 success])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v11) = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v11) = v11 | 2;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v26 = 138543362;
      v27 = objc_opt_class();
      v12 = v27;
      v10 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: [PSD2] Apple Pay Classic Networks: Failed to load URL bag", &v26, 12);

      if (!v10)
      {
        goto LABEL_17;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:4];
      free(v10);
      v21 = oSLogObject;
      SSFileLog();
    }

    v10 = 0;
    goto LABEL_15;
  }

  uRLBag = [(ISLoadURLBagOperation *)v3 URLBag];
  mEMORY[0x277D69B38] = [uRLBag valueForKey:@"apple-pay-classic-networks"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __43__ISBiometricStore_applePayClassicNetworks__block_invoke;
    v23[3] = &unk_27A670660;
    v24 = v8;
    selfCopy = self;
    oSLogObject = v8;
    [mEMORY[0x277D69B38] enumerateObjectsUsingBlock:v23];
    v10 = [oSLogObject copy];

LABEL_15:
    goto LABEL_17;
  }

  v10 = 0;
LABEL_17:

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    LODWORD(v15) = shouldLog | 2;
  }

  else
  {
    LODWORD(v15) = shouldLog;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v15;
  }

  else
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v17 = objc_opt_class();
    v26 = 138543618;
    v27 = v17;
    v28 = 2114;
    v29 = v10;
    v18 = v17;
    LODWORD(v22) = 22;
    v19 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%{public}@: Parsed following PNOs: %{public}@", &v26, v22);

    if (!v19)
    {
      goto LABEL_29;
    }

    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:4];
    free(v19);
    SSFileLog();
  }

LABEL_29:

  return v10;
}

void __43__ISBiometricStore_applePayClassicNetworks__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lowercaseString];
  if (([v4 isEqualToString:@"visa"] & 1) == 0)
  {
    v5 = [v3 isEqualToString:@"Visa"];

    if (v5)
    {
      goto LABEL_4;
    }

    v8 = [v3 lowercaseString];
    if ([v8 isEqualToString:@"discover"])
    {

LABEL_10:
      v6 = "PKPaymentNetworkDiscover";
      goto LABEL_5;
    }

    v9 = [v3 isEqualToString:@"Discover"];

    if (v9)
    {
      goto LABEL_10;
    }

    v10 = [v3 lowercaseString];
    if ([v10 isEqualToString:@"mastercard"])
    {

LABEL_14:
      v6 = "PKPaymentNetworkMasterCard";
      goto LABEL_5;
    }

    v11 = [v3 isEqualToString:@"MasterCard"];

    if (v11)
    {
      goto LABEL_14;
    }

    v12 = [v3 lowercaseString];
    if ([v12 isEqualToString:@"american express"])
    {

LABEL_18:
      v6 = "PKPaymentNetworkAmex";
      goto LABEL_5;
    }

    v13 = [v3 isEqualToString:@"AmEx"];

    if (v13)
    {
      goto LABEL_18;
    }

    v14 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v14)
    {
      v14 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      LODWORD(v16) = v15 | 2;
    }

    else
    {
      LODWORD(v16) = v15;
    }

    v17 = [v14 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v20 = 138543618;
      v21 = objc_opt_class();
      v22 = 2114;
      v23 = v3;
      v18 = v21;
      v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, v17, 0, "%{public}@: Attempting to coerce value: %{public}@", &v20, 22);

      if (!v19)
      {
LABEL_31:

        [*(a1 + 32) addObject:v3];
        goto LABEL_6;
      }

      v17 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:4];
      free(v19);
      SSFileLog();
    }

    goto LABEL_31;
  }

LABEL_4:
  v6 = "PKPaymentNetworkVisa";
LABEL_5:
  v7 = ISWeakLinkedStringConstantForString(v6, 0x26);
  [*(a1 + 32) addObject:v7];

LABEL_6:
}

- (int64_t)biometricState
{
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"AMSDeviceBiometricsState", @"com.apple.AppleMediaServices", 0);
  if (AppIntegerValue == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (AppIntegerValue == 1);
  }
}

- (int64_t)biometricAvailabilityForAccountIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v15 = 4;
    goto LABEL_23;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

  if (!isPasscodeSet || ![(ISBiometricStore *)self identityMapCount])
  {
    v15 = 3;
    goto LABEL_23;
  }

  if (![(ISBiometricStore *)self isIdentityMapValidForAccountIdentifier:identifierCopy])
  {
    v15 = 2;
    goto LABEL_23;
  }

  lastRegisteredAccountIdentifier = [(ISBiometricStore *)self lastRegisteredAccountIdentifier];
  v8 = [lastRegisteredAccountIdentifier isEqualToNumber:identifierCopy];

  if ((v8 & 1) == 0)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v17 = 138543362;
      v18 = objc_opt_class();
      v13 = v18;
      v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: Invalid account state detected, but will continue with biometric authorization.", &v17, 12);

      if (!v14)
      {
LABEL_18:

        goto LABEL_19;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog();
    }

    goto LABEL_18;
  }

LABEL_19:
  v15 = 0;
LABEL_23:

  return v15;
}

- (BOOL)canPerformBiometricOptIn
{
  identityMapCount = [(ISBiometricStore *)self identityMapCount];
  if (identityMapCount)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

    LOBYTE(identityMapCount) = isPasscodeSet;
  }

  return identityMapCount;
}

- (BOOL)canPerformExtendedBiometricActionsForAccountIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [(ISBiometricStore *)self biometricAvailabilityForAccountIdentifier:identifier];
  biometricState = [(ISBiometricStore *)self biometricState];
  v6 = biometricState;
  if (!v4 || biometricState != 2)
  {
    return !v4 && v6 == 2;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v9) = shouldLog | 2;
  }

  else
  {
    LODWORD(v9) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  v11 = objc_opt_class();
  v12 = MEMORY[0x277CCABB0];
  v13 = v11;
  v14 = [v12 numberWithInteger:v4];
  v18 = 138543618;
  v19 = v11;
  v20 = 2114;
  v21 = v14;
  v15 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Biometrics unavailable: %{public}@", &v18, 22);

  if (v15)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:4];
    free(v15);
    SSFileLog();
LABEL_14:
  }

  return !v4 && v6 == 2;
}

- (void)clearLastRegisteredAccountIdentifier
{
  v10 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v4) = shouldLog | 2;
  }

  else
  {
    LODWORD(v4) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v8 = 138543362;
  v9 = objc_opt_class();
  v6 = v9;
  v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: Clearing biometric account identifier", &v8, 12);

  if (v7)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
    free(v7);
    SSFileLog();
LABEL_12:
  }

  CFPreferencesSetAppValue(@"BiometricAccountID", 0, *MEMORY[0x277D6A708]);
}

+ (id)countryCode
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(ISLoadURLBagOperation);
  v3 = +[ISOperationQueue mainQueue];
  v15[0] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v3 addOperations:v4 waitUntilFinished:1];

  if ([(ISOperation *)v2 success])
  {
    uRLBag = [(ISLoadURLBagOperation *)v2 URLBag];
    mEMORY[0x277D69B38] = [uRLBag valueForKey:@"countryCode"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mEMORY[0x277D69B38] = mEMORY[0x277D69B38];
      v7 = mEMORY[0x277D69B38];
      goto LABEL_17;
    }
  }

  else
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v13 = 138543362;
      v14 = objc_opt_class();
      v11 = v14;
      v7 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: countryCode: Failed to load URL bag", &v13, 12);

      if (!v7)
      {
        goto LABEL_17;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
      free(v7);
      SSFileLog();
    }
  }

  v7 = 0;
LABEL_17:

  return v7;
}

+ (id)diskBasedPaymentSheet
{
  v27[2] = *MEMORY[0x277D85DE8];
  if (!SSDebugShouldUseFileBasedPaymentSheetProxy())
  {
    v7 = 0;
    goto LABEL_47;
  }

  v2 = CPSharedResourcesDirectory();
  if ([v2 length])
  {
    mEMORY[0x277D69B38]3 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v27[0] = v2;
    v27[1] = @"paymentSheet.plist";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v5 = [MEMORY[0x277CCACA8] pathWithComponents:v4];
    if ([v5 length] && objc_msgSend(mEMORY[0x277D69B38]3, "fileExistsAtPath:", v5))
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5];
      if (mEMORY[0x277D69B38]2)
      {
        v7 = [objc_alloc(MEMORY[0x277D69BE8]) initWithServerResponse:mEMORY[0x277D69B38]2];
LABEL_45:

        goto LABEL_46;
      }

      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        LODWORD(v18) = shouldLog | 2;
      }

      else
      {
        LODWORD(v18) = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v18 = v18;
      }

      else
      {
        v18 &= 2u;
      }

      if (!v18)
      {
        goto LABEL_43;
      }

      v23 = 138543618;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = v5;
      v22 = v24;
      v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Failed to load plist at path: %{public}@", &v23, 22);

      if (v20)
      {
        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:4];
        free(v20);
        SSFileLog();
LABEL_43:
      }
    }

    else
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
      if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
      {
        LODWORD(v9) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v9) = shouldLog2;
      }

      mEMORY[0x277D69B38] = [mEMORY[0x277D69B38]2 OSLogObject];
      if (os_log_type_enabled(mEMORY[0x277D69B38], OS_LOG_TYPE_ERROR))
      {
        v9 = v9;
      }

      else
      {
        v9 &= 2u;
      }

      if (v9)
      {
        v23 = 138543618;
        v24 = objc_opt_class();
        v25 = 2114;
        v26 = v5;
        v11 = v24;
        v7 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, mEMORY[0x277D69B38], 16, "%{public}@: Failed to find file at path: %{public}@", &v23, 22);

        if (!v7)
        {
          goto LABEL_45;
        }

        mEMORY[0x277D69B38] = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
        free(v7);
        SSFileLog();
      }
    }

    v7 = 0;
    goto LABEL_45;
  }

  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
  if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
  {
    LODWORD(v13) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v13) = shouldLog3;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]3 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v13 = v13;
  }

  else
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_30;
  }

  v23 = 138543362;
  v24 = objc_opt_class();
  v15 = v24;
  v16 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%{public}@: Failed to obtain base directory", &v23, 12);

  if (v16)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:4];
    free(v16);
    SSFileLog();
LABEL_30:
  }

  v7 = 0;
LABEL_46:

LABEL_47:

  return v7;
}

- (id)fetchContextFromCacheWithToken:(id)token evict:(BOOL)evict
{
  evictCopy = evict;
  tokenCopy = token;
  [(NSLock *)self->_lock lock];
  v7 = [(NSCache *)self->_contextCache objectForKey:tokenCopy];
  if (evictCopy)
  {
    [(NSCache *)self->_contextCache removeObjectForKey:tokenCopy];
  }

  [(NSLock *)self->_lock unlock];

  return v7;
}

- (unint64_t)identityMapCount
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__0;
  v26[4] = __Block_byref_object_dispose__0;
  v27 = 0;
  if (!SSIsDaemon())
  {
    v6 = dispatch_semaphore_create(0);
    identityMap = objc_opt_new();
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __36__ISBiometricStore_identityMapCount__block_invoke;
    v21 = &unk_27A670688;
    v24 = v26;
    selfCopy = self;
    v25 = &v28;
    v3 = v6;
    v23 = v3;
    [identityMap getIdentityMapCountWithCompletionBlock:&v18];
    v7 = dispatch_time(0, 3000000000);
    if (!dispatch_semaphore_wait(v3, v7))
    {
LABEL_16:

      goto LABEL_17;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v9) = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v12 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v9) = v9 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v13 = objc_opt_class();
      v32 = 138543362;
      v33 = v13;
      v14 = v13;
      v15 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, v12, 16, "%{public}@: Identity map count XPC failed for timeout", &v32, 12, v18, v19, v20, v21, selfCopy);

      if (!v15)
      {
LABEL_15:

        goto LABEL_16;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog();
    }

    goto LABEL_15;
  }

  NSClassFromString(&cfstr_Daemonbiometri.isa);
  v3 = objc_opt_new();
  identityMap = [v3 identityMap];
  v5 = [identityMap count];
  v29[3] = v5;
LABEL_17:

  v16 = v29[3];
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(&v28, 8);
  return v16;
}

void __36__ISBiometricStore_identityMapCount__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = a2;
    goto LABEL_16;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v9) = v8 | 2;
  }

  else
  {
    LODWORD(v9) = v8;
  }

  v10 = [v7 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_13;
  }

  v11 = objc_opt_class();
  v12 = *(*(*(a1 + 48) + 8) + 40);
  v15 = 138543618;
  v16 = v11;
  v17 = 2114;
  v18 = v12;
  v13 = v11;
  v14 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, v10, 16, "%{public}@: Identity map count XPC failed with error: %{public}@", &v15, 22);

  if (v14)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
    free(v14);
    SSFileLog();
LABEL_13:
  }

LABEL_16:
  dispatch_semaphore_signal(*(a1 + 40));
}

+ (BOOL)isActionSupported:(int64_t)supported withBiometricAuthenticationContext:(id)context
{
  v44 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (SSIsDaemon())
  {
    nSClassFromString(&cfstr_Daemonbiometri_0.isa) = [NSClassFromString(&cfstr_Daemonbiometri_0.isa) sharedInstance];
    v37 = 0;
    v8 = [nSClassFromString(&cfstr_Daemonbiometri_0.isa) copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:contextCopy error:&v37];
    v9 = v37;

    if (v8)
    {
      v10 = [MEMORY[0x277CEE428] isActionSupported:supported withAccessControl:v8];
      CFRelease(v8);
      goto LABEL_34;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v24) = shouldLog | 2;
    }

    else
    {
      LODWORD(v24) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v24 = v24;
    }

    else
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v26 = objc_opt_class();
      *v40 = 138543618;
      *&v40[4] = v26;
      *&v40[12] = 2114;
      *&v40[14] = v9;
      v27 = v26;
      v28 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: ACL action evaluation failed with error: %{public}@", v40, 22);

      if (!v28)
      {
LABEL_31:

        v10 = 0;
        goto LABEL_34;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:4];
      free(v28);
      SSFileLog();
    }

    goto LABEL_31;
  }

  v11 = dispatch_semaphore_create(0);
  *v40 = 0;
  *&v40[8] = v40;
  *&v40[16] = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  v12 = objc_alloc_init(MEMORY[0x277D69A70]);
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __73__ISBiometricStore_isActionSupported_withBiometricAuthenticationContext___block_invoke;
  v33 = &unk_27A6706B0;
  v35 = v40;
  selfCopy = self;
  v9 = v11;
  v34 = v9;
  [v12 getConstraintsDictionaryForPurpose:supported > 99 completion:&v30];
  v13 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v9, v13))
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v15) = [mEMORY[0x277D69B38]2 shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38]2 shouldLogToDisk];
    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    v18 = oSLogObject2;
    if (shouldLogToDisk)
    {
      LODWORD(v15) = v15 | 2;
    }

    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v15 = v15;
    }

    else
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v19 = objc_opt_class();
      v38 = 138543362;
      v39 = v19;
      v20 = v19;
      v21 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_275BC3000, v18, 16, "%{public}@: Is identity map valid XPC failed for timeout", &v38, 12, v30, v31, v32, v33);

      if (!v21)
      {
LABEL_16:

        goto LABEL_17;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:4];
      free(v21);
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_17:
  if (*(*&v40[8] + 40))
  {
    v10 = [MEMORY[0x277CEE428] isActionSupported:supported withConstraints:?];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(v40, 8);
LABEL_34:

  return v10;
}

void __73__ISBiometricStore_isActionSupported_withBiometricAuthenticationContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (!v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    goto LABEL_16;
  }

  v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v8)
  {
    v8 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    LODWORD(v10) = v9 | 2;
  }

  else
  {
    LODWORD(v10) = v9;
  }

  v11 = [v8 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v14 = 138543618;
  v15 = objc_opt_class();
  v16 = 2114;
  v17 = v7;
  v12 = v15;
  v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, v11, 16, "%{public}@: ACL constraints fetch failed with error: %{public}@", &v14, 22);

  if (v13)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:4];
    free(v13);
    SSFileLog();
LABEL_13:
  }

LABEL_16:
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)isIdentityMapValidForAccountIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__0;
  v25[4] = __Block_byref_object_dispose__0;
  v26 = 0;
  if (!SSIsDaemon())
  {
    v7 = dispatch_semaphore_create(0);
    v8 = objc_opt_new();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __59__ISBiometricStore_isIdentityMapValidForAccountIdentifier___block_invoke;
    v20[3] = &unk_27A6706D8;
    v23 = v25;
    v20[4] = self;
    v21 = identifierCopy;
    v24 = &v27;
    v5 = v7;
    v22 = v5;
    [v8 isIdentityMapValidForAccountIdentifier:v21 completionBlock:v20];
    v9 = dispatch_time(0, 5000000000);
    if (!dispatch_semaphore_wait(v5, v9))
    {
LABEL_16:

      goto LABEL_17;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v11) = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v14 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v11) = v11 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v15 = objc_opt_class();
      v31 = 138543362;
      v32 = v15;
      v16 = v15;
      v17 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, v14, 16, "%{public}@: Is identity map valid XPC failed for timeout", &v31, 12);

      if (!v17)
      {
LABEL_15:

        goto LABEL_16;
      }

      v14 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:4];
      free(v17);
      SSFileLog();
    }

    goto LABEL_15;
  }

  NSClassFromString(&cfstr_Daemonbiometri.isa);
  v5 = objc_opt_new();
  v6 = [v5 isIdentityMapValidForAccountIdentifier:identifierCopy];
  *(v28 + 24) = v6;
LABEL_17:

  v18 = *(v28 + 24);
  _Block_object_dispose(v25, 8);

  _Block_object_dispose(&v27, 8);
  return v18 & 1;
}

void __59__ISBiometricStore_isIdentityMapValidForAccountIdentifier___block_invoke(uint64_t a1, char a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 40);
      v13 = *(*(*(a1 + 56) + 8) + 40);
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      v14 = v11;
      v15 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, v10, 16, "%{public}@: Is identity map valid XPC failed for DSID: %@, error: %{public}@", &v16, 32);

      if (!v15)
      {
LABEL_14:

        goto LABEL_15;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  *(*(*(a1 + 64) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 48));
}

- (unint64_t)keyCountForAccountIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (!SSIsDaemon())
  {
    v7 = dispatch_semaphore_create(0);
    v8 = objc_alloc_init(MEMORY[0x277D69B20]);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__ISBiometricStore_keyCountForAccountIdentifier___block_invoke;
    v20[3] = &unk_27A670700;
    v20[4] = self;
    v22 = &v23;
    v5 = v7;
    v21 = v5;
    [v8 keyCountForAccountIdentifier:identifierCopy completionBlock:v20];
    v9 = dispatch_time(0, 3000000000);
    if (!dispatch_semaphore_wait(v5, v9))
    {
LABEL_16:

      goto LABEL_17;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v11) = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v14 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v11) = v11 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v15 = objc_opt_class();
      v27 = 138543362;
      v28 = v15;
      v16 = v15;
      v17 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, v14, 16, "%{public}@: Key count XPC failed for timeout", &v27, 12);

      if (!v17)
      {
LABEL_15:

        goto LABEL_16;
      }

      v14 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:4];
      free(v17);
      SSFileLog();
    }

    goto LABEL_15;
  }

  NSClassFromString(&cfstr_Daemonbiometri.isa);
  v5 = objc_opt_new();
  v6 = [v5 keyCountForAccountIdentifier:identifierCopy];
  v24[3] = v6;
LABEL_17:

  v18 = v24[3];
  _Block_object_dispose(&v23, 8);

  return v18;
}

void __49__ISBiometricStore_keyCountForAccountIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = v7 | 2;
    }

    else
    {
      LODWORD(v8) = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v12 = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v5;
      v10 = v13;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_275BC3000, v9, 16, "%{public}@: Key count XPC failed with error: %{public}@", &v12, 22);

      if (!v11)
      {
LABEL_14:

        goto LABEL_15;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:4];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 40));
}

- (NSNumber)lastRegisteredAccountIdentifier
{
  v2 = CFPreferencesCopyAppValue(@"BiometricAccountID", *MEMORY[0x277D6A708]);

  return v2;
}

- (void)registerAccountIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v11 = 138543618;
  v12 = objc_opt_class();
  v13 = 2114;
  v14 = identifierCopy;
  v8 = v12;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: Registering biometric account identifier for DSID: %{public}@", &v11, 22);

  if (v9)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog();
LABEL_12:
  }

  v10 = *MEMORY[0x277D6A708];
  CFPreferencesSetAppValue(@"BiometricAccountID", identifierCopy, *MEMORY[0x277D6A708]);
  CFPreferencesAppSynchronize(v10);
}

- (void)saveIdentityMapForAccountIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!SSIsDaemon())
  {
    v6 = dispatch_semaphore_create(0);
    v7 = objc_opt_new();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __56__ISBiometricStore_saveIdentityMapForAccountIdentifier___block_invoke;
    v18[3] = &unk_27A670728;
    v18[4] = self;
    v8 = v6;
    v19 = v8;
    [v7 saveIdentityMapForAccountIdentifier:identifierCopy completionBlock:v18];

    v9 = dispatch_time(0, 5000000000);
    if (!dispatch_semaphore_wait(v8, v9))
    {
LABEL_19:

      return;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v12) = shouldLog | 2;
    }

    else
    {
      LODWORD(v12) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v14 = objc_opt_class();
      v20 = 138543362;
      v21 = v14;
      v15 = v14;
      v16 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Save identity map XPC failed for timeout", &v20, 12);

      if (!v16)
      {
LABEL_18:

        goto LABEL_19;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog();
    }

    goto LABEL_18;
  }

  NSClassFromString(&cfstr_Daemonbiometri.isa);
  v17 = objc_opt_new();
  identityMap = [v17 identityMap];
  [v17 saveIdentityMap:identityMap forAccountIdentifier:identifierCopy];
}

void __56__ISBiometricStore_saveIdentityMapForAccountIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = v7 | 2;
    }

    else
    {
      LODWORD(v8) = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v23 = 138543618;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = v5;
      v10 = v24;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_275BC3000, v9, 16, "%{public}@: Identity map save XPC failed with error: %{public}@", &v23, 22);

      if (!v11)
      {
LABEL_14:

        goto LABEL_15;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:4];
      free(v11);
      v21 = v9;
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  v12 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v12)
  {
    v12 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v13 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    LODWORD(v14) = v13 | 2;
  }

  else
  {
    LODWORD(v14) = v13;
  }

  v15 = [v12 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v14;
  }

  else
  {
    v14 &= 2u;
  }

  if (!v14)
  {
    goto LABEL_26;
  }

  v16 = objc_opt_class();
  v17 = MEMORY[0x277CCABB0];
  v18 = v16;
  v19 = [v17 numberWithBool:a2];
  v23 = 138543618;
  v24 = v16;
  v25 = 2114;
  v26 = v19;
  LODWORD(v22) = 22;
  v20 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_275BC3000, v15, 0, "%{public}@: Identity map save XPC completed with result: %{public}@", &v23, v22);

  if (v20)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:4];
    free(v20);
    SSFileLog();
LABEL_26:
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)setBiometricState:(int64_t)state
{
  v42 = *MEMORY[0x277D85DE8];
  if ([(ISBiometricStore *)self biometricState]!= state)
  {
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:state];
    v6 = *MEMORY[0x277D6A708];
    CFPreferencesSetAppValue(@"BiometricState", v5, *MEMORY[0x277D6A708]);
    if ((state - 1) <= 1)
    {
      CFPreferencesSetAppValue(@"BiometricStateEnabled", v5, v6);
    }

    CFPreferencesAppSynchronize(v6);
    if (!state)
    {
      v7 = MEMORY[0x277CEE470];
      v8 = 0;
      goto LABEL_24;
    }

    if (state != 1)
    {
      if (state != 2)
      {
LABEL_30:
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D6A6B0], 0, 0, 1u);

        return;
      }

      v7 = MEMORY[0x277CEE470];
      v8 = 1;
LABEL_24:
      [v7 setBiometricState:v8];
      goto LABEL_30;
    }

    [MEMORY[0x277CEE470] setBiometricState:2];
    lastRegisteredAccountIdentifier = [(ISBiometricStore *)self lastRegisteredAccountIdentifier];
    if (!lastRegisteredAccountIdentifier)
    {
      v11 = 0;
      goto LABEL_26;
    }

    v35 = 0;
    v10 = [(ISBiometricStore *)self deleteKeychainTokensForAccountIdentifier:lastRegisteredAccountIdentifier error:&v35];
    v11 = v35;
    if (v10)
    {
LABEL_26:
      defaultStore = [MEMORY[0x277D69A20] defaultStore];
      activeAccount = [defaultStore activeAccount];
      uniqueIdentifier = [activeAccount uniqueIdentifier];

      if (!uniqueIdentifier || ([uniqueIdentifier isEqualToNumber:lastRegisteredAccountIdentifier] & 1) != 0)
      {
        v22 = v11;
LABEL_29:

        goto LABEL_30;
      }

      v34 = v11;
      v24 = [(ISBiometricStore *)self deleteKeychainTokensForAccountIdentifier:uniqueIdentifier error:&v34];
      v22 = v34;

      if (v24)
      {
        goto LABEL_29;
      }

      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        LODWORD(v27) = shouldLog | 2;
      }

      else
      {
        LODWORD(v27) = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v27 = v27;
      }

      else
      {
        v27 &= 2u;
      }

      if (v27)
      {
        v29 = objc_opt_class();
        v36 = 138543874;
        v37 = v29;
        v38 = 2112;
        v39 = lastRegisteredAccountIdentifier;
        v40 = 2114;
        v41 = v22;
        v30 = v29;
        LODWORD(v33) = 32;
        v31 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Reset keychain tokens failed while disabling biometric state for active account DSID: %@, error: %{public}@", &v36, v33);

        if (!v31)
        {
LABEL_45:

          goto LABEL_29;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:4];
        free(v31);
        SSFileLog();
      }

      goto LABEL_45;
    }

    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v14) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v14) = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      v36 = 138543874;
      v37 = v16;
      v38 = 2112;
      v39 = lastRegisteredAccountIdentifier;
      v40 = 2114;
      v41 = v11;
      v17 = v16;
      v18 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%{public}@: Reset keychain tokens failed while disabling biometric state for last registered DSID: %@, error: %{public}@", &v36, 32);

      if (!v18)
      {
LABEL_22:

        goto LABEL_26;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:4];
      free(v18);
      v32 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_22;
  }
}

+ (void)tokenUpdateDidFinishWithLogKey:(id)key
{
  v30 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (!SSIsDaemon())
  {
    objc_initWeak(&location, self);
    v5 = dispatch_semaphore_create(0);
    v6 = objc_alloc_init(MEMORY[0x277D69A70]);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __51__ISBiometricStore_tokenUpdateDidFinishWithLogKey___block_invoke;
    v21 = &unk_27A670750;
    objc_copyWeak(&v24, &location);
    v7 = keyCopy;
    v22 = v7;
    v8 = v5;
    v23 = v8;
    [v6 tokenUpdateDidFinishWithLogKey:v7 completion:&v18];
    v9 = dispatch_time(0, 2500000000);
    if (!dispatch_semaphore_wait(v8, v9))
    {
LABEL_16:

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
      goto LABEL_17;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v11) = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v14 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v11) = v11 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v15 = objc_opt_class();
      v26 = 138543618;
      v27 = v15;
      v28 = 2114;
      v29 = v7;
      v16 = v15;
      v17 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, v14, 16, "%{public}@: [%{public}@] tokenUpdateDidFinish failed for timeout", &v26, 22, v18, v19, v20, v21, v22);

      if (!v17)
      {
LABEL_15:

        goto LABEL_16;
      }

      v14 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:4];
      free(v17);
      SSFileLog();
    }

    goto LABEL_15;
  }

  [NSClassFromString(&cfstr_Daemonbiometri.isa) tokenUpdateDidFinishWithLogKey:keyCopy];
LABEL_17:
}

void __51__ISBiometricStore_tokenUpdateDidFinishWithLogKey___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v7) = v6 | 2;
    }

    else
    {
      LODWORD(v7) = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      v13 = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v3;
      v11 = v9;
      v12 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_275BC3000, v8, 16, "%{public}@: [%{public}@] tokenUpdateDidFinish failed with error: %{public}@", &v13, 32);

      if (!v12)
      {
LABEL_14:

        goto LABEL_15;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:4];
      free(v12);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  dispatch_semaphore_signal(*(a1 + 40));
}

+ (BOOL)tokenUpdateShouldStartWithLogKey:(id)key
{
  v34 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  if (!SSIsDaemon())
  {
    objc_initWeak(&location, self);
    v6 = dispatch_semaphore_create(0);
    v7 = objc_alloc_init(MEMORY[0x277D69A70]);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __53__ISBiometricStore_tokenUpdateShouldStartWithLogKey___block_invoke;
    v20[3] = &unk_27A670778;
    objc_copyWeak(&v24, &location);
    v8 = keyCopy;
    v21 = v8;
    v23 = &v26;
    v9 = v6;
    v22 = v9;
    [v7 tokenUpdateShouldStartWithLogKey:v8 completion:v20];
    v10 = dispatch_time(0, 2500000000);
    if (!dispatch_semaphore_wait(v9, v10))
    {
LABEL_16:

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
      v5 = *(v27 + 24);
      goto LABEL_17;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v12) = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v15 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v12) = v12 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v16 = objc_opt_class();
      v30 = 138543618;
      v31 = v16;
      v32 = 2114;
      v33 = v8;
      v17 = v16;
      v18 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_275BC3000, v15, 16, "%{public}@: [%{public}@] tokenUpdateShouldStart failed for timeout", &v30, 22);

      if (!v18)
      {
LABEL_15:

        goto LABEL_16;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:4];
      free(v18);
      SSFileLog();
    }

    goto LABEL_15;
  }

  v5 = [NSClassFromString(&cfstr_Daemonbiometri.isa) tokenUpdateShouldStartWithLogKey:keyCopy];
  *(v27 + 24) = v5;
LABEL_17:
  _Block_object_dispose(&v26, 8);

  return v5 & 1;
}

void __53__ISBiometricStore_tokenUpdateShouldStartWithLogKey___block_invoke(uint64_t a1, char a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
    goto LABEL_16;
  }

  v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v9) = v8 | 2;
  }

  else
  {
    LODWORD(v9) = v8;
  }

  v10 = [v7 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_13;
  }

  v11 = objc_opt_class();
  v12 = *(a1 + 32);
  v15 = 138543874;
  v16 = v11;
  v17 = 2114;
  v18 = v12;
  v19 = 2114;
  v20 = v5;
  v13 = v11;
  v14 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, v10, 16, "%{public}@: [%{public}@] tokenUpdateShouldStart failed with error: %{public}@", &v15, 32);

  if (v14)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
    free(v14);
    SSFileLog();
LABEL_13:
  }

LABEL_16:
  dispatch_semaphore_signal(*(a1 + 40));
}

+ (int64_t)tokenUpdateState
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (!SSIsDaemon())
  {
    objc_initWeak(&location, self);
    v4 = dispatch_semaphore_create(0);
    v5 = objc_alloc_init(MEMORY[0x277D69A70]);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __36__ISBiometricStore_tokenUpdateState__block_invoke;
    v21 = &unk_27A6707A0;
    objc_copyWeak(&v24, &location);
    v23 = &v26;
    v6 = v4;
    v22 = v6;
    [v5 tokenUpdateStateWithCompletionBlock:&v18];
    v7 = dispatch_time(0, 2500000000);
    if (!dispatch_semaphore_wait(v6, v7))
    {
LABEL_18:

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
      goto LABEL_20;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v9) = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v12 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v9) = v9 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v13 = objc_opt_class();
      v30 = 138543362;
      v31 = v13;
      v14 = v13;
      v15 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, v12, 16, "%{public}@: tokenUpdateState failed for timeout", &v30, 12, v18, v19, v20, v21);

      if (!v15)
      {
LABEL_17:

        goto LABEL_18;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog();
    }

    goto LABEL_17;
  }

  tokenUpdateState = [NSClassFromString(&cfstr_Daemonbiometri.isa) tokenUpdateState];
  if (tokenUpdateState)
  {
    if (tokenUpdateState == 1)
    {
      v27[3] = 1;
    }
  }

  else
  {
    v27[3] = 0;
  }

LABEL_20:
  v16 = v27[3];
  _Block_object_dispose(&v26, 8);
  return v16;
}

void __36__ISBiometricStore_tokenUpdateState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5)
  {
    v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v13 = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v5;
      v11 = v14;
      v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, v10, 16, "%{public}@: tokenUpdateState failed with error: %{public}@", &v13, 22);

      if (!v12)
      {
LABEL_14:

        goto LABEL_15;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:4];
      free(v12);
      SSFileLog();
    }

    goto LABEL_14;
  }

  if (a2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else if (!a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

LABEL_15:
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)keychainLabelForKeyWithAccountID:(id)d purpose:(int64_t)purpose
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = +[ISClient currentClient];
  identifier = [v6 identifier];

  if (purpose)
  {
    if (purpose != 1)
    {
      goto LABEL_6;
    }

    v8 = @"%@:%@-ext";
  }

  else
  {
    v8 = @"%@:%@";
  }

  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:v8, identifier, dCopy];
  if (dCopy)
  {
    goto LABEL_19;
  }

LABEL_6:
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v12) = shouldLog | 2;
  }

  else
  {
    LODWORD(v12) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v12 = v12;
  }

  else
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_17;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:purpose];
  v18 = 138412546;
  v19 = dCopy;
  v20 = 2114;
  v21 = v14;
  LODWORD(v17) = 22;
  v15 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "ISBiometricStore: Failed to configure label for DSID: %@, purpose: %{public}@", &v18, v17);

  if (v15)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:4];
    free(v15);
    SSFileLog();
LABEL_17:
  }

  dCopy = 0;
LABEL_19:

  return dCopy;
}

+ (id)keychainLabelForCertWithAccountID:(id)d purpose:(int64_t)purpose
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = [ISBiometricStore keychainLabelForKeyWithAccountID:dCopy purpose:purpose];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-cert", v6];
  if (!v7)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v10) = shouldLog | 2;
    }

    else
    {
      LODWORD(v10) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:purpose];
      v15 = 138412546;
      v16 = dCopy;
      v17 = 2112;
      v18 = v12;
      v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "ISBiometricStore: Failed to configure X509 cert label for DSID: %@, purpose: %@", &v15, 22);

      if (!v13)
      {
LABEL_14:

        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:4];
      free(v13);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:

  return v7;
}

- (id)createAttestationDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__0;
  v47 = __Block_byref_object_dispose__0;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  if (SSIsDaemon())
  {
    nSClassFromString(&cfstr_Daemonbiometri_0.isa) = [NSClassFromString(&cfstr_Daemonbiometri_0.isa) sharedInstance];
    v10 = (v38 + 5);
    obj = v38[5];
    v11 = [nSClassFromString(&cfstr_Daemonbiometri_0.isa) createAttestationDataForAccountIdentifier_:identifierCopy purpose:purpose error:&obj];
    objc_storeStrong(v10, obj);
    v12 = v44[5];
    v44[5] = v11;
    goto LABEL_17;
  }

  v13 = dispatch_semaphore_create(0);
  v12 = objc_opt_new();
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __76__ISBiometricStore_createAttestationDataForAccountIdentifier_purpose_error___block_invoke;
  v30 = &unk_27A6707C8;
  v34 = &v37;
  selfCopy = self;
  v32 = identifierCopy;
  v35 = &v43;
  nSClassFromString(&cfstr_Daemonbiometri_0.isa) = v13;
  v33 = nSClassFromString(&cfstr_Daemonbiometri_0.isa);
  [v12 createAttestationDataForAccountIdentifier:v32 purpose:purpose completionBlock:&v27];
  v14 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(nSClassFromString(&cfstr_Daemonbiometri_0.isa), v14))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v16) = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v19 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v16) = v16 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v20 = objc_opt_class();
      v49 = 138543362;
      v50 = v20;
      v21 = v20;
      v22 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, v19, 16, "%{public}@: Create attestation XPC failed for timeout", &v49, 12, v27, v28, v29, v30, selfCopy, v32);

      if (!v22)
      {
LABEL_15:

        v23 = SSError();
        v24 = v38[5];
        v38[5] = v23;

        goto LABEL_16;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:4];
      free(v22);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:

LABEL_17:
  if (error)
  {
    *error = v38[5];
  }

  v25 = v44[5];
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);

  return v25;
}

void __76__ISBiometricStore_createAttestationDataForAccountIdentifier_purpose_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = v9 | 2;
    }

    else
    {
      LODWORD(v10) = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (!v10)
    {
      goto LABEL_14;
    }

    v12 = objc_opt_class();
    v13 = *(a1 + 40);
    v14 = *(*(*(a1 + 56) + 8) + 40);
    *v22 = 138543874;
    *&v22[4] = v12;
    *&v22[12] = 2112;
    *&v22[14] = v13;
    *&v22[22] = 2114;
    v23 = v14;
    v15 = v12;
    v16 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, v11, 16, "%{public}@: Create attestation XPC failed for DSID: %@, error: %{public}@", v22, 32, *v22, *&v22[8], v23);
  }

  else
  {
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      goto LABEL_18;
    }

    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v18 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v19) = v18 | 2;
    }

    else
    {
      LODWORD(v19) = v18;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (!v19)
    {
      goto LABEL_14;
    }

    v20 = objc_opt_class();
    v21 = *(a1 + 40);
    *v22 = 138543618;
    *&v22[4] = v20;
    *&v22[12] = 2112;
    *&v22[14] = v21;
    v15 = v20;
    v16 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_275BC3000, v11, 16, "%{public}@: Create attestation XPC failed for DSID: %@", v22, 22, *v22, *&v22[8], v23);
  }

  v17 = v16;

  if (v17)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:4];
    free(v17);
    SSFileLog();
LABEL_14:
  }

LABEL_18:
  dispatch_semaphore_signal(*(a1 + 48));
}

- (id)createX509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__0;
  v47 = __Block_byref_object_dispose__0;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  if (SSIsDaemon())
  {
    nSClassFromString(&cfstr_Daemonbiometri_0.isa) = [NSClassFromString(&cfstr_Daemonbiometri_0.isa) sharedInstance];
    v10 = (v38 + 5);
    obj = v38[5];
    v11 = [nSClassFromString(&cfstr_Daemonbiometri_0.isa) createX509CertChainDataForAccountIdentifier_:identifierCopy purpose:purpose error:&obj];
    objc_storeStrong(v10, obj);
    v12 = v44[5];
    v44[5] = v11;
    goto LABEL_17;
  }

  v13 = dispatch_semaphore_create(0);
  v12 = objc_alloc_init(MEMORY[0x277D69B20]);
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __78__ISBiometricStore_createX509CertChainDataForAccountIdentifier_purpose_error___block_invoke;
  v30 = &unk_27A6707F0;
  v34 = &v37;
  selfCopy = self;
  v32 = identifierCopy;
  v35 = &v43;
  nSClassFromString(&cfstr_Daemonbiometri_0.isa) = v13;
  v33 = nSClassFromString(&cfstr_Daemonbiometri_0.isa);
  [v12 createX509CertChainDataForAccountIdentifier:v32 purpose:purpose completionBlock:&v27];
  v14 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(nSClassFromString(&cfstr_Daemonbiometri_0.isa), v14))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v16) = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v19 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v16) = v16 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v20 = objc_opt_class();
      v49 = 138543362;
      v50 = v20;
      v21 = v20;
      v22 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, v19, 16, "%{public}@: Create x509 cert XPC failed for timeout", &v49, 12, v27, v28, v29, v30, selfCopy, v32);

      if (!v22)
      {
LABEL_15:

        v23 = SSError();
        v24 = v38[5];
        v38[5] = v23;

        goto LABEL_16;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:4];
      free(v22);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:

LABEL_17:
  if (error)
  {
    *error = v38[5];
  }

  v25 = v44[5];
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);

  return v25;
}

void __78__ISBiometricStore_createX509CertChainDataForAccountIdentifier_purpose_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = v9 | 2;
    }

    else
    {
      LODWORD(v10) = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (!v10)
    {
      goto LABEL_14;
    }

    v12 = objc_opt_class();
    v13 = *(a1 + 40);
    *v21 = 138543874;
    *&v21[4] = v12;
    *&v21[12] = 2112;
    *&v21[14] = v13;
    *&v21[22] = 2114;
    v14 = v12;
    v15 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, v11, 16, "%{public}@: Create x509 cert XPC failed for DSID: %@, error: %{public}@", v21, 32, *v21, *&v21[8], v7);
  }

  else
  {
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      goto LABEL_18;
    }

    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v17 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v18) = v17 | 2;
    }

    else
    {
      LODWORD(v18) = v17;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (!v18)
    {
      goto LABEL_14;
    }

    v19 = objc_opt_class();
    v20 = *(a1 + 40);
    *v21 = 138543618;
    *&v21[4] = v19;
    *&v21[12] = 2112;
    *&v21[14] = v20;
    v14 = v19;
    v15 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_275BC3000, v11, 16, "%{public}@: Create x509 cert XPC failed for DSID: %@", v21, 22, *v21, *&v21[8], v22);
  }

  v16 = v15;

  if (v16)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:4];
    free(v16);
    SSFileLog();
LABEL_14:
  }

LABEL_18:
  dispatch_semaphore_signal(*(a1 + 48));
}

- (BOOL)deleteKeychainTokensForAccountIdentifier:(id)identifier error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v40 = 0;
  if (SSIsDaemon())
  {
    nSClassFromString(&cfstr_Daemonbiometri_0.isa) = [NSClassFromString(&cfstr_Daemonbiometri_0.isa) sharedInstance];
    v8 = (v36 + 5);
    obj = v36[5];
    v9 = [nSClassFromString(&cfstr_Daemonbiometri_0.isa) deleteKeychainTokensForAccountIdentifier_:identifierCopy error:&obj];
    objc_storeStrong(v8, obj);
    *(v42 + 24) = v9;
    goto LABEL_17;
  }

  v10 = dispatch_semaphore_create(0);
  v11 = objc_opt_new();
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __67__ISBiometricStore_deleteKeychainTokensForAccountIdentifier_error___block_invoke;
  v28 = &unk_27A6706D8;
  v32 = &v35;
  selfCopy = self;
  v30 = identifierCopy;
  v33 = &v41;
  nSClassFromString(&cfstr_Daemonbiometri_0.isa) = v10;
  v31 = nSClassFromString(&cfstr_Daemonbiometri_0.isa);
  [v11 deleteKeychainTokensForAccountIdentifier:v30 completionBlock:&v25];
  v12 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(nSClassFromString(&cfstr_Daemonbiometri_0.isa), v12))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v14) = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v17 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v14) = v14 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v18 = objc_opt_class();
      v45 = 138543362;
      v46 = v18;
      v19 = v18;
      v20 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_275BC3000, v17, 16, "%{public}@: Delete keychain tokens XPC failed for timeout", &v45, 12, v25, v26, v27, v28, selfCopy, v30);

      if (!v20)
      {
LABEL_15:

        v21 = SSError();
        v22 = v36[5];
        v36[5] = v21;

        goto LABEL_16;
      }

      v17 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:

LABEL_17:
  if (error)
  {
    *error = v36[5];
  }

  v23 = *(v42 + 24);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  return v23 & 1;
}

void __67__ISBiometricStore_deleteKeychainTokensForAccountIdentifier_error___block_invoke(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (!v9)
    {
      goto LABEL_25;
    }

    v11 = objc_opt_class();
    v12 = *(a1 + 40);
    v13 = *(*(*(a1 + 56) + 8) + 40);
    *v21 = 138543874;
    *&v21[4] = v11;
    *&v21[12] = 2112;
    *&v21[14] = v12;
    *&v21[22] = 2114;
    v22 = v13;
    v14 = v11;
    v15 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, v10, 16, "%{public}@: Delete keychain tokens XPC failed for DSID: %@, error: %{public}@", v21, 32, *v21, *&v21[8], v22);
LABEL_23:
    v20 = v15;

    if (!v20)
    {
LABEL_26:

      goto LABEL_27;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:4];
    free(v20);
    SSFileLog();
LABEL_25:

    goto LABEL_26;
  }

  if ((a2 & 1) == 0)
  {
    v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v16 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v17) = v16 | 2;
    }

    else
    {
      LODWORD(v17) = v16;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (!v17)
    {
      goto LABEL_25;
    }

    v18 = objc_opt_class();
    v19 = *(a1 + 40);
    *v21 = 138543618;
    *&v21[4] = v18;
    *&v21[12] = 2112;
    *&v21[14] = v19;
    v14 = v18;
    v15 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_275BC3000, v10, 16, "%{public}@: Delete keychain tokens XPC failed for DSID: %@", v21, 22, *v21, *&v21[8], v22);
    goto LABEL_23;
  }

LABEL_27:
  *(*(*(a1 + 64) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 48));
}

- (id)publicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__0;
  v47 = __Block_byref_object_dispose__0;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  if (SSIsDaemon())
  {
    nSClassFromString(&cfstr_Daemonbiometri_0.isa) = [NSClassFromString(&cfstr_Daemonbiometri_0.isa) sharedInstance];
    v10 = (v38 + 5);
    obj = v38[5];
    v11 = [nSClassFromString(&cfstr_Daemonbiometri_0.isa) publicKeyDataForAccountIdentifier_:identifierCopy purpose:purpose error:&obj];
    objc_storeStrong(v10, obj);
    v12 = v44[5];
    v44[5] = v11;
    goto LABEL_17;
  }

  v13 = dispatch_semaphore_create(0);
  v12 = objc_opt_new();
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __68__ISBiometricStore_publicKeyDataForAccountIdentifier_purpose_error___block_invoke;
  v30 = &unk_27A6707C8;
  v34 = &v37;
  selfCopy = self;
  v32 = identifierCopy;
  v35 = &v43;
  nSClassFromString(&cfstr_Daemonbiometri_0.isa) = v13;
  v33 = nSClassFromString(&cfstr_Daemonbiometri_0.isa);
  [v12 getPublicKeyDataForAccountIdentifier:v32 purpose:purpose completionBlock:&v27];
  v14 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(nSClassFromString(&cfstr_Daemonbiometri_0.isa), v14))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v16) = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v19 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v16) = v16 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v20 = objc_opt_class();
      v49 = 138543362;
      v50 = v20;
      v21 = v20;
      v22 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, v19, 16, "%{public}@: Public key copy XPC failed for timeout", &v49, 12, v27, v28, v29, v30, selfCopy, v32);

      if (!v22)
      {
LABEL_15:

        v23 = SSError();
        v24 = v38[5];
        v38[5] = v23;

        goto LABEL_16;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:4];
      free(v22);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:

LABEL_17:
  if (error)
  {
    *error = v38[5];
  }

  v25 = v44[5];
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);

  return v25;
}

void __68__ISBiometricStore_publicKeyDataForAccountIdentifier_purpose_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = v9 | 2;
    }

    else
    {
      LODWORD(v10) = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (!v10)
    {
      goto LABEL_14;
    }

    v12 = objc_opt_class();
    v13 = *(a1 + 40);
    v14 = *(*(*(a1 + 56) + 8) + 40);
    *v22 = 138543874;
    *&v22[4] = v12;
    *&v22[12] = 2112;
    *&v22[14] = v13;
    *&v22[22] = 2114;
    v23 = v14;
    v15 = v12;
    v16 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, v11, 16, "%{public}@: Public key copy XPC failed for DSID: %@, error: %{public}@", v22, 32, *v22, *&v22[8], v23);
  }

  else
  {
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      goto LABEL_18;
    }

    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v18 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v19) = v18 | 2;
    }

    else
    {
      LODWORD(v19) = v18;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (!v19)
    {
      goto LABEL_14;
    }

    v20 = objc_opt_class();
    v21 = *(a1 + 40);
    *v22 = 138543618;
    *&v22[4] = v20;
    *&v22[12] = 2112;
    *&v22[14] = v21;
    v15 = v20;
    v16 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_275BC3000, v11, 16, "%{public}@: Public key copy XPC failed for DSID: %@", v22, 22, *v22, *&v22[8], v23);
  }

  v17 = v16;

  if (v17)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:4];
    free(v17);
    SSFileLog();
LABEL_14:
  }

LABEL_18:
  dispatch_semaphore_signal(*(a1 + 48));
}

+ (BOOL)shouldUseApplePayClassic
{
  v35 = *MEMORY[0x277D85DE8];
  if (![MEMORY[0x277D69A80] deviceIsInternalBuild])
  {
    goto LABEL_43;
  }

  applePayClassic = [MEMORY[0x277CEE468] applePayClassic];
  if (!applePayClassic)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v33 = 138543362;
      v34 = objc_opt_class();
      v18 = v34;
      v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [PSD2] Honoring Apple Pay Classic bag value", &v33, 12);

      if (!v19)
      {
LABEL_42:

        goto LABEL_43;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:4];
      free(v19);
      v30 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_42;
  }

  if (applePayClassic == 2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
    if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog2;
    }

    oSLogObject2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v33 = 138543362;
      v34 = objc_opt_class();
      v13 = v34;
      v9 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%{public}@: [PSD2] Skipping Apple Pay Classic for default settings", &v33, 12);

      if (!v9)
      {
        goto LABEL_60;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
      free(v9);
      SSFileLog();
    }

    LOBYTE(v9) = 0;
    goto LABEL_60;
  }

  if (applePayClassic != 1)
  {
LABEL_43:
    mEMORY[0x277D69B38]2 = objc_alloc_init(ISLoadURLBagOperation);
    v20 = +[ISOperationQueue mainQueue];
    v32 = mEMORY[0x277D69B38]2;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [v20 addOperations:v21 waitUntilFinished:1];

    if ([(ISOperation *)mEMORY[0x277D69B38]2 success])
    {
      uRLBag = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 URLBag];
      mEMORY[0x277D69B38]3 = [uRLBag valueForKey:@"use-apple-pay-classic"];

      if (objc_opt_respondsToSelector())
      {
        LOBYTE(v9) = [mEMORY[0x277D69B38]3 BOOLValue];
LABEL_59:

        goto LABEL_60;
      }
    }

    else
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedDaemonConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        LODWORD(v25) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v25) = shouldLog3;
      }

      oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v25 = v25;
      }

      else
      {
        v25 &= 2u;
      }

      if (v25)
      {
        v27 = objc_opt_class();
        v33 = 138543362;
        v34 = v27;
        v28 = v27;
        LODWORD(v31) = 12;
        v9 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_275BC3000, oSLogObject3, 16, "%{public}@: [PSD2] Failed to load URL bag", &v33, v31);

        if (!v9)
        {
          goto LABEL_59;
        }

        oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
        free(v9);
        SSFileLog();
      }
    }

    LOBYTE(v9) = 0;
    goto LABEL_59;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog4 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
  if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog4;
  }

  oSLogObject4 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_16;
  }

  v33 = 138543362;
  v34 = objc_opt_class();
  v7 = v34;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_275BC3000, oSLogObject4, 0, "%{public}@: [PSD2] Enabling Apple Pay Classic with default settings", &v33, 12);

  if (v8)
  {
    oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_16:
  }

  LOBYTE(v9) = 1;
LABEL_60:

  return v9;
}

+ (BOOL)shouldUseAutoEnrollment
{
  v35 = *MEMORY[0x277D85DE8];
  if (![MEMORY[0x277D69A80] deviceIsInternalBuild])
  {
    goto LABEL_42;
  }

  cardEnrollmentAutomatic = [MEMORY[0x277CEE468] cardEnrollmentAutomatic];
  if (!cardEnrollmentAutomatic)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v33 = 138543362;
      v34 = objc_opt_class();
      v18 = v34;
      v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [AutoEnrollment] Honoring auto-enrollment bag value", &v33, 12);

      if (!v19)
      {
LABEL_41:

        goto LABEL_42;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:4];
      free(v19);
      v30 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_41;
  }

  if (cardEnrollmentAutomatic == 2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
    if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog2;
    }

    oSLogObject2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v33 = 138543362;
      v34 = objc_opt_class();
      v13 = v34;
      v9 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%{public}@: [AutoEnrollment] Skipping auto-enrollment for defaults settings", &v33, 12);

      if (!v9)
      {
        goto LABEL_60;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
      free(v9);
      SSFileLog();
    }

    goto LABEL_59;
  }

  if (cardEnrollmentAutomatic != 1)
  {
LABEL_42:
    mEMORY[0x277D69B38]2 = objc_alloc_init(ISLoadURLBagOperation);
    v20 = +[ISOperationQueue mainQueue];
    v32 = mEMORY[0x277D69B38]2;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [v20 addOperations:v21 waitUntilFinished:1];

    if ([(ISOperation *)mEMORY[0x277D69B38]2 success])
    {
      oSLogObject2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 URLBag];
      v22 = [oSLogObject2 valueForKey:@"auto-enrollment-percentage"];
      if (objc_opt_respondsToSelector())
      {
        [v22 doubleValue];
      }

      v12OSLogObject = [oSLogObject2 valueForKey:@"auto-enrollment-session-duration", v30];

      if (objc_opt_respondsToSelector())
      {
        [v12OSLogObject integerValue];
      }

      goto LABEL_58;
    }

    oSLogObject2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!oSLogObject2)
    {
      oSLogObject2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [oSLogObject2 shouldLog];
    if ([oSLogObject2 shouldLogToDisk])
    {
      LODWORD(v25) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v25) = shouldLog3;
    }

    v12OSLogObject = [oSLogObject2 OSLogObject];
    if (os_log_type_enabled(v12OSLogObject, OS_LOG_TYPE_ERROR))
    {
      v25 = v25;
    }

    else
    {
      v25 &= 2u;
    }

    if (!v25)
    {
      goto LABEL_58;
    }

    v26 = objc_opt_class();
    v33 = 138543362;
    v34 = v26;
    v27 = v26;
    LODWORD(v31) = 12;
    v28 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_275BC3000, v12OSLogObject, 16, "%{public}@: [AutoEnrollment] Failed to load URL bag", &v33, v31);

    if (v28)
    {
      v12OSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:4];
      free(v28);
      SSFileLog();
LABEL_58:
    }

LABEL_59:

    LOBYTE(v9) = 0;
    goto LABEL_60;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog4 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
  if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog4;
  }

  oSLogObject3 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_16;
  }

  v33 = 138543362;
  v34 = objc_opt_class();
  v7 = v34;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%{public}@: [AutoEnrollment] Enabling auto-enrollment with defaults settings", &v33, 12);

  if (v8)
  {
    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_16:
  }

  LOBYTE(v9) = 1;
LABEL_60:

  return v9;
}

+ (BOOL)shouldUseExtendedEnrollment
{
  v35 = *MEMORY[0x277D85DE8];
  if (![MEMORY[0x277D69A80] deviceIsInternalBuild])
  {
    goto LABEL_43;
  }

  cardEnrollmentManual = [MEMORY[0x277CEE468] cardEnrollmentManual];
  if (!cardEnrollmentManual)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v33 = 138543362;
      v34 = objc_opt_class();
      v18 = v34;
      v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [ExtendedEnrollment] Honoring extended-enrollment bag value", &v33, 12);

      if (!v19)
      {
LABEL_42:

        goto LABEL_43;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:4];
      free(v19);
      v30 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_42;
  }

  if (cardEnrollmentManual == 2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
    if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog2;
    }

    oSLogObject2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v33 = 138543362;
      v34 = objc_opt_class();
      v13 = v34;
      v9 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%{public}@: [ExtendedEnrollment] Skipping extended-enrollment for default settings", &v33, 12);

      if (!v9)
      {
        goto LABEL_60;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
      free(v9);
      SSFileLog();
    }

    LOBYTE(v9) = 0;
    goto LABEL_60;
  }

  if (cardEnrollmentManual != 1)
  {
LABEL_43:
    mEMORY[0x277D69B38]2 = objc_alloc_init(ISLoadURLBagOperation);
    v20 = +[ISOperationQueue mainQueue];
    v32 = mEMORY[0x277D69B38]2;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [v20 addOperations:v21 waitUntilFinished:1];

    if ([(ISOperation *)mEMORY[0x277D69B38]2 success])
    {
      uRLBag = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 URLBag];
      mEMORY[0x277D69B38]3 = [uRLBag valueForKey:@"use-extended-enrollment"];

      if (objc_opt_respondsToSelector())
      {
        LOBYTE(v9) = [mEMORY[0x277D69B38]3 BOOLValue];
LABEL_59:

        goto LABEL_60;
      }
    }

    else
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedDaemonConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        LODWORD(v25) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v25) = shouldLog3;
      }

      oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v25 = v25;
      }

      else
      {
        v25 &= 2u;
      }

      if (v25)
      {
        v27 = objc_opt_class();
        v33 = 138543362;
        v34 = v27;
        v28 = v27;
        LODWORD(v31) = 12;
        v9 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_275BC3000, oSLogObject3, 16, "%{public}@: [ExtendedEnrollment] Failed to load URL bag", &v33, v31);

        if (!v9)
        {
          goto LABEL_59;
        }

        oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
        free(v9);
        SSFileLog();
      }
    }

    LOBYTE(v9) = 0;
    goto LABEL_59;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog4 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
  if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog4;
  }

  oSLogObject4 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_16;
  }

  v33 = 138543362;
  v34 = objc_opt_class();
  v7 = v34;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_275BC3000, oSLogObject4, 0, "%{public}@: [ExtendedEnrollment] Enabling extended-enrollment with default settings", &v33, 12);

  if (v8)
  {
    oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_16:
  }

  LOBYTE(v9) = 1;
LABEL_60:

  return v9;
}

+ (BOOL)shouldUseUpsellEnrollment
{
  v35 = *MEMORY[0x277D85DE8];
  if (![MEMORY[0x277D69A80] deviceIsInternalBuild])
  {
    goto LABEL_43;
  }

  cardEnrollmentUpsell = [MEMORY[0x277CEE468] cardEnrollmentUpsell];
  if (!cardEnrollmentUpsell)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v33 = 138543362;
      v34 = objc_opt_class();
      v18 = v34;
      v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [UpsellEnrollment] Honoring upsell-enrollment bag value", &v33, 12);

      if (!v19)
      {
LABEL_42:

        goto LABEL_43;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:4];
      free(v19);
      v30 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_42;
  }

  if (cardEnrollmentUpsell == 2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
    if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog2;
    }

    oSLogObject2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v33 = 138543362;
      v34 = objc_opt_class();
      v13 = v34;
      v9 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%{public}@: [UpsellEnrollment] Skipping upsell-enrollment for default settings", &v33, 12);

      if (!v9)
      {
        goto LABEL_60;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
      free(v9);
      SSFileLog();
    }

    LOBYTE(v9) = 0;
    goto LABEL_60;
  }

  if (cardEnrollmentUpsell != 1)
  {
LABEL_43:
    mEMORY[0x277D69B38]2 = objc_alloc_init(ISLoadURLBagOperation);
    v20 = +[ISOperationQueue mainQueue];
    v32 = mEMORY[0x277D69B38]2;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [v20 addOperations:v21 waitUntilFinished:1];

    if ([(ISOperation *)mEMORY[0x277D69B38]2 success])
    {
      uRLBag = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 URLBag];
      mEMORY[0x277D69B38]3 = [uRLBag valueForKey:@"use-enrollment-upsell"];

      if (objc_opt_respondsToSelector())
      {
        LOBYTE(v9) = [mEMORY[0x277D69B38]3 BOOLValue];
LABEL_59:

        goto LABEL_60;
      }
    }

    else
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedDaemonConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        LODWORD(v25) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v25) = shouldLog3;
      }

      oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v25 = v25;
      }

      else
      {
        v25 &= 2u;
      }

      if (v25)
      {
        v27 = objc_opt_class();
        v33 = 138543362;
        v34 = v27;
        v28 = v27;
        LODWORD(v31) = 12;
        v9 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_275BC3000, oSLogObject3, 16, "%{public}@: [UpsellEnrollment] Failed to load URL bag", &v33, v31);

        if (!v9)
        {
          goto LABEL_59;
        }

        oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
        free(v9);
        SSFileLog();
      }
    }

    LOBYTE(v9) = 0;
    goto LABEL_59;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog4 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
  if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog4;
  }

  oSLogObject4 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_16;
  }

  v33 = 138543362;
  v34 = objc_opt_class();
  v7 = v34;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_275BC3000, oSLogObject4, 0, "%{public}@: [UpsellEnrollment] Enabling upsell-enrollment with default settings", &v33, 12);

  if (v8)
  {
    oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_16:
  }

  LOBYTE(v9) = 1;
LABEL_60:

  return v9;
}

+ (BOOL)shouldUseX509
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = MGGetBoolAnswer();
  hardwarePlatform = [MEMORY[0x277CEE470] hardwarePlatform];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = objc_opt_class();
  v9 = MEMORY[0x277CCABB0];
  v10 = v8;
  v11 = [v9 numberWithBool:v2];
  v24 = 138543874;
  v25 = v8;
  v26 = 2114;
  v27 = hardwarePlatform;
  v28 = 2114;
  v29 = v11;
  v12 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: X509 eligibility: Does %{public}@ hardware has SiKA capability: %{public}@", &v24, 32);

  if (v12)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:4];
    free(v12);
    v22 = oSLogObject;
    SSFileLog();
LABEL_12:
  }

  if (v2 && ([hardwarePlatform isEqualToString:@"t8015"] & 1) == 0)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      v24 = 138543362;
      v25 = v18;
      v19 = v18;
      LODWORD(v23) = 12;
      v20 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%{public}@: X509 eligibility: Turning on X509 eligibility", &v24, v23);

      if (!v20)
      {
LABEL_28:

        v13 = 1;
        goto LABEL_29;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog();
    }

    goto LABEL_28;
  }

  v13 = 0;
LABEL_29:

  return v13;
}

- (id)signData:(id)data context:(id)context error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__0;
  v48 = __Block_byref_object_dispose__0;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  if (SSIsDaemon())
  {
    nSClassFromString(&cfstr_Daemonbiometri_0.isa) = [NSClassFromString(&cfstr_Daemonbiometri_0.isa) sharedInstance];
    v11 = (v39 + 5);
    obj = v39[5];
    v12 = [nSClassFromString(&cfstr_Daemonbiometri_0.isa) signData_:dataCopy context:contextCopy error:&obj];
    objc_storeStrong(v11, obj);
    v13 = v45[5];
    v45[5] = v12;
    goto LABEL_17;
  }

  v14 = dispatch_semaphore_create(0);
  v13 = objc_alloc_init(MEMORY[0x277D69B20]);
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __43__ISBiometricStore_signData_context_error___block_invoke;
  v31 = &unk_27A6707C8;
  v35 = &v38;
  selfCopy = self;
  v33 = contextCopy;
  v36 = &v44;
  nSClassFromString(&cfstr_Daemonbiometri_0.isa) = v14;
  v34 = nSClassFromString(&cfstr_Daemonbiometri_0.isa);
  [v13 signData:dataCopy context:v33 completionBlock:&v28];
  v15 = dispatch_time(0, 180000000000);
  if (dispatch_semaphore_wait(nSClassFromString(&cfstr_Daemonbiometri_0.isa), v15))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v17) = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v20 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v17) = v17 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v21 = objc_opt_class();
      v50 = 138543362;
      v51 = v21;
      v22 = v21;
      v23 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_275BC3000, v20, 16, "%{public}@: Data signing XPC failed for timeout", &v50, 12, v28, v29, v30, v31, selfCopy, v33);

      if (!v23)
      {
LABEL_15:

        v24 = SSError();
        v25 = v39[5];
        v39[5] = v24;

        goto LABEL_16;
      }

      v20 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:4];
      free(v23);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:

LABEL_17:
  if (error)
  {
    *error = v39[5];
  }

  v26 = v45[5];
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);

  return v26;
}

void __43__ISBiometricStore_signData_context_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v8 = [MEMORY[0x277D69B38] sharedConfig];
    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = v9 | 2;
    }

    else
    {
      LODWORD(v10) = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (!v10)
    {
      goto LABEL_12;
    }

    v12 = objc_opt_class();
    v13 = *(a1 + 40);
    v14 = v12;
    v15 = [v13 accountIdentifier];
    *v22 = 138412802;
    *&v22[4] = v12;
    *&v22[12] = 2112;
    *&v22[14] = v15;
    *&v22[22] = 2114;
    v16 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, v11, 16, "%@{public}: Data signing XPC failed for DSID: %@, error: %{public}@", v22, 32, *v22, *&v22[8], v7);
  }

  else
  {
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      goto LABEL_16;
    }

    v8 = [MEMORY[0x277D69B38] sharedConfig];
    v18 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v19) = v18 | 2;
    }

    else
    {
      LODWORD(v19) = v18;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (!v19)
    {
      goto LABEL_12;
    }

    v20 = objc_opt_class();
    v21 = *(a1 + 40);
    v14 = v20;
    v15 = [v21 accountIdentifier];
    *v22 = 138543618;
    *&v22[4] = v20;
    *&v22[12] = 2112;
    *&v22[14] = v15;
    v16 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_275BC3000, v11, 16, "%{public}@: Data signing XPC failed for DSID: %@", v22, 22, *v22, *&v22[8], v23);
  }

  v17 = v16;

  if (v17)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:4];
    free(v17);
    SSFileLog();
LABEL_12:
  }

LABEL_16:
  dispatch_semaphore_signal(*(a1 + 48));
}

- (id)x509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose regenerateCerts:(BOOL)certs error:(id *)error
{
  certsCopy = certs;
  v53 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__0;
  v49 = __Block_byref_object_dispose__0;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__0;
  v43 = __Block_byref_object_dispose__0;
  v44 = 0;
  if (SSIsDaemon())
  {
    nSClassFromString(&cfstr_Daemonbiometri_0.isa) = [NSClassFromString(&cfstr_Daemonbiometri_0.isa) sharedInstance];
    v12 = (v40 + 5);
    obj = v40[5];
    v13 = [nSClassFromString(&cfstr_Daemonbiometri_0.isa) x509CertChainDataForAccountIdentifier_:identifierCopy purpose:purpose regenerateCerts:certsCopy error:&obj];
    objc_storeStrong(v12, obj);
    v14 = v46[5];
    v46[5] = v13;
    goto LABEL_17;
  }

  v15 = dispatch_semaphore_create(0);
  v14 = objc_alloc_init(MEMORY[0x277D69B20]);
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __88__ISBiometricStore_x509CertChainDataForAccountIdentifier_purpose_regenerateCerts_error___block_invoke;
  v32 = &unk_27A6707F0;
  v36 = &v39;
  selfCopy = self;
  v34 = identifierCopy;
  v37 = &v45;
  nSClassFromString(&cfstr_Daemonbiometri_0.isa) = v15;
  v35 = nSClassFromString(&cfstr_Daemonbiometri_0.isa);
  [v14 x509CertChainDataForAccountIdentifier:v34 purpose:purpose regenerateCerts:certsCopy completionBlock:&v29];
  v16 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(nSClassFromString(&cfstr_Daemonbiometri_0.isa), v16))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v18) = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v21 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v18) = v18 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v22 = objc_opt_class();
      v51 = 138543362;
      v52 = v22;
      v23 = v22;
      v24 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_275BC3000, v21, 16, "%{public}@: Query x509 cert XPC failed for timeout", &v51, 12, v29, v30, v31, v32, selfCopy, v34);

      if (!v24)
      {
LABEL_15:

        v25 = SSError();
        v26 = v40[5];
        v40[5] = v25;

        goto LABEL_16;
      }

      v21 = [MEMORY[0x277CCACA8] stringWithCString:v24 encoding:4];
      free(v24);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:

LABEL_17:
  if (error)
  {
    *error = v40[5];
  }

  v27 = v46[5];
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);

  return v27;
}

void __88__ISBiometricStore_x509CertChainDataForAccountIdentifier_purpose_regenerateCerts_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = v9 | 2;
    }

    else
    {
      LODWORD(v10) = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (!v10)
    {
      goto LABEL_14;
    }

    v12 = objc_opt_class();
    v13 = *(a1 + 40);
    *v21 = 138543874;
    *&v21[4] = v12;
    *&v21[12] = 2112;
    *&v21[14] = v13;
    *&v21[22] = 2114;
    v14 = v12;
    v15 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, v11, 16, "%{public}@: Query x509 cert XPC failed for DSID: %@, error: %{public}@", v21, 32, *v21, *&v21[8], v7);
  }

  else
  {
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      goto LABEL_18;
    }

    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v17 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v18) = v17 | 2;
    }

    else
    {
      LODWORD(v18) = v17;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (!v18)
    {
      goto LABEL_14;
    }

    v19 = objc_opt_class();
    v20 = *(a1 + 40);
    *v21 = 138543618;
    *&v21[4] = v19;
    *&v21[12] = 2112;
    *&v21[14] = v20;
    v14 = v19;
    v15 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_275BC3000, v11, 16, "%{public}@: Create x509 cert XPC failed for DSID: %@", v21, 22, *v21, *&v21[8], v22);
  }

  v16 = v15;

  if (v16)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:4];
    free(v16);
    SSFileLog();
LABEL_14:
  }

LABEL_18:
  dispatch_semaphore_signal(*(a1 + 48));
}

@end