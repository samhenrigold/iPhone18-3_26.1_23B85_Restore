@interface DaemonBiometricKeychain
+ (id)sharedInstance;
+ (void)_handleMessage:(id)message connection:(id)connection withReplyBlock:(id)block;
+ (void)createAttestationDataWithMessage:(id)message connection:(id)connection;
+ (void)createX509CertChainDataWithMessage:(id)message connection:(id)connection;
+ (void)deleteKeychainTokensWithMessage:(id)message connection:(id)connection;
+ (void)getPublicKeyDataWithMessage:(id)message connection:(id)connection;
+ (void)observeXPCServer:(id)server;
+ (void)signDataUsingContextWithMessage:(id)message connection:(id)connection;
+ (void)signDataWithMessage:(id)message connection:(id)connection;
+ (void)x509CertChainDataWithMessage:(id)message connection:(id)connection;
- (BOOL)_deleteKeychainTokensForAccountIdentifier:(id)identifier error:(id *)error;
- (BOOL)_deleteKeychainTokensForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (BOOL)_generateKeychainTokensForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (BOOL)_isDeviceUnlocked;
- (BOOL)deleteKeychainTokensForAccountIdentifier_:(id)identifier_ error:(id *)error;
- (DaemonBiometricKeychain)init;
- (__SecAccessControl)copyAccessControlListForKey:(__SecKey *)key error:(id *)error;
- (__SecAccessControl)copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:(id)context error:(id *)error;
- (id)_amsCertificateLabelForPurpose:(int64_t)purpose;
- (id)_amsKeychainLabelForPurpose:(int64_t)purpose;
- (id)_constraintsForExtendedActions;
- (id)_constraintsForPurchase;
- (id)_copyPublicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (id)_createAttestationDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (id)_createX509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (id)_presentPaymentSheetForChallenge:(id)challenge authContext:(id)context biometricContext:(id)biometricContext touchIDContext:(id)dContext touchIDOptions:(id)options accessControlRef:(__SecAccessControl *)ref passwordToken:(id *)token paymentTokenData:(id *)self0 fpanID:(id *)self1 error:(id *)self2;
- (id)_publicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose regenerateKeys:(BOOL)keys error:(id *)error;
- (id)_queryForPrivateKeyWithLabel:(id)label prompt:(id)prompt useTokenID:(BOOL)d;
- (id)_regenerateKeychainTokensForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (id)_signData:(id)data context:(id)context error:(id *)error;
- (id)createAttestationDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose error:(id *)error;
- (id)createX509CertChainDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose error:(id *)error;
- (id)publicKeyDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose regenerateKeys:(BOOL)keys error:(id *)error;
- (id)signDataWithKeychain:(id)keychain accountIdentifier:(id)identifier purpose:(int64_t)purpose localAuthContext:(id)context localAuthOptions:(id)options error:(id *)error;
- (id)signData_:(id)data_ context:(id)context error:(id *)error;
- (id)x509CertChainDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose regenerateCerts:(BOOL)certs error:(id *)error;
@end

@implementation DaemonBiometricKeychain

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100153E5C;
  block[3] = &unk_100327170;
  block[4] = self;
  if (qword_100383F48 != -1)
  {
    dispatch_once(&qword_100383F48, block);
  }

  v2 = qword_100383F40;

  return v2;
}

- (DaemonBiometricKeychain)init
{
  v8.receiver = self;
  v8.super_class = DaemonBiometricKeychain;
  v2 = [(DaemonBiometricKeychain *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunesstored.DaemonBiometricKeychain", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = dispatch_queue_create("com.apple.itunesstored.DaemonBiometricKeychain.X509", 0);
    dispatchQueueX509 = v2->_dispatchQueueX509;
    v2->_dispatchQueueX509 = v5;
  }

  return v2;
}

- (id)createAttestationDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose error:(id *)error
{
  identifier_Copy = identifier_;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_1001542B0;
  v44 = sub_1001542C0;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_1001542B0;
  v38 = sub_1001542C0;
  v39 = 0;
  v9 = dispatch_semaphore_create(0);
  dispatchQueue = self->_dispatchQueue;
  block = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1001542C8;
  v27 = &unk_100329F08;
  v31 = &v40;
  selfCopy = self;
  v11 = identifier_Copy;
  v32 = &v34;
  purposeCopy = purpose;
  v29 = v11;
  v12 = v9;
  v30 = v12;
  dispatch_async(dispatchQueue, &block);
  v13 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v12, v13);
  if (!v41[5] && !v35[5])
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v15) = [v14 shouldLog];
    shouldLogToDisk = [v14 shouldLogToDisk];
    oSLogObject = [v14 OSLogObject];
    v18 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v15) = v15 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      v46 = 138543618;
      v47 = v19;
      v48 = 2112;
      v49 = v11;
      v20 = v19;
      v21 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v18, 0, "%{public}@: Create attestation data timed out for DSID: %@", &v46, 22, block, v25, v26, v27, selfCopy, v29);

      if (!v21)
      {
LABEL_14:

        goto LABEL_15;
      }

      v18 = [NSString stringWithCString:v21 encoding:4];
      free(v21);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  if (error)
  {
    *error = v35[5];
  }

  v22 = v41[5];

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  return v22;
}

- (id)createX509CertChainDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose error:(id *)error
{
  identifier_Copy = identifier_;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_1001542B0;
  v45 = sub_1001542C0;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1001542B0;
  v39 = sub_1001542C0;
  v40 = 0;
  v9 = dispatch_semaphore_create(0);
  dispatchQueue = self->_dispatchQueue;
  block = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100154A80;
  v28 = &unk_100329F08;
  v32 = &v41;
  selfCopy = self;
  v11 = identifier_Copy;
  v33 = &v35;
  purposeCopy = purpose;
  v30 = v11;
  v12 = v9;
  v31 = v12;
  dispatch_async(dispatchQueue, &block);
  v13 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v12, v13))
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v15) = [v14 shouldLog];
    shouldLogToDisk = [v14 shouldLogToDisk];
    oSLogObject = [v14 OSLogObject];
    v18 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v15) = v15 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
      v20 = [NSNumber numberWithInteger:purpose];
      v47 = 138543874;
      v48 = v19;
      v49 = 2112;
      v50 = v11;
      v51 = 2114;
      v52 = v20;
      v21 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v18, 16, "%{public}@: Create X509 cert chain data timed out for DSID: %@, purpose: %{public}@", &v47, 32, block, v26, v27, v28, selfCopy, v30);

      if (!v21)
      {
LABEL_13:

        goto LABEL_14;
      }

      v18 = [NSString stringWithCString:v21 encoding:4];
      free(v21);
      v24 = v18;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  if (error)
  {
    *error = v36[5];
  }

  v22 = [NSArray arrayWithArray:v42[5], v24];

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v22;
}

- (BOOL)deleteKeychainTokensForAccountIdentifier_:(id)identifier_ error:(id *)error
{
  identifier_Copy = identifier_;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1001542B0;
  v23 = sub_1001542C0;
  v24 = 0;
  v7 = dispatch_semaphore_create(0);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100154C9C;
  block[3] = &unk_100329F30;
  v17 = &v25;
  block[4] = self;
  v9 = identifier_Copy;
  v15 = v9;
  v18 = &v19;
  v10 = v7;
  v16 = v10;
  dispatch_async(dispatchQueue, block);
  v11 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v10, v11);
  if (error)
  {
    *error = v20[5];
  }

  v12 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (id)publicKeyDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose regenerateKeys:(BOOL)keys error:(id *)error
{
  identifier_Copy = identifier_;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_1001542B0;
  v45 = sub_1001542C0;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1001542B0;
  v39 = sub_1001542C0;
  v40 = 0;
  v11 = dispatch_semaphore_create(0);
  v12 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100155100;
  block[3] = &unk_100329F58;
  v31 = &v41;
  block[4] = self;
  v13 = identifier_Copy;
  v32 = &v35;
  purposeCopy = purpose;
  keysCopy = keys;
  v29 = v13;
  v14 = v11;
  v30 = v14;
  dispatch_async(v12, block);

  v15 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v14, v15);
  if (!v42[5] && !v36[5])
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v17) = [v16 shouldLog];
    shouldLogToDisk = [v16 shouldLogToDisk];
    oSLogObject = [v16 OSLogObject];
    v20 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v17) = v17 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      v47 = 138543618;
      v48 = v21;
      v49 = 2112;
      v50 = v13;
      v22 = v21;
      v23 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v20, 0, "%{public}@: Public key data copy timed out for DSID: %@", &v47, 22);

      if (!v23)
      {
LABEL_14:

        v24 = SSError();
        v25 = v36[5];
        v36[5] = v24;

        goto LABEL_15;
      }

      v20 = [NSString stringWithCString:v23 encoding:4];
      free(v23);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  if (error)
  {
    *error = v36[5];
  }

  v26 = v42[5];

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v26;
}

- (id)signData_:(id)data_ context:(id)context error:(id *)error
{
  data_Copy = data_;
  contextCopy = context;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_1001542B0;
  v46 = sub_1001542C0;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1001542B0;
  v40 = sub_1001542C0;
  v41 = 0;
  v10 = dispatch_semaphore_create(0);
  v11 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_100155560;
  v29 = &unk_100329F80;
  v34 = &v42;
  selfCopy = self;
  v12 = data_Copy;
  v31 = v12;
  v13 = contextCopy;
  v32 = v13;
  v35 = &v36;
  v14 = v10;
  v33 = v14;
  dispatch_async(v11, &block);

  v15 = dispatch_time(0, 180000000000);
  dispatch_semaphore_wait(v14, v15);
  if (!v43[5] && !v37[5])
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v17) = [v16 shouldLog];
    shouldLogToDisk = [v16 shouldLogToDisk];
    oSLogObject = [v16 OSLogObject];
    v20 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v17) = v17 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      accountIdentifier = [v13 accountIdentifier];
      v48 = 138543618;
      v49 = v21;
      v50 = 2112;
      v51 = accountIdentifier;
      v23 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v20, 0, "%{public}@: Sign data timed out for DSID: %@", &v48, 22, block, v27, v28, v29, selfCopy, v31, v32);

      if (!v23)
      {
LABEL_14:

        goto LABEL_15;
      }

      v20 = [NSString stringWithCString:v23 encoding:4];
      free(v23);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  if (error)
  {
    *error = v37[5];
  }

  v24 = v43[5];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v24;
}

- (id)x509CertChainDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose regenerateCerts:(BOOL)certs error:(id *)error
{
  certsCopy = certs;
  identifier_Copy = identifier_;
  v77 = 0;
  result = 0;
  v8 = [ISBiometricStore keychainLabelForKeyWithAccountID:identifier_Copy purpose:purpose];
  if (!v8)
  {
    v39 = +[SSLogConfig sharedDaemonConfig];
    if (!v39)
    {
      v39 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v40) = [v39 shouldLog];
    if ([v39 shouldLogToDisk])
    {
      LODWORD(v40) = v40 | 2;
    }

    oSLogObject = [v39 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v40 = v40;
    }

    else
    {
      v40 &= 2u;
    }

    if (v40)
    {
      v42 = objc_opt_class();
      v43 = v42;
      v44 = [NSNumber numberWithInteger:purpose];
      v79 = 138412802;
      v80 = v42;
      v81 = 2112;
      v82 = identifier_Copy;
      v83 = 2112;
      v84 = v44;
      v45 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%@: Failed to generate label for DSID: %@, purpose: %@", &v79, 32);

      if (v45)
      {
        v46 = [NSString stringWithCString:v45 encoding:4];
        free(v45);
        v64 = v46;
        SSFileLog();
      }
    }

    else
    {
    }

    goto LABEL_43;
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [NSString stringWithFormat:@"%@-cert", v8];
  v11 = kSecAttrLabel;
  [v9 setObject:v10 forKeyedSubscript:kSecAttrLabel];

  v12 = kSecClassCertificate;
  v13 = kSecClass;
  [v9 setObject:kSecClassCertificate forKeyedSubscript:kSecClass];
  [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:?];
  v14 = SecItemCopyMatching(v9, &result);
  if (v14)
  {
    v15 = v14;
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v17) = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      LODWORD(v17) = v17 | 2;
    }

    oSLogObject2 = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v19 = v9;
      v20 = objc_opt_class();
      v69 = v8;
      v67 = v20;
      v21 = [NSNumber numberWithInteger:purpose];
      v22 = [NSNumber numberWithInt:v15];
      v79 = 138544130;
      v80 = v20;
      v9 = v19;
      v81 = 2112;
      v82 = identifier_Copy;
      v83 = 2114;
      v84 = v21;
      v85 = 2114;
      v86 = v22;
      v23 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%{public}@: Failed to find public key cert for DSID: %@, purpose: %{public}@, status: %{public}@", &v79, 42);

      v8 = v69;
      if (!v23)
      {
LABEL_14:

        v12 = kSecClassCertificate;
        v11 = kSecAttrLabel;
        v13 = kSecClass;
        goto LABEL_15;
      }

      oSLogObject2 = [NSString stringWithCString:v23 encoding:4];
      free(v23);
      v64 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  v24 = objc_alloc_init(NSMutableDictionary);
  [v24 setObject:ISBiometricsIntermediateCertKeychainLabel forKeyedSubscript:v11];
  [v24 setObject:v12 forKeyedSubscript:v13];
  [v24 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnRef];
  v25 = SecItemCopyMatching(v24, &v77);
  if (v25)
  {
    v26 = v25;
    v27 = +[SSLogConfig sharedDaemonConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v28) = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      LODWORD(v28) = v28 | 2;
    }

    oSLogObject3 = [v27 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v28 = v28;
    }

    else
    {
      v28 &= 2u;
    }

    if (v28)
    {
      v70 = v8;
      v72 = identifier_Copy;
      v30 = objc_opt_class();
      v68 = v30;
      v31 = [NSNumber numberWithInteger:purpose];
      v32 = [NSNumber numberWithInt:v26];
      v79 = 138544130;
      v80 = v30;
      v81 = 2112;
      v8 = v70;
      v82 = v72;
      v83 = 2114;
      v84 = v31;
      v85 = 2114;
      v86 = v32;
      LODWORD(v66) = 42;
      v33 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, oSLogObject3, 16, "%{public}@: Failed to find intermediate cert for DSID: %@, purpose: %{public}@, status: %{public}@", &v79, v66);

      identifier_Copy = v72;
      if (!v33)
      {
LABEL_27:

        goto LABEL_28;
      }

      oSLogObject3 = [NSString stringWithCString:v33 encoding:4];
      free(v33);
      v64 = oSLogObject3;
      SSFileLog();
    }

    goto LABEL_27;
  }

LABEL_28:

  if (result && v77)
  {
    v34 = objc_alloc_init(NSMutableArray);
    v35 = SecCertificateCopyData(result);
    [v34 addObject:v35];

    v36 = SecCertificateCopyData(v77);
    [v34 addObject:v36];

    v37 = [v34 copy];
    v38 = 0;
    goto LABEL_70;
  }

LABEL_43:
  if (!certsCopy)
  {
    v38 = 0;
    v37 = 0;
    goto LABEL_71;
  }

  v47 = +[SSLogConfig sharedDaemonConfig];
  if (!v47)
  {
    v47 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v48) = [v47 shouldLog];
  if ([v47 shouldLogToDisk])
  {
    LODWORD(v48) = v48 | 2;
  }

  oSLogObject4 = [v47 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v48 = v48;
  }

  else
  {
    v48 &= 2u;
  }

  if (!v48)
  {
    goto LABEL_54;
  }

  v50 = objc_opt_class();
  v51 = v50;
  v52 = [NSNumber numberWithInteger:purpose];
  v79 = 138543874;
  v80 = v50;
  v81 = 2112;
  v82 = identifier_Copy;
  v83 = 2114;
  v84 = v52;
  LODWORD(v66) = 32;
  v53 = _os_log_send_and_compose_impl(v48, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%{public}@: Failed to find X509 certs in Keychain, generating new X509 cert chain for DSID: %@, purpose: %{public}@", &v79, v66);

  if (v53)
  {
    oSLogObject4 = [NSString stringWithCString:v53 encoding:4];
    free(v53);
    v65 = oSLogObject4;
    SSFileLog();
LABEL_54:
  }

  v76 = 0;
  v37 = [(DaemonBiometricKeychain *)self createX509CertChainDataForAccountIdentifier_:identifier_Copy purpose:purpose error:&v76];
  v54 = v76;
  v38 = v54;
  if (!v37 || v54)
  {
    v34 = +[SSLogConfig sharedDaemonConfig];
    if (!v34)
    {
      v34 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v55) = [v34 shouldLog];
    if ([v34 shouldLogToDisk])
    {
      LODWORD(v55) = v55 | 2;
    }

    oSLogObject5 = [v34 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
    {
      v55 = v55;
    }

    else
    {
      v55 &= 2u;
    }

    if (v55)
    {
      v71 = v8;
      v57 = objc_opt_class();
      v58 = v57;
      v59 = [NSNumber numberWithInteger:purpose];
      v79 = 138544130;
      v80 = v57;
      v81 = 2112;
      v82 = identifier_Copy;
      v83 = 2114;
      v84 = v59;
      v85 = 2114;
      v86 = v38;
      LODWORD(v66) = 42;
      v60 = _os_log_send_and_compose_impl(v55, 0, 0, 0, &_mh_execute_header, oSLogObject5, 16, "%{public}@: Failed to create new X509 certs for DSID: %@, purpose: %{public}@, error: %{public}@", &v79, v66);

      if (!v60)
      {
        v8 = v71;
        goto LABEL_70;
      }

      oSLogObject5 = [NSString stringWithCString:v60 encoding:4];
      free(v60);
      SSFileLog();
      v8 = v71;
    }

LABEL_70:
  }

LABEL_71:
  if (error)
  {
    v61 = v38;
    *error = v38;
  }

  v62 = v37;

  return v62;
}

- (__SecAccessControl)copyAccessControlListForKey:(__SecKey *)key error:(id *)error
{
  v5 = SecKeyCopyAttributes(key);
  if (!v5)
  {
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      LODWORD(v20) = shouldLog | 2;
    }

    else
    {
      LODWORD(v20) = shouldLog;
    }

    oSLogObject = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v24 = 138543362;
      v25 = objc_opt_class();
      v22 = v25;
      v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Copy ACL for key failed to fetch key attributes", &v24, 12);

      if (!v23)
      {
        goto LABEL_33;
      }

      oSLogObject = [NSString stringWithCString:v23 encoding:4];
      free(v23);
      SSFileLog();
    }

LABEL_33:
    v10 = 0;
    if (!error)
    {
      return v10;
    }

    goto LABEL_19;
  }

  v6 = v5;
  Value = CFDictionaryGetValue(v5, kSecAttrAccessControl);
  if (Value)
  {
    v8 = Value;
    TypeID = SecAccessControlGetTypeID();
    if (TypeID == CFGetTypeID(v8))
    {
      v10 = CFRetain(v8);
      goto LABEL_18;
    }
  }

  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    LODWORD(v13) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v13) = shouldLog2;
  }

  oSLogObject2 = [v11 OSLogObject];
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
    goto LABEL_16;
  }

  v24 = 138543362;
  v25 = objc_opt_class();
  v15 = v25;
  v16 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%{public}@: Copy ACL for key failed to find ACL associated with key", &v24, 12);

  if (v16)
  {
    oSLogObject2 = [NSString stringWithCString:v16 encoding:4];
    free(v16);
    SSFileLog();
LABEL_16:
  }

  v10 = 0;
