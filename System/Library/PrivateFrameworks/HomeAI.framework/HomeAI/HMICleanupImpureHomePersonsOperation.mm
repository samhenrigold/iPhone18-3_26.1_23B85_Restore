@interface HMICleanupImpureHomePersonsOperation
+ (id)shortDescription;
- (BOOL)isAffectedDate:(id)date;
- (BOOL)isIdentityPureWithFaceprints:(id)faceprints person:(id)person;
- (HMICleanupImpureHomePersonsOperation)initWithHomeUUID:(id)d dataSource:(id)source;
- (NSString)shortDescription;
- (id)fetchFaceCropsForPerson:(id)person;
- (id)fetchOrCreateFaceprintsForCrops:(id)crops person:(id)person;
- (id)fetchPersons;
- (id)ffArchiveRootURLWithError:(id *)error;
- (void)dumpFFDataToCacheForPerson:(id)person personFaceCrops:(id)crops;
- (void)handleCleanupForPerson:(id)person;
- (void)main;
- (void)mainInsideAutoreleasePool;
- (void)purgeURLIfNeeded:(id)needed;
- (void)reassociateFaceCropsWithUnknownSource:(id)source toPersonUUID:(id)d;
- (void)removeFaceCropsWithUUIDs:(id)ds;
- (void)removePerson:(id)person;
@end

@implementation HMICleanupImpureHomePersonsOperation

- (HMICleanupImpureHomePersonsOperation)initWithHomeUUID:(id)d dataSource:(id)source
{
  dCopy = d;
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = HMICleanupImpureHomePersonsOperation;
  v9 = [(HMFOperation *)&v19 initWithTimeout:500.0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeUUID, d);
    objc_storeStrong(&v10->_dataSource, source);
    v11 = [[HMIGreedyClustering alloc] initWithError:?];
    clusterer = v10->_clusterer;
    v10->_clusterer = v11;

    v13 = objc_alloc_init(HMIFaceprinter);
    faceprinter = v10->_faceprinter;
    v10->_faceprinter = v13;

    v10->_numFailures = 0;
    v15 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v15 setDateFormat:?];
    v16 = [v15 dateFromString:?];
    targetDate = v10->_targetDate;
    v10->_targetDate = v16;
  }

  return v10;
}

- (id)fetchPersons
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching persons for HMICleanupImpureHomePersonsOperation", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [HMIFetchPersonsOperation alloc];
  dataSource = [(HMICleanupImpureHomePersonsOperation *)selfCopy dataSource];
  v9 = [(HMIFetchPersonsOperation *)v7 initWithDataSource:?];

  [(HMFOperation *)v9 start];
  [(HMIFetchPersonsOperation *)v9 waitUntilFinished];
  error = [(HMFOperation *)v9 error];
  if (error)
  {

LABEL_5:
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      error2 = [(HMFOperation *)v9 error];
      v24 = 138543618;
      v25 = v14;
      v26 = 2112;
      v27 = error2;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_ERROR, "%{public}@Error fetching persons, error:%@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMICleanupImpureHomePersonsOperation *)v12 numFailures];
    [(HMICleanupImpureHomePersonsOperation *)v12 setNumFailures:?];
    persons2 = 0;
    goto LABEL_12;
  }

  persons = [(HMIFetchPersonsOperation *)v9 persons];

  if (!persons)
  {
    goto LABEL_5;
  }

  persons2 = [(HMIFetchPersonsOperation *)v9 persons];
  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [persons2 count];
    v24 = 138543618;
    v25 = v21;
    v26 = 2048;
    v27 = v22;
    _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_INFO, "%{public}@Fetched %lu persons", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
LABEL_12:

  return persons2;
}

