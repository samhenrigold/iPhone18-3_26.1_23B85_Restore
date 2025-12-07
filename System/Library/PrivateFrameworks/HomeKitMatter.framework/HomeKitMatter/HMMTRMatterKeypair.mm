@interface HMMTRMatterKeypair
+ (id)logCategory;
- (BOOL)_generateKeys;
- (BOOL)_reloadWithData:(id)data;
- (BOOL)_reloadWithDictionary:(id)dictionary;
- (BOOL)_storePrivateKeyData:(id)data;
- (BOOL)deserialize:(id)deserialize;
- (BOOL)initializeAllowingNew:(BOOL)new;
- (BOOL)updateStorageWithPrivateKeyData:(id)data;
- (HMMTRMatterKeypair)initWithAccount:(id)account;
- (HMMTRMatterKeypair)initWithPrivateKey:(__SecKey *)key;
- (HMMTRMatterKeypair)initWithPrivateKeyExternalRepresentation:(id)representation;
- (HMMTRMatterKeypair)initWithTLVData:(id)data;
- (HMMTRMatterKeypair)initWithV0Account:(id)account;
- (HMMTRMatterKeypair)initWithV0Account:(id)account privateKey:(__SecKey *)key;
- (HMMTRMatterKeypair)initWithV1Account:(id)account;
- (HMMTRMatterKeypair)initWithV1Account:(id)account privateKey:(__SecKey *)key operationalKey:(__SecKey *)operationalKey rootCert:(id)cert operationalCert:(id)operationalCert ipk:(id)ipk;
- (__SecKey)copyPublicKey;
- (__SecKey)createPrivateKeyWithData:(id)data;
- (id)_getPrivateKeydata;
- (id)archiveV1KeyItemValue;
- (id)copyV0KeyPair;
- (id)initAsDeviceLocal;
- (id)initUnassociated;
- (id)serialize;
- (id)signMessageECDSA_DER:(id)r;
- (id)unarchiveV1KeyItemValue:(id)value;
- (void)dealloc;
- (void)setOperationalKey:(__SecKey *)key;
@end

@implementation HMMTRMatterKeypair

- (__SecKey)createPrivateKeyWithData:(id)data
{
  v20[5] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = *MEMORY[0x277CDBFF0];
  v6 = *MEMORY[0x277CDC028];
  v19[0] = *MEMORY[0x277CDBFE0];
  v19[1] = v6;
  v7 = *MEMORY[0x277CDC040];
  v20[0] = v5;
  v20[1] = v7;
  v8 = *MEMORY[0x277CDC080];
  v19[2] = *MEMORY[0x277CDC018];
  v19[3] = v8;
  error = 0;
  v20[2] = &unk_283EE7E48;
  v20[3] = @"A CHIPPlugin Matter Keypair.";
  v19[4] = *MEMORY[0x277CDBF30];
  v20[4] = @"com.apple.matter.commissioner.ca.issuer.id";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v10 = SecKeyCreateWithData(dataCopy, v9, &error);
  if (error)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@SecKeyCreateWithData failed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  return v10;
}

- (BOOL)_reloadWithDictionary:(id)dictionary
{
  v34[5] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if ([(HMMTRMatterKeypair *)self version]!= 1)
  {
    _HMFPreconditionFailure();
  }

  v5 = *MEMORY[0x277CDBFF0];
  v6 = *MEMORY[0x277CDC028];
  v33[0] = *MEMORY[0x277CDBFE0];
  v33[1] = v6;
  v7 = *MEMORY[0x277CDC040];
  v34[0] = v5;
  v34[1] = v7;
  v8 = *MEMORY[0x277CDC080];
  v33[2] = *MEMORY[0x277CDC018];
  v33[3] = v8;
  error = 0;
  v34[2] = &unk_283EE7E48;
  v34[3] = @"A CHIPPlugin Matter Keypair.";
  v33[4] = *MEMORY[0x277CDBF30];
  v34[4] = @"com.apple.matter.commissioner.ca.issuer.id";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:5];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"privkey"];
  self->_privateKey = SecKeyCreateWithData(v10, v9, &error);

  if (error)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v14;
      v31 = 2112;
      v32 = error;
      v15 = "%{public}@Unable to reconstruct private key %@";
