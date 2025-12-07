@interface HMDWalletPassLibrary
+ (id)logCategory;
- (BOOL)isExpressModeEnabledForPassUniqueIdentifier:(id)identifier serialNumber:(id)number;
- (BOOL)removePassWithTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow;
- (HMDWalletPassLibrary)initWithWorkQueue:(id)queue;
- (HMDWalletPassLibraryDelegate)delegate;
- (NSSet)walletKeys;
- (id)createTemporaryPassDirectoryURL;
- (id)nfcInfoFromPaymentApplication:(id)application readerKey:(id)key flow:(id)flow;
- (id)passUniqueIDOfWalletKeyWithTypeIdentifier:(id)identifier serialNumber:(id)number;
- (id)urlForWalletKeyWithTypeIdentifier:(id)identifier serialNumber:(id)number;
- (id)walletKeyWithTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow;
- (void)addPassAtURL:(id)l flow:(id)flow completion:(id)completion;
- (void)deleteKeyMaterialForSubCredentialId:(id)id;
- (void)enableExpressWithAuthData:(id)data passTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow completion:(id)completion;
- (void)fetchExpressEnablementConflictingPassDescriptionForPassAtURL:(id)l completion:(id)completion;
- (void)fetchExpressEnablementConflictingPassDescriptionForPassAtURL:(id)l flow:(id)flow completion:(id)completion;
- (void)fetchHomeKeySupportedWithFlow:(id)flow completion:(id)completion;
- (void)fetchIsExpressEnabledForPassWithTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow completion:(id)completion;
- (void)fetchTransactionKeyForPassWithTypeIdentifier:(id)identifier serialNumber:(id)number completion:(id)completion;
- (void)generateHomeKeyNFCInfoWithReaderPublicKey:(id)key readerIdentifier:(id)identifier flow:(id)flow completion:(id)completion;
- (void)handlePassLibraryDidChangeNotification:(id)notification;
- (void)setExpressSettingsWithAuthData:(id)data enableUWB:(BOOL)b enableNFCExpress:(BOOL)express passTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow completion:(id)completion;
- (void)start;
- (void)updatePassAtURL:(id)l flow:(id)flow completion:(id)completion;
@end

@implementation HMDWalletPassLibrary

- (HMDWalletPassLibraryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)deleteKeyMaterialForSubCredentialId:(id)id
{
  idCopy = id;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  [passLibrary deleteKeyMaterialForSubCredentialId:idCopy];
}

- (void)handlePassLibraryDidChangeNotification:(id)notification
{
  v49 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D386C8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 na_filter:&__block_literal_global_69];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        workQueue = [(HMDWalletPassLibrary *)self workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __63__HMDWalletPassLibrary_handlePassLibraryDidChangeNotification___block_invoke_2;
        block[3] = &unk_27868A750;
        block[4] = self;
        block[5] = v13;
        dispatch_async(workQueue, block);
      }

      v10 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v10);
  }

  userInfo2 = [notificationCopy userInfo];
  v16 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D38738]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = [v18 na_filter:&__block_literal_global_72];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v33 = v19;
  v20 = [v33 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    v23 = *MEMORY[0x277D38748];
    v24 = *MEMORY[0x277D38700];
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(v33);
        }

        v26 = *(*(&v38 + 1) + 8 * j);
        v27 = [v26 hmf_stringForKey:v23];
        v28 = [v26 hmf_stringForKey:v24];
        v29 = v28;
        if (v27)
        {
          v30 = v28 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          workQueue2 = [(HMDWalletPassLibrary *)self workQueue];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __63__HMDWalletPassLibrary_handlePassLibraryDidChangeNotification___block_invoke_4;
          v35[3] = &unk_27868A010;
          v35[4] = self;
          v36 = v27;
          v37 = v29;
          dispatch_async(workQueue2, v35);
        }
      }

      v21 = [v33 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v21);
  }
}

void __63__HMDWalletPassLibrary_handlePassLibraryDidChangeNotification___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) serialNumber];
  v4 = [*(a1 + 40) passTypeIdentifier];
  [v5 passLibrary:v2 didAddPassWithSerialNumber:v3 typeIdentifier:v4];
}

void __63__HMDWalletPassLibrary_handlePassLibraryDidChangeNotification___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 passLibrary:*(a1 + 32) didRemovePassWithSerialNumber:*(a1 + 40) typeIdentifier:*(a1 + 48)];
}

uint64_t __63__HMDWalletPassLibrary_handlePassLibraryDidChangeNotification___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