- (id)fetchFaceCropsForPerson:(id)person
{
  v32 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = personCopy;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching face crops for person: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [HMIFetchPersonFaceCropsOperation alloc];
  dataSource = [(HMICleanupImpureHomePersonsOperation *)selfCopy dataSource];
  v11 = [HMIFetchPersonFaceCropsOperation initWithDataSource:v9 person:"initWithDataSource:person:"];

  [(HMFOperation *)v11 start];
  [(HMIFetchPersonFaceCropsOperation *)v11 waitUntilFinished];
  error = [(HMFOperation *)v11 error];
  if (error)
  {

LABEL_5:
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      error2 = [(HMFOperation *)v11 error];
      v26 = 138543874;
      v27 = v16;
      v28 = 2112;
      v29 = personCopy;
      v30 = 2112;
      v31 = error2;
      _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_ERROR, "%{public}@Error fetching facecrops for person:%@, error:%@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    [(HMICleanupImpureHomePersonsOperation *)v14 numFailures];
    [(HMICleanupImpureHomePersonsOperation *)v14 setNumFailures:?];
    personFaceCrops2 = 0;
    goto LABEL_12;
  }

  personFaceCrops = [(HMIFetchPersonFaceCropsOperation *)v11 personFaceCrops];

  if (!personFaceCrops)
  {
    goto LABEL_5;
  }

  personFaceCrops2 = [(HMIFetchPersonFaceCropsOperation *)v11 personFaceCrops];
  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [personFaceCrops2 count];
    v26 = 138543874;
    v27 = v23;
    v28 = 2048;
    v29 = v24;
    v30 = 2112;
    v31 = personCopy;
    _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_INFO, "%{public}@Fetched %lu face crops for person: %@", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
LABEL_12:

  return personFaceCrops2;
}

- (id)fetchOrCreateFaceprintsForCrops:(id)crops person:(id)person
{
  v35 = *MEMORY[0x277D85DE8];
  cropsCopy = crops;
  personCopy = person;
  v8 = [cropsCopy na_map:?];
  v9 = [HMIFetchFaceprintsForFaceCropsOperation alloc];
  dataSource = [(HMICleanupImpureHomePersonsOperation *)self dataSource];
  v11 = [HMIFetchFaceprintsForFaceCropsOperation initWithDataSource:v9 faceCropUUIDs:"initWithDataSource:faceCropUUIDs:"];

  [(HMFOperation *)v11 start];
  [(HMIFetchFaceprintsForFaceCropsOperation *)v11 waitUntilFinished];
  error = [(HMFOperation *)v11 error];

  if (error)
  {
    [(HMICleanupImpureHomePersonsOperation *)self numFailures];
    [(HMICleanupImpureHomePersonsOperation *)self setNumFailures:?];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      error2 = [(HMFOperation *)v11 error];
      *buf = 138543874;
      v30 = v16;
      v31 = 2112;
      v32 = personCopy;
      v33 = 2112;
      v34 = error2;
      _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_ERROR, "%{public}@Ignoring error fetching faceprints for person:%@, error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  faceprinter = [(HMICleanupImpureHomePersonsOperation *)self faceprinter];
  faceprints = [(HMIFetchFaceprintsForFaceCropsOperation *)v11 faceprints];
  v20 = [faceprinter updatedFaceprintsForFaceCrops:? withExistingFaceprints:? error:?];
  v21 = 0;

  if (v20)
  {
    allAtCurrentVersion = [v20 allAtCurrentVersion];
    allObjects = [allAtCurrentVersion allObjects];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      v30 = v27;
      v31 = 2112;
      v32 = personCopy;
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&dword_22D12F000, v26, OS_LOG_TYPE_ERROR, "%{public}@Error faceprinting face crops for person:%@, error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    [(HMICleanupImpureHomePersonsOperation *)selfCopy2 numFailures];
    [(HMICleanupImpureHomePersonsOperation *)selfCopy2 setNumFailures:?];
    allObjects = 0;
  }

  return allObjects;
}

- (BOOL)isIdentityPureWithFaceprints:(id)faceprints person:(id)person
{
  v71 = *MEMORY[0x277D85DE8];
  faceprintsCopy = faceprints;
  personCopy = person;
  v8 = [HMIFaceUtilities faceObservationsFromFaceprintsForClustering:?];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v66 = v12;
    v67 = 2048;
    v68 = [v8 count];
    _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_INFO, "%{public}@Number of faceprints to cluster: %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [HMIGreedyClustering getClustersWithFaces:"getClustersWithFaces:error:" error:?];
  v14 = 0;
  if (!v13)
  {
    [(HMICleanupImpureHomePersonsOperation *)selfCopy numFailures];
    [(HMICleanupImpureHomePersonsOperation *)selfCopy setNumFailures:?];
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      uUID = [personCopy UUID];
      *buf = 138543874;
      v66 = v24;
      v67 = 2112;
      v68 = uUID;
      v69 = 2112;
      v70 = v14;
      _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_ERROR, "%{public}@Clustering error:%@ treating identity: %@ as impure", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    goto LABEL_24;
  }

  if ([v13 count] <= 1)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      uUID2 = [personCopy UUID];
      *buf = 138543618;
      v66 = v18;
      v67 = 2112;
      v68 = uUID2;
      _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_INFO, "%{public}@0 or 1 cluster exists, treating identity: %@ as pure", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = 1;
    goto LABEL_25;
  }

  name = [personCopy name];

  if (!name)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v52 = [v13 count];
      *buf = 138543874;
      v66 = v34;
      v67 = 2112;
      v68 = personCopy;
      v69 = 2048;
      v70 = v52;
      v36 = "%{public}@Unnamed person %@ has %lu clusters, treating as impure";
      goto LABEL_22;
    }