LABEL_5:
      v16 = v13;
      v17 = 22;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    }
  }

  else
  {
    v20 = SecKeyCopyPublicKey(self->_privateKey);
    self->_publicKey = v20;
    if (!v20)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v13 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v14;
      v15 = "%{public}@Unable to recover public key";
      v16 = v13;
      v17 = 12;
      goto LABEL_6;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"opkey"];
    self->_operationalKey = SecKeyCreateWithData(v21, v9, &error);

    if (self->_operationalKey)
    {
      v22 = [dictionaryCopy objectForKeyedSubscript:@"rootcert"];
      rootCert = self->_rootCert;
      self->_rootCert = v22;

      v24 = [dictionaryCopy objectForKeyedSubscript:@"opcert"];
      operationalCert = self->_operationalCert;
      self->_operationalCert = v24;

      v26 = [dictionaryCopy objectForKeyedSubscript:@"ipk"];
      ipk = self->_ipk;
      self->_ipk = v26;

      v18 = 1;
      goto LABEL_8;
    }

    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v14;
      v31 = 2112;
      v32 = error;
      v15 = "%{public}@Unable to reconstruct operational key %@";
      goto LABEL_5;
    }
  }

LABEL_7:

  objc_autoreleasePoolPop(v11);
  v18 = 0;
LABEL_8:

  return v18;
}

- (BOOL)_reloadWithData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([(HMMTRMatterKeypair *)self version]!= 1)
  {
    v7 = [(HMMTRMatterKeypair *)self createPrivateKeyWithData:dataCopy];
    self->_privateKey = v7;
    if (v7)
    {
      v8 = SecKeyCopyPublicKey(v7);
      self->_publicKey = v8;
      if (v8)
      {
        v6 = 1;
        goto LABEL_15;
      }

      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v12;
        v13 = "%{public}@Unable to recover public key";
        goto LABEL_13;
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v12;
        v13 = "%{public}@Unable to reconstruct private key";
LABEL_13:
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, v13, &v15, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v9);
    v6 = 0;
    goto LABEL_15;
  }

  v5 = [(HMMTRMatterKeypair *)self unarchiveV1KeyItemValue:dataCopy];
  if (v5)
  {
    v6 = [(HMMTRMatterKeypair *)self _reloadWithDictionary:v5];
  }

  else
  {
    v6 = 0;
  }

LABEL_15:
  return v6;
}

- (id)_getPrivateKeydata
{
  v39 = *MEMORY[0x277D85DE8];
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  keychainAccount = [(HMMTRMatterKeypair *)self keychainAccount];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMMTRMatterKeypair deviceLocal](self, "deviceLocal") ^ 1}];
  v33 = 0;
  v6 = [systemStore allKeychainItemsForType:&unk_283EE7E60 identifier:keychainAccount syncable:v5 error:&v33];
  v7 = v33;

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v11;
    v37 = 2112;
    v38 = v7;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Load Keychain Item Result : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v28 = v7;
    v15 = *v30;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        account = [v17 account];
        keychainAccount2 = [(HMMTRMatterKeypair *)selfCopy keychainAccount];
        v20 = [account isEqualToString:keychainAccount2];

        if (v20)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = selfCopy;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = HMFGetLogIdentifier();
            valueData = [v17 valueData];
            *buf = 138543618;
            v36 = v25;
            v37 = 2112;
            v38 = valueData;
            _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, "%{public}@Returning matching key : %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v22);
          valueData2 = [v17 valueData];
          goto LABEL_15;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    valueData2 = 0;
LABEL_15:
    v7 = v28;
  }

  else
  {
    valueData2 = 0;
  }

  return valueData2;
}

