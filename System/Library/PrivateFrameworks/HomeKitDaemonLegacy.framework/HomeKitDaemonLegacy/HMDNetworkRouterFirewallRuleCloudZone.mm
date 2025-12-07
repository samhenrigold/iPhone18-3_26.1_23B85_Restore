@interface HMDNetworkRouterFirewallRuleCloudZone
+ (BOOL)__verifyDataFromRecord:(id)record signatureVerificationPublicKeys:(id)keys dataKey:(id)key dataAssetKey:(id)assetKey maxDataSize:(unint64_t)size signatureKey:(id)signatureKey signatureAssetKey:(id)signatureAssetKey maxSignatureSize:(unint64_t)self0 baseAccessoryIdentifier:(id *)self1 data:(id *)self2 error:(id *)self3;
+ (BOOL)__verifyDigestDataAgainstSignatureFromRecord:(id)record digestData:(id)data signatureData:(id)signatureData signatureVerificationPublicKeys:(id)keys error:(id *)error;
+ (BOOL)verifyNetworkDeclarationsFromRecord:(id)record signatureVerificationPublicKeys:(id)keys baseAccessoryIdentifier:(id *)identifier data:(id *)data error:(id *)error;
+ (BOOL)verifyNetworkDeclarationsFromRecord:(id)record signatureVerificationPublicKeys:(id)keys error:(id *)error;
+ (BOOL)verifyPairedMetadataFromRecord:(id)record signatureVerificationPublicKeys:(id)keys error:(id *)error;
+ (id)__calculateDigestDataFromRecord:(id)record dataKey:(id)key dataAssetKey:(id)assetKey maxDataSize:(unint64_t)size error:(id *)error;
+ (id)__createBaseAccessoryIdentifierFromRecord:(id)record error:(id *)error;
+ (id)__getDataFromRecord:(id)record dataKey:(id)key dataAssetKey:(id)assetKey maxDataSize:(unint64_t)size error:(id *)error;
+ (id)__getSignatureDataFromRecord:(id)record signatureKey:(id)key signatureAssetKey:(id)assetKey maxSignatureSize:(unint64_t)size error:(id *)error;
+ (unint64_t)__maxSizeFromPreferenceWithKey:(id)key defaultValue:(unint64_t)value;
- (BOOL)__canRecoverFromError:(id)error fetchInfo:(id)info;
- (BOOL)__commitLocalChanges:(id)changes error:(id *)error;
- (HMDNetworkRouterFirewallRuleCloudZone)initWithCloudDatabase:(id)database state:(id)state useAnonymousRequests:(BOOL)requests watchedRecordIDs:(id)ds signatureVerificationPublicKeys:(id)keys;
- (NSMutableSet)uncommittedModifiedRecordIDsFromLastPull;
- (NSSet)modifiedRecordIDsFromLastPull;
- (id)attributeDescriptions;
- (id)decodeModelFrom:(id)from recordSource:(unint64_t)source error:(id *)error;
- (id)fetchChangesWithToken:(id)token options:(id)options;
- (void)__fetchZoneChangesWithFetchInfo:(id)info;
- (void)__finalizeUpdatedRecordIDs;
- (void)__noteUpdatedRecordID:(id)d;
- (void)__recordChanged:(id)changed fetchInfo:(id)info;
- (void)__recordDeleted:(id)deleted recordType:(id)type fetchInfo:(id)info;
- (void)__retryFetchWithFetchInfo:(id)info;
- (void)__zoneChangeTokensUpdated:(id)updated fetchInfo:(id)info;
- (void)__zoneChangesCompleted:(id)completed fetchInfo:(id)info;
- (void)__zoneFetchCompletedWithChangeToken:(id)token error:(id)error moreComing:(BOOL)coming fetchInfo:(id)info;
- (void)setModifiedRecordIDsFromLastPull:(id)pull;
- (void)setUncommittedModifiedRecordIDsFromLastPull:(id)pull;
- (void)startUpWithLocalZone:(id)zone;
@end

@implementation HMDNetworkRouterFirewallRuleCloudZone

- (id)decodeModelFrom:(id)from recordSource:(unint64_t)source error:(id *)error
{
  v91 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v8 = objc_opt_class();
  signatureVerificationPublicKeys = [(HMDNetworkRouterFirewallRuleCloudZone *)self signatureVerificationPublicKeys];
  v81 = 0;
  v82 = 0;
  LODWORD(v8) = [v8 verifyNetworkDeclarationsFromRecord:fromCopy signatureVerificationPublicKeys:signatureVerificationPublicKeys baseAccessoryIdentifier:&v82 data:&v81 error:error];
  v10 = v82;
  v11 = v81;

  if (!v8)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = objc_opt_class();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v16 = v64 = v10;
      [fromCopy recordID];
      v71 = fromCopy;
      v17 = v75 = v11;
      zoneID = [v17 zoneID];
      [zoneID zoneName];
      v20 = v19 = error;
      [v71 recordID];
      v21 = v67 = v13;
      recordName = [v21 recordName];
      v23 = *v19;
      *buf = 138544130;
      v84 = v16;
      v85 = 2112;
      v86 = v20;
      v87 = 2112;
      v88 = recordName;
      v89 = 2112;
      v90 = v23;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Signature verification of fetched network declarations failed for record %@/%@ with error %@", buf, 0x2Au);

      v13 = v67;
      error = v19;

      fromCopy = v71;
      v11 = v75;

      v10 = v64;
    }

    objc_autoreleasePoolPop(v13);
LABEL_7:
    v24 = objc_opt_class();
    signatureVerificationPublicKeys2 = [(HMDNetworkRouterFirewallRuleCloudZone *)self signatureVerificationPublicKeys];
    __maxSizeForCKRecordPairedMetadata = [objc_opt_class() __maxSizeForCKRecordPairedMetadata];
    v79 = 0;
    v80 = v10;
    LODWORD(v24) = [v24 __verifyDataFromRecord:fromCopy signatureVerificationPublicKeys:signatureVerificationPublicKeys2 dataKey:@"CD_pairedMetadata" dataAssetKey:@"CD_pairedMetadata_ckAsset" maxDataSize:__maxSizeForCKRecordPairedMetadata signatureKey:@"CD_pairedMetadataSignature" signatureAssetKey:@"CD_pairedMetadataSignature_ckAsset" maxSignatureSize:objc_msgSend(objc_opt_class() baseAccessoryIdentifier:"__maxSizeForCKRecordPairedMetadataSignature") data:&v80 error:{&v79, error}];
    v27 = v80;

    v28 = v79;
    if (v24)
    {
      v29 = [[HMDCloudPairedMetadata alloc] initWithBaseAccessoryIdentifier:v27 data:v28];
      if (!v29)
      {
        v52 = objc_autoreleasePoolPush();
        v53 = objc_opt_class();
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v55 = v78 = v11;
          [fromCopy recordID];
          v56 = v66 = v52;
          [v56 zoneID];
          v74 = v27;
          v58 = v57 = fromCopy;
          zoneName = [v58 zoneName];
          [v57 recordID];
          v60 = v70 = error;
          recordName2 = [v60 recordName];
          *buf = 138543874;
          v84 = v55;
          v85 = 2112;
          v86 = zoneName;
          v87 = 2112;
          v88 = recordName2;
          _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Fetched Paired metadata failed to parse for record %@/%@", buf, 0x20u);

          error = v70;
          fromCopy = v57;
          v27 = v74;

          v52 = v66;
          v11 = v78;
        }

        objc_autoreleasePoolPop(v52);
        if (error)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
          *error = v41 = 0;
          goto LABEL_24;
        }