LABEL_23:

    objc_autoreleasePoolPop(v31);
LABEL_24:
    v20 = 0;
    goto LABEL_25;
  }

  name2 = [personCopy name];
  if (name2)
  {
    v28 = name2;
    personLinks = [personCopy personLinks];
    v30 = [personLinks count];

    if (v30)
    {
      v31 = objc_autoreleasePoolPush();
      v32 = selfCopy;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        v35 = [v13 count];
        *buf = 138543874;
        v66 = v34;
        v67 = 2112;
        v68 = personCopy;
        v69 = 2048;
        v70 = v35;
        v36 = "%{public}@Named person %@ with atleast 1 personLink has %lu clusters, treating as impure";
LABEL_22:
        _os_log_impl(&dword_22D12F000, v33, OS_LOG_TYPE_INFO, v36, buf, 0x20u);

        goto LABEL_23;
      }

      goto LABEL_23;
    }
  }

  v37 = objc_autoreleasePoolPush();
  v38 = selfCopy;
  v39 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = HMFGetLogIdentifier();
    v41 = [v13 count];
    [personCopy UUID];
    v42 = v60 = v37;
    *buf = 138543874;
    v66 = v40;
    v67 = 2048;
    v68 = v41;
    v69 = 2112;
    v70 = v42;
    _os_log_impl(&dword_22D12F000, v39, OS_LOG_TYPE_INFO, "%{public}@%lu clusters exists, for person %@ trying to club clusters using vip model", buf, 0x20u);

    v37 = v60;
  }

  objc_autoreleasePoolPop(v37);
  v43 = [v13 sortedArrayUsingComparator:?];

  [v43 na_each:?];
  v44 = [v43 objectAtIndexedSubscript:?];
  objects = [v44 objects];
  v46 = v8;
  v64 = v46;
  v47 = [objects na_map:?];

  uUID3 = [MEMORY[0x277CCAD78] UUID];
  v59 = v47;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v50 = [HMIPersonsModelManager personsModelWithFaceObservationsByID:"personsModelWithFaceObservationsByID:error:" error:?];
  v61 = 0;

  if (v50)
  {
    [v43 count];
    v51 = [v43 subarrayWithRange:?];
    v62 = v46;
    v63 = v50;
    v20 = [v51 na_all:?];
  }

  else
  {
    v54 = objc_autoreleasePoolPush();
    v55 = v38;
    v56 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v57 = v58 = v54;
      *buf = 138543618;
      v66 = v57;
      v67 = 2112;
      v68 = v61;
      _os_log_impl(&dword_22D12F000, v56, OS_LOG_TYPE_ERROR, "%{public}@Error while creating vnpersonsmodel: %@, treating identity as impure", buf, 0x16u);

      v54 = v58;
    }

    objc_autoreleasePoolPop(v54);
    v20 = 0;
  }

LABEL_25:
  return v20;
}

uint64_t __76__HMICleanupImpureHomePersonsOperation_isIdentityPureWithFaceprints_person___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 objects];
  v7 = [v6 count];
  v8 = [v5 objects];
  v9 = [v8 count];

  if (v7 <= v9)
  {
    v11 = [v4 objects];
    v12 = [v11 count];
    v13 = [v5 objects];
    v10 = v12 < [v13 count];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

void __76__HMICleanupImpureHomePersonsOperation_isIdentityPureWithFaceprints_person___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 objects];
    v9 = 138543618;
    v10 = v7;
    v11 = 2048;
    v12 = [v8 count];
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Cluster size: %lu", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void *__76__HMICleanupImpureHomePersonsOperation_isIdentityPureWithFaceprints_person___block_invoke_168(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 intValue];

  return [v2 objectAtIndexedSubscript:?];
}

