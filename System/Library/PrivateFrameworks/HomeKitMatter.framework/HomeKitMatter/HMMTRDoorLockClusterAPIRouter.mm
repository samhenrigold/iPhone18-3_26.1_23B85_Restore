@interface HMMTRDoorLockClusterAPIRouter
+ (BOOL)isCredentialTypeAliro:(id)aliro;
+ (id)aliroClearCredentialParamsFromParams:(id)params flow:(id)flow;
+ (id)aliroCredentialFromCredential:(id)credential flow:(id)flow;
+ (id)aliroCredentialTypeForCredentialType:(id)type flow:(id)flow;
+ (id)aliroGetCredentialParamsFromParams:(id)params flow:(id)flow;
+ (id)aliroReaderConfigParamsFromParams:(id)params;
+ (id)aliroSetCredentialParamsFromParams:(id)params flow:(id)flow;
+ (id)arrayOfDataFromRead:(id)read;
+ (id)credentialTypeForAliroCredentialType:(unsigned __int8)type flow:(id)flow;
+ (id)doorLockFeatureMapSupportsAppleCustomAliroBLEUWB:(id)b;
+ (id)doorLockFeatureMapSupportsAppleCustomAliroProvisioning:(id)provisioning;
+ (id)mergeAndRemoveDuplicatesFromArray:(id)array andArray:(id)andArray;
+ (id)readerConfigParamsFromReaderConfig:(id)config;
- (HMMTRDoorLockClusterAPIRouter)initWithDoorLock:(id)lock device:(id)device queue:(id)queue;
- (MTRClusterDoorLock)doorLock;
- (id)appendAliroCredentialsToUser:(id)user aliroCredentials:(id)credentials;
- (id)getAliroCredentialAtIndex:(int64_t)index forCredentialType:(int64_t)type flow:(id)flow;
- (id)getAppleAliroCredentialsWithCredentialType:(int64_t)type startingAtIndex:(int64_t)index credentials:(id)credentials flow:(id)flow;
- (void)clearCredentialWithParams:(id)params flow:(id)flow completion:(id)completion;
- (void)fetchAppleClusterFeaturesWithFlow:(id)flow completion:(id)completion;
- (void)getCredentialStatusWithParams:(id)params flow:(id)flow completion:(id)completion;
- (void)getUserWithParams:(id)params includeAliroCredentials:(BOOL)credentials temporaryCachedAliroCredentials:(id)aliroCredentials flow:(id)flow completion:(id)completion;
- (void)isCustomClusterAvailableWithFlow:(id)flow completion:(id)completion;
- (void)numberOfAliroDeviceKeyCredentialsSupportedWithFlow:(id)flow completion:(id)completion;
- (void)numberOfAliroIssuerKeyCredentialsSupportedWithFlow:(id)flow completion:(id)completion;
- (void)readAttributeAliroBLEAdvertisingVersionWithFlow:(id)flow completion:(id)completion;
- (void)readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithFlow:(id)flow completion:(id)completion;
- (void)readAttributeAliroGroupResolvingKeyWithFlow:(id)flow completion:(id)completion;
- (void)readAttributeAliroReaderGroupIdentifierWithFlow:(id)flow completion:(id)completion;
- (void)readAttributeAliroReaderVerificationKeyWithFlow:(id)flow completion:(id)completion;
- (void)readAttributeAliroSupportedBLEUWBProtocolVersionsWithFlow:(id)flow completion:(id)completion;
- (void)setAliroReaderConfigWithConfig:(id)config flow:(id)flow completion:(id)completion;
- (void)setCredentialWithParams:(id)params flow:(id)flow completion:(id)completion;
@end

@implementation HMMTRDoorLockClusterAPIRouter

- (MTRClusterDoorLock)doorLock
{
  WeakRetained = objc_loadWeakRetained(&self->_doorLock);

  return WeakRetained;
}

- (id)getAliroCredentialAtIndex:(int64_t)index forCredentialType:(int64_t)type flow:(id)flow
{
  v39 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138544130;
    v32 = v12;
    v33 = 2112;
    v34 = uUID;
    v35 = 2048;
    indexCopy = index;
    v37 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] getCredentialAtIndex: %ld forCredentialType: %ld", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  v14 = objc_opt_new();
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [v14 setCredentialType:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  [v14 setCredentialIndex:v16];

  v17 = objc_opt_new();
  [v17 setCredential:v14];
  doorLock = [(HMMTRDoorLockClusterAPIRouter *)selfCopy doorLock];
  if (doorLock)
  {
    v19 = objc_opt_new();
    completionHandlerAdapter = [v19 completionHandlerAdapter];
    [doorLock appleGetAliroCredentialStatusWithParams:v17 expectedValues:0 expectedValueInterval:0 completion:completionHandlerAdapter];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __82__HMMTRDoorLockClusterAPIRouter_getAliroCredentialAtIndex_forCredentialType_flow___block_invoke;
    v29[3] = &unk_2786EF9E0;
    v29[4] = selfCopy;
    v30 = flowCopy;
    v21 = [v19 addFailureBlock:v29];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v32 = v25;
      v33 = 2112;
      v34 = uUID2;
      _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = MEMORY[0x277D2C900];
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    v21 = [v27 futureWithError:v19];
  }

  return v21;
}