LABEL_23:
        v41 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v76 = v11;
      v30 = objc_autoreleasePoolPush();
      v31 = objc_opt_class();
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        recordID = [fromCopy recordID];
        zoneID2 = [recordID zoneID];
        [zoneID2 zoneName];
        v34 = v68 = v30;
        recordID2 = [fromCopy recordID];
        [recordID2 recordName];
        v36 = v72 = v27;
        v37 = *error;
        *buf = 138544130;
        v84 = v33;
        v85 = 2112;
        v86 = v34;
        v87 = 2112;
        v88 = v36;
        v89 = 2112;
        v90 = v37;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Signature verification of fetched Paired metadata failed for record %@/%@ with error %@", buf, 0x2Au);

        v27 = v72;
        v30 = v68;
      }

      objc_autoreleasePoolPop(v30);
      v11 = v76;
    }

    if (v11 | v28)
    {
      v38 = [HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel alloc];
      cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
      recordID3 = [fromCopy recordID];
      v41 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel *)v38 initWithCloudZoneID:cloudZoneID recordID:recordID3 networkDeclarationsData:v11 pairedMetadataData:v28];

LABEL_24:
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v12 = [[HMDNetworkRouterFirewallRuleCloudNetworkDeclarations alloc] initWithBaseAccessoryIdentifier:v10 data:v11];
  if (v12)
  {

    goto LABEL_7;
  }

  v42 = objc_autoreleasePoolPush();
  v43 = objc_opt_class();
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = HMFGetLogIdentifier();
    [fromCopy recordID];
    v46 = v73 = v42;
    [v46 zoneID];
    errorCopy = error;
    v47 = v77 = v11;
    [v47 zoneName];
    v49 = v48 = fromCopy;
    recordID4 = [v48 recordID];
    recordName3 = [recordID4 recordName];
    *buf = 138543874;
    v84 = v45;
    v85 = 2112;
    v86 = v49;
    v87 = 2112;
    v88 = recordName3;
    _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Fetched network declarations failed to parse for record %@/%@", buf, 0x20u);

    fromCopy = v48;
    v11 = v77;
    error = errorCopy;

    v42 = v73;
  }

  objc_autoreleasePoolPop(v42);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
    *error = v41 = 0;
  }

  else
  {
    v41 = 0;
  }

  v27 = v10;
LABEL_25:

  return v41;
}

+ (BOOL)verifyPairedMetadataFromRecord:(id)record signatureVerificationPublicKeys:(id)keys error:(id *)error
{
  keysCopy = keys;
  recordCopy = record;
  v11 = 0;
  v12 = 0;
  LOBYTE(error) = [self __verifyDataFromRecord:recordCopy signatureVerificationPublicKeys:keysCopy dataKey:@"CD_pairedMetadata" dataAssetKey:@"CD_pairedMetadata_ckAsset" maxDataSize:objc_msgSend(self signatureKey:"__maxSizeForCKRecordPairedMetadata") signatureAssetKey:@"CD_pairedMetadataSignature" maxSignatureSize:@"CD_pairedMetadataSignature_ckAsset" baseAccessoryIdentifier:objc_msgSend(self data:"__maxSizeForCKRecordPairedMetadataSignature") error:{&v12, &v11, error}];

  return error;
}

+ (BOOL)verifyNetworkDeclarationsFromRecord:(id)record signatureVerificationPublicKeys:(id)keys error:(id *)error
{
  v7 = 0;
  v8 = 0;
  v5 = [self verifyNetworkDeclarationsFromRecord:record signatureVerificationPublicKeys:keys baseAccessoryIdentifier:&v8 data:&v7 error:error];

  return v5;
}

+ (BOOL)verifyNetworkDeclarationsFromRecord:(id)record signatureVerificationPublicKeys:(id)keys baseAccessoryIdentifier:(id *)identifier data:(id *)data error:(id *)error
{
  keysCopy = keys;
  recordCopy = record;
  LOBYTE(error) = [self __verifyDataFromRecord:recordCopy signatureVerificationPublicKeys:keysCopy dataKey:@"CD_networkDeclarations" dataAssetKey:@"CD_networkDeclarations_ckAsset" maxDataSize:objc_msgSend(self signatureKey:"__maxSizeForCKRecordNetworkDeclarations") signatureAssetKey:@"CD_networkDeclarationsSignature" maxSignatureSize:@"CD_networkDeclarationsSignature_ckAsset" baseAccessoryIdentifier:objc_msgSend(self data:"__maxSizeForCKRecordNetworkDeclarationsSignature") error:{identifier, data, error}];

  return error;
}

+ (BOOL)__verifyDataFromRecord:(id)record signatureVerificationPublicKeys:(id)keys dataKey:(id)key dataAssetKey:(id)assetKey maxDataSize:(unint64_t)size signatureKey:(id)signatureKey signatureAssetKey:(id)signatureAssetKey maxSignatureSize:(unint64_t)self0 baseAccessoryIdentifier:(id *)self1 data:(id *)self2 error:(id *)self3
{
  recordCopy = record;
  keysCopy = keys;
  keyCopy = key;
  assetKeyCopy = assetKey;
  signatureKeyCopy = signatureKey;
  signatureAssetKeyCopy = signatureAssetKey;
  v24 = [self __createBaseAccessoryIdentifierFromRecord:recordCopy error:error];
  if (v24)
  {
    v33 = signatureAssetKeyCopy;
    v25 = keyCopy;
    v26 = [self __calculateDigestDataFromRecord:recordCopy dataKey:keyCopy dataAssetKey:assetKeyCopy maxDataSize:size error:error];
    if (v26)
    {
      v32 = keysCopy;
      v27 = [self __getSignatureDataFromRecord:recordCopy signatureKey:signatureKeyCopy signatureAssetKey:v33 maxSignatureSize:signatureSize error:error];
      if (v27 && [self __verifyDigestDataAgainstSignatureFromRecord:recordCopy digestData:v26 signatureData:v27 signatureVerificationPublicKeys:v32 error:error] && (objc_msgSend(self, "__getDataFromRecord:dataKey:dataAssetKey:maxDataSize:error:", recordCopy, keyCopy, assetKeyCopy, size, error), v28 = objc_claimAutoreleasedReturnValue(), (*data = v28) != 0))
      {
        v29 = v24;
        *identifier = v24;
        v30 = 1;
      }

      else
      {
        v30 = 0;
      }

      keysCopy = v32;
    }

    else
    {
      v30 = 0;
    }

    signatureAssetKeyCopy = v33;
  }

  else
  {
    v30 = 0;
    v25 = keyCopy;
  }

  return v30;
}

