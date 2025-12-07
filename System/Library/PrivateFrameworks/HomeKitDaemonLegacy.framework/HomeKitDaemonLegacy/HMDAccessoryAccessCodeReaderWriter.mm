@interface HMDAccessoryAccessCodeReaderWriter
+ (id)_accessCodeControlFromWriteResponses:(id)responses forWriteRequest:(id)request flow:(id)flow;
+ (id)_createListWriteRequestsForCharacteristics:(id)characteristics flow:(id)flow;
+ (id)_createReadWriteRequestsForAccessCodeIdentifiersByCharacteristic:(id)characteristic flow:(id)flow;
+ (id)accessCodeFetchResponsesForReadWriteResponses:(id)responses ofWriteRequests:(id)requests flow:(id)flow;
+ (id)createConstraintsFromReadResponses:(id)responses readRequests:(id)requests flow:(id)flow;
+ (id)createModificationResponsesForWriteResponses:(id)responses ofRequestPairs:(id)pairs flow:(id)flow;
+ (id)createWriteRequestForAddRequests:(id)requests characteristic:(id)characteristic flow:(id)flow;
+ (id)createWriteRequestForRemoveRequests:(id)requests characteristic:(id)characteristic flow:(id)flow;
+ (id)createWriteRequestForUpdateRequests:(id)requests characteristic:(id)characteristic flow:(id)flow;
+ (id)createWriteRequestsForModificationRequests:(id)requests hapAccessories:(id)accessories flow:(id)flow;
+ (id)genericModificationResponseForFailedRequest:(id)request;
+ (id)identifiersFromListWriteResponses:(id)responses ofWriteRequests:(id)requests flow:(id)flow;
+ (id)logCategory;
+ (id)modificationResponseForControlResponse:(id)response operationType:(int64_t)type accessoryUUID:(id)d;
+ (id)modificationResponseForFailedMatterRequest:(id)request error:(id)error;
+ (int64_t)hmPrivateErrorCodeForHAPAccessCodeError:(int64_t)error;
- (HMDAccessoryAccessCodeReaderWriter)initWithContext:(id)context;
- (id)_characteristicsOfType:(id)type fromAccessoriesWithUUIDs:(id)ds flow:(id)flow;
- (id)_createConstraintsReadRequestsForAccessoriesWithUUIDs:(id)ds flow:(id)flow;
- (id)_createListWriteRequestsForAccessoriesWithUUIDS:(id)s flow:(id)flow;
- (id)_createReadWriteRequestsForAccessCodeIdentifiers:(id)identifiers flow:(id)flow;
- (id)_createWriteRequestsForModificationRequests:(id)requests flow:(id)flow;
- (id)_fetchResponseFromCredentialUserTuples:(id)tuples accessory:(id)accessory doorLock:(id)lock flow:(id)flow;
- (id)_performReadRequests:(id)requests withRetries:(BOOL)retries flow:(id)flow;
- (id)_performWriteRequests:(id)requests withRetries:(BOOL)retries flow:(id)flow;
- (id)_readAccessCodeWithIdentifier:(id)identifier accessoryUUID:(id)d flow:(id)flow;
- (id)_readAccessCodesFromAccessoriesWithUUIDs:(id)ds withRetries:(BOOL)retries flow:(id)flow;
- (id)_readAccessCodesFromAccessoriesWithUUIDs_HAP:(id)p withRetries:(BOOL)retries flow:(id)flow;
- (id)_readAccessCodesFromAccessory_Matter:(id)matter withRetries:(BOOL)retries flow:(id)flow;
- (id)_readConstraintsFromAccessoriesWithUUIDs:(id)ds withRetries:(BOOL)retries flow:(id)flow;
- (id)_readConstraintsFromAccessoriesWithUUIDs_HAP:(id)p withRetries:(BOOL)retries flow:(id)flow;
- (id)_readConstraintsFromAccessory_Matter:(id)matter withRetries:(BOOL)retries flow:(id)flow;
- (id)logIdentifier;
- (id)performAccessCodeModificationRequests:(id)requests withRetries:(BOOL)retries flow:(id)flow;
- (id)performAccessCodeModificationRequests_HAP:(id)p withRetries:(BOOL)retries flow:(id)flow;
- (id)performModificationRequest_Matter:(id)matter flow:(id)flow;
- (id)readAccessCodesFromAccessoriesWithUUIDs:(id)ds flow:(id)flow;
- (id)removeAccessCodeWithValue_Matter:(id)matter fromAccessory:(id)accessory withUserUUID:(id)d guestName:(id)name flow:(id)flow;
- (id)removeAllAccessCodesWithValue:(id)value withUserUUID:(id)d guestName:(id)name flow:(id)flow;
- (id)removeAllHAPAccessCodesWithValue:(id)value forSpecificAccessory:(id)accessory flow:(id)flow;
- (void)_readConstraintsAndAccessCodesFromAccessoriesWithUUIDs:(id)ds flow:(id)flow completion:(id)completion;
@end

@implementation HMDAccessoryAccessCodeReaderWriter

- (id)logIdentifier
{
  context = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  uUID = [context UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (id)_createWriteRequestsForModificationRequests:(id)requests flow:(id)flow
{
  flowCopy = flow;
  requestsCopy = requests;
  context = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  accessoriesSupportingAccessCodes = [context accessoriesSupportingAccessCodes];
  v10 = [HMDAccessoryAccessCodeReaderWriter createWriteRequestsForModificationRequests:requestsCopy hapAccessories:accessoriesSupportingAccessCodes flow:flowCopy];

  return v10;
}

- (id)_createReadWriteRequestsForAccessCodeIdentifiers:(id)identifiers flow:(id)flow
{
  v51 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  flowCopy = flow;
  mapTableWithStrongToStrongObjects = [MEMORY[0x277CCAB00] mapTableWithStrongToStrongObjects];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  allKeys = [identifiersCopy allKeys];
  v37 = [allKeys countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v37)
  {
    v36 = *v41;
    *&v9 = 138543874;
    v33 = v9;
    v34 = allKeys;
    v35 = flowCopy;
    while (2)
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v41 != v36)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        context = [(HMDAccessoryAccessCodeReaderWriter *)self context];
        accessoriesSupportingAccessCodes = [context accessoriesSupportingAccessCodes];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __92__HMDAccessoryAccessCodeReaderWriter__createReadWriteRequestsForAccessCodeIdentifiers_flow___block_invoke;
        v39[3] = &unk_2797304D0;
        v39[4] = v11;
        v14 = [accessoriesSupportingAccessCodes na_firstObjectPassingTest:v39];

        if (!v14)
        {
          v25 = mapTableWithStrongToStrongObjects;
          v26 = objc_autoreleasePoolPush();
          selfCopy = self;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HMFGetLogIdentifier();
            [v35 UUID];
            v31 = v30 = identifiersCopy;
            *buf = v33;
            v45 = v29;
            v46 = 2112;
            v47 = v31;
            v48 = 2112;
            v49 = v11;
            _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not create read write requests because failed to find hap accessory with UUID: %@", buf, 0x20u);

            identifiersCopy = v30;
          }

          objc_autoreleasePoolPop(v26);
          mapTableWithStrongToStrongObjects = v25;
          allKeys = v34;
LABEL_19:

          v24 = 0;
          flowCopy = v35;
          goto LABEL_20;
        }

        v15 = [v14 findCharacteristicType:@"00000262-0000-1000-8000-0026BB765291" forServiceType:@"00000260-0000-1000-8000-0026BB765291"];
        if (v15)
        {
          v16 = [identifiersCopy objectForKeyedSubscript:v11];
          [mapTableWithStrongToStrongObjects setObject:v16 forKey:v15];
        }

        else
        {
          v17 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v20 = mapTableWithStrongToStrongObjects;
            v22 = v21 = identifiersCopy;
            uUID = [v35 UUID];
            *buf = v33;
            v45 = v22;
            v46 = 2112;
            v47 = uUID;
            v48 = 2112;
            v49 = v14;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not create read write requests because failed to find access code control point characteristic on accessory: %@", buf, 0x20u);

            identifiersCopy = v21;
            mapTableWithStrongToStrongObjects = v20;
            allKeys = v34;
          }

          objc_autoreleasePoolPop(v17);
        }

        if (!v15)
        {
          goto LABEL_19;
        }
      }

      flowCopy = v35;
      v37 = [allKeys countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }
  }

  v24 = [HMDAccessoryAccessCodeReaderWriter _createReadWriteRequestsForAccessCodeIdentifiersByCharacteristic:mapTableWithStrongToStrongObjects flow:flowCopy];
LABEL_20:

  return v24;
}

uint64_t __92__HMDAccessoryAccessCodeReaderWriter__createReadWriteRequestsForAccessCodeIdentifiers_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)_characteristicsOfType:(id)type fromAccessoriesWithUUIDs:(id)ds flow:(id)flow
{
  v46 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dsCopy = ds;
  flowCopy = flow;
  context = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  accessoriesSupportingAccessCodes = [context accessoriesSupportingAccessCodes];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __91__HMDAccessoryAccessCodeReaderWriter__characteristicsOfType_fromAccessoriesWithUUIDs_flow___block_invoke;
  v34[3] = &unk_2797304D0;
  v13 = dsCopy;
  v35 = v13;
  v14 = [accessoriesSupportingAccessCodes na_filter:v34];

  v15 = [v14 count];
  if (v15 == [v13 count])
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __91__HMDAccessoryAccessCodeReaderWriter__characteristicsOfType_fromAccessoriesWithUUIDs_flow___block_invoke_121;
    v32[3] = &unk_2797213B0;
    v16 = typeCopy;
    v33 = v16;
    v17 = [v14 na_map:v32];
    v18 = [v17 count];
    if (v18 == [v14 count])
    {
      v19 = v17;
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v29 = v31 = v25;
        *buf = 138544386;
        v37 = v28;
        v38 = 2112;
        v39 = v29;
        v40 = 2112;
        v41 = v16;
        v42 = 2112;
        v43 = v14;
        v44 = 2112;
        v45 = v17;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find access code control point characteristics of type: %@ for all accessories: %@. Found characteristics: %@", buf, 0x34u);

        v25 = v31;
      }

      objc_autoreleasePoolPop(v25);
      v19 = 0;
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
      uUID = [flowCopy UUID];
      *buf = 138544130;
      v37 = v23;
      v38 = 2112;
      v39 = uUID;
      v40 = 2112;
      v41 = v13;
      v42 = 2112;
      v43 = v14;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find all accessories with UUIDs: %@. Only found the subset of accessories: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  return v19;
}