void __82__HMMTRDoorLockClusterAPIRouter_getAliroCredentialAtIndex_forCredentialType_flow___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = 138543874;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to get credential with error: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)getAppleAliroCredentialsWithCredentialType:(int64_t)type startingAtIndex:(int64_t)index credentials:(id)credentials flow:(id)flow
{
  credentialsCopy = credentials;
  flowCopy = flow;
  v12 = [(HMMTRDoorLockClusterAPIRouter *)self getAliroCredentialAtIndex:index forCredentialType:type flow:flowCopy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __109__HMMTRDoorLockClusterAPIRouter_getAppleAliroCredentialsWithCredentialType_startingAtIndex_credentials_flow___block_invoke;
  v17[3] = &unk_2786EF0E8;
  typeCopy = type;
  indexCopy = index;
  v18 = credentialsCopy;
  selfCopy = self;
  v20 = flowCopy;
  v13 = flowCopy;
  v14 = credentialsCopy;
  v15 = [v12 flatMap:v17];

  return v15;
}

id __109__HMMTRDoorLockClusterAPIRouter_getAppleAliroCredentialsWithCredentialType_startingAtIndex_credentials_flow___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 credentialExists];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = a1[4];
    v7 = [HMMCredentialKey alloc];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a1[7]];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a1[8]];
    v10 = [(HMMCredentialKey *)v7 initWithCredentialType:v8 andCredentialIndex:v9];
    [v6 setObject:v3 forKey:v10];
  }

  v11 = [v3 nextCredentialIndex];

  if (v11)
  {
    v12 = a1[5];
    v13 = a1[7];
    v14 = [v3 nextCredentialIndex];
    v15 = [v12 getAppleAliroCredentialsWithCredentialType:v13 startingAtIndex:objc_msgSend(v14 credentials:"integerValue") flow:{a1[4], a1[6]}];
  }

  else
  {
    v15 = [MEMORY[0x277D2C900] futureWithResult:a1[4]];
  }

  return v15;
}

- (id)appendAliroCredentialsToUser:(id)user aliroCredentials:(id)credentials
{
  userCopy = user;
  v7 = MEMORY[0x277CBEB18];
  credentialsCopy = credentials;
  array = [v7 array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__HMMTRDoorLockClusterAPIRouter_appendAliroCredentialsToUser_aliroCredentials___block_invoke;
  v18[3] = &unk_2786EF0C0;
  v10 = userCopy;
  v19 = v10;
  selfCopy = self;
  v21 = array;
  v11 = array;
  [credentialsCopy na_each:v18];

  v12 = objc_opt_class();
  credentials = [v10 credentials];
  v14 = [v12 mergeAndRemoveDuplicatesFromArray:credentials andArray:v11];
  [v10 setCredentials:v14];

  v15 = v21;
  v16 = v10;

  return v10;
}

void __79__HMMTRDoorLockClusterAPIRouter_appendAliroCredentialsToUser_aliroCredentials___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = [a3 userIndex];
  v6 = [*(a1 + 32) userIndex];

  if (v5 == v6)
  {
    v7 = objc_opt_class();
    v8 = [v17 credentialType];
    v9 = [v8 unsignedIntegerValue];
    v10 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
    v11 = [v7 credentialTypeForAliroCredentialType:v9 flow:v10];

    v12 = [HMMCredentialKey alloc];
    v13 = [v17 credentialIndex];
    v14 = [(HMMCredentialKey *)v12 initWithCredentialType:v11 andCredentialIndex:v13];

    v15 = *(a1 + 48);
    v16 = [(HMMCredentialKey *)v14 credentialStruct];
    [v15 addObject:v16];
  }
}

- (void)getUserWithParams:(id)params includeAliroCredentials:(BOOL)credentials temporaryCachedAliroCredentials:(id)aliroCredentials flow:(id)flow completion:(id)completion
{
  paramsCopy = params;
  aliroCredentialsCopy = aliroCredentials;
  flowCopy = flow;
  completionCopy = completion;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __123__HMMTRDoorLockClusterAPIRouter_getUserWithParams_includeAliroCredentials_temporaryCachedAliroCredentials_flow_completion___block_invoke;
  v20[3] = &unk_2786EF098;
  v23 = aliroCredentialsCopy;
  v24 = completionCopy;
  v20[4] = self;
  v21 = flowCopy;
  credentialsCopy = credentials;
  v22 = paramsCopy;
  v16 = aliroCredentialsCopy;
  v17 = paramsCopy;
  v18 = flowCopy;
  v19 = completionCopy;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v18 completion:v20];
}

void __123__HMMTRDoorLockClusterAPIRouter_getUserWithParams_includeAliroCredentials_temporaryCachedAliroCredentials_flow_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    if (v6)
    {
      v7 = *(a1 + 48);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __123__HMMTRDoorLockClusterAPIRouter_getUserWithParams_includeAliroCredentials_temporaryCachedAliroCredentials_flow_completion___block_invoke_49;
      v18[3] = &unk_2786EF070;
      v23 = a2;
      v24 = *(a1 + 72);
      v22 = *(a1 + 64);
      v8 = *(a1 + 56);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v19 = v8;
      v20 = v9;
      v21 = v10;
      [v6 getUserWithParams:v7 expectedValues:0 expectedValueInterval:0 completion:v18];

      v11 = v22;
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
        *buf = 138543618;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = *(a1 + 64);
      v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v17 + 16))(v17, 0, v11);
    }
  }
}