+ (id)__getDataFromRecord:(id)record dataKey:(id)key dataAssetKey:(id)assetKey maxDataSize:(unint64_t)size error:(id *)error
{
  recordCopy = record;
  keyCopy = key;
  assetKeyCopy = assetKey;
  if (!assetKeyCopy || (readDataFromCKRecordOptionalAssetField(recordCopy), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = dataFromCKRecordRequiredField(recordCopy, keyCopy, error);
  }

  return v13;
}

+ (BOOL)__verifyDigestDataAgainstSignatureFromRecord:(id)record digestData:(id)data signatureData:(id)signatureData signatureVerificationPublicKeys:(id)keys error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dataCopy = data;
  signatureDataCopy = signatureData;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  keysCopy = keys;
  v13 = [keysCopy countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v34;
    v17 = *MEMORY[0x277CDC2B8];
    while (2)
    {
      v18 = 0;
      v19 = v15;
      do
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(keysCopy);
        }

        v20 = *(*(&v33 + 1) + 8 * v18);
        *error = 0;
        v21 = SecKeyVerifySignature(v20, v17, dataCopy, signatureDataCopy, error);
        v15 = *error;

        if (v21)
        {

          v22 = 1;
          goto LABEL_17;
        }

        ++v18;
        v19 = v15;
      }

      while (v14 != v18);
      v14 = [keysCopy countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    recordID = [recordCopy recordID];
    hmbDescription = [recordID hmbDescription];
    *error = 138543874;
    *&error[4] = v26;
    v38 = 2112;
    v39 = hmbDescription;
    v40 = 2112;
    v41 = v15;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Digest does not match signature on record %@: %@", error, 0x20u);
  }

  objc_autoreleasePoolPop(v23);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:53];
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_17:

  return v22;
}

+ (id)__getSignatureDataFromRecord:(id)record signatureKey:(id)key signatureAssetKey:(id)assetKey maxSignatureSize:(unint64_t)size error:(id *)error
{
  v8 = stringFromCKRecord(record, key, assetKey, size, error);
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:0];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else if (error)
    {
      *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:53];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)__calculateDigestDataFromRecord:(id)record dataKey:(id)key dataAssetKey:(id)assetKey maxDataSize:(unint64_t)size error:(id *)error
{
  v7 = MEMORY[0x28223BE20](self);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v7;
  v97[2] = *MEMORY[0x277D85DE8];
  v18 = v17;
  v19 = v15;
  v20 = v13;
  v21 = v18;
  v22 = v19;
  v23 = v20;
  if (v23)
  {
    v24 = filePathFromCKRecordOptionalAssetField(v21, v23);
    v25 = v24;
    if (v24)
    {
      v26 = createInputStreamWithFilePath(v24, v9);
      if (v26)
      {
        v27 = v26;
        goto LABEL_15;
      }
    }
  }

  v25 = dataFromCKRecordRequiredField(v21, v22, v9);
  if (v25)
  {
    v28 = [MEMORY[0x277CBEAE0] inputStreamWithData:v25];
    v27 = v28;
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v75 = v16;
      v79 = v9;
      v30 = objc_autoreleasePoolPush();
      v31 = objc_opt_class();
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v93 = v33;
        v94 = 2112;
        v95 = v25;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to create input stream with data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v16 = v75;
      v9 = v79;
      if (v79)
      {
        *v79 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      }
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_15:

  if (!v27)
  {
    v52 = 0;
    goto LABEL_53;
  }

  v76 = v16;
  v80 = v9;
  v74 = v22;
  recordID = [v21 recordID];
  zoneID = [recordID zoneID];
  zoneName = [zoneID zoneName];
  v97[0] = zoneName;
  v73 = recordID;
  recordName = [recordID recordName];
  v97[1] = recordName;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:2];

  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v39 = v38;
  v40 = [v39 countByEnumeratingWithState:&v81 objects:v96 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v82;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v82 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v81 + 1) + 8 * i) dataUsingEncoding:4];
        CC_SHA256_Update(&c, [v44 bytes], objc_msgSend(v44, "length"));
      }

      v41 = [v39 countByEnumeratingWithState:&v81 objects:v96 count:16];
    }

    while (v41);
  }

  [v27 open];
  v45 = [v27 read:buf maxLength:4096];
  if (v45 < 1)
  {
LABEL_32:
    [v27 close];
    if ((v45 & 0x8000000000000000) == 0)
    {
      v50 = [MEMORY[0x277CBEB28] dataWithLength:32];
      v51 = v50;
      v22 = v74;
      if (v50)
      {
        CC_SHA256_Final([v50 mutableBytes], &c);
        v52 = objc_msgSend_copy(v51);
      }

      else
      {
        v67 = objc_autoreleasePoolPush();
        v68 = v76;
        v69 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v70 = HMFGetLogIdentifier();
          *v86 = 138543618;
          v87 = v70;
          v88 = 2048;
          v89 = 32;
          _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_ERROR, "%{public}@Failed to allocate %lu bytes to hold digest", v86, 0x16u);
        }

        objc_autoreleasePoolPop(v67);
        if (v80)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          *v80 = v52 = 0;
        }

        else
        {
          v52 = 0;
        }
      }

      goto LABEL_52;
    }

    v61 = objc_autoreleasePoolPush();
    v62 = v76;
    v63 = HMFGetOSLogHandle();
    v22 = v74;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = HMFGetLogIdentifier();
      recordID2 = [v21 recordID];
      hmbDescription = [recordID2 hmbDescription];
      [v27 streamError];
      v66 = v78 = v61;
      *v86 = 138543874;
      v87 = v64;
      v88 = 2112;
      v89 = hmbDescription;
      v90 = 2112;
      v91 = v66;
      _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@Error reading data from record %@: %@", v86, 0x20u);

      v61 = v78;
    }

    objc_autoreleasePoolPop(v61);
    v59 = v80;
    if (v80)
    {
      streamError = [v27 streamError];
      goto LABEL_44;
    }

LABEL_45:
    v52 = 0;
    goto LABEL_52;
  }

  v46 = 0;
  while (1)
  {
    v47 = __CFADD__(v45, v46);
    v46 += v45;
    v48 = v47;
    v49 = v48 << 63 >> 63;
    if (v49 != v48 || v49 < 0 || v46 > v11)
    {
      break;
    }

    CC_SHA256_Update(&c, buf, v45);
    v45 = [v27 read:buf maxLength:4096];
    if (v45 <= 0)
    {
      goto LABEL_32;
    }
  }

  [v27 close];
  v53 = objc_autoreleasePoolPush();
  v54 = v76;
  v55 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v56 = v77 = v53;
    recordID3 = [v21 recordID];
    hmbDescription2 = [recordID3 hmbDescription];
    *v86 = 138543874;
    v87 = v56;
    v88 = 2048;
    v89 = v11;
    v90 = 2112;
    v91 = hmbDescription2;
    _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_ERROR, "%{public}@Data size is bigger than maximum %ld bytes on record %@", v86, 0x20u);

    v53 = v77;
  }

  objc_autoreleasePoolPop(v53);
  v22 = v74;
  v59 = v80;
  if (!v80)
  {
    goto LABEL_45;
  }

  streamError = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
LABEL_44:
  v52 = 0;
  *v59 = streamError;
LABEL_52:

LABEL_53:

  return v52;
}