uint64_t __91__HMDAccessoryAccessCodeReaderWriter__characteristicsOfType_fromAccessoriesWithUUIDs_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_createListWriteRequestsForAccessoriesWithUUIDS:(id)s flow:(id)flow
{
  flowCopy = flow;
  v7 = [(HMDAccessoryAccessCodeReaderWriter *)self _characteristicsOfType:@"00000262-0000-1000-8000-0026BB765291" fromAccessoriesWithUUIDs:s flow:flowCopy];
  if (v7)
  {
    v8 = [HMDAccessoryAccessCodeReaderWriter _createListWriteRequestsForCharacteristics:v7 flow:flowCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_createConstraintsReadRequestsForAccessoriesWithUUIDs:(id)ds flow:(id)flow
{
  v4 = [(HMDAccessoryAccessCodeReaderWriter *)self _characteristicsOfType:@"00000261-0000-1000-8000-0026BB765291" fromAccessoriesWithUUIDs:ds flow:flow];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 na_map:&__block_literal_global_118];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_fetchResponseFromCredentialUserTuples:(id)tuples accessory:(id)accessory doorLock:(id)lock flow:(id)flow
{
  accessoryCopy = accessory;
  flowCopy = flow;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__HMDAccessoryAccessCodeReaderWriter__fetchResponseFromCredentialUserTuples_accessory_doorLock_flow___block_invoke;
  v18[3] = &unk_279721360;
  v18[4] = self;
  v19 = flowCopy;
  v20 = accessoryCopy;
  v11 = accessoryCopy;
  v12 = flowCopy;
  v13 = [tuples na_map:v18];
  v14 = objc_alloc(MEMORY[0x277CD1660]);
  uuid = [v11 uuid];
  v16 = [v14 initWithAccessoryUUID:uuid accessoryAccessCodeValues:v13 error:0];

  return v16;
}

id __101__HMDAccessoryAccessCodeReaderWriter__fetchResponseFromCredentialUserTuples_accessory_doorLock_flow___block_invoke(id *a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    v9 = [v3 credential];
    v10 = [v3 user];
    *buf = 138544130;
    v52 = v7;
    v53 = 2112;
    v54 = v8;
    v55 = 2112;
    v56 = v9;
    v57 = 2112;
    v58 = v10;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating fetch response from credential: %@, user: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v11 = [v3 user];
  v12 = [v11 userUniqueId];

  v13 = [v3 user];
  v14 = [v13 creatorFabricIndex];
  v15 = [v3 currentFabricIndex];
  v16 = HMFEqualObjects();

  if ((v16 & 1) == 0)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = a1[4];
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      [a1[5] UUID];
      v32 = v49 = v12;
      v33 = [v3 credential];
      v48 = [v3 user];
      [v48 creatorFabricIndex];
      v34 = v50 = v28;
      v35 = [v3 currentFabricIndex];
      v36 = [a1[6] shortDescription];
      *buf = 138544642;
      v52 = v31;
      v53 = 2112;
      v54 = v32;
      v55 = 2112;
      v56 = v33;
      v57 = 2112;
      v58 = v34;
      v59 = 2112;
      v60 = v35;
      v61 = 2112;
      v62 = v36;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Dropping userUniqueId because the user's creatorFabricIndex does not match the currentFabricIndex. credential: %@, creatorFabricIndex: %@, currentFabricIndex: %@, accessory: %@", buf, 0x3Eu);

      v28 = v50;
      v12 = v49;
    }

    objc_autoreleasePoolPop(v28);
    v12 = 0;
    goto LABEL_11;
  }

  v17 = [v3 user];
  v18 = [v17 userUniqueID];
  v19 = [v18 isEqualToNumber:*MEMORY[0x277D17AB8]];

  if (!v19)
  {
LABEL_11:
    v37 = [a1[4] context];
    v38 = [v37 home];
    v39 = [v38 accessCodeForMatterUserWithUserUniqueID:v12];

    v40 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:v39];
    v41 = objc_alloc(MEMORY[0x277CD1668]);
    v42 = [a1[6] uuid];
    v43 = MEMORY[0x277CCABB0];
    v44 = [v3 credential];
    v45 = [v44 userIndex];
    v46 = [v43 numberWithInteger:{objc_msgSend(v45, "integerValue")}];
    v27 = [v41 initWithAccessoryUUID:v42 accessCodeValue:v40 uniqueIdentifier:v46 hasRestrictions:0];

    goto LABEL_12;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = a1[4];
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [a1[5] UUID];
    v25 = [v3 credential];
    v26 = [a1[6] shortDescription];
    *buf = 138544130;
    v52 = v23;
    v53 = 2112;
    v54 = v24;
    v55 = 2112;
    v56 = v25;
    v57 = 2112;
    v58 = v26;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Dropping credential because it is the COTA home user: %@, accessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v20);
  v27 = 0;
LABEL_12:

  return v27;
}

- (id)_readAccessCodesFromAccessory_Matter:(id)matter withRetries:(BOOL)retries flow:(id)flow
{
  v41 = *MEMORY[0x277D85DE8];
  matterCopy = matter;
  flowCopy = flow;
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    uUID2 = [flowCopy UUID];
    *buf = 138544130;
    v34 = v13;
    v35 = 2112;
    v36 = uUID;
    v37 = 2112;
    v38 = uUID2;
    v39 = 2112;
    v40 = matterCopy;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Reading access codes from Matter accessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  untrackedPlaceholderFlow = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v17 = [matterCopy waitForDoorLockClusterObjectWithFlow:untrackedPlaceholderFlow];
  naFuture = [v17 naFuture];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __92__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessory_Matter_withRetries_flow___block_invoke;
  v29[3] = &unk_279721220;
  v19 = internalOnlyInitializer;
  v30 = v19;
  v31 = selfCopy;
  v20 = matterCopy;
  v32 = v20;
  v21 = [naFuture flatMap:v29];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __92__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessory_Matter_withRetries_flow___block_invoke_3;
  v26[3] = &unk_279730408;
  v26[4] = selfCopy;
  v27 = v19;
  v28 = v20;
  v22 = v20;
  v23 = v19;
  v24 = [v21 recover:v26];

  return v24;
}

id __92__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessory_Matter_withRetries_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getAllPinCodesWithFlow:*(a1 + 32)];
  v5 = [v4 naFuture];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessory_Matter_withRetries_flow___block_invoke_2;
  v10[3] = &unk_279730268;
  v6 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v6;
  v12 = v3;
  v13 = *(a1 + 32);
  v7 = v3;
  v8 = [v5 flatMap:v10];

  return v8;
}

id __92__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessory_Matter_withRetries_flow___block_invoke_3(id *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    v9 = [a1[6] uuid];
    v16 = 138544130;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to read access codes from Matter accessory: %@, with error: %@", &v16, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = objc_alloc(MEMORY[0x277CD1660]);
  v11 = [a1[6] uuid];
  v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  v13 = [v10 initWithAccessoryUUID:v11 accessoryAccessCodeValues:0 error:v12];

  v14 = [MEMORY[0x277D2C900] futureWithResult:v13];

  return v14;
}

id __92__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessory_Matter_withRetries_flow___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _fetchResponseFromCredentialUserTuples:a2 accessory:*(a1 + 40) doorLock:*(a1 + 48) flow:*(a1 + 56)];
  v3 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v3;
}

- (id)_readAccessCodesFromAccessoriesWithUUIDs_HAP:(id)p withRetries:(BOOL)retries flow:(id)flow
{
  retriesCopy = retries;
  v39 = *MEMORY[0x277D85DE8];
  pCopy = p;
  flowCopy = flow;
  if ([pCopy hmf_isEmpty])
  {
    v10 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543874;
      v34 = v14;
      v35 = 2112;
      v36 = uUID;
      v37 = 2112;
      v38 = pCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reading access codes from HAP accessories with UUIDs: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy _createListWriteRequestsForAccessoriesWithUUIDS:pCopy flow:flowCopy];
    if (v16)
    {
      v17 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy _performWriteRequests:v16 withRetries:retriesCopy flow:flowCopy];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke;
      v30[3] = &unk_2797211F8;
      v30[4] = selfCopy;
      v18 = flowCopy;
      v31 = v18;
      v32 = v16;
      v19 = [v17 flatMap:v30];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_101;
      v28[3] = &unk_27972A418;
      v28[4] = selfCopy;
      v20 = v18;
      v29 = v20;
      v21 = [v19 flatMap:v28];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_2;
      v24[3] = &unk_279721338;
      v24[4] = selfCopy;
      v27 = retriesCopy;
      v25 = v20;
      v26 = pCopy;
      v10 = [v21 flatMap:v24];
    }

    else
    {
      v22 = MEMORY[0x277D2C900];
      v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"Failed to create list write requests"];
      v10 = [v22 futureWithError:v17];
    }
  }

  return v10;
}

id __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Got list responses", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [HMDAccessoryAccessCodeReaderWriter identifiersFromListWriteResponses:v3 ofWriteRequests:*(a1 + 48) flow:*(a1 + 40)];
  v10 = [MEMORY[0x277D2C900] futureWithResult:v9];

  return v10;
}

id __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_101(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _createReadWriteRequestsForAccessCodeIdentifiers:a2 flow:*(a1 + 40)];
  v3 = MEMORY[0x277D2C900];
  if (v2)
  {
    v4 = [MEMORY[0x277D2C900] futureWithResult:v2];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"Failed to create read write requests"];
    v4 = [v3 futureWithError:v5];
  }

  return v4;
}

id __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _performWriteRequests:v3 withRetries:*(a1 + 56) flow:*(a1 + 40)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_3;
  v10[3] = &unk_279721310;
  v11 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 48);
  v7 = v3;
  v8 = [v4 flatMap:v10];

  return v8;
}

id __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMDAccessoryAccessCodeReaderWriter accessCodeFetchResponsesForReadWriteResponses:v3 ofWriteRequests:*(a1 + 32) flow:*(a1 + 40)];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 48);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) UUID];
    *buf = 138543874;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Access code fetch responses from read: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *(a1 + 56);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_102;
  v18[3] = &unk_2797358A0;
  v19 = v4;
  v11 = v4;
  v12 = [v10 na_filter:v18];
  v13 = [v12 na_map:&__block_literal_global_108];
  v14 = MEMORY[0x277D2C900];
  v15 = [v11 arrayByAddingObjectsFromArray:v13];
  v16 = [v14 futureWithResult:v15];

  return v16;
}

BOOL __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_102(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_2_103;
  v9[3] = &unk_2797212E8;
  v10 = v3;
  v5 = v3;
  v6 = [v4 na_firstObjectPassingTest:v9];
  v7 = v6 == 0;

  return v7;
}

id __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_3_105(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1660];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v6 = [v4 initWithAccessoryUUID:v3 accessoryAccessCodeValues:0 error:v5];

  return v6;
}

uint64_t __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_2_103(uint64_t a1, void *a2)
{
  v2 = [a2 accessoryUUID];
  v3 = HMFEqualObjects();

  return v3;
}

- (id)_readAccessCodesFromAccessoriesWithUUIDs:(id)ds withRetries:(BOOL)retries flow:(id)flow
{
  retriesCopy = retries;
  v37 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  flowCopy = flow;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v32 = v13;
    v33 = 2112;
    v34 = uUID;
    v35 = 2112;
    v36 = dsCopy;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reading access codes from accessories with UUIDs: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if ([dsCopy hmf_isEmpty])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v32 = v18;
      v33 = 2112;
      v34 = uUID2;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Caller submitted empty array of accessory UUIDs", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __96__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_withRetries_flow___block_invoke;
    v29[3] = &unk_2797358A0;
    v29[4] = selfCopy;
    v21 = [dsCopy na_filter:v29];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __96__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_withRetries_flow___block_invoke_2;
    v28[3] = &unk_2797358A0;
    v28[4] = selfCopy;
    v22 = [dsCopy na_filter:v28];
    v23 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy _readAccessCodesFromAccessoriesWithUUIDs_HAP:v21 withRetries:retriesCopy flow:flowCopy];
    v24 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy _readAccessCodesFromAccessoriesWithUUIDs_Matter:v22 withRetries:retriesCopy flow:flowCopy];
    v25 = MEMORY[0x277D2C900];
    v30[0] = v23;
    v30[1] = v24;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v20 = [v25 combineAllFuturesFlatteningArrayResults:v26];
  }

  return v20;
}