- (BOOL)_generateKeys
{
  v30[5] = *MEMORY[0x277D85DE8];
  if ([(HMMTRMatterKeypair *)self version]== 1)
  {
    _HMFPreconditionFailure();
  }

  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Generating a new keypair for the Matter CA", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277CDBFF0];
  v8 = *MEMORY[0x277CDC028];
  v29[0] = *MEMORY[0x277CDBFE0];
  v29[1] = v8;
  v9 = *MEMORY[0x277CDC040];
  v30[0] = v7;
  v30[1] = v9;
  v10 = *MEMORY[0x277CDC080];
  v29[2] = *MEMORY[0x277CDC018];
  v29[3] = v10;
  error = 0;
  v30[2] = &unk_283EE7E48;
  v30[3] = @"A CHIPPlugin Matter Keypair.";
  v29[4] = *MEMORY[0x277CDBF30];
  v30[4] = @"com.apple.matter.commissioner.ca.issuer.id";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:5];
  v12 = SecKeyCreateRandomKey(v11, &error);
  selfCopy->_privateKey = v12;
  if (error)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v16;
      v27 = 2112;
      v28 = error;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed in keygen %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = 0;
  }

  else
  {
    selfCopy->_publicKey = SecKeyCopyPublicKey(v12);
    v18 = SecKeyCopyExternalRepresentation(selfCopy->_privateKey, 0);
    if (v18)
    {
      if (selfCopy->_deviceLocal)
      {
        v17 = 1;
      }

      else
      {
        v17 = [(HMMTRMatterKeypair *)selfCopy _storePrivateKeyData:v18];
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v22;
        _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Failed in getting keypair data...", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v17 = 0;
    }
  }

  return v17;
}

- (BOOL)updateStorageWithPrivateKeyData:(id)data
{
  v68 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v65 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating V0 key in storage", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  keychainAccount = [(HMMTRMatterKeypair *)selfCopy keychainAccount];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMMTRMatterKeypair deviceLocal](selfCopy, "deviceLocal") ^ 1}];
  v62 = 0;
  v12 = [systemStore allKeychainItemsForType:&unk_283EE7E60 identifier:keychainAccount syncable:v11 error:&v62];
  v13 = v62;

  v14 = objc_autoreleasePoolPush();
  v15 = selfCopy;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v65 = v17;
    v66 = 2112;
    v67 = v13;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Load Keychain Item Result : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v19)
  {
    v20 = v19;
    v53 = dataCopy;
    v54 = systemStore;
    v21 = *v59;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v59 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v58 + 1) + 8 * i);
        account = [v23 account];
        keychainAccount2 = [(HMMTRMatterKeypair *)v15 keychainAccount];
        v26 = [account isEqualToString:keychainAccount2];

        if (v26)
        {
          v28 = objc_autoreleasePoolPush();
          v29 = v15;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = HMFGetLogIdentifier();
            valueData = [v23 valueData];
            *buf = 138543618;
            v65 = v31;
            v66 = 2112;
            v67 = valueData;
            _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@Returning matching key : %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
          v27 = v23;
          goto LABEL_17;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v58 objects:v63 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }

    v27 = 0;
LABEL_17:
    dataCopy = v53;
    systemStore = v54;
  }

  else
  {
    v27 = 0;
  }

  v33 = [v27 mutableCopy];
  v57 = v13;
  v34 = [systemStore deleteKeychainItem:v27 error:&v57];
  v35 = v57;

  if (v34)
  {
    [v33 setValueData:dataCopy];
    v56 = v35;
    v36 = [systemStore updateKeychainItem:v33 createIfNeeded:1 error:&v56];
    v37 = v56;

    if ((v36 & 1) == 0)
    {
      v55 = systemStore;
      v38 = dataCopy;
      v39 = objc_autoreleasePoolPush();
      v40 = v15;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v65 = v42;
        v66 = 2112;
        v67 = v37;
        _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to update V0 key: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      dataCopy = v38;
      systemStore = v55;
    }

    v43 = objc_autoreleasePoolPush();
    v44 = v15;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v46;
      _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_INFO, "%{public}@Successfully updated V0 key in storage", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v43);
    v47 = v37 == 0;
    v35 = v37;
  }

  else
  {
    v48 = objc_autoreleasePoolPush();
    v49 = v15;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = HMFGetLogIdentifier();
      *buf = 138543618;
      v65 = v51;
      v66 = 2112;
      v67 = v35;
      _os_log_impl(&dword_22AEAE000, v50, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove V0 key %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v48);
    v47 = 0;
  }

  return v47;
}

