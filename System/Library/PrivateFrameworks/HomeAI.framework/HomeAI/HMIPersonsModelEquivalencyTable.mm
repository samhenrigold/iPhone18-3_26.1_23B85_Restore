@interface HMIPersonsModelEquivalencyTable
- (BOOL)facesAreSamePersonFromSet:(id)set andSet:(id)andSet distanceThreshold:(double)threshold percentMatchingThreshold:(double)matchingThreshold;
- (HMIPersonsModelEquivalencyTable)initWith;
- (HMIPersonsModelEquivalencyTable)initWithPersonsModels:(id)models userDefinedPersonLinks:(id)links error:(id *)error;
- (id)equivalencyCellForPerson:(id)person;
@end

@implementation HMIPersonsModelEquivalencyTable

- (HMIPersonsModelEquivalencyTable)initWithPersonsModels:(id)models userDefinedPersonLinks:(id)links error:(id *)error
{
  modelsCopy = models;
  linksCopy = links;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__10;
  v41 = __Block_byref_object_dispose__10;
  v42 = 0;
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke;
  v34 = &unk_278755AC0;
  v36 = &v37;
  selfCopy = self;
  v35 = selfCopy;
  v11 = [modelsCopy na_dictionaryByMappingValues:?];
  v12 = v38[5];
  if (v12)
  {
    v13 = v12;
    v14 = v13;
    if (error)
    {
      v15 = v13;
      *error = v14;
    }

    HMIErrorLog(selfCopy, v14);

    v16 = 0;
  }

  else
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = __Block_byref_object_copy__10;
    v29[4] = __Block_byref_object_dispose__10;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__10;
    v27 = __Block_byref_object_dispose__10;
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v21 = v11;
    v22 = selfCopy;
    [linksCopy enumerateKeysAndObjectsUsingBlock:?];
    v20 = v22;
    [v21 enumerateKeysAndObjectsUsingBlock:?];
    v17 = [v24[5] copy];
    personToEquivalencyCell = v20->_personToEquivalencyCell;
    v20->_personToEquivalencyCell = v17;

    v16 = v20;
    _Block_object_dispose(&v23, 8);

    _Block_object_dispose(v29, 8);
  }

  _Block_object_dispose(&v37, 8);
  return v16;
}

void *__86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 visionPersonsModel];
  v6 = [v5 personUniqueIdentifiers];

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v12 = MEMORY[0x277D85DD0];
  v13 = v4;
  v14 = *(a1 + 32);
  v15 = v7;
  v8 = v7;
  v9 = v4;
  [v6 enumerateObjectsUsingBlock:{v12, 3221225472, __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_2, &unk_278755A98}];
  v10 = [v8 copy];

  return v10;
}

void __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:?];
  v8 = [*(a1 + 32) visionPersonsModel];
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  v10 = [v8 faceObservationsForPersonWithUniqueIdentifier:? error:?];
  objc_storeStrong((v9 + 40), obj);

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v10 count];
      *buf = 138543618;
      v19 = v14;
      v20 = 2048;
      v21 = v15;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Number of all face observations: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CBEB98] setWithArray:?];
    [*(a1 + 48) setObject:? forKeyedSubscript:?];
  }

  else
  {
    *a4 = 1;
  }
}

void __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_152(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 sourceUUID];
  v9 = [v7 objectForKeyedSubscript:?];
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 32);
    v12 = [v5 sourceUUID];
    v13 = [v11 objectForKeyedSubscript:?];
    v14 = [v5 personUUID];
    v15 = [v13 objectForKeyedSubscript:?];

    if (v15)
    {
      v38 = *(a1 + 32);
      v39 = *(a1 + 40);
      v16 = [v6 na_filter:?];
      if ([v16 count])
      {
        v17 = [MEMORY[0x277CBEB58] set];
        v18 = *(a1 + 32);
        v19 = [v5 sourceUUID];
        v20 = [v18 objectForKeyedSubscript:?];
        v21 = [v5 personUUID];
        v22 = [v20 objectForKeyedSubscript:?];
        [v17 unionSet:?];

        v36 = v17;
        v37 = *(a1 + 32);
        v23 = v17;
        [v6 na_each:?];
        [*(*(*(a1 + 48) + 8) + 40) setObject:? forKeyedSubscript:?];
        v24 = [v6 setByAddingObject:?];
        v34 = MEMORY[0x277D85DD0];
        v35 = v24;
        v25 = v24;
        [v25 na_each:{v34, 3221225472, __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_2_158, &unk_278755B10}];
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = *(a1 + 40);
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543618;
          v41 = v33;
          v42 = 2112;
          v43 = v5;
          _os_log_impl(&dword_22D12F000, v32, OS_LOG_TYPE_ERROR, "%{public}@All links for %@ in userDefinedPersonLinks are invalid", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v26 = objc_autoreleasePoolPush();
  v27 = *(a1 + 40);
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v29;
    v42 = 2112;
    v43 = v5;
    _os_log_impl(&dword_22D12F000, v28, OS_LOG_TYPE_ERROR, "%{public}@Invalid entry in userDefinedPersonLinks: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
LABEL_13:
}

uint64_t __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_153(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 sourceUUID];
  v6 = [v4 objectForKeyedSubscript:?];
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 32);
    v9 = [v3 sourceUUID];
    v10 = [v8 objectForKeyedSubscript:?];
    v11 = [v3 personUUID];
    v12 = [v10 objectForKeyedSubscript:?];

    if (v12)
    {
      v13 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 40);
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v17;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_ERROR, "%{public}@Invalid entry in userDefinedPersonLinks: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v13 = 0;
LABEL_8:

  return v13;
}

void __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_156(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v8 = [v4 sourceUUID];
  v5 = [v3 objectForKeyedSubscript:?];
  v6 = [v4 personUUID];

  v7 = [v5 objectForKeyedSubscript:?];
  [v2 unionSet:?];
}

void __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_4;
  v12 = &unk_278755BB0;
  v13 = v5;
  v8 = *(a1 + 32);
  v6 = v8;
  v14 = v8;
  v15 = *(a1 + 48);
  v7 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:?];
}