uint64_t __63__HMDWalletPassLibrary_handlePassLibraryDidChangeNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (void)fetchTransactionKeyForPassWithTypeIdentifier:(id)identifier serialNumber:(id)number completion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  identifierCopy = identifier;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__HMDWalletPassLibrary_fetchTransactionKeyForPassWithTypeIdentifier_serialNumber_completion___block_invoke;
  v14[3] = &unk_278682098;
  v15 = numberCopy;
  v16 = completionCopy;
  v14[4] = self;
  v12 = numberCopy;
  v13 = completionCopy;
  [passLibrary fetchTransactionKeyForPassTypeIdentifier:identifierCopy serialNumber:v12 completionHandler:v14];
}

void __93__HMDWalletPassLibrary_fetchTransactionKeyForPassWithTypeIdentifier_serialNumber_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  if ([v5 length] == 65)
  {
    v7 = *(*(a1 + 48) + 16);
LABEL_5:
    v7();
    goto LABEL_9;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = *(a1 + 40);
    v15 = 138544130;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2048;
    v20 = [v5 length];
    v21 = 2048;
    v22 = 65;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch transaction key for pass with serial number: %@, received unexpected transaction key length: %lu expected: %lu", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *(a1 + 48);
  v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(v13 + 16))(v13, 0, v14);

LABEL_9:
}

- (id)createTemporaryPassDirectoryURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = HMDCreateHomeKitDaemonCacheDirectory();
  v4 = [v2 fileURLWithPath:v3];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v7 = [v4 URLByAppendingPathComponent:uUIDString];

  return v7;
}

- (id)nfcInfoFromPaymentApplication:(id)application readerKey:(id)key flow:(id)flow
{
  v61 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  keyCopy = key;
  flowCopy = flow;
  secureElementIdentifier = [applicationCopy secureElementIdentifier];
  applicationIdentifier = [applicationCopy applicationIdentifier];
  subcredentials = [applicationCopy subcredentials];
  anyObject = [subcredentials anyObject];
  transactionKey = [anyObject transactionKey];

  subcredentials2 = [applicationCopy subcredentials];
  anyObject2 = [subcredentials2 anyObject];
  identifier = [anyObject2 identifier];

  v17 = +[HMDHomeWalletKeySecureElementInfo hmdPaymentTypeFromPKPaymentType:flow:](HMDHomeWalletKeySecureElementInfo, "hmdPaymentTypeFromPKPaymentType:flow:", [applicationCopy paymentType], flowCopy);
  if ([applicationCopy paymentType] == 1003)
  {
    identifier2 = [keyCopy identifier];
  }

  else
  {
    [keyCopy publicKey];
    v19 = secureElementIdentifier;
    v20 = flowCopy;
    v22 = v21 = keyCopy;
    identifier2 = [HMDNIST256Utilities identifier16BytesForKey:v22];

    keyCopy = v21;
    flowCopy = v20;
    secureElementIdentifier = v19;
  }

  v23 = applicationIdentifier;
  if (secureElementIdentifier && applicationIdentifier && identifier && transactionKey && identifier2)
  {
    if ([transactionKey length] == 65)
    {
      v24 = [HMDHomeWalletKeySecureElementInfo alloc];
      [identifier2 hmf_hexadecimalRepresentation];
      v26 = v25 = keyCopy;
      v27 = [(HMDHomeWalletKeySecureElementInfo *)v24 initWithDeviceCredentialKey:transactionKey applicationIdentifier:v23 subCredentialIdentifier:identifier secureElementIdentifier:secureElementIdentifier pairedReaderIdentifier:v26 paymentCredentialType:v17];

      keyCopy = v25;
    }

    else
    {
      v34 = secureElementIdentifier;
      v35 = objc_autoreleasePoolPush();
      selfCopy = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v38 = v42 = v35;
        [flowCopy UUID];
        v39 = v45 = keyCopy;
        *buf = 138544130;
        v48 = v38;
        v49 = 2112;
        v50 = v39;
        v51 = 2048;
        v52 = [transactionKey length];
        v53 = 2048;
        v54 = 65;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to generate home key nfc info, received unexpected transaction key length: %lu expected: %lu", buf, 0x2Au);

        keyCopy = v45;
        v35 = v42;
      }

      objc_autoreleasePoolPop(v35);
      v27 = 0;
      secureElementIdentifier = v34;
    }
  }

  else
  {
    v28 = secureElementIdentifier;
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v32 = v44 = keyCopy;
      [flowCopy UUID];
      v33 = v41 = v29;
      *buf = 138544898;
      v48 = v32;
      v49 = 2112;
      v50 = v33;
      v51 = 2112;
      v52 = v28;
      v53 = 2112;
      v54 = v23;
      v55 = 2112;
      v56 = identifier;
      v57 = 2112;
      v58 = transactionKey;
      v59 = 2112;
      v60 = identifier2;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to generate home key nfc info because either secureElementIdentifier: %@ is nil or applicationIdentifier: %@ is nil or subCredentialIdentifier: %@ is nil or transactionKey: %@ is nil or readerIdentifier is nil: %@", buf, 0x48u);

      v29 = v41;
      keyCopy = v44;
    }

    objc_autoreleasePoolPop(v29);
    v27 = 0;
    secureElementIdentifier = v28;
  }

  return v27;
}