- (BOOL)_storePrivateKeyData:(id)data
{
  v22 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v6 = objc_alloc_init(MEMORY[0x277CFEBC8]);
  [v6 setValueData:dataCopy];
  [v6 setSyncable:{-[HMMTRMatterKeypair deviceLocal](self, "deviceLocal") ^ 1}];
  keychainAccount = [(HMMTRMatterKeypair *)self keychainAccount];
  [v6 setAccount:keychainAccount];

  [v6 setAccessGroup:@"com.apple.hap.pairing"];
  [v6 setLabel:@"A CHIPPlugin Matter Keypair."];
  [v6 setItemDescription:@"A CHIPPlugin Matter keypair is stored here."];
  [v6 setType:&unk_283EE7E60];
  v8 = MEMORY[0x277CFEC78];
  type = [v6 type];
  v10 = [v8 viewHintForType:type];
  [v6 setViewHint:v10];

  v17 = 0;
  [systemStore updateKeychainItem:v6 createIfNeeded:1 error:&v17];
  v11 = v17;
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v15;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Update Keychain Item Result : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  return v11 == 0;
}

- (id)archiveV1KeyItemValue
{
  v31[5] = *MEMORY[0x277D85DE8];
  if ([(HMMTRMatterKeypair *)self version]!= 1)
  {
    _HMFPreconditionFailure();
  }

  v3 = SecKeyCopyExternalRepresentation([(HMMTRMatterKeypair *)self privateKey], 0);
  if (v3)
  {
    v4 = SecKeyCopyExternalRepresentation([(HMMTRMatterKeypair *)self operationalKey], 0);
    v5 = v4;
    if (v4)
    {
      v30[0] = @"privkey";
      v30[1] = @"opkey";
      v31[0] = v3;
      v31[1] = v4;
      v30[2] = @"rootcert";
      rootCert = [(HMMTRMatterKeypair *)self rootCert];
      v31[2] = rootCert;
      v30[3] = @"opcert";
      operationalCert = [(HMMTRMatterKeypair *)self operationalCert];
      v31[3] = operationalCert;
      v30[4] = @"ipk";
      v8 = [(HMMTRMatterKeypair *)self ipk];
      v31[4] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:5];

      v25 = 0;
      v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v25];
      v11 = v25;
      if (!v10)
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = HMFGetLogIdentifier();
          *buf = 138543618;
          v27 = v15;
          v28 = 2112;
          v29 = v11;
          _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize combo keypair cert data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v12);
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v23;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get key data from operational key", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v10 = 0;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v19;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to get key data from private key", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v10 = 0;
  }

  return v10;
}

- (id)unarchiveV1KeyItemValue:(id)value
{
  v19 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if ([(HMMTRMatterKeypair *)self version]!= 1)
  {
    _HMFPreconditionFailure();
  }

  v5 = MEMORY[0x277CCAAC8];
  v6 = objc_opt_class();
  v14 = 0;
  v7 = [v5 unarchivedDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() fromData:valueCopy error:&v14];
  v8 = v14;
  if (!v7)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed unarchive V1 key data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  return v7;
}

- (id)signMessageECDSA_DER:(id)r
{
  v16 = *MEMORY[0x277D85DE8];
  rCopy = r;
  error = 0;
  v5 = SecKeyCreateSignature(self->_privateKey, *MEMORY[0x277CDC300], rCopy, &error);
  if (error)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = error;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, "%{public}@HomeKitMatter failed to sign message %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)copyV0KeyPair
{
  if ([(HMMTRMatterKeypair *)self version])
  {
    return 0;
  }

  v4 = [HMMTRMatterKeypair alloc];
  privateKey = [(HMMTRMatterKeypair *)self privateKey];

  return [(HMMTRMatterKeypair *)v4 initWithPrivateKey:privateKey];
}

- (BOOL)deserialize:(id)deserialize
{
  v17 = *MEMORY[0x277D85DE8];
  deserializeCopy = deserialize;
  v5 = [HMMTRTLVParser keyPairDataFromTLV:deserializeCopy];
  if (!v5)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v11 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v12 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v12;
    v13 = "%{public}@TLV parsing failed";
LABEL_11:
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, v13, &v15, 0xCu);

    goto LABEL_12;
  }

  v6 = [(HMMTRMatterKeypair *)self createPrivateKeyWithData:v5];
  self->_privateKey = v6;
  if (!v6)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v11 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v12 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v12;
    v13 = "%{public}@Unable to reconstruct private key from TLV";
    goto LABEL_11;
  }

  v7 = SecKeyCopyPublicKey(v6);
  self->_publicKey = v7;
  if (!v7)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      v13 = "%{public}@Unable to recover public key from TLV";
      goto LABEL_11;
    }