uint64_t __96__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_withRetries_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 UUIDsOfHAPAccessoriesSupportingAccessCodes];
  v6 = [v5 containsObject:v3];

  return v6;
}

uint64_t __96__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_withRetries_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 UUIDsOfMatterAccessoriesSupportingAccessCodes];
  v6 = [v5 containsObject:v3];

  return v6;
}

- (id)_readConstraintsFromAccessory_Matter:(id)matter withRetries:(BOOL)retries flow:(id)flow
{
  retriesCopy = retries;
  v38 = *MEMORY[0x277D85DE8];
  matterCopy = matter;
  flowCopy = flow;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v33 = v13;
    v34 = 2112;
    v35 = uUID;
    v36 = 2112;
    v37 = matterCopy;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reading constraints from accessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if (retriesCopy)
  {
    v15 = 8;
  }

  else
  {
    v15 = 0;
  }

  v16 = MEMORY[0x277D2C900];
  context = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy context];
  workQueue = [context workQueue];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke;
  v29[3] = &unk_2797212C0;
  v19 = matterCopy;
  v30 = v19;
  v20 = flowCopy;
  v31 = v20;
  v21 = [v16 futureWithRetries:v15 timeInterval:workQueue workQueue:v29 block:5.0];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke_4;
  v26[3] = &unk_279730408;
  v26[4] = selfCopy;
  v27 = v20;
  v28 = v19;
  v22 = v19;
  v23 = v20;
  v24 = [v21 recover:v26];

  return v24;
}

id __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v4 = [v2 waitForDoorLockClusterObjectWithFlow:v3];
  v5 = [v4 naFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke_2;
  v8[3] = &unk_279730220;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v6 = [v5 flatMap:v8];

  return v6;
}

id __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke_4(id *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    v9 = [a1[6] uuid];
    v16 = 138543874;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] All retries failed to read constraint from accessory: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [objc_alloc(MEMORY[0x277CD1608]) initWithAllowedCharacterSets:1 minimumLength:4 maximumLength:8 maximumAllowedAccessCodes:50];
  v11 = objc_alloc(MEMORY[0x277CD1658]);
  v12 = [a1[6] uuid];
  v13 = [v11 initWithAccessory:v12 constraints:v10 error:0];

  v14 = [MEMORY[0x277D2C900] futureWithResult:v13];

  return v14;
}

id __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2C900];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v5 getMaxPINCodeLengthWithFlow:v4];
  v7 = [v6 naFuture];
  v16[0] = v7;
  v8 = [v5 getMinPINCodeLengthWithFlow:*(a1 + 32)];

  v9 = [v8 naFuture];
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v11 = [v3 combineAllFutures:v10];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke_3;
  v14[3] = &unk_2797303B8;
  v15 = *(a1 + 40);
  v12 = [v11 flatMap:v14];

  return v12;
}

id __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];

  v6 = [objc_alloc(MEMORY[0x277CD1608]) initWithAllowedCharacterSets:1 minimumLength:objc_msgSend(v5 maximumLength:"integerValue") maximumAllowedAccessCodes:{objc_msgSend(v4, "integerValue"), 50}];
  v7 = objc_alloc(MEMORY[0x277CD1658]);
  v8 = [*(a1 + 32) uuid];
  v9 = [v7 initWithAccessory:v8 constraints:v6 error:0];

  v10 = [MEMORY[0x277D2C900] futureWithResult:v9];

  return v10;
}

- (id)_readConstraintsFromAccessoriesWithUUIDs_HAP:(id)p withRetries:(BOOL)retries flow:(id)flow
{
  retriesCopy = retries;
  v34 = *MEMORY[0x277D85DE8];
  pCopy = p;
  flowCopy = flow;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v29 = v13;
    v30 = 2112;
    v31 = uUID;
    v32 = 2112;
    v33 = pCopy;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reading constraints from HAP accessories with UUIDs: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if ([pCopy hmf_isEmpty])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v29 = v18;
      v30 = 2112;
      v31 = uUID2;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Caller submitted empty array of accessory UUIDs", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v21 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy _createConstraintsReadRequestsForAccessoriesWithUUIDs:pCopy flow:flowCopy];
    if (v21)
    {
      v22 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy _performReadRequests:v21 withRetries:retriesCopy flow:flowCopy];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __100__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke;
      v25[3] = &unk_27972A418;
      v26 = v21;
      v27 = flowCopy;
      v20 = [v22 flatMap:v25];
    }

    else
    {
      v23 = MEMORY[0x277D2C900];
      v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"Failed to create constraints read requests"];
      v20 = [v23 futureWithError:v22];
    }
  }

  return v20;
}

id __100__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [HMDAccessoryAccessCodeReaderWriter createConstraintsFromReadResponses:a2 readRequests:*(a1 + 32) flow:*(a1 + 40)];
  v3 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v3;
}

- (id)_readConstraintsFromAccessoriesWithUUIDs:(id)ds withRetries:(BOOL)retries flow:(id)flow
{
  retriesCopy = retries;
  v37 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  flowCopy = flow;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v32 = v13;
    v33 = 2112;
    v34 = uUID;
    v35 = 2112;
    v36 = dsCopy;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reading constraints from accessories with UUIDs: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if ([dsCopy hmf_isEmpty])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v32 = v18;
      v33 = 2112;
      v34 = uUID2;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Caller submitted empty array of accessory UUIDs", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __96__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessoriesWithUUIDs_withRetries_flow___block_invoke;
    v29[3] = &unk_2797358A0;
    v29[4] = selfCopy;
    v21 = [dsCopy na_filter:v29];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __96__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessoriesWithUUIDs_withRetries_flow___block_invoke_2;
    v28[3] = &unk_2797358A0;
    v28[4] = selfCopy;
    v22 = [dsCopy na_filter:v28];
    v23 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy _readConstraintsFromAccessoriesWithUUIDs_HAP:v21 withRetries:retriesCopy flow:flowCopy];
    v24 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy _readConstraintsFromAccessoriesWithUUIDs_Matter:v22 withRetries:retriesCopy flow:flowCopy];
    v25 = MEMORY[0x277D2C900];
    v30[0] = v23;
    v30[1] = v24;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v20 = [v25 combineAllFuturesFlatteningArrayResults:v26];
  }

  return v20;
}

uint64_t __96__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessoriesWithUUIDs_withRetries_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 UUIDsOfHAPAccessoriesSupportingAccessCodes];
  v6 = [v5 containsObject:v3];

  return v6;
}

uint64_t __96__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessoriesWithUUIDs_withRetries_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 UUIDsOfMatterAccessoriesSupportingAccessCodes];
  v6 = [v5 containsObject:v3];

  return v6;
}

- (id)performModificationRequest_Matter:(id)matter flow:(id)flow
{
  v97 = *MEMORY[0x277D85DE8];
  matterCopy = matter;
  flowCopy = flow;
  context = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    uUID2 = [flowCopy UUID];
    *buf = 138544130;
    v90 = v13;
    v91 = 2112;
    v92 = uUID;
    v93 = 2112;
    v94 = uUID2;
    v95 = 2112;
    v96 = matterCopy;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Performing access code modification request Matter: %@", buf, 0x2Au);
  }

  v68 = flowCopy;

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy context];
  accessoryUUID = [matterCopy accessoryUUID];
  v18 = [context2 hapAccessoryWithUUID:accessoryUUID];

  v19 = matterCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = v19;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  v25 = v22;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  v70 = v24;
  if (v27)
  {
    v28 = MEMORY[0x277D2C900];
    accessoryAccessCodeValue = [v27 accessoryAccessCodeValue];
    uniqueIdentifier = [accessoryAccessCodeValue uniqueIdentifier];
    v31 = [v28 futureWithResult:uniqueIdentifier];

    v32 = v21 != 0;
    if (!(v21 | v24))
    {
      accessoryAccessCodeValue2 = [v27 accessoryAccessCodeValue];
      accessCodeValue = [accessoryAccessCodeValue2 accessCodeValue];
      stringValue = [accessCodeValue stringValue];

      v82[0] = MEMORY[0x277D85DD0];
      v36 = &unk_253D4B000;
      v82[1] = 3221225472;
      v82[2] = __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_3;
      v82[3] = &unk_279721110;
      v83 = v18;
      v84 = internalOnlyInitializer;
      [v31 flatMap:v82];
      v37 = v18;
      v39 = v38 = internalOnlyInitializer;

      v40 = 2;
      v41 = v83;
      goto LABEL_23;
    }

LABEL_16:
    v40 = !v32;
    accessCodeValue2 = [v21 accessCodeValue];
    stringValue2 = [accessCodeValue2 stringValue];
    v49 = stringValue2;
    v36 = &unk_253D4B000;
    if (stringValue2)
    {
      stringValue3 = stringValue2;
    }

    else
    {
      updatedAccessCodeValue = [v70 updatedAccessCodeValue];
      stringValue3 = [updatedAccessCodeValue stringValue];

      v36 = &unk_253D4B000;
    }

    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = v36[103];
    v85[2] = __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke;
    v85[3] = &unk_279721160;
    v86 = v18;
    stringValue = stringValue3;
    v87 = stringValue;
    v37 = v18;
    v38 = internalOnlyInitializer;
    v88 = internalOnlyInitializer;
    v39 = [v31 flatMap:v85];

    v41 = v86;
    goto LABEL_23;
  }

  v42 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy context:0];
  home = [v42 home];
  userUUID = [v25 userUUID];
  guestName = [v25 guestName];
  untrackedPlaceholderFlow = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v31 = [home findOrAddUserIndexForUserUUID:userUUID guestName:guestName accessory:v18 flow:untrackedPlaceholderFlow];

  v32 = v21 != 0;
  if (v21 | v70)
  {
    goto LABEL_16;
  }

  v37 = v18;
  v51 = objc_autoreleasePoolPush();
  v52 = selfCopy;
  v53 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    v54 = HMFGetLogIdentifier();
    uUID3 = [internalOnlyInitializer UUID];
    *buf = 138543618;
    v90 = v54;
    v91 = 2112;
    v92 = uUID3;
    _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Found HMAccessCodeModificationRequestValue of unknown type", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v51);
  v56 = MEMORY[0x277D2C900];
  v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  v39 = [v56 futureWithError:v41];
  stringValue = 0;
  v40 = 0;
  v38 = internalOnlyInitializer;
  v36 = &unk_253D4B000;
LABEL_23:

  v74 = MEMORY[0x277D85DD0];
  v75 = v36[103];
  v58 = v75;
  v76 = __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_86;
  v77 = &unk_279721270;
  v78 = v31;
  v79 = stringValue;
  v59 = v25;
  v80 = v59;
  v81 = v40;
  v60 = stringValue;
  v61 = v31;
  v62 = [v39 flatMap:&v74];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = v58;
  v72[2] = __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_3_90;
  v72[3] = &unk_279721298;
  v72[4] = selfCopy;
  v73 = v59;
  v63 = v59;
  v64 = [v62 recover:v72];

  return v64;
}

id __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v6 = [v4 waitForDoorLockClusterObjectWithFlow:v5];
  v7 = [v6 naFuture];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_2;
  v11[3] = &unk_279721220;
  v12 = *(a1 + 40);
  v13 = v3;
  v14 = *(a1 + 48);
  v8 = v3;
  v9 = [v7 flatMap:v11];

  return v9;
}