- (void)generateHomeKeyNFCInfoWithReaderPublicKey:(id)key readerIdentifier:(id)identifier flow:(id)flow completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  identifierCopy = identifier;
  flowCopy = flow;
  completionCopy = completion;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v29 = v17;
    v30 = 2112;
    v31 = uUID;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] WalletV2Error: Called generateHomeKeyNFCInfo in old pass library", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  passLibrary = [(HMDWalletPassLibrary *)selfCopy passLibrary];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __99__HMDWalletPassLibrary_generateHomeKeyNFCInfoWithReaderPublicKey_readerIdentifier_flow_completion___block_invoke;
  v23[3] = &unk_278682070;
  v24 = identifierCopy;
  v25 = selfCopy;
  v26 = flowCopy;
  v27 = completionCopy;
  v20 = completionCopy;
  v21 = flowCopy;
  v22 = identifierCopy;
  [passLibrary generateTransactionKeyWithReaderIdentifier:v22 readerPublicKey:keyCopy completion:v23];
}

void __99__HMDWalletPassLibrary_generateHomeKeyNFCInfoWithReaderPublicKey_readerIdentifier_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v61 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v11 && v12 && v13 && v14 && *(a1 + 32))
  {
    if ([v14 length] == 65)
    {
      v16 = [HMDHomeWalletKeySecureElementInfo alloc];
      v17 = [*(a1 + 32) hmf_hexadecimalRepresentation];
      v18 = [(HMDHomeWalletKeySecureElementInfo *)v16 initWithDeviceCredentialKey:v14 applicationIdentifier:v12 subCredentialIdentifier:v13 secureElementIdentifier:v11 pairedReaderIdentifier:v17 paymentCredentialType:0];

      v19 = *(a1 + 56);
      v44 = v18;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
      (*(v19 + 16))(v19, v20, 0);
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = *(a1 + 40);
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        [*(a1 + 48) UUID];
        v43 = v13;
        v36 = v12;
        v37 = v11;
        v39 = v38 = v15;
        *buf = 138544130;
        v46 = v35;
        v47 = 2112;
        v48 = v39;
        v49 = 2048;
        v50 = [v14 length];
        v51 = 2048;
        v52 = 65;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to generate home key nfc info, received unexpected transaction key length: %lu expected: %lu", buf, 0x2Au);

        v15 = v38;
        v11 = v37;
        v12 = v36;
        v13 = v43;
      }

      objc_autoreleasePoolPop(v32);
      v40 = *(a1 + 56);
      v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      (*(v40 + 16))(v40, 0, v41);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 40);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v24 = v14;
      v25 = v13;
      v26 = v12;
      v27 = v11;
      v29 = v28 = v15;
      [*(a1 + 48) UUID];
      v30 = v42 = v21;
      v31 = *(a1 + 32);
      *buf = 138545154;
      v46 = v29;
      v47 = 2112;
      v48 = v30;
      v49 = 2112;
      v50 = v27;
      v51 = 2112;
      v52 = v26;
      v53 = 2112;
      v54 = v25;
      v55 = 2112;
      v56 = v24;
      v57 = 2112;
      v58 = v31;
      v59 = 2112;
      v60 = v28;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to generate home key nfc info because either secureElementIdentifier: %@ is nil or applicationIdentifier: %@ is nil or subCredentialIdentifier: %@ is nil or transactionKey: %@ is nil or readerIdentifier is nil: %@ error: %@", buf, 0x52u);

      v21 = v42;
      v15 = v28;
      v11 = v27;
      v12 = v26;
      v13 = v25;
      v14 = v24;
    }

    objc_autoreleasePoolPop(v21);
    (*(*(a1 + 56) + 16))();
  }
}