void __123__HMMTRDoorLockClusterAPIRouter_getUserWithParams_includeAliroCredentials_temporaryCachedAliroCredentials_flow_completion___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v43[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 64) == 1)
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    v7 = [v5 userStatus];
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = [v5 userStatus];
    if ([v8 isEqualToNumber:&unk_283EE8868])
    {

LABEL_13:
      (*(*(a1 + 56) + 16))();
      goto LABEL_14;
    }

    v9 = *(a1 + 65);

    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }

    v10 = *(a1 + 32);
    objc_sync_enter(v10);
    v11 = [*(a1 + 32) objectForKeyedSubscript:@"aliroCredentials"];
    objc_sync_exit(v10);

    if (!*(a1 + 32) || !v11)
    {
      v18 = *(a1 + 40);
      v19 = [MEMORY[0x277CBEB38] dictionary];
      v20 = [v18 getAppleAliroCredentialsWithCredentialType:1 startingAtIndex:1 credentials:v19 flow:*(a1 + 48)];
      v43[0] = v20;
      v21 = *(a1 + 40);
      v22 = [MEMORY[0x277CBEB38] dictionary];
      v23 = [v21 getAppleAliroCredentialsWithCredentialType:2 startingAtIndex:1 credentials:v22 flow:*(a1 + 48)];
      v43[1] = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];

      v25 = [MEMORY[0x277D2C900] combineAllFutures:v24];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __123__HMMTRDoorLockClusterAPIRouter_getUserWithParams_includeAliroCredentials_temporaryCachedAliroCredentials_flow_completion___block_invoke_58;
      v32[3] = &unk_2786EF048;
      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      v33 = v26;
      v34 = v27;
      v35 = v5;
      v36 = *(a1 + 56);
      v28 = [v25 addSuccessBlock:v32];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __123__HMMTRDoorLockClusterAPIRouter_getUserWithParams_includeAliroCredentials_temporaryCachedAliroCredentials_flow_completion___block_invoke_2;
      v30[3] = &unk_2786F0BC0;
      v31 = *(a1 + 56);
      v29 = [v28 addFailureBlock:v30];

      goto LABEL_14;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 48) UUID];
      *buf = 138543874;
      v38 = v15;
      v39 = 2112;
      v40 = v16;
      v41 = 2112;
      v42 = v5;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Begin process to re-add AliroCredentialsToUser: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [*(a1 + 40) appendAliroCredentialsToUser:v5 aliroCredentials:v11];
    (*(*(a1 + 56) + 16))();
  }

  (*(*(a1 + 56) + 16))();
LABEL_14:
}

void __123__HMMTRDoorLockClusterAPIRouter_getUserWithParams_includeAliroCredentials_temporaryCachedAliroCredentials_flow_completion___block_invoke_58(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectAtIndexedSubscript:0];
  v4 = [v3 mutableCopy];

  v5 = [v8 objectAtIndexedSubscript:1];
  [v4 addEntriesFromDictionary:v5];

  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"aliroCredentials"];
  objc_sync_exit(v6);

  v7 = [*(a1 + 40) appendAliroCredentialsToUser:*(a1 + 48) aliroCredentials:v4];
  (*(*(a1 + 56) + 16))();
}

- (void)setAliroReaderConfigWithConfig:(id)config flow:(id)flow completion:(id)completion
{
  configCopy = config;
  flowCopy = flow;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HMMTRDoorLockClusterAPIRouter_setAliroReaderConfigWithConfig_flow_completion___block_invoke;
  v14[3] = &unk_2786EF020;
  v14[4] = self;
  v15 = configCopy;
  v16 = flowCopy;
  v17 = completionCopy;
  v11 = flowCopy;
  v12 = configCopy;
  v13 = completionCopy;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v11 completion:v14];
}

void __80__HMMTRDoorLockClusterAPIRouter_setAliroReaderConfigWithConfig_flow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = [objc_opt_class() readerConfigParamsFromReaderConfig:*(a1 + 40)];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 48) UUID];
      v12 = [v6 signingKey];
      v43 = 138543874;
      v44 = v10;
      v45 = 2112;
      v46 = v11;
      v47 = 2048;
      v48 = [v12 length];
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] signingKeySize: %lu", &v43, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 48) UUID];
      v18 = [v6 verificationKey];
      v19 = [v18 length];
      v43 = 138543874;
      v44 = v16;
      v45 = 2112;
      v46 = v17;
      v47 = 2048;
      v48 = v19;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] verificationKey: %lu", &v43, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [*(a1 + 48) UUID];
      v25 = [v6 groupIdentifier];
      v26 = [v25 length];
      v43 = 138543874;
      v44 = v23;
      v45 = 2112;
      v46 = v24;
      v47 = 2048;
      v48 = v26;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] groupIdentifier: %lu", &v43, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v27 = objc_autoreleasePoolPush();
    v28 = *(a1 + 32);
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      v31 = [*(a1 + 48) UUID];
      v32 = [v6 groupResolvingKey];
      v33 = [v32 length];
      v43 = 138543874;
      v44 = v30;
      v45 = 2112;
      v46 = v31;
      v47 = 2048;
      v48 = v33;
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] groupResolvingKey: %lu", &v43, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    v34 = [*(a1 + 32) doorLock];
    v35 = v34;
    if (v34)
    {
      if (!a2)
      {
        [v34 setAliroReaderConfigWithParams:v6 expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
        goto LABEL_19;
      }

      v36 = [objc_opt_class() aliroReaderConfigParamsFromParams:v6];
      [v35 appleSetAliroReaderConfigWithParams:v36 expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = *(a1 + 32);
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        v41 = [*(a1 + 48) UUID];
        v43 = 138543618;
        v44 = v40;
        v45 = 2112;
        v46 = v41;
        _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v43, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      v42 = *(a1 + 56);
      v36 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v42 + 16))(v42, v36);
    }