LABEL_18:
  CFRelease(v6);
  if (error)
  {
LABEL_19:
    *error = 0;
  }

  return v10;
}

- (__SecAccessControl)copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:(id)context error:(id *)error
{
  result = 0;
  contextCopy = context;
  accountIdentifier = [contextCopy accountIdentifier];
  isExtendedAction = [contextCopy isExtendedAction];

  v9 = isExtendedAction;
  v10 = [ISBiometricStore keychainLabelForAccountID:accountIdentifier purpose:isExtendedAction];
  v38[0] = kSecClass;
  v38[1] = kSecAttrKeyClass;
  v39[0] = kSecClassKey;
  v39[1] = kSecAttrKeyClassPrivate;
  v38[2] = kSecAttrLabel;
  v38[3] = kSecReturnRef;
  v39[2] = v10;
  v39[3] = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];
  v12 = SecItemCopyMatching(v11, &result);
  if (v12 == -25300)
  {
    v13 = [(__CFDictionary *)v11 mutableCopy];
    v14 = [(DaemonBiometricKeychain *)self _amsKeychainLabelForPurpose:v9];
    [v13 setObject:v14 forKeyedSubscript:kSecAttrLabel];

    v12 = SecItemCopyMatching(v13, &result);
  }

  if (v12)
  {
    v15 = SSError();
    v16 = [NSNumber numberWithInt:v12];
    v17 = SSErrorBySettingUserInfoValue();

    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      LODWORD(v20) = shouldLog | 2;
    }

    else
    {
      LODWORD(v20) = shouldLog;
    }

    oSLogObject = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (!v20)
    {
      goto LABEL_16;
    }

    v22 = objc_opt_class();
    v34 = 138543618;
    v35 = v22;
    v36 = 2114;
    v37 = v17;
    v23 = v22;
    v24 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Copy ACL for context failed to copy private key with error: %{public}@", &v34, 22);
LABEL_14:
    v25 = v24;

    if (!v25)
    {
LABEL_17:

      v26 = 0;
      goto LABEL_20;
    }

    oSLogObject = [NSString stringWithCString:v25 encoding:4];
    free(v25);
    SSFileLog();
LABEL_16:

    goto LABEL_17;
  }

  if (!result)
  {
    v17 = SSError();
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      LODWORD(v30) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v30) = shouldLog2;
    }

    oSLogObject = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v30 = v30;
    }

    else
    {
      v30 &= 2u;
    }

    if (!v30)
    {
      goto LABEL_16;
    }

    v31 = objc_opt_class();
    v34 = 138543362;
    v35 = v31;
    v23 = v31;
    v24 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Copy ACL for context failed to copy private key", &v34, 12);
    goto LABEL_14;
  }

  v32 = 0;
  v26 = [(DaemonBiometricKeychain *)self copyAccessControlListForKey:result error:&v32];
  v17 = v32;
LABEL_20:
  if (result)
  {
    CFRelease(result);
  }

  if (error)
  {
    v27 = v17;
    *error = v17;
  }

  return v26;
}

- (id)signDataWithKeychain:(id)keychain accountIdentifier:(id)identifier purpose:(int64_t)purpose localAuthContext:(id)context localAuthOptions:(id)options error:(id *)error
{
  keychainCopy = keychain;
  identifierCopy = identifier;
  contextCopy = context;
  optionsCopy = options;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_1001542B0;
  v66 = sub_1001542C0;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_1001542B0;
  v60 = sub_1001542C0;
  v61 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v17 = dispatch_semaphore_create(0);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100156C08;
  v42[3] = &unk_100329FA8;
  purposeCopy = purpose;
  v18 = identifierCopy;
  v43 = v18;
  v19 = contextCopy;
  v44 = v19;
  selfCopy = self;
  v48 = &v56;
  v20 = keychainCopy;
  v46 = v20;
  v49 = &v52;
  v50 = &v62;
  v21 = optionsCopy;
  v22 = v17;
  v47 = v22;
  [v19 evaluatePolicy:1 options:optionsCopy reply:v42];
  v23 = dispatch_time(0, 180000000000);
  dispatch_semaphore_wait(v22, v23);
  if (!v63[5] && !v57[5])
  {
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v24 shouldLog];
    shouldLogToDisk = [v24 shouldLogToDisk];
    v39 = v24;
    v40 = v21;
    oSLogObject = [v24 OSLogObject];
    v28 = oSLogObject;
    if (shouldLogToDisk)
    {
      v29 = shouldLog | 2;
    }

    else
    {
      v29 = shouldLog;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
    }

    else
    {
      v30 = v29 & 2;
    }

    v31 = v28;
    if (v30)
    {
      v32 = v39;
      v21 = v40;
      v38 = objc_opt_class();
      v33 = [NSNumber numberWithInteger:purpose];
      v68 = 138543874;
      v69 = v38;
      v70 = 2112;
      v71 = v18;
      v72 = 2114;
      v73 = v33;
      v34 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, v31, 0, "%{public}@: Sign data with keychain timed out for DSID: %@, purpose: %{public}@", &v68, 32);

      if (!v34)
      {
LABEL_16:

        goto LABEL_17;
      }

      v31 = [NSString stringWithCString:v34 encoding:4];
      free(v34);
      SSFileLog();
    }

    else
    {
      v32 = v39;
      v21 = v40;
    }

    goto LABEL_16;
  }

LABEL_17:
  v35 = v53[3];
  if (v35)
  {
    CFRelease(v35);
  }

  if (error)
  {
    *error = v57[5];
  }

  v36 = v63[5];

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);

  return v36;
}

+ (void)observeXPCServer:(id)server
{
  serverCopy = server;
  [serverCopy addObserver:self selector:"createAttestationDataWithMessage:connection:" forMessage:179];
  [serverCopy addObserver:self selector:"createX509CertChainDataWithMessage:connection:" forMessage:204];
  [serverCopy addObserver:self selector:"deleteKeychainTokensWithMessage:connection:" forMessage:185];
  [serverCopy addObserver:self selector:"getPublicKeyDataWithMessage:connection:" forMessage:180];
  [serverCopy addObserver:self selector:"signDataWithMessage:connection:" forMessage:181];
  [serverCopy addObserver:self selector:"signDataUsingContextWithMessage:connection:" forMessage:192];
  [serverCopy addObserver:self selector:"x509CertChainDataWithMessage:connection:" forMessage:205];
}

+ (void)createAttestationDataWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015864C;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

+ (void)createX509CertChainDataWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015883C;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

+ (void)deleteKeychainTokensWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100158A2C;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

+ (void)getPublicKeyDataWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100158BF8;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

+ (void)signDataWithMessage:(id)message connection:(id)connection
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100158E08;
  v8[3] = &unk_100329FF8;
  messageCopy = message;
  connectionCopy = connection;
  selfCopy = self;
  v6 = connectionCopy;
  v7 = messageCopy;
  [self _handleMessage:v7 connection:v6 withReplyBlock:v8];
}

+ (void)signDataUsingContextWithMessage:(id)message connection:(id)connection
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100159340;
  v8[3] = &unk_100329FF8;
  messageCopy = message;
  connectionCopy = connection;
  selfCopy = self;
  v6 = connectionCopy;
  v7 = messageCopy;
  [self _handleMessage:v7 connection:v6 withReplyBlock:v8];
}

+ (void)x509CertChainDataWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015982C;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

- (id)_amsCertificateLabelForPurpose:(int64_t)purpose
{
  v3 = @"com.apple.AppleMediaServices.cert.X509.client.extended";
  if (purpose != 1)
  {
    v3 = 0;
  }

  if (purpose)
  {
    return v3;
  }

  else
  {
    return @"com.apple.AppleMediaServices.cert.X509.client.primary";
  }
}

- (id)_amsKeychainLabelForPurpose:(int64_t)purpose
{
  v4 = +[ISBiometricStore shouldUseX509];
  if (purpose == 1)
  {
    v5 = @"com.apple.AppleMediaServices.extendedKey";
    v6 = @"com.apple.AppleMediaServices.cert.X509.extended";
  }

  else
  {
    if (purpose)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v5 = @"com.apple.AppleMediaServices.primaryKey";
    v6 = @"com.apple.AppleMediaServices.cert.X509.primary";
  }

  if (v4)
  {
    v5 = v6;
  }

  v7 = v5;
LABEL_9:

  return v7;
}

+ (void)_handleMessage:(id)message connection:(id)connection withReplyBlock:(id)block
{
  messageCopy = message;
  connectionCopy = connection;
  blockCopy = block;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100159B58;
  v15[3] = &unk_10032A020;
  v16 = connectionCopy;
  v17 = messageCopy;
  v18 = blockCopy;
  selfCopy = self;
  v12 = blockCopy;
  v13 = messageCopy;
  v14 = connectionCopy;
  dispatch_async(v11, v15);
}

- (BOOL)_isDeviceUnlocked
{
  v2 = ISWeakLinkedSymbolForString();
  v3 = v2(0);
  v4 = v3;
  if (v3)
  {
    v5 = v3 == 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return !v4 || v4 == 3;
  }

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

  v14 = 138543362;
  v15 = objc_opt_class();
  v10 = v15;
  v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Device is locked", &v14, 12);

  if (v11)
  {
    oSLogObject = [NSString stringWithCString:v11 encoding:4];
    free(v11);
    SSFileLog();
LABEL_16:
  }

  return !v4 || v4 == 3;
}

- (id)_constraintsForExtendedActions
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = objc_alloc_init(NSMutableDictionary);
  v13 = @"pbioc";
  v4 = objc_opt_new();
  v14 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v3 setObject:v5 forKeyedSubscript:@"cbio"];

  [v3 setObject:&off_10034BF10 forKeyedSubscript:@"pmuc"];
  v6 = objc_alloc_init(NSMutableDictionary);
  v11 = @"pbioc";
  v7 = objc_opt_new();
  v12 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v6 setObject:v8 forKeyedSubscript:@"cbio"];

  [v6 setObject:&off_10034BF10 forKeyedSubscript:@"pmuc"];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"oa"];
  [v2 setObject:v3 forKeyedSubscript:@"ock"];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"odel"];
  [v2 setObject:v6 forKeyedSubscript:@"osgn"];
  v9 = [NSDictionary dictionaryWithDictionary:v2];

  return v9;
}

- (id)_constraintsForPurchase
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setObject:&off_10034BF40 forKeyedSubscript:@"pkofn"];
  [v2 setObject:&off_10034BF40 forKeyedSubscript:@"pmuc"];
  v23[0] = @"pbioc";
  v3 = objc_opt_new();
  v23[1] = @"pbiot";
  v24[0] = v3;
  v24[1] = &off_10034BF40;
  v4 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v2 setObject:v4 forKeyedSubscript:@"cbio"];

  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"cbtn"];
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:&off_10034BF10 forKeyedSubscript:@"pkofn"];
  [v5 setObject:&off_10034BF40 forKeyedSubscript:@"pmuc"];
  v21[0] = @"pbioc";
  v6 = objc_opt_new();
  v21[1] = @"pbiot";
  v22[0] = v6;
  v22[1] = &off_10034BF10;
  v7 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v5 setObject:v7 forKeyedSubscript:@"cbio"];

  [v5 setObject:v2 forKeyedSubscript:@"ckon"];
  v8 = objc_alloc_init(NSMutableDictionary);
  [v8 setObject:&off_10034BF40 forKeyedSubscript:@"pkofn"];
  [v8 setObject:&off_10034BF40 forKeyedSubscript:@"pmuc"];
  v19[0] = @"pbioc";
  v9 = objc_opt_new();
  v19[1] = @"pbiot";
  v20[0] = v9;
  v20[1] = &off_10034BF40;
  v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v8 setObject:v10 forKeyedSubscript:@"cbio"];

  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"cbtn"];
  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setObject:&off_10034BF10 forKeyedSubscript:@"pkofn"];
  [v11 setObject:&off_10034BF10 forKeyedSubscript:@"pmoc"];
  [v11 setObject:&off_10034BF40 forKeyedSubscript:@"pmuc"];
  v17[0] = @"pbioc";
  v12 = objc_opt_new();
  v17[1] = @"pbiot";
  v18[0] = v12;
  v18[1] = &off_10034BF10;
  v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v11 setObject:v13 forKeyedSubscript:@"cbio"];

  [v11 setObject:v8 forKeyedSubscript:@"ckon"];
  v14 = objc_alloc_init(NSMutableDictionary);
  [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"oa"];
  [v14 setObject:v5 forKeyedSubscript:@"ock"];
  [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"odel"];
  [v14 setObject:v11 forKeyedSubscript:@"osgn"];
  v15 = [NSDictionary dictionaryWithDictionary:v14];

  return v15;
}

- (id)_copyPublicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  identifierCopy = identifier;
  result = 0;
  cf = 0;
  error = 0;
  [NSString stringWithFormat:@"%@", identifierCopy];
  v136 = v135 = identifierCopy;
  purposeCopy = purpose;
  v8 = [ISBiometricStore keychainLabelForCertWithAccountID:identifierCopy purpose:purpose];
  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setObject:v8 forKeyedSubscript:kSecAttrLabel];
  [v9 setObject:kSecClassCertificate forKeyedSubscript:kSecClass];
  [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnRef];
  v10 = SecItemCopyMatching(v9, &result);
  if (v10 == -25300 || (v11 = v10, (v12 = result) == 0))
  {
    v13 = [(DaemonBiometricKeychain *)self _amsCertificateLabelForPurpose:purpose];

    [v9 setObject:v13 forKeyedSubscript:kSecAttrLabel];
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v15) = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      LODWORD(v15) = v15 | 2;
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      v141 = 138543618;
      v142 = v17;
      v143 = 2114;
      v144 = v13;
      v18 = v17;
      v19 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Attempting to look up AMS public key cert using label: %{public}@", &v141, 22);

      if (!v19)
      {
LABEL_15:

        v11 = SecItemCopyMatching(v9, &result);
        v12 = result;
        goto LABEL_16;
      }

      oSLogObject = [NSString stringWithCString:v19 encoding:4];
      free(v19);
      v124 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_15;
  }

  v13 = v8;