- (void)fetchExpressEnablementConflictingPassDescriptionForPassAtURL:(id)l flow:(id)flow completion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  lCopy = l;
  flowCopy = flow;
  completionCopy = completion;
  v49 = 0;
  v44 = lCopy;
  v10 = [objc_alloc(MEMORY[0x277D37EE8]) initWithFileURL:lCopy error:&v49];
  v43 = v49;
  if (v10)
  {
    [v10 setOwnsFileURL:1];
    v11 = [MEMORY[0x277D37F98] createWithValidatedFileDataAccessor:v10];
    paymentPass = [v11 paymentPass];

    if (paymentPass)
    {
      secureElementIdentifier = [(HMDWalletPassLibrary *)self secureElementIdentifier];
      v14 = secureElementIdentifier;
      if (secureElementIdentifier)
      {
        v50 = secureElementIdentifier;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
        [paymentPass updateDevicePaymentApplicationsWithSecureElementIdentifiers:v15];

        v16 = objc_alloc_init(MEMORY[0x277D380F0]);
        v17 = [objc_alloc(MEMORY[0x277D37E90]) initForPaymentPass:paymentPass withTechologyTest:&__block_literal_global_57_228159];
        if (v17)
        {
          v18 = objc_alloc(MEMORY[0x277D37E88]);
          [paymentPass secureElementPass];
          v19 = v42 = paymentPass;
          v20 = [v18 initWithPassInformation:v17 forSecureElementPass:v19];

          paymentPass = v42;
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __101__HMDWalletPassLibrary_fetchExpressEnablementConflictingPassDescriptionForPassAtURL_flow_completion___block_invoke_58;
          v46[3] = &unk_278687C70;
          v48 = completionCopy;
          v46[4] = self;
          v47 = flowCopy;
          [v16 conflictingExpressPassIdentifiersForPassConfiguration:v20 withCompletion:v46];
        }

        else
        {
          v36 = objc_autoreleasePoolPush();
          selfCopy = self;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = HMFGetLogIdentifier();
            uUID = [flowCopy UUID];
            *buf = 138543618;
            v52 = v39;
            v53 = 2112;
            v54 = uUID;
            v41 = uUID;
            _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Express pass info is nil", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v36);
          v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
          (*(completionCopy + 2))(completionCopy, 0, v20);
          v17 = 0;
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          uUID2 = [flowCopy UUID];
          *buf = 138543618;
          v52 = v34;
          v53 = 2112;
          v54 = uUID2;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express conflict, secure element identifier is nil", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(completionCopy + 2))(completionCopy, 0, v16);
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        uUID3 = [flowCopy UUID];
        *buf = 138543874;
        v52 = v29;
        v53 = 2112;
        v54 = uUID3;
        v55 = 2112;
        v56 = lCopy;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express conflict, cannot create payment pass at url: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(completionCopy + 2))(completionCopy, 0, v14);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      uUID4 = [flowCopy UUID];
      *buf = 138543874;
      v52 = v24;
      v53 = 2112;
      v54 = uUID4;
      v55 = 2112;
      v56 = lCopy;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express conflict, create data accessor for pass at url: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    paymentPass = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, 0, paymentPass);
  }
}

void __101__HMDWalletPassLibrary_fetchExpressEnablementConflictingPassDescriptionForPassAtURL_flow_completion___block_invoke_58(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 anyObject];
  if (v4)
  {
    v5 = [*(a1 + 32) passLibrary];
    v6 = [v5 passWithUniqueID:v4];

    if (v6)
    {
      v7 = [v6 localizedDescription];
      if (!v7)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = *(a1 + 32);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [*(a1 + 40) UUID];
          v25 = 138543874;
          v26 = v21;
          v27 = 2112;
          v28 = v22;
          v29 = 2112;
          v30 = v4;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to look up for localized description for conflicting pass with identifier: %@", &v25, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        v23 = *(a1 + 48);
        v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(v23 + 16))(v23, 0, v24);

        v8 = 0;
        goto LABEL_13;
      }

      v8 = v7;
      v9 = *(*(a1 + 48) + 16);
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [*(a1 + 40) UUID];
        v25 = 138543874;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        v29 = 2112;
        v30 = v4;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to look up for express enablement conflicting pass with identifier: %@", &v25, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = *(a1 + 48);
      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      v9 = *(v17 + 16);
    }

    v9();
