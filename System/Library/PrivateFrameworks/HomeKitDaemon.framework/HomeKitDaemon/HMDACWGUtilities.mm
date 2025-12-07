@interface HMDACWGUtilities
+ (id)createGroupResolvingKey;
+ (id)createIssuerKeyV2KeychainItemWithKeyPairExternalRepresentation:(id)representation generationCounter:(unint64_t)counter homeUUID:(id)d dateProvider:(id)provider accountIdentifier:(id)identifier idsIdentifier:(id)idsIdentifier;
+ (id)createLabelFromDate:(id)date idsIdentifier:(id)identifier;
+ (id)findWinningIssuerKeyForHomeUUID:(id)d withKeys:(id)keys accountIdentifier:(id)identifier;
+ (id)keyPairExternalRepresentationFromKeychainItem:(id)item;
+ (id)keychainIdentifierForPublicKeyExternalRepresentation:(id)representation;
@end

@implementation HMDACWGUtilities

+ (id)createLabelFromDate:(id)date idsIdentifier:(id)identifier
{
  v5 = MEMORY[0x277CCA968];
  identifierCopy = identifier;
  dateCopy = date;
  v8 = objc_alloc_init(v5);
  [v8 setDateFormat:@"yyyyMMddHHmmss"];
  v9 = [v8 stringFromDate:dateCopy];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@_Home ACWG Issuer Key", identifierCopy, v9];

  return v10;
}

+ (id)keyPairExternalRepresentationFromKeychainItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  accessGroup = [itemCopy accessGroup];
  v6 = [accessGroup isEqualToString:@"com.apple.hap.pairing"];

  if (v6)
  {
    type = [itemCopy type];
    v8 = [type isEqualToNumber:&unk_283E72EA8];

    if (v8)
    {
      valueData = [itemCopy valueData];
      goto LABEL_10;
    }

    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = itemCopy;
      v20 = 2112;
      v21 = &unk_283E72EA8;
      v14 = "%{public}@Failed to create ACWG Issuer key from keychain item: %@ is not equal to: %@";
      goto LABEL_8;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = itemCopy;
      v20 = 2112;
      v21 = @"com.apple.hap.pairing";
      v14 = "%{public}@Failed to create ACWG Issuer key from keychain item: %@ access group is not equal to: %@";
LABEL_8:
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, v14, &v16, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v10);
  valueData = 0;
LABEL_10:

  return valueData;
}

+ (id)findWinningIssuerKeyForHomeUUID:(id)d withKeys:(id)keys accountIdentifier:(id)identifier
{
  v50 = *MEMORY[0x277D85DE8];
  dCopy = d;
  keysCopy = keys;
  identifierCopy = identifier;
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138544130;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = uUID;
    *&buf[22] = 2112;
    v48 = dCopy;
    LOWORD(v49) = 2112;
    *(&v49 + 2) = keysCopy;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Finding winning issuer key for HomeUUID: %@ for keys: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__128851;
  *&v49 = __Block_byref_object_dispose__128852;
  *(&v49 + 1) = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __79__HMDACWGUtilities_findWinningIssuerKeyForHomeUUID_withKeys_accountIdentifier___block_invoke;
  v28[3] = &unk_278679DE8;
  v35 = selfCopy;
  v17 = internalOnlyInitializer;
  v29 = v17;
  v18 = dCopy;
  v30 = v18;
  v19 = identifierCopy;
  v31 = v19;
  v32 = v36;
  v33 = &v37;
  v34 = buf;
  [keysCopy na_each:v28];
  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    uUID2 = [v17 UUID];
    v25 = *(*&buf[8] + 40);
    *v41 = 138543874;
    v42 = v23;
    v43 = 2112;
    v44 = uUID2;
    v45 = 2112;
    v46 = v25;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Winning key found: %@", v41, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  v26 = objc_alloc_init(HMDWinningIssuerKeyResults);
  [(HMDWinningIssuerKeyResults *)v26 setKeychainItem:*(*&buf[8] + 40)];
  [(HMDWinningIssuerKeyResults *)v26 setHighestGeneration:v38[3]];

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(buf, 8);

  return v26;
}

