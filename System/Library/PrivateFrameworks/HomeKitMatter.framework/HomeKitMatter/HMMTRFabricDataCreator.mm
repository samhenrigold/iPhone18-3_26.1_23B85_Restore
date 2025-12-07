@interface HMMTRFabricDataCreator
+ (id)fabricDataForRootKeyPair:(id)pair opKeyPair:(id)keyPair fabricID:(id)d residentNodeID:(id)iD overridingRCAC:(id)c ipk:(id)ipk;
+ (id)logCategory;
- (HMMTRFabricDataCreator)initWithCHIPStorageDelegate:(id)delegate keychainDelegate:(id)keychainDelegate;
- (HMMTRMultiFabricDataStoreQueryCHIPStorageDelegate)chipStorageDelegate;
- (HMMTRMultiFabricDataStoreQueryKeychainDelegate)keychainDelegate;
- (id)generateIPK;
- (id)logIdentifier;
- (id)newFabricData;
@end

@implementation HMMTRFabricDataCreator

- (HMMTRMultiFabricDataStoreQueryKeychainDelegate)keychainDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_keychainDelegate);

  return WeakRetained;
}

- (HMMTRMultiFabricDataStoreQueryCHIPStorageDelegate)chipStorageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chipStorageDelegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  chipStorageDelegate = [(HMMTRFabricDataCreator *)self chipStorageDelegate];
  identifier = [chipStorageDelegate identifier];

  return identifier;
}

- (id)generateIPK
{
  v5 = *MEMORY[0x277D85DE8];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, bytes))
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:16];
  }

  return v2;
}

- (id)newFabricData
{
  v32 = *MEMORY[0x277D85DE8];
  keychainDelegate = [(HMMTRFabricDataCreator *)self keychainDelegate];
  nocSigner = [keychainDelegate nocSigner];

  initUnassociated = nocSigner;
  if (!nocSigner)
  {
    initUnassociated = [[HMMTRMatterKeypair alloc] initUnassociated];
  }

  keychainDelegate2 = [(HMMTRFabricDataCreator *)self keychainDelegate];
  ownerSharedOperationalKeyPair = [keychainDelegate2 ownerSharedOperationalKeyPair];

  initUnassociated2 = ownerSharedOperationalKeyPair;
  if (!ownerSharedOperationalKeyPair)
  {
    initUnassociated2 = [[HMMTRMatterKeypair alloc] initUnassociated];
  }

  chipStorageDelegate = [(HMMTRFabricDataCreator *)self chipStorageDelegate];
  fabricID = [chipStorageDelegate fabricID];

  if (!fabricID || [fabricID isEqual:&unk_283EE7E30])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[HMMTRUtilities randomNodeID](HMMTRUtilities, "randomNodeID")}];

    fabricID = v11;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[HMMTRUtilities randomNodeID](HMMTRUtilities, "randomNodeID")}];
  generateIPK = [(HMMTRFabricDataCreator *)self generateIPK];
  if (!generateIPK)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v19;
      v20 = "%{public}@IPK generation failed";
LABEL_21:
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, v20, &v30, 0xCu);
    }

LABEL_22:

    objc_autoreleasePoolPop(v16);
    v15 = 0;
    goto LABEL_23;
  }

  v14 = [objc_opt_class() fabricDataForRootKeyPair:initUnassociated opKeyPair:initUnassociated2 fabricID:fabricID residentNodeID:v12 overridingRCAC:0 ipk:generateIPK];
  if (!v14)
  {
    if (nocSigner | ownerSharedOperationalKeyPair)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v24;
        _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Cannot generate new fabric data reusing previous keys - Trying with a new set of keys", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      initUnassociated3 = [[HMMTRMatterKeypair alloc] initUnassociated];

      initUnassociated4 = [[HMMTRMatterKeypair alloc] initUnassociated];
      v27 = [objc_opt_class() fabricDataForRootKeyPair:initUnassociated3 opKeyPair:initUnassociated4 fabricID:fabricID residentNodeID:v12 overridingRCAC:0 ipk:generateIPK];
      if (v27)
      {
        v15 = v27;
        initUnassociated2 = initUnassociated4;
        initUnassociated = initUnassociated3;
        goto LABEL_23;
      }

      initUnassociated = initUnassociated3;
      initUnassociated2 = initUnassociated4;
    }

    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v19;
      v20 = "%{public}@Failed to generate new fabric data";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v15 = v14;
LABEL_23:

  return v15;
}

- (HMMTRFabricDataCreator)initWithCHIPStorageDelegate:(id)delegate keychainDelegate:(id)keychainDelegate
{
  delegateCopy = delegate;
  keychainDelegateCopy = keychainDelegate;
  v11.receiver = self;
  v11.super_class = HMMTRFabricDataCreator;
  v8 = [(HMMTRFabricDataCreator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_chipStorageDelegate, delegateCopy);
    objc_storeWeak(&v9->_keychainDelegate, keychainDelegateCopy);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6, &__block_literal_global_2033);
  }

  v3 = logCategory__hmf_once_v7;

  return v3;
}

uint64_t __37__HMMTRFabricDataCreator_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v7;
  logCategory__hmf_once_v7 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)fabricDataForRootKeyPair:(id)pair opKeyPair:(id)keyPair fabricID:(id)d residentNodeID:(id)iD overridingRCAC:(id)c ipk:(id)ipk
{
  v54 = *MEMORY[0x277D85DE8];
  pairCopy = pair;
  keyPairCopy = keyPair;
  dCopy = d;
  iDCopy = iD;
  cCopy = c;
  ipkCopy = ipk;
  v19 = SecKeyCopyExternalRepresentation([pairCopy publicKey], 0);
  v20 = v19;
  if (v19)
  {
    v45 = keyPairCopy;
    if (cCopy)
    {
      v21 = cCopy;
    }

    else
    {
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[__CFData hash](v19, "hash")}];
    }

    v43 = v21;
    v44 = ipkCopy;
    v49 = 0;
    v30 = [MEMORY[0x277CD5230] createRootCertificate:pairCopy issuerID:v21 fabricID:dCopy error:&v49];
    v31 = v49;
    if (v30)
    {
      v48 = v31;
      v29 = iDCopy;
      v32 = [MEMORY[0x277CD5230] createOperationalCertificate:pairCopy signingCertificate:v30 operationalPublicKey:objc_msgSend(v45 fabricID:"publicKey") nodeID:dCopy caseAuthenticatedTags:iDCopy error:{0, &v48}];
      v42 = v48;

      if (v32)
      {
        v28 = [[HMMTRFabricData alloc] initWithRootPublicKey:v20 fabricID:dCopy ipk:ipkCopy residentNodeID:iDCopy rootKeyPair:pairCopy rootCert:v30 residentOperationalKeyPair:v45 residentOperationalCert:v32];
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        selfCopy = self;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          *buf = 138543618;
          v51 = v40;
          v52 = 2112;
          v53 = v42;
          _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@Resident Operational Cert generation failed: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v37);
        v28 = 0;
        v29 = iDCopy;
        ipkCopy = v44;
      }

      v31 = v42;
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v51 = v36;
        v52 = 2112;
        v53 = v31;
        _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, "%{public}@Root cert generation failed: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v28 = 0;
      v29 = iDCopy;
      ipkCopy = v44;
    }

    keyPairCopy = v45;
  }

  else
  {
    v46 = dCopy;
    v22 = cCopy;
    v23 = ipkCopy;
    v24 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v27;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@Bad root key", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v28 = 0;
    ipkCopy = v23;
    cCopy = v22;
    dCopy = v46;
    v29 = iDCopy;
  }

  return v28;
}

@end