LABEL_13:

    goto LABEL_14;
  }

  v10 = *(a1 + 48);
  v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  (*(v10 + 16))(v10, 0, v11);

LABEL_14:
}

- (void)fetchExpressEnablementConflictingPassDescriptionForPassAtURL:(id)l completion:(id)completion
{
  v6 = MEMORY[0x277D0F7B8];
  completionCopy = completion;
  lCopy = l;
  untrackedPlaceholderFlow = [v6 untrackedPlaceholderFlow];
  [(HMDWalletPassLibrary *)self fetchExpressEnablementConflictingPassDescriptionForPassAtURL:lCopy flow:untrackedPlaceholderFlow completion:completionCopy];
}

- (id)passUniqueIDOfWalletKeyWithTypeIdentifier:(id)identifier serialNumber:(id)number
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  numberCopy = number;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  v9 = [passLibrary passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    v11 = objc_opt_isKindOfClass() & 1;
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v11)
    {
      uniqueID = [v10 uniqueID];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v25 = 138543874;
        v26 = v22;
        v27 = 2112;
        v28 = v10;
        v29 = 2112;
        v30 = objc_opt_class();
        v23 = v30;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Pass object is not of type payment pass %@:%@", &v25, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      uniqueID = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v25 = 138543874;
      v26 = v18;
      v27 = 2112;
      v28 = identifierCopy;
      v29 = 2112;
      v30 = numberCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to find pass with type identifier: %@ and serial number: %@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    uniqueID = 0;
  }

  return uniqueID;
}

- (void)fetchIsExpressEnabledForPassWithTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow completion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  numberCopy = number;
  flowCopy = flow;
  completionCopy = completion;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  v15 = [passLibrary passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

  if (v15)
  {
    v44 = identifierCopy;
    v45 = flowCopy;
    v16 = v15;
    objc_opt_class();
    v17 = objc_opt_isKindOfClass() & 1;
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (v17)
    {
      v20 = objc_alloc_init(MEMORY[0x277D380F0]);
      uniqueID = [v16 uniqueID];
      v22 = [v20 expressPassConfigurationWithPassUniqueIdentifier:uniqueID];

      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v26 = v42 = numberCopy;
        uUID = [v45 UUID];
        [v22 isNFCExpressEnabled];
        HMFBooleanToString();
        v27 = v41 = v19;
        [v22 isUWBExpressEnabled];
        v28 = HMFBooleanToString();
        *buf = 138544130;
        v47 = v26;
        v48 = 2112;
        v49 = uUID;
        v50 = 2112;
        v51 = v27;
        v52 = 2112;
        v53 = v28;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found current express config with expressEnabled: %@, UWBEnabled: %@", buf, 0x2Au);

        v19 = v41;
        numberCopy = v42;
      }

      objc_autoreleasePoolPop(v23);
      completionCopy[2](completionCopy, [v22 isNFCExpressEnabled], objc_msgSend(v22, "isUWBExpressEnabled"), 0);
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v37 = v43 = v34;
        uUID2 = [v45 UUID];
        *buf = 138544130;
        v47 = v37;
        v48 = 2112;
        v49 = uUID2;
        v50 = 2112;
        v51 = v16;
        v52 = 2112;
        v53 = objc_opt_class();
        v39 = v53;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Pass object is not of type payment pass %@:%@", buf, 0x2Au);

        v34 = v43;
      }

      objc_autoreleasePoolPop(v34);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (completionCopy)[2](completionCopy, 0, 0, v20);
    }

    identifierCopy = v44;
    flowCopy = v45;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      uUID3 = [flowCopy UUID];
      *buf = 138544130;
      v47 = v32;
      v48 = 2112;
      v49 = uUID3;
      v50 = 2112;
      v51 = identifierCopy;
      v52 = 2112;
      v53 = numberCopy;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unable to find pass with type identifier: %@ and serial number: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v29);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (completionCopy)[2](completionCopy, 0, 0, v19);
  }
}

- (BOOL)isExpressModeEnabledForPassUniqueIdentifier:(id)identifier serialNumber:(id)number
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  numberCopy = number;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  v9 = [passLibrary passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    v11 = objc_opt_isKindOfClass() & 1;
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v11)
    {
      v14 = objc_alloc_init(MEMORY[0x277D380F0]);
      uniqueID = [v10 uniqueID];
      v16 = [v14 isExpressModeEnabledForPassUniqueIdentifier:uniqueID];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v27 = 138543874;
        v28 = v24;
        v29 = 2112;
        v30 = v10;
        v31 = 2112;
        v32 = objc_opt_class();
        v25 = v32;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Pass object is not of type payment pass %@:%@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v16 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v27 = 138543874;
      v28 = v20;
      v29 = 2112;
      v30 = identifierCopy;
      v31 = 2112;
      v32 = numberCopy;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to find pass with type identifier: %@ and serial number: %@", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  return v16;
}

