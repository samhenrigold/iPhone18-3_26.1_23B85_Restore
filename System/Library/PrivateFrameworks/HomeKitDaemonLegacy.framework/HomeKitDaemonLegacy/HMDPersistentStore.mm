@interface HMDPersistentStore
+ (BOOL)archiveMetadata:(id)metadata;
+ (BOOL)deserializeHomeData:(id *)data localStorage:(BOOL)storage fromData:(id)fromData;
+ (BOOL)deserializeHomeData:(id *)data usingLocalStorage:(BOOL)storage fromData:(id)fromData forHH2Migration:(BOOL)migration;
+ (BOOL)hasControllerKeyWithUsername:(id)username error:(id *)error;
+ (BOOL)removeLegacyHomeArchive:(id *)archive;
+ (BOOL)writeDictionary:(id)dictionary toStorePath:(id)path;
+ (id)_writeData:(id)data toStorePath:(id)path dataLabel:(id)label createDirectoriesIfNeeded:(BOOL)needed;
+ (id)archiveCloudServerTokenData:(id)data;
+ (id)archiveHomeData:(id)data toLocation:(id)location;
+ (id)archiveHomeDataForTransaction:(id)transaction;
+ (id)archiveHomeDataLegacy:(id)legacy;
+ (id)archiveHomeDataLegacy:(id)legacy toLocation:(id)location;
+ (id)archiveIDSDataSyncJournal:(id)journal;
+ (id)controllerUsernameForPairingIdentity:(id)identity error:(id *)error;
+ (id)decryptData:(id)data withKey:(id)key error:(id *)error;
+ (id)decryptDataWithControllerKey:(id)key totalKeysFound:(unint64_t *)found deleteExtraKeys:(BOOL)keys allowControllerIdentifierToChange:(BOOL)change controllerIdentifierChanged:(BOOL *)changed successfulKeyUserName:(id *)name error:(id *)error;
+ (id)encryptData:(id)data withKey:(id)key error:(id *)error;
+ (id)encryptDataWithControllerKey:(id)key error:(id *)error;
+ (id)loadBuiltinPlainMetadataDictionary;
+ (id)loadPlainMetadataDictionary;
+ (id)logCategory;
+ (id)readDataFromPath:(id)path;
+ (id)serializeHomeData:(id)data localStorage:(BOOL)storage remoteDeviceOnSameAccount:(BOOL)account;
+ (id)unarchiveBulletinBoard;
+ (id)unarchiveHomeData:(id *)data decryptionFailed:(BOOL *)failed fromLocation:(id)location successfulKeyUserName:(id *)name forHH2Migration:(BOOL)migration;
+ (id)unarchiveHomeData:(id *)data decryptionFailed:(BOOL *)failed successfulKeyUserName:(id *)name;
+ (id)unarchiveIDSDataSyncJournal;
+ (id)unarchiveVendorStore;
+ (id)writeData:(id)data toStorePath:(id)path dataLabel:(id)label;
+ (void)archiveBulletinBoard:(id)board;
+ (void)archiveVendorStore:(id)store;
+ (void)cleanupKeysInStore;
+ (void)removeServerTokenDataFile;
+ (void)removeTransactionJournal;
+ (void)resetConfiguration:(unint64_t)configuration;
- (id)archiveDictionary:(id)dictionary withPath:(id)path forKey:(id)key;
- (id)unarchiveDictionaryFromData:(id)data allowedClasses:(id)classes forKey:(id)key;
- (id)unarchiveDictionaryWithPath:(id)path allowedClasses:(id)classes forKey:(id)key;
- (id)writeData:(id)data toStorePath:(id)path dataLabel:(id)label;
@end

@implementation HMDPersistentStore

+ (id)logCategory
{
  if (logCategory__hmf_once_t50_61929 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t50_61929, &__block_literal_global_61930);
  }

  v3 = logCategory__hmf_once_v51_61931;

  return v3;
}

uint64_t __33__HMDPersistentStore_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v51_61931;
  logCategory__hmf_once_v51_61931 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)controllerUsernameForPairingIdentity:(id)identity error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v28 = 0;
  v29 = 0;
  v8 = [systemStore getAllAvailableControllerPublicKeys:&v29 secretKeys:0 userNames:&v28 error:error];
  v9 = v29;
  v10 = v28;

  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 || v10 == 0;
  if (v12 || (v13 = [v10 count], v13 != objc_msgSend(v9, "count")))
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
LABEL_16:

      objc_autoreleasePoolPop(v20);
      v19 = 0;
      goto LABEL_17;
    }

    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v23;
    v24 = "%{public}@Unable to get controller public keys";
    v25 = v22;
    v26 = OS_LOG_TYPE_INFO;
LABEL_15:
    _os_log_impl(&dword_2531F8000, v25, v26, v24, buf, 0xCu);

    goto LABEL_16;
  }

  if ([v10 count] != 1)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v23;
    v24 = "%{public}@Found multiple controller keys.";
    v25 = v22;
    v26 = OS_LOG_TYPE_ERROR;
    goto LABEL_15;
  }

  v14 = objc_alloc(MEMORY[0x277D0F8B0]);
  v15 = [v9 objectAtIndexedSubscript:0];
  v16 = [v14 initWithPairingKeyData:v15];

  publicKey = [identityCopy publicKey];
  v18 = [v16 isEqual:publicKey];

  v19 = 0;
  if (v18)
  {
    v19 = [v10 objectAtIndexedSubscript:0];
  }

LABEL_17:

  return v19;
}