BOOL __76__HMICleanupImpureHomePersonsOperation_isIdentityPureWithFaceprints_person___block_invoke_173(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMIGreedyClustering centermostFaceprintInCluster:"centermostFaceprintInCluster:faceObservations:" faceObservations:?];
  v5 = *(a1 + 40);
  v16 = 0;
  v6 = [v5 predictPersonFromFaceObservation:? limit:? canceller:? error:?];
  v7 = v16;
  if (v6 && [v6 count])
  {
    v8 = [v6 firstObject];
    [v8 confidence];
    v10 = v9 > 0.6;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 48);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to predict using VNPersonsModel, error: %@, treating identity as impure", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  return v10;
}

- (void)removeFaceCropsWithUUIDs:(id)ds
{
  v18 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = [HMIRemoveFaceCropsOperation alloc];
  dataSource = [(HMICleanupImpureHomePersonsOperation *)self dataSource];
  v7 = [HMIRemoveFaceCropsOperation initWithDataSource:v5 faceCropUUIDs:"initWithDataSource:faceCropUUIDs:"];

  [(HMFOperation *)v7 start];
  [(HMIRemoveFaceCropsOperation *)v7 waitUntilFinished];
  error = [(HMFOperation *)v7 error];

  if (error)
  {
    [(HMICleanupImpureHomePersonsOperation *)self numFailures];
    [(HMICleanupImpureHomePersonsOperation *)self setNumFailures:?];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      error2 = [(HMFOperation *)v7 error];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = error2;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error while removing facecrops %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)reassociateFaceCropsWithUnknownSource:(id)source toPersonUUID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  dCopy = d;
  v8 = [sourceCopy na_map:?];
  if ([v8 count])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v22 = 138543874;
      v23 = v12;
      v24 = 2048;
      v25 = [v8 count];
      v26 = 2112;
      v27 = dCopy;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_INFO, "%{public}@Reassociating %lu face crops to person UUID: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [HMIAssociateFaceCropsOperation alloc];
    dataSource = [(HMICleanupImpureHomePersonsOperation *)selfCopy dataSource];
    v15 = [HMIAssociateFaceCropsOperation initWithDataSource:v13 faceCropUUIDs:"initWithDataSource:faceCropUUIDs:personUUID:source:" personUUID:? source:?];

    [(HMFOperation *)v15 start];
    [(HMIAssociateFaceCropsOperation *)v15 waitUntilFinished];
    error = [(HMFOperation *)v15 error];

    if (error)
    {
      [(HMICleanupImpureHomePersonsOperation *)selfCopy numFailures];
      [(HMICleanupImpureHomePersonsOperation *)selfCopy setNumFailures:?];
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        error2 = [(HMFOperation *)v15 error];
        v22 = 138543618;
        v23 = v20;
        v24 = 2112;
        v25 = error2;
        _os_log_impl(&dword_22D12F000, v19, OS_LOG_TYPE_ERROR, "%{public}@Error while reassociating facecrops %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }
}

id __91__HMICleanupImpureHomePersonsOperation_reassociateFaceCropsWithUnknownSource_toPersonUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 source])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 UUID];
  }

  return v3;
}