LABEL_16:
  selfCopy = self;
  v133 = v9;
  if (v11 == -25300 || !v12)
  {
    v38 = +[SSLogConfig sharedDaemonConfig];
    if (!v38)
    {
      v38 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v38 shouldLog];
    if ([v38 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject2 = [v38 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v41 = shouldLog;
    }

    else
    {
      v41 = shouldLog & 2;
    }

    if (v41)
    {
      v42 = objc_opt_class();
      v43 = v42;
      v44 = SSHashIfNeeded();
      v45 = [NSNumber numberWithInteger:purposeCopy];
      v141 = 138543874;
      v142 = v42;
      v143 = 2112;
      v144 = v44;
      v145 = 2114;
      errorCopy2 = v45;
      LODWORD(v127) = 32;
      v46 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Failed to find X509 cert for public key for DSID: %@, purpose: %{public}@", &v141, v127);

      self = selfCopy;
      if (!v46)
      {
        goto LABEL_41;
      }

      oSLogObject2 = [NSString stringWithCString:v46 encoding:4];
      free(v46);
      v125 = oSLogObject2;
      SSFileLog();
    }

LABEL_41:
    v47 = [ISBiometricStore keychainLabelForAccountID:identifierCopy purpose:purposeCopy];

    v23 = [(DaemonBiometricKeychain *)self _queryForPrivateKeyWithLabel:v47 prompt:0];
    v48 = +[SSLogConfig sharedDaemonConfig];
    if (!v48)
    {
      v48 = +[SSLogConfig sharedConfig];
    }

    v130 = v47;
    shouldLog2 = [v48 shouldLog];
    if ([v48 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject3 = [v48 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v51 = shouldLog2;
    }

    else
    {
      v51 = shouldLog2 & 2;
    }

    if (v51)
    {
      v52 = objc_opt_class();
      v53 = v52;
      v54 = SSHashIfNeeded();
      v55 = [NSNumber numberWithInteger:purposeCopy];
      v141 = 138543874;
      v142 = v52;
      v143 = 2112;
      v144 = v54;
      v145 = 2114;
      errorCopy2 = v55;
      LODWORD(v127) = 32;
      v56 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%{public}@: Public key data query as X509 fallback [BEGIN] for DSID: %@, purpose: %{public}@", &v141, v127);

      if (!v56)
      {
        goto LABEL_52;
      }

      oSLogObject3 = [NSString stringWithCString:v56 encoding:4];
      free(v56);
      v126 = oSLogObject3;
      SSFileLog();
    }

LABEL_52:
    v57 = SecItemCopyMatching(v23, &cf);
    v58 = +[SSLogConfig sharedDaemonConfig];
    if (!v58)
    {
      v58 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v58 shouldLog];
    if ([v58 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject4 = [v58 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v61 = shouldLog3;
    }

    else
    {
      v61 = shouldLog3 & 2;
    }

    v132 = v23;
    v62 = selfCopy;
    if (v61)
    {
      v63 = objc_opt_class();
      v64 = v63;
      v65 = SSHashIfNeeded();
      v66 = [NSNumber numberWithInteger:purposeCopy];
      v141 = 138543874;
      v142 = v63;
      v143 = 2112;
      v144 = v65;
      v145 = 2114;
      errorCopy2 = v66;
      LODWORD(v127) = 32;
      v67 = _os_log_send_and_compose_impl(v61, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%{public}@: Public key data query as X509 fallback [COMPLETE] for DSID: %@, purpose: %{public}@", &v141, v127);

      v23 = v132;
      v62 = selfCopy;

      v68 = kSecAttrLabel;
      if (!v67)
      {
LABEL_64:

        if (v57 != -25300 && cf)
        {
          if (v57)
          {
            goto LABEL_67;
          }

          goto LABEL_89;
        }

        v124 = [(DaemonBiometricKeychain *)v62 _amsKeychainLabelForPurpose:purposeCopy, v124];
        v82 = [(__CFDictionary *)v23 mutableCopy];
        [v82 setObject:v124 forKeyedSubscript:v68];
        v83 = +[SSLogConfig sharedDaemonConfig];
        if (!v83)
        {
          v83 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v84) = [v83 shouldLog];
        if ([v83 shouldLogToDisk])
        {
          LODWORD(v84) = v84 | 2;
        }

        oSLogObject5 = [v83 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
        {
          v84 = v84;
        }

        else
        {
          v84 &= 2u;
        }

        if (v84)
        {
          v86 = objc_opt_class();
          v141 = 138543618;
          v142 = v86;
          v143 = 2114;
          v144 = v124;
          v87 = v86;
          LODWORD(v127) = 22;
          v88 = _os_log_send_and_compose_impl(v84, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%{public}@: Attempting to look up AMS public key using label: %{public}@", &v141, v127);

          if (!v88)
          {
            goto LABEL_88;
          }

          oSLogObject5 = [NSString stringWithCString:v88 encoding:4];
          free(v88);
          v124 = oSLogObject5;
          SSFileLog();
        }

LABEL_88:
        v57 = SecItemCopyMatching(v82, &cf);

        if (v57)
        {
LABEL_67:
          v69 = SSError();
          v70 = [NSNumber numberWithInt:v57];
          errorCopy = SSErrorBySettingUserInfoValue();

          oSLogObject7 = +[SSLogConfig sharedDaemonConfig];
          if (!oSLogObject7)
          {
            oSLogObject7 = +[SSLogConfig sharedConfig];
          }

          shouldLog4 = [oSLogObject7 shouldLog];
          if ([oSLogObject7 shouldLogToDisk])
          {
            v72 = shouldLog4 | 2;
          }

          else
          {
            v72 = shouldLog4;
          }

          oSLogObject6 = [oSLogObject7 OSLogObject];
          if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
          {
            v74 = v72;
          }

          else
          {
            v74 = v72 & 2;
          }

          if (v74)
          {
            v75 = objc_opt_class();
            v76 = v75;
            v77 = SSHashIfNeeded();
            v78 = [NSNumber numberWithInteger:purposeCopy];
            v79 = [NSNumber numberWithInt:v57];
            v141 = 138544130;
            v142 = v75;
            v143 = 2112;
            v144 = v77;
            v145 = 2114;
            errorCopy2 = v78;
            v147 = 2114;
            v148 = v79;
            LODWORD(v127) = 42;
            v80 = _os_log_send_and_compose_impl(v74, 0, 0, 0, &_mh_execute_header, oSLogObject6, 0, "%{public}@: Key copy as X509 fallback failed for DSID: %@, purpose: %{public}@, status: %{public}@", &v141, v127);

LABEL_151:
            if (!v80)
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              LOBYTE(v36) = 1;
              v23 = v132;
              goto LABEL_171;
            }

            oSLogObject6 = [NSString stringWithCString:v80 encoding:4];
            free(v80);
            SSFileLog();
            v23 = v132;
          }

LABEL_153:
          v13 = v130;

          v33 = 0;
          v34 = 0;
          goto LABEL_154;
        }

LABEL_89:
        if (cf)
        {
          v89 = SecKeyCopyPublicKey(cf);
          if (v89)
          {
            v33 = v89;

            goto LABEL_94;
          }

          errorCopy = SSError();
          oSLogObject7 = +[SSLogConfig sharedDaemonConfig];
          if (!oSLogObject7)
          {
            oSLogObject7 = +[SSLogConfig sharedConfig];
          }

          shouldLog5 = [oSLogObject7 shouldLog];
          if ([oSLogObject7 shouldLogToDisk])
          {
            v116 = shouldLog5 | 2;
          }

          else
          {
            v116 = shouldLog5;
          }

          oSLogObject6 = [oSLogObject7 OSLogObject];
          if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
          {
            v117 = v116;
          }

          else
          {
            v117 = v116 & 2;
          }

          if (!v117)
          {
            goto LABEL_153;
          }

          v118 = objc_opt_class();
          v104 = v118;
          v105 = SSHashIfNeeded();
          v106 = [NSNumber numberWithInteger:purposeCopy];
          v141 = 138543874;
          v142 = v118;
          v143 = 2112;
          v144 = v105;
          v145 = 2114;
          errorCopy2 = v106;
          LODWORD(v127) = 32;
          v107 = _os_log_send_and_compose_impl(v117, 0, 0, 0, &_mh_execute_header, oSLogObject6, 0, "%{public}@: Public key copy as X509 fallback failed with no public key for DSID: %@, purpose: %{public}@", &v141, v127);
        }

        else
        {
          errorCopy = SSError();
          oSLogObject7 = +[SSLogConfig sharedDaemonConfig];
          if (!oSLogObject7)
          {
            oSLogObject7 = +[SSLogConfig sharedConfig];
          }

          shouldLog6 = [oSLogObject7 shouldLog];
          if ([oSLogObject7 shouldLogToDisk])
          {
            v101 = shouldLog6 | 2;
          }

          else
          {
            v101 = shouldLog6;
          }

          oSLogObject6 = [oSLogObject7 OSLogObject];
          if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
          {
            v102 = v101;
          }

          else
          {
            v102 = v101 & 2;
          }

          if (!v102)
          {
            goto LABEL_153;
          }

          v103 = objc_opt_class();
          v104 = v103;
          v105 = SSHashIfNeeded();
          v106 = [NSNumber numberWithInteger:purposeCopy];
          v141 = 138543874;
          v142 = v103;
          v143 = 2112;
          v144 = v105;
          v145 = 2114;
          errorCopy2 = v106;
          LODWORD(v127) = 32;
          v107 = _os_log_send_and_compose_impl(v102, 0, 0, 0, &_mh_execute_header, oSLogObject6, 0, "%{public}@: Key copy as X509 fallback failed with bad query for DSID: %@, purpose: %{public}@", &v141, v127);
        }

        v80 = v107;

        goto LABEL_151;
      }

      oSLogObject4 = [NSString stringWithCString:v67 encoding:4];
      free(v67);
      v124 = oSLogObject4;
      SSFileLog();
    }

    else
    {
      v68 = kSecAttrLabel;
    }

    goto LABEL_64;
  }

  if (v11)
  {
    v21 = SSError();
    v22 = [NSNumber numberWithInt:v11];
    v128 = SSErrorBySettingUserInfoValue();

    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    shouldLog7 = [(__CFDictionary *)v23 shouldLog];
    if ([(__CFDictionary *)v23 shouldLogToDisk])
    {
      shouldLog7 |= 2u;
    }

    oSLogObject7 = [(__CFDictionary *)v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
    {
      v26 = shouldLog7;
    }

    else
    {
      v26 = shouldLog7 & 2;
    }

    if (v26)
    {
      v131 = v23;
      v27 = objc_opt_class();
      v28 = v27;
      v29 = SSHashIfNeeded();
      v30 = [NSNumber numberWithInteger:purposeCopy];
      v31 = [NSNumber numberWithInt:v11];
      v141 = 138544130;
      v142 = v27;
      v143 = 2112;
      v144 = v29;
      v145 = 2114;
      errorCopy2 = v30;
      v147 = 2114;
      v148 = v31;
      LODWORD(v127) = 42;
      v32 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, oSLogObject7, 16, "%{public}@: Failed to look up public key cert using X509 for DSID: %@, purpose: %{public}@, status: %{public}@", &v141, v127);

      if (!v32)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        LOBYTE(v36) = 1;
        v23 = v131;
        errorCopy = v128;
        goto LABEL_173;
      }

      oSLogObject7 = [NSString stringWithCString:v32 encoding:4];
      free(v32);
      v23 = v131;
      SSFileLog();
    }

    v33 = 0;
    v34 = 0;
    v35 = 0;
    LOBYTE(v36) = 1;
    errorCopy = v128;
    goto LABEL_172;
  }

  v90 = SecCertificateCopyKey(v12);
  if (!v90)
  {
    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    shouldLog8 = [(__CFDictionary *)v23 shouldLog];
    if ([(__CFDictionary *)v23 shouldLogToDisk])
    {
      shouldLog8 |= 2u;
    }

    oSLogObject7 = [(__CFDictionary *)v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
    {
      v109 = shouldLog8;
    }

    else
    {
      v109 = shouldLog8 & 2;
    }

    if (v109)
    {
      v96 = v23;
      v110 = objc_opt_class();
      v111 = v110;
      v112 = SSHashIfNeeded();
      v113 = [NSNumber numberWithInteger:purposeCopy];
      v141 = 138543874;
      v142 = v110;
      v143 = 2112;
      v144 = v112;
      v145 = 2114;
      errorCopy2 = v113;
      LODWORD(v127) = 32;
      v114 = _os_log_send_and_compose_impl(v109, 0, 0, 0, &_mh_execute_header, oSLogObject7, 16, "%{public}@: Failed to copy public key using X509 for DSID: %@, purpose: %{public}@", &v141, v127);

      if (!v114)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        LOBYTE(v36) = 1;
        goto LABEL_168;
      }

      oSLogObject7 = [NSString stringWithCString:v114 encoding:4];
      free(v114);
      v23 = v96;
      SSFileLog();
    }

    v33 = 0;
    v34 = 0;
    errorCopy = 0;
LABEL_154:
    v35 = 0;
    LOBYTE(v36) = 1;
    goto LABEL_172;
  }

  v33 = v90;
  v130 = v13;
LABEL_94:
  v91 = SecKeyCopyExternalRepresentation(v33, &error);
  v34 = v91;
  if (error)
  {
    errorCopy = error;
    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v36) = [(__CFDictionary *)v23 shouldLog];
    if ([(__CFDictionary *)v23 shouldLogToDisk])
    {
      LODWORD(v36) = v36 | 2;
    }

    oSLogObject7 = [(__CFDictionary *)v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v36;
    }

    else
    {
      v36 &= 2u;
    }

    if (v36)
    {
      v129 = errorCopy;
      v92 = v23;
      v93 = objc_opt_class();
      v94 = v93;
      v95 = SSHashIfNeeded();
      v141 = 138543874;
      v142 = v93;
      v143 = 2112;
      v144 = v95;
      v145 = 2114;
      errorCopy2 = error;
      LODWORD(v127) = 32;
      v36 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, oSLogObject7, 0, "%{public}@: Public key data copy failed with no external representation for DSID: %@, error: %{public}@", &v141, v127);

      if (v36)
      {
        oSLogObject7 = [NSString stringWithCString:v36 encoding:4];
        free(v36);
        v23 = v92;
        SSFileLog();
        LOBYTE(v36) = 0;
LABEL_105:
        v35 = 0;
        errorCopy = v129;
        v13 = v130;
LABEL_172:

        goto LABEL_173;
      }

      goto LABEL_187;
    }

    goto LABEL_170;
  }

  if (v91)
  {
    v34 = v91;
    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v36) = [(__CFDictionary *)v23 shouldLog];
    if ([(__CFDictionary *)v23 shouldLogToDisk])
    {
      LODWORD(v36) = v36 | 2;
    }

    oSLogObject7 = [(__CFDictionary *)v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEBUG))
    {
      v36 = v36;
    }

    else
    {
      v36 &= 2u;
    }

    if (!v36)
    {
      goto LABEL_118;
    }

    v96 = v23;
    v97 = objc_opt_class();
    v98 = v97;
    v99 = SSHashIfNeeded();
    v141 = 138543618;
    v142 = v97;
    v143 = 2112;
    v144 = v99;
    LODWORD(v127) = 22;
    v36 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, oSLogObject7, 2, "%{public}@: Public key data copied for DSID: %@", &v141, v127);

    if (v36)
    {
      oSLogObject7 = [NSString stringWithCString:v36 encoding:4];
      free(v36);
      v23 = v96;
      SSFileLog();
      LOBYTE(v36) = 0;
LABEL_118:
      errorCopy = 0;
      v35 = v34;
LABEL_171:
      v13 = v130;
      goto LABEL_172;
    }

    v13 = v130;
    v35 = v34;
LABEL_168:
    v23 = v96;
    errorCopy = 0;
    goto LABEL_173;
  }

  errorCopy = SSError();
  v23 = +[SSLogConfig sharedDaemonConfig];
  if (!v23)
  {
    v23 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v36) = [(__CFDictionary *)v23 shouldLog];
  if ([(__CFDictionary *)v23 shouldLogToDisk])
  {
    LODWORD(v36) = v36 | 2;
  }

  oSLogObject7 = [(__CFDictionary *)v23 OSLogObject];
  if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
  {
    v36 = v36;
  }

  else
  {
    v36 &= 2u;
  }

  if (!v36)
  {
    v34 = 0;
LABEL_170:
    v35 = 0;
    goto LABEL_171;
  }

  v129 = errorCopy;
  v92 = v23;
  v119 = objc_opt_class();
  v120 = v119;
  v121 = SSHashIfNeeded();
  v141 = 138543618;
  v142 = v119;
  v143 = 2112;
  v144 = v121;
  LODWORD(v127) = 22;
  v36 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, oSLogObject7, 0, "%{public}@: Public key data copy failed with no key data for DSID: %@", &v141, v127);

  if (v36)
  {
    oSLogObject7 = [NSString stringWithCString:v36 encoding:4];
    free(v36);
    v23 = v92;
    SSFileLog();
    LOBYTE(v36) = 0;
    v34 = 0;
    goto LABEL_105;
  }

  v34 = 0;
LABEL_187:
  v35 = 0;
  v23 = v92;
  errorCopy = v129;
  v13 = v130;
LABEL_173:

  if (cf)
  {
    CFRelease(cf);
  }

  if ((v36 & 1) == 0)
  {
    CFRelease(v33);
  }

  if (result)
  {
    CFRelease(result);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (error)
  {
    CFRelease(error);
  }

  if (error)
  {
    v122 = errorCopy;
    *error = errorCopy;
  }

  return v35;
}

- (id)_createAttestationDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  result = 0;
  identifierCopy = identifier;
  identifierCopy = [NSString stringWithFormat:@"%@", identifierCopy];
  v10 = [ISBiometricStore keychainLabelForAccountID:identifierCopy purpose:purpose];

  v11 = [(DaemonBiometricKeychain *)self _queryForPrivateKeyWithLabel:v10 prompt:0];
  v12 = SecItemCopyMatching(v11, &result);
  if (v12)
  {
    v13 = v12;
    v74 = v11;
    v78 = v10;
    errorCopy = error;
    v14 = SSError();
    v15 = [NSNumber numberWithInt:v13];
    v16 = SSErrorBySettingUserInfoValue();

    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = shouldLog | 2;
    }

    else
    {
      v19 = shouldLog;
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v19;
    }

    else
    {
      v21 = v19 & 2;
    }

    if (v21)
    {
      v22 = objc_opt_class();
      v23 = v22;
      v24 = identifierCopy;
      v25 = SSHashIfNeeded();
      v26 = [NSNumber numberWithInt:v13];
      v85 = 138543874;
      v86 = v22;
      v87 = 2112;
      v88 = v25;
      v89 = 2114;
      v90 = v26;
      v27 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Key copy failed while attesting for DSID: %@, status: %{public}@", &v85, 32);

      error = errorCopy;
      v11 = v74;
      if (!v27)
      {
LABEL_30:

        v41 = 0;
        identifierCopy = v24;
        v10 = v78;
        goto LABEL_69;
      }

      oSLogObject = [NSString stringWithCString:v27 encoding:4];
      free(v27);
      SSFileLog();
    }

    else
    {
      v24 = identifierCopy;
      error = errorCopy;
    }

    goto LABEL_30;
  }

  if (!result)
  {
    v16 = SSError();
    v42 = +[SSLogConfig sharedDaemonConfig];
    if (!v42)
    {
      v42 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v42 shouldLog];
    if ([v42 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v42 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v45 = shouldLog2;
    }

    else
    {
      v45 = shouldLog2 & 2;
    }

    if (v45)
    {
      v46 = objc_opt_class();
      v76 = v46;
      v80 = v16;
      v47 = identifierCopy;
      SSHashIfNeeded();
      v49 = v48 = v11;
      v85 = 138543618;
      v86 = v46;
      v87 = 2112;
      v88 = v49;
      v50 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Key copy failed while attesting for DSID: %@", &v85, 22);

      v11 = v48;
      identifierCopy = v47;
      v16 = v80;

      if (!v50)
      {
LABEL_42:

        v41 = 0;
        goto LABEL_69;
      }

      oSLogObject2 = [NSString stringWithCString:v50 encoding:4];
      free(v50);
      SSFileLog();
    }

    goto LABEL_42;
  }

  v28 = SecKeyCopyAttestationKey();
  errorCopy2 = error;
  if (!v28)
  {
    v16 = 0;
    v51 = +[SSLogConfig sharedDaemonConfig];
    if (!v51)
    {
      v51 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v51 shouldLog];
    if ([v51 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject3 = [v51 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v54 = shouldLog3;
    }

    else
    {
      v54 = shouldLog3 & 2;
    }

    if (v54)
    {
      v55 = objc_opt_class();
      v77 = v55;
      SSHashIfNeeded();
      v57 = v56 = v11;
      v85 = 138543874;
      v86 = v55;
      v87 = 2112;
      v88 = v57;
      v89 = 2114;
      v90 = v16;
      v58 = _os_log_send_and_compose_impl(v54, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%{public}@: Attesting key copy failed for DSID: %@, error: %{public}@", &v85, 32);

      v11 = v56;
      error = errorCopy2;
      if (!v58)
      {
LABEL_67:

        v41 = 0;
        goto LABEL_69;
      }

      oSLogObject3 = [NSString stringWithCString:v58 encoding:4];
      free(v58);
      SSFileLog();
    }

    else
    {
      error = errorCopy2;
    }

    goto LABEL_67;
  }

  Attestation = SecKeyCreateAttestation();
  v30 = Attestation;
  if (!Attestation)
  {
    v16 = 0;
    v59 = +[SSLogConfig sharedDaemonConfig];
    if (!v59)
    {
      v59 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v59 shouldLog];
    if ([v59 shouldLogToDisk])
    {
      shouldLog4 |= 2u;
    }

    oSLogObject4 = [v59 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v62 = shouldLog4;
    }

    else
    {
      v62 = shouldLog4 & 2;
    }

    if (v62)
    {
      v63 = objc_opt_class();
      v81 = v28;
      v64 = v16;
      v65 = identifierCopy;
      v73 = v63;
      SSHashIfNeeded();
      v67 = v66 = v11;
      v85 = 138543874;
      v86 = v63;
      v87 = 2112;
      v88 = v67;
      v89 = 2114;
      v90 = v64;
      v68 = _os_log_send_and_compose_impl(v62, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%{public}@: Attestation generation failed for DSID: %@, error: %{public}@", &v85, 32);

      v11 = v66;
      identifierCopy = v65;
      v16 = v64;
      v28 = v81;

      if (!v68)
      {
LABEL_64:

        v69 = 0;
        error = errorCopy2;
        goto LABEL_68;
      }

      oSLogObject4 = [NSString stringWithCString:v68 encoding:4];
      free(v68);
      SSFileLog();
    }

    goto LABEL_64;
  }

  v79 = v10;
  v72 = Attestation;
  v31 = +[SSLogConfig sharedDaemonConfig];
  if (!v31)
  {
    v31 = +[SSLogConfig sharedConfig];
  }

  shouldLog5 = [v31 shouldLog];
  if ([v31 shouldLogToDisk])
  {
    shouldLog5 |= 2u;
  }

  oSLogObject5 = [v31 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEBUG))
  {
    v34 = shouldLog5;
  }

  else
  {
    v34 = shouldLog5 & 2;
  }

  if (!v34)
  {
    goto LABEL_26;
  }

  v35 = objc_opt_class();
  v75 = v30;
  v36 = v28;
  v37 = v35;
  SSHashIfNeeded();
  v39 = v38 = v11;
  v85 = 138543618;
  v86 = v35;
  v87 = 2112;
  v88 = v39;
  v40 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, oSLogObject5, 2, "%{public}@: Attestation generated for DSID: %@", &v85, 22);

  v11 = v38;
  v28 = v36;
  v30 = v75;

  if (v40)
  {
    oSLogObject5 = [NSString stringWithCString:v40 encoding:4];
    free(v40);
    SSFileLog();
LABEL_26:
  }

  v16 = 0;
  v10 = v79;
  error = errorCopy2;
  CFRelease(v30);
  v69 = v72;
LABEL_68:
  CFRelease(v28);
  v41 = v69;
LABEL_69:
  if (result)
  {
    CFRelease(result);
  }

  if (error)
  {
    v70 = v16;
    *error = v16;
  }

  return v41;
}

- (id)_createX509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  identifierCopy = identifier;
  v206 = 0;
  v207 = &v206;
  v208 = 0x3032000000;
  v209 = sub_1001542B0;
  v210 = sub_1001542C0;
  v211 = 0;
  v200 = 0;
  v201 = &v200;
  v202 = 0x3032000000;
  v203 = sub_1001542B0;
  v204 = sub_1001542C0;
  v205 = 0;
  v196 = 0;
  v197 = &v196;
  v198 = 0x2020000000;
  v199 = 0;
  v192 = 0;
  v193 = &v192;
  v194 = 0x2020000000;
  v195 = 0;
  v188 = 0;
  v189 = &v188;
  v190 = 0x2020000000;
  v191 = 0;
  error = 0;
  identifierCopy = [NSString stringWithFormat:@"%@", identifierCopy];
  v7 = v201;
  obj = v201[5];
  [(DaemonBiometricKeychain *)self _deleteKeychainTokensForAccountIdentifier:identifierCopy purpose:purpose error:&obj];
  purposeCopy = purpose;
  objc_storeStrong(v7 + 5, obj);
  if (v201[5])
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v9) = [v8 shouldLog];
    shouldLogToDisk = [v8 shouldLogToDisk];
    oSLogObject = [v8 OSLogObject];
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
      v14 = SSHashIfNeeded();
      v15 = [NSNumber numberWithInteger:purposeCopy];
      v16 = v201[5];
      v212 = 138544130;
      v213 = v13;
      v214 = 2112;
      v215 = v14;
      v216 = 2114;
      v217 = v15;
      v218 = 2114;
      v219 = v16;
      v17 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v12, 16, "%{public}@: Failed to delete keychain tokens while creating X509 certs for account: %@, purpose: %{public}@, error: %{public}@", &v212, 42);

      if (!v17)
      {
LABEL_13:

        goto LABEL_14;
      }

      v12 = [NSString stringWithCString:v17 encoding:4];
      free(v17);
      v157 = v12;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  cf = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleWhenUnlockedThisDeviceOnly, 0x40000002uLL, &error);
  if (!cf)
  {
    objc_storeStrong(v201 + 5, error);
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v19) = [v18 shouldLog];
    shouldLogToDisk2 = [v18 shouldLogToDisk];
    v21 = identifierCopy;
    oSLogObject2 = [v18 OSLogObject];
    v23 = oSLogObject2;
    if (shouldLogToDisk2)
    {
      LODWORD(v19) = v19 | 2;
    }

    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v24 = objc_opt_class();
      v25 = SSHashIfNeeded();
      v26 = [NSNumber numberWithInteger:purposeCopy];
      v27 = v201[5];
      v212 = 138544130;
      v213 = v24;
      v214 = 2112;
      v215 = v25;
      v216 = 2114;
      v217 = v26;
      v218 = 2114;
      v219 = v27;
      LODWORD(v162) = 42;
      v28 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, v23, 16, "%{public}@: Failed to create ACL while creating X509 certs for account: %@, purpose: %{public}@, error: %{public}@", &v212, v162);

      identifierCopy = v21;
      if (!v28)
      {
LABEL_108:

        goto LABEL_205;
      }

      v23 = [NSString stringWithCString:v28 encoding:4];
      free(v28);
      v158 = v23;
      SSFileLog();
    }

    goto LABEL_108;
  }

  if (purposeCopy == 1)
  {
    _constraintsForExtendedActions = [(DaemonBiometricKeychain *)self _constraintsForExtendedActions];
  }

  else
  {
    if (purposeCopy)
    {
      goto LABEL_40;
    }

    _constraintsForExtendedActions = [(DaemonBiometricKeychain *)self _constraintsForPurchase];
  }

  if (_constraintsForExtendedActions)
  {
    SecAccessControlSetConstraints();
    v29 = +[SSLogConfig sharedDaemonConfig];
    if (!v29)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v30) = [v29 shouldLog];
    shouldLogToDisk3 = [v29 shouldLogToDisk];
    oSLogObject3 = [v29 OSLogObject];
    v33 = oSLogObject3;
    if (shouldLogToDisk3)
    {
      LODWORD(v30) = v30 | 2;
    }

    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v30;
    }

    else
    {
      v30 &= 2u;
    }

    if (v30)
    {
      v34 = objc_opt_class();
      v35 = SSHashIfNeeded();
      v36 = [NSNumber numberWithInteger:purposeCopy];
      v212 = 138543874;
      v213 = v34;
      v214 = 2112;
      v215 = v35;
      v216 = 2114;
      v217 = v36;
      LODWORD(v162) = 32;
      v37 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, v33, 0, "%{public}@: Configured biometric keypair ACL constraints while creating X509 certs for DSID: %@, purpose: %{public}@", &v212, v162);

      if (!v37)
      {
        goto LABEL_52;
      }

      v33 = [NSString stringWithCString:v37 encoding:4];
      free(v37);
      v159 = v33;
      SSFileLog();
    }

    goto LABEL_51;
  }