+ (BOOL)hasControllerKeyWithUsername:(id)username error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v24 = 0;
  v25 = 0;
  v8 = [systemStore getAllAvailableControllerPublicKeys:0 secretKeys:0 userNames:&v25 error:&v24];
  v9 = v25;
  v10 = v24;

  if (v8)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11 || v9 == 0)
  {
    if (v10)
    {
      if (error)
      {
        v13 = v10;
        v14 = 0;
        *error = v10;
        goto LABEL_21;
      }

LABEL_20:
      v14 = 0;
      goto LABEL_21;
    }

LABEL_16:
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Did not find controller key for given username.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      *error = v14 = 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (![v9 containsObject:usernameCopy])
  {
    goto LABEL_16;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v18;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Found controller key for username", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v14 = 1;
LABEL_21:

  return v14;
}

+ (id)decryptDataWithControllerKey:(id)key totalKeysFound:(unint64_t *)found deleteExtraKeys:(BOOL)keys allowControllerIdentifierToChange:(BOOL)change controllerIdentifierChanged:(BOOL *)changed successfulKeyUserName:(id *)name error:(id *)error
{
  obj = change;
  keysCopy = keys;
  v144 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  array = [MEMORY[0x277CBEB18] array];
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v133 = 0;
  v134 = 0;
  v132 = 0;
  v14 = [systemStore getAllAvailableControllerPublicKeys:0 secretKeys:&v134 userNames:&v133 error:&v132];
  v15 = v134;
  v16 = v133;
  nameCopy2 = v132;

  if (v14)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18 || v16 == 0;
  if (v19 || (v20 = [v16 count], v20 != objc_msgSend(v15, "count")))
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v137 = v38;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Unable to get controller public keys", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    errorCopy = error;
    if (error)
    {
      v39 = nameCopy2;
      v33 = 0;
      errorCopy = 0;
      *error = nameCopy2;
    }

    else
    {
      v33 = 0;
    }

    goto LABEL_82;
  }

  if (changed)
  {
    *changed = 0;
  }

  if (found)
  {
    *found = [v15 count];
  }

  if (!obj)
  {
    systemStore2 = [MEMORY[0x277CFEC78] systemStore];
    activeControllerPairingIdentifier = [systemStore2 activeControllerPairingIdentifier];
    v23 = objc_msgSend_copy(activeControllerPairingIdentifier);

    if (!v23)
    {
      v40 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543362;
        v137 = v43;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Cannot find controller key because active controller pairing identifier is not set", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v40);
      v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      if (error)
      {
        v44 = v44;
        *error = v44;
      }

      v33 = 0;
      errorCopy = 0;
      goto LABEL_82;
    }

    v108 = keysCopy;
    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    v26 = [v16 indexOfObject:v23];
    if (v26 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v111 = v15;
      v115 = v16;
      v27 = keyCopy;
      v28 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v137 = v31;
        v138 = 2112;
        v139 = v23;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Cannot find controller key for active controller pairing identifier, %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      if (error)
      {
        v32 = v32;
        *error = v32;
      }

      v33 = 0;
      errorCopy = 0;
      keyCopy = v27;
      v16 = v115;
      v15 = v111;
      goto LABEL_82;
    }

    v45 = v26;
    v46 = [v16 objectAtIndexedSubscript:v26];
    [v25 addObject:v46];

    v47 = [v15 objectAtIndexedSubscript:v45];
    [v24 addObject:v47];

    v48 = objc_msgSend_copy(v24);
    v49 = objc_msgSend_copy(v25);

    v16 = v49;
    v15 = v48;
    keysCopy = v108;
  }

  if (![v15 count])
  {
    v33 = 0;
    v50 = 0;
    if (![array count])
    {
      goto LABEL_75;
    }

LABEL_72:
    v98 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v100 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
    {
      v101 = HMFGetLogIdentifier();
      *buf = 138543362;
      v137 = v101;
      _os_log_impl(&dword_2531F8000, v100, OS_LOG_TYPE_INFO, "%{public}@Data has not been decrypted, not deleting extra keys", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v98);
    v50 = 0;
LABEL_75:
    if (error && !v50)
    {
      v102 = nameCopy2;
      *error = nameCopy2;
    }

    goto LABEL_81;
  }

  v109 = keysCopy;
  v50 = 0;
  v33 = 0;
  v51 = 0;
  v113 = array;
  v117 = keyCopy;
  do
  {
    if (v50)
    {
      v119 = v50;
      v52 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v56 = v55 = v33;
        v57 = [v16 objectAtIndexedSubscript:v51];
        *buf = 138543618;
        v137 = v56;
        v138 = 2112;
        v139 = v57;
        _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@Data has already been decrypted, adding controller key: %@", buf, 0x16u);

        keyCopy = v117;
        v33 = v55;
        array = v113;
      }

      objc_autoreleasePoolPop(v52);
      v58 = [v16 objectAtIndexedSubscript:v51];
      [array addObject:v58];
      v50 = v119;
      goto LABEL_50;
    }

    v59 = [v15 objectAtIndexedSubscript:v51];
    v131 = 0;
    v60 = [self decryptData:keyCopy withKey:v59 error:&v131];
    nameCopy2 = v131;

    if (nameCopy2 || !v60)
    {
      v74 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        v77 = HMFGetLogIdentifier();
        v78 = [v16 objectAtIndexedSubscript:v51];
        [v15 objectAtIndexedSubscript:v51];
        v120 = v74;
        v79 = v15;
        v81 = v80 = v16;
        *buf = 138544130;
        v137 = v77;
        v138 = 2114;
        v139 = v78;
        v140 = 2114;
        v141 = v81;
        v142 = 2114;
        v143 = nameCopy2;
        _os_log_impl(&dword_2531F8000, v76, OS_LOG_TYPE_INFO, "%{public}@Decryption failed with controller key: %{public}@, key:%{public}@ with error: %{public}@", buf, 0x2Au);

        v16 = v80;
        v15 = v79;
        v74 = v120;

        array = v113;
      }

      objc_autoreleasePoolPop(v74);
      v58 = [v16 objectAtIndexedSubscript:v51];
      [array addObject:v58];
      v50 = 0;
      v33 = v60;
      keyCopy = v117;
      goto LABEL_50;
    }

    v33 = v60;
    nameCopy2 = name;
    if (obj)
    {
      v61 = objc_autoreleasePoolPush();
      selfCopy7 = self;
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v64 = HMFGetLogIdentifier();
        [v16 objectAtIndexedSubscript:v51];
        v65 = v15;
        v66 = v16;
        v67 = array;
        v69 = v68 = v33;
        *buf = 138543618;
        v137 = v64;
        v138 = 2112;
        v139 = v69;
        _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_INFO, "%{public}@Updating active controller identifier to %@", buf, 0x16u);

        v33 = v68;
        array = v67;
        v16 = v66;
        v15 = v65;
        keyCopy = v117;

        nameCopy2 = name;
      }

      objc_autoreleasePoolPop(v61);
      systemStore3 = [MEMORY[0x277CFEC78] systemStore];
      v71 = [v16 objectAtIndexedSubscript:v51];
      v72 = [systemStore3 updateActiveControllerPairingIdentifier:v71];

      if (changed)
      {
        *changed = v72;
      }
    }

    if (nameCopy2)
    {
      v73 = nameCopy2;
      v58 = [v16 objectAtIndexedSubscript:v51];
      nameCopy2 = 0;
      *v73 = objc_msgSend_copy(v58);
      v50 = v33;
LABEL_50:

      goto LABEL_51;
    }

    v50 = v33;