LABEL_19:
    goto LABEL_20;
  }

  (*(*(a1 + 56) + 16))();
LABEL_20:
}

- (void)clearCredentialWithParams:(id)params flow:(id)flow completion:(id)completion
{
  paramsCopy = params;
  flowCopy = flow;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__HMMTRDoorLockClusterAPIRouter_clearCredentialWithParams_flow_completion___block_invoke;
  v14[3] = &unk_2786EF020;
  v14[4] = self;
  v15 = flowCopy;
  v16 = paramsCopy;
  v17 = completionCopy;
  v11 = paramsCopy;
  v12 = flowCopy;
  v13 = completionCopy;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v12 completion:v14];
}

void __75__HMMTRDoorLockClusterAPIRouter_clearCredentialWithParams_flow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = [*(a1 + 32) doorLock];
    if (v6)
    {
      if (!a2 || (v7 = objc_opt_class(), [*(a1 + 48) credential], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "credentialType"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = objc_msgSend(v7, "isCredentialTypeAliro:", v9), v9, v8, !v7))
      {
        [v6 clearCredentialWithParams:*(a1 + 48) expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
LABEL_12:

        goto LABEL_13;
      }

      v10 = [objc_opt_class() aliroClearCredentialParamsFromParams:*(a1 + 48) flow:*(a1 + 40)];
      [v6 appleClearAliroCredentialWithParams:v10 expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [*(a1 + 40) UUID];
        v17 = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = v15;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = *(a1 + 56);
      v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v16 + 16))(v16, v10);
    }

    goto LABEL_12;
  }

  (*(*(a1 + 56) + 16))();
LABEL_13:
}

- (void)getCredentialStatusWithParams:(id)params flow:(id)flow completion:(id)completion
{
  paramsCopy = params;
  flowCopy = flow;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__HMMTRDoorLockClusterAPIRouter_getCredentialStatusWithParams_flow_completion___block_invoke;
  v14[3] = &unk_2786EF020;
  v14[4] = self;
  v15 = flowCopy;
  v16 = paramsCopy;
  v17 = completionCopy;
  v11 = paramsCopy;
  v12 = flowCopy;
  v13 = completionCopy;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v12 completion:v14];
}

void __79__HMMTRDoorLockClusterAPIRouter_getCredentialStatusWithParams_flow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = [*(a1 + 32) doorLock];
    if (v6)
    {
      if (!a2 || (v7 = objc_opt_class(), [*(a1 + 48) credential], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "credentialType"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = objc_msgSend(v7, "isCredentialTypeAliro:", v9), v9, v8, !v7))
      {
        [v6 getCredentialStatusWithParams:*(a1 + 48) expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
LABEL_12:

        goto LABEL_13;
      }

      v10 = [objc_opt_class() aliroGetCredentialParamsFromParams:*(a1 + 48) flow:*(a1 + 40)];
      [v6 appleGetAliroCredentialStatusWithParams:v10 expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [*(a1 + 40) UUID];
        v17 = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = v15;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = *(a1 + 56);
      v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v16 + 16))(v16, 0, v10);
    }

    goto LABEL_12;
  }

  (*(*(a1 + 56) + 16))();
LABEL_13:
}

- (void)setCredentialWithParams:(id)params flow:(id)flow completion:(id)completion
{
  paramsCopy = params;
  flowCopy = flow;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__HMMTRDoorLockClusterAPIRouter_setCredentialWithParams_flow_completion___block_invoke;
  v14[3] = &unk_2786EF020;
  v14[4] = self;
  v15 = flowCopy;
  v16 = paramsCopy;
  v17 = completionCopy;
  v11 = paramsCopy;
  v12 = flowCopy;
  v13 = completionCopy;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v12 completion:v14];
}

void __73__HMMTRDoorLockClusterAPIRouter_setCredentialWithParams_flow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = [*(a1 + 32) doorLock];
    if (v6)
    {
      if (!a2 || (v7 = objc_opt_class(), [*(a1 + 48) credential], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "credentialType"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = objc_msgSend(v7, "isCredentialTypeAliro:", v9), v9, v8, !v7))
      {
        [v6 setCredentialWithParams:*(a1 + 48) expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
LABEL_12:

        goto LABEL_13;
      }

      v10 = [objc_opt_class() aliroSetCredentialParamsFromParams:*(a1 + 48) flow:*(a1 + 40)];
      [v6 appleSetAliroCredentialWithParams:v10 expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [*(a1 + 40) UUID];
        v17 = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = v15;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = *(a1 + 56);
      v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v16 + 16))(v16, 0, v10);
    }

    goto LABEL_12;
  }

  (*(*(a1 + 56) + 16))();