- (id)ffArchiveRootURLWithError:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = HMIURLForCacheDirectory(error);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 URLByAppendingPathComponent:? isDirectory:?];
    homeUUID = [(HMICleanupImpureHomePersonsOperation *)self homeUUID];
    uUIDString = [homeUUID UUIDString];
    v9 = [v6 URLByAppendingPathComponent:? isDirectory:?];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v9 path];
    v12 = [defaultManager createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];

    if (v12)
    {
      v13 = v9;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        path2 = [v9 path];
        v20 = 138543618;
        v21 = v17;
        v22 = 2112;
        v23 = path2;
        _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_ERROR, "%{public}@Error creating directory %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)purgeURLIfNeeded:(id)needed
{
  v50 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [neededCopy path];
  v38 = [defaultManager enumeratorAtPath:?];

  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v6 = 0;
  *&v7 = 138543874;
  v34 = v7;
  while (1)
  {
    nextObject = [v38 nextObject];

    if (!nextObject)
    {
      break;
    }

    path2 = [neededCopy path];
    v10 = [path2 stringByAppendingPathComponent:?];

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [defaultManager2 attributesOfItemAtPath:? error:?];
    v13 = 0;

    if (v12)
    {
      [array addObject:?];
      fileSize = [v12 fileSize];
      v41[3] += fileSize;
      v15 = MEMORY[0x277CCABB0];
      [v12 fileSize];
      v16 = [v15 numberWithUnsignedLongLong:?];
      [dictionary setObject:? forKeyedSubscript:?];

      defaultManager3 = [v12 objectForKey:?];
      if (!defaultManager3)
      {
        defaultManager3 = [MEMORY[0x277CBEAA8] now];
      }

      [dictionary2 setObject:? forKeyedSubscript:?];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        selfCopy2 = self;
        v22 = HMFGetLogIdentifier();
        path3 = [neededCopy path];
        *buf = v34;
        v45 = v22;
        v46 = 2112;
        v47 = nextObject;
        v48 = 2112;
        v49 = path3;
        _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_ERROR, "%{public}@Error fetching attributes of the file: %@ at: %@. Attempting to delete it", buf, 0x20u);

        self = selfCopy2;
      }

      objc_autoreleasePoolPop(v18);
      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager3 removeItemAtPath:? error:?];
      v24 = v13;

      v13 = v24;
    }

    v6 = nextObject;
  }

  v25 = dictionary2;
  [array sortUsingComparator:?];
  v26 = neededCopy;
  v27 = dictionary;
  [array enumerateObjectsUsingBlock:?];
  v28 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    path4 = [v26 path];
    v33 = (v41[3] >> 10);
    *buf = v34;
    v45 = v31;
    v46 = 2112;
    v47 = path4;
    v48 = 2048;
    v49 = v33;
    _os_log_impl(&dword_22D12F000, v30, OS_LOG_TYPE_INFO, "%{public}@Disk buffer size of %@: %ld KB", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v28);
  _Block_object_dispose(&v40, 8);
}

void *__57__HMICleanupImpureHomePersonsOperation_purgeURLIfNeeded___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 objectForKeyedSubscript:?];
  v7 = [*(a1 + 32) objectForKeyedSubscript:?];

  v8 = [v6 compare:?];
  return v8;
}

void __57__HMICleanupImpureHomePersonsOperation_purgeURLIfNeeded___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (*(*(*(a1 + 56) + 8) + 24) >> 22 > 0x18uLL)
  {
    v7 = [*(a1 + 32) path];
    v8 = [v7 stringByAppendingPathComponent:?];

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = 0;
    v10 = [v9 removeItemAtPath:? error:?];
    v11 = v19;

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (v10)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v21 = v16;
        v22 = 2112;
        v23 = v8;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_INFO, "%{public}@Deleted %@ to free up some space, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = [*(a1 + 48) objectForKeyedSubscript:?];
      *(*(*(a1 + 56) + 8) + 24) -= [v17 integerValue];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543874;
        v21 = v18;
        v22 = 2112;
        v23 = v8;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_ERROR, "%{public}@Error while deleting %@ to free up some space, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    *a4 = 1;
  }
}