LABEL_40:
  v29 = +[SSLogConfig sharedDaemonConfig];
  if (!v29)
  {
    v29 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v38) = [v29 shouldLog];
  shouldLogToDisk4 = [v29 shouldLogToDisk];
  oSLogObject4 = [v29 OSLogObject];
  v33 = oSLogObject4;
  if (shouldLogToDisk4)
  {
    LODWORD(v38) = v38 | 2;
  }

  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
  {
    v38 = v38;
  }

  else
  {
    v38 &= 2u;
  }

  if (!v38)
  {
    goto LABEL_50;
  }

  v41 = objc_opt_class();
  v42 = SSHashIfNeeded();
  v43 = [NSNumber numberWithInteger:purposeCopy];
  v212 = 138543874;
  v213 = v41;
  v214 = 2112;
  v215 = v42;
  v216 = 2114;
  v217 = v43;
  LODWORD(v162) = 32;
  v44 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &_mh_execute_header, v33, 16, "%{public}@: Failed to configure biometric keypair ACL constraints while creating X509 certs for DSID: %@, purpose: %{public}@", &v212, v162);

  if (v44)
  {
    v33 = [NSString stringWithCString:v44 encoding:4];
    free(v44);
    v159 = v33;
    SSFileLog();
LABEL_50:
    _constraintsForExtendedActions = 0;
LABEL_51:

    goto LABEL_52;
  }

  _constraintsForExtendedActions = 0;
LABEL_52:

  v169 = ISWeakLinkedStringConstantForString();
  v170 = ISWeakLinkedStringConstantForString();
  v166 = ISWeakLinkedStringConstantForString();
  v168 = ISWeakLinkedStringConstantForString();
  v167 = ISWeakLinkedStringConstantForString();
  v173 = objc_alloc_init(NSMutableDictionary);
  if (v170)
  {
    [v173 setObject:&__kCFBooleanTrue forKeyedSubscript:v170];
  }

  if (v169)
  {
    [v173 setObject:cf forKeyedSubscript:v169];
  }

  if (v168)
  {
    v45 = objc_alloc_init(NSMutableArray);
    v46 = v45;
    if (v167)
    {
      [v45 addObject:v167];
    }

    if (v166)
    {
      [v46 addObject:v166];
    }

    [v173 setObject:v46 forKeyedSubscript:{v168, v159}];
  }

  objc_initWeak(&location, self);
  v47 = dispatch_semaphore_create(0);
  v48 = ISWeakLinkedSymbolForString();
  dispatchQueueX509 = self->_dispatchQueueX509;
  v177[0] = _NSConcreteStackBlock;
  v177[1] = 3221225472;
  v177[2] = sub_10015E5F4;
  v177[3] = &unk_10032A070;
  objc_copyWeak(v184, &location);
  v179 = &v200;
  v180 = &v192;
  v181 = &v206;
  v182 = &v188;
  v184[1] = purposeCopy;
  v183 = &v196;
  v50 = v47;
  v178 = v50;
  v48(dispatchQueueX509, v173, v177);
  v51 = dispatch_time(0, 30000000000);
  v164 = v50;
  if (dispatch_semaphore_wait(v50, v51))
  {
    v52 = +[SSLogConfig sharedDaemonConfig];
    if (!v52)
    {
      v52 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v53) = [v52 shouldLog];
    shouldLogToDisk5 = [v52 shouldLogToDisk];
    oSLogObject5 = [v52 OSLogObject];
    v56 = oSLogObject5;
    if (shouldLogToDisk5)
    {
      LODWORD(v53) = v53 | 2;
    }

    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
    {
      v53 = v53;
    }

    else
    {
      v53 &= 2u;
    }

    if (v53)
    {
      v57 = objc_opt_class();
      v58 = SSHashIfNeeded();
      v59 = [NSNumber numberWithInteger:purposeCopy];
      v212 = 138543874;
      v213 = v57;
      v214 = 2112;
      v215 = v58;
      v216 = 2114;
      v217 = v59;
      LODWORD(v162) = 32;
      v60 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &_mh_execute_header, v56, 16, "%{public}@: Create X509 cert data timed out for DSID: %@, purpose: %{public}@", &v212, v162);

      if (!v60)
      {
LABEL_74:

        goto LABEL_75;
      }

      v56 = [NSString stringWithCString:v60 encoding:4];
      free(v60);
      v159 = v56;
      SSFileLog();
    }

    goto LABEL_74;
  }

LABEL_75:
  if (v193[3])
  {
    v61 = [ISBiometricStore keychainLabelForKeyWithAccountID:identifierCopy purpose:purposeCopy];
    v62 = objc_alloc_init(NSMutableDictionary);
    [v62 setObject:kSecAttrKeyClassPrivate forKeyedSubscript:kSecAttrKeyClass];
    [v62 setObject:v61 forKeyedSubscript:kSecAttrLabel];
    [v62 setObject:kSecClassKey forKeyedSubscript:kSecClass];
    [v62 setObject:v193[3] forKeyedSubscript:kSecValueRef];
    v63 = SecItemAdd(v62, 0);
    if (v63)
    {
      v64 = +[SSLogConfig sharedDaemonConfig];
      if (!v64)
      {
        v64 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v65) = [v64 shouldLog];
      shouldLogToDisk6 = [v64 shouldLogToDisk];
      oSLogObject6 = [v64 OSLogObject];
      v68 = oSLogObject6;
      if (shouldLogToDisk6)
      {
        LODWORD(v65) = v65 | 2;
      }

      if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
      {
        v65 = v65;
      }

      else
      {
        v65 &= 2u;
      }

      if (!v65)
      {
        goto LABEL_110;
      }

      v69 = objc_opt_class();
      v70 = SSHashIfNeeded();
      v71 = [NSNumber numberWithInteger:purposeCopy];
      v72 = [NSNumber numberWithInt:v63];
      v212 = 138544130;
      v213 = v69;
      v214 = 2112;
      v215 = v70;
      v216 = 2114;
      v217 = v71;
      v218 = 2114;
      v219 = v72;
      LODWORD(v162) = 42;
      v73 = _os_log_send_and_compose_impl(v65, 0, 0, 0, &_mh_execute_header, v68, 16, "%{public}@: Failed to save private key to Keychain for DSID: %@, purpose: %{public}@, status: %{public}@", &v212, v162);

      if (v73)
      {
LABEL_86:
        v68 = [NSString stringWithCString:v73 encoding:4];
        free(v73);
        v160 = v68;
        SSFileLog();
LABEL_110:
      }
    }

    else
    {
      v64 = +[SSLogConfig sharedDaemonConfig];
      if (!v64)
      {
        v64 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v64 shouldLog];
      shouldLogToDisk7 = [v64 shouldLogToDisk];
      v163 = identifierCopy;
      oSLogObject7 = [v64 OSLogObject];
      v68 = oSLogObject7;
      if (shouldLogToDisk7)
      {
        shouldLog |= 2u;
      }

      if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
      {
        v84 = shouldLog;
      }

      else
      {
        v84 = shouldLog & 2;
      }

      if (!v84)
      {
        goto LABEL_110;
      }

      v85 = objc_opt_class();
      v86 = SSHashIfNeeded();
      v87 = [NSNumber numberWithInteger:purposeCopy];
      v88 = [NSNumber numberWithInt:0];
      v212 = 138544130;
      v213 = v85;
      v214 = 2112;
      v215 = v86;
      v216 = 2114;
      v217 = v87;
      v218 = 2114;
      v219 = v88;
      LODWORD(v162) = 42;
      v73 = _os_log_send_and_compose_impl(v84, 0, 0, 0, &_mh_execute_header, v68, 0, "%{public}@: Saved private key to Keychain for DSID: %@, purpose: %{public}@, status: %{public}@", &v212, v162);

      identifierCopy = v163;
      if (v73)
      {
        goto LABEL_86;
      }
    }

    goto LABEL_112;
  }

  v61 = +[SSLogConfig sharedDaemonConfig];
  if (!v61)
  {
    v61 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v74) = [v61 shouldLog];
  shouldLogToDisk8 = [v61 shouldLogToDisk];
  oSLogObject8 = [v61 OSLogObject];
  v62 = oSLogObject8;
  if (shouldLogToDisk8)
  {
    LODWORD(v74) = v74 | 2;
  }

  if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_ERROR))
  {
    v74 = v74;
  }

  else
  {
    v74 &= 2u;
  }

  if (v74)
  {
    v77 = objc_opt_class();
    v78 = SSHashIfNeeded();
    v79 = [NSNumber numberWithInteger:purposeCopy];
    v212 = 138543874;
    v213 = v77;
    v214 = 2112;
    v215 = v78;
    v216 = 2114;
    v217 = v79;
    LODWORD(v162) = 32;
    v80 = _os_log_send_and_compose_impl(v74, 0, 0, 0, &_mh_execute_header, v62, 16, "%{public}@: Failed to save private key to Keychain for DSID: %@, purpose: %{public}@ for no private key", &v212, v162);

    if (!v80)
    {
      goto LABEL_113;
    }

    v62 = [NSString stringWithCString:v80 encoding:4];
    free(v80);
    v160 = v62;
    SSFileLog();
  }