LABEL_51:
    ++v51;
  }

  while (v51 < [v15 count]);
  if (![array count])
  {
    goto LABEL_75;
  }

  if (!v50)
  {
    goto LABEL_72;
  }

  if (v109)
  {
    v121 = v50;
    v110 = v33;
    v112 = v15;
    v116 = v16;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    obja = array;
    v82 = [obja countByEnumeratingWithState:&v127 objects:v135 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v128;
      do
      {
        v85 = 0;
        v86 = nameCopy2;
        do
        {
          if (*v128 != v84)
          {
            objc_enumerationMutation(obja);
          }

          v87 = *(*(&v127 + 1) + 8 * v85);
          v88 = objc_autoreleasePoolPush();
          selfCopy8 = self;
          v90 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
          {
            v91 = HMFGetLogIdentifier();
            *buf = 138543618;
            v137 = v91;
            v138 = 2112;
            v139 = v87;
            _os_log_impl(&dword_2531F8000, v90, OS_LOG_TYPE_INFO, "%{public}@Deleting extra key corresponding to username: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v88);
          systemStore4 = [MEMORY[0x277CFEC78] systemStore];
          v126 = v86;
          v93 = [systemStore4 removeControllerKeyPairForIdentifier:v87 leaveTombstone:1 error:&v126];
          nameCopy2 = v126;

          if ((v93 & 1) == 0)
          {
            v94 = objc_autoreleasePoolPush();
            v95 = selfCopy8;
            v96 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
            {
              v97 = HMFGetLogIdentifier();
              *buf = 138543874;
              v137 = v97;
              v138 = 2112;
              v139 = v87;
              v140 = 2112;
              v141 = nameCopy2;
              _os_log_impl(&dword_2531F8000, v96, OS_LOG_TYPE_INFO, "%{public}@Failed to delete extra key for username: %@ due to error: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v94);
          }

          ++v85;
          v86 = nameCopy2;
        }

        while (v83 != v85);
        v83 = [obja countByEnumeratingWithState:&v127 objects:v135 count:16];
      }

      while (v83);
    }

    v16 = v116;
    keyCopy = v117;
    array = v113;
    v33 = v110;
    v15 = v112;
    v50 = v121;
    goto LABEL_75;
  }

  v103 = objc_autoreleasePoolPush();
  selfCopy9 = self;
  v105 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v106 = v122 = v50;
    *buf = 138543362;
    v137 = v106;
    _os_log_impl(&dword_2531F8000, v105, OS_LOG_TYPE_INFO, "%{public}@Not deleting extra keys as it has not been requested", buf, 0xCu);

    v50 = v122;
  }

  objc_autoreleasePoolPop(v103);
LABEL_81:
  errorCopy = v50;
LABEL_82:

  return errorCopy;
}

+ (id)encryptDataWithControllerKey:(id)key error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v17 = 0;
  v18 = 0;
  v8 = [systemStore getControllerPublicKey:0 secretKey:&v18 username:&v17 allowCreation:0 error:error];
  v9 = v18;
  v10 = v17;

  if (v8)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v20 = v14;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Using key [%@] to encrypt the homedata and store it: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [selfCopy encryptData:keyCopy withKey:v9 error:error];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)decryptData:(id)data withKey:(id)key error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  v9 = [dataCopy length];
  v10 = v9 - 28;
  if (v9 > 0x1C)
  {
    ccsha512_di();
    [keyCopy length];
    [keyCopy bytes];
    cchkdf();
    [dataCopy bytes];
    errorCopy = [MEMORY[0x277CBEB28] dataWithLength:v10];
    [errorCopy mutableBytes];
    v19 = chacha20_poly1305_decrypt_all_96x32();
    if (v19)
    {
      if (error)
      {
        v20 = MEMORY[0x277CCA9B8];
        v21 = *MEMORY[0x277CCA590];
        v22 = v19;
        v29 = *MEMORY[0x277CCA450];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
        v24 = v23;
        v25 = @"?";
        if (v23)
        {
          v25 = v23;
        }

        v30 = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v27 = [v20 errorWithDomain:v21 code:v22 userInfo:v26];
        *error = v27;

        error = 0;
      }
    }

    else
    {
      error = errorCopy;
      errorCopy = error;
    }
  }

  else
  {
    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA590];
      v31 = *MEMORY[0x277CCA450];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v14 = v13;
      v15 = @"?";
      if (v13)
      {
        v15 = v13;
      }

      v32 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v17 = [v11 errorWithDomain:v12 code:-6743 userInfo:v16];
      *error = v17;

      error = 0;
    }

    errorCopy = 0;
  }

  return error;
}

+ (id)encryptData:(id)data withKey:(id)key error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dataCopy = data;
  ccsha512_di();
  [keyCopy length];
  [keyCopy bytes];

  cchkdf();
  RandomBytes();
  ccsha512_di();
  cchkdf();
  v8 = [dataCopy length];
  v9 = [MEMORY[0x277CBEB28] dataWithLength:v8 + 28];
  mutableBytes = [v9 mutableBytes];
  v11 = v14;
  *mutableBytes = v13;
  *(mutableBytes + 8) = v11;
  [dataCopy bytes];

  chacha20_poly1305_encrypt_all_96x32();

  return v9;
}

+ (id)unarchiveBulletinBoard
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = bulletinBoardDataStorePath;
  if (v4)
  {
    v5 = v4;
    v6 = [self readDataFromPath:v4];
    if (v6)
    {
      v7 = v6;
      v16 = 0;
      v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v16];
      v9 = v16;
      v10 = v9;
      if (v8)
      {

        objc_autoreleasePoolPop(v3);
        goto LABEL_10;
      }

      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive bulletin board from data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  objc_autoreleasePoolPop(v3);
  v8 = 0;
LABEL_10:

  return v8;
}

+ (void)archiveBulletinBoard:(id)board
{
  boardCopy = board;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:boardCopy requiringSecureCoding:1 error:0];
  v6 = bulletinBoardDataStorePath;
  v7 = [self _writeData:v5 toStorePath:v6 dataLabel:@"bulletin board"];

  objc_autoreleasePoolPop(v4);
}

+ (id)unarchiveIDSDataSyncJournal
{
  v56[4] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = objc_autoreleasePoolPush();
  v4 = idsDataSyncJournalDataStorePath;
  v5 = [self readDataFromPath:v4];

  if (!v5)
  {
    v24 = v3;
LABEL_24:
    objc_autoreleasePoolPop(v24);
    goto LABEL_31;
  }

  context = v3;
  v6 = MEMORY[0x277CBEB98];
  v56[0] = objc_opt_class();
  v56[1] = objc_opt_class();
  v56[2] = objc_opt_class();
  v56[3] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
  v8 = [v6 setWithArray:v7];

  v48 = 0;
  v41 = v5;
  v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:v5 error:&v48];
  v40 = v48;
  if (!v9)
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v28;
      v52 = 2112;
      v53 = v40;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive info dictionary from data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v24 = v3;
    goto LABEL_24;
  }

  v10 = v9;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v39 = v12;

  if (isKindOfClass)
  {
    v13 = [v10 hmf_dictionaryForKey:@"kTransactionJournalKey"];

    if (v13)
    {
      v38 = isKindOfClass;
      v10 = v13;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v14 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v45;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v45 != v16)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v44 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
              v20 = [v10 objectForKeyedSubscript:v19];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = [MEMORY[0x277CBEB58] setWithSet:v20];
                [dictionary setObject:v21 forKeyedSubscript:v19];
              }
            }
          }

          v15 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v15);
      }

      v22 = v41;
      v3 = context;
      v23 = v40;
      isKindOfClass = v38;
    }

    else
    {
      v10 = 0;
      v22 = v41;
      v23 = v40;
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    v23 = v40;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v33 = objc_opt_class();
      *buf = 138543874;
      v51 = v32;
      v52 = 2112;
      v53 = v33;
      v54 = 2112;
      v55 = v10;
      v34 = isKindOfClass;
      v35 = v33;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Object was not of expected class NSDictionary (class=%@): %@", buf, 0x20u);

      isKindOfClass = v34;
    }

    objc_autoreleasePoolPop(v29);
    v22 = v41;
    v3 = context;
  }

  objc_autoreleasePoolPop(v3);
  if (isKindOfClass)
  {
    v36 = dictionary;
    goto LABEL_32;
  }

LABEL_31:
  v36 = 0;
LABEL_32:

  return v36;
}

+ (id)archiveIDSDataSyncJournal:(id)journal
{
  journalCopy = journal;
  v5 = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = dictionary;
  if (journalCopy)
  {
    [dictionary setObject:journalCopy forKeyedSubscript:@"kTransactionJournalKey"];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [v7 setObject:null forKeyedSubscript:@"kTransactionJournalKey"];
  }

  v9 = idsDataSyncJournalDataStorePath;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
  v11 = [self _writeData:v10 toStorePath:v9 dataLabel:@"transactions journal"];

  objc_autoreleasePoolPop(v5);

  return v11;
}