id __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v6 = [v4 waitForDoorLockClusterObjectWithFlow:v5];
  v7 = [v6 naFuture];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_4;
  v11[3] = &unk_279730220;
  v12 = v3;
  v13 = *(a1 + 40);
  v8 = v3;
  v9 = [v7 flatMap:v11];

  return v9;
}

id __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_86(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_2_87;
  v7[3] = &unk_279721248;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v9 = v3;
  v10 = v4;
  v5 = [v2 flatMap:v7];

  return v5;
}

id __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_3_90(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D2C900];
  v4 = a2;
  v5 = [objc_opt_class() modificationResponseForFailedMatterRequest:*(a1 + 40) error:v4];

  v6 = [v3 futureWithResult:v5];

  return v6;
}

id __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_2_87(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1648];
  v4 = a2;
  v5 = [[v3 alloc] initWithStringValue:*(a1 + 32)];
  v6 = objc_alloc(MEMORY[0x277CD1668]);
  v7 = [*(a1 + 40) accessoryUUID];
  v8 = [v6 initWithAccessoryUUID:v7 accessCodeValue:v5 uniqueIdentifier:v4 hasRestrictions:0];

  v9 = objc_alloc(MEMORY[0x277CD1618]);
  v10 = [*(a1 + 40) accessoryUUID];
  v11 = [v9 initWithAccessoryUUID:v10 accessoryAccessCodeValue:v8 accessCodeValue:0 operationType:*(a1 + 48) error:0];

  v12 = [MEMORY[0x277D2C900] futureWithResult:v11];

  return v12;
}

id __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 removePinCodeForUserIndex:objc_msgSend(v3 flow:{"integerValue"), *(a1 + 40)}];

  v6 = [v5 naFuture];

  return v6;
}

id __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v5 addOrUpdatePinCodeWithValue:v3 forUserIndex:objc_msgSend(v4 flow:{"integerValue"), a1[6]}];

  v7 = [v6 naFuture];

  return v7;
}

- (id)performAccessCodeModificationRequests_HAP:(id)p withRetries:(BOOL)retries flow:(id)flow
{
  retriesCopy = retries;
  v41 = *MEMORY[0x277D85DE8];
  pCopy = p;
  flowCopy = flow;
  context = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    uUID2 = [flowCopy UUID];
    *buf = 138544130;
    v34 = v16;
    v35 = 2112;
    v36 = uUID;
    v37 = 2112;
    v38 = uUID2;
    v39 = 2112;
    v40 = pCopy;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Performing access code modification requests HAP: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  if ([pCopy hmf_isEmpty])
  {
    v19 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v20 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy _createWriteRequestsForModificationRequests:pCopy flow:internalOnlyInitializer];
    v21 = [v20 na_map:&__block_literal_global_82];
    if ([v21 hmf_isEmpty])
    {
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        uUID3 = [internalOnlyInitializer UUID];
        *buf = 138543618;
        v34 = v25;
        v35 = 2112;
        v36 = uUID3;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not find any valid write requests to perform", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v27 = MEMORY[0x277D2C900];
      v28 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      v19 = [v27 futureWithError:v28];
    }

    else
    {
      v28 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy _performWriteRequests:v21 withRetries:retriesCopy flow:internalOnlyInitializer];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __97__HMDAccessoryAccessCodeReaderWriter_performAccessCodeModificationRequests_HAP_withRetries_flow___block_invoke_83;
      v30[3] = &unk_2797211F8;
      v30[4] = selfCopy;
      v31 = v20;
      v32 = internalOnlyInitializer;
      v19 = [v28 flatMap:v30];
    }
  }

  return v19;
}

id __97__HMDAccessoryAccessCodeReaderWriter_performAccessCodeModificationRequests_HAP_withRetries_flow___block_invoke_83(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _createModificationResponsesForWriteResponses:v3 ofRequestPairs:*(a1 + 40) flow:*(a1 + 48)];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 48) UUID];
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Received modification responses: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v10;
}

- (id)performAccessCodeModificationRequests:(id)requests withRetries:(BOOL)retries flow:(id)flow
{
  retriesCopy = retries;
  v39 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  flowCopy = flow;
  context = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v34 = v15;
    v35 = 2112;
    v36 = uUID;
    v37 = 2112;
    v38 = requestsCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Performing access code modification requests: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  if ([requestsCopy hmf_isEmpty])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v34 = v20;
      v35 = 2112;
      v36 = uUID2;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Caller submitted empty modification requests", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __93__HMDAccessoryAccessCodeReaderWriter_performAccessCodeModificationRequests_withRetries_flow___block_invoke;
    v31[3] = &unk_2797211B0;
    v31[4] = selfCopy;
    v23 = [requestsCopy na_filter:v31];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __93__HMDAccessoryAccessCodeReaderWriter_performAccessCodeModificationRequests_withRetries_flow___block_invoke_2;
    v30[3] = &unk_2797211B0;
    v30[4] = selfCopy;
    v24 = [requestsCopy na_filter:v30];
    v25 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy performAccessCodeModificationRequests_Matter:v23 withRetries:retriesCopy flow:flowCopy];
    v26 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy performAccessCodeModificationRequests_HAP:v24 withRetries:retriesCopy flow:flowCopy];
    v27 = MEMORY[0x277D2C900];
    v32[0] = v25;
    v32[1] = v26;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v22 = [v27 combineAllFuturesFlatteningArrayResults:v28];
  }

  return v22;
}

uint64_t __93__HMDAccessoryAccessCodeReaderWriter_performAccessCodeModificationRequests_withRetries_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v3 accessoryUUID];

  v6 = [v4 hapAccessoryWithUUID:v5];

  v7 = [v6 supportsCHIP];
  return v7;
}

uint64_t __93__HMDAccessoryAccessCodeReaderWriter_performAccessCodeModificationRequests_withRetries_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v3 accessoryUUID];

  v6 = [v4 hapAccessoryWithUUID:v5];

  LODWORD(v4) = [v6 supportsCHIP];
  return v4 ^ 1;
}

- (id)_performReadRequests:(id)requests withRetries:(BOOL)retries flow:(id)flow
{
  retriesCopy = retries;
  flowCopy = flow;
  requestsCopy = requests;
  context = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  v11 = context;
  if (retriesCopy)
  {
    context2 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
    accessoryReadWriteRetries = [context2 accessoryReadWriteRetries];
    context3 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
    [context3 accessoryReadWriteRetryTimeInterval];
    v15 = [v11 performReadRequests:requestsCopy withRetries:accessoryReadWriteRetries timeInterval:self loggingObject:flowCopy flow:?];

    flowCopy = context3;
    requestsCopy = context2;
  }

  else
  {
    v15 = [context performReadRequests:requestsCopy withRetries:0 timeInterval:self loggingObject:flowCopy flow:0.0];
  }

  return v15;
}

- (id)_performWriteRequests:(id)requests withRetries:(BOOL)retries flow:(id)flow
{
  retriesCopy = retries;
  flowCopy = flow;
  requestsCopy = requests;
  context = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  v11 = context;
  if (retriesCopy)
  {
    context2 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
    accessoryReadWriteRetries = [context2 accessoryReadWriteRetries];
    context3 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
    [context3 accessoryReadWriteRetryTimeInterval];
    v15 = [v11 performWriteRequests:requestsCopy withRetries:accessoryReadWriteRetries timeInterval:self loggingObject:flowCopy flow:?];

    flowCopy = context3;
    requestsCopy = context2;
  }

  else
  {
    v15 = [context performWriteRequests:requestsCopy withRetries:0 timeInterval:self loggingObject:flowCopy flow:0.0];
  }

  return v15;
}

- (void)_readConstraintsAndAccessCodesFromAccessoriesWithUUIDs:(id)ds flow:(id)flow completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  flowCopy = flow;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v28 = v14;
    v29 = 2112;
    v30 = uUID;
    v31 = 2112;
    v32 = dsCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reading constraints and access codes from accessories with UUIDs: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  if ([dsCopy hmf_isEmpty])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = uUID2;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Caller submitted empty array of accessory UUIDs", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8]);
  }

  else
  {
    v21 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy _readConstraintsFromAccessoriesWithUUIDs:dsCopy withRetries:1 flow:flowCopy];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __109__HMDAccessoryAccessCodeReaderWriter__readConstraintsAndAccessCodesFromAccessoriesWithUUIDs_flow_completion___block_invoke;
    v23[3] = &unk_279734180;
    v23[4] = selfCopy;
    v24 = flowCopy;
    v25 = dsCopy;
    v26 = completionCopy;
    v22 = [v21 addCompletionBlock:v23];
  }
}

void __109__HMDAccessoryAccessCodeReaderWriter__readConstraintsAndAccessCodesFromAccessoriesWithUUIDs_flow_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] UUID];
      v12 = a1[6];
      *buf = 138544130;
      v29 = v10;
      v30 = 2112;
      v31 = v11;
      v32 = 2112;
      v33 = v12;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to read constraints from accessories with uuids: %@, error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = [a1[4] _readAccessCodesFromAccessoriesWithUUIDs:a1[6] withRetries:1 flow:a1[5]];
  v14 = MEMORY[0x277D2C938];
  v15 = [a1[4] context];
  v16 = [v15 workQueue];
  v17 = [v14 schedulerWithDispatchQueue:v16];
  v18 = [v13 reschedule:v17];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __109__HMDAccessoryAccessCodeReaderWriter__readConstraintsAndAccessCodesFromAccessoriesWithUUIDs_flow_completion___block_invoke_77;
  v23[3] = &unk_279721188;
  v19 = a1[5];
  v23[4] = a1[4];
  v24 = v19;
  v25 = a1[6];
  v20 = a1[7];
  v26 = v5;
  v27 = v20;
  v21 = v5;
  v22 = [v18 addCompletionBlock:v23];
}

void __109__HMDAccessoryAccessCodeReaderWriter__readConstraintsAndAccessCodesFromAccessoriesWithUUIDs_flow_completion___block_invoke_77(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v12 = *(a1 + 48);
      v13 = 138544130;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to read access codes from accessories with uuids: %@, error: %@", &v13, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }

  (*(*(a1 + 64) + 16))();
}

- (id)_readAccessCodeWithIdentifier:(id)identifier accessoryUUID:(id)d flow:(id)flow
{
  v41 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138544130;
    v34 = v14;
    v35 = 2112;
    v36 = uUID;
    v37 = 2112;
    v38 = identifierCopy;
    v39 = 2112;
    v40 = dCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reading access code for identifier: %@ from accessoryUUID: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:identifierCopy];
  v30 = v16;
  v31 = dCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v32 = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

  v19 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy _createReadWriteRequestsForAccessCodeIdentifiers:v18 flow:flowCopy];
  if (v19)
  {
    v20 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy _performWriteRequests:v19 withRetries:1 flow:flowCopy];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __87__HMDAccessoryAccessCodeReaderWriter__readAccessCodeWithIdentifier_accessoryUUID_flow___block_invoke;
    v27[3] = &unk_27972A418;
    v28 = v19;
    v29 = flowCopy;
    v21 = [v20 flatMap:v27];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __87__HMDAccessoryAccessCodeReaderWriter__readAccessCodeWithIdentifier_accessoryUUID_flow___block_invoke_2;
    v25[3] = &unk_2797303B8;
    v26 = identifierCopy;
    v22 = [v21 flatMap:v25];
  }

  else
  {
    v23 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"Failed to create read write requests"];
    v22 = [v23 futureWithError:v20];
  }

  return v22;
}