LABEL_112:

LABEL_113:
  if (v189[3])
  {
    v89 = [ISBiometricStore keychainLabelForCertWithAccountID:identifierCopy purpose:purposeCopy];
    v90 = objc_alloc_init(NSMutableDictionary);
    [v90 setObject:v89 forKeyedSubscript:kSecAttrLabel];
    [v90 setObject:kSecClassCertificate forKeyedSubscript:kSecClass];
    [v90 setObject:v189[3] forKeyedSubscript:kSecValueRef];
    v91 = SecItemAdd(v90, 0);
    if (v91)
    {
      v92 = +[SSLogConfig sharedDaemonConfig];
      if (!v92)
      {
        v92 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v93) = [v92 shouldLog];
      shouldLogToDisk9 = [v92 shouldLogToDisk];
      oSLogObject9 = [v92 OSLogObject];
      v96 = oSLogObject9;
      if (shouldLogToDisk9)
      {
        LODWORD(v93) = v93 | 2;
      }

      if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
      {
        v93 = v93;
      }

      else
      {
        v93 &= 2u;
      }

      if (!v93)
      {
        goto LABEL_145;
      }

      v97 = objc_opt_class();
      v98 = SSHashIfNeeded();
      v99 = [NSNumber numberWithInteger:purposeCopy];
      v100 = [NSNumber numberWithInt:v91];
      v212 = 138544130;
      v213 = v97;
      v214 = 2112;
      v215 = v98;
      v216 = 2114;
      v217 = v99;
      v218 = 2114;
      v219 = v100;
      LODWORD(v162) = 42;
      v101 = _os_log_send_and_compose_impl(v93, 0, 0, 0, &_mh_execute_header, v96, 16, "%{public}@: Failed to save public key cert to Keychain for DSID: %@, purpose: %{public}@, status: %{public}@", &v212, v162);

      if (v101)
      {
LABEL_144:
        v96 = [NSString stringWithCString:v101 encoding:4];
        free(v101);
        v161 = v96;
        SSFileLog();
LABEL_145:
      }
    }

    else
    {
      v92 = +[SSLogConfig sharedDaemonConfig];
      if (!v92)
      {
        v92 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v109) = [v92 shouldLog];
      shouldLogToDisk10 = [v92 shouldLogToDisk];
      oSLogObject10 = [v92 OSLogObject];
      v96 = oSLogObject10;
      if (shouldLogToDisk10)
      {
        LODWORD(v109) = v109 | 2;
      }

      if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_DEFAULT))
      {
        v109 = v109;
      }

      else
      {
        v109 &= 2u;
      }

      if (!v109)
      {
        goto LABEL_145;
      }

      v112 = objc_opt_class();
      v113 = SSHashIfNeeded();
      v114 = [NSNumber numberWithInteger:purposeCopy];
      v212 = 138543874;
      v213 = v112;
      v214 = 2112;
      v215 = v113;
      v216 = 2112;
      v217 = v114;
      LODWORD(v162) = 32;
      v101 = _os_log_send_and_compose_impl(v109, 0, 0, 0, &_mh_execute_header, v96, 0, "%{public}@: Saved public key cert to Keychain for DSID: %@, purpose: %{purpose}@", &v212, v162);

      if (v101)
      {
        goto LABEL_144;
      }
    }

    goto LABEL_147;
  }

  v89 = +[SSLogConfig sharedDaemonConfig];
  if (!v89)
  {
    v89 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v102) = [v89 shouldLog];
  shouldLogToDisk11 = [v89 shouldLogToDisk];
  oSLogObject11 = [v89 OSLogObject];
  v90 = oSLogObject11;
  if (shouldLogToDisk11)
  {
    LODWORD(v102) = v102 | 2;
  }

  if (os_log_type_enabled(oSLogObject11, OS_LOG_TYPE_ERROR))
  {
    v102 = v102;
  }

  else
  {
    v102 &= 2u;
  }

  if (v102)
  {
    v105 = objc_opt_class();
    v106 = SSHashIfNeeded();
    v107 = [NSNumber numberWithInteger:purposeCopy];
    v212 = 138543874;
    v213 = v105;
    v214 = 2112;
    v215 = v106;
    v216 = 2112;
    v217 = v107;
    LODWORD(v162) = 32;
    v108 = _os_log_send_and_compose_impl(v102, 0, 0, 0, &_mh_execute_header, v90, 16, "%{public}@: Failed to save public key cert to Keychain for DSID: %@, purpose: %{purpose}@ for no public key cert", &v212, v162);

    if (!v108)
    {
      goto LABEL_148;
    }

    v90 = [NSString stringWithCString:v108 encoding:4];
    free(v108);
    v161 = v90;
    SSFileLog();
  }

LABEL_147:

LABEL_148:
  if (v197[3])
  {
    v115 = objc_alloc_init(NSMutableDictionary);
    [v115 setObject:ISBiometricsIntermediateCertKeychainLabel forKeyedSubscript:kSecAttrLabel];
    [v115 setObject:kSecClassCertificate forKeyedSubscript:kSecClass];
    [v115 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnRef];
    v116 = SecItemCopyMatching(v115, 0);
    v117 = v116;
    if (v116)
    {
      if (v116 == -25300)
      {
        [v115 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecReturnRef];
        [v115 setObject:v197[3] forKeyedSubscript:kSecValueRef];
        v118 = SecItemAdd(v115, 0);
        if (v118)
        {
          v119 = +[SSLogConfig sharedDaemonConfig];
          if (!v119)
          {
            v119 = +[SSLogConfig sharedConfig];
          }

          LODWORD(v120) = [v119 shouldLog];
          shouldLogToDisk12 = [v119 shouldLogToDisk];
          oSLogObject12 = [v119 OSLogObject];
          v123 = oSLogObject12;
          if (shouldLogToDisk12)
          {
            LODWORD(v120) = v120 | 2;
          }

          if (os_log_type_enabled(oSLogObject12, OS_LOG_TYPE_ERROR))
          {
            v120 = v120;
          }

          else
          {
            v120 &= 2u;
          }

          if (!v120)
          {
            goto LABEL_202;
          }

          v124 = SSHashIfNeeded();
          v125 = [NSNumber numberWithInteger:purposeCopy];
          v126 = [NSNumber numberWithInt:v118];
          v212 = 138412802;
          v213 = v124;
          v214 = 2112;
          v215 = v125;
          v216 = 2112;
          v217 = v126;
          LODWORD(v162) = 32;
          v127 = _os_log_send_and_compose_impl(v120, 0, 0, 0, &_mh_execute_header, v123, 16, "DaemonBiometricKeychain: Failed to save intermediate cert to Keychain for DSID: %@, purpose: %@, status: %@", &v212, v162);

          if (v127)
          {
            goto LABEL_191;
          }
        }

        else
        {
          v119 = +[SSLogConfig sharedDaemonConfig];
          if (!v119)
          {
            v119 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v119 shouldLog];
          shouldLogToDisk13 = [v119 shouldLogToDisk];
          oSLogObject13 = [v119 OSLogObject];
          v123 = oSLogObject13;
          if (shouldLogToDisk13)
          {
            shouldLog2 |= 2u;
          }

          if (os_log_type_enabled(oSLogObject13, OS_LOG_TYPE_DEFAULT))
          {
            v148 = shouldLog2;
          }

          else
          {
            v148 = shouldLog2 & 2;
          }

          if (!v148)
          {
            goto LABEL_202;
          }

          v149 = SSHashIfNeeded();
          v150 = [NSNumber numberWithInteger:purposeCopy];
          v212 = 138412546;
          v213 = v149;
          v214 = 2114;
          v215 = v150;
          LODWORD(v162) = 22;
          v151 = _os_log_send_and_compose_impl(v148, 0, 0, 0, &_mh_execute_header, v123, 0, "DaemonBiometricKeychain: Saved intermediate cert to Keychain for DSID: %@, purpose: %{public}@", &v212, v162);

          if (v151)
          {
            v123 = [NSString stringWithCString:v151 encoding:4];
            free(v151);
            v158 = v123;
            SSFileLog();
            goto LABEL_202;
          }
        }

LABEL_203:

        goto LABEL_204;
      }

      v119 = +[SSLogConfig sharedDaemonConfig];
      if (!v119)
      {
        v119 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v139) = [v119 shouldLog];
      shouldLogToDisk14 = [v119 shouldLogToDisk];
      oSLogObject14 = [v119 OSLogObject];
      v123 = oSLogObject14;
      if (shouldLogToDisk14)
      {
        LODWORD(v139) = v139 | 2;
      }

      if (os_log_type_enabled(oSLogObject14, OS_LOG_TYPE_ERROR))
      {
        v139 = v139;
      }

      else
      {
        v139 &= 2u;
      }

      if (!v139)
      {
        goto LABEL_202;
      }

      v142 = SSHashIfNeeded();
      v143 = [NSNumber numberWithInteger:purposeCopy];
      v144 = [NSNumber numberWithInt:v117];
      v212 = 138412802;
      v213 = v142;
      v214 = 2114;
      v215 = v143;
      v216 = 2114;
      v217 = v144;
      LODWORD(v162) = 32;
      v127 = _os_log_send_and_compose_impl(v139, 0, 0, 0, &_mh_execute_header, v123, 16, "DaemonBiometricKeychain: Failed to lookup intermediate X509 cert for DSID: %@, purpose: %{public}@, status: %{public}@", &v212, v162);

      if (!v127)
      {
        goto LABEL_203;
      }
    }

    else
    {
      v119 = +[SSLogConfig sharedDaemonConfig];
      if (!v119)
      {
        v119 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v119 shouldLog];
      shouldLogToDisk15 = [v119 shouldLogToDisk];
      oSLogObject15 = [v119 OSLogObject];
      v123 = oSLogObject15;
      if (shouldLogToDisk15)
      {
        shouldLog3 |= 2u;
      }

      if (os_log_type_enabled(oSLogObject15, OS_LOG_TYPE_DEFAULT))
      {
        v138 = shouldLog3;
      }

      else
      {
        v138 = shouldLog3 & 2;
      }

      if (!v138)
      {
        goto LABEL_202;
      }

      LOWORD(v212) = 0;
      LODWORD(v162) = 2;
      v127 = _os_log_send_and_compose_impl(v138, 0, 0, 0, &_mh_execute_header, v123, 0, "DaemonBiometricKeychain: Successfully found intermediate X509 cert, not updating Keychain", &v212, v162);

      if (!v127)
      {
        goto LABEL_203;
      }
    }

LABEL_191:
    v123 = [NSString stringWithCString:v127 encoding:4];
    free(v127);
    v158 = v123;
    SSFileLog();
LABEL_202:

    goto LABEL_203;
  }

  v115 = +[SSLogConfig sharedDaemonConfig];
  if (!v115)
  {
    v115 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v128) = [v115 shouldLog];
  shouldLogToDisk16 = [v115 shouldLogToDisk];
  oSLogObject16 = [v115 OSLogObject];
  v119 = oSLogObject16;
  if (shouldLogToDisk16)
  {
    LODWORD(v128) = v128 | 2;
  }

  if (os_log_type_enabled(oSLogObject16, OS_LOG_TYPE_ERROR))
  {
    v128 = v128;
  }

  else
  {
    v128 &= 2u;
  }

  if (!v128)
  {
    goto LABEL_203;
  }

  v131 = objc_opt_class();
  v132 = SSHashIfNeeded();
  v133 = [NSNumber numberWithInteger:purposeCopy];
  v212 = 138543874;
  v213 = v131;
  v214 = 2112;
  v215 = v132;
  v216 = 2114;
  v217 = v133;
  LODWORD(v162) = 32;
  v134 = _os_log_send_and_compose_impl(v128, 0, 0, 0, &_mh_execute_header, v119, 16, "%{public}@: Failed to save intermediate cert to Keychain for DSID: %@, purpose: %{public}@ for no intermediate cert", &v212, v162);

  if (v134)
  {
    v119 = [NSString stringWithCString:v134 encoding:4];
    free(v134);
    v158 = v119;
    SSFileLog();
    goto LABEL_203;
  }

LABEL_204:

  objc_destroyWeak(v184);
  objc_destroyWeak(&location);

  CFRelease(cf);
LABEL_205:
  v152 = v197[3];
  if (v152)
  {
    CFRelease(v152);
  }

  v153 = v193[3];
  if (v153)
  {
    CFRelease(v153);
  }

  v154 = v189[3];
  if (v154)
  {
    CFRelease(v154);
  }

  if (error)
  {
    CFRelease(error);
  }

  if (error)
  {
    *error = v201[5];
  }

  v158 = [NSArray arrayWithArray:v207[5], v158];

  _Block_object_dispose(&v188, 8);
  _Block_object_dispose(&v192, 8);
  _Block_object_dispose(&v196, 8);
  _Block_object_dispose(&v200, 8);

  _Block_object_dispose(&v206, 8);

  return v158;
}

- (BOOL)_deleteKeychainTokensForAccountIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  identifierCopy = [NSString stringWithFormat:@"mt-tid-%@", identifierCopy];
  v46 = NSHTTPCookieName;
  v47 = identifierCopy;
  v8 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v9 = +[ACAccountStore ams_sharedAccountStore];
  v41 = 0;
  [v9 ams_removeCookiesMatchingProperties:v8 error:&v41];
  v10 = v41;

  if (v10)
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = shouldLog;
    }

    else
    {
      v14 = shouldLog & 2;
    }

    selfCopy = self;
    if (v14)
    {
      v15 = objc_opt_class();
      v42 = 138543618;
      v43 = v15;
      v44 = 2114;
      v45 = 0;
      v16 = v10;
      v17 = v8;
      v18 = identifierCopy;
      errorCopy = error;
      v20 = v15;
      v21 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Failed to delete TouchID token with error: %{public}@", &v42, 22);

      error = errorCopy;
      identifierCopy = v18;
      v8 = v17;
      v10 = v16;

      if (!v21)
      {
LABEL_13:

        self = selfCopy;
        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v21 encoding:4];
      free(v21);
      v35 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  v40 = 0;
  [(DaemonBiometricKeychain *)self _deleteKeychainTokensForAccountIdentifier:identifierCopy purpose:0 error:&v40, v35];
  v22 = v40;
  v39 = 0;
  [(DaemonBiometricKeychain *)self _deleteKeychainTokensForAccountIdentifier:identifierCopy purpose:1 error:&v39];

  v23 = v39;
  v24 = v23;
  if (v22 && v23)
  {
    errorCopy2 = error;
    v25 = SSError();
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v27) = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      LODWORD(v27) = v27 | 2;
    }

    oSLogObject2 = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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
      v42 = 138543362;
      v43 = v29;
      v30 = v29;
      LODWORD(v36) = 12;
      v31 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%{public}@: Failed to delete both purchase and extended action keys", &v42, v36);

      if (!v31)
      {
        goto LABEL_27;
      }

      oSLogObject2 = [NSString stringWithCString:v31 encoding:4];
      free(v31);
      SSFileLog();
    }

LABEL_27:
    error = errorCopy2;
    if (!errorCopy2)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v22)
  {
    v32 = v22;
  }

  else
  {
    if (!v23)
    {
      v25 = 0;
      if (!error)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v32 = v23;
  }

  v25 = v32;
  if (error)
  {
LABEL_34:
    v33 = v25;
    *error = v25;
  }

LABEL_35:

  return v25 == 0;
}

- (BOOL)_deleteKeychainTokensForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  identifierCopy = identifier;
  identifierCopy = [NSString stringWithFormat:@"%@", identifierCopy];
  v9 = &CFDictionaryGetValue_ptr;
  v10 = [ISBiometricStore keychainLabelForAccountID:identifierCopy purpose:purpose];
  v11 = [(DaemonBiometricKeychain *)self _queryForPrivateKeyWithLabel:v10 prompt:0 useTokenID:0];
  v12 = SecItemDelete(v11);
  v13 = &CFDictionaryGetValue_ptr;
  v164 = identifierCopy;
  purposeCopy = purpose;
  v159 = v11;
  errorCopy = error;
  if (!v12)
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      LODWORD(v24) = shouldLog | 2;
    }

    else
    {
      LODWORD(v24) = shouldLog;
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v24;
    }

    else
    {
      v24 &= 2u;
    }

    if (!v24)
    {

      v28 = 0;
      goto LABEL_43;
    }

    v25 = objc_opt_class();
    v20 = v25;
    v21 = SSHashIfNeeded();
    v169 = 138543618;
    v170 = v25;
    v171 = 2112;
    v172 = v21;
    v22 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Keychain reset for DSID: %@", &v169, 22);