+ (void)removeTransactionJournal
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = transactionJournalDataStorePath;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = 0;
    v7 = [defaultManager2 removeItemAtPath:v3 error:&v13];
    v8 = v13;

    if ((v7 & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543874;
        v15 = v12;
        v16 = 2112;
        v17 = v3;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete file %@ due to error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }
}

+ (id)archiveCloudServerTokenData:(id)data
{
  dataCopy = data;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = dictionary;
  if (dataCopy)
  {
    [dictionary setObject:dataCopy forKeyedSubscript:@"kServerTokenDataBlobKey"];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [v6 setObject:null forKeyedSubscript:@"kServerTokenDataBlobKey"];
  }

  v8 = serverTokenDataStorePath;
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
  v10 = [self _writeData:v9 toStorePath:v8 dataLabel:@"server token"];

  return v10;
}

+ (void)removeServerTokenDataFile
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = serverTokenDataStorePath;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = 0;
    v7 = [defaultManager2 removeItemAtPath:v3 error:&v13];
    v8 = v13;

    if ((v7 & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543874;
        v15 = v12;
        v16 = 2112;
        v17 = v3;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete file %@ due to error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }
}

+ (BOOL)archiveMetadata:(id)metadata
{
  v20 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v5 = metadataCopy;
  if (metadataCopy && ([metadataCopy objectForKeyedSubscript:*MEMORY[0x277CFEDF0]], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v5, "objectForKeyedSubscript:", *MEMORY[0x277CFEDC0]), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = configPlainMetadataPath;
    v10 = [self writeDictionary:v5 toStorePath:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive metadata dictionary %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  return v10;
}

+ (id)loadBuiltinPlainMetadataDictionary
{
  v2 = builtinConfigMetadataDictionaryPath;
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)loadPlainMetadataDictionary
{
  v2 = configPlainMetadataPath;
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)unarchiveVendorStore
{
  v40[3] = *MEMORY[0x277D85DE8];
  v3 = configVendorIDStorePath;
  if (v3)
  {
    v4 = [self readDataFromPath:v3];
    if (v4)
    {
      v5 = MEMORY[0x277CBEB98];
      v40[0] = objc_opt_class();
      v40[1] = objc_opt_class();
      v40[2] = objc_opt_class();
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
      v7 = [v5 setWithArray:v6];

      v33 = 0;
      v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v7 fromData:v4 error:&v33];
      v9 = v33;
      if (v8)
      {
        v10 = v8;
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
          v14 = [v10 objectForKeyedSubscript:@"kApplicationVendorIDStoreDataKey"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;
        }

        else
        {
          v25 = objc_autoreleasePoolPush();
          selfCopy = self;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v28 = v32 = v25;
            v29 = objc_opt_class();
            *buf = 138543874;
            v35 = v28;
            v36 = 2112;
            v37 = v29;
            v38 = 2112;
            v39 = v10;
            v30 = v29;
            _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Object was not of expected class NSDictionary (class=%@): %@", buf, 0x20u);

            v25 = v32;
          }

          objc_autoreleasePoolPop(v25);
          v16 = 0;
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v35 = v24;
          v36 = 2112;
          v37 = v9;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive info dictionary from data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Unable to determine vendor store path", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  return v16;
}

+ (void)archiveVendorStore:(id)store
{
  v22[1] = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v5 = configVendorIDStorePath;
  v6 = objc_autoreleasePoolPush();
  if (v5)
  {
    v21 = @"kApplicationVendorIDStoreDataKey";
    v22[0] = storeCopy;
    selfCopy2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v8 = encodeRootObject();
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v12;
      v17 = 2048;
      v18 = [v8 length];
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Saving data file of length %tu at path %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [selfCopy _writeData:v8 toStorePath:v5 dataLabel:@"vendor id store"];
  }

  else
  {
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Unable to determine vendor store path", &v15, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v6);
}

+ (id)archiveHomeData:(id)data toLocation:(id)location
{
  dataCopy = data;
  locationCopy = location;
  v8 = locationCopy;
  v9 = 0;
  if (dataCopy && locationCopy)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [self serializeHomeData:dataCopy localStorage:1 remoteDeviceOnSameAccount:0];
    if (v11 && (v15 = 0, [self encryptDataWithControllerKey:v11 error:&v15], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = v12;
      v9 = [self _writeData:v12 toStorePath:v8 dataLabel:@"home data"];
    }

    else
    {
      v9 = 0;
    }

    objc_autoreleasePoolPop(v10);
  }

  return v9;
}

+ (id)archiveHomeDataLegacy:(id)legacy toLocation:(id)location
{
  legacyCopy = legacy;
  v5 = objc_opt_class();
  v6 = configProtectedDataStorePath;
  v7 = [v5 archiveHomeData:legacyCopy toLocation:v6];

  return v7;
}

+ (id)archiveHomeDataLegacy:(id)legacy
{
  legacyCopy = legacy;
  v5 = configProtectedDataStorePath;
  v6 = [self archiveHomeDataLegacy:legacyCopy toLocation:v5];

  return v6;
}

+ (id)archiveHomeDataForTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (transactionCopy)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [self serializeHomeData:transactionCopy localStorage:1 remoteDeviceOnSameAccount:0];
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)serializeHomeData:(id)data localStorage:(BOOL)storage remoteDeviceOnSameAccount:(BOOL)account
{
  accountCopy = account;
  storageCopy = storage;
  v79 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  homes = [dataCopy homes];

  if (homes)
  {
    homes2 = [dataCopy homes];
    [dictionary setObject:homes2 forKeyedSubscript:@"kHomesDataBlobKey"];
  }

  primaryHomeUUID = [dataCopy primaryHomeUUID];

  if (primaryHomeUUID)
  {
    primaryHomeUUID2 = [dataCopy primaryHomeUUID];
    uUIDString = [primaryHomeUUID2 UUIDString];
    [dictionary setObject:uUIDString forKeyedSubscript:@"kPrimaryHomeUUIDKey"];
  }

  lastCurrentHomeUUID = [dataCopy lastCurrentHomeUUID];

  if (lastCurrentHomeUUID)
  {
    lastCurrentHomeUUID2 = [dataCopy lastCurrentHomeUUID];
    uUIDString2 = [lastCurrentHomeUUID2 UUIDString];
    [dictionary setObject:uUIDString2 forKeyedSubscript:@"kLastCurrentHomeUUIDKey"];
  }

  accessories = [dataCopy accessories];

  if (accessories)
  {
    v71 = dictionary;
    v17 = MEMORY[0x277CBEB18];
    accessories2 = [dataCopy accessories];
    v72 = [v17 arrayWithCapacity:{objc_msgSend(accessories2, "count")}];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    accessories3 = [dataCopy accessories];
    v20 = [accessories3 countByEnumeratingWithState:&v74 objects:v78 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v75;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v75 != v22)
          {
            objc_enumerationMutation(accessories3);
          }

          v24 = *(*(&v74 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;

          v27 = v24;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;

          v30 = !storageCopy;
          if (!v29)
          {
            v30 = 0;
          }

          if (!v30 && v26)
          {
            [v72 addObject:v26];
          }
        }

        v21 = [accessories3 countByEnumeratingWithState:&v74 objects:v78 count:16];
      }

      while (v21);
    }

    v31 = objc_msgSend_copy(v72);
    dictionary = v71;
    [v71 setObject:v31 forKeyedSubscript:@"kAccessoriesDataBlobKey"];
  }

  currentDevice = [dataCopy currentDevice];

  if (currentDevice)
  {
    currentDevice2 = [dataCopy currentDevice];
    [dictionary setObject:currentDevice2 forKeyedSubscript:@"HM.currentDevice"];
  }

  pendingReasonSaved = [dataCopy pendingReasonSaved];

  if (pendingReasonSaved)
  {
    pendingReasonSaved2 = [dataCopy pendingReasonSaved];
    [dictionary setObject:pendingReasonSaved2 forKeyedSubscript:@"HM.savedReasonsKey"];
  }

  v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(dataCopy, "dataVersion")}];
  [dictionary setObject:v36 forKeyedSubscript:@"kHomeDataVersionKey"];

  v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(dataCopy, "schemaVersion")}];
  [dictionary setObject:v37 forKeyedSubscript:@"kHomeSchemaVersionKey"];

  v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(dataCopy, "recoveryVersion")}];
  [dictionary setObject:v38 forKeyedSubscript:@"kHomeRecoveryVersionKey"];

  dataTag = [dataCopy dataTag];
  uUIDString3 = [dataTag UUIDString];
  [dictionary setObject:uUIDString3 forKeyedSubscript:@"kHomeDataTagKey"];

  if (storageCopy || accountCopy)
  {
    applicationData = [dataCopy applicationData];

    if (applicationData)
    {
      applicationData2 = [dataCopy applicationData];
      dictionary2 = [applicationData2 dictionary];
      [dictionary setObject:dictionary2 forKeyedSubscript:@"kApplicationDataKey"];
    }

    if (storageCopy)
    {
      cloudZones = [dataCopy cloudZones];

      if (cloudZones)
      {
        cloudZones2 = [dataCopy cloudZones];
        [dictionary setObject:cloudZones2 forKeyedSubscript:@"kCloudZonesInformationKey"];
      }

      uUIDsOfRemovedHomes = [dataCopy UUIDsOfRemovedHomes];
      v49 = [uUIDsOfRemovedHomes count];

      if (v49)
      {
        uUIDsOfRemovedHomes2 = [dataCopy UUIDsOfRemovedHomes];
        [dictionary setObject:uUIDsOfRemovedHomes2 forKeyedSubscript:@"kUuidsOfRemovedHomesKey"];
      }

      incomingInvitations = [dataCopy incomingInvitations];
      v52 = [incomingInvitations count];

      if (v52)
      {
        incomingInvitations2 = [dataCopy incomingInvitations];
        [dictionary setObject:incomingInvitations2 forKeyedSubscript:@"kIncomingHomeInvitationsKey"];
      }

      pendingUserManagementOperations = [dataCopy pendingUserManagementOperations];

      if (pendingUserManagementOperations)
      {
        pendingUserManagementOperations2 = [dataCopy pendingUserManagementOperations];
        [dictionary setObject:pendingUserManagementOperations2 forKeyedSubscript:@"HM.userManagementPendingOperationsKey"];
      }

      unprocessedOperationIdentifiers = [dataCopy unprocessedOperationIdentifiers];

      if (unprocessedOperationIdentifiers)
      {
        unprocessedOperationIdentifiers2 = [dataCopy unprocessedOperationIdentifiers];
        [dictionary setObject:unprocessedOperationIdentifiers2 forKeyedSubscript:@"kUserManagementUnprocessedOperationModelsKey"];
      }

      account = [dataCopy account];

      if (account)
      {
        account2 = [dataCopy account];
        [dictionary setObject:account2 forKeyedSubscript:@"HM.appleAccount"];

        primaryAccountHandle = [dataCopy primaryAccountHandle];
        [dictionary setObject:primaryAccountHandle forKeyedSubscript:@"HM.primaryAccountHandle"];
      }

      remoteAccounts = [dataCopy remoteAccounts];

      if (remoteAccounts)
      {
        remoteAccounts2 = [dataCopy remoteAccounts];
        [dictionary setObject:remoteAccounts2 forKeyedSubscript:@"HM.remoteAccounts"];
      }

      if ([dataCopy residentEnabledState])
      {
        v63 = [dataCopy residentEnabledState] == 2;
        v64 = [MEMORY[0x277CCABB0] numberWithBool:v63];
        [dictionary setObject:v64 forKeyedSubscript:@"kResidentEnabledKey"];
      }

      v65 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(dataCopy, "accessAllowedWhenLocked")}];
      [dictionary setObject:v65 forKeyedSubscript:@"HM.accessAllowedWhenLocked"];

      demoAccessories = [dataCopy demoAccessories];

      if (demoAccessories)
      {
        demoAccessories2 = [dataCopy demoAccessories];
        [dictionary setObject:demoAccessories2 forKeyedSubscript:@"HM.demoAccessories"];
      }

      if ([dataCopy demoFinalized])
      {
        v68 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(dataCopy, "demoFinalized")}];
        [dictionary setObject:v68 forKeyedSubscript:@"HM.demoFinalized"];
      }

      v41 = objc_msgSend_copy(dictionary);
      v42 = encodeRootObject();
    }

    else
    {
      v41 = objc_msgSend_copy(dictionary);
      v42 = encodeRootObjectForRemoteDeviceOnSameAccountMigrateToHH2(v41, 0, 0);
    }
  }

  else
  {
    v41 = objc_msgSend_copy(dictionary);
    v42 = encodeRootObjectForRemote(v41, 0, 0);
  }

  v69 = v42;

  return v69;
}