void __79__HMDACWGUtilities_findWinningIssuerKeyForHomeUUID_withKeys_accountIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = MEMORY[0x277CFEC78];
  v6 = [v4 genericData];
  v7 = [v5 getDictionaryFromGenericData:v6];

  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = [v7 hmf_stringForKey:@"HUUID"];
  v10 = [v8 initWithUUIDString:v9];

  v11 = [v7 hmf_stringForKey:@"AcID"];
  v12 = [v7 hmf_numberForKey:@"KV"];
  v13 = [v7 hmf_numberForKey:@"GC"];
  v14 = v13;
  if (v7 && v13 && v10 && v12 && v11)
  {
    if ([v10 isEqual:*(a1 + 40)])
    {
      v58 = v4;
      v15 = [v11 isEqual:*(a1 + 48)];
      context = objc_autoreleasePoolPush();
      v16 = *(a1 + 80);
      v17 = HMFGetOSLogHandle();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
      if ((v15 & 1) == 0)
      {
        if (v18)
        {
          v33 = HMFGetLogIdentifier();
          v34 = [*(a1 + 32) UUID];
          *buf = 138543874;
          v61 = v33;
          v62 = 2112;
          v63 = v34;
          v64 = 2112;
          v65 = v11;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Keychain item does not belong to account requested, with key item account ID: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        goto LABEL_19;
      }

      if (v18)
      {
        v51 = HMFGetLogIdentifier();
        v19 = [*(a1 + 32) UUID];
        v20 = *(a1 + 40);
        *buf = 138544130;
        v61 = v51;
        v62 = 2112;
        v63 = v19;
        v21 = v19;
        v64 = 2112;
        v65 = v20;
        v66 = 2112;
        v67 = v11;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Keychain item belongs to home: %@ and account requested accountIdentifier: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(context);
      v22 = [v12 integerValue];
      v23 = *(*(*(a1 + 56) + 8) + 24);
      v24 = [v12 integerValue];
      v25 = *(*(a1 + 56) + 8);
      if (v22 > v23)
      {
        *(v25 + 24) = v24;
        v26 = [v14 integerValue];
        v27 = *(*(a1 + 64) + 8);
LABEL_12:
        *(v27 + 24) = v26;
        objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
LABEL_19:
        v4 = v58;
        goto LABEL_20;
      }

      v4 = v58;
      if (v24 != *(v25 + 24))
      {
        goto LABEL_20;
      }

      v35 = [v14 integerValue];
      v36 = *(*(*(a1 + 64) + 8) + 24);
      v26 = [v14 integerValue];
      v27 = *(*(a1 + 64) + 8);
      if (v35 > v36)
      {
        goto LABEL_12;
      }

      v4 = v58;
      if (v26 == *(v27 + 24))
      {
        v37 = [v58 creationDate];
        v38 = [*(*(*(a1 + 72) + 8) + 40) creationDate];
        contexta = [v37 compare:v38];

        v39 = objc_autoreleasePoolPush();
        v40 = *(a1 + 80);
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v42 = v50 = v40;
          [*(a1 + 32) UUID];
          v43 = v52 = v39;
          *buf = 138543618;
          v61 = v42;
          v62 = 2112;
          v63 = v43;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Tie needs to be broken between creation date of two keys", buf, 0x16u);

          v39 = v52;
          v40 = v50;
        }

        objc_autoreleasePoolPop(v39);
        if (contexta)
        {
          v4 = v58;
          if (contexta != -1)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v44 = [v58 account];
          v45 = [*(*(*(a1 + 72) + 8) + 40) account];
          contextc = [v44 compare:v45];

          v4 = v58;
          if (contextc != 1)
          {
            goto LABEL_20;
          }

          contextb = objc_autoreleasePoolPush();
          v46 = *(a1 + 80);
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            v53 = HMFGetLogIdentifier();
            v48 = [*(a1 + 32) UUID];
            *buf = 138543618;
            v61 = v53;
            v62 = 2112;
            v63 = v48;
            v49 = v48;
            _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Two keys had same date creation, breaking ties with UUID", buf, 0x16u);

            v4 = v58;
          }

          objc_autoreleasePoolPop(contextb);
        }

        objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
      }
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 80);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v31 = v59 = v4;
      v32 = [*(a1 + 32) UUID];
      *buf = 138544642;
      v61 = v31;
      v62 = 2112;
      v63 = v32;
      v64 = 2112;
      v65 = v14;
      v66 = 2112;
      v67 = v10;
      v68 = 2112;
      v69 = v12;
      v70 = 2112;
      v71 = v11;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Keychain item missing metafield data, [gc: %@] [home UUID: %@] [key version: %@] [account ID: %@]", buf, 0x3Eu);

      v4 = v59;
    }

    objc_autoreleasePoolPop(v28);
  }