LABEL_23:
    v26 = v22;

    if (v26)
    {
      v27 = [NSString stringWithCString:v26 encoding:4];
      free(v26);
      v150 = v27;
      SSFileLog();
    }

    v28 = 0;
    goto LABEL_41;
  }

  v14 = v12;
  if (v12 == -25300)
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      LODWORD(v17) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v17) = shouldLog2;
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (!v17)
    {

      v28 = 0;
LABEL_42:
      purpose = purposeCopy;
      goto LABEL_43;
    }

    v19 = objc_opt_class();
    v20 = v19;
    v21 = SSHashIfNeeded();
    v169 = 138543618;
    v170 = v19;
    v171 = 2112;
    v172 = v21;
    v22 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject, 2, "%{public}@: Key not found while resetting keychain for DSID: %@", &v169, 22);
    goto LABEL_23;
  }

  v29 = SSError();
  v30 = [NSNumber numberWithInt:v14];
  v28 = SSErrorBySettingUserInfoValue();

  v15 = +[SSLogConfig sharedDaemonConfig];
  if (!v15)
  {
    v15 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v32 = shouldLog3 | 2;
  }

  else
  {
    v32 = shouldLog3;
  }

  oSLogObject2 = [v15 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v34 = v32;
  }

  else
  {
    v34 = v32 & 2;
  }

  if (!v34)
  {

LABEL_41:
    v13 = &CFDictionaryGetValue_ptr;
    goto LABEL_42;
  }

  v162 = v28;
  v35 = objc_opt_class();
  v36 = v35;
  v37 = SSHashIfNeeded();
  v38 = [NSNumber numberWithInt:v14];
  v169 = 138543874;
  v170 = v35;
  v171 = 2112;
  v172 = v37;
  v173 = 2114;
  v174 = v38;
  v39 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%{public}@: Keychain reset failed for DSID: %@, status: %{public}@", &v169, 32);

  if (v39)
  {
    v40 = [NSString stringWithCString:v39 encoding:4];
    free(v39);
    v150 = v40;
    SSFileLog();
  }

  v28 = v162;
  identifierCopy = v164;
  v13 = &CFDictionaryGetValue_ptr;
  v9 = &CFDictionaryGetValue_ptr;
LABEL_43:

  v41 = [v9[280] keychainLabelForKeyWithAccountID:identifierCopy purpose:purpose];

  v42 = SSVURLProtocolConsumer_ptr;
  v43 = objc_alloc_init(NSMutableDictionary);
  v44 = kSecAttrLabel;
  [v43 setObject:v41 forKeyedSubscript:kSecAttrLabel];
  v45 = kSecClass;
  [v43 setObject:kSecClassKey forKeyedSubscript:kSecClass];
  [v43 setObject:kSecAttrKeyClassPrivate forKeyedSubscript:kSecAttrKeyClass];
  v46 = SecItemDelete(v43);
  v158 = v43;
  if (!v46)
  {
    v163 = v28;
    sharedDaemonConfig = [v13[412] sharedDaemonConfig];
    if (!sharedDaemonConfig)
    {
      sharedDaemonConfig = [v13[412] sharedConfig];
    }

    LODWORD(v56) = [sharedDaemonConfig shouldLog];
    if ([sharedDaemonConfig shouldLogToDisk])
    {
      LODWORD(v56) = v56 | 2;
    }

    oSLogObject3 = [sharedDaemonConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v56 = v56;
    }

    else
    {
      v56 &= 2u;
    }

    if (!v56)
    {
      goto LABEL_77;
    }

    v57 = objc_opt_class();
    v52 = v57;
    v58 = SSHashIfNeeded();
    v59 = [NSNumber numberWithInteger:purpose];
    v169 = 138543874;
    v170 = v57;
    v171 = 2112;
    v172 = v58;
    v173 = 2114;
    v174 = v59;
    LODWORD(v155) = 32;
    v55 = _os_log_send_and_compose_impl(v56, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%{public}@: (X509) Private key reset for DSID: %@, purpose: %{public}@", &v169, v155);

LABEL_63:
    v13 = &CFDictionaryGetValue_ptr;
    if (!v55)
    {
      goto LABEL_79;
    }

    goto LABEL_75;
  }

  v47 = v46;
  if (v46 == -25300)
  {
    v163 = v28;
    sharedDaemonConfig = [v13[412] sharedDaemonConfig];
    if (!sharedDaemonConfig)
    {
      sharedDaemonConfig = [v13[412] sharedConfig];
    }

    LODWORD(v49) = [sharedDaemonConfig shouldLog];
    if ([sharedDaemonConfig shouldLogToDisk])
    {
      LODWORD(v49) = v49 | 2;
    }

    oSLogObject3 = [sharedDaemonConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v49 = v49;
    }

    else
    {
      v49 &= 2u;
    }

    if (!v49)
    {
      goto LABEL_77;
    }

    v51 = objc_opt_class();
    v52 = v51;
    v53 = SSHashIfNeeded();
    v54 = [NSNumber numberWithInteger:purpose];
    v169 = 138543874;
    v170 = v51;
    v171 = 2112;
    v172 = v53;
    v173 = 2114;
    v174 = v54;
    LODWORD(v155) = 32;
    v55 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &_mh_execute_header, oSLogObject3, 2, "%{public}@: (X509) Private key not found whilte resetting keychain for DSID: %@, purpose: %{public}@", &v169, v155);

    goto LABEL_63;
  }

  v60 = SSError();

  v61 = [NSNumber numberWithInt:v47];
  v163 = SSErrorBySettingUserInfoValue();

  v13 = &CFDictionaryGetValue_ptr;
  sharedDaemonConfig = +[SSLogConfig sharedDaemonConfig];
  if (!sharedDaemonConfig)
  {
    sharedDaemonConfig = +[SSLogConfig sharedConfig];
  }

  LODWORD(v62) = [sharedDaemonConfig shouldLog];
  if ([sharedDaemonConfig shouldLogToDisk])
  {
    LODWORD(v62) = v62 | 2;
  }

  oSLogObject3 = [sharedDaemonConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v62 = v62;
  }

  else
  {
    v62 &= 2u;
  }

  if (!v62)
  {
    purpose = purposeCopy;
    v45 = kSecClass;
    goto LABEL_77;
  }

  v63 = objc_opt_class();
  v64 = v63;
  v65 = SSHashIfNeeded();
  v66 = [NSNumber numberWithInteger:purposeCopy];
  v67 = [NSNumber numberWithInt:v47];
  v169 = 138544130;
  v170 = v63;
  v171 = 2112;
  v172 = v65;
  v173 = 2112;
  v174 = v66;
  v175 = 2114;
  v176 = v67;
  LODWORD(v155) = 42;
  v55 = _os_log_send_and_compose_impl(v62, 0, 0, 0, &_mh_execute_header, oSLogObject3, 16, "%{public}@: (X509) Private key reset failed for DSID: %@, purpose: %{pulbic}@, status: %{public}@", &v169, v155);

  v13 = &CFDictionaryGetValue_ptr;
  if (v55)
  {
    purpose = purposeCopy;
    v44 = kSecAttrLabel;
LABEL_75:
    v42 = SSVURLProtocolConsumer_ptr;
    v45 = kSecClass;
    oSLogObject3 = [NSString stringWithCString:v55 encoding:4];
    free(v55);
    v151 = oSLogObject3;
    SSFileLog();
LABEL_77:

    goto LABEL_80;
  }

  purpose = purposeCopy;
  v44 = kSecAttrLabel;
LABEL_79:
  v42 = SSVURLProtocolConsumer_ptr;
  v45 = kSecClass;