+ (void)resetConfiguration:(unint64_t)configuration
{
  v4 = +[HMDBackingStore flushBackingStore];
  if (configuration == 4)
  {
    v5 = 128;
  }

  else
  {
    v5 = -1;
  }

  [HMDResetConfigPostCleanup writePostCleanupRecordWithReason:configuration steps:v5];

  +[HMDHH2FrameworkSwitch removeHH2EnablementPreferenceKey];
}

+ (void)cleanupKeysInStore
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v64 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Cleaning up keys in keychain store", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = configProtectedDataStorePath;
  if (v7)
  {
    v62 = 0;
    v8 = [selfCopy readDataFromPath:v7];
    if (v8)
    {
      v9 = v8;
      v60 = 0;
      v61 = 0;
      v10 = [selfCopy decryptDataWithControllerKey:v8 totalKeysFound:&v62 deleteExtraKeys:0 allowControllerIdentifierToChange:1 controllerIdentifierChanged:0 successfulKeyUserName:&v61 error:&v60];
      v11 = v61;
      v12 = v60;
      v50 = v11;
      if (v10)
      {

        if (v62 > 1)
        {
          v51 = selfCopy;
          systemStore = [MEMORY[0x277CFEC78] systemStore];
          v58 = v12;
          v59 = 0;
          v29 = [systemStore getAllAvailableControllerPublicKeys:0 secretKeys:0 userNames:&v59 error:&v58];
          v30 = v59;
          v31 = v58;

          if (v29)
          {
            v48 = v30;
            v49 = v7;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            obj = v30;
            v32 = [obj countByEnumeratingWithState:&v54 objects:v71 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v55;
              do
              {
                for (i = 0; i != v33; ++i)
                {
                  if (*v55 != v34)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v36 = *(*(&v54 + 1) + 8 * i);
                  if (([v36 isEqualToString:v11] & 1) == 0)
                  {
                    systemStore2 = [MEMORY[0x277CFEC78] systemStore];
                    v53 = v31;
                    [systemStore2 removeControllerKeyPairForIdentifier:v36 leaveTombstone:1 error:&v53];
                    v38 = v53;

                    v39 = objc_autoreleasePoolPush();
                    v40 = v51;
                    v41 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                    {
                      v42 = HMFGetLogIdentifier();
                      v43 = HMFBooleanToString();
                      *buf = 138544130;
                      v64 = v42;
                      v65 = 2112;
                      v66 = v36;
                      v67 = 2112;
                      v68 = v43;
                      v69 = 2112;
                      v70 = v38;
                      _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Removal of controller key-pair for identifier: %@ result in %@, error %@", buf, 0x2Au);

                      v11 = v50;
                    }

                    objc_autoreleasePoolPop(v39);
                    v31 = v38;
                  }
                }

                v33 = [obj countByEnumeratingWithState:&v54 objects:v71 count:16];
              }

              while (v33);
            }

            v30 = v48;
            v7 = v49;
          }

          else
          {
            v44 = objc_autoreleasePoolPush();
            v45 = v51;
            v46 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              v47 = HMFGetLogIdentifier();
              *buf = 138543618;
              v64 = v47;
              v65 = 2112;
              v66 = v31;
              _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Could not get all the controller public keys: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v44);
            v11 = v50;
          }

          v12 = v31;
          goto LABEL_34;
        }

        v13 = objc_autoreleasePoolPush();
        v14 = selfCopy;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543618;
          v64 = v16;
          v65 = 2048;
          v66 = v62;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@There are only %tu keys in the store", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = selfCopy;
        v23 = v21;
        v24 = v22;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v27 = v26 = v7;
          *buf = 138543618;
          v64 = v27;
          v65 = 2112;
          v66 = v12;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Failed to decrypt data: %@", buf, 0x16u);

          v7 = v26;
        }

        objc_autoreleasePoolPop(v23);
      }

      v11 = v50;