+ (id)__createBaseAccessoryIdentifierFromRecord:(id)record error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v7 = stringFromCKRecord(recordCopy, @"CD_productGroup", @"CD_productGroup_ckAsset", [self __maxSizeForCKRecordString], error);
  if (!v7)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v8 = stringFromCKRecord(recordCopy, @"CD_productNumber", @"CD_productNumber_ckAsset", [self __maxSizeForCKRecordString], error);
  if (v8)
  {
    errorCopy = error;
    v34 = v8;
    v9 = [[HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc] initWithProductGroup:v7 productNumber:v8 firmwareVersion:0];
    cloudKitZoneName = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v9 cloudKitZoneName];
    recordID = [recordCopy recordID];
    zoneID = [recordID zoneID];
    zoneName = [zoneID zoneName];
    v14 = [cloudKitZoneName isEqualToString:zoneName];

    if (v14)
    {
      cloudKitRecordName = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v9 cloudKitRecordName];
      recordID2 = [recordCopy recordID];
      recordName = [recordID2 recordName];
      v18 = [cloudKitRecordName isEqualToString:recordName];

      if ((v18 & 1) == 0)
      {
        v26 = objc_autoreleasePoolPush();
        selfCopy = self;
        v28 = HMFGetOSLogHandle();
        v8 = v34;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          recordID3 = [recordCopy recordID];
          hmbDescription = [recordID3 hmbDescription];
          *buf = 138544130;
          v36 = v29;
          v37 = 2112;
          v38 = @"CD_productNumber";
          v39 = 2112;
          v40 = v34;
          v41 = 2112;
          v42 = hmbDescription;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@'%@' field value '%@' does not match record name on %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v26);
        if (errorCopy)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:53];
          *errorCopy = v19 = 0;
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_18;
      }

      v19 = v9;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        recordID4 = [recordCopy recordID];
        hmbDescription2 = [recordID4 hmbDescription];
        *buf = 138544130;
        v36 = v23;
        v37 = 2112;
        v38 = @"CD_productGroup";
        v39 = 2112;
        v40 = v7;
        v41 = 2112;
        v42 = hmbDescription2;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@'%@' field value '%@' does not match zone name on %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v20);
      if (errorCopy)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:53];
        *errorCopy = v19 = 0;
      }

      else
      {
        v19 = 0;
      }
    }

    v8 = v34;
LABEL_18:

    goto LABEL_19;
  }

  v19 = 0;
LABEL_19:

LABEL_20:

  return v19;
}

+ (unint64_t)__maxSizeFromPreferenceWithKey:(id)key defaultValue:(unint64_t)value
{
  keyCopy = key;
  if (isInternalBuild())
  {
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v7 = [mEMORY[0x277D0F8D0] preferenceForKey:keyCopy];

    numberValue = [v7 numberValue];

    if (numberValue)
    {
      numberValue2 = [v7 numberValue];
      value = [numberValue2 unsignedIntegerValue];
    }
  }

  return value;
}

- (void)__retryFetchWithFetchInfo:(id)info
{
  v29 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  [infoCopy retryIntervalSeconds];
  v6 = v5;
  [infoCopy retryIntervalSeconds];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  v9 = dispatch_get_global_queue(0, 0);
  activity = [infoCopy activity];
  if (v6 <= 0.0)
  {
    v11 = "fetch the next batch of records";
  }

  else
  {
    v11 = "retry the fetch";
  }

  [infoCopy retryIntervalSeconds];
  [activity markWithFormat:@"Will %s in %lu seconds", v11, v12];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HMFGetLogIdentifier();
    [infoCopy retryIntervalSeconds];
    *buf = 138543874;
    v24 = v16;
    v25 = 2080;
    v26 = v11;
    v27 = 2048;
    v28 = v17;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Will %s in %lu seconds", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  [infoCopy setShouldRetry:0];
  [infoCopy setRetryCount:{objc_msgSend(infoCopy, "retryCount") + 1}];
  objc_initWeak(buf, selfCopy);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDNetworkRouterFirewallRuleCloudZone___retryFetchWithFetchInfo___block_invoke;
  block[3] = &unk_27972F5B0;
  v20 = infoCopy;
  v18 = infoCopy;
  objc_copyWeak(&v21, buf);
  v22 = v6 > 0.0;
  dispatch_after(v8, v9, block);
  objc_destroyWeak(&v21);

  objc_destroyWeak(buf);
}

void __67__HMDNetworkRouterFirewallRuleCloudZone___retryFetchWithFetchInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activity];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__HMDNetworkRouterFirewallRuleCloudZone___retryFetchWithFetchInfo___block_invoke_2;
  v3[3] = &unk_27972F5B0;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  v6 = *(a1 + 48);
  [v2 performBlock:v3];

  objc_destroyWeak(&v5);
}

void __67__HMDNetworkRouterFirewallRuleCloudZone___retryFetchWithFetchInfo___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) activity];
    if (*(a1 + 48))
    {
      v4 = "Retrying";
    }

    else
    {
      v4 = "Fetching the next batch of records";
    }

    v5 = [*(a1 + 32) changeToken];
    v6 = [v5 hmbDescription];
    [v3 markWithFormat:@"%s, token: %@", v4, v6];

    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      if (*(a1 + 48))
      {
        v11 = "Retrying";
      }

      else
      {
        v11 = "Fetching the next batch of records";
      }

      v12 = [*(a1 + 32) changeToken];
      v13 = [v12 hmbDescription];
      *buf = 138543874;
      v16 = v10;
      v17 = 2080;
      v18 = v11;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@%s, token: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [v8 __fetchZoneChangesWithFetchInfo:*(a1 + 32)];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [*(a1 + 32) finishWithError:v14];
  }
}

- (BOOL)__canRecoverFromError:(id)error fetchInfo:(id)info
{
  v37 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  infoCopy = info;
  if ([errorCopy hmbIsCKPartialFailureError])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v34 = __Block_byref_object_copy__142630;
    v35 = __Block_byref_object_dispose__142631;
    v36 = 0;
    userInfo = [errorCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___canRecoverFromError_fetchInfo___block_invoke;
    v32[3] = &unk_27972E440;
    v32[4] = self;
    v32[5] = buf;
    [v9 enumerateKeysAndObjectsUsingBlock:v32];

    v10 = *(*&buf[8] + 40);
    if (v10)
    {
      v11 = v10;

      errorCopy = v11;
    }

    _Block_object_dispose(buf, 8);

    if (!v10)
    {
      goto LABEL_7;
    }
  }

  if (![errorCopy hmd_isCKError] || (objc_msgSend(errorCopy, "hmd_isNonRecoverableCKError") & 1) != 0)
  {
    goto LABEL_7;
  }

  code = [errorCopy code];
  switch(code)
  {
    case 21:
      activity = [infoCopy activity];
      [activity markWithFormat:@"Change token has expired: %@", errorCopy];

      v26 = objc_autoreleasePoolPush();
      selfCopy = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = errorCopy;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Change token has expired: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      [infoCopy setChangeToken:0];
      [infoCopy setShouldRetry:1];
      goto LABEL_25;
    case 28:
      activity2 = [infoCopy activity];
      [activity2 markWithFormat:@"Zone was deleted: %@", errorCopy];

      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = errorCopy;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Zone was deleted: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      [(HMBCloudZone *)selfCopy2 handleDeletion];
      goto LABEL_25;
    case 26:
      activity3 = [infoCopy activity];
      [activity3 markWithFormat:@"Zone does not exist: %@", errorCopy];

      v16 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = errorCopy;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Zone does not exist: %@", buf, 0x16u);
      }

LABEL_24:

      objc_autoreleasePoolPop(v16);
LABEL_25:
      v12 = 1;
      goto LABEL_8;
  }

  [errorCopy hmbCloudKitRetryDelay];
  [infoCopy setRetryIntervalSeconds:?];
  if ([infoCopy shouldRetry])
  {
    activity4 = [infoCopy activity];
    [activity4 markWithFormat:@"Ignoring non-fatal error: %@", errorCopy];

    v16 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v31;
      *&buf[12] = 2112;
      *&buf[14] = errorCopy;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Ignoring non-fatal error: %@", buf, 0x16u);
    }

    goto LABEL_24;
  }

LABEL_7:
  v12 = 0;