id __87__HMDAccessoryAccessCodeReaderWriter__readAccessCodeWithIdentifier_accessoryUUID_flow___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [HMDAccessoryAccessCodeReaderWriter accessCodeFetchResponsesForReadWriteResponses:a2 ofWriteRequests:*(a1 + 32) flow:*(a1 + 40)];
  v3 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v3;
}

id __87__HMDAccessoryAccessCodeReaderWriter__readAccessCodeWithIdentifier_accessoryUUID_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessoryAccessCodeValues];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __87__HMDAccessoryAccessCodeReaderWriter__readAccessCodeWithIdentifier_accessoryUUID_flow___block_invoke_3;
    v13[3] = &unk_27972E680;
    v14 = *(a1 + 32);
    v6 = [v5 na_firstObjectPassingTest:v13];

    v7 = MEMORY[0x277D2C900];
    v8 = [v6 accessCodeValue];
    v9 = [v7 futureWithResult:v8];
  }

  else
  {
    v10 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15 reason:@"Response without access code value"];
    v9 = [v10 futureWithError:v11];
  }

  return v9;
}

uint64_t __87__HMDAccessoryAccessCodeReaderWriter__readAccessCodeWithIdentifier_accessoryUUID_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

- (id)removeAccessCodeWithValue_Matter:(id)matter fromAccessory:(id)accessory withUserUUID:(id)d guestName:(id)name flow:(id)flow
{
  v62 = *MEMORY[0x277D85DE8];
  matterCopy = matter;
  accessoryCopy = accessory;
  dCopy = d;
  nameCopy = name;
  flowCopy = flow;
  context = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    [flowCopy UUID];
    v22 = v39 = matterCopy;
    uuid = [accessoryCopy uuid];
    *buf = 138544130;
    v55 = v20;
    v56 = 2112;
    v57 = uUID;
    v58 = 2112;
    v59 = v22;
    v60 = 2112;
    v61 = uuid;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] removeAllAccessCodesWithValue_Matter fromAccessory: %@", buf, 0x2Au);

    matterCopy = v39;
  }

  objc_autoreleasePoolPop(v17);
  context2 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy context];
  home = [context2 home];
  v26 = [home findUserIndexForUserUUID:dCopy guestName:nameCopy accessory:accessoryCopy];

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke;
  v51[3] = &unk_279721110;
  v27 = accessoryCopy;
  v52 = v27;
  v53 = internalOnlyInitializer;
  v28 = internalOnlyInitializer;
  v29 = [v26 flatMap:v51];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_3;
  v47[3] = &unk_279721138;
  v30 = v26;
  v48 = v30;
  v31 = v27;
  v49 = v31;
  v32 = matterCopy;
  v50 = v32;
  v33 = [v29 flatMap:v47];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_5;
  v43[3] = &unk_279730408;
  v44 = v30;
  v45 = v31;
  v46 = v32;
  v34 = v32;
  v35 = v31;
  v36 = v30;
  v37 = [v33 recover:v43];

  return v37;
}

id __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v6 = [v4 waitForDoorLockClusterObjectWithFlow:v5];
  v7 = [v6 naFuture];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_2;
  v11[3] = &unk_279730220;
  v12 = v3;
  v13 = *(a1 + 40);
  v8 = v3;
  v9 = [v7 flatMap:v11];

  return v9;
}

id __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_3(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_4;
  v5[3] = &unk_279721110;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v3 = [v2 flatMap:v5];

  return v3;
}

id __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = v4;
  if (v4 == *MEMORY[0x277CCFD28])
  {
    v6 = [v3 code];

    if (v6 == 2)
    {
      v7 = MEMORY[0x277D2C900];
      v8 = [MEMORY[0x277CBEB68] null];
      v9 = [v7 futureWithResult:v8];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_6;
  v12[3] = &unk_279721160;
  v10 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = v3;
  v9 = [v10 flatMap:v12];

LABEL_6:

  return v9;
}

id __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1668];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) uuid];
  v7 = [v5 initWithAccessoryUUID:v6 accessCodeValue:*(a1 + 40) uniqueIdentifier:v4 hasRestrictions:0];

  v8 = objc_alloc(MEMORY[0x277CD1618]);
  v9 = [*(a1 + 32) uuid];
  v10 = [v8 initWithAccessoryUUID:v9 accessoryAccessCodeValue:v7 accessCodeValue:0 operationType:2 error:*(a1 + 48)];

  v11 = [MEMORY[0x277D2C900] futureWithResult:v10];

  return v11;
}

id __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1668];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) uuid];
  v7 = [v5 initWithAccessoryUUID:v6 accessCodeValue:*(a1 + 40) uniqueIdentifier:v4 hasRestrictions:0];

  v8 = objc_alloc(MEMORY[0x277CD1618]);
  v9 = [*(a1 + 32) uuid];
  v10 = [v8 initWithAccessoryUUID:v9 accessoryAccessCodeValue:v7 accessCodeValue:0 operationType:2 error:0];

  v11 = [MEMORY[0x277D2C900] futureWithResult:v10];

  return v11;
}

id __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 removePinCodeForUserIndex:objc_msgSend(v3 flow:{"integerValue"), *(a1 + 40)}];

  v6 = [v5 naFuture];

  return v6;
}

- (id)removeAllHAPAccessCodesWithValue:(id)value forSpecificAccessory:(id)accessory flow:(id)flow
{
  v41 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  accessoryCopy = accessory;
  flowCopy = flow;
  context = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v36 = v16;
    v37 = 2112;
    v38 = uUID;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] removeAllHAPAccessCodesWithValue", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  if (!accessoryCopy)
  {
    context2 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy context];
    uUIDsOfHAPAccessoriesSupportingAccessCodes = [context2 UUIDsOfHAPAccessoriesSupportingAccessCodes];
    goto LABEL_11;
  }

  if ([accessoryCopy supportsCHIP] & 1) == 0 && (objc_msgSend(accessoryCopy, "supportsAccessCode"))
  {
    context2 = [accessoryCopy uuid];
    v34 = context2;
    uUIDsOfHAPAccessoriesSupportingAccessCodes = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
LABEL_11:
    v26 = uUIDsOfHAPAccessoriesSupportingAccessCodes;

    v28 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy _readAccessCodesFromAccessoriesWithUUIDs:v26 withRetries:1 flow:flowCopy];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke;
    v30[3] = &unk_2797210E8;
    v31 = valueCopy;
    v32 = selfCopy;
    v33 = flowCopy;
    v27 = [v28 flatMap:v30];

    goto LABEL_12;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    uUID2 = [flowCopy UUID];
    *buf = 138543874;
    v36 = v23;
    v37 = 2112;
    v38 = uUID2;
    v39 = 2112;
    v40 = accessoryCopy;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] removeAccessCodeWithValue for HAP was passed a non HAP accessory or does not support access codes: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  v25 = MEMORY[0x277D2C900];
  v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:48 userInfo:0];
  v27 = [v25 futureWithError:v26];
LABEL_12:

  return v27;
}

id __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke(uint64_t a1, void *a2)
{
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_2;
  v16[3] = &unk_279721050;
  v17 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 na_map:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_3;
  v14[3] = &unk_2797210A0;
  v15 = *(a1 + 32);
  v6 = [v4 na_flatMap:v14];

  v7 = [v6 na_map:&__block_literal_global_3770];
  v8 = [*(a1 + 40) performAccessCodeModificationRequests:v7 withRetries:1 flow:*(a1 + 48)];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_6;
  v12[3] = &unk_2797303B8;
  v13 = v5;
  v9 = v5;
  v10 = [v8 flatMap:v12];

  return v10;
}

id __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CD1618]);
    v6 = [v3 accessoryUUID];
    v7 = *(a1 + 32);
    v8 = [v3 error];
    v9 = [v5 initWithAccessoryUUID:v6 accessoryAccessCodeValue:0 accessCodeValue:v7 operationType:2 error:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 accessoryAccessCodeValues];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_4;
  v6[3] = &unk_279721078;
  v7 = *(a1 + 32);
  v4 = [v3 na_map:v6];

  return v4;
}

id __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 arrayByAddingObjectsFromArray:*(a1 + 32)];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

id __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1628];
  v3 = a2;
  v4 = [[v2 alloc] initWithAccessoryAccessCodeValue:v3];

  return v4;
}

id __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessCodeValue];
  LODWORD(a1) = [v4 isEqual:*(a1 + 32)];

  if (a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)removeAllAccessCodesWithValue:(id)value withUserUUID:(id)d guestName:(id)name flow:(id)flow
{
  v38 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  dCopy = d;
  nameCopy = name;
  flowCopy = flow;
  context = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v30 = dCopy;
    v21 = v20 = flowCopy;
    uUID = [internalOnlyInitializer UUID];
    uUID2 = [v20 UUID];
    *buf = 138543874;
    v33 = v21;
    v34 = 2112;
    v35 = uUID;
    v36 = 2112;
    v37 = uUID2;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] removeAllAccessCodesWithValue", buf, 0x20u);

    flowCopy = v20;
    dCopy = v30;
  }

  objc_autoreleasePoolPop(v17);
  v24 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy removeAllHAPAccessCodesWithValue:valueCopy forSpecificAccessory:0 flow:internalOnlyInitializer];
  v25 = [(HMDAccessoryAccessCodeReaderWriter *)selfCopy removeAllAccessCodesWithValue_Matter:valueCopy withUserUUID:dCopy guestName:nameCopy flow:internalOnlyInitializer];
  v26 = MEMORY[0x277D2C900];
  v31[0] = v24;
  v31[1] = v25;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v28 = [v26 combineAllFuturesFlatteningArrayResults:v27];

  return v28;
}

- (id)readAccessCodesFromAccessoriesWithUUIDs:(id)ds flow:(id)flow
{
  flowCopy = flow;
  dsCopy = ds;
  context = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = [(HMDAccessoryAccessCodeReaderWriter *)self _readAccessCodesFromAccessoriesWithUUIDs:dsCopy withRetries:1 flow:flowCopy];

  return v10;
}

- (HMDAccessoryAccessCodeReaderWriter)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = HMDAccessoryAccessCodeReaderWriter;
  v6 = [(HMDAccessoryAccessCodeReaderWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t74 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t74, &__block_literal_global_176);
  }

  v3 = logCategory__hmf_once_v75;

  return v3;
}

uint64_t __49__HMDAccessoryAccessCodeReaderWriter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v75;
  logCategory__hmf_once_v75 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)createWriteRequestForRemoveRequests:(id)requests characteristic:(id)characteristic flow:(id)flow
{
  v36 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  characteristicCopy = characteristic;
  flowCopy = flow;
  if ([requestsCopy hmf_isEmpty])
  {
    v11 = 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:5];
    v13 = [requestsCopy na_map:&__block_literal_global_173];
    v14 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v12 accessCodeControlRequest:v13 accessCodeControlResponse:0];
    v25 = 0;
    v15 = [v14 serializeWithError:&v25];
    v16 = v25;
    if (v15)
    {
      v11 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:characteristicCopy value:v15 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = selfCopy;
        uUID = [flowCopy UUID];
        *buf = 138544386;
        v27 = v22;
        v28 = 2112;
        v29 = uUID;
        v20 = uUID;
        v30 = 2112;
        v31 = 0;
        v32 = 2112;
        v33 = requestsCopy;
        v34 = 2112;
        v35 = v16;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize access code control write request: %@, for update requests: %@, with error: %@", buf, 0x34u);

        selfCopy = v23;
      }

      objc_autoreleasePoolPop(context);
      v11 = 0;
    }
  }

  return v11;
}