LABEL_12:

    objc_autoreleasePoolPop(v9);
    v8 = 0;
    goto LABEL_13;
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (id)serialize
{
  *&v21[65] = *MEMORY[0x277D85DE8];
  v3 = SecKeyCopyExternalRepresentation([(HMMTRMatterKeypair *)self privateKey], 0);
  v4 = v3;
  if (v3)
  {
    *buf = 16786453;
    LOWORD(v21[0]) = 304;
    BYTE2(v21[0]) = [(__CFData *)v3 length];
    [(__CFData *)v4 bytes];
    [(__CFData *)v4 length];
    __memcpy_chk();
    v5 = [(__CFData *)v4 length];
    *(v21 + v5 + 3) = 24;
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:v5 + 8];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v10;
      v18 = 2048;
      v19 = [v6 length];
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Composed key data with length %zu", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      *v21 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Failed in getting private key data...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  privateKey = self->_privateKey;
  if (privateKey)
  {
    CFRelease(privateKey);
  }

  operationalKey = self->_operationalKey;
  if (operationalKey)
  {
    CFRelease(operationalKey);
  }

  publicKey = self->_publicKey;
  if (publicKey)
  {
    CFRelease(publicKey);
  }

  v6.receiver = self;
  v6.super_class = HMMTRMatterKeypair;
  [(HMMTRMatterKeypair *)&v6 dealloc];
}

- (BOOL)initializeAllowingNew:(BOOL)new
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(HMMTRMatterKeypair *)self initialized])
  {
    return [(HMMTRMatterKeypair *)self initialized];
  }

  _getPrivateKeydata = [(HMMTRMatterKeypair *)self _getPrivateKeydata];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (_getPrivateKeydata)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v10;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Found private Key data, reloading keys", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    if (![(HMMTRMatterKeypair *)selfCopy _reloadWithData:_getPrivateKeydata])
    {
      v6 = objc_autoreleasePoolPush();
      v11 = selfCopy;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v12;
        v13 = "%{public}@Failed to reload keys from privateKey Data, init failure!!!";
LABEL_18:
        v16 = v8;
        v17 = OS_LOG_TYPE_ERROR;
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    goto LABEL_12;
  }

  if (!new)
  {
    if (v9)
    {
      v12 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v12;
      v13 = "%{public}@Private key not found";
      v16 = v8;
      v17 = OS_LOG_TYPE_INFO;
LABEL_19:
      _os_log_impl(&dword_22AEAE000, v16, v17, v13, &v19, 0xCu);

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (v9)
  {
    v14 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v14;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Private Key not found, generating new Keys", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  if ([(HMMTRMatterKeypair *)selfCopy _generateKeys])
  {
LABEL_12:
    [(HMMTRMatterKeypair *)selfCopy setInitialized:1];

    return [(HMMTRMatterKeypair *)self initialized];
  }

  v6 = objc_autoreleasePoolPush();
  v18 = selfCopy;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v12;
    v13 = "%{public}@Failed to initialize, unable to generate new keys";
    goto LABEL_18;
  }

LABEL_20:

  objc_autoreleasePoolPop(v6);
  return 0;
}

- (__SecKey)copyPublicKey
{
  result = self->_publicKey;
  if (result)
  {
    CFRetain(result);
    return self->_publicKey;
  }

  return result;
}

- (void)setOperationalKey:(__SecKey *)key
{
  v12 = *MEMORY[0x277D85DE8];
  if (key)
  {
    v4 = SecKeyCopyExternalRepresentation(key, 0);
    opKeyRepr = self->_opKeyRepr;
    self->_opKeyRepr = v4;

    if (self->_opKeyRepr)
    {
      self->_operationalKey = [(HMMTRMatterKeypair *)self createPrivateKeyWithData:?];
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, "%{public}@Bad op key passed to operationalKey", &v10, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  else
  {
    CFRelease(self->_operationalKey);
    self->_operationalKey = 0;
  }
}

- (HMMTRMatterKeypair)initWithV1Account:(id)account privateKey:(__SecKey *)key operationalKey:(__SecKey *)operationalKey rootCert:(id)cert operationalCert:(id)operationalCert ipk:(id)ipk
{
  v35 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  certCopy = cert;
  operationalCertCopy = operationalCert;
  ipkCopy = ipk;
  v32.receiver = self;
  v32.super_class = HMMTRMatterKeypair;
  v18 = [(HMMTRMatterKeypair *)&v32 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_6;
  }

  v18->_version = 1;
  v20 = SecKeyCopyExternalRepresentation(key, 0);
  keyRepr = v19->_keyRepr;
  v19->_keyRepr = v20;

  if (!v19->_keyRepr)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v19;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v28;
      v29 = "%{public}@Bad private key passed to initializer";
LABEL_11:
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, v29, buf, 0xCu);
    }

LABEL_12:

    objc_autoreleasePoolPop(v25);
    archiveV1KeyItemValue = 0;
    goto LABEL_13;
  }

  v19->_privateKey = [(HMMTRMatterKeypair *)v19 createPrivateKeyWithData:?];
  v22 = SecKeyCopyExternalRepresentation(operationalKey, 0);
  opKeyRepr = v19->_opKeyRepr;
  v19->_opKeyRepr = v22;

  if (!v19->_opKeyRepr)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v19;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v28;
      v29 = "%{public}@Bad op key passed to initializer";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v19->_operationalKey = [(HMMTRMatterKeypair *)v19 createPrivateKeyWithData:?];
  v19->_publicKey = SecKeyCopyPublicKey(v19->_privateKey);
  objc_storeStrong(&v19->_keychainAccount, account);
  objc_storeStrong(&v19->_rootCert, cert);
  objc_storeStrong(&v19->_operationalCert, operationalCert);
  objc_storeStrong(&v19->_ipk, ipk);
  archiveV1KeyItemValue = [(HMMTRMatterKeypair *)v19 archiveV1KeyItemValue];
  if (archiveV1KeyItemValue)
  {
    [(HMMTRMatterKeypair *)v19 _storePrivateKeyData:archiveV1KeyItemValue];

LABEL_6:
    archiveV1KeyItemValue = v19;
  }

LABEL_13:

  return archiveV1KeyItemValue;
}