LABEL_20:
}

+ (id)createIssuerKeyV2KeychainItemWithKeyPairExternalRepresentation:(id)representation generationCounter:(unint64_t)counter homeUUID:(id)d dateProvider:(id)provider accountIdentifier:(id)identifier idsIdentifier:(id)idsIdentifier
{
  v48[4] = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  dCopy = d;
  providerCopy = provider;
  identifierCopy = identifier;
  idsIdentifierCopy = idsIdentifier;
  v47[0] = @"GC";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:counter];
  v48[0] = v19;
  v47[1] = @"HUUID";
  v39 = dCopy;
  uUIDString = [dCopy UUIDString];
  v48[1] = uUIDString;
  v48[2] = &unk_283E72E90;
  v47[2] = @"KV";
  v47[3] = @"AcID";
  v40 = identifierCopy;
  v48[3] = identifierCopy;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:4];

  v38 = v21;
  v22 = [MEMORY[0x277CFEC78] serializeImmutableDictionary:v21];
  v23 = [HMDNIST256Utilities publicKeyExternalRepresentationFromKeyPairExternalRepresentation:representationCopy];
  v24 = objc_alloc_init(MEMORY[0x277CFEBC8]);
  v41 = providerCopy;
  v25 = [providerCopy now];
  [v24 setItemDescription:@"Per User ACWG Issuer Key synced to HomeKit locks to grant users access."];
  [v24 setAccessGroup:@"com.apple.hap.pairing"];
  [v24 setSyncable:1];
  [v24 setType:&unk_283E72EA8];
  v26 = MEMORY[0x277CFEC78];
  type = [v24 type];
  v28 = [v26 viewHintForType:type];
  [v24 setViewHint:v28];

  v42 = representationCopy;
  [v24 setValueData:representationCopy];
  [v24 setCreationDate:v25];
  v29 = [self keychainIdentifierForPublicKeyExternalRepresentation:v23];
  [v24 setAccount:v29];

  v30 = idsIdentifierCopy;
  v31 = [self createLabelFromDate:v25 idsIdentifier:idsIdentifierCopy];
  [v24 setLabel:v31];

  [v24 setGenericData:v22];
  v32 = objc_autoreleasePoolPush();
  selfCopy = self;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = HMFGetLogIdentifier();
    account = [v24 account];
    *buf = 138543618;
    v44 = v35;
    v45 = 2112;
    v46 = account;
    _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Created new aliro issuer key with account identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v32);

  return v24;
}

+ (id)keychainIdentifierForPublicKeyExternalRepresentation:(id)representation
{
  v3 = MEMORY[0x277CCAD78];
  representationCopy = representation;
  v5 = [[v3 alloc] initWithUUIDString:@"B52DD235-5F79-4A54-91F1-07076C605ED8"];
  v6 = [MEMORY[0x277CCAD78] hmf_UUIDWithNamespace:v5 data:representationCopy];

  uUIDString = [v6 UUIDString];

  return uUIDString;
}

+ (id)createGroupResolvingKey
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB28] dataWithLength:16];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], [v3 length], objc_msgSend(v3, "mutableBytes")))
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate random bytes for group resolving key", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_copy(v3);
  }

  return v8;
}

@end