id __94__HMDAccessoryAccessCodeReaderWriter_createWriteRequestForRemoveRequests_characteristic_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFEC98];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 accessoryAccessCodeValue];

  v6 = [v5 uniqueIdentifier];
  v7 = [v4 initWithValue:v6];

  v8 = [objc_alloc(MEMORY[0x277CFE9D0]) initWithIdentifier:v7 accessCode:0];

  return v8;
}

+ (id)createWriteRequestForUpdateRequests:(id)requests characteristic:(id)characteristic flow:(id)flow
{
  v36 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  characteristicCopy = characteristic;
  flowCopy = flow;
  if ([requestsCopy hmf_isEmpty])
  {
    v11 = 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:4];
    v13 = [requestsCopy na_map:&__block_literal_global_170];
    v14 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v12 accessCodeControlRequest:v13 accessCodeControlResponse:0];
    v25 = 0;
    v15 = [v14 serializeWithError:&v25];
    v16 = v25;
    if (v15)
    {
      v11 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:characteristicCopy value:v15 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = selfCopy;
        uUID = [flowCopy UUID];
        *buf = 138544386;
        v27 = v22;
        v28 = 2112;
        v29 = uUID;
        v20 = uUID;
        v30 = 2112;
        v31 = 0;
        v32 = 2112;
        v33 = requestsCopy;
        v34 = 2112;
        v35 = v16;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize access code control write request: %@, for update requests: %@, with error: %@", buf, 0x34u);

        selfCopy = v23;
      }

      objc_autoreleasePoolPop(context);
      v11 = 0;
    }
  }

  return v11;
}

id __94__HMDAccessoryAccessCodeReaderWriter_createWriteRequestForUpdateRequests_characteristic_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFEC98];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 accessoryAccessCodeValue];
  v6 = [v5 uniqueIdentifier];
  v7 = [v4 initWithValue:v6];

  v8 = objc_alloc(MEMORY[0x277CFE9D0]);
  v9 = [v3 updatedAccessCodeValue];

  v10 = [v9 stringValue];
  v11 = [v8 initWithIdentifier:v7 accessCode:v10];

  return v11;
}

+ (id)createWriteRequestForAddRequests:(id)requests characteristic:(id)characteristic flow:(id)flow
{
  v36 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  characteristicCopy = characteristic;
  flowCopy = flow;
  if ([requestsCopy hmf_isEmpty])
  {
    v11 = 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:3];
    v13 = [requestsCopy na_map:&__block_literal_global_167];
    v14 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v12 accessCodeControlRequest:v13 accessCodeControlResponse:0];
    v25 = 0;
    v15 = [v14 serializeWithError:&v25];
    v16 = v25;
    if (v15)
    {
      v11 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:characteristicCopy value:v15 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = selfCopy;
        uUID = [flowCopy UUID];
        *buf = 138544386;
        v27 = v22;
        v28 = 2112;
        v29 = uUID;
        v20 = uUID;
        v30 = 2112;
        v31 = 0;
        v32 = 2112;
        v33 = requestsCopy;
        v34 = 2112;
        v35 = v16;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize access code control write request: %@, for add requests: %@, with error: %@", buf, 0x34u);

        selfCopy = v23;
      }

      objc_autoreleasePoolPop(context);
      v11 = 0;
    }
  }

  return v11;
}

id __91__HMDAccessoryAccessCodeReaderWriter_createWriteRequestForAddRequests_characteristic_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFE9D0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 accessCodeValue];

  v6 = [v5 stringValue];
  v7 = [v4 initWithIdentifier:0 accessCode:v6];

  return v7;
}

+ (id)createWriteRequestsForModificationRequests:(id)requests hapAccessories:(id)accessories flow:(id)flow
{
  v78 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  accessoriesCopy = accessories;
  flowCopy = flow;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v9 = requestsCopy;
  v10 = [v9 countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v67;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v67 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v66 + 1) + 8 * i);
        accessoryUUID = [v14 accessoryUUID];
        v16 = [dictionary objectForKeyedSubscript:accessoryUUID];

        if (v16)
        {
          accessoryUUID2 = [v14 accessoryUUID];
          accessoryUUID3 = [dictionary objectForKeyedSubscript:accessoryUUID2];
          [accessoryUUID3 addObject:v14];
        }

        else
        {
          accessoryUUID2 = [MEMORY[0x277CBEB18] arrayWithObject:v14];
          accessoryUUID3 = [v14 accessoryUUID];
          [dictionary setObject:accessoryUUID2 forKeyedSubscript:accessoryUUID3];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v11);
  }

  array = [MEMORY[0x277CBEB18] array];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = [dictionary allKeys];
  v20 = flowCopy;
  v56 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
  if (v56)
  {
    v55 = *v63;
    *&v21 = 138543874;
    v51 = v21;
    v60 = array;
    while (2)
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v63 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v62 + 1) + 8 * j);
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __101__HMDAccessoryAccessCodeReaderWriter_createWriteRequestsForModificationRequests_hapAccessories_flow___block_invoke;
        v61[3] = &unk_2797304D0;
        v61[4] = v23;
        v24 = [accessoriesCopy na_firstObjectPassingTest:{v61, v51}];
        if (!v24)
        {
          v45 = objc_autoreleasePoolPush();
          selfCopy = self;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v48 = HMFGetLogIdentifier();
            uUID = [v20 UUID];
            *buf = v51;
            v71 = v48;
            v72 = 2112;
            v73 = uUID;
            v74 = 2112;
            v75 = v23;
            _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not submitting modification requests because did not find an accessory with UUID: %@", buf, 0x20u);

            v20 = flowCopy;
          }

          objc_autoreleasePoolPop(v45);
LABEL_35:

          v44 = MEMORY[0x277CBEBF8];
          array = v60;
          goto LABEL_36;
        }

        v25 = v24;
        v26 = [v24 findCharacteristicType:@"00000262-0000-1000-8000-0026BB765291" forServiceType:@"00000260-0000-1000-8000-0026BB765291"];
        if (v26)
        {
          v27 = [dictionary objectForKeyedSubscript:v23];
          v28 = [v27 na_map:&__block_literal_global_157];

          v29 = [HMDAccessoryAccessCodeReaderWriter createWriteRequestForAddRequests:v28 characteristic:v26 flow:v20];
          if (v29)
          {
            v30 = [[HMDAccessCodeWriteRequestModificationRequestPair alloc] initWithWriteRequest:v29 modificationRequests:v28];
            [v60 addObject:v30];
          }

          v58 = v29;
          v59 = v28;
          v31 = [dictionary objectForKeyedSubscript:v23];
          v32 = [v31 na_map:&__block_literal_global_161];

          v33 = [HMDAccessoryAccessCodeReaderWriter createWriteRequestForUpdateRequests:v32 characteristic:v26 flow:v20];
          if (v33)
          {
            v34 = [[HMDAccessCodeWriteRequestModificationRequestPair alloc] initWithWriteRequest:v33 modificationRequests:v32];
            [v60 addObject:v34];
          }

          v35 = [dictionary objectForKeyedSubscript:v23];
          v36 = [v35 na_map:&__block_literal_global_164];

          v37 = [HMDAccessoryAccessCodeReaderWriter createWriteRequestForRemoveRequests:v36 characteristic:v26 flow:v20];
          if (v37)
          {
            v38 = [[HMDAccessCodeWriteRequestModificationRequestPair alloc] initWithWriteRequest:v37 modificationRequests:v36];
            [v60 addObject:v38];

            v20 = flowCopy;
          }
        }

        else
        {
          v39 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            uUID2 = [flowCopy UUID];
            *buf = v51;
            v71 = v42;
            v72 = 2112;
            v73 = uUID2;
            v74 = 2112;
            v75 = v25;
            _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not submitting modification requests because did not find an access code control point on accessory: %@", buf, 0x20u);

            v20 = flowCopy;
          }

          objc_autoreleasePoolPop(v39);
        }

        if (!v26)
        {
          goto LABEL_35;
        }
      }

      array = v60;
      v56 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
      if (v56)
      {
        continue;
      }

      break;
    }
  }

  v44 = objc_msgSend_copy(array);
LABEL_36:

  return v44;
}

uint64_t __101__HMDAccessoryAccessCodeReaderWriter_createWriteRequestsForModificationRequests_hapAccessories_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

void *__101__HMDAccessoryAccessCodeReaderWriter_createWriteRequestsForModificationRequests_hapAccessories_flow___block_invoke_3(uint64_t a1, void *a2)
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

  return v3;
}

void *__101__HMDAccessoryAccessCodeReaderWriter_createWriteRequestsForModificationRequests_hapAccessories_flow___block_invoke_2(uint64_t a1, void *a2)
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

  return v3;
}

void *__101__HMDAccessoryAccessCodeReaderWriter_createWriteRequestsForModificationRequests_hapAccessories_flow___block_invoke_154(uint64_t a1, void *a2)
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

  return v3;
}

+ (int64_t)hmPrivateErrorCodeForHAPAccessCodeError:(int64_t)error
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = error - 2;
  if (error - 2) < 8 && ((0xBDu >> v4))
  {
    return qword_253D4B5A0[v4];
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HAPAccessCodeResponseStatusAsString();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Encountered an error type that likely indicates a bug: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  return 2607;
}