- (HMMTRMatterKeypair)initWithV1Account:(id)account
{
  accountCopy = account;
  v10.receiver = self;
  v10.super_class = HMMTRMatterKeypair;
  v6 = [(HMMTRMatterKeypair *)&v10 init];
  v7 = v6;
  if (v6 && (v6->_version = 1, objc_storeStrong(&v6->_keychainAccount, account), ![(HMMTRMatterKeypair *)v7 initializeAllowingNew:0]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (id)initUnassociated
{
  v23[6] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HMMTRMatterKeypair;
  v2 = [(HMMTRMatterKeypair *)&v17 init];
  if (!v2)
  {
    goto LABEL_7;
  }

  error = 0;
  v3 = *MEMORY[0x277CDBFF0];
  v4 = *MEMORY[0x277CDC028];
  v22[0] = *MEMORY[0x277CDBFE0];
  v22[1] = v4;
  v5 = *MEMORY[0x277CDC040];
  v23[0] = v3;
  v23[1] = v5;
  v6 = *MEMORY[0x277CDC080];
  v22[2] = *MEMORY[0x277CDC018];
  v22[3] = v6;
  v23[2] = &unk_283EE7E48;
  v23[3] = @"A CHIPPlugin Matter Keypair.";
  v7 = *MEMORY[0x277CDC5C8];
  v22[4] = *MEMORY[0x277CDBF30];
  v22[5] = v7;
  v23[4] = @"com.apple.matter.commissioner.ca.issuer.id";
  v23[5] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];
  v9 = SecKeyCreateRandomKey(v8, &error);
  v2->_privateKey = v9;
  if (!error)
  {
    v2->_publicKey = SecKeyCopyPublicKey(v9);

LABEL_7:
    v14 = v2;
    goto LABEL_8;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = v2;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v13;
    v20 = 2112;
    v21 = error;
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed in keygen %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = 0;
LABEL_8:

  return v14;
}

- (HMMTRMatterKeypair)initWithPrivateKeyExternalRepresentation:(id)representation
{
  representationCopy = representation;
  v11.receiver = self;
  v11.super_class = HMMTRMatterKeypair;
  v6 = [(HMMTRMatterKeypair *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyRepr, representation);
    v8 = [(HMMTRMatterKeypair *)v7 createPrivateKeyWithData:representationCopy];
    v7->_privateKey = v8;
    if (!v8)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v7->_publicKey = SecKeyCopyPublicKey(v8);
  }

  v9 = v7;
LABEL_6:

  return v9;
}

- (HMMTRMatterKeypair)initWithPrivateKey:(__SecKey *)key
{
  v17 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HMMTRMatterKeypair;
  v4 = [(HMMTRMatterKeypair *)&v14 init];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = SecKeyCopyExternalRepresentation(key, 0);
  keyRepr = v4->_keyRepr;
  v4->_keyRepr = v5;

  if (v4->_keyRepr)
  {
    v7 = [(HMMTRMatterKeypair *)v4 createPrivateKeyWithData:?];
    v4->_privateKey = v7;
    v4->_publicKey = SecKeyCopyPublicKey(v7);
LABEL_4:
    v8 = v4;
    goto LABEL_8;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = v4;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v12;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Bad private key passed to initializer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v8 = 0;
LABEL_8:

  return v8;
}

- (HMMTRMatterKeypair)initWithTLVData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = HMMTRMatterKeypair;
  v5 = [(HMMTRMatterKeypair *)&v9 init];
  v6 = v5;
  if (v5)
  {
    keychainAccount = v5->_keychainAccount;
    v5->_keychainAccount = @"null";

    [(HMMTRMatterKeypair *)v6 deserialize:dataCopy];
  }

  return v6;
}

- (HMMTRMatterKeypair)initWithV0Account:(id)account privateKey:(__SecKey *)key
{
  v23 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v20.receiver = self;
  v20.super_class = HMMTRMatterKeypair;
  v8 = [(HMMTRMatterKeypair *)&v20 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v8->_keychainAccount, account);
  v10 = SecKeyCopyExternalRepresentation(key, 0);
  if (v10)
  {
    keyRepr = v9->_keyRepr;
    v9->_keyRepr = v10;
    v12 = v10;

    v13 = [(HMMTRMatterKeypair *)v9 createPrivateKeyWithData:v12];
    v9->_privateKey = v13;
    v9->_publicKey = SecKeyCopyPublicKey(v13);
    [(HMMTRMatterKeypair *)v9 _storePrivateKeyData:v12];

LABEL_4:
    v14 = v9;
    goto LABEL_8;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = v9;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v18;
    _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Failed in getting keypair data from private key", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v14 = 0;
LABEL_8:

  return v14;
}

- (id)initAsDeviceLocal
{
  v14 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMMTRMatterKeypair;
  v2 = [(HMMTRMatterKeypair *)&v11 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_4;
  }

  keychainAccount = v2->_keychainAccount;
  v2->_keychainAccount = &stru_283ED2308;

  v3->_deviceLocal = 1;
  if ([(HMMTRMatterKeypair *)v3 _generateKeys])
  {
    v3->_initialized = 1;
LABEL_4:
    v5 = v3;
    goto LABEL_8;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = v3;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v9;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate device local keypair", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v5 = 0;
LABEL_8:

  return v5;
}

- (HMMTRMatterKeypair)initWithV0Account:(id)account
{
  accountCopy = account;
  v10.receiver = self;
  v10.super_class = HMMTRMatterKeypair;
  v6 = [(HMMTRMatterKeypair *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_keychainAccount, account), ![(HMMTRMatterKeypair *)v7 initializeAllowingNew:0]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (HMMTRMatterKeypair)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = HMMTRMatterKeypair;
  v5 = [(HMMTRMatterKeypair *)&v9 init];
  v6 = v5;
  if (v5 && ([(HMMTRMatterKeypair *)v5 setKeychainAccount:accountCopy], ![(HMMTRMatterKeypair *)v6 initializeAllowingNew:1]))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t40 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t40, &__block_literal_global_2480);
  }

  v3 = logCategory__hmf_once_v41;

  return v3;
}

uint64_t __33__HMMTRMatterKeypair_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v41;
  logCategory__hmf_once_v41 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end