- (void)dumpFFDataToCacheForPerson:(id)person personFaceCrops:(id)crops
{
  v81 = *MEMORY[0x277D85DE8];
  personCopy = person;
  cropsCopy = crops;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    homeUUID = [(HMICleanupImpureHomePersonsOperation *)selfCopy homeUUID];
    *buf = 138543874;
    v65 = v11;
    v66 = 2112;
    v67 = homeUUID;
    v68 = 2112;
    v69 = personCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Archive familiar face data for home: %@ person: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  allObjects = [cropsCopy allObjects];
  v14 = [allObjects sortedArrayUsingComparator:?];

  v77 = @"home";
  homeUUID2 = [(HMICleanupImpureHomePersonsOperation *)selfCopy homeUUID];
  uUIDString = [homeUUID2 UUIDString];
  v78 = @"homePersonsAndFaceCrops";
  v79 = uUIDString;
  v72 = @"person";
  v73 = @"faceCrops";
  v74 = personCopy;
  v75 = v14;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v76 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v80 = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  v21 = 0;
  v22 = v21;
  if (v20)
  {
    v63 = v21;
    v23 = [(HMICleanupImpureHomePersonsOperation *)selfCopy ffArchiveRootURLWithError:?];
    v62 = v63;

    if (v23)
    {
      v60 = cropsCopy;
      v61 = v14;
      [(HMICleanupImpureHomePersonsOperation *)selfCopy purgeURLIfNeeded:?];
      v24 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v24 setDateFormat:?];
      v25 = [MEMORY[0x277CBEAA8] now];
      v59 = v24;
      v26 = [v24 stringFromDate:?];

      v27 = MEMORY[0x277CCACA8];
      uUID = [personCopy UUID];
      uUIDString2 = [uUID UUIDString];
      v58 = v26;
      v30 = [v27 stringWithFormat:uUIDString2, v26];
      v31 = [v23 URLByAppendingPathComponent:?];
      path = [v31 path];

      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        homeUUID3 = [(HMICleanupImpureHomePersonsOperation *)v34 homeUUID];
        *buf = 138544130;
        v65 = v36;
        v66 = 2112;
        v67 = homeUUID3;
        v68 = 2112;
        v69 = personCopy;
        v70 = 2112;
        v71 = path;
        _os_log_impl(&dword_22D12F000, v35, OS_LOG_TYPE_INFO, "%{public}@Saving archived familiar face data for home: %@ person: %@ to: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v33);
      v14 = v61;
      if (([v20 writeToFile:? atomically:?] & 1) == 0)
      {
        v38 = objc_autoreleasePoolPush();
        v39 = v34;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543362;
          v65 = v41;
          _os_log_impl(&dword_22D12F000, v40, OS_LOG_TYPE_ERROR, "%{public}@Couldn't save FF archive", buf, 0xCu);

          v14 = v61;
        }

        objc_autoreleasePoolPop(v38);
      }

      v42 = objc_autoreleasePoolPush();
      v43 = v34;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138543362;
        v65 = v45;
        _os_log_impl(&dword_22D12F000, v44, OS_LOG_TYPE_INFO, "%{public}@Saved FF archive", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v42);
      cropsCopy = v60;
    }

    else
    {
      v54 = objc_autoreleasePoolPush();
      v55 = selfCopy;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = HMFGetLogIdentifier();
        *buf = 138543618;
        v65 = v57;
        v66 = 2112;
        v67 = v62;
        _os_log_impl(&dword_22D12F000, v56, OS_LOG_TYPE_ERROR, "%{public}@Couldn't get URL for home archives, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v54);
    }

    v22 = v62;
  }

  else
  {
    v46 = objc_autoreleasePoolPush();
    v47 = selfCopy;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      [personCopy UUID];
      v50 = personCopy;
      v51 = v19;
      v53 = v52 = v14;
      *buf = 138543874;
      v65 = v49;
      v66 = 2112;
      v67 = v53;
      v68 = 2112;
      v69 = v22;
      _os_log_impl(&dword_22D12F000, v48, OS_LOG_TYPE_ERROR, "%{public}@Cannot archive familiar face data for person %@, error: %@", buf, 0x20u);

      v14 = v52;
      v19 = v51;
      personCopy = v50;
      v20 = 0;
    }

    objc_autoreleasePoolPop(v46);
  }
}

void *__83__HMICleanupImpureHomePersonsOperation_dumpFFDataToCacheForPerson_personFaceCrops___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateCreated];
  v6 = [v4 dateCreated];

  v7 = [v5 compare:?];
  return v7;
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  [(HMICleanupImpureHomePersonsOperation *)self mainInsideAutoreleasePool];

  objc_autoreleasePoolPop(v3);
}

- (void)handleCleanupForPerson:(id)person
{
  v62 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v5 = [(HMICleanupImpureHomePersonsOperation *)self fetchFaceCropsForPerson:?];
  v6 = v5;
  if (!v5 || ![v5 count])
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v32 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
LABEL_27:

      objc_autoreleasePoolPop(v30);
      goto LABEL_28;
    }

    v33 = HMFGetLogIdentifier();
    uUID = [personCopy UUID];
    *buf = 138543618;
    v57 = v33;
    v58 = 2112;
    v59 = uUID;
    v35 = "%{public}@Skipping person %@ due to nil or 0 face crops";