LABEL_80:

  v68 = [ISBiometricStore keychainLabelForCertWithAccountID:v164 purpose:purpose];

  v69 = objc_alloc_init(v42[479]);
  [v69 setObject:v68 forKeyedSubscript:v44];
  [v69 setObject:kSecClassCertificate forKeyedSubscript:v45];
  v157 = v69;
  v70 = SecItemDelete(v69);
  v161 = v68;
  if (!v70)
  {
    sharedDaemonConfig2 = [v13[412] sharedDaemonConfig];
    if (!sharedDaemonConfig2)
    {
      sharedDaemonConfig2 = [v13[412] sharedConfig];
    }

    LODWORD(v81) = [sharedDaemonConfig2 shouldLog];
    if ([sharedDaemonConfig2 shouldLogToDisk])
    {
      LODWORD(v81) = v81 | 2;
    }

    oSLogObject4 = [sharedDaemonConfig2 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v81 = v81;
    }

    else
    {
      v81 &= 2u;
    }

    if (!v81)
    {
      goto LABEL_115;
    }

    v75 = v44;
    v82 = objc_opt_class();
    v77 = v82;
    v78 = SSHashIfNeeded();
    v79 = [NSNumber numberWithInteger:purpose];
    v169 = 138543874;
    v170 = v82;
    v171 = 2112;
    v172 = v78;
    v173 = 2114;
    v174 = v79;
    LODWORD(v155) = 32;
    v80 = _os_log_send_and_compose_impl(v81, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%{public}@: (X509) Public key cert reset for DSID: %@, purpose: %{public}@", &v169, v155);
LABEL_100:
    v83 = v80;

    v13 = &CFDictionaryGetValue_ptr;
    v44 = v75;
    if (v83)
    {
      v68 = v161;
LABEL_112:
      v42 = SSVURLProtocolConsumer_ptr;
      v45 = kSecClass;
      oSLogObject4 = [NSString stringWithCString:v83 encoding:4];
      free(v83);
      v152 = oSLogObject4;
      SSFileLog();
LABEL_115:

      goto LABEL_118;
    }

    v68 = v161;
    goto LABEL_117;
  }

  v71 = v70;
  if (v70 == -25300)
  {
    sharedDaemonConfig2 = [v13[412] sharedDaemonConfig];
    if (!sharedDaemonConfig2)
    {
      sharedDaemonConfig2 = [v13[412] sharedConfig];
    }

    LODWORD(v73) = [sharedDaemonConfig2 shouldLog];
    if ([sharedDaemonConfig2 shouldLogToDisk])
    {
      LODWORD(v73) = v73 | 2;
    }

    oSLogObject4 = [sharedDaemonConfig2 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
    {
      v73 = v73;
    }

    else
    {
      v73 &= 2u;
    }

    if (!v73)
    {
      goto LABEL_115;
    }

    v75 = v44;
    v76 = objc_opt_class();
    v77 = v76;
    v78 = SSHashIfNeeded();
    v79 = [NSNumber numberWithInteger:purpose];
    v169 = 138543874;
    v170 = v76;
    v171 = 2112;
    v172 = v78;
    v173 = 2114;
    v174 = v79;
    LODWORD(v155) = 32;
    v80 = _os_log_send_and_compose_impl(v73, 0, 0, 0, &_mh_execute_header, oSLogObject4, 2, "%{public}@: (X509) Public key cert not found while resetting keychain for DSID: %@, purpose: %{public}@", &v169, v155);
    goto LABEL_100;
  }

  v156 = v44;
  v84 = SSError();

  v85 = [NSNumber numberWithInt:v71];
  v163 = SSErrorBySettingUserInfoValue();

  sharedDaemonConfig2 = [v13[412] sharedDaemonConfig];
  if (!sharedDaemonConfig2)
  {
    sharedDaemonConfig2 = [v13[412] sharedConfig];
  }

  shouldLog4 = [sharedDaemonConfig2 shouldLog];
  if ([sharedDaemonConfig2 shouldLogToDisk])
  {
    shouldLog4 |= 2u;
  }

  oSLogObject4 = [sharedDaemonConfig2 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
  {
    v87 = shouldLog4;
  }

  else
  {
    v87 = shouldLog4 & 2;
  }

  if (!v87)
  {
    purpose = purposeCopy;
    v68 = v161;
    v45 = kSecClass;
    v44 = v156;
    goto LABEL_115;
  }

  v88 = objc_opt_class();
  v89 = v88;
  v90 = SSHashIfNeeded();
  v91 = [NSNumber numberWithInteger:purposeCopy];
  v92 = [NSNumber numberWithInt:v71];
  v169 = 138544130;
  v170 = v88;
  v171 = 2112;
  v172 = v90;
  v173 = 2112;
  v174 = v91;
  v175 = 2114;
  v176 = v92;
  LODWORD(v155) = 42;
  v83 = _os_log_send_and_compose_impl(v87, 0, 0, 0, &_mh_execute_header, oSLogObject4, 16, "%{public}@: (X509) Public key cert reset failed for DSID: %@, purpose: %{pulbic}@, status: %{public}@", &v169, v155);

  v13 = &CFDictionaryGetValue_ptr;
  if (v83)
  {
    purpose = purposeCopy;
    v68 = v161;
    v44 = v156;
    goto LABEL_112;
  }

  purpose = purposeCopy;
  v68 = v161;
  v44 = v156;
LABEL_117:
  v42 = SSVURLProtocolConsumer_ptr;
  v45 = kSecClass;
LABEL_118:

  v93 = objc_alloc_init(v42[479]);
  [v93 setObject:ISBiometricsIntermediateCertKeychainLabel forKeyedSubscript:v44];
  [v93 setObject:kSecClassCertificate forKeyedSubscript:v45];
  v94 = SecItemDelete(v93);
  if (!v94)
  {
    sharedDaemonConfig3 = [v13[412] sharedDaemonConfig];
    v96 = v163;
    v98 = v157;
    if (!sharedDaemonConfig3)
    {
      sharedDaemonConfig3 = [v13[412] sharedConfig];
    }

    LODWORD(v105) = [sharedDaemonConfig3 shouldLog];
    if ([sharedDaemonConfig3 shouldLogToDisk])
    {
      LODWORD(v105) = v105 | 2;
    }

    oSLogObject5 = [sharedDaemonConfig3 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
    {
      v105 = v105;
    }

    else
    {
      v105 &= 2u;
    }

    if (!v105)
    {
      goto LABEL_154;
    }

    v106 = objc_opt_class();
    v102 = v106;
    v103 = SSHashIfNeeded();
    v169 = 138543618;
    v170 = v106;
    v171 = 2112;
    v172 = v103;
    LODWORD(v155) = 22;
    v104 = _os_log_send_and_compose_impl(v105, 0, 0, 0, &_mh_execute_header, oSLogObject5, 1, "%{public}@: (X509) Intermediate cert reset for DSID: %@", &v169, v155);
LABEL_138:
    v107 = v104;

    v13 = &CFDictionaryGetValue_ptr;
    if (!v107)
    {
      purpose = purposeCopy;
      goto LABEL_155;
    }

    purpose = purposeCopy;
    goto LABEL_151;
  }

  v95 = v94;
  v96 = v163;
  if (v94 == -25300)
  {
    sharedDaemonConfig3 = [v13[412] sharedDaemonConfig];
    v98 = v157;
    if (!sharedDaemonConfig3)
    {
      sharedDaemonConfig3 = [v13[412] sharedConfig];
    }

    LODWORD(v99) = [sharedDaemonConfig3 shouldLog];
    if ([sharedDaemonConfig3 shouldLogToDisk])
    {
      LODWORD(v99) = v99 | 2;
    }

    oSLogObject5 = [sharedDaemonConfig3 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
    {
      v99 = v99;
    }

    else
    {
      v99 &= 2u;
    }

    if (!v99)
    {
      goto LABEL_154;
    }

    v101 = objc_opt_class();
    v102 = v101;
    v103 = SSHashIfNeeded();
    v169 = 138543618;
    v170 = v101;
    v171 = 2112;
    v172 = v103;
    LODWORD(v155) = 22;
    v104 = _os_log_send_and_compose_impl(v99, 0, 0, 0, &_mh_execute_header, oSLogObject5, 1, "%{public}@: (X509) Intermediate cert not found while resetting keychain for DSID: %@", &v169, v155);
    goto LABEL_138;
  }

  v108 = SSError();

  v109 = [NSNumber numberWithInt:v95];
  v110 = SSErrorBySettingUserInfoValue();

  sharedDaemonConfig3 = [v13[412] sharedDaemonConfig];
  if (!sharedDaemonConfig3)
  {
    sharedDaemonConfig3 = [v13[412] sharedConfig];
  }

  shouldLog5 = [sharedDaemonConfig3 shouldLog];
  if ([sharedDaemonConfig3 shouldLogToDisk])
  {
    v112 = shouldLog5 | 2;
  }

  else
  {
    v112 = shouldLog5;
  }

  oSLogObject5 = [sharedDaemonConfig3 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
  {
    v113 = v112;
  }

  else
  {
    v113 = v112 & 2;
  }

  if (!v113)
  {
    v13 = &CFDictionaryGetValue_ptr;
    v96 = v110;
    v68 = v161;
    v98 = v157;
    goto LABEL_154;
  }

  v114 = objc_opt_class();
  v115 = v114;
  v116 = SSHashIfNeeded();
  v117 = [NSNumber numberWithInt:v95];
  v169 = 138543874;
  v170 = v114;
  v171 = 2112;
  v172 = v116;
  v173 = 2114;
  v174 = v117;
  LODWORD(v155) = 32;
  v107 = _os_log_send_and_compose_impl(v113, 0, 0, 0, &_mh_execute_header, oSLogObject5, 16, "%{public}@: Intermediate cert reset failed for DSID: %@, status: %{public}@", &v169, v155);

  v13 = &CFDictionaryGetValue_ptr;
  v96 = v110;
  if (v107)
  {
    purpose = purposeCopy;
    v68 = v161;
    v98 = v157;
LABEL_151:
    oSLogObject5 = [NSString stringWithCString:v107 encoding:4];
    free(v107);
    v153 = oSLogObject5;
    SSFileLog();
LABEL_154:

    goto LABEL_155;
  }

  purpose = purposeCopy;
  v68 = v161;
  v98 = v157;
LABEL_155:

  v118 = objc_alloc_init(AMSKeychainOptions);
  [v118 setStyle:{+[AMSKeychainOptions preferredAttestationStyle](AMSKeychainOptions, "preferredAttestationStyle")}];
  if (purpose <= 1)
  {
    [v118 setPurpose:purpose];
  }

  style = [v118 style];
  sharedDaemonConfig4 = [v13[412] sharedDaemonConfig];
  sharedConfig = sharedDaemonConfig4;
  if (!style)
  {
    if (!sharedDaemonConfig4)
    {
      sharedConfig = [v13[412] sharedConfig];
    }

    shouldLog6 = [sharedConfig shouldLog];
    if ([sharedConfig shouldLogToDisk])
    {
      LODWORD(v130) = shouldLog6 | 2;
    }

    else
    {
      LODWORD(v130) = shouldLog6;
    }

    oSLogObject6 = [sharedConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
    {
      v130 = v130;
    }

    else
    {
      v130 &= 2u;
    }

    if (v130)
    {
      v132 = objc_opt_class();
      v169 = 138543362;
      v170 = v132;
      v133 = v132;
      LODWORD(v155) = 12;
      v134 = _os_log_send_and_compose_impl(v130, 0, 0, 0, &_mh_execute_header, oSLogObject6, 0, "%{public}@: Deleting X509 cert AMS tokens", &v169, v155);

      if (!v134)
      {
LABEL_184:

        v167 = v96;
        [AMSKeychain deleteCertificateChainWithOptions:v118 error:&v167];
        v128 = v167;
        goto LABEL_185;
      }

      oSLogObject6 = [NSString stringWithCString:v134 encoding:4];
      free(v134);
      v154 = oSLogObject6;
      SSFileLog();
    }

    goto LABEL_184;
  }

  if (style == 1)
  {
    if (!sharedDaemonConfig4)
    {
      sharedConfig = [v13[412] sharedConfig];
    }

    shouldLog7 = [sharedConfig shouldLog];
    if ([sharedConfig shouldLogToDisk])
    {
      LODWORD(v123) = shouldLog7 | 2;
    }

    else
    {
      LODWORD(v123) = shouldLog7;
    }

    oSLogObject7 = [sharedConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
    {
      v123 = v123;
    }

    else
    {
      v123 &= 2u;
    }

    if (v123)
    {
      v125 = objc_opt_class();
      v169 = 138543362;
      v170 = v125;
      v126 = v125;
      LODWORD(v155) = 12;
      v127 = _os_log_send_and_compose_impl(v123, 0, 0, 0, &_mh_execute_header, oSLogObject7, 0, "%{public}@: Deleting legacy AMS tokens", &v169, v155);

      if (!v127)
      {
LABEL_171:

        v168 = v96;
        [AMSKeychain deleteKeyPairWithOptions:v118 error:&v168];
        v128 = v168;
LABEL_185:
        sharedConfig = v96;
        v96 = v128;
        goto LABEL_198;
      }

      oSLogObject7 = [NSString stringWithCString:v127 encoding:4];
      free(v127);
      v154 = oSLogObject7;
      SSFileLog();
    }

    goto LABEL_171;
  }

  if (!sharedDaemonConfig4)
  {
    sharedConfig = [v13[412] sharedConfig];
  }

  shouldLog8 = [sharedConfig shouldLog];
  if ([sharedConfig shouldLogToDisk])
  {
    LODWORD(v136) = shouldLog8 | 2;
  }

  else
  {
    LODWORD(v136) = shouldLog8;
  }

  oSLogObject8 = [sharedConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
  {
    v136 = v136;
  }

  else
  {
    v136 &= 2u;
  }

  if (v136)
  {
    v138 = objc_opt_class();
    v169 = 138543362;
    v170 = v138;
    v139 = v138;
    LODWORD(v155) = 12;
    v140 = _os_log_send_and_compose_impl(v136, 0, 0, 0, &_mh_execute_header, oSLogObject8, 0, "%{public}@: Skipping AMS token deletion", &v169, v155);

    if (!v140)
    {
      goto LABEL_198;
    }

    oSLogObject8 = [NSString stringWithCString:v140 encoding:4];
    free(v140);
    v154 = oSLogObject8;
    SSFileLog();
  }

LABEL_198:
  if (!v96)
  {
    goto LABEL_212;
  }

  sharedDaemonConfig5 = [v13[412] sharedDaemonConfig];
  if (!sharedDaemonConfig5)
  {
    sharedDaemonConfig5 = [v13[412] sharedConfig];
  }

  shouldLog9 = [sharedDaemonConfig5 shouldLog];
  if ([sharedDaemonConfig5 shouldLogToDisk])
  {
    LODWORD(v143) = shouldLog9 | 2;
  }

  else
  {
    LODWORD(v143) = shouldLog9;
  }

  oSLogObject9 = [sharedDaemonConfig5 OSLogObject];
  if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
  {
    v143 = v143;
  }

  else
  {
    v143 &= 2u;
  }

  if (!v143)
  {
    goto LABEL_210;
  }

  v145 = objc_opt_class();
  v169 = 138543618;
  v170 = v145;
  v171 = 2114;
  v172 = v96;
  v146 = v145;
  LODWORD(v155) = 22;
  v147 = _os_log_send_and_compose_impl(v143, 0, 0, 0, &_mh_execute_header, oSLogObject9, 16, "%{public}@: Delete AMS sync tokens failed with error: %{public}@", &v169, v155);

  if (v147)
  {
    oSLogObject9 = [NSString stringWithCString:v147 encoding:4];
    free(v147);
    SSFileLog();
LABEL_210:
  }

LABEL_212:
  if (errorCopy)
  {
    v148 = v96;
    *errorCopy = v96;
  }

  return v96 == 0;
}

- (BOOL)_generateKeychainTokensForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  identifierCopy = identifier;
  v88 = 0;
  [(DaemonBiometricKeychain *)self _deleteKeychainTokensForAccountIdentifier:identifierCopy purpose:purpose error:&v88];
  errorCopy3 = v88;
  identifierCopy = [NSString stringWithFormat:@"%@", identifierCopy];
  errorCopy = error;
  if (errorCopy3)
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = identifierCopy;
    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      LODWORD(v14) = shouldLog | 2;
    }

    else
    {
      LODWORD(v14) = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      v17 = v16;
      v18 = identifierCopy;
      v19 = SSHashIfNeeded();
      localizedDescription = [(__CFError *)errorCopy3 localizedDescription];
      v89 = 138543874;
      v90 = v16;
      v91 = 2112;
      v92 = v19;
      v93 = 2114;
      errorCopy4 = localizedDescription;
      v21 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Keypair generation failed with no reset for DSID: %@, error: %{public}@", &v89, 32);

      if (!v21)
      {
LABEL_33:

        v33 = 0;
        identifierCopy = v18;
        identifierCopy = v12;
        error = errorCopy;
        goto LABEL_98;
      }

      oSLogObject = [NSString stringWithCString:v21 encoding:4];
      free(v21);
      SSFileLog();
    }

    else
    {
      v18 = identifierCopy;
    }

    goto LABEL_33;
  }

  publicKey = 0;
  privateKey = 0;
  error = 0;
  v22 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleWhenUnlockedThisDeviceOnly, 0x40000002uLL, &error);
  v23 = v22;
  if (v22)
  {
    v24 = error == 0;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    v83 = v22;
    if (purpose == 1)
    {
      _constraintsForExtendedActions = [(DaemonBiometricKeychain *)self _constraintsForExtendedActions];
    }

    else
    {
      if (purpose)
      {
        goto LABEL_50;
      }

      _constraintsForExtendedActions = [(DaemonBiometricKeychain *)self _constraintsForPurchase];
    }

    v35 = _constraintsForExtendedActions;
    if (_constraintsForExtendedActions)
    {
      errorCopy2 = error;
      v81 = identifierCopy;
      SecAccessControlSetConstraints();
      oSLogObject3 = +[SSLogConfig sharedDaemonConfig];
      if (!oSLogObject3)
      {
        oSLogObject3 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [oSLogObject3 shouldLog];
      if ([oSLogObject3 shouldLogToDisk])
      {
        v39 = shouldLog2 | 2;
      }

      else
      {
        v39 = shouldLog2;
      }

      oSLogObject2 = [oSLogObject3 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v39;
      }

      else
      {
        v41 = v39 & 2;
      }

      if (!v41)
      {
        error = errorCopy2;
        goto LABEL_62;
      }

      v42 = objc_opt_class();
      v79 = v42;
      v43 = SSHashIfNeeded();
      v44 = [NSNumber numberWithInteger:purpose];
      v89 = 138543874;
      v90 = v42;
      v91 = 2112;
      v92 = v43;
      v93 = 2114;
      errorCopy4 = v44;
      v45 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Configured biometric keypair ACL constraints for DSID: %@, purpose: %{public}@", &v89, 32);

      if (v45)
      {
        oSLogObject2 = [NSString stringWithCString:v45 encoding:4];
        free(v45);
        v74 = oSLogObject2;
        SSFileLog();
        v23 = v83;
        error = errorCopy;
LABEL_62:

        goto LABEL_63;
      }

LABEL_60:
      v23 = v83;
      error = errorCopy;
LABEL_63:
      identifierCopy = v81;
LABEL_64:

      goto LABEL_65;
    }

LABEL_50:
    v35 = +[SSLogConfig sharedDaemonConfig];
    if (!v35)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject3 = [v35 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v47 = shouldLog3;
    }

    else
    {
      v47 = shouldLog3 & 2;
    }

    if (!v47)
    {
      goto LABEL_64;
    }

    v48 = objc_opt_class();
    v49 = v48;
    v81 = identifierCopy;
    v50 = SSHashIfNeeded();
    v51 = [NSNumber numberWithInteger:purpose];
    v89 = 138543874;
    v90 = v48;
    v91 = 2112;
    v92 = v50;
    v93 = 2114;
    errorCopy4 = v51;
    v52 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &_mh_execute_header, oSLogObject3, 16, "%{public}@: Failed to configure biometric keypair ACL constraints for DSID: %@, purpose: %{public}@", &v89, 32);

    if (!v52)
    {
      v23 = v83;
      error = errorCopy;
      identifierCopy = v81;
LABEL_65:

      v53 = [ISBiometricStore keychainLabelForAccountID:identifierCopy purpose:purpose];
      v54 = objc_alloc_init(NSMutableDictionary);
      [v54 setObject:v23 forKey:kSecAttrAccessControl];
      [v54 setObject:&__kCFBooleanTrue forKey:kSecAttrIsPermanent];
      v82 = v53;
      [v54 setObject:v53 forKey:kSecAttrLabel];
      v55 = objc_alloc_init(NSMutableDictionary);
      [v55 setObject:kSecAttrTokenIDSecureEnclave forKey:kSecAttrTokenID];
      [v55 setObject:kSecAttrKeyTypeECSECPrimeRandom forKey:kSecAttrKeyType];
      [v55 setObject:&off_10034BF58 forKey:kSecAttrKeySizeInBits];
      v80 = v54;
      [v55 setObject:v54 forKey:kSecPrivateKeyAttrs];
      v78 = v55;
      v56 = SecKeyGeneratePair(v55, &publicKey, &privateKey);
      v33 = v56 == 0;
      if (v56)
      {
        v57 = v56;
        v58 = SSError();
        v59 = [NSNumber numberWithInt:v57];
        errorCopy3 = SSErrorBySettingUserInfoValue();

        v60 = +[SSLogConfig sharedDaemonConfig];
        if (!v60)
        {
          v60 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v61) = [v60 shouldLog];
        if ([v60 shouldLogToDisk])
        {
          LODWORD(v61) = v61 | 2;
        }

        oSLogObject4 = [v60 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
        {
          v61 = v61;
        }

        else
        {
          v61 &= 2u;
        }

        if (!v61)
        {
          v23 = v83;
          error = errorCopy;
          goto LABEL_90;
        }

        v77 = identifierCopy;
        v63 = objc_opt_class();
        v76 = v63;
        v64 = identifierCopy;
        v65 = SSHashIfNeeded();
        v66 = [NSNumber numberWithInt:v57];
        v89 = 138543874;
        v90 = v63;
        v91 = 2112;
        v92 = v65;
        v93 = 2114;
        errorCopy4 = v66;
        LODWORD(v75) = 32;
        v67 = _os_log_send_and_compose_impl(v61, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%{public}@: Keypair generation failed for DSID: %@, status: %{public}@", &v89, v75);

        if (!v67)
        {
          v23 = v83;
          error = errorCopy;
          identifierCopy = v64;
          identifierCopy = v77;
LABEL_91:

LABEL_92:
          CFRelease(v23);
          if (privateKey)
          {
            CFRelease(privateKey);
          }

          goto LABEL_94;
        }

        v23 = v83;
        error = errorCopy;
        identifierCopy = v64;
        identifierCopy = v77;
      }

      else
      {
        v60 = +[SSLogConfig sharedDaemonConfig];
        if (!v60)
        {
          v60 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v68) = [v60 shouldLog];
        if ([v60 shouldLogToDisk])
        {
          LODWORD(v68) = v68 | 2;
        }

        oSLogObject4 = [v60 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
        {
          v68 = v68;
        }

        else
        {
          v68 &= 2u;
        }

        if (!v68)
        {
          errorCopy3 = 0;
          goto LABEL_90;
        }

        v69 = objc_opt_class();
        v70 = v69;
        v71 = SSHashIfNeeded();
        v89 = 138543618;
        v90 = v69;
        v91 = 2112;
        v92 = v71;
        LODWORD(v75) = 22;
        v67 = _os_log_send_and_compose_impl(v68, 0, 0, 0, &_mh_execute_header, oSLogObject4, 2, "%{public}@: Keypair generated for DSID: %@", &v89, v75);

        errorCopy3 = 0;
        if (!v67)
        {
          error = errorCopy;
          goto LABEL_91;
        }

        error = errorCopy;
      }

      oSLogObject4 = [NSString stringWithCString:v67 encoding:4];
      free(v67);
      SSFileLog();
LABEL_90:

      goto LABEL_91;
    }

    oSLogObject3 = [NSString stringWithCString:v52 encoding:4];
    free(v52);
    v74 = oSLogObject3;
    SSFileLog();
    goto LABEL_60;
  }

  errorCopy3 = error;
  v25 = +[SSLogConfig sharedDaemonConfig];
  if (!v25)
  {
    v25 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    LODWORD(v27) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v27) = shouldLog4;
  }

  oSLogObject5 = [v25 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
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
    v30 = v29;
    v31 = SSHashIfNeeded();
    v89 = 138543874;
    v90 = v29;
    v91 = 2112;
    v92 = v31;
    v93 = 2114;
    errorCopy4 = error;
    v32 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%{public}@: Access control creation failed for DSID: %@, error: %{public}@", &v89, 32);

    if (!v32)
    {
      goto LABEL_29;
    }

    oSLogObject5 = [NSString stringWithCString:v32 encoding:4];
    free(v32);
    SSFileLog();
  }

LABEL_29:
  v33 = 0;
  error = errorCopy;
  if (v23)
  {
    goto LABEL_92;
  }

LABEL_94:
  if (publicKey)
  {
    CFRelease(publicKey);
  }

  if (error)
  {
    CFRelease(error);
  }

LABEL_98:
  if (error)
  {
    v72 = errorCopy3;
    *error = errorCopy3;
  }

  return v33;
}

- (id)_presentPaymentSheetForChallenge:(id)challenge authContext:(id)context biometricContext:(id)biometricContext touchIDContext:(id)dContext touchIDOptions:(id)options accessControlRef:(__SecAccessControl *)ref passwordToken:(id *)token paymentTokenData:(id *)self0 fpanID:(id *)self1 error:(id *)self2
{
  challengeCopy = challenge;
  contextCopy = context;
  biometricContextCopy = biometricContext;
  dContextCopy = dContext;
  optionsCopy = options;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = sub_1001542B0;
  v81 = sub_1001542C0;
  v82 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_1001542B0;
  v75 = sub_1001542C0;
  v76 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = sub_1001542B0;
  v69 = sub_1001542C0;
  v70 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_1001542B0;
  v63 = sub_1001542C0;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_1001542B0;
  v57 = sub_1001542C0;
  v58 = 0;
  v19 = [NSString stringWithFormat:@"%@", objc_opt_class()];
  v20 = [DisplayPaymentSheetOperation alloc];
  paymentSheet = [biometricContextCopy paymentSheet];
  v22 = [(DisplayPaymentSheetOperation *)v20 initWithPaymentSheet:paymentSheet];

  accountIdentifier = [biometricContextCopy accountIdentifier];
  [(DisplayPaymentSheetOperation *)v22 setAccountIdentifier:accountIdentifier];

  [(DisplayPaymentSheetOperation *)v22 setAuthenticationContext:contextCopy];
  username = [contextCopy username];
  [(DisplayPaymentSheetOperation *)v22 setAccountName:username];

  [(DisplayPaymentSheetOperation *)v22 setChallenge:challengeCopy];
  -[DisplayPaymentSheetOperation setTouchIDDelayEnabled:](v22, "setTouchIDDelayEnabled:", [biometricContextCopy touchIDDelayEnabled]);
  dialogId = [biometricContextCopy dialogId];
  [(DisplayPaymentSheetOperation *)v22 setDialogId:dialogId];

  [(DisplayPaymentSheetOperation *)v22 setLocalAuthAccessControlRef:ref];
  [(DisplayPaymentSheetOperation *)v22 setLocalAuthContext:dContextCopy];
  [(DisplayPaymentSheetOperation *)v22 setLocalAuthOptions:optionsCopy];
  userAgent = [biometricContextCopy userAgent];
  [(DisplayPaymentSheetOperation *)v22 setUserAgent:userAgent];

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100161A7C;
  v46[3] = &unk_10032A098;
  v27 = v19;
  v47 = v27;
  v48 = &v71;
  v49 = &v77;
  v50 = &v65;
  v51 = &v59;
  v52 = &v53;
  [(DisplayPaymentSheetOperation *)v22 setCompletionHandlerForAutoEnrollment:v46];
  v28 = [[DisplayPaymentSheetContainerOperation alloc] initWithDisplayPaymentSheetOperation:v22];
  v29 = +[SSLogConfig sharedDaemonConfig];
  if (!v29)
  {
    v29 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v30) = [v29 shouldLog];
  shouldLogToDisk = [v29 shouldLogToDisk];
  oSLogObject = [v29 OSLogObject];
  v33 = oSLogObject;
  if (shouldLogToDisk)
  {
    LODWORD(v30) = v30 | 2;
  }

  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v30;
  }

  else
  {
    v30 &= 2u;
  }

  if (!v30)
  {
    goto LABEL_11;
  }

  v34 = objc_opt_class();
  v83 = 138543362;
  v84 = v34;
  v35 = v34;
  v36 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, v33, 0, "%{public}@: Presenting payment sheet", &v83, 12);

  if (v36)
  {
    v33 = [NSString stringWithCString:v36 encoding:4];
    free(v36);
    SSFileLog();
LABEL_11:
  }

  [(DisplayPaymentSheetContainerOperation *)v28 start];
  if (!v72[5])
  {
    error = [(DisplayPaymentSheetContainerOperation *)v28 error];
    v38 = error == 0;

    if (!v38)
    {
      error2 = [(DisplayPaymentSheetContainerOperation *)v28 error];
      v40 = v72[5];
      v72[5] = error2;
    }
  }

  if (token)
  {
    *token = v66[5];
  }

  if (data)
  {
    *data = v60[5];
  }

  if (d)
  {
    *d = v54[5];
  }

  if (error)
  {
    *error = v72[5];
  }

  v41 = v78[5];

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v71, 8);

  _Block_object_dispose(&v77, 8);

  return v41;
}

- (id)_publicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose regenerateKeys:(BOOL)keys error:(id *)error
{
  keysCopy = keys;
  identifierCopy = identifier;
  v73 = 0;
  v11 = [(DaemonBiometricKeychain *)self _copyPublicKeyDataForAccountIdentifier:identifierCopy purpose:purpose error:&v73];
  v12 = v73;
  v13 = v12;
  if (v11 || !keysCopy)
  {
LABEL_32:
    if (!error)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  domain = [v12 domain];
  v15 = [domain isEqualToString:SSErrorDomain];

  if (!v15)
  {
    v11 = 0;
    goto LABEL_32;
  }

  identifierCopy = [NSString stringWithFormat:@"%@", identifierCopy];
  userInfo = [v13 userInfo];
  v17 = [userInfo objectForKey:SSErrorKeychainStatusCodeKey];
  integerValue = [v17 integerValue];

  if (integerValue != -25300 || ![(DaemonBiometricKeychain *)self _isDeviceUnlocked])
  {
    errorCopy = error;
    v44 = +[SSLogConfig sharedDaemonConfig];
    if (!v44)
    {
      v44 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v44 shouldLog];
    if ([v44 shouldLogToDisk])
    {
      v46 = shouldLog | 2;
    }

    else
    {
      v46 = shouldLog;
    }

    oSLogObject = [v44 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v46;
    }

    else
    {
      v48 = v46 & 2;
    }

    if (v48)
    {
      v49 = objc_opt_class();
      v50 = v49;
      v51 = SSHashIfNeeded();
      v74 = 138543618;
      v75 = v49;
      v76 = 2112;
      v77 = v51;
      v52 = _os_log_send_and_compose_impl(v48, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Public key not found, copy failed for DSID: %@. Generating new key-pair.", &v74, 22);

      error = errorCopy;
      if (!v52)
      {
LABEL_49:

        v69 = v13;
        v11 = [(DaemonBiometricKeychain *)self _regenerateKeychainTokensForAccountIdentifier:identifierCopy purpose:purpose error:&v69];
        v53 = v69;
LABEL_50:
        v31 = v53;

        goto LABEL_51;
      }

      oSLogObject = [NSString stringWithCString:v52 encoding:4];
      free(v52);
      SSFileLog();
    }

    goto LABEL_49;
  }

  v19 = +[ISBiometricStore shouldUseX509];
  v20 = +[SSLogConfig sharedDaemonConfig];
  v21 = v20;
  if (!v19)
  {
    if (!v20)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v55 = shouldLog2 | 2;
    }

    else
    {
      v55 = shouldLog2;
    }

    oSLogObject2 = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v57 = v55;
    }

    else
    {
      v57 = v55 & 2;
    }

    if (v57)
    {
      v58 = objc_opt_class();
      v67 = v58;
      SSHashIfNeeded();
      v60 = v59 = error;
      v74 = 138543618;
      v75 = v58;
      v76 = 2112;
      v77 = v60;
      v61 = _os_log_send_and_compose_impl(v57, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Public key not found, copy failed for DSID: %@. Generating new keypair.", &v74, 22);

      error = v59;
      if (!v61)
      {
LABEL_65:

        v70 = v13;
        v11 = [(DaemonBiometricKeychain *)self _regenerateKeychainTokensForAccountIdentifier:identifierCopy purpose:purpose error:&v70];
        v53 = v70;
        goto LABEL_50;
      }

      oSLogObject2 = [NSString stringWithCString:v61 encoding:4];
      free(v61);
      SSFileLog();
    }

    goto LABEL_65;
  }

  errorCopy2 = error;
  if (!v20)
  {
    v21 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    v23 = shouldLog3 | 2;
  }

  else
  {
    v23 = shouldLog3;
  }

  oSLogObject3 = [v21 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v23;
  }

  else
  {
    v25 = v23 & 2;
  }

  if (v25)
  {
    v26 = objc_opt_class();
    v64 = v26;
    v27 = SSHashIfNeeded();
    v28 = [NSNumber numberWithInteger:purpose];
    v74 = 138543874;
    v75 = v26;
    v76 = 2112;
    v77 = v27;
    v78 = 2114;
    v79 = v28;
    v29 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%{public}@: Public key not found, creating new X509 cert chain for DSID: %@, purpose: %{public}@", &v74, 32);

    if (!v29)
    {
      goto LABEL_19;
    }

    oSLogObject3 = [NSString stringWithCString:v29 encoding:4];
    free(v29);
    v62 = oSLogObject3;
    SSFileLog();
  }

LABEL_19:
  v72 = v13;
  v30 = [(DaemonBiometricKeychain *)self createX509CertChainDataForAccountIdentifier_:identifierCopy purpose:purpose error:&v72];
  v31 = v72;

  if (!v31)
  {
    v71 = 0;
    v11 = [(DaemonBiometricKeychain *)self _copyPublicKeyDataForAccountIdentifier:identifierCopy purpose:purpose error:&v71];
    v31 = v71;
    error = errorCopy2;
    goto LABEL_51;
  }

  v32 = +[SSLogConfig sharedDaemonConfig];
  if (!v32)
  {
    v32 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v32 shouldLog];
  if ([v32 shouldLogToDisk])
  {
    v34 = shouldLog4 | 2;
  }

  else
  {
    v34 = shouldLog4;
  }

  oSLogObject4 = [v32 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
  {
    v36 = v34;
  }

  else
  {
    v36 = v34 & 2;
  }

  if (!v36)
  {
    error = errorCopy2;
    goto LABEL_68;
  }

  v37 = objc_opt_class();
  v38 = v37;
  v39 = SSHashIfNeeded();
  v40 = [NSNumber numberWithInteger:purpose];
  v74 = 138544130;
  v75 = v37;
  v76 = 2112;
  v77 = v39;
  v78 = 2114;
  v79 = v40;
  v80 = 2114;
  v81 = v31;
  LODWORD(v63) = 42;
  v41 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, oSLogObject4, 16, "%{public}@: Failed to create X509 cert chain for DSID: %@, purpose: %{public}@, error: %{public}@", &v74, v63);

  error = errorCopy2;
  if (v41)
  {
    oSLogObject4 = [NSString stringWithCString:v41 encoding:4];
    free(v41);
    SSFileLog();
LABEL_68:
  }

  v11 = 0;
LABEL_51:

  v13 = v31;
  if (error)
  {
LABEL_33:
    v42 = v13;
    *error = v13;
  }

LABEL_34:

  return v11;
}

- (id)_queryForPrivateKeyWithLabel:(id)label prompt:(id)prompt useTokenID:(BOOL)d
{
  dCopy = d;
  labelCopy = label;
  promptCopy = prompt;
  if (!labelCopy)
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      LODWORD(v13) = shouldLog | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v18 = 138543362;
      v19 = objc_opt_class();
      v15 = v19;
      v16 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Query dictionary failed with no label", &v18, 12);

      if (!v16)
      {
LABEL_19:

        v10 = 0;
        goto LABEL_20;
      }

      oSLogObject = [NSString stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog();
    }

    goto LABEL_19;
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setObject:kSecClassKey forKey:kSecClass];
  [v9 setObject:kSecAttrKeyClassPrivate forKey:kSecAttrKeyClass];
  [v9 setObject:&__kCFBooleanTrue forKey:kSecReturnRef];
  [v9 setObject:labelCopy forKey:kSecAttrLabel];
  if (promptCopy)
  {
    [v9 setObject:promptCopy forKey:kSecUseOperationPrompt];
  }

  if (dCopy)
  {
    [v9 setObject:kSecAttrTokenIDSecureEnclave forKey:kSecAttrTokenID];
  }

  v10 = [NSDictionary dictionaryWithDictionary:v9];

LABEL_20:

  return v10;
}

- (id)_regenerateKeychainTokensForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  identifierCopy = identifier;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_1001542B0;
  v43 = sub_1001542C0;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1001542B0;
  v37 = sub_1001542C0;
  v38 = 0;
  identifierCopy = [NSString stringWithFormat:@"%@", identifierCopy];
  v10 = dispatch_semaphore_create(0);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001630D8;
  block[3] = &unk_10032A0C0;
  v30 = &v39;
  block[4] = self;
  v12 = identifierCopy;
  v31 = &v33;
  purposeCopy = purpose;
  v27 = v12;
  v13 = identifierCopy;
  v28 = v13;
  v14 = v10;
  v29 = v14;
  dispatch_async(dispatchQueue, block);
  v15 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v14, v15);
  if (!v40[5] && !v34[5])
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v17) = [v16 shouldLog];
    shouldLogToDisk = [v16 shouldLogToDisk];
    oSLogObject = [v16 OSLogObject];
    v20 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v17) = v17 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      v22 = SSHashIfNeeded();
      v45 = 138543618;
      v46 = v21;
      v47 = 2112;
      v48 = v22;
      v23 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v20, 0, "%{public}@: Regenerate keychain tokens timed out for DSID: %@", &v45, 22);

      if (!v23)
      {
LABEL_14:

        goto LABEL_15;
      }

      v20 = [NSString stringWithCString:v23 encoding:4];
      free(v23);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  if (error)
  {
    *error = v34[5];
  }

  v24 = v40[5];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v24;
}