LABEL_8:

  return v12;
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___canRecoverFromError_fetchInfo___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v19;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || ([*(a1 + 32) cloudZoneID], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "zoneID"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v9, "isEqual:", v15), v15, v14, (v16 & 1) == 0))
  {
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;

    *a4 = 1;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v11);
  }
}

- (BOOL)__commitLocalChanges:(id)changes error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  activity = [changesCopy activity];
  [activity markWithFormat:@"Committing local changes"];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v59 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Committing local changes", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  mirrorInput = [changesCopy mirrorInput];
  options = [changesCopy options];
  v14 = [mirrorInput frmSyncCommitWithOptions:options error:error];

  activity2 = [changesCopy activity];
  v16 = activity2;
  if ((v14 & 1) == 0)
  {
    [activity2 markWithFormat:@"Failed to commit: %@", *error];

    v37 = objc_autoreleasePoolPush();
    v38 = selfCopy;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      v41 = *error;
      *buf = 138543618;
      v59 = v40;
      v60 = 2112;
      v61 = v41;
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to commit: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    LOBYTE(v42) = 0;
    goto LABEL_21;
  }

  [activity2 markWithFormat:@"Committed successfully"];

  v17 = objc_autoreleasePoolPush();
  v18 = selfCopy;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543362;
    v59 = v20;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Committed successfully", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  originalChangeToken = [changesCopy originalChangeToken];
  changeToken = [changesCopy changeToken];
  v23 = HMFEqualObjects();

  activity3 = [changesCopy activity];
  changeToken2 = [changesCopy changeToken];
  hmbDescription = [changeToken2 hmbDescription];
  v27 = hmbDescription;
  if (!v23)
  {
    [activity3 markWithFormat:@"Updating change token: %@", hmbDescription];

    v43 = objc_autoreleasePoolPush();
    v44 = v18;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = HMFGetLogIdentifier();
      changeToken3 = [changesCopy changeToken];
      hmbDescription2 = [changeToken3 hmbDescription];
      *buf = 138543618;
      v59 = v46;
      v60 = 2112;
      v61 = hmbDescription2;
      _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@Updating change token: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    cloudDatabase = [(HMBCloudZone *)v44 cloudDatabase];
    changeToken4 = [changesCopy changeToken];
    cloudZoneID = [(HMBCloudZone *)v44 cloudZoneID];
    [cloudDatabase updateServerChangeToken:changeToken4 forZoneWithID:cloudZoneID];

    activity4 = [changesCopy activity];
    changeToken5 = [changesCopy changeToken];
    hmbDescription3 = [changeToken5 hmbDescription];
    [activity4 markWithFormat:@"Updated change token successfully: %@", hmbDescription3];

    v28 = objc_autoreleasePoolPush();
    v55 = v44;
    v30 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    v31 = HMFGetLogIdentifier();
    changeToken6 = [changesCopy changeToken];
    hmbDescription4 = [changeToken6 hmbDescription];
    *buf = 138543618;
    v59 = v31;
    v60 = 2112;
    v61 = hmbDescription4;
    v34 = "%{public}@Updated change token successfully: %@";
    v35 = v30;
    v36 = OS_LOG_TYPE_INFO;
    goto LABEL_16;
  }

  [activity3 markWithFormat:@"Change token does not need to be updated: %@", hmbDescription];

  v28 = objc_autoreleasePoolPush();
  v29 = v18;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = HMFGetLogIdentifier();
    changeToken6 = [changesCopy changeToken];
    hmbDescription4 = [changeToken6 hmbDescription];
    *buf = 138543618;
    v59 = v31;
    v60 = 2112;
    v61 = hmbDescription4;
    v34 = "%{public}@Change token does not need to be updated: %@";
    v35 = v30;
    v36 = OS_LOG_TYPE_DEFAULT;
LABEL_16:
    _os_log_impl(&dword_2531F8000, v35, v36, v34, buf, 0x16u);
  }

LABEL_17:

  objc_autoreleasePoolPop(v28);
  if (![changesCopy shouldRetry])
  {
LABEL_20:
    LOBYTE(v42) = 1;
    goto LABEL_21;
  }

  localZone = [(HMBCloudZone *)v18 localZone];
  v42 = [localZone createMirrorInputWithError:error];

  if (v42)
  {
    [changesCopy setMirrorInput:v42];

    goto LABEL_20;
  }

LABEL_21:

  return v42;
}