LABEL_34:
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v64 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Failed to get the protected store path", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }
}

+ (id)unarchiveHomeData:(id *)data decryptionFailed:(BOOL *)failed fromLocation:(id)location successfulKeyUserName:(id *)name forHH2Migration:(BOOL)migration
{
  migrationCopy = migration;
  v50 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v13 = locationCopy;
  if (failed)
  {
    *failed = 0;
  }

  if (locationCopy)
  {
    v14 = locationCopy;
  }

  else
  {
    v14 = configProtectedDataStorePath;
    if (!v14)
    {
      v32 = objc_alloc(MEMORY[0x277CCA9B8]);
      v17 = [v32 initWithDomain:*MEMORY[0x277CCA050] code:258 userInfo:0];
      goto LABEL_30;
    }
  }

  v43 = 0;
  v15 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v14 options:2 error:&v43];
  v16 = v43;
  v17 = v16;
  if (v15)
  {
    dataCopy = data;
    v41 = 0;
    v42 = 0;
    v40 = v16;
    v18 = [self decryptDataWithControllerKey:v15 totalKeysFound:&v42 deleteExtraKeys:0 allowControllerIdentifierToChange:1 controllerIdentifierChanged:0 successfulKeyUserName:&v41 error:&v40];
    v19 = v41;
    v39 = v40;

    if (v18)
    {
      if (v42 >= 2)
      {
        v37 = migrationCopy;
        v20 = serverTokenDataStorePath;
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v36 = v20;
        LODWORD(v20) = [defaultManager fileExistsAtPath:v20];

        if (v20)
        {
          v22 = objc_autoreleasePoolPush();
          selfCopy = self;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v25 = v35 = v22;
            *buf = 138543618;
            v45 = v25;
            v46 = 2048;
            v47 = v42;
            _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@We have %lu controller keys on boot, nuking server token data to help autocorrect on next fetch", buf, 0x16u);

            v22 = v35;
          }

          objc_autoreleasePoolPop(v22);
          v26 = [selfCopy archiveCloudServerTokenData:0];
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:@"kCloudServerTokenDataResetNotification" object:selfCopy];
        }

        else if (name && v42 == 1)
        {
          v33 = v19;
          *name = v19;
        }

        migrationCopy = v37;
      }

      if ([self deserializeHomeData:dataCopy usingLocalStorage:1 fromData:v18 forHH2Migration:migrationCopy])
      {
        v17 = 0;
      }

      else
      {
        if (failed)
        {
          *failed = 1;
        }

        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:52 userInfo:0];
      }
    }

    else
    {
      if (failed)
      {
        *failed = 1;
      }

      v18 = 0;
      v17 = v39;
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543874;
      v45 = v31;
      v46 = 2112;
      v47 = v14;
      v48 = 2112;
      v49 = v17;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to load data store from file path %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    v18 = 0;
  }

LABEL_30:

  return v17;
}

+ (id)unarchiveHomeData:(id *)data decryptionFailed:(BOOL *)failed successfulKeyUserName:(id *)name
{
  v8 = objc_opt_class();

  return [v8 unarchiveHomeData:data decryptionFailed:failed fromLocation:0 successfulKeyUserName:name forHH2Migration:0];
}

+ (BOOL)removeLegacyHomeArchive:(id *)archive
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = configProtectedDataStorePath;
  v6 = [defaultManager fileExistsAtPath:v5];

  if (!v6)
  {
    return 1;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = configProtectedDataStorePath;
  v9 = [defaultManager2 removeItemAtPath:v8 error:archive];

  return v9;
}