- (void)setExpressSettingsWithAuthData:(id)data enableUWB:(BOOL)b enableNFCExpress:(BOOL)express passTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow completion:(id)completion
{
  expressCopy = express;
  bCopy = b;
  v64 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  numberCopy = number;
  flowCopy = flow;
  completionCopy = completion;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  v50 = numberCopy;
  v19 = [passLibrary passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

  if (v19)
  {
    v49 = identifierCopy;
    v20 = v19;
    objc_opt_class();
    v21 = objc_opt_isKindOfClass() & 1;
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    if (v21)
    {
      v24 = [objc_alloc(MEMORY[0x277D37E88]) initForPaymentPass:v20 isNFCExpressEnabled:expressCopy isUWBExpressEnabled:bCopy withTechologyTest:&__block_literal_global_51_228179];
      v25 = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v29 = v47 = v25;
        v30 = HMFBooleanToString();
        v31 = HMFBooleanToString();
        *buf = 138544130;
        v57 = v28;
        v58 = 2112;
        v59 = v29;
        v60 = 2112;
        v61 = v30;
        v62 = 2112;
        v63 = v31;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Setting express settings with enableUWB: %@, enableNFCExpress: %@", buf, 0x2Au);

        v25 = v47;
      }

      objc_autoreleasePoolPop(v25);
      v32 = objc_alloc_init(MEMORY[0x277D380F0]);
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __130__HMDWalletPassLibrary_setExpressSettingsWithAuthData_enableUWB_enableNFCExpress_passTypeIdentifier_serialNumber_flow_completion___block_invoke_52;
      v53[3] = &unk_278682048;
      v53[4] = selfCopy;
      v33 = flowCopy;
      v54 = flowCopy;
      v55 = completionCopy;
      v34 = dataCopy;
      [v32 setExpressWithPassConfiguration:v24 credential:dataCopy handler:v53];
    }

    else
    {
      v41 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v45 = v48 = v41;
        *buf = 138544130;
        v57 = v44;
        v58 = 2112;
        v59 = v45;
        v60 = 2112;
        v61 = v20;
        v62 = 2112;
        v63 = objc_opt_class();
        v46 = v63;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Pass object is not of type payment pass %@:%@", buf, 0x2Au);

        v41 = v48;
      }

      objc_autoreleasePoolPop(v41);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(completionCopy + 2))(completionCopy, v24);
      v34 = dataCopy;
      v33 = flowCopy;
    }

    v38 = v50;

    identifierCopy = v49;
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v37 = HMFGetOSLogHandle();
    v33 = flowCopy;
    v38 = v50;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138544130;
      v57 = v39;
      v58 = 2112;
      v59 = uUID;
      v60 = 2112;
      v61 = identifierCopy;
      v62 = 2112;
      v63 = v50;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unable to find pass with type identifier: %@ and serial number: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v35);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(completionCopy + 2))(completionCopy, v23);
    v34 = dataCopy;
  }
}

void __130__HMDWalletPassLibrary_setExpressSettingsWithAuthData_enableUWB_enableNFCExpress_passTypeIdentifier_serialNumber_flow_completion___block_invoke_52(uint64_t a1, char a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v16 = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully set express settings for home key", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v16 = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set express config. Current state is: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v14 = *(a1 + 48);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v14 + 16))(v14, v15);
  }
}