void __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [HMIPersonSourceUUIDPair initWithPersonUUID:"initWithPersonUUID:sourceUUID:" sourceUUID:?];
  v8 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:?];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Skipping person who belongs to user defined equivalency cell: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v25 = __Block_byref_object_copy__10;
    v26 = __Block_byref_object_dispose__10;
    v27 = 0;
    v13 = *(*(*(a1 + 56) + 8) + 40);
    v21 = *(a1 + 40);
    v22 = v7;
    v14 = v6;
    v23 = v14;
    [v13 enumerateKeysAndObjectsUsingBlock:?];
    v15 = *(*(*(a1 + 56) + 8) + 40);
    if (*(*&buf[8] + 40))
    {
      v16 = [v15 objectForKeyedSubscript:?];
      v17 = [v14 setByAddingObjectsFromSet:?];
      [*(*(*(a1 + 56) + 8) + 40) setObject:? forKeyedSubscript:?];

      v18 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:?];
      v19 = [v18 setByAddingObject:?];

      v20 = v19;
      [v20 na_each:?];
    }

    else
    {
      [v15 setObject:? forKeyedSubscript:?];
      v16 = [MEMORY[0x277CBEB98] setWithObject:?];
      [*(*(*(a1 + 48) + 8) + 40) setObject:? forKeyedSubscript:?];
    }

    _Block_object_dispose(buf, 8);
  }
}

void __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_161(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    *buf = 138543874;
    v32 = v13;
    v33 = 2112;
    v34 = v14;
    v35 = 2112;
    v36 = v8;
    _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Comparing persons (%@, %@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if ([*(a1 + 32) facesAreSamePersonFromSet:? andSet:?])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      *buf = 138543874;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Equivalency determined between pair: (%@, %@)!", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:?];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_162;
    v29 = &unk_278755B60;
    v30 = *(a1 + 40);
    v21 = [v20 na_firstObjectPassingTest:?];
    if (v21)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v25;
        v33 = 2112;
        v34 = v21;
        _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Cannot add to matching equivalency cell because it already has entry from this source: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }

    else
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void *__86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_162(uint64_t a1, void *a2)
{
  v3 = [a2 sourceUUID];
  v4 = [*(a1 + 32) sourceUUID];
  v5 = [v3 hmf_isEqualToUUID:?];

  return v5;
}

- (BOOL)facesAreSamePersonFromSet:(id)set andSet:(id)andSet distanceThreshold:(double)threshold percentMatchingThreshold:(double)matchingThreshold
{
  setCopy = set;
  andSetCopy = andSet;
  v10 = [setCopy count];
  v11 = [andSetCopy count] * v10;
  v12 = v11 * matchingThreshold;
  if (v12 <= 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = v11;
  v16 = andSetCopy;
  [setCopy enumerateObjectsUsingBlock:?];
  v14 = v19[3] >= v13;

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v18, 8);

  return v14;
}

void __111__HMIPersonsModelEquivalencyTable_facesAreSamePersonFromSet_andSet_distanceThreshold_percentMatchingThreshold___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __111__HMIPersonsModelEquivalencyTable_facesAreSamePersonFromSet_andSet_distanceThreshold_percentMatchingThreshold___block_invoke_2;
  v11 = &unk_278755C00;
  v12 = v5;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = a3;
  v13 = *(a1 + 40);
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:{v8, 3221225472, __111__HMIPersonsModelEquivalencyTable_facesAreSamePersonFromSet_andSet_distanceThreshold_percentMatchingThreshold___block_invoke_2, &unk_278755C00}];
}

void __111__HMIPersonsModelEquivalencyTable_facesAreSamePersonFromSet_andSet_distanceThreshold_percentMatchingThreshold___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 faceprint];
  v8 = [v7 descriptorData];
  v9 = [v6 faceprint];

  v10 = [v9 descriptorData];
  [HMIGreedyClustering faceDistanceFromDescriptor:"faceDistanceFromDescriptor:toDescriptor:" toDescriptor:?];
  v12 = v11;

  if (*(a1 + 56) > v12 && (++*(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 40) + 8) + 24) >= *(a1 + 64)) || (--*(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 40) + 8) + 24) < *(a1 + 64)))
  {
    *a3 = 1;
    **(a1 + 72) = 1;
  }
}

- (id)equivalencyCellForPerson:(id)person
{
  personCopy = person;
  personToEquivalencyCell = [(HMIPersonsModelEquivalencyTable *)self personToEquivalencyCell];
  v6 = [personToEquivalencyCell objectForKeyedSubscript:?];

  return v6;
}

- (HMIPersonsModelEquivalencyTable)initWith
{
  v3.receiver = self;
  v3.super_class = HMIPersonsModelEquivalencyTable;
  return [(HMIPersonsModelEquivalencyTable *)&v3 init];
}

@end