+ (BOOL)deserializeHomeData:(id *)data usingLocalStorage:(BOOL)storage fromData:(id)fromData forHH2Migration:(BOOL)migration
{
  storageCopy = storage;
  v96[18] = *MEMORY[0x277D85DE8];
  fromDataCopy = fromData;
  v10 = fromDataCopy;
  isKindOfClass = 0;
  if (data && fromDataCopy)
  {
    v81 = storageCopy;
    *data = 0;
    v12 = MEMORY[0x277CBEB98];
    v96[0] = objc_opt_class();
    v96[1] = objc_opt_class();
    v96[2] = objc_opt_class();
    v96[3] = objc_opt_class();
    v96[4] = objc_opt_class();
    v96[5] = objc_opt_class();
    v96[6] = objc_opt_class();
    v96[7] = objc_opt_class();
    v96[8] = objc_opt_class();
    v96[9] = objc_opt_class();
    v96[10] = objc_opt_class();
    v96[11] = objc_opt_class();
    v96[12] = objc_opt_class();
    v96[13] = objc_opt_class();
    v96[14] = objc_opt_class();
    v96[15] = objc_opt_class();
    v96[16] = objc_opt_class();
    v96[17] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:18];
    v14 = [v12 setWithArray:v13];

    v88 = 0;
    v15 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v10 error:&v88];
    v16 = v88;
    [v15 _allowDecodingCyclesInSecureMode];
    v17 = *MEMORY[0x277CCA308];
    v87 = v16;
    v18 = [v15 decodeTopLevelObjectOfClasses:v14 forKey:v17 error:&v87];
    v19 = v87;

    if (v18)
    {
      v80 = v19;
      v20 = v18;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      if (isKindOfClass)
      {
        v77 = v18;
        v79 = v14;
        v23 = objc_alloc_init(HMDMutableHomeData);
        v24 = [v20 hmf_arrayForKey:@"kAccessoriesDataBlobKey"];
        [(HMDHomeData *)v23 setAccessories:v24];

        v25 = [v20 hmf_arrayForKey:@"kHomesDataBlobKey"];
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v26 = [v25 countByEnumeratingWithState:&v83 objects:v89 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v84;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v84 != v28)
              {
                objc_enumerationMutation(v25);
              }

              [*(*(&v83 + 1) + 8 * i) _removeCorruptAccessories];
            }

            v27 = [v25 countByEnumeratingWithState:&v83 objects:v89 count:16];
          }

          while (v27);
        }

        [(HMDHomeData *)v23 setHomes:v25, v77];
        v30 = [v22 hmf_UUIDForKey:@"kPrimaryHomeUUIDKey"];
        [(HMDHomeData *)v23 setPrimaryHomeUUID:v30];

        v31 = [v22 hmf_UUIDForKey:@"kLastCurrentHomeUUIDKey"];
        [(HMDHomeData *)v23 setLastCurrentHomeUUID:v31];

        if (v81)
        {
          v32 = [v22 hmf_arrayForKey:@"kUuidsOfRemovedHomesKey"];
          [(HMDHomeData *)v23 setUUIDsOfRemovedHomes:v32];

          v33 = [v22 hmf_arrayForKey:@"kIncomingHomeInvitationsKey"];
          [(HMDHomeData *)v23 setIncomingInvitations:v33];
        }

        v34 = [v22 hmf_dictionaryForKey:@"kZonesInformationKey"];
        if (v34)
        {
          [HMDCloudZoneInformation cloudZonesWithDictionary:v34];
        }

        else
        {
          [v22 hmf_arrayForKey:@"kCloudZonesInformationKey"];
        }
        v49 = ;
        [(HMDHomeData *)v23 setCloudZones:v49];

        v50 = [v22 hmf_numberForKey:@"kHomeSchemaVersionKey"];
        v51 = v50;
        if (v50)
        {
          -[HMDHomeData setSchemaVersion:](v23, "setSchemaVersion:", [v50 integerValue]);
        }

        v52 = [v22 hmf_numberForKey:@"kHomeDataVersionKey"];
        v53 = v52;
        if (v52)
        {
          -[HMDHomeData setDataVersion:](v23, "setDataVersion:", [v52 integerValue]);
        }

        v54 = [v22 hmf_numberForKey:@"kHomeRecoveryVersionKey"];
        v55 = v54;
        if (v54)
        {
          -[HMDHomeData setRecoveryVersion:](v23, "setRecoveryVersion:", [v54 integerValue]);
        }

        v56 = [v22 hmf_UUIDForKey:@"kHomeDataTagKey"];
        if (v56)
        {
          [(HMDHomeData *)v23 setDataTag:v56];
        }

        else
        {
          uUID = [MEMORY[0x277CCAD78] UUID];
          [(HMDHomeData *)v23 setDataTag:uUID];
        }

        if (v81)
        {
          v58 = [v22 hmf_arrayForKey:@"HM.userManagementPendingOperationsKey"];
          if (v58)
          {
            [(HMDHomeData *)v23 setPendingUserManagementOperations:v58];
          }

          else
          {
            v59 = [v22 hmf_arrayForKey:@"kUserManagementOperationsKey"];
            [(HMDHomeData *)v23 setPendingUserManagementOperations:v59];
          }
        }

        v60 = [v22 hmf_arrayForKey:@"kUserManagementUnprocessedOperationModelsKey"];
        [(HMDHomeData *)v23 setUnprocessedOperationIdentifiers:v60];

        v61 = [v22 hmf_dictionaryForKey:@"kApplicationDataKey"];
        v62 = [HMDApplicationData alloc];
        v63 = objc_alloc(MEMORY[0x277CCAD78]);
        v64 = [v63 initWithUUIDString:*MEMORY[0x277CD23C8]];
        v65 = [(HMDApplicationData *)v62 initWithDictionary:v61 parentUUID:v64];

        [(HMDHomeData *)v23 setApplicationData:v65];
        buf[0] = 0;
        v66 = [v22 hmf_BOOLForKey:@"kResidentEnabledKey" isPresent:buf];
        v67 = 1;
        if (v66)
        {
          v67 = 2;
        }

        if (buf[0])
        {
          v68 = v67;
        }

        else
        {
          v68 = 0;
        }

        [(HMDHomeData *)v23 setResidentEnabledState:v68];
        if (v81)
        {
          v69 = [v22 objectForKey:@"HM.appleAccount"];
          [(HMDHomeData *)v23 setAccount:v69];

          v70 = [v22 hmf_arrayForKey:@"HM.remoteAccounts"];
          [(HMDHomeData *)v23 setRemoteAccounts:v70];

          v71 = [v22 objectForKey:@"HM.primaryAccountHandle"];
          [(HMDHomeData *)v23 setPrimaryAccountHandle:v71];
        }

        v72 = [v22 objectForKey:@"HM.currentDevice"];
        [(HMDHomeData *)v23 setCurrentDevice:v72];

        v73 = [v22 objectForKey:@"HM.savedReasonsKey"];
        [(HMDHomeData *)v23 setPendingReasonSaved:v73];

        buf[0] = 0;
        v74 = [v22 hmf_BOOLForKey:@"HM.accessAllowedWhenLocked" isPresent:buf];
        v18 = v78;
        v19 = v80;
        if ((buf[0] & 1) == 0)
        {
          v74 = isiOSDevice();
        }

        [(HMDHomeData *)v23 setAccessAllowedWhenLocked:v74];
        v75 = [v22 objectForKey:@"HM.demoAccessories"];
        [(HMDHomeData *)v23 setDemoAccessories:v75];

        -[HMDHomeData setDemoFinalized:](v23, "setDemoFinalized:", [v22 hmf_BOOLForKey:@"HM.demoFinalized"]);
        *data = objc_msgSend_copy(v23);

        v14 = v79;
      }

      else
      {
        v41 = objc_autoreleasePoolPush();
        selfCopy = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v82 = v15;
          v44 = v18;
          v46 = v45 = v14;
          v47 = objc_opt_class();
          *buf = 138543874;
          v91 = v46;
          v92 = 2112;
          v93 = v47;
          v94 = 2112;
          v95 = v20;
          v48 = v47;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Object was not of expected class NSDictionary (class=%@): %@", buf, 0x20u);

          v14 = v45;
          v18 = v44;
          v15 = v82;
        }

        objc_autoreleasePoolPop(v41);
        v19 = v80;
      }
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        HMFBooleanToString();
        v40 = v39 = v19;
        *buf = 138543874;
        v91 = v38;
        v92 = 2112;
        v93 = v40;
        v94 = 2112;
        v95 = v39;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive home data from keyed archive: HH2 Migration: %@ / error: %@", buf, 0x20u);

        v19 = v39;
      }

      objc_autoreleasePoolPop(v35);
      isKindOfClass = 0;
    }
  }

  return isKindOfClass & 1;
}