- (void)enableExpressWithAuthData:(id)data passTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow completion:(id)completion
{
  v62 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  numberCopy = number;
  flowCopy = flow;
  completionCopy = completion;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  v17 = [passLibrary passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

  if (v17)
  {
    v48 = identifierCopy;
    v49 = flowCopy;
    v47 = numberCopy;
    v18 = v17;
    objc_opt_class();
    v19 = objc_opt_isKindOfClass() & 1;
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if (v19)
    {
      v22 = objc_alloc_init(MEMORY[0x277D380F0]);
      uniqueID = [v18 uniqueID];
      v24 = [v22 expressPassConfigurationWithPassUniqueIdentifier:uniqueID];

      v25 = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v28 = v44 = v21;
        [flowCopy UUID];
        v29 = v45 = v25;
        [v24 isNFCExpressEnabled];
        v30 = HMFBooleanToString();
        [v24 isUWBExpressEnabled];
        HMFBooleanToString();
        v31 = v46 = v24;
        *buf = 138544130;
        v55 = v28;
        v56 = 2112;
        v57 = v29;
        v58 = 2112;
        v59 = v30;
        v60 = 2112;
        v61 = v31;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found current express config with expressEnabled: %@, UWBEnabled: %@", buf, 0x2Au);

        v25 = v45;
        v24 = v46;

        v21 = v44;
      }

      objc_autoreleasePoolPop(v25);
      v32 = [objc_alloc(MEMORY[0x277D37E88]) initForPaymentPass:v18 isNFCExpressEnabled:1 isUWBExpressEnabled:objc_msgSend(v24 withTechologyTest:{"isUWBExpressEnabled"), &__block_literal_global_228188}];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __98__HMDWalletPassLibrary_enableExpressWithAuthData_passTypeIdentifier_serialNumber_flow_completion___block_invoke_2;
      v51[3] = &unk_278682048;
      v51[4] = selfCopy;
      flowCopy = v49;
      v52 = v49;
      v53 = completionCopy;
      [v22 setExpressWithPassConfiguration:v32 credential:dataCopy handler:v51];
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        uUID = [v49 UUID];
        *buf = 138544130;
        v55 = v41;
        v56 = 2112;
        v57 = uUID;
        v58 = 2112;
        v59 = v18;
        v60 = 2112;
        v61 = objc_opt_class();
        v43 = v61;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Pass object is not of type payment pass %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v38);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(completionCopy + 2))(completionCopy, v22);
      flowCopy = v49;
    }

    numberCopy = v47;
    identifierCopy = v48;
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138544130;
      v55 = v36;
      v56 = 2112;
      v57 = uUID2;
      v58 = 2112;
      v59 = identifierCopy;
      v60 = 2112;
      v61 = numberCopy;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unable to find pass with type identifier: %@ and serial number: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v33);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(completionCopy + 2))(completionCopy, v21);
  }
}

void __98__HMDWalletPassLibrary_enableExpressWithAuthData_passTypeIdentifier_serialNumber_flow_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) UUID];
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set express config. Current state is: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v11 + 16))(v11, v12);
  }
}

- (void)fetchHomeKeySupportedWithFlow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  v9 = objc_alloc_init(MEMORY[0x277D37CF8]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HMDWalletPassLibrary_fetchHomeKeySupportedWithFlow_completion___block_invoke;
  v12[3] = &unk_278682000;
  v12[4] = self;
  v13 = flowCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = flowCopy;
  [passLibrary canAddSecureElementPassWithConfiguration:v9 completion:v12];
}

void __65__HMDWalletPassLibrary_fetchHomeKeySupportedWithFlow_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) UUID];
    v10 = HMFBooleanToString();
    v11 = 138544130;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Wallet responded to canAddSecureElementPassWithConfiguration with canAdd: %@, error: %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  (*(*(a1 + 48) + 16))();
}

- (BOOL)removePassWithTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  numberCopy = number;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v28 = 138543618;
    v29 = v14;
    v30 = 2112;
    v31 = uUID;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] WalletV2Error: Called removePass in old pass library", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  passLibrary = [(HMDWalletPassLibrary *)selfCopy passLibrary];
  v17 = [passLibrary passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      v28 = 138544386;
      v29 = v21;
      v30 = 2112;
      v31 = uUID2;
      v32 = 2112;
      v33 = identifierCopy;
      v34 = 2112;
      v35 = numberCopy;
      v36 = 2112;
      v37 = v17;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing pass with identifier: %@ and serial number: %@: %@", &v28, 0x34u);
    }

    objc_autoreleasePoolPop(v18);
    passLibrary2 = [(HMDWalletPassLibrary *)v19 passLibrary];
    [passLibrary2 removePass:v17];

    walletKeys = [(HMDWalletPassLibrary *)v19 walletKeys];
    v25 = [walletKeys count] == 0;

    v26 = +[HMDHomeKeyDataRecorder sharedRecorder];
    [v26 recordRemovedWalletKeyWithSerialNumber:numberCopy noWalletKeysRemaining:v25];
  }

  return v17 != 0;
}