LABEL_26:
    _os_log_impl(&dword_22D12F000, v32, OS_LOG_TYPE_INFO, v35, buf, 0x16u);

    goto LABEL_27;
  }

  if (([v6 na_any:?] & 1) == 0)
  {
    if ([v6 na_any:?])
    {
      v36 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        uUID2 = [personCopy UUID];
        *buf = 138543618;
        v57 = v39;
        v58 = 2112;
        v59 = uUID2;
        _os_log_impl(&dword_22D12F000, v38, OS_LOG_TYPE_INFO, "%{public}@Person %@ has crops with unknown source, reassociating them", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v36);
      if (+[HMIPreference isInternalInstall])
      {
        [HMICleanupImpureHomePersonsOperation dumpFFDataToCacheForPerson:selfCopy2 personFaceCrops:"dumpFFDataToCacheForPerson:personFaceCrops:"];
      }

      uUID3 = [personCopy UUID];
      [HMICleanupImpureHomePersonsOperation reassociateFaceCropsWithUnknownSource:selfCopy2 toPersonUUID:"reassociateFaceCropsWithUnknownSource:toPersonUUID:"];
    }

    v30 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v32 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    v33 = HMFGetLogIdentifier();
    uUID = [personCopy UUID];
    *buf = 138543618;
    v57 = v33;
    v58 = 2112;
    v59 = uUID;
    v35 = "%{public}@Skipping person %@ as all crops are either old or have a non-unknown source";
    goto LABEL_26;
  }

  if (+[HMIPreference isInternalInstall])
  {
    [HMICleanupImpureHomePersonsOperation dumpFFDataToCacheForPerson:"dumpFFDataToCacheForPerson:personFaceCrops:" personFaceCrops:?];
  }

  v7 = [HMICleanupImpureHomePersonsOperation fetchOrCreateFaceprintsForCrops:"fetchOrCreateFaceprintsForCrops:person:" person:?];
  if (v7)
  {
    v8 = [v6 na_map:?];
    v9 = MEMORY[0x277CBEB98];
    v10 = [v7 na_map:?];
    v11 = [v9 setWithArray:?];

    v12 = v11;
    v13 = [v8 na_setByRemovingObjectsFromSet:?];
    if ([v13 count])
    {
      v51 = v8;
      v14 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v17 = v49 = v14;
        v18 = v13;
        v19 = [v13 count];
        [personCopy UUID];
        v20 = v50 = v12;
        *buf = 138543874;
        v57 = v17;
        v58 = 2048;
        v59 = v19;
        v13 = v18;
        v60 = 2112;
        v61 = v20;
        _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_INFO, "%{public}@Removing %lu sentinel facecrops for person %@", buf, 0x20u);

        v12 = v50;
        v14 = v49;
      }

      objc_autoreleasePoolPop(v14);
      [(HMICleanupImpureHomePersonsOperation *)selfCopy4 removeFaceCropsWithUUIDs:?];
      v8 = v51;
    }

    if ([v7 count])
    {
      v21 = [HMICleanupImpureHomePersonsOperation isIdentityPureWithFaceprints:"isIdentityPureWithFaceprints:person:" person:?];
      v22 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v24 = HMFGetOSLogHandle();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (v21)
      {
        v52 = v13;
        if (v25)
        {
          v26 = HMFGetLogIdentifier();
          uUID4 = [personCopy UUID];
          *buf = 138543618;
          v57 = v26;
          v58 = 2112;
          v59 = uUID4;
          _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Found pure identity, skipping person %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v55 = v12;
        v28 = [v6 na_filter:?];
        uUID5 = [personCopy UUID];
        [HMICleanupImpureHomePersonsOperation reassociateFaceCropsWithUnknownSource:selfCopy5 toPersonUUID:"reassociateFaceCropsWithUnknownSource:toPersonUUID:"];

        v13 = v52;
      }

      else
      {
        if (v25)
        {
          v47 = HMFGetLogIdentifier();
          [personCopy UUID];
          v48 = v54 = v13;
          *buf = 138543618;
          v57 = v47;
          v58 = 2112;
          v59 = v48;
          _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Removing person %@ and associated crops", buf, 0x16u);

          v13 = v54;
        }

        objc_autoreleasePoolPop(v22);
        [(HMICleanupImpureHomePersonsOperation *)selfCopy5 removeFaceCropsWithUUIDs:?];
        [(HMICleanupImpureHomePersonsOperation *)selfCopy5 removePerson:?];
      }
    }

    else
    {
      v42 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = HMFGetLogIdentifier();
        [personCopy UUID];
        v46 = v53 = v13;
        *buf = 138543618;
        v57 = v45;
        v58 = 2112;
        v59 = v46;
        _os_log_impl(&dword_22D12F000, v44, OS_LOG_TYPE_INFO, "%{public}@0 faceprints for person: %@, skipping", buf, 0x16u);

        v13 = v53;
      }

      objc_autoreleasePoolPop(v42);
    }
  }