LABEL_13:
}

- (void)readAttributeAliroBLEAdvertisingVersionWithFlow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__HMMTRDoorLockClusterAPIRouter_readAttributeAliroBLEAdvertisingVersionWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = flowCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = flowCopy;
  v9 = completionCopy;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __92__HMMTRDoorLockClusterAPIRouter_readAttributeAliroBLEAdvertisingVersionWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleAliroBLEAdvertisingVersionWithParams:0];
      }

      else
      {
        [v6 readAttributeAliroBLEAdvertisingVersionWithParams:0];
      }
      v14 = ;
      v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v18 = 138543618;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }
}

- (void)readAttributeAliroSupportedBLEUWBProtocolVersionsWithFlow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __102__HMMTRDoorLockClusterAPIRouter_readAttributeAliroSupportedBLEUWBProtocolVersionsWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = flowCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = flowCopy;
  v9 = completionCopy;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __102__HMMTRDoorLockClusterAPIRouter_readAttributeAliroSupportedBLEUWBProtocolVersionsWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleAliroSupportedBLEUWBProtocolVersionsWithParams:0];
      }

      else
      {
        [v6 readAttributeAliroSupportedBLEUWBProtocolVersionsWithParams:0];
      }
      v14 = ;
      v15 = [objc_opt_class() arrayOfDataFromRead:v14];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v16 = 138543618;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }
}

- (void)readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithFlow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __116__HMMTRDoorLockClusterAPIRouter_readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = flowCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = flowCopy;
  v9 = completionCopy;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __116__HMMTRDoorLockClusterAPIRouter_readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleAliroExpeditedTransactionSupportedProtocolVersionsWithParams:0];
      }

      else
      {
        [v6 readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithParams:0];
      }
      v14 = ;
      v15 = [objc_opt_class() arrayOfDataFromRead:v14];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v16 = 138543618;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }
}

- (void)numberOfAliroDeviceKeyCredentialsSupportedWithFlow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __95__HMMTRDoorLockClusterAPIRouter_numberOfAliroDeviceKeyCredentialsSupportedWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = flowCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = flowCopy;
  v9 = completionCopy;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __95__HMMTRDoorLockClusterAPIRouter_numberOfAliroDeviceKeyCredentialsSupportedWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleNumberOfAliroEndpointKeysSupportedWithParams:0];
      }

      else
      {
        [v6 readAttributeNumberOfAliroEndpointKeysSupportedWithParams:0];
      }
      v14 = ;
      v15 = [v14 objectForKey:@"value"];
      if (!v15)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = *(a1 + 32);
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [*(a1 + 40) UUID];
          v21 = 138543618;
          v22 = v19;
          v23 = 2112;
          v24 = v20;
          _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not determine total number of aliro device credentials supported, assuming 50 by default", &v21, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v15 = &unk_283EE8850;
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v21 = 138543618;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }
}

- (void)numberOfAliroIssuerKeyCredentialsSupportedWithFlow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __95__HMMTRDoorLockClusterAPIRouter_numberOfAliroIssuerKeyCredentialsSupportedWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = flowCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = flowCopy;
  v9 = completionCopy;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __95__HMMTRDoorLockClusterAPIRouter_numberOfAliroIssuerKeyCredentialsSupportedWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleNumberOfAliroCredentialIssuerKeysSupportedWithParams:0];
      }

      else
      {
        [v6 readAttributeNumberOfAliroCredentialIssuerKeysSupportedWithParams:0];
      }
      v14 = ;
      v15 = [v14 objectForKey:@"value"];
      if (!v15)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = *(a1 + 32);
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [*(a1 + 40) UUID];
          v21 = 138543618;
          v22 = v19;
          v23 = 2112;
          v24 = v20;
          _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not determine total number of aliro issuer credentials supported, assuming 50 by default", &v21, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v15 = &unk_283EE8850;
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v21 = 138543618;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }
}

- (void)readAttributeAliroGroupResolvingKeyWithFlow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__HMMTRDoorLockClusterAPIRouter_readAttributeAliroGroupResolvingKeyWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = flowCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = flowCopy;
  v9 = completionCopy;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __88__HMMTRDoorLockClusterAPIRouter_readAttributeAliroGroupResolvingKeyWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleAliroGroupResolvingKeyWithParams:0];
      }

      else
      {
        [v6 readAttributeAliroGroupResolvingKeyWithParams:0];
      }
      v14 = ;
      v15 = [HMMTRSyncClusterDoorLock dataOfReadValue:v14];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v16 = 138543618;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }
}

- (void)readAttributeAliroReaderGroupIdentifierWithFlow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__HMMTRDoorLockClusterAPIRouter_readAttributeAliroReaderGroupIdentifierWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = flowCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = flowCopy;
  v9 = completionCopy;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __92__HMMTRDoorLockClusterAPIRouter_readAttributeAliroReaderGroupIdentifierWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleAliroReaderGroupIdentifierWithParams:0];
      }

      else
      {
        [v6 readAttributeAliroReaderGroupIdentifierWithParams:0];
      }
      v14 = ;
      v15 = [HMMTRSyncClusterDoorLock dataOfReadValue:v14];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v16 = 138543618;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }
}