- (id)urlForWalletKeyWithTypeIdentifier:(id)identifier serialNumber:(id)number
{
  numberCopy = number;
  identifierCopy = identifier;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  v9 = [passLibrary passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

  passURL = [v9 passURL];

  return passURL;
}

- (id)walletKeyWithTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  numberCopy = number;
  flowCopy = flow;
  if (identifierCopy && numberCopy)
  {
    passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
    v12 = [passLibrary passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      v25 = 138544386;
      v26 = v16;
      v27 = 2112;
      v28 = uUID;
      v29 = 2112;
      v30 = identifierCopy;
      v31 = 2112;
      v32 = numberCopy;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found pass with identifier: %@ and serial number: %@: %@", &v25, 0x34u);
    }

    objc_autoreleasePoolPop(v13);
    if (v12)
    {
      v18 = [[HMDHomeWalletKey alloc] initWithPKPass:v12 flow:flowCopy];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      v25 = 138544130;
      v26 = v22;
      v27 = 2112;
      v28 = uUID2;
      v29 = 2112;
      v30 = identifierCopy;
      v31 = 2112;
      v32 = numberCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Invalid parameter when looking up wallet key. typeIdentifier: %@, serialNumber: %@", &v25, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
  }

  return v18;
}

- (void)updatePassAtURL:(id)l flow:(id)flow completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  flowCopy = flow;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v21 = v14;
    v22 = 2112;
    v23 = uUID;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] WalletV2Error: Called updatePass in old pass library", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  passLibrary = [(HMDWalletPassLibrary *)selfCopy passLibrary];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__HMDWalletPassLibrary_updatePassAtURL_flow_completion___block_invoke;
  v18[3] = &unk_278683B50;
  v19 = completionCopy;
  v17 = completionCopy;
  [passLibrary replaceUnsignedPassAtURL:lCopy withCompletionHandler:v18];
}

void __56__HMDWalletPassLibrary_updatePassAtURL_flow_completion___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0);
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v2 + 16))(v2, v5);
  }
}

- (void)addPassAtURL:(id)l flow:(id)flow completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  flowCopy = flow;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v28 = v14;
    v29 = 2112;
    v30 = uUID;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] WalletV2Error: Called addPass in old pass library", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  objc_initWeak(buf, selfCopy);
  passLibrary = [(HMDWalletPassLibrary *)selfCopy passLibrary];
  v26 = lCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__HMDWalletPassLibrary_addPassAtURL_flow_completion___block_invoke;
  v21[3] = &unk_278681FD8;
  objc_copyWeak(&v25, buf);
  v18 = flowCopy;
  v22 = v18;
  v19 = lCopy;
  v23 = v19;
  v20 = completionCopy;
  v24 = v20;
  [passLibrary addUnsignedPassesAtURLs:v17 withCompletionHandler:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

void __53__HMDWalletPassLibrary_addPassAtURL_flow_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 32) UUID];
    v10 = *(a1 + 40);
    v13 = 138544130;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2048;
    v20 = a2;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addUnsignedPassesAtURLs: %@, finished with status: %ld", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v11 = *(a1 + 48);
  if (a2)
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(v11, 0);
  }
}

- (void)start
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277D386D8];
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  [defaultCenter addObserver:self selector:sel_handlePassLibraryDidChangeNotification_ name:v3 object:passLibrary];
}

- (NSSet)walletKeys
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  passes = [passLibrary passes];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = passes;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        secureElementPass = [v11 secureElementPass];
        isHomeKeyPass = [secureElementPass isHomeKeyPass];

        if (isHomeKeyPass)
        {
          v14 = [HMDHomeWalletKey alloc];
          untrackedPlaceholderFlow = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
          v16 = [(HMDHomeWalletKey *)v14 initWithPKPass:v11 flow:untrackedPlaceholderFlow];

          [v3 addObject:v16];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = objc_msgSend_copy(v3);

  return v17;
}

- (HMDWalletPassLibrary)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = HMDWalletPassLibrary;
  v6 = [(HMDWalletPassLibrary *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, queue);
    mEMORY[0x277D37FC0] = [MEMORY[0x277D37FC0] sharedInstance];
    passLibrary = v7->_passLibrary;
    v7->_passLibrary = mEMORY[0x277D37FC0];
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t45_228213 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t45_228213, &__block_literal_global_76_228214);
  }

  v3 = logCategory__hmf_once_v46_228215;

  return v3;
}

void __35__HMDWalletPassLibrary_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v46_228215;
  logCategory__hmf_once_v46_228215 = v0;
}

@end