LABEL_28:
}

BOOL __63__HMICleanupImpureHomePersonsOperation_handleCleanupForPerson___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 dateCreated];
  if ([v4 isAffectedDate:?])
  {
    v6 = [v3 source] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void *__63__HMICleanupImpureHomePersonsOperation_handleCleanupForPerson___block_invoke_223(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  v4 = [v2 containsObject:?];

  return v4;
}

- (void)mainInsideAutoreleasePool
{
  v32 = *MEMORY[0x277D85DE8];
  fetchPersons = [(HMICleanupImpureHomePersonsOperation *)self fetchPersons];
  v4 = fetchPersons;
  if (fetchPersons)
  {
    v26 = 0u;
    v27 = 0u;
    v24[1] = 0u;
    v25 = 0u;
    v5 = fetchPersons;
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      while (2)
      {
        for (i = 0; i != v7; i = (i + 1))
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          isCancelled = [(HMICleanupImpureHomePersonsOperation *)self isCancelled];
          v11 = objc_autoreleasePoolPush();
          if (isCancelled)
          {
            selfCopy = self;
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = HMFGetLogIdentifier();
              *buf = 138543362;
              v29 = v22;
              _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_INFO, "%{public}@HMICleanupImpureHomePersonsOperation exiting early because operation was canceled.", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v11);
            goto LABEL_18;
          }

          [(HMICleanupImpureHomePersonsOperation *)self handleCleanupForPerson:?];
          objc_autoreleasePoolPop(v11);
        }

        v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    numFailures = [(HMICleanupImpureHomePersonsOperation *)self numFailures];
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (numFailures)
    {
      if (v16)
      {
        v17 = HMFGetLogIdentifier();
        numFailures2 = [(HMICleanupImpureHomePersonsOperation *)selfCopy2 numFailures];
        *buf = 138543618;
        v29 = v17;
        v30 = 1024;
        v31 = numFailures2;
        _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_INFO, "%{public}@CleanImpureHomePersonsOperation encountered %d failures", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v13);
      v19 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
      [(HMFOperation *)selfCopy2 cancelWithError:?];
    }

    else
    {
      if (v16)
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v23;
        _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_INFO, "%{public}@Completed CleanImpureHomePersonsOperation", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v24[0].receiver = selfCopy2;
      v24[0].super_class = HMICleanupImpureHomePersonsOperation;
      [(objc_super *)v24 finish];
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    [(HMFOperation *)self cancelWithError:?];
LABEL_18:
  }
}

- (BOOL)isAffectedDate:(id)date
{
  dateCopy = date;
  targetDate = [(HMICleanupImpureHomePersonsOperation *)self targetDate];
  v6 = [dateCopy compare:?];

  return v6 == 1;
}

- (void)removePerson:(id)person
{
  v21 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v5 = [HMIRemovePersonsOperation alloc];
  dataSource = [(HMICleanupImpureHomePersonsOperation *)self dataSource];
  v7 = MEMORY[0x277CBEB98];
  uUID = [personCopy UUID];
  v9 = [v7 setWithObject:?];
  v10 = [HMIRemovePersonsOperation initWithDataSource:v5 personUUIDs:"initWithDataSource:personUUIDs:"];

  [(HMFOperation *)v10 start];
  [(HMIRemovePersonsOperation *)v10 waitUntilFinished];
  error = [(HMFOperation *)v10 error];

  if (error)
  {
    [(HMICleanupImpureHomePersonsOperation *)self numFailures];
    [(HMICleanupImpureHomePersonsOperation *)self setNumFailures:?];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      error2 = [(HMFOperation *)v10 error];
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = error2;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_ERROR, "%{public}@Error while removing persons %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

@end