+ (id)modificationResponseForControlResponse:(id)response operationType:(int64_t)type accessoryUUID:(id)d
{
  responseCopy = response;
  dCopy = d;
  if ((type - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v30 = _HMFPreconditionFailure();
    return [(HMDAccessoryAccessCodeReaderWriter *)v30 modificationResponseForFailedMatterRequest:v31 error:v32, v33];
  }

  v9 = dCopy;
  accessCode = [responseCopy accessCode];

  if (!accessCode)
  {
    goto LABEL_7;
  }

  v11 = objc_alloc(MEMORY[0x277CD1648]);
  accessCode2 = [responseCopy accessCode];
  accessCode = [v11 initWithStringValue:accessCode2];

  flags = [responseCopy flags];

  if (flags)
  {
    flags2 = [responseCopy flags];
    LOBYTE(flags) = [flags2 value];
  }

  identifier = [responseCopy identifier];

  if (identifier)
  {
    v16 = objc_alloc(MEMORY[0x277CD1668]);
    identifier2 = [responseCopy identifier];
    value = [identifier2 value];
    v19 = [v16 initWithAccessoryUUID:v9 accessCodeValue:accessCode uniqueIdentifier:value hasRestrictions:flags & 1];
  }

  else
  {
LABEL_7:
    v19 = 0;
  }

  statusCode = [responseCopy statusCode];
  if (!statusCode)
  {
    goto LABEL_14;
  }

  statusCode2 = [responseCopy statusCode];
  value2 = [statusCode2 value];

  if (!value2)
  {
    statusCode = 0;
LABEL_14:
    v25 = accessCode;
    accessCode = 0;
    goto LABEL_15;
  }

  v23 = MEMORY[0x277CCA9B8];
  statusCode3 = [responseCopy statusCode];
  statusCode = [v23 hmPrivateErrorWithCode:{+[HMDAccessoryAccessCodeReaderWriter hmPrivateErrorCodeForHAPAccessCodeError:](HMDAccessoryAccessCodeReaderWriter, "hmPrivateErrorCodeForHAPAccessCodeError:", objc_msgSend(statusCode3, "value"))}];

  if (type != 3 || !statusCode)
  {
    goto LABEL_14;
  }

  v25 = v19;
  v19 = 0;
LABEL_15:

  v26 = 1;
  if (type != 4)
  {
    v26 = 2;
  }

  if (type == 3)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  v28 = [objc_alloc(MEMORY[0x277CD1618]) initWithAccessoryUUID:v9 accessoryAccessCodeValue:v19 accessCodeValue:accessCode operationType:v27 error:statusCode];

  return v28;
}

+ (id)modificationResponseForFailedMatterRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = requestCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = requestCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  domain = [errorCopy domain];
  v13 = domain;
  if (domain == *MEMORY[0x277D17AA8])
  {
    code = [errorCopy code];

    if (code == 8)
    {
      if (v8)
      {
        v15 = objc_alloc(MEMORY[0x277CD1618]);
        accessoryUUID = [v8 accessoryUUID];
        accessCodeValue = [v8 accessCodeValue];
        v18 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2602];
        v19 = v15;
        v20 = accessoryUUID;
        v21 = 0;
        v22 = accessCodeValue;
        v23 = 0;
      }

      else
      {
        if (!v11)
        {
          goto LABEL_15;
        }

        v24 = objc_alloc(MEMORY[0x277CD1618]);
        accessoryUUID = [v11 accessoryUUID];
        accessCodeValue = [v11 accessoryAccessCodeValue];
        v18 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2602];
        v19 = v24;
        v20 = accessoryUUID;
        v21 = accessCodeValue;
        v22 = 0;
        v23 = 1;
      }

      v25 = [v19 initWithAccessoryUUID:v20 accessoryAccessCodeValue:v21 accessCodeValue:v22 operationType:v23 error:v18];

      goto LABEL_16;
    }
  }

  else
  {
  }

LABEL_15:
  v25 = [objc_opt_class() genericModificationResponseForFailedRequest:v9];
LABEL_16:

  return v25;
}

+ (id)genericModificationResponseForFailedRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = requestCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = requestCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v5)
  {
    v12 = objc_alloc(MEMORY[0x277CD1618]);
    accessoryUUID = [v5 accessoryUUID];
    accessCodeValue = [v5 accessCodeValue];
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    v16 = v12;
    v17 = accessoryUUID;
    v18 = 0;
    v19 = accessCodeValue;
    v20 = 0;
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x277CD1618]);
    if (v8)
    {
      accessoryUUID = [v8 accessoryUUID];
      accessCodeValue = [v8 accessoryAccessCodeValue];
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v16 = v21;
      v17 = accessoryUUID;
      v18 = accessCodeValue;
      v19 = 0;
      v20 = 1;
    }

    else
    {
      accessoryUUID = [v11 accessoryUUID];
      accessCodeValue = [v11 accessoryAccessCodeValue];
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v16 = v21;
      v17 = accessoryUUID;
      v18 = accessCodeValue;
      v19 = 0;
      v20 = 2;
    }
  }

  v22 = [v16 initWithAccessoryUUID:v17 accessoryAccessCodeValue:v18 accessCodeValue:v19 operationType:v20 error:v15];

  return v22;
}

+ (id)createModificationResponsesForWriteResponses:(id)responses ofRequestPairs:(id)pairs flow:(id)flow
{
  v61 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  pairsCopy = pairs;
  flowCopy = flow;
  array = [MEMORY[0x277CBEB18] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = pairsCopy;
  v43 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v43)
  {
    v41 = *v49;
    *&v9 = 138544130;
    v38 = v9;
    do
    {
      v10 = 0;
      do
      {
        if (*v49 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v48 + 1) + 8 * v10);
        writeRequest = [v11 writeRequest];
        v13 = [HMDAccessoryAccessCodeReaderWriter _accessCodeControlFromWriteResponses:responsesCopy forWriteRequest:writeRequest flow:flowCopy];
        v14 = v13;
        if (!v13)
        {
          v27 = objc_autoreleasePoolPush();
          selfCopy = self;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            uUID = [flowCopy UUID];
            *buf = v38;
            v53 = v30;
            v54 = 2112;
            v55 = uUID;
            v56 = 2112;
            v57 = responsesCopy;
            v58 = 2112;
            v59 = writeRequest;
            _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to extract HAPAccessCodeControl from write responses: %@, for write request: %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v27);
          modificationRequests = [v11 modificationRequests];
          v25 = modificationRequests;
          v26 = &__block_literal_global_146;
          goto LABEL_15;
        }

        accessCodeControlResponse = [v13 accessCodeControlResponse];
        if (!accessCodeControlResponse || (v16 = accessCodeControlResponse, [v14 accessCodeControlResponse], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "hmf_isEmpty"), v17, v16, v18))
        {
          v19 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = HMFGetLogIdentifier();
            uUID2 = [flowCopy UUID];
            *buf = 138543618;
            v53 = v22;
            v54 = 2112;
            v55 = uUID2;
            _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Received HAPAccessCodeControl object that does not contain any HAPAccessCodeControlResponses", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v19);
          modificationRequests = [v11 modificationRequests];
          v25 = modificationRequests;
          v26 = &__block_literal_global_149;
LABEL_15:
          v32 = [modificationRequests na_map:v26];

          [array addObjectsFromArray:v32];
          goto LABEL_16;
        }

        accessCodeControlResponse2 = [v14 accessCodeControlResponse];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __103__HMDAccessoryAccessCodeReaderWriter_createModificationResponsesForWriteResponses_ofRequestPairs_flow___block_invoke_2;
        v45[3] = &unk_2797214A8;
        v46 = v14;
        v47 = writeRequest;
        v34 = [accessCodeControlResponse2 na_map:v45];

        [array addObjectsFromArray:v34];
        v32 = v46;
LABEL_16:

        ++v10;
      }

      while (v43 != v10);
      v35 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
      v43 = v35;
    }

    while (v35);
  }

  v36 = objc_msgSend_copy(array);

  return v36;
}

id __103__HMDAccessoryAccessCodeReaderWriter_createModificationResponsesForWriteResponses_ofRequestPairs_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 operationType];
  v6 = [v5 value];
  v7 = [*(a1 + 40) characteristic];
  v8 = [v7 service];
  v9 = [v8 accessory];
  v10 = [v9 uuid];
  v11 = [HMDAccessoryAccessCodeReaderWriter modificationResponseForControlResponse:v4 operationType:v6 accessoryUUID:v10];

  return v11;
}

+ (id)_accessCodeControlFromWriteResponses:(id)responses forWriteRequest:(id)request flow:(id)flow
{
  v55 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  requestCopy = request;
  flowCopy = flow;
  characteristic = [requestCopy characteristic];
  v44 = 0;
  v12 = [responsesCopy hmd_valueOfCharacteristic:characteristic error:&v44];
  v13 = v44;
  if (v12)
  {
    v41 = flowCopy;
    v14 = v12;
    objc_opt_class();
    v15 = objc_opt_isKindOfClass() & 1;
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v15)
    {
      v43 = v13;
      v18 = [MEMORY[0x277CFE9C8] parsedFromData:v14 error:&v43];
      v37 = v43;

      if (v18)
      {
        v19 = v18;
        flowCopy = v41;
      }

      else
      {
        v40 = v17;
        v30 = objc_autoreleasePoolPush();
        selfCopy = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v33 = v36 = v30;
          uUID = [v41 UUID];
          *buf = 138543874;
          v46 = v33;
          v47 = 2112;
          v48 = uUID;
          v49 = 2112;
          v50 = v14;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to parse HAPAccessCodeControl from NSData: %@", buf, 0x20u);

          v30 = v36;
        }

        objc_autoreleasePoolPop(v30);
        v17 = v40;
        flowCopy = v41;
      }

      v13 = v37;
    }

    else
    {
      v39 = v17;
      v25 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v28 = v38 = v25;
        uUID2 = [v41 UUID];
        *buf = 138543874;
        v46 = v28;
        v47 = 2112;
        v48 = uUID2;
        v49 = 2112;
        v50 = v14;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Characteristic response value: %@ is not of expected type NSData", buf, 0x20u);

        v25 = v38;
      }

      objc_autoreleasePoolPop(v25);
      v18 = 0;
      v17 = v39;
      flowCopy = v41;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v24 = v42 = flowCopy;
      *buf = 138544386;
      v46 = v23;
      v47 = 2112;
      v48 = v24;
      v49 = 2112;
      v50 = characteristic;
      v51 = 2112;
      v52 = responsesCopy;
      v53 = 2112;
      v54 = v13;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to parse characteristic response for characteristic: %@, in payload: %@, with error: %@", buf, 0x34u);

      flowCopy = v42;
    }

    objc_autoreleasePoolPop(v20);
    v18 = 0;
  }

  return v18;
}

+ (id)createConstraintsFromReadResponses:(id)responses readRequests:(id)requests flow:(id)flow
{
  responsesCopy = responses;
  flowCopy = flow;
  v10 = [requests na_map:&__block_literal_global_140];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__HMDAccessoryAccessCodeReaderWriter_createConstraintsFromReadResponses_readRequests_flow___block_invoke_2;
  v15[3] = &unk_279721460;
  v17 = flowCopy;
  selfCopy = self;
  v16 = responsesCopy;
  v11 = flowCopy;
  v12 = responsesCopy;
  v13 = [v10 na_map:v15];

  return v13;
}