- (id)_signData:(id)data context:(id)context error:(id *)error
{
  dataCopy = data;
  contextCopy = context;
  consolidatedDialog = [contextCopy consolidatedDialog];
  reason = [consolidatedDialog reason];

  accountIdentifier = [contextCopy accountIdentifier];
  v70 = [NSString stringWithFormat:@"%@", accountIdentifier];
  v83 = 0;
  v10 = [(DaemonBiometricKeychain *)self copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:contextCopy error:&v83];
  v11 = v83;
  v12 = v11;
  cf = v10;
  if (v10 && !v11)
  {
    errorCopy = error;
    isExtendedAction = [contextCopy isExtendedAction];
    v14 = objc_alloc_init(NSMutableDictionary);
    [v14 setObject:&__kCFBooleanFalse forKey:&off_10034BF70];
    [v14 setObject:&__kCFBooleanTrue forKey:&off_10034BF88];
    [v14 setObject:&off_10034BFA0 forKey:&off_10034BFB8];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"BIO_USE_PASSWORD" value:&stru_10033CC30 table:@"Mesa"];
    [v14 setObject:v16 forKey:&off_10034BFD0];

    if (reason)
    {
      [v14 setObject:reason forKey:&off_10034BFE8];
    }

    v66 = v14;
    v17 = objc_alloc_init(ISWeakLinkedClassForString());
    v18 = +[SSAccountStore defaultStore];
    v19 = [v18 accountWithUniqueIdentifier:accountIdentifier];
    v20 = v19;
    if (v19)
    {
      activeAccount = v19;
    }

    else
    {
      v35 = +[SSAccountStore defaultStore];
      activeAccount = [v35 activeAccount];
    }

    paymentSheet = [contextCopy paymentSheet];
    v37 = [paymentSheet authKitAuthenticationContextForAccount:activeAccount];

    v67 = activeAccount;
    v65 = v17;
    if ([contextCopy isPayment])
    {
      v38 = +[SSLogConfig sharedDaemonConfig];
      if (!v38)
      {
        v38 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v38 shouldLog];
      if ([v38 shouldLogToDisk])
      {
        v40 = shouldLog | 2;
      }

      else
      {
        v40 = shouldLog;
      }

      oSLogObject = [v38 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v40;
      }

      else
      {
        v42 = v40 & 2;
      }

      if (v42)
      {
        v43 = objc_opt_class();
        v84 = 138412290;
        v85 = v43;
        v44 = v43;
        v45 = _os_log_send_and_compose_impl(v42, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Preparing to present payment sheet", &v84, 12);

        if (!v45)
        {
LABEL_36:

          v81 = 0;
          v82 = 0;
          v79 = 0;
          v80 = 0;
          v46 = &v79;
          v47 = v17;
          v48 = v66;
          v49 = cf;
          v34 = [(DaemonBiometricKeychain *)self _presentPaymentSheetForChallenge:dataCopy authContext:v37 biometricContext:contextCopy touchIDContext:v47 touchIDOptions:v66 accessControlRef:cf passwordToken:&v82 paymentTokenData:&v81 fpanID:&v80 error:&v79];
          v33 = v82;
          v32 = v81;
          v50 = v80;
LABEL_53:
          v31 = v50;
LABEL_55:
          v12 = *v46;

          CFRelease(v49);
          if (v33)
          {
            [contextCopy setPasswordEquivalentToken:v33];
          }

          error = errorCopy;
          if (v32)
          {
            [contextCopy setPaymentTokenData:v32];
          }

          if (v31)
          {
            [contextCopy setFpanID:v31];
          }

          goto LABEL_61;
        }

        oSLogObject = [NSString stringWithCString:v45 encoding:4];
        free(v45);
        SSFileLog();
      }

      goto LABEL_36;
    }

    if (!SSDebugShouldUseFileBasedPaymentSheetProxy())
    {
      v74 = 0;
      v46 = &v74;
      v48 = v66;
      v34 = [(DaemonBiometricKeychain *)self signDataWithKeychain:dataCopy accountIdentifier:accountIdentifier purpose:isExtendedAction localAuthContext:v17 localAuthOptions:v66 error:&v74];
      v33 = 0;
      v32 = 0;
      v31 = 0;
      v49 = cf;
      goto LABEL_55;
    }

    v51 = +[SSLogConfig sharedDaemonConfig];
    if (!v51)
    {
      v51 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v51 shouldLog];
    if ([v51 shouldLogToDisk])
    {
      v53 = shouldLog2 | 2;
    }

    else
    {
      v53 = shouldLog2;
    }

    oSLogObject2 = [v51 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v55 = v53;
    }

    else
    {
      v55 = v53 & 2;
    }

    if (v55)
    {
      v56 = objc_opt_class();
      v84 = 138412290;
      v85 = v56;
      v57 = v56;
      v58 = _os_log_send_and_compose_impl(v55, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Preparing to present payment sheet with disk-based payment sheet", &v84, 12);

      if (!v58)
      {
LABEL_50:

        paymentSheet2 = [contextCopy paymentSheet];

        if (!paymentSheet2)
        {
          v60 = +[ISBiometricStore diskBasedPaymentSheet];
          [contextCopy setPaymentSheet:v60];
        }

        v77 = 0;
        v78 = 0;
        v75 = 0;
        v76 = 0;
        v46 = &v75;
        v61 = v17;
        v48 = v66;
        v49 = cf;
        v34 = [(DaemonBiometricKeychain *)self _presentPaymentSheetForChallenge:dataCopy authContext:v37 biometricContext:contextCopy touchIDContext:v61 touchIDOptions:v66 accessControlRef:cf passwordToken:&v78 paymentTokenData:&v77 fpanID:&v76 error:&v75];
        v33 = v78;
        v32 = v77;
        v50 = v76;
        goto LABEL_53;
      }

      oSLogObject2 = [NSString stringWithCString:v58 encoding:4];
      free(v58);
      SSFileLog();
    }

    goto LABEL_50;
  }

  v22 = +[SSLogConfig sharedDaemonConfig];
  if (!v22)
  {
    v22 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v22 shouldLog];
  if ([v22 shouldLogToDisk])
  {
    v24 = shouldLog3 | 2;
  }

  else
  {
    v24 = shouldLog3;
  }

  oSLogObject3 = [v22 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v24;
  }

  else
  {
    v26 = v24 & 2;
  }

  if (!v26)
  {
    goto LABEL_18;
  }

  v27 = objc_opt_class();
  v28 = v27;
  v29 = SSHashIfNeeded();
  v84 = 138543874;
  v85 = v27;
  v86 = 2112;
  v87 = v29;
  v88 = 2114;
  v89 = v12;
  v30 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%{public}@: Access control creation failed for DSID: %@, error: %{public}@", &v84, 32);

  if (v30)
  {
    oSLogObject3 = [NSString stringWithCString:v30 encoding:4];
    free(v30);
    SSFileLog();
LABEL_18:
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
LABEL_61:
  if (error)
  {
    v62 = v12;
    *error = v12;
  }

  v63 = v34;

  return v34;
}

@end