- (void)readAttributeAliroReaderVerificationKeyWithFlow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__HMMTRDoorLockClusterAPIRouter_readAttributeAliroReaderVerificationKeyWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = flowCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = flowCopy;
  v9 = completionCopy;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __92__HMMTRDoorLockClusterAPIRouter_readAttributeAliroReaderVerificationKeyWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleAliroReaderVerificationKeyWithParams:0];
      }

      else
      {
        [v6 readAttributeAliroReaderVerificationKeyWithParams:0];
      }
      v14 = ;
      v15 = [HMMTRSyncClusterDoorLock dataOfReadValue:v14];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v16 = 138543618;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }
}

- (void)fetchAppleClusterFeaturesWithFlow:(id)flow completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = uUID;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching apple cluster features", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = +[HMMTRDescriptorClusterManager sharedManager];
  device = [(HMMTRDoorLockClusterAPIRouter *)selfCopy device];
  queue = [(HMMTRDoorLockClusterAPIRouter *)selfCopy queue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__HMMTRDoorLockClusterAPIRouter_fetchAppleClusterFeaturesWithFlow_completion___block_invoke;
  v18[3] = &unk_2786F0F20;
  v18[4] = selfCopy;
  v19 = flowCopy;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = flowCopy;
  [v13 endpointForClusterID:&unk_283EE8820 mtrDevice:device callbackQueue:queue completionHandler:v18];
}

void __78__HMMTRDoorLockClusterAPIRouter_fetchAppleClusterFeaturesWithFlow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v39 = 138543874;
      v40 = v10;
      v41 = 2112;
      v42 = v11;
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found Apple Lock Cluster on endpoint: %@", &v39, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 32) device];
    v13 = [v12 readAttributeWithEndpointID:v5 clusterID:&unk_283EE8820 attributeID:&unk_283EE8838 params:0];

    v14 = [HMMTRSyncClusterDoorLock numberFromAttributeDictionary:v13];
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    v18 = v17;
    if (v14)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [*(a1 + 40) UUID];
        v39 = 138543874;
        v40 = v19;
        v41 = 2112;
        v42 = v20;
        v43 = 2112;
        v44 = v14;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] featureMap: %@", &v39, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v21 = [objc_opt_class() doorLockFeatureMapSupportsAppleCustomAliroProvisioning:v14];
      v22 = [v21 BOOLValue];

      v23 = [objc_opt_class() doorLockFeatureMapSupportsAppleCustomAliroBLEUWB:v14];
      [v23 BOOLValue];

      v24 = [MEMORY[0x277CCABB0] numberWithBool:v22];
      [*(a1 + 32) setNsNumberIsCustomClusterAvailable:v24];

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [*(a1 + 40) UUID];
        v39 = 138544130;
        v40 = v33;
        v41 = 2112;
        v42 = v34;
        v43 = 2112;
        v44 = v13;
        v45 = 2112;
        v46 = v6;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not find featureMap, which is required, on Apple custom lock cluster. values: %@, error: %@", &v39, 0x2Au);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 32) setNsNumberIsCustomClusterAvailable:0];
      v35 = *(a1 + 48);
      v36 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2 reason:{@"Did not find featureMap, which is required, on Apple custom lock cluster."}];
      (*(v35 + 16))(v35, 0, 0, v36);
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    v28 = v27;
    if (v6)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [*(a1 + 40) UUID];
        v39 = 138543874;
        v40 = v29;
        v41 = 2112;
        v42 = v30;
        v43 = 2112;
        v44 = v6;
        _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Error while looking for Apple Lock Cluster: %@", &v39, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v31 = *(a1 + 32);
      v32 = 0;
    }

    else
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        v38 = [*(a1 + 40) UUID];
        v39 = 138543618;
        v40 = v37;
        v41 = 2112;
        v42 = v38;
        _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find Apple Lock Cluster", &v39, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v31 = *(a1 + 32);
      v32 = MEMORY[0x277CBEC28];
    }

    [v31 setNsNumberIsCustomClusterAvailable:v32];
    (*(*(a1 + 48) + 16))();
  }
}

- (void)isCustomClusterAvailableWithFlow:(id)flow completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  completionCopy = completion;
  nsNumberIsCustomClusterAvailable = [(HMMTRDoorLockClusterAPIRouter *)self nsNumberIsCustomClusterAvailable];

  if (nsNumberIsCustomClusterAvailable)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      nsNumberIsCustomClusterAvailable2 = [(HMMTRDoorLockClusterAPIRouter *)selfCopy nsNumberIsCustomClusterAvailable];
      [nsNumberIsCustomClusterAvailable2 BOOLValue];
      v15 = HMFBooleanToString();
      *buf = 138543874;
      v24 = v12;
      v25 = 2112;
      v26 = uUID;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Returning cached value for isCustomClusterAvailable: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    nsNumberIsCustomClusterAvailable3 = [(HMMTRDoorLockClusterAPIRouter *)selfCopy nsNumberIsCustomClusterAvailable];
    completionCopy[2](completionCopy, [nsNumberIsCustomClusterAvailable3 BOOLValue], 0);
  }

  else
  {
    v17 = +[HMMTRDescriptorClusterManager sharedManager];
    device = [(HMMTRDoorLockClusterAPIRouter *)self device];
    queue = [(HMMTRDoorLockClusterAPIRouter *)self queue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __77__HMMTRDoorLockClusterAPIRouter_isCustomClusterAvailableWithFlow_completion___block_invoke;
    v20[3] = &unk_2786F0F20;
    v20[4] = self;
    v21 = flowCopy;
    v22 = completionCopy;
    [v17 endpointForClusterID:&unk_283EE8820 mtrDevice:device callbackQueue:queue completionHandler:v20];
  }
}