- (void)__zoneChangesCompleted:(id)completed fetchInfo:(id)info
{
  v28 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  infoCopy = info;
  activity = [infoCopy activity];
  v9 = activity;
  if (completedCopy)
  {
    [activity markWithFormat:@"Zone change operation completed unsuccessfully: %@", completedCopy];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v13;
      v26 = 2112;
      v27 = completedCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Zone change operation completed unsuccessfully: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = completedCopy;
    [(HMDNetworkRouterFirewallRuleCloudZone *)selfCopy __finalizeUpdatedRecordIDs];
  }

  else
  {
    [activity markWithFormat:@"Zone change operation completed successfully"];

    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Zone change operation completed successfully", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v23 = 0;
    v19 = [(HMDNetworkRouterFirewallRuleCloudZone *)selfCopy2 __commitLocalChanges:infoCopy error:&v23];
    v20 = v23;
    v21 = v20;
    v14 = 0;
    if (!v19)
    {
      v14 = v20;
    }

    [(HMDNetworkRouterFirewallRuleCloudZone *)selfCopy2 __finalizeUpdatedRecordIDs];
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  if (![(HMDNetworkRouterFirewallRuleCloudZone *)self __canRecoverFromError:v14 fetchInfo:infoCopy])
  {
    [infoCopy finishWithError:v14];
    goto LABEL_15;
  }

LABEL_11:
  if ([infoCopy shouldRetry])
  {
    [(HMDNetworkRouterFirewallRuleCloudZone *)self __retryFetchWithFetchInfo:infoCopy];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [infoCopy finishWithResult:null];
  }

LABEL_15:
}

- (void)__zoneFetchCompletedWithChangeToken:(id)token error:(id)error moreComing:(BOOL)coming fetchInfo:(id)info
{
  comingCopy = coming;
  v37 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  errorCopy = error;
  infoCopy = info;
  activity = [infoCopy activity];
  hmbDescription = [tokenCopy hmbDescription];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:comingCopy];
  v16 = v15;
  if (!errorCopy)
  {
    [activity markWithFormat:@"Zone fetch completed successfully, token: %@, moreComing: %@", hmbDescription, v15];

    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier();
      hmbDescription2 = [tokenCopy hmbDescription];
      v28 = [MEMORY[0x277CCABB0] numberWithBool:comingCopy];
      *buf = 138543874;
      v30 = v26;
      v31 = 2112;
      v32 = hmbDescription2;
      v33 = 2112;
      v34 = v28;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Zone fetch completed successfully, token: %@, moreComing: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
LABEL_11:
    [infoCopy setChangeToken:tokenCopy];
    if (!comingCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [activity markWithFormat:@"Zone fetch completed unsuccessfully, token: %@, error: %@, moreComing: %@", hmbDescription, errorCopy, v15];

  v17 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    hmbDescription3 = [tokenCopy hmbDescription];
    v22 = [MEMORY[0x277CCABB0] numberWithBool:comingCopy];
    *buf = 138544130;
    v30 = v20;
    v31 = 2112;
    v32 = hmbDescription3;
    v33 = 2112;
    v34 = errorCopy;
    v35 = 2112;
    v36 = v22;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Zone fetch completed unsuccessfully, token: %@, error: %@, moreComing: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  if (tokenCopy)
  {
    goto LABEL_11;
  }

  if (comingCopy)
  {
LABEL_6:
    [infoCopy setShouldRetry:1];
  }

LABEL_7:
}

- (void)__zoneChangeTokensUpdated:(id)updated fetchInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  infoCopy = info;
  activity = [infoCopy activity];
  changeToken = [infoCopy changeToken];
  hmbDescription = [changeToken hmbDescription];
  [activity markWithFormat:@"Change token updated: %@", hmbDescription];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    changeToken2 = [infoCopy changeToken];
    hmbDescription2 = [changeToken2 hmbDescription];
    *buf = 138543618;
    v18 = v14;
    v19 = 2112;
    v20 = hmbDescription2;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Change token updated: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  [infoCopy setChangeToken:updatedCopy];
}

- (void)__recordDeleted:(id)deleted recordType:(id)type fetchInfo:(id)info
{
  v41 = *MEMORY[0x277D85DE8];
  deletedCopy = deleted;
  typeCopy = type;
  infoCopy = info;
  activity = [infoCopy activity];
  hmbDescription = [deletedCopy hmbDescription];
  [activity markWithFormat:@"Fetched deleted recordID: %@ (%@)", hmbDescription, typeCopy];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HMFGetLogIdentifier();
    hmbDescription2 = [deletedCopy hmbDescription];
    *buf = 138543874;
    v36 = v16;
    v37 = 2112;
    v38 = hmbDescription2;
    v39 = 2112;
    v40 = typeCopy;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Fetched deleted recordID: %@ (%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v34 = 0;
  v18 = [deletedCopy externalID:&v34];
  v19 = v34;
  if (v18)
  {
    mirrorInput = [infoCopy mirrorInput];
    v33 = v19;
    v21 = [mirrorInput stageRemovalForModelWithExternalID:v18 error:&v33];
    v22 = v33;

    if (v21)
    {
      [(HMDNetworkRouterFirewallRuleCloudZone *)selfCopy __noteUpdatedRecordID:deletedCopy];
    }

    else
    {
      activity2 = [infoCopy activity];
      [activity2 markWithFormat:@"Failed to remove model: %@", v22];

      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v32;
        v37 = 2112;
        v38 = v22;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove model: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
    }

    v19 = v22;
  }

  else
  {
    activity3 = [infoCopy activity];
    [activity3 markWithFormat:@"Failed to determine externalID: %@", v19];

    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v27;
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine externalID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
  }
}

- (void)__recordChanged:(id)changed fetchInfo:(id)info
{
  v62 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  infoCopy = info;
  recordID = [changedCopy recordID];
  activity = [infoCopy activity];
  hmbDescription = [recordID hmbDescription];
  recordType = [changedCopy recordType];
  [activity markWithFormat:@"Fetched changed record %@ (%@)", hmbDescription, recordType];

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    hmbDescription2 = [recordID hmbDescription];
    recordType2 = [changedCopy recordType];
    *buf = 138543874;
    v57 = v15;
    v58 = 2112;
    v59 = hmbDescription2;
    v60 = 2112;
    v61 = recordType2;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Fetched changed record %@ (%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v55 = 0;
  v18 = [(HMDNetworkRouterFirewallRuleCloudZone *)selfCopy decodeModelFrom:changedCopy recordSource:4 error:&v55];
  v19 = v55;
  v20 = v19;
  if (v18)
  {
    v54 = v19;
    v21 = [changedCopy externalID:&v54];
    v22 = v54;

    if (v21)
    {
      v53 = v22;
      v23 = [changedCopy externalData:&v53];
      v24 = v53;

      if (v23)
      {
        mirrorInput = [infoCopy mirrorInput];
        v52 = v24;
        v26 = [mirrorInput stageAdditionForModel:v18 externalID:v21 externalData:v23 error:&v52];
        v50 = v52;

        if (v26)
        {
          [(HMDNetworkRouterFirewallRuleCloudZone *)selfCopy __noteUpdatedRecordID:recordID];
        }

        else
        {
          activity2 = [infoCopy activity];
          hmbDescription3 = [recordID hmbDescription];
          [activity2 markWithFormat:@"Failed to update model for %@: %@", hmbDescription3, v50];

          v44 = objc_autoreleasePoolPush();
          v45 = selfCopy;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = HMFGetLogIdentifier();
            [recordID hmbDescription];
            v48 = v49 = v44;
            *buf = 138543874;
            v57 = v47;
            v58 = 2112;
            v59 = v48;
            v60 = 2112;
            v61 = v50;
            _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to update model for %@: %@", buf, 0x20u);

            v44 = v49;
          }

          objc_autoreleasePoolPop(v44);
        }

        v24 = v50;
      }

      else
      {
        activity3 = [infoCopy activity];
        [activity3 markWithFormat:@"Failed to determine externalData: %@", v24];

        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v41 = v51 = v38;
          *buf = 138543618;
          v57 = v41;
          v58 = 2112;
          v59 = v24;
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine externalData: %@", buf, 0x16u);

          v38 = v51;
        }

        objc_autoreleasePoolPop(v38);
      }

      v22 = v24;
    }

    else
    {
      activity4 = [infoCopy activity];
      [activity4 markWithFormat:@"Failed to determine externalID: %@", v22];

      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v57 = v36;
        v58 = 2112;
        v59 = v22;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine externalID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
    }

    v20 = v22;
  }

  else
  {
    activity5 = [infoCopy activity];
    [activity5 markWithFormat:@"Failed to decode model: %@", v20];

    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v31;
      v58 = 2112;
      v59 = v20;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
  }
}

- (void)__finalizeUpdatedRecordIDs
{
  v3 = *MEMORY[0x277D17140];
  os_unfair_lock_lock_with_options();
  if (self->_modifiedRecordIDsFromLastPull)
  {
    uncommittedModifiedRecordIDsFromLastPull = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];

    if (uncommittedModifiedRecordIDsFromLastPull)
    {
      uncommittedModifiedRecordIDsFromLastPull2 = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];
      [uncommittedModifiedRecordIDsFromLastPull2 unionSet:self->_modifiedRecordIDsFromLastPull];
    }
  }

  uncommittedModifiedRecordIDsFromLastPull3 = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];
  v7 = objc_msgSend_copy(uncommittedModifiedRecordIDsFromLastPull3);
  [(HMDNetworkRouterFirewallRuleCloudZone *)self setModifiedRecordIDsFromLastPull:v7];

  [(HMDNetworkRouterFirewallRuleCloudZone *)self setUncommittedModifiedRecordIDsFromLastPull:0];

  os_unfair_lock_unlock((self + v3));
}

- (void)__noteUpdatedRecordID:(id)d
{
  dCopy = d;
  v4 = *MEMORY[0x277D17140];
  os_unfair_lock_lock_with_options();
  uncommittedModifiedRecordIDsFromLastPull = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];

  if (uncommittedModifiedRecordIDsFromLastPull)
  {
    uncommittedModifiedRecordIDsFromLastPull2 = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];
    [uncommittedModifiedRecordIDsFromLastPull2 addObject:dCopy];
  }

  else
  {
    uncommittedModifiedRecordIDsFromLastPull2 = [MEMORY[0x277CBEB58] setWithObject:dCopy];
    [(HMDNetworkRouterFirewallRuleCloudZone *)self setUncommittedModifiedRecordIDsFromLastPull:uncommittedModifiedRecordIDsFromLastPull2];
  }

  os_unfair_lock_unlock((self + v4));
}