id __91__HMDAccessoryAccessCodeReaderWriter_createConstraintsFromReadResponses_readRequests_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 accessory];
  v5 = [v4 uuid];

  v6 = [objc_alloc(MEMORY[0x277CD1608]) initWithAllowedCharacterSets:1 minimumLength:4 maximumLength:8 maximumAllowedAccessCodes:200];
  v7 = *(a1 + 32);
  v57 = 0;
  v8 = [v7 hmd_valueOfCharacteristic:v3 error:&v57];
  v9 = v57;
  if (v8)
  {
    v55 = v6;
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

    v54 = v12;

    if (v11)
    {
      v56 = v9;
      v13 = [MEMORY[0x277CFE9C0] parsedFromData:v10 error:&v56];
      v51 = v56;

      if (v13)
      {
        v14 = [v13 characterSet];
        v15 = [v14 value];

        v49 = v15 == 1;
        v48 = objc_alloc(MEMORY[0x277CD1608]);
        v50 = [v13 minimumValueLength];
        v16 = [v50 value];
        v17 = [v16 integerValue];
        [v13 maximumValueLength];
        v18 = v52 = v5;
        v19 = [v18 value];
        v20 = [v19 integerValue];
        v21 = [v13 maximumAccessCodes];
        v22 = [v21 value];
        v23 = [v48 initWithAllowedCharacterSets:v49 minimumLength:v17 maximumLength:v20 maximumAllowedAccessCodes:{objc_msgSend(v22, "integerValue")}];

        v5 = v52;
        v24 = [objc_alloc(MEMORY[0x277CD1658]) initWithAccessory:v52 constraints:v23 error:0];
        v6 = v55;
      }

      else
      {
        v40 = objc_autoreleasePoolPush();
        v41 = *(a1 + 48);
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = HMFGetLogIdentifier();
          v44 = [*(a1 + 40) UUID];
          *buf = 138543874;
          v59 = v43;
          v60 = 2112;
          v61 = v44;
          v62 = 2112;
          v63 = v10;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to parse HAPAccessCodeControl from NSData: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v40);
        v45 = objc_alloc(MEMORY[0x277CD1658]);
        v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        v46 = v45;
        v6 = v55;
        v24 = [v46 initWithAccessory:v5 constraints:v55 error:v23];
      }

      v9 = v51;
    }

    else
    {
      v32 = v5;
      v33 = objc_autoreleasePoolPush();
      v34 = *(a1 + 48);
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [*(a1 + 40) UUID];
        *buf = 138543874;
        v59 = v36;
        v60 = 2112;
        v61 = v37;
        v62 = 2112;
        v63 = v10;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Characteristic response value: %@ is not of expected type NSData", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      v38 = objc_alloc(MEMORY[0x277CD1658]);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      v39 = v38;
      v5 = v32;
      v6 = v55;
      v24 = [v39 initWithAccessory:v32 constraints:v55 error:v13];
    }
  }

  else
  {
    v53 = v5;
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 48);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      [*(a1 + 40) UUID];
      v30 = v29 = v6;
      v31 = *(a1 + 32);
      *buf = 138544386;
      v59 = v28;
      v60 = 2112;
      v61 = v30;
      v62 = 2112;
      v63 = v3;
      v64 = 2112;
      v65 = v31;
      v66 = 2112;
      v67 = v9;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to parse characteristic response for characteristic: %@, in payload: %@, with error: %@", buf, 0x34u);

      v6 = v29;
    }

    objc_autoreleasePoolPop(v25);
    v5 = v53;
    v24 = [objc_alloc(MEMORY[0x277CD1658]) initWithAccessory:v53 constraints:v6 error:v9];
  }

  return v24;
}

+ (id)identifiersFromListWriteResponses:(id)responses ofWriteRequests:(id)requests flow:(id)flow
{
  v48 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  requestsCopy = requests;
  flowCopy = flow;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = requestsCopy;
  v34 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v34)
  {
    v11 = *v36;
    p_info = HMDAssistantGather.info;
    *&v10 = 138544130;
    v29 = v10;
    v30 = *v36;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = [p_info + 286 _accessCodeControlFromWriteResponses:responsesCopy forWriteRequest:v14 flow:{flowCopy, v29}];
        v16 = v15;
        if (v15)
        {
          accessCodeControlResponse = [v15 accessCodeControlResponse];
          v18 = [accessCodeControlResponse na_map:&__block_literal_global_137];

          characteristic = [v14 characteristic];
          accessory = [characteristic accessory];
          uuid = [accessory uuid];
          [dictionary setObject:v18 forKeyedSubscript:uuid];
        }

        else
        {
          v22 = objc_autoreleasePoolPush();
          selfCopy = self;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = HMFGetLogIdentifier();
            uUID = [flowCopy UUID];
            *buf = v29;
            v40 = v25;
            v41 = 2112;
            v42 = uUID;
            v43 = 2112;
            v44 = responsesCopy;
            v45 = 2112;
            v46 = v14;
            _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to extract HAPAccessCodeControl from write responses: %@, for write request: %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v22);
          v11 = v30;
          p_info = (HMDAssistantGather + 32);
        }
      }

      v34 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v34);
  }

  v27 = objc_msgSend_copy(dictionary);

  return v27;
}

+ (id)accessCodeFetchResponsesForReadWriteResponses:(id)responses ofWriteRequests:(id)requests flow:(id)flow
{
  v67 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  requestsCopy = requests;
  flowCopy = flow;
  array = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = requestsCopy;
  v9 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v9)
  {
    v11 = v9;
    v47 = *v55;
    *&v10 = 138544130;
    v42 = v10;
    do
    {
      v12 = 0;
      v45 = v11;
      do
      {
        if (*v55 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v54 + 1) + 8 * v12);
        characteristic = [v13 characteristic];
        service = [characteristic service];
        accessory = [service accessory];
        uuid = [accessory uuid];

        if (uuid)
        {
          v18 = [HMDAccessoryAccessCodeReaderWriter _accessCodeControlFromWriteResponses:responsesCopy forWriteRequest:v13 flow:flowCopy];
          v19 = v18;
          if (v18)
          {
            accessCodeControlResponse = [v18 accessCodeControlResponse];
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __105__HMDAccessoryAccessCodeReaderWriter_accessCodeFetchResponsesForReadWriteResponses_ofWriteRequests_flow___block_invoke;
            v49[3] = &unk_2797213F8;
            selfCopy = self;
            v50 = flowCopy;
            v51 = v13;
            v21 = uuid;
            v52 = v21;
            v22 = [accessCodeControlResponse na_map:v49];

            accessCodeControlResponse2 = [v19 accessCodeControlResponse];
            v24 = [accessCodeControlResponse2 na_firstObjectPassingTest:&__block_literal_global_133];
            statusCode = [v24 statusCode];
            value = [statusCode value];

            if (value)
            {
              v27 = MEMORY[0x277CCA9B8];
              v28 = HAPAccessCodeResponseStatusAsString();
              value = [v27 hmErrorWithCode:-1 description:v28 reason:0 suggestion:0];
            }

            v11 = v45;
            v29 = [objc_alloc(MEMORY[0x277CD1660]) initWithAccessoryUUID:v21 accessoryAccessCodeValues:v22 error:value];
            [array addObject:v29];
          }

          else
          {
            v35 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v38 = HMFGetLogIdentifier();
              uUID = [flowCopy UUID];
              *buf = v42;
              v59 = v38;
              v60 = 2112;
              v61 = uUID;
              v62 = 2112;
              v63 = responsesCopy;
              v64 = 2112;
              v65 = v13;
              _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to extract HAPAccessCodeControl from write responses: %@, for write request: %@", buf, 0x2Au);

              v11 = v45;
            }

            objc_autoreleasePoolPop(v35);
          }
        }

        else
        {
          v30 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = HMFGetLogIdentifier();
            uUID2 = [flowCopy UUID];
            *buf = 138543874;
            v59 = v33;
            v60 = 2112;
            v61 = uUID2;
            v62 = 2112;
            v63 = v13;
            _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find accessory UUID for write request: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v30);
        }

        ++v12;
      }

      while (v11 != v12);
      v11 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v11);
  }

  v40 = objc_msgSend_copy(array);

  return v40;
}

id __105__HMDAccessoryAccessCodeReaderWriter_accessCodeFetchResponsesForReadWriteResponses_ofWriteRequests_flow___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 identifier];

  if (!v4)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 56);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 32) UUID];
      v21 = *(a1 + 40);
      v25 = 138544130;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = v3;
      v31 = 2112;
      v32 = v21;
      v22 = "%{public}@[Flow: %@] Accessory read response: %@ does not contain an access code identifier for write request: %@";
LABEL_10:
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, v22, &v25, 0x2Au);
    }

LABEL_11:

    objc_autoreleasePoolPop(v16);
    v15 = 0;
    goto LABEL_12;
  }

  v5 = [v3 accessCode];

  if (!v5)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 56);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 32) UUID];
      v23 = *(a1 + 40);
      v25 = 138544130;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = v3;
      v31 = 2112;
      v32 = v23;
      v22 = "%{public}@[Flow: %@] Accessory read response: %@ does not contain an access code for write request: %@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v6 = [v3 flags];

  if (v6)
  {
    v7 = [v3 flags];
    LOBYTE(v6) = [v7 value];
  }

  v8 = objc_alloc(MEMORY[0x277CD1668]);
  v9 = *(a1 + 48);
  v10 = objc_alloc(MEMORY[0x277CD1648]);
  v11 = [v3 accessCode];
  v12 = [v10 initWithStringValue:v11];
  v13 = [v3 identifier];
  v14 = [v13 value];
  v15 = [v8 initWithAccessoryUUID:v9 accessCodeValue:v12 uniqueIdentifier:v14 hasRestrictions:v6 & 1];

LABEL_12:

  return v15;
}

BOOL __105__HMDAccessoryAccessCodeReaderWriter_accessCodeFetchResponsesForReadWriteResponses_ofWriteRequests_flow___block_invoke_130(uint64_t a1, void *a2)
{
  v2 = [a2 statusCode];
  v3 = [v2 value] != 0;

  return v3;
}

+ (id)_createReadWriteRequestsForAccessCodeIdentifiersByCharacteristic:(id)characteristic flow:(id)flow
{
  v50 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  flowCopy = flow;
  array = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [characteristicCopy keyEnumerator];
  v31 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v31)
  {
    v30 = *v34;
    v25 = characteristicCopy;
    while (2)
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v33 + 1) + 8 * i);
        v8 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:2];
        v9 = [characteristicCopy objectForKey:v7];
        v10 = [v9 na_map:&__block_literal_global_127];
        v11 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v8 accessCodeControlRequest:v10 accessCodeControlResponse:0];
        v32 = 0;
        v12 = [v11 serializeWithError:&v32];
        v13 = v32;
        if (v12)
        {
          v14 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v7 value:v12 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
          [array addObject:v14];
        }

        else
        {
          context = objc_autoreleasePoolPush();
          selfCopy = self;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            v24 = selfCopy;
            uUID = [flowCopy UUID];
            *buf = 138544642;
            v38 = v23;
            v39 = 2112;
            v40 = uUID;
            v18 = uUID;
            v41 = 2112;
            v42 = 0;
            v43 = 2112;
            v44 = v9;
            v45 = 2112;
            v46 = v7;
            v47 = 2112;
            v48 = v13;
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize access code control write request: %@, to read access codes with identifiers: %@, from characteristic: %@, with error: %@", buf, 0x3Eu);

            selfCopy = v24;
          }

          objc_autoreleasePoolPop(context);
          characteristicCopy = v25;
        }

        if (!v12)
        {

          v20 = 0;
          v19 = array;
          goto LABEL_16;
        }
      }

      v31 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v19 = array;
  v20 = objc_msgSend_copy(array);
LABEL_16:

  return v20;
}

id __108__HMDAccessoryAccessCodeReaderWriter__createReadWriteRequestsForAccessCodeIdentifiersByCharacteristic_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFE9D0];
  v3 = a2;
  v4 = [[v2 alloc] initWithIdentifier:v3 accessCode:0];

  return v4;
}

+ (id)_createListWriteRequestsForCharacteristics:(id)characteristics flow:(id)flow
{
  flowCopy = flow;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__HMDAccessoryAccessCodeReaderWriter__createListWriteRequestsForCharacteristics_flow___block_invoke;
  v10[3] = &unk_279721388;
  v11 = flowCopy;
  selfCopy = self;
  v7 = flowCopy;
  v8 = [characteristics na_map:v10];

  return v8;
}

id __86__HMDAccessoryAccessCodeReaderWriter__createListWriteRequestsForCharacteristics_flow___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:1];
  v5 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v4 accessCodeControlRequest:0 accessCodeControlResponse:0];
  v15 = 0;
  v6 = [v5 serializeWithError:&v15];
  v7 = v15;
  if (v6)
  {
    v8 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v3 value:v6 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) UUID];
      *buf = 138544130;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = 0;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize access code control list request: %@, with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  return v8;
}

@end