void __77__HMMTRDoorLockClusterAPIRouter_isCustomClusterAvailableWithFlow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v38 = 138543874;
      v39 = v10;
      v40 = 2112;
      v41 = v11;
      v42 = 2112;
      v43 = v5;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found Apple Lock Cluster on endpoint: %@", &v38, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 32) device];
    v13 = [v12 readAttributeWithEndpointID:v5 clusterID:&unk_283EE8820 attributeID:&unk_283EE8838 params:0];

    v14 = [HMMTRSyncClusterDoorLock numberFromAttributeDictionary:v13];
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    v18 = v17;
    if (v14)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [*(a1 + 40) UUID];
        v38 = 138543874;
        v39 = v19;
        v40 = 2112;
        v41 = v20;
        v42 = 2112;
        v43 = v14;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] featureMap: %@", &v38, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v21 = [objc_opt_class() doorLockFeatureMapSupportsAppleCustomAliroProvisioning:v14];
      v22 = [v21 BOOLValue];

      v23 = [MEMORY[0x277CCABB0] numberWithBool:v22];
      [*(a1 + 32) setNsNumberIsCustomClusterAvailable:v23];

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v33 = [*(a1 + 40) UUID];
        v38 = 138544130;
        v39 = v32;
        v40 = 2112;
        v41 = v33;
        v42 = 2112;
        v43 = v13;
        v44 = 2112;
        v45 = v6;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not find featureMap, which is required, on Apple custom lock cluster. values: %@, error: %@", &v38, 0x2Au);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 32) setNsNumberIsCustomClusterAvailable:0];
      v34 = *(a1 + 48);
      v35 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2 reason:{@"Did not find featureMap, which is required, on Apple custom lock cluster."}];
      (*(v34 + 16))(v34, 0, v35);
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    v27 = v26;
    if (v6)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [*(a1 + 40) UUID];
        v38 = 138543874;
        v39 = v28;
        v40 = 2112;
        v41 = v29;
        v42 = 2112;
        v43 = v6;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Error while looking for Apple Lock Cluster: %@", &v38, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      v30 = *(a1 + 32);
      v31 = 0;
    }

    else
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [*(a1 + 40) UUID];
        v38 = 138543618;
        v39 = v36;
        v40 = 2112;
        v41 = v37;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find Apple Lock Cluster", &v38, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v30 = *(a1 + 32);
      v31 = MEMORY[0x277CBEC28];
    }

    [v30 setNsNumberIsCustomClusterAvailable:v31];
    (*(*(a1 + 48) + 16))();
  }
}

- (HMMTRDoorLockClusterAPIRouter)initWithDoorLock:(id)lock device:(id)device queue:(id)queue
{
  lockCopy = lock;
  deviceCopy = device;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = HMMTRDoorLockClusterAPIRouter;
  v11 = [(HMMTRDoorLockClusterAPIRouter *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_doorLock, lockCopy);
    objc_storeStrong(&v12->_device, device);
    objc_storeStrong(&v12->_queue, queue);
  }

  return v12;
}

+ (id)mergeAndRemoveDuplicatesFromArray:(id)array andArray:(id)andArray
{
  v48 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CBEB18];
  andArrayCopy = andArray;
  arrayCopy = array;
  array = [v6 array];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = MEMORY[0x277CBEBF8];
  if (arrayCopy)
  {
    v11 = arrayCopy;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = v11;

  if (andArrayCopy)
  {
    v13 = andArrayCopy;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v29 = v14;
  v30 = v12;
  v46[0] = v12;
  v46[1] = v14;
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
  v34 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v34)
  {
    v33 = *v42;
    do
    {
      v15 = 0;
      do
      {
        if (*v42 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v15;
        v16 = *(*(&v41 + 1) + 8 * v15);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v38;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v38 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v37 + 1) + 8 * i);
              v23 = MEMORY[0x277CCACA8];
              credentialType = [v22 credentialType];
              credentialIndex = [v22 credentialIndex];
              v26 = [v23 stringWithFormat:@"%@_%@", credentialType, credentialIndex];

              if (([v9 containsObject:v26] & 1) == 0)
              {
                [v9 addObject:v26];
                [array addObject:v22];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v19);
        }

        v15 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v34);
  }

  v27 = [array copy];
  objc_autoreleasePoolPop(context);

  return v27;
}