- (void)__fetchZoneChangesWithFetchInfo:(id)info
{
  v42[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = objc_alloc_init(MEMORY[0x277CBC3A0]);
  changeToken = [infoCopy changeToken];
  [v5 setPreviousServerChangeToken:changeToken];

  cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
  zoneID = [cloudZoneID zoneID];
  v41 = zoneID;
  v42[0] = v5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];

  v10 = objc_alloc(MEMORY[0x277CBC3B8]);
  cloudZoneID2 = [(HMBCloudZone *)self cloudZoneID];
  zoneID2 = [cloudZoneID2 zoneID];
  v40 = zoneID2;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v14 = [v10 initWithRecordZoneIDs:v13 configurationsByRecordZoneID:v9];

  [v14 setFetchAllChanges:1];
  objc_initWeak(&location, self);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke;
  v36[3] = &unk_27972E378;
  v15 = infoCopy;
  v37 = v15;
  objc_copyWeak(&v38, &location);
  [v14 setRecordChangedBlock:v36];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_3;
  v33[3] = &unk_27972E3A0;
  v16 = v15;
  v34 = v16;
  objc_copyWeak(&v35, &location);
  [v14 setRecordWithIDWasDeletedBlock:v33];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_5;
  v30[3] = &unk_27972E3C8;
  v17 = v16;
  v31 = v17;
  objc_copyWeak(&v32, &location);
  [v14 setRecordZoneChangeTokensUpdatedBlock:v30];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_161;
  v27[3] = &unk_27972E418;
  v18 = v17;
  v28 = v18;
  objc_copyWeak(&v29, &location);
  [v14 setRecordZoneFetchCompletionBlock:v27];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_167;
  v23[3] = &unk_279731988;
  v19 = v18;
  v24 = v19;
  selfCopy = self;
  objc_copyWeak(&v26, &location);
  [v14 setFetchRecordZoneChangesCompletionBlock:v23];
  database = [(HMBCloudZone *)self database];
  [database addOperation:v14];

  operationStartTime = [v19 operationStartTime];
  LODWORD(database) = operationStartTime == 0;

  if (database)
  {
    v22 = [MEMORY[0x277CBEAA8] now];
    [v19 setOperationStartTime:v22];
  }

  objc_destroyWeak(&v26);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v32);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v38);

  objc_destroyWeak(&location);
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_2;
  v6[3] = &unk_279732670;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = *(a1 + 32);
  v5 = v3;
  v8 = v5;
  [v4 performBlock:v6];

  objc_destroyWeak(&v9);
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_4;
  v10[3] = &unk_279733910;
  objc_copyWeak(&v14, (a1 + 40));
  v11 = *(a1 + 32);
  v8 = v5;
  v12 = v8;
  v9 = v6;
  v13 = v9;
  [v7 performBlock:v10];

  objc_destroyWeak(&v14);
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) activity];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_6;
  v13[3] = &unk_279733910;
  objc_copyWeak(&v17, (a1 + 40));
  v11 = v7;
  v14 = v11;
  v12 = v8;
  v15 = v12;
  v16 = *(a1 + 32);
  [v10 performBlock:v13];

  objc_destroyWeak(&v17);
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_161(uint64_t a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [*(a1 + 32) activity];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_2_162;
  v19[3] = &unk_27972E3F0;
  objc_copyWeak(&v24, (a1 + 40));
  v16 = v11;
  v20 = v16;
  v17 = v12;
  v21 = v17;
  v18 = v14;
  v22 = v18;
  v25 = a5;
  v23 = *(a1 + 32);
  [v15 performBlock:v19];

  objc_destroyWeak(&v24);
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_167(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_2_168;
  v8[3] = &unk_279733910;
  v5 = v3;
  v9 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  objc_copyWeak(&v12, (a1 + 48));
  [v4 performBlock:v8];

  objc_destroyWeak(&v12);
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_2_168(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) activity];
  v4 = v3;
  if (v2)
  {
    [v3 markWithFormat:@"Fetch zone changes operation completed with error: %@", *(a1 + 32)];

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 48);
    v7 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    *buf = 138543618;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v10 = "%{public}@Fetch zone changes operation completed with error: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 22;
  }

  else
  {
    [v3 markWithFormat:@"Fetch zone changes operation completed successfully"];

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 48);
    v7 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v8;
    v10 = "%{public}@Fetch zone changes operation completed successfully";
    v11 = v7;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 12;
  }

  _os_log_impl(&dword_2531F8000, v11, v12, v10, buf, v13);

LABEL_7:
  objc_autoreleasePoolPop(v5);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v15 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained __zoneChangesCompleted:*(a1 + 32) fetchInfo:*(a1 + 40)];
  }

  else
  {
    v16 = [*(a1 + 40) activity];
    [v16 markWithFormat:@"CloudZone has been deallocated"];

    v17 = objc_autoreleasePoolPush();
    v18 = objc_opt_class();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@CloudZone has been deallocated", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    }

    v23 = v22;
    [*(a1 + 40) finishWithError:v22];
  }
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_2_162(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained cloudZoneID];
    v5 = [v4 zoneID];
    v6 = HMFEqualObjects();

    if ((v6 & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = v3;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [*(a1 + 32) hmbDescription];
        *buf = 138543618;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: recordZoneFetchCompletionBlock called with unknown zone: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [HMDAssertionLogEvent alloc];
      v13 = [*(a1 + 32) hmbDescription];
      v14 = [(HMDAssertionLogEvent *)v12 initWithReason:@"recordZoneFetchCompletionBlock called with unknown zone: %@", v13];

      v15 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v15 submitLogEvent:v14];
    }

    [v3 __zoneFetchCompletedWithChangeToken:*(a1 + 40) error:*(a1 + 48) moreComing:*(a1 + 72) fetchInfo:*(a1 + 56)];
  }
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_6(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained cloudZoneID];
    v5 = [v4 zoneID];
    v6 = HMFEqualObjects();

    if ((v6 & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = v3;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [*(a1 + 32) hmbDescription];
        *buf = 138543618;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: recordZoneChangeTokensUpdatedBlock called with unknown zone: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [HMDAssertionLogEvent alloc];
      v13 = [*(a1 + 32) hmbDescription];
      v14 = [(HMDAssertionLogEvent *)v12 initWithReason:@"recordZoneChangeTokensUpdatedBlock called with unknown zone: %@", v13];

      v15 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v15 submitLogEvent:v14];
    }

    [v3 __zoneChangeTokensUpdated:*(a1 + 40) fetchInfo:*(a1 + 48)];
  }
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) interestedRecordIDs];
    v4 = [v3 containsObject:*(a1 + 40)];

    WeakRetained = v5;
    if (v4)
    {
      [v5 __recordDeleted:*(a1 + 40) recordType:*(a1 + 48) fetchInfo:*(a1 + 32)];
      WeakRetained = v5;
    }
  }
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [a1[4] interestedRecordIDs];
    v4 = [a1[5] recordID];
    v5 = [v3 containsObject:v4];

    WeakRetained = v6;
    if (v5)
    {
      [v6 __recordChanged:a1[5] fetchInfo:a1[4]];
      WeakRetained = v6;
    }
  }
}