+ (BOOL)deserializeHomeData:(id *)data localStorage:(BOOL)storage fromData:(id)fromData
{
  storageCopy = storage;
  fromDataCopy = fromData;
  LOBYTE(storageCopy) = [objc_opt_class() deserializeHomeData:data usingLocalStorage:storageCopy fromData:fromDataCopy forHH2Migration:0];

  return storageCopy;
}

+ (BOOL)writeDictionary:(id)dictionary toStorePath:(id)path
{
  v27 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  pathCopy = path;
  v8 = objc_autoreleasePoolPush();
  if (!dictionaryCopy || !pathCopy)
  {
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = dictionaryCopy;
      v23 = 2112;
      v24 = pathCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@### Failed to save dictionary %@ to path %@", buf, 0x20u);
    }

    goto LABEL_10;
  }

  v18 = 0;
  v9 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionaryCopy format:200 options:0 error:&v18];
  selfCopy = v18;
  if (!v9)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138544130;
      v20 = v16;
      v21 = 2112;
      v22 = dictionaryCopy;
      v23 = 2112;
      v24 = pathCopy;
      v25 = 2112;
      v26 = selfCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@### Failed to save dictionary %@ to path %@ error %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v9 = 0;
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = [v9 writeToFile:pathCopy atomically:1];
LABEL_11:

  objc_autoreleasePoolPop(v8);
  return v11;
}

+ (id)_writeData:(id)data toStorePath:(id)path dataLabel:(id)label createDirectoriesIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v54[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  pathCopy = path;
  labelCopy = label;
  v53 = *MEMORY[0x277CCA180];
  v54[0] = &unk_286628300;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([defaultManager createFileAtPath:pathCopy contents:0 attributes:v13] & 1) == 0)
  {
    [defaultManager setAttributes:v13 ofItemAtPath:pathCopy error:0];
  }

  v44 = 0;
  v15 = [dataCopy writeToFile:pathCopy options:1073741825 error:&v44];
  v16 = v44;
  v17 = v16;
  if (v15)
  {
    goto LABEL_14;
  }

  if (!neededCopy)
  {
LABEL_11:
    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = HMFGetLogIdentifier();
      v40 = v29;
      code = [v17 code];
      [v17 localizedDescription];
      v34 = v42 = dataCopy;
      *buf = 138544130;
      v46 = v32;
      v47 = 2112;
      v48 = labelCopy;
      v49 = 2048;
      v50 = code;
      v29 = v40;
      v51 = 2112;
      v52 = v34;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to write %@: (%ld) %@", buf, 0x2Au);

      dataCopy = v42;
    }

    objc_autoreleasePoolPop(v29);
LABEL_14:
    v43 = 0;
    v35 = [defaultManager attributesOfItemAtPath:pathCopy error:&v43];
    v36 = v35;
    if (v35)
    {
      fileSize = [v35 fileSize];
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:fileSize];
    }

    v28 = v35;

    goto LABEL_17;
  }

  domain = [v16 domain];
  v19 = domain;
  if (domain != *MEMORY[0x277CCA050])
  {

    goto LABEL_11;
  }

  code2 = [v17 code];

  if (code2 != 4)
  {
    goto LABEL_11;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v39 = HMFGetLogIdentifier();
    v41 = v21;
    code3 = [v17 code];
    localizedDescription = [v17 localizedDescription];
    *buf = 138544130;
    v46 = v39;
    v47 = 2112;
    v48 = labelCopy;
    v49 = 2048;
    v50 = code3;
    v21 = v41;
    v51 = 2112;
    v52 = localizedDescription;
    v26 = localizedDescription;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Creating parent directory and trying again due to error writing %@: (%ld) %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v21);
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  createDirectory(stringByDeletingLastPathComponent);

  v28 = [selfCopy2 _writeData:dataCopy toStorePath:pathCopy dataLabel:labelCopy createDirectoriesIfNeeded:0];
LABEL_17:

  return v28;
}

+ (id)writeData:(id)data toStorePath:(id)path dataLabel:(id)label
{
  dataCopy = data;
  pathCopy = path;
  labelCopy = label;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x259C01AE0](self, a2);
  v16 = [v12 initWithName:v13];

  v14 = [self _writeData:dataCopy toStorePath:pathCopy dataLabel:labelCopy];
  __HMFActivityScopeLeave();

  return v14;
}

+ (id)readDataFromPath:(id)path
{
  v20 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v13 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:pathCopy options:2 error:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = pathCopy;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to load data store from file path %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  return v5;
}

- (id)unarchiveDictionaryFromData:(id)data allowedClasses:(id)classes forKey:(id)key
{
  v28[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  classesCopy = classes;
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v28[2] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v12 = [classesCopy setByAddingObjectsFromArray:v11];

  v23 = 0;
  v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v12 fromData:dataCopy error:&v23];
  v14 = v23;
  if (v13)
  {
    v15 = [v13 objectForKey:keyCopy];
    if (v15)
    {
      goto LABEL_9;
    }

    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = keyCopy;
      v20 = "%{public}@Key %@ not found in unarchived data";
LABEL_7:
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0x16u);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v14;
      v20 = "%{public}@Failed to unarchive data: %@";
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v16);
  v15 = 0;
LABEL_9:

  return v15;
}

- (id)unarchiveDictionaryWithPath:(id)path allowedClasses:(id)classes forKey:(id)key
{
  pathCopy = path;
  classesCopy = classes;
  keyCopy = key;
  v11 = objc_autoreleasePoolPush();
  v12 = [objc_opt_class() readDataFromPath:pathCopy];
  if (v12 || [0 length])
  {
    v13 = [(HMDPersistentStore *)self unarchiveDictionaryFromData:v12 allowedClasses:classesCopy forKey:keyCopy];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v11);

  return v13;
}

- (id)archiveDictionary:(id)dictionary withPath:(id)path forKey:(id)key
{
  v31 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  pathCopy = path;
  keyCopy = key;
  context = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v12 = dictionary;
  if (dictionaryCopy)
  {
    [dictionary setObject:dictionaryCopy forKeyedSubscript:keyCopy];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [v12 setObject:null forKeyedSubscript:keyCopy];
  }

  v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
  pathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"archive data with path: %@", pathCopy];
  v16 = [objc_opt_class() _writeData:v14 toStorePath:pathCopy dataLabel:pathCopy];
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v23 = dictionaryCopy;
    v21 = v20 = keyCopy;
    *buf = 138543874;
    v26 = v21;
    v27 = 2112;
    v28 = pathCopy;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@HMDPersistentStore %@ with size: %@", buf, 0x20u);

    keyCopy = v20;
    dictionaryCopy = v23;
  }

  objc_autoreleasePoolPop(v17);
  objc_autoreleasePoolPop(context);

  return v16;
}

- (id)writeData:(id)data toStorePath:(id)path dataLabel:(id)label
{
  labelCopy = label;
  pathCopy = path;
  dataCopy = data;
  v10 = [objc_opt_class() writeData:dataCopy toStorePath:pathCopy dataLabel:labelCopy];

  return v10;
}

@end