+ (id)readerConfigParamsFromReaderConfig:(id)config
{
  configCopy = config;
  v4 = objc_opt_new();
  readerPrivateKey = [configCopy readerPrivateKey];
  [v4 setSigningKey:readerPrivateKey];

  readerPublicKeyExternalRepresentation = [configCopy readerPublicKeyExternalRepresentation];
  [v4 setVerificationKey:readerPublicKeyExternalRepresentation];

  readerGroupIdentifier = [configCopy readerGroupIdentifier];
  [v4 setGroupIdentifier:readerGroupIdentifier];

  groupResolvingKey = [configCopy groupResolvingKey];

  [v4 setGroupResolvingKey:groupResolvingKey];

  return v4;
}

+ (id)doorLockFeatureMapSupportsAppleCustomAliroBLEUWB:(id)b
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(b, "unsignedIntValue") & 2}];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];

  return v5;
}

+ (id)doorLockFeatureMapSupportsAppleCustomAliroProvisioning:(id)provisioning
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(provisioning, "unsignedIntValue") & 1}];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];

  return v5;
}

+ (id)aliroReaderConfigParamsFromParams:(id)params
{
  paramsCopy = params;
  v4 = objc_opt_new();
  signingKey = [paramsCopy signingKey];
  [v4 setSigningKey:signingKey];

  verificationKey = [paramsCopy verificationKey];
  [v4 setVerificationKey:verificationKey];

  groupIdentifier = [paramsCopy groupIdentifier];
  [v4 setGroupIdentifier:groupIdentifier];

  groupResolvingKey = [paramsCopy groupResolvingKey];

  [v4 setGroupResolvingKey:groupResolvingKey];

  return v4;
}

+ (id)aliroClearCredentialParamsFromParams:(id)params flow:(id)flow
{
  flowCopy = flow;
  paramsCopy = params;
  v8 = objc_opt_new();
  credential = [paramsCopy credential];

  v10 = [self aliroCredentialFromCredential:credential flow:flowCopy];

  [v8 setCredential:v10];

  return v8;
}

+ (id)aliroGetCredentialParamsFromParams:(id)params flow:(id)flow
{
  flowCopy = flow;
  paramsCopy = params;
  v8 = objc_opt_new();
  credential = [paramsCopy credential];

  v10 = [self aliroCredentialFromCredential:credential flow:flowCopy];

  [v8 setCredential:v10];

  return v8;
}

+ (id)credentialTypeForAliroCredentialType:(unsigned __int8)type flow:(id)flow
{
  typeCopy = type;
  v21 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  if (typeCopy == 3)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = uUID;
      v19 = 2048;
      v20 = 3;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot convert AliroNonEvictableEndpointKey credential type: %ld to credential type", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v4 = &unk_283EE88B0;
  }

  else
  {
    if (typeCopy == 2)
    {
      v4 = &unk_283EE7A28;
    }

    else
    {
      if (typeCopy != 1)
      {
        goto LABEL_10;
      }

      v4 = &unk_283EE7A10;
    }

    v8 = v4;
  }

LABEL_10:

  return v4;
}

+ (id)aliroCredentialTypeForCredentialType:(id)type flow:(id)flow
{
  v21 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  flowCopy = flow;
  if (HMFEqualObjects())
  {
    v8 = &unk_283EE8880;
  }

  else if (HMFEqualObjects())
  {
    v8 = &unk_283EE8898;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = uUID;
      v19 = 2112;
      v20 = typeCopy;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot convert credential type: %@ to an Apple Aliro custom cluster credential type", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = &unk_283EE88B0;
  }

  return v8;
}

+ (id)aliroCredentialFromCredential:(id)credential flow:(id)flow
{
  flowCopy = flow;
  credentialCopy = credential;
  v8 = objc_opt_new();
  credentialType = [credentialCopy credentialType];
  v10 = [self aliroCredentialTypeForCredentialType:credentialType flow:flowCopy];

  [v8 setCredentialType:v10];
  credentialIndex = [credentialCopy credentialIndex];

  [v8 setCredentialIndex:credentialIndex];

  return v8;
}

+ (id)aliroSetCredentialParamsFromParams:(id)params flow:(id)flow
{
  flowCopy = flow;
  paramsCopy = params;
  v8 = objc_opt_new();
  operationType = [paramsCopy operationType];
  [v8 setOperationType:operationType];

  userIndex = [paramsCopy userIndex];
  [v8 setUserIndex:userIndex];

  credential = [paramsCopy credential];
  v12 = [self aliroCredentialFromCredential:credential flow:flowCopy];

  [v8 setCredential:v12];
  credentialData = [paramsCopy credentialData];

  [v8 setCredentialData:credentialData];

  return v8;
}

+ (BOOL)isCredentialTypeAliro:(id)aliro
{
  aliroCopy = aliro;
  if (HMFEqualObjects())
  {
    v4 = 1;
  }

  else
  {
    v4 = HMFEqualObjects();
  }

  return v4;
}

+ (id)arrayOfDataFromRead:(id)read
{
  v3 = [read objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 na_map:&__block_literal_global_9662];

  return v6;
}

void *__53__HMMTRDoorLockClusterAPIRouter_arrayOfDataFromRead___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [HMMTRSyncClusterDoorLock valueFromDictionaryWithData:v4];

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

  return v6;
}

@end