- (id)fetchChangesWithToken:(id)token options:(id)options
{
  tokenCopy = token;
  optionsCopy = options;
  objc_initWeak(&location, self);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __71__HMDNetworkRouterFirewallRuleCloudZone_fetchChangesWithToken_options___block_invoke;
  v18 = &unk_27972E350;
  objc_copyWeak(&v21, &location);
  v8 = optionsCopy;
  v19 = v8;
  v9 = tokenCopy;
  v20 = v9;
  v10 = _Block_copy(&v15);
  v11 = MEMORY[0x277D2C900];
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v13 = [v11 lazyFutureWithBlock:v10 scheduler:globalAsyncScheduler];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v13;
}

void __71__HMDNetworkRouterFirewallRuleCloudZone_fetchChangesWithToken_options___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *MEMORY[0x277D17140];
    os_unfair_lock_lock_with_options();
    [WeakRetained setModifiedRecordIDsFromLastPull:0];
    [WeakRetained setUncommittedModifiedRecordIDsFromLastPull:0];
    os_unfair_lock_unlock(&WeakRetained[v5]);
    v6 = [WeakRetained watchedRecordIDs];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [WeakRetained localZone];
      v40 = 0;
      v39 = [v8 createMirrorInputWithError:&v40];
      v38 = v40;

      if (v39)
      {
        v9 = [HMDNetworkRouterFirewallRuleCloudZoneFetchInfo alloc];
        v11 = *(a1 + 32);
        v10 = *(a1 + 40);
        v12 = [WeakRetained database];
        v13 = [WeakRetained useAnonymousRequests];
        v14 = [WeakRetained watchedRecordIDs];
        v15 = [(HMDNetworkRouterFirewallRuleCloudZoneFetchInfo *)v9 initWithOptions:v11 changeToken:v10 promise:v3 database:v12 useAnonymousRequests:v13 interestedRecordIDs:v14 mirrorInput:v39];

        v16 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)v15 activity];
        v17 = [WeakRetained zoneID];
        v18 = [v17 name];
        v19 = [(HMDNetworkRouterFirewallRuleCloudZoneFetchInfo *)v15 changeToken];
        v20 = [v19 hmbDescription];
        [v16 markWithFormat:@"Fetching all changes for zone: %@, token: %@", v18, v20];

        context = objc_autoreleasePoolPush();
        v21 = WeakRetained;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = HMFGetLogIdentifier();
          v24 = [v21 zoneID];
          v25 = [v24 name];
          v26 = [(HMDNetworkRouterFirewallRuleCloudZoneFetchInfo *)v15 changeToken];
          v27 = [v26 hmbDescription];
          *buf = 138543874;
          v42 = v23;
          v43 = 2112;
          v44 = v25;
          v45 = 2112;
          v46 = v27;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching all changes for zone: %@, token: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        [v21 __fetchZoneChangesWithFetchInfo:v15];
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v34 = WeakRetained;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v36;
          v43 = 2112;
          v44 = v38;
          _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to create mirror input: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        [v3 finishWithError:v38];
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = WeakRetained;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v32;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Not watching any records", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      [v3 finishWithNoResult];
    }
  }

  else
  {
    v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [v3 finishWithError:v28];
  }
}

- (void)startUpWithLocalZone:(id)zone
{
  [(HMBCloudZone *)self setLocalZone:zone];
  startUp = [(HMBCloudZone *)self startUp];
  [startUp finishWithNoResult];
}

- (void)setUncommittedModifiedRecordIDsFromLastPull:(id)pull
{
  pullCopy = pull;
  os_unfair_lock_assert_owner((self + *MEMORY[0x277D17140]));
  uncommittedModifiedRecordIDsFromLastPull = self->_uncommittedModifiedRecordIDsFromLastPull;
  self->_uncommittedModifiedRecordIDsFromLastPull = pullCopy;
}

- (NSMutableSet)uncommittedModifiedRecordIDsFromLastPull
{
  os_unfair_lock_assert_owner((self + *MEMORY[0x277D17140]));
  uncommittedModifiedRecordIDsFromLastPull = self->_uncommittedModifiedRecordIDsFromLastPull;

  return uncommittedModifiedRecordIDsFromLastPull;
}

- (void)setModifiedRecordIDsFromLastPull:(id)pull
{
  pullCopy = pull;
  os_unfair_lock_assert_owner((self + *MEMORY[0x277D17140]));
  modifiedRecordIDsFromLastPull = self->_modifiedRecordIDsFromLastPull;
  self->_modifiedRecordIDsFromLastPull = pullCopy;
}

- (NSSet)modifiedRecordIDsFromLastPull
{
  v3 = *MEMORY[0x277D17140];
  os_unfair_lock_lock_with_options();
  v4 = self->_modifiedRecordIDsFromLastPull;
  os_unfair_lock_unlock((self + v3));

  return v4;
}

- (id)attributeDescriptions
{
  v24[5] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D17140];
  os_unfair_lock_lock_with_options();
  uncommittedModifiedRecordIDsFromLastPull = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];
  v21 = objc_msgSend_copy(uncommittedModifiedRecordIDsFromLastPull);

  os_unfair_lock_unlock((self + v3));
  v23.receiver = self;
  v23.super_class = HMDNetworkRouterFirewallRuleCloudZone;
  attributeDescriptions = [(HMBCloudZone *)&v23 attributeDescriptions];
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleCloudZone useAnonymousRequests](self, "useAnonymousRequests")}];
  v6 = [v5 initWithName:@"UseAnonymousRequests" value:v22];
  v24[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  watchedRecordIDs = [(HMDNetworkRouterFirewallRuleCloudZone *)self watchedRecordIDs];
  v9 = [v7 initWithName:@"WatchedRecordIDs" value:watchedRecordIDs];
  v24[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  signatureVerificationPublicKeys = [(HMDNetworkRouterFirewallRuleCloudZone *)self signatureVerificationPublicKeys];
  v12 = [v10 initWithName:@"SignatureVerificationPublicKeys" value:signatureVerificationPublicKeys];
  v24[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  modifiedRecordIDsFromLastPull = [(HMDNetworkRouterFirewallRuleCloudZone *)self modifiedRecordIDsFromLastPull];
  v15 = [v13 initWithName:@"ModifiedRecordIDsFromLastPull" value:modifiedRecordIDsFromLastPull];
  v24[3] = v15;
  v16 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"UncommittedModifiedRecordIDsFromLastPull" value:v21];
  v24[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];
  v18 = [attributeDescriptions arrayByAddingObjectsFromArray:v17];

  return v18;
}

- (HMDNetworkRouterFirewallRuleCloudZone)initWithCloudDatabase:(id)database state:(id)state useAnonymousRequests:(BOOL)requests watchedRecordIDs:(id)ds signatureVerificationPublicKeys:(id)keys
{
  v29 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  stateCopy = state;
  dsCopy = ds;
  keysCopy = keys;
  if (![keysCopy count])
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v24;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Must have verification keys", buf, 0xCu);
    }

    objc_autoreleasePoolPop(context);
    v22 = [[HMDAssertionLogEvent alloc] initWithReason:@"Must have verification keys"];
    v23 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v23 submitLogEvent:v22];
  }

  v16 = objc_alloc_init(MEMORY[0x277D17068]);
  v26.receiver = self;
  v26.super_class = HMDNetworkRouterFirewallRuleCloudZone;
  v17 = [(HMBCloudZone *)&v26 initWithCloudDatabase:databaseCopy configuration:v16 state:stateCopy];

  if (v17)
  {
    *(&v17->_useAnonymousRequests + 4) = requests;
    objc_storeStrong(&v17->_watchedRecordIDs, ds);
    objc_storeStrong(&v17->_signatureVerificationPublicKeys, keys);
    v18 = v17;
  }

  return v17;
}

@end